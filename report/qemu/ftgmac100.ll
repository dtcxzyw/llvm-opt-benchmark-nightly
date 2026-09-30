Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/ftgmac100?download=true
inline.NumInlined: 132
inline.NumDeleted: 40
begin_hunk_0
@.str.61 = private unnamed_addr constant [39 x i8] c"%s: failed to read descriptor @ 0x%lx\0A\00", align 1
@__func__.ftgmac100_read_bd = private unnamed_addr constant [18 x i8] c"ftgmac100_read_bd\00", align 1
@.str.62 = private unnamed_addr constant [51 x i8] c"%s: frame too small for VLAN insertion : %d bytes\0A\00", align 1
@__func__.ftgmac100_insert_vlan = private unnamed_addr constant [22 x i8] c"ftgmac100_insert_vlan\00", align 1
@.str.63 = private unnamed_addr constant [40 x i8] c"%s: failed to write descriptor @ 0x%lx\0A\00", align 1
@__func__.ftgmac100_write_bd = private unnamed_addr constant [19 x i8] c"ftgmac100_write_bd\00", align 1
@.str.64 = private unnamed_addr constant [25 x i8] c"%s: unsupported ST code\0A\00", align 1
@__func__.do_phy_new_ctl = private unnamed_addr constant [15 x i8] c"do_phy_new_ctl\00", align 1
@.str.65 = private unnamed_addr constant [26 x i8] c"%s: invalid OP code %08x\0A\00", align 1
@.str.66 = private unnamed_addr constant [28 x i8] c"%s: reg %d not implemented\0A\00", align 1
@__func__.do_phy_write = private unnamed_addr constant [13 x i8] c"do_phy_write\00", align 1
@.str.67 = private unnamed_addr constant [30 x i8] c"%s: Bad address at offset %d\0A\00", align 1
@__func__.do_phy_read = private unnamed_addr constant [12 x i8] c"do_phy_read\00", align 1
@.str.68 = private unnamed_addr constant [21 x i8] c"%s: no OP code %08x\0A\00", align 1
@__func__.do_phy_ctl = private unnamed_addr constant [11 x i8] c"do_phy_ctl\00", align 1
@ftgmac100_high_ops = internal constant { ptr, ptr, ptr, ptr, i32, [4 x i8], { i32, i32, i8, [7 x i8], ptr }, %struct.anon.6, [4 x i8] } { ptr @ftgmac100_high_read, ptr @ftgmac100_high_write, ptr null, ptr null, i32 2, [4 x i8] zeroinitializer, { i32, i32, i8, [7 x i8], ptr } { i32 4, i32 4, i8 0, [7 x i8] zeroinitializer, ptr null }, %struct.anon.6 zeroinitializer, [4 x i8] zeroinitializer }, align 8
@__func__.ftgmac100_high_read = private unnamed_addr constant [20 x i8] c"ftgmac100_high_read\00", align 1
@__func__.ftgmac100_high_write = private unnamed_addr constant [21 x i8] c"ftgmac100_high_write\00", align 1
@net_ftgmac100_info = internal global { i32, [4 x i8], i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i32 1, [4 x i8] zeroinitializer, i64 40, ptr @ftgmac100_receive, ptr null, ptr @ftgmac100_can_receive, ptr null, ptr null, ptr null, ptr @ftgmac100_cleanup, ptr @ftgmac100_set_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.71 = private unnamed_addr constant [31 x i8] c"%s: frame too big : %zd bytes\0A\00", align 1
@__func__.ftgmac100_receive = private unnamed_addr constant [18 x i8] c"ftgmac100_receive\00", align 1
@.str.72 = private unnamed_addr constant [23 x i8] c"%s: Unexpected packet\0A\00", align 1
@.str.73 = private unnamed_addr constant [23 x i8] c"%s: Lost end of frame\0A\00", align 1
@.str.74 = private unnamed_addr constant [22 x i8] c"Aspeed MII controller\00", align 1
@.compoundliteral.75 = internal constant [3 x { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr }] [{ ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.22, i64 19132, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.23, i64 19136, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr null, i64 0, i64 0, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, i32 131072, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }], align 8
@vmstate_aspeed_mii = internal constant { ptr, i8, i8, [2 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.2, i8 0, i8 0, [2 x i8] zeroinitializer, i32 1, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.compoundliteral.75, ptr null }, align 8
@__func__.ASPEED_MII = private unnamed_addr constant [11 x i8] c"ASPEED_MII\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"s->nic\00", align 1
@.str.78 = private unnamed_addr constant [22 x i8] c"../hw/net/ftgmac100.c\00", align 1
@__PRETTY_FUNCTION__.aspeed_mii_realize = private unnamed_addr constant [49 x i8] c"void aspeed_mii_realize(DeviceState *, Error **)\00", align 1
@aspeed_mii_ops = internal constant { ptr, ptr, ptr, ptr, i32, [4 x i8], { i32, i32, i8, [7 x i8], ptr }, %struct.anon.6, [4 x i8] } { ptr @aspeed_mii_read, ptr @aspeed_mii_write, ptr null, ptr null, i32 2, [4 x i8] zeroinitializer, { i32, i32, i8, [7 x i8], ptr } { i32 4, i32 4, i8 0, [7 x i8] zeroinitializer, ptr null }, %struct.anon.6 zeroinitializer, [4 x i8] zeroinitializer }, align 8
@__func__.aspeed_mii_read = private unnamed_addr constant [16 x i8] c"aspeed_mii_read\00", align 1
@__func__.aspeed_mii_write = private unnamed_addr constant [17 x i8] c"aspeed_mii_write\00", align 1
@__func__.aspeed_mii_do_phy_ctl = private unnamed_addr constant [22 x i8] c"aspeed_mii_do_phy_ctl\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"nic\00", align 1
@qdev_prop_link = external constant %struct.PropertyInfo, align 8
@aspeed_mii_properties = internal constant [1 x { ptr, ptr, i64, ptr, i64, %union.anon, ptr, i32, i32, i8, i8, [6 x i8] }] [{ ptr, ptr, i64, ptr, i64, %union.anon, ptr, i32, i32, i8, i8, [6 x i8] } { ptr @.str.80, ptr @qdev_prop_link, i64 808, ptr @.str, i64 0, %union.anon zeroinitializer, ptr null, i32 0, i32 0, i8 0, i8 0, [6 x i8] zeroinitializer }], align 16
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @do_qemu_init_do_qemu_init_ftgmac100_types, ptr null }]

; Function Attrs: nounwind sspstrong uwtable
define internal void @do_qemu_init_do_qemu_init_ftgmac100_types() #0 {
bb.a:
  tail call void @register_module_init(ptr noundef nonnull @do_qemu_init_ftgmac100_types, i32 noundef 4) #7
  ret void
}

declare void @register_module_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @do_qemu_init_ftgmac100_types() #0 {
bb.a:
  tail call void @type_register_static_array(ptr noundef nonnull @ftgmac100_types, i32 noundef 2) #7
  ret void
}

declare void @type_register_static_array(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @ftgmac100_class_init(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE_CLASS) #7 ; 5 uses
  %i.b = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 22, ptr noundef nonnull @__func__.RESETTABLE_CLASS) #7
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store ptr @vmstate_ftgmac100, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr @ftgmac100_reset_hold, ptr %i.d, align 8
  tail call void @device_class_set_props_n(ptr noundef %i.a, ptr noundef nonnull @ftgmac100_properties, i64 noundef 4) #7
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = or i64 %i.f, 8
  store i64 %i.g, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store ptr @ftgmac100_realize, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr @.str.4, ptr %i.i, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @aspeed_mii_class_init(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE_CLASS) #7 ; 4 uses
  %i.b = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 22, ptr noundef nonnull @__func__.RESETTABLE_CLASS) #7
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store ptr @vmstate_aspeed_mii, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr @aspeed_mii_reset_hold, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store ptr @aspeed_mii_realize, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr @.str.74, ptr %i.f, align 8
  tail call void @device_class_set_props_n(ptr noundef %i.a, ptr noundef nonnull @aspeed_mii_properties, i64 noundef 1) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @ftgmac100_reset_hold(ptr noundef %0, i32 %1) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.37, i32 noundef 15, ptr noundef nonnull @__func__.FTGMAC100) #7 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 19080
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 19144
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 19152
  store <4 x i32> zeroinitializer, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 19096
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  store <4 x i32> <i32 0, i32 1600, i32 0, i32 1>, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 19112
  store <4 x i32> <i32 143104, i32 0, i32 0, i32 241>, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 19128
  store <4 x i32> <i32 0, i32 0, i32 0, i32 1024>, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 19176
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 19192
  store i32 0, ptr %i.i, align 8
  store <4 x i32> <i32 31085, i32 4416, i32 3553, i32 0>, ptr %i.h, align 8
  ret void
}

declare void @device_class_set_props_n(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @ftgmac100_realize(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.37, i32 noundef 15, ptr noundef nonnull @__func__.FTGMAC100) #7 ; 16 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.46, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 19196
  %i.d = load i8, ptr %i.c, align 4, !range !7, !noundef !8
  %i.e = trunc nuw i8 %i.d to i1
  %spec.select = select i1 %i.e, i32 1073741824, i32 32768 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 19200
  store i32 %spec.select, ptr %i.f, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 19204
  store i32 %spec.select, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 9040 ; 4 uses
  tail call void @memory_region_init(ptr noundef nonnull %i.h, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.43, i64 noundef 4096) #7
  tail call void @sysbus_init_mmio(ptr noundef %i.b, ptr noundef nonnull %i.h) #7
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 9312 ; 2 uses
  tail call void @memory_region_init_io(ptr noundef nonnull %i.i, ptr noundef nonnull %i.a, ptr noundef nonnull @ftgmac100_ops, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.44, i64 noundef 256) #7
  tail call void @memory_region_add_subregion(ptr noundef nonnull %i.h, i64 noundef 0, ptr noundef nonnull %i.i) #7
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 19208
  %i.k = load i8, ptr %i.j, align 8, !range !7, !noundef !8
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 9584 ; 2 uses
  tail call void @memory_region_init_io(ptr noundef nonnull %i.m, ptr noundef nonnull %i.a, ptr noundef nonnull @ftgmac100_high_ops, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.45, i64 noundef 256) #7
  tail call void @memory_region_add_subregion(ptr noundef nonnull %i.h, i64 noundef 256, ptr noundef nonnull %i.m) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 9032
  tail call void @sysbus_init_irq(ptr noundef %i.b, ptr noundef nonnull %i.n) #7
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 816 ; 3 uses
  tail call void @qemu_macaddr_default_if_unset(ptr noundef nonnull %i.o) #7
  %i.p = tail call ptr @object_get_typename(ptr noundef %0) #7
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.t = tail call ptr @qemu_new_nic(ptr noundef nonnull @net_ftgmac100_info, ptr noundef nonnull %i.o, ptr noundef %i.p, ptr noundef %i.r, ptr noundef nonnull %i.s, ptr noundef nonnull %i.a) #7 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 808
  store ptr %i.t, ptr %i.u, align 8
  %i.v = tail call ptr @qemu_get_queue(ptr noundef %i.t) #7
  tail call void @qemu_format_nic_info_str(ptr noundef %i.v, ptr noundef nonnull %i.o) #7
  ret void
}

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @memory_region_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @sysbus_init_mmio(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @memory_region_init_io(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @memory_region_add_subregion(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @sysbus_init_irq(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @qemu_macaddr_default_if_unset(ptr noundef) local_unnamed_addr #1

declare ptr @qemu_new_nic(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @object_get_typename(ptr noundef) local_unnamed_addr #1

declare void @qemu_format_nic_info_str(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @qemu_get_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 4294967296) i64 @ftgmac100_read(ptr noundef %0, i64 noundef %1, i32 %2) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.37, i32 noundef 15, ptr noundef nonnull @__func__.FTGMAC100) #7 ; 18 uses
  %trunc = trunc i64 %1 to i8
  switch i8 %trunc, label %bb.u [
    i8 0, label %bb.b
    i8 4, label %bb.c
    i8 8, label %bb.d
    i8 12, label %bb.e
    i8 16, label %bb.f
    i8 20, label %bb.g
    i8 36, label %bb.h
    i8 32, label %bb.i
    i8 48, label %bb.j
    i8 56, label %bb.k
    i8 64, label %bb.l
    i8 68, label %bb.m
    i8 72, label %bb.n
    i8 104, label %bb.o
    i8 80, label %bb.p
    i8 96, label %bb.q
    i8 100, label %bb.r
    i8 40, label %bb.s
    i8 44, label %bb.s
    i8 84, label %bb.s
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 19080
  %i.c = load i32, ptr %i.b, align 8
  %i.d = zext i32 %i.c to i64
  br label %bb.w

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 19084
  %i.f = load i32, ptr %i.e, align 4
  %i.g = zext i32 %i.f to i64
  br label %bb.w

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 816
  %3 = load i8, ptr %i.h, align 16
  %4 = zext i8 %3 to i64
  %5 = shl nuw nsw i64 %4, 8
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 817
  %7 = load i8, ptr %6, align 1
  %i.i = zext i8 %7 to i64
  %8 = or disjoint i64 %5, %i.i
  br label %bb.w

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 818
  %i.k = load i32, ptr %i.j, align 2
  %i.l = tail call i32 @llvm.bswap.i32(i32 %i.k)
  %i.m = zext i32 %i.l to i64
  br label %bb.w

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 19092
  %i.o = load i32, ptr %i.n, align 4
  %i.p = zext i32 %i.o to i64
  br label %bb.w

bb.g:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 19096
  %i.r = load i32, ptr %i.q, align 4
  %i.s = zext i32 %i.r to i64
  br label %bb.w

bb.h:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 19144
  %i.u = load i64, ptr %i.t, align 8
  %i.v = and i64 %i.u, 4294967295
  br label %bb.w

bb.i:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 19160
  %i.x = load i64, ptr %i.w, align 8
  %i.y = and i64 %i.x, 4294967295
  br label %bb.w

bb.j:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 19104
  %i.aa = load i32, ptr %i.z, align 16
  %i.ab = zext i32 %i.aa to i64
  br label %bb.w

bb.k:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 19112
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = zext i32 %i.ad to i64
  br label %bb.w

bb.l:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 19116
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = zext i32 %i.ag to i64
  br label %bb.w

bb.m:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 19120
  %i.aj = load i32, ptr %i.ai, align 16
  %i.ak = zext i32 %i.aj to i64
  br label %bb.w

bb.n:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 19124
  %i.am = load i32, ptr %i.al, align 4
  %i.an = zext i32 %i.am to i64
  br label %bb.w

bb.o:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 19140
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = zext i32 %i.ap to i64
  br label %bb.w

bb.p:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 19128
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = zext i32 %i.as to i64
  br label %bb.w

bb.q:                                             ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 19132
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = zext i32 %i.av to i64
  br label %bb.w

bb.r:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 19136
  %i.ay = load i32, ptr %i.ax, align 16
  %i.az = zext i32 %i.ay to i64
  br label %bb.w

bb.s:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.ba = load i32, ptr @qemu_loglevel, align 4
  %i.bb = and i32 %i.ba, 1024
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %bb.w, label %bb.t, !prof !9

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.ftgmac100_read, i64 noundef %1) #7
  br label %bb.w

bb.u:                                             ; preds = %bb.a
  %i.bc = load i32, ptr @qemu_loglevel, align 4
  %i.bd = and i32 %i.bc, 2048
  %.not25 = icmp eq i32 %i.bd, 0
  br i1 %.not25, label %bb.w, label %bb.v, !prof !9

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.ftgmac100_read, i64 noundef %1) #7
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.s, %bb.t, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i64 [ 0, %bb.s ], [ %i.d, %bb.b ], [ %i.g, %bb.c ], [ %8, %bb.d ], [ %i.m, %bb.e ], [ %i.p, %bb.f ], [ %i.s, %bb.g ], [ %i.v, %bb.h ], [ %i.y, %bb.i ], [ %i.ab, %bb.j ], [ %i.ae, %bb.k ], [ %i.ah, %bb.l ], [ %i.ak, %bb.m ], [ %i.an, %bb.n ], [ %i.aq, %bb.o ], [ %i.at, %bb.p ], [ %i.aw, %bb.q ], [ %i.az, %bb.r ], [ 0, %bb.t ], [ 0, %bb.v ], [ 0, %bb.u ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @ftgmac100_write(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 %3) #0 {
bb.a:
  %4 = alloca %struct.FTGMAC100Desc, align 4      ; 6 uses
  %5 = alloca %struct.FTGMAC100Desc, align 4      ; 6 uses
  %6 = alloca %struct.FTGMAC100Desc, align 4      ; 6 uses
  %7 = alloca %struct.FTGMAC100Desc, align 16     ; 5 uses
  %8 = alloca %struct.FTGMAC100Desc, align 16     ; 16 uses
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.37, i32 noundef 15, ptr noundef nonnull @__func__.FTGMAC100) #7 ; 60 uses
  %trunc = trunc i64 %1 to i8
  switch i8 %trunc, label %bb.cu [
    i8 0, label %bb.b
    i8 4, label %bb.c
    i8 8, label %bb.d
    i8 12, label %bb.e
    i8 16, label %bb.f
    i8 20, label %bb.g
    i8 48, label %bb.h
    i8 36, label %bb.i
    i8 76, label %bb.m
    i8 32, label %bb.n
    i8 24, label %bb.r
    i8 28, label %bb.bj
    i8 52, label %bb.bo
    i8 80, label %bb.br
    i8 96, label %bb.by
    i8 100, label %bb.cg
    i8 56, label %bb.ch
    i8 64, label %bb.co
    i8 68, label %bb.cp
    i8 72, label %bb.cq
    i8 104, label %bb.cr
    i8 40, label %bb.cs
    i8 44, label %bb.cs
    i8 84, label %bb.cs
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 19080 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = trunc i64 %2 to i32
  %i.e = xor i32 %i.d, -1
  %i.f = and i32 %i.c, %i.e
  store i32 %i.f, ptr %i.b, align 8
  br label %do_phy_ctl.exit

bb.c:                                             ; preds = %bb.a
  %i.g = trunc i64 %2 to i32
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 19084
  store i32 %i.g, ptr %i.h, align 4
  br label %do_phy_ctl.exit

bb.d:                                             ; preds = %bb.a
  %i.i = lshr i64 %2, 8
  %i.j = trunc i64 %i.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 816
  store i8 %i.j, ptr %i.k, align 16
  %i.l = trunc i64 %2 to i8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 817
  store i8 %i.l, ptr %i.m, align 1
  br label %do_phy_ctl.exit

bb.e:                                             ; preds = %bb.a
  %i.n = lshr i64 %2, 24
  %i.o = trunc i64 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 818
  store i8 %i.o, ptr %i.p, align 2
  %i.q = lshr i64 %2, 16
  %i.r = trunc i64 %i.q to i8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 819
  store i8 %i.r, ptr %i.s, align 1
  %i.t = lshr i64 %2, 8
  %i.u = trunc i64 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 820
  store i8 %i.u, ptr %i.v, align 4
  %i.w = trunc i64 %2 to i8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 821
  store i8 %i.w, ptr %i.x, align 1
  br label %do_phy_ctl.exit

bb.f:                                             ; preds = %bb.a
  %i.y = trunc i64 %2 to i32
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 19092
  store i32 %i.y, ptr %i.z, align 4
  br label %do_phy_ctl.exit

bb.g:                                             ; preds = %bb.a
  %i.aa = trunc i64 %2 to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 19096
  store i32 %i.aa, ptr %i.ab, align 4
  br label %do_phy_ctl.exit

bb.h:                                             ; preds = %bb.a
  %i.ac = trunc i64 %2 to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 19104
  store i32 %i.ac, ptr %i.ad, align 16
  br label %do_phy_ctl.exit

bb.i:                                             ; preds = %bb.a
  %i.ae = and i64 %2, 15
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = load i32, ptr @qemu_loglevel, align 4
  %i.ah = and i32 %i.ag, 2048
  %.not121 = icmp eq i32 %i.ah, 0
  br i1 %.not121, label %bb.cw, label %bb.k, !prof !9

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.ftgmac100_write, i64 noundef %2) #7
  br label %bb.cw

bb.l:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 19144 ; 2 uses
  %i.aj = and i64 %2, 4294967280
  %i.ak = load <2 x i64>, ptr %i.ai, align 8
  %i.al = and <2 x i64> %i.ak, splat (i64 -4294967296)
  %i.am = insertelement <2 x i64> poison, i64 %i.aj, i64 0
  %i.an = shufflevector <2 x i64> %i.am, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ao = or disjoint <2 x i64> %i.al, %i.an
  store <2 x i64> %i.ao, ptr %i.ai, align 8
  br label %do_phy_ctl.exit

bb.m:                                             ; preds = %bb.a
  %i.ap = trunc i64 %2 to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 19100
  store i32 %i.ap, ptr %i.aq, align 4
  br label %do_phy_ctl.exit

bb.n:                                             ; preds = %bb.a
  %i.ar = and i64 %2, 15
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = load i32, ptr @qemu_loglevel, align 4
  %i.au = and i32 %i.at, 2048
  %.not120 = icmp eq i32 %i.au, 0
  br i1 %.not120, label %bb.cw, label %bb.p, !prof !9

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.53, ptr noundef nonnull @__func__.ftgmac100_write, i64 noundef %2) #7
  br label %bb.cw

bb.q:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 19160 ; 2 uses
  %i.aw = and i64 %2, 4294967280
  %i.ax = load <2 x i64>, ptr %i.av, align 8
  %i.ay = and <2 x i64> %i.ax, splat (i64 -4294967296)
  %i.az = insertelement <2 x i64> poison, i64 %i.aw, i64 0
  %i.ba = shufflevector <2 x i64> %i.az, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.bb = or disjoint <2 x i64> %i.ay, %i.ba
  store <2 x i64> %i.bb, ptr %i.av, align 8
  br label %do_phy_ctl.exit

bb.r:                                             ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 19128
  %i.bd = load i32, ptr %i.bc, align 8
  %i.be = and i32 %i.bd, 5
  %i.bf = icmp eq i32 %i.be, 5
  br i1 %i.bf, label %bb.s, label %bb.be

bb.s:                                             ; preds = %bb.r
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 19160
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 19168 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 16           ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 9856 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, i8 0, i64 16, i1 false), !annotation !10
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !11
  fence seq_cst
  %i.bl = call i32 @address_space_rw(ptr noundef nonnull @address_space_memory, i64 noundef %i.bj, i64 4294967296, ptr noundef nonnull %8, i64 noundef range(i64 -2147483648, 4294967296) 16, i1 noundef zeroext false) #7
  %.not.i109.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i109.i, label %ftgmac100_read_bd.exit.lr.ph.i, label %._crit_edge.i

ftgmac100_read_bd.exit.lr.ph.i:                   ; preds = %bb.s
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 19080 ; 14 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 19208
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 9868 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 9872
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 9870
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 808
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 19200
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 19112
  br label %ftgmac100_read_bd.exit.i

._crit_edge.i:                                    ; preds = %bb.bd, %bb.s
  %.065.lcssa.i = phi i64 [ %i.bj, %bb.s ], [ %.267.i, %bb.bd ] ; 3 uses
  %i.bx = load i32, ptr @qemu_loglevel, align 4
  %i.by = and i32 %i.bx, 2048
  %.not19.i.i = icmp eq i32 %i.by, 0
  br i1 %.not19.i.i, label %ftgmac100_read_bd.exit.thread.i, label %bb.t, !prof !9
end_hunk_0
