Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/blas?download=true
inline.NumInlined: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 18
begin_hunk_0_@saxpyx:bb.a
  %.067.unr = phi i32 [ %.067.ph, %.lr.ph68.preheader86 ], [ %i.aa, %.lr.ph68.prol ]
  %.04466.unr = phi ptr [ %.04466.ph, %.lr.ph68.preheader86 ], [ %i.ab, %.lr.ph68.prol ]
  %.04765.unr = phi ptr [ %.04765.ph, %.lr.ph68.preheader86 ], [ %i.ac, %.lr.ph68.prol ]
  %i.ad = sub i32 %.067.ph, %0
  %i.ae = icmp ugt i32 %i.ad, -4
  br i1 %i.ae, label %.loopexit, label %.lr.ph68

.lr.ph68:                                         ; preds = %.lr.ph68.prol.loopexit, %.lr.ph68
  %.067 = phi i32 [ %i.ax, %.lr.ph68 ], [ %.067.unr, %.lr.ph68.prol.loopexit ]
  %.04466 = phi ptr [ %i.ay, %.lr.ph68 ], [ %.04466.unr, %.lr.ph68.prol.loopexit ] ; 6 uses
  %.04765 = phi ptr [ %i.az, %.lr.ph68 ], [ %.04765.unr, %.lr.ph68.prol.loopexit ] ; 5 uses
  %i.af = load float, ptr %.04765, align 4, !tbaa !9
  %i.ag = load float, ptr %.04466, align 4, !tbaa !9
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.a, float %i.ag, float %i.af)
  store float %i.ah, ptr %.04466, align 4, !tbaa !9
  %i.ai = getelementptr inbounds nuw i8, ptr %.04466, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.04765, i64 4
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !9
  %i.al = load float, ptr %i.ai, align 4, !tbaa !9
  %i.am = tail call float @llvm.fmuladd.f32(float %i.a, float %i.al, float %i.ak)
  store float %i.am, ptr %i.ai, align 4, !tbaa !9
  %i.an = getelementptr inbounds nuw i8, ptr %.04466, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.04765, i64 8
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !9
  %i.aq = load float, ptr %i.an, align 4, !tbaa !9
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.a, float %i.aq, float %i.ap)
  store float %i.ar, ptr %i.an, align 4, !tbaa !9
  %i.as = getelementptr inbounds nuw i8, ptr %.04466, i64 12 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.04765, i64 12
  %i.au = load float, ptr %i.at, align 4, !tbaa !9
  %i.av = load float, ptr %i.as, align 4, !tbaa !9
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.a, float %i.av, float %i.au)
  store float %i.aw, ptr %i.as, align 4, !tbaa !9
  %i.ax = add nuw nsw i32 %.067, 4                ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.04466, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %.04765, i64 16
  %exitcond72.not.3 = icmp eq i32 %i.ax, %0
  br i1 %exitcond72.not.3, label %.loopexit, label %.lr.ph68, !llvm.loop !33

bb.d:                                             ; preds = %bb.c
  %i.ba = icmp sgt i32 %3, 0
  br i1 %i.ba, label %.lr.ph64, label %.lr.ph

.lr.ph64:                                         ; preds = %bb.d
  %i.bb = zext nneg i32 %3 to i64                 ; 10 uses
  %i.bc = add nsw i32 %0, -1
  %xtraiter91 = and i32 %0, 3                     ; 3 uses
  %i.bd = icmp ult i32 %i.bc, 3
  br i1 %i.bd, label %.epil.preheader90, label %.lr.ph64.new

.lr.ph64.new:                                     ; preds = %.lr.ph64
  %unroll_iter95 = and i32 %0, 2147483644
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph64.new
  %.14562 = phi ptr [ %2, %.lr.ph64.new ], [ %i.bw, %bb.e ] ; 3 uses
  %.14861 = phi ptr [ %4, %.lr.ph64.new ], [ %i.bx, %bb.e ] ; 2 uses
  %niter96 = phi i32 [ 0, %.lr.ph64.new ], [ %niter96.next.3, %bb.e ]
  %i.be = load float, ptr %.14861, align 4, !tbaa !9
  %i.bf = load float, ptr %.14562, align 4, !tbaa !9
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.a, float %i.bf, float %i.be)
  store float %i.bg, ptr %.14562, align 4, !tbaa !9
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.14562, i64 %i.bb ; 3 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.14861, i64 %i.bb ; 2 uses
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !9
  %i.bk = load float, ptr %i.bh, align 4, !tbaa !9
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.a, float %i.bk, float %i.bj)
  store float %i.bl, ptr %i.bh, align 4, !tbaa !9
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bb ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bb ; 2 uses
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !9
  %i.bp = load float, ptr %i.bm, align 4, !tbaa !9
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.a, float %i.bp, float %i.bo)
  store float %i.bq, ptr %i.bm, align 4, !tbaa !9
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bb ; 3 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bb ; 2 uses
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !9
  %i.bu = load float, ptr %i.br, align 4, !tbaa !9
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.a, float %i.bu, float %i.bt)
  store float %i.bv, ptr %i.br, align 4, !tbaa !9
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bb ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bb ; 2 uses
  %niter96.next.3 = add nuw nsw i32 %niter96, 4   ; 2 uses
  %niter96.ncmp.3 = icmp eq i32 %niter96.next.3, %unroll_iter95
  br i1 %niter96.ncmp.3, label %.loopexit.loopexit87.unr-lcssa, label %bb.e, !llvm.loop !34

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %i.by = icmp slt i32 %5, 0
  %i.bz = sub nsw i32 1, %0                       ; 2 uses
  %i.ca = mul nsw i32 %5, %i.bz
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %.249 = select i1 %i.by, ptr %i.cd, ptr %4      ; 2 uses
  %i.ce = icmp slt i32 %3, 0
  %i.cf = mul nsw i32 %3, %i.bz
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %.246 = select i1 %i.ce, ptr %i.ci, ptr %2      ; 2 uses
  %i.cj = sext i32 %3 to i64                      ; 5 uses
  %i.ck = sext i32 %5 to i64                      ; 5 uses
  %i.cl = add nsw i32 %0, -1
  %xtraiter = and i32 %0, 3                       ; 3 uses
  %i.cm = icmp ult i32 %i.cl, 3
  br i1 %i.cm, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %0, 2147483644
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.new
  %.359 = phi ptr [ %.246, %.lr.ph.new ], [ %i.df, %bb.f ] ; 3 uses
  %.35058 = phi ptr [ %.249, %.lr.ph.new ], [ %i.dg, %bb.f ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.f ]
  %i.cn = load float, ptr %.35058, align 4, !tbaa !9
  %i.co = load float, ptr %.359, align 4, !tbaa !9
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.a, float %i.co, float %i.cn)
  store float %i.cp, ptr %.359, align 4, !tbaa !9
  %i.cq = getelementptr inbounds [4 x i8], ptr %.359, i64 %i.cj ; 3 uses
  %i.cr = getelementptr inbounds [4 x i8], ptr %.35058, i64 %i.ck ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !9
  %i.ct = load float, ptr %i.cq, align 4, !tbaa !9
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.a, float %i.ct, float %i.cs)
  store float %i.cu, ptr %i.cq, align 4, !tbaa !9
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.cj ; 3 uses
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.ck ; 2 uses
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !9
  %i.cy = load float, ptr %i.cv, align 4, !tbaa !9
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.a, float %i.cy, float %i.cx)
  store float %i.cz, ptr %i.cv, align 4, !tbaa !9
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.cj ; 3 uses
  %i.db = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.ck ; 2 uses
  %i.dc = load float, ptr %i.db, align 4, !tbaa !9
  %i.dd = load float, ptr %i.da, align 4, !tbaa !9
  %i.de = tail call float @llvm.fmuladd.f32(float %i.a, float %i.dd, float %i.dc)
  store float %i.de, ptr %i.da, align 4, !tbaa !9
  %i.df = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.cj ; 2 uses
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.db, i64 %i.ck ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit88.unr-lcssa, label %bb.f, !llvm.loop !35

.loopexit.loopexit87.unr-lcssa:                   ; preds = %bb.e
  %lcmp.mod93.not = icmp eq i32 %xtraiter91, 0
  br i1 %lcmp.mod93.not, label %.loopexit, label %.epil.preheader90

.epil.preheader90:                                ; preds = %.loopexit.loopexit87.unr-lcssa, %.lr.ph64
  %.14562.epil.init = phi ptr [ %2, %.lr.ph64 ], [ %i.bw, %.loopexit.loopexit87.unr-lcssa ]
  %.14861.epil.init = phi ptr [ %4, %.lr.ph64 ], [ %i.bx, %.loopexit.loopexit87.unr-lcssa ]
  %lcmp.mod94 = icmp ne i32 %xtraiter91, 0
  tail call void @llvm.assume(i1 %lcmp.mod94)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader90
  %.14562.epil = phi ptr [ %.14562.epil.init, %.epil.preheader90 ], [ %i.dk, %bb.g ] ; 3 uses
  %.14861.epil = phi ptr [ %.14861.epil.init, %.epil.preheader90 ], [ %i.dl, %bb.g ] ; 2 uses
  %epil.iter92 = phi i32 [ 0, %.epil.preheader90 ], [ %epil.iter92.next, %bb.g ]
  %i.dh = load float, ptr %.14861.epil, align 4, !tbaa !9
  %i.di = load float, ptr %.14562.epil, align 4, !tbaa !9
  %i.dj = tail call float @llvm.fmuladd.f32(float %i.a, float %i.di, float %i.dh)
  store float %i.dj, ptr %.14562.epil, align 4, !tbaa !9
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.14562.epil, i64 %i.bb
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %.14861.epil, i64 %i.bb
  %epil.iter92.next = add i32 %epil.iter92, 1     ; 2 uses
  %epil.iter92.cmp.not = icmp eq i32 %epil.iter92.next, %xtraiter91
  br i1 %epil.iter92.cmp.not, label %.loopexit, label %bb.g, !llvm.loop !36

.loopexit.loopexit88.unr-lcssa:                   ; preds = %bb.f
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit88.unr-lcssa, %.lr.ph
  %.359.epil.init = phi ptr [ %.246, %.lr.ph ], [ %i.df, %.loopexit.loopexit88.unr-lcssa ]
  %.35058.epil.init = phi ptr [ %.249, %.lr.ph ], [ %i.dg, %.loopexit.loopexit88.unr-lcssa ]
  %lcmp.mod89 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod89)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %.359.epil = phi ptr [ %.359.epil.init, %.epil.preheader ], [ %i.dp, %bb.h ] ; 3 uses
  %.35058.epil = phi ptr [ %.35058.epil.init, %.epil.preheader ], [ %i.dq, %bb.h ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.dm = load float, ptr %.35058.epil, align 4, !tbaa !9
  %i.dn = load float, ptr %.359.epil, align 4, !tbaa !9
  %i.do = tail call float @llvm.fmuladd.f32(float %i.a, float %i.dn, float %i.dm)
  store float %i.do, ptr %.359.epil, align 4, !tbaa !9
  %i.dp = getelementptr inbounds [4 x i8], ptr %.359.epil, i64 %i.cj
  %i.dq = getelementptr inbounds [4 x i8], ptr %.35058.epil, i64 %i.ck
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.h, !llvm.loop !37

.loopexit:                                        ; preds = %.loopexit.loopexit88.unr-lcssa, %bb.h, %.loopexit.loopexit87.unr-lcssa, %bb.g, %.lr.ph68.prol.loopexit, %.lr.ph68, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @scopy(i32 noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp slt i32 %0, 1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %2, %4
  br i1 %i.b, label %bb.c, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %2, 1
  br i1 %i.c, label %.lr.ph59.preheader, label %bb.d

.lr.ph59.preheader:                               ; preds = %bb.c
  %i.d = zext nneg i32 %0 to i64                  ; 2 uses
  %min.iters.check = icmp ult i32 %0, 8
  %5 = ptrtoaddr ptr %3 to i64
  %6 = ptrtoaddr ptr %1 to i64
  %i.e = sub i64 %6, %5
  %diff.check = icmp ugt i64 %i.e, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph59.preheader73, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph59.preheader
  %n.vec = and i64 %i.d, 2147483640               ; 4 uses
  %i.f = trunc nuw nsw i64 %n.vec to i32
  %i.g = shl nuw nsw i64 %n.vec, 2                ; 2 uses
  %i.h = getelementptr i8, ptr %1, i64 %i.g
  %i.i = getelementptr i8, ptr %3, i64 %i.g
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.j = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.j  ; 2 uses
  %next.gep69 = getelementptr i8, ptr %3, i64 %i.j ; 2 uses
  %i.k = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !9
  %wide.load70 = load <4 x float>, ptr %i.k, align 4, !tbaa !9
  %i.l = getelementptr i8, ptr %next.gep69, i64 16
  store <4 x float> %wide.load, ptr %next.gep69, align 4, !tbaa !9
  store <4 x float> %wide.load70, ptr %i.l, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !40

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.d
  br i1 %cmp.n, label %.loopexit, label %.lr.ph59.preheader73

.lr.ph59.preheader73:                             ; preds = %.lr.ph59.preheader, %middle.block
  %.058.ph = phi i32 [ 0, %.lr.ph59.preheader ], [ %i.f, %middle.block ] ; 4 uses
  %.03557.ph = phi ptr [ %1, %.lr.ph59.preheader ], [ %i.h, %middle.block ] ; 2 uses
  %.03856.ph = phi ptr [ %3, %.lr.ph59.preheader ], [ %i.i, %middle.block ] ; 2 uses
  %i.n = sub i32 %0, %.058.ph
  %xtraiter84 = and i32 %i.n, 7                   ; 2 uses
  %lcmp.mod85.not = icmp eq i32 %xtraiter84, 0
  br i1 %lcmp.mod85.not, label %.lr.ph59.prol.loopexit, label %.lr.ph59.prol

.lr.ph59.prol:                                    ; preds = %.lr.ph59.preheader73, %.lr.ph59.prol
  %.058.prol = phi i32 [ %i.r, %.lr.ph59.prol ], [ %.058.ph, %.lr.ph59.preheader73 ]
  %.03557.prol = phi ptr [ %i.o, %.lr.ph59.prol ], [ %.03557.ph, %.lr.ph59.preheader73 ] ; 2 uses
  %.03856.prol = phi ptr [ %i.q, %.lr.ph59.prol ], [ %.03856.ph, %.lr.ph59.preheader73 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph59.prol ], [ 0, %.lr.ph59.preheader73 ]
  %i.o = getelementptr inbounds nuw i8, ptr %.03557.prol, i64 4 ; 2 uses
  %i.p = load float, ptr %.03557.prol, align 4, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %.03856.prol, i64 4 ; 2 uses
  store float %i.p, ptr %.03856.prol, align 4, !tbaa !9
  %i.r = add nuw nsw i32 %.058.prol, 1            ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter84
  br i1 %prol.iter.cmp.not, label %.lr.ph59.prol.loopexit, label %.lr.ph59.prol, !llvm.loop !41

.lr.ph59.prol.loopexit:                           ; preds = %.lr.ph59.prol, %.lr.ph59.preheader73
  %.058.unr = phi i32 [ %.058.ph, %.lr.ph59.preheader73 ], [ %i.r, %.lr.ph59.prol ]
  %.03557.unr = phi ptr [ %.03557.ph, %.lr.ph59.preheader73 ], [ %i.o, %.lr.ph59.prol ]
  %.03856.unr = phi ptr [ %.03856.ph, %.lr.ph59.preheader73 ], [ %i.q, %.lr.ph59.prol ]
  %i.s = sub i32 %.058.ph, %0
  %i.t = icmp ugt i32 %i.s, -8
  br i1 %i.t, label %.loopexit, label %.lr.ph59

.lr.ph59:                                         ; preds = %.lr.ph59.prol.loopexit, %.lr.ph59
  %.058 = phi i32 [ %i.as, %.lr.ph59 ], [ %.058.unr, %.lr.ph59.prol.loopexit ]
  %.03557 = phi ptr [ %i.ap, %.lr.ph59 ], [ %.03557.unr, %.lr.ph59.prol.loopexit ] ; 9 uses
  %.03856 = phi ptr [ %i.ar, %.lr.ph59 ], [ %.03856.unr, %.lr.ph59.prol.loopexit ] ; 9 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.03557, i64 4
  %i.v = load float, ptr %.03557, align 4, !tbaa !9
  %i.w = getelementptr inbounds nuw i8, ptr %.03856, i64 4
  store float %i.v, ptr %.03856, align 4, !tbaa !9
  %i.x = getelementptr inbounds nuw i8, ptr %.03557, i64 8
  %i.y = load float, ptr %i.u, align 4, !tbaa !9
  %i.z = getelementptr inbounds nuw i8, ptr %.03856, i64 8
  store float %i.y, ptr %i.w, align 4, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %.03557, i64 12
  %i.ab = load float, ptr %i.x, align 4, !tbaa !9
  %i.ac = getelementptr inbounds nuw i8, ptr %.03856, i64 12
  store float %i.ab, ptr %i.z, align 4, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %.03557, i64 16
  %i.ae = load float, ptr %i.aa, align 4, !tbaa !9
  %i.af = getelementptr inbounds nuw i8, ptr %.03856, i64 16
  store float %i.ae, ptr %i.ac, align 4, !tbaa !9
  %i.ag = getelementptr inbounds nuw i8, ptr %.03557, i64 20
  %i.ah = load float, ptr %i.ad, align 4, !tbaa !9
  %i.ai = getelementptr inbounds nuw i8, ptr %.03856, i64 20
  store float %i.ah, ptr %i.af, align 4, !tbaa !9
  %i.aj = getelementptr inbounds nuw i8, ptr %.03557, i64 24
  %i.ak = load float, ptr %i.ag, align 4, !tbaa !9
  %i.al = getelementptr inbounds nuw i8, ptr %.03856, i64 24
  store float %i.ak, ptr %i.ai, align 4, !tbaa !9
  %i.am = getelementptr inbounds nuw i8, ptr %.03557, i64 28
  %i.an = load float, ptr %i.aj, align 4, !tbaa !9
  %i.ao = getelementptr inbounds nuw i8, ptr %.03856, i64 28
  store float %i.an, ptr %i.al, align 4, !tbaa !9
  %i.ap = getelementptr inbounds nuw i8, ptr %.03557, i64 32
  %i.aq = load float, ptr %i.am, align 4, !tbaa !9
  %i.ar = getelementptr inbounds nuw i8, ptr %.03856, i64 32
  store float %i.aq, ptr %i.ao, align 4, !tbaa !9
  %i.as = add nuw nsw i32 %.058, 8                ; 2 uses
  %exitcond63.not.7 = icmp eq i32 %i.as, %0
  br i1 %exitcond63.not.7, label %.loopexit, label %.lr.ph59, !llvm.loop !42

bb.d:                                             ; preds = %bb.c
  %i.at = icmp sgt i32 %2, 0
  br i1 %i.at, label %.lr.ph55, label %.lr.ph

.lr.ph55:                                         ; preds = %bb.d
  %i.au = zext nneg i32 %2 to i64                 ; 18 uses
  %xtraiter78 = and i32 %0, 7                     ; 3 uses
  %i.av = icmp ult i32 %0, 8
  br i1 %i.av, label %.epil.preheader77, label %.lr.ph55.new

.lr.ph55.new:                                     ; preds = %.lr.ph55
  %unroll_iter82 = and i32 %0, 2147483640
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph55.new
  %.13653 = phi ptr [ %1, %.lr.ph55.new ], [ %i.bs, %bb.e ] ; 2 uses
  %.13952 = phi ptr [ %3, %.lr.ph55.new ], [ %i.bt, %bb.e ] ; 2 uses
  %niter83 = phi i32 [ 0, %.lr.ph55.new ], [ %niter83.next.7, %bb.e ]
  %i.aw = load float, ptr %.13653, align 4, !tbaa !9
  store float %i.aw, ptr %.13952, align 4, !tbaa !9
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.13653, i64 %i.au ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.13952, i64 %i.au ; 2 uses
  %i.az = load float, ptr %i.ax, align 4, !tbaa !9
  store float %i.az, ptr %i.ay, align 4, !tbaa !9
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.au ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.au ; 2 uses
  %i.bc = load float, ptr %i.ba, align 4, !tbaa !9
  store float %i.bc, ptr %i.bb, align 4, !tbaa !9
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.au ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.au ; 2 uses
  %i.bf = load float, ptr %i.bd, align 4, !tbaa !9
  store float %i.bf, ptr %i.be, align 4, !tbaa !9
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.au ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.au ; 2 uses
  %i.bi = load float, ptr %i.bg, align 4, !tbaa !9
  store float %i.bi, ptr %i.bh, align 4, !tbaa !9
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.au ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.au ; 2 uses
  %i.bl = load float, ptr %i.bj, align 4, !tbaa !9
  store float %i.bl, ptr %i.bk, align 4, !tbaa !9
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.au ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.au ; 2 uses
  %i.bo = load float, ptr %i.bm, align 4, !tbaa !9
  store float %i.bo, ptr %i.bn, align 4, !tbaa !9
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.au ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.au ; 2 uses
  %i.br = load float, ptr %i.bp, align 4, !tbaa !9
  store float %i.br, ptr %i.bq, align 4, !tbaa !9
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.au ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.au ; 2 uses
  %niter83.next.7 = add nuw nsw i32 %niter83, 8   ; 2 uses
  %niter83.ncmp.7 = icmp eq i32 %niter83.next.7, %unroll_iter82
  br i1 %niter83.ncmp.7, label %.loopexit.loopexit74.unr-lcssa, label %bb.e, !llvm.loop !43

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %i.bu = icmp slt i32 %4, 0
  %i.bv = sub nsw i32 1, %0                       ; 2 uses
  %i.bw = mul nsw i32 %4, %i.bv
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %.240 = select i1 %i.bu, ptr %i.bz, ptr %3      ; 2 uses
  %i.ca = icmp slt i32 %2, 0
  %i.cb = mul nsw i32 %2, %i.bv
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %.237 = select i1 %i.ca, ptr %i.ce, ptr %1      ; 2 uses
  %i.cf = sext i32 %2 to i64                      ; 9 uses
  %i.cg = sext i32 %4 to i64                      ; 9 uses
  %xtraiter = and i32 %0, 7                       ; 3 uses
  %i.ch = icmp ult i32 %0, 8
  br i1 %i.ch, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %0, 2147483640
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.new
  %.350 = phi ptr [ %.237, %.lr.ph.new ], [ %i.de, %bb.f ] ; 2 uses
  %.34149 = phi ptr [ %.240, %.lr.ph.new ], [ %i.df, %bb.f ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.f ]
  %i.ci = load float, ptr %.34149, align 4, !tbaa !9
  store float %i.ci, ptr %.350, align 4, !tbaa !9
  %i.cj = getelementptr inbounds [4 x i8], ptr %.350, i64 %i.cf ; 2 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %.34149, i64 %i.cg ; 2 uses
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !9
  store float %i.cl, ptr %i.cj, align 4, !tbaa !9
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.cf ; 2 uses
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.cg ; 2 uses
  %i.co = load float, ptr %i.cn, align 4, !tbaa !9
  store float %i.co, ptr %i.cm, align 4, !tbaa !9
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.cf ; 2 uses
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.cg ; 2 uses
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !9
  store float %i.cr, ptr %i.cp, align 4, !tbaa !9
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.cf ; 2 uses
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.cg ; 2 uses
end_hunk_0
begin_hunk_1_@min0:bb.a
  %i.c = icmp eq i32 %0, 2
  br i1 %i.c, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c
  %spec.select93 = tail call i32 @llvm.smin.i32(i32 %spec.select, i32 %3) ; 2 uses
  %i.d = icmp eq i32 %0, 3
  br i1 %i.d, label %bb.q, label %bb.e

bb.e:                                             ; preds = %bb.d
  %spec.select94 = tail call i32 @llvm.smin.i32(i32 %spec.select93, i32 %4) ; 2 uses
  %i.e = icmp eq i32 %0, 4
  br i1 %i.e, label %bb.q, label %bb.f

bb.f:                                             ; preds = %bb.e
  %spec.select95 = tail call i32 @llvm.smin.i32(i32 %spec.select94, i32 %5) ; 2 uses
  %i.f = icmp eq i32 %0, 5
  br i1 %i.f, label %bb.q, label %bb.g

bb.g:                                             ; preds = %bb.f
  %spec.select96 = tail call i32 @llvm.smin.i32(i32 %spec.select95, i32 %6) ; 2 uses
  %i.g = icmp eq i32 %0, 6
  br i1 %i.g, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  %spec.select97 = tail call i32 @llvm.smin.i32(i32 %spec.select96, i32 %7) ; 2 uses
  %i.h = icmp eq i32 %0, 7
  br i1 %i.h, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  %spec.select98 = tail call i32 @llvm.smin.i32(i32 %spec.select97, i32 %8) ; 2 uses
  %i.i = icmp eq i32 %0, 8
  br i1 %i.i, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  %spec.select99 = tail call i32 @llvm.smin.i32(i32 %spec.select98, i32 %9) ; 2 uses
  %i.j = icmp eq i32 %0, 9
  br i1 %i.j, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %spec.select100 = tail call i32 @llvm.smin.i32(i32 %spec.select99, i32 %10) ; 2 uses
  %i.k = icmp eq i32 %0, 10
  br i1 %i.k, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %spec.select101 = tail call i32 @llvm.smin.i32(i32 %spec.select100, i32 %11) ; 2 uses
  %i.l = icmp eq i32 %0, 11
  br i1 %i.l, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %spec.select102 = tail call i32 @llvm.smin.i32(i32 %spec.select101, i32 %12) ; 2 uses
  %i.m = icmp eq i32 %0, 12
  br i1 %i.m, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %spec.select103 = tail call i32 @llvm.smin.i32(i32 %spec.select102, i32 %13) ; 2 uses
  %i.n = icmp eq i32 %0, 13
  br i1 %i.n, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %spec.select104 = tail call i32 @llvm.smin.i32(i32 %spec.select103, i32 %14) ; 2 uses
  %i.o = icmp eq i32 %0, 14
  br i1 %i.o, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %spec.select105 = tail call i32 @llvm.smin.i32(i32 %spec.select104, i32 %15)
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.p
  %.076 = phi i32 [ %spec.select105, %bb.p ], [ -1, %bb.a ], [ %1, %bb.b ], [ %spec.select, %bb.c ], [ %spec.select93, %bb.d ], [ %spec.select94, %bb.e ], [ %spec.select95, %bb.f ], [ %spec.select96, %bb.g ], [ %spec.select97, %bb.h ], [ %spec.select98, %bb.i ], [ %spec.select99, %bb.j ], [ %spec.select100, %bb.k ], [ %spec.select101, %bb.l ], [ %spec.select102, %bb.m ], [ %spec.select103, %bb.n ], [ %spec.select104, %bb.o ]
  ret i32 %.076
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @sscal(i32 noundef %0, double noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = fptrunc double %1 to float               ; 7 uses
  %i.b = icmp slt i32 %0, 1
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %3, 1
  br i1 %.not, label %.lr.ph29.preheader, label %.lr.ph

.lr.ph29.preheader:                               ; preds = %bb.b
  %i.c = zext nneg i32 %0 to i64                  ; 2 uses
  %min.iters.check = icmp ult i32 %0, 8
  br i1 %min.iters.check, label %.lr.ph29.preheader37, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph29.preheader
  %n.vec = and i64 %i.c, 2147483640               ; 4 uses
  %i.d = trunc nuw nsw i64 %n.vec to i32
  %i.e = shl nuw nsw i64 %n.vec, 2
  %i.f = getelementptr i8, ptr %2, i64 %i.e
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.a, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.g = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %2, i64 %i.g  ; 3 uses
  %i.h = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !9
  %wide.load35 = load <4 x float>, ptr %i.h, align 4, !tbaa !9
  %i.i = fmul <4 x float> %wide.load, %broadcast.splat
  %i.j = fmul <4 x float> %wide.load35, %broadcast.splat
  store <4 x float> %i.i, ptr %next.gep, align 4, !tbaa !9
  store <4 x float> %i.j, ptr %i.h, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !57

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.c
  br i1 %cmp.n, label %.loopexit, label %.lr.ph29.preheader37

.lr.ph29.preheader37:                             ; preds = %.lr.ph29.preheader, %middle.block
  %.128.ph = phi i32 [ 0, %.lr.ph29.preheader ], [ %i.d, %middle.block ]
  %.227.ph = phi ptr [ %2, %.lr.ph29.preheader ], [ %i.f, %middle.block ]
  br label %.lr.ph29

.lr.ph:                                           ; preds = %bb.b
  %i.l = icmp slt i32 %3, 0
  %i.m = sub nsw i32 1, %0
  %i.n = mul nsw i32 %3, %i.m
  %narrow = select i1 %i.l, i32 %i.n, i32 0
  %.020.idx = zext i32 %narrow to i64
  %.020 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.020.idx ; 2 uses
  %i.o = sext i32 %3 to i64                       ; 5 uses
  %xtraiter = and i32 %0, 3                       ; 3 uses
  %i.p = icmp ult i32 %0, 4
  br i1 %i.p, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %0, 2147483644
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %.12125 = phi ptr [ %.020, %.lr.ph.new ], [ %i.ab, %bb.c ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  %i.q = load float, ptr %.12125, align 4, !tbaa !9
  %i.r = fmul float %i.q, %i.a
  store float %i.r, ptr %.12125, align 4, !tbaa !9
  %i.s = getelementptr inbounds [4 x i8], ptr %.12125, i64 %i.o ; 3 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !9
  %i.u = fmul float %i.t, %i.a
  store float %i.u, ptr %i.s, align 4, !tbaa !9
  %i.v = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.o ; 3 uses
  %i.w = load float, ptr %i.v, align 4, !tbaa !9
  %i.x = fmul float %i.w, %i.a
  store float %i.x, ptr %i.v, align 4, !tbaa !9
  %i.y = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.o ; 3 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !9
  %i.aa = fmul float %i.z, %i.a
  store float %i.aa, ptr %i.y, align 4, !tbaa !9
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.o ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit38.unr-lcssa, label %bb.c, !llvm.loop !58

.lr.ph29:                                         ; preds = %.lr.ph29.preheader37, %.lr.ph29
  %.128 = phi i32 [ %i.ae, %.lr.ph29 ], [ %.128.ph, %.lr.ph29.preheader37 ]
  %.227 = phi ptr [ %i.af, %.lr.ph29 ], [ %.227.ph, %.lr.ph29.preheader37 ] ; 3 uses
  %i.ac = load float, ptr %.227, align 4, !tbaa !9
  %i.ad = fmul float %i.ac, %i.a
  store float %i.ad, ptr %.227, align 4, !tbaa !9
  %i.ae = add nuw nsw i32 %.128, 1                ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.227, i64 4
  %exitcond31.not = icmp eq i32 %i.ae, %0
  br i1 %exitcond31.not, label %.loopexit, label %.lr.ph29, !llvm.loop !59

.loopexit.loopexit38.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit38.unr-lcssa, %.lr.ph
  %.12125.epil.init = phi ptr [ %.020, %.lr.ph ], [ %i.ab, %.loopexit.loopexit38.unr-lcssa ]
  %lcmp.mod39 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod39)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %.12125.epil = phi ptr [ %.12125.epil.init, %.epil.preheader ], [ %i.ai, %bb.d ] ; 3 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.ag = load float, ptr %.12125.epil, align 4, !tbaa !9
  %i.ah = fmul float %i.ag, %i.a
  store float %i.ah, ptr %.12125.epil, align 4, !tbaa !9
  %i.ai = getelementptr inbounds [4 x i8], ptr %.12125.epil, i64 %i.o
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.d, !llvm.loop !60

.loopexit:                                        ; preds = %.loopexit.loopexit38.unr-lcssa, %bb.d, %.lr.ph29, %middle.block, %bb.a
  %.019 = phi i32 [ 0, %middle.block ], [ 1, %bb.a ], [ 0, %.lr.ph29 ], [ 0, %bb.d ], [ 0, %.loopexit.loopexit38.unr-lcssa ]
  ret i32 %.019
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @vexopy(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp slt i32 %0, 1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %4, 1
  %i.c = zext nneg i32 %0 to i64                  ; 4 uses
  %min.iters.check55 = icmp ult i32 %0, 12        ; 2 uses
  br i1 %i.b, label %.lr.ph36.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  br i1 %min.iters.check55, label %.lr.ph.preheader75, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %5 = ptrtoaddr ptr %1 to i64                    ; 2 uses
  %6 = ptrtoaddr ptr %2 to i64
  %i.d = sub i64 %6, %5
  %diff.check = icmp ugt i64 %i.d, -32
  %7 = ptrtoaddr ptr %3 to i64
  %i.e = sub i64 %7, %5
  %diff.check41 = icmp ugt i64 %i.e, -32
  %conflict.rdx = or i1 %diff.check, %diff.check41
  br i1 %conflict.rdx, label %.lr.ph.preheader75, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.c, 2147483640               ; 4 uses
  %i.f = trunc nuw nsw i64 %n.vec to i32
  %i.g = shl nuw nsw i64 %n.vec, 2                ; 3 uses
  %i.h = getelementptr i8, ptr %1, i64 %i.g
  %i.i = getelementptr i8, ptr %3, i64 %i.g
  %i.j = getelementptr i8, ptr %2, i64 %i.g
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.k = shl i64 %index, 2                        ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.k  ; 2 uses
  %next.gep42 = getelementptr i8, ptr %3, i64 %i.k ; 2 uses
  %next.gep43 = getelementptr i8, ptr %2, i64 %i.k ; 2 uses
  %i.l = getelementptr i8, ptr %next.gep43, i64 16
  %wide.load = load <4 x float>, ptr %next.gep43, align 4, !tbaa !9
  %wide.load44 = load <4 x float>, ptr %i.l, align 4, !tbaa !9
  %i.m = getelementptr i8, ptr %next.gep42, i64 16
  %wide.load45 = load <4 x float>, ptr %next.gep42, align 4, !tbaa !9
  %wide.load46 = load <4 x float>, ptr %i.m, align 4, !tbaa !9
  %i.n = fsub <4 x float> %wide.load, %wide.load45
  %i.o = fsub <4 x float> %wide.load44, %wide.load46
  %i.p = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> %i.n, ptr %next.gep, align 4, !tbaa !9
  store <4 x float> %i.o, ptr %i.p, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.c
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader75

.lr.ph.preheader75:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.131.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.f, %middle.block ] ; 4 uses
  %.12030.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.h, %middle.block ] ; 2 uses
  %.12229.ph = phi ptr [ %3, %vector.memcheck ], [ %3, %.lr.ph.preheader ], [ %i.i, %middle.block ] ; 2 uses
  %.12428.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.j, %middle.block ] ; 2 uses
  %i.r = sub i32 %0, %.131.ph
  %xtraiter = and i32 %i.r, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader75, %.lr.ph.prol
  %.131.prol = phi i32 [ %i.v, %.lr.ph.prol ], [ %.131.ph, %.lr.ph.preheader75 ]
  %.12030.prol = phi ptr [ %i.y, %.lr.ph.prol ], [ %.12030.ph, %.lr.ph.preheader75 ] ; 2 uses
  %.12229.prol = phi ptr [ %i.x, %.lr.ph.prol ], [ %.12229.ph, %.lr.ph.preheader75 ] ; 2 uses
  %.12428.prol = phi ptr [ %i.w, %.lr.ph.prol ], [ %.12428.ph, %.lr.ph.preheader75 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader75 ]
  %i.s = load float, ptr %.12428.prol, align 4, !tbaa !9
  %i.t = load float, ptr %.12229.prol, align 4, !tbaa !9
  %i.u = fsub float %i.s, %i.t
  store float %i.u, ptr %.12030.prol, align 4, !tbaa !9
  %i.v = add nuw nsw i32 %.131.prol, 1            ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.12428.prol, i64 4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.12229.prol, i64 4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.12030.prol, i64 4 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !62

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader75
  %.131.unr = phi i32 [ %.131.ph, %.lr.ph.preheader75 ], [ %i.v, %.lr.ph.prol ]
  %.12030.unr = phi ptr [ %.12030.ph, %.lr.ph.preheader75 ], [ %i.y, %.lr.ph.prol ]
  %.12229.unr = phi ptr [ %.12229.ph, %.lr.ph.preheader75 ], [ %i.x, %.lr.ph.prol ]
  %.12428.unr = phi ptr [ %.12428.ph, %.lr.ph.preheader75 ], [ %i.w, %.lr.ph.prol ]
  %i.z = sub i32 %.131.ph, %0
  %i.aa = icmp ugt i32 %i.z, -4
  br i1 %i.aa, label %.loopexit, label %.lr.ph

.lr.ph36.preheader:                               ; preds = %bb.b
  br i1 %min.iters.check55, label %.lr.ph36.preheader74, label %vector.memcheck50

vector.memcheck50:                                ; preds = %.lr.ph36.preheader
  %8 = ptrtoaddr ptr %1 to i64                    ; 2 uses
  %9 = ptrtoaddr ptr %2 to i64
  %i.ab = sub i64 %9, %8
  %diff.check51 = icmp ugt i64 %i.ab, -32
  %10 = ptrtoaddr ptr %3 to i64
  %i.ac = sub i64 %10, %8
  %diff.check52 = icmp ugt i64 %i.ac, -32
  %conflict.rdx53 = or i1 %diff.check51, %diff.check52
  br i1 %conflict.rdx53, label %.lr.ph36.preheader74, label %vector.ph56

vector.ph56:                                      ; preds = %vector.memcheck50
  %n.vec57 = and i64 %i.c, 2147483640             ; 4 uses
  %i.ad = trunc nuw nsw i64 %n.vec57 to i32
  %i.ae = shl nuw nsw i64 %n.vec57, 2             ; 3 uses
  %i.af = getelementptr i8, ptr %1, i64 %i.ae
  %i.ag = getelementptr i8, ptr %3, i64 %i.ae
  %i.ah = getelementptr i8, ptr %2, i64 %i.ae
  br label %vector.body58

vector.body58:                                    ; preds = %vector.body58, %vector.ph56
  %index59 = phi i64 [ 0, %vector.ph56 ], [ %index.next67, %vector.body58 ] ; 2 uses
  %i.ai = shl i64 %index59, 2                     ; 3 uses
  %next.gep60 = getelementptr i8, ptr %1, i64 %i.ai ; 2 uses
  %next.gep61 = getelementptr i8, ptr %3, i64 %i.ai ; 2 uses
  %next.gep62 = getelementptr i8, ptr %2, i64 %i.ai ; 2 uses
  %i.aj = getelementptr i8, ptr %next.gep62, i64 16
  %wide.load63 = load <4 x float>, ptr %next.gep62, align 4, !tbaa !9
  %wide.load64 = load <4 x float>, ptr %i.aj, align 4, !tbaa !9
  %i.ak = getelementptr i8, ptr %next.gep61, i64 16
  %wide.load65 = load <4 x float>, ptr %next.gep61, align 4, !tbaa !9
  %wide.load66 = load <4 x float>, ptr %i.ak, align 4, !tbaa !9
  %i.al = fadd <4 x float> %wide.load63, %wide.load65
  %i.am = fadd <4 x float> %wide.load64, %wide.load66
  %i.an = getelementptr i8, ptr %next.gep60, i64 16
  store <4 x float> %i.al, ptr %next.gep60, align 4, !tbaa !9
  store <4 x float> %i.am, ptr %i.an, align 4, !tbaa !9
  %index.next67 = add nuw i64 %index59, 8         ; 2 uses
  %i.ao = icmp eq i64 %index.next67, %n.vec57
  br i1 %i.ao, label %middle.block68, label %vector.body58, !llvm.loop !63

middle.block68:                                   ; preds = %vector.body58
  %cmp.n69 = icmp eq i64 %n.vec57, %i.c
  br i1 %cmp.n69, label %.loopexit, label %.lr.ph36.preheader74

.lr.ph36.preheader74:                             ; preds = %vector.memcheck50, %.lr.ph36.preheader, %middle.block68
  %.035.ph = phi i32 [ 0, %vector.memcheck50 ], [ 0, %.lr.ph36.preheader ], [ %i.ad, %middle.block68 ] ; 4 uses
  %.01934.ph = phi ptr [ %1, %vector.memcheck50 ], [ %1, %.lr.ph36.preheader ], [ %i.af, %middle.block68 ] ; 2 uses
  %.02133.ph = phi ptr [ %3, %vector.memcheck50 ], [ %3, %.lr.ph36.preheader ], [ %i.ag, %middle.block68 ] ; 2 uses
  %.02332.ph = phi ptr [ %2, %vector.memcheck50 ], [ %2, %.lr.ph36.preheader ], [ %i.ah, %middle.block68 ] ; 2 uses
  %i.ap = sub i32 %0, %.035.ph
  %xtraiter77 = and i32 %i.ap, 3                  ; 2 uses
  %lcmp.mod78.not = icmp eq i32 %xtraiter77, 0
  br i1 %lcmp.mod78.not, label %.lr.ph36.prol.loopexit, label %.lr.ph36.prol

.lr.ph36.prol:                                    ; preds = %.lr.ph36.preheader74, %.lr.ph36.prol
  %.035.prol = phi i32 [ %i.at, %.lr.ph36.prol ], [ %.035.ph, %.lr.ph36.preheader74 ]
  %.01934.prol = phi ptr [ %i.aw, %.lr.ph36.prol ], [ %.01934.ph, %.lr.ph36.preheader74 ] ; 2 uses
  %.02133.prol = phi ptr [ %i.av, %.lr.ph36.prol ], [ %.02133.ph, %.lr.ph36.preheader74 ] ; 2 uses
  %.02332.prol = phi ptr [ %i.au, %.lr.ph36.prol ], [ %.02332.ph, %.lr.ph36.preheader74 ] ; 2 uses
  %prol.iter79 = phi i32 [ %prol.iter79.next, %.lr.ph36.prol ], [ 0, %.lr.ph36.preheader74 ]
  %i.aq = load float, ptr %.02332.prol, align 4, !tbaa !9
  %i.ar = load float, ptr %.02133.prol, align 4, !tbaa !9
  %i.as = fadd float %i.aq, %i.ar
  store float %i.as, ptr %.01934.prol, align 4, !tbaa !9
  %i.at = add nuw nsw i32 %.035.prol, 1           ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.02332.prol, i64 4 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.02133.prol, i64 4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01934.prol, i64 4 ; 2 uses
  %prol.iter79.next = add i32 %prol.iter79, 1     ; 2 uses
  %prol.iter79.cmp.not = icmp eq i32 %prol.iter79.next, %xtraiter77
  br i1 %prol.iter79.cmp.not, label %.lr.ph36.prol.loopexit, label %.lr.ph36.prol, !llvm.loop !64

.lr.ph36.prol.loopexit:                           ; preds = %.lr.ph36.prol, %.lr.ph36.preheader74
  %.035.unr = phi i32 [ %.035.ph, %.lr.ph36.preheader74 ], [ %i.at, %.lr.ph36.prol ]
  %.01934.unr = phi ptr [ %.01934.ph, %.lr.ph36.preheader74 ], [ %i.aw, %.lr.ph36.prol ]
  %.02133.unr = phi ptr [ %.02133.ph, %.lr.ph36.preheader74 ], [ %i.av, %.lr.ph36.prol ]
  %.02332.unr = phi ptr [ %.02332.ph, %.lr.ph36.preheader74 ], [ %i.au, %.lr.ph36.prol ]
  %i.ax = sub i32 %.035.ph, %0
  %i.ay = icmp ugt i32 %i.ax, -4
  br i1 %i.ay, label %.loopexit, label %.lr.ph36

.lr.ph36:                                         ; preds = %.lr.ph36.prol.loopexit, %.lr.ph36
  %.035 = phi i32 [ %i.bu, %.lr.ph36 ], [ %.035.unr, %.lr.ph36.prol.loopexit ]
  %.01934 = phi ptr [ %i.bx, %.lr.ph36 ], [ %.01934.unr, %.lr.ph36.prol.loopexit ] ; 5 uses
  %.02133 = phi ptr [ %i.bw, %.lr.ph36 ], [ %.02133.unr, %.lr.ph36.prol.loopexit ] ; 5 uses
  %.02332 = phi ptr [ %i.bv, %.lr.ph36 ], [ %.02332.unr, %.lr.ph36.prol.loopexit ] ; 5 uses
  %i.az = load float, ptr %.02332, align 4, !tbaa !9
  %i.ba = load float, ptr %.02133, align 4, !tbaa !9
  %i.bb = fadd float %i.az, %i.ba
  store float %i.bb, ptr %.01934, align 4, !tbaa !9
  %i.bc = getelementptr inbounds nuw i8, ptr %.02332, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %.02133, i64 4
  %i.be = getelementptr inbounds nuw i8, ptr %.01934, i64 4
  %i.bf = load float, ptr %i.bc, align 4, !tbaa !9
  %i.bg = load float, ptr %i.bd, align 4, !tbaa !9
  %i.bh = fadd float %i.bf, %i.bg
  store float %i.bh, ptr %i.be, align 4, !tbaa !9
  %i.bi = getelementptr inbounds nuw i8, ptr %.02332, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %.02133, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.01934, i64 8
  %i.bl = load float, ptr %i.bi, align 4, !tbaa !9
  %i.bm = load float, ptr %i.bj, align 4, !tbaa !9
  %i.bn = fadd float %i.bl, %i.bm
  store float %i.bn, ptr %i.bk, align 4, !tbaa !9
  %i.bo = getelementptr inbounds nuw i8, ptr %.02332, i64 12
  %i.bp = getelementptr inbounds nuw i8, ptr %.02133, i64 12
  %i.bq = getelementptr inbounds nuw i8, ptr %.01934, i64 12
  %i.br = load float, ptr %i.bo, align 4, !tbaa !9
  %i.bs = load float, ptr %i.bp, align 4, !tbaa !9
  %i.bt = fadd float %i.br, %i.bs
  store float %i.bt, ptr %i.bq, align 4, !tbaa !9
  %i.bu = add nuw nsw i32 %.035, 4                ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.02332, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %.02133, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %.01934, i64 16
  %exitcond38.not.3 = icmp eq i32 %i.bu, %0
  br i1 %exitcond38.not.3, label %.loopexit, label %.lr.ph36, !llvm.loop !65

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.131 = phi i32 [ %i.ct, %.lr.ph ], [ %.131.unr, %.lr.ph.prol.loopexit ]
  %.12030 = phi ptr [ %i.cw, %.lr.ph ], [ %.12030.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.12229 = phi ptr [ %i.cv, %.lr.ph ], [ %.12229.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.12428 = phi ptr [ %i.cu, %.lr.ph ], [ %.12428.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.by = load float, ptr %.12428, align 4, !tbaa !9
  %i.bz = load float, ptr %.12229, align 4, !tbaa !9
  %i.ca = fsub float %i.by, %i.bz
  store float %i.ca, ptr %.12030, align 4, !tbaa !9
  %i.cb = getelementptr inbounds nuw i8, ptr %.12428, i64 4
  %i.cc = getelementptr inbounds nuw i8, ptr %.12229, i64 4
  %i.cd = getelementptr inbounds nuw i8, ptr %.12030, i64 4
  %i.ce = load float, ptr %i.cb, align 4, !tbaa !9
  %i.cf = load float, ptr %i.cc, align 4, !tbaa !9
  %i.cg = fsub float %i.ce, %i.cf
  store float %i.cg, ptr %i.cd, align 4, !tbaa !9
  %i.ch = getelementptr inbounds nuw i8, ptr %.12428, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %.12229, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %.12030, i64 8
  %i.ck = load float, ptr %i.ch, align 4, !tbaa !9
  %i.cl = load float, ptr %i.ci, align 4, !tbaa !9
  %i.cm = fsub float %i.ck, %i.cl
  store float %i.cm, ptr %i.cj, align 4, !tbaa !9
  %i.cn = getelementptr inbounds nuw i8, ptr %.12428, i64 12
  %i.co = getelementptr inbounds nuw i8, ptr %.12229, i64 12
  %i.cp = getelementptr inbounds nuw i8, ptr %.12030, i64 12
  %i.cq = load float, ptr %i.cn, align 4, !tbaa !9
  %i.cr = load float, ptr %i.co, align 4, !tbaa !9
  %i.cs = fsub float %i.cq, %i.cr
  store float %i.cs, ptr %i.cp, align 4, !tbaa !9
  %i.ct = add nuw nsw i32 %.131, 4                ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.12428, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %.12229, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %.12030, i64 16
  %exitcond.not.3 = icmp eq i32 %i.ct, %0
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph, !llvm.loop !66

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph36.prol.loopexit, %.lr.ph36, %middle.block, %middle.block68, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local void @vfill(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1, double noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = fptrunc double %2 to float               ; 2 uses
  %i.b = icmp slt i32 %0, 1
  br i1 %i.b, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.c = zext nneg i32 %0 to i64                  ; 2 uses
  %min.iters.check = icmp ult i32 %0, 8
  br i1 %min.iters.check, label %.preheader.preheader11, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %n.vec = and i64 %i.c, 2147483640               ; 4 uses
  %i.d = trunc nuw nsw i64 %n.vec to i32
  %i.e = shl nuw nsw i64 %n.vec, 2
  %i.f = getelementptr i8, ptr %1, i64 %i.e
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.a, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.g = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %1, i64 %i.g  ; 2 uses
  %i.h = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> %broadcast.splat, ptr %next.gep, align 4, !tbaa !9
  store <4 x float> %broadcast.splat, ptr %i.h, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.i = icmp eq i64 %index.next, %n.vec
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.c
  br i1 %cmp.n, label %.loopexit, label %.preheader.preheader11

.preheader.preheader11:                           ; preds = %.preheader.preheader, %middle.block
  %.09.ph = phi i32 [ 0, %.preheader.preheader ], [ %i.d, %middle.block ]
  %.068.ph = phi ptr [ %1, %.preheader.preheader ], [ %i.f, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader11, %.preheader
  %.09 = phi i32 [ %i.j, %.preheader ], [ %.09.ph, %.preheader.preheader11 ]
  %.068 = phi ptr [ %i.k, %.preheader ], [ %.068.ph, %.preheader.preheader11 ] ; 2 uses
  store float %i.a, ptr %.068, align 4, !tbaa !9
  %i.j = add nuw nsw i32 %.09, 1                  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.068, i64 4
end_hunk_1
