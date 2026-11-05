Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/sclLoad?download=true
inline.NumInlined: 87
inline.NumDeleted: 30
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@Abc_SclFindWireCaps:bb.a
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.f, <4 x i32> %i.g)
  %i.i = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %Vec_FltStart.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.083.ph = phi i32 [ 0, %.lr.ph ], [ %i.i, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.083 = phi i32 [ %i.l, %scalar.ph ], [ %.083.ph, %scalar.ph.preheader ]
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.val72, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !12
  %i.l = tail call noundef i32 @llvm.smax.i32(i32 %.083, i32 %i.k) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %Vec_FltStart.exit, label %scalar.ph, !llvm.loop !58

Vec_FltStart.exit:                                ; preds = %scalar.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.i, %middle.block ], [ %i.l, %scalar.ph ]
  %i.m = tail call noundef i32 @llvm.smax.i32(i32 %1, i32 %.0.lcssa) ; 3 uses
  %i.n = add nuw i32 %i.m, 1                      ; 5 uses
  %i.o = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #11 ; 4 uses
  %or.cond.i.i = icmp ult i32 %i.m, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %i.n ; 2 uses
  store i32 %spec.store.select.i.i, ptr %i.o, align 8, !tbaa !69
  %i.p = sext i32 %spec.store.select.i.i to i64
  %i.q = shl nsw i64 %i.p, 2
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.q) #11 ; 13 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.r, ptr %i.t, align 8, !tbaa !16
  store i32 %i.n, ptr %i.s, align 4, !tbaa !17
  %i.u = sext i32 %i.n to i64
  %i.v = shl nsw i64 %i.u, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.r, i8 0, i64 %i.v, i1 false)
  br i1 %i.b, label %.lr.ph86, label %.critedge2

.lr.ph86:                                         ; preds = %Vec_FltStart.exit
  %i.w = getelementptr i8, ptr %0, i64 24
  %.val71 = load ptr, ptr %i.w, align 8, !tbaa !11 ; 5 uses
  %i.x = getelementptr i8, ptr %0, i64 40
  %.val76 = load ptr, ptr %i.x, align 8, !tbaa !16 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load float, ptr %i.y, align 8, !tbaa !71 ; 5 uses
  %wide.trip.count106 = zext nneg i32 %.val70 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count106, 3      ; 3 uses
  %i.aa = icmp ult i32 %.val70, 4
  br i1 %i.aa, label %.epil.preheader, label %.lr.ph86.new

.lr.ph86.new:                                     ; preds = %.lr.ph86
  %unroll_iter = and i64 %wide.trip.count106, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph86.new
  %indvars.iv103 = phi i64 [ 0, %.lr.ph86.new ], [ %indvars.iv.next104.3, %bb.b ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph86.new ], [ %niter.next.3, %bb.b ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.val71, i64 %indvars.iv103
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !12
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.val76, i64 %indvars.iv103
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !20
  %i.af = fmul float %i.ae, %i.z
  %i.ag = sext i32 %i.ac to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.ag
  store float %i.af, ptr %i.ah, align 4, !tbaa !20
  %indvars.iv.next104 = or disjoint i64 %indvars.iv103, 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.val71, i64 %indvars.iv.next104
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !12
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.val76, i64 %indvars.iv.next104
  %i.al = load float, ptr %i.ak, align 4, !tbaa !20
  %i.am = fmul float %i.al, %i.z
  %i.an = sext i32 %i.aj to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.an
  store float %i.am, ptr %i.ao, align 4, !tbaa !20
  %indvars.iv.next104.1 = or disjoint i64 %indvars.iv103, 2 ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.val71, i64 %indvars.iv.next104.1
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !12
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.val76, i64 %indvars.iv.next104.1
  %i.as = load float, ptr %i.ar, align 4, !tbaa !20
  %i.at = fmul float %i.as, %i.z
  %i.au = sext i32 %i.aq to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.au
  store float %i.at, ptr %i.av, align 4, !tbaa !20
  %indvars.iv.next104.2 = or disjoint i64 %indvars.iv103, 3 ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.val71, i64 %indvars.iv.next104.2
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !12
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.val76, i64 %indvars.iv.next104.2
  %i.az = load float, ptr %i.ay, align 4, !tbaa !20
  %i.ba = fmul float %i.az, %i.z
  %i.bb = sext i32 %i.ax to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.bb
  store float %i.ba, ptr %i.bc, align 4, !tbaa !20
  %indvars.iv.next104.3 = add nuw nsw i64 %indvars.iv103, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.critedge2.loopexit.unr-lcssa, label %bb.b, !llvm.loop !59

.critedge2.loopexit.unr-lcssa:                    ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge2, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge2.loopexit.unr-lcssa, %.lr.ph86
  %indvars.iv103.epil.init = phi i64 [ 0, %.lr.ph86 ], [ %indvars.iv.next104.3, %.critedge2.loopexit.unr-lcssa ]
  %lcmp.mod168 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod168)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv103.epil = phi i64 [ %indvars.iv103.epil.init, %.epil.preheader ], [ %indvars.iv.next104.epil, %bb.c ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.val71, i64 %indvars.iv103.epil
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !12
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.val76, i64 %indvars.iv103.epil
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !20
  %i.bh = fmul float %i.bg, %i.z
  %i.bi = sext i32 %i.be to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.bi
  store float %i.bh, ptr %i.bj, align 4, !tbaa !20
  %indvars.iv.next104.epil = add nuw nsw i64 %indvars.iv103.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge2, label %bb.c, !llvm.loop !60

.critedge2:                                       ; preds = %.critedge2.loopexit.unr-lcssa, %bb.c, %Vec_FltStart.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !20 ; 3 uses
  %i.bm = fcmp oeq float %i.bl, 0.000000e+00
  br i1 %i.bm, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.critedge2
  %.not90 = icmp slt i32 %i.m, 2
  br i1 %.not90, label %.critedge4, label %.lr.ph94.preheader

.lr.ph94.preheader:                               ; preds = %.preheader
  %wide.trip.count115 = zext i32 %i.n to i64
  br label %.lr.ph94

.lr.ph94:                                         ; preds = %.lr.ph94.preheader, %.loopexit81
  %indvar = phi i64 [ 0, %.lr.ph94.preheader ], [ %indvar.next, %.loopexit81 ] ; 2 uses
  %indvars.iv112 = phi i64 [ 2, %.lr.ph94.preheader ], [ %indvars.iv.next113, %.loopexit81 ] ; 6 uses
  %.06293 = phi i32 [ 1, %.lr.ph94.preheader ], [ %.163, %.loopexit81 ] ; 8 uses
  %.06691 = phi float [ %i.bl, %.lr.ph94.preheader ], [ %.167, %.loopexit81 ] ; 4 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv112
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !20 ; 5 uses
  %i.bp = fcmp oeq float %i.bo, 0.000000e+00
  br i1 %i.bp, label %.loopexit81, label %bb.d

bb.d:                                             ; preds = %.lr.ph94
  %i.bq = fsub float %i.bo, %.06691
  %i.br = trunc nuw nsw i64 %indvars.iv112 to i32 ; 4 uses
  %i.bs = sub nsw i32 %i.br, %.06293
  %i.bt = sitofp i32 %i.bs to float
  %i.bu = fdiv float %i.bq, %i.bt                 ; 2 uses
  %.06187 = add nuw nsw i32 %.06293, 1            ; 2 uses
  %i.bv = zext i32 %.06187 to i64                 ; 5 uses
  %i.bw = icmp samesign ugt i64 %indvars.iv112, %i.bv
  br i1 %i.bw, label %.lr.ph89.preheader, label %.loopexit81

.lr.ph89.preheader:                               ; preds = %bb.d
  %i.bx = add nuw i64 %indvar, 3
  %i.by = add i32 %.06293, 2
  %i.bz = zext i32 %i.by to i64
  %i.ca = sub i64 %i.bx, %i.bz                    ; 3 uses
  %min.iters.check127 = icmp ult i64 %i.ca, 8
  br i1 %min.iters.check127, label %.lr.ph89.preheader165, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph89.preheader
  %i.cb = add i32 %.06293, 2
  %i.cc = zext i32 %i.cb to i64
  %i.cd = sub nsw i64 %indvars.iv112, %i.cc       ; 2 uses
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = sub i32 -3, %.06293
  %i.cg = icmp ult i32 %i.cf, %i.ce
  %i.ch = icmp ugt i64 %i.cd, 4294967295
  %i.ci = or i1 %i.cg, %i.ch
  br i1 %i.ci, label %.lr.ph89.preheader165, label %vector.ph128

vector.ph128:                                     ; preds = %vector.scevcheck
  %n.vec129 = and i64 %i.ca, -8                   ; 3 uses
  %i.cj = add i64 %n.vec129, %i.bv
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.06293, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert130 = insertelement <4 x float> poison, float %i.bu, i64 0
  %broadcast.splat131 = shufflevector <4 x float> %broadcast.splatinsert130, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert132 = insertelement <4 x float> poison, float %.06691, i64 0
  %broadcast.splat133 = shufflevector <4 x float> %broadcast.splatinsert132, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert134 = insertelement <4 x i32> poison, i32 %.06187, i64 0
  %broadcast.splat135 = shufflevector <4 x i32> %broadcast.splatinsert134, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat135, <i32 0, i32 1, i32 2, i32 3>
  %invariant.op = sub <4 x i32> splat (i32 4), %broadcast.splat
  %invariant.gep = getelementptr [4 x i8], ptr %i.r, i64 %i.bv
  br label %vector.body136

vector.body136:                                   ; preds = %vector.body136, %vector.ph128
  %index137 = phi i64 [ 0, %vector.ph128 ], [ %index.next138, %vector.body136 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph128 ], [ %vec.ind.next, %vector.body136 ] ; 3 uses
  %i.ck = sub <4 x i32> %vec.ind, %broadcast.splat
  %.reass = add <4 x i32> %vec.ind, %invariant.op
  %2 = uitofp nneg <4 x i32> %i.ck to <4 x float>
  %3 = uitofp nneg <4 x i32> %.reass to <4 x float>
  %i.cl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat131, <4 x float> %2, <4 x float> %broadcast.splat133)
  %i.cm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat131, <4 x float> %3, <4 x float> %broadcast.splat133)
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index137 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x float> %i.cl, ptr %gep, align 4, !tbaa !20
  store <4 x float> %i.cm, ptr %i.cn, align 4, !tbaa !20
  %index.next138 = add nuw i64 %index137, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.co = icmp eq i64 %index.next138, %n.vec129
  br i1 %i.co, label %middle.block139, label %vector.body136, !llvm.loop !61

middle.block139:                                  ; preds = %vector.body136
  %cmp.n140 = icmp eq i64 %i.ca, %n.vec129
  br i1 %cmp.n140, label %.loopexit81, label %.lr.ph89.preheader165

.lr.ph89.preheader165:                            ; preds = %vector.scevcheck, %.lr.ph89.preheader, %middle.block139
  %indvars.iv108.ph = phi i64 [ %i.bv, %vector.scevcheck ], [ %i.bv, %.lr.ph89.preheader ], [ %i.cj, %middle.block139 ]
  br label %.lr.ph89

.lr.ph89:                                         ; preds = %.lr.ph89.preheader165, %.lr.ph89
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %.lr.ph89 ], [ %indvars.iv108.ph, %.lr.ph89.preheader165 ] ; 3 uses
  %i.cp = trunc i64 %indvars.iv108 to i32
  %i.cq = sub i32 %i.cp, %.06293
  %4 = uitofp nneg i32 %i.cq to float
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.bu, float %4, float %.06691)
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv108
  store float %i.cr, ptr %i.cs, align 4, !tbaa !20
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %i.ct = and i64 %indvars.iv.next109, 4294967295
  %exitcond111.not = icmp eq i64 %i.ct, %indvars.iv112
  br i1 %exitcond111.not, label %.loopexit81, label %.lr.ph89, !llvm.loop !62

.loopexit81:                                      ; preds = %.lr.ph89, %middle.block139, %bb.d, %.lr.ph94
  %.167 = phi float [ %.06691, %.lr.ph94 ], [ %i.bo, %bb.d ], [ %i.bo, %middle.block139 ], [ %i.bo, %.lr.ph89 ] ; 2 uses
  %.163 = phi i32 [ %.06293, %.lr.ph94 ], [ %i.br, %bb.d ], [ %i.br, %middle.block139 ], [ %i.br, %.lr.ph89 ] ; 2 uses
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %exitcond116.not = icmp eq i64 %indvars.iv.next113, %wide.trip.count115
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond116.not, label %.critedge4, label %.lr.ph94, !llvm.loop !63

.critedge4:                                       ; preds = %.loopexit81, %.preheader
  %.066.lcssa = phi float [ %i.bl, %.preheader ], [ %.167, %.loopexit81 ] ; 2 uses
  %.2.lcssa = phi i32 [ 2, %.preheader ], [ %i.n, %.loopexit81 ] ; 3 uses
  %.062.lcssa = phi i32 [ 1, %.preheader ], [ %.163, %.loopexit81 ] ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cv = load float, ptr %i.cu, align 8, !tbaa !71
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !73
  %i.cy = fmul float %i.cv, %i.cx                 ; 2 uses
  %.198 = add nuw nsw i32 %.062.lcssa, 1
  %i.cz = icmp samesign ult i32 %.198, %.2.lcssa
  br i1 %i.cz, label %.lr.ph100.preheader, label %.loopexit

.lr.ph100.preheader:                              ; preds = %.critedge4
  %i.da = zext i32 %.062.lcssa to i64
  %i.db = add nuw nsw i64 %i.da, 1                ; 4 uses
  %i.dc = add i32 %.2.lcssa, -2
  %i.dd = sub i32 %i.dc, %.062.lcssa              ; 2 uses
  %i.de = zext i32 %i.dd to i64
  %i.df = add nuw nsw i64 %i.de, 1                ; 2 uses
  %min.iters.check143 = icmp ult i32 %i.dd, 7
  br i1 %min.iters.check143, label %.lr.ph100.preheader164, label %vector.ph144

vector.ph144:                                     ; preds = %.lr.ph100.preheader
  %n.vec145 = and i64 %i.df, 8589934584           ; 3 uses
  %i.dg = add nuw nsw i64 %i.db, %n.vec145
  %broadcast.splatinsert146 = insertelement <4 x i32> poison, i32 %.062.lcssa, i64 0
  %broadcast.splat147 = shufflevector <4 x i32> %broadcast.splatinsert146, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert148 = insertelement <4 x float> poison, float %i.cy, i64 0
  %broadcast.splat149 = shufflevector <4 x float> %broadcast.splatinsert148, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert150 = insertelement <4 x float> poison, float %.066.lcssa, i64 0
  %broadcast.splat151 = shufflevector <4 x float> %broadcast.splatinsert150, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dh = trunc i64 %i.db to i32
  %broadcast.splatinsert152 = insertelement <4 x i32> poison, i32 %i.dh, i64 0
  %broadcast.splat153 = shufflevector <4 x i32> %broadcast.splatinsert152, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction154 = add <4 x i32> %broadcast.splat153, <i32 0, i32 1, i32 2, i32 3>
  %invariant.op171 = sub <4 x i32> splat (i32 4), %broadcast.splat147
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.db
  br label %vector.body155

vector.body155:                                   ; preds = %vector.body155, %vector.ph144
  %index156 = phi i64 [ 0, %vector.ph144 ], [ %index.next159, %vector.body155 ] ; 2 uses
  %vec.ind157 = phi <4 x i32> [ %induction154, %vector.ph144 ], [ %vec.ind.next160, %vector.body155 ] ; 3 uses
  %i.dj = sub <4 x i32> %vec.ind157, %broadcast.splat147
  %.reass172 = add <4 x i32> %vec.ind157, %invariant.op171
  %i.dk = sitofp <4 x i32> %i.dj to <4 x float>
  %i.dl = sitofp <4 x i32> %.reass172 to <4 x float>
  %i.dm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat149, <4 x float> %i.dk, <4 x float> %broadcast.splat151)
  %i.dn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat149, <4 x float> %i.dl, <4 x float> %broadcast.splat151)
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %index156 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store <4 x float> %i.dm, ptr %i.do, align 4, !tbaa !20
  store <4 x float> %i.dn, ptr %i.dp, align 4, !tbaa !20
  %index.next159 = add nuw i64 %index156, 8       ; 2 uses
  %vec.ind.next160 = add <4 x i32> %vec.ind157, splat (i32 8)
  %i.dq = icmp eq i64 %index.next159, %n.vec145
  br i1 %i.dq, label %middle.block161, label %vector.body155, !llvm.loop !64

middle.block161:                                  ; preds = %vector.body155
  %cmp.n162 = icmp eq i64 %i.df, %n.vec145
  br i1 %cmp.n162, label %.loopexit, label %.lr.ph100.preheader164

.lr.ph100.preheader164:                           ; preds = %.lr.ph100.preheader, %middle.block161
  %indvars.iv117.ph = phi i64 [ %i.db, %.lr.ph100.preheader ], [ %i.dg, %middle.block161 ]
  br label %.lr.ph100

.lr.ph100:                                        ; preds = %.lr.ph100.preheader164, %.lr.ph100
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %.lr.ph100 ], [ %indvars.iv117.ph, %.lr.ph100.preheader164 ] ; 3 uses
  %i.dr = trunc i64 %indvars.iv117 to i32
  %i.ds = sub i32 %i.dr, %.062.lcssa
  %i.dt = sitofp i32 %i.ds to float
  %i.du = tail call float @llvm.fmuladd.f32(float %i.cy, float %i.dt, float %.066.lcssa)
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv117
  store float %i.du, ptr %i.dv, align 4, !tbaa !20
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %lftr.wideiv120 = trunc i64 %indvars.iv.next118 to i32
  %exitcond121.not = icmp eq i32 %.2.lcssa, %lftr.wideiv120
  br i1 %exitcond121.not, label %.loopexit, label %.lr.ph100, !llvm.loop !65

.loopexit:                                        ; preds = %.lr.ph100, %middle.block161, %.critedge4, %.critedge2
  ret ptr %i.o
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define float @Abc_SclFindWireLoad(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 4
  %.val5 = load i32, ptr %i.b, align 4, !tbaa !17
  %i.c = add nsw i32 %.val5, -1
  %i.d = tail call range(i32 -2147483648, 2147483647) i32 @llvm.smin.i32(i32 %1, i32 range(i32 -2147483648, 2147483647) %i.c)
  %i.e = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.f = sext i32 %i.d to i64
  %i.g = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.f
  %i.h = load float, ptr %i.g, align 4, !tbaa !20
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi float [ %i.h, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret float %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Abc_SclAddWireLoad(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %Abc_SclFindWireLoad.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 44
  %.val = load i32, ptr %i.d, align 4, !tbaa !35
  %i.e = getelementptr i8, ptr %i.b, i64 4
  %.val5.i = load i32, ptr %i.e, align 4, !tbaa !17
  %i.f = add nsw i32 %.val5.i, -1
  %i.g = tail call range(i32 -2147483648, 2147483647) i32 @llvm.smin.i32(i32 %.val, i32 range(i32 -2147483648, 2147483647) %i.f)
  %i.h = getelementptr i8, ptr %i.b, i64 8
  %.val.i = load ptr, ptr %i.h, align 8, !tbaa !16
  %i.i = sext i32 %i.g to i64
  %i.j = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.i
  %i.k = load float, ptr %i.j, align 4, !tbaa !20
  br label %Abc_SclFindWireLoad.exit

Abc_SclFindWireLoad.exit:                         ; preds = %bb.a, %bb.b
  %.0.i = phi float [ %i.k, %bb.b ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %.not = icmp eq i32 %2, 0
  %i.l = fneg float %.0.i
  %i.m = select i1 %.not, float %.0.i, float %i.l
  %i.n = getelementptr i8, ptr %0, i64 64
  %.val13 = load ptr, ptr %i.n, align 8, !tbaa !36
  %i.o = getelementptr i8, ptr %1, i64 16
  %.val14 = load i32, ptr %i.o, align 8, !tbaa !37
  %i.p = zext i32 %.val14 to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.val13, i64 %i.p ; 2 uses
  %i.r = load <2 x float>, ptr %i.q, align 4, !tbaa !20
  %i.s = insertelement <2 x float> poison, float %i.m, i64 0
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer
  %i.u = fadd <2 x float> %i.t, %i.r
  store <2 x float> %i.u, ptr %i.q, align 4, !tbaa !20
  ret void
}

; Function Attrs: nounwind uwtable
define void @Abc_SclComputeLoad(ptr nofree noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47   ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 4
  %.val164 = load i32, ptr %i.e, align 4, !tbaa !84 ; 6 uses
  %i.f = icmp sgt i32 %.val164, 0
  br i1 %i.f, label %.lr.ph, label %.critedge2.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %.val168.val = load ptr, ptr %i.g, align 8, !tbaa !50 ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 64         ; 3 uses
  %wide.trip.count = zext nneg i32 %.val164 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.i = icmp eq i32 %.val164, 1
  br i1 %i.i, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.d

.lr.ph219.unr-lcssa:                              ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph219, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph219.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.lr.ph219.unr-lcssa ]
  %lcmp.mod307 = trunc i32 %.val164 to i1
  tail call void @llvm.assume(i1 %lcmp.mod307)
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.val168.val, i64 %indvars.iv.epil.init
end_hunk_0
