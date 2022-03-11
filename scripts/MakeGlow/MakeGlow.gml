function MakeGlow(host) constructor
{
   glowInstance = instance_create_layer(host.x, host.y, "Glow", oGlow);
   glowInstance.host = host;
   host.glow = glowInstance;
}