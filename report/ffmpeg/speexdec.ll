Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/speexdec?download=true
inline.NumInlined: 80
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 74
begin_hunk_0_@sb_decode:bb.a
  %indvars.iv.next34.i242 = add nuw nsw i64 %indvars.iv33.i241, 1 ; 3 uses
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv.next34.i242
  %i.sf = load float, ptr %i.se, align 4, !tbaa !82
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv33.i241
  %i.sh = load float, ptr %i.sg, align 4, !tbaa !82
  %i.si = call nsz float @llvm.fmuladd.f32(float %i.sh, float %i.rx, float %i.sf)
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv33.i241
  store float %i.si, ptr %i.sj, align 4, !tbaa !82
  %exitcond37.not.i243 = icmp eq i64 %indvars.iv.next34.i242, %wide.trip.count36.i238
  br i1 %exitcond37.not.i243, label %._crit_edge.us.i244, label %scalar.ph, !llvm.loop !171

._crit_edge.us.i244:                              ; preds = %scalar.ph, %middle.block
  %i.sk = load float, ptr %i.rq, align 4, !tbaa !82
  %i.sl = fmul nsz float %i.sk, %i.rx
  store float %i.sl, ptr %i.rr, align 4, !tbaa !82
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv38.i240
  store float %i.rw, ptr %i.sm, align 4, !tbaa !82
  %indvars.iv.next39.i245 = add nuw nsw i64 %indvars.iv38.i240, 1 ; 2 uses
  %exitcond42.not.i246 = icmp eq i64 %indvars.iv.next39.i245, %wide.trip.count41.i232
  br i1 %exitcond42.not.i246, label %.lr.ph.preheader.i248, label %.lr.ph.us.i239, !llvm.loop !114

.lr.ph29.split.i233:                              ; preds = %.lr.ph29.split.i233, %.lr.ph29.split.i233.preheader.new
  %indvars.iv.i234 = phi i64 [ 0, %.lr.ph29.split.i233.preheader.new ], [ %indvars.iv.next.i235.1, %.lr.ph29.split.i233 ] ; 4 uses
  %niter486 = phi i64 [ 0, %.lr.ph29.split.i233.preheader.new ], [ %niter486.next.1, %.lr.ph29.split.i233 ]
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %indvars.iv.i234
  %i.so = load float, ptr %i.sn, align 4, !tbaa !82
  %i.sp = load float, ptr %i.ft, align 8, !tbaa !82
  %i.sq = fadd nsz float %i.so, %i.sp             ; 2 uses
  %i.sr = fneg nsz float %i.sq
  %i.ss = load float, ptr %i.rq, align 4, !tbaa !82
  %i.st = fmul nsz float %i.ss, %i.sr
  store float %i.st, ptr %i.rr, align 4, !tbaa !82
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv.i234
  store float %i.sq, ptr %i.su, align 4, !tbaa !82
  %indvars.iv.next.i235 = or disjoint i64 %indvars.iv.i234, 1 ; 2 uses
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %indvars.iv.next.i235
  %i.sw = load float, ptr %i.sv, align 4, !tbaa !82
  %i.sx = load float, ptr %i.ft, align 8, !tbaa !82
  %i.sy = fadd nsz float %i.sw, %i.sx             ; 2 uses
  %i.sz = fneg nsz float %i.sy
  %i.ta = load float, ptr %i.rq, align 4, !tbaa !82
  %i.tb = fmul nsz float %i.ta, %i.sz
  store float %i.tb, ptr %i.rr, align 4, !tbaa !82
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv.next.i235
  store float %i.sy, ptr %i.tc, align 4, !tbaa !82
  %indvars.iv.next.i235.1 = add nuw nsw i64 %indvars.iv.i234, 2 ; 2 uses
  %niter486.next.1 = add i64 %niter486, 2         ; 2 uses
  %niter486.ncmp.1 = icmp eq i64 %niter486.next.1, %unroll_iter485
  br i1 %niter486.ncmp.1, label %.lr.ph.preheader.i248.loopexit464.unr-lcssa, label %.lr.ph29.split.i233, !llvm.loop !114

.lr.ph.preheader.i248.loopexit464.unr-lcssa:      ; preds = %.lr.ph29.split.i233
  %lcmp.mod483.not = icmp eq i64 %xtraiter481, 0
  br i1 %lcmp.mod483.not, label %.lr.ph.preheader.i248, label %.lr.ph29.split.i233.epil.preheader

.lr.ph29.split.i233.epil.preheader:               ; preds = %.lr.ph.preheader.i248.loopexit464.unr-lcssa, %.lr.ph29.split.i233.preheader
  %indvars.iv.i234.epil.init = phi i64 [ 0, %.lr.ph29.split.i233.preheader ], [ %indvars.iv.next.i235.1, %.lr.ph.preheader.i248.loopexit464.unr-lcssa ] ; 2 uses
  %lcmp.mod484 = trunc i32 %.pr to i1
  call void @llvm.assume(i1 %lcmp.mod484)
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %indvars.iv.i234.epil.init
  %i.te = load float, ptr %i.td, align 4, !tbaa !82
  %i.tf = load float, ptr %i.ft, align 8, !tbaa !82
  %i.tg = fadd nsz float %i.te, %i.tf             ; 2 uses
  %i.th = fneg nsz float %i.tg
  %i.ti = load float, ptr %i.rq, align 4, !tbaa !82
  %i.tj = fmul nsz float %i.ti, %i.th
  store float %i.tj, ptr %i.rr, align 4, !tbaa !82
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv.i234.epil.init
  store float %i.tg, ptr %i.tk, align 4, !tbaa !82
  br label %.lr.ph.preheader.i248

.lr.ph.preheader.i248:                            ; preds = %.lr.ph29.split.i233.epil.preheader, %.lr.ph.preheader.i248.loopexit464.unr-lcssa, %._crit_edge.us.i244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.fr, ptr noundef nonnull align 16 dereferenceable(320) %i.h, i64 320, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fs, ptr noundef nonnull align 16 dereferenceable(40) %i.g, i64 40, i1 false)
  %xtraiter487 = and i64 %wide.trip.count41.i232, 3 ; 3 uses
  %i.tl = add i32 %.pr, -1
  %i.tm = icmp ult i32 %i.tl, 3
  br i1 %i.tm, label %.lr.ph.i250.epil.preheader, label %.lr.ph.preheader.i248.new

.lr.ph.preheader.i248.new:                        ; preds = %.lr.ph.preheader.i248
  %unroll_iter492 = and i64 %wide.trip.count41.i232, 4294967292
  br label %.lr.ph.i250

.lr.ph.i250:                                      ; preds = %.lr.ph.i250, %.lr.ph.preheader.i248.new
  %indvars.iv.i251 = phi i64 [ 0, %.lr.ph.preheader.i248.new ], [ %indvars.iv.next.i252.3, %.lr.ph.i250 ] ; 5 uses
  %.01012.i = phi float [ 0.000000e+00, %.lr.ph.preheader.i248.new ], [ %i.ub, %.lr.ph.i250 ]
  %niter493 = phi i64 [ 0, %.lr.ph.preheader.i248.new ], [ %niter493.next.3, %.lr.ph.i250 ]
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %indvars.iv.i251
  %i.to = load float, ptr %i.tn, align 4, !tbaa !82 ; 2 uses
  %i.tp = call nsz float @llvm.fmuladd.f32(float %i.to, float %i.to, float %.01012.i)
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %indvars.iv.i251
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 4
  %i.ts = load float, ptr %i.tr, align 4, !tbaa !82 ; 2 uses
  %i.tt = call nsz float @llvm.fmuladd.f32(float %i.ts, float %i.ts, float %i.tp)
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %indvars.iv.i251
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 8
  %i.tw = load float, ptr %i.tv, align 4, !tbaa !82 ; 2 uses
  %i.tx = call nsz float @llvm.fmuladd.f32(float %i.tw, float %i.tw, float %i.tt)
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %indvars.iv.i251
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 12
  %i.ua = load float, ptr %i.tz, align 4, !tbaa !82 ; 2 uses
  %i.ub = call nsz float @llvm.fmuladd.f32(float %i.ua, float %i.ua, float %i.tx) ; 3 uses
  %indvars.iv.next.i252.3 = add nuw nsw i64 %indvars.iv.i251, 4 ; 2 uses
  %niter493.next.3 = add i64 %niter493, 4         ; 2 uses
  %niter493.ncmp.3 = icmp eq i64 %niter493.next.3, %unroll_iter492
  br i1 %niter493.ncmp.3, label %compute_rms.exit.unr-lcssa, label %.lr.ph.i250, !llvm.loop !113

compute_rms.exit.unr-lcssa:                       ; preds = %.lr.ph.i250
  %lcmp.mod489.not = icmp eq i64 %xtraiter487, 0
  br i1 %lcmp.mod489.not, label %compute_rms.exit, label %.lr.ph.i250.epil.preheader

.lr.ph.i250.epil.preheader:                       ; preds = %compute_rms.exit.unr-lcssa, %.lr.ph.preheader.i248
  %indvars.iv.i251.epil.init = phi i64 [ 0, %.lr.ph.preheader.i248 ], [ %indvars.iv.next.i252.3, %compute_rms.exit.unr-lcssa ]
  %.01012.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader.i248 ], [ %i.ub, %compute_rms.exit.unr-lcssa ]
  %lcmp.mod491 = icmp ne i64 %xtraiter487, 0
  call void @llvm.assume(i1 %lcmp.mod491)
  br label %.lr.ph.i250.epil

.lr.ph.i250.epil:                                 ; preds = %.lr.ph.i250.epil, %.lr.ph.i250.epil.preheader
  %indvars.iv.i251.epil = phi i64 [ %indvars.iv.i251.epil.init, %.lr.ph.i250.epil.preheader ], [ %indvars.iv.next.i252.epil, %.lr.ph.i250.epil ] ; 2 uses
  %.01012.i.epil = phi float [ %.01012.i.epil.init, %.lr.ph.i250.epil.preheader ], [ %i.ue, %.lr.ph.i250.epil ]
  %epil.iter488 = phi i64 [ 0, %.lr.ph.i250.epil.preheader ], [ %epil.iter488.next, %.lr.ph.i250.epil ]
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %indvars.iv.i251.epil
  %i.ud = load float, ptr %i.uc, align 4, !tbaa !82 ; 2 uses
  %i.ue = call nsz float @llvm.fmuladd.f32(float %i.ud, float %i.ud, float %.01012.i.epil) ; 2 uses
  %indvars.iv.next.i252.epil = add nuw nsw i64 %indvars.iv.i251.epil, 1
  %epil.iter488.next = add i64 %epil.iter488, 1   ; 2 uses
  %epil.iter488.cmp.not = icmp eq i64 %epil.iter488.next, %xtraiter487
  br i1 %epil.iter488.cmp.not, label %compute_rms.exit, label %.lr.ph.i250.epil, !llvm.loop !172

compute_rms.exit:                                 ; preds = %.lr.ph.i250.epil, %compute_rms.exit.unr-lcssa
  %.lcssa472 = phi float [ %i.ub, %compute_rms.exit.unr-lcssa ], [ %i.ue, %.lr.ph.i250.epil ]
  %i.uf = uitofp nneg i32 %.pr to float
  %i.ug = fdiv nsz float %.lcssa472, %i.uf
  %i.uh = fadd nsz float %i.ug, 1.000000e-01
  %i.ui = call nsz float @llvm.sqrt.f32(float %i.uh)
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %indvars.iv304
  store float %i.ui, ptr %i.uj, align 4, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  %indvars.iv.next305 = add nuw nsw i64 %indvars.iv304, 1 ; 2 uses
  %i.uk = load i32, ptr %i.ff, align 4, !tbaa !73 ; 2 uses
  %i.ul = sext i32 %i.uk to i64
  %i.um = icmp slt i64 %indvars.iv.next305, %i.ul
  br i1 %i.um, label %bb.m, label %._crit_edge281, !llvm.loop !173

bb.ab:                                            ; preds = %bb.h, %bb.c, %bb.b, %._crit_edge281, %iir_mem.exit
  %.0192 = phi i32 [ 0, %._crit_edge281 ], [ -1094995529, %bb.b ], [ %i.ai, %bb.c ], [ 0, %iir_mem.exit ], [ -1094995529, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  ret i32 %.0192
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.exp.f64(double) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #5

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @multicomb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, float noundef %3) unnamed_addr #7 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = alloca [160 x float], align 16           ; 50 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call fastcc void @interp_pitch(ptr noundef %0, ptr noundef %i.c, i32 noundef %2)
  %i.d = icmp sgt i32 %2, 40                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 320
  %i.f = sub nsw i32 0, %2
  %i.g = shl nuw nsw i32 %2, 1
  %.sink = select i1 %i.d, i32 %i.g, i32 %i.f
  call fastcc void @interp_pitch(ptr noundef %0, ptr noundef %i.e, i32 noundef %.sink)
  %i.h = call fastcc float @inner_prod(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 320 ; 3 uses
  %i.j = call fastcc float @inner_prod(ptr noundef nonnull %i.i, ptr noundef nonnull %i.i)
  %i.k = tail call fastcc float @inner_prod(ptr noundef %0, ptr noundef %0)
  %i.l = fadd nsz float %i.k, 1.000000e+00
  %i.m = tail call nsz float @llvm.sqrt.f32(float %i.l)
  %i.n = call fastcc float @inner_prod(ptr noundef nonnull %i.c, ptr noundef %0)
  %i.o = call fastcc float @inner_prod(ptr noundef nonnull %i.i, ptr noundef %0)
  %i.p = insertelement <2 x float> poison, float %i.h, i64 0
  %i.q = insertelement <2 x float> %i.p, float %i.j, i64 1
  %i.r = fadd nsz <2 x float> %i.q, splat (float 1.000000e+03)
  %i.s = tail call nsz <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.r) ; 3 uses
  %i.t = insertelement <2 x float> poison, float %i.m, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.v = fmul nsz <2 x float> %i.s, %i.u
  %i.w = insertelement <2 x float> poison, float %i.n, i64 0
  %i.x = insertelement <2 x float> %i.w, float %i.o, i64 1 ; 2 uses
  %i.y = fcmp nsz ogt <2 x float> %i.x, %i.v
  %i.z = fdiv nsz <2 x float> %i.x, %i.u
  %i.aa = fdiv nsz <2 x float> %i.z, %i.s
  %i.ab = select <2 x i1> %i.y, <2 x float> splat (float 1.000000e+00), <2 x float> %i.aa ; 2 uses
  %i.ac = fdiv nsz <2 x float> %i.u, %i.s         ; 2 uses
  %i.ad = fcmp nsz ogt float %3, 0.000000e+00
  br i1 %i.ad, label %bb.b, label %vector.memcheck

bb.b:                                             ; preds = %bb.a
  %i.ae = tail call nsz float @llvm.fmuladd.f32(float %3, float 4.000000e-01, float 7.000000e-02) ; 2 uses
  %i.af = fadd nsz float %i.ae, -7.000000e-02
  %i.ag = tail call nsz float @llvm.fmuladd.f32(float %i.af, float 1.720000e+00, float 5.000000e-01)
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a, %bb.b
  %.095 = phi nsz float [ %i.ae, %bb.b ], [ 0.000000e+00, %bb.a ]
  %.094 = phi nsz float [ %i.ag, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.ah = fneg nsz <2 x float> %i.ab
  %4 = insertelement <2 x float> poison, float %.094, i64 0
  %i.ai = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = fmul nsz <2 x float> %i.ai, %i.ah
  %i.ak = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aj, <2 x float> %i.ab, <2 x float> splat (float 1.000000e+00))
  %5 = insertelement <2 x float> poison, float %.095, i64 0
  %6 = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.al = tail call nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ak, <2 x float> %6)
  %i.am = fdiv nsz <2 x float> %6, %i.al
  %i.an = insertelement <2 x i1> poison, i1 %i.d, i64 0
  %i.ao = shufflevector <2 x i1> %i.an, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ap = select <2 x i1> %i.ao, <2 x float> <float f0x3F333333, float 3.000000e-01>, <2 x float> splat (float 6.000000e-01)
  %i.aq = fmul nsz <2 x float> %i.ap, %i.am       ; 2 uses
  %foldExtExtBinop = fmul nsz <2 x float> %i.ac, %i.aq ; 2 uses
  %.098 = extractelement <2 x float> %foldExtExtBinop, i64 1 ; 2 uses
  %foldExtExtBinop20 = fmul nsz <2 x float> %i.ac, %i.aq ; 2 uses
  %.099 = extractelement <2 x float> %foldExtExtBinop20, i64 0 ; 2 uses
  %i.ar = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.ar, -32
  br i1 %diff.check, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck
  %broadcast.splat3 = shufflevector <2 x float> %foldExtExtBinop20, <2 x float> poison, <4 x i32> zeroinitializer ; 20 uses
  %broadcast.splat = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 20 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.load = load <4 x float>, ptr %0, align 4, !tbaa !82
  %wide.load4 = load <4 x float>, ptr %i.as, align 4, !tbaa !82
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %wide.load5 = load <4 x float>, ptr %i.c, align 16, !tbaa !82
  %wide.load6 = load <4 x float>, ptr %i.at, align 16, !tbaa !82
  %i.au = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat3, <4 x float> %wide.load5, <4 x float> %wide.load)
  %i.av = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat3, <4 x float> %wide.load6, <4 x float> %wide.load4)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 320
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 336
  %wide.load7 = load <4 x float>, ptr %i.aw, align 16, !tbaa !82
  %wide.load8 = load <4 x float>, ptr %i.ax, align 16, !tbaa !82
  %i.ay = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load7, <4 x float> %i.au)
  %i.az = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load8, <4 x float> %i.av)
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <4 x float> %i.ay, ptr %1, align 4, !tbaa !82
  store <4 x float> %i.az, ptr %i.ba, align 4, !tbaa !82
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %wide.load.1 = load <4 x float>, ptr %i.bb, align 4, !tbaa !82
  %wide.load4.1 = load <4 x float>, ptr %i.bc, align 4, !tbaa !82
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %wide.load5.1 = load <4 x float>, ptr %i.bd, align 16, !tbaa !82
  %wide.load6.1 = load <4 x float>, ptr %i.be, align 16, !tbaa !82
  %i.bf = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat3, <4 x float> %wide.load5.1, <4 x float> %wide.load.1)
  %i.bg = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat3, <4 x float> %wide.load6.1, <4 x float> %wide.load4.1)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 352
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 368
  %wide.load7.1 = load <4 x float>, ptr %i.bh, align 16, !tbaa !82
  %wide.load8.1 = load <4 x float>, ptr %i.bi, align 16, !tbaa !82
  %i.bj = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load7.1, <4 x float> %i.bf)
  %i.bk = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load8.1, <4 x float> %i.bg)
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <4 x float> %i.bj, ptr %i.bl, align 4, !tbaa !82
  store <4 x float> %i.bk, ptr %i.bm, align 4, !tbaa !82
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 80
  %wide.load.2 = load <4 x float>, ptr %i.bn, align 4, !tbaa !82
  %wide.load4.2 = load <4 x float>, ptr %i.bo, align 4, !tbaa !82
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %wide.load5.2 = load <4 x float>, ptr %i.bp, align 16, !tbaa !82
  %wide.load6.2 = load <4 x float>, ptr %i.bq, align 16, !tbaa !82
  %i.br = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat3, <4 x float> %wide.load5.2, <4 x float> %wide.load.2)
  %i.bs = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat3, <4 x float> %wide.load6.2, <4 x float> %wide.load4.2)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 400
  %wide.load7.2 = load <4 x float>, ptr %i.bt, align 16, !tbaa !82
  %wide.load8.2 = load <4 x float>, ptr %i.bu, align 16, !tbaa !82
  %i.bv = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load7.2, <4 x float> %i.br)
  %i.bw = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load8.2, <4 x float> %i.bs)
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <4 x float> %i.bv, ptr %i.bx, align 4, !tbaa !82
  store <4 x float> %i.bw, ptr %i.by, align 4, !tbaa !82
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 112
  %wide.load.3 = load <4 x float>, ptr %i.bz, align 4, !tbaa !82
  %wide.load4.3 = load <4 x float>, ptr %i.ca, align 4, !tbaa !82
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %wide.load5.3 = load <4 x float>, ptr %i.cb, align 16, !tbaa !82
  %wide.load6.3 = load <4 x float>, ptr %i.cc, align 16, !tbaa !82
  %i.cd = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat3, <4 x float> %wide.load5.3, <4 x float> %wide.load.3)
  %i.ce = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat3, <4 x float> %wide.load6.3, <4 x float> %wide.load4.3)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 416
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 432
  %wide.load7.3 = load <4 x float>, ptr %i.cf, align 16, !tbaa !82
  %wide.load8.3 = load <4 x float>, ptr %i.cg, align 16, !tbaa !82
  %i.ch = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load7.3, <4 x float> %i.cd)
  %i.ci = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load8.3, <4 x float> %i.ce)
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 112
  store <4 x float> %i.ch, ptr %i.cj, align 4, !tbaa !82
  store <4 x float> %i.ci, ptr %i.ck, align 4, !tbaa !82
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 144
  %wide.load.4 = load <4 x float>, ptr %i.cl, align 4, !tbaa !82
  %wide.load4.4 = load <4 x float>, ptr %i.cm, align 4, !tbaa !82
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %wide.load5.4 = load <4 x float>, ptr %i.cn, align 16, !tbaa !82
  %wide.load6.4 = load <4 x float>, ptr %i.co, align 16, !tbaa !82
  %i.cp = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat3, <4 x float> %wide.load5.4, <4 x float> %wide.load.4)
  %i.cq = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat3, <4 x float> %wide.load6.4, <4 x float> %wide.load4.4)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 448
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 464
  %wide.load7.4 = load <4 x float>, ptr %i.cr, align 16, !tbaa !82
  %wide.load8.4 = load <4 x float>, ptr %i.cs, align 16, !tbaa !82
  %i.ct = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load7.4, <4 x float> %i.cp)
  %i.cu = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load8.4, <4 x float> %i.cq)
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 144
  store <4 x float> %i.ct, ptr %i.cv, align 4, !tbaa !82
  store <4 x float> %i.cu, ptr %i.cw, align 4, !tbaa !82
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 176
  %wide.load.5 = load <4 x float>, ptr %i.cx, align 4, !tbaa !82
  %wide.load4.5 = load <4 x float>, ptr %i.cy, align 4, !tbaa !82
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.da = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %wide.load5.5 = load <4 x float>, ptr %i.cz, align 16, !tbaa !82
  %wide.load6.5 = load <4 x float>, ptr %i.da, align 16, !tbaa !82
  %i.db = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat3, <4 x float> %wide.load5.5, <4 x float> %wide.load.5)
  %i.dc = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat3, <4 x float> %wide.load6.5, <4 x float> %wide.load4.5)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.c, i64 480
  %i.de = getelementptr inbounds nuw i8, ptr %i.c, i64 496
  %wide.load7.5 = load <4 x float>, ptr %i.dd, align 16, !tbaa !82
  %wide.load8.5 = load <4 x float>, ptr %i.de, align 16, !tbaa !82
  %i.df = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load7.5, <4 x float> %i.db)
  %i.dg = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load8.5, <4 x float> %i.dc)
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 176
  store <4 x float> %i.df, ptr %i.dh, align 4, !tbaa !82
  store <4 x float> %i.dg, ptr %i.di, align 4, !tbaa !82
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 208
  %wide.load.6 = load <4 x float>, ptr %i.dj, align 4, !tbaa !82
  %wide.load4.6 = load <4 x float>, ptr %i.dk, align 4, !tbaa !82
  %i.dl = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.dm = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %wide.load5.6 = load <4 x float>, ptr %i.dl, align 16, !tbaa !82
  %wide.load6.6 = load <4 x float>, ptr %i.dm, align 16, !tbaa !82
  %i.dn = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat3, <4 x float> %wide.load5.6, <4 x float> %wide.load.6)
  %i.do = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat3, <4 x float> %wide.load6.6, <4 x float> %wide.load4.6)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.c, i64 512
  %i.dq = getelementptr inbounds nuw i8, ptr %i.c, i64 528
  %wide.load7.6 = load <4 x float>, ptr %i.dp, align 16, !tbaa !82
  %wide.load8.6 = load <4 x float>, ptr %i.dq, align 16, !tbaa !82
  %i.dr = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load7.6, <4 x float> %i.dn)
  %i.ds = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load8.6, <4 x float> %i.do)
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 208
  store <4 x float> %i.dr, ptr %i.dt, align 4, !tbaa !82
  store <4 x float> %i.ds, ptr %i.du, align 4, !tbaa !82
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 240
  %wide.load.7 = load <4 x float>, ptr %i.dv, align 4, !tbaa !82
  %wide.load4.7 = load <4 x float>, ptr %i.dw, align 4, !tbaa !82
  %i.dx = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.dy = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %wide.load5.7 = load <4 x float>, ptr %i.dx, align 16, !tbaa !82
  %wide.load6.7 = load <4 x float>, ptr %i.dy, align 16, !tbaa !82
  %i.dz = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat3, <4 x float> %wide.load5.7, <4 x float> %wide.load.7)
  %i.ea = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat3, <4 x float> %wide.load6.7, <4 x float> %wide.load4.7)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.c, i64 544
  %i.ec = getelementptr inbounds nuw i8, ptr %i.c, i64 560
  %wide.load7.7 = load <4 x float>, ptr %i.eb, align 16, !tbaa !82
  %wide.load8.7 = load <4 x float>, ptr %i.ec, align 16, !tbaa !82
  %i.ed = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load7.7, <4 x float> %i.dz)
  %i.ee = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load8.7, <4 x float> %i.ea)
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 240
  store <4 x float> %i.ed, ptr %i.ef, align 4, !tbaa !82
  store <4 x float> %i.ee, ptr %i.eg, align 4, !tbaa !82
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 272
  %wide.load.8 = load <4 x float>, ptr %i.eh, align 4, !tbaa !82
  %wide.load4.8 = load <4 x float>, ptr %i.ei, align 4, !tbaa !82
  %i.ej = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.ek = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  %wide.load5.8 = load <4 x float>, ptr %i.ej, align 16, !tbaa !82
  %wide.load6.8 = load <4 x float>, ptr %i.ek, align 16, !tbaa !82
  %i.el = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat3, <4 x float> %wide.load5.8, <4 x float> %wide.load.8)
  %i.em = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat3, <4 x float> %wide.load6.8, <4 x float> %wide.load4.8)
  %i.en = getelementptr inbounds nuw i8, ptr %i.c, i64 576
  %i.eo = getelementptr inbounds nuw i8, ptr %i.c, i64 592
  %wide.load7.8 = load <4 x float>, ptr %i.en, align 16, !tbaa !82
  %wide.load8.8 = load <4 x float>, ptr %i.eo, align 16, !tbaa !82
  %i.ep = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load7.8, <4 x float> %i.el)
  %i.eq = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load8.8, <4 x float> %i.em)
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 272
  store <4 x float> %i.ep, ptr %i.er, align 4, !tbaa !82
  store <4 x float> %i.eq, ptr %i.es, align 4, !tbaa !82
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 304
  %wide.load.9 = load <4 x float>, ptr %i.et, align 4, !tbaa !82
  %wide.load4.9 = load <4 x float>, ptr %i.eu, align 4, !tbaa !82
  %i.ev = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.ew = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  %wide.load5.9 = load <4 x float>, ptr %i.ev, align 16, !tbaa !82
  %wide.load6.9 = load <4 x float>, ptr %i.ew, align 16, !tbaa !82
  %i.ex = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat3, <4 x float> %wide.load5.9, <4 x float> %wide.load.9)
  %i.ey = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat3, <4 x float> %wide.load6.9, <4 x float> %wide.load4.9)
  %i.ez = getelementptr inbounds nuw i8, ptr %i.c, i64 608
  %i.fa = getelementptr inbounds nuw i8, ptr %i.c, i64 624
  %wide.load7.9 = load <4 x float>, ptr %i.ez, align 16, !tbaa !82
  %wide.load8.9 = load <4 x float>, ptr %i.fa, align 16, !tbaa !82
  %i.fb = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load7.9, <4 x float> %i.ex)
  %i.fc = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load8.9, <4 x float> %i.ey)
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 304
  store <4 x float> %i.fb, ptr %i.fd, align 4, !tbaa !82
  store <4 x float> %i.fc, ptr %i.fe, align 4, !tbaa !82
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %scalar.ph, %vector.body
end_hunk_0
