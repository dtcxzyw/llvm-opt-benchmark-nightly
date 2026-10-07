Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/linsol_qr?download=true
inline.NumInlined: 1335
inline.NumDeleted: 498
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZNK6casadi8LinsolQr5nfactEPvPKd:bb.a
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.050.us.i
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !88
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.050.us.i
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !88
  %i.ae = fcmp une double %i.ab, %i.ad
  br i1 %i.ae, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond71.not.i = icmp eq i64 %indvars.iv.next.i, %i.o
  br i1 %exitcond71.not.i, label %_ZN6casadi11cache_checkIdEEiPKT_PS1_PixxxPS4_.exit.thread, label %.lr.ph56.split.us.i, !llvm.loop !142

.lr.ph56.split.i:                                 ; preds = %.lr.ph56.i
  %i.af = load i32, ptr %i.h, align 4, !tbaa !83  ; 2 uses
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %.split.us.i, label %_ZN6casadi11cache_checkIdEEiPKT_PS1_PixxxPS4_.exit

.split.us.loopexit.i:                             ; preds = %.lr.ph56.split.us.i
  %i.ah = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.split.us.i

.split.us.i:                                      ; preds = %.split.us.loopexit.i, %.lr.ph56.split.i
  %.us-phi.i = phi i64 [ 0, %.lr.ph56.split.i ], [ %indvars.iv.i, %.split.us.loopexit.i ] ; 2 uses
  %.us-phi57.i = phi i32 [ 0, %.lr.ph56.split.i ], [ %i.ah, %.split.us.loopexit.i ]
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.us-phi.i
  store i32 %.us-phi57.i, ptr %i.ai, align 4, !tbaa !83
  %i.aj = mul nsw i64 %.us-phi.i, %i.m
  %i.ak = getelementptr inbounds [8 x i8], ptr %spec.select.i, i64 %i.aj
  br label %_ZN6casadi11cache_checkIdEEiPKT_PS1_PixxxPS4_.exit.thread

.critedge.preheader.i:                            ; preds = %bb.b
  %.not.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not.i, label %_ZN6casadi11cache_checkIdEEiPKT_PS1_PixxxPS4_.exit.thread201, label %.critedge.preheader62.i

.critedge.preheader62.i:                          ; preds = %.critedge.preheader.i
  %scevgep.i = getelementptr i8, ptr %spec.select.i32, i64 4
  %i.al = shl nuw i64 %indvars.iv.i, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %scevgep.i, ptr align 4 %spec.select.i32, i64 %i.al, i1 false), !tbaa !83
  br label %_ZN6casadi11cache_checkIdEEiPKT_PS1_PixxxPS4_.exit.thread201

_ZN6casadi11cache_checkIdEEiPKT_PS1_PixxxPS4_.exit.thread201: ; preds = %.critedge.preheader.i, %.critedge.preheader62.i
  store i32 %i.u, ptr %i.h, align 4, !tbaa !83
  br label %bb.e

_ZN6casadi11cache_checkIdEEiPKT_PS1_PixxxPS4_.exit: ; preds = %.lr.ph56.split.i
  %i.am = zext nneg i32 %i.af to i64
  %i.an = mul nsw i64 %i.m, %i.am
  %.not153 = icmp eq ptr %spec.select.i, null
  br i1 %.not153, label %_ZN6casadi11cache_checkIdEEiPKT_PS1_PixxxPS4_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN6casadi11cache_checkIdEEiPKT_PS1_PixxxPS4_.exit.thread201, %_ZN6casadi11cache_checkIdEEiPKT_PS1_PixxxPS4_.exit
  %i.ao = phi i64 [ %i.x, %_ZN6casadi11cache_checkIdEEiPKT_PS1_PixxxPS4_.exit.thread201 ], [ %i.an, %_ZN6casadi11cache_checkIdEEiPKT_PS1_PixxxPS4_.exit ] ; 4 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %spec.select.i, i64 %i.ao
  %i.aq = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p) ; 4 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.aq ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.at = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.as) ; 7 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !87 ; 7 uses
  %i.aw = ptrtoaddr ptr %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !87
  %i.az = icmp ne ptr %i.av, %i.ay
  %.not.i34154 = icmp ne ptr %i.av, null
  %.not.i34 = and i1 %.not.i34154, %i.az
  %i.ba = icmp sgt i64 %i.at, 0
  %or.cond = and i1 %i.ba, %.not.i34
  br i1 %or.cond, label %.lr.ph.i.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit

.lr.ph.i.preheader:                               ; preds = %bb.e
  %min.iters.check = icmp ult i64 %i.at, 18
  br i1 %min.iters.check, label %.lr.ph.i.preheader343, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.bb = add i64 %i.aq, %i.ao
  %i.bc = shl i64 %i.bb, 3
  %i.bd = add i64 %i.bc, %spec.select.i221
  %i.be = sub i64 %i.bd, %i.aw
  %diff.check = icmp ugt i64 %i.be, -32
  br i1 %diff.check, label %.lr.ph.i.preheader343, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.at, 9223372036854775804     ; 4 uses
  %i.bf = shl i64 %n.vec, 3                       ; 2 uses
  %i.bg = getelementptr i8, ptr %i.av, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.ar, i64 %i.bf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bi = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.av, i64 %i.bi ; 2 uses
  %next.gep222 = getelementptr i8, ptr %i.ar, i64 %i.bi ; 2 uses
  %i.bj = getelementptr i8, ptr %next.gep222, i64 16
  %wide.load = load <2 x double>, ptr %next.gep222, align 8, !tbaa !88
  %wide.load223 = load <2 x double>, ptr %i.bj, align 8, !tbaa !88
  %i.bk = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %wide.load, ptr %next.gep, align 8, !tbaa !88
  store <2 x double> %wide.load223, ptr %i.bk, align 8, !tbaa !88
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !143

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i.preheader343

.lr.ph.i.preheader343:                            ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.020.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %.01019.i.ph = phi ptr [ %i.av, %vector.memcheck ], [ %i.av, %.lr.ph.i.preheader ], [ %i.bg, %middle.block ] ; 2 uses
  %.01218.i.ph = phi ptr [ %i.ar, %vector.memcheck ], [ %i.ar, %.lr.ph.i.preheader ], [ %i.bh, %middle.block ] ; 2 uses
  %i.bm = sub nsw i64 %i.at, %.020.i.ph
  %xtraiter = and i64 %i.bm, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader343, %.lr.ph.i.prol
  %.020.i.prol = phi i64 [ %i.bq, %.lr.ph.i.prol ], [ %.020.i.ph, %.lr.ph.i.preheader343 ]
  %.01019.i.prol = phi ptr [ %i.bp, %.lr.ph.i.prol ], [ %.01019.i.ph, %.lr.ph.i.preheader343 ] ; 2 uses
  %.01218.i.prol = phi ptr [ %i.bn, %.lr.ph.i.prol ], [ %.01218.i.ph, %.lr.ph.i.preheader343 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader343 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.01218.i.prol, i64 8 ; 2 uses
  %i.bo = load double, ptr %.01218.i.prol, align 8, !tbaa !88
  %i.bp = getelementptr inbounds nuw i8, ptr %.01019.i.prol, i64 8 ; 2 uses
  store double %i.bo, ptr %.01019.i.prol, align 8, !tbaa !88
  %i.bq = add nuw nsw i64 %.020.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !144

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader343
  %.020.i.unr = phi i64 [ %.020.i.ph, %.lr.ph.i.preheader343 ], [ %i.bq, %.lr.ph.i.prol ]
  %.01019.i.unr = phi ptr [ %.01019.i.ph, %.lr.ph.i.preheader343 ], [ %i.bp, %.lr.ph.i.prol ]
  %.01218.i.unr = phi ptr [ %.01218.i.ph, %.lr.ph.i.preheader343 ], [ %i.bn, %.lr.ph.i.prol ]
  %i.br = sub nsw i64 %.020.i.ph, %i.at
  %i.bs = icmp ugt i64 %i.br, -8
  br i1 %i.bs, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.020.i = phi i64 [ %i.cr, %.lr.ph.i ], [ %.020.i.unr, %.lr.ph.i.prol.loopexit ]
  %.01019.i = phi ptr [ %i.cq, %.lr.ph.i ], [ %.01019.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.01218.i = phi ptr [ %i.co, %.lr.ph.i ], [ %.01218.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.01218.i, i64 8
  %i.bu = load double, ptr %.01218.i, align 8, !tbaa !88
  %i.bv = getelementptr inbounds nuw i8, ptr %.01019.i, i64 8
  store double %i.bu, ptr %.01019.i, align 8, !tbaa !88
  %i.bw = getelementptr inbounds nuw i8, ptr %.01218.i, i64 16
  %i.bx = load double, ptr %i.bt, align 8, !tbaa !88
  %i.by = getelementptr inbounds nuw i8, ptr %.01019.i, i64 16
  store double %i.bx, ptr %i.bv, align 8, !tbaa !88
  %i.bz = getelementptr inbounds nuw i8, ptr %.01218.i, i64 24
  %i.ca = load double, ptr %i.bw, align 8, !tbaa !88
  %i.cb = getelementptr inbounds nuw i8, ptr %.01019.i, i64 24
  store double %i.ca, ptr %i.by, align 8, !tbaa !88
  %i.cc = getelementptr inbounds nuw i8, ptr %.01218.i, i64 32
  %i.cd = load double, ptr %i.bz, align 8, !tbaa !88
  %i.ce = getelementptr inbounds nuw i8, ptr %.01019.i, i64 32
  store double %i.cd, ptr %i.cb, align 8, !tbaa !88
  %i.cf = getelementptr inbounds nuw i8, ptr %.01218.i, i64 40
  %i.cg = load double, ptr %i.cc, align 8, !tbaa !88
  %i.ch = getelementptr inbounds nuw i8, ptr %.01019.i, i64 40
  store double %i.cg, ptr %i.ce, align 8, !tbaa !88
  %i.ci = getelementptr inbounds nuw i8, ptr %.01218.i, i64 48
  %i.cj = load double, ptr %i.cf, align 8, !tbaa !88
  %i.ck = getelementptr inbounds nuw i8, ptr %.01019.i, i64 48
  store double %i.cj, ptr %i.ch, align 8, !tbaa !88
  %i.cl = getelementptr inbounds nuw i8, ptr %.01218.i, i64 56
  %i.cm = load double, ptr %i.ci, align 8, !tbaa !88
  %i.cn = getelementptr inbounds nuw i8, ptr %.01019.i, i64 56
  store double %i.cm, ptr %i.ck, align 8, !tbaa !88
  %i.co = getelementptr inbounds nuw i8, ptr %.01218.i, i64 64
  %i.cp = load double, ptr %i.cl, align 8, !tbaa !88
  %i.cq = getelementptr inbounds nuw i8, ptr %.01019.i, i64 64
  store double %i.cp, ptr %i.cn, align 8, !tbaa !88
  %i.cr = add nuw nsw i64 %.020.i, 8              ; 2 uses
  %exitcond.not.i35.7 = icmp eq i64 %i.cr, %i.at
  br i1 %exitcond.not.i35.7, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i, !llvm.loop !145

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit:       ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.e
  %i.cs = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.as) ; 3 uses
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.cs ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.cv = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cu) ; 7 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !87 ; 7 uses
  %i.cy = ptrtoaddr ptr %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !87
  %i.db = icmp ne ptr %i.cx, %i.da
  %.not.i37155 = icmp ne ptr %i.cx, null
  %.not.i37 = and i1 %.not.i37155, %i.db
  %i.dc = icmp sgt i64 %i.cv, 0
  %or.cond151 = and i1 %i.dc, %.not.i37
  br i1 %or.cond151, label %.lr.ph.i40.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit47

.lr.ph.i40.preheader:                             ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit
  %min.iters.check229 = icmp ult i64 %i.cv, 24
  br i1 %min.iters.check229, label %.lr.ph.i40.preheader342, label %vector.memcheck226

vector.memcheck226:                               ; preds = %.lr.ph.i40.preheader
  %i.dd = add i64 %i.aq, %i.cs
  %i.de = add i64 %i.dd, %i.ao
  %i.df = shl i64 %i.de, 3
  %i.dg = add i64 %i.df, %spec.select.i221
  %i.dh = sub i64 %i.dg, %i.cy
  %diff.check227 = icmp ugt i64 %i.dh, -32
  br i1 %diff.check227, label %.lr.ph.i40.preheader342, label %vector.ph230

vector.ph230:                                     ; preds = %vector.memcheck226
  %n.vec231 = and i64 %i.cv, 9223372036854775804  ; 4 uses
  %i.di = shl i64 %n.vec231, 3                    ; 2 uses
  %i.dj = getelementptr i8, ptr %i.cx, i64 %i.di
  %i.dk = getelementptr i8, ptr %i.ct, i64 %i.di
  br label %vector.body232

vector.body232:                                   ; preds = %vector.body232, %vector.ph230
  %index233 = phi i64 [ 0, %vector.ph230 ], [ %index.next238, %vector.body232 ] ; 2 uses
  %i.dl = shl i64 %index233, 3                    ; 2 uses
  %next.gep234 = getelementptr i8, ptr %i.cx, i64 %i.dl ; 2 uses
  %next.gep235 = getelementptr i8, ptr %i.ct, i64 %i.dl ; 2 uses
  %i.dm = getelementptr i8, ptr %next.gep235, i64 16
  %wide.load236 = load <2 x double>, ptr %next.gep235, align 8, !tbaa !88
  %wide.load237 = load <2 x double>, ptr %i.dm, align 8, !tbaa !88
  %i.dn = getelementptr i8, ptr %next.gep234, i64 16
  store <2 x double> %wide.load236, ptr %next.gep234, align 8, !tbaa !88
  store <2 x double> %wide.load237, ptr %i.dn, align 8, !tbaa !88
  %index.next238 = add nuw i64 %index233, 4       ; 2 uses
  %i.do = icmp eq i64 %index.next238, %n.vec231
  br i1 %i.do, label %middle.block239, label %vector.body232, !llvm.loop !146

middle.block239:                                  ; preds = %vector.body232
  %cmp.n240 = icmp eq i64 %i.cv, %n.vec231
  br i1 %cmp.n240, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit47, label %.lr.ph.i40.preheader342

.lr.ph.i40.preheader342:                          ; preds = %vector.memcheck226, %.lr.ph.i40.preheader, %middle.block239
  %.020.i41.ph = phi i64 [ 0, %vector.memcheck226 ], [ 0, %.lr.ph.i40.preheader ], [ %n.vec231, %middle.block239 ] ; 4 uses
  %.01019.i42.ph = phi ptr [ %i.cx, %vector.memcheck226 ], [ %i.cx, %.lr.ph.i40.preheader ], [ %i.dj, %middle.block239 ] ; 2 uses
  %.01218.i43.ph = phi ptr [ %i.ct, %vector.memcheck226 ], [ %i.ct, %.lr.ph.i40.preheader ], [ %i.dk, %middle.block239 ] ; 2 uses
  %i.dp = sub nsw i64 %i.cv, %.020.i41.ph
  %xtraiter352 = and i64 %i.dp, 7                 ; 2 uses
  %lcmp.mod353.not = icmp eq i64 %xtraiter352, 0
  br i1 %lcmp.mod353.not, label %.lr.ph.i40.prol.loopexit, label %.lr.ph.i40.prol

.lr.ph.i40.prol:                                  ; preds = %.lr.ph.i40.preheader342, %.lr.ph.i40.prol
  %.020.i41.prol = phi i64 [ %i.dt, %.lr.ph.i40.prol ], [ %.020.i41.ph, %.lr.ph.i40.preheader342 ]
  %.01019.i42.prol = phi ptr [ %i.ds, %.lr.ph.i40.prol ], [ %.01019.i42.ph, %.lr.ph.i40.preheader342 ] ; 2 uses
  %.01218.i43.prol = phi ptr [ %i.dq, %.lr.ph.i40.prol ], [ %.01218.i43.ph, %.lr.ph.i40.preheader342 ] ; 2 uses
  %prol.iter354 = phi i64 [ %prol.iter354.next, %.lr.ph.i40.prol ], [ 0, %.lr.ph.i40.preheader342 ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.01218.i43.prol, i64 8 ; 2 uses
  %i.dr = load double, ptr %.01218.i43.prol, align 8, !tbaa !88
  %i.ds = getelementptr inbounds nuw i8, ptr %.01019.i42.prol, i64 8 ; 2 uses
  store double %i.dr, ptr %.01019.i42.prol, align 8, !tbaa !88
  %i.dt = add nuw nsw i64 %.020.i41.prol, 1       ; 2 uses
  %prol.iter354.next = add i64 %prol.iter354, 1   ; 2 uses
  %prol.iter354.cmp.not = icmp eq i64 %prol.iter354.next, %xtraiter352
  br i1 %prol.iter354.cmp.not, label %.lr.ph.i40.prol.loopexit, label %.lr.ph.i40.prol, !llvm.loop !147

.lr.ph.i40.prol.loopexit:                         ; preds = %.lr.ph.i40.prol, %.lr.ph.i40.preheader342
  %.020.i41.unr = phi i64 [ %.020.i41.ph, %.lr.ph.i40.preheader342 ], [ %i.dt, %.lr.ph.i40.prol ]
  %.01019.i42.unr = phi ptr [ %.01019.i42.ph, %.lr.ph.i40.preheader342 ], [ %i.ds, %.lr.ph.i40.prol ]
  %.01218.i43.unr = phi ptr [ %.01218.i43.ph, %.lr.ph.i40.preheader342 ], [ %i.dq, %.lr.ph.i40.prol ]
  %i.du = sub nsw i64 %.020.i41.ph, %i.cv
  %i.dv = icmp ugt i64 %i.du, -8
  br i1 %i.dv, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit47, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %.lr.ph.i40.prol.loopexit, %.lr.ph.i40
  %.020.i41 = phi i64 [ %i.eu, %.lr.ph.i40 ], [ %.020.i41.unr, %.lr.ph.i40.prol.loopexit ]
  %.01019.i42 = phi ptr [ %i.et, %.lr.ph.i40 ], [ %.01019.i42.unr, %.lr.ph.i40.prol.loopexit ] ; 9 uses
  %.01218.i43 = phi ptr [ %i.er, %.lr.ph.i40 ], [ %.01218.i43.unr, %.lr.ph.i40.prol.loopexit ] ; 9 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.01218.i43, i64 8
  %i.dx = load double, ptr %.01218.i43, align 8, !tbaa !88
  %i.dy = getelementptr inbounds nuw i8, ptr %.01019.i42, i64 8
  store double %i.dx, ptr %.01019.i42, align 8, !tbaa !88
  %i.dz = getelementptr inbounds nuw i8, ptr %.01218.i43, i64 16
  %i.ea = load double, ptr %i.dw, align 8, !tbaa !88
  %i.eb = getelementptr inbounds nuw i8, ptr %.01019.i42, i64 16
  store double %i.ea, ptr %i.dy, align 8, !tbaa !88
  %i.ec = getelementptr inbounds nuw i8, ptr %.01218.i43, i64 24
  %i.ed = load double, ptr %i.dz, align 8, !tbaa !88
  %i.ee = getelementptr inbounds nuw i8, ptr %.01019.i42, i64 24
  store double %i.ed, ptr %i.eb, align 8, !tbaa !88
  %i.ef = getelementptr inbounds nuw i8, ptr %.01218.i43, i64 32
  %i.eg = load double, ptr %i.ec, align 8, !tbaa !88
  %i.eh = getelementptr inbounds nuw i8, ptr %.01019.i42, i64 32
  store double %i.eg, ptr %i.ee, align 8, !tbaa !88
  %i.ei = getelementptr inbounds nuw i8, ptr %.01218.i43, i64 40
  %i.ej = load double, ptr %i.ef, align 8, !tbaa !88
  %i.ek = getelementptr inbounds nuw i8, ptr %.01019.i42, i64 40
  store double %i.ej, ptr %i.eh, align 8, !tbaa !88
  %i.el = getelementptr inbounds nuw i8, ptr %.01218.i43, i64 48
  %i.em = load double, ptr %i.ei, align 8, !tbaa !88
  %i.en = getelementptr inbounds nuw i8, ptr %.01019.i42, i64 48
  store double %i.em, ptr %i.ek, align 8, !tbaa !88
  %i.eo = getelementptr inbounds nuw i8, ptr %.01218.i43, i64 56
  %i.ep = load double, ptr %i.el, align 8, !tbaa !88
  %i.eq = getelementptr inbounds nuw i8, ptr %.01019.i42, i64 56
  store double %i.ep, ptr %i.en, align 8, !tbaa !88
  %i.er = getelementptr inbounds nuw i8, ptr %.01218.i43, i64 64
  %i.es = load double, ptr %i.eo, align 8, !tbaa !88
  %i.et = getelementptr inbounds nuw i8, ptr %.01019.i42, i64 64
  store double %i.es, ptr %i.eq, align 8, !tbaa !88
  %i.eu = add nuw nsw i64 %.020.i41, 8            ; 2 uses
  %exitcond.not.i44.7 = icmp eq i64 %i.eu, %i.cv
  br i1 %exitcond.not.i44.7, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit47, label %.lr.ph.i40, !llvm.loop !148

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit47:     ; preds = %.lr.ph.i40.prol.loopexit, %.lr.ph.i40, %middle.block239, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit
  %i.ev = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cu) ; 2 uses
  %i.ew = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.p) ; 7 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !87 ; 7 uses
  %i.ez = ptrtoaddr ptr %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !87
  %i.fc = icmp ne ptr %i.ey, %i.fb
  %.not.i49156 = icmp ne ptr %i.ey, null
  %.not.i49 = and i1 %.not.i49156, %i.fc
  %i.fd = icmp sgt i64 %i.ew, 0
  %or.cond152 = and i1 %i.fd, %.not.i49
  br i1 %or.cond152, label %.lr.ph.i52.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit59

.lr.ph.i52.preheader:                             ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit47
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.ev ; 4 uses
  %min.iters.check247 = icmp ult i64 %i.ew, 28
  br i1 %min.iters.check247, label %.lr.ph.i52.preheader341, label %vector.memcheck244

vector.memcheck244:                               ; preds = %.lr.ph.i52.preheader
  %i.ff = add i64 %i.aq, %i.cs
  %i.fg = add i64 %i.ff, %i.ev
  %i.fh = add i64 %i.fg, %i.ao
  %i.fi = shl i64 %i.fh, 3
  %i.fj = add i64 %i.fi, %spec.select.i221
  %i.fk = sub i64 %i.fj, %i.ez
  %diff.check245 = icmp ugt i64 %i.fk, -32
  br i1 %diff.check245, label %.lr.ph.i52.preheader341, label %vector.ph248

vector.ph248:                                     ; preds = %vector.memcheck244
  %n.vec249 = and i64 %i.ew, 9223372036854775804  ; 4 uses
  %i.fl = shl i64 %n.vec249, 3                    ; 2 uses
  %i.fm = getelementptr i8, ptr %i.ey, i64 %i.fl
  %i.fn = getelementptr i8, ptr %i.fe, i64 %i.fl
  br label %vector.body250

vector.body250:                                   ; preds = %vector.body250, %vector.ph248
  %index251 = phi i64 [ 0, %vector.ph248 ], [ %index.next256, %vector.body250 ] ; 2 uses
  %i.fo = shl i64 %index251, 3                    ; 2 uses
  %next.gep252 = getelementptr i8, ptr %i.ey, i64 %i.fo ; 2 uses
  %next.gep253 = getelementptr i8, ptr %i.fe, i64 %i.fo ; 2 uses
  %i.fp = getelementptr i8, ptr %next.gep253, i64 16
  %wide.load254 = load <2 x double>, ptr %next.gep253, align 8, !tbaa !88
  %wide.load255 = load <2 x double>, ptr %i.fp, align 8, !tbaa !88
  %i.fq = getelementptr i8, ptr %next.gep252, i64 16
  store <2 x double> %wide.load254, ptr %next.gep252, align 8, !tbaa !88
  store <2 x double> %wide.load255, ptr %i.fq, align 8, !tbaa !88
  %index.next256 = add nuw i64 %index251, 4       ; 2 uses
  %i.fr = icmp eq i64 %index.next256, %n.vec249
  br i1 %i.fr, label %middle.block257, label %vector.body250, !llvm.loop !149

middle.block257:                                  ; preds = %vector.body250
  %cmp.n258 = icmp eq i64 %i.ew, %n.vec249
  br i1 %cmp.n258, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit59, label %.lr.ph.i52.preheader341

.lr.ph.i52.preheader341:                          ; preds = %vector.memcheck244, %.lr.ph.i52.preheader, %middle.block257
  %.020.i53.ph = phi i64 [ 0, %vector.memcheck244 ], [ 0, %.lr.ph.i52.preheader ], [ %n.vec249, %middle.block257 ] ; 4 uses
  %.01019.i54.ph = phi ptr [ %i.ey, %vector.memcheck244 ], [ %i.ey, %.lr.ph.i52.preheader ], [ %i.fm, %middle.block257 ] ; 2 uses
  %.01218.i55.ph = phi ptr [ %i.fe, %vector.memcheck244 ], [ %i.fe, %.lr.ph.i52.preheader ], [ %i.fn, %middle.block257 ] ; 2 uses
  %i.fs = sub nsw i64 %i.ew, %.020.i53.ph
  %xtraiter355 = and i64 %i.fs, 7                 ; 2 uses
  %lcmp.mod356.not = icmp eq i64 %xtraiter355, 0
  br i1 %lcmp.mod356.not, label %.lr.ph.i52.prol.loopexit, label %.lr.ph.i52.prol

.lr.ph.i52.prol:                                  ; preds = %.lr.ph.i52.preheader341, %.lr.ph.i52.prol
  %.020.i53.prol = phi i64 [ %i.fw, %.lr.ph.i52.prol ], [ %.020.i53.ph, %.lr.ph.i52.preheader341 ]
  %.01019.i54.prol = phi ptr [ %i.fv, %.lr.ph.i52.prol ], [ %.01019.i54.ph, %.lr.ph.i52.preheader341 ] ; 2 uses
  %.01218.i55.prol = phi ptr [ %i.ft, %.lr.ph.i52.prol ], [ %.01218.i55.ph, %.lr.ph.i52.preheader341 ] ; 2 uses
  %prol.iter357 = phi i64 [ %prol.iter357.next, %.lr.ph.i52.prol ], [ 0, %.lr.ph.i52.preheader341 ]
  %i.ft = getelementptr inbounds nuw i8, ptr %.01218.i55.prol, i64 8 ; 2 uses
  %i.fu = load double, ptr %.01218.i55.prol, align 8, !tbaa !88
  %i.fv = getelementptr inbounds nuw i8, ptr %.01019.i54.prol, i64 8 ; 2 uses
  store double %i.fu, ptr %.01019.i54.prol, align 8, !tbaa !88
  %i.fw = add nuw nsw i64 %.020.i53.prol, 1       ; 2 uses
  %prol.iter357.next = add i64 %prol.iter357, 1   ; 2 uses
  %prol.iter357.cmp.not = icmp eq i64 %prol.iter357.next, %xtraiter355
  br i1 %prol.iter357.cmp.not, label %.lr.ph.i52.prol.loopexit, label %.lr.ph.i52.prol, !llvm.loop !150

.lr.ph.i52.prol.loopexit:                         ; preds = %.lr.ph.i52.prol, %.lr.ph.i52.preheader341
  %.020.i53.unr = phi i64 [ %.020.i53.ph, %.lr.ph.i52.preheader341 ], [ %i.fw, %.lr.ph.i52.prol ]
  %.01019.i54.unr = phi ptr [ %.01019.i54.ph, %.lr.ph.i52.preheader341 ], [ %i.fv, %.lr.ph.i52.prol ]
  %.01218.i55.unr = phi ptr [ %.01218.i55.ph, %.lr.ph.i52.preheader341 ], [ %i.ft, %.lr.ph.i52.prol ]
  %i.fx = sub nsw i64 %.020.i53.ph, %i.ew
  %i.fy = icmp ugt i64 %i.fx, -8
  br i1 %i.fy, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit59, label %.lr.ph.i52

.lr.ph.i52:                                       ; preds = %.lr.ph.i52.prol.loopexit, %.lr.ph.i52
  %.020.i53 = phi i64 [ %i.gx, %.lr.ph.i52 ], [ %.020.i53.unr, %.lr.ph.i52.prol.loopexit ]
  %.01019.i54 = phi ptr [ %i.gw, %.lr.ph.i52 ], [ %.01019.i54.unr, %.lr.ph.i52.prol.loopexit ] ; 9 uses
  %.01218.i55 = phi ptr [ %i.gu, %.lr.ph.i52 ], [ %.01218.i55.unr, %.lr.ph.i52.prol.loopexit ] ; 9 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.01218.i55, i64 8
  %i.ga = load double, ptr %.01218.i55, align 8, !tbaa !88
  %i.gb = getelementptr inbounds nuw i8, ptr %.01019.i54, i64 8
  store double %i.ga, ptr %.01019.i54, align 8, !tbaa !88
  %i.gc = getelementptr inbounds nuw i8, ptr %.01218.i55, i64 16
  %i.gd = load double, ptr %i.fz, align 8, !tbaa !88
  %i.ge = getelementptr inbounds nuw i8, ptr %.01019.i54, i64 16
  store double %i.gd, ptr %i.gb, align 8, !tbaa !88
  %i.gf = getelementptr inbounds nuw i8, ptr %.01218.i55, i64 24
  %i.gg = load double, ptr %i.gc, align 8, !tbaa !88
  %i.gh = getelementptr inbounds nuw i8, ptr %.01019.i54, i64 24
  store double %i.gg, ptr %i.ge, align 8, !tbaa !88
  %i.gi = getelementptr inbounds nuw i8, ptr %.01218.i55, i64 32
  %i.gj = load double, ptr %i.gf, align 8, !tbaa !88
  %i.gk = getelementptr inbounds nuw i8, ptr %.01019.i54, i64 32
  store double %i.gj, ptr %i.gh, align 8, !tbaa !88
  %i.gl = getelementptr inbounds nuw i8, ptr %.01218.i55, i64 40
  %i.gm = load double, ptr %i.gi, align 8, !tbaa !88
  %i.gn = getelementptr inbounds nuw i8, ptr %.01019.i54, i64 40
  store double %i.gm, ptr %i.gk, align 8, !tbaa !88
  %i.go = getelementptr inbounds nuw i8, ptr %.01218.i55, i64 48
  %i.gp = load double, ptr %i.gl, align 8, !tbaa !88
  %i.gq = getelementptr inbounds nuw i8, ptr %.01019.i54, i64 48
  store double %i.gp, ptr %i.gn, align 8, !tbaa !88
  %i.gr = getelementptr inbounds nuw i8, ptr %.01218.i55, i64 56
  %i.gs = load double, ptr %i.go, align 8, !tbaa !88
  %i.gt = getelementptr inbounds nuw i8, ptr %.01019.i54, i64 56
  store double %i.gs, ptr %i.gq, align 8, !tbaa !88
  %i.gu = getelementptr inbounds nuw i8, ptr %.01218.i55, i64 64
  %i.gv = load double, ptr %i.gr, align 8, !tbaa !88
  %i.gw = getelementptr inbounds nuw i8, ptr %.01019.i54, i64 64
  store double %i.gv, ptr %i.gt, align 8, !tbaa !88
  %i.gx = add nuw nsw i64 %.020.i53, 8            ; 2 uses
  %exitcond.not.i56.7 = icmp eq i64 %i.gx, %i.ew
  br i1 %exitcond.not.i56.7, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit59, label %.lr.ph.i52, !llvm.loop !151

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit59:     ; preds = %.lr.ph.i52.prol.loopexit, %.lr.ph.i52, %middle.block257, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit47
  %i.gy = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.p) ; 0 uses
  br label %bb.m

_ZN6casadi11cache_checkIdEEiPKT_PS1_PixxxPS4_.exit.thread: ; preds = %bb.d, %.split.us.i, %bb.a, %_ZN6casadi11cache_checkIdEEiPKT_PS1_PixxxPS4_.exit
  %.1142146 = phi ptr [ null, %_ZN6casadi11cache_checkIdEEiPKT_PS1_PixxxPS4_.exit ], [ null, %bb.a ], [ %i.ak, %.split.us.i ], [ %i.y, %bb.d ] ; 7 uses
  %.1142146263 = ptrtoaddr ptr %.1142146 to i64   ; 4 uses
  %i.gz = tail call noundef ptr @_ZNK6casadi8SparsitycvPKxEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 4 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !87 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !87
  %i.he = icmp eq ptr %i.hb, %i.hd
  %spec.select.i60 = select i1 %i.he, ptr null, ptr %i.hb
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.hg = tail call noundef ptr @_ZNK6casadi8SparsitycvPKxEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hf)
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !87 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !87
  %i.hl = icmp eq ptr %i.hi, %i.hk
  %spec.select.i61 = select i1 %i.hl, ptr null, ptr %i.hi
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 5 uses
  %i.hn = tail call noundef ptr @_ZNK6casadi8SparsitycvPKxEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hm)
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !87 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !87
  %i.hs = icmp eq ptr %i.hp, %i.hr
  %spec.select.i62 = select i1 %i.hs, ptr null, ptr %i.hp
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !87 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !87
  %i.hx = icmp eq ptr %i.hu, %i.hw
  %spec.select.i63 = select i1 %i.hx, ptr null, ptr %i.hu
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !92 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !92
  %i.ic = icmp eq ptr %i.hz, %i.ib
  %spec.select.i64 = select i1 %i.ic, ptr null, ptr %i.hz
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !92 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !92
  %i.ih = icmp eq ptr %i.ie, %i.ig
  %spec.select.i65 = select i1 %i.ih, ptr null, ptr %i.ie
  tail call void @_ZN6casadi9casadi_qrIdEEvPKxPKT_PS3_S2_S6_S2_S6_S6_S2_S2_(ptr noundef %i.gz, ptr noundef %2, ptr noundef %spec.select.i60, ptr noundef %i.hg, ptr noundef %spec.select.i61, ptr noundef %i.hn, ptr noundef %spec.select.i62, ptr noundef %spec.select.i63, ptr noundef %spec.select.i64, ptr noundef %spec.select.i65)
  %i.ii = load ptr, ptr %i.ho, align 8, !tbaa !87 ; 4 uses
  %i.ij = tail call noundef ptr @_ZNK6casadi8SparsitycvPKxEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hm) ; 3 uses
  %i.ik = load ptr, ptr %i.id, align 8, !tbaa !92 ; 4 uses
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.im = load double, ptr %i.il, align 8, !tbaa !76 ; 4 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.io = load i64, ptr %i.in, align 8, !tbaa !93 ; 4 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ij, i64 16 ; 3 uses
  %i.iq = icmp sgt i64 %i.io, 0
  br i1 %i.iq, label %.lr.ph.i68, label %_ZN6casadi18casadi_qr_singularIdEExPT_PxPKS1_PKxS7_S1_.exit.thread

.lr.ph.i68:                                       ; preds = %_ZN6casadi11cache_checkIdEEiPKT_PS1_PixxxPS4_.exit.thread
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !93
  %i.it = getelementptr [8 x i8], ptr %i.ii, i64 %i.is
  %i.iu = getelementptr i8, ptr %i.it, i64 -8
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !88
  %i.iw = tail call double @llvm.fabs.f64(double %i.iv) ; 6 uses
  %i.ix = fcmp olt double %i.iw, %i.im
  %i.iy = zext i1 %i.ix to i64                    ; 3 uses
  %i.iz = load i64, ptr %i.ik, align 8, !tbaa !93 ; 3 uses
  %exitcond.peel.not.i = icmp eq i64 %i.io, 1
  br i1 %exitcond.peel.not.i, label %_ZN6casadi18casadi_qr_singularIdEExPT_PxPKS1_PKxS7_S1_.exit, label %.lr.ph.split.split.i.preheader

.lr.ph.split.split.i.preheader:                   ; preds = %.lr.ph.i68
  %i.ja = add nsw i64 %i.io, -1                   ; 3 uses
  %xtraiter358 = and i64 %i.ja, 1
  %i.jb = icmp eq i64 %i.io, 2
  br i1 %i.jb, label %.lr.ph.split.split.i.epil.preheader, label %.lr.ph.split.split.i.preheader.new

.lr.ph.split.split.i.preheader.new:               ; preds = %.lr.ph.split.split.i.preheader
  %unroll_iter = and i64 %i.ja, -2
  br label %.lr.ph.split.split.i

.lr.ph.split.split.i:                             ; preds = %bb.h, %.lr.ph.split.split.i.preheader.new
  %.0138 = phi double [ %i.iw, %.lr.ph.split.split.i.preheader.new ], [ %.1139.1, %bb.h ]
  %.0136 = phi i64 [ %i.iz, %.lr.ph.split.split.i.preheader.new ], [ %.1137.1, %bb.h ]
  %.030.i = phi i64 [ %i.iy, %.lr.ph.split.split.i.preheader.new ], [ %spec.select.i70.1, %bb.h ]
  %.02229.i = phi i64 [ 1, %.lr.ph.split.split.i.preheader.new ], [ %i.jo, %bb.h ] ; 3 uses
  %.02328.i = phi double [ %i.iw, %.lr.ph.split.split.i.preheader.new ], [ %.124.i.1, %bb.h ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.split.split.i.preheader.new ], [ %niter.next.1, %bb.h ]
  %i.jc = add nuw nsw i64 %.02229.i, 1            ; 2 uses
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %i.jc
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !93
  %i.jf = getelementptr [8 x i8], ptr %i.ii, i64 %i.je
  %i.jg = getelementptr i8, ptr %i.jf, i64 -8
  %i.jh = load double, ptr %i.jg, align 8, !tbaa !88
end_hunk_0
begin_hunk_1_@_ZNK6casadi8LinsolQr5nfactEPvPKd:bb.a
  br i1 %i.lr, label %.lr.ph23.preheader.i84, label %.loopexit161

.lr.ph23.preheader.i84:                           ; preds = %.preheader.i83
  %i.mh = shl nuw i64 %i.lq, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %.1142146, i8 0, i64 %i.mh, i1 false), !tbaa !88
  br label %.loopexit161

.lr.ph.i78:                                       ; preds = %.lr.ph.i78.prol.loopexit, %.lr.ph.i78
  %.020.i79 = phi i64 [ %i.ng, %.lr.ph.i78 ], [ %.020.i79.unr, %.lr.ph.i78.prol.loopexit ]
  %.01019.i80 = phi ptr [ %i.nf, %.lr.ph.i78 ], [ %.01019.i80.unr, %.lr.ph.i78.prol.loopexit ] ; 9 uses
  %.01218.i81 = phi ptr [ %i.nd, %.lr.ph.i78 ], [ %.01218.i81.unr, %.lr.ph.i78.prol.loopexit ] ; 9 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %.01218.i81, i64 8
  %i.mj = load double, ptr %.01218.i81, align 8, !tbaa !88
  %i.mk = getelementptr inbounds nuw i8, ptr %.01019.i80, i64 8
  store double %i.mj, ptr %.01019.i80, align 8, !tbaa !88
  %i.ml = getelementptr inbounds nuw i8, ptr %.01218.i81, i64 16
  %i.mm = load double, ptr %i.mi, align 8, !tbaa !88
  %i.mn = getelementptr inbounds nuw i8, ptr %.01019.i80, i64 16
  store double %i.mm, ptr %i.mk, align 8, !tbaa !88
  %i.mo = getelementptr inbounds nuw i8, ptr %.01218.i81, i64 24
  %i.mp = load double, ptr %i.ml, align 8, !tbaa !88
  %i.mq = getelementptr inbounds nuw i8, ptr %.01019.i80, i64 24
  store double %i.mp, ptr %i.mn, align 8, !tbaa !88
  %i.mr = getelementptr inbounds nuw i8, ptr %.01218.i81, i64 32
  %i.ms = load double, ptr %i.mo, align 8, !tbaa !88
  %i.mt = getelementptr inbounds nuw i8, ptr %.01019.i80, i64 32
  store double %i.ms, ptr %i.mq, align 8, !tbaa !88
  %i.mu = getelementptr inbounds nuw i8, ptr %.01218.i81, i64 40
  %i.mv = load double, ptr %i.mr, align 8, !tbaa !88
  %i.mw = getelementptr inbounds nuw i8, ptr %.01019.i80, i64 40
  store double %i.mv, ptr %i.mt, align 8, !tbaa !88
  %i.mx = getelementptr inbounds nuw i8, ptr %.01218.i81, i64 48
  %i.my = load double, ptr %i.mu, align 8, !tbaa !88
  %i.mz = getelementptr inbounds nuw i8, ptr %.01019.i80, i64 48
  store double %i.my, ptr %i.mw, align 8, !tbaa !88
  %i.na = getelementptr inbounds nuw i8, ptr %.01218.i81, i64 56
  %i.nb = load double, ptr %i.mx, align 8, !tbaa !88
  %i.nc = getelementptr inbounds nuw i8, ptr %.01019.i80, i64 56
  store double %i.nb, ptr %i.mz, align 8, !tbaa !88
  %i.nd = getelementptr inbounds nuw i8, ptr %.01218.i81, i64 64
  %i.ne = load double, ptr %i.na, align 8, !tbaa !88
  %i.nf = getelementptr inbounds nuw i8, ptr %.01019.i80, i64 64
  store double %i.ne, ptr %i.nc, align 8, !tbaa !88
  %i.ng = add nuw nsw i64 %.020.i79, 8            ; 2 uses
  %exitcond.not.i82.7 = icmp eq i64 %i.ng, %i.lq
  br i1 %exitcond.not.i82.7, label %.loopexit161, label %.lr.ph.i78, !llvm.loop !156

.loopexit161:                                     ; preds = %.lr.ph.i78.prol.loopexit, %.lr.ph.i78, %middle.block276, %.lr.ph23.preheader.i84, %.preheader.i83, %.preheader16.i77
  %i.nh = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p) ; 4 uses
  %i.ni = getelementptr inbounds [8 x i8], ptr %.1142146, i64 %i.nh ; 6 uses
  %i.nj = load ptr, ptr %i.hh, align 8, !tbaa !87 ; 7 uses
  %i.nk = ptrtoaddr ptr %i.nj to i64
  %i.nl = load ptr, ptr %i.hj, align 8, !tbaa !87
  %i.nm = icmp eq ptr %i.nj, %i.nl
  %i.nn = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hf) ; 8 uses
  %.not15.i88157 = icmp eq ptr %i.nj, null
  %.not15.i88 = or i1 %.not15.i88157, %i.nm
  %i.no = icmp sgt i64 %i.nn, 0                   ; 2 uses
  br i1 %.not15.i88, label %.preheader.i95, label %.preheader16.i89

.preheader16.i89:                                 ; preds = %.loopexit161
  br i1 %i.no, label %.lr.ph.i90.preheader, label %.loopexit160

.lr.ph.i90.preheader:                             ; preds = %.preheader16.i89
  %min.iters.check284 = icmp ult i64 %i.nn, 14
  br i1 %min.iters.check284, label %.lr.ph.i90.preheader338, label %vector.memcheck281

vector.memcheck281:                               ; preds = %.lr.ph.i90.preheader
  %i.np = shl i64 %i.nh, 3
  %i.nq = add i64 %i.np, %.1142146263
  %i.nr = sub i64 %i.nk, %i.nq
  %diff.check282 = icmp ugt i64 %i.nr, -32
  br i1 %diff.check282, label %.lr.ph.i90.preheader338, label %vector.ph285

vector.ph285:                                     ; preds = %vector.memcheck281
  %n.vec286 = and i64 %i.nn, 9223372036854775804  ; 4 uses
  %i.ns = shl i64 %n.vec286, 3                    ; 2 uses
  %i.nt = getelementptr i8, ptr %i.ni, i64 %i.ns
  %i.nu = getelementptr i8, ptr %i.nj, i64 %i.ns
  br label %vector.body287

vector.body287:                                   ; preds = %vector.body287, %vector.ph285
  %index288 = phi i64 [ 0, %vector.ph285 ], [ %index.next293, %vector.body287 ] ; 2 uses
  %i.nv = shl i64 %index288, 3                    ; 2 uses
  %next.gep289 = getelementptr i8, ptr %i.ni, i64 %i.nv ; 2 uses
  %next.gep290 = getelementptr i8, ptr %i.nj, i64 %i.nv ; 2 uses
  %i.nw = getelementptr i8, ptr %next.gep290, i64 16
  %wide.load291 = load <2 x double>, ptr %next.gep290, align 8, !tbaa !88
  %wide.load292 = load <2 x double>, ptr %i.nw, align 8, !tbaa !88
  %i.nx = getelementptr i8, ptr %next.gep289, i64 16
  store <2 x double> %wide.load291, ptr %next.gep289, align 8, !tbaa !88
  store <2 x double> %wide.load292, ptr %i.nx, align 8, !tbaa !88
  %index.next293 = add nuw i64 %index288, 4       ; 2 uses
  %i.ny = icmp eq i64 %index.next293, %n.vec286
  br i1 %i.ny, label %middle.block294, label %vector.body287, !llvm.loop !157

middle.block294:                                  ; preds = %vector.body287
  %cmp.n295 = icmp eq i64 %i.nn, %n.vec286
  br i1 %cmp.n295, label %.loopexit160, label %.lr.ph.i90.preheader338

.lr.ph.i90.preheader338:                          ; preds = %vector.memcheck281, %.lr.ph.i90.preheader, %middle.block294
  %.020.i91.ph = phi i64 [ 0, %vector.memcheck281 ], [ 0, %.lr.ph.i90.preheader ], [ %n.vec286, %middle.block294 ] ; 4 uses
  %.01019.i92.ph = phi ptr [ %i.ni, %vector.memcheck281 ], [ %i.ni, %.lr.ph.i90.preheader ], [ %i.nt, %middle.block294 ] ; 2 uses
  %.01218.i93.ph = phi ptr [ %i.nj, %vector.memcheck281 ], [ %i.nj, %.lr.ph.i90.preheader ], [ %i.nu, %middle.block294 ] ; 2 uses
  %i.nz = sub nsw i64 %i.nn, %.020.i91.ph
  %xtraiter367 = and i64 %i.nz, 7                 ; 2 uses
  %lcmp.mod368.not = icmp eq i64 %xtraiter367, 0
  br i1 %lcmp.mod368.not, label %.lr.ph.i90.prol.loopexit, label %.lr.ph.i90.prol

.lr.ph.i90.prol:                                  ; preds = %.lr.ph.i90.preheader338, %.lr.ph.i90.prol
  %.020.i91.prol = phi i64 [ %i.od, %.lr.ph.i90.prol ], [ %.020.i91.ph, %.lr.ph.i90.preheader338 ]
  %.01019.i92.prol = phi ptr [ %i.oc, %.lr.ph.i90.prol ], [ %.01019.i92.ph, %.lr.ph.i90.preheader338 ] ; 2 uses
  %.01218.i93.prol = phi ptr [ %i.oa, %.lr.ph.i90.prol ], [ %.01218.i93.ph, %.lr.ph.i90.preheader338 ] ; 2 uses
  %prol.iter369 = phi i64 [ %prol.iter369.next, %.lr.ph.i90.prol ], [ 0, %.lr.ph.i90.preheader338 ]
  %i.oa = getelementptr inbounds nuw i8, ptr %.01218.i93.prol, i64 8 ; 2 uses
  %i.ob = load double, ptr %.01218.i93.prol, align 8, !tbaa !88
  %i.oc = getelementptr inbounds nuw i8, ptr %.01019.i92.prol, i64 8 ; 2 uses
  store double %i.ob, ptr %.01019.i92.prol, align 8, !tbaa !88
  %i.od = add nuw nsw i64 %.020.i91.prol, 1       ; 2 uses
  %prol.iter369.next = add i64 %prol.iter369, 1   ; 2 uses
  %prol.iter369.cmp.not = icmp eq i64 %prol.iter369.next, %xtraiter367
  br i1 %prol.iter369.cmp.not, label %.lr.ph.i90.prol.loopexit, label %.lr.ph.i90.prol, !llvm.loop !158

.lr.ph.i90.prol.loopexit:                         ; preds = %.lr.ph.i90.prol, %.lr.ph.i90.preheader338
  %.020.i91.unr = phi i64 [ %.020.i91.ph, %.lr.ph.i90.preheader338 ], [ %i.od, %.lr.ph.i90.prol ]
  %.01019.i92.unr = phi ptr [ %.01019.i92.ph, %.lr.ph.i90.preheader338 ], [ %i.oc, %.lr.ph.i90.prol ]
  %.01218.i93.unr = phi ptr [ %.01218.i93.ph, %.lr.ph.i90.preheader338 ], [ %i.oa, %.lr.ph.i90.prol ]
  %i.oe = sub nsw i64 %.020.i91.ph, %i.nn
  %i.of = icmp ugt i64 %i.oe, -8
  br i1 %i.of, label %.loopexit160, label %.lr.ph.i90

.preheader.i95:                                   ; preds = %.loopexit161
  br i1 %i.no, label %.lr.ph23.preheader.i96, label %.loopexit160

.lr.ph23.preheader.i96:                           ; preds = %.preheader.i95
  %i.og = shl nuw i64 %i.nn, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ni, i8 0, i64 %i.og, i1 false), !tbaa !88
  br label %.loopexit160

.lr.ph.i90:                                       ; preds = %.lr.ph.i90.prol.loopexit, %.lr.ph.i90
  %.020.i91 = phi i64 [ %i.pf, %.lr.ph.i90 ], [ %.020.i91.unr, %.lr.ph.i90.prol.loopexit ]
  %.01019.i92 = phi ptr [ %i.pe, %.lr.ph.i90 ], [ %.01019.i92.unr, %.lr.ph.i90.prol.loopexit ] ; 9 uses
  %.01218.i93 = phi ptr [ %i.pc, %.lr.ph.i90 ], [ %.01218.i93.unr, %.lr.ph.i90.prol.loopexit ] ; 9 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %.01218.i93, i64 8
  %i.oi = load double, ptr %.01218.i93, align 8, !tbaa !88
  %i.oj = getelementptr inbounds nuw i8, ptr %.01019.i92, i64 8
  store double %i.oi, ptr %.01019.i92, align 8, !tbaa !88
  %i.ok = getelementptr inbounds nuw i8, ptr %.01218.i93, i64 16
  %i.ol = load double, ptr %i.oh, align 8, !tbaa !88
  %i.om = getelementptr inbounds nuw i8, ptr %.01019.i92, i64 16
  store double %i.ol, ptr %i.oj, align 8, !tbaa !88
  %i.on = getelementptr inbounds nuw i8, ptr %.01218.i93, i64 24
  %i.oo = load double, ptr %i.ok, align 8, !tbaa !88
  %i.op = getelementptr inbounds nuw i8, ptr %.01019.i92, i64 24
  store double %i.oo, ptr %i.om, align 8, !tbaa !88
  %i.oq = getelementptr inbounds nuw i8, ptr %.01218.i93, i64 32
  %i.or = load double, ptr %i.on, align 8, !tbaa !88
  %i.os = getelementptr inbounds nuw i8, ptr %.01019.i92, i64 32
  store double %i.or, ptr %i.op, align 8, !tbaa !88
  %i.ot = getelementptr inbounds nuw i8, ptr %.01218.i93, i64 40
  %i.ou = load double, ptr %i.oq, align 8, !tbaa !88
  %i.ov = getelementptr inbounds nuw i8, ptr %.01019.i92, i64 40
  store double %i.ou, ptr %i.os, align 8, !tbaa !88
  %i.ow = getelementptr inbounds nuw i8, ptr %.01218.i93, i64 48
  %i.ox = load double, ptr %i.ot, align 8, !tbaa !88
  %i.oy = getelementptr inbounds nuw i8, ptr %.01019.i92, i64 48
  store double %i.ox, ptr %i.ov, align 8, !tbaa !88
  %i.oz = getelementptr inbounds nuw i8, ptr %.01218.i93, i64 56
  %i.pa = load double, ptr %i.ow, align 8, !tbaa !88
  %i.pb = getelementptr inbounds nuw i8, ptr %.01019.i92, i64 56
  store double %i.pa, ptr %i.oy, align 8, !tbaa !88
  %i.pc = getelementptr inbounds nuw i8, ptr %.01218.i93, i64 64
  %i.pd = load double, ptr %i.oz, align 8, !tbaa !88
  %i.pe = getelementptr inbounds nuw i8, ptr %.01019.i92, i64 64
  store double %i.pd, ptr %i.pb, align 8, !tbaa !88
  %i.pf = add nuw nsw i64 %.020.i91, 8            ; 2 uses
  %exitcond.not.i94.7 = icmp eq i64 %i.pf, %i.nn
  br i1 %exitcond.not.i94.7, label %.loopexit160, label %.lr.ph.i90, !llvm.loop !159

.loopexit160:                                     ; preds = %.lr.ph.i90.prol.loopexit, %.lr.ph.i90, %middle.block294, %.lr.ph23.preheader.i96, %.preheader.i95, %.preheader16.i89
  %i.pg = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hf) ; 3 uses
  %i.ph = getelementptr inbounds [8 x i8], ptr %i.ni, i64 %i.pg ; 6 uses
  %i.pi = load ptr, ptr %i.ho, align 8, !tbaa !87 ; 7 uses
  %i.pj = ptrtoaddr ptr %i.pi to i64
  %i.pk = load ptr, ptr %i.hq, align 8, !tbaa !87
  %i.pl = icmp eq ptr %i.pi, %i.pk
  %i.pm = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hm) ; 8 uses
  %.not15.i100158 = icmp eq ptr %i.pi, null
  %.not15.i100 = or i1 %.not15.i100158, %i.pl
  %i.pn = icmp sgt i64 %i.pm, 0                   ; 2 uses
  br i1 %.not15.i100, label %.preheader.i107, label %.preheader16.i101

.preheader16.i101:                                ; preds = %.loopexit160
  br i1 %i.pn, label %.lr.ph.i102.preheader, label %.loopexit

.lr.ph.i102.preheader:                            ; preds = %.preheader16.i101
  %min.iters.check302 = icmp ult i64 %i.pm, 18
  br i1 %min.iters.check302, label %.lr.ph.i102.preheader337, label %vector.memcheck299

vector.memcheck299:                               ; preds = %.lr.ph.i102.preheader
  %i.po = add i64 %i.nh, %i.pg
  %i.pp = shl i64 %i.po, 3
  %i.pq = add i64 %i.pp, %.1142146263
  %i.pr = sub i64 %i.pj, %i.pq
  %diff.check300 = icmp ugt i64 %i.pr, -32
  br i1 %diff.check300, label %.lr.ph.i102.preheader337, label %vector.ph303

vector.ph303:                                     ; preds = %vector.memcheck299
  %n.vec304 = and i64 %i.pm, 9223372036854775804  ; 4 uses
  %i.ps = shl i64 %n.vec304, 3                    ; 2 uses
  %i.pt = getelementptr i8, ptr %i.ph, i64 %i.ps
  %i.pu = getelementptr i8, ptr %i.pi, i64 %i.ps
  br label %vector.body305

vector.body305:                                   ; preds = %vector.body305, %vector.ph303
  %index306 = phi i64 [ 0, %vector.ph303 ], [ %index.next311, %vector.body305 ] ; 2 uses
  %i.pv = shl i64 %index306, 3                    ; 2 uses
  %next.gep307 = getelementptr i8, ptr %i.ph, i64 %i.pv ; 2 uses
  %next.gep308 = getelementptr i8, ptr %i.pi, i64 %i.pv ; 2 uses
  %i.pw = getelementptr i8, ptr %next.gep308, i64 16
  %wide.load309 = load <2 x double>, ptr %next.gep308, align 8, !tbaa !88
  %wide.load310 = load <2 x double>, ptr %i.pw, align 8, !tbaa !88
  %i.px = getelementptr i8, ptr %next.gep307, i64 16
  store <2 x double> %wide.load309, ptr %next.gep307, align 8, !tbaa !88
  store <2 x double> %wide.load310, ptr %i.px, align 8, !tbaa !88
  %index.next311 = add nuw i64 %index306, 4       ; 2 uses
  %i.py = icmp eq i64 %index.next311, %n.vec304
  br i1 %i.py, label %middle.block312, label %vector.body305, !llvm.loop !160

middle.block312:                                  ; preds = %vector.body305
  %cmp.n313 = icmp eq i64 %i.pm, %n.vec304
  br i1 %cmp.n313, label %.loopexit, label %.lr.ph.i102.preheader337

.lr.ph.i102.preheader337:                         ; preds = %vector.memcheck299, %.lr.ph.i102.preheader, %middle.block312
  %.020.i103.ph = phi i64 [ 0, %vector.memcheck299 ], [ 0, %.lr.ph.i102.preheader ], [ %n.vec304, %middle.block312 ] ; 4 uses
  %.01019.i104.ph = phi ptr [ %i.ph, %vector.memcheck299 ], [ %i.ph, %.lr.ph.i102.preheader ], [ %i.pt, %middle.block312 ] ; 2 uses
  %.01218.i105.ph = phi ptr [ %i.pi, %vector.memcheck299 ], [ %i.pi, %.lr.ph.i102.preheader ], [ %i.pu, %middle.block312 ] ; 2 uses
  %i.pz = sub nsw i64 %i.pm, %.020.i103.ph
  %xtraiter370 = and i64 %i.pz, 7                 ; 2 uses
  %lcmp.mod371.not = icmp eq i64 %xtraiter370, 0
  br i1 %lcmp.mod371.not, label %.lr.ph.i102.prol.loopexit, label %.lr.ph.i102.prol

.lr.ph.i102.prol:                                 ; preds = %.lr.ph.i102.preheader337, %.lr.ph.i102.prol
  %.020.i103.prol = phi i64 [ %i.qd, %.lr.ph.i102.prol ], [ %.020.i103.ph, %.lr.ph.i102.preheader337 ]
  %.01019.i104.prol = phi ptr [ %i.qc, %.lr.ph.i102.prol ], [ %.01019.i104.ph, %.lr.ph.i102.preheader337 ] ; 2 uses
  %.01218.i105.prol = phi ptr [ %i.qa, %.lr.ph.i102.prol ], [ %.01218.i105.ph, %.lr.ph.i102.preheader337 ] ; 2 uses
  %prol.iter372 = phi i64 [ %prol.iter372.next, %.lr.ph.i102.prol ], [ 0, %.lr.ph.i102.preheader337 ]
  %i.qa = getelementptr inbounds nuw i8, ptr %.01218.i105.prol, i64 8 ; 2 uses
  %i.qb = load double, ptr %.01218.i105.prol, align 8, !tbaa !88
  %i.qc = getelementptr inbounds nuw i8, ptr %.01019.i104.prol, i64 8 ; 2 uses
  store double %i.qb, ptr %.01019.i104.prol, align 8, !tbaa !88
  %i.qd = add nuw nsw i64 %.020.i103.prol, 1      ; 2 uses
  %prol.iter372.next = add i64 %prol.iter372, 1   ; 2 uses
  %prol.iter372.cmp.not = icmp eq i64 %prol.iter372.next, %xtraiter370
  br i1 %prol.iter372.cmp.not, label %.lr.ph.i102.prol.loopexit, label %.lr.ph.i102.prol, !llvm.loop !161

.lr.ph.i102.prol.loopexit:                        ; preds = %.lr.ph.i102.prol, %.lr.ph.i102.preheader337
  %.020.i103.unr = phi i64 [ %.020.i103.ph, %.lr.ph.i102.preheader337 ], [ %i.qd, %.lr.ph.i102.prol ]
  %.01019.i104.unr = phi ptr [ %.01019.i104.ph, %.lr.ph.i102.preheader337 ], [ %i.qc, %.lr.ph.i102.prol ]
  %.01218.i105.unr = phi ptr [ %.01218.i105.ph, %.lr.ph.i102.preheader337 ], [ %i.qa, %.lr.ph.i102.prol ]
  %i.qe = sub nsw i64 %.020.i103.ph, %i.pm
  %i.qf = icmp ugt i64 %i.qe, -8
  br i1 %i.qf, label %.loopexit, label %.lr.ph.i102

.preheader.i107:                                  ; preds = %.loopexit160
  br i1 %i.pn, label %.lr.ph23.preheader.i108, label %.loopexit

.lr.ph23.preheader.i108:                          ; preds = %.preheader.i107
  %i.qg = shl nuw i64 %i.pm, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ph, i8 0, i64 %i.qg, i1 false), !tbaa !88
  br label %.loopexit

.lr.ph.i102:                                      ; preds = %.lr.ph.i102.prol.loopexit, %.lr.ph.i102
  %.020.i103 = phi i64 [ %i.rf, %.lr.ph.i102 ], [ %.020.i103.unr, %.lr.ph.i102.prol.loopexit ]
  %.01019.i104 = phi ptr [ %i.re, %.lr.ph.i102 ], [ %.01019.i104.unr, %.lr.ph.i102.prol.loopexit ] ; 9 uses
  %.01218.i105 = phi ptr [ %i.rc, %.lr.ph.i102 ], [ %.01218.i105.unr, %.lr.ph.i102.prol.loopexit ] ; 9 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %.01218.i105, i64 8
  %i.qi = load double, ptr %.01218.i105, align 8, !tbaa !88
  %i.qj = getelementptr inbounds nuw i8, ptr %.01019.i104, i64 8
  store double %i.qi, ptr %.01019.i104, align 8, !tbaa !88
  %i.qk = getelementptr inbounds nuw i8, ptr %.01218.i105, i64 16
  %i.ql = load double, ptr %i.qh, align 8, !tbaa !88
  %i.qm = getelementptr inbounds nuw i8, ptr %.01019.i104, i64 16
  store double %i.ql, ptr %i.qj, align 8, !tbaa !88
  %i.qn = getelementptr inbounds nuw i8, ptr %.01218.i105, i64 24
  %i.qo = load double, ptr %i.qk, align 8, !tbaa !88
  %i.qp = getelementptr inbounds nuw i8, ptr %.01019.i104, i64 24
  store double %i.qo, ptr %i.qm, align 8, !tbaa !88
  %i.qq = getelementptr inbounds nuw i8, ptr %.01218.i105, i64 32
  %i.qr = load double, ptr %i.qn, align 8, !tbaa !88
  %i.qs = getelementptr inbounds nuw i8, ptr %.01019.i104, i64 32
  store double %i.qr, ptr %i.qp, align 8, !tbaa !88
  %i.qt = getelementptr inbounds nuw i8, ptr %.01218.i105, i64 40
  %i.qu = load double, ptr %i.qq, align 8, !tbaa !88
  %i.qv = getelementptr inbounds nuw i8, ptr %.01019.i104, i64 40
  store double %i.qu, ptr %i.qs, align 8, !tbaa !88
  %i.qw = getelementptr inbounds nuw i8, ptr %.01218.i105, i64 48
  %i.qx = load double, ptr %i.qt, align 8, !tbaa !88
  %i.qy = getelementptr inbounds nuw i8, ptr %.01019.i104, i64 48
  store double %i.qx, ptr %i.qv, align 8, !tbaa !88
  %i.qz = getelementptr inbounds nuw i8, ptr %.01218.i105, i64 56
  %i.ra = load double, ptr %i.qw, align 8, !tbaa !88
  %i.rb = getelementptr inbounds nuw i8, ptr %.01019.i104, i64 56
  store double %i.ra, ptr %i.qy, align 8, !tbaa !88
  %i.rc = getelementptr inbounds nuw i8, ptr %.01218.i105, i64 64
  %i.rd = load double, ptr %i.qz, align 8, !tbaa !88
  %i.re = getelementptr inbounds nuw i8, ptr %.01019.i104, i64 64
  store double %i.rd, ptr %i.rb, align 8, !tbaa !88
  %i.rf = add nuw nsw i64 %.020.i103, 8           ; 2 uses
  %exitcond.not.i106.7 = icmp eq i64 %i.rf, %i.pm
  br i1 %exitcond.not.i106.7, label %.loopexit, label %.lr.ph.i102, !llvm.loop !162

.loopexit:                                        ; preds = %.lr.ph.i102.prol.loopexit, %.lr.ph.i102, %middle.block312, %.lr.ph23.preheader.i108, %.preheader.i107, %.preheader16.i101
  %i.rg = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hm) ; 2 uses
  %i.rh = getelementptr inbounds [8 x i8], ptr %i.ph, i64 %i.rg ; 5 uses
  %i.ri = load ptr, ptr %i.ht, align 8, !tbaa !87 ; 7 uses
  %i.rj = ptrtoaddr ptr %i.ri to i64
  %i.rk = load ptr, ptr %i.hv, align 8, !tbaa !87
  %i.rl = icmp eq ptr %i.ri, %i.rk
  %i.rm = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.p) ; 8 uses
  %.not15.i112159 = icmp eq ptr %i.ri, null
  %.not15.i112 = or i1 %.not15.i112159, %i.rl
  %i.rn = icmp sgt i64 %i.rm, 0                   ; 2 uses
  br i1 %.not15.i112, label %.preheader.i119, label %.preheader16.i113

.preheader16.i113:                                ; preds = %.loopexit
  br i1 %i.rn, label %.lr.ph.i114.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit121

.lr.ph.i114.preheader:                            ; preds = %.preheader16.i113
  %min.iters.check320 = icmp ult i64 %i.rm, 24
  br i1 %min.iters.check320, label %.lr.ph.i114.preheader336, label %vector.memcheck317

vector.memcheck317:                               ; preds = %.lr.ph.i114.preheader
  %i.ro = add i64 %i.nh, %i.pg
  %i.rp = add i64 %i.ro, %i.rg
  %i.rq = shl i64 %i.rp, 3
  %i.rr = add i64 %i.rq, %.1142146263
  %i.rs = sub i64 %i.rj, %i.rr
  %diff.check318 = icmp ugt i64 %i.rs, -32
  br i1 %diff.check318, label %.lr.ph.i114.preheader336, label %vector.ph321

vector.ph321:                                     ; preds = %vector.memcheck317
  %n.vec322 = and i64 %i.rm, 9223372036854775804  ; 4 uses
  %i.rt = shl i64 %n.vec322, 3                    ; 2 uses
  %i.ru = getelementptr i8, ptr %i.rh, i64 %i.rt
  %i.rv = getelementptr i8, ptr %i.ri, i64 %i.rt
  br label %vector.body323

vector.body323:                                   ; preds = %vector.body323, %vector.ph321
  %index324 = phi i64 [ 0, %vector.ph321 ], [ %index.next329, %vector.body323 ] ; 2 uses
  %i.rw = shl i64 %index324, 3                    ; 2 uses
  %next.gep325 = getelementptr i8, ptr %i.rh, i64 %i.rw ; 2 uses
  %next.gep326 = getelementptr i8, ptr %i.ri, i64 %i.rw ; 2 uses
  %i.rx = getelementptr i8, ptr %next.gep326, i64 16
  %wide.load327 = load <2 x double>, ptr %next.gep326, align 8, !tbaa !88
  %wide.load328 = load <2 x double>, ptr %i.rx, align 8, !tbaa !88
  %i.ry = getelementptr i8, ptr %next.gep325, i64 16
  store <2 x double> %wide.load327, ptr %next.gep325, align 8, !tbaa !88
  store <2 x double> %wide.load328, ptr %i.ry, align 8, !tbaa !88
  %index.next329 = add nuw i64 %index324, 4       ; 2 uses
  %i.rz = icmp eq i64 %index.next329, %n.vec322
  br i1 %i.rz, label %middle.block330, label %vector.body323, !llvm.loop !163

middle.block330:                                  ; preds = %vector.body323
  %cmp.n331 = icmp eq i64 %i.rm, %n.vec322
  br i1 %cmp.n331, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit121, label %.lr.ph.i114.preheader336

.lr.ph.i114.preheader336:                         ; preds = %vector.memcheck317, %.lr.ph.i114.preheader, %middle.block330
  %.020.i115.ph = phi i64 [ 0, %vector.memcheck317 ], [ 0, %.lr.ph.i114.preheader ], [ %n.vec322, %middle.block330 ] ; 4 uses
  %.01019.i116.ph = phi ptr [ %i.rh, %vector.memcheck317 ], [ %i.rh, %.lr.ph.i114.preheader ], [ %i.ru, %middle.block330 ] ; 2 uses
  %.01218.i117.ph = phi ptr [ %i.ri, %vector.memcheck317 ], [ %i.ri, %.lr.ph.i114.preheader ], [ %i.rv, %middle.block330 ] ; 2 uses
  %i.sa = sub nsw i64 %i.rm, %.020.i115.ph
  %xtraiter373 = and i64 %i.sa, 7                 ; 2 uses
  %lcmp.mod374.not = icmp eq i64 %xtraiter373, 0
  br i1 %lcmp.mod374.not, label %.lr.ph.i114.prol.loopexit, label %.lr.ph.i114.prol

.lr.ph.i114.prol:                                 ; preds = %.lr.ph.i114.preheader336, %.lr.ph.i114.prol
  %.020.i115.prol = phi i64 [ %i.se, %.lr.ph.i114.prol ], [ %.020.i115.ph, %.lr.ph.i114.preheader336 ]
  %.01019.i116.prol = phi ptr [ %i.sd, %.lr.ph.i114.prol ], [ %.01019.i116.ph, %.lr.ph.i114.preheader336 ] ; 2 uses
  %.01218.i117.prol = phi ptr [ %i.sb, %.lr.ph.i114.prol ], [ %.01218.i117.ph, %.lr.ph.i114.preheader336 ] ; 2 uses
  %prol.iter375 = phi i64 [ %prol.iter375.next, %.lr.ph.i114.prol ], [ 0, %.lr.ph.i114.preheader336 ]
  %i.sb = getelementptr inbounds nuw i8, ptr %.01218.i117.prol, i64 8 ; 2 uses
  %i.sc = load double, ptr %.01218.i117.prol, align 8, !tbaa !88
  %i.sd = getelementptr inbounds nuw i8, ptr %.01019.i116.prol, i64 8 ; 2 uses
  store double %i.sc, ptr %.01019.i116.prol, align 8, !tbaa !88
  %i.se = add nuw nsw i64 %.020.i115.prol, 1      ; 2 uses
  %prol.iter375.next = add i64 %prol.iter375, 1   ; 2 uses
  %prol.iter375.cmp.not = icmp eq i64 %prol.iter375.next, %xtraiter373
  br i1 %prol.iter375.cmp.not, label %.lr.ph.i114.prol.loopexit, label %.lr.ph.i114.prol, !llvm.loop !164

.lr.ph.i114.prol.loopexit:                        ; preds = %.lr.ph.i114.prol, %.lr.ph.i114.preheader336
  %.020.i115.unr = phi i64 [ %.020.i115.ph, %.lr.ph.i114.preheader336 ], [ %i.se, %.lr.ph.i114.prol ]
  %.01019.i116.unr = phi ptr [ %.01019.i116.ph, %.lr.ph.i114.preheader336 ], [ %i.sd, %.lr.ph.i114.prol ]
  %.01218.i117.unr = phi ptr [ %.01218.i117.ph, %.lr.ph.i114.preheader336 ], [ %i.sb, %.lr.ph.i114.prol ]
  %i.sf = sub nsw i64 %.020.i115.ph, %i.rm
  %i.sg = icmp ugt i64 %i.sf, -8
  br i1 %i.sg, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit121, label %.lr.ph.i114

.preheader.i119:                                  ; preds = %.loopexit
  br i1 %i.rn, label %.lr.ph23.preheader.i120, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit121

.lr.ph23.preheader.i120:                          ; preds = %.preheader.i119
  %i.sh = shl nuw i64 %i.rm, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.rh, i8 0, i64 %i.sh, i1 false), !tbaa !88
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit121

.lr.ph.i114:                                      ; preds = %.lr.ph.i114.prol.loopexit, %.lr.ph.i114
  %.020.i115 = phi i64 [ %i.tg, %.lr.ph.i114 ], [ %.020.i115.unr, %.lr.ph.i114.prol.loopexit ]
  %.01019.i116 = phi ptr [ %i.tf, %.lr.ph.i114 ], [ %.01019.i116.unr, %.lr.ph.i114.prol.loopexit ] ; 9 uses
  %.01218.i117 = phi ptr [ %i.td, %.lr.ph.i114 ], [ %.01218.i117.unr, %.lr.ph.i114.prol.loopexit ] ; 9 uses
  %i.si = getelementptr inbounds nuw i8, ptr %.01218.i117, i64 8
  %i.sj = load double, ptr %.01218.i117, align 8, !tbaa !88
  %i.sk = getelementptr inbounds nuw i8, ptr %.01019.i116, i64 8
  store double %i.sj, ptr %.01019.i116, align 8, !tbaa !88
  %i.sl = getelementptr inbounds nuw i8, ptr %.01218.i117, i64 16
  %i.sm = load double, ptr %i.si, align 8, !tbaa !88
  %i.sn = getelementptr inbounds nuw i8, ptr %.01019.i116, i64 16
  store double %i.sm, ptr %i.sk, align 8, !tbaa !88
  %i.so = getelementptr inbounds nuw i8, ptr %.01218.i117, i64 24
  %i.sp = load double, ptr %i.sl, align 8, !tbaa !88
  %i.sq = getelementptr inbounds nuw i8, ptr %.01019.i116, i64 24
  store double %i.sp, ptr %i.sn, align 8, !tbaa !88
  %i.sr = getelementptr inbounds nuw i8, ptr %.01218.i117, i64 32
  %i.ss = load double, ptr %i.so, align 8, !tbaa !88
  %i.st = getelementptr inbounds nuw i8, ptr %.01019.i116, i64 32
  store double %i.ss, ptr %i.sq, align 8, !tbaa !88
  %i.su = getelementptr inbounds nuw i8, ptr %.01218.i117, i64 40
  %i.sv = load double, ptr %i.sr, align 8, !tbaa !88
  %i.sw = getelementptr inbounds nuw i8, ptr %.01019.i116, i64 40
  store double %i.sv, ptr %i.st, align 8, !tbaa !88
  %i.sx = getelementptr inbounds nuw i8, ptr %.01218.i117, i64 48
  %i.sy = load double, ptr %i.su, align 8, !tbaa !88
  %i.sz = getelementptr inbounds nuw i8, ptr %.01019.i116, i64 48
  store double %i.sy, ptr %i.sw, align 8, !tbaa !88
  %i.ta = getelementptr inbounds nuw i8, ptr %.01218.i117, i64 56
  %i.tb = load double, ptr %i.sx, align 8, !tbaa !88
  %i.tc = getelementptr inbounds nuw i8, ptr %.01019.i116, i64 56
  store double %i.tb, ptr %i.sz, align 8, !tbaa !88
  %i.td = getelementptr inbounds nuw i8, ptr %.01218.i117, i64 64
  %i.te = load double, ptr %i.ta, align 8, !tbaa !88
  %i.tf = getelementptr inbounds nuw i8, ptr %.01019.i116, i64 64
  store double %i.te, ptr %i.tc, align 8, !tbaa !88
  %i.tg = add nuw nsw i64 %.020.i115, 8           ; 2 uses
  %exitcond.not.i118.7 = icmp eq i64 %i.tg, %i.rm
  br i1 %exitcond.not.i118.7, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit121, label %.lr.ph.i114, !llvm.loop !165

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit121:    ; preds = %.lr.ph.i114.prol.loopexit, %.lr.ph.i114, %middle.block330, %.preheader16.i113, %.preheader.i119, %.lr.ph23.preheader.i120
  %i.th = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.p) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %bb.j, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit121, %_ZN6casadi18casadi_qr_singularIdEExPT_PxPKS1_PKxS7_S1_.exit.thread, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit59
  %.1 = phi i32 [ 0, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit59 ], [ 1, %bb.j ], [ 1, %._crit_edge ], [ 0, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit121 ], [ 0, %_ZN6casadi18casadi_qr_singularIdEExPT_PxPKS1_PKxS7_S1_.exit.thread ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi9casadi_qrIdEEvPKxPKT_PS3_S2_S6_S2_S6_S6_S2_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !93   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  %i.f = load i64, ptr %3, align 8, !tbaa !93     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 11 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = icmp sgt i64 %i.f, 0
  br i1 %i.m, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.n = shl nuw i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %2, i8 0, i64 %i.n, i1 false), !tbaa !88
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.preheader, %bb.a
  %i.o = icmp sgt i64 %i.b, 0
  br i1 %i.o, label %.lr.ph137, label %._crit_edge138

.lr.ph137:                                        ; preds = %.preheader, %_ZN6casadi12casadi_houseIdEET_PS1_S2_x.exit
  %.0100136 = phi i64 [ %i.bp, %_ZN6casadi12casadi_houseIdEET_PS1_S2_x.exit ], [ 0, %.preheader ] ; 6 uses
  %.0102135 = phi ptr [ %i.hs, %_ZN6casadi12casadi_houseIdEET_PS1_S2_x.exit ], [ %6, %.preheader ] ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.0100136
  %i.q = load i64, ptr %i.p, align 8, !tbaa !93
  %i.r = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.q ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !93   ; 5 uses
  %i.t = getelementptr i8, ptr %i.r, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !93   ; 4 uses
  %i.v = icmp slt i64 %i.s, %i.u
  br i1 %i.v, label %.lr.ph111.preheader, label %._crit_edge

.lr.ph111.preheader:                              ; preds = %.lr.ph137
  %i.w = sub i64 %i.u, %i.s
  %xtraiter = and i64 %i.w, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph111.prol.loopexit, label %.lr.ph111.prol

.lr.ph111.prol:                                   ; preds = %.lr.ph111.preheader, %.lr.ph111.prol
  %.098110.prol = phi i64 [ %i.ae, %.lr.ph111.prol ], [ %i.s, %.lr.ph111.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph111.prol ], [ 0, %.lr.ph111.preheader ]
  %i.x = getelementptr inbounds [8 x i8], ptr %1, i64 %.098110.prol
  %i.y = load double, ptr %i.x, align 8, !tbaa !88
  %i.z = getelementptr inbounds [8 x i8], ptr %i.e, i64 %.098110.prol
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !93
  %i.ab = getelementptr inbounds [8 x i8], ptr %8, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !93
  %i.ad = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ac
  store double %i.y, ptr %i.ad, align 8, !tbaa !88
  %i.ae = add nsw i64 %.098110.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph111.prol.loopexit, label %.lr.ph111.prol, !llvm.loop !169

.lr.ph111.prol.loopexit:                          ; preds = %.lr.ph111.prol, %.lr.ph111.preheader
  %.098110.unr = phi i64 [ %i.s, %.lr.ph111.preheader ], [ %i.ae, %.lr.ph111.prol ]
  %i.af = sub i64 %i.s, %i.u
  %i.ag = icmp ugt i64 %i.af, -4
  br i1 %i.ag, label %._crit_edge, label %.lr.ph111

.lr.ph111:                                        ; preds = %.lr.ph111.prol.loopexit, %.lr.ph111
  %.098110 = phi i64 [ %i.bm, %.lr.ph111 ], [ %.098110.unr, %.lr.ph111.prol.loopexit ] ; 6 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %1, i64 %.098110
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !88
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.e, i64 %.098110
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !93
  %i.al = getelementptr inbounds [8 x i8], ptr %8, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !93
  %i.an = getelementptr inbounds [8 x i8], ptr %2, i64 %i.am
  store double %i.ai, ptr %i.an, align 8, !tbaa !88
  %i.ao = add nsw i64 %.098110, 1                 ; 2 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !88
end_hunk_1
