package de.ixilon.nukkit;

import cn.nukkit.network.protocol.ProtocolInfo;

public class NukkitProtocol {
  public static void main(String[] args) {
    System.out.print(Integer.toString(ProtocolInfo.CURRENT_PROTOCOL));
  }
}