Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/tx_float?download=true
inline.NumInlined: 21
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 32
begin_hunk_0
@ff_tx_rdft_c2r_def_float_c = internal constant { ptr, ptr, i32, [4 x i8], i64, <{ i32, i32, [14 x i32] }>, i32, i32, i32, [4 x i8], ptr, ptr, i32, i32 } { ptr @.str.106, ptr @ff_tx_rdft_c2r_float_c, i32 6, [4 x i8] zeroinitializer, i64 -8070450532247928829, <{ i32, i32, [14 x i32] }> <{ i32 4, i32 -1, [14 x i32] zeroinitializer }>, i32 2, i32 4, i32 -1, [4 x i8] zeroinitializer, ptr @ff_tx_rdft_init_float_c, ptr null, i32 0, i32 0 }, align 8
@.str.108 = private unnamed_addr constant [14 x i8] c"dctII_float_c\00", align 1
@ff_tx_dctII_def_float_c = internal constant { ptr, ptr, i32, [4 x i8], i64, <{ i32, i32, [14 x i32] }>, i32, i32, i32, [4 x i8], ptr, ptr, i32, i32 } { ptr @.str.108, ptr @ff_tx_dctII_float_c, i32 9, [4 x i8] zeroinitializer, i64 -8646911284551352317, <{ i32, i32, [14 x i32] }> <{ i32 2, i32 -1, [14 x i32] zeroinitializer }>, i32 0, i32 2, i32 -1, [4 x i8] zeroinitializer, ptr @ff_tx_dct_init_float_c, ptr null, i32 0, i32 0 }, align 8
@.str.110 = private unnamed_addr constant [15 x i8] c"dctIII_float_c\00", align 1
@ff_tx_dctIII_def_float_c = internal constant { ptr, ptr, i32, [4 x i8], i64, <{ i32, i32, [14 x i32] }>, i32, i32, i32, [4 x i8], ptr, ptr, i32, i32 } { ptr @.str.110, ptr @ff_tx_dctIII_float_c, i32 9, [4 x i8] zeroinitializer, i64 -8070450532247928829, <{ i32, i32, [14 x i32] }> <{ i32 2, i32 -1, [14 x i32] zeroinitializer }>, i32 0, i32 2, i32 -1, [4 x i8] zeroinitializer, ptr @ff_tx_dct_init_float_c, ptr null, i32 0, i32 0 }, align 8
@.str.112 = private unnamed_addr constant [13 x i8] c"dctI_float_c\00", align 1
@ff_tx_dctI_def_float_c = internal constant { ptr, ptr, i32, [4 x i8], i64, <{ i32, i32, [14 x i32] }>, i32, i32, i32, [4 x i8], ptr, ptr, i32, i32 } { ptr @.str.112, ptr @ff_tx_dctI_float_c, i32 12, [4 x i8] zeroinitializer, i64 -9223372036854775805, <{ i32, i32, [14 x i32] }> <{ i32 2, i32 -1, [14 x i32] zeroinitializer }>, i32 2, i32 2, i32 -1, [4 x i8] zeroinitializer, ptr @ff_tx_dcstI_init_float_c, ptr null, i32 0, i32 0 }, align 8
@.str.114 = private unnamed_addr constant [13 x i8] c"dstI_float_c\00", align 1
@ff_tx_dstI_def_float_c = internal constant { ptr, ptr, i32, [4 x i8], i64, <{ i32, i32, [14 x i32] }>, i32, i32, i32, [4 x i8], ptr, ptr, i32, i32 } { ptr @.str.114, ptr @ff_tx_dstI_float_c, i32 15, [4 x i8] zeroinitializer, i64 -9223372036854775805, <{ i32, i32, [14 x i32] }> <{ i32 2, i32 -1, [14 x i32] zeroinitializer }>, i32 2, i32 2, i32 -1, [4 x i8] zeroinitializer, ptr @ff_tx_dcstI_init_float_c, ptr null, i32 0, i32 0 }, align 8

; Function Attrs: cold nounwind optsize uwtable
define void @ff_tx_init_tabs_float(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = sub i32 0, %0
  %i.b = and i32 %0, %i.a
  %i.c = mul i32 %i.b, 125613361
  %i.d = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %0, i1 true)
  %i.e = icmp eq i32 %0, 0
  %i.f = select i1 %i.e, i32 0, i32 %i.d, !prof !43 ; 3 uses
  %.not = icmp ult i32 %i.c, 134217728
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not3238 = icmp samesign ult i32 %i.f, 3
  br i1 %.not3238, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.g = add nsw i32 %i.f, -2
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %i.h = ashr i32 %0, %i.f
  br label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr @sr_tabs_init_once, i64 %indvars.iv
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @sr_tabs_init_funcs, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !10
  %i.l = tail call i32 @pthread_once(ptr noundef nonnull %i.i, ptr noundef %i.k) #16 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !40

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %.027 = phi i32 [ %i.h, %._crit_edge ], [ %0, %bb.a ] ; 2 uses
  %i.m = icmp sgt i32 %.027, 1
  br i1 %i.m, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.c, %.loopexit
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %.loopexit ], [ 0, %bb.c ] ; 4 uses
  %.12840 = phi i32 [ %.3, %.loopexit ], [ %.027, %bb.c ] ; 3 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr @nptwo_tabs_init_data, i64 %indvars.iv47 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.e
  %indvars.iv44 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next45, %bb.e ] ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv44
  %i.q = load i32, ptr %i.p, align 4, !tbaa !12   ; 3 uses
  %.not33 = icmp eq i32 %i.q, 0
  br i1 %.not33, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  %i.r = srem i32 %i.q, %.12840
  %.not34 = icmp eq i32 %i.r, 0
  br i1 %.not34, label %bb.f, label %bb.d, !llvm.loop !41

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw [4 x i8], ptr @nptwo_tabs_init_once, i64 %indvars.iv47
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !45
  %i.u = tail call i32 @pthread_once(ptr noundef nonnull %i.s, ptr noundef %i.t) #16 ; 0 uses
  %i.v = sdiv i32 %.12840, %i.q
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.f
  %.3 = phi i32 [ %i.v, %bb.f ], [ %.12840, %bb.d ] ; 2 uses
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  %i.w = icmp samesign ult i64 %indvars.iv47, 2
  %i.x = icmp sgt i32 %.3, 1
  %or.cond = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond, label %.preheader, label %.critedge, !llvm.loop !42

.critedge:                                        ; preds = %.loopexit, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 -12, 1) i32 @ff_tx_mdct_gen_exp_float(ptr nofree noundef captures(none) initializes((16, 24)) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.b = ashr i32 %i.a, 1                         ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = load double, ptr %i.c, align 8, !tbaa !22 ; 2 uses
  %i.e = fcmp nsz olt double %i.d, 0.000000e+00
  %i.f = sitofp nsz i32 %i.b to double            ; 3 uses
  %i.g = fadd nnan nsz double %i.f, 1.250000e-01
  %i.h = select i1 %i.e, double %i.g, double 1.250000e-01 ; 2 uses
  %.not.not = icmp eq ptr %1, null                ; 3 uses
  %i.i = and i32 %i.a, -2
  %i.j = select i1 %.not.not, i32 %i.b, i32 %i.i
  %i.k = sext i32 %i.j to i64
  %i.l = tail call ptr @av_malloc_array(i64 noundef %i.k, i64 noundef 8) #16 ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !23
  %.not40 = icmp eq ptr %i.l, null
  br i1 %.not40, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = tail call nsz double @llvm.fabs.f64(double %i.d)
  %i.o = tail call nsz double @llvm.sqrt.f64(double %i.n) ; 2 uses
  %i.p = icmp sgt i32 %i.b, 0
  br i1 %i.p, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.q = zext nneg i32 %i.b to i64
  %i.r = select i1 %.not.not, i64 0, i64 %i.q
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 5 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.r ; 2 uses
  %min.iters.check = icmp eq i32 %i.b, 1
  br i1 %min.iters.check, label %.lr.ph.preheader57, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.h, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert53 = insertelement <2 x double> poison, double %i.f, i64 0
  %broadcast.splat54 = shufflevector <2 x double> %broadcast.splatinsert53, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert55 = insertelement <2 x double> poison, double %i.o, i64 0
  %broadcast.splat56 = shufflevector <2 x double> %broadcast.splatinsert55, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.s = uitofp nneg <2 x i32> %vec.ind to <2 x double>
  %i.t = fadd nnan nsz <2 x double> %broadcast.splat, %i.s
  %i.u = fmul nnan nsz <2 x double> %i.t, splat (double f0x3FF921FB54442D18)
  %i.v = fdiv nsz <2 x double> %i.u, %broadcast.splat54
  %i.w = tail call nsz { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %i.v) ; 2 uses
  %i.x = extractvalue { <2 x double>, <2 x double> } %i.w, 0
  %i.y = extractvalue { <2 x double>, <2 x double> } %i.w, 1
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index
  %i.aa = fmul nsz <2 x double> %broadcast.splat56, %i.y
  %i.ab = fptrunc nsz <2 x double> %i.aa to <2 x float>
  %i.ac = fmul nsz <2 x double> %broadcast.splat56, %i.x
  %i.ad = fptrunc nsz <2 x double> %i.ac to <2 x float>
  %interleaved.vec = shufflevector <2 x float> %i.ab, <2 x float> %i.ad, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec, ptr %i.z, align 4, !tbaa !24
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 2)
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader57

.lr.ph.preheader57:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %i.af = insertelement <2 x double> poison, double %i.o, i64 0
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  br i1 %.not.not, label %.loopexit, label %.lr.ph43.preheader

.lr.ph43.preheader:                               ; preds = %._crit_edge
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ah = icmp eq i32 %i.b, 1
  br i1 %i.ah, label %.lr.ph43.epil.preheader, label %.lr.ph43.preheader.new

.lr.ph43.preheader.new:                           ; preds = %.lr.ph43.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph43

.lr.ph:                                           ; preds = %.lr.ph.preheader57, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader57 ] ; 3 uses
  %i.ai = trunc nuw nsw i64 %indvars.iv to i32
  %i.aj = uitofp nsz nneg i32 %i.ai to double
  %i.ak = fadd nnan nsz double %i.h, %i.aj
  %i.al = fmul nnan nsz double %i.ak, f0x3FF921FB54442D18
  %i.am = fdiv nsz double %i.al, %i.f
  %sincos = tail call nsz { double, double } @llvm.sincos.f64(double %i.am) ; 2 uses
  %sin = extractvalue { double, double } %sincos, 0
  %cos = extractvalue { double, double } %sincos, 1
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.an = insertelement <2 x double> poison, double %cos, i64 0
  %i.ao = insertelement <2 x double> %i.an, double %sin, i64 1
  %i.ap = fmul nsz <2 x double> %i.ag, %i.ao
  %i.aq = fptrunc nsz <2 x double> %i.ap to <2 x float>
  store <2 x float> %i.aq, ptr %gep, align 4, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !47

.lr.ph43:                                         ; preds = %.lr.ph43, %.lr.ph43.preheader.new
  %indvars.iv45 = phi i64 [ 0, %.lr.ph43.preheader.new ], [ %indvars.iv.next46.1, %.lr.ph43 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph43.preheader.new ], [ %niter.next.1, %.lr.ph43 ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv45
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv45
  %i.at = load i32, ptr %i.as, align 4, !tbaa !12
  %i.au = add nsw i32 %i.at, %i.b
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 4, !tbaa !24
  store i64 %i.ax, ptr %i.ar, align 4, !tbaa !24
  %indvars.iv.next46 = or disjoint i64 %indvars.iv45, 1 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next46
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next46
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !12
  %i.bb = add nsw i32 %i.ba, %i.b
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 4, !tbaa !24
  store i64 %i.be, ptr %i.ay, align 4, !tbaa !24
  %indvars.iv.next46.1 = add nuw nsw i64 %indvars.iv45, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph43, !llvm.loop !48

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph43
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph43.epil.preheader

.lr.ph43.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph43.preheader
  %indvars.iv45.epil.init = phi i64 [ 0, %.lr.ph43.preheader ], [ %indvars.iv.next46.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod58 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod58)
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv45.epil.init
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv45.epil.init
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !12
  %i.bi = add nsw i32 %i.bh, %i.b
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.bj
  %i.bl = load i64, ptr %i.bk, align 4, !tbaa !24
  store i64 %i.bl, ptr %i.bf, align 4, !tbaa !24
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph43.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.b, %._crit_edge, %bb.a
  %.035 = phi i32 [ -12, %bb.a ], [ 0, %._crit_edge ], [ 0, %bb.b ], [ 0, %.loopexit.loopexit.unr-lcssa ], [ 0, %.lr.ph43.epil.preheader ]
  ret i32 %.035
}

declare ptr @av_malloc_array(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.cos.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sin.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_init_tab_8_float() #5 {
bb.a:
  store float 1.000000e+00, ptr @ff_tx_tab_8_float, align 16, !tbaa !24
  store float f0x3F3504F3, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_8_float, i64 4), align 4, !tbaa !24
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_8_float, i64 8), align 8, !tbaa !24
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_init_tab_16_float() #5 {
vector.ph:
  store <4 x float> <float 1.000000e+00, float f0x3F6C835E, float f0x3F3504F3, float f0x3EC3EF15>, ptr @ff_tx_tab_16_float, align 16, !tbaa !24
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_16_float, i64 16), align 16, !tbaa !24
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_init_tab_32_float() #5 {
vector.ph:
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.a = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr @ff_tx_tab_32_float, i64 %i.a
  %i.b = uitofp nneg <4 x i32> %vec.ind to <4 x double>
  %i.c = fmul nnan nsz <4 x double> %i.b, splat (double f0x3FC921FB54442D18)
  %i.d = tail call nsz <4 x double> @llvm.cos.v4f64(<4 x double> %i.c)
  %i.e = fptrunc nsz <4 x double> %i.d to <4 x float>
  store <4 x float> %i.e, ptr %next.gep, align 16, !tbaa !24
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.f = icmp eq i64 %index.next, 8
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_32_float, i64 32), align 16, !tbaa !24
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_init_tab_64_float() #5 {
vector.ph:
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.a = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr @ff_tx_tab_64_float, i64 %i.a
  %i.b = uitofp nneg <4 x i32> %vec.ind to <4 x double>
  %i.c = fmul nnan nsz <4 x double> %i.b, splat (double f0x3FB921FB54442D18)
  %i.d = tail call nsz <4 x double> @llvm.cos.v4f64(<4 x double> %i.c)
  %i.e = fptrunc nsz <4 x double> %i.d to <4 x float>
  store <4 x float> %i.e, ptr %next.gep, align 16, !tbaa !24
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.f = icmp eq i64 %index.next, 16
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_64_float, i64 64), align 16, !tbaa !24
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_init_tab_128_float() #5 {
vector.ph:
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.a = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr @ff_tx_tab_128_float, i64 %i.a
  %i.b = uitofp nneg <4 x i32> %vec.ind to <4 x double>
  %i.c = fmul nnan nsz <4 x double> %i.b, splat (double f0x3FA921FB54442D18)
  %i.d = tail call nsz <4 x double> @llvm.cos.v4f64(<4 x double> %i.c)
  %i.e = fptrunc nsz <4 x double> %i.d to <4 x float>
  store <4 x float> %i.e, ptr %next.gep, align 16, !tbaa !24
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.f = icmp eq i64 %index.next, 32
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !51

middle.block:                                     ; preds = %vector.body
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_128_float, i64 128), align 16, !tbaa !24
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_init_tab_256_float() #5 {
vector.ph:
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.a = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr @ff_tx_tab_256_float, i64 %i.a
  %i.b = uitofp nneg <4 x i32> %vec.ind to <4 x double>
  %i.c = fmul nnan nsz <4 x double> %i.b, splat (double f0x3F9921FB54442D18)
  %i.d = tail call nsz <4 x double> @llvm.cos.v4f64(<4 x double> %i.c)
  %i.e = fptrunc nsz <4 x double> %i.d to <4 x float>
  store <4 x float> %i.e, ptr %next.gep, align 16, !tbaa !24
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.f = icmp eq i64 %index.next, 64
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !52

middle.block:                                     ; preds = %vector.body
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_256_float, i64 256), align 16, !tbaa !24
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_init_tab_512_float() #5 {
vector.ph:
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.a = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr @ff_tx_tab_512_float, i64 %i.a
  %i.b = uitofp nneg <4 x i32> %vec.ind to <4 x double>
  %i.c = fmul nnan nsz <4 x double> %i.b, splat (double f0x3F8921FB54442D18)
  %i.d = tail call nsz <4 x double> @llvm.cos.v4f64(<4 x double> %i.c)
end_hunk_0
begin_hunk_1_@ff_tx_gen_compound_mapping

; Function Attrs: nounwind uwtable
define internal void @ff_tx_fft_pfa_ns_float_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2, i64 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !21   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21   ; 3 uses
  %i.f = load i32, ptr %0, align 8, !tbaa !21     ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !33
  %i.i = zext nneg i32 %i.f to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.i ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.n = load i64, ptr %i.m, align 8, !tbaa !30
  %i.o = and i64 %i.n, 1
  %.not = icmp eq i64 %i.o, 0
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.in = select i1 %.not, ptr %i.q, ptr %i.p
  %i.r = load ptr, ptr %.in, align 8, !tbaa !37   ; 6 uses
  %i.s = lshr i64 %3, 3                           ; 5 uses
  %i.t = icmp sgt i32 %i.e, 0
  br i1 %i.t, label %.lr.ph, label %.preheader47

.lr.ph:                                           ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = zext nneg i32 %i.e to i64                ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = sext i32 %i.c to i64
  br label %bb.b

.preheader47:                                     ; preds = %bb.b, %bb.a
  %i.y = icmp sgt i32 %i.c, 0
  br i1 %i.y, label %.lr.ph50, label %.preheader

.lr.ph50:                                         ; preds = %.preheader47
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = sext i32 %i.e to i64
  %wide.trip.count57 = zext nneg i32 %i.c to i64
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !10
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !31
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !12
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ag
  %i.ai = mul nsw i64 %indvars.iv, %i.x
  %i.aj = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ai
  tail call void %i.ab(ptr noundef %i.ac, ptr noundef %i.ah, ptr noundef %i.aj, i64 noundef %i.w) #16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.v
  br i1 %exitcond.not, label %.preheader47, label %bb.b, !llvm.loop !76

.preheader:                                       ; preds = %bb.c, %.preheader47
  %i.ak = icmp sgt i32 %i.f, 0
  br i1 %i.ak, label %.lr.ph52.preheader, label %._crit_edge

.lr.ph52.preheader:                               ; preds = %.preheader
  %wide.trip.count62 = zext nneg i32 %i.f to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count62, 3       ; 3 uses
  %i.al = icmp ult i32 %i.f, 4
  br i1 %i.al, label %.lr.ph52.epil.preheader, label %.lr.ph52.preheader.new

.lr.ph52.preheader.new:                           ; preds = %.lr.ph52.preheader
  %unroll_iter = and i64 %wide.trip.count62, 2147483644
  br label %.lr.ph52

bb.c:                                             ; preds = %.lr.ph50, %bb.c
  %indvars.iv54 = phi i64 [ 0, %.lr.ph50 ], [ %indvars.iv.next55, %bb.c ] ; 2 uses
  %i.am = load ptr, ptr %i.z, align 8, !tbaa !10
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 160
  %i.ap = mul nsw i64 %indvars.iv54, %i.aa        ; 2 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.ap
  %i.ar = load ptr, ptr %i.p, align 8, !tbaa !31
  %i.as = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.ap
  tail call void %i.am(ptr noundef nonnull %i.ao, ptr noundef %i.aq, ptr noundef %i.as, i64 noundef 8) #16
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %exitcond58.not = icmp eq i64 %indvars.iv.next55, %wide.trip.count57
  br i1 %exitcond58.not, label %.preheader, label %bb.c, !llvm.loop !77

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph52
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph52.epil.preheader

.lr.ph52.epil.preheader:                          ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph52.preheader
  %indvars.iv59.epil.init = phi i64 [ 0, %.lr.ph52.preheader ], [ %indvars.iv.next60.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod66 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod66)
  br label %.lr.ph52.epil

.lr.ph52.epil:                                    ; preds = %.lr.ph52.epil, %.lr.ph52.epil.preheader
  %indvars.iv59.epil = phi i64 [ %indvars.iv59.epil.init, %.lr.ph52.epil.preheader ], [ %indvars.iv.next60.epil, %.lr.ph52.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph52.epil.preheader ], [ %epil.iter.next, %.lr.ph52.epil ]
  %i.at = mul nuw nsw i64 %i.s, %indvars.iv59.epil
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.at
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv59.epil
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !12
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 4, !tbaa !24
  store i64 %i.az, ptr %i.au, align 4, !tbaa !24
  %indvars.iv.next60.epil = add nuw nsw i64 %indvars.iv59.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph52.epil, !llvm.loop !78

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph52.epil, %.preheader
  ret void

.lr.ph52:                                         ; preds = %.lr.ph52, %.lr.ph52.preheader.new
  %indvars.iv59 = phi i64 [ 0, %.lr.ph52.preheader.new ], [ %indvars.iv.next60.3, %.lr.ph52 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph52.preheader.new ], [ %niter.next.3, %.lr.ph52 ]
  %i.ba = mul nuw nsw i64 %i.s, %indvars.iv59
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ba
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv59
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !12
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 4, !tbaa !24
  store i64 %i.bg, ptr %i.bb, align 4, !tbaa !24
  %indvars.iv.next60 = or disjoint i64 %indvars.iv59, 1 ; 2 uses
  %i.bh = mul nuw nsw i64 %i.s, %indvars.iv.next60
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bh
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next60
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !12
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 4, !tbaa !24
  store i64 %i.bn, ptr %i.bi, align 4, !tbaa !24
  %indvars.iv.next60.1 = or disjoint i64 %indvars.iv59, 2 ; 2 uses
  %i.bo = mul nuw nsw i64 %i.s, %indvars.iv.next60.1
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bo
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next60.1
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !12
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 4, !tbaa !24
  store i64 %i.bu, ptr %i.bp, align 4, !tbaa !24
  %indvars.iv.next60.2 = or disjoint i64 %indvars.iv59, 3 ; 2 uses
  %i.bv = mul nuw nsw i64 %i.s, %indvars.iv.next60.2
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bv
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next60.2
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !12
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 4, !tbaa !24
  store i64 %i.cb, ptr %i.bw, align 4, !tbaa !24
  %indvars.iv.next60.3 = add nuw nsw i64 %indvars.iv59, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph52, !llvm.loop !79
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ff_tx_fft_naive_float_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #11 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !21     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !38
  %.not = icmp eq i32 %i.c, 0
  %i.d = sitofp nsz i32 %i.a to double
  %.v = select i1 %.not, double f0xC01921FB54442D18, double f0x401921FB54442D18
  %i.e = fdiv nnan nsz double %.v, %i.d
  %i.f = lshr i64 %3, 3
  %i.g = icmp sgt i32 %i.a, 0
  br i1 %i.g, label %.preheader.us.preheader, label %._crit_edge39

.preheader.us.preheader:                          ; preds = %bb.a
  %wide.trip.count45 = zext nneg i32 %i.a to i64  ; 2 uses
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv42 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next43, %._crit_edge.us ] ; 3 uses
  %i.h = trunc nuw nsw i64 %indvars.iv42 to i32
  %i.i = uitofp nsz nneg i32 %i.h to double
  %i.j = fmul nsz double %i.e, %i.i
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.k = phi <2 x float> [ zeroinitializer, %.preheader.us ], [ %i.ab, %bb.b ]
  %i.l = trunc nuw nsw i64 %indvars.iv to i32
  %i.m = uitofp nsz nneg i32 %i.l to double
  %i.n = fmul nsz double %i.j, %i.m
  %sincos.us = tail call nsz { double, double } @llvm.sincos.f64(double %i.n) ; 2 uses
  %sin.us = extractvalue { double, double } %sincos.us, 0 ; 2 uses
  %cos.us = extractvalue { double, double } %sincos.us, 1
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.p = fptrunc nsz double %sin.us to float
  %i.q = insertelement <2 x double> poison, double %cos.us, i64 0
  %i.r = insertelement <2 x double> %i.q, double %sin.us, i64 1
  %i.s = fptrunc nsz <2 x double> %i.r to <2 x float> ; 2 uses
  %i.t = load <2 x float>, ptr %i.o, align 4, !tbaa !24 ; 2 uses
  %i.u = fneg nsz float %i.p
  %i.v = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.w = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.x = insertelement <2 x float> %i.w, float %i.u, i64 0
  %i.y = fmul nsz <2 x float> %i.v, %i.x
  %i.z = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.z, <2 x float> %i.s, <2 x float> %i.y)
  %i.ab = fadd nsz <2 x float> %i.k, %i.aa        ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count45
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !80

._crit_edge.us:                                   ; preds = %bb.b
  %i.ac = mul nuw nsw i64 %i.f, %indvars.iv42
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ac
  store <2 x float> %i.ab, ptr %i.ad, align 4, !tbaa !24
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %exitcond46.not = icmp eq i64 %indvars.iv.next43, %wide.trip.count45
  br i1 %exitcond46.not, label %._crit_edge39, label %.preheader.us, !llvm.loop !81

._crit_edge39:                                    ; preds = %._crit_edge.us, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_fft_naive_small_float_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #12 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.b = lshr i64 %3, 3
  %i.c = icmp sgt i32 %i.a, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge34

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23
  %wide.trip.count40 = zext nneg i32 %i.a to i64  ; 2 uses
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.us, %.preheader.lr.ph
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %._crit_edge.us ], [ 0, %.preheader.lr.ph ] ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.f = phi <2 x float> [ zeroinitializer, %.preheader.us ], [ %i.s, %bb.b ]
  %i.g = mul nuw nsw i64 %indvars.iv, %indvars.iv37
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.g ; 2 uses
  %.sroa.5.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %.sroa.5.0.copyload.us = load float, ptr %.sroa.5.0..sroa_idx.us, align 4, !tbaa !24
  %i.j = load <2 x float>, ptr %i.h, align 4, !tbaa !24 ; 2 uses
  %i.k = load <2 x float>, ptr %i.i, align 4, !tbaa !24 ; 2 uses
  %i.l = fneg nsz float %.sroa.5.0.copyload.us
  %i.m = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.n = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.o = insertelement <2 x float> %i.n, float %i.l, i64 0
  %i.p = fmul nsz <2 x float> %i.m, %i.o
  %i.q = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %i.j, <2 x float> %i.p)
  %i.s = fadd nsz <2 x float> %i.f, %i.r          ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count40
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !82

._crit_edge.us:                                   ; preds = %bb.b
  %i.t = mul nuw nsw i64 %i.b, %indvars.iv37
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.t
  store <2 x float> %i.s, ptr %i.u, align 4, !tbaa !24
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 2 uses
  %exitcond41.not = icmp eq i64 %indvars.iv.next38, %wide.trip.count40
  br i1 %exitcond41.not, label %._crit_edge34, label %.preheader.us, !llvm.loop !83

._crit_edge34:                                    ; preds = %._crit_edge.us, %bb.a
  ret void
}

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -12, 1) i32 @ff_tx_fft_init_naive_small_float_c(ptr nofree noundef captures(none) initializes((16, 24)) %0, ptr nofree readnone captures(none) %1, i64 %2, ptr nofree readnone captures(none) %3, i32 noundef %4, i32 %5, ptr nofree readnone captures(none) %6) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !38
  %.not = icmp eq i32 %i.b, 0
  %i.c = sitofp nsz i32 %4 to double
  %.v = select i1 %.not, double f0xC01921FB54442D18, double f0x401921FB54442D18
  %i.d = fdiv nnan nsz double %.v, %i.c
  %i.e = mul nsw i32 %4, %4
  %i.f = zext nneg i32 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 3
  %i.h = tail call noalias ptr @av_malloc(i64 noundef %i.g) #16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %i.i, align 8, !tbaa !23
  %.not23 = icmp eq ptr %i.h, null
  br i1 %.not23, label %.loopexit, label %.preheader24

.preheader24:                                     ; preds = %bb.a
  %i.j = icmp sgt i32 %4, 0
  br i1 %i.j, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader24
  %wide.trip.count31 = zext nneg i32 %4 to i64    ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv28 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next29, %._crit_edge ] ; 3 uses
  %i.k = trunc nuw nsw i64 %indvars.iv28 to i32
  %i.l = uitofp nsz nneg i32 %i.k to double
  %i.m = fmul nsz double %i.d, %i.l
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1 ; 2 uses
  %exitcond32.not = icmp eq i64 %indvars.iv.next29, %wide.trip.count31
  br i1 %exitcond32.not, label %.loopexit, label %.preheader, !llvm.loop !84

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.n = trunc nuw nsw i64 %indvars.iv to i32
  %i.o = uitofp nsz nneg i32 %i.n to double
  %i.p = fmul nsz double %i.m, %i.o
  %sincos = tail call nsz { double, double } @llvm.sincos.f64(double %i.p) ; 2 uses
  %sin = extractvalue { double, double } %sincos, 0
  %cos = extractvalue { double, double } %sincos, 1
  %i.q = mul nuw nsw i64 %indvars.iv, %indvars.iv28
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.q
  %i.s = insertelement <2 x double> poison, double %cos, i64 0
  %i.t = insertelement <2 x double> %i.s, double %sin, i64 1
  %i.u = fptrunc nsz <2 x double> %i.t to <2 x float>
  store <2 x float> %i.u, ptr %i.r, align 4, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count31
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !85

.loopexit:                                        ; preds = %._crit_edge, %.preheader24, %bb.a
  %.0 = phi i32 [ -12, %bb.a ], [ 0, %.preheader24 ], [ 0, %._crit_edge ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_fwd_float_c(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.d = ashr i32 %i.c, 1                         ; 5 uses
  %i.e = ashr i32 %i.c, 2                         ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.h = lshr i64 %3, 2                           ; 4 uses
  %i.i = icmp sgt i32 %i.d, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = mul nuw nsw i32 %i.d, 3
  %i.k = mul nuw nsw i32 %i.d, 5
  %i.l = zext nneg i32 %i.d to i64                ; 5 uses
  %i.m = zext nneg i32 %i.j to i64                ; 3 uses
  %i.n = zext nneg i32 %i.k to i64
  %wide.trip.count = zext nneg i32 %i.d to i64
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.l
  %i.o = getelementptr [4 x i8], ptr %2, i64 %i.n
  %i.p = getelementptr [4 x i8], ptr %2, i64 %i.m
  %invariant.gep129 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.l
  %i.q = getelementptr [4 x i8], ptr %2, i64 %i.l
  %invariant.gep131 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.m
  %i.r = getelementptr [4 x i8], ptr %2, i64 %i.m
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !32
  tail call void %i.t(ptr noundef %i.v, ptr noundef %1, ptr noundef %1, i64 noundef 8) #16
  %i.w = icmp sgt i32 %i.e, 0
  br i1 %i.w, label %.lr.ph117.preheader, label %._crit_edge118

.lr.ph117.preheader:                              ; preds = %._crit_edge
  %i.x = zext nneg i32 %i.e to i64                ; 2 uses
  %wide.trip.count123 = zext nneg i32 %i.e to i64
  br label %.lr.ph117

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %i.y = shl nuw nsw i64 %indvars.iv, 1           ; 6 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !12
  %i.ab = icmp samesign ult i64 %i.y, %i.l
  %i.ac = xor i64 %i.y, -1                        ; 4 uses
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %gep130 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep129, i64 %i.y
  %i.ad = load float, ptr %gep130, align 4, !tbaa !24
  %i.ae = getelementptr [4 x i8], ptr %i.q, i64 %i.ac
  %i.af = load float, ptr %i.ae, align 4, !tbaa !24
  %i.ag = fsub nsz float %i.af, %i.ad
  %gep132 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep131, i64 %i.y
  %i.ah = load float, ptr %gep132, align 4, !tbaa !24
  %i.ai = getelementptr [4 x i8], ptr %i.r, i64 %i.ac
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !24
  %i.ak = fadd nsz float %i.ah, %i.aj
  %i.al = fneg nsz float %i.ak
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.y
  %i.am = load float, ptr %gep, align 4, !tbaa !24
  %i.an = getelementptr [4 x i8], ptr %i.o, i64 %i.ac
  %i.ao = load float, ptr %i.an, align 4, !tbaa !24
  %i.ap = fadd nsz float %i.am, %i.ao
  %i.aq = fneg nsz float %i.ap
  %i.ar = sub nuw nsw i64 %i.y, %i.l
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ar
  %i.at = load float, ptr %i.as, align 4, !tbaa !24
  %i.au = getelementptr [4 x i8], ptr %i.p, i64 %i.ac
  %i.av = load float, ptr %i.au, align 4, !tbaa !24
  %i.aw = fsub nsz float %i.at, %i.av
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.067.0 = phi nsz float [ %i.ag, %bb.c ], [ %i.aq, %bb.d ] ; 2 uses
  %.sroa.6.0 = phi nsz float [ %i.al, %bb.c ], [ %i.aw, %bb.d ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv ; 2 uses
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !28 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 4 ; 2 uses
  %i.ba = load float, ptr %i.az, align 4, !tbaa !29
  %i.bb = fneg nsz float %i.ba
  %i.bc = fmul nsz float %.sroa.6.0, %i.bb
  %i.bd = tail call nsz float @llvm.fmuladd.f32(float %.sroa.067.0, float %i.ay, float %i.bc)
  %i.be = sext i32 %i.aa to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %1, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  store float %i.bd, ptr %i.bg, align 4, !tbaa !29
  %i.bh = load float, ptr %i.az, align 4, !tbaa !29
  %i.bi = fmul nsz float %.sroa.6.0, %i.ay
  %i.bj = tail call nsz float @llvm.fmuladd.f32(float %.sroa.067.0, float %i.bh, float %i.bi)
  store float %i.bj, ptr %i.bf, align 4, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !86

._crit_edge118:                                   ; preds = %.lr.ph117, %._crit_edge
  ret void

.lr.ph117:                                        ; preds = %.lr.ph117.preheader, %.lr.ph117
  %indvars.iv120 = phi i64 [ 0, %.lr.ph117.preheader ], [ %indvars.iv.next121, %.lr.ph117 ] ; 3 uses
  %i.bk = add nuw nsw i64 %indvars.iv120, %i.x    ; 3 uses
  %i.bl = xor i64 %indvars.iv120, -1
  %i.bm = add nsw i64 %i.x, %i.bl                 ; 3 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bm ; 2 uses
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !28 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !29 ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bk ; 2 uses
  %i.bs = load float, ptr %i.br, align 4, !tbaa !28 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !29 ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bk ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4 ; 2 uses
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !29
  %i.by = load float, ptr %i.bv, align 4, !tbaa !28
  %i.bz = fneg nsz float %i.by
  %i.ca = fmul nsz float %i.bu, %i.bz
  %i.cb = tail call nsz float @llvm.fmuladd.f32(float %i.bs, float %i.bx, float %i.ca)
  %i.cc = shl nsw i64 %i.bm, 1
  %i.cd = mul nsw i64 %i.h, %i.cc
  %i.ce = getelementptr [4 x i8], ptr %1, i64 %i.cd ; 2 uses
  %i.cf = getelementptr [4 x i8], ptr %i.ce, i64 %i.h
  store float %i.cb, ptr %i.cf, align 4, !tbaa !24
  %i.cg = load float, ptr %i.bv, align 4, !tbaa !28
  %i.ch = load float, ptr %i.bw, align 4, !tbaa !29
  %i.ci = fmul nsz float %i.bu, %i.ch
  %i.cj = tail call nsz float @llvm.fmuladd.f32(float %i.bs, float %i.cg, float %i.ci)
  %i.ck = shl nuw nsw i64 %i.bk, 1
  %i.cl = mul nuw nsw i64 %i.h, %i.ck
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cl ; 2 uses
  store float %i.cj, ptr %i.cm, align 4, !tbaa !24
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.bm ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4 ; 2 uses
  %i.cp = load float, ptr %i.co, align 4, !tbaa !29
  %i.cq = load float, ptr %i.cn, align 4, !tbaa !28
  %i.cr = fneg nsz float %i.cq
  %i.cs = fmul nsz float %i.bq, %i.cr
  %i.ct = tail call nsz float @llvm.fmuladd.f32(float %i.bo, float %i.cp, float %i.cs)
  %i.cu = getelementptr [4 x i8], ptr %i.cm, i64 %i.h
  store float %i.ct, ptr %i.cu, align 4, !tbaa !24
  %i.cv = load float, ptr %i.cn, align 4, !tbaa !28
  %i.cw = load float, ptr %i.co, align 4, !tbaa !29
  %i.cx = fmul nsz float %i.bq, %i.cw
  %i.cy = tail call nsz float @llvm.fmuladd.f32(float %i.bo, float %i.cv, float %i.cx)
  store float %i.cy, ptr %i.ce, align 4, !tbaa !24
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %exitcond124.not = icmp eq i64 %indvars.iv.next121, %wide.trip.count123
  br i1 %exitcond124.not, label %._crit_edge118, label %.lr.ph117, !llvm.loop !87
}

; Function Attrs: cold nounwind optsize uwtable
define internal i32 @ff_tx_mdct_init_float_c(ptr noundef initializes((140, 152)) %0, ptr nofree readnone captures(none) %1, i64 noundef %2, ptr nofree readnone captures(none) %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) #0 {
bb.a:
  %7 = alloca %struct.FFTXCodeletOptions, align 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %.not = icmp eq i32 %5, 0                       ; 3 uses
  %i.a = select i1 %.not, i32 2, i32 1
  store i32 %i.a, ptr %7, align 4, !tbaa !36
  %i.b = load float, ptr %6, align 4, !tbaa !24   ; 2 uses
  %i.c = fpext nsz float %i.b to double
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  store double %i.c, ptr %i.d, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 140
  store float %i.b, ptr %i.e, align 4, !tbaa !39
  %i.f = and i64 %2, 6917529027641081854          ; 2 uses
  %i.g = or disjoint i64 %i.f, 2305843009213693953
  %i.h = ashr i32 %4, 1                           ; 5 uses
  %i.i = call i32 @ff_tx_init_subtx(ptr noundef %0, i32 noundef 0, i64 noundef %i.g, ptr noundef nonnull %7, i32 noundef %i.h, i32 noundef %5, ptr noundef nonnull %6) #16
  %.not48 = icmp eq i32 %i.i, 0
  br i1 %.not48, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = or disjoint i64 %i.f, 1
  %i.k = call i32 @ff_tx_init_subtx(ptr noundef nonnull %0, i32 noundef 0, i64 noundef %i.j, ptr noundef nonnull %7, i32 noundef %i.h, i32 noundef %5, ptr noundef nonnull %6) #16 ; 2 uses
  %.not49 = icmp eq i32 %i.k, 0
  br i1 %.not49, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = sext i32 %i.h to i64
  %i.m = shl nsw i64 %i.l, 2                      ; 2 uses
  %i.n = call noalias ptr @av_malloc(i64 noundef %i.m) #16 ; 5 uses
end_hunk_1
begin_hunk_2_@ff_tx_mdct_pfa_15xM_inv_float_c:bb.a
  %i.lq = load float, ptr %i.lo, align 4, !tbaa !29
  %i.lr = load <2 x float>, ptr %i.ln, align 4, !tbaa !24 ; 2 uses
  %i.ls = fneg nsz float %i.lq
  %i.lt = insertelement <2 x float> poison, float %i.lm, i64 0
  %i.lu = shufflevector <2 x float> %i.lt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lv = shufflevector <2 x float> %i.lr, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.lw = insertelement <2 x float> %i.lv, float %i.ls, i64 0
  %i.lx = fmul nsz <2 x float> %i.lu, %i.lw
  %i.ly = insertelement <2 x float> poison, float %i.li, i64 0
  %i.lz = shufflevector <2 x float> %i.ly, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ma = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lz, <2 x float> %i.lr, <2 x float> %i.lx)
  store <2 x float> %i.ma, ptr %i.lp, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 15
  br i1 %exitcond.not, label %fft15.exit, label %bb.b, !llvm.loop !118

.lr.ph:                                           ; preds = %.preheader126
  %i.mb = load ptr, ptr %i.ap, align 8, !tbaa !31 ; 2 uses
  %i.mc = zext nneg i32 %i.d to i64               ; 2 uses
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %.preheader126
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv145 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next146, %bb.c ] ; 3 uses
  %i.md = add nuw nsw i64 %indvars.iv145, %i.mc   ; 3 uses
  %i.me = xor i64 %indvars.iv145, -1
  %i.mf = add nsw i64 %i.mc, %i.me                ; 3 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.md
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !12
  %i.mi = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.mf
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !12
  %i.mk = sext i32 %i.mj to i64
  %i.ml = getelementptr inbounds [8 x i8], ptr %i.mb, i64 %i.mk ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 4
  %i.mn = load float, ptr %i.mm, align 4, !tbaa !29 ; 2 uses
  %i.mo = load float, ptr %i.ml, align 4, !tbaa !28 ; 2 uses
  %i.mp = sext i32 %i.mh to i64
  %i.mq = getelementptr inbounds [8 x i8], ptr %i.mb, i64 %i.mp ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 4
  %i.ms = load float, ptr %i.mr, align 4, !tbaa !29 ; 2 uses
  %i.mt = load float, ptr %i.mq, align 4, !tbaa !28 ; 2 uses
  %i.mu = getelementptr inbounds [8 x i8], ptr %.0.lcssa, i64 %i.mf ; 3 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 4
  %i.mw = load float, ptr %i.mv, align 4, !tbaa !29 ; 2 uses
  %i.mx = load float, ptr %i.mu, align 4, !tbaa !28
  %i.my = fneg nsz float %i.mx
  %i.mz = fmul nsz float %i.mo, %i.my
  %i.na = tail call nsz float @llvm.fmuladd.f32(float %i.mn, float %i.mw, float %i.mz)
  %i.nb = getelementptr inbounds [8 x i8], ptr %1, i64 %i.mf ; 2 uses
  store float %i.na, ptr %i.nb, align 4, !tbaa !28
  %i.nc = load float, ptr %i.mu, align 4, !tbaa !28
  %i.nd = fmul nsz float %i.mo, %i.mw
  %i.ne = tail call nsz float @llvm.fmuladd.f32(float %i.mn, float %i.nc, float %i.nd)
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.md ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 4
  store float %i.ne, ptr %i.ng, align 4, !tbaa !29
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %.0.lcssa, i64 %i.md ; 3 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 4
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !29 ; 2 uses
  %i.nk = load float, ptr %i.nh, align 4, !tbaa !28
  %i.nl = fneg nsz float %i.nk
  %i.nm = fmul nsz float %i.mt, %i.nl
  %i.nn = tail call nsz float @llvm.fmuladd.f32(float %i.ms, float %i.nj, float %i.nm)
  store float %i.nn, ptr %i.nf, align 4, !tbaa !28
  %i.no = load float, ptr %i.nh, align 4, !tbaa !28
  %i.np = fmul nsz float %i.mt, %i.nj
  %i.nq = tail call nsz float @llvm.fmuladd.f32(float %i.ms, float %i.no, float %i.np)
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nb, i64 4
  store float %i.nq, ptr %i.nr, align 4, !tbaa !29
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 2 uses
  %exitcond148.not = icmp eq i64 %indvars.iv.next146, %wide.trip.count
  br i1 %exitcond148.not, label %._crit_edge, label %bb.c, !llvm.loop !119
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ff_tx_mdct_naive_fwd_float_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load double, ptr %i.a, align 8, !tbaa !22
  %i.c = load i32, ptr %0, align 8, !tbaa !21     ; 5 uses
  %i.d = sitofp nsz i32 %i.c to double
  %i.e = fmul nnan nsz double %i.d, 4.000000e+00
  %i.f = fdiv nnan nsz double f0x400921FB54442D18, %i.e ; 2 uses
  %i.g = lshr i64 %3, 2
  %i.h = icmp sgt i32 %i.c, 0
  br i1 %i.h, label %.preheader.us.preheader, label %._crit_edge30

.preheader.us.preheader:                          ; preds = %bb.a
  %i.i = shl nuw i32 %i.c, 1
  %i.j = add nuw i32 %i.c, 1                      ; 2 uses
  %wide.trip.count36 = zext nneg i32 %i.c to i64
  %wide.trip.count = zext i32 %i.i to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv33 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next34, %._crit_edge.us ] ; 3 uses
  %indvars.iv33.tr = trunc i64 %indvars.iv33 to i32
  %i.k = shl i32 %indvars.iv33.tr, 1
  %i.l = or disjoint i32 %i.k, 1                  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.us
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.1, %bb.b ] ; 4 uses
  %.02427.us = phi double [ 0.000000e+00, %.preheader.us ], [ %i.af, %bb.b ]
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.m = shl nuw i32 %indvars.iv.tr, 1
  %i.n = add i32 %i.j, %i.m
  %i.o = mul nsw i32 %i.n, %i.l
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.q = load float, ptr %i.p, align 4, !tbaa !24
  %i.r = fpext nsz float %i.q to double
  %i.s = sitofp nsz i32 %i.o to double
  %i.t = fmul nsz double %i.f, %i.s
  %i.u = tail call nsz double @llvm.cos.f64(double %i.t)
  %i.v = tail call nsz double @llvm.fmuladd.f64(double %i.r, double %i.u, double %.02427.us)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.tr.1 = trunc nuw i64 %indvars.iv.next to i32
  %i.w = shl nuw i32 %indvars.iv.tr.1, 1
  %i.x = add i32 %i.j, %i.w
  %i.y = mul nsw i32 %i.x, %i.l
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.aa = load float, ptr %i.z, align 4, !tbaa !24
  %i.ab = fpext nsz float %i.aa to double
  %i.ac = sitofp nsz i32 %i.y to double
  %i.ad = fmul nsz double %i.f, %i.ac
  %i.ae = tail call nsz double @llvm.cos.f64(double %i.ad)
  %i.af = tail call nsz double @llvm.fmuladd.f64(double %i.ab, double %i.ae, double %i.v) ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge.us, label %bb.b, !llvm.loop !120

._crit_edge.us:                                   ; preds = %bb.b
  %i.ag = fmul nsz double %i.b, %i.af
  %i.ah = fptrunc nsz double %i.ag to float
  %i.ai = mul nuw nsw i64 %i.g, %indvars.iv33
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ai
  store float %i.ah, ptr %i.aj, align 4, !tbaa !24
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1 ; 2 uses
  %exitcond37.not = icmp eq i64 %indvars.iv.next34, %wide.trip.count36
  br i1 %exitcond37.not, label %._crit_edge30, label %.preheader.us, !llvm.loop !121

._crit_edge30:                                    ; preds = %._crit_edge.us, %bb.a
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @ff_tx_mdct_naive_init_float_c(ptr nofree noundef writeonly captures(none) initializes((140, 152)) %0, ptr nofree readnone captures(none) %1, i64 %2, ptr nofree readnone captures(none) %3, i32 %4, i32 %5, ptr nofree noundef readonly captures(none) %6) #13 {
bb.a:
  %i.a = load float, ptr %6, align 4, !tbaa !24   ; 2 uses
  %i.b = fpext nsz float %i.a to double
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  store double %i.b, ptr %i.c, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 140
  store float %i.a, ptr %i.d, align 4, !tbaa !39
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ff_tx_mdct_naive_inv_float_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load double, ptr %i.a, align 8, !tbaa !22 ; 2 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.d = ashr i32 %i.c, 1                         ; 3 uses
  %i.e = lshr i64 %3, 2
  %i.f = icmp sgt i32 %i.d, 0
  br i1 %i.f, label %.lr.ph.us.preheader, label %._crit_edge52

.lr.ph.us.preheader:                              ; preds = %bb.a
  %i.g = and i32 %i.c, -2                         ; 3 uses
  %i.h = sitofp nsz i32 %i.g to double
  %i.i = fmul nnan nsz double %i.h, 4.000000e+00
  %i.j = fdiv nnan nsz double f0x400921FB54442D18, %i.i
  %i.k = shl nuw nsw i32 %i.d, 2
  %i.l = mul nsw i32 %i.g, 3
  %invariant.op = or disjoint i32 %i.l, 1
  %i.m = zext nneg i32 %i.d to i64                ; 2 uses
  %wide.trip.count59 = zext nneg i32 %i.g to i64
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.m
  %i.n = insertelement <2 x double> poison, double %i.j, i64 0
  %i.o = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv61 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next62, %._crit_edge.us ] ; 4 uses
  %i.p = shl nuw nsw i64 %indvars.iv61, 1         ; 2 uses
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = xor i32 %i.q, -1
  %i.s = add nsw i32 %i.k, %i.r
  %i.t = trunc i64 %i.p to i32
  %i.u = add i32 %invariant.op, %i.t
  %i.v = insertelement <2 x i32> poison, i32 %i.u, i64 0
  %i.w = insertelement <2 x i32> %i.v, i32 %i.s, i64 1
  %i.x = sitofp nsz <2 x i32> %i.w to <2 x double>
  %i.y = fmul nnan nsz <2 x double> %i.o, %i.x
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.b
  %indvars.iv56 = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next57, %bb.b ] ; 3 uses
  %i.z = phi <2 x double> [ zeroinitializer, %.lr.ph.us ], [ %i.an, %bb.b ]
  %indvars.iv56.tr = trunc i64 %indvars.iv56 to i32
  %i.aa = shl i32 %indvars.iv56.tr, 1
  %i.ab = or disjoint i32 %i.aa, 1
  %i.ac = uitofp nsz nneg i32 %i.ab to double
  %i.ad = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.ae = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer
  %i.af = fmul nnan nsz <2 x double> %i.y, %i.ae
  %i.ag = tail call nsz <2 x double> @llvm.cos.v2f64(<2 x double> %i.af)
  %i.ah = mul nuw nsw i64 %i.e, %indvars.iv56
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ah
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !24
  %i.ak = fpext nsz float %i.aj to double
  %i.al = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer
  %i.an = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ag, <2 x double> %i.am, <2 x double> %i.z) ; 3 uses
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %exitcond60.not = icmp eq i64 %indvars.iv.next57, %wide.trip.count59
  br i1 %exitcond60.not, label %._crit_edge.us, label %bb.b, !llvm.loop !122

._crit_edge.us:                                   ; preds = %bb.b
  %i.ao = extractelement <2 x double> %i.an, i64 1
  %i.ap = fmul nsz double %i.b, %i.ao
  %i.aq = fptrunc nsz double %i.ap to float
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv61
  store float %i.aq, ptr %i.ar, align 4, !tbaa !24
  %i.as = extractelement <2 x double> %i.an, i64 0
  %i.at = fneg nsz double %i.as
  %i.au = fmul nsz double %i.b, %i.at
  %i.av = fptrunc nsz double %i.au to float
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv61
  store float %i.av, ptr %gep, align 4, !tbaa !24
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %exitcond66.not = icmp eq i64 %indvars.iv.next62, %i.m
  br i1 %exitcond66.not, label %._crit_edge52, label %.lr.ph.us, !llvm.loop !123

._crit_edge52:                                    ; preds = %._crit_edge.us, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_inv_full_float_c(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #3 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.b = shl i32 %i.a, 1                          ; 2 uses
  %i.c = ashr i32 %i.b, 2                         ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.h = sext i32 %i.c to i64
  %i.i = getelementptr inbounds [4 x i8], ptr %1, i64 %i.h
  tail call void %i.e(ptr noundef %i.g, ptr noundef %i.i, ptr noundef %2, i64 noundef %3) #16
  %i.j = lshr i64 %3, 2                           ; 4 uses
  %i.k = icmp sgt i32 %i.c, 0
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.l = and i32 %i.a, 2147483647
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %i.n = xor i64 %indvars.iv, -1                  ; 2 uses
  %i.o = add nsw i64 %i.m, %i.n
  %i.p = mul nsw i64 %i.j, %i.o
  %i.q = getelementptr inbounds [4 x i8], ptr %1, i64 %i.p
  %i.r = load float, ptr %i.q, align 4, !tbaa !24
  %i.s = fneg nsz float %i.r
  %i.t = mul nuw nsw i64 %i.j, %indvars.iv
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.t
  store float %i.s, ptr %i.u, align 4, !tbaa !24
  %i.v = add nuw nsw i64 %indvars.iv, %i.m
  %i.w = mul nuw nsw i64 %i.j, %i.v
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.w
  %i.y = load float, ptr %i.x, align 4, !tbaa !24
  %i.z = trunc nsw i64 %i.n to i32
  %i.aa = add i32 %i.b, %i.z
  %i.ab = sext i32 %i.aa to i64
  %i.ac = mul nsw i64 %i.j, %i.ab
  %i.ad = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ac
  store float %i.y, ptr %i.ad, align 4, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !124
}

; Function Attrs: cold nounwind optsize uwtable
define internal i32 @ff_tx_mdct_inv_full_init_float_c(ptr noundef initializes((140, 152)) %0, ptr nofree readnone captures(none) %1, i64 noundef %2, ptr nofree readnone captures(none) %3, i32 noundef %4, i32 %5, ptr noundef %6) #0 {
bb.a:
  %i.a = load float, ptr %6, align 4, !tbaa !24   ; 2 uses
  %i.b = fpext nsz float %i.a to double
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  store double %i.b, ptr %i.c, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 140
  store float %i.a, ptr %i.d, align 4, !tbaa !39
  %i.e = and i64 %2, -5
  %i.f = tail call i32 @ff_tx_init_subtx(ptr noundef %0, i32 noundef 1, i64 noundef %i.e, ptr noundef null, i32 noundef %4, i32 noundef 1, ptr noundef nonnull %6) #16
  ret i32 %i.f
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_rdft_r2c_float_c(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 %3) #3 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.b = ashr i32 %i.a, 1                         ; 2 uses
  %i.c = ashr i32 %i.a, 2                         ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23   ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.g = sext i32 %i.c to i64                     ; 2 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !32
  tail call void %i.j(ptr noundef %i.l, ptr noundef %1, ptr noundef %2, i64 noundef 8) #16
  %i.m = load float, ptr %1, align 4, !tbaa !28   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !29 ; 2 uses
  %i.p = fadd nsz float %i.m, %i.o                ; 2 uses
  store float %i.p, ptr %1, align 4, !tbaa !28
  %i.q = fsub nsz float %i.m, %i.o                ; 2 uses
  store float %i.q, ptr %i.n, align 4, !tbaa !29
  %i.r = load float, ptr %i.e, align 4, !tbaa !24
  %i.s = fmul nsz float %i.p, %i.r
  store float %i.s, ptr %1, align 4, !tbaa !28
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.u = load float, ptr %i.t, align 4, !tbaa !24
  %i.v = fmul nsz float %i.q, %i.u
  store float %i.v, ptr %i.n, align 4, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.x = load float, ptr %i.w, align 4, !tbaa !24
  %i.y = getelementptr inbounds [8 x i8], ptr %1, i64 %i.g ; 3 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !28
  %i.aa = fmul nsz float %i.x, %i.z
  store float %i.aa, ptr %i.y, align 4, !tbaa !28
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !29
  %i.af = fmul nsz float %i.ac, %i.ae
  store float %i.af, ptr %i.ad, align 4, !tbaa !29
  %i.ag = icmp sgt i32 %i.c, 1
  br i1 %i.ag, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre = sext i32 %i.b to i64
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.aj = sext i32 %i.b to i64                    ; 2 uses
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.aj, %bb.b ]
  %i.ak = load float, ptr %i.n, align 4, !tbaa !29
  %i.al = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi
  %i.am = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ak, i64 0
  store <2 x float> %i.am, ptr %i.al, align 4, !tbaa !24
  store float 0.000000e+00, ptr %i.n, align 4, !tbaa !29
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 5 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.ao = sub nsw i64 %i.aj, %indvars.iv
  %i.ap = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !24 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.at = load float, ptr %i.as, align 4, !tbaa !24 ; 2 uses
  %i.au = fneg nsz float %i.at
  %i.av = load <2 x float>, ptr %i.ah, align 4, !tbaa !24
  %i.aw = load <2 x float>, ptr %i.an, align 4, !tbaa !24 ; 2 uses
  %i.ax = load <2 x float>, ptr %i.ap, align 4, !tbaa !24 ; 2 uses
  %i.ay = fadd nsz <2 x float> %i.aw, %i.ax       ; 2 uses
  %i.az = fsub nsz <2 x float> %i.aw, %i.ax       ; 2 uses
  %i.ba = shufflevector <2 x float> %i.ay, <2 x float> %i.az, <2 x i32> <i32 0, i32 3>
  %i.bb = fmul nsz <2 x float> %i.av, %i.ba       ; 4 uses
  %i.bc = load <2 x float>, ptr %i.ai, align 4, !tbaa !24
  %i.bd = shufflevector <2 x float> %i.ay, <2 x float> %i.az, <2 x i32> <i32 1, i32 2>
  %i.be = fmul nsz <2 x float> %i.bc, %i.bd       ; 2 uses
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bg = insertelement <2 x float> poison, float %i.au, i64 0
  %i.bh = insertelement <2 x float> %i.bg, float %i.ar, i64 1
  %i.bi = fmul nsz <2 x float> %i.bf, %i.bh
  %i.bj = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bk = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.bl = insertelement <2 x float> %i.bk, float %i.at, i64 1
  %i.bm = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bj, <2 x float> %i.bl, <2 x float> %i.bi) ; 4 uses
  %i.bn = fadd nsz <2 x float> %i.bm, %i.bb
  %i.bo = fsub nsz <2 x float> %i.bm, %i.bb
  %i.bp = shufflevector <2 x float> %i.bn, <2 x float> %i.bo, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.bp, ptr %i.an, align 4, !tbaa !24
  %i.bq = fsub nsz <2 x float> %i.bb, %i.bm
  %i.br = fadd nsz <2 x float> %i.bb, %i.bm
  %i.bs = shufflevector <2 x float> %i.bq, <2 x float> %i.br, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.bs, ptr %i.ap, align 4, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !125
}

; Function Attrs: cold nounwind optsize uwtable
define internal i32 @ff_tx_rdft_init_float_c(ptr noundef initializes((140, 152)) %0, ptr nofree readnone captures(none) %1, i64 noundef %2, ptr nofree readnone captures(none) %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) #0 {
bb.a:
  %i.a = and i64 %2, 8
  %i.b = add nsw i32 %4, 3
  %i.c = ashr i32 %i.b, 2                         ; 5 uses
  %i.d = load float, ptr %6, align 4, !tbaa !24   ; 2 uses
  %i.e = fpext nsz float %i.d to double
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store double %i.e, ptr %i.f, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  store float %i.d, ptr %i.g, align 4, !tbaa !39
  %i.h = and i64 %2, -25
  %i.i = ashr i32 %4, 1
  %i.j = tail call i32 @ff_tx_init_subtx(ptr noundef %0, i32 noundef 0, i64 noundef %i.h, ptr noundef null, i32 noundef %i.i, i32 noundef %5, ptr noundef nonnull %6) #16 ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.k = shl nsw i32 %i.c, 1
  %i.l = add nsw i32 %i.k, 8
  %i.m = sext i32 %i.l to i64
  %i.n = shl nsw i64 %i.m, 3
  %i.o = tail call noalias ptr @av_mallocz(i64 noundef %i.n) #16 ; 10 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !23
  %.not66 = icmp eq ptr %i.o, null
  br i1 %.not66, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = sitofp nsz i32 %4 to double
  %i.r = fdiv nsz double f0x401921FB54442D18, %i.q ; 2 uses
  %.not67 = icmp eq i32 %5, 0                     ; 4 uses
  %i.s = load double, ptr %i.f, align 8, !tbaa !22 ; 4 uses
  %.pre = fmul nsz double %i.s, 5.000000e-01
  %i.t = fmul nsz double %i.s, 2.000000e+00       ; 2 uses
  %i.u = fmul nsz double %i.t, 5.000000e-01       ; 2 uses
  %.pre-phi = select i1 %.not67, double %.pre, double %i.u
  %i.v = select i1 %.not67, double %i.s, double %i.u
  %i.w = select nsz i1 %.not67, double %i.s, double %i.t ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.y = insertelement <2 x double> poison, double %i.v, i64 0
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aa = fptrunc nsz <2 x double> %i.z to <2 x float>
  store <2 x float> %i.aa, ptr %i.o, align 4, !tbaa !24
  %i.ab = fptrunc nsz double %i.w to float        ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store float %i.ab, ptr %i.x, align 4, !tbaa !24
  %i.ad = fneg nsz float %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store float %i.ad, ptr %i.ac, align 4, !tbaa !24
  %i.af = fptrunc nsz double %.pre-phi to float
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  store float %i.af, ptr %i.ae, align 4, !tbaa !24
  %.not68 = icmp eq i64 %i.a, 0
  br i1 %.not68, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = load float, ptr %i.g, align 4, !tbaa !39
  %i.ai = fdiv nsz float 1.000000e+00, %i.ah
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.aj = fmul nsz double %i.w, -5.000000e-01
  %i.ak = fptrunc nsz double %i.aj to float
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %storemerge = phi float [ %i.ak, %bb.e ], [ %i.ai, %bb.d ]
  %.061 = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store float %storemerge, ptr %i.ag, align 4, !tbaa !24
  %i.al = sitofp nsz i32 %5 to double
  %i.am = fsub nsz double 5.000000e-01, %i.al     ; 2 uses
  %i.an = fneg nsz double %i.am
  %i.ao = insertelement <2 x double> poison, double %i.am, i64 0
  %i.ap = insertelement <2 x double> %i.ao, double %i.an, i64 1
  %i.aq = insertelement <2 x double> poison, double %i.w, i64 0
  %i.ar = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.as = fmul nsz <2 x double> %i.ap, %i.ar
  %i.at = fptrunc nsz <2 x double> %i.as to <2 x float>
  store <2 x float> %i.at, ptr %.061, align 4, !tbaa !24
  %i.au = icmp sgt i32 %i.c, 0
  br i1 %i.au, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  br label %.lr.ph

.lr.ph74:                                         ; preds = %.lr.ph
  %i.aw = zext nneg i32 %i.c to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = select i1 %.not67, i32 -1, i32 1
  %i.ba = sitofp nsz i32 %i.az to double
  br label %bb.g

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.06070 = phi i32 [ %i.bg, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.169 = phi ptr [ %i.bf, %.lr.ph ], [ %i.av, %.lr.ph.preheader ] ; 2 uses
  %i.bb = uitofp nsz nneg i32 %.06070 to double
  %i.bc = fmul nsz double %i.r, %i.bb
  %i.bd = tail call nsz double @llvm.cos.f64(double %i.bc)
  %i.be = fptrunc nsz double %i.bd to float
  %i.bf = getelementptr inbounds nuw i8, ptr %.169, i64 4
  store float %i.be, ptr %.169, align 4, !tbaa !24
  %i.bg = add nuw nsw i32 %.06070, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.bg, %i.c
  br i1 %exitcond.not, label %.lr.ph74, label %.lr.ph, !llvm.loop !126

bb.g:                                             ; preds = %.lr.ph74, %bb.g
  %.072 = phi i32 [ 0, %.lr.ph74 ], [ %i.bq, %bb.g ] ; 2 uses
  %.271 = phi ptr [ %i.ay, %.lr.ph74 ], [ %i.bp, %bb.g ] ; 2 uses
  %i.bh = shl nuw nsw i32 %.072, 2
  %i.bi = sub nsw i32 %4, %i.bh
  %i.bj = sitofp nsz i32 %i.bi to double
  %i.bk = fmul nnan nsz double %i.bj, 2.500000e-01
  %i.bl = fmul nsz double %i.r, %i.bk
  %i.bm = tail call nsz double @llvm.cos.f64(double %i.bl)
  %i.bn = fmul nsz double %i.bm, %i.ba
  %i.bo = fptrunc nsz double %i.bn to float
  %i.bp = getelementptr inbounds nuw i8, ptr %.271, i64 4
  store float %i.bo, ptr %.271, align 4, !tbaa !24
  %i.bq = add nuw nsw i32 %.072, 1                ; 2 uses
  %exitcond75.not = icmp eq i32 %i.bq, %i.c
  br i1 %exitcond75.not, label %.loopexit, label %bb.g, !llvm.loop !127

.loopexit:                                        ; preds = %bb.g, %bb.f, %bb.b, %bb.a
  %.062 = phi i32 [ %i.j, %bb.a ], [ -12, %bb.b ], [ 0, %bb.f ], [ 0, %bb.g ]
  ret i32 %.062
}

declare noalias ptr @av_mallocz(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @ff_tx_rdft_r2r_float_c(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 %3) #3 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !21     ; 5 uses
  %i.b = ashr i32 %i.a, 1                         ; 3 uses
  %i.c = ashr i32 %i.a, 2                         ; 6 uses
  %i.d = add nsw i32 %i.a, 3
  %i.e = ashr i32 %i.d, 2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23   ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.i = sext i32 %i.e to i64
  %i.j = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !32
  tail call void %i.l(ptr noundef %i.n, ptr noundef %1, ptr noundef %2, i64 noundef 8) #16
  %i.o = load float, ptr %1, align 4, !tbaa !28   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.q = load float, ptr %i.p, align 4, !tbaa !29 ; 2 uses
  %i.r = fadd nsz float %i.o, %i.q                ; 2 uses
  store float %i.r, ptr %1, align 4, !tbaa !28
  %i.s = load float, ptr %i.g, align 4, !tbaa !24
  %i.t = fmul nsz float %i.r, %i.s
  store float %i.t, ptr %1, align 4, !tbaa !28
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.v = load float, ptr %i.u, align 4, !tbaa !24
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.x = load float, ptr %i.w, align 4, !tbaa !24
  %i.y = sext i32 %i.c to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %1, i64 %i.y ; 3 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !28
  %i.ab = fmul nsz float %i.x, %i.aa
  store float %i.ab, ptr %i.z, align 4, !tbaa !28
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !29
  %i.ag = fmul nsz float %i.ad, %i.af
  store float %i.ag, ptr %i.ae, align 4, !tbaa !29
  %.not76 = icmp slt i32 %i.c, 1
  br i1 %.not76, label %.preheader.._crit_edge_crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.ak = sext i32 %i.b to i64                    ; 2 uses
  %i.al = zext i32 %i.a to i64                    ; 2 uses
  %i.am = add nuw nsw i32 %i.c, 1
  %wide.trip.count = zext nneg i32 %i.am to i64
  br label %bb.b

.preheader:                                       ; preds = %bb.b
  %.not = icmp eq i32 %i.c, 1
  br i1 %.not, label %.preheader.._crit_edge_crit_edge, label %.lr.ph79.preheader

.preheader.._crit_edge_crit_edge:                 ; preds = %bb.a, %.preheader
  %.pre = sext i32 %i.b to i64
  br label %._crit_edge

.lr.ph79.preheader:                               ; preds = %.preheader
  %i.an = zext nneg i32 %i.a to i64               ; 6 uses
  %i.ao = sext i32 %i.b to i64                    ; 9 uses
  %wide.trip.count85 = zext nneg i32 %i.c to i64  ; 4 uses
  %i.ap = add nsw i64 %wide.trip.count85, -1      ; 2 uses
  %min.iters.check = icmp ult i32 %i.c, 13
  br i1 %min.iters.check, label %.lr.ph79.preheader88, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph79.preheader
  %i.aq = sub nsw i64 %i.al, %i.ak
  %i.ar = shl nsw i64 %i.aq, 2
  %i.as = add nsw i64 %i.ar, -1
  %diff.check = icmp ult i64 %i.as, 31
  br i1 %diff.check, label %.lr.ph79.preheader88, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ap, -8                      ; 3 uses
  %i.at = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = or disjoint i64 %index, 1               ; 2 uses
  %i.av = sub nsw i64 %i.an, %i.au
  %i.aw = getelementptr inbounds [4 x i8], ptr %1, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -12
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 -28
  %wide.load = load <4 x float>, ptr %i.ax, align 4, !tbaa !24
  %wide.load87 = load <4 x float>, ptr %i.ay, align 4, !tbaa !24
  %i.az = sub nsw i64 %i.ao, %i.au
  %i.ba = getelementptr inbounds [4 x i8], ptr %1, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -12
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 -28
  store <4 x float> %wide.load, ptr %i.bb, align 4, !tbaa !24
  store <4 x float> %wide.load87, ptr %i.bc, align 4, !tbaa !24
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !128

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph79.preheader88

.lr.ph79.preheader88:                             ; preds = %vector.memcheck, %.lr.ph79.preheader, %middle.block
  %indvars.iv82.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph79.preheader ], [ %i.at, %middle.block ] ; 4 uses
  %i.be = sub nsw i64 %wide.trip.count85, %indvars.iv82.ph
  %xtraiter = and i64 %i.be, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph79.prol.loopexit, label %.lr.ph79.prol

.lr.ph79.prol:                                    ; preds = %.lr.ph79.preheader88, %.lr.ph79.prol
  %indvars.iv82.prol = phi i64 [ %indvars.iv.next83.prol, %.lr.ph79.prol ], [ %indvars.iv82.ph, %.lr.ph79.preheader88 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph79.prol ], [ 0, %.lr.ph79.preheader88 ]
  %i.bf = sub nsw i64 %i.an, %indvars.iv82.prol
  %i.bg = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bf
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !24
  %i.bi = sub nsw i64 %i.ao, %indvars.iv82.prol
  %i.bj = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bi
  store float %i.bh, ptr %i.bj, align 4, !tbaa !24
  %indvars.iv.next83.prol = add nuw nsw i64 %indvars.iv82.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph79.prol.loopexit, label %.lr.ph79.prol, !llvm.loop !129

.lr.ph79.prol.loopexit:                           ; preds = %.lr.ph79.prol, %.lr.ph79.preheader88
  %indvars.iv82.unr = phi i64 [ %indvars.iv82.ph, %.lr.ph79.preheader88 ], [ %indvars.iv.next83.prol, %.lr.ph79.prol ]
  %i.bk = sub nsw i64 %indvars.iv82.ph, %wide.trip.count85
  %i.bl = icmp ugt i64 %i.bk, -4
  br i1 %i.bl, label %._crit_edge, label %.lr.ph79

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 7 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %.sroa.05.0.copyload = load float, ptr %i.bm, align 4, !tbaa !24 ; 2 uses
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %.sroa.57.0.copyload = load float, ptr %.sroa.57.0..sroa_idx, align 4, !tbaa !24
  %i.bn = sub nsw i64 %i.ak, %indvars.iv
  %i.bo = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bn ; 2 uses
  %.sroa.0.0.copyload = load float, ptr %i.bo, align 4, !tbaa !24 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !24
  %i.bp = load float, ptr %i.ah, align 4, !tbaa !24
  %i.bq = fadd nsz float %.sroa.05.0.copyload, %.sroa.0.0.copyload
  %i.br = fmul nsz float %i.bq, %i.bp             ; 2 uses
  %i.bs = load float, ptr %i.ai, align 4, !tbaa !24
end_hunk_2
