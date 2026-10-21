Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/firewall_rules?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Cisco IOS (standard)\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Change NUMBER to a valid ACL number.\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Cisco IOS (extended)\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"IP Filter (ipfilter)\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"Change le0 to a valid interface if needed.\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"IPFirewall (ipfw)\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"Netfilter (iptables)\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"Change eth0 to a valid interface if needed.\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"Packet Filter (pf)\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"$ext_if should be set to a valid interface.\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"Windows Firewall (netsh old syntax)\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"Windows Firewall (netsh new syntax)\00", align 1
@products = internal unnamed_addr constant [8 x { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }] [{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr null, ptr @sf_ios_std_ipv4, ptr null, ptr null, i8 0, [7 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] } { ptr @.str.5, ptr @.str.3, ptr @.str.4, ptr null, ptr @sf_ios_ext_ipv4, ptr @sf_ios_ext_port, ptr @sf_ios_ext_ipv4_port, i8 1, [7 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr null, ptr @sf_ipfilter_ipv4, ptr @sf_ipfilter_port, ptr @sf_ipfilter_ipv4_port, i8 1, [7 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] } { ptr @.str.9, ptr @.str.1, ptr @.str.8, ptr @sf_ipfw_mac, ptr @sf_ipfw_ipv4, ptr @sf_ipfw_port, ptr @sf_ipfw_ipv4_port, i8 1, [7 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.8, ptr @sf_netfilter_mac, ptr @sf_netfilter_ipv4, ptr @sf_netfilter_port, ptr @sf_netfilter_ipv4_port, i8 1, [7 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str.8, ptr null, ptr @sf_pf_ipv4, ptr @sf_pf_port, ptr @sf_pf_ipv4_port, i8 1, [7 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] } { ptr @.str.14, ptr @.str.1, ptr @.str.8, ptr null, ptr null, ptr @sf_netsh_port_old, ptr @sf_netsh_ipv4_port_old, i8 0, [7 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] } { ptr @.str.15, ptr @.str.1, ptr @.str.8, ptr null, ptr null, ptr @sf_netsh_port_new, ptr @sf_netsh_ipv4_port_new, i8 0, [7 x i8] zeroinitializer }], align 16
@.str.17 = private unnamed_addr constant [30 x i8] c"access-list NUMBER %s host %s\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"deny\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"permit\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"access-list NUMBER %s ip host %s any\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"access-list NUMBER %s ip any host %s\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"access-list NUMBER %s %s any any eq %u\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.25 = private unnamed_addr constant [43 x i8] c"access-list NUMBER %s %s host %s eq %u any\00", align 1
@.str.26 = private unnamed_addr constant [43 x i8] c"access-list NUMBER %s %s any host %s eq %u\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"%s %s on le0 from %s to any\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.32 = private unnamed_addr constant [48 x i8] c"%s %s on le0 proto %s from any to any port = %u\00", align 1
@.str.33 = private unnamed_addr constant [47 x i8] c"%s %s on le0 proto %s from %s port = %u to any\00", align 1
@.str.34 = private unnamed_addr constant [47 x i8] c"%s %s on le0 proto %s from any to %s port = %u\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"add %s MAC %s any %s\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"allow\00", align 1
@.str.37 = private unnamed_addr constant [28 x i8] c"add %s ip from %s to any %s\00", align 1
@.str.38 = private unnamed_addr constant [32 x i8] c"add %s %s from any to any %u %s\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"add %s %s from %s %u to any %s\00", align 1
@.str.40 = private unnamed_addr constant [67 x i8] c"iptables --append %s --in-interface eth0 --mac-source %s --jump %s\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"INPUT\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"OUTPUT\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"DROP\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"ACCEPT\00", align 1
@.str.45 = private unnamed_addr constant [60 x i8] c"iptables --append %s --in-interface eth0 %s %s/32 --jump %s\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"--source\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"--destination\00", align 1
@.str.48 = private unnamed_addr constant [71 x i8] c"iptables --append %s --in-interface eth0 --protocol %s %s %u --jump %s\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"--source-port\00", align 1
@.str.50 = private unnamed_addr constant [19 x i8] c"--destination-port\00", align 1
@.str.51 = private unnamed_addr constant [80 x i8] c"iptables --append %s --in-interface eth0 --protocol %s %s %s/32 %s %u --jump %s\00", align 1
@.str.52 = private unnamed_addr constant [38 x i8] c"%s %s quick on $ext_if from %s to any\00", align 1
@.str.53 = private unnamed_addr constant [56 x i8] c"%s %s quick on $ext_if proto %s from any to any port %u\00", align 1
@.str.54 = private unnamed_addr constant [55 x i8] c"%s %s quick on $ext_if proto %s from %s to any port %u\00", align 1
@.str.55 = private unnamed_addr constant [35 x i8] c"add portopening %s %u Wireshark %s\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"DISABLE\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"ENABLE\00", align 1
@.str.58 = private unnamed_addr constant [38 x i8] c"add portopening %s %u Wireshark %s %s\00", align 1
@.str.59 = private unnamed_addr constant [68 x i8] c"add rule name=\22Wireshark\22 dir=in action=%s protocol=%s localport=%u\00", align 1
@.str.60 = private unnamed_addr constant [80 x i8] c"add rule name=\22Wireshark\22 dir=in action=%s protocol=%s localport=%u remoteip=%s\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define hidden noundef i64 @firewall_product_count() local_unnamed_addr #0 {
bb.a:
  ret i64 8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define hidden ptr @firewall_product_name(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %0, 7
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr [64 x i8], ptr @products, i64 %0
  %i.c = load ptr, ptr %i.b, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ @.str, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define hidden ptr @firewall_product_rule_hint(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %0, 7
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr [64 x i8], ptr @products, i64 %0
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ @.str.1, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define hidden ptr @firewall_product_comment_prefix(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %0, 7
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr [64 x i8], ptr @products, i64 %0
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ @.str.1, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define hidden ptr @firewall_product_mac_func(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %0, 7
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr [64 x i8], ptr @products, i64 %0
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define hidden ptr @firewall_product_ipv4_func(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %0, 7
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr [64 x i8], ptr @products, i64 %0
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define hidden ptr @firewall_product_port_func(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %0, 7
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr [64 x i8], ptr @products, i64 %0
  %i.c = getelementptr i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define hidden ptr @firewall_product_ipv4_port_func(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %0, 7
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr [64 x i8], ptr @products, i64 %0
  %i.c = getelementptr i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define hidden noundef zeroext i1 @firewall_product_does_inbound(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = add i64 %0, -1
  %.0 = icmp ult i64 %1, 5
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @sf_ios_std_ipv4(ptr noundef %0, ptr noundef %1, i32 %2, i32 %3, i1 zeroext %4, i1 noundef zeroext %5) #1 {
bb.a:
  %i.a = select i1 %5, ptr @.str.18, ptr @.str.19
  tail call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %0, ptr noundef @.str.17, ptr noundef nonnull %i.a, ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @sf_ios_ext_ipv4(ptr noundef %0, ptr noundef %1, i32 %2, i32 %3, i1 noundef zeroext %4, i1 noundef zeroext %5) #1 {
bb.a:
  %i.a = select i1 %5, ptr @.str.18, ptr @.str.19
  %.str.20..str.21 = select i1 %4, ptr @.str.20, ptr @.str.21
  tail call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %0, ptr noundef %.str.20..str.21, ptr noundef nonnull %i.a, ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @sf_ios_ext_port(ptr noundef %0, ptr nofree readnone captures(none) %1, i32 noundef %2, i32 noundef %3, i1 zeroext %4, i1 noundef zeroext %5) #1 {
bb.a:
  %i.a = select i1 %5, ptr @.str.18, ptr @.str.19
  %i.b = icmp eq i32 %3, 2
  %i.c = select i1 %i.b, ptr @.str.23, ptr @.str.24
  tail call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %0, ptr noundef @.str.22, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, i32 noundef %2)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @sf_ios_ext_ipv4_port(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5) #1 {
bb.a:
  %i.a = select i1 %5, ptr @.str.18, ptr @.str.19
  %i.b = icmp eq i32 %3, 2
  %i.c = select i1 %i.b, ptr @.str.23, ptr @.str.24
  %.str.25..str.26 = select i1 %4, ptr @.str.25, ptr @.str.26
  tail call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %0, ptr noundef %.str.25..str.26, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @sf_ipfilter_ipv4(ptr noundef %0, ptr noundef %1, i32 %2, i32 %3, i1 noundef zeroext %4, i1 noundef zeroext %5) #1 {
bb.a:
  %i.a = select i1 %5, ptr @.str.28, ptr @.str.29
  %i.b = select i1 %4, ptr @.str.30, ptr @.str.31
  tail call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %0, ptr noundef @.str.27, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @sf_ipfilter_port(ptr noundef %0, ptr nofree readnone captures(none) %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5) #1 {
bb.a:
  %i.a = select i1 %5, ptr @.str.28, ptr @.str.29
  %i.b = select i1 %4, ptr @.str.30, ptr @.str.31
  %i.c = icmp eq i32 %3, 2
  %i.d = select i1 %i.c, ptr @.str.23, ptr @.str.24
  tail call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %0, ptr noundef @.str.32, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, i32 noundef %2)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @sf_ipfilter_ipv4_port(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5) #1 {
bb.a:
  %i.a = select i1 %5, ptr @.str.28, ptr @.str.29 ; 2 uses
  %i.b = icmp eq i32 %3, 2
  %i.c = select i1 %i.b, ptr @.str.23, ptr @.str.24 ; 2 uses
  br i1 %4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %0, ptr noundef @.str.33, ptr noundef nonnull %i.a, ptr noundef @.str.30, ptr noundef nonnull %i.c, ptr noundef %1, i32 noundef %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %0, ptr noundef @.str.34, ptr noundef nonnull %i.a, ptr noundef @.str.31, ptr noundef nonnull %i.c, ptr noundef %1, i32 noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @sf_ipfw_mac(ptr noundef %0, ptr noundef %1, i32 %2, i32 %3, i1 noundef zeroext %4, i1 noundef zeroext %5) #1 {
bb.a:
  %i.a = select i1 %5, ptr @.str.18, ptr @.str.36
  %i.b = select i1 %4, ptr @.str.30, ptr @.str.31
  tail call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %0, ptr noundef @.str.35, ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef nonnull %i.b)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @sf_ipfw_ipv4(ptr noundef %0, ptr noundef %1, i32 %2, i32 %3, i1 noundef zeroext %4, i1 noundef zeroext %5) #1 {
bb.a:
  %i.a = select i1 %5, ptr @.str.18, ptr @.str.36
  %i.b = select i1 %4, ptr @.str.30, ptr @.str.31
  tail call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %0, ptr noundef @.str.37, ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef nonnull %i.b)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @sf_ipfw_port(ptr noundef %0, ptr nofree readnone captures(none) %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5) #1 {
bb.a:
  %i.a = select i1 %5, ptr @.str.18, ptr @.str.36
  %i.b = icmp eq i32 %3, 2
  %i.c = select i1 %i.b, ptr @.str.23, ptr @.str.24
  %i.d = select i1 %4, ptr @.str.30, ptr @.str.31
  tail call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %0, ptr noundef @.str.38, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, i32 noundef %2, ptr noundef nonnull %i.d)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @sf_ipfw_ipv4_port(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5) #1 {
bb.a:
  %i.a = select i1 %5, ptr @.str.18, ptr @.str.36
  %i.b = icmp eq i32 %3, 2
  %i.c = select i1 %i.b, ptr @.str.23, ptr @.str.24
  %i.d = select i1 %4, ptr @.str.30, ptr @.str.31
  tail call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %0, ptr noundef @.str.39, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %i.d)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @sf_netfilter_mac(ptr noundef %0, ptr noundef %1, i32 %2, i32 %3, i1 noundef zeroext %4, i1 noundef zeroext %5) #1 {
bb.a:
  %i.a = select i1 %4, ptr @.str.41, ptr @.str.42
  %i.b = select i1 %5, ptr @.str.43, ptr @.str.44
  tail call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %0, ptr noundef @.str.40, ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef nonnull %i.b)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @sf_netfilter_ipv4(ptr noundef %0, ptr noundef %1, i32 %2, i32 %3, i1 noundef zeroext %4, i1 noundef zeroext %5) #1 {
bb.a:
  %i.a = select i1 %4, ptr @.str.41, ptr @.str.42
  %i.b = select i1 %4, ptr @.str.46, ptr @.str.47
  %i.c = select i1 %5, ptr @.str.43, ptr @.str.44
  tail call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %0, ptr noundef @.str.45, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %1, ptr noundef nonnull %i.c)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @sf_netfilter_port(ptr noundef %0, ptr nofree readnone captures(none) %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5) #1 {
bb.a:
  %i.a = select i1 %4, ptr @.str.41, ptr @.str.42
  %i.b = icmp eq i32 %3, 2
  %i.c = select i1 %i.b, ptr @.str.23, ptr @.str.24
  %i.d = select i1 %4, ptr @.str.49, ptr @.str.50
  %i.e = select i1 %5, ptr @.str.43, ptr @.str.44
  tail call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %0, ptr noundef @.str.48, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef %2, ptr noundef nonnull %i.e)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @sf_netfilter_ipv4_port(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5) #1 {
bb.a:
  %i.a = select i1 %4, ptr @.str.41, ptr @.str.42
  %i.b = icmp eq i32 %3, 2
  %i.c = select i1 %i.b, ptr @.str.23, ptr @.str.24
  %i.d = select i1 %4, ptr @.str.46, ptr @.str.47
  %i.e = select i1 %4, ptr @.str.49, ptr @.str.50
  %i.f = select i1 %5, ptr @.str.43, ptr @.str.44
  tail call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %0, ptr noundef @.str.51, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef %1, ptr noundef nonnull %i.e, i32 noundef %2, ptr noundef nonnull %i.f)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @sf_pf_ipv4(ptr noundef %0, ptr noundef %1, i32 %2, i32 %3, i1 noundef zeroext %4, i1 noundef zeroext %5) #1 {
bb.a:
  %i.a = select i1 %5, ptr @.str.28, ptr @.str.29
  %i.b = select i1 %4, ptr @.str.30, ptr @.str.31
  tail call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %0, ptr noundef @.str.52, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @sf_pf_port(ptr noundef %0, ptr nofree readnone captures(none) %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5) #1 {
bb.a:
  %i.a = select i1 %5, ptr @.str.28, ptr @.str.29
  %i.b = select i1 %4, ptr @.str.30, ptr @.str.31
  %i.c = icmp eq i32 %3, 2
  %i.d = select i1 %i.c, ptr @.str.23, ptr @.str.24
  tail call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %0, ptr noundef @.str.53, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, i32 noundef %2)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @sf_pf_ipv4_port(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5) #1 {
bb.a:
  %i.a = select i1 %5, ptr @.str.28, ptr @.str.29
  %i.b = select i1 %4, ptr @.str.30, ptr @.str.31
  %i.c = icmp eq i32 %3, 2
  %i.d = select i1 %i.c, ptr @.str.23, ptr @.str.24
  tail call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %0, ptr noundef @.str.54, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @sf_netsh_port_old(ptr noundef %0, ptr nofree readnone captures(none) %1, i32 noundef %2, i32 noundef %3, i1 zeroext %4, i1 noundef zeroext %5) #1 {
bb.a:
  %i.a = icmp eq i32 %3, 2
  %i.b = select i1 %i.a, ptr @.str.23, ptr @.str.24
  %i.c = select i1 %5, ptr @.str.56, ptr @.str.57
  tail call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %0, ptr noundef @.str.55, ptr noundef nonnull %i.b, i32 noundef %2, ptr noundef nonnull %i.c)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @sf_netsh_ipv4_port_old(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 zeroext %4, i1 noundef zeroext %5) #1 {
bb.a:
  %i.a = icmp eq i32 %3, 2
  %i.b = select i1 %i.a, ptr @.str.23, ptr @.str.24
  %i.c = select i1 %5, ptr @.str.56, ptr @.str.57
  tail call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %0, ptr noundef @.str.58, ptr noundef nonnull %i.b, i32 noundef %2, ptr noundef nonnull %i.c, ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @sf_netsh_port_new(ptr noundef %0, ptr nofree readnone captures(none) %1, i32 noundef %2, i32 noundef %3, i1 zeroext %4, i1 noundef zeroext %5) #1 {
bb.a:
  %i.a = select i1 %5, ptr @.str.28, ptr @.str.36
  %i.b = icmp eq i32 %3, 2
  %i.c = select i1 %i.b, ptr @.str.23, ptr @.str.24
  tail call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %0, ptr noundef @.str.59, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, i32 noundef %2)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @sf_netsh_ipv4_port_new(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 zeroext %4, i1 noundef zeroext %5) #1 {
bb.a:
  %i.a = select i1 %5, ptr @.str.28, ptr @.str.36
  %i.b = icmp eq i32 %3, 2
  %i.c = select i1 %i.b, ptr @.str.23, ptr @.str.24
  tail call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %0, ptr noundef @.str.60, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, i32 noundef %2, ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @g_string_append_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
end_hunk_0
