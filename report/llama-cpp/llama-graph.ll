Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-graph?download=true
inline.NumInlined: 3692
inline.NumDeleted: 1965
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN20llm_graph_input_mean9set_inputEPK12llama_ubatch:bb.a
bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 243, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.12) #27
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !120
  %i.s = tail call zeroext i1 @ggml_backend_buffer_is_host(ptr noundef %i.r)
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 244, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.13) #27
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !559  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 248
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !122  ; 2 uses
  %i.w = mul nuw nsw i64 %i.n, %i.h
  %i.x = tail call i64 @ggml_element_size(ptr noundef %i.t)
  %i.y = mul i64 %i.w, %i.x
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.v, i8 0, i64 %i.y, i1 false)
  %.not.i.i.i.i = icmp eq i32 %i.m, 0             ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit, label %.noexc

.noexc:                                           ; preds = %bb.g
  %i.z = shl nuw nsw i64 %i.n, 3                  ; 2 uses
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #28 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aa, i8 0, i64 %i.z, i1 false), !tbaa !44
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.n
  %i.ac = ptrtoint ptr %i.ab to i64
  br label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit

_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit:            ; preds = %.noexc, %bb.g
  %.sroa.11.0 = phi i64 [ 0, %bb.g ], [ %i.ac, %.noexc ] ; 2 uses
  %.sroa.083.0 = phi ptr [ null, %bb.g ], [ %i.aa, %.noexc ] ; 12 uses
  %.not103 = icmp eq i32 %i.g, 0                  ; 2 uses
  br i1 %.not103, label %._crit_edge92, label %.preheader90.lr.ph

.preheader90.lr.ph:                               ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !135
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 72
  br label %.preheader90

.preheader90:                                     ; preds = %.preheader90.lr.ph, %._crit_edge
  %i.ah = phi i64 [ 0, %.preheader90.lr.ph ], [ %i.be, %._crit_edge ] ; 3 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !106 ; 4 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader90
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !136
  %i.am = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.ah
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !137 ; 3 uses
  %i.ao = load ptr, ptr %i.ag, align 8, !tbaa !138 ; 3 uses
  %i.ap = load i32, ptr %i.i, align 8, !tbaa !558
  %i.aq = zext i32 %i.ap to i64                   ; 3 uses
  %wide.trip.count = zext nneg i32 %i.aj to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ar = icmp eq i32 %i.aj, 1
  br i1 %i.ar, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.i

._crit_edge92:                                    ; preds = %._crit_edge, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
  br i1 %.not.i.i.i.i, label %.preheader89, label %bb.h

bb.h:                                             ; preds = %._crit_edge92
  %i.as = shl nuw nsw i64 %i.n, 2                 ; 2 uses
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #28
          to label %.lr.ph94.preheader unwind label %bb.k ; 8 uses

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod134 = trunc i32 %i.aj to i1
  tail call void @llvm.assume(i1 %lcmp.mod134)
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.epil.init
  %i.av = load i32, ptr %i.au, align 4, !tbaa !106
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !106
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0, i64 %i.az ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !44
  %i.bc = add i64 %i.bb, %i.aq
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !44
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader90
  %i.bd = add nsw i64 %i.ah, %i.k
  %sext = shl i64 %i.bd, 32
  %i.be = ashr exact i64 %sext, 32                ; 2 uses
  %i.bf = icmp slt i64 %i.be, %i.h
  br i1 %i.bf, label %.preheader90, label %._crit_edge92, !llvm.loop !548

bb.i:                                             ; preds = %bb.i, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.i ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !106
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !106
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0, i64 %i.bl ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !44
  %i.bo = add i64 %i.bn, %i.aq
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !44
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !106
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !106
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0, i64 %i.bv ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !44
  %i.by = add i64 %i.bx, %i.aq
  store i64 %i.by, ptr %i.bw, align 8, !tbaa !44
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.i, !llvm.loop !549

.lr.ph94.preheader:                               ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.at, i8 0, i64 %i.as, i1 false), !tbaa !113
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.n
  %i.ca = ptrtoint ptr %i.bz to i64               ; 3 uses
  %xtraiter135 = and i64 %i.n, 1
  %i.cb = icmp eq i32 %i.m, 1
  br i1 %i.cb, label %.lr.ph94.epil.preheader, label %.lr.ph94.preheader.new

.lr.ph94.preheader.new:                           ; preds = %.lr.ph94.preheader
  %unroll_iter138 = and i64 %i.n, 4294967294
  br label %.lr.ph94

.preheader89.loopexit.unr-lcssa:                  ; preds = %bb.o
  %lcmp.mod136.not = icmp eq i64 %xtraiter135, 0
  br i1 %lcmp.mod136.not, label %.preheader89, label %.lr.ph94.epil.preheader

.lr.ph94.epil.preheader:                          ; preds = %.preheader89.loopexit.unr-lcssa, %.lr.ph94.preheader
  %indvars.iv110.epil.init = phi i64 [ 0, %.lr.ph94.preheader ], [ %indvars.iv.next111.1, %.preheader89.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod137 = trunc i32 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod137)
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0, i64 %indvars.iv110.epil.init
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !44 ; 2 uses
  %.not70.epil = icmp eq i64 %i.cd, 0
  br i1 %.not70.epil, label %.preheader89, label %bb.j

bb.j:                                             ; preds = %.lr.ph94.epil.preheader
  %i.ce = uitofp i64 %i.cd to float
  %i.cf = fdiv float 1.000000e+00, %i.ce
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv110.epil.init
  store float %i.cf, ptr %i.cg, align 4, !tbaa !113
  br label %.preheader89

.preheader89:                                     ; preds = %.preheader89.loopexit.unr-lcssa, %bb.j, %.lr.ph94.epil.preheader, %._crit_edge92
  %.sroa.10.0133 = phi i64 [ 0, %._crit_edge92 ], [ %i.ca, %.lr.ph94.epil.preheader ], [ %i.ca, %bb.j ], [ %i.ca, %.preheader89.loopexit.unr-lcssa ]
  %.sroa.079.0132 = phi ptr [ null, %._crit_edge92 ], [ %i.at, %.lr.ph94.epil.preheader ], [ %i.at, %bb.j ], [ %i.at, %.preheader89.loopexit.unr-lcssa ] ; 4 uses
  br i1 %.not103, label %._crit_edge102, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader89
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !135
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.not107 = icmp eq i32 %.fr106, 0
  br i1 %.not107, label %._crit_edge102, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %min.iters.check = icmp ult i32 %.fr106, 8
  %n.vec = and i64 %i.k, 4294967288               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.k
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge101.us
  %i.cl = phi i64 [ %i.db, %._crit_edge101.us ], [ 0, %.preheader.us.preheader ] ; 4 uses
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !106 ; 2 uses
  %i.co = icmp sgt i32 %i.cn, 0
  br i1 %i.co, label %.lr.ph100.us, label %._crit_edge101.us

.lr.ph97.us:                                      ; preds = %.lr.ph100.us, %._crit_edge98.us
  %indvars.iv120 = phi i64 [ 0, %.lr.ph100.us ], [ %indvars.iv.next121, %._crit_edge98.us ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv120
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !106
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !106
  %i.cu = sext i32 %i.ct to i64                   ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.079.0132, i64 %i.cu
  %2 = load float, ptr %i.cv, align 4, !tbaa !113 ; 2 uses
  %3 = mul nsw i64 %i.cu, %i.h
  %gep.us = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %3 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph97.us
  %broadcast.splatinsert = insertelement <4 x float> poison, float %2, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cw = getelementptr [4 x i8], ptr %gep.us, i64 %index ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 16
  store <4 x float> %broadcast.splat, ptr %i.cw, align 4, !tbaa !113
  store <4 x float> %broadcast.splat, ptr %i.cx, align 4, !tbaa !113
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cy = icmp eq i64 %index.next, %n.vec
  br i1 %i.cy, label %middle.block, label %vector.body, !llvm.loop !550

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge98.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph97.us, %middle.block
  %indvars.iv115.ph = phi i64 [ 0, %.lr.ph97.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %scalar.ph ], [ %indvars.iv115.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cz = getelementptr [4 x i8], ptr %gep.us, i64 %indvars.iv115
  store float %2, ptr %i.cz, align 4, !tbaa !113
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %exitcond119.not = icmp eq i64 %indvars.iv.next116, %i.k
  br i1 %exitcond119.not, label %._crit_edge98.us, label %scalar.ph, !llvm.loop !551

._crit_edge101.us:                                ; preds = %._crit_edge98.us, %.preheader.us
  %i.da = add nsw i64 %i.cl, %i.k
  %sext69.us = shl i64 %i.da, 32
  %i.db = ashr exact i64 %sext69.us, 32           ; 2 uses
  %i.dc = icmp slt i64 %i.db, %i.h
  br i1 %i.dc, label %.preheader.us, label %._crit_edge102, !llvm.loop !552

._crit_edge98.us:                                 ; preds = %scalar.ph, %middle.block
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %exitcond124.not = icmp eq i64 %indvars.iv.next121, %wide.trip.count123
  br i1 %exitcond124.not, label %._crit_edge101.us, label %.lr.ph97.us, !llvm.loop !553

.lr.ph100.us:                                     ; preds = %.preheader.us
  %i.dd = load ptr, ptr %i.cj, align 8, !tbaa !136
  %i.de = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.cl
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !137
  %i.dg = load ptr, ptr %i.ck, align 8, !tbaa !138
  %invariant.gep.us = getelementptr [4 x i8], ptr %i.v, i64 %i.cl
  %wide.trip.count123 = zext nneg i32 %i.cn to i64
  br label %.lr.ph97.us

bb.k:                                             ; preds = %bb.h
  %i.dh = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i = icmp eq ptr %.sroa.083.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.di = ptrtoint ptr %.sroa.083.0 to i64
  %i.dj = sub i64 %.sroa.11.0, %i.di
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.083.0, i64 noundef %i.dj) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit

.lr.ph94:                                         ; preds = %bb.o, %.lr.ph94.preheader.new
  %indvars.iv110 = phi i64 [ 0, %.lr.ph94.preheader.new ], [ %indvars.iv.next111.1, %bb.o ] ; 4 uses
  %niter139 = phi i64 [ 0, %.lr.ph94.preheader.new ], [ %niter139.next.1, %bb.o ]
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0, i64 %indvars.iv110
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !44 ; 2 uses
  %.not70 = icmp eq i64 %i.dl, 0
  br i1 %.not70, label %.lr.ph94.1, label %bb.m

bb.m:                                             ; preds = %.lr.ph94
  %i.dm = uitofp i64 %i.dl to float
  %i.dn = fdiv float 1.000000e+00, %i.dm
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv110
  store float %i.dn, ptr %i.do, align 4, !tbaa !113
  br label %.lr.ph94.1

.lr.ph94.1:                                       ; preds = %bb.m, %.lr.ph94
  %indvars.iv.next111 = or disjoint i64 %indvars.iv110, 1 ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0, i64 %indvars.iv.next111
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !44 ; 2 uses
  %.not70.1 = icmp eq i64 %i.dq, 0
  br i1 %.not70.1, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph94.1
  %i.dr = uitofp i64 %i.dq to float
  %i.ds = fdiv float 1.000000e+00, %i.dr
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.next111
  store float %i.ds, ptr %i.dt, align 4, !tbaa !113
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph94.1
  %indvars.iv.next111.1 = add nuw nsw i64 %indvars.iv110, 2 ; 2 uses
  %niter139.next.1 = add i64 %niter139, 2         ; 2 uses
  %niter139.ncmp.1 = icmp eq i64 %niter139.next.1, %unroll_iter138
  br i1 %niter139.ncmp.1, label %.preheader89.loopexit.unr-lcssa, label %.lr.ph94, !llvm.loop !554

._crit_edge102:                                   ; preds = %._crit_edge101.us, %.preheader.lr.ph, %.preheader89
  %.not.i.i.i76 = icmp eq ptr %.sroa.079.0132, null
  br i1 %.not.i.i.i76, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge102
  %i.du = ptrtoint ptr %.sroa.079.0132 to i64
  %i.dv = sub i64 %.sroa.10.0133, %i.du
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.079.0132, i64 noundef %i.dv) #29
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %._crit_edge102, %bb.p
  %.not.i.i.i77 = icmp eq ptr %.sroa.083.0, null
  br i1 %.not.i.i.i77, label %_ZNSt6vectorImSaImEED2Ev.exit78, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.dw = ptrtoint ptr %.sroa.083.0 to i64
  %i.dx = sub i64 %.sroa.11.0, %i.dw
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.083.0, i64 noundef %i.dx) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit78

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.l, %bb.k
  resume { ptr, i32 } %i.dh

_ZNSt6vectorImSaImEED2Ev.exit78:                  ; preds = %bb.q, %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: mustprogress uwtable
define void @_ZN19llm_graph_input_cls9set_inputEPK12llama_ubatch(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(204) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !35   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !134  ; 3 uses
  %i.e = zext i32 %i.d to i64                     ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load i8, ptr %i.f, align 8, !tbaa !564, !range !132, !noundef !133
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %_ZNSt6vectorIiSaIiEED2Ev.exit62

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !565
  %.off = add i32 %i.j, -2
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %bb.c, label %_ZNSt6vectorIiSaIiEED2Ev.exit62

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !566  ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 289, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.14) #27
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !120
  %i.o = tail call zeroext i1 @ggml_backend_buffer_is_host(ptr noundef %i.n)
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 290, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.15) #27
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !566  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 248
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !122  ; 10 uses
  %i.s = tail call i64 @ggml_element_size(ptr noundef %i.p)
  %i.t = mul i64 %i.s, %i.e
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.r, i8 0, i64 %i.t, i1 false)
  %.not.i.i.i.i = icmp eq i32 %i.d, 0             ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit58, label %.noexc

.noexc:                                           ; preds = %bb.g
  %i.u = shl nuw nsw i64 %i.e, 2                  ; 5 uses
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #28 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.v, i8 -1, i64 %i.u, i1 false), !tbaa !106
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #28
          to label %.noexc57 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit ; 3 uses

.noexc57:                                         ; preds = %.noexc
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.e
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.w, i8 -1, i64 %i.u, i1 false), !tbaa !106
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.e
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.x to i64
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit58

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit58:          ; preds = %.noexc57, %bb.g
  %.sroa.069.080 = phi ptr [ null, %bb.g ], [ %i.v, %.noexc57 ] ; 5 uses
  %.sroa.13.078 = phi i64 [ 0, %bb.g ], [ %i.aa, %.noexc57 ]
  %.sroa.063.0 = phi ptr [ null, %bb.g ], [ %i.w, %.noexc57 ] ; 7 uses
  %.sroa.11.0 = phi i64 [ 0, %bb.g ], [ %i.z, %.noexc57 ]
  %i.ab = load i32, ptr %i.i, align 8, !tbaa !565
  switch i32 %i.ab, label %.thread [
    i32 3, label %bb.i
    i32 4, label %bb.h
  ]

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit58
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !140 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 27
  %i.af = icmp eq i32 %i.ad, 30
  %spec.select = or i1 %i.ae, %i.af
  %i.ag = freeze i1 %spec.select
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit58
  %.fr = phi i1 [ true, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit58 ], [ %i.ag, %bb.h ]
  %.not90 = icmp eq i32 %i.b, 0
  br i1 %.not90, label %.preheader, label %.lr.ph86

.thread:                                          ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit58
  %.not90116 = icmp eq i32 %i.b, 0
  br i1 %.not90116, label %.preheader, label %.lr.ph86.thread

.lr.ph86.thread:                                  ; preds = %.thread
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !102
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 48
end_hunk_0
begin_hunk_1_@_ZNK17llm_graph_context13build_moe_ffnEP11ggml_tensorS1_S1_S1_S1_S1_S1_S1_S1_S1_ll15llm_ffn_op_typebf29llama_expert_gating_func_typeiS1_S1_S1_S1_S1_S1_S1_:bb.a
  store i32 %17, ptr %i.l, align 4, !tbaa !106
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yo, i64 24
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !463
  call void %i.yu(ptr noundef nonnull align 8 dereferenceable(32) %i.yo, ptr noundef nonnull align 8 dereferenceable(104) %i.ys, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.l), !inline_history !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit498

_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit498: ; preds = %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i497, %bb.bf, %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit495
  %.not375 = icmp eq ptr %9, null
  br i1 %.not375, label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit501, label %bb.bg

bb.bg:                                            ; preds = %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit498
  %i.yv = load ptr, ptr %i.le, align 8, !tbaa !459
  %i.yw = call ptr @ggml_add_id(ptr noundef %i.yv, ptr noundef %i.yg, ptr noundef nonnull %9, ptr noundef %.1345) ; 3 uses
  %i.yx = load ptr, ptr %i.ft, align 8, !tbaa !461, !nonnull !133, !align !167 ; 3 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 16
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !424
  %.not.i.i.not.i499 = icmp eq ptr %i.yz, null
  br i1 %.not.i.i.not.i499, label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit501, label %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i500

_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i500: ; preds = %bb.bg
  %i.za = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !450, !nonnull !133, !align !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.yw, ptr %i.g, align 8, !tbaa !413
  store ptr @.str.115, ptr %i.h, align 8, !tbaa !462
  store i32 %17, ptr %i.i, align 4, !tbaa !106
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yx, i64 24
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !463
  call void %i.zd(ptr noundef nonnull align 8 dereferenceable(32) %i.yx, ptr noundef nonnull align 8 dereferenceable(104) %i.zb, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i), !inline_history !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit501

_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit501: ; preds = %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i500, %bb.bg, %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit498
  %.0325 = phi ptr [ %i.yg, %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit498 ], [ %i.yw, %bb.bg ], [ %i.yw, %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i500 ] ; 2 uses
  br i1 %i.em, label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit504, label %bb.bh

bb.bh:                                            ; preds = %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit501
  %i.ze = load ptr, ptr %i.le, align 8, !tbaa !459
  %i.zf = call ptr @ggml_mul(ptr noundef %i.ze, ptr noundef %.0325, ptr noundef %.2339) ; 3 uses
  %i.zg = load ptr, ptr %i.ft, align 8, !tbaa !461, !nonnull !133, !align !167 ; 3 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 16
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !424
  %.not.i.i.not.i502 = icmp eq ptr %i.zi, null
  br i1 %.not.i.i.not.i502, label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit504, label %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i503

_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i503: ; preds = %bb.bh
  %i.zj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.zk = load ptr, ptr %i.zj, align 8, !tbaa !450, !nonnull !133, !align !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.zf, ptr %i.d, align 8, !tbaa !413
  store ptr @.str.89, ptr %i.e, align 8, !tbaa !462
  store i32 %17, ptr %i.f, align 4, !tbaa !106
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zg, i64 24
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !463
  call void %i.zm(ptr noundef nonnull align 8 dereferenceable(32) %i.zg, ptr noundef nonnull align 8 dereferenceable(104) %i.zk, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f), !inline_history !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit504

_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit504: ; preds = %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i503, %bb.bh, %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit501
  %.1326 = phi ptr [ %.0325, %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit501 ], [ %i.zf, %bb.bh ], [ %i.zf, %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i503 ] ; 4 uses
  %i.zn = load ptr, ptr %i.ns, align 8, !tbaa !460
  call void @ggml_build_forward_expand(ptr noundef %i.zn, ptr noundef %.1326)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8192) %i.ef, i8 0, i64 8192, i1 false)
  %i.zo = load ptr, ptr %i.gy, align 8, !tbaa !447, !nonnull !133, !align !167
  %i.zp = call noundef i32 @_ZNK13llama_hparams13n_expert_usedEj(ptr noundef nonnull align 8 dereferenceable(36056) %i.zo, i32 noundef %17) ; 4 uses
  %.not517 = icmp eq i32 %i.zp, 0
  br i1 %.not517, label %._crit_edge516.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit504
  %i.zq = getelementptr inbounds nuw i8, ptr %.1326, i64 64
  %i.zr = getelementptr inbounds nuw i8, ptr %.1326, i64 56
  %wide.trip.count = zext i32 %i.zp to i64
  br label %bb.bi

._crit_edge:                                      ; preds = %bb.bi
  %.pre = load ptr, ptr %i.ef, align 16, !tbaa !413 ; 2 uses
  %.not542 = icmp eq i32 %i.zp, 1
  br i1 %.not542, label %._crit_edge516, label %.lr.ph515.preheader

.lr.ph515.preheader:                              ; preds = %._crit_edge
  %wide.trip.count522 = zext i32 %i.zp to i64
  br label %.lr.ph515

bb.bi:                                            ; preds = %.lr.ph, %bb.bi
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bi ] ; 3 uses
  %i.zs = load ptr, ptr %i.le, align 8, !tbaa !459
  %i.zt = load i64, ptr %i.zq, align 8, !tbaa !44
  %i.zu = load i64, ptr %i.zr, align 8, !tbaa !44
  %i.zv = mul i64 %i.zu, %indvars.iv
  %i.zw = call ptr @ggml_view_2d(ptr noundef %i.zs, ptr noundef %.1326, i64 noundef %i.eh, i64 noundef %i.ej, i64 noundef %i.zt, i64 noundef %i.zv) ; 2 uses
  %i.zx = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv
  store ptr %i.zw, ptr %i.zx, align 8, !tbaa !413
  %i.zy = load ptr, ptr %i.ns, align 8, !tbaa !460
  call void @ggml_build_forward_expand(ptr noundef %i.zy, ptr noundef %i.zw)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.bi, !llvm.loop !726

.lr.ph515:                                        ; preds = %.lr.ph515.preheader, %.lr.ph515
  %indvars.iv519 = phi i64 [ 1, %.lr.ph515.preheader ], [ %indvars.iv.next520, %.lr.ph515 ] ; 2 uses
  %.0319512 = phi ptr [ %.pre, %.lr.ph515.preheader ], [ %i.aac, %.lr.ph515 ]
  %i.zz = load ptr, ptr %i.le, align 8, !tbaa !459
  %i.aaa = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv519
  %i.aab = load ptr, ptr %i.aaa, align 8, !tbaa !413
  %i.aac = call ptr @ggml_add(ptr noundef %i.zz, ptr noundef %.0319512, ptr noundef %i.aab) ; 3 uses
  %i.aad = load ptr, ptr %i.ns, align 8, !tbaa !460
  call void @ggml_build_forward_expand(ptr noundef %i.aad, ptr noundef %i.aac)
  %indvars.iv.next520 = add nuw nsw i64 %indvars.iv519, 1 ; 2 uses
  %exitcond523.not = icmp eq i64 %indvars.iv.next520, %wide.trip.count522
  br i1 %exitcond523.not, label %._crit_edge516.thread, label %.lr.ph515, !llvm.loop !727

._crit_edge516:                                   ; preds = %._crit_edge
  %i.aae = load ptr, ptr %i.le, align 8, !tbaa !459
  %i.aaf = call ptr @ggml_cont(ptr noundef %i.aae, ptr noundef %.pre)
  br label %._crit_edge516.thread

._crit_edge516.thread:                            ; preds = %.lr.ph515, %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit504, %._crit_edge516
  %.1 = phi ptr [ %i.aaf, %._crit_edge516 ], [ null, %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit504 ], [ %i.aac, %.lr.ph515 ] ; 2 uses
  %i.aag = load ptr, ptr %i.ft, align 8, !tbaa !461, !nonnull !133, !align !167 ; 3 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 16
  %i.aai = load ptr, ptr %i.aah, align 8, !tbaa !424
  %.not.i.i.not.i505 = icmp eq ptr %i.aai, null
  br i1 %.not.i.i.not.i505, label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit507, label %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i506

_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i506: ; preds = %._crit_edge516.thread
  %i.aaj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aak = load ptr, ptr %i.aaj, align 8, !tbaa !450, !nonnull !133, !align !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.1, ptr %i.a, align 8, !tbaa !413
  store ptr @.str.116, ptr %i.b, align 8, !tbaa !462
  store i32 %17, ptr %i.c, align 4, !tbaa !106
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aag, i64 24
  %i.aam = load ptr, ptr %i.aal, align 8, !tbaa !463
  call void %i.aam(ptr noundef nonnull align 8 dereferenceable(32) %i.aag, ptr noundef nonnull align 8 dereferenceable(104) %i.aak, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c), !inline_history !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit507

_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit507: ; preds = %._crit_edge516.thread, %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef) #30
  ret ptr %.1
}

declare ptr @ggml_soft_max(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ggml_sigmoid(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ggml_sqrt(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ggml_softplus(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ggml_argsort_top_k(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ggml_reshape_4d(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @ggml_sum_rows(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ggml_set_rows(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ggml_fill(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare ptr @ggml_cast(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ggml_build_forward_expand(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ggml_add_id(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ggml_tanh(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ggml_view_2d(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @ggml_cont(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK17llm_graph_context14build_inp_embdEP11ggml_tensor(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(336) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"struct.std::array.236", align 8   ; 13 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !447, !nonnull !133, !align !167
  %i.l = tail call noundef i32 @_ZNK13llama_hparams10n_embd_inpEv(ptr noundef nonnull align 8 dereferenceable(36056) %i.k) ; 2 uses
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !447, !nonnull !133, !align !167
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !446  ; 3 uses
  %i.q = zext i32 %i.p to i64
  %i.r = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28, !noalias !740 ; 11 uses
  %i.s = tail call ptr @getenv(ptr noundef nonnull @.str.162) #30, !noalias !740 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %_ZSt11make_uniqueI20llm_graph_input_embdJRKlEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.s, ptr noundef null, i32 noundef 10) #30, !noalias !740, !inline_history !0
  %i.u = trunc i64 %i.t to i32
  br label %_ZSt11make_uniqueI20llm_graph_input_embdJRKlEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

_ZSt11make_uniqueI20llm_graph_input_embdJRKlEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a, %bb.b
  %i.v = phi i32 [ %i.u, %bb.b ], [ 0, %bb.a ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 %i.v, ptr %i.w, align 8, !tbaa !168, !noalias !740
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV20llm_graph_input_embd, i64 16), ptr %i.r, align 8, !tbaa !187, !noalias !740
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false), !noalias !740
  store i64 %i.m, ptr %i.y, align 8, !tbaa !42, !noalias !740
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 9 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !459
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !450, !nonnull !133, !align !167
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !35
  %i.af = zext i32 %i.ae to i64
  %i.ag = invoke ptr @ggml_new_tensor_1d(ptr noundef %i.aa, i32 noundef 26, i64 noundef %i.af)
          to label %bb.c unwind label %.thread    ; 3 uses

bb.c:                                             ; preds = %_ZSt11make_uniqueI20llm_graph_input_embdJRKlEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store ptr %i.ag, ptr %i.x, align 8, !tbaa !40
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !461, !nonnull !133, !align !167 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !424
  %.not.i.i.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.not.i, label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit, label %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i

_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i: ; preds = %bb.c
  %i.al = load ptr, ptr %i.ab, align 8, !tbaa !450, !nonnull !133, !align !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.ag, ptr %i.g, align 8, !tbaa !413
  store ptr @.str.117, ptr %i.h, align 8, !tbaa !462
  store i32 -1, ptr %i.i, align 4, !tbaa !106
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !463
  invoke void %i.an(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(104) %i.al, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
          to label %.noexc unwind label %.thread, !inline_history !741

.noexc:                                           ; preds = %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.pre = load ptr, ptr %i.x, align 8, !tbaa !40
  br label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit

_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit: ; preds = %.noexc, %bb.c
  %i.ao = phi ptr [ %.pre, %.noexc ], [ %i.ag, %bb.c ]
  invoke void @ggml_set_input(ptr noundef %i.ao)
          to label %bb.d unwind label %.thread

bb.d:                                             ; preds = %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit
  %i.ap = load ptr, ptr %i.x, align 8, !tbaa !40
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !458
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !742
  %i.at = load ptr, ptr %i.z, align 8, !tbaa !459
  %i.au = load ptr, ptr %i.ab, align 8, !tbaa !450, !nonnull !133, !align !167
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !35
  %i.ax = zext i32 %i.aw to i64
  %i.ay = invoke ptr @ggml_new_tensor_2d(ptr noundef %i.at, i32 noundef 0, i64 noundef %i.m, i64 noundef %i.ax)
          to label %bb.e unwind label %.thread    ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 3 uses
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !43
  %i.ba = load ptr, ptr %i.ah, align 8, !tbaa !461, !nonnull !133, !align !167 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !424
  %.not.i.i.not.i57 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.not.i57, label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit60, label %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i58

_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i58: ; preds = %bb.e
  %i.bd = load ptr, ptr %i.ab, align 8, !tbaa !450, !nonnull !133, !align !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.ay, ptr %i.d, align 8, !tbaa !413
  store ptr @.str.118, ptr %i.e, align 8, !tbaa !462
  store i32 -1, ptr %i.f, align 4, !tbaa !106
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !463
  invoke void %i.bf(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(104) %i.bd, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %.noexc59 unwind label %.thread, !inline_history !741

.noexc59:                                         ; preds = %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.pre122 = load ptr, ptr %i.az, align 8, !tbaa !43
  br label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit60

_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit60: ; preds = %.noexc59, %bb.e
  %i.bg = phi ptr [ %.pre122, %.noexc59 ], [ %i.ay, %bb.e ]
  invoke void @ggml_set_input(ptr noundef %i.bg)
          to label %bb.f unwind label %.thread

bb.f:                                             ; preds = %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit60
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.bh = load ptr, ptr %i.z, align 8, !tbaa !459
  %i.bi = load ptr, ptr %i.x, align 8, !tbaa !40
  %i.bj = invoke ptr @ggml_get_rows(ptr noundef %i.bh, ptr noundef %1, ptr noundef %i.bi)
          to label %bb.g unwind label %.thread112

bb.g:                                             ; preds = %bb.f
  store ptr %i.bj, ptr %2, align 8, !tbaa !413
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !464
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %.sroa.079.0118 = load ptr, ptr %i.bm, align 8, !tbaa !340 ; 2 uses
  %.not116119 = icmp eq ptr %.sroa.079.0118, null
  br i1 %.not116119, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %.promoted = load ptr, ptr %2, align 8
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.n
  store ptr %4, ptr %2, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.g
  %.not = icmp eq i32 %i.l, %i.p                  ; 2 uses
  br i1 %.not, label %bb.r, label %bb.o

.thread:                                          ; preds = %_ZSt11make_uniqueI20llm_graph_input_embdJRKlEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit, %bb.d, %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit60, %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i, %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i58
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteI20llm_graph_input_embdEclEPS0_.exit.i71

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.n
  %3 = phi ptr [ %4, %bb.n ], [ %.promoted, %.lr.ph.preheader ] ; 3 uses
  %.sroa.079.0120 = phi ptr [ %.sroa.079.0, %bb.n ], [ %.sroa.079.0118, %.lr.ph.preheader ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.079.0120, i64 8 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !467
  %i.bq = invoke noundef ptr @_ZN18llama_adapter_lora10get_weightEP11ggml_tensor(ptr noundef nonnull align 8 dereferenceable(200) %i.bp, ptr noundef %1)
          to label %bb.h unwind label %.thread108 ; 3 uses

bb.h:                                             ; preds = %.lr.ph
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.079.0120, i64 16
  %i.bt = load float, ptr %i.bs, align 8, !tbaa !468 ; 2 uses
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !467
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 112
  %i.bw = load float, ptr %i.bv, align 8, !tbaa !485 ; 2 uses
  %i.bx = fcmp une float %i.bw, 0.000000e+00
  %i.by = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !487 ; 2 uses
  br i1 %i.bx, label %bb.j, label %_ZNK25llama_adapter_lora_weight9get_scaleEff.exit

bb.j:                                             ; preds = %bb.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !44
  %i.cc = sitofp i64 %i.cb to float
  %i.cd = fmul float %i.bt, %i.bw
  %i.ce = fdiv float %i.cd, %i.cc
  br label %_ZNK25llama_adapter_lora_weight9get_scaleEff.exit

_ZNK25llama_adapter_lora_weight9get_scaleEff.exit: ; preds = %bb.i, %bb.j
  %i.cf = phi float [ %i.ce, %bb.j ], [ %i.bt, %bb.i ]
  %i.cg = load ptr, ptr %i.z, align 8, !tbaa !459 ; 3 uses
  %i.ch = load ptr, ptr %i.bq, align 8, !tbaa !488
  %i.ci = load ptr, ptr %i.x, align 8, !tbaa !40
  %i.cj = invoke ptr @ggml_get_rows(ptr noundef %i.cg, ptr noundef %i.ch, ptr noundef %i.ci)
          to label %bb.k unwind label %.thread108

bb.k:                                             ; preds = %_ZNK25llama_adapter_lora_weight9get_scaleEff.exit
  %i.ck = invoke ptr @ggml_mul_mat(ptr noundef %i.cg, ptr noundef %i.bz, ptr noundef %i.cj)
          to label %bb.l unwind label %.thread108

bb.l:                                             ; preds = %bb.k
  %i.cl = invoke ptr @ggml_scale(ptr noundef %i.cg, ptr noundef %i.ck, float noundef %i.cf)
          to label %bb.m unwind label %.thread108

bb.m:                                             ; preds = %bb.l
  %i.cm = load ptr, ptr %i.z, align 8, !tbaa !459
  %i.cn = invoke ptr @ggml_add(ptr noundef %i.cm, ptr noundef %3, ptr noundef %i.cl)
          to label %bb.n unwind label %.thread108

bb.n:                                             ; preds = %bb.m, %bb.h
  %4 = phi ptr [ %3, %bb.h ], [ %i.cn, %bb.m ]    ; 2 uses
  %.sroa.079.0 = load ptr, ptr %.sroa.079.0120, align 8, !tbaa !340 ; 2 uses
  %.not116 = icmp eq ptr %.sroa.079.0, null
  br i1 %.not116, label %._crit_edge.loopexit, label %.lr.ph

.thread108:                                       ; preds = %_ZNK25llama_adapter_lora_weight9get_scaleEff.exit, %bb.k, %bb.l, %bb.m, %.lr.ph
  %i.co = landingpad { ptr, i32 }
          cleanup
  store ptr %3, ptr %2, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %_ZNKSt14default_deleteI20llm_graph_input_embdEclEPS0_.exit.i71

bb.o:                                             ; preds = %._crit_edge
  %i.cp = load ptr, ptr %i.z, align 8, !tbaa !459
  %i.cq = load ptr, ptr %2, align 8, !tbaa !413
  %i.cr = load ptr, ptr %i.j, align 8, !tbaa !447, !nonnull !133, !align !167
  %i.cs = invoke noundef i32 @_ZNK13llama_hparams10n_embd_inpEv(ptr noundef nonnull align 8 dereferenceable(36056) %i.cr)
          to label %bb.p unwind label %.thread112

bb.p:                                             ; preds = %bb.o
  %i.ct = sub i32 %i.cs, %i.p
  %i.cu = invoke ptr @ggml_pad(ptr noundef %i.cp, ptr noundef %i.cq, i32 noundef %i.ct, i32 noundef 0, i32 noundef 0, i32 noundef 0)
          to label %bb.q unwind label %.thread112

bb.q:                                             ; preds = %bb.p
  store ptr %i.cu, ptr %2, align 8, !tbaa !413
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cw = load ptr, ptr %i.az, align 8, !tbaa !43
  store ptr %i.cw, ptr %i.cv, align 8, !tbaa !413
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !460
  %i.cz = load ptr, ptr %i.ab, align 8, !tbaa !450, !nonnull !133, !align !167
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !34
  %.not48 = icmp eq ptr %i.db, null
  %i.dc = zext i1 %.not48 to i32
  %i.dd = invoke ptr @ggml_build_forward_select(ptr noundef %i.cy, ptr noundef nonnull %2, i32 noundef 2, i32 noundef %i.dc)
          to label %bb.s unwind label %.thread112 ; 3 uses

bb.s:                                             ; preds = %bb.r
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.de = load ptr, ptr %i.z, align 8, !tbaa !459
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !451
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 56
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !44
  %i.dj = invoke ptr @ggml_view_2d(ptr noundef %i.de, ptr noundef nonnull %i.dd, i64 noundef %i.q, i64 noundef %i.dg, i64 noundef %i.di, i64 noundef 0)
          to label %bb.u unwind label %.thread112

bb.u:                                             ; preds = %bb.t, %bb.s
  %.0 = phi ptr [ %i.dd, %bb.s ], [ %i.dj, %bb.t ] ; 6 uses
  %i.dk = load ptr, ptr %i.aq, align 8, !tbaa !458
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store ptr %.0, ptr %i.dl, align 8, !tbaa !743
  %i.dm = load ptr, ptr %i.j, align 8, !tbaa !447, !nonnull !133, !align !167 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16760
  %i.do = load float, ptr %i.dn, align 8, !tbaa !744
  %i.dp = fcmp une float %i.do, 0.000000e+00
  br i1 %i.dp, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.dq = load ptr, ptr %i.ab, align 8, !tbaa !450, !nonnull !133, !align !167
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !34
  %.not50 = icmp eq ptr %i.ds, null
  br i1 %.not50, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 29880
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !397
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.dw = invoke zeroext i1 @ggml_is_contiguous(ptr noundef %.0)
          to label %bb.y unwind label %.thread112

bb.y:                                             ; preds = %bb.x
  br i1 %i.dw, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dx = load ptr, ptr %i.z, align 8, !tbaa !459
  %i.dy = invoke ptr @ggml_cont(ptr noundef %i.dx, ptr noundef %.0)
          to label %bb.aa unwind label %.thread112

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.1 = phi ptr [ %.0, %bb.y ], [ %i.dy, %bb.z ]
  %i.dz = load ptr, ptr %i.z, align 8, !tbaa !459
  %i.ea = load ptr, ptr %i.j, align 8, !tbaa !447, !nonnull !133, !align !167
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16760
  %i.ec = load float, ptr %i.eb, align 8, !tbaa !744
  %i.ed = invoke ptr @ggml_scale(ptr noundef %i.dz, ptr noundef %.1, float noundef %i.ec)
          to label %bb.ab unwind label %.thread112

bb.ab:                                            ; preds = %bb.aa, %bb.w, %bb.u
  %.2 = phi ptr [ %.0, %bb.u ], [ %.0, %bb.w ], [ %i.ed, %bb.aa ] ; 3 uses
  %i.ee = load ptr, ptr %i.ah, align 8, !tbaa !461, !nonnull !133, !align !167 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !424
  %.not.i.i.not.i61 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.not.i61, label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit64, label %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i62

_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i62: ; preds = %bb.ab
  %i.eh = load ptr, ptr %i.ab, align 8, !tbaa !450, !nonnull !133, !align !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.2, ptr %i.a, align 8, !tbaa !413
  store ptr @.str.119, ptr %i.b, align 8, !tbaa !462
  store i32 -1, ptr %i.c, align 4, !tbaa !106
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !463
  invoke void %i.ej(ptr noundef nonnull align 8 dereferenceable(32) %i.ee, ptr noundef nonnull align 8 dereferenceable(104) %i.eh, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %.noexc63 unwind label %.thread112, !inline_history !741

.noexc63:                                         ; preds = %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit64

_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit64: ; preds = %.noexc63, %bb.ab
  %i.ek = load ptr, ptr %i.aq, align 8, !tbaa !458 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 184 ; 3 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !416 ; 6 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 192 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !430
  %.not.i.i = icmp eq ptr %i.em, %i.eo
  br i1 %.not.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit64
  %i.ep = ptrtoint ptr %i.r to i64
  store i64 %i.ep, ptr %i.em, align 8, !tbaa !418
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store ptr %i.eq, ptr %i.el, align 8, !tbaa !416
  br label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit

bb.ad:                                            ; preds = %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit64
  %i.er = getelementptr inbounds nuw i8, ptr %i.ek, i64 176 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !415 ; 7 uses
  %i.et = ptrtoint ptr %i.em to i64               ; 2 uses
  %i.eu = ptrtoint ptr %i.es to i64               ; 2 uses
  %i.ev = sub i64 %i.et, %i.eu                    ; 4 uses
  %i.ew = icmp eq i64 %i.ev, 9223372036854775800
  br i1 %i.ew, label %bb.ae, label %_ZNKSt6vectorISt10unique_ptrI17llm_graph_input_iSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.198) #27
          to label %.noexc74 unwind label %.thread104

.noexc74:                                         ; preds = %bb.ae
  unreachable

_ZNKSt6vectorISt10unique_ptrI17llm_graph_input_iSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.ad
  %i.ex = ashr exact i64 %i.ev, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ex, i64 1)
  %i.ey = add nsw i64 %.sroa.speculated.i.i, %i.ex ; 2 uses
  %i.ez = icmp ult i64 %i.ey, %i.ex
  %i.fa = call i64 @llvm.umin.i64(i64 %i.ey, i64 1152921504606846975)
  %i.fb = select i1 %i.ez, i64 1152921504606846975, i64 %i.fa ; 3 uses
  %.not.i.i73 = icmp ne i64 %i.fb, 0
  call void @llvm.assume(i1 %.not.i.i73)
  %i.fc = shl nuw nsw i64 %i.fb, 3
  %i.fd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fc) #28
          to label %.noexc75 unwind label %.thread104 ; 7 uses

.noexc75:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrI17llm_graph_input_iSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.ev
  %i.ff = ptrtoint ptr %i.r to i64
  store i64 %i.ff, ptr %i.fe, align 8, !tbaa !418
  %.not10.i.i.i.i = icmp eq ptr %i.es, %i.em
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI17llm_graph_input_iSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc75
  %i.fg = add i64 %i.et, -8
  %i.fh = sub i64 %i.fg, %i.eu                    ; 2 uses
  %i.fi = lshr i64 %i.fh, 3
  %i.fj = add nuw nsw i64 %i.fi, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fh, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader136, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.fj, 4611686018427387900     ; 3 uses
  %i.fk = shl i64 %n.vec, 3                       ; 2 uses
  %i.fl = getelementptr i8, ptr %i.fd, i64 %i.fk  ; 2 uses
  %i.fm = getelementptr i8, ptr %i.es, i64 %i.fk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fn = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.fd, i64 %i.fn ; 2 uses
  %next.gep133 = getelementptr i8, ptr %i.es, i64 %i.fn ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !745)
  call void @llvm.experimental.noalias.scope.decl(metadata !746)
  %i.fo = getelementptr i8, ptr %next.gep133, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep133, align 8, !tbaa !418, !alias.scope !746
  %wide.load134 = load <2 x i64>, ptr %i.fo, align 8, !tbaa !418, !alias.scope !746
  %i.fp = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !418, !alias.scope !745
  store <2 x i64> %wide.load134, ptr %i.fp, align 8, !tbaa !418, !alias.scope !745
  store <2 x ptr> splat (ptr null), ptr %next.gep133, align 8, !tbaa !418, !alias.scope !746
  store <2 x ptr> splat (ptr null), ptr %i.fo, align 8, !tbaa !418, !alias.scope !746
  %index.next = add nuw i64 %index, 4             ; 2 uses
end_hunk_1
