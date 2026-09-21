Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/xlnx-zynqmp?download=true
inline.NumInlined: 146
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0
@gdma_ch_addr = internal unnamed_addr constant [8 x i64] [i64 4249878528, i64 4249944064, i64 4250009600, i64 4250075136, i64 4250140672, i64 4250206208, i64 4250271744, i64 4250337280], align 16
@gdma_ch_intr = internal unnamed_addr constant [8 x i32] [i32 124, i32 125, i32 126, i32 127, i32 128, i32 129, i32 130, i32 131], align 16
@adma_ch_addr = internal unnamed_addr constant [8 x i64] [i64 4289200128, i64 4289265664, i64 4289331200, i64 4289396736, i64 4289462272, i64 4289527808, i64 4289593344, i64 4289658880], align 16
@adma_ch_intr = internal unnamed_addr constant [8 x i32] [i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84], align 16
@.str.92 = private unnamed_addr constant [21 x i8] c"stream-connected-dma\00", align 1
@.str.93 = private unnamed_addr constant [7 x i8] c"qspi%d\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"intrs\00", align 1
@.str.95 = private unnamed_addr constant [6 x i8] c"slots\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"machine\00", align 1
@.str.97 = private unnamed_addr constant [51 x i8] c"/opt-bench/work/qemu/qemu/include/hw/core/boards.h\00", align 1
@__func__.MACHINE = private unnamed_addr constant [8 x i8] c"MACHINE\00", align 1
@.str.98 = private unnamed_addr constant [15 x i8] c"sys-bus-device\00", align 1
@.str.99 = private unnamed_addr constant [51 x i8] c"/opt-bench/work/qemu/qemu/include/hw/core/sysbus.h\00", align 1
@__func__.SYS_BUS_DEVICE = private unnamed_addr constant [15 x i8] c"SYS_BUS_DEVICE\00", align 1
@xlnx_zynqmp_gic_regions = internal unnamed_addr constant [6 x { i32, i32, i32, i8, [3 x i8] }] [{ i32, i32, i32, i8, [3 x i8] } { i32 0, i32 -117374976, i32 0, i8 0, [3 x i8] zeroinitializer }, { i32, i32, i32, i8, [3 x i8] } { i32 1, i32 -117309440, i32 0, i8 0, [3 x i8] zeroinitializer }, { i32, i32, i32, i8, [3 x i8] } { i32 1, i32 -117243904, i32 4096, i8 0, [3 x i8] zeroinitializer }, { i32, i32, i32, i8, [3 x i8] } { i32 2, i32 -117178368, i32 0, i8 1, [3 x i8] zeroinitializer }, { i32, i32, i32, i8, [3 x i8] } { i32 3, i32 -117047296, i32 0, i8 1, [3 x i8] zeroinitializer }, { i32, i32, i32, i8, [3 x i8] } { i32 3, i32 -116981760, i32 4096, i8 1, [3 x i8] zeroinitializer }], align 16
@.str.101 = private unnamed_addr constant [12 x i8] c"rpu-cluster\00", align 1
@.str.102 = private unnamed_addr constant [11 x i8] c"rpu-cpu[*]\00", align 1
@.str.103 = private unnamed_addr constant [19 x i8] c"cortex-r5f-arm-cpu\00", align 1
@.str.104 = private unnamed_addr constant [13 x i8] c"reset-hivecs\00", align 1
@.str.105 = private unnamed_addr constant [6 x i8] c"bbram\00", align 1
@.str.106 = private unnamed_addr constant [16 x i8] c"xlnx.bbram-ctrl\00", align 1
@.str.107 = private unnamed_addr constant [10 x i8] c"crc-zpads\00", align 1
@.str.108 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.109 = private unnamed_addr constant [11 x i8] c"efuse-ctrl\00", align 1
@.str.110 = private unnamed_addr constant [18 x i8] c"xlnx-zynqmp-efuse\00", align 1
@.str.111 = private unnamed_addr constant [13 x i8] c"xlnx-efuse@0\00", align 1
@.str.112 = private unnamed_addr constant [11 x i8] c"xlnx-efuse\00", align 1
@.str.113 = private unnamed_addr constant [9 x i8] c"efuse-nr\00", align 1
@.str.114 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.115 = private unnamed_addr constant [11 x i8] c"efuse-size\00", align 1
@.str.116 = private unnamed_addr constant [5 x i8] c"2048\00", align 1
@.str.117 = private unnamed_addr constant [6 x i8] c"efuse\00", align 1
@.str.118 = private unnamed_addr constant [9 x i8] c"apu-ctrl\00", align 1
@.str.119 = private unnamed_addr constant [14 x i8] c"xlnx.apu-ctrl\00", align 1
@.str.120 = private unnamed_addr constant [6 x i8] c"cpu%d\00", align 1
@.str.121 = private unnamed_addr constant [4 x i8] c"crf\00", align 1
@.str.122 = private unnamed_addr constant [16 x i8] c"xlnx.zynqmp_crf\00", align 1
@.str.123 = private unnamed_addr constant [7 x i8] c"ttc[*]\00", align 1
@.str.124 = private unnamed_addr constant [12 x i8] c"cadence_ttc\00", align 1
@.str.125 = private unnamed_addr constant [7 x i8] c"serdes\00", align 1
@.str.126 = private unnamed_addr constant [21 x i8] c"unimplemented-device\00", align 1
@.str.128 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.129 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @do_qemu_init_xlnx_zynqmp_register_types, ptr null }]

; Function Attrs: nounwind sspstrong uwtable
define internal void @do_qemu_init_xlnx_zynqmp_register_types() #0 {
bb.a:
  tail call void @register_module_init(ptr noundef nonnull @xlnx_zynqmp_register_types, i32 noundef 4) #7
  ret void
}

declare void @register_module_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @xlnx_zynqmp_register_types() #0 {
bb.a:
  %i.a = tail call ptr @type_register_static(ptr noundef nonnull @xlnx_zynqmp_type_info) #7 ; 0 uses
  ret void
}

declare ptr @type_register_static(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @xlnx_zynqmp_init(ptr noundef %0) #0 {
.preheader66:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.39, i32 noundef 48, ptr noundef nonnull @__func__.XLNX_ZYNQMP) #7 ; 44 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 152 ; 2 uses
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.b, i64 noundef 160, ptr noundef nonnull @.str.4) #7
  %i.c = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  tail call void @qdev_prop_set_uint32(ptr noundef %i.c, ptr noundef nonnull @.str.5, i32 noundef 0) #7
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 582048
  %i.e = tail call ptr @gic_class_name() #7
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.d, i64 noundef 18944, ptr noundef %i.e) #7
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 735808
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 947456
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.f, i64 noundef 52912, ptr noundef nonnull @.str.8) #7
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.g, i64 noundef 216, ptr noundef nonnull @.str.10) #7
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 788720
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.h, i64 noundef 52912, ptr noundef nonnull @.str.8) #7
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 947672
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.i, i64 noundef 216, ptr noundef nonnull @.str.10) #7
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 841632
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.j, i64 noundef 52912, ptr noundef nonnull @.str.8) #7
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 947888
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.k, i64 noundef 216, ptr noundef nonnull @.str.10) #7
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 894544
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.l, i64 noundef 52912, ptr noundef nonnull @.str.8) #7
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 948104
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.m, i64 noundef 216, ptr noundef nonnull @.str.10) #7
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 948320
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.n, i64 noundef 1296, ptr noundef nonnull @.str.12) #7
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 949616
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.o, i64 noundef 1296, ptr noundef nonnull @.str.12) #7
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 950912
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.p, i64 noundef 2464, ptr noundef nonnull @.str.14) #7
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 953376
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.q, i64 noundef 2464, ptr noundef nonnull @.str.14) #7
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 955840
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef nonnull %i.r, i64 noundef 1424, ptr noundef nonnull @.str.16) #7
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 957264
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef nonnull @.str.17, ptr noundef nonnull %i.s, i64 noundef 3520, ptr noundef nonnull @.str.18) #7
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 960784
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef nonnull @.str.17, ptr noundef nonnull %i.t, i64 noundef 3520, ptr noundef nonnull @.str.18) #7
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 964304
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.u, i64 noundef 1728, ptr noundef nonnull @.str.20) #7
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 966032
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.v, i64 noundef 1728, ptr noundef nonnull @.str.20) #7
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 967760
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef nonnull %i.w, i64 noundef 5440, ptr noundef nonnull @.str.22) #7
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 973200
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull %i.x, i64 noundef 463216, ptr noundef nonnull @.str.24) #7
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 1436416
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef nonnull %i.y, i64 noundef 5248, ptr noundef nonnull @.str.26) #7
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 1441664
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef nonnull %i.z, i64 noundef 1568, ptr noundef nonnull @.str.28) #7
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 1443232
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef nonnull %i.aa, i64 noundef 1872, ptr noundef nonnull @.str.30) #7
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 1445104
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef nonnull %i.ab, i64 noundef 8016, ptr noundef nonnull @.str.32) #7
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 1453120
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef nonnull %i.ac, i64 noundef 8016, ptr noundef nonnull @.str.32) #7
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 1461136
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef nonnull %i.ad, i64 noundef 8016, ptr noundef nonnull @.str.32) #7
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 1469152
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef nonnull %i.ae, i64 noundef 8016, ptr noundef nonnull @.str.32) #7
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 1477168
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef nonnull %i.af, i64 noundef 8016, ptr noundef nonnull @.str.32) #7
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 1485184
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef nonnull %i.ag, i64 noundef 8016, ptr noundef nonnull @.str.32) #7
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 1493200
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef nonnull %i.ah, i64 noundef 8016, ptr noundef nonnull @.str.32) #7
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 1501216
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef nonnull %i.ai, i64 noundef 8016, ptr noundef nonnull @.str.32) #7
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 1509232
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef nonnull @.str.33, ptr noundef nonnull %i.aj, i64 noundef 8016, ptr noundef nonnull @.str.32) #7
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 1517248
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef nonnull @.str.33, ptr noundef nonnull %i.ak, i64 noundef 8016, ptr noundef nonnull @.str.32) #7
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 1525264
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef nonnull @.str.33, ptr noundef nonnull %i.al, i64 noundef 8016, ptr noundef nonnull @.str.32) #7
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 1533280
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef nonnull @.str.33, ptr noundef nonnull %i.am, i64 noundef 8016, ptr noundef nonnull @.str.32) #7
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 1541296
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef nonnull @.str.33, ptr noundef nonnull %i.an, i64 noundef 8016, ptr noundef nonnull @.str.32) #7
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 1549312
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef nonnull @.str.33, ptr noundef nonnull %i.ao, i64 noundef 8016, ptr noundef nonnull @.str.32) #7
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 1557328
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef nonnull @.str.33, ptr noundef nonnull %i.ap, i64 noundef 8016, ptr noundef nonnull @.str.32) #7
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 1565344
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef nonnull @.str.33, ptr noundef nonnull %i.aq, i64 noundef 8016, ptr noundef nonnull @.str.32) #7
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 1573360
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef nonnull @.str.34, ptr noundef nonnull %i.ar, i64 noundef 1712, ptr noundef nonnull @.str.35) #7
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 1575072
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef nonnull @.str.36, ptr noundef nonnull %i.as, i64 noundef 216, ptr noundef nonnull @.str.10) #7
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 1586352
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef nonnull @.str.37, ptr noundef nonnull %i.at, i64 noundef 2930320, ptr noundef nonnull @.str.38) #7
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 4516672
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef nonnull @.str.37, ptr noundef nonnull %i.au, i64 noundef 2930320, ptr noundef nonnull @.str.38) #7
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @xlnx_zynqmp_class_init(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE_CLASS) #7 ; 3 uses
  tail call void @device_class_set_props_n(ptr noundef %i.a, ptr noundef nonnull @xlnx_zynqmp_props, i64 noundef 6) #7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store ptr @xlnx_zynqmp_realize, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 130
  store i8 0, ptr %i.c, align 2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @object_initialize_child_internal(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @qdev_prop_set_uint32(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @gic_class_name() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @device_class_set_props_n(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @xlnx_zynqmp_realize(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca [160 x ptr], align 16             ; 35 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %i.c = tail call ptr @qdev_get_machine() #7
  %i.d = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.c, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.97, i32 noundef 25, ptr noundef nonnull @__func__.MACHINE) #7
  %i.e = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.39, i32 noundef 48, ptr noundef nonnull @__func__.XLNX_ZYNQMP) #7 ; 85 uses
  %i.f = tail call ptr @get_system_memory() #7    ; 21 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 304 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8              ; 3 uses
  %i.i = tail call i32 @llvm.umin.i32(i32 %i.h, i32 4) ; 9 uses
  %i.j = add i32 %i.h, -4                         ; 2 uses
  %i.k = tail call i32 @llvm.smax.i32(i32 %i.j, i32 0)
  %i.l = tail call i32 @llvm.umin.i32(i32 %i.k, i32 2) ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 7446992
  %i.n = load ptr, ptr %i.m, align 16             ; 2 uses
  %.not = icmp eq ptr %i.n, null
  %spec.select = select i1 %.not, ptr @.str.50, ptr %i.n ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1280) %i.a, i8 0, i64 1280, i1 false), !annotation !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store ptr null, ptr %i.b, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 693216 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 16
  %i.q = tail call i64 @memory_region_size(ptr noundef %i.p) #7 ; 5 uses
  %.not533 = icmp eq i32 %i.h, 0                  ; 3 uses
  br i1 %.not533, label %.loopexit506, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 480
  %wide.trip.count = zext nneg i32 %i.i to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.t = getelementptr inbounds nuw [96928 x i8], ptr %i.s, i64 %indvars.iv
  tail call void @object_initialize_child_internal(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.51, ptr noundef nonnull %i.t, i64 noundef 96928, ptr noundef nonnull @.str.52) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !7

._crit_edge:                                      ; preds = %bb.b
  %.not478 = icmp slt i32 %i.j, 1
  br i1 %.not478, label %.loopexit506, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 627104
  %i.v = tail call ptr @gic_class_name() #7
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef nonnull @.str.53, ptr noundef nonnull %i.u, i64 noundef 18944, ptr noundef %i.v) #7
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 646048
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.d
  %indvars.iv546 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next547, %bb.d ] ; 3 uses
  %i.x = trunc nuw i64 %indvars.iv546 to i32
  %i.y = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.54, i32 noundef %i.x) #7 ; 2 uses
  %i.z = getelementptr inbounds nuw [288 x i8], ptr %i.w, i64 %indvars.iv546
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef %i.y, ptr noundef nonnull %i.z, i64 noundef 288, ptr noundef nonnull @.str.55) #7
  tail call void @g_free(ptr noundef %i.y) #7
  %indvars.iv.next547 = add nuw nsw i64 %indvars.iv546, 1 ; 2 uses
  %exitcond549.not = icmp eq i64 %indvars.iv.next547, 160
  br i1 %exitcond549.not, label %.loopexit506, label %bb.d, !llvm.loop !8

.loopexit506:                                     ; preds = %bb.d, %bb.a, %._crit_edge
  %.not478610 = phi i1 [ true, %bb.a ], [ true, %._crit_edge ], [ false, %bb.d ] ; 2 uses
  %i.aa = icmp ugt i64 %i.q, 2147483648
  br i1 %i.aa, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.loopexit506
  %i.ab = icmp ult i64 %i.q, 36507222017
  br i1 %i.ab, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, i32 noundef 489, ptr noundef nonnull @__PRETTY_FUNCTION__.xlnx_zynqmp_realize) #8
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ac = add nsw i64 %i.q, -2147483648
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 693504 ; 2 uses
  %i.ae = load ptr, ptr %i.o, align 16
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.ad, ptr noundef %0, ptr noundef nonnull @.str.58, ptr noundef %i.ae, i64 noundef 2147483648, i64 noundef %i.ac) #7
  %i.af = tail call ptr @get_system_memory() #7
  tail call void @memory_region_add_subregion(ptr noundef %i.af, i64 noundef 34359738368, ptr noundef nonnull %i.ad) #7
  br label %bb.j

bb.h:                                             ; preds = %.loopexit506
  %.not479 = icmp eq i64 %i.q, 0
  br i1 %.not479, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @__assert_fail(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.57, i32 noundef 501, ptr noundef nonnull @__PRETTY_FUNCTION__.xlnx_zynqmp_realize) #8
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %.0460 = phi i64 [ 2147483648, %bb.g ], [ %i.q, %bb.h ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 693232 ; 2 uses
  %i.ah = load ptr, ptr %i.o, align 16
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.ag, ptr noundef %0, ptr noundef nonnull @.str.60, ptr noundef %i.ah, i64 noundef 0, i64 noundef %.0460) #7
  %i.ai = tail call ptr @get_system_memory() #7
  tail call void @memory_region_add_subregion(ptr noundef %i.ai, i64 noundef 0, ptr noundef nonnull %i.ag) #7
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 692128 ; 2 uses
  %i.ak = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.61, i32 noundef 0) #7 ; 2 uses
  %i.al = tail call zeroext i1 @memory_region_init_ram(ptr noundef nonnull %i.aj, ptr noundef null, ptr noundef %i.ak, i64 noundef 65536, ptr noundef nonnull @error_fatal) #7 ; 0 uses
  %i.am = tail call ptr @get_system_memory() #7
  tail call void @memory_region_add_subregion(ptr noundef %i.am, i64 noundef 4294705152, ptr noundef nonnull %i.aj) #7
  tail call void @g_free(ptr noundef %i.ak) #7
  %i.an = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.61, i32 noundef 1) #7 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 692400 ; 2 uses
  %i.ap = tail call zeroext i1 @memory_region_init_ram(ptr noundef nonnull %i.ao, ptr noundef null, ptr noundef %i.an, i64 noundef 65536, ptr noundef nonnull @error_fatal) #7 ; 0 uses
  %i.aq = tail call ptr @get_system_memory() #7
  tail call void @memory_region_add_subregion(ptr noundef %i.aq, i64 noundef 4294770688, ptr noundef nonnull %i.ao) #7
  tail call void @g_free(ptr noundef %i.an) #7
  %i.ar = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.61, i32 noundef 2) #7 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 692672 ; 2 uses
  %i.at = tail call zeroext i1 @memory_region_init_ram(ptr noundef nonnull %i.as, ptr noundef null, ptr noundef %i.ar, i64 noundef 65536, ptr noundef nonnull @error_fatal) #7 ; 0 uses
  %i.au = tail call ptr @get_system_memory() #7
  tail call void @memory_region_add_subregion(ptr noundef %i.au, i64 noundef 4294836224, ptr noundef nonnull %i.as) #7
  tail call void @g_free(ptr noundef %i.ar) #7
  %i.av = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.61, i32 noundef 3) #7 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 692944 ; 2 uses
  %i.ax = tail call zeroext i1 @memory_region_init_ram(ptr noundef nonnull %i.aw, ptr noundef null, ptr noundef %i.av, i64 noundef 65536, ptr noundef nonnull @error_fatal) #7 ; 0 uses
  %i.ay = tail call ptr @get_system_memory() #7
  tail call void @memory_region_add_subregion(ptr noundef %i.ay, i64 noundef 4294901760, ptr noundef nonnull %i.aw) #7
  tail call void @g_free(ptr noundef %i.av) #7
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 582048 ; 19 uses
  %i.ba = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  tail call void @qdev_prop_set_uint32(ptr noundef %i.ba, ptr noundef nonnull @.str.62, i32 noundef 192) #7
  %i.bb = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  tail call void @qdev_prop_set_uint32(ptr noundef %i.bb, ptr noundef nonnull @.str.63, i32 noundef 2) #7
  %i.bc = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  tail call void @qdev_prop_set_uint32(ptr noundef %i.bc, ptr noundef nonnull @.str.64, i32 noundef %i.i) #7
  %i.bd = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 7447008 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 16, !range !20, !noundef !21
  %i.bg = trunc nuw i8 %i.bf to i1
  tail call void @qdev_prop_set_bit(ptr noundef %i.bd, ptr noundef nonnull @.str.65, i1 noundef zeroext %i.bg) #7
  %i.bh = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 7447009 ; 4 uses
  %i.bj = load i8, ptr %i.bi, align 1, !range !20, !noundef !21
  %i.bk = trunc nuw i8 %i.bj to i1
  tail call void @qdev_prop_set_bit(ptr noundef %i.bh, ptr noundef nonnull @.str.66, i1 noundef zeroext %i.bk) #7
  br i1 %.not478610, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 627104 ; 4 uses
  %i.bm = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.bl, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  tail call void @qdev_prop_set_uint32(ptr noundef %i.bm, ptr noundef nonnull @.str.62, i32 noundef 192) #7
  %i.bn = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.bl, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  tail call void @qdev_prop_set_uint32(ptr noundef %i.bn, ptr noundef nonnull @.str.63, i32 noundef 1) #7
  %i.bo = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.bl, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  tail call void @qdev_prop_set_uint32(ptr noundef %i.bo, ptr noundef nonnull @.str.64, i32 noundef %i.l) #7
  %i.bp = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.bl, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  tail call void @qdev_prop_set_uint32(ptr noundef %i.bp, ptr noundef nonnull @.str.67, i32 noundef 4) #7
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.br = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.bq, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.bs = tail call zeroext i1 @qdev_realize(ptr noundef %i.br, ptr noundef null, ptr noundef nonnull @error_fatal) #7 ; 0 uses
  br i1 %.not533, label %._crit_edge513, label %.lr.ph512

.lr.ph512:                                        ; preds = %bb.l
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 480
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 7447000
  %i.bv = zext nneg i32 %i.i to i64
  %2 = trunc nuw nsw i32 %i.i to i8
  br label %bb.n

bb.m:                                             ; preds = %bb.q
  %3 = add nuw nsw i8 %.3510, 1                   ; 2 uses
  %4 = icmp samesign ult i8 %3, %2
  br i1 %4, label %bb.n, label %._crit_edge513, !llvm.loop !9

bb.n:                                             ; preds = %.lr.ph512, %bb.m
  %.3510 = phi i8 [ 0, %.lr.ph512 ], [ %3, %bb.m ] ; 2 uses
  %5 = zext nneg i8 %.3510 to i64
  %i.bw = getelementptr inbounds nuw [96928 x i8], ptr %i.bt, i64 %5 ; 8 uses
  %i.bx = tail call ptr @object_get_canonical_path_component(ptr noundef nonnull %i.bw) #7
  %i.by = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bx, ptr noundef nonnull dereferenceable(1) %spec.select) #9
  %.not483 = icmp eq i32 %i.by, 0
  br i1 %.not483, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bz = tail call zeroext i1 @object_property_set_bool(ptr noundef nonnull %i.bw, ptr noundef nonnull @.str.68, i1 noundef zeroext true, ptr noundef nonnull @error_abort) #7 ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  store ptr %i.bw, ptr %i.bu, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ca = load i8, ptr %i.be, align 16, !range !20, !noundef !21
  %i.cb = trunc nuw i8 %i.ca to i1
  %i.cc = tail call zeroext i1 @object_property_set_bool(ptr noundef nonnull %i.bw, ptr noundef nonnull @.str.69, i1 noundef zeroext %i.cb, ptr noundef null) #7 ; 0 uses
  %i.cd = load i8, ptr %i.bi, align 1, !range !20, !noundef !21
  %i.ce = trunc nuw i8 %i.cd to i1
  %i.cf = tail call zeroext i1 @object_property_set_bool(ptr noundef nonnull %i.bw, ptr noundef nonnull @.str.70, i1 noundef zeroext %i.ce, ptr noundef null) #7 ; 0 uses
  %i.cg = tail call zeroext i1 @object_property_set_int(ptr noundef nonnull %i.bw, ptr noundef nonnull @.str.71, i64 noundef 4177526784, ptr noundef nonnull @error_abort) #7 ; 0 uses
  %i.ch = tail call zeroext i1 @object_property_set_int(ptr noundef nonnull %i.bw, ptr noundef nonnull @.str.72, i64 noundef %i.bv, ptr noundef nonnull @error_abort) #7 ; 0 uses
  %i.ci = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.bw, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.cj = tail call zeroext i1 @qdev_realize(ptr noundef %i.ci, ptr noundef null, ptr noundef %1) #7
  br i1 %i.cj, label %bb.m, label %.critedge

._crit_edge513:                                   ; preds = %bb.m, %bb.l
  %i.ck = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  %i.cl = tail call zeroext i1 @sysbus_realize(ptr noundef %i.ck, ptr noundef %1) #7
  br i1 %i.cl, label %.preheader504, label %.critedge

.preheader504:                                    ; preds = %._crit_edge513
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 600992
  br label %bb.r

.preheader503:                                    ; preds = %.loopexit
  br i1 %.not533, label %._crit_edge519, label %.lr.ph518

.lr.ph518:                                        ; preds = %.preheader503
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 480
  %i.co = shl nuw nsw i32 %i.i, 1
  %i.cp = mul nuw nsw i32 %i.i, 3
  %i.cq = shl nuw nsw i32 %i.i, 2
  %wide.trip.count564 = zext nneg i32 %i.i to i64
  br label %bb.t

bb.r:                                             ; preds = %.preheader504, %.loopexit
  %indvars.iv558 = phi i64 [ 0, %.preheader504 ], [ %indvars.iv.next559, %.loopexit ] ; 3 uses
  %i.cr = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr @xlnx_zynqmp_gic_regions, i64 %indvars.iv558 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.cu = load i32, ptr %i.ct, align 4            ; 16 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  %i.cw = load i8, ptr %i.cv, align 4, !range !20, !noundef !21
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.s, label %.loopexit.loopexit

bb.s:                                             ; preds = %bb.r
  %i.cy = load i8, ptr %i.bi, align 1, !range !20, !noundef !21
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.s, %bb.r
  %i.da = load i32, ptr %i.cs, align 16
  %i.db = tail call ptr @sysbus_mmio_get_region(ptr noundef %i.cr, i32 noundef %i.da) #7 ; 16 uses
  %i.dc = getelementptr inbounds nuw [4352 x i8], ptr %i.cm, i64 %indvars.iv558 ; 17 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.de = load i32, ptr %i.dd, align 8
  %i.df = zext i32 %i.de to i64                   ; 16 uses
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.dc, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.73, ptr noundef %i.db, i64 noundef %i.df, i64 noundef 4096) #7
  %i.dg = zext i32 %i.cu to i64
  tail call void @memory_region_add_subregion(ptr noundef %i.f, i64 noundef %i.dg, ptr noundef nonnull %i.dc) #7
  %i.dh = add i32 %i.cu, 4096
  %i.di = getelementptr inbounds nuw i8, ptr %i.dc, i64 272 ; 2 uses
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.di, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.73, ptr noundef %i.db, i64 noundef %i.df, i64 noundef 4096) #7
  %i.dj = zext i32 %i.dh to i64
  tail call void @memory_region_add_subregion(ptr noundef %i.f, i64 noundef %i.dj, ptr noundef nonnull %i.di) #7
  %i.dk = add i32 %i.cu, 8192
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dc, i64 544 ; 2 uses
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.dl, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.73, ptr noundef %i.db, i64 noundef %i.df, i64 noundef 4096) #7
  %i.dm = zext i32 %i.dk to i64
  tail call void @memory_region_add_subregion(ptr noundef %i.f, i64 noundef %i.dm, ptr noundef nonnull %i.dl) #7
  %i.dn = add i32 %i.cu, 12288
  %i.do = getelementptr inbounds nuw i8, ptr %i.dc, i64 816 ; 2 uses
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.do, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.73, ptr noundef %i.db, i64 noundef %i.df, i64 noundef 4096) #7
  %i.dp = zext i32 %i.dn to i64
  tail call void @memory_region_add_subregion(ptr noundef %i.f, i64 noundef %i.dp, ptr noundef nonnull %i.do) #7
  %i.dq = add i32 %i.cu, 16384
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dc, i64 1088 ; 2 uses
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.dr, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.73, ptr noundef %i.db, i64 noundef %i.df, i64 noundef 4096) #7
  %i.ds = zext i32 %i.dq to i64
  tail call void @memory_region_add_subregion(ptr noundef %i.f, i64 noundef %i.ds, ptr noundef nonnull %i.dr) #7
  %i.dt = add i32 %i.cu, 20480
  %i.du = getelementptr inbounds nuw i8, ptr %i.dc, i64 1360 ; 2 uses
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.du, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.73, ptr noundef %i.db, i64 noundef %i.df, i64 noundef 4096) #7
  %i.dv = zext i32 %i.dt to i64
  tail call void @memory_region_add_subregion(ptr noundef %i.f, i64 noundef %i.dv, ptr noundef nonnull %i.du) #7
  %i.dw = add i32 %i.cu, 24576
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dc, i64 1632 ; 2 uses
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.dx, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.73, ptr noundef %i.db, i64 noundef %i.df, i64 noundef 4096) #7
  %i.dy = zext i32 %i.dw to i64
  tail call void @memory_region_add_subregion(ptr noundef %i.f, i64 noundef %i.dy, ptr noundef nonnull %i.dx) #7
  %i.dz = add i32 %i.cu, 28672
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dc, i64 1904 ; 2 uses
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.ea, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.73, ptr noundef %i.db, i64 noundef %i.df, i64 noundef 4096) #7
  %i.eb = zext i32 %i.dz to i64
  tail call void @memory_region_add_subregion(ptr noundef %i.f, i64 noundef %i.eb, ptr noundef nonnull %i.ea) #7
  %i.ec = add i32 %i.cu, 32768
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dc, i64 2176 ; 2 uses
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.ed, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.73, ptr noundef %i.db, i64 noundef %i.df, i64 noundef 4096) #7
  %i.ee = zext i32 %i.ec to i64
  tail call void @memory_region_add_subregion(ptr noundef %i.f, i64 noundef %i.ee, ptr noundef nonnull %i.ed) #7
  %i.ef = add i32 %i.cu, 36864
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dc, i64 2448 ; 2 uses
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.eg, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.73, ptr noundef %i.db, i64 noundef %i.df, i64 noundef 4096) #7
  %i.eh = zext i32 %i.ef to i64
  tail call void @memory_region_add_subregion(ptr noundef %i.f, i64 noundef %i.eh, ptr noundef nonnull %i.eg) #7
  %i.ei = add i32 %i.cu, 40960
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dc, i64 2720 ; 2 uses
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.ej, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.73, ptr noundef %i.db, i64 noundef %i.df, i64 noundef 4096) #7
  %i.ek = zext i32 %i.ei to i64
  tail call void @memory_region_add_subregion(ptr noundef %i.f, i64 noundef %i.ek, ptr noundef nonnull %i.ej) #7
  %i.el = add i32 %i.cu, 45056
  %i.em = getelementptr inbounds nuw i8, ptr %i.dc, i64 2992 ; 2 uses
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.em, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.73, ptr noundef %i.db, i64 noundef %i.df, i64 noundef 4096) #7
  %i.en = zext i32 %i.el to i64
  tail call void @memory_region_add_subregion(ptr noundef %i.f, i64 noundef %i.en, ptr noundef nonnull %i.em) #7
  %i.eo = add i32 %i.cu, 49152
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dc, i64 3264 ; 2 uses
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.ep, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.73, ptr noundef %i.db, i64 noundef %i.df, i64 noundef 4096) #7
  %i.eq = zext i32 %i.eo to i64
  tail call void @memory_region_add_subregion(ptr noundef %i.f, i64 noundef %i.eq, ptr noundef nonnull %i.ep) #7
  %i.er = add i32 %i.cu, 53248
  %i.es = getelementptr inbounds nuw i8, ptr %i.dc, i64 3536 ; 2 uses
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.es, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.73, ptr noundef %i.db, i64 noundef %i.df, i64 noundef 4096) #7
  %i.et = zext i32 %i.er to i64
  tail call void @memory_region_add_subregion(ptr noundef %i.f, i64 noundef %i.et, ptr noundef nonnull %i.es) #7
  %i.eu = add i32 %i.cu, 57344
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dc, i64 3808 ; 2 uses
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.ev, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.73, ptr noundef %i.db, i64 noundef %i.df, i64 noundef 4096) #7
  %i.ew = zext i32 %i.eu to i64
  tail call void @memory_region_add_subregion(ptr noundef %i.f, i64 noundef %i.ew, ptr noundef nonnull %i.ev) #7
  %i.ex = add i32 %i.cu, 61440
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dc, i64 4080 ; 2 uses
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.ey, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.73, ptr noundef %i.db, i64 noundef %i.df, i64 noundef 4096) #7
  %i.ez = zext i32 %i.ex to i64
  tail call void @memory_region_add_subregion(ptr noundef %i.f, i64 noundef %i.ez, ptr noundef nonnull %i.ey) #7
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.s
  %indvars.iv.next559 = add nuw nsw i64 %indvars.iv558, 1 ; 2 uses
  %exitcond561.not = icmp eq i64 %indvars.iv.next559, 6
  br i1 %exitcond561.not, label %.preheader503, label %bb.r, !llvm.loop !10

bb.t:                                             ; preds = %.lr.ph518, %bb.v
  %indvars.iv562 = phi i64 [ 0, %.lr.ph518 ], [ %indvars.iv.next563, %bb.v ] ; 2 uses
  %i.fa = phi i32 [ 0, %.lr.ph518 ], [ %i.gq, %bb.v ] ; 6 uses
  %i.fb = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  %i.fc = getelementptr inbounds nuw [96928 x i8], ptr %i.cn, i64 %indvars.iv562 ; 8 uses
  %i.fd = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.fc, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.fe = tail call ptr @qdev_get_gpio_in(ptr noundef %i.fd, i32 noundef 0) #7
  tail call void @sysbus_connect_irq(ptr noundef %i.fb, i32 noundef %i.fa, ptr noundef %i.fe) #7
  %i.ff = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  %i.fg = add nuw nsw i32 %i.fa, %i.i
  %i.fh = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.fc, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.fi = tail call ptr @qdev_get_gpio_in(ptr noundef %i.fh, i32 noundef 1) #7
  tail call void @sysbus_connect_irq(ptr noundef %i.ff, i32 noundef %i.fg, ptr noundef %i.fi) #7
  %i.fj = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  %i.fk = add nuw nsw i32 %i.fa, %i.co
  %i.fl = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.fc, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.fm = tail call ptr @qdev_get_gpio_in(ptr noundef %i.fl, i32 noundef 2) #7
  tail call void @sysbus_connect_irq(ptr noundef %i.fj, i32 noundef %i.fk, ptr noundef %i.fm) #7
  %i.fn = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  %i.fo = add nuw nsw i32 %i.fa, %i.cp
  %i.fp = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.fc, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.fq = tail call ptr @qdev_get_gpio_in(ptr noundef %i.fp, i32 noundef 3) #7
  tail call void @sysbus_connect_irq(ptr noundef %i.fn, i32 noundef %i.fo, ptr noundef %i.fq) #7
  %i.fr = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.fs = shl nuw nsw i32 %i.fa, 5
  %i.ft = add nuw nsw i32 %i.fs, 160              ; 5 uses
  %i.fu = or disjoint i32 %i.ft, 30
  %i.fv = tail call ptr @qdev_get_gpio_in(ptr noundef %i.fr, i32 noundef %i.fu) #7
  %i.fw = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.fc, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  tail call void @qdev_connect_gpio_out(ptr noundef %i.fw, i32 noundef 0, ptr noundef %i.fv) #7
  %i.fx = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.fy = or disjoint i32 %i.ft, 27
  %i.fz = tail call ptr @qdev_get_gpio_in(ptr noundef %i.fx, i32 noundef %i.fy) #7
  %i.ga = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.fc, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  tail call void @qdev_connect_gpio_out(ptr noundef %i.ga, i32 noundef 1, ptr noundef %i.fz) #7
  %i.gb = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.gc = or disjoint i32 %i.ft, 26
  %i.gd = tail call ptr @qdev_get_gpio_in(ptr noundef %i.gb, i32 noundef %i.gc) #7
  %i.ge = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.fc, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  tail call void @qdev_connect_gpio_out(ptr noundef %i.ge, i32 noundef 2, ptr noundef %i.gd) #7
  %i.gf = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.gg = or disjoint i32 %i.ft, 29
  %i.gh = tail call ptr @qdev_get_gpio_in(ptr noundef %i.gf, i32 noundef %i.gg) #7
  %i.gi = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.fc, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  tail call void @qdev_connect_gpio_out(ptr noundef %i.gi, i32 noundef 3, ptr noundef %i.gh) #7
  %i.gj = load i8, ptr %i.bi, align 1, !range !20, !noundef !21
end_hunk_0
