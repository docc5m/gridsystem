Config = {}
Config.DefaultMarkerProperties = {
    color = { r = 255, g = 0, b = 0, a = 50 },
    scale = vector3(0.5, 0.5, 0.3),
    drawDistance = 15.0,
    control = 'E',
    dir = vector3(0.0, 0.0, 0.0),
    rot = vector3(0.0, 0.0, 0.0),
    faceCamera = true,
    bump = true,
    rotate = false,
}

Config.DefaultBlipProperties = {
    sprite  = 60,
    display = 4,
    scale   = 1.0,
    color  = 29,
    shortRange = true,
    label = "DEFAULT_BLIP_LABEL",
}

Config.UseCustomNotifications = false
Config.CustomNotificationFunctionEnter = function (message)
    --Here you can trigger a custom event/call export function to display a notification
    --message is the msg param you passed to the marker
    --Example: TriggerEvent('my_custom_event', message)
    --Example: exports['my_custom_export']:my_custom_export_function(message)
    --https://github.com/dsheedes/cd_drawtextui Example:
    --TriggerEvent('cd_drawtextui:ShowUI', 'show', message)
    --Be aware that this function is only called when you enter the marker, not every tick.
    --Code inside this will work only if Config.UseCustomNotifications is set to true
end

Config.CustomUseNotificationFunctionExit = function()
    --Here you can trigger a custom event/call export function to hide a notification set by Config.CustomNotificationFunctionEnter
    --https://github.com/dsheedes/cd_drawtextui Example: TriggerEvent('cd_drawtextui:HideUI')
    --Be aware that this function is only called when you exit the marker, not every tick.
    --Code inside this will work only if Config.UseCustomNotifications is set to true
end