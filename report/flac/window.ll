Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/window?download=true
inline.NumInlined: 9
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@FLAC__window_triangle:bb.a
  %indvars.iv65.ph = phi i64 [ %i.bf, %.lr.ph51 ], [ %i.bi, %middle.block123 ]
  %i.br = fdiv reassoc nsz arcp float 1.000000e+00, %i.be
  br label %scalar.ph107

scalar.ph93:                                      ; preds = %scalar.ph93.preheader, %scalar.ph93
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %scalar.ph93 ], [ %indvars.iv60.ph, %scalar.ph93.preheader ] ; 3 uses
  %i.bs = trunc nuw nsw i64 %indvars.iv60 to i32
  %i.bt = uitofp nsz nneg i32 %i.bs to float
  %i.bu = fmul reassoc nnan nsz arcp float %i.bt, 2.000000e+00
  %i.bv = fmul reassoc nsz arcp float %i.bu, %i.ab
  %i.bw = getelementptr [4 x i8], ptr %0, i64 %indvars.iv60
  %i.bx = getelementptr i8, ptr %i.bw, i64 -4
  store float %i.bv, ptr %i.bx, align 4, !tbaa !10
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %exitcond64.not = icmp eq i64 %indvars.iv.next61, %wide.trip.count63
  br i1 %exitcond64.not, label %.preheader, label %scalar.ph93, !llvm.loop !41

scalar.ph107:                                     ; preds = %scalar.ph107.preheader, %scalar.ph107
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %scalar.ph107 ], [ %indvars.iv65.ph, %scalar.ph107.preheader ] ; 3 uses
  %i.by = trunc i64 %indvars.iv65 to i32
  %.tr72 = sub i32 %1, %i.by
  %i.bz = shl nuw i32 %.tr72, 1
  %i.ca = add i32 %i.bz, 2
  %i.cb = sitofp reassoc nsz arcp i32 %i.ca to float
  %i.cc = fmul reassoc nsz arcp float %i.cb, %i.br
  %i.cd = getelementptr [4 x i8], ptr %0, i64 %indvars.iv65
  %i.ce = getelementptr i8, ptr %i.cd, i64 -4
  store float %i.cc, ptr %i.ce, align 4, !tbaa !10
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1 ; 2 uses
  %exitcond69.not = icmp eq i64 %indvars.iv.next66, %wide.trip.count68
  br i1 %exitcond69.not, label %.loopexit, label %scalar.ph107, !llvm.loop !42

.loopexit:                                        ; preds = %scalar.ph75, %scalar.ph107, %middle.block90, %middle.block123, %.preheader37, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: write, errnomem: write) uwtable
define hidden void @FLAC__window_tukey(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, float noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = fcmp reassoc nsz arcp ugt float %2, 0.000000e+00
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph.preheader.i, label %FLAC__window_rectangle.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %i.c, align 4, !tbaa !10
  store <4 x float> splat (float 1.000000e+00), ptr %i.d, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.e = icmp eq i64 %index.next, %n.vec
  br i1 %i.e, label %middle.block, label %vector.body, !llvm.loop !43

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %FLAC__window_rectangle.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  store float 1.000000e+00, ptr %i.f, align 4, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %FLAC__window_rectangle.exit, label %.lr.ph.i, !llvm.loop !44

bb.c:                                             ; preds = %bb.a
  %i.g = fcmp reassoc nsz arcp ult float %2, 1.000000e+00
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = icmp sgt i32 %1, 0
  br i1 %i.h, label %.lr.ph.i32, label %FLAC__window_rectangle.exit

.lr.ph.i32:                                       ; preds = %bb.d
  %i.i = add nsw i32 %1, -1
  %i.j = uitofp nneg i32 %i.i to double           ; 3 uses
  %wide.trip.count.i33 = zext nneg i32 %1 to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i33, 1
  %i.k = icmp eq i32 %1, 1
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.i32.new

.lr.ph.i32.new:                                   ; preds = %.lr.ph.i32
  %unroll_iter = and i64 %wide.trip.count.i33, 2147483646
  %i.l = fdiv reassoc nsz arcp double 1.000000e+00, %i.j
  %i.m = fdiv reassoc nsz arcp double 1.000000e+00, %i.j
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i32.new
  %indvars.iv.i34 = phi i64 [ 0, %.lr.ph.i32.new ], [ %indvars.iv.next.i35.1, %bb.e ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i32.new ], [ %niter.next.1, %bb.e ]
  %i.n = trunc nuw nsw i64 %indvars.iv.i34 to i32
  %i.o = uitofp nsz nneg i32 %i.n to double
  %i.p = fmul reassoc nnan nsz arcp double %i.o, f0x401921FB54442D18
  %i.q = fmul reassoc nsz arcp double %i.p, %i.l
  %i.r = fptrunc reassoc nsz arcp double %i.q to float
  %i.s = tail call reassoc nsz arcp float @cosf(float noundef %i.r) #6
  %i.t = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.s, float -5.000000e-01, float 5.000000e-01)
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i34
  store float %i.t, ptr %i.u, align 4, !tbaa !10
  %indvars.iv.next.i35 = or disjoint i64 %indvars.iv.i34, 1 ; 2 uses
  %i.v = trunc nuw nsw i64 %indvars.iv.next.i35 to i32
  %i.w = uitofp nsz nneg i32 %i.v to double
  %i.x = fmul reassoc nnan nsz arcp double %i.w, f0x401921FB54442D18
  %i.y = fmul reassoc nsz arcp double %i.x, %i.m
  %i.z = fptrunc reassoc nsz arcp double %i.y to float
  %i.aa = tail call reassoc nsz arcp float @cosf(float noundef %i.z) #6
  %i.ab = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.aa, float -5.000000e-01, float 5.000000e-01)
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i35
  store float %i.ab, ptr %i.ac, align 4, !tbaa !10
  %indvars.iv.next.i35.1 = add nuw nsw i64 %indvars.iv.i34, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %FLAC__window_rectangle.exit.loopexit99.unr-lcssa, label %bb.e, !llvm.loop !0

bb.f:                                             ; preds = %bb.c
  %i.ad = fcmp reassoc nsz arcp ogt float %2, 0.000000e+00
  %i.ae = fcmp reassoc nsz arcp olt float %2, 1.000000e+00
  %or.cond = and i1 %i.ad, %i.ae
  br i1 %or.cond, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = sitofp reassoc nsz arcp i32 %1 to float
  %i.ag = fmul reassoc nnan nsz arcp float %i.af, 2.500000e-01
  %i.ah = fptosi float %i.ag to i32               ; 4 uses
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  %i.aj = icmp sgt i32 %1, 0
  br i1 %i.aj, label %.lr.ph.preheader.i44, label %FLAC__window_rectangle.exit50

.lr.ph.preheader.i44:                             ; preds = %bb.g
  %wide.trip.count.i45 = zext nneg i32 %1 to i64  ; 3 uses
  %min.iters.check79 = icmp ult i32 %1, 8
  br i1 %min.iters.check79, label %.lr.ph.i46.preheader, label %vector.ph80

vector.ph80:                                      ; preds = %.lr.ph.preheader.i44
  %n.vec81 = and i64 %wide.trip.count.i45, 2147483640 ; 3 uses
  br label %vector.body82

vector.body82:                                    ; preds = %vector.body82, %vector.ph80
  %index83 = phi i64 [ 0, %vector.ph80 ], [ %index.next84, %vector.body82 ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index83 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %i.ak, align 4, !tbaa !10
  store <4 x float> splat (float 1.000000e+00), ptr %i.al, align 4, !tbaa !10
  %index.next84 = add nuw i64 %index83, 8         ; 2 uses
  %i.am = icmp eq i64 %index.next84, %n.vec81
  br i1 %i.am, label %middle.block85, label %vector.body82, !llvm.loop !45

middle.block85:                                   ; preds = %vector.body82
  %cmp.n86 = icmp eq i64 %n.vec81, %wide.trip.count.i45
  br i1 %cmp.n86, label %FLAC__window_rectangle.exit50, label %.lr.ph.i46.preheader

.lr.ph.i46.preheader:                             ; preds = %.lr.ph.preheader.i44, %middle.block85
  %indvars.iv.i47.ph = phi i64 [ 0, %.lr.ph.preheader.i44 ], [ %n.vec81, %middle.block85 ]
  br label %.lr.ph.i46

.lr.ph.i46:                                       ; preds = %.lr.ph.i46.preheader, %.lr.ph.i46
  %indvars.iv.i47 = phi i64 [ %indvars.iv.next.i48, %.lr.ph.i46 ], [ %indvars.iv.i47.ph, %.lr.ph.i46.preheader ] ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i47
  store float 1.000000e+00, ptr %i.an, align 4, !tbaa !10
  %indvars.iv.next.i48 = add nuw nsw i64 %indvars.iv.i47, 1 ; 2 uses
  %exitcond.not.i49 = icmp eq i64 %indvars.iv.next.i48, %wide.trip.count.i45
  br i1 %exitcond.not.i49, label %FLAC__window_rectangle.exit50, label %.lr.ph.i46, !llvm.loop !46

FLAC__window_rectangle.exit50:                    ; preds = %.lr.ph.i46, %middle.block85, %bb.g
  %i.ao = icmp sgt i32 %i.ah, 1
  br i1 %i.ao, label %.preheader52, label %FLAC__window_rectangle.exit

.preheader52:                                     ; preds = %FLAC__window_rectangle.exit50
  %i.ap = uitofp nneg i32 %i.ai to double
  %i.aq = sub i32 %1, %i.ah
  %i.ar = sext i32 %i.aq to i64
  %wide.trip.count = zext nneg i32 %i.ah to i64
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.ar
  %i.as = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = fdiv reassoc nsz arcp <2 x double> splat (double 1.000000e+00), %i.at
  br label %bb.h

bb.h:                                             ; preds = %.preheader52, %bb.h
  %indvars.iv = phi i64 [ 0, %.preheader52 ], [ %indvars.iv.next, %bb.h ] ; 5 uses
  %i.av = trunc nuw nsw i64 %indvars.iv to i32
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.ax = trunc i64 %indvars.iv to i32
  %i.ay = add i32 %i.ai, %i.ax
  %3 = sitofp reassoc nsz arcp i32 %i.ay to double
  %4 = uitofp nsz nneg i32 %i.av to double
  %i.az = insertelement <2 x double> poison, double %4, i64 0
  %i.ba = insertelement <2 x double> %i.az, double %3, i64 1
  %i.bb = fmul reassoc nnan nsz arcp <2 x double> %i.ba, splat (double f0x400921FB54442D18)
  %i.bc = fmul reassoc nsz arcp <2 x double> %i.bb, %i.au
  %i.bd = fptrunc <2 x double> %i.bc to <2 x float> ; 2 uses
  %i.be = extractelement <2 x float> %i.bd, i64 0
  %i.bf = tail call reassoc nsz arcp float @cosf(float noundef %i.be) #6, !inline_history !50
  %i.bg = extractelement <2 x float> %i.bd, i64 1
  %i.bh = tail call reassoc nsz arcp float @cosf(float noundef %i.bg) #6, !inline_history !50
  %i.bi = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bj = insertelement <2 x float> %i.bi, float %i.bh, i64 1
  %i.bk = tail call reassoc nsz arcp <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bj, <2 x float> splat (float -5.000000e-01), <2 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.bl = extractelement <2 x float> %i.bk, i64 0
  store float %i.bl, ptr %i.aw, align 4, !tbaa !10
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.bm = extractelement <2 x float> %i.bk, i64 1
  store float %i.bm, ptr %gep, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %FLAC__window_rectangle.exit, label %bb.h, !llvm.loop !47

bb.i:                                             ; preds = %bb.f
  %i.bn = fmul reassoc nnan nsz arcp float %2, 5.000000e-01
  %i.bo = sitofp reassoc nsz arcp i32 %1 to float
  %i.bp = fmul reassoc nsz arcp float %i.bn, %i.bo
  %i.bq = fptosi float %i.bp to i32               ; 4 uses
  %i.br = add nsw i32 %i.bq, -1                   ; 2 uses
  %i.bs = icmp sgt i32 %1, 0
  br i1 %i.bs, label %.lr.ph.preheader.i37, label %FLAC__window_rectangle.exit43

.lr.ph.preheader.i37:                             ; preds = %bb.i
  %wide.trip.count.i38 = zext nneg i32 %1 to i64  ; 3 uses
  %min.iters.check89 = icmp ult i32 %1, 8
  br i1 %min.iters.check89, label %.lr.ph.i39.preheader, label %vector.ph90

vector.ph90:                                      ; preds = %.lr.ph.preheader.i37
  %n.vec91 = and i64 %wide.trip.count.i38, 2147483640 ; 3 uses
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph90
  %index93 = phi i64 [ 0, %vector.ph90 ], [ %index.next94, %vector.body92 ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index93 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %i.bt, align 4, !tbaa !10
  store <4 x float> splat (float 1.000000e+00), ptr %i.bu, align 4, !tbaa !10
  %index.next94 = add nuw i64 %index93, 8         ; 2 uses
  %i.bv = icmp eq i64 %index.next94, %n.vec91
  br i1 %i.bv, label %middle.block95, label %vector.body92, !llvm.loop !48

middle.block95:                                   ; preds = %vector.body92
  %cmp.n96 = icmp eq i64 %n.vec91, %wide.trip.count.i38
  br i1 %cmp.n96, label %FLAC__window_rectangle.exit43, label %.lr.ph.i39.preheader

.lr.ph.i39.preheader:                             ; preds = %.lr.ph.preheader.i37, %middle.block95
  %indvars.iv.i40.ph = phi i64 [ 0, %.lr.ph.preheader.i37 ], [ %n.vec91, %middle.block95 ]
  br label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %.lr.ph.i39.preheader, %.lr.ph.i39
  %indvars.iv.i40 = phi i64 [ %indvars.iv.next.i41, %.lr.ph.i39 ], [ %indvars.iv.i40.ph, %.lr.ph.i39.preheader ] ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i40
  store float 1.000000e+00, ptr %i.bw, align 4, !tbaa !10
  %indvars.iv.next.i41 = add nuw nsw i64 %indvars.iv.i40, 1 ; 2 uses
  %exitcond.not.i42 = icmp eq i64 %indvars.iv.next.i41, %wide.trip.count.i38
  br i1 %exitcond.not.i42, label %FLAC__window_rectangle.exit43, label %.lr.ph.i39, !llvm.loop !49

FLAC__window_rectangle.exit43:                    ; preds = %.lr.ph.i39, %middle.block95, %bb.i
  %i.bx = icmp sgt i32 %i.bq, 1
  br i1 %i.bx, label %.preheader, label %FLAC__window_rectangle.exit

.preheader:                                       ; preds = %FLAC__window_rectangle.exit43
  %i.by = uitofp nneg i32 %i.br to double
  %i.bz = sub i32 %1, %i.bq
  %i.ca = sext i32 %i.bz to i64
  %wide.trip.count65 = zext nneg i32 %i.bq to i64
  %invariant.gep73 = getelementptr [4 x i8], ptr %0, i64 %i.ca
  %i.cb = insertelement <2 x double> poison, double %i.by, i64 0
  %i.cc = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cd = fdiv reassoc nsz arcp <2 x double> splat (double 1.000000e+00), %i.cc
  br label %bb.j

bb.j:                                             ; preds = %.preheader, %bb.j
  %indvars.iv62 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next63, %bb.j ] ; 5 uses
  %i.ce = trunc nuw nsw i64 %indvars.iv62 to i32
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv62
  %i.cg = trunc i64 %indvars.iv62 to i32
  %i.ch = add i32 %i.br, %i.cg
  %5 = sitofp reassoc nsz arcp i32 %i.ch to double
  %6 = uitofp nsz nneg i32 %i.ce to double
  %i.ci = insertelement <2 x double> poison, double %6, i64 0
  %i.cj = insertelement <2 x double> %i.ci, double %5, i64 1
  %i.ck = fmul reassoc nnan nsz arcp <2 x double> %i.cj, splat (double f0x400921FB54442D18)
  %i.cl = fmul reassoc nsz arcp <2 x double> %i.ck, %i.cd
  %i.cm = fptrunc <2 x double> %i.cl to <2 x float> ; 2 uses
  %i.cn = extractelement <2 x float> %i.cm, i64 0
  %i.co = tail call reassoc nsz arcp float @cosf(float noundef %i.cn) #6
  %i.cp = extractelement <2 x float> %i.cm, i64 1
  %i.cq = tail call reassoc nsz arcp float @cosf(float noundef %i.cp) #6
  %i.cr = insertelement <2 x float> poison, float %i.co, i64 0
  %i.cs = insertelement <2 x float> %i.cr, float %i.cq, i64 1
  %i.ct = tail call reassoc nsz arcp <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> splat (float -5.000000e-01), <2 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.cu = extractelement <2 x float> %i.ct, i64 0
  store float %i.cu, ptr %i.cf, align 4, !tbaa !10
  %gep74 = getelementptr [4 x i8], ptr %invariant.gep73, i64 %indvars.iv62
  %i.cv = extractelement <2 x float> %i.ct, i64 1
  store float %i.cv, ptr %gep74, align 4, !tbaa !10
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %exitcond66.not = icmp eq i64 %indvars.iv.next63, %wide.trip.count65
  br i1 %exitcond66.not, label %FLAC__window_rectangle.exit, label %bb.j, !llvm.loop !47

FLAC__window_rectangle.exit.loopexit99.unr-lcssa: ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %FLAC__window_rectangle.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %FLAC__window_rectangle.exit.loopexit99.unr-lcssa, %.lr.ph.i32
  %indvars.iv.i34.epil.init = phi i64 [ 0, %.lr.ph.i32 ], [ %indvars.iv.next.i35.1, %FLAC__window_rectangle.exit.loopexit99.unr-lcssa ] ; 2 uses
  %lcmp.mod101 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod101)
  %i.cw = trunc nuw nsw i64 %indvars.iv.i34.epil.init to i32
  %i.cx = uitofp nsz nneg i32 %i.cw to double
  %i.cy = fmul reassoc nnan nsz arcp double %i.cx, f0x401921FB54442D18
  %i.cz = fdiv reassoc nsz arcp double %i.cy, %i.j
  %i.da = fptrunc reassoc nsz arcp double %i.cz to float
  %i.db = tail call reassoc nsz arcp float @cosf(float noundef %i.da) #6
  %i.dc = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.db, float -5.000000e-01, float 5.000000e-01)
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i34.epil.init
  store float %i.dc, ptr %i.dd, align 4, !tbaa !10
  br label %FLAC__window_rectangle.exit

FLAC__window_rectangle.exit:                      ; preds = %.lr.ph.i, %.epil.preheader, %FLAC__window_rectangle.exit.loopexit99.unr-lcssa, %bb.h, %bb.j, %middle.block, %FLAC__window_rectangle.exit50, %bb.d, %bb.b, %FLAC__window_rectangle.exit43
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: write, errnomem: write) uwtable
define hidden void @FLAC__window_partial_tukey(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = sitofp reassoc nsz arcp i32 %1 to float  ; 2 uses
  %i.b = fmul reassoc nsz arcp float %3, %i.a
  %i.c = fptosi float %i.b to i32                 ; 9 uses
  %i.d = fmul reassoc nsz arcp float %4, %i.a
  %i.e = fptosi float %i.d to i32                 ; 9 uses
  %i.f = sub nsw i32 %i.e, %i.c                   ; 4 uses
  %i.g = fcmp reassoc nsz arcp ugt float %2, 0.000000e+00
  br i1 %i.g, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sitofp reassoc nsz arcp i32 %i.f to float
  %i.i = fmul reassoc nnan nsz arcp float %i.h, 2.500000e-02
  %i.j = fptosi float %i.i to i32                 ; 7 uses
  %invariant.smin = tail call i32 @llvm.smin.i32(i32 %i.c, i32 %1) ; 3 uses
  %i.k = icmp sgt i32 %invariant.smin, 0
  br i1 %i.k, label %.lr.ph.preheader, label %.preheader102

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.l = zext nneg i32 %invariant.smin to i64
  %i.m = shl nuw nsw i64 %i.l, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %i.m, i1 false), !tbaa !10
  br label %.preheader102

.preheader102:                                    ; preds = %.lr.ph.preheader, %bb.b
  %.066.i.lcssa = phi i32 [ 0, %bb.b ], [ %invariant.smin, %.lr.ph.preheader ] ; 3 uses
  %i.n = add nsw i32 %i.j, %i.c
  %invariant.smin104 = tail call i32 @llvm.smin.i32(i32 %i.n, i32 %1) ; 4 uses
  %i.o = icmp slt i32 %.066.i.lcssa, %invariant.smin104
  br i1 %i.o, label %.lr.ph107, label %.preheader101

.lr.ph107:                                        ; preds = %.preheader102
  %i.p = sitofp reassoc nsz arcp i32 %i.j to double ; 3 uses
  %i.q = zext nneg i32 %.066.i.lcssa to i64       ; 4 uses
  %wide.trip.count200 = zext nneg i32 %invariant.smin104 to i64 ; 2 uses
  %i.r = sub nsw i64 %wide.trip.count200, %i.q    ; 3 uses
  %xtraiter = and i64 %i.r, 1
  %i.s = add nsw i64 %wide.trip.count200, -1
  %i.t = icmp eq i64 %i.s, %i.q
  br i1 %i.t, label %.epil.preheader, label %.lr.ph107.new

.lr.ph107.new:                                    ; preds = %.lr.ph107
  %unroll_iter = and i64 %i.r, -2
  %i.u = fdiv reassoc nsz arcp double 1.000000e+00, %i.p
  %i.v = fdiv reassoc nsz arcp double 1.000000e+00, %i.p
  br label %bb.c

.preheader101.loopexit.unr-lcssa:                 ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader101, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader101.loopexit.unr-lcssa, %.lr.ph107
  %indvars.iv.epil.init = phi i64 [ %i.q, %.lr.ph107 ], [ %indvars.iv.next.1, %.preheader101.loopexit.unr-lcssa ]
  %.0.i106.epil.init = phi i32 [ 1, %.lr.ph107 ], [ %i.bf, %.preheader101.loopexit.unr-lcssa ]
  %lcmp.mod338 = trunc i64 %i.r to i1
  tail call void @llvm.assume(i1 %lcmp.mod338)
  %i.w = uitofp nsz nneg i32 %.0.i106.epil.init to double
  %i.x = fmul reassoc nnan nsz arcp double %i.w, f0x400921FB54442D18
  %i.y = fdiv reassoc nsz arcp double %i.x, %i.p
  %i.z = fptrunc reassoc nsz arcp double %i.y to float
  %i.aa = tail call reassoc nsz arcp float @cosf(float noundef %i.z) #6, !inline_history !61
  %i.ab = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.aa, float -5.000000e-01, float 5.000000e-01)
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.epil.init
  store float %i.ab, ptr %i.ac, align 4, !tbaa !10
  br label %.preheader101

.preheader101:                                    ; preds = %.epil.preheader, %.preheader101.loopexit.unr-lcssa, %.preheader102
  %.167.i.lcssa = phi i32 [ %.066.i.lcssa, %.preheader102 ], [ %invariant.smin104, %.preheader101.loopexit.unr-lcssa ], [ %invariant.smin104, %.epil.preheader ] ; 5 uses
  %i.ad = sub nsw i32 %i.e, %i.j
  %invariant.smin109 = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 %1) ; 3 uses
  %i.ae = icmp slt i32 %.167.i.lcssa, %invariant.smin109
  br i1 %i.ae, label %.lr.ph111.preheader, label %.preheader100

.lr.ph111.preheader:                              ; preds = %.preheader101
  %i.af = zext nneg i32 %.167.i.lcssa to i64      ; 3 uses
  %i.ag = xor i32 %.167.i.lcssa, -1
  %i.ah = add i32 %invariant.smin109, %i.ag       ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ah, 7
  br i1 %min.iters.check, label %.lr.ph111.preheader336, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph111.preheader
  %n.vec = and i64 %i.aj, 8589934584              ; 4 uses
  %i.ak = add nuw nsw i64 %n.vec, %i.af
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %gep, align 4, !tbaa !10
  store <4 x float> splat (float 1.000000e+00), ptr %i.al, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !51

middle.block:                                     ; preds = %vector.body
  %i.an = trunc i64 %n.vec to i32
  %i.ao = add i32 %.167.i.lcssa, %i.an
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %.preheader100, label %.lr.ph111.preheader336

.lr.ph111.preheader336:                           ; preds = %.lr.ph111.preheader, %middle.block
  %indvars.iv201.ph = phi i64 [ %i.af, %.lr.ph111.preheader ], [ %i.ak, %middle.block ]
  br label %.lr.ph111

bb.c:                                             ; preds = %bb.c, %.lr.ph107.new
  %indvars.iv = phi i64 [ %i.q, %.lr.ph107.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %.0.i106 = phi i32 [ 1, %.lr.ph107.new ], [ %i.bf, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph107.new ], [ %niter.next.1, %bb.c ]
  %i.ap = uitofp nsz nneg i32 %.0.i106 to double
  %i.aq = fmul reassoc nnan nsz arcp double %i.ap, f0x400921FB54442D18
  %i.ar = fmul reassoc nsz arcp double %i.aq, %i.u
  %i.as = fptrunc reassoc nsz arcp double %i.ar to float
  %i.at = tail call reassoc nsz arcp float @cosf(float noundef %i.as) #6, !inline_history !61
  %i.au = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.at, float -5.000000e-01, float 5.000000e-01)
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store float %i.au, ptr %i.av, align 4, !tbaa !10
  %i.aw = add nuw nsw i32 %.0.i106, 1
  %i.ax = uitofp nsz nneg i32 %i.aw to double
  %i.ay = fmul reassoc nnan nsz arcp double %i.ax, f0x400921FB54442D18
  %i.az = fmul reassoc nsz arcp double %i.ay, %i.v
  %i.ba = fptrunc reassoc nsz arcp double %i.az to float
  %i.bb = tail call reassoc nsz arcp float @cosf(float noundef %i.ba) #6, !inline_history !61
  %i.bc = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.bb, float -5.000000e-01, float 5.000000e-01)
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store float %i.bc, ptr %i.be, align 4, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bf = add nuw nsw i32 %.0.i106, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader101.loopexit.unr-lcssa, label %bb.c, !llvm.loop !52

.preheader100:                                    ; preds = %.lr.ph111, %middle.block, %.preheader101
  %.2.i.lcssa = phi i32 [ %.167.i.lcssa, %.preheader101 ], [ %i.ao, %middle.block ], [ %i.bx, %.lr.ph111 ] ; 5 uses
  %invariant.smin113 = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %1) ; 4 uses
  %i.bg = icmp slt i32 %.2.i.lcssa, %invariant.smin113
  br i1 %i.bg, label %.lr.ph116, label %.preheader98

.lr.ph116:                                        ; preds = %.preheader100
  %i.bh = sitofp reassoc nsz arcp i32 %i.j to double ; 3 uses
  %i.bi = zext nneg i32 %.2.i.lcssa to i64        ; 3 uses
  %i.bj = sub i32 %invariant.smin113, %.2.i.lcssa
  %.neg = add i32 %.2.i.lcssa, 1
  %xtraiter339 = and i32 %i.bj, 1
  %lcmp.mod340.not = icmp eq i32 %xtraiter339, 0
  br i1 %lcmp.mod340.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph116
  %i.bk = sitofp reassoc nsz arcp i32 %i.j to double
  %i.bl = fmul reassoc nnan nsz arcp double %i.bk, f0x400921FB54442D18
  %i.bm = fdiv reassoc nsz arcp double %i.bl, %i.bh
  %i.bn = fptrunc reassoc nsz arcp double %i.bm to float
end_hunk_0
