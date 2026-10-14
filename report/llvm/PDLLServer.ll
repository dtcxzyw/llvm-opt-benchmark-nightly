Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PDLLServer?download=true
inline.NumInlined: 6258
inline.NumDeleted: 3365
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN4llvm11IntervalMapIPKcPKN12_GLOBAL__N_114PDLIndexSymbolELj8ENS_23IntervalMapHalfOpenInfoIS2_EEE8iterator9eraseNodeEj:bb.a
  %.01214.i.i.i.i45.ph = phi i32 [ %i.cz, %vector.memcheck ], [ %i.cz, %vector.scevcheck ], [ %i.cz, %.lr.ph.i.i.i.i43 ], [ %i.dt, %middle.block ] ; 3 uses
  %i.ed = sub i32 %i.cu, %.015.i.i.i.i44.ph
  %.neg = add i32 %.015.i.i.i.i44.ph, 1
  %xtraiter = and i32 %i.ed, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ee = zext i32 %.015.i.i.i.i44.ph to i64      ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.ee
  %i.eg = zext i32 %.01214.i.i.i.i45.ph to i64    ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.eg
  %i.ei = load i64, ptr %i.ef, align 8, !tbaa !52
  store i64 %i.ei, ptr %i.eh, align 8, !tbaa !52
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.ee
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !66
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.eg
  store ptr %i.ek, ptr %i.el, align 8, !tbaa !66
  %i.em = add i32 %.015.i.i.i.i44.ph, 1
  %i.en = add i32 %.01214.i.i.i.i45.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.015.i.i.i.i44.unr = phi i32 [ %.015.i.i.i.i44.ph, %scalar.ph.preheader ], [ %i.em, %scalar.ph.prol ]
  %.01214.i.i.i.i45.unr = phi i32 [ %.01214.i.i.i.i45.ph, %scalar.ph.preheader ], [ %i.en, %scalar.ph.prol ]
  %i.eo = icmp eq i32 %i.cu, %.neg
  br i1 %i.eo, label %_ZN4llvm15IntervalMapImpl4Path7setSizeEjj.exit.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.015.i.i.i.i44 = phi i32 [ %i.fh, %scalar.ph ], [ %.015.i.i.i.i44.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.01214.i.i.i.i45 = phi i32 [ %i.fi, %scalar.ph ], [ %.01214.i.i.i.i45.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.ep = zext i32 %.015.i.i.i.i44 to i64         ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.ep
  %i.er = zext i32 %.01214.i.i.i.i45 to i64       ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.er
  %i.et = load i64, ptr %i.eq, align 8, !tbaa !52
  store i64 %i.et, ptr %i.es, align 8, !tbaa !52
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.ep
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !66
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.er
  store ptr %i.ev, ptr %i.ew, align 8, !tbaa !66
  %i.ex = add i32 %.015.i.i.i.i44, 1
  %i.ey = add i32 %.01214.i.i.i.i45, 1
  %i.ez = zext i32 %i.ex to i64                   ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.ez
  %i.fb = zext i32 %i.ey to i64                   ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.fb
  %i.fd = load i64, ptr %i.fa, align 8, !tbaa !52
  store i64 %i.fd, ptr %i.fc, align 8, !tbaa !52
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.ez
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !66
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.fb
  store ptr %i.ff, ptr %i.fg, align 8, !tbaa !66
  %i.fh = add i32 %.015.i.i.i.i44, 2              ; 2 uses
  %i.fi = add i32 %.01214.i.i.i.i45, 2
  %.not.i.i.i.i46.1 = icmp eq i32 %i.fh, %i.cu
  br i1 %.not.i.i.i.i46.1, label %_ZN4llvm15IntervalMapImpl4Path7setSizeEjj.exit.loopexit, label %scalar.ph, !llvm.loop !778

_ZN4llvm15IntervalMapImpl4Path7setSizeEjj.exit.loopexit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !153 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %i.cq
  %.phi.trans.insert49 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 8
  %.pre50 = load i32, ptr %.phi.trans.insert49, align 8, !tbaa !158
  br label %_ZN4llvm15IntervalMapImpl4Path7setSizeEjj.exit

_ZN4llvm15IntervalMapImpl4Path7setSizeEjj.exit:   ; preds = %_ZN4llvm15IntervalMapImpl4Path7setSizeEjj.exit.loopexit, %bb.l
  %i.fj = phi i32 [ %.pre50, %_ZN4llvm15IntervalMapImpl4Path7setSizeEjj.exit.loopexit ], [ %i.cu, %bb.l ] ; 2 uses
  %i.fk = phi ptr [ %.pre, %_ZN4llvm15IntervalMapImpl4Path7setSizeEjj.exit.loopexit ], [ %.val39, %bb.l ] ; 2 uses
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %i.fk, i64 %i.cq
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fn = add i32 %i.fj, -1                       ; 2 uses
  store i32 %i.fn, ptr %i.fm, align 8, !tbaa !158
  %i.fo = add i32 %1, -2
  %i.fp = zext i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %i.fk, i64 %i.fp ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 12
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !157
  %i.ft = load ptr, ptr %i.fq, align 8, !tbaa !159
  %i.fu = zext i32 %i.fs to i64
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.fu ; 2 uses
  %i.fw = add i32 %i.fj, -2
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.fv, align 8
  %i.fx = zext i32 %i.fw to i64                   ; 2 uses
  %i.fy = and i64 %.0.copyload.i.i.i.i.i, -64
  %i.fz = or i64 %i.fy, %i.fx
  store i64 %i.fz, ptr %i.fv, align 8
  %i.ga = load ptr, ptr %i.b, align 8, !tbaa !153 ; 4 uses
  %i.gb = getelementptr inbounds nuw [16 x i8], ptr %i.ga, i64 %i.cq
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 12
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !81
  %i.ge = icmp eq i32 %i.gd, %i.fn
  br i1 %i.ge, label %.preheader.preheader.i, label %bb.m

.preheader.preheader.i:                           ; preds = %_ZN4llvm15IntervalMapImpl4Path7setSizeEjj.exit
  %i.gf = getelementptr inbounds nuw i8, ptr %i.cs, i64 96
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.fx
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !66 ; 2 uses
  %i.gi = add nsw i64 %i.cq, -1                   ; 2 uses
  %.not16.wide.i58 = icmp eq i64 %i.gi, 0
  br i1 %.not16.wide.i58, label %.preheader.i._crit_edge, label %.lr.ph

.preheader.i:                                     ; preds = %.lr.ph
  %i.gj = add nsw i64 %i.gk, -1                   ; 2 uses
  %.not16.wide.i = icmp eq i64 %i.gj, 0
  br i1 %.not16.wide.i, label %.preheader.i._crit_edge, label %.lr.ph, !llvm.loop !11

.lr.ph:                                           ; preds = %.preheader.preheader.i, %.preheader.i
  %i.gk = phi i64 [ %i.gj, %.preheader.i ], [ %i.gi, %.preheader.preheader.i ] ; 2 uses
  %i.gl = getelementptr inbounds nuw [16 x i8], ptr %i.ga, i64 %i.gk ; 3 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !159
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 12
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !81 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 96
  %i.gq = zext i32 %i.go to i64
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.gq
  store ptr %i.gh, ptr %i.gr, align 8, !tbaa !66
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !158
  %i.gu = add i32 %i.gt, -1
  %i.gv = icmp eq i32 %i.go, %i.gu
  br i1 %i.gv, label %.preheader.i, label %_ZN4llvm11IntervalMapIPKcPKN12_GLOBAL__N_114PDLIndexSymbolELj8ENS_23IntervalMapHalfOpenInfoIS2_EEE8iterator11setNodeStopEjS2_.exit, !llvm.loop !11

.preheader.i._crit_edge:                          ; preds = %.preheader.i, %.preheader.preheader.i
  %.val17.val.i = load ptr, ptr %i.ga, align 8, !tbaa !159
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ga, i64 12
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !81
  %i.gy = getelementptr inbounds nuw i8, ptr %.val17.val.i, i64 88
  %i.gz = zext i32 %i.gx to i64
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %i.gz
  store ptr %i.gh, ptr %i.ha, align 8, !tbaa !66
  br label %_ZN4llvm11IntervalMapIPKcPKN12_GLOBAL__N_114PDLIndexSymbolELj8ENS_23IntervalMapHalfOpenInfoIS2_EEE8iterator11setNodeStopEjS2_.exit

_ZN4llvm11IntervalMapIPKcPKN12_GLOBAL__N_114PDLIndexSymbolELj8ENS_23IntervalMapHalfOpenInfoIS2_EEE8iterator11setNodeStopEjS2_.exit: ; preds = %.lr.ph, %.preheader.i._crit_edge
  tail call void @_ZN4llvm15IntervalMapImpl4Path9moveRightEj(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i32 noundef %i.c) #22
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %_ZN4llvm11IntervalMapIPKcPKN12_GLOBAL__N_114PDLIndexSymbolELj8ENS_23IntervalMapHalfOpenInfoIS2_EEE8iterator11setNodeStopEjS2_.exit, %_ZN4llvm15IntervalMapImpl4Path7setSizeEjj.exit, %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEPKcLj11EE5eraseEjj.exit
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !154
  %.not.i.i = icmp eq i32 %i.hc, 0
  br i1 %.not.i.i, label %_ZN4llvm11IntervalMapIPKcPKN12_GLOBAL__N_114PDLIndexSymbolELj8ENS_23IntervalMapHalfOpenInfoIS2_EEE14const_iterator7setRootEj.exit, label %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit

_ZNK4llvm15IntervalMapImpl4Path5validEv.exit:     ; preds = %bb.m
  %i.hd = load ptr, ptr %i.b, align 8, !tbaa !153 ; 4 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 12
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !157
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !158
  %i.hi = icmp ult i32 %i.hf, %i.hh
  br i1 %i.hi, label %bb.n, label %_ZN4llvm11IntervalMapIPKcPKN12_GLOBAL__N_114PDLIndexSymbolELj8ENS_23IntervalMapHalfOpenInfoIS2_EEE14const_iterator7setRootEj.exit

bb.n:                                             ; preds = %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit
  %i.hj = zext i32 %i.c to i64
  %i.hk = getelementptr inbounds nuw [16 x i8], ptr %i.hd, i64 %i.hj ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 12
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !157
  %i.hn = load ptr, ptr %i.hk, align 8, !tbaa !159
  %i.ho = zext i32 %i.hm to i64
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %i.ho
  %.sroa.0.0.copyload.i = load i64, ptr %i.hp, align 8, !tbaa !52 ; 2 uses
  %i.hq = zext i32 %1 to i64                      ; 2 uses
  %i.hr = getelementptr inbounds nuw [16 x i8], ptr %i.hd, i64 %i.hq ; 2 uses
  %i.hs = and i64 %.sroa.0.0.copyload.i, -64
  %i.ht = inttoptr i64 %i.hs to ptr
  %i.hu = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.hv = and i32 %i.hu, 63
  %i.hw = add nuw nsw i32 %i.hv, 1
  store ptr %i.ht, ptr %i.hr, align 8, !tbaa !258
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  store i32 %i.hw, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !81
  %i.hx = load ptr, ptr %i.b, align 8, !tbaa !153
  %i.hy = getelementptr inbounds nuw [16 x i8], ptr %i.hx, i64 %i.hq
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 12
  store i32 0, ptr %i.hz, align 4, !tbaa !81
  br label %_ZN4llvm11IntervalMapIPKcPKN12_GLOBAL__N_114PDLIndexSymbolELj8ENS_23IntervalMapHalfOpenInfoIS2_EEE14const_iterator7setRootEj.exit

_ZN4llvm11IntervalMapIPKcPKN12_GLOBAL__N_114PDLIndexSymbolELj8ENS_23IntervalMapHalfOpenInfoIS2_EEE14const_iterator7setRootEj.exit: ; preds = %bb.m, %bb.i, %bb.h, %bb.f, %bb.e, %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit, %bb.n
  ret void
}

declare void @_ZN4llvm15IntervalMapImpl4Path9moveRightEj(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef) local_unnamed_addr #2

declare i64 @_ZNK4llvm15IntervalMapImpl4Path15getRightSiblingEj(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef) local_unnamed_addr #2

declare i64 @_ZN4llvm15IntervalMapImpl10distributeEjjjPKjPjjb(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN4llvm11IntervalMapIPKcPKN12_GLOBAL__N_114PDLIndexSymbolELj8ENS_23IntervalMapHalfOpenInfoIS2_EEE8iterator10insertNodeEjNS_15IntervalMapImpl7NodeRefES2_(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1, i64 %2, ptr noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 12 uses
  %i.b = alloca [4 x ptr], align 16               ; 12 uses
  %i.c = alloca [4 x i32], align 16               ; 6 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !152    ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 18 uses
  %i.f = icmp eq i32 %1, 1                        ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 196 ; 4 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !288
  %.fr.i = freeze i32 %i.h                        ; 14 uses
  %i.i = icmp ult i32 %.fr.i, 11
  br i1 %i.i, label %bb.c, label %.preheader26.split.i

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 9 uses
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !153
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !81   ; 14 uses
  %.not9.i.i.i = icmp eq i32 %.fr.i, %i.m
  br i1 %.not9.i.i.i, label %_ZN4llvm15IntervalMapImpl10BranchNodeIPKcPKN12_GLOBAL__N_114PDLIndexSymbolELj11ENS_23IntervalMapHalfOpenInfoIS3_EEE6insertEjjNS0_7NodeRefES3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.n = sub i32 %.fr.i, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 8 uses
  %i.p = zext i32 %i.n to i64                     ; 5 uses
  %4 = add nsw i32 %.fr.i, -1                     ; 2 uses
  %5 = sub i32 %4, %i.m                           ; 2 uses
  %i.q = zext i32 %5 to i64
  %i.r = add nuw nsw i64 %i.q, 1                  ; 2 uses
  %min.iters.check354 = icmp ult i32 %5, 27
  br i1 %min.iters.check354, label %scalar.ph353.preheader, label %vector.scevcheck346

vector.scevcheck346:                              ; preds = %.lr.ph.i.i.i
  %i.s = add nsw i32 %.fr.i, -1                   ; 2 uses
  %.neg367 = sub i32 %i.m, %i.s
  %i.t = add i32 %.neg367, %.fr.i
  %i.u = icmp ugt i32 %i.t, %.fr.i
  %i.v = icmp ugt i32 %i.m, %i.s
  %i.w = or i1 %i.u, %i.v
  br i1 %i.w, label %scalar.ph353.preheader, label %vector.memcheck347

vector.memcheck347:                               ; preds = %vector.scevcheck346
  %i.x = zext i32 %4 to i64
  %i.y = shl nuw nsw i64 %i.x, 3                  ; 3 uses
  %i.z = shl nuw nsw i32 %.fr.i, 3
  %i.aa = zext nneg i32 %i.z to i64               ; 3 uses
  %i.ab = sub nsw i64 %i.aa, %i.y
  %diff.check348 = icmp ugt i64 %i.ab, -32
  %i.ac = sub nsw i64 %i.aa, %i.y
  %i.ad = add nsw i64 %i.ac, -89
  %diff.check349 = icmp ult i64 %i.ad, 31
  %conflict.rdx350 = or i1 %diff.check348, %diff.check349
  %i.ae = sub nsw i64 %i.y, %i.aa
  %i.af = add nsw i64 %i.ae, -89
  %diff.check351 = icmp ult i64 %i.af, 31
  %conflict.rdx352 = or i1 %conflict.rdx350, %diff.check351
  br i1 %conflict.rdx352, label %scalar.ph353.preheader, label %vector.ph355

vector.ph355:                                     ; preds = %vector.memcheck347
  %n.vec356 = and i64 %i.r, 8589934588            ; 3 uses
  %i.ag = sub nsw i64 %i.p, %n.vec356
  %invariant.op404 = add i32 -1, %i.m
  br label %vector.body357

vector.body357:                                   ; preds = %vector.body357, %vector.ph355
  %index358 = phi i64 [ 0, %vector.ph355 ], [ %index.next363, %vector.body357 ] ; 2 uses
  %i.ah = sub i64 %i.p, %index358                 ; 2 uses
  %i.ai = trunc i64 %i.ah to i32
  %.reass405 = add i32 %i.ai, %invariant.op404
  %i.aj = zext i32 %.reass405 to i64              ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.aj ; 2 uses
  %i.al = trunc nuw i64 %i.ah to i32
  %i.am = add i32 %i.m, %i.al
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ak, i64 -8
  %i.aq = getelementptr inbounds i8, ptr %i.ak, i64 -24
  %wide.load359 = load <2 x i64>, ptr %i.ap, align 8, !tbaa !52
  %wide.load360 = load <2 x i64>, ptr %i.aq, align 8, !tbaa !52
  %i.ar = getelementptr inbounds i8, ptr %i.ao, i64 -8
  %i.as = getelementptr inbounds i8, ptr %i.ao, i64 -24
  store <2 x i64> %wide.load359, ptr %i.ar, align 8, !tbaa !52
  store <2 x i64> %wide.load360, ptr %i.as, align 8, !tbaa !52
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.aj ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -8
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 -24
  %wide.load361 = load <2 x ptr>, ptr %i.au, align 8, !tbaa !66
  %wide.load362 = load <2 x ptr>, ptr %i.av, align 8, !tbaa !66
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.an ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -8
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 -24
  store <2 x ptr> %wide.load361, ptr %i.ax, align 8, !tbaa !66
  store <2 x ptr> %wide.load362, ptr %i.ay, align 8, !tbaa !66
  %index.next363 = add nuw i64 %index358, 4       ; 2 uses
  %i.az = icmp eq i64 %index.next363, %n.vec356
  br i1 %i.az, label %middle.block364, label %vector.body357, !llvm.loop !779

middle.block364:                                  ; preds = %vector.body357
  %cmp.n365 = icmp eq i64 %i.r, %n.vec356
  br i1 %cmp.n365, label %_ZN4llvm15IntervalMapImpl10BranchNodeIPKcPKN12_GLOBAL__N_114PDLIndexSymbolELj11ENS_23IntervalMapHalfOpenInfoIS3_EEE6insertEjjNS0_7NodeRefES3_.exit, label %scalar.ph353.preheader

scalar.ph353.preheader:                           ; preds = %vector.memcheck347, %vector.scevcheck346, %.lr.ph.i.i.i, %middle.block364
  %indvars.iv.i.i.ph = phi i64 [ %i.p, %vector.memcheck347 ], [ %i.p, %vector.scevcheck346 ], [ %i.p, %.lr.ph.i.i.i ], [ %i.ag, %middle.block364 ] ; 4 uses
  %i.ba = trunc i64 %indvars.iv.i.i.ph to i32     ; 2 uses
  %xtraiter397.a = and i32 %i.ba, 1
  %lcmp.mod398.not.a = icmp eq i32 %xtraiter397.a, 0
  br i1 %lcmp.mod398.not.a, label %scalar.ph353.prol.loopexit, label %scalar.ph353.prol

scalar.ph353.prol:                                ; preds = %scalar.ph353.preheader
  %indvars.iv.next.i.i.prol = add nsw i64 %indvars.iv.i.i.ph, -1 ; 2 uses
  %indvars.i.i.prol = trunc i64 %indvars.iv.next.i.i.prol to i32
  %i.bb = add i32 %i.m, %indvars.i.i.prol
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bc
  %i.be = trunc nuw i64 %indvars.iv.i.i.ph to i32
  %i.bf = add i32 %i.m, %i.be
  %i.bg = zext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bg
  %i.bi = load i64, ptr %i.bd, align 8, !tbaa !52
  store i64 %i.bi, ptr %i.bh, align 8, !tbaa !52
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.bc
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !66
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.bg
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !66
  br label %scalar.ph353.prol.loopexit

scalar.ph353.prol.loopexit:                       ; preds = %scalar.ph353.prol, %scalar.ph353.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph353.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph353.prol ]
  %i.bm = icmp eq i32 %i.ba, 1
  br i1 %i.bm, label %_ZN4llvm15IntervalMapImpl10BranchNodeIPKcPKN12_GLOBAL__N_114PDLIndexSymbolELj11ENS_23IntervalMapHalfOpenInfoIS3_EEE6insertEjjNS0_7NodeRefES3_.exit, label %scalar.ph353

scalar.ph353:                                     ; preds = %scalar.ph353.prol.loopexit, %scalar.ph353
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %scalar.ph353 ], [ %indvars.iv.i.i.unr, %scalar.ph353.prol.loopexit ] ; 3 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %indvars.i.i = trunc i64 %indvars.iv.next.i.i to i32
  %i.bn = add i32 %i.m, %indvars.i.i
  %i.bo = zext i32 %i.bn to i64                   ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bo
  %i.bq = trunc nuw i64 %indvars.iv.i.i to i32
  %i.br = add i32 %i.m, %i.bq
  %i.bs = zext i32 %i.br to i64                   ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bs
  %i.bu = load i64, ptr %i.bp, align 8, !tbaa !52
  store i64 %i.bu, ptr %i.bt, align 8, !tbaa !52
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.bo
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !66
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.bs
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !66
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, -2 ; 2 uses
  %indvars.i.i.1 = trunc i64 %indvars.iv.next.i.i.1 to i32 ; 2 uses
  %i.by = add i32 %i.m, %indvars.i.i.1
  %i.bz = zext i32 %i.by to i64                   ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bz
  %i.cb = trunc nuw i64 %indvars.iv.next.i.i to i32
  %i.cc = add i32 %i.m, %i.cb
  %i.cd = zext i32 %i.cc to i64                   ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.cd
  %i.cf = load i64, ptr %i.ca, align 8, !tbaa !52
  store i64 %i.cf, ptr %i.ce, align 8, !tbaa !52
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.bz
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !66
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.cd
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !66
  %.not.i.i.i.1 = icmp eq i32 %indvars.i.i.1, 0
  br i1 %.not.i.i.i.1, label %_ZN4llvm15IntervalMapImpl10BranchNodeIPKcPKN12_GLOBAL__N_114PDLIndexSymbolELj11ENS_23IntervalMapHalfOpenInfoIS3_EEE6insertEjjNS0_7NodeRefES3_.exit, label %scalar.ph353, !llvm.loop !780

_ZN4llvm15IntervalMapImpl10BranchNodeIPKcPKN12_GLOBAL__N_114PDLIndexSymbolELj11ENS_23IntervalMapHalfOpenInfoIS3_EEE6insertEjjNS0_7NodeRefES3_.exit: ; preds = %scalar.ph353.prol.loopexit, %scalar.ph353, %middle.block364, %bb.c
  %i.cj = zext i32 %i.m to i64                    ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.cj
  store i64 %2, ptr %i.ck, align 8, !tbaa !52
  %i.cl = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cj
  store ptr %3, ptr %i.cm, align 8, !tbaa !66
  %i.cn = load i32, ptr %i.g, align 4, !tbaa !288
  %i.co = add i32 %i.cn, 1                        ; 2 uses
  store i32 %i.co, ptr %i.g, align 4, !tbaa !288
  %i.cp = load ptr, ptr %i.e, align 8, !tbaa !153 ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i32 %i.co, ptr %i.cq, align 8, !tbaa !158
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !157
  %i.ct = load ptr, ptr %i.cp, align 8, !tbaa !159
  %i.cu = zext i32 %i.cs to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cu
  %.sroa.0.0.copyload.i = load i64, ptr %i.cv, align 8, !tbaa !52 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cx = and i64 %.sroa.0.0.copyload.i, -64
  %i.cy = inttoptr i64 %i.cx to ptr
  %i.cz = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.da = and i32 %i.cz, 63
  %i.db = add nuw nsw i32 %i.da, 1
  store ptr %i.cy, ptr %i.cw, align 8, !tbaa !258
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  store i32 %i.db, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !81
  br label %bb.ad

.preheader26.split.i:                             ; preds = %bb.b
  %i.dc = load ptr, ptr %i.e, align 8, !tbaa !153
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !81
  %i.df = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.dg = getelementptr i8, ptr %i.d, i64 8       ; 7 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 5 uses
  %.val20.us.i = load ptr, ptr %i.df, align 8, !tbaa !289 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.val20.us.i, i64 8 ; 3 uses
  %i.dj = load ptr, ptr %.val20.us.i, align 8, !tbaa !290 ; 3 uses
  %.not.i.i.i.us.i = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i.us.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader26.split.i
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !292
  store ptr %i.dk, ptr %.val20.us.i, align 8, !tbaa !290
  br label %_ZN4llvm11IntervalMapIPKcPKN12_GLOBAL__N_114PDLIndexSymbolELj8ENS_23IntervalMapHalfOpenInfoIS2_EEE7newNodeINS_15IntervalMapImpl10BranchNodeIS2_S6_Lj12ES8_EEEEPT_v.exit.i

bb.e:                                             ; preds = %.preheader26.split.i
  %i.dl = load ptr, ptr %i.di, align 8, !tbaa !346
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = add i64 %i.dm, 63
  %i.do = and i64 %i.dn, -64                      ; 2 uses
  %i.dp = add i64 %i.do, 192                      ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.val20.us.i, i64 16
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !347
  %i.ds = icmp ult i64 %i.dp, %i.dr
  br i1 %i.ds, label %bb.f, label %bb.g, !prof !248

bb.f:                                             ; preds = %bb.e
  %i.dt = inttoptr i64 %i.dp to ptr
  store ptr %i.dt, ptr %i.di, align 8, !tbaa !346
  %i.du = inttoptr i64 %i.do to ptr
  br label %_ZN4llvm11IntervalMapIPKcPKN12_GLOBAL__N_114PDLIndexSymbolELj8ENS_23IntervalMapHalfOpenInfoIS2_EEE7newNodeINS_15IntervalMapImpl10BranchNodeIS2_S6_Lj12ES8_EEEEPT_v.exit.i

bb.g:                                             ; preds = %bb.e
  %i.dv = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.di, i64 noundef 192, i64 noundef 192, i8 6)
  br label %_ZN4llvm11IntervalMapIPKcPKN12_GLOBAL__N_114PDLIndexSymbolELj8ENS_23IntervalMapHalfOpenInfoIS2_EEE7newNodeINS_15IntervalMapImpl10BranchNodeIS2_S6_Lj12ES8_EEEEPT_v.exit.i

_ZN4llvm11IntervalMapIPKcPKN12_GLOBAL__N_114PDLIndexSymbolELj8ENS_23IntervalMapHalfOpenInfoIS2_EEE7newNodeINS_15IntervalMapImpl10BranchNodeIS2_S6_Lj12ES8_EEEEPT_v.exit.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.dw = phi ptr [ %i.dj, %bb.d ], [ %i.du, %bb.f ], [ %i.dv, %bb.g ] ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.dw, i8 0, i64 192, i1 false)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 96 ; 4 uses
  %i.dy = zext i32 %.fr.i to i64                  ; 2 uses
  %i.dz = add i32 %.fr.i, -1
  %i.ea = zext i32 %i.dz to i64
  %i.eb = shl nuw nsw i64 %i.ea, 3
end_hunk_0
begin_hunk_1_@_ZN4llvm11IntervalMapIPKcPKN12_GLOBAL__N_114PDLIndexSymbolELj8ENS_23IntervalMapHalfOpenInfoIS2_EEE8iterator10insertNodeEjNS_15IntervalMapImpl7NodeRefES2_:bb.a
  br label %scalar.ph289.prol.loopexit

scalar.ph289.prol.loopexit:                       ; preds = %scalar.ph289.prol, %scalar.ph289.preheader
  %indvars.iv6.i.i90.i.unr = phi i64 [ %indvars.iv6.i.i90.i.ph, %scalar.ph289.preheader ], [ %indvars.iv.next7.i.i92.i.prol, %scalar.ph289.prol ]
  %.015.i.i.i.i.i91.i.unr = phi i32 [ %.015.i.i.i.i.i91.i.ph, %scalar.ph289.preheader ], [ %i.aaj, %scalar.ph289.prol ]
  %i.aak = icmp eq i32 %i.st, %.neg402
  br i1 %i.aak, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEPKcLj12EE17transferToLeftSibEjRS5_jj.exit.i94.i, label %scalar.ph289

scalar.ph289:                                     ; preds = %scalar.ph289.prol.loopexit, %scalar.ph289
  %indvars.iv6.i.i90.i = phi i64 [ %indvars.iv.next7.i.i92.i.1, %scalar.ph289 ], [ %indvars.iv6.i.i90.i.unr, %scalar.ph289.prol.loopexit ] ; 4 uses
  %.015.i.i.i.i.i91.i = phi i32 [ %i.aba, %scalar.ph289 ], [ %.015.i.i.i.i.i91.i.unr, %scalar.ph289.prol.loopexit ] ; 3 uses
  %i.aal = zext i32 %.015.i.i.i.i.i91.i to i64    ; 2 uses
  %i.aam = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %i.aal
  %i.aan = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %indvars.iv6.i.i90.i
  %i.aao = load i64, ptr %i.aam, align 8, !tbaa !52
  store i64 %i.aao, ptr %i.aan, align 8, !tbaa !52
  %i.aap = getelementptr inbounds nuw [8 x i8], ptr %i.zg, i64 %i.aal
  %i.aaq = load ptr, ptr %i.aap, align 8, !tbaa !66
  %i.aar = getelementptr inbounds nuw [8 x i8], ptr %i.zg, i64 %indvars.iv6.i.i90.i
  store ptr %i.aaq, ptr %i.aar, align 8, !tbaa !66
  %i.aas = add i32 %.015.i.i.i.i.i91.i, 1
  %indvars.iv.next7.i.i92.i = add nuw nsw i64 %indvars.iv6.i.i90.i, 1 ; 2 uses
  %i.aat = zext i32 %i.aas to i64                 ; 2 uses
  %i.aau = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %i.aat
  %i.aav = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %indvars.iv.next7.i.i92.i
  %i.aaw = load i64, ptr %i.aau, align 8, !tbaa !52
  store i64 %i.aaw, ptr %i.aav, align 8, !tbaa !52
  %i.aax = getelementptr inbounds nuw [8 x i8], ptr %i.zg, i64 %i.aat
  %i.aay = load ptr, ptr %i.aax, align 8, !tbaa !66
  %i.aaz = getelementptr inbounds nuw [8 x i8], ptr %i.zg, i64 %indvars.iv.next7.i.i92.i
  store ptr %i.aay, ptr %i.aaz, align 8, !tbaa !66
  %i.aba = add i32 %.015.i.i.i.i.i91.i, 2         ; 2 uses
  %indvars.iv.next7.i.i92.i.1 = add nuw nsw i64 %indvars.iv6.i.i90.i, 2
  %.not.i.i.i.i.i93.i.1 = icmp eq i32 %i.aba, %i.st
  br i1 %.not.i.i.i.i.i93.i.1, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEPKcLj12EE17transferToLeftSibEjRS5_jj.exit.i94.i, label %scalar.ph289, !llvm.loop !817

_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEPKcLj12EE17transferToLeftSibEjRS5_jj.exit.i94.i: ; preds = %scalar.ph289.prol.loopexit, %scalar.ph289, %middle.block298, %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEPKcLj12EE4copyILj12EEEvRKNS1_IS2_S4_XT_EEEjjj.exit.i.i87.i
  %i.abb = sub nsw i32 0, %.sroa.speculated.i80.i
  br label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEPKcLj12EE17adjustFromLeftSibEjRS5_ji.exit112.i

_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEPKcLj12EE17adjustFromLeftSibEjRS5_ji.exit112.i: ; preds = %scalar.ph246.prol.loopexit, %scalar.ph246, %middle.block255, %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEPKcLj12EE17transferToLeftSibEjRS5_jj.exit.i94.i, %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEPKcLj12EE9moveRightEjjj.exit.i.i105.i
  %.0.i95.i = phi i32 [ %i.abb, %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEPKcLj12EE17transferToLeftSibEjRS5_jj.exit.i94.i ], [ 0, %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEPKcLj12EE9moveRightEjjj.exit.i.i105.i ], [ %.sroa.speculated46.i98.i, %middle.block255 ], [ %.sroa.speculated46.i98.i, %scalar.ph246 ], [ %.sroa.speculated46.i98.i, %scalar.ph246.prol.loopexit ] ; 2 uses
  %i.abc = load i32, ptr %i.ss, align 4, !tbaa !81
  %i.abd = add i32 %i.abc, %.0.i95.i
  store i32 %i.abd, ptr %i.ss, align 4, !tbaa !81
  %i.abe = load i32, ptr %i.sd, align 4, !tbaa !81
  %i.abf = sub i32 %i.abe, %.0.i95.i              ; 3 uses
  store i32 %i.abf, ptr %i.sd, align 4, !tbaa !81
  %i.abg = load i32, ptr %i.sf, align 4, !tbaa !81 ; 2 uses
  %.not75.i = icmp ult i32 %i.abf, %i.abg
  br i1 %.not75.i, label %bb.v, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEPKcLj12EE17adjustFromLeftSibEjRS5_ji.exit112.i..loopexit.i.loopexit_crit_edge, !llvm.loop !803

_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEPKcLj12EE17adjustFromLeftSibEjRS5_ji.exit112.i..loopexit.i.loopexit_crit_edge: ; preds = %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEPKcLj12EE17adjustFromLeftSibEjRS5_ji.exit112.i
  br label %.loopexit.i, !llvm.loop !803

.loopexit.i:                                      ; preds = %bb.v, %.preheader.i80, %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEPKcLj12EE17adjustFromLeftSibEjRS5_ji.exit112.i..loopexit.i.loopexit_crit_edge, %.lr.ph120.i
  %indvars.iv.next123.i = add nuw nsw i64 %indvars.iv122.i, 1 ; 2 uses
  %.not73.i = icmp eq i64 %indvars.iv.next123.i, %i.ix
  br i1 %.not73.i, label %_ZN4llvm15IntervalMapImpl18adjustSiblingSizesINS0_10BranchNodeIPKcPKN12_GLOBAL__N_114PDLIndexSymbolELj12ENS_23IntervalMapHalfOpenInfoIS4_EEEEEEvPPT_jPjPKj.exit, label %.lr.ph120.i, !llvm.loop !818

_ZN4llvm15IntervalMapImpl18adjustSiblingSizesINS0_10BranchNodeIPKcPKN12_GLOBAL__N_114PDLIndexSymbolELj12ENS_23IntervalMapHalfOpenInfoIS4_EEEEEEvPPT_jPjPKj.exit: ; preds = %.loopexit.i, %bb.s
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm15IntervalMapImpl18adjustSiblingSizesINS0_10BranchNodeIPKcPKN12_GLOBAL__N_114PDLIndexSymbolELj12ENS_23IntervalMapHalfOpenInfoIS4_EEEEEEvPPT_jPjPKj.exit
  call void @_ZN4llvm15IntervalMapImpl4Path8moveLeftEj(ptr noundef nonnull align 8 dereferenceable(80) %i.e, i32 noundef range(i32 1, 0) %i.fr) #22, !inline_history !786
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN4llvm15IntervalMapImpl18adjustSiblingSizesINS0_10BranchNodeIPKcPKN12_GLOBAL__N_114PDLIndexSymbolELj12ENS_23IntervalMapHalfOpenInfoIS4_EEEEEEvPPT_jPjPKj.exit
  %.not.i = icmp ne i32 %.068.i, 0
  br label %bb.y

bb.y:                                             ; preds = %bb.ab, %bb.x
  %.075.i = phi i32 [ %i.fr, %bb.x ], [ %.176.i, %bb.ab ] ; 7 uses
  %.066.i = phi i8 [ 0, %bb.x ], [ %.167.i, %bb.ab ] ; 3 uses
  %.065.i = phi i32 [ 0, %bb.x ], [ %i.adg, %bb.ab ] ; 5 uses
  %i.abh = zext i32 %.065.i to i64                ; 2 uses
  %i.abi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.abh
  %i.abj = load ptr, ptr %i.abi, align 8, !tbaa !825 ; 2 uses
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.abh
  %i.abl = load i32, ptr %i.abk, align 4, !tbaa !81 ; 2 uses
  %i.abm = add i32 %i.abl, -1
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abj, i64 96
  %i.abo = zext i32 %i.abm to i64                 ; 3 uses
  %i.abp = getelementptr inbounds nuw [8 x i8], ptr %i.abn, i64 %i.abo
  %i.abq = load ptr, ptr %i.abp, align 8, !tbaa !66 ; 3 uses
  %i.abr = icmp eq i32 %.065.i, %.068.i
  %or.cond.i = and i1 %.not.i, %i.abr
  br i1 %or.cond.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.abs = ptrtoint ptr %i.abj to i64
  %i.abt = and i64 %i.abs, -64
  %i.abu = or i64 %i.abt, %i.abo
  %i.abv = call fastcc noundef zeroext i1 @_ZN4llvm11IntervalMapIPKcPKN12_GLOBAL__N_114PDLIndexSymbolELj8ENS_23IntervalMapHalfOpenInfoIS2_EEE8iterator10insertNodeEjNS_15IntervalMapImpl7NodeRefES2_(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %.075.i, i64 %i.abu, ptr noundef %i.abq), !inline_history !786 ; 2 uses
  %i.abw = zext i1 %i.abv to i8
  %i.abx = zext i1 %i.abv to i32
  %i.aby = add i32 %.075.i, %i.abx
  br label %_ZN4llvm11IntervalMapIPKcPKN12_GLOBAL__N_114PDLIndexSymbolELj8ENS_23IntervalMapHalfOpenInfoIS2_EEE8iterator11setNodeStopEjS2_.exit72

bb.aa:                                            ; preds = %bb.y
  %i.abz = zext i32 %.075.i to i64                ; 2 uses
  %i.aca = load ptr, ptr %i.e, align 8, !tbaa !153 ; 2 uses
  %i.acb = getelementptr inbounds nuw [16 x i8], ptr %i.aca, i64 %i.abz
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 8
  store i32 %i.abl, ptr %i.acc, align 8, !tbaa !158
  %.not.i73 = icmp eq i32 %.075.i, 0
  br i1 %.not.i73, label %_ZN4llvm11IntervalMapIPKcPKN12_GLOBAL__N_114PDLIndexSymbolELj8ENS_23IntervalMapHalfOpenInfoIS2_EEE8iterator11setNodeStopEjS2_.exit72, label %.preheader.preheader.i67

.preheader.preheader.i67:                         ; preds = %bb.aa
  %i.acd = add i32 %.075.i, -1
  %i.ace = zext i32 %i.acd to i64
  %i.acf = getelementptr inbounds nuw [16 x i8], ptr %i.aca, i64 %i.ace ; 2 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 12
  %i.ach = load i32, ptr %i.acg, align 4, !tbaa !157
  %i.aci = load ptr, ptr %i.acf, align 8, !tbaa !159
  %i.acj = zext i32 %i.ach to i64
  %i.ack = getelementptr inbounds nuw [8 x i8], ptr %i.aci, i64 %i.acj ; 2 uses
  %.0.copyload.i.i.i.i.i74 = load i64, ptr %i.ack, align 8
  %i.acl = and i64 %.0.copyload.i.i.i.i.i74, -64
  %i.acm = or i64 %i.acl, %i.abo
  store i64 %i.acm, ptr %i.ack, align 8
  %.val81.i = load ptr, ptr %i.e, align 8         ; 3 uses
  %i.acn = add nsw i64 %i.abz, -1                 ; 2 uses
  %.not16.wide.i70146 = icmp eq i64 %i.acn, 0
  br i1 %.not16.wide.i70146, label %.preheader.i68._crit_edge, label %.lr.ph147

.preheader.i68:                                   ; preds = %.lr.ph147
  %i.aco = add nsw i64 %i.acp, -1                 ; 2 uses
  %.not16.wide.i70 = icmp eq i64 %i.aco, 0
  br i1 %.not16.wide.i70, label %.preheader.i68._crit_edge, label %.lr.ph147, !llvm.loop !11

.lr.ph147:                                        ; preds = %.preheader.preheader.i67, %.preheader.i68
  %i.acp = phi i64 [ %i.aco, %.preheader.i68 ], [ %i.acn, %.preheader.preheader.i67 ] ; 2 uses
  %i.acq = getelementptr inbounds nuw [16 x i8], ptr %.val81.i, i64 %i.acp ; 3 uses
  %i.acr = load ptr, ptr %i.acq, align 8, !tbaa !159
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acq, i64 12
  %i.act = load i32, ptr %i.acs, align 4, !tbaa !81 ; 2 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %i.acr, i64 96
  %i.acv = zext i32 %i.act to i64
  %i.acw = getelementptr inbounds nuw [8 x i8], ptr %i.acu, i64 %i.acv
  store ptr %i.abq, ptr %i.acw, align 8, !tbaa !66
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acq, i64 8
  %i.acy = load i32, ptr %i.acx, align 8, !tbaa !158
  %i.acz = add i32 %i.acy, -1
  %i.ada = icmp eq i32 %i.act, %i.acz
  br i1 %i.ada, label %.preheader.i68, label %_ZN4llvm11IntervalMapIPKcPKN12_GLOBAL__N_114PDLIndexSymbolELj8ENS_23IntervalMapHalfOpenInfoIS2_EEE8iterator11setNodeStopEjS2_.exit72, !llvm.loop !11

.preheader.i68._crit_edge:                        ; preds = %.preheader.i68, %.preheader.preheader.i67
  %.val17.val.i71 = load ptr, ptr %.val81.i, align 8, !tbaa !159
  %i.adb = getelementptr inbounds nuw i8, ptr %.val81.i, i64 12
  %i.adc = load i32, ptr %i.adb, align 4, !tbaa !81
  %i.add = getelementptr inbounds nuw i8, ptr %.val17.val.i71, i64 88
  %i.ade = zext i32 %i.adc to i64
  %i.adf = getelementptr inbounds nuw [8 x i8], ptr %i.add, i64 %i.ade
  store ptr %i.abq, ptr %i.adf, align 8, !tbaa !66
  br label %_ZN4llvm11IntervalMapIPKcPKN12_GLOBAL__N_114PDLIndexSymbolELj8ENS_23IntervalMapHalfOpenInfoIS2_EEE8iterator11setNodeStopEjS2_.exit72

_ZN4llvm11IntervalMapIPKcPKN12_GLOBAL__N_114PDLIndexSymbolELj8ENS_23IntervalMapHalfOpenInfoIS2_EEE8iterator11setNodeStopEjS2_.exit72: ; preds = %.lr.ph147, %bb.aa, %.preheader.i68._crit_edge, %bb.z
  %.176.i = phi i32 [ %i.aby, %bb.z ], [ %.075.i, %.preheader.i68._crit_edge ], [ 0, %bb.aa ], [ %.075.i, %.lr.ph147 ] ; 4 uses
  %.167.i = phi i8 [ %i.abw, %bb.z ], [ %.066.i, %.preheader.i68._crit_edge ], [ %.066.i, %bb.aa ], [ %.066.i, %.lr.ph147 ] ; 3 uses
  %i.adg = add nuw i32 %.065.i, 1                 ; 2 uses
  %.not95 = icmp eq i32 %i.adg, %.274.i
  br i1 %.not95, label %.preheader, label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvm11IntervalMapIPKcPKN12_GLOBAL__N_114PDLIndexSymbolELj8ENS_23IntervalMapHalfOpenInfoIS2_EEE8iterator11setNodeStopEjS2_.exit72
  call void @_ZN4llvm15IntervalMapImpl4Path9moveRightEj(ptr noundef nonnull align 8 dereferenceable(80) %i.e, i32 noundef %.176.i) #22, !inline_history !786
  br label %bb.y

.preheader:                                       ; preds = %_ZN4llvm11IntervalMapIPKcPKN12_GLOBAL__N_114PDLIndexSymbolELj8ENS_23IntervalMapHalfOpenInfoIS2_EEE8iterator11setNodeStopEjS2_.exit72
  %.not78.i96 = icmp eq i32 %.065.i, %.sroa.0.0.extract.trunc.i
  br i1 %.not78.i96, label %_ZN4llvm11IntervalMapIPKcPKN12_GLOBAL__N_114PDLIndexSymbolELj8ENS_23IntervalMapHalfOpenInfoIS2_EEE8iterator8overflowINS_15IntervalMapImpl10BranchNodeIS2_S6_Lj12ES8_EEEEbj.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.2.i97 = phi i32 [ %i.adh, %.lr.ph ], [ %.065.i, %.preheader ]
  call void @_ZN4llvm15IntervalMapImpl4Path8moveLeftEj(ptr noundef nonnull align 8 dereferenceable(80) %i.e, i32 noundef %.176.i) #22, !inline_history !786
  %i.adh = add i32 %.2.i97, -1                    ; 2 uses
  %.not78.i = icmp eq i32 %i.adh, %.sroa.0.0.extract.trunc.i
  br i1 %.not78.i, label %_ZN4llvm11IntervalMapIPKcPKN12_GLOBAL__N_114PDLIndexSymbolELj8ENS_23IntervalMapHalfOpenInfoIS2_EEE8iterator8overflowINS_15IntervalMapImpl10BranchNodeIS2_S6_Lj12ES8_EEEEbj.exit, label %.lr.ph, !llvm.loop !819

_ZN4llvm11IntervalMapIPKcPKN12_GLOBAL__N_114PDLIndexSymbolELj8ENS_23IntervalMapHalfOpenInfoIS2_EEE8iterator8overflowINS_15IntervalMapImpl10BranchNodeIS2_S6_Lj12ES8_EEEEbj.exit: ; preds = %.lr.ph, %.preheader
  %.sroa.4.0.extract.shift.i = lshr i64 %i.iv, 32
  %.sroa.4.0.extract.trunc.i = trunc nuw i64 %.sroa.4.0.extract.shift.i to i32
  %i.adi = zext i32 %.176.i to i64
  %i.adj = load ptr, ptr %i.e, align 8, !tbaa !153 ; 3 uses
  %i.adk = getelementptr inbounds nuw [16 x i8], ptr %i.adj, i64 %i.adi
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 12
  store i32 %.sroa.4.0.extract.trunc.i, ptr %i.adl, align 4, !tbaa !81
  %i.adm = trunc nuw i8 %.167.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.adn = zext nneg i8 %.167.i to i32
  %i.ado = add i32 %i.fr, %i.adn                  ; 2 uses
  %.pre = zext i32 %i.ado to i64                  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [16 x i8], ptr %i.adj, i64 %.pre
  %.phi.trans.insert99 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 8
  %.pre100 = load i32, ptr %.phi.trans.insert99, align 8, !tbaa !158
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN4llvm11IntervalMapIPKcPKN12_GLOBAL__N_114PDLIndexSymbolELj8ENS_23IntervalMapHalfOpenInfoIS2_EEE8iterator8overflowINS_15IntervalMapImpl10BranchNodeIS2_S6_Lj12ES8_EEEEbj.exit, %_ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit
  %i.adp = phi i32 [ %.pre100, %_ZN4llvm11IntervalMapIPKcPKN12_GLOBAL__N_114PDLIndexSymbolELj8ENS_23IntervalMapHalfOpenInfoIS2_EEE8iterator8overflowINS_15IntervalMapImpl10BranchNodeIS2_S6_Lj12ES8_EEEEbj.exit ], [ %i.gj, %_ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit ] ; 7 uses
  %.pre-phi = phi i64 [ %.pre, %_ZN4llvm11IntervalMapIPKcPKN12_GLOBAL__N_114PDLIndexSymbolELj8ENS_23IntervalMapHalfOpenInfoIS2_EEE8iterator8overflowINS_15IntervalMapImpl10BranchNodeIS2_S6_Lj12ES8_EEEEbj.exit ], [ %.pre-phi102, %_ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit ] ; 4 uses
  %.val = phi ptr [ %i.adj, %_ZN4llvm11IntervalMapIPKcPKN12_GLOBAL__N_114PDLIndexSymbolELj8ENS_23IntervalMapHalfOpenInfoIS2_EEE8iterator8overflowINS_15IntervalMapImpl10BranchNodeIS2_S6_Lj12ES8_EEEEbj.exit ], [ %i.gg, %_ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit ]
  %.150 = phi i1 [ %i.adm, %_ZN4llvm11IntervalMapIPKcPKN12_GLOBAL__N_114PDLIndexSymbolELj8ENS_23IntervalMapHalfOpenInfoIS2_EEE8iterator8overflowINS_15IntervalMapImpl10BranchNodeIS2_S6_Lj12ES8_EEEEbj.exit ], [ %i.f, %_ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit ]
  %.1 = phi i32 [ %i.ado, %_ZN4llvm11IntervalMapIPKcPKN12_GLOBAL__N_114PDLIndexSymbolELj8ENS_23IntervalMapHalfOpenInfoIS2_EEE8iterator8overflowINS_15IntervalMapImpl10BranchNodeIS2_S6_Lj12ES8_EEEEbj.exit ], [ %i.fr, %_ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit ] ; 3 uses
  %i.adq = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.pre-phi ; 2 uses
  %i.adr = load ptr, ptr %i.adq, align 8, !tbaa !159 ; 11 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adq, i64 12
  %i.adt = load i32, ptr %i.ads, align 4, !tbaa !81 ; 14 uses
  %.not9.i.i.i55 = icmp eq i32 %i.adp, %i.adt
  br i1 %.not9.i.i.i55, label %_ZN4llvm15IntervalMapImpl10BranchNodeIPKcPKN12_GLOBAL__N_114PDLIndexSymbolELj12ENS_23IntervalMapHalfOpenInfoIS3_EEE6insertEjjNS0_7NodeRefES3_.exit, label %.lr.ph.i.i.i56

.lr.ph.i.i.i56:                                   ; preds = %bb.ac
  %i.adu = sub i32 %i.adp, %i.adt
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adr, i64 96 ; 8 uses
  %i.adw = zext i32 %i.adu to i64                 ; 5 uses
  %6 = add i32 %i.adp, -1                         ; 2 uses
  %7 = sub i32 %6, %i.adt                         ; 2 uses
  %i.adx = zext i32 %7 to i64
  %i.ady = add nuw nsw i64 %i.adx, 1              ; 2 uses
  %min.iters.check333 = icmp ult i32 %7, 27
  br i1 %min.iters.check333, label %scalar.ph332.preheader, label %vector.scevcheck325

vector.scevcheck325:                              ; preds = %.lr.ph.i.i.i56
  %i.adz = add i32 %i.adp, -1                     ; 2 uses
  %.neg = sub i32 %i.adt, %i.adz
  %i.aea = add i32 %.neg, %i.adp
  %i.aeb = icmp ugt i32 %i.aea, %i.adp
  %i.aec = icmp ugt i32 %i.adt, %i.adz
  %i.aed = or i1 %i.aeb, %i.aec
  br i1 %i.aed, label %scalar.ph332.preheader, label %vector.memcheck326

vector.memcheck326:                               ; preds = %vector.scevcheck325
  %i.aee = zext i32 %6 to i64
  %i.aef = shl nuw nsw i64 %i.aee, 3              ; 3 uses
  %i.aeg = zext i32 %i.adp to i64
  %i.aeh = shl nuw nsw i64 %i.aeg, 3              ; 3 uses
  %i.aei = sub nsw i64 %i.aeh, %i.aef
  %diff.check327 = icmp ugt i64 %i.aei, -32
  %i.aej = sub nsw i64 %i.aeh, %i.aef
  %i.aek = add nsw i64 %i.aej, -97
  %diff.check328 = icmp ult i64 %i.aek, 31
  %conflict.rdx329 = or i1 %diff.check327, %diff.check328
  %i.ael = sub nsw i64 %i.aef, %i.aeh
  %i.aem = add nsw i64 %i.ael, -97
  %diff.check330 = icmp ult i64 %i.aem, 31
  %conflict.rdx331 = or i1 %conflict.rdx329, %diff.check330
  br i1 %conflict.rdx331, label %scalar.ph332.preheader, label %vector.ph334

vector.ph334:                                     ; preds = %vector.memcheck326
  %n.vec335 = and i64 %i.ady, 8589934588          ; 3 uses
  %i.aen = sub nsw i64 %i.adw, %n.vec335
  %invariant.op = add i32 -1, %i.adt
  br label %vector.body336

vector.body336:                                   ; preds = %vector.body336, %vector.ph334
  %index337 = phi i64 [ 0, %vector.ph334 ], [ %index.next342, %vector.body336 ] ; 2 uses
  %i.aeo = sub i64 %i.adw, %index337              ; 2 uses
  %i.aep = trunc i64 %i.aeo to i32
  %.reass = add i32 %i.aep, %invariant.op
  %i.aeq = zext i32 %.reass to i64                ; 2 uses
  %i.aer = getelementptr inbounds nuw [8 x i8], ptr %i.adr, i64 %i.aeq ; 2 uses
  %i.aes = trunc nuw i64 %i.aeo to i32
  %i.aet = add i32 %i.adt, %i.aes
  %i.aeu = zext i32 %i.aet to i64                 ; 2 uses
  %i.aev = getelementptr inbounds nuw [8 x i8], ptr %i.adr, i64 %i.aeu ; 2 uses
  %i.aew = getelementptr inbounds i8, ptr %i.aer, i64 -8
  %i.aex = getelementptr inbounds i8, ptr %i.aer, i64 -24
  %wide.load338 = load <2 x i64>, ptr %i.aew, align 8, !tbaa !52
  %wide.load339 = load <2 x i64>, ptr %i.aex, align 8, !tbaa !52
  %i.aey = getelementptr inbounds i8, ptr %i.aev, i64 -8
  %i.aez = getelementptr inbounds i8, ptr %i.aev, i64 -24
  store <2 x i64> %wide.load338, ptr %i.aey, align 8, !tbaa !52
  store <2 x i64> %wide.load339, ptr %i.aez, align 8, !tbaa !52
  %i.afa = getelementptr inbounds nuw [8 x i8], ptr %i.adv, i64 %i.aeq ; 2 uses
  %i.afb = getelementptr inbounds i8, ptr %i.afa, i64 -8
  %i.afc = getelementptr inbounds i8, ptr %i.afa, i64 -24
  %wide.load340 = load <2 x ptr>, ptr %i.afb, align 8, !tbaa !66
  %wide.load341 = load <2 x ptr>, ptr %i.afc, align 8, !tbaa !66
  %i.afd = getelementptr inbounds nuw [8 x i8], ptr %i.adv, i64 %i.aeu ; 2 uses
  %i.afe = getelementptr inbounds i8, ptr %i.afd, i64 -8
  %i.aff = getelementptr inbounds i8, ptr %i.afd, i64 -24
  store <2 x ptr> %wide.load340, ptr %i.afe, align 8, !tbaa !66
  store <2 x ptr> %wide.load341, ptr %i.aff, align 8, !tbaa !66
  %index.next342 = add nuw i64 %index337, 4       ; 2 uses
  %i.afg = icmp eq i64 %index.next342, %n.vec335
  br i1 %i.afg, label %middle.block343, label %vector.body336, !llvm.loop !820

middle.block343:                                  ; preds = %vector.body336
  %cmp.n344 = icmp eq i64 %i.ady, %n.vec335
  br i1 %cmp.n344, label %_ZN4llvm15IntervalMapImpl10BranchNodeIPKcPKN12_GLOBAL__N_114PDLIndexSymbolELj12ENS_23IntervalMapHalfOpenInfoIS3_EEE6insertEjjNS0_7NodeRefES3_.exit, label %scalar.ph332.preheader

scalar.ph332.preheader:                           ; preds = %vector.memcheck326, %vector.scevcheck325, %.lr.ph.i.i.i56, %middle.block343
  %indvars.iv.i.i57.ph = phi i64 [ %i.adw, %vector.memcheck326 ], [ %i.adw, %vector.scevcheck325 ], [ %i.adw, %.lr.ph.i.i.i56 ], [ %i.aen, %middle.block343 ] ; 4 uses
  %i.afh = trunc i64 %indvars.iv.i.i57.ph to i32  ; 2 uses
  %xtraiter395 = and i32 %i.afh, 1
  %lcmp.mod396.not = icmp eq i32 %xtraiter395, 0
  br i1 %lcmp.mod396.not, label %scalar.ph332.prol.loopexit, label %scalar.ph332.prol

scalar.ph332.prol:                                ; preds = %scalar.ph332.preheader
  %indvars.iv.next.i.i58.prol = add nsw i64 %indvars.iv.i.i57.ph, -1 ; 2 uses
  %indvars.i.i59.prol = trunc i64 %indvars.iv.next.i.i58.prol to i32
  %i.afi = add i32 %i.adt, %indvars.i.i59.prol
  %i.afj = zext i32 %i.afi to i64                 ; 2 uses
  %i.afk = getelementptr inbounds nuw [8 x i8], ptr %i.adr, i64 %i.afj
  %i.afl = trunc nuw i64 %indvars.iv.i.i57.ph to i32
  %i.afm = add i32 %i.adt, %i.afl
  %i.afn = zext i32 %i.afm to i64                 ; 2 uses
  %i.afo = getelementptr inbounds nuw [8 x i8], ptr %i.adr, i64 %i.afn
  %i.afp = load i64, ptr %i.afk, align 8, !tbaa !52
  store i64 %i.afp, ptr %i.afo, align 8, !tbaa !52
  %i.afq = getelementptr inbounds nuw [8 x i8], ptr %i.adv, i64 %i.afj
  %i.afr = load ptr, ptr %i.afq, align 8, !tbaa !66
  %i.afs = getelementptr inbounds nuw [8 x i8], ptr %i.adv, i64 %i.afn
  store ptr %i.afr, ptr %i.afs, align 8, !tbaa !66
  br label %scalar.ph332.prol.loopexit

scalar.ph332.prol.loopexit:                       ; preds = %scalar.ph332.prol, %scalar.ph332.preheader
  %indvars.iv.i.i57.unr = phi i64 [ %indvars.iv.i.i57.ph, %scalar.ph332.preheader ], [ %indvars.iv.next.i.i58.prol, %scalar.ph332.prol ]
  %i.aft = icmp eq i32 %i.afh, 1
  br i1 %i.aft, label %_ZN4llvm15IntervalMapImpl10BranchNodeIPKcPKN12_GLOBAL__N_114PDLIndexSymbolELj12ENS_23IntervalMapHalfOpenInfoIS3_EEE6insertEjjNS0_7NodeRefES3_.exit, label %scalar.ph332

scalar.ph332:                                     ; preds = %scalar.ph332.prol.loopexit, %scalar.ph332
  %indvars.iv.i.i57 = phi i64 [ %indvars.iv.next.i.i58.1, %scalar.ph332 ], [ %indvars.iv.i.i57.unr, %scalar.ph332.prol.loopexit ] ; 3 uses
  %indvars.iv.next.i.i58 = add nsw i64 %indvars.iv.i.i57, -1 ; 2 uses
  %indvars.i.i59 = trunc i64 %indvars.iv.next.i.i58 to i32
  %i.afu = add i32 %i.adt, %indvars.i.i59
  %i.afv = zext i32 %i.afu to i64                 ; 2 uses
  %i.afw = getelementptr inbounds nuw [8 x i8], ptr %i.adr, i64 %i.afv
  %i.afx = trunc nuw i64 %indvars.iv.i.i57 to i32
  %i.afy = add i32 %i.adt, %i.afx
  %i.afz = zext i32 %i.afy to i64                 ; 2 uses
  %i.aga = getelementptr inbounds nuw [8 x i8], ptr %i.adr, i64 %i.afz
  %i.agb = load i64, ptr %i.afw, align 8, !tbaa !52
  store i64 %i.agb, ptr %i.aga, align 8, !tbaa !52
  %i.agc = getelementptr inbounds nuw [8 x i8], ptr %i.adv, i64 %i.afv
  %i.agd = load ptr, ptr %i.agc, align 8, !tbaa !66
  %i.age = getelementptr inbounds nuw [8 x i8], ptr %i.adv, i64 %i.afz
  store ptr %i.agd, ptr %i.age, align 8, !tbaa !66
  %indvars.iv.next.i.i58.1 = add nsw i64 %indvars.iv.i.i57, -2 ; 2 uses
  %indvars.i.i59.1 = trunc i64 %indvars.iv.next.i.i58.1 to i32 ; 2 uses
  %i.agf = add i32 %i.adt, %indvars.i.i59.1
  %i.agg = zext i32 %i.agf to i64                 ; 2 uses
  %i.agh = getelementptr inbounds nuw [8 x i8], ptr %i.adr, i64 %i.agg
  %i.agi = trunc nuw i64 %indvars.iv.next.i.i58 to i32
  %i.agj = add i32 %i.adt, %i.agi
  %i.agk = zext i32 %i.agj to i64                 ; 2 uses
  %i.agl = getelementptr inbounds nuw [8 x i8], ptr %i.adr, i64 %i.agk
  %i.agm = load i64, ptr %i.agh, align 8, !tbaa !52
  store i64 %i.agm, ptr %i.agl, align 8, !tbaa !52
  %i.agn = getelementptr inbounds nuw [8 x i8], ptr %i.adv, i64 %i.agg
  %i.ago = load ptr, ptr %i.agn, align 8, !tbaa !66
  %i.agp = getelementptr inbounds nuw [8 x i8], ptr %i.adv, i64 %i.agk
  store ptr %i.ago, ptr %i.agp, align 8, !tbaa !66
  %.not.i.i.i60.1 = icmp eq i32 %indvars.i.i59.1, 0
  br i1 %.not.i.i.i60.1, label %_ZN4llvm15IntervalMapImpl10BranchNodeIPKcPKN12_GLOBAL__N_114PDLIndexSymbolELj12ENS_23IntervalMapHalfOpenInfoIS3_EEE6insertEjjNS0_7NodeRefES3_.exit, label %scalar.ph332, !llvm.loop !821

_ZN4llvm15IntervalMapImpl10BranchNodeIPKcPKN12_GLOBAL__N_114PDLIndexSymbolELj12ENS_23IntervalMapHalfOpenInfoIS3_EEE6insertEjjNS0_7NodeRefES3_.exit: ; preds = %scalar.ph332.prol.loopexit, %scalar.ph332, %middle.block343, %bb.ac
  %i.agq = zext i32 %i.adt to i64                 ; 2 uses
  %i.agr = getelementptr inbounds nuw [8 x i8], ptr %i.adr, i64 %i.agq
  store i64 %2, ptr %i.agr, align 8, !tbaa !52
  %i.ags = getelementptr inbounds nuw i8, ptr %i.adr, i64 96
  %i.agt = getelementptr inbounds nuw [8 x i8], ptr %i.ags, i64 %i.agq
  store ptr %3, ptr %i.agt, align 8, !tbaa !66
  %i.agu = load ptr, ptr %i.e, align 8, !tbaa !153 ; 3 uses
  %i.agv = getelementptr inbounds nuw [16 x i8], ptr %i.agu, i64 %.pre-phi ; 3 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agv, i64 8 ; 2 uses
  %i.agx = load i32, ptr %i.agw, align 8, !tbaa !158 ; 2 uses
  %i.agy = add i32 %i.agx, 1
  store i32 %i.agy, ptr %i.agw, align 8, !tbaa !158
  %.not.i61 = icmp eq i32 %.1, 0
  br i1 %.not.i61, label %_ZN4llvm15IntervalMapImpl4Path7setSizeEjj.exit, label %_ZN4llvm15IntervalMapImpl4Path7setSizeEjj.exit.thread

_ZN4llvm15IntervalMapImpl4Path7setSizeEjj.exit:   ; preds = %_ZN4llvm15IntervalMapImpl10BranchNodeIPKcPKN12_GLOBAL__N_114PDLIndexSymbolELj12ENS_23IntervalMapHalfOpenInfoIS3_EEE6insertEjjNS0_7NodeRefES3_.exit
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agv, i64 12
  %i.aha = load i32, ptr %i.agz, align 4, !tbaa !157
  br label %_ZN4llvm11IntervalMapIPKcPKN12_GLOBAL__N_114PDLIndexSymbolELj8ENS_23IntervalMapHalfOpenInfoIS2_EEE8iterator11setNodeStopEjS2_.exit

_ZN4llvm15IntervalMapImpl4Path7setSizeEjj.exit.thread: ; preds = %_ZN4llvm15IntervalMapImpl10BranchNodeIPKcPKN12_GLOBAL__N_114PDLIndexSymbolELj12ENS_23IntervalMapHalfOpenInfoIS3_EEE6insertEjjNS0_7NodeRefES3_.exit
  %i.ahb = add i32 %.1, -1
  %i.ahc = zext i32 %i.ahb to i64
  %i.ahd = getelementptr inbounds nuw [16 x i8], ptr %i.agu, i64 %i.ahc ; 2 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 12
  %i.ahf = load i32, ptr %i.ahe, align 4, !tbaa !157
  %i.ahg = load ptr, ptr %i.ahd, align 8, !tbaa !159
  %i.ahh = zext i32 %i.ahf to i64
  %i.ahi = getelementptr inbounds nuw [8 x i8], ptr %i.ahg, i64 %i.ahh ; 2 uses
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.ahi, align 8
  %i.ahj = zext i32 %i.agx to i64
  %i.ahk = and i64 %.0.copyload.i.i.i.i.i, -64
  %i.ahl = or i64 %i.ahk, %i.ahj
  store i64 %i.ahl, ptr %i.ahi, align 8
  %i.ahm = load ptr, ptr %i.e, align 8, !tbaa !153 ; 7 uses
  %i.ahn = getelementptr inbounds nuw [16 x i8], ptr %i.ahm, i64 %.pre-phi ; 5 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahn, i64 12
  %i.ahp = load i32, ptr %i.aho, align 4, !tbaa !157 ; 4 uses
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahn, i64 8
  %i.ahr = load i32, ptr %i.ahq, align 8, !tbaa !158
  %i.ahs = add i32 %i.ahr, -1
  %i.aht = icmp eq i32 %i.ahp, %i.ahs
  br i1 %i.aht, label %.preheader.i.preheader, label %_ZN4llvm11IntervalMapIPKcPKN12_GLOBAL__N_114PDLIndexSymbolELj8ENS_23IntervalMapHalfOpenInfoIS2_EEE8iterator11setNodeStopEjS2_.exit

.preheader.i.preheader:                           ; preds = %_ZN4llvm15IntervalMapImpl4Path7setSizeEjj.exit.thread
  %i.ahu = add nsw i64 %.pre-phi, -1              ; 2 uses
  %.not16.wide.i148 = icmp eq i64 %i.ahu, 0
  br i1 %.not16.wide.i148, label %.preheader.i._crit_edge, label %.lr.ph149

.preheader.i:                                     ; preds = %.lr.ph149
  %i.ahv = add nsw i64 %i.ahw, -1                 ; 2 uses
  %.not16.wide.i = icmp eq i64 %i.ahv, 0
  br i1 %.not16.wide.i, label %.preheader.i._crit_edge, label %.lr.ph149, !llvm.loop !11

.lr.ph149:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %i.ahw = phi i64 [ %i.ahv, %.preheader.i ], [ %i.ahu, %.preheader.i.preheader ] ; 2 uses
  %i.ahx = getelementptr inbounds nuw [16 x i8], ptr %i.ahm, i64 %i.ahw ; 3 uses
  %i.ahy = load ptr, ptr %i.ahx, align 8, !tbaa !159
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahx, i64 12
  %i.aia = load i32, ptr %i.ahz, align 4, !tbaa !81 ; 2 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %i.ahy, i64 96
  %i.aic = zext i32 %i.aia to i64
  %i.aid = getelementptr inbounds nuw [8 x i8], ptr %i.aib, i64 %i.aic
  store ptr %3, ptr %i.aid, align 8, !tbaa !66
  %i.aie = getelementptr inbounds nuw i8, ptr %i.ahx, i64 8
  %i.aif = load i32, ptr %i.aie, align 8, !tbaa !158
  %i.aig = add i32 %i.aif, -1
  %i.aih = icmp eq i32 %i.aia, %i.aig
  br i1 %i.aih, label %.preheader.i, label %_ZN4llvm11IntervalMapIPKcPKN12_GLOBAL__N_114PDLIndexSymbolELj8ENS_23IntervalMapHalfOpenInfoIS2_EEE8iterator11setNodeStopEjS2_.exit, !llvm.loop !11

.preheader.i._crit_edge:                          ; preds = %.preheader.i, %.preheader.i.preheader
  %.val17.val.i = load ptr, ptr %i.ahm, align 8, !tbaa !159
  %i.aii = getelementptr inbounds nuw i8, ptr %i.ahm, i64 12
  %i.aij = load i32, ptr %i.aii, align 4, !tbaa !81
  %i.aik = getelementptr inbounds nuw i8, ptr %.val17.val.i, i64 88
  %i.ail = zext i32 %i.aij to i64
end_hunk_1
