local colors = {
    white = '#FFFFFF',
    black = '#000000',
    active = 'dark',
}

colors.themes = {
    dark = {
        accent = '#E6B450',
        bg = '#0F141A',
        -- bg = '#0A0E14',
        fg = '#C5C5C5',
        -- fg = '#B3B1AD',
        ui = '#4D5566',

        tag = '#39BAE6',
        func = '#FFB454',
        entity = '#59C2FF',
        string = '#C2D94C',
        regexp = '#95E6CB',
        markup = '#F07178',
        keyword = '#FF8F40',
        special = '#E6B673',
        comment = '#626A73',
        constant = '#FFEE99',
        operator = '#F29668',
        error = '#FF3333',

        line = '#00010A',
        panel_bg = colors.bg,
        panel_shadow = '#00010A',
        panel_border = '#000000',
        gutter_normal = '#323945',
        gutter_active = '#464D5E',
        selection_bg = '#273747',
        selection_inactive = '#1B2733',
        selection_border = '#304357',
        guide_active = '#393F4D',
        guide_normal = '#242A35',

        vcs_added = '#91B362',
        vcs_modified = '#6994BF',
        vcs_removed = '#D96C75',

        vcs_added_bg = '#1D2214',
        vcs_removed_bg = '#2D2220',

        fg_idle = '#3E4B59',
        warning = '#FF8F40',
    },
    mirage = {
        accent = '#FFCC66',
        bg = '#1F2430',
        fg = '#CBCCC6',
        ui = '#707A8C',

        tag = '#5CCFE6',
        func = '#FFD580',
        entity = '#73D0FF',
        string = '#BAE67E',
        regexp = '#95E6CB',
        markup = '#F28779',
        keyword = '#FFA759',
        special = '#FFE6B3',
        comment = '#5C6773',
        constant = '#D4BFFF',
        operator = '#F29E74',
        error = '#FF3333',

        line = '#191E2A',
        panel_bg = '#232834',
        panel_shadow = '#141925',
        panel_border = '#101521',
        gutter_normal = '#404755',
        gutter_active = '#5F687A',
        selection_bg = '#33415E',
        selection_inactive = '#323A4C',
        selection_border = '#232A4C',
        guide_active = '#576070',
        guide_normal = '#383E4C',

        vcs_added = '#A6CC70',
        vcs_modified = '#77A8D9',
        vcs_removed = '#F27983',

        vcs_added_bg = '#313D37',
        vcs_removed_bg = '#3E373A',

        fg_idle = '#607080',
        warning = '#FFA759',
    },
    dzmien = {
        accent = '#FF9940',
        bg = '#FAFAFA',
        fg = '#575F66',
        ui = '#8A9199',

        tag = '#55B4D4',
        func = '#F2AE49',
        entity = '#399EE6',
        string = '#86B300',
        regexp = '#4CBF99',
        markup = '#F07171',
        keyword = '#FA8D3E',
        special = '#E6BA7E',
        comment = '#ABB0B6',
        constant = '#A37ACC',
        operator = '#ED9366',
        error = '#F51818',

        line = '#EFF0F1',
        panel_bg = '#FFFFFF',
        panel_shadow = '#CCCED0',
        panel_border = '#F0F0F0',
        gutter_normal = '#CDD0D3',
        gutter_active = '#A0A6AC',
        selection_bg = '#D1E4F4',
        selection_inactive = '#E7E8E9',
        selection_border = '#E1E1E2',
        guide_active = '#D3D5D8',
        guide_normal = '#E6E7E9',

        vcs_added = '#99BF4D',
        vcs_modified = '#709ECC',
        vcs_removed = '#F27983',

        vcs_added_bg = '#E0E7CD',
        vcs_removed_bg = '#F9EBE4',

        fg_idle = '#828C99',
        warning = '#FA8D3E',
    },
    light = {
        accent = '#FF9940',
        bg = '#FAFAFA',
        fg = '#575F66',
        ui = '#8A9199',

        tag = '#55B4D4',
        func = '#F2AE49',
        entity = '#399EE6',
        string = '#86B300',
        regexp = '#4CBF99',
        markup = '#F07171',
        keyword = '#FA8D3E',
        special = '#E6BA7E',
        comment = '#ABB0B6',
        constant = '#A37ACC',
        operator = '#ED9366',
        error = '#F51818',

        line = '#EFF0F1',
        panel_bg = '#FFFFFF',
        panel_shadow = '#CCCED0',
        panel_border = '#F0F0F0',
        gutter_normal = '#CDD0D3',
        gutter_active = '#A0A6AC',
        selection_bg = '#D1E4F4',
        selection_inactive = '#E7E8E9',
        selection_border = '#E1E1E2',
        guide_active = '#D3D5D8',
        guide_normal = '#E6E7E9',

        vcs_added = '#99BF4D',
        vcs_modified = '#709ECC',
        vcs_removed = '#F27983',

        vcs_added_bg = '#E0E7CD',
        vcs_removed_bg = '#F9EBE4',

        fg_idle = '#828C99',
        warning = '#FA8D3E',
    },
}

setmetatable(colors, { __index = function(_, color)
    if color.themes[colors.active][color] ~= nil then
        return colors.themes[colors.active][color]
    else
        return nil
    end

end
})

function colors.themes.get_color(theme, color)
    return colors.themes[theme][color]
end

function colors.set_active(theme)
    if colors.themes[theme] ~= nil then
        colors.active = theme
    end
end

return colors
