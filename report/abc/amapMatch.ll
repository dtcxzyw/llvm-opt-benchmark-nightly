Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/amapMatch?download=true
inline.NumInlined: 95
inline.NumDeleted: 26
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@Amap_ManMatchNode:bb.a
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !33
  %i.dn = ashr i32 %i.dm, 1
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [8 x i8], ptr %.val.val.i125, i64 %i.do
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !32 ; 3 uses
  %i.dr = fptosi float %i.dg to i32
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 88
  %i.dt = load float, ptr %i.ds, align 8, !tbaa !68
  %i.du = fptosi float %i.dt to i32
  %i.dv = tail call noundef i32 @llvm.smax.i32(i32 %i.dr, i32 %i.du)
  %i.dw = sitofp i32 %i.dv to float               ; 2 uses
  %i.dx = getelementptr i8, ptr %i.dq, i64 52
  %.val24.i = load i32, ptr %i.dx, align 4, !tbaa !33
  %i.dy = getelementptr i8, ptr %i.dq, i64 56
  %.val25.i = load i32, ptr %i.dy, align 8, !tbaa !33
  %i.dz = add nsw i32 %.val25.i, %.val24.i
  %i.ea = sitofp i32 %i.dz to float
  %i.eb = fadd float %i.df, %i.ea                 ; 2 uses
  %indvars.iv.next.i127 = add nuw nsw i64 %indvars.iv.i126, 1 ; 2 uses
  %exitcond151.not = icmp eq i64 %indvars.iv.next.i127, %i.de
  br i1 %exitcond151.not, label %.critedge.loopexit.i128, label %bb.m, !llvm.loop !58

.critedge.loopexit.i128:                          ; preds = %bb.m
  %i.ec = fadd float %i.dw, 1.000000e+00
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i128, %bb.l
  %i.ed = phi float [ %i.ec, %.critedge.loopexit.i128 ], [ 1.000000e+00, %bb.l ] ; 2 uses
  %i.ee = phi float [ %i.eb, %.critedge.loopexit.i128 ], [ 0.000000e+00, %bb.l ]
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  %i.eg = load i32, ptr %i.ef, align 8
  %i.eh = lshr i32 %i.eg, 24
  %i.ei = uitofp nneg i32 %i.eh to float
  %i.ej = fdiv float %i.ee, %i.ei                 ; 2 uses
  store float %i.ej, ptr %i.ab, align 4, !tbaa !69
  store float %i.ed, ptr %i.ac, align 8, !tbaa !68
  %i.ek = load ptr, ptr %i.ae, align 8, !tbaa !70 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  store i32 0, ptr %i.el, align 4, !tbaa !30
  %i.em = call fastcc float @Amap_CutAreaRef2(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %6, ptr noundef %i.ek, i32 noundef 8) ; 3 uses
  %i.en = load ptr, ptr %i.ae, align 8, !tbaa !70 ; 2 uses
  %i.eo = getelementptr i8, ptr %i.en, i64 4      ; 2 uses
  %.val21.i.i = load i32, ptr %i.eo, align 4, !tbaa !30
  %i.ep = icmp sgt i32 %.val21.i.i, 0
  br i1 %i.ep, label %.lr.ph.i.i, label %.critedge.i.i

.lr.ph.i.i:                                       ; preds = %.critedge.i
  %i.eq = getelementptr i8, ptr %i.en, i64 8
  %.val20.i.i = load ptr, ptr %i.eq, align 8, !tbaa !31
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.n ] ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %.val20.i.i, i64 %indvars.iv.i.i
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !32 ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !33
  %i.eu = add nsw i32 %i.et, -1
  store i32 %i.eu, ptr %i.es, align 4, !tbaa !33
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.val.i.i = load i32, ptr %i.eo, align 4, !tbaa !30
  %i.ev = sext i32 %.val.i.i to i64
  %i.ew = icmp slt i64 %indvars.iv.next.i.i, %i.ev
  br i1 %i.ew, label %bb.n, label %.critedge.i.i, !llvm.loop !59

.critedge.i.i:                                    ; preds = %bb.n, %.critedge.i
  %i.ex = load i32, ptr %.093144, align 4         ; 2 uses
  %i.ey = load i32, ptr %i.av, align 8
  %i.ez = xor i32 %i.ey, %i.ex
  %i.fa = lshr i32 %i.ez, 16
  %i.fb = and i32 %i.fa, 1                        ; 2 uses
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !33
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %bb.o, label %Amap_ManMatchGetExacts.exit

bb.o:                                             ; preds = %.critedge.i.i
  %i.fg = xor i32 %i.fb, 1
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !33
  %i.fk = icmp sgt i32 %i.fj, 0
  br i1 %i.fk, label %bb.p, label %Amap_ManMatchGetExacts.exit

bb.p:                                             ; preds = %bb.o
  %i.fl = load float, ptr %i.ag, align 4, !tbaa !53
  %i.fm = fadd float %i.em, %i.fl
  br label %Amap_ManMatchGetExacts.exit

Amap_ManMatchGetExacts.exit:                      ; preds = %.critedge.i.i, %bb.o, %bb.p
  %.0.i.i = phi float [ %i.fm, %bb.p ], [ %i.em, %bb.o ], [ %i.em, %.critedge.i.i ] ; 2 uses
  store float %.0.i.i, ptr %i.z, align 8, !tbaa !67
  br label %bb.q

bb.q:                                             ; preds = %Amap_ManMatchGetExacts.exit, %Amap_ManMatchGetFlows.exit
  %i.fn = phi float [ %i.ej, %Amap_ManMatchGetExacts.exit ], [ %i.da, %Amap_ManMatchGetFlows.exit ] ; 3 uses
  %i.fo = phi float [ %.0.i.i, %Amap_ManMatchGetExacts.exit ], [ %i.ct, %Amap_ManMatchGetFlows.exit ] ; 4 uses
  %i.fp = phi float [ %i.ed, %Amap_ManMatchGetExacts.exit ], [ %i.cu, %Amap_ManMatchGetFlows.exit ] ; 3 uses
  %i.fq = phi i32 [ %i.ex, %Amap_ManMatchGetExacts.exit ], [ %i.at, %Amap_ManMatchGetFlows.exit ] ; 2 uses
  %i.fr = load ptr, ptr %5, align 8, !tbaa !52
  %i.fs = icmp eq ptr %i.fr, null
  br i1 %i.fs, label %Amap_CutCompareDelay.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val120 = load ptr, ptr %0, align 8, !tbaa !54
  %i.ft = getelementptr i8, ptr %.val120, i64 24
  %.val120.val = load float, ptr %i.ft, align 4, !tbaa !71 ; 5 uses
  %i.fu = load float, ptr %.094.sroa.gep101, align 8, !tbaa !68 ; 2 uses
  %i.fv = fsub float %i.fp, %.val120.val
  %i.fw = fcmp olt float %i.fu, %i.fv
  br i1 %i.fw, label %Amap_CutCompareDelay.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fx = fadd float %.val120.val, %i.fp
  %i.fy = fcmp ogt float %i.fu, %i.fx
  br i1 %i.fy, label %Amap_CutCompareDelay.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fz = load float, ptr %.094.sroa.gep104, align 8, !tbaa !67 ; 2 uses
  %i.ga = fsub float %i.fo, %.val120.val
  %i.gb = fcmp olt float %i.fz, %i.ga
  br i1 %i.gb, label %Amap_CutCompareDelay.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gc = fadd float %.val120.val, %i.fo
  %i.gd = fcmp ogt float %i.fz, %i.gc
  br i1 %i.gd, label %Amap_CutCompareDelay.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ge = load float, ptr %i.ah, align 4, !tbaa !69
  %i.gf = fsub float %i.fn, %.val120.val
  %i.gg = fcmp ogt float %i.ge, %i.gf
  br i1 %i.gg, label %Amap_CutCompareDelay.exit, label %Amap_CutCompareDelay.exit.thread

Amap_CutCompareDelay.exit.thread:                 ; preds = %bb.v, %bb.s, %bb.u, %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !74
  br label %Amap_CutCompareDelay.exit

Amap_CutCompareDelay.exit:                        ; preds = %bb.v, %bb.t, %bb.r, %Amap_CutCompareDelay.exit.thread
  %i.gh = load ptr, ptr %4, align 8, !tbaa !52
  %i.gi = icmp eq ptr %i.gh, null
  br i1 %i.gi, label %Amap_CutCompareArea.exit.thread, label %bb.w

bb.w:                                             ; preds = %Amap_CutCompareDelay.exit
  %.val121 = load ptr, ptr %0, align 8, !tbaa !54
  %i.gj = getelementptr i8, ptr %.val121, i64 24
  %.val121.val = load float, ptr %i.gj, align 4, !tbaa !71 ; 5 uses
  %i.gk = load float, ptr %.094.sroa.gep103, align 8, !tbaa !67 ; 2 uses
  %i.gl = fsub float %i.fo, %.val121.val
  %i.gm = fcmp olt float %i.gk, %i.gl
  br i1 %i.gm, label %Amap_CutCompareArea.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gn = fadd float %.val121.val, %i.fo
  %i.go = fcmp ogt float %i.gk, %i.gn
  br i1 %i.go, label %Amap_CutCompareArea.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gp = load float, ptr %i.ai, align 4, !tbaa !69 ; 2 uses
  %i.gq = fsub float %i.fn, %.val121.val
  %i.gr = fcmp ogt float %i.gp, %i.gq
  br i1 %i.gr, label %Amap_CutCompareArea.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gs = fadd float %.val121.val, %i.fn
  %i.gt = fcmp olt float %i.gp, %i.gs
  br i1 %i.gt, label %Amap_CutCompareArea.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gu = load float, ptr %.094.sroa.gep100, align 8, !tbaa !68
  %i.gv = fsub float %i.fp, %.val121.val
  %i.gw = fcmp olt float %i.gu, %i.gv
  br i1 %i.gw, label %Amap_CutCompareArea.exit, label %Amap_CutCompareArea.exit.thread

Amap_CutCompareArea.exit.thread:                  ; preds = %bb.aa, %bb.x, %bb.z, %Amap_CutCompareDelay.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !74
  br label %Amap_CutCompareArea.exit

Amap_CutCompareArea.exit:                         ; preds = %bb.aa, %bb.y, %bb.w, %Amap_CutCompareArea.exit.thread
  %.092 = load ptr, ptr %.092143, align 8, !tbaa !66 ; 2 uses
  %.not112 = icmp eq ptr %.092, null
  br i1 %.not112, label %.loopexit.loopexit, label %bb.g, !llvm.loop !60

.loopexit.loopexit:                               ; preds = %Amap_CutCompareArea.exit
  %.pre = load i32, ptr %i.t, align 4, !tbaa !64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.f, %bb.e
  %i.gx = phi i32 [ %.pre, %.loopexit.loopexit ], [ %i.aj, %bb.f ], [ %i.aj, %bb.e ] ; 2 uses
  %i.gy = phi i32 [ %i.fq, %.loopexit.loopexit ], [ %i.ak, %bb.f ], [ %i.ak, %bb.e ]
  %i.gz = add nuw nsw i32 %.0146, 1               ; 2 uses
  %i.ha = lshr i32 %i.gy, 17
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %.093144, i64 %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  %i.he = icmp slt i32 %i.gz, %i.gx
  br i1 %i.he, label %bb.e, label %._crit_edge.loopexit, !llvm.loop !61

._crit_edge.loopexit:                             ; preds = %.loopexit
  %7 = load <4 x float>, ptr %.094.sroa.gep103, align 8
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %9 = load <4 x float>, ptr %.094.sroa.gep104, align 8
  %10 = shufflevector <4 x float> %9, <4 x float> poison, <2 x i32> <i32 0, i32 poison> ; 2 uses
  %.pre155 = load float, ptr %.094.sroa.gep100, align 8, !tbaa !68 ; 2 uses
  %.pre156 = load float, ptr %.094.sroa.gep101, align 8, !tbaa !68
  %i.hf = insertelement <2 x float> %10, float %.pre155, i64 1
  %i.hg = insertelement <2 x float> %8, float %.pre155, i64 1
  %i.hh = insertelement <2 x float> %10, float %.pre156, i64 1
  %i.hi = fsub <2 x float> %i.hg, %i.hh
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %i.hj = phi <2 x float> [ %i.hf, %._crit_edge.loopexit ], [ zeroinitializer, %bb.d ]
  %i.hk = phi <2 x float> [ %i.hi, %._crit_edge.loopexit ], [ zeroinitializer, %bb.d ] ; 3 uses
  %i.hl = load ptr, ptr %0, align 8, !tbaa !54
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 28
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !75
  %i.ho = fcmp olt <2 x float> %i.hk, zeroinitializer
  %i.hp = fneg <2 x float> %i.hk
  %i.hq = select <2 x i1> %i.ho, <2 x float> %i.hp, <2 x float> %i.hk ; 2 uses
  %i.hr = extractelement <2 x float> %i.hq, i64 1
  %i.hs = fmul float %i.hn, %i.hr
  %i.ht = insertelement <2 x float> %i.hq, float %i.hs, i64 1
  %i.hu = fdiv <2 x float> %i.ht, %i.hj           ; 2 uses
  %i.hv = extractelement <2 x float> %i.hu, i64 0
  %i.hw = extractelement <2 x float> %i.hu, i64 1
  %i.hx = fcmp ult float %i.hv, %i.hw             ; 2 uses
  %.094.sroa.gep95..094.sroa.gep.v = select i1 %i.hx, ptr %5, ptr %4 ; 2 uses
  %.094.sroa.gep95..094.sroa.gep.v.sroa.sel.v.sroa.sel.v = select i1 %i.hx, ptr %5, ptr %4
  %.094.sroa.gep95..094.sroa.gep.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.094.sroa.gep95..094.sroa.gep.v.sroa.sel.v.sroa.sel.v, i64 8
  %i.hy = load ptr, ptr %.094.sroa.gep95..094.sroa.gep.v, align 8, !tbaa !52
  %i.hz = load i32, ptr %i.hy, align 4
  %i.ia = load ptr, ptr %.094.sroa.gep95..094.sroa.gep.v.sroa.sel.v.sroa.sel, align 8, !tbaa !42
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ic = load i32, ptr %i.ib, align 8
  %i.id = xor i32 %i.ic, %i.hz
  %i.ie = lshr i32 %i.id, 16
  %i.if = and i32 %i.ie, 1
  %i.ig = zext nneg i32 %i.if to i64
  %i.ih = load i64, ptr %1, align 8
  %i.ii = shl nuw i64 %i.ig, 63
  %i.ij = and i64 %i.ih, 9223372036854775807
  %i.ik = or disjoint i64 %i.ii, %i.ij
  store i64 %i.ik, ptr %1, align 8
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.il, ptr noundef nonnull align 8 dereferenceable(32) %.094.sroa.gep95..094.sroa.gep.v, i64 32, i1 false), !tbaa.struct !74
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !76 ; 2 uses
  %i.in = load i32, ptr %i.im, align 4
  %i.io = lshr i32 %i.in, 15
  %i.ip = and i32 %i.io, 131068
  %narrow.i = add nuw nsw i32 %i.ip, 4            ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !27
  %i.is = tail call noundef ptr @Aig_MmFlexEntryFetch(ptr noundef %i.ir, i32 noundef %narrow.i) #19 ; 2 uses
  %i.it = zext nneg i32 %narrow.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.is, ptr noundef nonnull readonly align 4 dereferenceable(1) %i.im, i64 %i.it, i1 false)
  store ptr %i.is, ptr %i.il, align 8, !tbaa !76
  br i1 %.not, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge
  %i.iu = getelementptr i8, ptr %1, i64 52
  %.val = load i32, ptr %i.iu, align 4, !tbaa !33
  %i.iv = getelementptr i8, ptr %1, i64 56
  %.val114 = load i32, ptr %i.iv, align 8, !tbaa !33
  %i.iw = add nsw i32 %.val114, %.val
  %i.ix = icmp sgt i32 %i.iw, 0
  br i1 %i.ix, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.iy = tail call fastcc float @Amap_CutAreaRef(ptr noundef nonnull %0, ptr noundef nonnull %i.il) ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: inlinehint nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc float @Amap_CutAreaDeref(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8
  %i.g = and i32 %i.f, 65535
  %i.h = getelementptr i8, ptr %i.b, i64 8
  %.val32 = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.i = getelementptr i8, ptr %.val32, i64 8
  %.val32.val = load ptr, ptr %i.i, align 8, !tbaa !31
  %i.j = zext nneg i32 %i.g to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.val32.val, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !32
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load double, ptr %i.m, align 8, !tbaa !51
  %i.o = fptrunc double %i.n to float             ; 2 uses
  %i.p = load ptr, ptr %1, align 8, !tbaa !52     ; 2 uses
  %i.q = load i32, ptr %i.p, align 4
  %.not37 = icmp ult i32 %i.q, 131072
  br i1 %.not37, label %._crit_edge, label %.critedge.lr.ph

.critedge.lr.ph:                                  ; preds = %bb.a
  %i.r = getelementptr i8, ptr %0, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %.critedge

.critedge:                                        ; preds = %.critedge.lr.ph, %bb.e
  %i.t = phi ptr [ %i.p, %.critedge.lr.ph ], [ %i.bi, %bb.e ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.critedge.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.036 = phi float [ %i.o, %.critedge.lr.ph ], [ %.2, %bb.e ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv
  %i.y = load i8, ptr %i.x, align 1, !tbaa !40
  %i.z = sext i8 %i.y to i32                      ; 2 uses
  %i.aa = ashr i32 %i.z, 1
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !33 ; 2 uses
  %i.ae = ashr i32 %i.ad, 1
  %.val = load ptr, ptr %i.r, align 8, !tbaa !28
  %i.af = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.af, align 8, !tbaa !31
  %i.ag = sext i32 %i.ae to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %.val.val, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !32 ; 4 uses
  %i.aj = and i32 %i.z, 1                         ; 2 uses
  %i.ak = and i32 %i.ad, 1                        ; 2 uses
  %i.al = xor i32 %i.aj, %i.ak                    ; 2 uses
  %i.am = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.an = lshr i64 %i.am, 63
  %i.ao = trunc nuw nsw i64 %i.an to i32
  %.not = icmp ne i32 %i.al, %i.ao
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ai, i64 52
  %.phi.trans.insert39 = zext nneg i32 %i.al to i64 ; 2 uses
  %.phi.trans.insert40 = getelementptr inbounds nuw [4 x i8], ptr %.phi.trans.insert, i64 %.phi.trans.insert39
  %.pre = load i32, ptr %.phi.trans.insert40, align 4, !tbaa !33 ; 2 uses
  %i.ap = icmp eq i32 %.pre, 1
  %or.cond = select i1 %.not, i1 %i.ap, i1 false
  br i1 %or.cond, label %bb.b, label %.critedge._crit_edge

bb.b:                                             ; preds = %.critedge
  %i.aq = load float, ptr %i.s, align 4, !tbaa !53
  %i.ar = fadd float %.036, %i.aq
  br label %.critedge._crit_edge

.critedge._crit_edge:                             ; preds = %.critedge, %bb.b
  %i.as = phi i32 [ %.pre, %.critedge ], [ 1, %bb.b ]
  %.1 = phi float [ %.036, %.critedge ], [ %i.ar, %bb.b ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 52 ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.phi.trans.insert39
  %i.av = add nsw i32 %i.as, -1                   ; 2 uses
  store i32 %i.av, ptr %i.au, align 4, !tbaa !33
  %.not30 = icmp eq i32 %i.aj, %i.ak
  %i.aw = zext i1 %.not30 to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !33
  %i.az = sub i32 0, %i.ay
  %i.ba = icmp eq i32 %i.av, %i.az
  br i1 %i.ba, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.critedge._crit_edge
  %i.bb = trunc i64 %i.am to i32                  ; 2 uses
  %i.bc = and i32 %i.bb, 7
  %i.bd = and i32 %i.bb, 6
  %switch.i = icmp ne i32 %i.bd, 4
  %i.be = icmp ne i32 %i.bc, 6
  %narrow.i.not = and i1 %switch.i, %i.be
  br i1 %narrow.i.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %i.bg = tail call fastcc float @Amap_CutAreaDeref(ptr noundef nonnull %0, ptr noundef nonnull %i.bf)
  %i.bh = fadd float %.1, %i.bg
  %.pre41 = load ptr, ptr %1, align 8, !tbaa !52
  br label %bb.e

bb.e:                                             ; preds = %.critedge._crit_edge, %bb.c, %bb.d
  %i.bi = phi ptr [ %.pre41, %bb.d ], [ %i.t, %bb.c ], [ %i.t, %.critedge._crit_edge ] ; 2 uses
  %.2 = phi float [ %i.bh, %bb.d ], [ %.1, %bb.c ], [ %.1, %.critedge._crit_edge ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = lshr i32 %i.bj, 17
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = icmp samesign ult i64 %indvars.iv.next, %i.bl
  br i1 %i.bm, label %.critedge, label %._crit_edge, !llvm.loop !77

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.0.lcssa = phi float [ %i.o, %bb.a ], [ %.2, %bb.e ]
  ret float %.0.lcssa
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #9

; Function Attrs: inlinehint nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc float @Amap_CutAreaRef(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #8 {
bb.a:
end_hunk_0
