local function get_bg()
    if vim.o.background == 'dark' then
        return 'dark'
    else
        return 'light'
    end
end

local config = {
    defaults = {
        theme = get_bg(),
        overrides = {},
    },
}

setmetatable(config, { __index = config.defaults })

return config
