sync_agent_skills() {
    local src="$HOME/.agents/skills"
    local dst="$HOME/.claude/skills"

    [[ -d "$src" ]] || { echo "Source not found: $src"; return 1 }
    mkdir -p "$dst"

    for skill_path in "$src"/*/; do
      local skill_name="${skill_path%/}"
      skill_name="${skill_name##*/}"
      local link="$dst/$skill_name"

      if [[ -e "$link" || -L "$link" ]]; then
        echo "skip: $skill_name (already exists)"
      else
        ln -s "$skill_path" "$link"
        echo "adding link: $skill_name"
      fi
    done
}
