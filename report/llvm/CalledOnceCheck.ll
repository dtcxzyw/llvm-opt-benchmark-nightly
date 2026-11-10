Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CalledOnceCheck?download=true
inline.NumInlined: 2777
inline.NumDeleted: 1609
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN12_GLOBAL__N_117CalledOnceChecker5checkEv:bb.a

bb.ff:                                            ; preds = %.lr.ph.i._crit_edge.i.i
  %i.sf = getelementptr inbounds nuw i8, ptr %storemerge67.i.lcssa.i.i, i64 32 ; 2 uses
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !193 ; 2 uses
  %i.sh = icmp eq ptr %i.sg, %.02168.i.lcssa.i.i
  br i1 %i.sh, label %_ZNK12_GLOBAL__N_117CalledOnceChecker25getBlockGuaraneedCallSiteEPKN5clang9BlockExprE.exit.i.i, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.si = getelementptr inbounds nuw i8, ptr %storemerge67.i.lcssa.i.i, i64 40
  %i.sj = load i32, ptr %storemerge67.i.lcssa.i.i, align 8
  %i.sk = lshr i32 %i.sj, 19
  %i.sl = and i32 %i.sk, 1
  %i.sm = zext nneg i32 %i.sl to i64
  %i.sn = getelementptr inbounds nuw [8 x i8], ptr %i.si, i64 %i.sm ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %storemerge67.i.lcssa.i.i, i64 16
  %i.sp = load i32, ptr %i.so, align 8, !tbaa !217 ; 2 uses
  %i.sq = zext i32 %i.sp to i64
  %.idx.i.i.i26.i = shl nuw nsw i64 %i.sq, 3
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sn, i64 %.idx.i.i.i26.i
  %.not28.i.i.i.i = icmp eq i32 %i.sp, 0
  br i1 %.not28.i.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i27.i

.lr.ph.i.i.i27.i:                                 ; preds = %bb.fg, %_ZNK12_GLOBAL__N_117CalledOnceChecker31shouldBlockArgumentBeCalledOnceEPKN5clang8CallExprEj.exit.i.i.i.i
  %.sroa.016.027.i.i.i.i = phi ptr [ %i.wy, %_ZNK12_GLOBAL__N_117CalledOnceChecker31shouldBlockArgumentBeCalledOnceEPKN5clang8CallExprEj.exit.i.i.i.i ], [ %i.sn, %bb.fg ] ; 2 uses
  %.sroa.7.026.i.i.i.i = phi i32 [ %i.wx, %_ZNK12_GLOBAL__N_117CalledOnceChecker31shouldBlockArgumentBeCalledOnceEPKN5clang8CallExprEj.exit.i.i.i.i ], [ 0, %bb.fg ] ; 9 uses
  %i.ss = load ptr, ptr %.sroa.016.027.i.i.i.i, align 8, !tbaa !166
  %.not.i.i.i28.i = icmp eq ptr %i.ss, %.02168.i.lcssa.i.i
  br i1 %.not.i.i.i28.i, label %bb.fh, label %_ZNK12_GLOBAL__N_117CalledOnceChecker31shouldBlockArgumentBeCalledOnceEPKN5clang8CallExprEj.exit.i.i.i.i

bb.fh:                                            ; preds = %.lr.ph.i.i.i27.i
  %i.st = call noundef ptr @_ZN5clang4Expr25getReferencedDeclOfCalleeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.sg) #16 ; 3 uses
  %.not.i.i.i.i.i.i.i34.i = icmp eq ptr %i.st, null
  br i1 %.not.i.i.i.i.i.i.i34.i, label %_ZN12_GLOBAL__N_117CalledOnceChecker31shouldBlockArgumentBeCalledOnceEPKN5clang12FunctionDeclEj.exit.thread.i.i.i.i.i, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 28
  %i.sv = load i32, ptr %i.su, align 4
  %i.sw = and i32 %i.sv, 127
  %i.sx = add nsw i32 %i.sw, -35
  %i.sy = icmp ult i32 %i.sx, 6
  br i1 %i.sy, label %_ZNK5clang8CallExpr15getDirectCalleeEv.exit.i.i.i.i.i, label %_ZN12_GLOBAL__N_117CalledOnceChecker31shouldBlockArgumentBeCalledOnceEPKN5clang12FunctionDeclEj.exit.thread.i.i.i.i.i

_ZNK5clang8CallExpr15getDirectCalleeEv.exit.i.i.i.i.i: ; preds = %bb.fi
  %i.sz = getelementptr i8, ptr %i.st, i64 40
  %.val.i.i.i.i.i.i30 = load i64, ptr %i.sz, align 8, !tbaa !218 ; 2 uses
  %i.ta = and i64 %.val.i.i.i.i.i.i30, 7
  %i.tb = icmp ne i64 %i.ta, 0
  %i.tc = and i64 %.val.i.i.i.i.i.i30, -8         ; 2 uses
  %.not2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.tc, 0
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = or i1 %i.tb, %.not2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_117CalledOnceChecker31shouldBlockArgumentBeCalledOnceEPKN5clang12FunctionDeclEj.exit.thread.i.i.i.i.i, label %_ZNK5clang9NamedDecl7getNameEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK5clang9NamedDecl7getNameEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK5clang8CallExpr15getDirectCalleeEv.exit.i.i.i.i.i
  %i.td = inttoptr i64 %i.tc to ptr
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 16
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !221 ; 7 uses
  %i.tg = load i64, ptr %i.tf, align 8, !tbaa !223
  %trunc.i.i.i.i.i.i.i.i.i.i.i = trunc i64 %i.tg to i32
  switch i32 %trunc.i.i.i.i.i.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_117CalledOnceChecker31shouldBlockArgumentBeCalledOnceEPKN5clang12FunctionDeclEj.exit.thread.i.i.i.i.i [
    i32 14, label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
    i32 23, label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i52.i.i.i.i.i.i.i.i.i.i.i.i
    i32 13, label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i78.i.i.i.i.i.i.i.i.i.i.i.i
    i32 22, label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i52.1.i.i.i.i.i.i.i.i.i.i.i.i
    i32 31, label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i65.1.i.i.i.i.i.i.i.i.i.i.i.i
    i32 21, label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i78.1.i.i.i.i.i.i.i.i.i.i.i.i
  ]

_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK5clang9NamedDecl7getNameEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.th = getelementptr inbounds nuw i8, ptr %i.tf, i64 16 ; 4 uses
  %i.ti = load i64, ptr %i.th, align 1
  %i.tj = xor i64 7521983764486121828, %i.ti
  %i.tk = getelementptr i8, ptr %i.th, i64 6
  %i.tl = load i64, ptr %i.tk, align 1
  %i.tm = xor i64 7164797593654880355, %i.tl
  %i.tn = or i64 %i.tj, %i.tm
  %i.to = icmp ne i64 %i.tn, 0
  %i.tp = zext i1 %i.to to i32
  %i.tq = icmp eq i32 %i.tp, 0
  %i.tr = icmp eq i32 %.sroa.7.026.i.i.i.i, 1
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i = and i1 %i.tr, %i.tq
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK12_GLOBAL__N_117CalledOnceChecker25getBlockGuaraneedCallSiteEPKN5clang9BlockExprE.exit.i.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i65.i.i.i.i.i.i.i.i.i.i.i.i

_ZN4llvmeqENS_9StringRefES0_.exit.i.i52.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK5clang9NamedDecl7getNameEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tf, i64 16 ; 2 uses
  %i.tt = load i128, ptr %i.ts, align 1
  %i.tu = xor i128 129430400503933458867978732859450157412, %i.tt
  %i.tv = getelementptr i8, ptr %i.ts, i64 7
  %i.tw = load i128, ptr %i.tv, align 1
  %i.tx = xor i128 154737615532601781338834611803521113960, %i.tw
  %i.ty = or i128 %i.tu, %i.tx
  %i.tz = icmp ne i128 %i.ty, 0
  %i.ua = zext i1 %i.tz to i32
  %i.ub = icmp eq i32 %i.ua, 0
  %i.uc = icmp eq i32 %.sroa.7.026.i.i.i.i, 1
  %or.cond39.i.i.i.i.i.i.i.i.i.i.i.i.a = and i1 %i.uc, %i.ub
  br i1 %or.cond39.i.i.i.i.i.i.i.i.i.i.i.i.a, label %.loopexit.split.loop.exit8.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_117CalledOnceChecker31shouldBlockArgumentBeCalledOnceEPKN5clang12FunctionDeclEj.exit.thread.i.i.i.i.i

_ZN4llvmeqENS_9StringRefES0_.exit.i.i65.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ud = load i64, ptr %i.th, align 1
  %i.ue = xor i64 7521983764486121828, %i.ud
  %i.uf = getelementptr i8, ptr %i.th, i64 6
  %i.ug = load i64, ptr %i.uf, align 1
  %i.uh = xor i64 8243122676040689763, %i.ug
  %i.ui = or i64 %i.ue, %i.uh
  %i.uj = icmp ne i64 %i.ui, 0
  %i.uk = zext i1 %i.uj to i32
  %i.ul = icmp eq i32 %i.uk, 0
  %i.um = icmp eq i32 %.sroa.7.026.i.i.i.i, 2
  %or.cond40.i.i.i.i.i.i.i.i.i.i.i.i.a = and i1 %i.um, %i.ul
  br i1 %or.cond40.i.i.i.i.i.i.i.i.i.i.i.i.a, label %.loopexit.split.loop.exit10.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_117CalledOnceChecker31shouldBlockArgumentBeCalledOnceEPKN5clang12FunctionDeclEj.exit.thread.i.i.i.i.i

_ZN4llvmeqENS_9StringRefES0_.exit.i.i78.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK5clang9NamedDecl7getNameEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.un = getelementptr inbounds nuw i8, ptr %i.tf, i64 16 ; 4 uses
  %i.uo = load i64, ptr %i.un, align 1
  %i.up = xor i64 7521983764486121828, %i.uo
  %i.uq = getelementptr i8, ptr %i.un, i64 5
  %i.ur = load i64, ptr %i.uq, align 1
  %i.us = xor i64 7164797593621914484, %i.ur
  %i.ut = or i64 %i.up, %i.us
  %i.uu = icmp ne i64 %i.ut, 0
  %i.uv = zext i1 %i.uu to i32
  %i.uw = icmp eq i32 %i.uv, 0
  %i.ux = icmp eq i32 %.sroa.7.026.i.i.i.i, 1     ; 2 uses
  %or.cond41.i.i.i.i.i.i.i.i.i.i.i.i.a = and i1 %i.ux, %i.uw
  br i1 %or.cond41.i.i.i.i.i.i.i.i.i.i.i.i.a, label %.loopexit.split.loop.exit12.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.1.i.i.i.i.i.i.i.i.i.i.i.i

_ZN4llvmeqENS_9StringRefES0_.exit.i.i.1.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i78.i.i.i.i.i.i.i.i.i.i.i.i
  %i.uy = load i64, ptr %i.un, align 1
  %i.uz = xor i64 7521983764486121828, %i.uy
  %i.va = getelementptr i8, ptr %i.un, i64 5
  %i.vb = load i64, ptr %i.va, align 1
  %i.vc = xor i64 7305804445146178420, %i.vb
  %i.vd = or i64 %i.uz, %i.vc
  %i.ve = icmp ne i64 %i.vd, 0
  %i.vf = zext i1 %i.ve to i32
  %i.vg = icmp eq i32 %i.vf, 0
  %or.cond42.i.i.i.i.i.i.i.i.i.i.i.i.a = and i1 %i.ux, %i.vg
  br i1 %or.cond42.i.i.i.i.i.i.i.i.i.i.i.i.a, label %_ZNK12_GLOBAL__N_117CalledOnceChecker25getBlockGuaraneedCallSiteEPKN5clang9BlockExprE.exit.i.i, label %_ZN12_GLOBAL__N_117CalledOnceChecker31shouldBlockArgumentBeCalledOnceEPKN5clang12FunctionDeclEj.exit.thread.i.i.i.i.i

_ZN4llvmeqENS_9StringRefES0_.exit.i.i52.1.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK5clang9NamedDecl7getNameEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.vh = getelementptr inbounds nuw i8, ptr %i.tf, i64 16 ; 2 uses
  %i.vi = load i128, ptr %i.vh, align 1
  %i.vj = xor i128 152058552222610358629058533983301888356, %i.vi
  %i.vk = getelementptr i8, ptr %i.vh, i64 6
  %i.vl = load i128, ptr %i.vk, align 1
  %i.vm = xor i128 132167187550081667575167695744963405923, %i.vl
  %i.vn = or i128 %i.vj, %i.vm
  %i.vo = icmp ne i128 %i.vn, 0
  %i.vp = zext i1 %i.vo to i32
  %i.vq = icmp eq i32 %i.vp, 0
  %i.vr = icmp eq i32 %.sroa.7.026.i.i.i.i, 1
  %or.cond43.i.i.i.i.i.i.i.i.i.i.i.i.a = and i1 %i.vr, %i.vq
  br i1 %or.cond43.i.i.i.i.i.i.i.i.i.i.i.i.a, label %.loopexit.split.loop.exit8.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_117CalledOnceChecker31shouldBlockArgumentBeCalledOnceEPKN5clang12FunctionDeclEj.exit.thread.i.i.i.i.i

_ZN4llvmeqENS_9StringRefES0_.exit.i.i65.1.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK5clang9NamedDecl7getNameEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.vs = getelementptr inbounds nuw i8, ptr %i.tf, i64 16 ; 2 uses
  %i.vt = load i128, ptr %i.vs, align 1
  %i.vu = xor i128 152058552222610358629058533983301888356, %i.vt
  %i.vv = getelementptr i8, ptr %i.vs, i64 15
  %i.vw = load i128, ptr %i.vv, align 1
  %i.vx = xor i128 154737615532601781338834611803521113970, %i.vw
  %i.vy = or i128 %i.vu, %i.vx
  %i.vz = icmp ne i128 %i.vy, 0
  %i.wa = zext i1 %i.vz to i32
  %i.wb = icmp eq i32 %i.wa, 0
  %i.wc = icmp eq i32 %.sroa.7.026.i.i.i.i, 1
  %or.cond44.i.i.i.i.i.i.i.i.i.i.i.i.a = and i1 %i.wc, %i.wb
  br i1 %or.cond44.i.i.i.i.i.i.i.i.i.i.i.i.a, label %.loopexit.split.loop.exit10.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_117CalledOnceChecker31shouldBlockArgumentBeCalledOnceEPKN5clang12FunctionDeclEj.exit.thread.i.i.i.i.i

_ZN4llvmeqENS_9StringRefES0_.exit.i.i78.1.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK5clang9NamedDecl7getNameEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.wd = getelementptr inbounds nuw i8, ptr %i.tf, i64 16 ; 2 uses
  %i.we = load i128, ptr %i.wd, align 1
  %i.wf = xor i128 152058552222610358629058533983301888356, %i.we
  %i.wg = getelementptr i8, ptr %i.wd, i64 5
  %i.wh = load i128, ptr %i.wg, align 1
  %i.wi = xor i128 132167187549485605829768882210172593012, %i.wh
  %i.wj = or i128 %i.wf, %i.wi
  %i.wk = icmp ne i128 %i.wj, 0
  %i.wl = zext i1 %i.wk to i32
  %i.wm = icmp eq i32 %i.wl, 0
  %i.wn = icmp eq i32 %.sroa.7.026.i.i.i.i, 1
  %or.cond45.i.i.i.i.i.i.i.i.i.i.i.i = and i1 %i.wn, %i.wm
  br i1 %or.cond45.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.split.loop.exit12.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_117CalledOnceChecker31shouldBlockArgumentBeCalledOnceEPKN5clang12FunctionDeclEj.exit.thread.i.i.i.i.i

.loopexit.split.loop.exit8.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i52.1.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4llvmeqENS_9StringRefES0_.exit.i.i52.i.i.i.i.i.i.i.i.i.i.i.i
  %.02917.lcssa19.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ @_ZN12_GLOBAL__N_128KNOWN_CALLED_ONCE_PARAMETERSE, %_ZN4llvmeqENS_9StringRefES0_.exit.i.i52.i.i.i.i.i.i.i.i.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_128KNOWN_CALLED_ONCE_PARAMETERSE, i64 96), %_ZN4llvmeqENS_9StringRefES0_.exit.i.i52.1.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.wo = getelementptr inbounds nuw i8, ptr %.02917.lcssa19.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  br label %_ZN12_GLOBAL__N_117CalledOnceChecker31shouldBlockArgumentBeCalledOnceEPKN5clang12FunctionDeclEj.exit.i.i.i.i.i

.loopexit.split.loop.exit10.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i65.1.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4llvmeqENS_9StringRefES0_.exit.i.i65.i.i.i.i.i.i.i.i.i.i.i.i
  %.02917.lcssa20.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ @_ZN12_GLOBAL__N_128KNOWN_CALLED_ONCE_PARAMETERSE, %_ZN4llvmeqENS_9StringRefES0_.exit.i.i65.i.i.i.i.i.i.i.i.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_128KNOWN_CALLED_ONCE_PARAMETERSE, i64 96), %_ZN4llvmeqENS_9StringRefES0_.exit.i.i65.1.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.wp = getelementptr inbounds nuw i8, ptr %.02917.lcssa20.i.i.i.i.i.i.i.i.i.i.i.i, i64 48
  br label %_ZN12_GLOBAL__N_117CalledOnceChecker31shouldBlockArgumentBeCalledOnceEPKN5clang12FunctionDeclEj.exit.i.i.i.i.i

.loopexit.split.loop.exit12.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i78.1.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4llvmeqENS_9StringRefES0_.exit.i.i78.i.i.i.i.i.i.i.i.i.i.i.i
  %.02917.lcssa21.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ @_ZN12_GLOBAL__N_128KNOWN_CALLED_ONCE_PARAMETERSE, %_ZN4llvmeqENS_9StringRefES0_.exit.i.i78.i.i.i.i.i.i.i.i.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_128KNOWN_CALLED_ONCE_PARAMETERSE, i64 96), %_ZN4llvmeqENS_9StringRefES0_.exit.i.i78.1.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.wq = getelementptr inbounds nuw i8, ptr %.02917.lcssa21.i.i.i.i.i.i.i.i.i.i.i.i, i64 72
  br label %_ZN12_GLOBAL__N_117CalledOnceChecker31shouldBlockArgumentBeCalledOnceEPKN5clang12FunctionDeclEj.exit.i.i.i.i.i

_ZN12_GLOBAL__N_117CalledOnceChecker31shouldBlockArgumentBeCalledOnceEPKN5clang12FunctionDeclEj.exit.i.i.i.i.i: ; preds = %.loopexit.split.loop.exit12.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.split.loop.exit10.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.split.loop.exit8.i.i.i.i.i.i.i.i.i.i.i.i
  %.028.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.wp, %.loopexit.split.loop.exit10.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.wq, %.loopexit.split.loop.exit12.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.wo, %.loopexit.split.loop.exit8.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.not.i.i.i.i37.i = icmp eq ptr %.028.i.i.i.i.i.i.i.i.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_128KNOWN_CALLED_ONCE_PARAMETERSE, i64 192)
  br i1 %.not.i.i.i.i37.i, label %_ZN12_GLOBAL__N_117CalledOnceChecker31shouldBlockArgumentBeCalledOnceEPKN5clang12FunctionDeclEj.exit.thread.i.i.i.i.i, label %_ZNK12_GLOBAL__N_117CalledOnceChecker25getBlockGuaraneedCallSiteEPKN5clang9BlockExprE.exit.i.i

_ZN12_GLOBAL__N_117CalledOnceChecker31shouldBlockArgumentBeCalledOnceEPKN5clang12FunctionDeclEj.exit.thread.i.i.i.i.i: ; preds = %_ZN12_GLOBAL__N_117CalledOnceChecker31shouldBlockArgumentBeCalledOnceEPKN5clang12FunctionDeclEj.exit.i.i.i.i.i, %_ZN4llvmeqENS_9StringRefES0_.exit.i.i78.1.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4llvmeqENS_9StringRefES0_.exit.i.i65.1.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4llvmeqENS_9StringRefES0_.exit.i.i52.1.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.1.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4llvmeqENS_9StringRefES0_.exit.i.i65.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4llvmeqENS_9StringRefES0_.exit.i.i52.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNK5clang9NamedDecl7getNameEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNK5clang8CallExpr15getDirectCalleeEv.exit.i.i.i.i.i, %bb.fi, %bb.fh
  %.val.i.i.i.i35.i = load ptr, ptr %i.sf, align 8, !tbaa !193
  %i.wr = call noundef ptr @_ZN5clang4Expr25getReferencedDeclOfCalleeEv(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i.i.i35.i) #16 ; 3 uses
  %.not.i.i.i.i.i.i.i.i36.i = icmp eq ptr %i.wr, null
  br i1 %.not.i.i.i.i.i.i.i.i36.i, label %.loopexit.i.i, label %bb.fj

bb.fj:                                            ; preds = %_ZN12_GLOBAL__N_117CalledOnceChecker31shouldBlockArgumentBeCalledOnceEPKN5clang12FunctionDeclEj.exit.thread.i.i.i.i.i
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 28
  %i.wt = load i32, ptr %i.ws, align 4
  %i.wu = and i32 %i.wt, 127
  %i.wv = add nsw i32 %i.wu, -35
  %i.ww = icmp ult i32 %i.wv, 6
  br i1 %i.ww, label %_ZNK12_GLOBAL__N_117CalledOnceChecker31shouldBlockArgumentBeCalledOnceIN5clang8CallExprEEEbPKT_PKNS2_4StmtE.exit.i.i.i, label %.loopexit.i.i

_ZNK12_GLOBAL__N_117CalledOnceChecker31shouldBlockArgumentBeCalledOnceEPKN5clang8CallExprEj.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i27.i
  %i.wx = add nuw i32 %.sroa.7.026.i.i.i.i, 1
  %i.wy = getelementptr inbounds nuw i8, ptr %.sroa.016.027.i.i.i.i, i64 8 ; 2 uses
  %.not29.i.i.i.i = icmp eq ptr %i.wy, %i.sr
  br i1 %.not29.i.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i27.i

_ZNK12_GLOBAL__N_117CalledOnceChecker31shouldBlockArgumentBeCalledOnceIN5clang8CallExprEEEbPKT_PKNS2_4StmtE.exit.i.i.i: ; preds = %bb.fj
  %i.wz = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_117CalledOnceChecker18shouldBeCalledOnceEPKN5clang12FunctionDeclEj(ptr noundef nonnull readonly align 8 dereferenceable(512) %0, ptr noundef %i.wr, i32 noundef %.sroa.7.026.i.i.i.i)
  br i1 %i.wz, label %_ZNK12_GLOBAL__N_117CalledOnceChecker25getBlockGuaraneedCallSiteEPKN5clang9BlockExprE.exit.i.i, label %.loopexit.i.i

.thread45.i.i.i:                                  ; preds = %.lr.ph.i._crit_edge.i.i
  %.not57.i.i.i = icmp eq i16 %.lcssa.i.i, 36
  br i1 %.not57.i.i.i, label %bb.fk, label %.loopexit.i.i

bb.fk:                                            ; preds = %.thread45.i.i.i
  %i.xa = getelementptr inbounds nuw i8, ptr %storemerge67.i.lcssa.i.i, i64 48 ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %storemerge67.i.lcssa.i.i, i64 24
  %i.xc = load i32, ptr %i.xb, align 8            ; 2 uses
  %i.xd = shl i32 %i.xc, 3
  %i.xe = and i32 %i.xd, 524280                   ; 2 uses
  %.idx.i31.i.i.i = zext nneg i32 %i.xe to i64
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xa, i64 %.idx.i31.i.i.i
  %.not29.i32.i.i.i = icmp eq i32 %i.xe, 0
  br i1 %.not29.i32.i.i.i, label %.loopexit.i.i, label %.lr.ph.i33.i.i.i

.lr.ph.i33.i.i.i:                                 ; preds = %bb.fk, %_ZNK12_GLOBAL__N_117CalledOnceChecker31shouldBlockArgumentBeCalledOnceEPKN5clang15ObjCMessageExprEj.exit.i.i.i.i
  %.sroa.017.028.i.i.i.i = phi ptr [ %i.xo, %_ZNK12_GLOBAL__N_117CalledOnceChecker31shouldBlockArgumentBeCalledOnceEPKN5clang15ObjCMessageExprEj.exit.i.i.i.i ], [ %i.xa, %bb.fk ] ; 2 uses
  %.sroa.7.027.i.i.i.i = phi i32 [ %i.xn, %_ZNK12_GLOBAL__N_117CalledOnceChecker31shouldBlockArgumentBeCalledOnceEPKN5clang15ObjCMessageExprEj.exit.i.i.i.i ], [ 0, %bb.fk ] ; 3 uses
  %i.xg = load ptr, ptr %.sroa.017.028.i.i.i.i, align 8, !tbaa !166
  %.not.i34.i.i.i = icmp eq ptr %i.xg, %.02168.i.lcssa.i.i
  br i1 %.not.i34.i.i.i, label %bb.fl, label %_ZNK12_GLOBAL__N_117CalledOnceChecker31shouldBlockArgumentBeCalledOnceEPKN5clang15ObjCMessageExprEj.exit.i.i.i.i

bb.fl:                                            ; preds = %.lr.ph.i33.i.i.i
  %i.xh = getelementptr i8, ptr %storemerge67.i.lcssa.i.i, i64 16
  %.val.i.i.i.i31 = load i64, ptr %i.xh, align 8  ; 2 uses
  %i.xi = and i32 %i.xc, 16777216
  %.not.i.i.i.i.i.i38.i = icmp eq i32 %i.xi, 0
  %i.xj = inttoptr i64 %.val.i.i.i.i31 to ptr     ; 2 uses
  %.not1.i.i.i.i.i.i = icmp eq i64 %.val.i.i.i.i31, 0
  %.not.i.i.i.i.i39.i = select i1 %.not.i.i.i.i.i.i38.i, i1 true, i1 %.not1.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i39.i, label %.loopexit.i.i, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 104
  %i.xl = load i32, ptr %i.xk, align 8, !tbaa !139
  %i.xm = icmp ugt i32 %i.xl, %.sroa.7.027.i.i.i.i
  br i1 %i.xm, label %_ZNK12_GLOBAL__N_117CalledOnceChecker31shouldBlockArgumentBeCalledOnceIN5clang15ObjCMessageExprEEEbPKT_PKNS2_4StmtE.exit.i.i.i, label %.loopexit.i.i

_ZNK12_GLOBAL__N_117CalledOnceChecker31shouldBlockArgumentBeCalledOnceEPKN5clang15ObjCMessageExprEj.exit.i.i.i.i: ; preds = %.lr.ph.i33.i.i.i
  %i.xn = add i32 %.sroa.7.027.i.i.i.i, 1
  %i.xo = getelementptr inbounds nuw i8, ptr %.sroa.017.028.i.i.i.i, i64 8 ; 2 uses
  %.not30.i.i.i.i = icmp eq ptr %i.xo, %i.xf
  br i1 %.not30.i.i.i.i, label %.loopexit.i.i, label %.lr.ph.i33.i.i.i

_ZNK12_GLOBAL__N_117CalledOnceChecker31shouldBlockArgumentBeCalledOnceIN5clang15ObjCMessageExprEEEbPKT_PKNS2_4StmtE.exit.i.i.i: ; preds = %bb.fm
  %i.xp = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_117CalledOnceChecker18shouldBeCalledOnceEPKN5clang14ObjCMethodDeclEj(ptr noundef nonnull readonly align 8 dereferenceable(512) %0, ptr noundef %i.xj, i32 noundef %.sroa.7.027.i.i.i.i)
  br i1 %i.xp, label %_ZNK12_GLOBAL__N_117CalledOnceChecker25getBlockGuaraneedCallSiteEPKN5clang9BlockExprE.exit.i.i, label %.loopexit.i.i

.lr.ph.i40.i:                                     ; preds = %.lr.ph.i.preheader.i.i, %.lr.ph.i.i42.i
  %storemerge67.i49.i.i = phi ptr [ %i.xq, %.lr.ph.i.i42.i ], [ %i.rv, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %i.xq = call noundef ptr @_ZNK5clang9ParentMap9getParentEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %i.ru, ptr noundef nonnull %storemerge67.i49.i.i) #16 ; 4 uses
  %.not.i.i41.i = icmp eq ptr %i.xq, null
  br i1 %.not.i.i41.i, label %.loopexit.i.i, label %.lr.ph.i.i42.i, !llvm.loop !281

.loopexit.i.i:                                    ; preds = %.lr.ph.i40.i, %_ZNK12_GLOBAL__N_117CalledOnceChecker31shouldBlockArgumentBeCalledOnceEPKN5clang8CallExprEj.exit.i.i.i.i, %_ZNK12_GLOBAL__N_117CalledOnceChecker31shouldBlockArgumentBeCalledOnceEPKN5clang15ObjCMessageExprEj.exit.i.i.i.i, %_ZNK12_GLOBAL__N_117CalledOnceChecker31shouldBlockArgumentBeCalledOnceIN5clang15ObjCMessageExprEEEbPKT_PKNS2_4StmtE.exit.i.i.i, %bb.fm, %bb.fl, %bb.fk, %.thread45.i.i.i, %_ZNK12_GLOBAL__N_117CalledOnceChecker31shouldBlockArgumentBeCalledOnceIN5clang8CallExprEEEbPKT_PKNS2_4StmtE.exit.i.i.i, %bb.fj, %_ZN12_GLOBAL__N_117CalledOnceChecker31shouldBlockArgumentBeCalledOnceEPKN5clang12FunctionDeclEj.exit.thread.i.i.i.i.i, %bb.fg, %bb.fe
  br label %_ZNK12_GLOBAL__N_117CalledOnceChecker25getBlockGuaraneedCallSiteEPKN5clang9BlockExprE.exit.i.i

_ZNK12_GLOBAL__N_117CalledOnceChecker25getBlockGuaraneedCallSiteEPKN5clang9BlockExprE.exit.i.i: ; preds = %.loopexit.i.i, %_ZNK12_GLOBAL__N_117CalledOnceChecker31shouldBlockArgumentBeCalledOnceIN5clang15ObjCMessageExprEEEbPKT_PKNS2_4StmtE.exit.i.i.i, %_ZNK12_GLOBAL__N_117CalledOnceChecker31shouldBlockArgumentBeCalledOnceIN5clang8CallExprEEEbPKT_PKNS2_4StmtE.exit.i.i.i, %_ZN12_GLOBAL__N_117CalledOnceChecker31shouldBlockArgumentBeCalledOnceEPKN5clang12FunctionDeclEj.exit.i.i.i.i.i, %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.1.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ff
  %.sink109.i.i = phi i64 [ 56, %.loopexit.i.i ], [ 48, %_ZNK12_GLOBAL__N_117CalledOnceChecker31shouldBlockArgumentBeCalledOnceIN5clang8CallExprEEEbPKT_PKNS2_4StmtE.exit.i.i.i ], [ 48, %_ZNK12_GLOBAL__N_117CalledOnceChecker31shouldBlockArgumentBeCalledOnceIN5clang15ObjCMessageExprEEEbPKT_PKNS2_4StmtE.exit.i.i.i ], [ 48, %_ZN12_GLOBAL__N_117CalledOnceChecker31shouldBlockArgumentBeCalledOnceEPKN5clang12FunctionDeclEj.exit.i.i.i.i.i ], [ 48, %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.1.i.i.i.i.i.i.i.i.i.i.i.i ], [ 48, %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 48, %bb.ff ]
  %.not35.i.i = phi i1 [ true, %.loopexit.i.i ], [ false, %_ZNK12_GLOBAL__N_117CalledOnceChecker31shouldBlockArgumentBeCalledOnceIN5clang8CallExprEEEbPKT_PKNS2_4StmtE.exit.i.i.i ], [ false, %_ZNK12_GLOBAL__N_117CalledOnceChecker31shouldBlockArgumentBeCalledOnceIN5clang15ObjCMessageExprEEEbPKT_PKNS2_4StmtE.exit.i.i.i ], [ false, %_ZN12_GLOBAL__N_117CalledOnceChecker31shouldBlockArgumentBeCalledOnceEPKN5clang12FunctionDeclEj.exit.i.i.i.i.i ], [ false, %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.1.i.i.i.i.i.i.i.i.i.i.i.i ], [ false, %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ false, %bb.ff ]
  %i.xr = phi ptr [ null, %.loopexit.i.i ], [ %storemerge67.i.lcssa.i.i, %_ZNK12_GLOBAL__N_117CalledOnceChecker31shouldBlockArgumentBeCalledOnceIN5clang8CallExprEEEbPKT_PKNS2_4StmtE.exit.i.i.i ], [ %storemerge67.i.lcssa.i.i, %_ZNK12_GLOBAL__N_117CalledOnceChecker31shouldBlockArgumentBeCalledOnceIN5clang15ObjCMessageExprEEEbPKT_PKNS2_4StmtE.exit.i.i.i ], [ %storemerge67.i.lcssa.i.i, %_ZN12_GLOBAL__N_117CalledOnceChecker31shouldBlockArgumentBeCalledOnceEPKN5clang12FunctionDeclEj.exit.i.i.i.i.i ], [ %storemerge67.i.lcssa.i.i, %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.1.i.i.i.i.i.i.i.i.i.i.i.i ], [ %storemerge67.i.lcssa.i.i, %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %storemerge67.i.lcssa.i.i, %bb.ff ] ; 2 uses
  %i.xs = load ptr, ptr %i.dg, align 8, !tbaa !212, !nonnull !147, !align !148 ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.oj, i64 16 ; 2 uses
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !335
  %i.xv = load ptr, ptr %i.xs, align 8, !tbaa !205
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 %.sink109.i.i
  %i.xx = load ptr, ptr %i.xw, align 8
  call void %i.xx(ptr noundef nonnull align 8 dereferenceable(8) %i.xs, ptr noundef %i.xu) #16, !inline_history !282
  %i.xy = load ptr, ptr %i.xt, align 8, !tbaa !335 ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 104
  %i.ya = load ptr, ptr %i.xz, align 8, !tbaa !144 ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xy, i64 112
  %i.yc = load i32, ptr %i.yb, align 8, !tbaa !145 ; 2 uses
  %i.yd = zext i32 %i.yc to i64
  %.idx.i29.i = shl nuw nsw i64 %i.yd, 4
  %i.ye = getelementptr inbounds nuw i8, ptr %i.ya, i64 %.idx.i29.i
  %.not1960.i.i = icmp eq i32 %i.yc, 0
  br i1 %.not1960.i.i, label %_ZNK5clang10CFGElement5getAsINS_7CFGStmtEEESt8optionalIT_Ev.exit.i, label %.lr.ph62.i.i

.lr.ph62.i.i:                                     ; preds = %_ZNK12_GLOBAL__N_117CalledOnceChecker25getBlockGuaraneedCallSiteEPKN5clang9BlockExprE.exit.i.i, %_ZN12_GLOBAL__N_117CalledOnceChecker14processCallForEjPKN5clang4ExprE.exit.i.i
  %.061.i.i = phi ptr [ %i.aaz, %_ZN12_GLOBAL__N_117CalledOnceChecker14processCallForEjPKN5clang4ExprE.exit.i.i ], [ %i.ya, %_ZNK12_GLOBAL__N_117CalledOnceChecker25getBlockGuaraneedCallSiteEPKN5clang9BlockExprE.exit.i.i ] ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.061.i.i, align 8
  %i.yf = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.yg = inttoptr i64 %i.yf to ptr               ; 8 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 28
  %i.yi = load i32, ptr %i.yh, align 4
  %i.yj = and i32 %i.yi, 127
  %i.yk = icmp ne i32 %i.yj, 44
  %.not2037.i.i = icmp eq i64 %i.yf, 0
  %.not20.i.i = or i1 %.not2037.i.i, %i.yk
  br i1 %.not20.i.i, label %_ZN12_GLOBAL__N_117CalledOnceChecker14processCallForEjPKN5clang4ExprE.exit.i.i, label %bb.fn

bb.fn:                                            ; preds = %.lr.ph62.i.i
  %.val.i30.i = load ptr, ptr %i.cs, align 8, !tbaa !41 ; 7 uses
  %.val21.i.i = load i32, ptr %i.a, align 8, !tbaa !43 ; 3 uses
  %i.yl = zext i32 %.val21.i.i to i64             ; 3 uses
  %.idx3.i.i.i.i = shl nuw nsw i64 %i.yl, 3       ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %.val.i30.i, i64 %.idx3.i.i.i.i
  %i.yn = lshr i64 %i.yl, 2                       ; 2 uses
  %.not.i.i23.i.i = icmp eq i64 %i.yn, 0
  br i1 %.not.i.i23.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i31.i

.lr.ph.i.i.i.i.i.i31.i:                           ; preds = %bb.fn
  %i.yo = and i64 %.idx3.i.i.i.i, 34359738336
  %scevgep.i.i.i.i.i.i.i = getelementptr i8, ptr %.val.i30.i, i64 %i.yo
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fs, %.lr.ph.i.i.i.i.i.i31.i
  %.047.i.i.i.i.i.i.i = phi i64 [ %i.yn, %.lr.ph.i.i.i.i.i.i31.i ], [ %i.zb, %bb.fs ] ; 2 uses
  %.02946.i.i.i.i.i.i.i = phi ptr [ %.val.i30.i, %.lr.ph.i.i.i.i.i.i31.i ], [ %i.za, %bb.fs ] ; 9 uses
  %i.yp = load ptr, ptr %.02946.i.i.i.i.i.i.i, align 8, !tbaa !133
  %i.yq = icmp eq ptr %i.yp, %i.yg
  br i1 %i.yq, label %_ZNK12_GLOBAL__N_117CalledOnceChecker8getIndexERKN5clang11ParmVarDeclE.exit.i.i, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.yr = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i, i64 8
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !133
  %i.yt = icmp eq ptr %i.ys, %i.yg
  br i1 %i.yt, label %_ZNK12_GLOBAL__N_117CalledOnceChecker8getIndexERKN5clang11ParmVarDeclE.exit.i.i.loopexit.split.loop.exit, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.yu = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i, i64 16
  %i.yv = load ptr, ptr %i.yu, align 8, !tbaa !133
  %i.yw = icmp eq ptr %i.yv, %i.yg
  br i1 %i.yw, label %_ZNK12_GLOBAL__N_117CalledOnceChecker8getIndexERKN5clang11ParmVarDeclE.exit.i.i.loopexit.split.loop.exit621, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.yx = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i, i64 24
  %i.yy = load ptr, ptr %i.yx, align 8, !tbaa !133
  %i.yz = icmp eq ptr %i.yy, %i.yg
  br i1 %i.yz, label %_ZNK12_GLOBAL__N_117CalledOnceChecker8getIndexERKN5clang11ParmVarDeclE.exit.i.i.loopexit.split.loop.exit623, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.za = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i, i64 32
  %i.zb = add nsw i64 %.047.i.i.i.i.i.i.i, -1
  %i.zc = icmp sgt i64 %.047.i.i.i.i.i.i.i, 1
  br i1 %i.zc, label %bb.fo, label %._crit_edge.loopexit.i.i.i.i.i.i.i, !llvm.loop !1

._crit_edge.loopexit.i.i.i.i.i.i.i:               ; preds = %bb.fs
  %i.zd = and i32 %.val21.i.i, 3
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i, %bb.fn
  %.pre-phi56.i.i.i.i.i.i.i = phi i32 [ %i.zd, %._crit_edge.loopexit.i.i.i.i.i.i.i ], [ %.val21.i.i, %bb.fn ]
  %.029.lcssa.i.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i.i ], [ %.val.i30.i, %bb.fn ] ; 5 uses
  switch i32 %.pre-phi56.i.i.i.i.i.i.i, label %bb.fw [
    i32 3, label %bb.ft
    i32 2, label %._crit_edge._crit_edge.i.i.i.i.i.i.i
    i32 1, label %._crit_edge._crit_edge52.i.i.i.i.i.i.i
  ]

bb.ft:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.ze = load ptr, ptr %.029.lcssa.i.i.i.i.i.i.i, align 8, !tbaa !133
  %i.zf = icmp eq ptr %i.ze, %i.yg
  br i1 %i.zf, label %_ZNK12_GLOBAL__N_117CalledOnceChecker8getIndexERKN5clang11ParmVarDeclE.exit.i.i, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.zg = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i.i.i:             ; preds = %bb.fu, %._crit_edge.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i = phi ptr [ %i.zg, %bb.fu ], [ %.029.lcssa.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 3 uses
  %i.zh = load ptr, ptr %.1.i.i.i.i.i.i.i, align 8, !tbaa !133
  %i.zi = icmp eq ptr %i.zh, %i.yg
  br i1 %i.zi, label %_ZNK12_GLOBAL__N_117CalledOnceChecker8getIndexERKN5clang11ParmVarDeclE.exit.i.i, label %bb.fv

bb.fv:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i.i
  %i.zj = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i.i.i.i:           ; preds = %bb.fv, %._crit_edge.i.i.i.i.i.i.i
  %.2.i.i.i.i.i.i.i = phi ptr [ %i.zj, %bb.fv ], [ %.029.lcssa.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %i.zk = load ptr, ptr %.2.i.i.i.i.i.i.i, align 8, !tbaa !133
end_hunk_0
