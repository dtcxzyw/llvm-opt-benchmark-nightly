Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ieee80211-netmon?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hf_register_info = type { ptr, %struct._header_field_info }
%struct._header_field_info = type { ptr, ptr, i32, i32, ptr, i64, ptr, i32, i32, i32, i32, ptr }
%struct.unit_name_string = type { ptr, ptr }
%struct.ieee_802_11_phdr = type { i32, i8, i32, %union.ieee_802_11_phy_info, i16, i16, i32, i16, i8, i8, i8, i8, i8, i8, i64, i32, i32, i8 }
%union.ieee_802_11_phy_info = type { %struct.ieee_802_11be }
%struct.ieee_802_11be = type { i8, i8, i8, i8, [4 x %struct.ieee_802_11be_user_info] }
%struct.ieee_802_11be_user_info = type { i32 }

@proto_register_netmon_802_11.phy_type = internal constant [10 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.1 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.2 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.3 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.4 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.5 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.6 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.7 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.8 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"802.11 FHSS\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"802.11 DSSS\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"802.11 IR\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"802.11a\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"802.11b\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"802.11g\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"802.11n\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"802.11ac\00", align 1
@proto_register_netmon_802_11.hf = internal global [13 x %struct.hf_register_info] [%struct.hf_register_info { ptr @hf_netmon_802_11_version, %struct._header_field_info { ptr @.str.9, ptr @.str.10, i32 4, i32 1, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_netmon_802_11_length, %struct._header_field_info { ptr @.str.11, ptr @.str.12, i32 5, i32 1, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_netmon_802_11_op_mode, %struct._header_field_info { ptr @.str.13, ptr @.str.14, i32 7, i32 2, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_netmon_802_11_op_mode_sta, %struct._header_field_info { ptr @.str.15, ptr @.str.16, i32 7, i32 2, ptr null, i64 1, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_netmon_802_11_op_mode_ap, %struct._header_field_info { ptr @.str.17, ptr @.str.18, i32 7, i32 2, ptr null, i64 2, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_netmon_802_11_op_mode_sta_ext, %struct._header_field_info { ptr @.str.19, ptr @.str.20, i32 7, i32 2, ptr null, i64 4, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_netmon_802_11_op_mode_mon, %struct._header_field_info { ptr @.str.21, ptr @.str.22, i32 7, i32 2, ptr null, i64 2147483648, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_netmon_802_11_phy_type, %struct._header_field_info { ptr @.str.23, ptr @.str.24, i32 7, i32 1, ptr @proto_register_netmon_802_11.phy_type, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_netmon_802_11_channel, %struct._header_field_info { ptr @.str.25, ptr @.str.26, i32 7, i32 1, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_netmon_802_11_frequency, %struct._header_field_info { ptr @.str.27, ptr @.str.28, i32 7, i32 4097, ptr @units_mhz, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_netmon_802_11_rssi, %struct._header_field_info { ptr @.str.29, ptr @.str.30, i32 15, i32 1, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_netmon_802_11_datarate, %struct._header_field_info { ptr @.str.31, ptr @.str.32, i32 7, i32 1, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_netmon_802_11_timestamp, %struct._header_field_info { ptr @.str.33, ptr @.str.34, i32 11, i32 1, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }], align 16
@hf_netmon_802_11_version = internal global i32 0, align 4
@.str.9 = private unnamed_addr constant [16 x i8] c"Header revision\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"netmon_802_11.version\00", align 1
@hf_netmon_802_11_length = internal global i32 0, align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"Header length\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"netmon_802_11.length\00", align 1
@hf_netmon_802_11_op_mode = internal global i32 0, align 4
@.str.13 = private unnamed_addr constant [15 x i8] c"Operation mode\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"netmon_802_11.op_mode\00", align 1
@hf_netmon_802_11_op_mode_sta = internal global i32 0, align 4
@.str.15 = private unnamed_addr constant [13 x i8] c"Station mode\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"netmon_802_11.op_mode.sta\00", align 1
@hf_netmon_802_11_op_mode_ap = internal global i32 0, align 4
@.str.17 = private unnamed_addr constant [8 x i8] c"AP mode\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"netmon_802_11.op_mode.ap\00", align 1
@hf_netmon_802_11_op_mode_sta_ext = internal global i32 0, align 4
@.str.19 = private unnamed_addr constant [24 x i8] c"Extensible station mode\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"netmon_802_11.op_mode.sta_ext\00", align 1
@hf_netmon_802_11_op_mode_mon = internal global i32 0, align 4
@.str.21 = private unnamed_addr constant [13 x i8] c"Monitor mode\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"netmon_802_11.op_mode.mon\00", align 1
@hf_netmon_802_11_phy_type = internal global i32 0, align 4
@.str.23 = private unnamed_addr constant [9 x i8] c"PHY type\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"netmon_802_11.phy_type\00", align 1
@hf_netmon_802_11_channel = internal global i32 0, align 4
@.str.25 = private unnamed_addr constant [8 x i8] c"Channel\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"netmon_802_11.channel\00", align 1
@hf_netmon_802_11_frequency = internal global i32 0, align 4
@.str.27 = private unnamed_addr constant [17 x i8] c"Center frequency\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"netmon_802_11.frequency\00", align 1
@units_mhz = external constant %struct.unit_name_string, align 8
@hf_netmon_802_11_rssi = internal global i32 0, align 4
@.str.29 = private unnamed_addr constant [5 x i8] c"RSSI\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"netmon_802_11.rssi\00", align 1
@hf_netmon_802_11_datarate = internal global i32 0, align 4
@.str.31 = private unnamed_addr constant [10 x i8] c"Data rate\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"netmon_802_11.datarate\00", align 1
@hf_netmon_802_11_timestamp = internal global i32 0, align 4
@.str.33 = private unnamed_addr constant [10 x i8] c"Timestamp\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"netmon_802_11.timestamp\00", align 1
@proto_register_netmon_802_11.ett = internal global [2 x ptr] [ptr @ett_netmon_802_11, ptr @ett_netmon_802_11_op_mode], align 16
@ett_netmon_802_11 = internal global i32 0, align 4
@ett_netmon_802_11_op_mode = internal global i32 0, align 4
@.str.35 = private unnamed_addr constant [29 x i8] c"NetMon 802.11 capture header\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"NetMon 802.11\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"netmon_802_11\00", align 1
@proto_netmon_802_11 = internal unnamed_addr global i32 0, align 4
@netmon_802_11_handle = internal unnamed_addr global ptr null, align 8
@.str.38 = private unnamed_addr constant [11 x i8] c"wlan_radio\00", align 1
@ieee80211_radio_handle = internal unnamed_addr global ptr null, align 8
@.str.39 = private unnamed_addr constant [11 x i8] c"wtap_encap\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"WLAN\00", align 1
@.str.41 = private unnamed_addr constant [35 x i8] c"NetMon WLAN Capture v%u, Length %u\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"%d dBm\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"%f Mb/s\00", align 1
@switch.table.dissect_netmon_802_11 = private unnamed_addr constant [8 x i8] c"\01\03\02\05\04\06\07\08", align 4

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_netmon_802_11() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef @.str.35, ptr noundef @.str.36, ptr noundef @.str.37) ; 2 uses
  store i32 %i.a, ptr @proto_netmon_802_11, align 4
  %i.b = tail call ptr @register_dissector(ptr noundef @.str.37, ptr noundef @dissect_netmon_802_11, i32 noundef %i.a)
  store ptr %i.b, ptr @netmon_802_11_handle, align 8
  %i.c = load i32, ptr @proto_netmon_802_11, align 4
  tail call void @proto_register_field_array(i32 noundef %i.c, ptr noundef @proto_register_netmon_802_11.hf, i32 noundef 13)
  tail call void @proto_register_subtree_array(ptr noundef @proto_register_netmon_802_11.ett, i32 noundef 2)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef range(i32 0, 65536) i32 @dissect_netmon_802_11(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %4 = alloca %struct.ieee_802_11_phdr, align 8   ; 18 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %4, i8 noundef 0, i64 noundef 72, i1 noundef false) #4
  store i32 -2, ptr %4, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @col_set_str(ptr noundef %i.e, i32 noundef 35, ptr noundef @.str.40)
  %i.f = load ptr, ptr %i.d, align 8
  tail call void @col_clear(ptr noundef %i.f, i32 noundef 25)
  %i.g = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 2 uses
  %i.h = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8
  %i.j = zext i8 %i.g to i32
  %i.k = zext i16 %i.h to i32                     ; 4 uses
  tail call void (ptr, i32, ptr, ...) @col_add_fstr(ptr noundef %i.i, i32 noundef 25, ptr noundef @.str.41, i32 noundef %i.j, i32 noundef %i.k)
  %i.l = icmp ne i8 %i.g, 2
  %i.m = icmp ult i16 %i.h, 32
  %or.cond = or i1 %i.l, %i.m
  br i1 %or.cond, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load i32, ptr @proto_netmon_802_11, align 4
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.n, ptr noundef %0, i32 noundef 0, i32 noundef %i.k, i32 noundef 0)
  %i.p = load i32, ptr @ett_netmon_802_11, align 4
  %i.q = tail call ptr @proto_item_add_subtree(ptr noundef %i.o, i32 noundef %i.p) ; 12 uses
  %i.r = load i32, ptr @hf_netmon_802_11_version, align 4
  %i.s = tail call ptr @proto_tree_add_item(ptr noundef %i.q, i32 noundef %i.r, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.t = load i32, ptr @hf_netmon_802_11_length, align 4
  %i.u = tail call ptr @proto_tree_add_item(ptr noundef %i.q, i32 noundef %i.t, ptr noundef %0, i32 noundef 1, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.v = load i32, ptr @hf_netmon_802_11_op_mode, align 4
  %i.w = tail call ptr @proto_tree_add_item(ptr noundef %i.q, i32 noundef %i.v, ptr noundef %0, i32 noundef 3, i32 noundef 4, i32 noundef -2147483648)
  %i.x = load i32, ptr @ett_netmon_802_11_op_mode, align 4
  %i.y = tail call ptr @proto_item_add_subtree(ptr noundef %i.w, i32 noundef %i.x) ; 4 uses
  %i.z = load i32, ptr @hf_netmon_802_11_op_mode_sta, align 4
  %i.aa = tail call ptr @proto_tree_add_item(ptr noundef %i.y, i32 noundef %i.z, ptr noundef %0, i32 noundef 3, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.ab = load i32, ptr @hf_netmon_802_11_op_mode_ap, align 4
  %i.ac = tail call ptr @proto_tree_add_item(ptr noundef %i.y, i32 noundef %i.ab, ptr noundef %0, i32 noundef 3, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.ad = load i32, ptr @hf_netmon_802_11_op_mode_sta_ext, align 4
  %i.ae = tail call ptr @proto_tree_add_item(ptr noundef %i.y, i32 noundef %i.ad, ptr noundef %0, i32 noundef 3, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.af = load i32, ptr @hf_netmon_802_11_op_mode_mon, align 4
  %i.ag = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.y, i32 noundef %i.af, ptr noundef %0, i32 noundef 3, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.a) ; 0 uses
  %i.ah = load i32, ptr %i.a, align 4
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 5, ptr %i.b, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ai = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 7)
  %.not126 = icmp eq i32 %i.ai, -1
  br i1 %.not126, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 11)
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ak, i8 noundef 0, i64 noundef 20, i1 noundef false) #4
  %switch.tableidx136 = add i32 %i.aj, -1         ; 2 uses
  %5 = icmp ult i32 %switch.tableidx136, 8
  br i1 %5, label %switch.lookup137, label %bb.f

switch.lookup137:                                 ; preds = %bb.e
  %6 = zext nneg i32 %switch.tableidx136 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.dissect_netmon_802_11, i64 %6
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %switch.lookup137
  %.sink = phi i32 [ %switch.ext, %switch.lookup137 ], [ 0, %bb.e ] ; 3 uses
  store i32 %.sink, ptr %i.c, align 8
  %i.al = load i32, ptr @hf_netmon_802_11_phy_type, align 4
  %i.am = call ptr @proto_tree_add_item(ptr noundef %i.q, i32 noundef %i.al, ptr noundef %0, i32 noundef 11, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.an = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 15) ; 8 uses
  %i.ao = icmp ult i32 %i.an, 1000
  br i1 %i.ao, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ap = icmp eq i32 %i.an, 0
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = load i32, ptr @hf_netmon_802_11_channel, align 4
  %i.ar = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.q, i32 noundef %i.aq, ptr noundef %0, i32 noundef 15, i32 noundef 4, i32 noundef 0, ptr noundef @.str) ; 0 uses
  br label %.thread

bb.i:                                             ; preds = %bb.g
  %i.as = trunc nuw nsw i32 %i.an to i16
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 34
  store i16 %i.as, ptr %i.at, align 2
  %i.au = load i32, ptr @hf_netmon_802_11_channel, align 4
  %i.av = call ptr @proto_tree_add_uint(ptr noundef %i.q, i32 noundef %i.au, ptr noundef %0, i32 noundef 15, i32 noundef 4, i32 noundef %i.an) ; 0 uses
  %switch.tableidx = add nsw i32 %.sink, -4
  %i.aw = icmp ult i32 %switch.tableidx, 3
  br i1 %i.aw, label %switch.lookup, label %.thread

switch.lookup:                                    ; preds = %bb.i
  %switch.idx.cast = trunc i32 %.sink to i1
  %switch.offset = xor i1 %switch.idx.cast, true
  %i.ax = call i32 @ieee80211_chan_to_mhz(i32 noundef %i.an, i1 noundef zeroext %switch.offset) ; 2 uses
  %.not128 = icmp eq i32 %i.ax, 0
  br i1 %.not128, label %.thread, label %bb.j

bb.j:                                             ; preds = %switch.lookup
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 36
  store i32 %i.ax, ptr %i.ay, align 4
  br label %.thread

bb.k:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 36
  store i32 %i.an, ptr %i.az, align 4
  %i.ba = load i32, ptr @hf_netmon_802_11_frequency, align 4
  %i.bb = call ptr @proto_tree_add_uint(ptr noundef %i.q, i32 noundef %i.ba, ptr noundef %0, i32 noundef 15, i32 noundef 4, i32 noundef %i.an) ; 0 uses
  %i.bc = call i32 @ieee80211_mhz_to_chan(i32 noundef %i.an) ; 2 uses
  %.not127 = icmp eq i32 %i.bc, -1
  br i1 %.not127, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i16 3, ptr %i.bd, align 8
  %i.be = trunc i32 %i.bc to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 34
  store i16 %i.be, ptr %i.bf, align 2
  br label %.thread

.thread:                                          ; preds = %bb.i, %switch.lookup, %bb.j, %bb.k, %bb.l, %bb.h
  %i.bg = phi i16 [ 1, %bb.i ], [ 1, %switch.lookup ], [ 3, %bb.j ], [ 2, %bb.k ], [ 3, %bb.l ], [ 0, %bb.h ] ; 2 uses
  %i.bh = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 19) ; 4 uses
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.thread
  %i.bj = load i32, ptr @hf_netmon_802_11_rssi, align 4
  %i.bk = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_int_format_value(ptr noundef %i.q, i32 noundef %i.bj, ptr noundef %0, i32 noundef 19, i32 noundef 4, i32 noundef 0, ptr noundef @.str) ; 0 uses
  br label %bb.o

bb.n:                                             ; preds = %.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bm = or disjoint i16 %i.bg, 32               ; 2 uses
  store i16 %i.bm, ptr %i.bl, align 8
  %i.bn = trunc i32 %i.bh to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i8 %i.bn, ptr %i.bo, align 4
  %i.bp = load i32, ptr @hf_netmon_802_11_rssi, align 4
  %i.bq = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_int_format_value(ptr noundef %i.q, i32 noundef %i.bp, ptr noundef %0, i32 noundef 19, i32 noundef 4, i32 noundef %i.bh, ptr noundef @.str.42, i32 noundef %i.bh) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.br = phi i16 [ %i.bm, %bb.n ], [ %i.bg, %bb.m ] ; 2 uses
  %i.bs = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 23) ; 4 uses
  %i.bt = icmp eq i8 %i.bs, 0
  br i1 %i.bt, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bu = load i32, ptr @hf_netmon_802_11_datarate, align 4
  %i.bv = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.q, i32 noundef %i.bu, ptr noundef %0, i32 noundef 23, i32 noundef 1, i32 noundef 0, ptr noundef @.str) ; 0 uses
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bw = zext i8 %i.bs to i32
  %i.bx = or i16 %i.br, 4
  %i.by = zext i8 %i.bs to i16
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i16 %i.by, ptr %i.bz, align 8
  %i.ca = load i32, ptr @hf_netmon_802_11_datarate, align 4
  %i.cb = uitofp i8 %i.bs to double
  %i.cc = fmul nnan double %i.cb, 5.000000e-01
  %i.cd = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.q, i32 noundef %i.ca, ptr noundef %0, i32 noundef 23, i32 noundef 1, i32 noundef %i.bw, ptr noundef @.str.43, double noundef %i.cc) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.d, %bb.p, %bb.q
  %i.ce = phi i16 [ 0, %bb.d ], [ %i.br, %bb.p ], [ %i.bx, %bb.q ]
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.cg = or i16 %i.ce, 512
  store i16 %i.cg, ptr %i.cf, align 8
  %i.ch = call i64 @tvb_get_letoh64(ptr noundef %0, i32 noundef 24)
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 %i.ch, ptr %i.ci, align 8
  %i.cj = load i32, ptr @hf_netmon_802_11_timestamp, align 4
  %i.ck = call ptr @proto_tree_add_item(ptr noundef %i.q, i32 noundef %i.cj, ptr noundef %0, i32 noundef 24, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %bb.r
  %i.cl = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %i.k)
  %i.cm = load ptr, ptr @ieee80211_radio_handle, align 8
  %i.cn = call i32 @call_dissector_with_data(ptr noundef %i.cm, ptr noundef %i.cl, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #4
  ret i32 %i.k
}

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_netmon_802_11() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @proto_netmon_802_11, align 4
  %i.b = tail call ptr @find_dissector_add_dependency(ptr noundef @.str.38, i32 noundef %i.a)
  store ptr %i.b, ptr @ieee80211_radio_handle, align 8
  %i.c = load ptr, ptr @netmon_802_11_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.39, i32 noundef 126, ptr noundef %i.c)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @find_dissector_add_dependency(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_letohs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_add_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_letohl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @ieee80211_chan_to_mhz(i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: null_pointer_is_valid
declare i32 @ieee80211_mhz_to_chan(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_int_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i64 @tvb_get_letoh64(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_remaining(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @call_dissector_with_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
end_hunk_0
