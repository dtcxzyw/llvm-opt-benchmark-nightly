inline.NumInlined: 1495
inline.NumDeleted: 233
begin_hunk_0_@_ZNK4llvh5APInt4rotlEj:bb.a
bb.g:                                             ; preds = %bb.f
  %i.ay = zext nneg i32 %.sroa.speculated.i.i to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ay
  %i.ba = sub nuw nsw i32 %i.v, %.sroa.speculated.i.i
  %i.bb = shl nuw nsw i32 %i.ba, 3
  %i.bc = zext nneg i32 %i.bb to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.az, ptr nonnull align 8 %i.s, i64 %i.bc, i1 false)
  br label %.loopexit29

end_hunk_0
begin_hunk_1_@_ZNK4llvh5APInt4rotlEj:bb.a
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = lshr i64 -1, %i.cf
  %i.ch = and i64 %i.cc, %i.cg
  %i.ci = sub nuw nsw i32 %i.b, %i.c
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = lshr i64 %i.ca, %i.cj
  %i.cl = or i64 %i.ck, %i.ch
end_hunk_1
begin_hunk_2_@_ZNK4llvh5APInt4rotlEj:bb.a
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !10
  %i.cx = and i64 %i.cw, %i.cs
  store i64 %i.cx, ptr %i.cv, align 8, !tbaa !10
  %i.cy = sub nuw i32 %i.b, %i.c                  ; 2 uses
  %i.cz = zext i32 %i.b to i64
  %i.da = add nuw nsw i64 %i.cz, 63               ; 2 uses
  %i.db = lshr i64 %i.da, 3
end_hunk_2
begin_hunk_3_@_ZNK4llvh5APInt4rotlEj:bb.a
  %i.dh = lshr i32 %i.cy, 6                       ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.dg, i32 %i.dh) ; 9 uses
  %i.di = and i32 %i.cy, 63                       ; 3 uses
  %i.dj = sub nuw nsw i32 %i.dg, %.sroa.speculated.i.i.i.i ; 5 uses
  %i.dk = icmp eq i32 %i.di, 0
  br i1 %i.dk, label %bb.h, label %.preheader.i.i.i.i

end_hunk_3
begin_hunk_4_@_ZNK4llvh5APInt4rotlEj:bb.a
  br i1 %.not32.i1.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i.i.i.i
  %i.ds = zext nneg i32 %i.dj to i64
  %i.dt = add nsw i64 %i.ds, -1                   ; 3 uses
  %xtraiter34 = and i64 %i.dt, 1
  %i.du = icmp eq i32 %i.dj, 2
end_hunk_4
begin_hunk_5_@_ZNK4llvh5APInt4rotlEj:bb.a
bb.h:                                             ; preds = %.loopexit29
  %i.dv = zext nneg i32 %.sroa.speculated.i.i.i.i to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.dv
  %i.dx = shl nuw nsw i32 %i.dj, 3
  %i.dy = zext nneg i32 %i.dx to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dd, ptr nonnull align 8 %i.dw, i64 %i.dy, i1 false), !noalias !101
  br label %.loopexit

end_hunk_5
begin_hunk_6_@_ZNK4llvh5APInt4rotlEj:bb.a
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader.i.i.i.i, %.lr.ph.i.i.i.i, %bb.h
  %i.fp = zext nneg i32 %i.dj to i64
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.fp
  %i.fr = shl nuw nsw i32 %.sroa.speculated.i.i.i.i, 3
  %i.fs = zext nneg i32 %i.fr to i64
end_hunk_6
begin_hunk_7_@_ZNK4llvh5APInt9getHiBitsEj:bb.a
  %i.r = lshr i32 %i.c, 6                         ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.r) ; 9 uses
  %i.s = and i32 %i.c, 63                         ; 3 uses
  %i.t = sub nuw nsw i32 %i.q, %.sroa.speculated.i.i.i.i ; 5 uses
  %i.u = icmp eq i32 %i.s, 0
  br i1 %i.u, label %bb.g, label %.preheader.i.i.i.i

end_hunk_7
begin_hunk_8_@_ZNK4llvh5APInt9getHiBitsEj:bb.a
  br i1 %.not32.i1.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i.i.i.i
  %i.ac = zext nneg i32 %i.t to i64
  %i.ad = add nsw i64 %i.ac, -1                   ; 3 uses
  %xtraiter = and i64 %i.ad, 1
  %i.ae = icmp eq i32 %i.t, 2
end_hunk_8
begin_hunk_9_@_ZNK4llvh5APInt9getHiBitsEj:bb.a
bb.g:                                             ; preds = %bb.f
  %i.af = zext nneg i32 %.sroa.speculated.i.i.i.i to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.af
  %i.ah = shl nuw nsw i32 %i.t, 3
  %i.ai = zext nneg i32 %i.ah to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 8 %i.ag, i64 %i.ai, i1 false), !noalias !106
  br label %.loopexit.i.i.i.i

end_hunk_9
begin_hunk_10_@_ZNK4llvh5APInt9getHiBitsEj:bb.a
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.epil.preheader, %.loopexit.i.i.i.i.loopexit.unr-lcssa, %bb.g, %.lr.ph.i.i.i.i, %.preheader.i.i.i.i
  %i.bz = zext nneg i32 %i.t to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bz
  %i.cb = shl nuw nsw i32 %.sroa.speculated.i.i.i.i, 3
  %i.cc = zext nneg i32 %i.cb to i64
end_hunk_10
begin_hunk_11_@_ZN4llvh5APInt8getSplatEjRKS0_:bb.a
bb.h:                                             ; preds = %bb.g
  %i.cm = zext nneg i32 %.sroa.speculated.i.i to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.cm
  %i.co = sub nuw nsw i32 %i.aq, %.sroa.speculated.i.i
  %i.cp = shl nuw nsw i32 %i.co, 3
  %i.cq = zext nneg i32 %i.cp to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cn, ptr nonnull align 8 %i.bj, i64 %i.cq, i1 false)
  br label %.loopexit.i.i

end_hunk_11
begin_hunk_12_@_ZNK4llvh5APInt8byteSwapEv:bb.a
  %i.cs = lshr i32 %i.cn, 6                       ; 2 uses
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.cr, i32 %i.cs) ; 9 uses
  %i.ct = and i32 %i.cn, 63                       ; 3 uses
  %i.cu = sub nuw nsw i32 %i.cr, %.sroa.speculated.i.i.i ; 5 uses
  %i.cv = icmp eq i32 %i.ct, 0
  br i1 %i.cv, label %bb.n, label %.preheader.i.i.i

end_hunk_12
begin_hunk_13_@_ZNK4llvh5APInt8byteSwapEv:bb.a
  br i1 %.not32.i1.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.i.i
  %i.dd = zext nneg i32 %i.cu to i64
  %i.de = add nsw i64 %i.dd, -1                   ; 3 uses
  %xtraiter32 = and i64 %i.de, 1
  %i.df = icmp eq i32 %i.cu, 2
end_hunk_13
begin_hunk_14_@_ZNK4llvh5APInt8byteSwapEv:bb.a
bb.n:                                             ; preds = %bb.m
  %i.dg = zext nneg i32 %.sroa.speculated.i.i.i to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.dg
  %i.di = shl nuw nsw i32 %i.cu, 3
  %i.dj = zext nneg i32 %i.di to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.au, ptr align 8 %i.dh, i64 %i.dj, i1 false)
  br label %.loopexit.i.i.i

end_hunk_14
begin_hunk_15_@_ZNK4llvh5APInt8byteSwapEv:bb.a
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.epil.preheader, %.loopexit.i.i.i.loopexit.unr-lcssa, %bb.n, %.lr.ph.i.i.i, %.preheader.i.i.i
  %i.fa = zext nneg i32 %i.cu to i64
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.fa
  %i.fc = shl nuw nsw i32 %.sroa.speculated.i.i.i, 3
  %i.fd = zext nneg i32 %i.fc to i64
end_hunk_15
begin_hunk_16_@_ZN4llvh8APIntOps21GreatestCommonDivisorENS_5APIntES1_:bb.a
  %i.da = lshr i32 %i.cs, 6                       ; 2 uses
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.cz, i32 %i.da) ; 9 uses
  %i.db = and i32 %i.cs, 63                       ; 3 uses
  %i.dc = sub nuw nsw i32 %i.cz, %.sroa.speculated.i.i.i ; 5 uses
  %i.dd = icmp eq i32 %i.db, 0
  br i1 %i.dd, label %bb.aa, label %.preheader.i.i.i

end_hunk_16
begin_hunk_17_@_ZN4llvh8APIntOps21GreatestCommonDivisorENS_5APIntES1_:bb.a
  br i1 %.not32.i1.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i38.preheader

.lr.ph.i.i38.preheader:                           ; preds = %.lr.ph.i.i.i
  %i.dl = zext nneg i32 %i.dc to i64
  %i.dm = add nsw i64 %i.dl, -1                   ; 3 uses
  %xtraiter238 = and i64 %i.dm, 1
  %i.dn = icmp eq i32 %i.dc, 2
end_hunk_17
begin_hunk_18_@_ZN4llvh8APIntOps21GreatestCommonDivisorENS_5APIntES1_:bb.a
bb.aa:                                            ; preds = %bb.z
  %i.do = zext nneg i32 %.sroa.speculated.i.i.i to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.do
  %i.dq = shl nuw nsw i32 %i.dc, 3
  %i.dr = zext nneg i32 %i.dq to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.al, ptr align 8 %i.dp, i64 %i.dr, i1 false)
  br label %.loopexit.i.i.i

end_hunk_18
begin_hunk_19_@_ZN4llvh8APIntOps21GreatestCommonDivisorENS_5APIntES1_:bb.a
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i38.epil.preheader, %.loopexit.i.i.i.loopexit.unr-lcssa, %bb.aa, %.lr.ph.i.i.i, %.preheader.i.i.i
  %i.fi = zext nneg i32 %i.dc to i64
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.fi
  %i.fk = shl nuw nsw i32 %.sroa.speculated.i.i.i, 3
  %i.fl = zext nneg i32 %i.fk to i64
end_hunk_19
begin_hunk_20_@_ZN4llvh8APIntOps21GreatestCommonDivisorENS_5APIntES1_:bb.a
  %i.fv = lshr i32 %i.fn, 6                       ; 2 uses
  %.sroa.speculated.i.i.i40 = tail call i32 @llvm.umin.i32(i32 %i.fu, i32 %i.fv) ; 9 uses
  %i.fw = and i32 %i.fn, 63                       ; 3 uses
  %i.fx = sub nuw nsw i32 %i.fu, %.sroa.speculated.i.i.i40 ; 5 uses
  %i.fy = icmp eq i32 %i.fw, 0
  br i1 %i.fy, label %bb.ah, label %.preheader.i.i.i41

end_hunk_20
begin_hunk_21_@_ZN4llvh8APIntOps21GreatestCommonDivisorENS_5APIntES1_:bb.a
  br i1 %.not32.i1.i.i45, label %.loopexit.i.i.i43, label %.lr.ph.i.i46.preheader

.lr.ph.i.i46.preheader:                           ; preds = %.lr.ph.i.i.i44
  %i.gg = zext nneg i32 %i.fx to i64
  %i.gh = add nsw i64 %i.gg, -1                   ; 3 uses
  %xtraiter = and i64 %i.gh, 1
  %i.gi = icmp eq i32 %i.fx, 2
end_hunk_21
begin_hunk_22_@_ZN4llvh8APIntOps21GreatestCommonDivisorENS_5APIntES1_:bb.a
bb.ah:                                            ; preds = %bb.ag
  %i.gj = zext nneg i32 %.sroa.speculated.i.i.i40 to i64
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.gj
  %i.gl = shl nuw nsw i32 %i.fx, 3
  %i.gm = zext nneg i32 %i.gl to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.an, ptr align 8 %i.gk, i64 %i.gm, i1 false)
  br label %.loopexit.i.i.i43

end_hunk_22
begin_hunk_23_@_ZN4llvh8APIntOps21GreatestCommonDivisorENS_5APIntES1_:bb.a
  br label %.loopexit.i.i.i43

.loopexit.i.i.i43:                                ; preds = %.lr.ph.i.i46.epil.preheader, %.loopexit.i.i.i43.loopexit.unr-lcssa, %bb.ah, %.lr.ph.i.i.i44, %.preheader.i.i.i41
  %i.id = zext nneg i32 %i.fx to i64
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.id
  %i.if = shl nuw nsw i32 %.sroa.speculated.i.i.i40, 3
  %i.ig = zext nneg i32 %i.if to i64
end_hunk_23
begin_hunk_24_@_ZN4llvh8APIntOps21GreatestCommonDivisorENS_5APIntES1_:bb.a
  %i.kt = lshr i32 %i.ks, 6                       ; 2 uses
  %.sroa.speculated.i.i.i65 = tail call i32 @llvm.umin.i32(i32 %i.kd, i32 %i.kt) ; 9 uses
  %i.ku = and i32 %i.ks, 63                       ; 3 uses
  %i.kv = sub nuw nsw i32 %i.kd, %.sroa.speculated.i.i.i65 ; 5 uses
  %i.kw = icmp eq i32 %i.ku, 0
  br i1 %i.kw, label %bb.as, label %.preheader.i.i.i66

end_hunk_24
begin_hunk_25_@_ZN4llvh8APIntOps21GreatestCommonDivisorENS_5APIntES1_:bb.a
  br i1 %.not32.i1.i.i70, label %.loopexit.i.i.i68, label %.lr.ph.i.i71.preheader

.lr.ph.i.i71.preheader:                           ; preds = %.lr.ph.i.i.i69
  %i.le = zext nneg i32 %i.kv to i64
  %i.lf = add nsw i64 %i.le, -1                   ; 3 uses
  %xtraiter249 = and i64 %i.lf, 1
  %i.lg = icmp eq i32 %i.kv, 2
end_hunk_25
begin_hunk_26_@_ZN4llvh8APIntOps21GreatestCommonDivisorENS_5APIntES1_:bb.a
bb.as:                                            ; preds = %bb.ar
  %i.lh = zext nneg i32 %.sroa.speculated.i.i.i65 to i64
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %i.lh
  %i.lj = shl nuw nsw i32 %i.kv, 3
  %i.lk = zext nneg i32 %i.lj to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ke, ptr align 8 %i.li, i64 %i.lk, i1 false)
  br label %.loopexit.i.i.i68

end_hunk_26
begin_hunk_27_@_ZN4llvh8APIntOps21GreatestCommonDivisorENS_5APIntES1_:bb.a
  br label %.loopexit.i.i.i68

.loopexit.i.i.i68:                                ; preds = %.lr.ph.i.i71.epil.preheader, %.loopexit.i.i.i68.loopexit.unr-lcssa, %bb.as, %.lr.ph.i.i.i69, %.preheader.i.i.i66
  %i.nb = zext nneg i32 %i.kv to i64
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %i.nb
  %i.nd = shl nuw nsw i32 %.sroa.speculated.i.i.i65, 3
  %i.ne = zext nneg i32 %i.nd to i64
end_hunk_27
begin_hunk_28_@_ZN4llvh8APIntOps21GreatestCommonDivisorENS_5APIntES1_:bb.a
  %i.ph = lshr i32 %i.pg, 6                       ; 2 uses
  %.sroa.speculated.i.i.i97 = tail call i32 @llvm.umin.i32(i32 %i.or, i32 %i.ph) ; 9 uses
  %i.pi = and i32 %i.pg, 63                       ; 3 uses
  %i.pj = sub nuw nsw i32 %i.or, %.sroa.speculated.i.i.i97 ; 5 uses
  %i.pk = icmp eq i32 %i.pi, 0
  br i1 %i.pk, label %bb.bc, label %.preheader.i.i.i98

end_hunk_28
begin_hunk_29_@_ZN4llvh8APIntOps21GreatestCommonDivisorENS_5APIntES1_:bb.a
  br i1 %.not32.i1.i.i102, label %.loopexit.i.i.i100, label %.lr.ph.i.i103.preheader

.lr.ph.i.i103.preheader:                          ; preds = %.lr.ph.i.i.i101
  %i.ps = zext nneg i32 %i.pj to i64
  %i.pt = add nsw i64 %i.ps, -1                   ; 3 uses
  %xtraiter260 = and i64 %i.pt, 1
  %i.pu = icmp eq i32 %i.pj, 2
end_hunk_29
begin_hunk_30_@_ZN4llvh8APIntOps21GreatestCommonDivisorENS_5APIntES1_:bb.a
bb.bc:                                            ; preds = %bb.bb
  %i.pv = zext nneg i32 %.sroa.speculated.i.i.i97 to i64
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %i.os, i64 %i.pv
  %i.px = shl nuw nsw i32 %i.pj, 3
  %i.py = zext nneg i32 %i.px to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.os, ptr align 8 %i.pw, i64 %i.py, i1 false)
  br label %.loopexit.i.i.i100

end_hunk_30
begin_hunk_31_@_ZN4llvh8APIntOps21GreatestCommonDivisorENS_5APIntES1_:bb.a
  br label %.loopexit.i.i.i100

.loopexit.i.i.i100:                               ; preds = %.lr.ph.i.i103.epil.preheader, %.loopexit.i.i.i100.loopexit.unr-lcssa, %bb.bc, %.lr.ph.i.i.i101, %.preheader.i.i.i98
  %i.rp = zext nneg i32 %i.pj to i64
  %i.rq = getelementptr inbounds nuw [8 x i8], ptr %i.os, i64 %i.rp
  %i.rr = shl nuw nsw i32 %.sroa.speculated.i.i.i97, 3
  %i.rs = zext nneg i32 %i.rr to i64
end_hunk_31
begin_hunk_32_@_ZN4llvh8APIntOps18RoundDoubleToAPIntEdj:bb.a
bb.p:                                             ; preds = %bb.o
  %i.ef = zext nneg i32 %.sroa.speculated.i.i to i64
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.ef
  %i.eh = sub nuw nsw i32 %i.dc, %.sroa.speculated.i.i
  %i.ei = shl nuw nsw i32 %i.eh, 3
  %i.ej = zext nneg i32 %i.ei to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eg, ptr nonnull align 8 %i.ct, i64 %i.ej, i1 false)
  br label %.loopexit.i.i

end_hunk_32
begin_hunk_33_@_ZN4llvh5APInt11lshrInPlaceERKS0_:bb.a
  %i.ak = lshr i32 %i.aa, 6                       ; 2 uses
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.aj, i32 %i.ak) ; 9 uses
  %i.al = and i32 %i.aa, 63                       ; 3 uses
  %i.am = sub nuw nsw i32 %i.aj, %.sroa.speculated.i.i.i ; 5 uses
  %i.an = icmp eq i32 %i.al, 0
  br i1 %i.an, label %bb.j, label %.preheader.i.i.i

end_hunk_33
begin_hunk_34_@_ZN4llvh5APInt11lshrInPlaceERKS0_:bb.a
  br i1 %.not32.i1.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.i.i
  %i.av = zext nneg i32 %i.am to i64
  %i.aw = add nsw i64 %i.av, -1                   ; 3 uses
  %xtraiter = and i64 %i.aw, 1
  %i.ax = icmp eq i32 %i.am, 2
end_hunk_34
begin_hunk_35_@_ZN4llvh5APInt11lshrInPlaceERKS0_:bb.a
bb.j:                                             ; preds = %bb.i
  %i.ay = zext nneg i32 %.sroa.speculated.i.i.i to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ay
  %i.ba = shl nuw nsw i32 %i.am, 3
  %i.bb = zext nneg i32 %i.ba to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ag, ptr align 8 %i.az, i64 %i.bb, i1 false)
  br label %.loopexit.i.i.i

end_hunk_35
begin_hunk_36_@_ZN4llvh5APInt11lshrInPlaceERKS0_:bb.a
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.epil.preheader, %.loopexit.i.i.i.loopexit.unr-lcssa, %bb.j, %.lr.ph.i.i.i, %.preheader.i.i.i
  %i.cs = zext nneg i32 %i.am to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.cs
  %i.cu = shl nuw nsw i32 %.sroa.speculated.i.i.i, 3
  %i.cv = zext nneg i32 %i.cu to i64
end_hunk_36
begin_hunk_37_@_ZN4llvh5APInt12lshrSlowCaseEj:bb.a
  %i.h = lshr i32 %1, 6                           ; 2 uses
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %i.g, i32 %i.h) ; 9 uses
  %i.i = and i32 %1, 63                           ; 3 uses
  %i.j = sub nuw nsw i32 %i.g, %.sroa.speculated.i ; 5 uses
  %i.k = icmp eq i32 %i.i, 0
  br i1 %i.k, label %bb.c, label %.preheader.i

end_hunk_37
begin_hunk_38_@_ZN4llvh5APInt12lshrSlowCaseEj:bb.a
  br i1 %.not32.i1, label %.loopexit.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.i
  %i.s = zext nneg i32 %i.j to i64
  %i.t = add nsw i64 %i.s, -1                     ; 3 uses
  %xtraiter = and i64 %i.t, 1
  %i.u = icmp eq i32 %i.j, 2
end_hunk_38
begin_hunk_39_@_ZN4llvh5APInt12lshrSlowCaseEj:bb.a
bb.c:                                             ; preds = %bb.b
  %i.v = zext nneg i32 %.sroa.speculated.i to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.v
  %i.x = shl nuw nsw i32 %i.j, 3
  %i.y = zext nneg i32 %i.x to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.a, ptr align 8 %i.w, i64 %i.y, i1 false)
  br label %.loopexit.i

end_hunk_39
begin_hunk_40_@_ZN4llvh5APInt12lshrSlowCaseEj:bb.a
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i, %bb.c, %.preheader.i
  %i.bp = zext nneg i32 %i.j to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bp
  %i.br = shl nuw nsw i32 %.sroa.speculated.i, 3
  %i.bs = zext nneg i32 %i.br to i64
end_hunk_40
begin_hunk_41_@_ZN4llvh5APInt12tcShiftRightEPmjj:bb.a
  %i.a = lshr i32 %2, 6                           ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %1, i32 %i.a) ; 9 uses
  %i.b = and i32 %2, 63                           ; 3 uses
  %i.c = sub nuw i32 %1, %.sroa.speculated        ; 5 uses
  %i.d = icmp eq i32 %i.b, 0
  br i1 %i.d, label %bb.c, label %.preheader

end_hunk_41
begin_hunk_42_@_ZN4llvh5APInt11shlSlowCaseEj:bb.a
bb.c:                                             ; preds = %bb.b
  %i.ak = zext nneg i32 %.sroa.speculated.i to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ak
  %i.am = sub nuw nsw i32 %i.g, %.sroa.speculated.i
  %i.an = shl nuw nsw i32 %i.am, 3
  %i.ao = zext nneg i32 %i.an to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.al, ptr align 8 %i.a, i64 %i.ao, i1 false)
  br label %.loopexit.i

end_hunk_42
begin_hunk_43_@_ZN4llvh5APInt11tcShiftLeftEPmjj:bb.a
bb.c:                                             ; preds = %bb.b
  %i.ag = zext nneg i32 %.sroa.speculated to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ag
  %i.ai = sub nuw i32 %1, %.sroa.speculated
  %i.aj = shl i32 %i.ai, 3
  %i.ak = zext i32 %i.aj to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ah, ptr align 8 %0, i64 %i.ak, i1 false)
end_hunk_43
begin_hunk_44_@_ZNK4llvh5APInt4rotrEj:bb.a
  %i.w = lshr i32 %i.c, 6                         ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.w) ; 9 uses
  %i.x = and i32 %i.c, 63                         ; 3 uses
  %i.y = sub nuw nsw i32 %i.v, %.sroa.speculated.i.i.i.i ; 5 uses
  %i.z = icmp eq i32 %i.x, 0
  br i1 %i.z, label %bb.g, label %.preheader.i.i.i.i

end_hunk_44
begin_hunk_45_@_ZNK4llvh5APInt4rotrEj:bb.a
  br i1 %.not32.i1.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i.i.i.i
  %i.ah = zext nneg i32 %i.y to i64
  %i.ai = add nsw i64 %i.ah, -1                   ; 3 uses
  %xtraiter = and i64 %i.ai, 1
  %i.aj = icmp eq i32 %i.y, 2
end_hunk_45
begin_hunk_46_@_ZNK4llvh5APInt4rotrEj:bb.a
bb.g:                                             ; preds = %bb.f
  %i.ak = zext nneg i32 %.sroa.speculated.i.i.i.i to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ak
  %i.am = shl nuw nsw i32 %i.y, 3
  %i.an = zext nneg i32 %i.am to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull align 8 %i.al, i64 %i.an, i1 false), !noalias !197
  br label %.loopexit

end_hunk_46
begin_hunk_47_@_ZNK4llvh5APInt4rotrEj:bb.a
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.g, %.lr.ph.i.i.i.i, %.preheader.i.i.i.i
  %i.ce = zext nneg i32 %i.y to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ce
  %i.cg = shl nuw nsw i32 %.sroa.speculated.i.i.i.i, 3
  %i.ch = zext nneg i32 %i.cg to i64
end_hunk_47
begin_hunk_48_@_ZNK4llvh5APInt4rotrEj:bb.a
  %i.ci = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #25, !noalias !200 ; 17 uses
  %i.cj = ptrtoint ptr %i.ci to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ci, ptr align 8 %i.t, i64 %i.r, i1 false), !noalias !200
  %i.ck = sub nuw i32 %i.b, %i.c                  ; 2 uses
  %i.cl = lshr i32 %i.ck, 6                       ; 2 uses
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.cl) ; 11 uses
  %i.cm = and i32 %i.ck, 63                       ; 3 uses
end_hunk_48
begin_hunk_49_@_ZNK4llvh5APInt4rotrEj:bb.a
bb.h:                                             ; preds = %.loopexit
  %i.dn = zext nneg i32 %.sroa.speculated.i.i to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.dn
  %i.dp = sub nuw nsw i32 %i.v, %.sroa.speculated.i.i
  %i.dq = shl nuw nsw i32 %i.dp, 3
  %i.dr = zext nneg i32 %i.dq to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.do, ptr nonnull align 8 %i.ci, i64 %i.dr, i1 false)
  br label %.loopexit.i.i

end_hunk_49
begin_hunk_50_@_ZNK4llvh5APInt4rotrEj:bb.a
  %i.fm = load i64, ptr %1, align 8, !tbaa !9, !noalias !197 ; 2 uses
  %i.fn = zext nneg i32 %i.c to i64
  %i.fo = lshr i64 %i.fm, %i.fn
  %i.fp = sub nuw nsw i32 %i.b, %i.c
  %i.fq = zext nneg i32 %i.fp to i64
  %i.fr = shl i64 %i.fm, %i.fq
  %i.fs = sub nsw i32 0, %i.b
end_hunk_50
begin_hunk_51_@_ZNK4llvh5APInt4sqrtEv:bb.a
bb.n:                                             ; preds = %bb.m
  %i.gt = zext nneg i32 %.sroa.speculated.i.i to i64
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.gt
  %i.gv = sub nuw nsw i32 %i.fo, %.sroa.speculated.i.i
  %i.gw = shl nuw nsw i32 %i.gv, 3
  %i.gx = zext nneg i32 %i.gw to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gu, ptr nonnull align 8 %i.fl, i64 %i.gx, i1 false)
  br label %.loopexit.i.i

end_hunk_51
begin_hunk_52_@_ZNK4llvh5APInt5magicEv:bb.a
  %i.az = lshr i32 %i.am, 6                       ; 2 uses
  %.sroa.speculated.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.ay, i32 %i.az) ; 9 uses
  %i.ba = and i32 %i.am, 63                       ; 3 uses
  %i.bb = sub nuw nsw i32 %i.ay, %.sroa.speculated.i.i.i.i ; 5 uses
  %i.bc = icmp eq i32 %i.ba, 0
  br i1 %i.bc, label %bb.e, label %.preheader.i.i.i.i

end_hunk_52
begin_hunk_53_@_ZNK4llvh5APInt5magicEv:bb.a
  br i1 %.not32.i1.i.i.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i.i.i.i
  %i.bk = zext nneg i32 %i.bb to i64
  %i.bl = add nsw i64 %i.bk, -1                   ; 3 uses
  %xtraiter = and i64 %i.bl, 1
  %i.bm = icmp eq i32 %i.bb, 2
end_hunk_53
begin_hunk_54_@_ZNK4llvh5APInt5magicEv:bb.a
bb.e:                                             ; preds = %bb.d
  %i.bn = zext nneg i32 %.sroa.speculated.i.i.i.i to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.bn
  %i.bp = shl nuw nsw i32 %i.bb, 3
  %i.bq = zext nneg i32 %i.bp to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.au, ptr nonnull align 8 %i.bo, i64 %i.bq, i1 false), !noalias !247
  br label %.lr.ph.preheader.i.i.i

end_hunk_54
begin_hunk_55_@_ZNK4llvh5APInt5magicEv:bb.a
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph.i.i.i.epil.preheader, %.lr.ph.preheader.i.i.i.loopexit.unr-lcssa, %bb.e, %.lr.ph.i.i.i.i, %.preheader.i.i.i.i
  %i.dh = zext nneg i32 %i.bb to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.dh
  %i.dj = shl nuw nsw i32 %.sroa.speculated.i.i.i.i, 3
  %i.dk = zext nneg i32 %i.dj to i64
end_hunk_55
begin_hunk_56_@_ZNK4llvh5APInt6magicuEj:bb.a
  %i.af = lshr i32 %2, 6                          ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.ae, i32 %i.af) ; 9 uses
  %i.ag = and i32 %2, 63                          ; 3 uses
  %i.ah = sub nuw nsw i32 %i.ae, %.sroa.speculated.i.i.i.i ; 5 uses
  %i.ai = icmp eq i32 %i.ag, 0
  br i1 %i.ai, label %bb.d, label %.preheader.i.i.i.i

end_hunk_56
begin_hunk_57_@_ZNK4llvh5APInt6magicuEj:bb.a
  br i1 %.not32.i1.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i.i.i.i
  %i.aq = zext nneg i32 %i.ah to i64
  %i.ar = add nsw i64 %i.aq, -1                   ; 3 uses
  %xtraiter = and i64 %i.ar, 1
  %i.as = icmp eq i32 %i.ah, 2
end_hunk_57
begin_hunk_58_@_ZNK4llvh5APInt6magicuEj:bb.a
bb.d:                                             ; preds = %bb.c
  %i.at = zext nneg i32 %.sroa.speculated.i.i.i.i to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.at
  %i.av = shl nuw nsw i32 %i.ah, 3
  %i.aw = zext nneg i32 %i.av to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr nonnull align 8 %i.au, i64 %i.aw, i1 false), !noalias !337
  br label %.loopexit.i.i.i.i

end_hunk_58
begin_hunk_59_@_ZNK4llvh5APInt6magicuEj:bb.a
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.epil.preheader, %.loopexit.i.i.i.i.loopexit.unr-lcssa, %bb.d, %.lr.ph.i.i.i.i, %.preheader.i.i.i.i
  %i.cn = zext nneg i32 %i.ah to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.cn
  %i.cp = shl nuw nsw i32 %.sroa.speculated.i.i.i.i, 3
  %i.cq = zext nneg i32 %i.cp to i64
end_hunk_59
begin_hunk_60_@_ZN4llvh5APInt8tcDivideEPmPKmS1_S1_j:bb.a
bb.f:                                             ; preds = %bb.e
  %i.bu = zext nneg i32 %.sroa.speculated.i to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bu
  %i.bw = sub nuw i32 %4, %.sroa.speculated.i
  %i.bx = shl i32 %i.bw, 3
  %i.by = zext i32 %i.bx to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bv, ptr align 8 %3, i64 %i.by, i1 false)
end_hunk_60
