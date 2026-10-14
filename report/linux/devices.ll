Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/devices?download=true
inline.NumInlined: 22
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
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
  %i.q = call fastcc i64 @usb_device_dump(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef %3, ptr noundef %i.p, ptr noundef %i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7, !srcloc !12 ; 3 uses
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
  %i.aj = getelementptr i8, ptr %i.e, i64 7936    ; 26 uses
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
  %i.av = tail call fastcc ptr @class_decode(i32 noundef %i.au) #7, !srcloc !18
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
  %i.eg = tail call fastcc ptr @class_decode(i32 noundef %i.ef) #7, !srcloc !19
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

bb.ad:                                            ; preds = %bb.ac
  %i.eu = getelementptr i8, ptr %i.er, i64 2
  %i.ev = load i8, ptr %i.eu, align 1
  %i.ew = zext i8 %i.ev to i32
  %i.ex = getelementptr i8, ptr %i.er, i64 3
  %i.ey = load i8, ptr %i.ex, align 1
  %i.ez = zext i8 %i.ey to i32
end_hunk_0
begin_hunk_1_@usb_device_dump:bb.a
  br i1 %or.cond.i.i, label %usb_dump_iad_descriptor.exit.15.i.i, label %bb.be

bb.be:                                            ; preds = %usb_dump_iad_descriptor.exit.14.i.i
  %i.re = getelementptr i8, ptr %i.rb, i64 2
  %i.rf = load i8, ptr %i.re, align 1
  %i.rg = zext i8 %i.rf to i32
  %i.rh = getelementptr i8, ptr %i.rb, i64 3
  %i.ri = load i8, ptr %i.rh, align 1
  %i.rj = zext i8 %i.ri to i32
  %i.rk = getelementptr i8, ptr %i.rb, i64 4
  %i.rl = load i8, ptr %i.rk, align 1
  %i.rm = zext i8 %i.rl to i32                    ; 2 uses
  %i.rn = tail call fastcc ptr @class_decode(i32 noundef %i.rm) #7, !srcloc !19
  %i.ro = getelementptr i8, ptr %i.rb, i64 5
  %i.rp = load i8, ptr %i.ro, align 1
  %i.rq = zext i8 %i.rp to i32
  %i.rr = getelementptr i8, ptr %i.rb, i64 6
  %i.rs = load i8, ptr %i.rr, align 1
  %i.rt = zext i8 %i.rs to i32
  %i.ru = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %.0.i.14.i.i, ptr noundef nonnull dereferenceable(1) @format_iad, i32 noundef %i.rg, i32 noundef %i.rj, i32 noundef %i.rm, ptr noundef %i.rn, i32 noundef %i.rq, i32 noundef %i.rt) #6
  %i.rv = sext i32 %i.ru to i64
  %i.rw = getelementptr i8, ptr %.0.i.14.i.i, i64 %i.rv
  br label %usb_dump_iad_descriptor.exit.15.i.i

usb_dump_iad_descriptor.exit.15.i.i:              ; preds = %bb.be, %usb_dump_iad_descriptor.exit.14.i.i, %usb_dump_iad_descriptor.exit.13.i.i, %usb_dump_iad_descriptor.exit.12.i.i, %usb_dump_iad_descriptor.exit.11.i.i, %usb_dump_iad_descriptor.exit.10.i.i, %usb_dump_iad_descriptor.exit.9.i.i, %usb_dump_iad_descriptor.exit.8.i.i, %usb_dump_iad_descriptor.exit.7.i.i, %usb_dump_iad_descriptor.exit.6.i.i, %usb_dump_iad_descriptor.exit.5.i.i, %usb_dump_iad_descriptor.exit.4.i.i, %usb_dump_iad_descriptor.exit.3.i.i, %usb_dump_iad_descriptor.exit.2.i.i, %usb_dump_iad_descriptor.exit.1.i.i, %usb_dump_iad_descriptor.exit.i.i, %usb_dump_config_descriptor.exit.i.i
  %.038.lcssa.i.i = phi ptr [ %i.ds, %usb_dump_config_descriptor.exit.i.i ], [ %.0.i.7.i.i, %usb_dump_iad_descriptor.exit.7.i.i ], [ %.0.i.i.i, %usb_dump_iad_descriptor.exit.i.i ], [ %.0.i.14.i.i, %usb_dump_iad_descriptor.exit.14.i.i ], [ %.0.i.1.i.i, %usb_dump_iad_descriptor.exit.1.i.i ], [ %.0.i.9.i.i, %usb_dump_iad_descriptor.exit.9.i.i ], [ %.0.i.2.i.i, %usb_dump_iad_descriptor.exit.2.i.i ], [ %.0.i.13.i.i, %usb_dump_iad_descriptor.exit.13.i.i ], [ %.0.i.3.i.i, %usb_dump_iad_descriptor.exit.3.i.i ], [ %.0.i.8.i.i, %usb_dump_iad_descriptor.exit.8.i.i ], [ %.0.i.4.i.i, %usb_dump_iad_descriptor.exit.4.i.i ], [ %.0.i.12.i.i, %usb_dump_iad_descriptor.exit.12.i.i ], [ %.0.i.5.i.i, %usb_dump_iad_descriptor.exit.5.i.i ], [ %.0.i.10.i.i, %usb_dump_iad_descriptor.exit.10.i.i ], [ %.0.i.6.i.i, %usb_dump_iad_descriptor.exit.6.i.i ], [ %.0.i.11.i.i, %usb_dump_iad_descriptor.exit.11.i.i ], [ %i.rw, %bb.be ] ; 2 uses
  %i.rx = load i8, ptr %i.dc, align 4             ; 2 uses
  %.not57.i.i = icmp eq i8 %i.rx, 0
  br i1 %.not57.i.i, label %usb_dump_config.exit.i, label %.lr.ph55.i.i

.lr.ph55.i.i:                                     ; preds = %usb_dump_iad_descriptor.exit.15.i.i
  %i.ry = getelementptr i8, ptr %i.cw, i64 408
  %i.rz = getelementptr i8, ptr %i.cw, i64 152
  %i.sa = icmp eq i32 %i.cu, 3
  br label %bb.bf

bb.bf:                                            ; preds = %._crit_edge.i.i, %.lr.ph55.i.i
  %i.sb = phi i8 [ %i.rx, %.lr.ph55.i.i ], [ %i.uv, %._crit_edge.i.i ]
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph55.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %.13952.i.i = phi ptr [ %.038.lcssa.i.i, %.lr.ph55.i.i ], [ %.2.lcssa.i.i, %._crit_edge.i.i ] ; 2 uses
  %i.sc = getelementptr [8 x i8], ptr %i.ry, i64 %indvars.iv.i.i
  %i.sd = load ptr, ptr %i.sc, align 8            ; 3 uses
  %i.se = load i32, ptr %i.sd, align 8
  %.not58.i.i = icmp eq i32 %i.se, 0
  br i1 %.not58.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bf
  %i.sf = getelementptr [8 x i8], ptr %i.rz, i64 %indvars.iv.i.i
  %i.sg = load ptr, ptr %i.sf, align 8            ; 3 uses
  %i.sh = getelementptr i8, ptr %i.sd, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.sg, null
  %i.si = getelementptr i8, ptr %i.sg, i64 184
  %i.sj = getelementptr i8, ptr %i.sg, i64 8
  br label %bb.bg

bb.bg:                                            ; preds = %usb_dump_interface.exit.i.i, %.lr.ph.i.i
  %.051.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.us, %usb_dump_interface.exit.i.i ] ; 2 uses
  %.250.i.i = phi ptr [ %.13952.i.i, %.lr.ph.i.i ], [ %.015.lcssa.i.i.i, %usb_dump_interface.exit.i.i ] ; 4 uses
  %i.sk = sext i32 %.051.i.i to i64
  %i.sl = getelementptr [40 x i8], ptr %i.sh, i64 %i.sk ; 9 uses
  %i.sm = icmp ugt ptr %.250.i.i, %i.aj
  br i1 %i.sm, label %usb_dump_interface_descriptor.exit.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  br i1 %.not.i.i.i.i, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.sn = load ptr, ptr %i.si, align 8            ; 2 uses
  %.not27.i.i.i.i = icmp eq ptr %i.sn, null
  br i1 %.not27.i.i.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.so = load ptr, ptr %i.sn, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.sp = phi ptr [ %i.so, %bb.bj ], [ @.str.32, %bb.bi ]
  %i.sq = load ptr, ptr %i.sj, align 8
  %.not29.i.i.i.i = icmp eq ptr %i.sl, %i.sq
  %i.sr = select i1 %.not29.i.i.i.i, i32 42, i32 32
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bh
  %.022.i.i.i.i = phi ptr [ %i.sp, %bb.bk ], [ @.str.31, %bb.bh ]
  %.0.i.i.i.i = phi i32 [ %i.sr, %bb.bk ], [ 32, %bb.bh ]
  %i.ss = getelementptr i8, ptr %i.sl, i64 2
  %i.st = load i8, ptr %i.ss, align 1
  %i.su = zext i8 %i.st to i32
  %i.sv = getelementptr i8, ptr %i.sl, i64 3
  %i.sw = load i8, ptr %i.sv, align 1
  %i.sx = zext i8 %i.sw to i32
  %i.sy = getelementptr i8, ptr %i.sl, i64 4
  %i.sz = load i8, ptr %i.sy, align 1
  %i.ta = zext i8 %i.sz to i32
  %i.tb = getelementptr i8, ptr %i.sl, i64 5
  %i.tc = load i8, ptr %i.tb, align 1             ; 2 uses
  %i.td = zext i8 %i.tc to i32
  switch i8 %i.tc, label %bb.bm [
    i8 0, label %class_decode.exit.i.i
    i8 1, label %.fold.split.i.i.i
    i8 2, label %.fold.split8.i.i.i
    i8 3, label %.fold.split9.i.i.i
    i8 5, label %.fold.split10.i.i.i
    i8 6, label %.fold.split11.i.i.i
    i8 7, label %.fold.split12.i.i.i
    i8 8, label %.fold.split13.i.i.i
    i8 9, label %.fold.split14.i.i.i
    i8 10, label %.fold.split15.i.i.i
    i8 11, label %.fold.split16.i.i.i
    i8 13, label %.fold.split17.i.i.i
    i8 14, label %.fold.split18.i.i.i
    i8 15, label %.fold.split19.i.i.i
    i8 16, label %.fold.split20.i.i.i
    i8 17, label %.fold.split21.i.i.i
    i8 18, label %.fold.split22.i.i.i
    i8 -32, label %.fold.split23.i.i.i
    i8 -17, label %.fold.split24.i.i.i
    i8 -2, label %.fold.split25.i.i.i
    i8 -1, label %.fold.split26.i.i.i
  ]

bb.bm:                                            ; preds = %bb.bl
  br label %class_decode.exit.i.i

.fold.split.i.i.i:                                ; preds = %bb.bl
  br label %class_decode.exit.i.i

.fold.split8.i.i.i:                               ; preds = %bb.bl
  br label %class_decode.exit.i.i

.fold.split9.i.i.i:                               ; preds = %bb.bl
  br label %class_decode.exit.i.i

.fold.split10.i.i.i:                              ; preds = %bb.bl
  br label %class_decode.exit.i.i

.fold.split11.i.i.i:                              ; preds = %bb.bl
  br label %class_decode.exit.i.i

.fold.split12.i.i.i:                              ; preds = %bb.bl
  br label %class_decode.exit.i.i

.fold.split13.i.i.i:                              ; preds = %bb.bl
  br label %class_decode.exit.i.i

.fold.split14.i.i.i:                              ; preds = %bb.bl
  br label %class_decode.exit.i.i

.fold.split15.i.i.i:                              ; preds = %bb.bl
  br label %class_decode.exit.i.i

.fold.split16.i.i.i:                              ; preds = %bb.bl
  br label %class_decode.exit.i.i

.fold.split17.i.i.i:                              ; preds = %bb.bl
  br label %class_decode.exit.i.i

.fold.split18.i.i.i:                              ; preds = %bb.bl
  br label %class_decode.exit.i.i

.fold.split19.i.i.i:                              ; preds = %bb.bl
  br label %class_decode.exit.i.i

.fold.split20.i.i.i:                              ; preds = %bb.bl
  br label %class_decode.exit.i.i

.fold.split21.i.i.i:                              ; preds = %bb.bl
  br label %class_decode.exit.i.i

.fold.split22.i.i.i:                              ; preds = %bb.bl
  br label %class_decode.exit.i.i

.fold.split23.i.i.i:                              ; preds = %bb.bl
  br label %class_decode.exit.i.i

.fold.split24.i.i.i:                              ; preds = %bb.bl
  br label %class_decode.exit.i.i

.fold.split25.i.i.i:                              ; preds = %bb.bl
  br label %class_decode.exit.i.i

.fold.split26.i.i.i:                              ; preds = %bb.bl
  br label %class_decode.exit.i.i

class_decode.exit.i.i:                            ; preds = %.fold.split26.i.i.i, %.fold.split25.i.i.i, %.fold.split24.i.i.i, %.fold.split23.i.i.i, %.fold.split22.i.i.i, %.fold.split21.i.i.i, %.fold.split20.i.i.i, %.fold.split19.i.i.i, %.fold.split18.i.i.i, %.fold.split17.i.i.i, %.fold.split16.i.i.i, %.fold.split15.i.i.i, %.fold.split14.i.i.i, %.fold.split13.i.i.i, %.fold.split12.i.i.i, %.fold.split11.i.i.i, %.fold.split10.i.i.i, %.fold.split9.i.i.i, %.fold.split8.i.i.i, %.fold.split.i.i.i, %bb.bm, %bb.bl
  %.lcssa.i.i.i = phi ptr [ @clas_info, %bb.bl ], [ getelementptr inbounds nuw (i8, ptr @clas_info, i64 336), %bb.bm ], [ getelementptr inbounds nuw (i8, ptr @clas_info, i64 192), %.fold.split18.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @clas_info, i64 304), %.fold.split25.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @clas_info, i64 16), %.fold.split.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @clas_info, i64 160), %.fold.split16.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @clas_info, i64 32), %.fold.split8.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @clas_info, i64 288), %.fold.split24.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @clas_info, i64 48), %.fold.split9.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @clas_info, i64 224), %.fold.split20.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @clas_info, i64 64), %.fold.split10.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @clas_info, i64 272), %.fold.split23.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @clas_info, i64 80), %.fold.split11.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @clas_info, i64 176), %.fold.split17.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @clas_info, i64 96), %.fold.split12.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @clas_info, i64 256), %.fold.split22.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @clas_info, i64 112), %.fold.split13.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @clas_info, i64 208), %.fold.split19.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @clas_info, i64 128), %.fold.split14.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @clas_info, i64 240), %.fold.split21.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @clas_info, i64 144), %.fold.split15.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @clas_info, i64 320), %.fold.split26.i.i.i ]
  %i.te = getelementptr i8, ptr %.lcssa.i.i.i, i64 8
  %i.tf = load ptr, ptr %i.te, align 8
  %i.tg = getelementptr i8, ptr %i.sl, i64 6
  %i.th = load i8, ptr %i.tg, align 1
  %i.ti = zext i8 %i.th to i32
  %i.tj = getelementptr i8, ptr %i.sl, i64 7
  %i.tk = load i8, ptr %i.tj, align 1
  %i.tl = zext i8 %i.tk to i32
  %i.tm = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %.250.i.i, ptr noundef nonnull dereferenceable(1) @format_iface, i32 noundef %.0.i.i.i.i, i32 noundef %i.su, i32 noundef %i.sx, i32 noundef %i.ta, i32 noundef %i.td, ptr noundef %i.tf, i32 noundef %i.ti, i32 noundef %i.tl, ptr noundef %.022.i.i.i.i) #6
  %i.tn = sext i32 %i.tm to i64
  %i.to = getelementptr i8, ptr %.250.i.i, i64 %i.tn
  br label %usb_dump_interface_descriptor.exit.i.i.i

usb_dump_interface_descriptor.exit.i.i.i:         ; preds = %class_decode.exit.i.i, %bb.bg
  %.023.i.i.i.i = phi ptr [ %i.to, %class_decode.exit.i.i ], [ %.250.i.i, %bb.bg ] ; 3 uses
  %i.tp = getelementptr i8, ptr %i.sl, i64 4      ; 3 uses
  %i.tq = load i8, ptr %i.tp, align 4             ; 3 uses
  %.not.i45.i.i = icmp eq i8 %i.tq, 0
  br i1 %.not.i45.i.i, label %usb_dump_interface.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %usb_dump_interface_descriptor.exit.i.i.i
  %i.tr = getelementptr i8, ptr %i.sl, i64 24     ; 2 uses
  br i1 %i.sa, label %bb.bn, label %.lr.ph.split.i.i.i

bb.bn:                                            ; preds = %.lr.ph.i.i.i, %usb_dump_endpoint_descriptor.exit.us.i.i.i
  %i.ts = phi i8 [ %27, %usb_dump_endpoint_descriptor.exit.us.i.i.i ], [ %i.tq, %.lr.ph.i.i.i ]
  %indvars.iv.i.i.i.a = phi i64 [ %indvars.iv.next27.i.i.i, %usb_dump_endpoint_descriptor.exit.us.i.i.i ], [ 0, %.lr.ph.i.i.i ] ; 2 uses
  %.01521.i.i.i.a = phi ptr [ %.027.i.us.i.i.i, %usb_dump_endpoint_descriptor.exit.us.i.i.i ], [ %.023.i.i.i.i, %.lr.ph.i.i.i ] ; 4 uses
  %i.tt = load ptr, ptr %i.tr, align 8
  %i.tu = getelementptr [88 x i8], ptr %i.tt, i64 %indvars.iv.i.i.i.a ; 4 uses
  %i.tv = icmp ugt ptr %.01521.i.i.i.a, %i.aj
  br i1 %i.tv, label %usb_dump_endpoint_descriptor.exit.us.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.tw = getelementptr i8, ptr %i.tu, i64 2      ; 2 uses
  %.val.i.i.i.i.a = load i8, ptr %i.tw, align 1
  %.not.i16.i.i.i.a = icmp sgt i8 %.val.i.i.i.i.a, -1
  %i.tx = select i1 %.not.i16.i.i.i.a, i32 79, i32 73 ; 3 uses
  %9 = getelementptr i8, ptr %i.tu, i64 4         ; 2 uses
  %.val30.i.us.i.i.i = load i16, ptr %9, align 1
  %10 = lshr i16 %.val30.i.us.i.i.i, 11
  %11 = and i16 %10, 3
  %narrow.i.i.us.i.i.i = add nuw nsw i16 %11, 1
  %12 = getelementptr i8, ptr %i.tu, i64 3        ; 2 uses
  %.val31.i.us.i.i.i = load i8, ptr %12, align 1
  %13 = and i8 %.val31.i.us.i.i.i, 3
  switch i8 %13, label %.unreachabledefault [
    i8 0, label %bb.bp
    i8 1, label %16
    i8 2, label %15
    i8 3, label %14
  ]

14:                                               ; preds = %bb.bo
  br label %bb.bp

15:                                               ; preds = %bb.bo
  br label %bb.bp

16:                                               ; preds = %bb.bo
  br label %bb.bp

bb.bp:                                            ; preds = %16, %15, %14, %bb.bo
  %.026.i.us.i.i.i = phi i32 [ %i.tx, %14 ], [ %i.tx, %16 ], [ %i.tx, %15 ], [ 66, %bb.bo ]
  %.024.i.us.i.i.i = phi ptr [ @.str.36, %14 ], [ @.str.34, %16 ], [ @.str.35, %15 ], [ @.str.33, %bb.bo ]
  %17 = tail call i32 @usb_decode_interval(ptr noundef %i.tu, i32 noundef 3) #6 ; 3 uses
  %18 = urem i32 %17, 1000
  %.not29.i18.us.i.i.i = icmp eq i32 %18, 0       ; 2 uses
  %19 = udiv i32 %17, 1000
  %.025.i.us.i.i.i = select i1 %.not29.i18.us.i.i.i, i32 109, i32 117
  %.023.i19.us.i.i.i = select i1 %.not29.i18.us.i.i.i, i32 %19, i32 %17
  %20 = load i8, ptr %i.tw, align 1
  %21 = zext i8 %20 to i32
  %22 = load i8, ptr %12, align 1
  %23 = zext i8 %22 to i32
  %.val32.i.us.i.i.i = load i16, ptr %9, align 1
  %i.ty = and i16 %.val32.i.us.i.i.i, 2047
  %narrow.i.i.i = mul nuw nsw i16 %i.ty, %narrow.i.i.us.i.i.i
  %i.tz = zext nneg i16 %narrow.i.i.i to i32
  %24 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %.01521.i.i.i.a, ptr noundef nonnull dereferenceable(1) @format_endpt, i32 noundef %21, i32 noundef %.026.i.us.i.i.i, i32 noundef %23, ptr noundef nonnull %.024.i.us.i.i.i, i32 noundef %i.tz, i32 noundef %.023.i19.us.i.i.i, i32 noundef %.025.i.us.i.i.i) #6
  %25 = sext i32 %24 to i64
  %26 = getelementptr i8, ptr %.01521.i.i.i.a, i64 %25
  %.pre29.i.i.i = load i8, ptr %i.tp, align 4
  br label %usb_dump_endpoint_descriptor.exit.us.i.i.i

usb_dump_endpoint_descriptor.exit.us.i.i.i:       ; preds = %bb.bp, %bb.bn
  %27 = phi i8 [ %.pre29.i.i.i, %bb.bp ], [ %i.ts, %bb.bn ] ; 2 uses
  %.027.i.us.i.i.i = phi ptr [ %26, %bb.bp ], [ %.01521.i.i.i.a, %bb.bn ] ; 2 uses
  %indvars.iv.next27.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.a, 1 ; 2 uses
  %28 = zext i8 %27 to i64
  %29 = icmp samesign ult i64 %indvars.iv.next27.i.i.i, %28
  br i1 %29, label %bb.bn, label %usb_dump_interface.exit.i.i, !llvm.loop !13

.unreachabledefault:                              ; preds = %bb.bo
  unreachable

default.unreachable:                              ; preds = %bb.bq
  unreachable

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i, %usb_dump_endpoint_descriptor.exit.i.i.i
  %30 = phi i8 [ %i.up, %usb_dump_endpoint_descriptor.exit.i.i.i ], [ %i.tq, %.lr.ph.i.i.i ]
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %usb_dump_endpoint_descriptor.exit.i.i.i ], [ 0, %.lr.ph.i.i.i ] ; 2 uses
  %.01521.i.i.i = phi ptr [ %.027.i.i.i.i, %usb_dump_endpoint_descriptor.exit.i.i.i ], [ %.023.i.i.i.i, %.lr.ph.i.i.i ] ; 4 uses
  %31 = load ptr, ptr %i.tr, align 8
  %32 = getelementptr [88 x i8], ptr %31, i64 %indvars.iv.i.i.i ; 4 uses
  %33 = icmp ugt ptr %.01521.i.i.i, %i.aj
  br i1 %33, label %usb_dump_endpoint_descriptor.exit.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph.split.i.i.i
  %34 = getelementptr i8, ptr %32, i64 2          ; 2 uses
  %.val.i.i.i.i = load i8, ptr %34, align 1
  %.not.i16.i.i.i = icmp sgt i8 %.val.i.i.i.i, -1
  %35 = select i1 %.not.i16.i.i.i, i32 79, i32 73 ; 3 uses
  %i.ua = getelementptr i8, ptr %32, i64 3        ; 2 uses
  %.val31.i.i.i.i = load i8, ptr %i.ua, align 1
  %i.ub = and i8 %.val31.i.i.i.i, 3
  switch i8 %i.ub, label %default.unreachable [
    i8 0, label %bb.bu
    i8 1, label %bb.br
    i8 2, label %bb.bs
    i8 3, label %bb.bt
  ]

bb.br:                                            ; preds = %bb.bq
  br label %bb.bu

bb.bs:                                            ; preds = %bb.bq
  br label %bb.bu

bb.bt:                                            ; preds = %bb.bq
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %bb.br, %bb.bq
  %.026.i.i.i.i = phi i32 [ %35, %bb.bt ], [ %35, %bb.br ], [ %35, %bb.bs ], [ 66, %bb.bq ]
  %.024.i.i.i.i = phi ptr [ @.str.36, %bb.bt ], [ @.str.34, %bb.br ], [ @.str.35, %bb.bs ], [ @.str.33, %bb.bq ]
  %i.uc = tail call i32 @usb_decode_interval(ptr noundef %32, i32 noundef %i.cu) #6 ; 3 uses
  %i.ud = urem i32 %i.uc, 1000
  %.not29.i18.i.i.i = icmp eq i32 %i.ud, 0        ; 2 uses
  %i.ue = udiv i32 %i.uc, 1000
  %.025.i.i.i.i = select i1 %.not29.i18.i.i.i, i32 109, i32 117
  %.023.i19.i.i.i = select i1 %.not29.i18.i.i.i, i32 %i.ue, i32 %i.uc
  %i.uf = load i8, ptr %34, align 1
  %i.ug = zext i8 %i.uf to i32
  %i.uh = load i8, ptr %i.ua, align 1
  %i.ui = zext i8 %i.uh to i32
  %i.uj = getelementptr i8, ptr %32, i64 4
  %.val32.i.i.i.i = load i16, ptr %i.uj, align 1
  %i.uk = and i16 %.val32.i.i.i.i, 2047
  %i.ul = zext nneg i16 %i.uk to i32
  %i.um = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %.01521.i.i.i, ptr noundef nonnull dereferenceable(1) @format_endpt, i32 noundef %i.ug, i32 noundef %.026.i.i.i.i, i32 noundef %i.ui, ptr noundef nonnull %.024.i.i.i.i, i32 noundef %i.ul, i32 noundef %.023.i19.i.i.i, i32 noundef %.025.i.i.i.i) #6
  %i.un = sext i32 %i.um to i64
  %i.uo = getelementptr i8, ptr %.01521.i.i.i, i64 %i.un
  %.pre.i.i.i = load i8, ptr %i.tp, align 4
  br label %usb_dump_endpoint_descriptor.exit.i.i.i

usb_dump_endpoint_descriptor.exit.i.i.i:          ; preds = %bb.bu, %.lr.ph.split.i.i.i
  %i.up = phi i8 [ %.pre.i.i.i, %bb.bu ], [ %30, %.lr.ph.split.i.i.i ] ; 2 uses
  %.027.i.i.i.i = phi ptr [ %i.uo, %bb.bu ], [ %.01521.i.i.i, %.lr.ph.split.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.uq = zext i8 %i.up to i64
  %i.ur = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.uq
  br i1 %i.ur, label %.lr.ph.split.i.i.i, label %usb_dump_interface.exit.i.i, !llvm.loop !13

usb_dump_interface.exit.i.i:                      ; preds = %usb_dump_endpoint_descriptor.exit.i.i.i, %usb_dump_endpoint_descriptor.exit.us.i.i.i, %usb_dump_interface_descriptor.exit.i.i.i
  %.015.lcssa.i.i.i = phi ptr [ %.023.i.i.i.i, %usb_dump_interface_descriptor.exit.i.i.i ], [ %.027.i.us.i.i.i, %usb_dump_endpoint_descriptor.exit.us.i.i.i ], [ %.027.i.i.i.i, %usb_dump_endpoint_descriptor.exit.i.i.i ] ; 2 uses
  %i.us = add nuw i32 %.051.i.i, 1                ; 2 uses
  %i.ut = load i32, ptr %i.sd, align 8
  %i.uu = icmp ult i32 %i.us, %i.ut
  br i1 %i.uu, label %bb.bg, label %._crit_edge.loopexit.i.i, !llvm.loop !14

._crit_edge.loopexit.i.i:                         ; preds = %usb_dump_interface.exit.i.i
  %.pre.i.i = load i8, ptr %i.dc, align 4
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.bf
  %i.uv = phi i8 [ %i.sb, %bb.bf ], [ %.pre.i.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.2.lcssa.i.i = phi ptr [ %.13952.i.i, %bb.bf ], [ %.015.lcssa.i.i.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.uw = zext i8 %i.uv to i64
  %i.ux = icmp samesign ult i64 %indvars.iv.next.i.i, %i.uw
  br i1 %i.ux, label %bb.bf, label %usb_dump_config.exit.i, !llvm.loop !15

usb_dump_config.exit.i:                           ; preds = %._crit_edge.i.i, %usb_dump_iad_descriptor.exit.15.i.i, %bb.z, %bb.x
  %.037.i.i = phi ptr [ %i.cz, %bb.z ], [ %.01721.i, %bb.x ], [ %.038.lcssa.i.i, %usb_dump_iad_descriptor.exit.15.i.i ], [ %.2.lcssa.i.i, %._crit_edge.i.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.uy = load i8, ptr %i.cq, align 1
  %i.uz = zext i8 %i.uy to i64
  %i.va = icmp samesign ult i64 %indvars.iv.next.i, %i.uz
  br i1 %i.va, label %bb.x, label %usb_dump_desc.exit, !llvm.loop !16

usb_dump_desc.exit:                               ; preds = %usb_dump_config.exit.i, %usb_dump_device_strings.exit.i
  %.017.lcssa.i = phi ptr [ %.0.i18.i, %usb_dump_device_strings.exit.i ], [ %.037.i.i, %usb_dump_config.exit.i ] ; 4 uses
  %i.vb = icmp ugt ptr %.017.lcssa.i, %i.aj
  br i1 %i.vb, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %usb_dump_desc.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.017.lcssa.i, ptr noundef nonnull align 1 dereferenceable(13) @.str.6, i64 13, i1 false)
  %i.vc = getelementptr i8, ptr %.017.lcssa.i, i64 12
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %usb_dump_desc.exit
  %.196 = phi ptr [ %i.vc, %bb.bv ], [ %.017.lcssa.i, %usb_dump_desc.exit ]
  %i.vd = ptrtoint ptr %.196 to i64
  %i.ve = sub i64 %i.vd, %i.d                     ; 2 uses
  %i.vf = and i64 %i.ve, 4294967295               ; 2 uses
  %i.vg = load i64, ptr %2, align 8               ; 4 uses
  %i.vh = icmp sgt i64 %i.vf, %i.vg
  br i1 %i.vh, label %bb.bx, label %bb.ca

bb.bx:                                            ; preds = %bb.bw
  %i.vi = sub i64 %i.ve, %i.vg                    ; 2 uses
  %i.vj = and i64 %i.vi, 4294967295
  %i.vk = load i64, ptr %1, align 8               ; 2 uses
  %i.vl = icmp ugt i64 %i.vj, %i.vk
  %spec.select118 = select i1 %i.vl, i64 %i.vk, i64 %i.vi
  %i.vm = and i64 %spec.select118, 4294967295     ; 6 uses
  %i.vn = icmp samesign ugt i64 %i.vm, 2147483647
  br i1 %i.vn, label %bb.by, label %copy_to_user.exit, !prof !20

bb.by:                                            ; preds = %bb.bx
  tail call void asm sideeffect "275: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 275b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 275) #5, !srcloc !21
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.31, ptr nonnull @.str.37, i32 57, i32 2307, i64 16) #5, !srcloc !22
  tail call void asm sideeffect "276: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 276b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 276) #5, !srcloc !23
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %bb.bx
  %i.vo = getelementptr i8, ptr %i.e, i64 %i.vg
  %i.vp = load ptr, ptr %0, align 8
  %i.vq = tail call i64 @_copy_to_user(ptr noundef %i.vp, ptr noundef %i.vo, i64 noundef range(i64 0, 4294967296) %i.vm) #6
  %.not115 = icmp eq i64 %i.vq, 0
  br i1 %.not115, label %bb.bz, label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %bb.by, %copy_to_user.exit
  tail call void @free_pages(i64 noundef %i.d, i32 noundef 1) #6
  br label %.loopexit

bb.bz:                                            ; preds = %copy_to_user.exit
  %i.vr = load i64, ptr %1, align 8
  %i.vs = sub i64 %i.vr, %i.vm
  store i64 %i.vs, ptr %1, align 8
  %i.vt = load i64, ptr %3, align 8
  %i.vu = add i64 %i.vt, %i.vm
  store i64 %i.vu, ptr %3, align 8
  %i.vv = load ptr, ptr %0, align 8
  %i.vw = getelementptr i8, ptr %i.vv, i64 %i.vm
  store ptr %i.vw, ptr %0, align 8
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bw
  %i.vx = sub nuw nsw i64 %i.vg, %i.vf
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %storemerge = phi i64 [ %i.vx, %bb.ca ], [ 0, %bb.bz ]
  %.092 = phi i64 [ 0, %bb.ca ], [ %i.vm, %bb.bz ] ; 2 uses
  store i64 %storemerge, ptr %2, align 8
  tail call void @free_pages(i64 noundef %i.d, i32 noundef 1) #6
  %i.vy = tail call ptr @usb_hub_find_child(ptr noundef %4, i32 noundef 1) #6
  %i.vz = load i32, ptr %i.n, align 8
  %.not116124 = icmp slt i32 %i.vz, 1
  br i1 %.not116124, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.cb
  %i.wa = add nuw nsw i32 %6, 1
  br label %bb.cc

bb.cc:                                            ; preds = %.lr.ph, %bb.cf
  %.089128 = phi i32 [ 1, %.lr.ph ], [ %i.wj, %bb.cf ] ; 2 uses
  %.091127 = phi ptr [ %i.vy, %.lr.ph ], [ %i.wk, %bb.cf ] ; 3 uses
  %.1126 = phi i64 [ %.092, %.lr.ph ], [ %.2, %bb.cf ] ; 3 uses
  %.098125 = phi i32 [ 0, %.lr.ph ], [ %.199, %bb.cf ] ; 2 uses
  %.not117 = icmp eq ptr %.091127, null
  br i1 %.not117, label %bb.cf, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.wb = getelementptr i8, ptr %.091127, i64 320 ; 2 uses
  tail call void @mutex_lock(ptr noundef %i.wb) #6
  %i.wc = add i32 %.089128, -1
  %i.wd = add i32 %.098125, 1                     ; 2 uses
  %i.we = tail call fastcc i64 @usb_device_dump(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %.091127, ptr noundef %5, i32 noundef %i.wa, i32 noundef %i.wc, i32 noundef %i.wd) #7, !srcloc !24 ; 2 uses
  tail call void @mutex_unlock(ptr noundef %i.wb) #6
  %i.wf = and i64 %i.we, 4294967295
  %i.wg = icmp eq i64 %i.wf, 4294967282
  br i1 %i.wg, label %.loopexit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %sext = shl i64 %i.we, 32
  %i.wh = ashr exact i64 %sext, 32
  %i.wi = add i64 %i.wh, %.1126
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cc, %bb.ce
  %.199 = phi i32 [ %i.wd, %bb.ce ], [ %.098125, %bb.cc ]
  %.2 = phi i64 [ %i.wi, %bb.ce ], [ %.1126, %bb.cc ] ; 2 uses
  %i.wj = add i32 %.089128, 1                     ; 3 uses
  %i.wk = tail call ptr @usb_hub_find_child(ptr noundef %4, i32 noundef %i.wj) #6
  %i.wl = load i32, ptr %i.n, align 8
  %.not116 = icmp sgt i32 %i.wj, %i.wl
  br i1 %.not116, label %.loopexit, label %bb.cc, !llvm.loop !17

.loopexit:                                        ; preds = %bb.cd, %bb.cf, %bb.cb, %bb.b, %bb.a, %copy_to_user.exit.thread
  %.088 = phi i64 [ -12, %bb.b ], [ 0, %bb.a ], [ -14, %copy_to_user.exit.thread ], [ %.092, %bb.cb ], [ %.1126, %bb.cd ], [ %.2, %bb.cf ]
  ret i64 %.088
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @get_free_pages_noprof(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nofree noredzone nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @free_pages(i64 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @usb_hub_find_child(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none)
define internal fastcc ptr @class_decode(i32 noundef range(i32 0, 256) %0) unnamed_addr #4 align 16 prefalign(16) {
bb.a:
  %trunc = trunc nuw i32 %0 to i8
  switch i8 %trunc, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %.fold.split
    i8 2, label %.fold.split8
    i8 3, label %.fold.split9
    i8 5, label %.fold.split10
    i8 6, label %.fold.split11
    i8 7, label %.fold.split12
    i8 8, label %.fold.split13
    i8 9, label %.fold.split14
    i8 10, label %.fold.split15
    i8 11, label %.fold.split16
    i8 13, label %.fold.split17
    i8 14, label %.fold.split18
    i8 15, label %.fold.split19
    i8 16, label %.fold.split20
    i8 17, label %.fold.split21
    i8 18, label %.fold.split22
    i8 -32, label %.fold.split23
    i8 -17, label %.fold.split24
    i8 -2, label %.fold.split25
    i8 -1, label %.fold.split26
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

.fold.split:                                      ; preds = %bb.a
  br label %bb.c

.fold.split8:                                     ; preds = %bb.a
  br label %bb.c

.fold.split9:                                     ; preds = %bb.a
  br label %bb.c

.fold.split10:                                    ; preds = %bb.a
  br label %bb.c
end_hunk_1
