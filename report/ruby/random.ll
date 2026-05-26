inline.NumInlined: 245
inline.NumDeleted: 86
begin_hunk_0
@rb_eRangeError = external local_unnamed_addr global i64, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"random number too small %g\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"random number too big %g\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"random number too small %ld\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"random number too big %ld\00", align 1
@hash_salt = internal global %union.anon.1 zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"Base\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"srand\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"rand\00", align 1
@rb_cObject = external local_unnamed_addr global i64, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c"Random\00", align 1
@rb_cRandom = dso_local local_unnamed_addr global i64 0, align 8
@.str.9 = private unnamed_addr constant [11 x i8] c"initialize\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"initialize_copy\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"marshal_dump\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"marshal_load\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"new_seed\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"urandom\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"Formatter\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"random_number\00", align 1
@default_rand_key_storage_type = internal constant %struct.rb_ractor_local_storage_type { ptr @default_rand_mark, ptr @ruby_xfree }, align 8
@id_bytes = internal unnamed_addr global i64 0, align 8
@fill_random_bytes_syscall.try_syscall = internal global i32 1, align 4
@.str.23 = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@random_mt_if = internal constant { i64, %struct.anon.0, i16, [4 x i8], ptr, ptr, ptr, ptr, ptr } { i64 128, %struct.anon.0 { i8 1, i8 0 }, i16 0, [4 x i8] zeroinitializer, ptr @rand_mt_init, ptr @rand_mt_init_int32, ptr @rand_mt_get_int32, ptr @rand_mt_get_bytes, ptr null }, align 8
@random_mt_type = internal constant %struct.rb_data_type_struct { ptr @.str.26, %struct.anon { ptr @rb_random_mark, ptr inttoptr (i64 -1 to ptr), ptr @random_mt_memsize, ptr null, [1 x ptr] zeroinitializer }, ptr @rb_random_data_type_1_0, ptr @random_mt_if, i64 33 }, align 8
@rb_eArgError = external local_unnamed_addr global i64, align 8
@.str.25 = private unnamed_addr constant [25 x i8] c"uninitialized random: %s\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"random/MT\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"random data too short %ld\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"random data too long %ld\00", align 1
@fill_random_seed.n = internal global i32 0, align 4
@rb_eSystemCallError = external local_unnamed_addr global i64, align 8
@rb_eTypeError = external local_unnamed_addr global i64, align 8
@.str.30 = private unnamed_addr constant [31 x i8] c"undefined random interface: %s\00", align 1
@.str.31 = private unnamed_addr constant [45 x i8] c"Random interface version 1.0 expected: %d.%d\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"invalid argument - %li\0B\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"wrong dump data\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"wrong value\00", align 1
@rb_eRuntimeError = external local_unnamed_addr global i64, align 8
@.str.35 = private unnamed_addr constant [22 x i8] c"failed to get urandom\00", align 1
@rb_cFalseClass = external local_unnamed_addr global i64, align 8
@rb_cNilClass = external local_unnamed_addr global i64, align 8
@rb_cTrueClass = external local_unnamed_addr global i64, align 8
@rb_cInteger = external local_unnamed_addr global i64, align 8
@rb_cSymbol = external local_unnamed_addr global i64, align 8
@rb_cFloat = external local_unnamed_addr global i64, align 8

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_free_default_rand_key() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @default_rand_key, align 8, !tbaa !11
  tail call void @ruby_xfree(ptr noundef %i.a) #23
  ret void
}

declare void @ruby_xfree(ptr noundef) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rb_genrand_int32() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @default_mt()
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %i.c = tail call fastcc i32 @genrand_int32(ptr noundef %i.b)
  ret i32 %i.c
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @default_mt() unnamed_addr #0 {
bb.a:
  %i.a = alloca [5 x i32], align 16               ; 7 uses
  %i.b = load ptr, ptr @default_rand_key, align 8, !tbaa !11
  %i.c = tail call ptr @rb_ractor_local_storage_ptr(ptr noundef %i.b) #23 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %default_rand.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noalias nonnull dereferenceable(2520) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 2520) #24 ; 2 uses
  %i.f = load ptr, ptr @default_rand_key, align 8, !tbaa !11
  tail call void @rb_ractor_local_storage_ptr_set(ptr noundef %i.f, ptr noundef nonnull %i.e) #23
  br label %default_rand.exit

default_rand.exit:                                ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.e, %bb.b ], [ %i.c, %bb.a ] ; 4 uses
  %i.g = getelementptr i8, ptr %.0.i, i64 2504
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.c, label %rand_mt_start.exit

bb.c:                                             ; preds = %default_rand.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.i = call i32 @ruby_fill_random_bytes(ptr noundef nonnull %i.a, i64 noundef 16, i32 noundef 0) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !7
  %i.l = icmp ult i32 %i.k, 2
  br i1 %i.l, label %bb.d, label %random_seed.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 1, ptr %i.m, align 16, !tbaa !7
  br label %random_seed.exit.i

random_seed.exit.i:                               ; preds = %bb.d, %bb.c
  %.0.i.i.i = phi i64 [ 5, %bb.d ], [ 4, %bb.c ]
  %i.n = call i64 @rb_integer_unpack(ptr noundef nonnull %i.a, i64 noundef %.0.i.i.i, i64 noundef 4, i64 noundef 0, i32 noundef 66) #23 ; 2 uses
  call void @__explicit_bzero_chk(ptr noundef nonnull %i.a, i64 noundef 16, i64 noundef 20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.o = call fastcc i64 @rand_init(ptr noundef nonnull @random_mt_if, ptr noundef nonnull %.0.i, i64 noundef %i.n) ; 0 uses
  store i64 %i.n, ptr %.0.i, align 8, !tbaa !20
  br label %rand_mt_start.exit

rand_mt_start.exit:                               ; preds = %default_rand.exit, %random_seed.exit.i
  ret ptr %.0.i
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @genrand_int32(ptr noundef %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2504       ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21
  %i.c = add i32 %i.b, -1                         ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !21
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %vector.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 2496
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !22
  br label %bb.b

vector.ph:                                        ; preds = %bb.a
  store i32 624, ptr %i.a, align 8, !tbaa !21
  %.pre.i = load i32, ptr %0, align 8, !tbaa !7
  %i.e = getelementptr i8, ptr %0, i64 896
  %vector.recur.init = insertelement <4 x i32> poison, i32 %.pre.i, i64 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph ], [ %wide.load25, %vector.body ]
  %i.f = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %0, i64 %i.f  ; 6 uses
  %i.g = getelementptr i8, ptr %next.gep, i64 1588
  %i.h = getelementptr i8, ptr %next.gep, i64 1604
  %wide.load = load <4 x i32>, ptr %i.g, align 4, !tbaa !7
  %wide.load23 = load <4 x i32>, ptr %i.h, align 4, !tbaa !7
  %i.i = getelementptr i8, ptr %next.gep, i64 4
  %i.j = getelementptr i8, ptr %next.gep, i64 20
  %wide.load24 = load <4 x i32>, ptr %i.i, align 4, !tbaa !7 ; 4 uses
  %wide.load25 = load <4 x i32>, ptr %i.j, align 4, !tbaa !7 ; 5 uses
  %i.k = shufflevector <4 x i32> %vector.recur, <4 x i32> %wide.load24, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.l = shufflevector <4 x i32> %wide.load24, <4 x i32> %wide.load25, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.m = and <4 x i32> %i.k, splat (i32 -2147483648)
  %i.n = and <4 x i32> %i.l, splat (i32 -2147483648)
  %i.o = and <4 x i32> %wide.load24, splat (i32 2147483646)
  %i.p = and <4 x i32> %wide.load25, splat (i32 2147483646)
  %i.q = or disjoint <4 x i32> %i.o, %i.m
  %i.r = or disjoint <4 x i32> %i.p, %i.n
  %i.s = lshr exact <4 x i32> %i.q, splat (i32 1)
  %i.t = lshr exact <4 x i32> %i.r, splat (i32 1)
  %i.u = and <4 x i32> %wide.load24, splat (i32 1)
  %i.v = and <4 x i32> %wide.load25, splat (i32 1)
  %i.w = icmp eq <4 x i32> %i.u, zeroinitializer
  %i.x = icmp eq <4 x i32> %i.v, zeroinitializer
  %i.y = select <4 x i1> %i.w, <4 x i32> zeroinitializer, <4 x i32> splat (i32 -1727483681)
  %i.z = select <4 x i1> %i.x, <4 x i32> zeroinitializer, <4 x i32> splat (i32 -1727483681)
  %i.aa = xor <4 x i32> %i.y, %wide.load
  %i.ab = xor <4 x i32> %i.z, %wide.load23
  %i.ac = xor <4 x i32> %i.aa, %i.s
  %i.ad = xor <4 x i32> %i.ab, %i.t
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.ac, ptr %next.gep, align 4, !tbaa !7
  store <4 x i32> %i.ad, ptr %i.ae, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.af = icmp eq i64 %index.next, 224
  br i1 %i.af, label %vector.ph27, label %vector.body, !llvm.loop !23

vector.ph27:                                      ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %wide.load25, i64 3
  %i.ag = getelementptr i8, ptr %0, i64 2484
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !7
  %i.ai = and i32 %vector.recur.extract, -2147483648
  %i.aj = getelementptr i8, ptr %0, i64 900       ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !7  ; 3 uses
  %i.al = and i32 %i.ak, 2147483646
  %i.am = or disjoint i32 %i.al, %i.ai
  %i.an = lshr exact i32 %i.am, 1
  %i.ao = and i32 %i.ak, 1
  %.not29.i = icmp eq i32 %i.ao, 0
  %i.ap = select i1 %.not29.i, i32 0, i32 -1727483681
  %i.aq = xor i32 %i.ap, %i.ah
  %i.ar = xor i32 %i.aq, %i.an
  store i32 %i.ar, ptr %i.e, align 8, !tbaa !7
  %i.as = getelementptr i8, ptr %0, i64 2488
  %i.at = load i32, ptr %i.as, align 8, !tbaa !7
  %i.au = and i32 %i.ak, -2147483648
  %i.av = getelementptr i8, ptr %0, i64 904       ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !7  ; 3 uses
  %i.ax = and i32 %i.aw, 2147483646
  %i.ay = or disjoint i32 %i.ax, %i.au
  %i.az = lshr exact i32 %i.ay, 1
  %i.ba = and i32 %i.aw, 1
  %.not29.i.1 = icmp eq i32 %i.ba, 0
  %i.bb = select i1 %.not29.i.1, i32 0, i32 -1727483681
  %i.bc = xor i32 %i.bb, %i.at
  %i.bd = xor i32 %i.bc, %i.az
  store i32 %i.bd, ptr %i.aj, align 4, !tbaa !7
  %i.be = getelementptr i8, ptr %0, i64 2492
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !7
  %i.bg = and i32 %i.aw, -2147483648
  %i.bh = getelementptr i8, ptr %0, i64 908       ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !7  ; 3 uses
  %i.bj = and i32 %i.bi, 2147483646
  %i.bk = or disjoint i32 %i.bj, %i.bg
  %i.bl = lshr exact i32 %i.bk, 1
  %i.bm = and i32 %i.bi, 1
  %.not29.i.2 = icmp eq i32 %i.bm, 0
  %i.bn = select i1 %.not29.i.2, i32 0, i32 -1727483681
  %i.bo = xor i32 %i.bn, %i.bf
  %i.bp = xor i32 %i.bo, %i.bl
  store i32 %i.bp, ptr %i.av, align 8, !tbaa !7
  %i.bq = getelementptr i8, ptr %0, i64 2492
  %vector.recur.init30 = insertelement <4 x i32> poison, i32 %i.bi, i64 3
  br label %vector.body28

vector.body28:                                    ; preds = %vector.body28, %vector.ph27
  %index29 = phi i64 [ 0, %vector.ph27 ], [ %index.next35, %vector.body28 ] ; 2 uses
  %vector.recur31 = phi <4 x i32> [ %vector.recur.init30, %vector.ph27 ], [ %wide.load34, %vector.body28 ]
  %i.br = shl i64 %index29, 2
  %next.gep32 = getelementptr i8, ptr %i.bh, i64 %i.br ; 3 uses
  %i.bs = getelementptr i8, ptr %next.gep32, i64 -908
  %wide.load33 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !7
  %i.bt = getelementptr i8, ptr %next.gep32, i64 4
  %wide.load34 = load <4 x i32>, ptr %i.bt, align 4, !tbaa !7 ; 5 uses
  %i.bu = shufflevector <4 x i32> %vector.recur31, <4 x i32> %wide.load34, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bv = and <4 x i32> %i.bu, splat (i32 -2147483648)
  %i.bw = and <4 x i32> %wide.load34, splat (i32 2147483646)
  %i.bx = or disjoint <4 x i32> %i.bw, %i.bv
  %i.by = lshr exact <4 x i32> %i.bx, splat (i32 1)
  %i.bz = and <4 x i32> %wide.load34, splat (i32 1)
  %i.ca = icmp eq <4 x i32> %i.bz, zeroinitializer
  %i.cb = select <4 x i1> %i.ca, <4 x i32> zeroinitializer, <4 x i32> splat (i32 -1727483681)
  %i.cc = xor <4 x i32> %i.cb, %wide.load33
  %i.cd = xor <4 x i32> %i.cc, %i.by
  store <4 x i32> %i.cd, ptr %next.gep32, align 4, !tbaa !7
  %index.next35 = add nuw i64 %index29, 4         ; 2 uses
  %i.ce = icmp eq i64 %index.next35, 396
  br i1 %i.ce, label %next_state.exit, label %vector.body28, !llvm.loop !27

next_state.exit:                                  ; preds = %vector.body28
  %i.cf = extractelement <4 x i32> %wide.load34, i64 3
  %i.cg = getelementptr i8, ptr %0, i64 1584
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !7
  %i.ci = and i32 %i.cf, -2147483648
  %i.cj = load i32, ptr %0, align 8, !tbaa !7     ; 2 uses
  %i.ck = and i32 %i.cj, 2147483646
  %i.cl = or disjoint i32 %i.ck, %i.ci
  %i.cm = lshr exact i32 %i.cl, 1
  %i.cn = and i32 %i.cj, 1
  %.not27.i = icmp eq i32 %i.cn, 0
  %i.co = select i1 %.not27.i, i32 0, i32 -1727483681
  %i.cp = xor i32 %i.co, %i.ch
  %i.cq = xor i32 %i.cp, %i.cm
  store i32 %i.cq, ptr %i.bq, align 4, !tbaa !7
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %next_state.exit
  %i.cr = phi ptr [ %.pre, %._crit_edge ], [ %0, %next_state.exit ] ; 2 uses
  %i.cs = getelementptr i8, ptr %0, i64 2496
  %i.ct = getelementptr i8, ptr %i.cr, i64 4
  store ptr %i.ct, ptr %i.cs, align 8, !tbaa !22
  %i.cu = load i32, ptr %i.cr, align 4, !tbaa !7  ; 2 uses
  %i.cv = lshr i32 %i.cu, 11
  %i.cw = xor i32 %i.cv, %i.cu                    ; 2 uses
  %i.cx = shl i32 %i.cw, 7
  %i.cy = and i32 %i.cx, -1658038656
  %i.cz = xor i32 %i.cy, %i.cw                    ; 2 uses
  %i.da = shl i32 %i.cz, 15
  %i.db = and i32 %i.da, -272236544
  %i.dc = xor i32 %i.db, %i.cz                    ; 2 uses
  %i.dd = lshr i32 %i.dc, 18
  %i.de = xor i32 %i.dd, %i.dc
  ret i32 %i.de
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local double @rb_genrand_real() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @default_mt()
  %i.b = getelementptr i8, ptr %i.a, i64 8        ; 2 uses
  %i.c = tail call fastcc i32 @genrand_int32(ptr noundef %i.b)
  %i.d = tail call fastcc i32 @genrand_int32(ptr noundef %i.b)
  %i.e = lshr i32 %i.c, 5
  %i.f = lshr i32 %i.d, 6
  %i.g = uitofp nneg i32 %i.e to double
  %i.h = uitofp nneg i32 %i.f to double
  %i.i = tail call nnan double @llvm.fmuladd.f64(double %i.g, double f0x4190000000000000, double %i.h)
  %i.j = fmul nnan double %i.i, f0x3CA0000000000000
  ret double %i.j
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_random_mark(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !28
  tail call void @rb_gc_mark(i64 noundef %i.a) #23
  ret void
}

declare void @rb_gc_mark(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef i64 @random_memsize(ptr readnone captures(none) %0) #4 {
bb.a:
  ret i64 8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local void @rb_random_base_init(ptr noundef writeonly captures(none) initializes((0, 8)) %0) local_unnamed_addr #5 {
bb.a:
  store i64 1, ptr %0, align 8, !tbaa !28
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i32 -1, 1) i32 @ruby_fill_random_bytes(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.stat, align 8               ; 4 uses
  %i.a = load i32, ptr @fill_random_bytes_syscall.try_syscall, align 4, !tbaa !7
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not16.i = icmp eq i32 %2, 0
  %spec.store.select.i = zext i1 %.not16.i to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.013.i = phi i64 [ 0, %bb.b ], [ %i.f, %bb.d ] ; 3 uses
  %i.b = tail call ptr @rb_errno_ptr() #23
  store i32 0, ptr %i.b, align 4, !tbaa !7
  %i.c = getelementptr i8, ptr %0, i64 %.013.i
  %i.d = sub i64 %1, %.013.i
  %i.e = tail call i64 @getrandom(ptr noundef %i.c, i64 noundef %i.d, i32 noundef %spec.store.select.i) #23 ; 2 uses
  %.not17.i = icmp eq i64 %i.e, -1
  br i1 %.not17.i, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  store atomic volatile i32 0, ptr @fill_random_bytes_syscall.try_syscall seq_cst, align 4
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = add i64 %i.e, %.013.i                    ; 2 uses
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.c, label %fill_random_bytes_syscall.exit, !llvm.loop !29

bb.e:                                             ; preds = %bb.a, %.thread.i
  %i.h = tail call i32 @rb_cloexec_open(ptr noundef nonnull @.str.23, i32 noundef 2304, i32 noundef 0) #23 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %fill_random_bytes_urandom.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @rb_update_max_fd(i32 noundef %i.h) #23
  %i.j = call i32 @fstat(i32 noundef %i.h, ptr noundef nonnull %3) #23
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !30
  %i.n = and i32 %i.m, 61440
  %i.o = icmp eq i32 %i.n, 8192
  br i1 %i.o, label %.preheader.i, label %.sink.split.i

.preheader.i:                                     ; preds = %bb.g, %bb.h
  %.0.i = phi i64 [ %i.t, %bb.h ], [ 0, %bb.g ]   ; 3 uses
  %i.p = getelementptr i8, ptr %0, i64 %.0.i
  %i.q = sub i64 %1, %.0.i
  %i.r = tail call i64 @read(i32 noundef %i.h, ptr noundef %i.p, i64 noundef %i.q) #23 ; 2 uses
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %.sink.split.i, label %bb.h

bb.h:                                             ; preds = %.preheader.i
  %i.t = add i64 %i.r, %.0.i                      ; 2 uses
  %i.u = icmp ult i64 %i.t, %1
  br i1 %i.u, label %.preheader.i, label %.sink.split.i, !llvm.loop !33

.sink.split.i:                                    ; preds = %bb.h, %.preheader.i, %bb.g, %bb.f
  %.015.ph.i = phi i32 [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.h ], [ -1, %.preheader.i ]
  %i.v = tail call i32 @close(i32 noundef %i.h) #23 ; 0 uses
  br label %fill_random_bytes_urandom.exit

fill_random_bytes_urandom.exit:                   ; preds = %bb.e, %.sink.split.i
  %.015.i = phi i32 [ -1, %bb.e ], [ %.015.ph.i, %.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %fill_random_bytes_syscall.exit

fill_random_bytes_syscall.exit:                   ; preds = %bb.d, %fill_random_bytes_urandom.exit
  %.0 = phi i32 [ %.015.i, %fill_random_bytes_urandom.exit ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_genrand_ulong_limited(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @default_mt()       ; 2 uses
  %.not.i = icmp eq i64 %0, 0
  br i1 %.not.i, label %limited_rand.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %0, 1
  %i.c = or i64 %i.b, %0                          ; 2 uses
  %i.d = lshr i64 %i.c, 2
  %i.e = or i64 %i.d, %i.c                        ; 2 uses
  %i.f = lshr i64 %i.e, 4
  %i.g = or i64 %i.f, %i.e                        ; 2 uses
  %i.h = lshr i64 %i.g, 8
  %i.i = or i64 %i.h, %i.g                        ; 2 uses
  %i.j = lshr i64 %i.i, 16
  %i.k = or i64 %i.j, %i.i                        ; 3 uses
  %i.l = lshr i64 %i.k, 32
  %i.m = or i64 %i.l, %i.k
  %.fr10 = freeze i64 %i.m                        ; 6 uses
  %i.n = icmp ugt i64 %0, 4294967295
  br i1 %i.n, label %.preheader.i, label %.preheader29.i.preheader

.preheader29.i.preheader:                         ; preds = %bb.b
  %i.o = getelementptr i8, ptr %i.a, i64 8
  br label %.preheader29.i

.preheader.i:                                     ; preds = %bb.b
  %.not27.i = icmp ult i64 %i.k, 4294967296
  %i.p = and i64 %.fr10, 4294967295
  %.not27.1.i = icmp eq i64 %i.p, 0               ; 2 uses
  %i.q = getelementptr i8, ptr %i.a, i64 8        ; 4 uses
  br i1 %.not27.i, label %.preheader.i.split.us, label %.preheader.i.split

.preheader.i.split.us:                            ; preds = %.preheader.i
  br i1 %.not27.1.i, label %limited_rand.exit, label %limited_rand.exit.loopexit

.preheader.i.split:                               ; preds = %.preheader.i
  br i1 %.not27.1.i, label %.loopexit28.i.us2, label %.loopexit28.i

.loopexit28.i.us2:                                ; preds = %.preheader.i.split, %.loopexit28.i.us2
  %i.r = tail call fastcc i32 @genrand_int32(ptr noundef %i.q)
  %i.s = zext i32 %i.r to i64
  %i.t = shl nuw i64 %i.s, 32
  %i.u = and i64 %i.t, %.fr10                     ; 2 uses
  %i.v = icmp ult i64 %0, %i.u
end_hunk_0
begin_hunk_1_@rand_range:bb.a

bb.q:                                             ; preds = %RB_FLOAT_TYPE_P.exit.thread
  %i.ar = and i64 %i.ap, 3
  %i.as = icmp eq i64 %i.ar, 2
  br i1 %i.as, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %.not.i.i = icmp eq i64 %i.ap, -9223372036854775806
  br i1 %.not.i.i, label %.thread95, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.neg.i.i = ashr i64 %i.ap, 63
  %i.at = add nsw i64 %.neg.i.i, 2
  %i.au = and i64 %i.ap, -4
  %i.av = or i64 %i.at, %i.au                     ; 2 uses
  %i.aw = call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.av, i64 range(i64 1, 0) %i.av, i64 61)
  %i.ax = bitcast i64 %i.aw to double
  br label %rb_float_value_inline.exit

bb.t:                                             ; preds = %bb.q
  %i.ay = inttoptr i64 %i.ap to ptr
  %i.az = getelementptr i8, ptr %i.ay, i64 16
  %i.ba = load double, ptr %i.az, align 8, !tbaa !98
  br label %rb_float_value_inline.exit

rb_float_value_inline.exit:                       ; preds = %bb.s, %bb.t
  %.0.i54 = phi double [ %i.ba, %bb.t ], [ %i.ax, %bb.s ] ; 3 uses
  %i.bb = call double @llvm.fabs.f64(double %.0.i54) #29
  %i.bc = fcmp oeq double %i.bb, +inf             ; 2 uses
  br i1 %i.bc, label %bb.u, label %bb.ad

.thread95:                                        ; preds = %bb.r
  store i64 4, ptr %i.d, align 8, !tbaa !35
  br label %bb.ar

bb.u:                                             ; preds = %rb_float_value_inline.exit
  %i.bd = load i64, ptr %i.c, align 8, !tbaa !35
  %i.be = call i64 @rb_to_float(i64 noundef %i.bd) #23 ; 5 uses
  %i.bf = and i64 %i.be, 3
  %i.bg = icmp eq i64 %i.bf, 2
  br i1 %i.bg, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %.not.i.i.i = icmp eq i64 %i.be, -9223372036854775806
  br i1 %.not.i.i.i, label %rb_float_value_inline.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.neg.i.i.i = ashr i64 %i.be, 63
  %i.bh = add nsw i64 %.neg.i.i.i, 2
  %i.bi = and i64 %i.be, -4
  %i.bj = or i64 %i.bh, %i.bi                     ; 2 uses
  %i.bk = call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.bj, i64 range(i64 1, 0) %i.bj, i64 61)
  %i.bl = bitcast i64 %i.bk to double
  br label %rb_float_value_inline.exit.i

bb.x:                                             ; preds = %bb.u
  %i.bm = inttoptr i64 %i.be to ptr
  %i.bn = getelementptr i8, ptr %i.bm, i64 16
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !98
  br label %rb_float_value_inline.exit.i

rb_float_value_inline.exit.i:                     ; preds = %bb.x, %bb.w, %bb.v
  %.0.i.i = phi double [ %i.bo, %bb.x ], [ %i.bl, %bb.w ], [ 0.000000e+00, %bb.v ] ; 2 uses
  %i.bp = call double @llvm.fabs.f64(double %.0.i.i)
  %i.bq = fcmp ueq double %i.bp, +inf
  br i1 %i.bq, label %bb.y, label %float_value.exit

bb.y:                                             ; preds = %rb_float_value_inline.exit.i
  call fastcc void @domain_error() #27
  unreachable

float_value.exit:                                 ; preds = %rb_float_value_inline.exit.i
  %i.br = fmul nnan double %.0.i.i, 5.000000e-01  ; 2 uses
  %i.bs = call i64 @rb_to_float(i64 noundef %i.i) #23 ; 5 uses
  %i.bt = and i64 %i.bs, 3
  %i.bu = icmp eq i64 %i.bt, 2
  br i1 %i.bu, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %float_value.exit
  %.not.i.i.i57 = icmp eq i64 %i.bs, -9223372036854775806
  br i1 %.not.i.i.i57, label %rb_float_value_inline.exit.i55, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.neg.i.i.i58 = ashr i64 %i.bs, 63
  %i.bv = add nsw i64 %.neg.i.i.i58, 2
  %i.bw = and i64 %i.bs, -4
  %i.bx = or i64 %i.bv, %i.bw                     ; 2 uses
  %i.by = call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.bx, i64 range(i64 1, 0) %i.bx, i64 61)
  %i.bz = bitcast i64 %i.by to double
  br label %rb_float_value_inline.exit.i55

bb.ab:                                            ; preds = %float_value.exit
  %i.ca = inttoptr i64 %i.bs to ptr
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !98
  br label %rb_float_value_inline.exit.i55

rb_float_value_inline.exit.i55:                   ; preds = %bb.ab, %bb.aa, %bb.z
  %.0.i.i56 = phi double [ %i.cc, %bb.ab ], [ %i.bz, %bb.aa ], [ 0.000000e+00, %bb.z ] ; 2 uses
  %i.cd = call double @llvm.fabs.f64(double %.0.i.i56)
  %i.ce = fcmp ueq double %i.cd, +inf
  br i1 %i.ce, label %bb.ac, label %float_value.exit59

bb.ac:                                            ; preds = %rb_float_value_inline.exit.i55
  call fastcc void @domain_error() #27
  unreachable

float_value.exit59:                               ; preds = %rb_float_value_inline.exit.i55
  %i.cf = fmul nnan double %.0.i.i56, 5.000000e-01 ; 2 uses
  %i.cg = fadd double %i.br, %i.cf
  %i.ch = fsub double %i.cf, %i.br
  br label %bb.af

bb.ad:                                            ; preds = %rb_float_value_inline.exit
  %i.ci = fcmp uno double %.0.i54, 0.000000e+00
  br i1 %i.ci, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call fastcc void @domain_error() #27
  unreachable

bb.af:                                            ; preds = %bb.ad, %float_value.exit59
  %.048 = phi double [ %i.ch, %float_value.exit59 ], [ %.0.i54, %bb.ad ] ; 4 uses
  %.047 = phi double [ %i.cg, %float_value.exit59 ], [ 5.000000e-01, %bb.ad ]
  store i64 4, ptr %i.d, align 8, !tbaa !35
  %i.cj = fcmp ogt double %.048, 0.000000e+00
  br i1 %i.cj, label %bb.ag, label %bb.ar

bb.ag:                                            ; preds = %bb.af
  %i.ck = load i32, ptr %i.e, align 4, !tbaa !7
  %i.cl = call fastcc double @random_real(i64 noundef %0, ptr noundef %1, i32 noundef %i.ck) ; 2 uses
  br i1 %i.bc, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %bb.ag
  %i.cm = fadd double %i.cl, -5.000000e-01
  %i.cn = fmul double %.048, %i.cm
  %i.co = call double @llvm.fmuladd.f64(double %i.cn, double 2.000000e+00, double %.047) ; 2 uses
  %i.cp = bitcast double %i.co to i64             ; 5 uses
  %cond.i = icmp eq i64 %i.cp, 3458764513820540928
  br i1 %cond.i, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cq = lshr i64 %i.cp, 60
  %i.cr = trunc nuw nsw i64 %i.cq to i32
  %i.cs = and i32 %i.cr, 7
  %i.ct = add nsw i32 %i.cs, -5
  %i.cu = icmp ult i32 %i.ct, -2
  br i1 %i.cu, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cv = call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.cp, i64 range(i64 3458764513820540929, 3458764513820540928) %i.cp, i64 3)
  %i.cw = and i64 %i.cv, -4
  %i.cx = or disjoint i64 %i.cw, 2
  br label %rb_float_new_inline.exit

bb.ak:                                            ; preds = %bb.ai
  %i.cy = icmp eq i64 %i.cp, 0
  br i1 %i.cy, label %rb_float_new_inline.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ah
  %i.cz = call i64 @rb_float_new_in_heap(double noundef %i.co) #23
  br label %rb_float_new_inline.exit

bb.am:                                            ; preds = %bb.ag
  %i.da = fmul double %.048, %i.cl                ; 2 uses
  %i.db = bitcast double %i.da to i64             ; 5 uses
  %cond.i61 = icmp eq i64 %i.db, 3458764513820540928
  br i1 %cond.i61, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dc = lshr i64 %i.db, 60
  %i.dd = trunc nuw nsw i64 %i.dc to i32
  %i.de = and i32 %i.dd, 7
  %i.df = add nsw i32 %i.de, -5
  %i.dg = icmp ult i32 %i.df, -2
  br i1 %i.dg, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dh = call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.db, i64 range(i64 3458764513820540929, 3458764513820540928) %i.db, i64 3)
  %i.di = and i64 %i.dh, -4
  %i.dj = or disjoint i64 %i.di, 2
  br label %rb_float_new_inline.exit.thread.sink.split

bb.ap:                                            ; preds = %bb.an
  %i.dk = icmp eq i64 %i.db, 0
  br i1 %i.dk, label %rb_float_new_inline.exit.thread.sink.split, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.am
  %i.dl = call i64 @rb_float_new_in_heap(double noundef %i.da) #23
  br label %rb_float_new_inline.exit.thread.sink.split

bb.ar:                                            ; preds = %.thread95, %bb.af
  %.04898 = phi double [ 0.000000e+00, %.thread95 ], [ %.048, %bb.af ]
  %i.dm = fcmp une double %.04898, 0.000000e+00
  %i.dn = load i32, ptr %i.e, align 4
  %i.do = icmp ne i32 %i.dn, 0
  %or.cond = select i1 %i.dm, i1 true, i1 %i.do
  br i1 %or.cond, label %rb_float_new_inline.exit.thread, label %rb_float_new_inline.exit.thread.sink.split

rb_float_new_inline.exit.thread.sink.split:       ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.j, %bb.i, %bb.p
  %.sink = phi i64 [ -9223372036854775806, %bb.ap ], [ %i.ah, %bb.j ], [ %i.ao, %bb.p ], [ %i.ag, %bb.i ], [ %i.dj, %bb.ao ], [ %i.dl, %bb.aq ], [ -9223372036854775806, %bb.ar ]
  %3 = freeze i64 %.sink                          ; 2 uses
  store i64 %3, ptr %i.d, align 8, !tbaa !35
  br label %rb_float_new_inline.exit.thread

rb_float_new_inline.exit.thread:                  ; preds = %rb_float_new_inline.exit.thread.sink.split, %bb.k, %.lr.ph.preheader, %bb.ar, %._crit_edge, %RB_FLOAT_TYPE_P.exit.thread
  %i.dp = phi i64 [ 4, %RB_FLOAT_TYPE_P.exit.thread ], [ 4, %._crit_edge ], [ 4, %bb.ar ], [ 4, %bb.k ], [ 4, %.lr.ph.preheader ], [ %3, %rb_float_new_inline.exit.thread.sink.split ] ; 17 uses
  %i.dq = load i64, ptr %i.c, align 8, !tbaa !35  ; 9 uses
  %4 = and i64 %i.dq, %i.dp
  %5 = and i64 %4, 1
  %or.cond129.not = icmp eq i64 %5, 0
  br i1 %or.cond129.not, label %bb.av, label %bb.as

bb.as:                                            ; preds = %rb_float_new_inline.exit.thread
  %i.dr = ashr i64 %i.dq, 1
  %i.ds = ashr i64 %i.dp, 1
  %i.dt = add nsw i64 %i.ds, %i.dr                ; 3 uses
  %i.du = add i64 %i.dt, 4611686018427387904
  %or.cond.i = icmp sgt i64 %i.du, -1
  br i1 %or.cond.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.dv = shl nsw i64 %i.dt, 1
  %i.dw = or disjoint i64 %i.dv, 1
  br label %rb_float_new_inline.exit

bb.au:                                            ; preds = %bb.as
  %i.dx = call i64 @rb_int2big(i64 noundef %i.dt) #23
  br label %rb_float_new_inline.exit

bb.av:                                            ; preds = %rb_float_new_inline.exit.thread
  %i.dy = icmp eq i64 %i.dp, 0
  %i.dz = and i64 %i.dp, 7
  %i.ea = icmp ne i64 %i.dz, 0
  %i.eb = or i1 %i.dy, %i.ea
  br i1 %i.eb, label %bb.aw, label %rb_type.exit

bb.aw:                                            ; preds = %bb.av
  %i.ec = call i64 @llvm.fshl.i64(i64 %i.dp, i64 %i.dp, i64 62)
  switch i64 %i.ec, label %bb.ax [
    i64 0, label %rb_float_new_inline.exit77
    i64 1, label %rb_float_new_inline.exit
    i64 5, label %rb_float_new_inline.exit77
    i64 9, label %rb_float_new_inline.exit77
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.ed = trunc i64 %i.dp to i1
  %i.ee = and i64 %i.dp, 254
  %i.ef = icmp eq i64 %i.ee, 12
  %or.cond110 = or i1 %i.ef, %i.ed
  br i1 %or.cond110, label %rb_float_new_inline.exit77, label %rb_type.exit.thread104

rb_type.exit:                                     ; preds = %bb.av
  %i.eg = inttoptr i64 %i.dp to ptr
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !53
  %i.ei = trunc i64 %i.eh to i32
  %i.ej = and i32 %i.ei, 31
  switch i32 %i.ej, label %rb_float_new_inline.exit77 [
    i32 17, label %rb_float_new_inline.exit
    i32 10, label %bb.ay
    i32 4, label %rb_type.exit.thread104
  ]

bb.ay:                                            ; preds = %rb_type.exit
  %i.ek = call i64 @rb_big_plus(i64 noundef %i.dp, i64 noundef %i.dq) #23
  br label %rb_float_new_inline.exit

rb_type.exit.thread104:                           ; preds = %bb.ax, %rb_type.exit
  %i.el = call i64 @rb_check_to_float(i64 noundef %i.dq) #23 ; 6 uses
  %i.em = icmp eq i64 %i.el, 4
  br i1 %i.em, label %rb_type.exit.thread104.rb_float_new_inline.exit77_crit_edge, label %bb.az

rb_type.exit.thread104.rb_float_new_inline.exit77_crit_edge: ; preds = %rb_type.exit.thread104
  %.pre116 = load i64, ptr %i.c, align 8, !tbaa !35
  br label %rb_float_new_inline.exit77

bb.az:                                            ; preds = %rb_type.exit.thread104
  %i.en = and i64 %i.dp, 3
  %i.eo = icmp eq i64 %i.en, 2
  br i1 %i.eo, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %.not.i.i68 = icmp eq i64 %i.dp, -9223372036854775806
  br i1 %.not.i.i68, label %rb_float_value_inline.exit70, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %.neg.i.i69 = ashr i64 %i.dp, 63
  %i.ep = add nsw i64 %.neg.i.i69, 2
  %i.eq = and i64 %i.dp, -4
  %i.er = or i64 %i.ep, %i.eq                     ; 2 uses
  %i.es = call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.er, i64 range(i64 1, 0) %i.er, i64 61)
  %i.et = bitcast i64 %i.es to double
  br label %rb_float_value_inline.exit70

bb.bc:                                            ; preds = %bb.az
  %i.eu = inttoptr i64 %i.dp to ptr
  %i.ev = getelementptr i8, ptr %i.eu, i64 16
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !98
  br label %rb_float_value_inline.exit70

rb_float_value_inline.exit70:                     ; preds = %bb.ba, %bb.bb, %bb.bc
  %.0.i67 = phi double [ %i.ew, %bb.bc ], [ %i.et, %bb.bb ], [ 0.000000e+00, %bb.ba ]
  %i.ex = and i64 %i.el, 3
  %i.ey = icmp eq i64 %i.ex, 2
  br i1 %i.ey, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %rb_float_value_inline.exit70
  %.not.i.i72 = icmp eq i64 %i.el, -9223372036854775806
  br i1 %.not.i.i72, label %rb_float_value_inline.exit74, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %.neg.i.i73 = ashr i64 %i.el, 63
  %i.ez = add nsw i64 %.neg.i.i73, 2
  %i.fa = and i64 %i.el, -4
  %i.fb = or i64 %i.ez, %i.fa                     ; 2 uses
  %i.fc = call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.fb, i64 range(i64 1, 0) %i.fb, i64 61)
  %i.fd = bitcast i64 %i.fc to double
  br label %rb_float_value_inline.exit74

bb.bf:                                            ; preds = %rb_float_value_inline.exit70
  %i.fe = inttoptr i64 %i.el to ptr
  %i.ff = getelementptr i8, ptr %i.fe, i64 16
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !98
  br label %rb_float_value_inline.exit74

rb_float_value_inline.exit74:                     ; preds = %bb.bd, %bb.be, %bb.bf
  %.0.i71 = phi double [ %i.fg, %bb.bf ], [ %i.fd, %bb.be ], [ 0.000000e+00, %bb.bd ]
  %i.fh = fadd double %.0.i67, %.0.i71            ; 2 uses
  %i.fi = bitcast double %i.fh to i64             ; 5 uses
  %cond.i75 = icmp eq i64 %i.fi, 3458764513820540928
  br i1 %cond.i75, label %bb.bj, label %bb.bg

bb.bg:                                            ; preds = %rb_float_value_inline.exit74
  %i.fj = lshr i64 %i.fi, 60
  %i.fk = trunc nuw nsw i64 %i.fj to i32
  %i.fl = and i32 %i.fk, 7
  %i.fm = add nsw i32 %i.fl, -5
  %i.fn = icmp ult i32 %i.fm, -2
  br i1 %i.fn, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fo = call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.fi, i64 range(i64 3458764513820540929, 3458764513820540928) %i.fi, i64 3)
  %i.fp = and i64 %i.fo, -4
  %i.fq = or disjoint i64 %i.fp, 2
  br label %rb_float_new_inline.exit

bb.bi:                                            ; preds = %bb.bg
  %i.fr = icmp eq i64 %i.fi, 0
  br i1 %i.fr, label %rb_float_new_inline.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %rb_float_value_inline.exit74
  %i.fs = call i64 @rb_float_new_in_heap(double noundef %i.fh) #23
  br label %rb_float_new_inline.exit

rb_float_new_inline.exit77:                       ; preds = %rb_type.exit.thread104.rb_float_new_inline.exit77_crit_edge, %bb.aw, %bb.aw, %bb.ax, %bb.aw, %rb_type.exit
  %i.ft = phi i64 [ %.pre116, %rb_type.exit.thread104.rb_float_new_inline.exit77_crit_edge ], [ %i.dq, %bb.aw ], [ %i.dq, %bb.aw ], [ %i.dq, %bb.ax ], [ %i.dq, %bb.aw ], [ %i.dq, %rb_type.exit ]
  %i.fu = call i64 @rb_funcallv(i64 noundef %i.ft, i64 noundef 43, i32 noundef 1, ptr noundef nonnull %i.d) #23
  br label %rb_float_new_inline.exit

rb_float_new_inline.exit:                         ; preds = %range_values.exit, %bb.bh, %bb.bi, %bb.bj, %bb.aw, %bb.au, %bb.at, %bb.aj, %bb.ak, %bb.al, %range_values.exit.thread83, %rb_type.exit, %rb_float_new_inline.exit77, %bb.ay
  %.3 = phi i64 [ 0, %range_values.exit.thread83 ], [ -9223372036854775806, %bb.ak ], [ %i.fu, %rb_float_new_inline.exit77 ], [ %i.k, %range_values.exit ], [ %i.ek, %bb.ay ], [ %i.dp, %bb.aw ], [ %i.dp, %rb_type.exit ], [ %i.cx, %bb.aj ], [ %i.cz, %bb.al ], [ %i.dw, %bb.at ], [ %i.dx, %bb.au ], [ -9223372036854775806, %bb.bi ], [ %i.fs, %bb.bj ], [ %i.fq, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  ret i64 %.3
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @rand_int(i64 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = trunc i64 %2 to i1
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = ashr i64 %2, 1                           ; 4 uses
  %.not22 = icmp eq i64 %i.d, 0
  br i1 %.not22, label %rb_ulong2num_inline.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %.not23 = icmp eq i32 %3, 0
  br i1 %.not23, label %bb.e, label %rb_ulong2num_inline.exit

bb.e:                                             ; preds = %bb.d
  %i.f = sub nsw i64 0, %i.d
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.018 = phi i64 [ %i.f, %bb.e ], [ %i.d, %bb.c ]
  %i.g = add nsw i64 %.018, -1
  %i.h = tail call fastcc i64 @random_ulong_limited(i64 noundef %0, ptr noundef %1, i64 noundef %i.g) ; 3 uses
  %i.i = icmp ult i64 %i.h, 4611686018427387904
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = shl nuw nsw i64 %i.h, 1
  %i.k = or disjoint i64 %i.j, 1
  br label %rb_ulong2num_inline.exit

bb.h:                                             ; preds = %bb.f
  %i.l = tail call i64 @rb_uint2big(i64 noundef %i.h) #23
  br label %rb_ulong2num_inline.exit

bb.i:                                             ; preds = %bb.a
  %i.m = tail call i32 @rb_bigzero_p(i64 noundef %2) #23
  %.not = icmp eq i32 %i.m, 0
end_hunk_1
