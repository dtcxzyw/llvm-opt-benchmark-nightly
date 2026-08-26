Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/devices?download=true
inline.NumInlined: 22
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
@.str.6 = private unnamed_addr constant [13 x i8] c"(truncated)\0A\00", align 1
@format_device1 = internal constant [71 x i8] c"D:  Ver=%2x.%02x Cls=%02x(%-5s) Sub=%02x Prot=%02x MxPS=%2d #Cfgs=%3d\0A\00", align 16
@format_device2 = internal constant [42 x i8] c"P:  Vendor=%04x ProdID=%04x Rev=%2x.%02x\0A\00", align 16
@.str.7 = private unnamed_addr constant [5 x i8] c">ifc\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"comm.\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"HID\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"PID\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"still\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"stor.\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"hub\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"scard\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"c-sec\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"video\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"perhc\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"av\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"blbrd\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"bridg\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"wlcon\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"app.\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"vend.\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"unk.\00", align 1
@clas_info = internal unnamed_addr constant [22 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.7 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.8 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.9 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.10 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.11 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.12 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.13 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.14 }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.15 }, { i32, [4 x i8], ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.16 }, { i32, [4 x i8], ptr } { i32 11, [4 x i8] zeroinitializer, ptr @.str.17 }, { i32, [4 x i8], ptr } { i32 13, [4 x i8] zeroinitializer, ptr @.str.18 }, { i32, [4 x i8], ptr } { i32 14, [4 x i8] zeroinitializer, ptr @.str.19 }, { i32, [4 x i8], ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.20 }, { i32, [4 x i8], ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.22 }, { i32, [4 x i8], ptr } { i32 18, [4 x i8] zeroinitializer, ptr @.str.23 }, { i32, [4 x i8], ptr } { i32 224, [4 x i8] zeroinitializer, ptr @.str.24 }, { i32, [4 x i8], ptr } { i32 239, [4 x i8] zeroinitializer, ptr @.str.25 }, { i32, [4 x i8], ptr } { i32 254, [4 x i8] zeroinitializer, ptr @.str.26 }, { i32, [4 x i8], ptr } { i32 255, [4 x i8] zeroinitializer, ptr @.str.27 }, { i32, [4 x i8], ptr } { i32 -1, [4 x i8] zeroinitializer, ptr @.str.28 }], align 16
@format_string_manufacturer = internal constant [25 x i8] c"S:  Manufacturer=%.100s\0A\00", align 16
@format_string_product = internal constant [20 x i8] c"S:  Product=%.100s\0A\00", align 16
@format_string_serialnumber = internal constant [25 x i8] c"S:  SerialNumber=%.100s\0A\00", align 16
@.str.30 = private unnamed_addr constant [19 x i8] c"(null Cfg. desc.)\0A\00", align 1
@format_config = internal constant [45 x i8] c"C:%c #Ifs=%2d Cfg#=%2d Atr=%02x MxPwr=%3dmA\0A\00", align 16
@format_iad = internal constant [64 x i8] c"A:  FirstIf#=%2d IfCount=%2d Cls=%02x(%-5s) Sub=%02x Prot=%02x\0A\00", align 16
@.str.31 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@format_iface = internal constant [75 x i8] c"I:%c If#=%2d Alt=%2d #EPs=%2d Cls=%02x(%-5s) Sub=%02x Prot=%02x Driver=%s\0A\00", align 16
@.str.33 = private unnamed_addr constant [5 x i8] c"Ctrl\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"Isoc\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"Bulk\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"Int.\00", align 1
@format_endpt = internal constant [51 x i8] c"E:  Ad=%02x(%c) Atr=%02x(%-4s) MxPS=%4d Ivl=%d%cs\0A\00", align 16
@.str.37 = private unnamed_addr constant [26 x i8] c"include/linux/ucopysize.h\00", align 1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @no_seek_end_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @usb_device_read(ptr nofree readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3) #1 align 16 prefalign(16) {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  store ptr %1, ptr %i.a, align 8
  store i64 %2, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.e = load i64, ptr %3, align 8                ; 2 uses
  store i64 %i.e, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @mutex_lock(ptr noundef nonnull @usb_bus_idr_lock) #6
  store i32 0, ptr %i.d, align 4
  %i.h = call ptr @idr_get_next(ptr noundef nonnull @usb_bus_idr, ptr noundef nonnull %i.d) #6 ; 2 uses
  %.not19 = icmp eq ptr %i.h, null
  br i1 %.not19, label %.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.f
  %i.i = phi ptr [ %i.x, %bb.f ], [ %i.h, %bb.c ] ; 3 uses
  %.020 = phi i64 [ %.1, %bb.f ], [ 0, %bb.c ]    ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 332
  %i.k = load i16, ptr %i.j, align 4
  %i.l = and i16 %i.k, 1
  %.not17 = icmp eq i16 %i.l, 0
  br i1 %.not17, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.m = getelementptr i8, ptr %i.i, i64 88       ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %i.n, i64 320
  call void @mutex_lock(ptr noundef %i.o) #6
  %i.p = load ptr, ptr %i.m, align 8
  %i.q = call fastcc i64 @usb_device_dump(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef %3, ptr noundef %i.p, ptr noundef %i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7, !srcloc !10 ; 3 uses
  %i.r = load ptr, ptr %i.m, align 8
  %i.s = getelementptr i8, ptr %i.r, i64 320
  call void @mutex_unlock(ptr noundef %i.s) #6
  %i.t = icmp slt i64 %i.q, 0
  br i1 %i.t, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = add i64 %i.q, %.020
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %.1 = phi i64 [ %i.u, %bb.e ], [ %.020, %.lr.ph ] ; 2 uses
  %i.v = load i32, ptr %i.d, align 4
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.d, align 4
  %i.x = call ptr @idr_get_next(ptr noundef nonnull @usb_bus_idr, ptr noundef nonnull %i.d) #6 ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %.sink.split, label %.lr.ph, !llvm.loop !11

.sink.split:                                      ; preds = %bb.f, %bb.d, %bb.c
  %.013.ph = phi i64 [ 0, %bb.c ], [ %i.q, %bb.d ], [ %.1, %bb.f ]
  call void @mutex_unlock(ptr noundef nonnull @usb_bus_idr_lock) #6
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.b, %bb.a
  %.013 = phi i64 [ 0, %bb.b ], [ -22, %bb.a ], [ %.013.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  ret i64 %.013
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i64 @usb_device_dump(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr noundef %4, ptr nofree noundef nonnull readonly captures(none) %5, i32 noundef range(i32 0, 8) %6, i32 noundef %7, i32 noundef %8) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = icmp eq i64 %i.a, 0
  %i.c = icmp eq i32 %6, 7
  %or.cond119 = or i1 %i.c, %i.b
  br i1 %or.cond119, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @get_free_pages_noprof(i32 noundef 3072, i32 noundef 1) #6 ; 5 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 4 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %4, i64 72
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not113 = icmp eq ptr %i.g, null
  br i1 %.not113, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  %.not114 = icmp eq i32 %i.h, -1
  %spec.select = select i1 %.not114, i32 0, i32 %i.h
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.097 = phi i32 [ 0, %bb.c ], [ %spec.select, %bb.d ]
  %i.i = getelementptr i8, ptr %4, i64 28         ; 3 uses
  %i.j = load i32, ptr %i.i, align 4
  switch i32 %i.j, label %bb.j [
    i32 1, label %bb.k
    i32 0, label %bb.f
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 5, label %bb.h
    i32 6, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  br label %bb.k

bb.h:                                             ; preds = %bb.e
  br label %bb.k

bb.i:                                             ; preds = %bb.e
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.094 = phi ptr [ @.str.5, %bb.j ], [ @.str.4, %bb.i ], [ @.str.1, %bb.f ], [ @.str.2, %bb.g ], [ @.str.3, %bb.h ], [ @.str, %bb.e ]
  %i.k = getelementptr i8, ptr %5, i64 16
  %i.l = load i32, ptr %i.k, align 8
  %i.m = load i32, ptr %4, align 8
  %i.n = getelementptr i8, ptr %4, i64 1304       ; 3 uses
  %i.o = load i32, ptr %i.n, align 8
  %i.p = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) @format_topo, i32 noundef %i.l, i32 noundef %6, i32 noundef %.097, i32 noundef %7, i32 noundef %8, i32 noundef %i.m, ptr noundef nonnull %.094, i32 noundef %i.o) #6
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr i8, ptr %i.e, i64 %i.q     ; 3 uses
  %i.s = icmp eq i32 %6, 0
  br i1 %i.s, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.t = load i32, ptr %i.i, align 4              ; 2 uses
  %i.u = icmp eq i32 %i.t, 3
  %i.v = icmp ugt i32 %i.t, 4
  %or.cond = or i1 %i.u, %i.v
  %.0 = select i1 %or.cond, i32 800, i32 900      ; 3 uses
  %i.w = getelementptr i8, ptr %5, i64 104
  %i.x = load i32, ptr %i.w, align 8              ; 2 uses
  %i.y = mul i32 %i.x, 100
  %i.z = lshr exact i32 %.0, 1
  %i.aa = add i32 %i.z, %i.y
  %i.ab = sdiv i32 %i.aa, %.0
  %i.ac = getelementptr i8, ptr %5, i64 108
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = getelementptr i8, ptr %5, i64 112
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %i.r, ptr noundef nonnull dereferenceable(1) @format_bandwidth, i32 noundef %i.x, i32 noundef %.0, i32 noundef %i.ab, i32 noundef %i.ad, i32 noundef %i.af) #6
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr i8, ptr %i.r, i64 %i.ah
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.095 = phi ptr [ %i.ai, %bb.l ], [ %i.r, %bb.k ] ; 4 uses
  %i.aj = getelementptr i8, ptr %i.e, i64 7936    ; 25 uses
  %i.ak = getelementptr i8, ptr %4, i64 948
  %i.al = load i16, ptr %i.ak, align 4
  %i.am = icmp ugt ptr %.095, %i.aj
  br i1 %i.am, label %usb_dump_device_descriptor.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr i8, ptr %4, i64 938
  %i.ao = load i16, ptr %i.an, align 2
  %i.ap = zext i16 %i.ao to i32                   ; 2 uses
  %i.aq = lshr i32 %i.ap, 8
  %i.ar = and i32 %i.ap, 255
  %i.as = getelementptr i8, ptr %4, i64 940
  %i.at = load i8, ptr %i.as, align 4
  %i.au = zext i8 %i.at to i32                    ; 2 uses
  %i.av = tail call fastcc ptr @class_decode(i32 noundef %i.au) #7, !srcloc !13
  %i.aw = getelementptr i8, ptr %4, i64 941
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = zext i8 %i.ax to i32
  %i.az = getelementptr i8, ptr %4, i64 942
  %i.ba = load i8, ptr %i.az, align 2
  %i.bb = zext i8 %i.ba to i32
  %i.bc = getelementptr i8, ptr %4, i64 943
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = zext i8 %i.bd to i32
  %i.bf = getelementptr i8, ptr %4, i64 953
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = zext i8 %i.bg to i32
  %i.bi = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %.095, ptr noundef nonnull dereferenceable(1) @format_device1, i32 noundef %i.aq, i32 noundef %i.ar, i32 noundef %i.au, ptr noundef %i.av, i32 noundef %i.ay, i32 noundef %i.bb, i32 noundef %i.be, i32 noundef %i.bh) #6
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr i8, ptr %.095, i64 %i.bj  ; 4 uses
  %i.bl = icmp ugt ptr %i.bk, %i.aj
  br i1 %i.bl, label %usb_dump_device_descriptor.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bm = getelementptr i8, ptr %4, i64 944
  %i.bn = load i16, ptr %i.bm, align 8
  %i.bo = zext i16 %i.bn to i32
  %i.bp = getelementptr i8, ptr %4, i64 946
  %i.bq = load i16, ptr %i.bp, align 2
  %i.br = zext i16 %i.bq to i32
  %i.bs = zext i16 %i.al to i32                   ; 2 uses
  %i.bt = lshr i32 %i.bs, 8
  %i.bu = and i32 %i.bs, 255
  %i.bv = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %i.bk, ptr noundef nonnull dereferenceable(1) @format_device2, i32 noundef %i.bo, i32 noundef %i.br, i32 noundef %i.bt, i32 noundef %i.bu) #6
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr i8, ptr %i.bk, i64 %i.bw
  br label %usb_dump_device_descriptor.exit.i

usb_dump_device_descriptor.exit.i:                ; preds = %bb.o, %bb.n, %bb.m
  %.0.i.i = phi ptr [ %i.bx, %bb.o ], [ %.095, %bb.m ], [ %i.bk, %bb.n ] ; 5 uses
  %i.by = icmp ugt ptr %.0.i.i, %i.aj
  br i1 %i.by, label %usb_dump_device_strings.exit.i, label %bb.p

bb.p:                                             ; preds = %usb_dump_device_descriptor.exit.i
  %i.bz = getelementptr i8, ptr %4, i64 1272
  %i.ca = load ptr, ptr %i.bz, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cb = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %.0.i.i, ptr noundef nonnull dereferenceable(1) @format_string_manufacturer, ptr noundef nonnull %i.ca) #6
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr i8, ptr %.0.i.i, i64 %i.cc
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.021.i.i = phi ptr [ %i.cd, %bb.q ], [ %.0.i.i, %bb.p ] ; 5 uses
  %i.ce = icmp ugt ptr %.021.i.i, %i.aj
  br i1 %i.ce, label %usb_dump_device_strings.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cf = getelementptr i8, ptr %4, i64 1264
  %i.cg = load ptr, ptr %i.cf, align 8            ; 2 uses
  %.not28.i.i = icmp eq ptr %i.cg, null
  br i1 %.not28.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ch = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %.021.i.i, ptr noundef nonnull dereferenceable(1) @format_string_product, ptr noundef nonnull %i.cg) #6
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr i8, ptr %.021.i.i, i64 %i.ci
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.1.i.i = phi ptr [ %i.cj, %bb.t ], [ %.021.i.i, %bb.s ] ; 5 uses
  %i.ck = icmp ugt ptr %.1.i.i, %i.aj
  br i1 %i.ck, label %usb_dump_device_strings.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cl = getelementptr i8, ptr %4, i64 1280
  %i.cm = load ptr, ptr %i.cl, align 8            ; 2 uses
  %.not29.i.i = icmp eq ptr %i.cm, null
  br i1 %.not29.i.i, label %usb_dump_device_strings.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cn = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %.1.i.i, ptr noundef nonnull dereferenceable(1) @format_string_serialnumber, ptr noundef nonnull %i.cm) #6
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr i8, ptr %.1.i.i, i64 %i.co
  br label %usb_dump_device_strings.exit.i

usb_dump_device_strings.exit.i:                   ; preds = %bb.w, %bb.v, %bb.u, %bb.r, %usb_dump_device_descriptor.exit.i
  %.0.i18.i = phi ptr [ %.0.i.i, %usb_dump_device_descriptor.exit.i ], [ %.021.i.i, %bb.r ], [ %.1.i.i, %bb.u ], [ %i.cp, %bb.w ], [ %.1.i.i, %bb.v ] ; 2 uses
  %i.cq = getelementptr i8, ptr %4, i64 953       ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1
  %.not23.i = icmp eq i8 %i.cr, 0
  br i1 %.not23.i, label %usb_dump_desc.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %usb_dump_device_strings.exit.i
  %i.cs = getelementptr i8, ptr %4, i64 968
  %i.ct = getelementptr i8, ptr %4, i64 976
  br label %bb.x

bb.x:                                             ; preds = %usb_dump_config.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %usb_dump_config.exit.i ] ; 2 uses
  %.01721.i = phi ptr [ %.0.i18.i, %.lr.ph.i ], [ %.037.i.i, %usb_dump_config.exit.i ] ; 6 uses
  %i.cu = load i32, ptr %i.i, align 4             ; 3 uses
  %i.cv = load ptr, ptr %i.cs, align 8
  %i.cw = getelementptr [680 x i8], ptr %i.cv, i64 %indvars.iv.i ; 24 uses
  %i.cx = load ptr, ptr %i.ct, align 8
  %.not.i = icmp eq ptr %i.cw, %i.cx
  %i.cy = icmp ugt ptr %.01721.i, %i.aj
  br i1 %i.cy, label %usb_dump_config.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not.i19.i = icmp eq ptr %i.cw, null
  br i1 %.not.i19.i, label %bb.z, label %usb_dump_config_descriptor.exit.i.i

bb.z:                                             ; preds = %bb.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(19) %.01721.i, ptr noundef nonnull align 1 dereferenceable(19) @.str.30, i64 19, i1 false)
  %i.cz = getelementptr i8, ptr %.01721.i, i64 18
  br label %usb_dump_config.exit.i

usb_dump_config_descriptor.exit.i.i:              ; preds = %bb.y
  %i.da = icmp sgt i32 %i.cu, 4
  %i.db = select i1 %.not.i, i32 42, i32 32
  %i.dc = getelementptr i8, ptr %i.cw, i64 4      ; 3 uses
  %i.dd = load i8, ptr %i.dc, align 1
  %i.de = zext i8 %i.dd to i32
  %i.df = getelementptr i8, ptr %i.cw, i64 5
  %i.dg = load i8, ptr %i.df, align 1
  %i.dh = zext i8 %i.dg to i32
  %i.di = getelementptr i8, ptr %i.cw, i64 7
  %i.dj = load i8, ptr %i.di, align 1
  %i.dk = zext i8 %i.dj to i32
  %i.dl = getelementptr i8, ptr %i.cw, i64 8
  %i.dm = load i8, ptr %i.dl, align 1
  %i.dn = zext i8 %i.dm to i32
  %i.do = select i1 %i.da, i32 3, i32 1
  %i.dp = shl nuw nsw i32 %i.dn, %i.do
  %i.dq = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %.01721.i, ptr noundef nonnull dereferenceable(1) @format_config, i32 noundef %i.db, i32 noundef %i.de, i32 noundef %i.dh, i32 noundef %i.dk, i32 noundef %i.dp) #6
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr i8, ptr %.01721.i, i64 %i.dr ; 5 uses
  %i.dt = getelementptr i8, ptr %i.cw, i64 24
  %i.du = load ptr, ptr %i.dt, align 8            ; 6 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %usb_dump_iad_descriptor.exit.15.i.i, label %bb.aa

bb.aa:                                            ; preds = %usb_dump_config_descriptor.exit.i.i
  %i.dw = icmp ugt ptr %i.ds, %i.aj
  br i1 %i.dw, label %usb_dump_iad_descriptor.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dx = getelementptr i8, ptr %i.du, i64 2
  %i.dy = load i8, ptr %i.dx, align 1
  %i.dz = zext i8 %i.dy to i32
  %i.ea = getelementptr i8, ptr %i.du, i64 3
  %i.eb = load i8, ptr %i.ea, align 1
  %i.ec = zext i8 %i.eb to i32
  %i.ed = getelementptr i8, ptr %i.du, i64 4
  %i.ee = load i8, ptr %i.ed, align 1
  %i.ef = zext i8 %i.ee to i32                    ; 2 uses
  %i.eg = tail call fastcc ptr @class_decode(i32 noundef %i.ef) #7, !srcloc !14
  %i.eh = getelementptr i8, ptr %i.du, i64 5
  %i.ei = load i8, ptr %i.eh, align 1
  %i.ej = zext i8 %i.ei to i32
  %i.ek = getelementptr i8, ptr %i.du, i64 6
  %i.el = load i8, ptr %i.ek, align 1
  %i.em = zext i8 %i.el to i32
  %i.en = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %i.ds, ptr noundef nonnull dereferenceable(1) @format_iad, i32 noundef %i.dz, i32 noundef %i.ec, i32 noundef %i.ef, ptr noundef %i.eg, i32 noundef %i.ej, i32 noundef %i.em) #6
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr i8, ptr %i.ds, i64 %i.eo
  br label %usb_dump_iad_descriptor.exit.i.i

usb_dump_iad_descriptor.exit.i.i:                 ; preds = %bb.ab, %bb.aa
  %.0.i.i.i = phi ptr [ %i.ep, %bb.ab ], [ %i.ds, %bb.aa ] ; 5 uses
  %i.eq = getelementptr i8, ptr %i.cw, i64 32
  %i.er = load ptr, ptr %i.eq, align 8            ; 6 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %usb_dump_iad_descriptor.exit.15.i.i, label %bb.ac

bb.ac:                                            ; preds = %usb_dump_iad_descriptor.exit.i.i
  %i.et = icmp ugt ptr %.0.i.i.i, %i.aj
  br i1 %i.et, label %usb_dump_iad_descriptor.exit.1.i.i, label %bb.ad

end_hunk_0
