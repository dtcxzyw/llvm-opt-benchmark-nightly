Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/common?download=true
inline.NumInlined: 6727
inline.NumDeleted: 2709
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_Z21common_embd_normalizePKfPfii:bb.a
  %i.ai = fmul float %i.ah, %i.ah
  %i.aj = fpext float %i.ai to double
  %i.ak = fadd double %.243, %i.aj
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = load float, ptr %i.am, align 4, !tbaa !291 ; 2 uses
  %i.ao = fmul float %i.an, %i.an
  %i.ap = fpext float %i.ao to double
  %i.aq = fadd double %i.ak, %i.ap
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load float, ptr %i.as, align 4, !tbaa !291 ; 2 uses
  %i.au = fmul float %i.at, %i.at
  %i.av = fpext float %i.au to double
  %i.aw = fadd double %i.aq, %i.av
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.az = load float, ptr %i.ay, align 4, !tbaa !291 ; 2 uses
  %i.ba = fmul float %i.az, %i.az
  %i.bb = fpext float %i.ba to double
  %i.bc = fadd double %i.aw, %i.bb                ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !1052

._crit_edge53.loopexit.unr-lcssa:                 ; preds = %bb.b
  %lcmp.mod93.not = icmp eq i64 %xtraiter91, 0
  br i1 %lcmp.mod93.not, label %._crit_edge53, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge53.loopexit.unr-lcssa, %.lr.ph52
  %indvars.iv66.epil.init = phi i64 [ 0, %.lr.ph52 ], [ %indvars.iv.next67.1, %._crit_edge53.loopexit.unr-lcssa ]
  %.350.epil.init = phi double [ 0.000000e+00, %.lr.ph52 ], [ %i.bx, %._crit_edge53.loopexit.unr-lcssa ]
  %lcmp.mod95 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod95)
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv66.epil.init
  %i.be = load float, ptr %i.bd, align 4, !tbaa !291
  %i.bf = tail call noundef float @llvm.fabs.f32(float %i.be)
  %i.bg = fpext float %i.bf to double
  %i.bh = tail call noundef double @pow(double noundef %i.bg, double noundef %i.h) #47
  %i.bi = fadd double %.350.epil.init, %i.bh
  br label %._crit_edge53

._crit_edge53:                                    ; preds = %.epil.preheader, %._crit_edge53.loopexit.unr-lcssa, %.preheader
  %.3.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %i.bx, %._crit_edge53.loopexit.unr-lcssa ], [ %i.bi, %.epil.preheader ]
  %i.bj = fdiv double 1.000000e+00, %i.h
  %i.bk = tail call double @pow(double noundef %.3.lcssa, double noundef %i.bj) #47
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph52.new
  %indvars.iv66 = phi i64 [ 0, %.lr.ph52.new ], [ %indvars.iv.next67.1, %bb.b ] ; 3 uses
  %.350 = phi double [ 0.000000e+00, %.lr.ph52.new ], [ %i.bx, %bb.b ]
  %niter97 = phi i64 [ 0, %.lr.ph52.new ], [ %niter97.next.1, %bb.b ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv66
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !291
  %i.bn = tail call noundef float @llvm.fabs.f32(float %i.bm)
  %i.bo = fpext float %i.bn to double
  %i.bp = tail call noundef double @pow(double noundef %i.bo, double noundef %i.h) #47
  %i.bq = fadd double %.350, %i.bp
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv66
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !291
  %i.bu = tail call noundef float @llvm.fabs.f32(float %i.bt)
  %i.bv = fpext float %i.bu to double
  %i.bw = tail call noundef double @pow(double noundef %i.bv, double noundef %i.h) #47
  %i.bx = fadd double %i.bq, %i.bw                ; 3 uses
  %indvars.iv.next67.1 = add nuw nsw i64 %indvars.iv66, 2 ; 2 uses
  %niter97.next.1 = add i64 %niter97, 2           ; 2 uses
  %niter97.ncmp.1 = icmp eq i64 %niter97.next.1, %unroll_iter96
  br i1 %niter97.ncmp.1, label %._crit_edge53.loopexit.unr-lcssa, label %bb.b, !llvm.loop !1053

bb.c:                                             ; preds = %bb.a, %._crit_edge53, %._crit_edge, %._crit_edge48
  %.4 = phi double [ %i.bk, %._crit_edge53 ], [ %i.af, %._crit_edge ], [ %i.o, %._crit_edge48 ], [ 1.000000e+00, %bb.a ] ; 2 uses
  %i.by = fcmp ogt double %.4, 0.000000e+00
  %i.bz = fdiv double 1.000000e+00, %.4
  %i.ca = select i1 %i.by, double %i.bz, double 0.000000e+00
  %i.cb = fptrunc double %i.ca to float           ; 6 uses
  %i.cc = icmp sgt i32 %2, 0
  br i1 %i.cc, label %.lr.ph57.preheader, label %._crit_edge58

.lr.ph57.preheader:                               ; preds = %bb.c
  %wide.trip.count74 = zext nneg i32 %2 to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %2, 8
  %i.cd = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.cd, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph57.preheader80, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph57.preheader
  %n.vec = and i64 %wide.trip.count74, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.cb, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %wide.load = load <4 x float>, ptr %i.ce, align 4, !tbaa !291
  %wide.load79 = load <4 x float>, ptr %i.cf, align 4, !tbaa !291
  %i.cg = fmul <4 x float> %wide.load, %broadcast.splat
  %i.ch = fmul <4 x float> %wide.load79, %broadcast.splat
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store <4 x float> %i.cg, ptr %i.ci, align 4, !tbaa !291
  store <4 x float> %i.ch, ptr %i.cj, align 4, !tbaa !291
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !1054

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count74
  br i1 %cmp.n, label %._crit_edge58, label %.lr.ph57.preheader80

.lr.ph57.preheader80:                             ; preds = %.lr.ph57.preheader, %middle.block
  %indvars.iv71.ph = phi i64 [ 0, %.lr.ph57.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter98 = and i64 %wide.trip.count74, 3     ; 2 uses
  %lcmp.mod99.not = icmp eq i64 %xtraiter98, 0
  br i1 %lcmp.mod99.not, label %.lr.ph57.prol.loopexit, label %.lr.ph57.prol

.lr.ph57.prol:                                    ; preds = %.lr.ph57.preheader80, %.lr.ph57.prol
  %indvars.iv71.prol = phi i64 [ %indvars.iv.next72.prol, %.lr.ph57.prol ], [ %indvars.iv71.ph, %.lr.ph57.preheader80 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph57.prol ], [ 0, %.lr.ph57.preheader80 ]
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv71.prol
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !291
  %i.cn = fmul float %i.cm, %i.cb
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv71.prol
  store float %i.cn, ptr %i.co, align 4, !tbaa !291
  %indvars.iv.next72.prol = add nuw nsw i64 %indvars.iv71.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter98
  br i1 %prol.iter.cmp.not, label %.lr.ph57.prol.loopexit, label %.lr.ph57.prol, !llvm.loop !1055

.lr.ph57.prol.loopexit:                           ; preds = %.lr.ph57.prol, %.lr.ph57.preheader80
  %indvars.iv71.unr = phi i64 [ %indvars.iv71.ph, %.lr.ph57.preheader80 ], [ %indvars.iv.next72.prol, %.lr.ph57.prol ]
  %i.cp = sub nsw i64 %indvars.iv71.ph, %wide.trip.count74
  %i.cq = icmp ugt i64 %i.cp, -4
  br i1 %i.cq, label %._crit_edge58, label %.lr.ph57

._crit_edge58:                                    ; preds = %.lr.ph57.prol.loopexit, %.lr.ph57, %middle.block, %bb.c
  ret void

.lr.ph57:                                         ; preds = %.lr.ph57.prol.loopexit, %.lr.ph57
  %indvars.iv71 = phi i64 [ %indvars.iv.next72.3, %.lr.ph57 ], [ %indvars.iv71.unr, %.lr.ph57.prol.loopexit ] ; 6 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv71
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !291
  %i.ct = fmul float %i.cs, %i.cb
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv71
  store float %i.ct, ptr %i.cu, align 4, !tbaa !291
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next72
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !291
  %i.cx = fmul float %i.cw, %i.cb
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next72
  store float %i.cx, ptr %i.cy, align 4, !tbaa !291
  %indvars.iv.next72.1 = add nuw nsw i64 %indvars.iv71, 2 ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next72.1
  %i.da = load float, ptr %i.cz, align 4, !tbaa !291
  %i.db = fmul float %i.da, %i.cb
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next72.1
  store float %i.db, ptr %i.dc, align 4, !tbaa !291
  %indvars.iv.next72.2 = add nuw nsw i64 %indvars.iv71, 3 ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next72.2
  %i.de = load float, ptr %i.dd, align 4, !tbaa !291
  %i.df = fmul float %i.de, %i.cb
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next72.2
  store float %i.df, ptr %i.dg, align 4, !tbaa !291
  %indvars.iv.next72.3 = add nuw nsw i64 %indvars.iv71, 4 ; 2 uses
  %exitcond75.not.3 = icmp eq i64 %indvars.iv.next72.3, %wide.trip.count74
  br i1 %exitcond75.not.3, label %._crit_edge58, label %.lr.ph57, !llvm.loop !1056
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #32

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #32

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: read, errnomem: write) uwtable
define noundef float @_Z26common_embd_similarity_cosPKfS0_i(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #33 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.b = icmp eq i32 %2, 1
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.02834.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.y, %._crit_edge.unr-lcssa ]
  %.02933.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %20, %._crit_edge.unr-lcssa ]
  %.03032.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %17, %._crit_edge.unr-lcssa ]
  %lcmp.mod54 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod54)
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.epil.init
  %i.d = load float, ptr %i.c, align 4, !tbaa !291 ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.f = load float, ptr %i.e, align 4, !tbaa !291 ; 3 uses
  %3 = fmul float %i.d, %i.f
  %4 = fpext float %3 to double
  %5 = fadd double %.03032.epil.init, %4
  %6 = fmul float %i.d, %i.d
  %7 = fpext float %6 to double
  %8 = fadd double %.02933.epil.init, %7
  %i.g = fmul float %i.f, %i.f
  %i.h = fpext float %i.g to double
  %i.i = fadd double %.02834.epil.init, %i.h
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa50 = phi double [ %17, %._crit_edge.unr-lcssa ], [ %5, %.lr.ph.epil.preheader ]
  %.lcssa49.a = phi double [ %20, %._crit_edge.unr-lcssa ], [ %8, %.lr.ph.epil.preheader ] ; 2 uses
  %.lcssa = phi double [ %i.y, %._crit_edge.unr-lcssa ], [ %i.i, %.lr.ph.epil.preheader ] ; 2 uses
  %i.j = fcmp oeq double %.lcssa49.a, 0.000000e+00 ; 2 uses
  %i.k = fcmp oeq double %.lcssa, 0.000000e+00    ; 2 uses
  %or.cond = select i1 %i.j, i1 true, i1 %i.k
  br i1 %or.cond, label %._crit_edge.thread, label %bb.b

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %.02834 = phi double [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.y, %.lr.ph ]
  %.02933 = phi double [ 0.000000e+00, %.lr.ph.preheader.new ], [ %20, %.lr.ph ]
  %.03032 = phi double [ 0.000000e+00, %.lr.ph.preheader.new ], [ %17, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.m = load float, ptr %i.l, align 4, !tbaa !291 ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.o = load float, ptr %i.n, align 4, !tbaa !291 ; 3 uses
  %9 = fmul float %i.m, %i.o
  %10 = fpext float %9 to double
  %11 = fadd double %.03032, %10
  %12 = fmul float %i.m, %i.m
  %13 = fpext float %12 to double
  %14 = fadd double %.02933, %13
  %i.p = fmul float %i.o, %i.o
  %i.q = fpext float %i.p to double
  %i.r = fadd double %.02834, %i.q
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  %i.t = load float, ptr %i.s, align 4, !tbaa !291 ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.v = load float, ptr %i.u, align 4, !tbaa !291 ; 3 uses
  %15 = fmul float %i.t, %i.v
  %16 = fpext float %15 to double
  %17 = fadd double %11, %16                      ; 3 uses
  %18 = fmul float %i.t, %i.t
  %19 = fpext float %18 to double
  %20 = fadd double %14, %19                      ; 3 uses
  %i.w = fmul float %i.v, %i.v
  %i.x = fpext float %i.w to double
  %i.y = fadd double %i.r, %i.x                   ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !1057

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %i.z = phi i1 [ %i.k, %._crit_edge ], [ true, %bb.a ]
  %i.aa = phi i1 [ %i.j, %._crit_edge ], [ true, %bb.a ]
  %or.cond3 = select i1 %i.aa, i1 %i.z, i1 false
  %. = select i1 %or.cond3, float 1.000000e+00, float 0.000000e+00
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.ab = tail call double @sqrt(double noundef %.lcssa49.a) #47
  %i.ac = tail call double @sqrt(double noundef %.lcssa) #47
  %i.ad = fmul double %i.ab, %i.ac
  %i.ae = fdiv double %.lcssa50, %i.ad
  %i.af = fptrunc double %i.ae to float
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread, %bb.b
  %.031 = phi float [ %., %._crit_edge.thread ], [ %i.af, %bb.b ]
  ret float %.031
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_Z23common_opt_dataset_initP13llama_contextRKSt6vectorIiSaIiEEl(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @llama_n_ctx(ptr noundef %0)
  %i.b = zext i32 %i.a to i64                     ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !346
  %i.e = load ptr, ptr %1, align 8, !tbaa !308
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2
  %i.j = xor i64 %i.b, -1
  %i.k = add nsw i64 %i.i, %i.j
  %i.l = udiv i64 %i.k, %2                        ; 6 uses
  %i.m = tail call ptr @ggml_opt_dataset_init(i32 noundef 26, i32 noundef 26, i64 noundef %i.b, i64 noundef %i.b, i64 noundef %i.l, i64 noundef 1) ; 3 uses
  %i.n = tail call ptr @ggml_opt_dataset_data(ptr noundef %i.m)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 248
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !341  ; 3 uses
  %i.q = tail call ptr @ggml_opt_dataset_labels(ptr noundef %i.m)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 248
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !341  ; 3 uses
  %i.t = icmp sgt i64 %i.l, 0
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.u = shl nuw nsw i64 %i.b, 2                  ; 6 uses
  %xtraiter = and i64 %i.l, 1
  %i.v = icmp eq i64 %i.l, 1
  br i1 %i.v, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.l, 9223372036854775806
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.026.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ay, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod27 = trunc i64 %i.l to i1
  tail call void @llvm.assume(i1 %lcmp.mod27)
  %i.w = mul nuw nsw i64 %.026.epil.init, %i.b    ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.w
  %i.y = load ptr, ptr %1, align 8, !tbaa !308
  %i.z = mul nsw i64 %.026.epil.init, %2          ; 2 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.x, ptr align 4 %i.aa, i64 %i.u, i1 false)
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.w
  %i.ac = load ptr, ptr %1, align 8, !tbaa !308
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.z
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ab, ptr nonnull align 4 %i.ae, i64 %i.u, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret ptr %i.m

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %.026 = phi i64 [ 0, %.lr.ph.new ], [ %i.ay, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.af = mul nuw nsw i64 %.026, %i.b             ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.af
  %i.ah = load ptr, ptr %1, align 8, !tbaa !308
  %i.ai = mul nsw i64 %.026, %2                   ; 2 uses
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.ai
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ag, ptr align 4 %i.aj, i64 %i.u, i1 false)
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.af
  %i.al = load ptr, ptr %1, align 8, !tbaa !308
  %i.am = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.ai
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ak, ptr nonnull align 4 %i.an, i64 %i.u, i1 false)
  %i.ao = or disjoint i64 %.026, 1                ; 2 uses
  %i.ap = mul nuw nsw i64 %i.ao, %i.b             ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ap
  %i.ar = load ptr, ptr %1, align 8, !tbaa !308
  %i.as = mul nsw i64 %i.ao, %2                   ; 2 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.as
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.aq, ptr nonnull align 4 %i.at, i64 %i.u, i1 false)
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ap
  %i.av = load ptr, ptr %1, align 8, !tbaa !308
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.as
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.au, ptr nonnull align 4 %i.ax, i64 %i.u, i1 false)
  %i.ay = add nuw nsw i64 %.026, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !1058
}

declare i32 @llama_n_ctx(ptr noundef) local_unnamed_addr #1

declare ptr @ggml_opt_dataset_init(i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @ggml_opt_dataset_data(ptr noundef) local_unnamed_addr #1

declare ptr @ggml_opt_dataset_labels(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_Z18common_opt_lr_parsPv(ptr dead_on_unwind noalias writable sret(%struct.ggml_opt_optimizer_params) align 4 %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  tail call void @ggml_opt_get_default_optimizer_params(ptr dead_on_unwind writable sret(%struct.ggml_opt_optimizer_params) align 4 %0, ptr noundef null)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1059
  %i.c = uitofp i32 %i.b to float                 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !347 ; 2 uses
  %i.f = fcmp ugt float %i.e, 0.000000e+00
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load float, ptr %1, align 4, !tbaa !348
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load float, ptr %i.h, align 4, !tbaa !349
  %i.j = fcmp ugt float %i.i, %i.c
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load float, ptr %1, align 4, !tbaa !348
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.m = load float, ptr %i.l, align 4, !tbaa !350
  %i.n = fneg float %i.m
  %mul.i = fmul float %i.c, %i.n
  %exp2f.i = tail call float @exp2f(float %mul.i)
  %i.o = fmul float %i.k, %exp2f.i
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.p = phi float [ %i.g, %bb.b ], [ %i.o, %bb.d ], [ %i.e, %bb.c ] ; 3 uses
  %i.q = tail call noundef i32 @_Z30common_log_get_verbosity_tholdv()
  %i.r = icmp sgt i32 %i.q, 2
  br i1 %i.r, label %bb.f, label %_ZNK6lr_opt6get_lrEf.exit

bb.f:                                             ; preds = %bb.e
  %i.s = tail call noundef ptr @_Z15common_log_mainv()
  %i.t = fpext float %i.c to double
  %i.u = fpext float %i.p to double
  tail call void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.s, i32 noundef 2, ptr noundef nonnull @.str.107, double noundef %i.t, double noundef %i.u)
  br label %_ZNK6lr_opt6get_lrEf.exit

_ZNK6lr_opt6get_lrEf.exit:                        ; preds = %bb.e, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.p, ptr %i.v, align 4, !tbaa !1063
  store float %i.p, ptr %0, align 4, !tbaa !1064
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load float, ptr %i.w, align 4, !tbaa !1065 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.x, ptr %i.y, align 4, !tbaa !1066
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.x, ptr %i.z, align 4, !tbaa !1067
  ret void
}

declare void @ggml_opt_get_default_optimizer_params(ptr dead_on_unwind writable sret(%struct.ggml_opt_optimizer_params) align 4, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef float @_ZNK6lr_opt6get_lrEf(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %0, float noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load float, ptr %i.a, align 4, !tbaa !347 ; 2 uses
  %i.c = fcmp ugt float %i.b, 0.000000e+00
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load float, ptr %0, align 4, !tbaa !348
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !349
  %i.g = fcmp ult float %1, %i.f
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load float, ptr %0, align 4, !tbaa !348
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load float, ptr %i.i, align 4, !tbaa !350
  %i.k = fneg float %i.j
  %mul = fmul float %1, %i.k
  %exp2f = tail call float @exp2f(float %mul)
  %i.l = fmul float %i.h, %exp2f
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.m = phi float [ %i.d, %bb.b ], [ %i.l, %bb.d ], [ %i.b, %bb.c ] ; 2 uses
  %i.n = tail call noundef i32 @_Z30common_log_get_verbosity_tholdv()
  %i.o = icmp sgt i32 %i.n, 2
  br i1 %i.o, label %bb.f, label %bb.g
end_hunk_0
