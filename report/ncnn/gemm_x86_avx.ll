inline.NumInlined: 233
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 131
loop-unroll.NumUnrolled: 135
begin_hunk_0_@_ZN4ncnnL21transpose_pack_A_tileERKNS_3MatERS0_iiii:bb.a
.loopexit44:                                      ; preds = %.loopexit44.loopexit228.unr-lcssa, %.lr.ph106.epil, %.lr.ph101.epil.preheader, %.loopexit44.loopexit227.unr-lcssa, %.lr.ph96, %bb.j, %bb.k, %bb.l, %bb.m
  %.20 = phi ptr [ %.14109, %bb.j ], [ %.14109, %bb.m ], [ %i.kq, %.lr.ph96 ], [ %i.mx, %.lr.ph101.epil.preheader ], [ %.14109, %bb.l ], [ %.14109, %bb.k ], [ %i.ln, %.loopexit44.loopexit227.unr-lcssa ], [ %i.mp, %.loopexit44.loopexit228.unr-lcssa ], [ %i.nc, %.lr.ph106.epil ] ; 2 uses
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 2 ; 3 uses
  %i.ne = icmp slt i64 %indvars.iv.next152, %invariant.op203
  br i1 %i.ne, label %bb.j, label %.preheader.loopexit, !llvm.loop !131

bb.n:                                             ; preds = %.lr.ph130, %.loopexit
  %indvars.iv155 = phi i64 [ %i.ju, %.lr.ph130 ], [ %indvars.iv.next156, %.loopexit ] ; 4 uses
  %.21129 = phi ptr [ %.14.lcssa, %.lr.ph130 ], [ %.27, %.loopexit ] ; 10 uses
  switch i32 %i.b, label %.loopexit [
    i32 8, label %bb.o
    i32 4, label %bb.p
    i32 1, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  br i1 %i.jr, label %.lr.ph116.preheader, label %.loopexit

.lr.ph116.preheader:                              ; preds = %bb.o
  %i.nf = load ptr, ptr %0, align 8, !tbaa !18
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.jq
  %i.nh = add nsw i64 %indvars.iv155, %i.jv
  %.idx174 = shl nsw i64 %i.nh, 5
  %i.ni = getelementptr inbounds i8, ptr %i.ng, i64 %.idx174 ; 2 uses
  br i1 %i.kf, label %.lr.ph116.epil.preheader, label %.lr.ph116

.lr.ph116:                                        ; preds = %.lr.ph116.preheader, %.lr.ph116
  %.0300114 = phi ptr [ %i.nu, %.lr.ph116 ], [ %i.ni, %.lr.ph116.preheader ] ; 2 uses
  %.22113 = phi ptr [ %i.nt, %.lr.ph116 ], [ %.21129, %.lr.ph116.preheader ] ; 5 uses
  %niter285 = phi i32 [ %niter285.next.3, %.lr.ph116 ], [ 0, %.lr.ph116.preheader ]
  %i.nj = load <8 x float>, ptr %.0300114, align 32, !tbaa !116
  store <8 x float> %i.nj, ptr %.22113, align 32, !tbaa !116
  %i.nk = getelementptr inbounds nuw i8, ptr %.22113, i64 32
  %i.nl = getelementptr inbounds nuw i8, ptr %.0300114, i64 %.idx324 ; 2 uses
  %i.nm = load <8 x float>, ptr %i.nl, align 32, !tbaa !116
  store <8 x float> %i.nm, ptr %i.nk, align 32, !tbaa !116
  %i.nn = getelementptr inbounds nuw i8, ptr %.22113, i64 64
  %i.no = getelementptr inbounds nuw i8, ptr %i.nl, i64 %.idx324 ; 2 uses
  %i.np = load <8 x float>, ptr %i.no, align 32, !tbaa !116
  store <8 x float> %i.np, ptr %i.nn, align 32, !tbaa !116
  %i.nq = getelementptr inbounds nuw i8, ptr %.22113, i64 96
  %i.nr = getelementptr inbounds nuw i8, ptr %i.no, i64 %.idx324 ; 2 uses
  %i.ns = load <8 x float>, ptr %i.nr, align 32, !tbaa !116
  store <8 x float> %i.ns, ptr %i.nq, align 32, !tbaa !116
  %i.nt = getelementptr inbounds nuw i8, ptr %.22113, i64 128 ; 3 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nr, i64 %.idx324 ; 2 uses
  %niter285.next.3 = add i32 %niter285, 4         ; 2 uses
  %niter285.ncmp.3.not = icmp eq i32 %niter285.next.3, %unroll_iter284
  br i1 %niter285.ncmp.3.not, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph116, !llvm.loop !132

bb.p:                                             ; preds = %bb.n
  br i1 %i.js, label %.lr.ph121.preheader, label %.loopexit

.lr.ph121.preheader:                              ; preds = %bb.p
  %i.nv = load ptr, ptr %0, align 8, !tbaa !18
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %i.jq
  %i.nx = add nsw i64 %indvars.iv155, %i.jv
  %.idx175 = shl nsw i64 %i.nx, 4
  %i.ny = getelementptr inbounds i8, ptr %i.nw, i64 %.idx175 ; 2 uses
  br i1 %i.ke, label %.lr.ph121.epil.preheader, label %.lr.ph121

.lr.ph121:                                        ; preds = %.lr.ph121.preheader, %.lr.ph121
  %.0298119 = phi ptr [ %i.ok, %.lr.ph121 ], [ %i.ny, %.lr.ph121.preheader ] ; 2 uses
  %.24118 = phi ptr [ %i.oj, %.lr.ph121 ], [ %.21129, %.lr.ph121.preheader ] ; 5 uses
  %niter278 = phi i32 [ %niter278.next.3, %.lr.ph121 ], [ 0, %.lr.ph121.preheader ]
  %i.nz = load <4 x float>, ptr %.0298119, align 16, !tbaa !116
  store <4 x float> %i.nz, ptr %.24118, align 16, !tbaa !116
  %i.oa = getelementptr inbounds nuw i8, ptr %.24118, i64 16
  %i.ob = getelementptr inbounds nuw i8, ptr %.0298119, i64 %.idx ; 2 uses
  %i.oc = load <4 x float>, ptr %i.ob, align 16, !tbaa !116
  store <4 x float> %i.oc, ptr %i.oa, align 16, !tbaa !116
  %i.od = getelementptr inbounds nuw i8, ptr %.24118, i64 32
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ob, i64 %.idx ; 2 uses
  %i.of = load <4 x float>, ptr %i.oe, align 16, !tbaa !116
  store <4 x float> %i.of, ptr %i.od, align 16, !tbaa !116
  %i.og = getelementptr inbounds nuw i8, ptr %.24118, i64 48
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oe, i64 %.idx ; 2 uses
  %i.oi = load <4 x float>, ptr %i.oh, align 16, !tbaa !116
  store <4 x float> %i.oi, ptr %i.og, align 16, !tbaa !116
  %i.oj = getelementptr inbounds nuw i8, ptr %.24118, i64 64 ; 3 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oh, i64 %.idx ; 2 uses
  %niter278.next.3 = add nuw nsw i32 %niter278, 4 ; 2 uses
  %niter278.ncmp.3.not = icmp eq i32 %niter278.next.3, %unroll_iter277
  br i1 %niter278.ncmp.3.not, label %.loopexit.loopexit223.unr-lcssa, label %.lr.ph121, !llvm.loop !133

bb.q:                                             ; preds = %bb.n
  br i1 %i.jt, label %.lr.ph126.preheader, label %.loopexit

.lr.ph126.preheader:                              ; preds = %bb.q
  %i.ol = load ptr, ptr %0, align 8, !tbaa !18
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %i.jq
  %i.on = getelementptr [4 x i8], ptr %i.om, i64 %indvars.iv155
  %i.oo = getelementptr [4 x i8], ptr %i.on, i64 %i.jv ; 2 uses
  br i1 %i.kd, label %.lr.ph126.epil.preheader, label %.lr.ph126

.lr.ph126:                                        ; preds = %.lr.ph126.preheader, %.lr.ph126
  %.0296124 = phi ptr [ %i.pm, %.lr.ph126 ], [ %i.oo, %.lr.ph126.preheader ] ; 2 uses
  %.26123 = phi ptr [ %i.pl, %.lr.ph126 ], [ %.21129, %.lr.ph126.preheader ] ; 9 uses
  %niter271 = phi i32 [ %niter271.next.7, %.lr.ph126 ], [ 0, %.lr.ph126.preheader ]
  %i.op = load float, ptr %.0296124, align 4, !tbaa !68
  store float %i.op, ptr %.26123, align 4, !tbaa !68
  %i.oq = getelementptr inbounds nuw i8, ptr %.26123, i64 4
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %.0296124, i64 %i.k ; 2 uses
  %i.os = load float, ptr %i.or, align 4, !tbaa !68
  store float %i.os, ptr %i.oq, align 4, !tbaa !68
  %i.ot = getelementptr inbounds nuw i8, ptr %.26123, i64 8
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %i.k ; 2 uses
  %i.ov = load float, ptr %i.ou, align 4, !tbaa !68
  store float %i.ov, ptr %i.ot, align 4, !tbaa !68
  %i.ow = getelementptr inbounds nuw i8, ptr %.26123, i64 12
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %i.k ; 2 uses
  %i.oy = load float, ptr %i.ox, align 4, !tbaa !68
  store float %i.oy, ptr %i.ow, align 4, !tbaa !68
  %i.oz = getelementptr inbounds nuw i8, ptr %.26123, i64 16
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %i.k ; 2 uses
  %i.pb = load float, ptr %i.pa, align 4, !tbaa !68
  store float %i.pb, ptr %i.oz, align 4, !tbaa !68
  %i.pc = getelementptr inbounds nuw i8, ptr %.26123, i64 20
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.pa, i64 %i.k ; 2 uses
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !68
  store float %i.pe, ptr %i.pc, align 4, !tbaa !68
  %i.pf = getelementptr inbounds nuw i8, ptr %.26123, i64 24
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %i.k ; 2 uses
  %i.ph = load float, ptr %i.pg, align 4, !tbaa !68
  store float %i.ph, ptr %i.pf, align 4, !tbaa !68
  %i.pi = getelementptr inbounds nuw i8, ptr %.26123, i64 28
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %i.k ; 2 uses
  %i.pk = load float, ptr %i.pj, align 4, !tbaa !68
  store float %i.pk, ptr %i.pi, align 4, !tbaa !68
  %i.pl = getelementptr inbounds nuw i8, ptr %.26123, i64 32 ; 3 uses
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.pj, i64 %i.k ; 2 uses
  %niter271.next.7 = add nuw nsw i32 %niter271, 8 ; 2 uses
  %niter271.ncmp.7 = icmp eq i32 %niter271.next.7, %unroll_iter270
  br i1 %niter271.ncmp.7, label %.loopexit.loopexit224.unr-lcssa, label %.lr.ph126, !llvm.loop !134

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph116
  br i1 %lcmp.mod281.not, label %.loopexit, label %.lr.ph116.epil.preheader

.lr.ph116.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph116.preheader
  %.0300114.epil.init = phi ptr [ %i.ni, %.lr.ph116.preheader ], [ %i.nu, %.loopexit.loopexit.unr-lcssa ]
  %.22113.epil.init = phi ptr [ %.21129, %.lr.ph116.preheader ], [ %i.nt, %.loopexit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod283)
  br label %.lr.ph116.epil

.lr.ph116.epil:                                   ; preds = %.lr.ph116.epil, %.lr.ph116.epil.preheader
  %.0300114.epil = phi ptr [ %i.pp, %.lr.ph116.epil ], [ %.0300114.epil.init, %.lr.ph116.epil.preheader ] ; 2 uses
  %.22113.epil = phi ptr [ %i.po, %.lr.ph116.epil ], [ %.22113.epil.init, %.lr.ph116.epil.preheader ] ; 2 uses
  %epil.iter280 = phi i32 [ %epil.iter280.next, %.lr.ph116.epil ], [ 0, %.lr.ph116.epil.preheader ]
  %i.pn = load <8 x float>, ptr %.0300114.epil, align 32, !tbaa !116
  store <8 x float> %i.pn, ptr %.22113.epil, align 32, !tbaa !116
  %i.po = getelementptr inbounds nuw i8, ptr %.22113.epil, i64 32 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %.0300114.epil, i64 %.idx324
  %epil.iter280.next = add i32 %epil.iter280, 1   ; 2 uses
  %epil.iter280.cmp.not = icmp eq i32 %epil.iter280.next, %xtraiter279
  br i1 %epil.iter280.cmp.not, label %.loopexit, label %.lr.ph116.epil, !llvm.loop !135

.loopexit.loopexit223.unr-lcssa:                  ; preds = %.lr.ph121
  br i1 %lcmp.mod274.not, label %.loopexit, label %.lr.ph121.epil.preheader

.lr.ph121.epil.preheader:                         ; preds = %.loopexit.loopexit223.unr-lcssa, %.lr.ph121.preheader
  %.0298119.epil.init = phi ptr [ %i.ny, %.lr.ph121.preheader ], [ %i.ok, %.loopexit.loopexit223.unr-lcssa ]
  %.24118.epil.init = phi ptr [ %.21129, %.lr.ph121.preheader ], [ %i.oj, %.loopexit.loopexit223.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod276)
  br label %.lr.ph121.epil

.lr.ph121.epil:                                   ; preds = %.lr.ph121.epil, %.lr.ph121.epil.preheader
  %.0298119.epil = phi ptr [ %i.ps, %.lr.ph121.epil ], [ %.0298119.epil.init, %.lr.ph121.epil.preheader ] ; 2 uses
  %.24118.epil = phi ptr [ %i.pr, %.lr.ph121.epil ], [ %.24118.epil.init, %.lr.ph121.epil.preheader ] ; 2 uses
  %epil.iter273 = phi i32 [ %epil.iter273.next, %.lr.ph121.epil ], [ 0, %.lr.ph121.epil.preheader ]
  %i.pq = load <4 x float>, ptr %.0298119.epil, align 16, !tbaa !116
  store <4 x float> %i.pq, ptr %.24118.epil, align 16, !tbaa !116
  %i.pr = getelementptr inbounds nuw i8, ptr %.24118.epil, i64 16 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %.0298119.epil, i64 %.idx
  %epil.iter273.next = add i32 %epil.iter273, 1   ; 2 uses
  %epil.iter273.cmp.not = icmp eq i32 %epil.iter273.next, %xtraiter272
  br i1 %epil.iter273.cmp.not, label %.loopexit, label %.lr.ph121.epil, !llvm.loop !136

.loopexit.loopexit224.unr-lcssa:                  ; preds = %.lr.ph126
  br i1 %lcmp.mod267.not, label %.loopexit, label %.lr.ph126.epil.preheader

.lr.ph126.epil.preheader:                         ; preds = %.loopexit.loopexit224.unr-lcssa, %.lr.ph126.preheader
  %.0296124.epil.init = phi ptr [ %i.oo, %.lr.ph126.preheader ], [ %i.pm, %.loopexit.loopexit224.unr-lcssa ]
  %.26123.epil.init = phi ptr [ %.21129, %.lr.ph126.preheader ], [ %i.pl, %.loopexit.loopexit224.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod269)
  br label %.lr.ph126.epil

.lr.ph126.epil:                                   ; preds = %.lr.ph126.epil, %.lr.ph126.epil.preheader
  %.0296124.epil = phi ptr [ %i.pv, %.lr.ph126.epil ], [ %.0296124.epil.init, %.lr.ph126.epil.preheader ] ; 2 uses
  %.26123.epil = phi ptr [ %i.pu, %.lr.ph126.epil ], [ %.26123.epil.init, %.lr.ph126.epil.preheader ] ; 2 uses
  %epil.iter266 = phi i32 [ %epil.iter266.next, %.lr.ph126.epil ], [ 0, %.lr.ph126.epil.preheader ]
  %i.pt = load float, ptr %.0296124.epil, align 4, !tbaa !68
  store float %i.pt, ptr %.26123.epil, align 4, !tbaa !68
  %i.pu = getelementptr inbounds nuw i8, ptr %.26123.epil, i64 4 ; 2 uses
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %.0296124.epil, i64 %i.k
  %epil.iter266.next = add i32 %epil.iter266, 1   ; 2 uses
  %epil.iter266.cmp.not = icmp eq i32 %epil.iter266.next, %xtraiter265
  br i1 %epil.iter266.cmp.not, label %.loopexit, label %.lr.ph126.epil, !llvm.loop !137

.loopexit:                                        ; preds = %.loopexit.loopexit224.unr-lcssa, %.lr.ph126.epil, %.loopexit.loopexit223.unr-lcssa, %.lr.ph121.epil, %.loopexit.loopexit.unr-lcssa, %.lr.ph116.epil, %bb.n, %bb.o, %bb.p, %bb.q
  %.27 = phi ptr [ %.21129, %bb.n ], [ %.21129, %bb.q ], [ %i.po, %.lr.ph116.epil ], [ %i.pr, %.lr.ph121.epil ], [ %.21129, %bb.p ], [ %.21129, %bb.o ], [ %i.nt, %.loopexit.loopexit.unr-lcssa ], [ %i.oj, %.loopexit.loopexit223.unr-lcssa ], [ %i.pl, %.loopexit.loopexit224.unr-lcssa ], [ %i.pu, %.lr.ph126.epil ]
  %indvars.iv.next156 = add nsw i64 %indvars.iv155, 1 ; 2 uses
  %exitcond158.not = icmp eq i64 %indvars.iv.next156, %wide.trip.count
  br i1 %exitcond158.not, label %._crit_edge, label %bb.n, !llvm.loop !138

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL11pack_A_tileERKNS_3MatERS0_iiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree writeonly %.0.val, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !87
  %i.e = icmp eq i32 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load i32, ptr %i.h, align 4
  %i.j = sext i32 %i.i to i64
  %i.k = select i1 %i.e, i64 %i.g, i64 %i.j       ; 22 uses
  %i.l = icmp sgt i32 %2, 7
  br i1 %i.l, label %.lr.ph99, label %.preheader50

.lr.ph99:                                         ; preds = %bb.a
  %i.m = shl nsw i32 %3, 3
  %i.n = sext i32 %i.m to i64
  %i.o = icmp sgt i32 %4, 0                       ; 2 uses
  %i.p = shl nsw i32 %3, 2
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = sext i32 %3 to i64                       ; 8 uses
  %i.s = icmp sgt i32 %4, 7
  %i.t = and i32 %4, -8
  %i.u = zext nneg i32 %2 to i64
  %i.v = sext i32 %1 to i64                       ; 3 uses
  %i.w = add i32 %4, -1                           ; 2 uses
  %xtraiter = and i32 %4, 3                       ; 3 uses
  %i.x = icmp ult i32 %i.w, 3
  %unroll_iter = and i32 %4, 2147483644
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod623 = icmp ne i32 %xtraiter, 0
  %xtraiter624 = and i32 %4, 7                    ; 3 uses
  %i.y = icmp ult i32 %i.w, 7
  %unroll_iter629 = and i32 %4, 2147483640
  %lcmp.mod626.not = icmp eq i32 %xtraiter624, 0
  %lcmp.mod628 = icmp ne i32 %xtraiter624, 0
  br label %bb.d

.preheader50.loopexit:                            ; preds = %.loopexit52
  %i.z = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader50

.preheader50:                                     ; preds = %.preheader50.loopexit, %bb.a
  %.0327.lcssa = phi i32 [ 0, %bb.a ], [ %i.z, %.preheader50.loopexit ] ; 8 uses
  %.0324.lcssa = phi ptr [ %.0.val, %bb.a ], [ %.7, %.preheader50.loopexit ] ; 5 uses
  %i.aa = or disjoint i32 %.0327.lcssa, 3
  %i.ab = icmp slt i32 %i.aa, %2
  br i1 %i.ab, label %.lr.ph143, label %.preheader46

.lr.ph143:                                        ; preds = %.preheader50
  %i.ac = icmp eq i32 %i.b, 4                     ; 2 uses
  %i.ad = shl nsw i32 %3, 2
  %i.ae = sext i32 %i.ad to i64                   ; 2 uses
  %i.af = icmp sgt i32 %4, 0                      ; 2 uses
  %i.ag = icmp eq i32 %i.b, 1
  %i.ah = sext i32 %3 to i64                      ; 8 uses
  %i.ai = icmp sgt i32 %4, 7
  br i1 %i.ag, label %.lr.ph143.split.us.preheader, label %.lr.ph143.split

.lr.ph143.split.us.preheader:                     ; preds = %.lr.ph143
  %i.aj = and i32 %4, -8
  %i.ak = zext nneg i32 %.0327.lcssa to i64
  %i.al = sext i32 %1 to i64
  %i.am = sext i32 %2 to i64
  %invariant.op347 = add nsw i64 %i.am, -3
  %i.an = add i32 %4, -1
  %xtraiter638 = and i32 %4, 7                    ; 3 uses
  %i.ao = icmp ult i32 %i.an, 7
  %unroll_iter643 = and i32 %4, 2147483640
  %lcmp.mod640.not = icmp eq i32 %xtraiter638, 0
  %lcmp.mod642 = icmp ne i32 %xtraiter638, 0
  br label %.lr.ph143.split.us

.lr.ph143.split.us:                               ; preds = %.lr.ph143.split.us.preheader, %.loopexit.us
  %indvars.iv279 = phi i64 [ %i.ak, %.lr.ph143.split.us.preheader ], [ %indvars.iv.next280, %.loopexit.us ] ; 2 uses
  %.8142.us = phi ptr [ %.0324.lcssa, %.lr.ph143.split.us.preheader ], [ %.13.lcssa.us, %.loopexit.us ] ; 4 uses
  %.pre291 = load ptr, ptr %0, align 8, !tbaa !18 ; 5 uses
  %i.ap = add nsw i64 %indvars.iv279, %i.al       ; 7 uses
  %i.aq = mul i64 %i.k, %i.ap                     ; 2 uses
  br i1 %i.ac, label %bb.b, label %.loopexit49.us

bb.b:                                             ; preds = %.lr.ph143.split.us
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.pre291, i64 %i.aq ; 2 uses
  br i1 %i.af, label %.lr.ph105.us.preheader, label %.loopexit49.us.thread

.loopexit49.us.thread:                            ; preds = %bb.b
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.ah
  %i.at = add nsw i64 %i.ap, 1
  %i.au = mul i64 %i.k, %i.at
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.pre291, i64 %i.au
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.ah
  %i.ax = add nsw i64 %i.ap, 2
  %i.ay = mul i64 %i.k, %i.ax
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.pre291, i64 %i.ay
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.ah
  %i.bb = add nsw i64 %i.ap, 3
  %i.bc = mul i64 %i.k, %i.bb
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.pre291, i64 %i.bc
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.ah
  br label %.preheader48.us

.lr.ph105.us.preheader:                           ; preds = %bb.b
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.ae ; 2 uses
  br i1 %i.ao, label %.lr.ph105.us.epil.preheader, label %.lr.ph105.us

.lr.ph105.us:                                     ; preds = %.lr.ph105.us.preheader, %.lr.ph105.us
  %.9104.us = phi ptr [ %i.cc, %.lr.ph105.us ], [ %.8142.us, %.lr.ph105.us.preheader ] ; 9 uses
  %.0367102.us = phi ptr [ %i.cd, %.lr.ph105.us ], [ %i.bf, %.lr.ph105.us.preheader ] ; 9 uses
  %niter644 = phi i32 [ %niter644.next.7, %.lr.ph105.us ], [ 0, %.lr.ph105.us.preheader ]
  %i.bg = load <4 x float>, ptr %.0367102.us, align 16, !tbaa !116
  store <4 x float> %i.bg, ptr %.9104.us, align 16, !tbaa !116
  %i.bh = getelementptr inbounds nuw i8, ptr %.9104.us, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %.0367102.us, i64 16
  %i.bj = load <4 x float>, ptr %i.bi, align 16, !tbaa !116
  store <4 x float> %i.bj, ptr %i.bh, align 16, !tbaa !116
  %i.bk = getelementptr inbounds nuw i8, ptr %.9104.us, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %.0367102.us, i64 32
  %i.bm = load <4 x float>, ptr %i.bl, align 16, !tbaa !116
  store <4 x float> %i.bm, ptr %i.bk, align 16, !tbaa !116
  %i.bn = getelementptr inbounds nuw i8, ptr %.9104.us, i64 48
  %i.bo = getelementptr inbounds nuw i8, ptr %.0367102.us, i64 48
  %i.bp = load <4 x float>, ptr %i.bo, align 16, !tbaa !116
  store <4 x float> %i.bp, ptr %i.bn, align 16, !tbaa !116
  %i.bq = getelementptr inbounds nuw i8, ptr %.9104.us, i64 64
  %i.br = getelementptr inbounds nuw i8, ptr %.0367102.us, i64 64
  %i.bs = load <4 x float>, ptr %i.br, align 16, !tbaa !116
  store <4 x float> %i.bs, ptr %i.bq, align 16, !tbaa !116
  %i.bt = getelementptr inbounds nuw i8, ptr %.9104.us, i64 80
  %i.bu = getelementptr inbounds nuw i8, ptr %.0367102.us, i64 80
  %i.bv = load <4 x float>, ptr %i.bu, align 16, !tbaa !116
  store <4 x float> %i.bv, ptr %i.bt, align 16, !tbaa !116
  %i.bw = getelementptr inbounds nuw i8, ptr %.9104.us, i64 96
  %i.bx = getelementptr inbounds nuw i8, ptr %.0367102.us, i64 96
  %i.by = load <4 x float>, ptr %i.bx, align 16, !tbaa !116
  store <4 x float> %i.by, ptr %i.bw, align 16, !tbaa !116
  %i.bz = getelementptr inbounds nuw i8, ptr %.9104.us, i64 112
  %i.ca = getelementptr inbounds nuw i8, ptr %.0367102.us, i64 112
  %i.cb = load <4 x float>, ptr %i.ca, align 16, !tbaa !116
  store <4 x float> %i.cb, ptr %i.bz, align 16, !tbaa !116
  %i.cc = getelementptr inbounds nuw i8, ptr %.9104.us, i64 128 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.0367102.us, i64 128 ; 2 uses
  %niter644.next.7 = add nuw nsw i32 %niter644, 8 ; 2 uses
  %niter644.ncmp.7 = icmp eq i32 %niter644.next.7, %unroll_iter643
  br i1 %niter644.ncmp.7, label %.loopexit49.us.loopexit.unr-lcssa, label %.lr.ph105.us, !llvm.loop !139

.loopexit49.us.loopexit.unr-lcssa:                ; preds = %.lr.ph105.us
  br i1 %lcmp.mod640.not, label %.loopexit49.us.loopexit, label %.lr.ph105.us.epil.preheader

.lr.ph105.us.epil.preheader:                      ; preds = %.loopexit49.us.loopexit.unr-lcssa, %.lr.ph105.us.preheader
  %.9104.us.epil.init = phi ptr [ %.8142.us, %.lr.ph105.us.preheader ], [ %i.cc, %.loopexit49.us.loopexit.unr-lcssa ]
  %.0367102.us.epil.init = phi ptr [ %i.bf, %.lr.ph105.us.preheader ], [ %i.cd, %.loopexit49.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod642)
  br label %.lr.ph105.us.epil

.lr.ph105.us.epil:                                ; preds = %.lr.ph105.us.epil, %.lr.ph105.us.epil.preheader
  %.9104.us.epil = phi ptr [ %i.cf, %.lr.ph105.us.epil ], [ %.9104.us.epil.init, %.lr.ph105.us.epil.preheader ] ; 2 uses
  %.0367102.us.epil = phi ptr [ %i.cg, %.lr.ph105.us.epil ], [ %.0367102.us.epil.init, %.lr.ph105.us.epil.preheader ] ; 2 uses
  %epil.iter639 = phi i32 [ %epil.iter639.next, %.lr.ph105.us.epil ], [ 0, %.lr.ph105.us.epil.preheader ]
  %i.ce = load <4 x float>, ptr %.0367102.us.epil, align 16, !tbaa !116
  store <4 x float> %i.ce, ptr %.9104.us.epil, align 16, !tbaa !116
  %i.cf = getelementptr inbounds nuw i8, ptr %.9104.us.epil, i64 16 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0367102.us.epil, i64 16
  %epil.iter639.next = add i32 %epil.iter639, 1   ; 2 uses
  %epil.iter639.cmp.not = icmp eq i32 %epil.iter639.next, %xtraiter638
  br i1 %epil.iter639.cmp.not, label %.loopexit49.us.loopexit, label %.lr.ph105.us.epil, !llvm.loop !140

.loopexit49.us.loopexit:                          ; preds = %.lr.ph105.us.epil, %.loopexit49.us.loopexit.unr-lcssa
  %.lcssa593 = phi ptr [ %i.cc, %.loopexit49.us.loopexit.unr-lcssa ], [ %i.cf, %.lr.ph105.us.epil ]
  %.pre = load ptr, ptr %0, align 8, !tbaa !18
  br label %.loopexit49.us

.loopexit49.us:                                   ; preds = %.lr.ph143.split.us, %.loopexit49.us.loopexit
  %i.ch = phi ptr [ %.pre, %.loopexit49.us.loopexit ], [ %.pre291, %.lr.ph143.split.us ] ; 4 uses
  %.10.us = phi ptr [ %.lcssa593, %.loopexit49.us.loopexit ], [ %.8142.us, %.lr.ph143.split.us ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.aq
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.ah ; 2 uses
  %i.ck = add nsw i64 %i.ap, 1
  %i.cl = mul i64 %i.k, %i.ck
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.cl
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.ah ; 2 uses
  %i.co = add nsw i64 %i.ap, 2
  %i.cp = mul i64 %i.k, %i.co
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.cp
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.ah ; 2 uses
  %i.cs = add nsw i64 %i.ap, 3
  %i.ct = mul i64 %i.k, %i.cs
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.ct
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.ah ; 2 uses
  br i1 %i.ai, label %.lr.ph113.us, label %.preheader48.us

end_hunk_0
begin_hunk_1_@_ZN4ncnnL11pack_A_tileERKNS_3MatERS0_iiii:bb.a
  %.0321194 = phi ptr [ %i.wl, %.lr.ph197 ], [ %i.vu, %.lr.ph197.preheader ] ; 5 uses
  %.20193 = phi ptr [ %i.wk, %.lr.ph197 ], [ %.19215, %.lr.ph197.preheader ] ; 5 uses
  %niter656 = phi i32 [ %niter656.next.3, %.lr.ph197 ], [ 0, %.lr.ph197.preheader ]
  %i.wa = load <8 x float>, ptr %.0321194, align 1, !tbaa !116
  store <8 x float> %i.wa, ptr %.20193, align 1, !tbaa !116
  %i.wb = getelementptr inbounds nuw i8, ptr %.20193, i64 32
  %i.wc = getelementptr inbounds nuw i8, ptr %.0321194, i64 32
  %i.wd = load <8 x float>, ptr %i.wc, align 1, !tbaa !116
  store <8 x float> %i.wd, ptr %i.wb, align 1, !tbaa !116
  %i.we = getelementptr inbounds nuw i8, ptr %.20193, i64 64
  %i.wf = getelementptr inbounds nuw i8, ptr %.0321194, i64 64
  %i.wg = load <8 x float>, ptr %i.wf, align 1, !tbaa !116
  store <8 x float> %i.wg, ptr %i.we, align 1, !tbaa !116
  %i.wh = getelementptr inbounds nuw i8, ptr %.20193, i64 96
  %i.wi = getelementptr inbounds nuw i8, ptr %.0321194, i64 96
  %i.wj = load <8 x float>, ptr %i.wi, align 1, !tbaa !116
  store <8 x float> %i.wj, ptr %i.wh, align 1, !tbaa !116
  %i.wk = getelementptr inbounds nuw i8, ptr %.20193, i64 128 ; 3 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %.0321194, i64 128 ; 3 uses
  %niter656.next.3 = add i32 %niter656, 4         ; 2 uses
  %niter656.ncmp.3.not = icmp eq i32 %niter656.next.3, %unroll_iter655
  br i1 %niter656.ncmp.3.not, label %.preheader42.loopexit.unr-lcssa, label %.lr.ph197, !llvm.loop !202

.preheader:                                       ; preds = %.lr.ph204, %.preheader42
  %.21.lcssa = phi ptr [ %.20.lcssa, %.preheader42 ], [ %i.xv, %.lr.ph204 ] ; 7 uses
  %.1322.lcssa = phi ptr [ %.0321.lcssa, %.preheader42 ], [ %i.xw, %.lr.ph204 ] ; 6 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader42 ], [ %i.xx, %.lr.ph204 ] ; 5 uses
  %i.wm = icmp slt i32 %.1.lcssa, %4
  br i1 %i.wm, label %iter.check, label %._crit_edge212

iter.check:                                       ; preds = %.preheader
  %.1322.lcssa548 = ptrtoaddr ptr %.1322.lcssa to i64
  %.21.lcssa547 = ptrtoaddr ptr %.21.lcssa to i64
  %i.wn = xor i32 %.1.lcssa, -1
  %i.wo = add i32 %4, %i.wn                       ; 3 uses
  %i.wp = zext i32 %i.wo to i64
  %i.wq = add nuw nsw i64 %i.wp, 1                ; 5 uses
  %min.iters.check550 = icmp ult i32 %i.wo, 7
  %i.wr = sub i64 %.1322.lcssa548, %.21.lcssa547
  %diff.check = icmp ugt i64 %i.wr, -128
  %or.cond = select i1 %min.iters.check550, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph211.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check551 = icmp ult i32 %i.wo, 31
  br i1 %min.iters.check551, label %vec.epilog.ph, label %vector.ph552

vector.ph552:                                     ; preds = %vector.main.loop.iter.check
  %i.ws = and i64 %i.wq, 24
  %n.vec553 = and i64 %i.wq, 8589934560           ; 5 uses
  %i.wt = trunc i64 %n.vec553 to i32
  %i.wu = add i32 %.1.lcssa, %i.wt
  %i.wv = shl nuw nsw i64 %n.vec553, 2            ; 2 uses
  %i.ww = getelementptr i8, ptr %.1322.lcssa, i64 %i.wv
  %i.wx = getelementptr i8, ptr %.21.lcssa, i64 %i.wv ; 2 uses
  br label %vector.body554

vector.body554:                                   ; preds = %vector.body554, %vector.ph552
  %index555 = phi i64 [ 0, %vector.ph552 ], [ %index.next562, %vector.body554 ] ; 2 uses
  %i.wy = shl i64 %index555, 2                    ; 2 uses
  %next.gep556 = getelementptr i8, ptr %.1322.lcssa, i64 %i.wy ; 4 uses
  %next.gep557 = getelementptr i8, ptr %.21.lcssa, i64 %i.wy ; 4 uses
  %i.wz = getelementptr i8, ptr %next.gep556, i64 32
  %i.xa = getelementptr i8, ptr %next.gep556, i64 64
  %i.xb = getelementptr i8, ptr %next.gep556, i64 96
  %wide.load558 = load <8 x float>, ptr %next.gep556, align 4, !tbaa !68
  %wide.load559 = load <8 x float>, ptr %i.wz, align 4, !tbaa !68
  %wide.load560 = load <8 x float>, ptr %i.xa, align 4, !tbaa !68
  %wide.load561 = load <8 x float>, ptr %i.xb, align 4, !tbaa !68
  %i.xc = getelementptr i8, ptr %next.gep557, i64 32
  %i.xd = getelementptr i8, ptr %next.gep557, i64 64
  %i.xe = getelementptr i8, ptr %next.gep557, i64 96
  store <8 x float> %wide.load558, ptr %next.gep557, align 4, !tbaa !68
  store <8 x float> %wide.load559, ptr %i.xc, align 4, !tbaa !68
  store <8 x float> %wide.load560, ptr %i.xd, align 4, !tbaa !68
  store <8 x float> %wide.load561, ptr %i.xe, align 4, !tbaa !68
  %index.next562 = add nuw i64 %index555, 32      ; 2 uses
  %i.xf = icmp eq i64 %index.next562, %n.vec553
  br i1 %i.xf, label %middle.block563, label %vector.body554, !llvm.loop !203

middle.block563:                                  ; preds = %vector.body554
  %cmp.n564 = icmp eq i64 %i.wq, %n.vec553
  br i1 %cmp.n564, label %._crit_edge212, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block563
  %min.epilog.iters.check = icmp eq i64 %i.ws, 0
  br i1 %min.epilog.iters.check, label %.lr.ph211.preheader, label %vec.epilog.ph, !prof !204

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec553, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec568 = and i64 %i.wq, 8589934584           ; 4 uses
  %i.xg = trunc i64 %n.vec568 to i32
  %i.xh = add i32 %.1.lcssa, %i.xg
  %i.xi = shl nuw nsw i64 %n.vec568, 2            ; 2 uses
  %i.xj = getelementptr i8, ptr %.1322.lcssa, i64 %i.xi
  %i.xk = getelementptr i8, ptr %.21.lcssa, i64 %i.xi ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index569 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next573, %vec.epilog.vector.body ] ; 2 uses
  %i.xl = shl i64 %index569, 2                    ; 2 uses
  %next.gep570 = getelementptr i8, ptr %.1322.lcssa, i64 %i.xl
  %next.gep571 = getelementptr i8, ptr %.21.lcssa, i64 %i.xl
  %wide.load572 = load <8 x float>, ptr %next.gep570, align 4, !tbaa !68
  store <8 x float> %wide.load572, ptr %next.gep571, align 4, !tbaa !68
  %index.next573 = add nuw i64 %index569, 8       ; 2 uses
  %i.xm = icmp eq i64 %index.next573, %n.vec568
  br i1 %i.xm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !205

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n574 = icmp eq i64 %i.wq, %n.vec568
  br i1 %cmp.n574, label %._crit_edge212, label %.lr.ph211.preheader

.lr.ph211.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2210.ph = phi i32 [ %.1.lcssa, %iter.check ], [ %i.wu, %vec.epilog.iter.check ], [ %i.xh, %vec.epilog.middle.block ] ; 4 uses
  %.2323209.ph = phi ptr [ %.1322.lcssa, %iter.check ], [ %i.ww, %vec.epilog.iter.check ], [ %i.xj, %vec.epilog.middle.block ] ; 2 uses
  %.22208.ph = phi ptr [ %.21.lcssa, %iter.check ], [ %i.wx, %vec.epilog.iter.check ], [ %i.xk, %vec.epilog.middle.block ] ; 2 uses
  %i.xn = sub i32 %4, %.2210.ph
  %xtraiter657 = and i32 %i.xn, 7                 ; 2 uses
  %lcmp.mod658.not = icmp eq i32 %xtraiter657, 0
  br i1 %lcmp.mod658.not, label %.lr.ph211.prol.loopexit, label %.lr.ph211.prol

.lr.ph211.prol:                                   ; preds = %.lr.ph211.preheader, %.lr.ph211.prol
  %.2210.prol = phi i32 [ %i.xr, %.lr.ph211.prol ], [ %.2210.ph, %.lr.ph211.preheader ]
  %.2323209.prol = phi ptr [ %i.xq, %.lr.ph211.prol ], [ %.2323209.ph, %.lr.ph211.preheader ] ; 2 uses
  %.22208.prol = phi ptr [ %i.xp, %.lr.ph211.prol ], [ %.22208.ph, %.lr.ph211.preheader ] ; 2 uses
  %prol.iter659 = phi i32 [ %prol.iter659.next, %.lr.ph211.prol ], [ 0, %.lr.ph211.preheader ]
  %i.xo = load float, ptr %.2323209.prol, align 4, !tbaa !68
  store float %i.xo, ptr %.22208.prol, align 4, !tbaa !68
  %i.xp = getelementptr inbounds nuw i8, ptr %.22208.prol, i64 4 ; 3 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %.2323209.prol, i64 4 ; 2 uses
  %i.xr = add nuw nsw i32 %.2210.prol, 1          ; 2 uses
  %prol.iter659.next = add i32 %prol.iter659, 1   ; 2 uses
  %prol.iter659.cmp.not = icmp eq i32 %prol.iter659.next, %xtraiter657
  br i1 %prol.iter659.cmp.not, label %.lr.ph211.prol.loopexit, label %.lr.ph211.prol, !llvm.loop !206

.lr.ph211.prol.loopexit:                          ; preds = %.lr.ph211.prol, %.lr.ph211.preheader
  %.lcssa582.unr = phi ptr [ poison, %.lr.ph211.preheader ], [ %i.xp, %.lr.ph211.prol ]
  %.2210.unr = phi i32 [ %.2210.ph, %.lr.ph211.preheader ], [ %i.xr, %.lr.ph211.prol ]
  %.2323209.unr = phi ptr [ %.2323209.ph, %.lr.ph211.preheader ], [ %i.xq, %.lr.ph211.prol ]
  %.22208.unr = phi ptr [ %.22208.ph, %.lr.ph211.preheader ], [ %i.xp, %.lr.ph211.prol ]
  %i.xs = sub i32 %.2210.ph, %4
  %i.xt = icmp ugt i32 %i.xs, -8
  br i1 %i.xt, label %._crit_edge212, label %.lr.ph211

.lr.ph204:                                        ; preds = %.preheader42, %.lr.ph204
  %.1203 = phi i32 [ %i.xx, %.lr.ph204 ], [ %.0.lcssa, %.preheader42 ]
  %.1322202 = phi ptr [ %i.xw, %.lr.ph204 ], [ %.0321.lcssa, %.preheader42 ] ; 2 uses
  %.21201 = phi ptr [ %i.xv, %.lr.ph204 ], [ %.20.lcssa, %.preheader42 ] ; 2 uses
  %i.xu = load <4 x float>, ptr %.1322202, align 1, !tbaa !116
  store <4 x float> %i.xu, ptr %.21201, align 1, !tbaa !116
  %i.xv = getelementptr inbounds nuw i8, ptr %.21201, i64 16 ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %.1322202, i64 16 ; 2 uses
  %i.xx = add nuw nsw i32 %.1203, 4               ; 3 uses
  %i.xy = or disjoint i32 %i.xx, 3
  %i.xz = icmp slt i32 %i.xy, %4
  br i1 %i.xz, label %.lr.ph204, label %.preheader, !llvm.loop !207

.lr.ph211:                                        ; preds = %.lr.ph211.prol.loopexit, %.lr.ph211
  %.2210 = phi i32 [ %i.yy, %.lr.ph211 ], [ %.2210.unr, %.lr.ph211.prol.loopexit ]
  %.2323209 = phi ptr [ %i.yx, %.lr.ph211 ], [ %.2323209.unr, %.lr.ph211.prol.loopexit ] ; 9 uses
  %.22208 = phi ptr [ %i.yw, %.lr.ph211 ], [ %.22208.unr, %.lr.ph211.prol.loopexit ] ; 9 uses
  %i.ya = load float, ptr %.2323209, align 4, !tbaa !68
  store float %i.ya, ptr %.22208, align 4, !tbaa !68
  %i.yb = getelementptr inbounds nuw i8, ptr %.22208, i64 4
  %i.yc = getelementptr inbounds nuw i8, ptr %.2323209, i64 4
  %i.yd = load float, ptr %i.yc, align 4, !tbaa !68
  store float %i.yd, ptr %i.yb, align 4, !tbaa !68
  %i.ye = getelementptr inbounds nuw i8, ptr %.22208, i64 8
  %i.yf = getelementptr inbounds nuw i8, ptr %.2323209, i64 8
  %i.yg = load float, ptr %i.yf, align 4, !tbaa !68
  store float %i.yg, ptr %i.ye, align 4, !tbaa !68
  %i.yh = getelementptr inbounds nuw i8, ptr %.22208, i64 12
  %i.yi = getelementptr inbounds nuw i8, ptr %.2323209, i64 12
  %i.yj = load float, ptr %i.yi, align 4, !tbaa !68
  store float %i.yj, ptr %i.yh, align 4, !tbaa !68
  %i.yk = getelementptr inbounds nuw i8, ptr %.22208, i64 16
  %i.yl = getelementptr inbounds nuw i8, ptr %.2323209, i64 16
  %i.ym = load float, ptr %i.yl, align 4, !tbaa !68
  store float %i.ym, ptr %i.yk, align 4, !tbaa !68
  %i.yn = getelementptr inbounds nuw i8, ptr %.22208, i64 20
  %i.yo = getelementptr inbounds nuw i8, ptr %.2323209, i64 20
  %i.yp = load float, ptr %i.yo, align 4, !tbaa !68
  store float %i.yp, ptr %i.yn, align 4, !tbaa !68
  %i.yq = getelementptr inbounds nuw i8, ptr %.22208, i64 24
  %i.yr = getelementptr inbounds nuw i8, ptr %.2323209, i64 24
  %i.ys = load float, ptr %i.yr, align 4, !tbaa !68
  store float %i.ys, ptr %i.yq, align 4, !tbaa !68
  %i.yt = getelementptr inbounds nuw i8, ptr %.22208, i64 28
  %i.yu = getelementptr inbounds nuw i8, ptr %.2323209, i64 28
  %i.yv = load float, ptr %i.yu, align 4, !tbaa !68
  store float %i.yv, ptr %i.yt, align 4, !tbaa !68
  %i.yw = getelementptr inbounds nuw i8, ptr %.22208, i64 32 ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %.2323209, i64 32
  %i.yy = add nuw nsw i32 %.2210, 8               ; 2 uses
  %exitcond286.not.7 = icmp eq i32 %i.yy, %4
  br i1 %exitcond286.not.7, label %._crit_edge212, label %.lr.ph211, !llvm.loop !208

._crit_edge212:                                   ; preds = %.lr.ph211.prol.loopexit, %.lr.ph211, %middle.block563, %vec.epilog.middle.block, %.preheader
  %.22.lcssa = phi ptr [ %.21.lcssa, %.preheader ], [ %i.xk, %vec.epilog.middle.block ], [ %i.wx, %middle.block563 ], [ %.lcssa582.unr, %.lr.ph211.prol.loopexit ], [ %i.yw, %.lr.ph211 ]
  %indvars.iv.next288 = add nsw i64 %indvars.iv287, 1 ; 2 uses
  %exitcond290.not = icmp eq i64 %indvars.iv.next288, %wide.trip.count
  br i1 %exitcond290.not, label %._crit_edge217, label %bb.i, !llvm.loop !209

._crit_edge217:                                   ; preds = %._crit_edge212, %.preheader43
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare !callback !210 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #9

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnn12Gemm_x86_avx15create_pipelineERKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef readonly captures(none) %8) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !45
  %i.h = load i32, ptr %0, align 4, !tbaa !45     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !45
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !45
  %i.k = load i32, ptr %i.a, align 4, !tbaa !45   ; 2 uses
  %.not67 = icmp sgt i32 %i.k, %i.j
  br i1 %.not67, label %._crit_edge, label %.noexc41.lr.ph

.noexc41.lr.ph:                                   ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 656
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 700
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 720
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 672
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 220
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 360 ; 2 uses
  br label %.noexc41

.noexc41:                                         ; preds = %.noexc41.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.068 = phi i32 [ %i.k, %.noexc41.lr.ph ], [ %i.aq, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.r = load i32, ptr %3, align 4, !tbaa !45     ; 2 uses
  %i.s = sdiv i32 %.068, %i.r                     ; 2 uses
  %i.t = srem i32 %.068, %i.r                     ; 2 uses
  %i.u = load i32, ptr %4, align 4, !tbaa !45     ; 2 uses
  %i.v = mul nsw i32 %i.u, %i.s                   ; 3 uses
  %i.w = load i32, ptr %5, align 4, !tbaa !45     ; 2 uses
  %i.x = mul nsw i32 %i.w, %i.t                   ; 3 uses
  %i.y = load i32, ptr %6, align 4, !tbaa !45
  %i.z = sub nsw i32 %i.y, %i.v
  %.sroa.speculated64 = call i32 @llvm.smin.i32(i32 %i.u, i32 %i.z) ; 2 uses
  %i.aa = load i32, ptr %7, align 4, !tbaa !45
  %i.ab = sub nsw i32 %i.aa, %i.x
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.w, i32 %i.ab) ; 2 uses
  %i.ac = load i32, ptr %i.m, align 4, !tbaa !88, !noalias !212
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !18, !noalias !212
  %i.ae = load i64, ptr %i.n, align 8, !tbaa !20, !noalias !212
  %i.af = sext i32 %i.s to i64
  %i.ag = mul i64 %i.ae, %i.af
  %i.ah = load i64, ptr %i.o, align 8, !tbaa !59, !noalias !212 ; 2 uses
  %i.ai = mul i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ai
  %i.ak = sext i32 %i.ac to i64
  %i.al = sext i32 %i.t to i64
  %i.am = mul nsw i64 %i.ak, %i.al
  %i.an = mul i64 %i.am, %i.ah
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.an ; 2 uses
  %i.ap = load i32, ptr %i.p, align 4, !tbaa !86
  %.not32 = icmp eq i32 %i.ap, 0
  br i1 %.not32, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc41
  call fastcc void @_ZN4ncnnL11pack_B_tileERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated64, i32 noundef %i.x, i32 noundef %.sroa.speculated)
  br label %_ZN4ncnn3MatD2Ev.exit

bb.d:                                             ; preds = %.noexc41
  call fastcc void @_ZN4ncnnL21transpose_pack_B_tileERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated64, i32 noundef %i.x, i32 noundef %.sroa.speculated)
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.d, %bb.c
  %i.aq = add nsw i32 %.068, 1
  %i.ar = load i32, ptr %i.b, align 4, !tbaa !45
  %.not.not = icmp slt i32 %.068, %i.ar
  br i1 %.not.not, label %.noexc41, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL11pack_B_tileERKNS_3MatERS0_iiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree writeonly %.0.val, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !87
  %i.e = icmp eq i32 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load i32, ptr %i.h, align 4
  %i.j = sext i32 %i.i to i64
  %i.k = select i1 %i.e, i64 %i.g, i64 %i.j       ; 38 uses
  %i.l = icmp sgt i32 %2, 11
  br i1 %i.l, label %.lr.ph203, label %.preheader99

.lr.ph203:                                        ; preds = %bb.a
  %i.m = shl nsw i32 %3, 3
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = icmp slt i32 %4, 1                       ; 2 uses
  %i.p = shl nsw i32 %3, 2
  %i.q = sext i32 %i.p to i64                     ; 3 uses
  %i.r = icmp sgt i32 %4, 0
  %i.s = sext i32 %3 to i64                       ; 12 uses
  %i.t = icmp sgt i32 %4, 7
  %i.u = and i32 %4, -8
  %i.v = sext i32 %1 to i64                       ; 2 uses
  %i.w = zext nneg i32 %2 to i64
  %i.x = add i32 %4, -1                           ; 3 uses
  %xtraiter = and i32 %4, 1
  %i.y = icmp eq i32 %i.x, 0
  %unroll_iter = and i32 %4, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod1025 = trunc i32 %4 to i1
  %xtraiter1026 = and i32 %4, 3                   ; 3 uses
  %i.z = icmp ult i32 %i.x, 3
  %unroll_iter1030 = and i32 %4, 2147483644
  %lcmp.mod1027.not = icmp eq i32 %xtraiter1026, 0
  %lcmp.mod1029 = icmp ne i32 %xtraiter1026, 0
  %xtraiter1032 = and i32 %4, 3                   ; 3 uses
  %i.aa = icmp ult i32 %i.x, 3
  %unroll_iter1037 = and i32 %4, 2147483644
  %lcmp.mod1034.not = icmp eq i32 %xtraiter1032, 0
  %lcmp.mod1036 = icmp ne i32 %xtraiter1032, 0
  br label %bb.b

.preheader99.loopexit:                            ; preds = %.loopexit101
  %i.ab = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader99

.preheader99:                                     ; preds = %.preheader99.loopexit, %bb.a
  %.0746.lcssa = phi i32 [ 0, %bb.a ], [ %i.ab, %.preheader99.loopexit ] ; 3 uses
  %.0743.lcssa = phi ptr [ %.0.val, %bb.a ], [ %.11, %.preheader99.loopexit ] ; 2 uses
  %i.ac = add nuw nsw i32 %.0746.lcssa, 7
  %i.ad = icmp slt i32 %i.ac, %2
  br i1 %i.ad, label %.lr.ph280, label %.preheader90

.lr.ph280:                                        ; preds = %.preheader99
  %i.ae = shl nsw i32 %3, 3
  %i.af = sext i32 %i.ae to i64                   ; 2 uses
  %i.ag = icmp slt i32 %4, 1                      ; 2 uses
  %i.ah = shl nsw i32 %3, 2
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %i.aj = icmp sgt i32 %4, 0
  %i.ak = sext i32 %3 to i64                      ; 8 uses
  %i.al = icmp sgt i32 %4, 7
  %i.am = and i32 %4, -8
  %i.an = zext nneg i32 %.0746.lcssa to i64
  %i.ao = sext i32 %1 to i64                      ; 3 uses
  %i.ap = sext i32 %2 to i64
  %invariant.op = add nsw i64 %i.ap, -15
  %i.aq = add i32 %4, -1                          ; 3 uses
  %xtraiter1039 = and i32 %4, 3                   ; 3 uses
  %i.ar = icmp ult i32 %i.aq, 3
  %unroll_iter1044 = and i32 %4, 2147483644
  %lcmp.mod1041.not = icmp eq i32 %xtraiter1039, 0
  %lcmp.mod1043 = icmp ne i32 %xtraiter1039, 0
  %xtraiter1046 = and i32 %4, 7                   ; 3 uses
  %i.as = icmp ult i32 %i.aq, 7
  %unroll_iter1051 = and i32 %4, 2147483640
  %lcmp.mod1048.not = icmp eq i32 %xtraiter1046, 0
  %lcmp.mod1050 = icmp ne i32 %xtraiter1046, 0
  %xtraiter1053 = and i32 %4, 3                   ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN4ncnnL11pack_B_tileERKNS_3MatERS0_iiii:bb.a
  %.0740368 = phi ptr [ %i.aom, %.lr.ph371 ], [ %i.anv, %.lr.ph371.preheader ] ; 5 uses
  %.41367 = phi ptr [ %i.aol, %.lr.ph371 ], [ %.40389, %.lr.ph371.preheader ] ; 5 uses
  %niter1092 = phi i32 [ %niter1092.next.3, %.lr.ph371 ], [ 0, %.lr.ph371.preheader ]
  %i.aob = load <8 x float>, ptr %.0740368, align 1, !tbaa !116
  store <8 x float> %i.aob, ptr %.41367, align 1, !tbaa !116
  %i.aoc = getelementptr inbounds nuw i8, ptr %.41367, i64 32
  %i.aod = getelementptr inbounds nuw i8, ptr %.0740368, i64 32
  %i.aoe = load <8 x float>, ptr %i.aod, align 1, !tbaa !116
  store <8 x float> %i.aoe, ptr %i.aoc, align 1, !tbaa !116
  %i.aof = getelementptr inbounds nuw i8, ptr %.41367, i64 64
  %i.aog = getelementptr inbounds nuw i8, ptr %.0740368, i64 64
  %i.aoh = load <8 x float>, ptr %i.aog, align 1, !tbaa !116
  store <8 x float> %i.aoh, ptr %i.aof, align 1, !tbaa !116
  %i.aoi = getelementptr inbounds nuw i8, ptr %.41367, i64 96
  %i.aoj = getelementptr inbounds nuw i8, ptr %.0740368, i64 96
  %i.aok = load <8 x float>, ptr %i.aoj, align 1, !tbaa !116
  store <8 x float> %i.aok, ptr %i.aoi, align 1, !tbaa !116
  %i.aol = getelementptr inbounds nuw i8, ptr %.41367, i64 128 ; 3 uses
  %i.aom = getelementptr inbounds nuw i8, ptr %.0740368, i64 128 ; 3 uses
  %niter1092.next.3 = add i32 %niter1092, 4       ; 2 uses
  %niter1092.ncmp.3.not = icmp eq i32 %niter1092.next.3, %unroll_iter1091
  br i1 %niter1092.ncmp.3.not, label %.preheader78.loopexit.unr-lcssa, label %.lr.ph371, !llvm.loop !293

.preheader:                                       ; preds = %.lr.ph378, %.preheader78
  %.42.lcssa = phi ptr [ %.41.lcssa, %.preheader78 ], [ %i.apw, %.lr.ph378 ] ; 7 uses
  %.1741.lcssa = phi ptr [ %.0740.lcssa, %.preheader78 ], [ %i.apx, %.lr.ph378 ] ; 6 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader78 ], [ %i.apy, %.lr.ph378 ] ; 5 uses
  %i.aon = icmp slt i32 %.1.lcssa, %4
  br i1 %i.aon, label %iter.check, label %._crit_edge386

iter.check:                                       ; preds = %.preheader
  %.1741.lcssa900 = ptrtoaddr ptr %.1741.lcssa to i64
  %.42.lcssa899 = ptrtoaddr ptr %.42.lcssa to i64
  %i.aoo = xor i32 %.1.lcssa, -1
  %i.aop = add i32 %4, %i.aoo                     ; 3 uses
  %i.aoq = zext i32 %i.aop to i64
  %i.aor = add nuw nsw i64 %i.aoq, 1              ; 5 uses
  %min.iters.check902 = icmp ult i32 %i.aop, 7
  %i.aos = sub i64 %.1741.lcssa900, %.42.lcssa899
  %diff.check = icmp ugt i64 %i.aos, -128
  %or.cond = select i1 %min.iters.check902, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph385.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check903 = icmp ult i32 %i.aop, 31
  br i1 %min.iters.check903, label %vec.epilog.ph, label %vector.ph904

vector.ph904:                                     ; preds = %vector.main.loop.iter.check
  %i.aot = and i64 %i.aor, 24
  %n.vec905 = and i64 %i.aor, 8589934560          ; 5 uses
  %i.aou = trunc i64 %n.vec905 to i32
  %i.aov = add i32 %.1.lcssa, %i.aou
  %i.aow = shl nuw nsw i64 %n.vec905, 2           ; 2 uses
  %i.aox = getelementptr i8, ptr %.1741.lcssa, i64 %i.aow
  %i.aoy = getelementptr i8, ptr %.42.lcssa, i64 %i.aow ; 2 uses
  br label %vector.body906

vector.body906:                                   ; preds = %vector.body906, %vector.ph904
  %index907 = phi i64 [ 0, %vector.ph904 ], [ %index.next914, %vector.body906 ] ; 2 uses
  %i.aoz = shl i64 %index907, 2                   ; 2 uses
  %next.gep908 = getelementptr i8, ptr %.1741.lcssa, i64 %i.aoz ; 4 uses
  %next.gep909 = getelementptr i8, ptr %.42.lcssa, i64 %i.aoz ; 4 uses
  %i.apa = getelementptr i8, ptr %next.gep908, i64 32
  %i.apb = getelementptr i8, ptr %next.gep908, i64 64
  %i.apc = getelementptr i8, ptr %next.gep908, i64 96
  %wide.load910 = load <8 x float>, ptr %next.gep908, align 4, !tbaa !68
  %wide.load911 = load <8 x float>, ptr %i.apa, align 4, !tbaa !68
  %wide.load912 = load <8 x float>, ptr %i.apb, align 4, !tbaa !68
  %wide.load913 = load <8 x float>, ptr %i.apc, align 4, !tbaa !68
  %i.apd = getelementptr i8, ptr %next.gep909, i64 32
  %i.ape = getelementptr i8, ptr %next.gep909, i64 64
  %i.apf = getelementptr i8, ptr %next.gep909, i64 96
  store <8 x float> %wide.load910, ptr %next.gep909, align 4, !tbaa !68
  store <8 x float> %wide.load911, ptr %i.apd, align 4, !tbaa !68
  store <8 x float> %wide.load912, ptr %i.ape, align 4, !tbaa !68
  store <8 x float> %wide.load913, ptr %i.apf, align 4, !tbaa !68
  %index.next914 = add nuw i64 %index907, 32      ; 2 uses
  %i.apg = icmp eq i64 %index.next914, %n.vec905
  br i1 %i.apg, label %middle.block915, label %vector.body906, !llvm.loop !294

middle.block915:                                  ; preds = %vector.body906
  %cmp.n916 = icmp eq i64 %i.aor, %n.vec905
  br i1 %cmp.n916, label %._crit_edge386, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block915
  %min.epilog.iters.check = icmp eq i64 %i.aot, 0
  br i1 %min.epilog.iters.check, label %.lr.ph385.preheader, label %vec.epilog.ph, !prof !204

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec905, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec920 = and i64 %i.aor, 8589934584          ; 4 uses
  %i.aph = trunc i64 %n.vec920 to i32
  %i.api = add i32 %.1.lcssa, %i.aph
  %i.apj = shl nuw nsw i64 %n.vec920, 2           ; 2 uses
  %i.apk = getelementptr i8, ptr %.1741.lcssa, i64 %i.apj
  %i.apl = getelementptr i8, ptr %.42.lcssa, i64 %i.apj ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index921 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next925, %vec.epilog.vector.body ] ; 2 uses
  %i.apm = shl i64 %index921, 2                   ; 2 uses
  %next.gep922 = getelementptr i8, ptr %.1741.lcssa, i64 %i.apm
  %next.gep923 = getelementptr i8, ptr %.42.lcssa, i64 %i.apm
  %wide.load924 = load <8 x float>, ptr %next.gep922, align 4, !tbaa !68
  store <8 x float> %wide.load924, ptr %next.gep923, align 4, !tbaa !68
  %index.next925 = add nuw i64 %index921, 8       ; 2 uses
  %i.apn = icmp eq i64 %index.next925, %n.vec920
  br i1 %i.apn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !295

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n926 = icmp eq i64 %i.aor, %n.vec920
  br i1 %cmp.n926, label %._crit_edge386, label %.lr.ph385.preheader

.lr.ph385.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2384.ph = phi i32 [ %.1.lcssa, %iter.check ], [ %i.aov, %vec.epilog.iter.check ], [ %i.api, %vec.epilog.middle.block ] ; 4 uses
  %.2742383.ph = phi ptr [ %.1741.lcssa, %iter.check ], [ %i.aox, %vec.epilog.iter.check ], [ %i.apk, %vec.epilog.middle.block ] ; 2 uses
  %.43382.ph = phi ptr [ %.42.lcssa, %iter.check ], [ %i.aoy, %vec.epilog.iter.check ], [ %i.apl, %vec.epilog.middle.block ] ; 2 uses
  %i.apo = sub i32 %4, %.2384.ph
  %xtraiter1093 = and i32 %i.apo, 7               ; 2 uses
  %lcmp.mod1094.not = icmp eq i32 %xtraiter1093, 0
  br i1 %lcmp.mod1094.not, label %.lr.ph385.prol.loopexit, label %.lr.ph385.prol

.lr.ph385.prol:                                   ; preds = %.lr.ph385.preheader, %.lr.ph385.prol
  %.2384.prol = phi i32 [ %i.aps, %.lr.ph385.prol ], [ %.2384.ph, %.lr.ph385.preheader ]
  %.2742383.prol = phi ptr [ %i.apr, %.lr.ph385.prol ], [ %.2742383.ph, %.lr.ph385.preheader ] ; 2 uses
  %.43382.prol = phi ptr [ %i.apq, %.lr.ph385.prol ], [ %.43382.ph, %.lr.ph385.preheader ] ; 2 uses
  %prol.iter1095 = phi i32 [ %prol.iter1095.next, %.lr.ph385.prol ], [ 0, %.lr.ph385.preheader ]
  %i.app = load float, ptr %.2742383.prol, align 4, !tbaa !68
  store float %i.app, ptr %.43382.prol, align 4, !tbaa !68
  %i.apq = getelementptr inbounds nuw i8, ptr %.43382.prol, i64 4 ; 3 uses
  %i.apr = getelementptr inbounds nuw i8, ptr %.2742383.prol, i64 4 ; 2 uses
  %i.aps = add nuw nsw i32 %.2384.prol, 1         ; 2 uses
  %prol.iter1095.next = add i32 %prol.iter1095, 1 ; 2 uses
  %prol.iter1095.cmp.not = icmp eq i32 %prol.iter1095.next, %xtraiter1093
  br i1 %prol.iter1095.cmp.not, label %.lr.ph385.prol.loopexit, label %.lr.ph385.prol, !llvm.loop !296

.lr.ph385.prol.loopexit:                          ; preds = %.lr.ph385.prol, %.lr.ph385.preheader
  %.lcssa934.unr = phi ptr [ poison, %.lr.ph385.preheader ], [ %i.apq, %.lr.ph385.prol ]
  %.2384.unr = phi i32 [ %.2384.ph, %.lr.ph385.preheader ], [ %i.aps, %.lr.ph385.prol ]
  %.2742383.unr = phi ptr [ %.2742383.ph, %.lr.ph385.preheader ], [ %i.apr, %.lr.ph385.prol ]
  %.43382.unr = phi ptr [ %.43382.ph, %.lr.ph385.preheader ], [ %i.apq, %.lr.ph385.prol ]
  %i.apt = sub i32 %.2384.ph, %4
  %i.apu = icmp ugt i32 %i.apt, -8
  br i1 %i.apu, label %._crit_edge386, label %.lr.ph385

.lr.ph378:                                        ; preds = %.preheader78, %.lr.ph378
  %.1377 = phi i32 [ %i.apy, %.lr.ph378 ], [ %.0.lcssa, %.preheader78 ]
  %.1741376 = phi ptr [ %i.apx, %.lr.ph378 ], [ %.0740.lcssa, %.preheader78 ] ; 2 uses
  %.42375 = phi ptr [ %i.apw, %.lr.ph378 ], [ %.41.lcssa, %.preheader78 ] ; 2 uses
  %i.apv = load <4 x float>, ptr %.1741376, align 1, !tbaa !116
  store <4 x float> %i.apv, ptr %.42375, align 1, !tbaa !116
  %i.apw = getelementptr inbounds nuw i8, ptr %.42375, i64 16 ; 2 uses
  %i.apx = getelementptr inbounds nuw i8, ptr %.1741376, i64 16 ; 2 uses
  %i.apy = add nuw nsw i32 %.1377, 4              ; 3 uses
  %i.apz = or disjoint i32 %i.apy, 3
  %i.aqa = icmp slt i32 %i.apz, %4
  br i1 %i.aqa, label %.lr.ph378, label %.preheader, !llvm.loop !297

.lr.ph385:                                        ; preds = %.lr.ph385.prol.loopexit, %.lr.ph385
  %.2384 = phi i32 [ %i.aqz, %.lr.ph385 ], [ %.2384.unr, %.lr.ph385.prol.loopexit ]
  %.2742383 = phi ptr [ %i.aqy, %.lr.ph385 ], [ %.2742383.unr, %.lr.ph385.prol.loopexit ] ; 9 uses
  %.43382 = phi ptr [ %i.aqx, %.lr.ph385 ], [ %.43382.unr, %.lr.ph385.prol.loopexit ] ; 9 uses
  %i.aqb = load float, ptr %.2742383, align 4, !tbaa !68
  store float %i.aqb, ptr %.43382, align 4, !tbaa !68
  %i.aqc = getelementptr inbounds nuw i8, ptr %.43382, i64 4
  %i.aqd = getelementptr inbounds nuw i8, ptr %.2742383, i64 4
  %i.aqe = load float, ptr %i.aqd, align 4, !tbaa !68
  store float %i.aqe, ptr %i.aqc, align 4, !tbaa !68
  %i.aqf = getelementptr inbounds nuw i8, ptr %.43382, i64 8
  %i.aqg = getelementptr inbounds nuw i8, ptr %.2742383, i64 8
  %i.aqh = load float, ptr %i.aqg, align 4, !tbaa !68
  store float %i.aqh, ptr %i.aqf, align 4, !tbaa !68
  %i.aqi = getelementptr inbounds nuw i8, ptr %.43382, i64 12
  %i.aqj = getelementptr inbounds nuw i8, ptr %.2742383, i64 12
  %i.aqk = load float, ptr %i.aqj, align 4, !tbaa !68
  store float %i.aqk, ptr %i.aqi, align 4, !tbaa !68
  %i.aql = getelementptr inbounds nuw i8, ptr %.43382, i64 16
  %i.aqm = getelementptr inbounds nuw i8, ptr %.2742383, i64 16
  %i.aqn = load float, ptr %i.aqm, align 4, !tbaa !68
  store float %i.aqn, ptr %i.aql, align 4, !tbaa !68
  %i.aqo = getelementptr inbounds nuw i8, ptr %.43382, i64 20
  %i.aqp = getelementptr inbounds nuw i8, ptr %.2742383, i64 20
  %i.aqq = load float, ptr %i.aqp, align 4, !tbaa !68
  store float %i.aqq, ptr %i.aqo, align 4, !tbaa !68
  %i.aqr = getelementptr inbounds nuw i8, ptr %.43382, i64 24
  %i.aqs = getelementptr inbounds nuw i8, ptr %.2742383, i64 24
  %i.aqt = load float, ptr %i.aqs, align 4, !tbaa !68
  store float %i.aqt, ptr %i.aqr, align 4, !tbaa !68
  %i.aqu = getelementptr inbounds nuw i8, ptr %.43382, i64 28
  %i.aqv = getelementptr inbounds nuw i8, ptr %.2742383, i64 28
  %i.aqw = load float, ptr %i.aqv, align 4, !tbaa !68
  store float %i.aqw, ptr %i.aqu, align 4, !tbaa !68
  %i.aqx = getelementptr inbounds nuw i8, ptr %.43382, i64 32 ; 2 uses
  %i.aqy = getelementptr inbounds nuw i8, ptr %.2742383, i64 32
  %i.aqz = add nuw nsw i32 %.2384, 8              ; 2 uses
  %exitcond525.not.7 = icmp eq i32 %i.aqz, %4
  br i1 %exitcond525.not.7, label %._crit_edge386, label %.lr.ph385, !llvm.loop !298

._crit_edge386:                                   ; preds = %.lr.ph385.prol.loopexit, %.lr.ph385, %middle.block915, %vec.epilog.middle.block, %.preheader
  %.43.lcssa = phi ptr [ %.42.lcssa, %.preheader ], [ %i.apl, %vec.epilog.middle.block ], [ %i.aoy, %middle.block915 ], [ %.lcssa934.unr, %.lr.ph385.prol.loopexit ], [ %i.aqx, %.lr.ph385 ]
  %indvars.iv.next527 = add nsw i64 %indvars.iv526, 1 ; 2 uses
  %exitcond529.not = icmp eq i64 %indvars.iv.next527, %wide.trip.count
  br i1 %exitcond529.not, label %._crit_edge391, label %bb.o, !llvm.loop !299

._crit_edge391:                                   ; preds = %._crit_edge386, %.preheader79
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL21transpose_pack_B_tileERKNS_3MatERS0_iiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree writeonly %.0.val, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !87
  %i.e = icmp eq i32 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load i32, ptr %i.h, align 4
  %i.j = sext i32 %i.i to i64
  %i.k = select i1 %i.e, i64 %i.g, i64 %i.j       ; 45 uses
  %i.l = icmp sgt i32 %2, 11
  br i1 %i.l, label %.lr.ph110, label %.preheader91

.lr.ph110:                                        ; preds = %bb.a
  %i.m = sext i32 %3 to i64
  %i.n = mul i64 %i.k, %i.m                       ; 3 uses
  %i.o = icmp sgt i32 %4, 7
  %.idx494 = shl i64 %i.k, 5
  %i.p = icmp sgt i32 %4, 3
  %.idx493 = shl i64 %i.k, 4
  %i.q = icmp sgt i32 %4, 0
  %i.r = sext i32 %1 to i64                       ; 3 uses
  %i.s = zext nneg i32 %2 to i64
  %xtraiter = and i32 %4, 1
  %i.t = icmp eq i32 %4, 1
  %unroll_iter = and i32 %4, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod333 = trunc i32 %4 to i1
  br label %bb.b

.preheader91.loopexit:                            ; preds = %.loopexit92
  %i.u = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader91

.preheader91:                                     ; preds = %.preheader91.loopexit, %bb.a
  %.0459.lcssa = phi i32 [ 0, %bb.a ], [ %i.u, %.preheader91.loopexit ] ; 3 uses
  %.0458.lcssa = phi ptr [ %.0.val, %bb.a ], [ %.6, %.preheader91.loopexit ] ; 2 uses
  %i.v = add nuw nsw i32 %.0459.lcssa, 7
  %i.w = icmp slt i32 %i.v, %2
  br i1 %i.w, label %.lr.ph130, label %.preheader87

.lr.ph130:                                        ; preds = %.preheader91
  %i.x = sext i32 %3 to i64
  %i.y = mul i64 %i.k, %i.x                       ; 3 uses
  %i.z = icmp sgt i32 %4, 7
  %.idx492 = shl i64 %i.k, 5
  %i.aa = icmp sgt i32 %4, 3
  %.idx491 = shl i64 %i.k, 4
  %i.ab = icmp sgt i32 %4, 0
  %i.ac = zext nneg i32 %.0459.lcssa to i64
  %i.ad = sext i32 %1 to i64                      ; 3 uses
  %i.ae = sext i32 %2 to i64
  %invariant.op = add nsw i64 %i.ae, -15
  %i.af = add i32 %4, -1
  %xtraiter334 = and i32 %4, 3                    ; 3 uses
  %i.ag = icmp ult i32 %i.af, 3
  %unroll_iter338 = and i32 %4, 2147483644
  %lcmp.mod335.not = icmp eq i32 %xtraiter334, 0
  %lcmp.mod337 = icmp ne i32 %xtraiter334, 0
  br label %bb.f

bb.b:                                             ; preds = %.lr.ph110, %.loopexit92
  %indvars.iv = phi i64 [ 0, %.lr.ph110 ], [ %indvars.iv.next, %.loopexit92 ] ; 5 uses
  %.0458109 = phi ptr [ %.0.val, %.lr.ph110 ], [ %.6, %.loopexit92 ] ; 8 uses
  switch i32 %i.b, label %.loopexit92 [
    i32 8, label %bb.c
    i32 4, label %bb.d
    i32 1, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  br i1 %i.o, label %.lr.ph.preheader, label %.loopexit92

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.ah = load ptr, ptr %0, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.n
  %i.aj = add nsw i64 %indvars.iv, %i.r
  %.idx238 = shl nsw i64 %i.aj, 5
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 %.idx238
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.197 = phi ptr [ %i.dd, %.lr.ph ], [ %.0458109, %.lr.ph.preheader ] ; 13 uses
  %.047096 = phi ptr [ %i.de, %.lr.ph ], [ %i.ak, %.lr.ph.preheader ] ; 13 uses
  %.047195 = phi i32 [ %i.df, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.al = load <8 x float>, ptr %.047096, align 32, !tbaa !116 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.047096, i64 32
  %i.an = load <8 x float>, ptr %i.am, align 32, !tbaa !116 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.047096, i64 64
  %i.ap = load <8 x float>, ptr %i.ao, align 32, !tbaa !116 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.047096, i64 96
  %i.ar = load <8 x float>, ptr %i.aq, align 32, !tbaa !116 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.047096, i64 128
  %i.at = load <8 x float>, ptr %i.as, align 32, !tbaa !116 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.047096, i64 160
  %i.av = load <8 x float>, ptr %i.au, align 32, !tbaa !116 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.047096, i64 192
  %i.ax = load <8 x float>, ptr %i.aw, align 32, !tbaa !116 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.047096, i64 224
  %i.az = load <8 x float>, ptr %i.ay, align 32, !tbaa !116 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.047096, i64 256
  %i.bb = load <8 x float>, ptr %i.ba, align 32, !tbaa !116 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.047096, i64 288
  %i.bd = load <8 x float>, ptr %i.bc, align 32, !tbaa !116 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.047096, i64 320
  %i.bf = load <8 x float>, ptr %i.be, align 32, !tbaa !116 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.047096, i64 352
  %i.bh = load <8 x float>, ptr %i.bg, align 32, !tbaa !116 ; 2 uses
  %i.bi = shufflevector <8 x float> %i.al, <8 x float> %i.an, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.bj = shufflevector <8 x float> %i.al, <8 x float> %i.an, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.bk = shufflevector <8 x float> %i.ap, <8 x float> %i.ar, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.bl = shufflevector <8 x float> %i.ap, <8 x float> %i.ar, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.bm = shufflevector <8 x float> %i.at, <8 x float> %i.av, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.bn = shufflevector <8 x float> %i.at, <8 x float> %i.av, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.bo = shufflevector <8 x float> %i.ax, <8 x float> %i.az, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.bp = shufflevector <8 x float> %i.ax, <8 x float> %i.az, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.bq = shufflevector <8 x float> %i.bb, <8 x float> %i.bd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.br = shufflevector <8 x float> %i.bb, <8 x float> %i.bd, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.bs = shufflevector <8 x float> %i.bf, <8 x float> %i.bh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.bt = shufflevector <8 x float> %i.bf, <8 x float> %i.bh, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.bu = shufflevector <8 x float> %i.bi, <8 x float> %i.bk, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.bv = shufflevector <8 x float> %i.bi, <8 x float> %i.bk, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.bw = shufflevector <8 x float> %i.bj, <8 x float> %i.bl, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.bx = shufflevector <8 x float> %i.bj, <8 x float> %i.bl, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.by = shufflevector <8 x float> %i.bm, <8 x float> %i.bo, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.bz = shufflevector <8 x float> %i.bm, <8 x float> %i.bo, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ca = shufflevector <8 x float> %i.bn, <8 x float> %i.bp, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.cb = shufflevector <8 x float> %i.bn, <8 x float> %i.bp, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.cc = shufflevector <8 x float> %i.bq, <8 x float> %i.bs, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.cd = shufflevector <8 x float> %i.bq, <8 x float> %i.bs, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ce = shufflevector <8 x float> %i.br, <8 x float> %i.bt, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.cf = shufflevector <8 x float> %i.br, <8 x float> %i.bt, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.cg = shufflevector <8 x float> %i.bu, <8 x float> %i.by, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ch = shufflevector <8 x float> %i.cc, <8 x float> %i.bv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ci = shufflevector <8 x float> %i.bz, <8 x float> %i.cd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.cj = shufflevector <8 x float> %i.bw, <8 x float> %i.ca, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ck = shufflevector <8 x float> %i.ce, <8 x float> %i.bx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.cl = shufflevector <8 x float> %i.cb, <8 x float> %i.cf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.cm = shufflevector <8 x float> %i.bu, <8 x float> %i.by, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.cn = shufflevector <8 x float> %i.cc, <8 x float> %i.bv, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.co = shufflevector <8 x float> %i.bz, <8 x float> %i.cd, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.cp = shufflevector <8 x float> %i.bw, <8 x float> %i.ca, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.cq = shufflevector <8 x float> %i.ce, <8 x float> %i.bx, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.cr = shufflevector <8 x float> %i.cb, <8 x float> %i.cf, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.cg, ptr %.197, align 32, !tbaa !116
  %i.cs = getelementptr inbounds nuw i8, ptr %.197, i64 32
  store <8 x float> %i.ch, ptr %i.cs, align 32, !tbaa !116
  %i.ct = getelementptr inbounds nuw i8, ptr %.197, i64 64
  store <8 x float> %i.ci, ptr %i.ct, align 32, !tbaa !116
  %i.cu = getelementptr inbounds nuw i8, ptr %.197, i64 96
  store <8 x float> %i.cj, ptr %i.cu, align 32, !tbaa !116
  %i.cv = getelementptr inbounds nuw i8, ptr %.197, i64 128
  store <8 x float> %i.ck, ptr %i.cv, align 32, !tbaa !116
  %i.cw = getelementptr inbounds nuw i8, ptr %.197, i64 160
  store <8 x float> %i.cl, ptr %i.cw, align 32, !tbaa !116
  %i.cx = getelementptr inbounds nuw i8, ptr %.197, i64 192
  store <8 x float> %i.cm, ptr %i.cx, align 32, !tbaa !116
  %i.cy = getelementptr inbounds nuw i8, ptr %.197, i64 224
  store <8 x float> %i.cn, ptr %i.cy, align 32, !tbaa !116
  %i.cz = getelementptr inbounds nuw i8, ptr %.197, i64 256
  store <8 x float> %i.co, ptr %i.cz, align 32, !tbaa !116
  %i.da = getelementptr inbounds nuw i8, ptr %.197, i64 288
  store <8 x float> %i.cp, ptr %i.da, align 32, !tbaa !116
  %i.db = getelementptr inbounds nuw i8, ptr %.197, i64 320
  store <8 x float> %i.cq, ptr %i.db, align 32, !tbaa !116
  %i.dc = getelementptr inbounds nuw i8, ptr %.197, i64 352
  store <8 x float> %i.cr, ptr %i.dc, align 32, !tbaa !116
  %i.dd = getelementptr inbounds nuw i8, ptr %.197, i64 384 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.047096, i64 %.idx494
  %i.df = add nuw nsw i32 %.047195, 8             ; 2 uses
  %i.dg = or disjoint i32 %i.df, 7
  %i.dh = icmp slt i32 %i.dg, %4
  br i1 %i.dh, label %.lr.ph, label %.loopexit92, !llvm.loop !300

bb.d:                                             ; preds = %bb.b
  br i1 %i.p, label %.lr.ph101.preheader, label %.loopexit92

.lr.ph101.preheader:                              ; preds = %bb.d
  %i.di = load ptr, ptr %0, align 8, !tbaa !18
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.n
  %i.dk = add nsw i64 %indvars.iv, %i.r
  %.idx239 = shl nsw i64 %i.dk, 4
  %i.dl = getelementptr inbounds i8, ptr %i.dj, i64 %.idx239
  br label %.lr.ph101

.lr.ph101:                                        ; preds = %.lr.ph101.preheader, %.lr.ph101
  %.3100 = phi ptr [ %i.fs, %.lr.ph101 ], [ %.0458109, %.lr.ph101.preheader ] ; 13 uses
  %.047299 = phi ptr [ %i.ft, %.lr.ph101 ], [ %i.dl, %.lr.ph101.preheader ] ; 13 uses
  %.047398 = phi i32 [ %i.fu, %.lr.ph101 ], [ 0, %.lr.ph101.preheader ]
end_hunk_2
begin_hunk_3_@_ZN4ncnnL21transpose_pack_B_tileERKNS_3MatERS0_iiii:bb.a
.loopexit80:                                      ; preds = %.loopexit80.loopexit313.unr-lcssa, %.lr.ph166.epil, %.lr.ph161.epil.preheader, %.loopexit80.loopexit312.unr-lcssa, %.lr.ph156, %bb.n, %bb.o, %bb.p, %bb.q
  %.27 = phi ptr [ %.21169, %bb.n ], [ %.21169, %bb.q ], [ %i.sa, %.lr.ph156 ], [ %i.uh, %.lr.ph161.epil.preheader ], [ %.21169, %bb.p ], [ %.21169, %bb.o ], [ %i.sx, %.loopexit80.loopexit312.unr-lcssa ], [ %i.tz, %.loopexit80.loopexit313.unr-lcssa ], [ %i.um, %.lr.ph166.epil ] ; 2 uses
  %indvars.iv.next220 = add nuw nsw i64 %indvars.iv219, 2 ; 3 uses
  %i.uo = icmp slt i64 %indvars.iv.next220, %invariant.op283
  br i1 %i.uo, label %bb.n, label %.preheader.loopexit, !llvm.loop !318

bb.r:                                             ; preds = %.lr.ph190, %.loopexit
  %indvars.iv223 = phi i64 [ %i.re, %.lr.ph190 ], [ %indvars.iv.next224, %.loopexit ] ; 4 uses
  %.28189 = phi ptr [ %.21.lcssa, %.lr.ph190 ], [ %.34, %.loopexit ] ; 10 uses
  switch i32 %i.b, label %.loopexit [
    i32 8, label %bb.s
    i32 4, label %bb.t
    i32 1, label %bb.u
  ]

bb.s:                                             ; preds = %bb.r
  br i1 %i.rb, label %.lr.ph176.preheader, label %.loopexit

.lr.ph176.preheader:                              ; preds = %bb.s
  %i.up = load ptr, ptr %0, align 8, !tbaa !18
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %i.up, i64 %i.ra
  %i.ur = add nsw i64 %indvars.iv223, %i.rf
  %.idx246 = shl nsw i64 %i.ur, 5
  %i.us = getelementptr inbounds i8, ptr %i.uq, i64 %.idx246 ; 2 uses
  br i1 %i.rp, label %.lr.ph176.epil.preheader, label %.lr.ph176

.lr.ph176:                                        ; preds = %.lr.ph176.preheader, %.lr.ph176
  %.0455174 = phi ptr [ %i.ve, %.lr.ph176 ], [ %i.us, %.lr.ph176.preheader ] ; 2 uses
  %.29173 = phi ptr [ %i.vd, %.lr.ph176 ], [ %.28189, %.lr.ph176.preheader ] ; 5 uses
  %niter381 = phi i32 [ %niter381.next.3, %.lr.ph176 ], [ 0, %.lr.ph176.preheader ]
  %i.ut = load <8 x float>, ptr %.0455174, align 32, !tbaa !116
  store <8 x float> %i.ut, ptr %.29173, align 32, !tbaa !116
  %i.uu = getelementptr inbounds nuw i8, ptr %.29173, i64 32
  %i.uv = getelementptr inbounds nuw i8, ptr %.0455174, i64 %.idx486 ; 2 uses
  %i.uw = load <8 x float>, ptr %i.uv, align 32, !tbaa !116
  store <8 x float> %i.uw, ptr %i.uu, align 32, !tbaa !116
  %i.ux = getelementptr inbounds nuw i8, ptr %.29173, i64 64
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uv, i64 %.idx486 ; 2 uses
  %i.uz = load <8 x float>, ptr %i.uy, align 32, !tbaa !116
  store <8 x float> %i.uz, ptr %i.ux, align 32, !tbaa !116
  %i.va = getelementptr inbounds nuw i8, ptr %.29173, i64 96
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uy, i64 %.idx486 ; 2 uses
  %i.vc = load <8 x float>, ptr %i.vb, align 32, !tbaa !116
  store <8 x float> %i.vc, ptr %i.va, align 32, !tbaa !116
  %i.vd = getelementptr inbounds nuw i8, ptr %.29173, i64 128 ; 3 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vb, i64 %.idx486 ; 2 uses
  %niter381.next.3 = add i32 %niter381, 4         ; 2 uses
  %niter381.ncmp.3.not = icmp eq i32 %niter381.next.3, %unroll_iter380
  br i1 %niter381.ncmp.3.not, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph176, !llvm.loop !319

bb.t:                                             ; preds = %bb.r
  br i1 %i.rc, label %.lr.ph181.preheader, label %.loopexit

.lr.ph181.preheader:                              ; preds = %bb.t
  %i.vf = load ptr, ptr %0, align 8, !tbaa !18
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %i.vf, i64 %i.ra
  %i.vh = add nsw i64 %indvars.iv223, %i.rf
  %.idx247 = shl nsw i64 %i.vh, 4
  %i.vi = getelementptr inbounds i8, ptr %i.vg, i64 %.idx247 ; 2 uses
  br i1 %i.ro, label %.lr.ph181.epil.preheader, label %.lr.ph181

.lr.ph181:                                        ; preds = %.lr.ph181.preheader, %.lr.ph181
  %.0453179 = phi ptr [ %i.vu, %.lr.ph181 ], [ %i.vi, %.lr.ph181.preheader ] ; 2 uses
  %.31178 = phi ptr [ %i.vt, %.lr.ph181 ], [ %.28189, %.lr.ph181.preheader ] ; 5 uses
  %niter374 = phi i32 [ %niter374.next.3, %.lr.ph181 ], [ 0, %.lr.ph181.preheader ]
  %i.vj = load <4 x float>, ptr %.0453179, align 16, !tbaa !116
  store <4 x float> %i.vj, ptr %.31178, align 16, !tbaa !116
  %i.vk = getelementptr inbounds nuw i8, ptr %.31178, i64 16
  %i.vl = getelementptr inbounds nuw i8, ptr %.0453179, i64 %.idx ; 2 uses
  %i.vm = load <4 x float>, ptr %i.vl, align 16, !tbaa !116
  store <4 x float> %i.vm, ptr %i.vk, align 16, !tbaa !116
  %i.vn = getelementptr inbounds nuw i8, ptr %.31178, i64 32
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vl, i64 %.idx ; 2 uses
  %i.vp = load <4 x float>, ptr %i.vo, align 16, !tbaa !116
  store <4 x float> %i.vp, ptr %i.vn, align 16, !tbaa !116
  %i.vq = getelementptr inbounds nuw i8, ptr %.31178, i64 48
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vo, i64 %.idx ; 2 uses
  %i.vs = load <4 x float>, ptr %i.vr, align 16, !tbaa !116
  store <4 x float> %i.vs, ptr %i.vq, align 16, !tbaa !116
  %i.vt = getelementptr inbounds nuw i8, ptr %.31178, i64 64 ; 3 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vr, i64 %.idx ; 2 uses
  %niter374.next.3 = add nuw nsw i32 %niter374, 4 ; 2 uses
  %niter374.ncmp.3.not = icmp eq i32 %niter374.next.3, %unroll_iter373
  br i1 %niter374.ncmp.3.not, label %.loopexit.loopexit308.unr-lcssa, label %.lr.ph181, !llvm.loop !320

bb.u:                                             ; preds = %bb.r
  br i1 %i.rd, label %.lr.ph186.preheader, label %.loopexit

.lr.ph186.preheader:                              ; preds = %bb.u
  %i.vv = load ptr, ptr %0, align 8, !tbaa !18
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %i.vv, i64 %i.ra
  %i.vx = getelementptr [4 x i8], ptr %i.vw, i64 %indvars.iv223
  %i.vy = getelementptr [4 x i8], ptr %i.vx, i64 %i.rf ; 2 uses
  br i1 %i.rn, label %.lr.ph186.epil.preheader, label %.lr.ph186

.lr.ph186:                                        ; preds = %.lr.ph186.preheader, %.lr.ph186
  %.0451184 = phi ptr [ %i.ww, %.lr.ph186 ], [ %i.vy, %.lr.ph186.preheader ] ; 2 uses
  %.33183 = phi ptr [ %i.wv, %.lr.ph186 ], [ %.28189, %.lr.ph186.preheader ] ; 9 uses
  %niter367 = phi i32 [ %niter367.next.7, %.lr.ph186 ], [ 0, %.lr.ph186.preheader ]
  %i.vz = load float, ptr %.0451184, align 4, !tbaa !68
  store float %i.vz, ptr %.33183, align 4, !tbaa !68
  %i.wa = getelementptr inbounds nuw i8, ptr %.33183, i64 4
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %.0451184, i64 %i.k ; 2 uses
  %i.wc = load float, ptr %i.wb, align 4, !tbaa !68
  store float %i.wc, ptr %i.wa, align 4, !tbaa !68
  %i.wd = getelementptr inbounds nuw i8, ptr %.33183, i64 8
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %i.wb, i64 %i.k ; 2 uses
  %i.wf = load float, ptr %i.we, align 4, !tbaa !68
  store float %i.wf, ptr %i.wd, align 4, !tbaa !68
  %i.wg = getelementptr inbounds nuw i8, ptr %.33183, i64 12
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %i.we, i64 %i.k ; 2 uses
  %i.wi = load float, ptr %i.wh, align 4, !tbaa !68
  store float %i.wi, ptr %i.wg, align 4, !tbaa !68
  %i.wj = getelementptr inbounds nuw i8, ptr %.33183, i64 16
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.wh, i64 %i.k ; 2 uses
  %i.wl = load float, ptr %i.wk, align 4, !tbaa !68
  store float %i.wl, ptr %i.wj, align 4, !tbaa !68
  %i.wm = getelementptr inbounds nuw i8, ptr %.33183, i64 20
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %i.k ; 2 uses
  %i.wo = load float, ptr %i.wn, align 4, !tbaa !68
  store float %i.wo, ptr %i.wm, align 4, !tbaa !68
  %i.wp = getelementptr inbounds nuw i8, ptr %.33183, i64 24
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %i.wn, i64 %i.k ; 2 uses
  %i.wr = load float, ptr %i.wq, align 4, !tbaa !68
  store float %i.wr, ptr %i.wp, align 4, !tbaa !68
  %i.ws = getelementptr inbounds nuw i8, ptr %.33183, i64 28
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.wq, i64 %i.k ; 2 uses
  %i.wu = load float, ptr %i.wt, align 4, !tbaa !68
  store float %i.wu, ptr %i.ws, align 4, !tbaa !68
  %i.wv = getelementptr inbounds nuw i8, ptr %.33183, i64 32 ; 3 uses
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %i.wt, i64 %i.k ; 2 uses
  %niter367.next.7 = add nuw nsw i32 %niter367, 8 ; 2 uses
  %niter367.ncmp.7 = icmp eq i32 %niter367.next.7, %unroll_iter366
  br i1 %niter367.ncmp.7, label %.loopexit.loopexit309.unr-lcssa, label %.lr.ph186, !llvm.loop !321

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph176
  br i1 %lcmp.mod377.not, label %.loopexit, label %.lr.ph176.epil.preheader

.lr.ph176.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph176.preheader
  %.0455174.epil.init = phi ptr [ %i.us, %.lr.ph176.preheader ], [ %i.ve, %.loopexit.loopexit.unr-lcssa ]
  %.29173.epil.init = phi ptr [ %.28189, %.lr.ph176.preheader ], [ %i.vd, %.loopexit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod379)
  br label %.lr.ph176.epil

.lr.ph176.epil:                                   ; preds = %.lr.ph176.epil, %.lr.ph176.epil.preheader
  %.0455174.epil = phi ptr [ %i.wz, %.lr.ph176.epil ], [ %.0455174.epil.init, %.lr.ph176.epil.preheader ] ; 2 uses
  %.29173.epil = phi ptr [ %i.wy, %.lr.ph176.epil ], [ %.29173.epil.init, %.lr.ph176.epil.preheader ] ; 2 uses
  %epil.iter376 = phi i32 [ %epil.iter376.next, %.lr.ph176.epil ], [ 0, %.lr.ph176.epil.preheader ]
  %i.wx = load <8 x float>, ptr %.0455174.epil, align 32, !tbaa !116
  store <8 x float> %i.wx, ptr %.29173.epil, align 32, !tbaa !116
  %i.wy = getelementptr inbounds nuw i8, ptr %.29173.epil, i64 32 ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %.0455174.epil, i64 %.idx486
  %epil.iter376.next = add i32 %epil.iter376, 1   ; 2 uses
  %epil.iter376.cmp.not = icmp eq i32 %epil.iter376.next, %xtraiter375
  br i1 %epil.iter376.cmp.not, label %.loopexit, label %.lr.ph176.epil, !llvm.loop !322

.loopexit.loopexit308.unr-lcssa:                  ; preds = %.lr.ph181
  br i1 %lcmp.mod370.not, label %.loopexit, label %.lr.ph181.epil.preheader

.lr.ph181.epil.preheader:                         ; preds = %.loopexit.loopexit308.unr-lcssa, %.lr.ph181.preheader
  %.0453179.epil.init = phi ptr [ %i.vi, %.lr.ph181.preheader ], [ %i.vu, %.loopexit.loopexit308.unr-lcssa ]
  %.31178.epil.init = phi ptr [ %.28189, %.lr.ph181.preheader ], [ %i.vt, %.loopexit.loopexit308.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod372)
  br label %.lr.ph181.epil

.lr.ph181.epil:                                   ; preds = %.lr.ph181.epil, %.lr.ph181.epil.preheader
  %.0453179.epil = phi ptr [ %i.xc, %.lr.ph181.epil ], [ %.0453179.epil.init, %.lr.ph181.epil.preheader ] ; 2 uses
  %.31178.epil = phi ptr [ %i.xb, %.lr.ph181.epil ], [ %.31178.epil.init, %.lr.ph181.epil.preheader ] ; 2 uses
  %epil.iter369 = phi i32 [ %epil.iter369.next, %.lr.ph181.epil ], [ 0, %.lr.ph181.epil.preheader ]
  %i.xa = load <4 x float>, ptr %.0453179.epil, align 16, !tbaa !116
  store <4 x float> %i.xa, ptr %.31178.epil, align 16, !tbaa !116
  %i.xb = getelementptr inbounds nuw i8, ptr %.31178.epil, i64 16 ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %.0453179.epil, i64 %.idx
  %epil.iter369.next = add i32 %epil.iter369, 1   ; 2 uses
  %epil.iter369.cmp.not = icmp eq i32 %epil.iter369.next, %xtraiter368
  br i1 %epil.iter369.cmp.not, label %.loopexit, label %.lr.ph181.epil, !llvm.loop !323

.loopexit.loopexit309.unr-lcssa:                  ; preds = %.lr.ph186
  br i1 %lcmp.mod363.not, label %.loopexit, label %.lr.ph186.epil.preheader

.lr.ph186.epil.preheader:                         ; preds = %.loopexit.loopexit309.unr-lcssa, %.lr.ph186.preheader
  %.0451184.epil.init = phi ptr [ %i.vy, %.lr.ph186.preheader ], [ %i.ww, %.loopexit.loopexit309.unr-lcssa ]
  %.33183.epil.init = phi ptr [ %.28189, %.lr.ph186.preheader ], [ %i.wv, %.loopexit.loopexit309.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod365)
  br label %.lr.ph186.epil

.lr.ph186.epil:                                   ; preds = %.lr.ph186.epil, %.lr.ph186.epil.preheader
  %.0451184.epil = phi ptr [ %i.xf, %.lr.ph186.epil ], [ %.0451184.epil.init, %.lr.ph186.epil.preheader ] ; 2 uses
  %.33183.epil = phi ptr [ %i.xe, %.lr.ph186.epil ], [ %.33183.epil.init, %.lr.ph186.epil.preheader ] ; 2 uses
  %epil.iter362 = phi i32 [ %epil.iter362.next, %.lr.ph186.epil ], [ 0, %.lr.ph186.epil.preheader ]
  %i.xd = load float, ptr %.0451184.epil, align 4, !tbaa !68
  store float %i.xd, ptr %.33183.epil, align 4, !tbaa !68
  %i.xe = getelementptr inbounds nuw i8, ptr %.33183.epil, i64 4 ; 2 uses
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %.0451184.epil, i64 %i.k
  %epil.iter362.next = add i32 %epil.iter362, 1   ; 2 uses
  %epil.iter362.cmp.not = icmp eq i32 %epil.iter362.next, %xtraiter361
  br i1 %epil.iter362.cmp.not, label %.loopexit, label %.lr.ph186.epil, !llvm.loop !324

.loopexit:                                        ; preds = %.loopexit.loopexit309.unr-lcssa, %.lr.ph186.epil, %.loopexit.loopexit308.unr-lcssa, %.lr.ph181.epil, %.loopexit.loopexit.unr-lcssa, %.lr.ph176.epil, %bb.r, %bb.s, %bb.t, %bb.u
  %.34 = phi ptr [ %.28189, %bb.r ], [ %.28189, %bb.u ], [ %i.wy, %.lr.ph176.epil ], [ %i.xb, %.lr.ph181.epil ], [ %.28189, %bb.t ], [ %.28189, %bb.s ], [ %i.vd, %.loopexit.loopexit.unr-lcssa ], [ %i.vt, %.loopexit.loopexit308.unr-lcssa ], [ %i.wv, %.loopexit.loopexit309.unr-lcssa ], [ %i.xe, %.lr.ph186.epil ]
  %indvars.iv.next224 = add nsw i64 %indvars.iv223, 1 ; 2 uses
  %exitcond226.not = icmp eq i64 %indvars.iv.next224, %wide.trip.count
  br i1 %exitcond226.not, label %._crit_edge, label %bb.r, !llvm.loop !325

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  ret void
}

declare void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare void @_ZN4ncnn3Mat11create_likeERKS0_PNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #1

declare noundef i32 @_ZN4ncnn25get_cpu_level2_cache_sizeEv() local_unnamed_addr #1

declare noundef i32 @_ZN4ncnn26get_physical_big_cpu_countEv() local_unnamed_addr #1

declare noundef i32 @_ZN4ncnn22get_physical_cpu_countEv() local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #11

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn12Gemm_x86_avx12forward_int8ERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(800) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 10 uses
  %i.d = alloca i32, align 4                      ; 9 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = alloca i32, align 4                      ; 9 uses
  %i.g = alloca i32, align 4                      ; 8 uses
  %i.h = alloca i32, align 4                      ; 8 uses
  %i.i = alloca i32, align 4                      ; 9 uses
  %i.j = alloca i32, align 4                      ; 7 uses
  %i.k = alloca i32, align 4                      ; 12 uses
  %4 = alloca %"class.ncnn::Mat", align 8         ; 15 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.ncnn::Mat", align 8         ; 15 uses
  %i.m = alloca float, align 4                    ; 7 uses
  %6 = alloca %"class.ncnn::Mat", align 8         ; 15 uses
  %7 = alloca %"class.ncnn::Mat", align 8         ; 14 uses
  %8 = alloca %"struct.ncnn::gemm_x86_int8_omp_args", align 4 ; 12 uses
  %9 = alloca %"class.ncnn::Mat", align 8         ; 17 uses
  %i.n = alloca i32, align 4                      ; 4 uses
  %i.o = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"class.ncnn::Mat", align 8        ; 16 uses
  %i.p = alloca float, align 4                    ; 5 uses
  %i.q = alloca i32, align 4                      ; 6 uses
  %i.r = alloca i32, align 4                      ; 6 uses
  %i.s = alloca i32, align 4                      ; 6 uses
  %i.t = alloca i32, align 4                      ; 9 uses
  %i.u = alloca i32, align 4                      ; 9 uses
  %i.v = alloca i32, align 4                      ; 5 uses
  %i.w = alloca i32, align 4                      ; 8 uses
  %i.x = alloca i32, align 4                      ; 9 uses
  %i.y = alloca i32, align 4                      ; 6 uses
  %i.z = alloca i32, align 4                      ; 10 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 15 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 15 uses
  %13 = alloca %"class.ncnn::Mat", align 8        ; 14 uses
  %14 = alloca %"struct.ncnn::gemm_x86_int8_omp_args", align 4 ; 12 uses
  %15 = alloca %"class.ncnn::Mat", align 8        ; 17 uses
  %i.aa = alloca i32, align 4                     ; 4 uses
  %i.ab = alloca i32, align 4                     ; 4 uses
  %16 = alloca %"class.ncnn::Mat", align 8        ; 16 uses
  %i.ac = alloca i32, align 4                     ; 4 uses
  %i.ad = alloca i32, align 4                     ; 6 uses
  %i.ae = alloca i32, align 4                     ; 4 uses
  %i.af = alloca i32, align 4                     ; 7 uses
  %i.ag = alloca i32, align 4                     ; 5 uses
  %i.ah = alloca i32, align 4                     ; 8 uses
  %i.ai = alloca i32, align 4                     ; 7 uses
  %i.aj = alloca i32, align 4                     ; 5 uses
  %i.ak = alloca i32, align 4                     ; 6 uses
  %17 = alloca %"class.ncnn::Mat", align 8        ; 14 uses
  %i.al = alloca i32, align 4                     ; 5 uses
  %i.am = alloca float, align 4                   ; 11 uses
  %18 = alloca %"class.ncnn::Mat", align 8        ; 13 uses
  %19 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %20 = alloca %"struct.ncnn::gemm_x86_int8_omp_args", align 4 ; 10 uses
  %i.an = alloca i32, align 4                     ; 4 uses
  %i.ao = alloca i32, align 4                     ; 4 uses
  %i.ap = alloca i32, align 4                     ; 4 uses
  %i.aq = alloca i32, align 4                     ; 4 uses
  %i.ar = alloca i32, align 4                     ; 5 uses
  %i.as = alloca i32, align 4                     ; 5 uses
  %i.at = alloca i32, align 4                     ; 5 uses
  %i.au = alloca i32, align 4                     ; 5 uses
  %21 = alloca %"class.ncnn::Mat", align 8        ; 13 uses
  %22 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %23 = alloca %"struct.ncnn::gemm_x86_int8_omp_args", align 4 ; 10 uses
  %i.av = alloca i32, align 4                     ; 4 uses
  %24 = alloca %"class.ncnn::Mat", align 16       ; 32 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !43
  %.not = icmp eq i32 %i.ax, 0                    ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 3 uses
  %i.az = load i32, ptr %i.ay, align 4
  %.not133 = icmp eq i32 %i.az, 0                 ; 4 uses
  %or.cond172 = select i1 %.not, i1 true, i1 %.not133
  br i1 %or.cond172, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !44
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !54
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.be = load ptr, ptr %1, align 8, !tbaa !106   ; 16 uses
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !44 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !86
  %.not141 = icmp eq i32 %i.bi, 0
  br i1 %.not141, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !87
  %i.bl = icmp eq i32 %i.bk, 3
  %.in142.v = select i1 %i.bl, i64 56, i64 48
  %.in142 = getelementptr inbounds nuw i8, ptr %i.be, i64 %.in142.v
  %i.bm = load i32, ptr %.in142, align 8, !tbaa !45
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !60
  %i.bp = mul nsw i32 %i.bo, %i.bm
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  %i.bq = getelementptr inbounds nuw i8, ptr %i.be, i64 44
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !88
  br label %bb.r

bb.g:                                             ; preds = %bb.c
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !89
  %.not136 = icmp eq i32 %i.bt, 0                 ; 2 uses
  br i1 %.not133, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %.not136, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %i.be, i64 44
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !88
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bw = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !87
  %i.by = icmp eq i32 %i.bx, 3
  %.in140.v = select i1 %i.by, i64 56, i64 48
  %.in140 = getelementptr inbounds nuw i8, ptr %i.be, i64 %.in140.v
  %i.bz = load i32, ptr %.in140, align 8, !tbaa !45
  %i.ca = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !60
  %i.cc = mul nsw i32 %i.cb, %i.bz
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cd = phi i32 [ %i.bv, %bb.i ], [ %i.cc, %bb.j ]
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !54
  br label %bb.r

bb.l:                                             ; preds = %bb.g
  br i1 %.not136, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cg = getelementptr inbounds nuw i8, ptr %i.be, i64 44
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !88
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ci = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !87
  %i.ck = icmp eq i32 %i.cj, 3
  %.in.v = select i1 %i.ck, i64 56, i64 48
  %.in = getelementptr inbounds nuw i8, ptr %i.be, i64 %.in.v
  %i.cl = load i32, ptr %.in, align 8, !tbaa !45
  %i.cm = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !60
  %i.co = mul nsw i32 %i.cn, %i.cl
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cp = phi i32 [ %i.ch, %bb.m ], [ %i.co, %bb.n ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !86
  %.not137 = icmp eq i32 %i.cr, 0
  br i1 %.not137, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cs = getelementptr inbounds nuw i8, ptr %i.be, i64 112
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !87
  %i.cu = icmp eq i32 %i.ct, 3
end_hunk_3
begin_hunk_4_@_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_S2_RS0_S3_iiiiiiib:bb.a
  %i.dbs = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx2826)
  %bin.rdx2827 = fadd fast <4 x float> %i.czq, %i.czp
  %i.dbt = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx2827)
  %bin.rdx2828 = fadd fast <4 x float> %i.cxq, %i.cxp
  %i.dbu = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx2828)
  %bin.rdx2829 = fadd fast <4 x float> %i.cvq, %i.cvp
  %i.dbv = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx2829)
  %i.dbw = insertelement <4 x float> poison, float %i.dbv, i64 0
  %i.dbx = insertelement <4 x float> %i.dbw, float %i.dbu, i64 1
  %i.dby = insertelement <4 x float> %i.dbx, float %i.dbt, i64 2
  %i.dbz = insertelement <4 x float> %i.dby, float %i.dbs, i64 3 ; 2 uses
  br i1 %cmp.n2830, label %._crit_edge2057.loopexit, label %.lr.ph2056.preheader2905

.lr.ph2056.preheader2905:                         ; preds = %.lr.ph2056.preheader, %middle.block2825
  %.018222050.ph = phi i32 [ 0, %.lr.ph2056.preheader ], [ %i.bfh, %middle.block2825 ]
  %.018232049.ph = phi ptr [ %.319142086, %.lr.ph2056.preheader ], [ %i.ciw, %middle.block2825 ]
  %.132048.ph = phi ptr [ %.122077, %.lr.ph2056.preheader ], [ %i.cty, %middle.block2825 ]
  %.ph = phi <4 x float> [ zeroinitializer, %.lr.ph2056.preheader ], [ %i.dbz, %middle.block2825 ]
  br label %.lr.ph2056

.lr.ph2056:                                       ; preds = %.lr.ph2056.preheader2905, %.lr.ph2056
  %.018222050 = phi i32 [ %i.dch, %.lr.ph2056 ], [ %.018222050.ph, %.lr.ph2056.preheader2905 ]
  %.018232049 = phi ptr [ %i.dcf, %.lr.ph2056 ], [ %.018232049.ph, %.lr.ph2056.preheader2905 ] ; 2 uses
  %.132048 = phi ptr [ %i.dcg, %.lr.ph2056 ], [ %.132048.ph, %.lr.ph2056.preheader2905 ] ; 2 uses
  %i.dca = phi <4 x float> [ %i.dce, %.lr.ph2056 ], [ %.ph, %.lr.ph2056.preheader2905 ]
  %i.dcb = load <4 x float>, ptr %.018232049, align 4, !tbaa !68
  %i.dcc = load <4 x float>, ptr %.132048, align 4, !tbaa !68
  %i.dcd = fmul fast <4 x float> %i.dcc, %i.dcb
  %i.dce = fadd fast <4 x float> %i.dcd, %i.dca   ; 2 uses
  %i.dcf = getelementptr inbounds nuw i8, ptr %.018232049, i64 16 ; 2 uses
  %i.dcg = getelementptr inbounds nuw i8, ptr %.132048, i64 16
  %i.dch = add nuw nsw i32 %.018222050, 4         ; 2 uses
  %i.dci = or disjoint i32 %i.dch, 3
  %i.dcj = icmp slt i32 %i.dci, %8
  br i1 %i.dcj, label %.lr.ph2056, label %._crit_edge2057.loopexit, !llvm.loop !424

._crit_edge2057.loopexit:                         ; preds = %.lr.ph2056, %middle.block2825
  %.lcssa2598 = phi ptr [ %i.ciw, %middle.block2825 ], [ %i.dcf, %.lr.ph2056 ]
  %i.dck = phi <4 x float> [ %i.dbz, %middle.block2825 ], [ %i.dce, %.lr.ph2056 ]
  %i.dcl = getelementptr i8, ptr %.122077, i64 %i.bey
  %scevgep2324 = getelementptr i8, ptr %i.dcl, i64 16
  %op.rdx = tail call fast float @llvm.vector.reduce.fadd.v4f32(float %.11826, <4 x float> %i.dck)
  br label %._crit_edge2057

._crit_edge2057:                                  ; preds = %._crit_edge2057.loopexit, %bb.id
  %.13.lcssa = phi ptr [ %.122077, %bb.id ], [ %scevgep2324, %._crit_edge2057.loopexit ] ; 6 uses
  %.01823.lcssa = phi ptr [ %.319142086, %bb.id ], [ %.lcssa2598, %._crit_edge2057.loopexit ] ; 5 uses
  %.01822.lcssa = phi i32 [ 0, %bb.id ], [ %i.beo, %._crit_edge2057.loopexit ] ; 5 uses
  %.01821.lcssa = phi float [ %.11826, %bb.id ], [ %op.rdx, %._crit_edge2057.loopexit ] ; 4 uses
  %i.dcm = icmp slt i32 %.01822.lcssa, %8
  br i1 %i.dcm, label %iter.check, label %._crit_edge2071

iter.check:                                       ; preds = %._crit_edge2057
  %i.dcn = xor i32 %.01822.lcssa, -1
  %i.dco = add i32 %8, %i.dcn                     ; 3 uses
  %i.dcp = zext i32 %i.dco to i64
  %i.dcq = add nuw nsw i64 %i.dcp, 1              ; 5 uses
  %min.iters.check2751 = icmp ult i32 %i.dco, 7
  br i1 %min.iters.check2751, label %.lr.ph2070.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2752 = icmp ult i32 %i.dco, 31
  br i1 %min.iters.check2752, label %vec.epilog.ph, label %vector.ph2753

vector.ph2753:                                    ; preds = %vector.main.loop.iter.check
  %i.dcr = and i64 %i.dcq, 24
  %n.vec2754 = and i64 %i.dcq, 8589934560         ; 5 uses
  %i.dcs = trunc i64 %n.vec2754 to i32
  %i.dct = add i32 %.01822.lcssa, %i.dcs
  %i.dcu = shl nuw nsw i64 %n.vec2754, 2          ; 2 uses
  %i.dcv = getelementptr i8, ptr %.01823.lcssa, i64 %i.dcu
  %i.dcw = getelementptr i8, ptr %.13.lcssa, i64 %i.dcu ; 2 uses
  %i.dcx = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.01821.lcssa, i64 0
  br label %vector.body2755

vector.body2755:                                  ; preds = %vector.body2755, %vector.ph2753
  %index2756 = phi i64 [ 0, %vector.ph2753 ], [ %index.next2771, %vector.body2755 ] ; 2 uses
  %vec.phi2757 = phi <8 x float> [ %i.dcx, %vector.ph2753 ], [ %i.ddj, %vector.body2755 ]
  %vec.phi2758 = phi <8 x float> [ zeroinitializer, %vector.ph2753 ], [ %i.ddk, %vector.body2755 ]
  %vec.phi2759 = phi <8 x float> [ zeroinitializer, %vector.ph2753 ], [ %i.ddl, %vector.body2755 ]
  %vec.phi2760 = phi <8 x float> [ zeroinitializer, %vector.ph2753 ], [ %i.ddm, %vector.body2755 ]
  %i.dcy = shl i64 %index2756, 2                  ; 2 uses
  %next.gep2761 = getelementptr i8, ptr %.01823.lcssa, i64 %i.dcy ; 4 uses
  %next.gep2762 = getelementptr i8, ptr %.13.lcssa, i64 %i.dcy ; 4 uses
  %i.dcz = getelementptr i8, ptr %next.gep2761, i64 32
  %i.dda = getelementptr i8, ptr %next.gep2761, i64 64
  %i.ddb = getelementptr i8, ptr %next.gep2761, i64 96
  %wide.load2763 = load <8 x float>, ptr %next.gep2761, align 4, !tbaa !68
  %wide.load2764 = load <8 x float>, ptr %i.dcz, align 4, !tbaa !68
  %wide.load2765 = load <8 x float>, ptr %i.dda, align 4, !tbaa !68
  %wide.load2766 = load <8 x float>, ptr %i.ddb, align 4, !tbaa !68
  %i.ddc = getelementptr i8, ptr %next.gep2762, i64 32
  %i.ddd = getelementptr i8, ptr %next.gep2762, i64 64
  %i.dde = getelementptr i8, ptr %next.gep2762, i64 96
  %wide.load2767 = load <8 x float>, ptr %next.gep2762, align 4, !tbaa !68
  %wide.load2768 = load <8 x float>, ptr %i.ddc, align 4, !tbaa !68
  %wide.load2769 = load <8 x float>, ptr %i.ddd, align 4, !tbaa !68
  %wide.load2770 = load <8 x float>, ptr %i.dde, align 4, !tbaa !68
  %i.ddf = fmul fast <8 x float> %wide.load2767, %wide.load2763
  %i.ddg = fmul fast <8 x float> %wide.load2768, %wide.load2764
  %i.ddh = fmul fast <8 x float> %wide.load2769, %wide.load2765
  %i.ddi = fmul fast <8 x float> %wide.load2770, %wide.load2766
  %i.ddj = fadd fast <8 x float> %i.ddf, %vec.phi2757 ; 2 uses
  %i.ddk = fadd fast <8 x float> %i.ddg, %vec.phi2758 ; 2 uses
  %i.ddl = fadd fast <8 x float> %i.ddh, %vec.phi2759 ; 2 uses
  %i.ddm = fadd fast <8 x float> %i.ddi, %vec.phi2760 ; 2 uses
  %index.next2771 = add nuw i64 %index2756, 32    ; 2 uses
  %i.ddn = icmp eq i64 %index.next2771, %n.vec2754
  br i1 %i.ddn, label %middle.block2772, label %vector.body2755, !llvm.loop !425

middle.block2772:                                 ; preds = %vector.body2755
  %bin.rdx2773 = fadd fast <8 x float> %i.ddk, %i.ddj
  %bin.rdx2774 = fadd fast <8 x float> %i.ddl, %bin.rdx2773
  %bin.rdx2775 = fadd fast <8 x float> %i.ddm, %bin.rdx2774
  %i.ddo = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx2775) ; 3 uses
  %cmp.n2776 = icmp eq i64 %i.dcq, %n.vec2754
  br i1 %cmp.n2776, label %._crit_edge2071, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block2772
  %min.epilog.iters.check = icmp eq i64 %i.dcr, 0
  br i1 %min.epilog.iters.check, label %.lr.ph2070.preheader, label %vec.epilog.ph, !prof !204

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec2754, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx2779 = phi float [ %i.ddo, %vec.epilog.iter.check ], [ %.01821.lcssa, %vector.main.loop.iter.check ]
  %n.vec2781 = and i64 %i.dcq, 8589934584         ; 4 uses
  %i.ddp = trunc i64 %n.vec2781 to i32
  %i.ddq = add i32 %.01822.lcssa, %i.ddp
  %i.ddr = shl nuw nsw i64 %n.vec2781, 2          ; 2 uses
  %i.dds = getelementptr i8, ptr %.01823.lcssa, i64 %i.ddr
  %i.ddt = getelementptr i8, ptr %.13.lcssa, i64 %i.ddr ; 2 uses
  %i.ddu = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx2779, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index2782 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next2788, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi2783 = phi <8 x float> [ %i.ddu, %vec.epilog.ph ], [ %i.ddx, %vec.epilog.vector.body ]
  %i.ddv = shl i64 %index2782, 2                  ; 2 uses
  %next.gep2784 = getelementptr i8, ptr %.01823.lcssa, i64 %i.ddv
  %next.gep2785 = getelementptr i8, ptr %.13.lcssa, i64 %i.ddv
  %wide.load2786 = load <8 x float>, ptr %next.gep2784, align 4, !tbaa !68
  %wide.load2787 = load <8 x float>, ptr %next.gep2785, align 4, !tbaa !68
  %i.ddw = fmul fast <8 x float> %wide.load2787, %wide.load2786
  %i.ddx = fadd fast <8 x float> %i.ddw, %vec.phi2783 ; 2 uses
  %index.next2788 = add nuw i64 %index2782, 8     ; 2 uses
  %i.ddy = icmp eq i64 %index.next2788, %n.vec2781
  br i1 %i.ddy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !426

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ddz = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.ddx) ; 2 uses
  %cmp.n2789 = icmp eq i64 %i.dcq, %n.vec2781
  br i1 %cmp.n2789, label %._crit_edge2071, label %.lr.ph2070.preheader

.lr.ph2070.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.12068.ph = phi i32 [ %.01822.lcssa, %iter.check ], [ %i.dct, %vec.epilog.iter.check ], [ %i.ddq, %vec.epilog.middle.block ]
  %.118242067.ph = phi ptr [ %.01823.lcssa, %iter.check ], [ %i.dcv, %vec.epilog.iter.check ], [ %i.dds, %vec.epilog.middle.block ]
  %.22066.ph = phi float [ %.01821.lcssa, %iter.check ], [ %i.ddo, %vec.epilog.iter.check ], [ %i.ddz, %vec.epilog.middle.block ]
  %.142065.ph = phi ptr [ %.13.lcssa, %iter.check ], [ %i.dcw, %vec.epilog.iter.check ], [ %i.ddt, %vec.epilog.middle.block ]
  br label %.lr.ph2070

.lr.ph2070:                                       ; preds = %.lr.ph2070.preheader, %.lr.ph2070
  %.12068 = phi i32 [ %i.deg, %.lr.ph2070 ], [ %.12068.ph, %.lr.ph2070.preheader ]
  %.118242067 = phi ptr [ %i.dee, %.lr.ph2070 ], [ %.118242067.ph, %.lr.ph2070.preheader ] ; 2 uses
  %.22066 = phi float [ %i.ded, %.lr.ph2070 ], [ %.22066.ph, %.lr.ph2070.preheader ]
  %.142065 = phi ptr [ %i.def, %.lr.ph2070 ], [ %.142065.ph, %.lr.ph2070.preheader ] ; 2 uses
  %i.dea = load float, ptr %.118242067, align 4, !tbaa !68
  %i.deb = load float, ptr %.142065, align 4, !tbaa !68
  %i.dec = fmul fast float %i.deb, %i.dea
  %i.ded = fadd fast float %i.dec, %.22066        ; 2 uses
  %i.dee = getelementptr inbounds nuw i8, ptr %.118242067, i64 4
  %i.def = getelementptr inbounds nuw i8, ptr %.142065, i64 4 ; 2 uses
  %i.deg = add nuw nsw i32 %.12068, 1             ; 2 uses
  %exitcond2325.not = icmp eq i32 %i.deg, %8
  br i1 %exitcond2325.not, label %._crit_edge2071, label %.lr.ph2070, !llvm.loop !427

._crit_edge2071:                                  ; preds = %.lr.ph2070, %middle.block2772, %vec.epilog.middle.block, %._crit_edge2057
  %.14.lcssa = phi ptr [ %.13.lcssa, %._crit_edge2057 ], [ %i.ddt, %vec.epilog.middle.block ], [ %i.dcw, %middle.block2772 ], [ %i.def, %.lr.ph2070 ]
  %.2.lcssa = phi float [ %.01821.lcssa, %._crit_edge2057 ], [ %i.ddz, %vec.epilog.middle.block ], [ %i.ddo, %middle.block2772 ], [ %i.ded, %.lr.ph2070 ] ; 2 uses
  br i1 %9, label %bb.ie, label %bb.if

bb.ie:                                            ; preds = %._crit_edge2071
  store float %.2.lcssa, ptr %.818732076, align 4, !tbaa !68
  %i.deh = getelementptr inbounds nuw i8, ptr %.818732076, i64 4
  br label %bb.ig

bb.if:                                            ; preds = %._crit_edge2071
  store float %.2.lcssa, ptr %.2319532074, align 4, !tbaa !68
  br label %bb.ig

bb.ig:                                            ; preds = %bb.if, %bb.ie
  %.91874 = phi ptr [ %i.deh, %bb.ie ], [ %.818732076, %bb.if ]
  %i.dei = getelementptr inbounds nuw i8, ptr %.2319532074, i64 4 ; 2 uses
  %i.dej = add nuw nsw i32 %.42078, 1             ; 2 uses
  %exitcond2326.not = icmp eq i32 %i.dej, %6
  br i1 %exitcond2326.not, label %._crit_edge2080, label %.lr.ph2079, !llvm.loop !428

._crit_edge2080:                                  ; preds = %bb.ig, %.preheader
  %.231953.lcssa = phi ptr [ %.221952.lcssa, %.preheader ], [ %i.dei, %bb.ig ]
  %.65.lcssa = phi ptr [ %.63.lcssa, %.preheader ], [ %.66, %bb.ig ]
  %i.dek = getelementptr inbounds [4 x i8], ptr %.319142086, i64 %i.bel
  %indvars.iv.next2328 = add nsw i64 %indvars.iv2327, 1 ; 2 uses
  %exitcond2330.not = icmp eq i64 %indvars.iv.next2328, %wide.trip.count
  br i1 %exitcond2330.not, label %._crit_edge2088, label %bb.gj, !llvm.loop !429

._crit_edge2088:                                  ; preds = %._crit_edge2080, %.preheader1423
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL28transpose_unpack_output_tileERKNS_3MatERS0_iiii(ptr nofree readonly %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !87
  %i.e = icmp eq i32 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load i32, ptr %i.h, align 4
  %i.j = sext i32 %i.i to i64
  %i.k = select i1 %i.e, i64 %i.g, i64 %i.j       ; 48 uses
  %i.l = icmp sgt i32 %2, 7
  br i1 %i.l, label %.lr.ph107, label %.preheader80

.lr.ph107:                                        ; preds = %bb.a
  %i.m = sdiv i32 %3, 8
  %i.n = shl nsw i32 %i.m, 3
  %i.o = sext i32 %i.n to i64
  %i.p = mul i64 %i.k, %i.o
  %i.q = and i32 %3, -2147483641
  %i.r = icmp eq i32 %i.q, 4
  %.idx561 = shl i64 %i.k, 5                      ; 3 uses
  %i.s = sext i32 %3 to i64
  %i.t = mul i64 %i.k, %i.s                       ; 2 uses
  %i.u = icmp sgt i32 %4, 3
  %.idx562 = shl i64 %i.k, 4
  %i.v = icmp sgt i32 %4, 0
  %i.w = zext nneg i32 %2 to i64
  %i.x = sext i32 %1 to i64                       ; 3 uses
  %i.y = add i32 %4, -1
  %xtraiter = and i32 %4, 7                       ; 3 uses
  %i.z = icmp ult i32 %i.y, 7
  %unroll_iter = and i32 %4, 2147483640
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod350 = icmp ne i32 %xtraiter, 0
  br label %bb.b

.preheader80.loopexit:                            ; preds = %.loopexit81
  %i.aa = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader80

.preheader80:                                     ; preds = %.preheader80.loopexit, %bb.a
  %.0528.lcssa = phi i32 [ 0, %bb.a ], [ %i.aa, %.preheader80.loopexit ] ; 3 uses
  %.0523.lcssa = phi ptr [ %.0.val, %bb.a ], [ %.8, %.preheader80.loopexit ] ; 2 uses
  %i.ab = or disjoint i32 %.0528.lcssa, 3
  %i.ac = icmp slt i32 %i.ab, %2
  br i1 %i.ac, label %.lr.ph134, label %.preheader75

.lr.ph134:                                        ; preds = %.preheader80
  %i.ad = sdiv i32 %3, 8
  %i.ae = shl nsw i32 %i.ad, 3
  %i.af = sext i32 %i.ae to i64
  %i.ag = mul i64 %i.k, %i.af
  %i.ah = and i32 %3, -2147483641
  %i.ai = icmp eq i32 %i.ah, 4
  %.idx557 = shl i64 %i.k, 5                      ; 3 uses
  %i.aj = sext i32 %3 to i64
  %i.ak = mul i64 %i.k, %i.aj                     ; 2 uses
  %i.al = icmp sgt i32 %4, 3
  %.idx558 = shl i64 %i.k, 4
  %i.am = icmp sgt i32 %4, 0
  %i.an = zext nneg i32 %.0528.lcssa to i64
  %i.ao = sext i32 %2 to i64
  %i.ap = sext i32 %1 to i64                      ; 3 uses
  %invariant.op = add nsw i64 %i.ao, -3
  %i.aq = add i32 %4, -1
  %xtraiter351 = and i32 %4, 7                    ; 3 uses
  %i.ar = icmp ult i32 %i.aq, 7
  %unroll_iter356 = and i32 %4, 2147483640
  %lcmp.mod353.not = icmp eq i32 %xtraiter351, 0
  %lcmp.mod355 = icmp ne i32 %xtraiter351, 0
  br label %bb.h

bb.b:                                             ; preds = %.lr.ph107, %.loopexit81
  %indvars.iv = phi i64 [ 0, %.lr.ph107 ], [ %indvars.iv.next, %.loopexit81 ] ; 4 uses
  %.0523106 = phi ptr [ %.0.val, %.lr.ph107 ], [ %.8, %.loopexit81 ] ; 12 uses
  switch i32 %i.b, label %.loopexit81 [
    i32 8, label %bb.c
    i32 4, label %bb.f
    i32 1, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.as = load ptr, ptr %0, align 8, !tbaa !18
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.p
  %i.au = add nsw i64 %indvars.iv, %i.x
  %.idx239 = shl nsw i64 %i.au, 5
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 %.idx239 ; 10 uses
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aw = load <8 x float>, ptr %.0523106, align 32, !tbaa !116 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0523106, i64 32
  %i.ay = load <8 x float>, ptr %i.ax, align 32, !tbaa !116 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0523106, i64 64
  %i.ba = load <8 x float>, ptr %i.az, align 32, !tbaa !116 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0523106, i64 96
  %i.bc = load <8 x float>, ptr %i.bb, align 32, !tbaa !116 ; 2 uses
  %i.bd = shufflevector <8 x float> %i.aw, <8 x float> %i.ay, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 3 uses
  %i.be = shufflevector <8 x float> %i.aw, <8 x float> %i.ay, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 3 uses
  %i.bf = shufflevector <8 x float> %i.ba, <8 x float> %i.bc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 3 uses
  %i.bg = shufflevector <8 x float> %i.ba, <8 x float> %i.bc, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 3 uses
  %i.bh = shufflevector <8 x float> %i.bd, <8 x float> %i.bf, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.bi = shufflevector <8 x float> %i.be, <8 x float> %i.bg, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bk = shufflevector <8 x float> %i.bd, <8 x float> %i.bf, <4 x i32> <i32 0, i32 1, i32 8, i32 9>
  store <4 x float> %i.bk, ptr %i.bj, align 16, !tbaa !116
  %i.bl = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.bm = shufflevector <8 x float> %i.bd, <8 x float> %i.bf, <4 x i32> <i32 2, i32 3, i32 10, i32 11>
  store <4 x float> %i.bm, ptr %i.bl, align 16, !tbaa !116
  %i.bn = getelementptr inbounds nuw i8, ptr %i.av, i64 80
  %i.bo = shufflevector <8 x float> %i.be, <8 x float> %i.bg, <4 x i32> <i32 0, i32 1, i32 8, i32 9>
  store <4 x float> %i.bo, ptr %i.bn, align 16, !tbaa !116
  %i.bp = getelementptr inbounds nuw i8, ptr %i.av, i64 112
  %i.bq = shufflevector <8 x float> %i.be, <8 x float> %i.bg, <4 x i32> <i32 2, i32 3, i32 10, i32 11>
  store <4 x float> %i.bq, ptr %i.bp, align 16, !tbaa !116
  %i.br = getelementptr inbounds nuw i8, ptr %i.av, i64 144
  %i.bs = shufflevector <8 x float> %i.bh, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.bs, ptr %i.br, align 16, !tbaa !116
  %i.bt = getelementptr inbounds nuw i8, ptr %i.av, i64 176
  %i.bu = shufflevector <8 x float> %i.bh, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x float> %i.bu, ptr %i.bt, align 16, !tbaa !116
  %i.bv = getelementptr inbounds nuw i8, ptr %i.av, i64 208
  %i.bw = shufflevector <8 x float> %i.bi, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.bw, ptr %i.bv, align 16, !tbaa !116
  %i.bx = getelementptr inbounds nuw i8, ptr %i.av, i64 240
  %i.by = shufflevector <8 x float> %i.bi, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x float> %i.by, ptr %i.bx, align 16, !tbaa !116
  %i.bz = getelementptr inbounds nuw i8, ptr %.0523106, i64 128
  %i.ca = getelementptr inbounds nuw i8, ptr %i.av, i64 %.idx561
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0535 = phi i32 [ 4, %bb.d ], [ 0, %bb.c ]     ; 3 uses
  %.0532 = phi ptr [ %i.ca, %bb.d ], [ %i.av, %bb.c ] ; 2 uses
  %.1524 = phi ptr [ %i.bz, %bb.d ], [ %.0523106, %bb.c ] ; 2 uses
  %i.cb = add nuw nsw i32 %.0535, 7
  %i.cc = icmp slt i32 %i.cb, %4
  br i1 %i.cc, label %.lr.ph, label %.preheader83

.preheader83:                                     ; preds = %.lr.ph, %bb.e
  %.1536.lcssa = phi i32 [ %.0535, %bb.e ], [ %i.eb, %.lr.ph ] ; 2 uses
  %.1533.lcssa = phi ptr [ %.0532, %bb.e ], [ %i.ea, %.lr.ph ]
  %.2525.lcssa = phi ptr [ %.1524, %bb.e ], [ %i.dz, %.lr.ph ] ; 2 uses
  %i.cd = or disjoint i32 %.1536.lcssa, 3
  %i.ce = icmp slt i32 %i.cd, %4
  br i1 %i.ce, label %.lr.ph93, label %.loopexit81

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.252587 = phi ptr [ %i.dz, %.lr.ph ], [ %.1524, %bb.e ] ; 9 uses
  %.153386 = phi ptr [ %i.ea, %.lr.ph ], [ %.0532, %bb.e ] ; 9 uses
  %.153685 = phi i32 [ %i.eb, %.lr.ph ], [ %.0535, %bb.e ] ; 2 uses
  %i.cf = load <8 x float>, ptr %.252587, align 32, !tbaa !116 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.252587, i64 32
  %i.ch = load <8 x float>, ptr %i.cg, align 32, !tbaa !116 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.252587, i64 64
  %i.cj = load <8 x float>, ptr %i.ci, align 32, !tbaa !116 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.252587, i64 96
  %i.cl = load <8 x float>, ptr %i.ck, align 32, !tbaa !116 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.252587, i64 128
  %i.cn = load <8 x float>, ptr %i.cm, align 32, !tbaa !116 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.252587, i64 160
  %i.cp = load <8 x float>, ptr %i.co, align 32, !tbaa !116 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.252587, i64 192
  %i.cr = load <8 x float>, ptr %i.cq, align 32, !tbaa !116 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.252587, i64 224
  %i.ct = load <8 x float>, ptr %i.cs, align 32, !tbaa !116 ; 2 uses
  %i.cu = shufflevector <8 x float> %i.cf, <8 x float> %i.ch, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.cv = shufflevector <8 x float> %i.cf, <8 x float> %i.ch, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.cw = shufflevector <8 x float> %i.cj, <8 x float> %i.cl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.cx = shufflevector <8 x float> %i.cj, <8 x float> %i.cl, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.cy = shufflevector <8 x float> %i.cn, <8 x float> %i.cp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.cz = shufflevector <8 x float> %i.cn, <8 x float> %i.cp, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.da = shufflevector <8 x float> %i.cr, <8 x float> %i.ct, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.db = shufflevector <8 x float> %i.cr, <8 x float> %i.ct, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.dc = shufflevector <8 x float> %i.cu, <8 x float> %i.cw, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.dd = shufflevector <8 x float> %i.cu, <8 x float> %i.cw, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.de = shufflevector <8 x float> %i.cv, <8 x float> %i.cx, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.df = shufflevector <8 x float> %i.cv, <8 x float> %i.cx, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.dg = shufflevector <8 x float> %i.cy, <8 x float> %i.da, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.dh = shufflevector <8 x float> %i.cy, <8 x float> %i.da, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.di = shufflevector <8 x float> %i.cz, <8 x float> %i.db, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.dj = shufflevector <8 x float> %i.cz, <8 x float> %i.db, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.dk = shufflevector <8 x float> %i.dc, <8 x float> %i.dg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dl = shufflevector <8 x float> %i.dd, <8 x float> %i.dh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dm = shufflevector <8 x float> %i.de, <8 x float> %i.di, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dn = shufflevector <8 x float> %i.df, <8 x float> %i.dj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.do = shufflevector <8 x float> %i.dc, <8 x float> %i.dg, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.dp = shufflevector <8 x float> %i.dd, <8 x float> %i.dh, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.dq = shufflevector <8 x float> %i.de, <8 x float> %i.di, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
end_hunk_4
begin_hunk_5_@_ZN4ncnnL28transpose_unpack_output_tileERKNS_3MatERS0_iiii:bb.a
  store float %i.wa, ptr %i.wb, align 4, !tbaa !68
  %i.wc = getelementptr inbounds nuw i8, ptr %.27187, i64 4
  %i.wd = load float, ptr %i.wc, align 4, !tbaa !68
  %i.we = getelementptr inbounds nuw i8, ptr %i.vz, i64 20
  store float %i.wd, ptr %i.we, align 4, !tbaa !68
  %i.wf = getelementptr inbounds nuw i8, ptr %.27187, i64 8
  %i.wg = load float, ptr %i.wf, align 4, !tbaa !68
  %i.wh = getelementptr inbounds nuw i8, ptr %i.vz, i64 24
  store float %i.wg, ptr %i.wh, align 4, !tbaa !68
  %i.wi = getelementptr inbounds nuw i8, ptr %.27187, i64 12
  %i.wj = load float, ptr %i.wi, align 4, !tbaa !68
  %i.wk = getelementptr inbounds nuw i8, ptr %i.vz, i64 28
  store float %i.wj, ptr %i.wk, align 4, !tbaa !68
  %i.wl = getelementptr inbounds nuw i8, ptr %.27187, i64 16
  %i.wm = getelementptr inbounds nuw i8, ptr %i.vz, i64 %.idx
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.28 = phi ptr [ %i.wl, %bb.v ], [ %.27187, %bb.u ] ; 2 uses
  %.0510 = phi ptr [ %i.wm, %bb.v ], [ %i.vz, %bb.u ] ; 2 uses
  %.0509 = phi i32 [ 4, %bb.v ], [ 0, %bb.u ]     ; 3 uses
  %i.wn = add nuw nsw i32 %.0509, 7
  %i.wo = icmp slt i32 %i.wn, %4
  br i1 %i.wo, label %.lr.ph167, label %.preheader

.preheader:                                       ; preds = %.lr.ph167, %bb.w
  %.29.lcssa = phi ptr [ %.28, %bb.w ], [ %i.ws, %.lr.ph167 ] ; 2 uses
  %.1511.lcssa = phi ptr [ %.0510, %bb.w ], [ %i.wt, %.lr.ph167 ]
  %.1.lcssa = phi i32 [ %.0509, %bb.w ], [ %i.wu, %.lr.ph167 ] ; 2 uses
  %i.wp = or disjoint i32 %.1.lcssa, 3
  %i.wq = icmp slt i32 %i.wp, %4
  br i1 %i.wq, label %.lr.ph174, label %.loopexit

.lr.ph167:                                        ; preds = %bb.w, %.lr.ph167
  %.1166 = phi i32 [ %i.wu, %.lr.ph167 ], [ %.0509, %bb.w ] ; 2 uses
  %.1511165 = phi ptr [ %i.wt, %.lr.ph167 ], [ %.0510, %bb.w ] ; 2 uses
  %.29164 = phi ptr [ %i.ws, %.lr.ph167 ], [ %.28, %bb.w ] ; 2 uses
  %i.wr = load <8 x float>, ptr %.29164, align 1, !tbaa !116
  store <8 x float> %i.wr, ptr %.1511165, align 32, !tbaa !116
  %i.ws = getelementptr inbounds nuw i8, ptr %.29164, i64 32 ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %.1511165, i64 %.idx ; 2 uses
  %i.wu = add nuw nsw i32 %.1166, 8               ; 2 uses
  %i.wv = add nuw nsw i32 %.1166, 15
  %i.ww = icmp slt i32 %i.wv, %4
  br i1 %i.ww, label %.lr.ph167, label %.preheader, !llvm.loop !448

.lr.ph174:                                        ; preds = %.preheader, %.lr.ph174
  %.2173 = phi i32 [ %i.xj, %.lr.ph174 ], [ %.1.lcssa, %.preheader ]
  %.2512172 = phi ptr [ %i.xi, %.lr.ph174 ], [ %.1511.lcssa, %.preheader ] ; 5 uses
  %.30171 = phi ptr [ %i.xh, %.lr.ph174 ], [ %.29.lcssa, %.preheader ] ; 5 uses
  %i.wx = load float, ptr %.30171, align 4, !tbaa !68
  store float %i.wx, ptr %.2512172, align 4, !tbaa !68
  %i.wy = getelementptr inbounds nuw i8, ptr %.30171, i64 4
  %i.wz = load float, ptr %i.wy, align 4, !tbaa !68
  %i.xa = getelementptr inbounds nuw i8, ptr %.2512172, i64 4
  store float %i.wz, ptr %i.xa, align 4, !tbaa !68
  %i.xb = getelementptr inbounds nuw i8, ptr %.30171, i64 8
  %i.xc = load float, ptr %i.xb, align 4, !tbaa !68
  %i.xd = getelementptr inbounds nuw i8, ptr %.2512172, i64 8
  store float %i.xc, ptr %i.xd, align 4, !tbaa !68
  %i.xe = getelementptr inbounds nuw i8, ptr %.30171, i64 12
  %i.xf = load float, ptr %i.xe, align 4, !tbaa !68
  %i.xg = getelementptr inbounds nuw i8, ptr %.2512172, i64 12
  store float %i.xf, ptr %i.xg, align 4, !tbaa !68
  %i.xh = getelementptr inbounds nuw i8, ptr %.30171, i64 16 ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %.2512172, i64 %.idx
  %i.xj = add nuw nsw i32 %.2173, 4               ; 2 uses
  %i.xk = or disjoint i32 %i.xj, 3
  %i.xl = icmp slt i32 %i.xk, %4
  br i1 %i.xl, label %.lr.ph174, label %.loopexit, !llvm.loop !449

bb.x:                                             ; preds = %bb.t
  br i1 %i.oz, label %.lr.ph179.preheader, label %.loopexit

.lr.ph179.preheader:                              ; preds = %bb.x
  %i.xm = load ptr, ptr %0, align 8, !tbaa !18
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %i.xm, i64 %i.oy
  %i.xo = add nsw i64 %indvars.iv225, %i.pc
  %.idx246 = shl nsw i64 %i.xo, 4
  %i.xp = getelementptr inbounds i8, ptr %i.xn, i64 %.idx246 ; 2 uses
  br i1 %i.pi, label %.lr.ph179.epil.preheader, label %.lr.ph179

.lr.ph179:                                        ; preds = %.lr.ph179.preheader, %.lr.ph179
  %.0508177 = phi ptr [ %i.yb, %.lr.ph179 ], [ %i.xp, %.lr.ph179.preheader ] ; 2 uses
  %.32176 = phi ptr [ %i.ya, %.lr.ph179 ], [ %.27187, %.lr.ph179.preheader ] ; 5 uses
  %niter378 = phi i32 [ %niter378.next.3, %.lr.ph179 ], [ 0, %.lr.ph179.preheader ]
  %i.xq = load <4 x float>, ptr %.32176, align 1, !tbaa !116
  store <4 x float> %i.xq, ptr %.0508177, align 16, !tbaa !116
  %i.xr = getelementptr inbounds nuw i8, ptr %.32176, i64 16
  %i.xs = getelementptr inbounds nuw i8, ptr %.0508177, i64 %.idx550 ; 2 uses
  %i.xt = load <4 x float>, ptr %i.xr, align 1, !tbaa !116
  store <4 x float> %i.xt, ptr %i.xs, align 16, !tbaa !116
  %i.xu = getelementptr inbounds nuw i8, ptr %.32176, i64 32
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xs, i64 %.idx550 ; 2 uses
  %i.xw = load <4 x float>, ptr %i.xu, align 1, !tbaa !116
  store <4 x float> %i.xw, ptr %i.xv, align 16, !tbaa !116
  %i.xx = getelementptr inbounds nuw i8, ptr %.32176, i64 48
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xv, i64 %.idx550 ; 2 uses
  %i.xz = load <4 x float>, ptr %i.xx, align 1, !tbaa !116
  store <4 x float> %i.xz, ptr %i.xy, align 16, !tbaa !116
  %i.ya = getelementptr inbounds nuw i8, ptr %.32176, i64 64 ; 3 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xy, i64 %.idx550 ; 2 uses
  %niter378.next.3 = add nuw nsw i32 %niter378, 4 ; 2 uses
  %niter378.ncmp.3.not = icmp eq i32 %niter378.next.3, %unroll_iter377
  br i1 %niter378.ncmp.3.not, label %.loopexit.loopexit318.unr-lcssa, label %.lr.ph179, !llvm.loop !450

bb.y:                                             ; preds = %bb.t
  br i1 %i.pa, label %.lr.ph184.preheader, label %.loopexit

.lr.ph184.preheader:                              ; preds = %bb.y
  %i.yc = load ptr, ptr %0, align 8, !tbaa !18
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %i.yc, i64 %i.oy
  %i.ye = getelementptr [4 x i8], ptr %i.yd, i64 %indvars.iv225
  %i.yf = getelementptr [4 x i8], ptr %i.ye, i64 %i.pc ; 2 uses
  br i1 %i.ph, label %.lr.ph184.epil.preheader, label %.lr.ph184

.lr.ph184:                                        ; preds = %.lr.ph184.preheader, %.lr.ph184
  %.0506182 = phi ptr [ %i.zd, %.lr.ph184 ], [ %i.yf, %.lr.ph184.preheader ] ; 2 uses
  %.34181 = phi ptr [ %i.zc, %.lr.ph184 ], [ %.27187, %.lr.ph184.preheader ] ; 9 uses
  %niter371 = phi i32 [ %niter371.next.7, %.lr.ph184 ], [ 0, %.lr.ph184.preheader ]
  %i.yg = load float, ptr %.34181, align 4, !tbaa !68
  store float %i.yg, ptr %.0506182, align 4, !tbaa !68
  %i.yh = getelementptr inbounds nuw i8, ptr %.34181, i64 4
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %.0506182, i64 %i.k ; 2 uses
  %i.yj = load float, ptr %i.yh, align 4, !tbaa !68
  store float %i.yj, ptr %i.yi, align 4, !tbaa !68
  %i.yk = getelementptr inbounds nuw i8, ptr %.34181, i64 8
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %i.yi, i64 %i.k ; 2 uses
  %i.ym = load float, ptr %i.yk, align 4, !tbaa !68
  store float %i.ym, ptr %i.yl, align 4, !tbaa !68
  %i.yn = getelementptr inbounds nuw i8, ptr %.34181, i64 12
  %i.yo = getelementptr inbounds nuw [4 x i8], ptr %i.yl, i64 %i.k ; 2 uses
  %i.yp = load float, ptr %i.yn, align 4, !tbaa !68
  store float %i.yp, ptr %i.yo, align 4, !tbaa !68
  %i.yq = getelementptr inbounds nuw i8, ptr %.34181, i64 16
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr %i.yo, i64 %i.k ; 2 uses
  %i.ys = load float, ptr %i.yq, align 4, !tbaa !68
  store float %i.ys, ptr %i.yr, align 4, !tbaa !68
  %i.yt = getelementptr inbounds nuw i8, ptr %.34181, i64 20
  %i.yu = getelementptr inbounds nuw [4 x i8], ptr %i.yr, i64 %i.k ; 2 uses
  %i.yv = load float, ptr %i.yt, align 4, !tbaa !68
  store float %i.yv, ptr %i.yu, align 4, !tbaa !68
  %i.yw = getelementptr inbounds nuw i8, ptr %.34181, i64 24
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %i.yu, i64 %i.k ; 2 uses
  %i.yy = load float, ptr %i.yw, align 4, !tbaa !68
  store float %i.yy, ptr %i.yx, align 4, !tbaa !68
  %i.yz = getelementptr inbounds nuw i8, ptr %.34181, i64 28
  %i.za = getelementptr inbounds nuw [4 x i8], ptr %i.yx, i64 %i.k ; 2 uses
  %i.zb = load float, ptr %i.yz, align 4, !tbaa !68
  store float %i.zb, ptr %i.za, align 4, !tbaa !68
  %i.zc = getelementptr inbounds nuw i8, ptr %.34181, i64 32 ; 3 uses
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %i.za, i64 %i.k ; 2 uses
  %niter371.next.7 = add nuw nsw i32 %niter371, 8 ; 2 uses
  %niter371.ncmp.7 = icmp eq i32 %niter371.next.7, %unroll_iter370
  br i1 %niter371.ncmp.7, label %.loopexit.loopexit319.unr-lcssa, label %.lr.ph184, !llvm.loop !451

.loopexit.loopexit318.unr-lcssa:                  ; preds = %.lr.ph179
  br i1 %lcmp.mod374.not, label %.loopexit, label %.lr.ph179.epil.preheader

.lr.ph179.epil.preheader:                         ; preds = %.loopexit.loopexit318.unr-lcssa, %.lr.ph179.preheader
  %.0508177.epil.init = phi ptr [ %i.xp, %.lr.ph179.preheader ], [ %i.yb, %.loopexit.loopexit318.unr-lcssa ]
  %.32176.epil.init = phi ptr [ %.27187, %.lr.ph179.preheader ], [ %i.ya, %.loopexit.loopexit318.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod376)
  br label %.lr.ph179.epil

.lr.ph179.epil:                                   ; preds = %.lr.ph179.epil, %.lr.ph179.epil.preheader
  %.0508177.epil = phi ptr [ %i.zg, %.lr.ph179.epil ], [ %.0508177.epil.init, %.lr.ph179.epil.preheader ] ; 2 uses
  %.32176.epil = phi ptr [ %i.zf, %.lr.ph179.epil ], [ %.32176.epil.init, %.lr.ph179.epil.preheader ] ; 2 uses
  %epil.iter373 = phi i32 [ %epil.iter373.next, %.lr.ph179.epil ], [ 0, %.lr.ph179.epil.preheader ]
  %i.ze = load <4 x float>, ptr %.32176.epil, align 1, !tbaa !116
  store <4 x float> %i.ze, ptr %.0508177.epil, align 16, !tbaa !116
  %i.zf = getelementptr inbounds nuw i8, ptr %.32176.epil, i64 16 ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %.0508177.epil, i64 %.idx550
  %epil.iter373.next = add i32 %epil.iter373, 1   ; 2 uses
  %epil.iter373.cmp.not = icmp eq i32 %epil.iter373.next, %xtraiter372
  br i1 %epil.iter373.cmp.not, label %.loopexit, label %.lr.ph179.epil, !llvm.loop !452

.loopexit.loopexit319.unr-lcssa:                  ; preds = %.lr.ph184
  br i1 %lcmp.mod367.not, label %.loopexit, label %.lr.ph184.epil.preheader

.lr.ph184.epil.preheader:                         ; preds = %.loopexit.loopexit319.unr-lcssa, %.lr.ph184.preheader
  %.0506182.epil.init = phi ptr [ %i.yf, %.lr.ph184.preheader ], [ %i.zd, %.loopexit.loopexit319.unr-lcssa ]
  %.34181.epil.init = phi ptr [ %.27187, %.lr.ph184.preheader ], [ %i.zc, %.loopexit.loopexit319.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod369)
  br label %.lr.ph184.epil

.lr.ph184.epil:                                   ; preds = %.lr.ph184.epil, %.lr.ph184.epil.preheader
  %.0506182.epil = phi ptr [ %i.zj, %.lr.ph184.epil ], [ %.0506182.epil.init, %.lr.ph184.epil.preheader ] ; 2 uses
  %.34181.epil = phi ptr [ %i.zi, %.lr.ph184.epil ], [ %.34181.epil.init, %.lr.ph184.epil.preheader ] ; 2 uses
  %epil.iter366 = phi i32 [ %epil.iter366.next, %.lr.ph184.epil ], [ 0, %.lr.ph184.epil.preheader ]
  %i.zh = load float, ptr %.34181.epil, align 4, !tbaa !68
  store float %i.zh, ptr %.0506182.epil, align 4, !tbaa !68
  %i.zi = getelementptr inbounds nuw i8, ptr %.34181.epil, i64 4 ; 2 uses
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %.0506182.epil, i64 %i.k
  %epil.iter366.next = add i32 %epil.iter366, 1   ; 2 uses
  %epil.iter366.cmp.not = icmp eq i32 %epil.iter366.next, %xtraiter365
  br i1 %epil.iter366.cmp.not, label %.loopexit, label %.lr.ph184.epil, !llvm.loop !453

.loopexit:                                        ; preds = %.loopexit.loopexit319.unr-lcssa, %.lr.ph184.epil, %.loopexit.loopexit318.unr-lcssa, %.lr.ph179.epil, %.lr.ph174, %bb.t, %.preheader, %bb.x, %bb.y
  %.35 = phi ptr [ %.27187, %bb.t ], [ %.27187, %bb.y ], [ %i.xh, %.lr.ph174 ], [ %i.zf, %.lr.ph179.epil ], [ %.27187, %bb.x ], [ %.29.lcssa, %.preheader ], [ %i.ya, %.loopexit.loopexit318.unr-lcssa ], [ %i.zc, %.loopexit.loopexit319.unr-lcssa ], [ %i.zi, %.lr.ph184.epil ]
  %indvars.iv.next226 = add nsw i64 %indvars.iv225, 1 ; 2 uses
  %exitcond228.not = icmp eq i64 %indvars.iv.next226, %wide.trip.count
  br i1 %exitcond228.not, label %._crit_edge, label %bb.t, !llvm.loop !454

._crit_edge:                                      ; preds = %.loopexit, %.preheader70
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL11gemm_AT_x86ERKNS_3MatES2_S2_RS0_iiiiiiiiiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !45
  %i.h = load i32, ptr %0, align 4, !tbaa !45     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !45
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !45
  %i.k = load i32, ptr %i.a, align 4, !tbaa !45   ; 2 uses
  %.not71 = icmp sgt i32 %i.k, %i.j
  br i1 %.not71, label %._crit_edge, label %.noexc45.lr.ph

.noexc45.lr.ph:                                   ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %.noexc45

.noexc45:                                         ; preds = %.noexc45.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.072 = phi i32 [ %i.k, %.noexc45.lr.ph ], [ %i.an, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.o = load i32, ptr %3, align 4, !tbaa !45     ; 2 uses
  %i.p = sdiv i32 %.072, %i.o                     ; 2 uses
  %i.q = srem i32 %.072, %i.o                     ; 2 uses
  %i.r = load i32, ptr %4, align 4, !tbaa !45     ; 2 uses
  %i.s = mul nsw i32 %i.r, %i.p                   ; 3 uses
  %i.t = load i32, ptr %5, align 4, !tbaa !45     ; 2 uses
  %i.u = mul nsw i32 %i.t, %i.q                   ; 3 uses
  %i.v = load i32, ptr %6, align 4, !tbaa !45
  %i.w = sub nsw i32 %i.v, %i.s
  %.sroa.speculated68 = call i32 @llvm.smin.i32(i32 %i.r, i32 %i.w) ; 2 uses
  %i.x = load i32, ptr %7, align 4, !tbaa !45
  %i.y = sub nsw i32 %i.x, %i.u
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.t, i32 %i.y) ; 2 uses
  %i.z = load i32, ptr %i.l, align 4, !tbaa !88, !noalias !455
  %i.aa = load ptr, ptr %8, align 8, !tbaa !18, !noalias !455
  %i.ab = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !455
  %i.ac = sext i32 %i.p to i64
  %i.ad = mul i64 %i.ab, %i.ac
  %i.ae = load i64, ptr %i.n, align 8, !tbaa !59, !noalias !455 ; 2 uses
  %i.af = mul i64 %i.ad, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.af
  %i.ah = sext i32 %i.z to i64
  %i.ai = sext i32 %i.q to i64
  %i.aj = mul nsw i64 %i.ah, %i.ai
  %i.ak = mul i64 %i.aj, %i.ae
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %9, align 4, !tbaa !45
  %.not36 = icmp eq i32 %i.am, 0
  br i1 %.not36, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc45
  call fastcc void @_ZN4ncnnL11pack_B_tileERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %10, ptr %i.al, i32 noundef %i.s, i32 noundef %.sroa.speculated68, i32 noundef %i.u, i32 noundef %.sroa.speculated)
  br label %_ZN4ncnn3MatD2Ev.exit

bb.d:                                             ; preds = %.noexc45
  call fastcc void @_ZN4ncnnL21transpose_pack_B_tileERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %10, ptr %i.al, i32 noundef %i.s, i32 noundef %.sroa.speculated68, i32 noundef %i.u, i32 noundef %.sroa.speculated)
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.d, %bb.c
  %i.an = add nsw i32 %.072, 1
  %i.ao = load i32, ptr %i.b, align 4, !tbaa !45
  %.not.not = icmp slt i32 %.072, %i.ao
  br i1 %.not.not, label %.noexc45, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL11gemm_AT_x86ERKNS_3MatES2_S2_RS0_iiiiiiiiiRKNS_6OptionE.omp_outlined.3(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %14, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %15, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %16) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %17 = alloca %"class.ncnn::Mat", align 8        ; 15 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !45
  %i.h = load i32, ptr %0, align 4, !tbaa !45     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !45
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !45
  %i.k = load i32, ptr %i.a, align 4, !tbaa !45   ; 2 uses
  %.not187 = icmp sgt i32 %i.k, %i.j
  br i1 %.not187, label %._crit_edge190, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %17, i64 44
  %i.r = getelementptr inbounds nuw i8, ptr %17, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %17, i64 52
  %i.t = getelementptr inbounds nuw i8, ptr %17, i64 56
  %i.u = getelementptr inbounds nuw i8, ptr %17, i64 64 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 44
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 52
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 44
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %15, i64 44
  %i.ah = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %15, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.059188 = phi i32 [ %i.k, %.lr.ph ], [ %i.du, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.aj = load i32, ptr %3, align 4, !tbaa !45    ; 2 uses
  %i.ak = sdiv i32 %.059188, %i.aj
  %i.al = srem i32 %.059188, %i.aj
  %i.am = load i32, ptr %4, align 4, !tbaa !45    ; 2 uses
  %i.an = mul nsw i32 %i.am, %i.ak                ; 5 uses
  %i.ao = load i32, ptr %5, align 4, !tbaa !45    ; 2 uses
  %i.ap = mul nsw i32 %i.ao, %i.al                ; 5 uses
  %i.aq = load i32, ptr %6, align 4, !tbaa !45
  %i.ar = sub nsw i32 %i.aq, %i.an
  %.sroa.speculated183 = call i32 @llvm.smin.i32(i32 %i.am, i32 %i.ar) ; 3 uses
  %i.as = load i32, ptr %7, align 4, !tbaa !45
  %i.at = sub nsw i32 %i.as, %i.ap
  %.sroa.speculated179 = call i32 @llvm.smin.i32(i32 %i.ao, i32 %i.at) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #9
  store i64 0, ptr %i.u, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %17, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.o, i8 0, i64 28, i1 false)
  %i.au = load i32, ptr %8, align 4, !tbaa !45
  %i.av = load i32, ptr %9, align 4, !tbaa !45
  %i.aw = icmp sgt i32 %i.au, %i.av
  br i1 %i.aw, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ax = load i32, ptr %10, align 4, !tbaa !45
  %i.ay = icmp eq i32 %i.ax, 3
  br i1 %i.ay, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.az = load i32, ptr %11, align 4, !tbaa !45
  %.not60 = icmp eq i32 %i.az, 0
  br i1 %.not60, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ba = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc100 unwind label %bb.j

.noexc100:                                        ; preds = %bb.f
  %i.bb = load i32, ptr %i.v, align 4, !tbaa !88, !noalias !458 ; 2 uses
  %i.bc = load i32, ptr %i.w, align 8, !tbaa !90, !noalias !458 ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN4ncnn12Gemm_x86_avx20create_pipeline_int8ERKNS_6OptionE.omp_outlined:bb.a
  %.0115.lcssa.i = phi i32 [ 0, %bb.k ], [ %i.gg, %.preheader129.i.loopexit.unr-lcssa ], [ %i.gg, %.lr.ph.i.epil.preheader ] ; 5 uses
  %i.hr = icmp slt i32 %.0115.lcssa.i, %.sroa.speculated
  br i1 %i.hr, label %.lr.ph171.i.preheader, label %._crit_edge.i

.lr.ph171.i.preheader:                            ; preds = %.preheader129.i
  %i.hs = sub i32 %.sroa.speculated, %.0115.lcssa.i
  %xtraiter126 = and i32 %i.hs, 3                 ; 2 uses
  %lcmp.mod127.not = icmp eq i32 %xtraiter126, 0
  br i1 %lcmp.mod127.not, label %.lr.ph171.i.prol.loopexit, label %.lr.ph171.i.prol

.lr.ph171.i.prol:                                 ; preds = %.lr.ph171.i.preheader, %.lr.ph171.i.prol
  %.1170.i.prol = phi i32 [ %i.hz, %.lr.ph171.i.prol ], [ %.0115.lcssa.i, %.lr.ph171.i.preheader ]
  %.1117169.i.prol = phi ptr [ %i.hy, %.lr.ph171.i.prol ], [ %.0116.lcssa.i, %.lr.ph171.i.preheader ] ; 3 uses
  %.5168.i.prol = phi ptr [ %i.hx, %.lr.ph171.i.prol ], [ %.4.lcssa.i, %.lr.ph171.i.preheader ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph171.i.prol ], [ 0, %.lr.ph171.i.preheader ]
  %i.ht = load i8, ptr %.1117169.i.prol, align 1, !tbaa !116
  store i8 %i.ht, ptr %.5168.i.prol, align 1, !tbaa !116
  %i.hu = getelementptr inbounds nuw i8, ptr %.1117169.i.prol, i64 1
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !116
  %i.hw = getelementptr inbounds nuw i8, ptr %.5168.i.prol, i64 1
  store i8 %i.hv, ptr %i.hw, align 1, !tbaa !116
  %i.hx = getelementptr inbounds nuw i8, ptr %.5168.i.prol, i64 2 ; 3 uses
  %i.hy = getelementptr inbounds i8, ptr %.1117169.i.prol, i64 %i.gd ; 2 uses
  %i.hz = add nuw nsw i32 %.1170.i.prol, 1        ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter126
  br i1 %prol.iter.cmp.not, label %.lr.ph171.i.prol.loopexit, label %.lr.ph171.i.prol, !llvm.loop !530

.lr.ph171.i.prol.loopexit:                        ; preds = %.lr.ph171.i.prol, %.lr.ph171.i.preheader
  %.lcssa118.unr = phi ptr [ poison, %.lr.ph171.i.preheader ], [ %i.hx, %.lr.ph171.i.prol ]
  %.1170.i.unr = phi i32 [ %.0115.lcssa.i, %.lr.ph171.i.preheader ], [ %i.hz, %.lr.ph171.i.prol ]
  %.1117169.i.unr = phi ptr [ %.0116.lcssa.i, %.lr.ph171.i.preheader ], [ %i.hy, %.lr.ph171.i.prol ]
  %.5168.i.unr = phi ptr [ %.4.lcssa.i, %.lr.ph171.i.preheader ], [ %i.hx, %.lr.ph171.i.prol ]
  %i.ia = sub i32 %.0115.lcssa.i, %.sroa.speculated
  %i.ib = icmp ugt i32 %i.ia, -4
  br i1 %i.ib, label %._crit_edge.i, label %.lr.ph171.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.0116164.i = phi ptr [ %i.iz, %.lr.ph.i ], [ %i.he, %.lr.ph.i.preheader ] ; 4 uses
  %.4163.i = phi ptr [ %i.iy, %.lr.ph.i ], [ %.3173.i, %.lr.ph.i.preheader ] ; 9 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.ic = load i8, ptr %.0116164.i, align 1, !tbaa !116
  store i8 %i.ic, ptr %.4163.i, align 1, !tbaa !116
  %i.id = getelementptr inbounds i8, ptr %.0116164.i, i64 %i.gd ; 2 uses
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !116
  %i.if = getelementptr inbounds nuw i8, ptr %.4163.i, i64 1
  store i8 %i.ie, ptr %i.if, align 1, !tbaa !116
  %i.ig = getelementptr inbounds nuw i8, ptr %.0116164.i, i64 1
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !116
  %i.ii = getelementptr inbounds nuw i8, ptr %.4163.i, i64 2
  store i8 %i.ih, ptr %i.ii, align 1, !tbaa !116
  %i.ij = getelementptr i8, ptr %i.id, i64 1
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !116
  %i.il = getelementptr inbounds nuw i8, ptr %.4163.i, i64 3
  store i8 %i.ik, ptr %i.il, align 1, !tbaa !116
  %i.im = getelementptr inbounds nuw i8, ptr %.4163.i, i64 4
  %i.in = getelementptr inbounds i8, ptr %.0116164.i, i64 %i.gf ; 4 uses
  %i.io = load i8, ptr %i.in, align 1, !tbaa !116
  store i8 %i.io, ptr %i.im, align 1, !tbaa !116
  %i.ip = getelementptr inbounds i8, ptr %i.in, i64 %i.gd ; 2 uses
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !116
  %i.ir = getelementptr inbounds nuw i8, ptr %.4163.i, i64 5
  store i8 %i.iq, ptr %i.ir, align 1, !tbaa !116
  %i.is = getelementptr inbounds nuw i8, ptr %i.in, i64 1
  %i.it = load i8, ptr %i.is, align 1, !tbaa !116
  %i.iu = getelementptr inbounds nuw i8, ptr %.4163.i, i64 6
  store i8 %i.it, ptr %i.iu, align 1, !tbaa !116
  %i.iv = getelementptr i8, ptr %i.ip, i64 1
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !116
  %i.ix = getelementptr inbounds nuw i8, ptr %.4163.i, i64 7
  store i8 %i.iw, ptr %i.ix, align 1, !tbaa !116
  %i.iy = getelementptr inbounds nuw i8, ptr %.4163.i, i64 8 ; 3 uses
  %i.iz = getelementptr inbounds i8, ptr %i.in, i64 %i.gf ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader129.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !531

.lr.ph171.i:                                      ; preds = %.lr.ph171.i.prol.loopexit, %.lr.ph171.i
  %.1170.i = phi i32 [ %i.jy, %.lr.ph171.i ], [ %.1170.i.unr, %.lr.ph171.i.prol.loopexit ]
  %.1117169.i = phi ptr [ %i.jx, %.lr.ph171.i ], [ %.1117169.i.unr, %.lr.ph171.i.prol.loopexit ] ; 3 uses
  %.5168.i = phi ptr [ %i.jw, %.lr.ph171.i ], [ %.5168.i.unr, %.lr.ph171.i.prol.loopexit ] ; 9 uses
  %i.ja = load i8, ptr %.1117169.i, align 1, !tbaa !116
  store i8 %i.ja, ptr %.5168.i, align 1, !tbaa !116
  %i.jb = getelementptr inbounds nuw i8, ptr %.1117169.i, i64 1
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !116
  %i.jd = getelementptr inbounds nuw i8, ptr %.5168.i, i64 1
  store i8 %i.jc, ptr %i.jd, align 1, !tbaa !116
  %i.je = getelementptr inbounds nuw i8, ptr %.5168.i, i64 2
  %i.jf = getelementptr inbounds i8, ptr %.1117169.i, i64 %i.gd ; 3 uses
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !116
  store i8 %i.jg, ptr %i.je, align 1, !tbaa !116
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 1
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !116
  %i.jj = getelementptr inbounds nuw i8, ptr %.5168.i, i64 3
  store i8 %i.ji, ptr %i.jj, align 1, !tbaa !116
  %i.jk = getelementptr inbounds nuw i8, ptr %.5168.i, i64 4
  %i.jl = getelementptr inbounds i8, ptr %i.jf, i64 %i.gd ; 3 uses
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !116
  store i8 %i.jm, ptr %i.jk, align 1, !tbaa !116
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 1
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !116
  %i.jp = getelementptr inbounds nuw i8, ptr %.5168.i, i64 5
  store i8 %i.jo, ptr %i.jp, align 1, !tbaa !116
  %i.jq = getelementptr inbounds nuw i8, ptr %.5168.i, i64 6
  %i.jr = getelementptr inbounds i8, ptr %i.jl, i64 %i.gd ; 3 uses
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !116
  store i8 %i.js, ptr %i.jq, align 1, !tbaa !116
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 1
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !116
  %i.jv = getelementptr inbounds nuw i8, ptr %.5168.i, i64 7
  store i8 %i.ju, ptr %i.jv, align 1, !tbaa !116
  %i.jw = getelementptr inbounds nuw i8, ptr %.5168.i, i64 8 ; 2 uses
  %i.jx = getelementptr inbounds i8, ptr %i.jr, i64 %i.gd
  %i.jy = add nuw nsw i32 %.1170.i, 4             ; 2 uses
  %exitcond207.not.i.3 = icmp eq i32 %i.jy, %.sroa.speculated
  br i1 %exitcond207.not.i.3, label %._crit_edge.i, label %.lr.ph171.i, !llvm.loop !532

._crit_edge.i:                                    ; preds = %.lr.ph171.i.prol.loopexit, %.lr.ph171.i, %.preheader129.i
  %.5.lcssa.i = phi ptr [ %.4.lcssa.i, %.preheader129.i ], [ %.lcssa118.unr, %.lr.ph171.i.prol.loopexit ], [ %i.jw, %.lr.ph171.i ] ; 2 uses
  %indvars.iv.next209.i = add nuw nsw i64 %indvars.iv208.i, 2 ; 3 uses
  %i.jz = icmp slt i64 %indvars.iv.next209.i, %invariant.op.i
  br i1 %i.jz, label %bb.k, label %.preheader.loopexit.i, !llvm.loop !533

.lr.ph182.i:                                      ; preds = %._crit_edge183.i, %.lr.ph182.preheader.i
  %indvars.iv212.i = phi i64 [ %i.gt, %.lr.ph182.preheader.i ], [ %indvars.iv.next213.i, %._crit_edge183.i ] ; 2 uses
  %.6185.i = phi ptr [ %.3.lcssa.i, %.lr.ph182.preheader.i ], [ %.lcssa119, %._crit_edge183.i ] ; 2 uses
  %i.ka = load ptr, ptr %i.z, align 8, !tbaa !18
  %i.kb = load i32, ptr %i.aa, align 4, !tbaa !88
  %i.kc = sext i32 %i.kb to i64
  %i.kd = mul nsw i64 %i.kc, %i.gq
  %i.ke = load i64, ptr %i.ab, align 8, !tbaa !59
  %i.kf = mul i64 %i.kd, %i.ke
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.kf
  %i.kh = getelementptr i8, ptr %i.kg, i64 %indvars.iv212.i
  %i.ki = getelementptr i8, ptr %i.kh, i64 %i.aj  ; 2 uses
  br i1 %i.gv, label %.epil.preheader, label %.lr.ph182.i.new

.lr.ph182.i.new:                                  ; preds = %.lr.ph182.i, %.lr.ph182.i.new
  %.0114179.i = phi ptr [ %i.lg, %.lr.ph182.i.new ], [ %i.ki, %.lr.ph182.i ] ; 2 uses
  %.7178.i = phi ptr [ %i.lf, %.lr.ph182.i.new ], [ %.6185.i, %.lr.ph182.i ] ; 9 uses
  %niter133 = phi i32 [ %niter133.next.7, %.lr.ph182.i.new ], [ 0, %.lr.ph182.i ]
  %i.kj = load i8, ptr %.0114179.i, align 1, !tbaa !116
  store i8 %i.kj, ptr %.7178.i, align 1, !tbaa !116
  %i.kk = getelementptr inbounds nuw i8, ptr %.7178.i, i64 1
  %i.kl = getelementptr inbounds i8, ptr %.0114179.i, i64 %i.gs ; 2 uses
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !116
  store i8 %i.km, ptr %i.kk, align 1, !tbaa !116
  %i.kn = getelementptr inbounds nuw i8, ptr %.7178.i, i64 2
  %i.ko = getelementptr inbounds i8, ptr %i.kl, i64 %i.gs ; 2 uses
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !116
  store i8 %i.kp, ptr %i.kn, align 1, !tbaa !116
  %i.kq = getelementptr inbounds nuw i8, ptr %.7178.i, i64 3
  %i.kr = getelementptr inbounds i8, ptr %i.ko, i64 %i.gs ; 2 uses
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !116
  store i8 %i.ks, ptr %i.kq, align 1, !tbaa !116
  %i.kt = getelementptr inbounds nuw i8, ptr %.7178.i, i64 4
  %i.ku = getelementptr inbounds i8, ptr %i.kr, i64 %i.gs ; 2 uses
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !116
  store i8 %i.kv, ptr %i.kt, align 1, !tbaa !116
  %i.kw = getelementptr inbounds nuw i8, ptr %.7178.i, i64 5
  %i.kx = getelementptr inbounds i8, ptr %i.ku, i64 %i.gs ; 2 uses
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !116
  store i8 %i.ky, ptr %i.kw, align 1, !tbaa !116
  %i.kz = getelementptr inbounds nuw i8, ptr %.7178.i, i64 6
  %i.la = getelementptr inbounds i8, ptr %i.kx, i64 %i.gs ; 2 uses
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !116
  store i8 %i.lb, ptr %i.kz, align 1, !tbaa !116
  %i.lc = getelementptr inbounds nuw i8, ptr %.7178.i, i64 7
  %i.ld = getelementptr inbounds i8, ptr %i.la, i64 %i.gs ; 2 uses
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !116
  store i8 %i.le, ptr %i.lc, align 1, !tbaa !116
  %i.lf = getelementptr inbounds nuw i8, ptr %.7178.i, i64 8 ; 3 uses
  %i.lg = getelementptr inbounds i8, ptr %i.ld, i64 %i.gs ; 2 uses
  %niter133.next.7 = add i32 %niter133, 8         ; 2 uses
  %niter133.ncmp.7 = icmp eq i32 %niter133.next.7, %unroll_iter132
  br i1 %niter133.ncmp.7, label %._crit_edge183.i.unr-lcssa, label %.lr.ph182.i.new, !llvm.loop !534

._crit_edge183.i.unr-lcssa:                       ; preds = %.lr.ph182.i.new
  br i1 %lcmp.mod129.not, label %._crit_edge183.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge183.i.unr-lcssa, %.lr.ph182.i
  %.0114179.i.epil.init = phi ptr [ %i.ki, %.lr.ph182.i ], [ %i.lg, %._crit_edge183.i.unr-lcssa ]
  %.7178.i.epil.init = phi ptr [ %.6185.i, %.lr.ph182.i ], [ %i.lf, %._crit_edge183.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod131)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader
  %.0114179.i.epil = phi ptr [ %.0114179.i.epil.init, %.epil.preheader ], [ %i.lj, %bb.l ] ; 2 uses
  %.7178.i.epil = phi ptr [ %.7178.i.epil.init, %.epil.preheader ], [ %i.li, %bb.l ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.l ]
  %i.lh = load i8, ptr %.0114179.i.epil, align 1, !tbaa !116
  store i8 %i.lh, ptr %.7178.i.epil, align 1, !tbaa !116
  %i.li = getelementptr inbounds nuw i8, ptr %.7178.i.epil, i64 1 ; 2 uses
  %i.lj = getelementptr inbounds i8, ptr %.0114179.i.epil, i64 %i.gs
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter128
  br i1 %epil.iter.cmp.not, label %._crit_edge183.i, label %bb.l, !llvm.loop !535

._crit_edge183.i:                                 ; preds = %bb.l, %._crit_edge183.i.unr-lcssa
  %.lcssa119 = phi ptr [ %i.lf, %._crit_edge183.i.unr-lcssa ], [ %i.li, %bb.l ]
  %indvars.iv.next213.i = add nsw i64 %indvars.iv212.i, 1 ; 2 uses
  %exitcond215.not.i = icmp eq i64 %indvars.iv.next213.i, %wide.trip.count.i
  br i1 %exitcond215.not.i, label %_ZN4ncnnL26transpose_pack_A_tile_int8ERKNS_3MatERS0_iiii.exit, label %.lr.ph182.i, !llvm.loop !536

bb.m:                                             ; preds = %.noexc40
  invoke fastcc void @_ZN4ncnnL16pack_A_tile_int8ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %i.z, ptr noundef nonnull align 8 dereferenceable(72) %8, i32 noundef %i.ah, i32 noundef %.sroa.speculated60, i32 noundef %.071, i32 noundef %.sroa.speculated)
          to label %_ZN4ncnnL26transpose_pack_A_tile_int8ERKNS_3MatERS0_iiii.exit unwind label %bb.u

_ZN4ncnnL26transpose_pack_A_tile_int8ERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge183.i, %.lr.ph187.i, %.preheader.i, %bb.d, %bb.f, %bb.h, %bb.m
  %i.lk = load ptr, ptr %i.r, align 8, !tbaa !11  ; 2 uses
  %.not.i33 = icmp eq ptr %i.lk, null
  br i1 %.not.i33, label %_ZN4ncnn3MatD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4ncnnL26transpose_pack_A_tile_int8ERKNS_3MatERS0_iiii.exit
  %i.ll = atomicrmw add ptr %i.lk, i32 -1 acq_rel, align 4
  %i.lm = icmp eq i32 %i.ll, 1
  br i1 %i.lm, label %bb.o, label %_ZN4ncnn3MatD2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.ln = load ptr, ptr %i.u, align 8, !tbaa !17  ; 3 uses
  %.not3.i34 = icmp eq ptr %i.ln, null
  %i.lo = load ptr, ptr %8, align 8, !tbaa !18    ; 3 uses
  br i1 %.not3.i34, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.lp = load ptr, ptr %i.ln, align 8, !tbaa !9
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 24
  %i.lr = load ptr, ptr %i.lq, align 8
  invoke void %i.lr(ptr noundef nonnull align 8 dereferenceable(8) %i.ln, ptr noundef %i.lo)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.s, !inline_history !19

bb.q:                                             ; preds = %bb.o
  %.not.i37 = icmp eq ptr %i.lo, null
  br i1 %.not.i37, label %_ZN4ncnn3MatD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @free(ptr noundef nonnull %i.lo) #9
  br label %_ZN4ncnn3MatD2Ev.exit

bb.s:                                             ; preds = %bb.p
  %i.ls = landingpad { ptr, i32 }
          catch ptr null
  %i.lt = extractvalue { ptr, i32 } %i.ls, 0
  call void @__clang_call_terminate(ptr %i.lt) #26
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.n, %_ZN4ncnnL26transpose_pack_A_tile_int8ERKNS_3MatERS0_iiii.exit, %bb.p, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  %i.lu = load i32, ptr %5, align 4, !tbaa !45    ; 2 uses
  %i.lv = add nsw i32 %i.lu, %.071                ; 2 uses
  %i.lw = load i32, ptr %4, align 4, !tbaa !45    ; 3 uses
  %i.lx = icmp slt i32 %i.lv, %i.lw
  br i1 %i.lx, label %.noexc40, label %._crit_edge.loopexit, !llvm.loop !537

._crit_edge75:                                    ; preds = %._crit_edge, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge75, %bb.a
  ret void

bb.u:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.m
  %i.ly = landingpad { ptr, i32 }
          catch ptr null
  %i.lz = extractvalue { ptr, i32 } %i.ly, 0
  call void @__clang_call_terminate(ptr %i.lz) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL16pack_A_tile_int8ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn29cpu_support_x86_avx_vnni_int8Ev()
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn28pack_A_tile_int8_avxvnniint8ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN4ncnn24cpu_support_x86_avx_vnniEv()
  %.not147 = icmp eq i32 %i.b, 0
  br i1 %.not147, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4ncnn24pack_A_tile_int8_avxvnniERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.c = tail call noundef i32 @_ZN4ncnn20cpu_support_x86_avx2Ev()
  %.not148 = icmp eq i32 %i.c, 0
  br i1 %.not148, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4ncnn21pack_A_tile_int8_avx2ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.d = load ptr, ptr %1, align 8, !tbaa !18     ; 3 uses
  %i.e = icmp sgt i32 %3, 3
  br i1 %i.e, label %.lr.ph174, label %.preheader150

.lr.ph174:                                        ; preds = %bb.g
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = sext i32 %4 to i64                       ; 12 uses
  %i.i = icmp sgt i32 %5, 1
  br i1 %i.i, label %.lr.ph.us.preheader, label %.lr.ph174.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph174
  %i.j = and i32 %5, 2147483646                   ; 7 uses
  %i.k = sext i32 %2 to i64
  %i.l = zext nneg i32 %3 to i64
  %i.m = icmp slt i32 %i.j, %5
  %i.n = xor i32 %i.j, -1
  %i.o = add nsw i32 %5, %i.n
  %i.p = zext i32 %i.o to i64                     ; 5 uses
  %i.q = shl nuw nsw i64 %i.p, 2
  %i.r = xor i32 %i.j, -1
  %i.s = add nsw i32 %5, %i.r                     ; 3 uses
  %i.t = zext i32 %i.s to i64
  %i.u = add nuw nsw i64 %i.t, 1                  ; 5 uses
  %min.iters.check = icmp ult i32 %i.s, 7
  %min.iters.check277 = icmp ult i32 %i.s, 31
  %i.v = and i64 %i.u, 24
  %n.vec = and i64 %i.u, 8589934560               ; 9 uses
  %i.w = trunc i64 %n.vec to i32
  %i.x = add i32 %i.j, %i.w
  %i.y = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %i.u, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.v, 0
  %n.vec290 = and i64 %i.u, 8589934584            ; 8 uses
  %i.z = trunc i64 %n.vec290 to i32
  %i.aa = add i32 %i.j, %i.z
  %i.ab = shl nuw nsw i64 %n.vec290, 2
  %cmp.n303 = icmp eq i64 %i.u, %n.vec290
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv226 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next227, %._crit_edge.us ] ; 2 uses
  %.0144171.us = phi ptr [ %i.d, %.lr.ph.us.preheader ], [ %.2146.lcssa.us, %._crit_edge.us ] ; 3 uses
  %.0144171.us261 = ptrtoaddr ptr %.0144171.us to i64
  %i.ac = add nsw i64 %indvars.iv226, %i.k        ; 4 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !18    ; 8 uses
  %i.ae = load i32, ptr %i.f, align 4, !tbaa !88
  %i.af = sext i32 %i.ae to i64
  %i.ag = load i64, ptr %i.g, align 8, !tbaa !59
  %i.ah = mul i64 %i.ag, %i.af                    ; 4 uses
  %i.ai = mul i64 %i.ah, %i.ac                    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ai
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 %i.h
  %i.al = add nsw i64 %i.ac, 1
  %i.am = mul i64 %i.ah, %i.al                    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.am
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 %i.h
  %i.ap = add nsw i64 %i.ac, 2
  %i.aq = mul i64 %i.ah, %i.ap                    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.aq
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.h
  %i.at = add nsw i64 %i.ac, 3
  %i.au = mul i64 %i.ah, %i.at                    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.au
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 %i.h
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.us, %bb.h
  %indvar = phi i64 [ 0, %.lr.ph.us ], [ %indvar.next, %bb.h ] ; 2 uses
  %.0132157.us = phi i32 [ 0, %.lr.ph.us ], [ %i.bv, %bb.h ]
  %.0134156.us = phi ptr [ %i.aw, %.lr.ph.us ], [ %i.bu, %bb.h ] ; 3 uses
  %.0136155.us = phi ptr [ %i.as, %.lr.ph.us ], [ %i.bt, %bb.h ] ; 3 uses
  %.0138154.us = phi ptr [ %i.ao, %.lr.ph.us ], [ %i.bs, %bb.h ] ; 3 uses
  %.0140153.us = phi ptr [ %i.ak, %.lr.ph.us ], [ %i.br, %bb.h ] ; 3 uses
  %.1145152.us = phi ptr [ %.0144171.us, %.lr.ph.us ], [ %i.bq, %bb.h ] ; 9 uses
  %i.ax = load i8, ptr %.0140153.us, align 1, !tbaa !116
  store i8 %i.ax, ptr %.1145152.us, align 1, !tbaa !116
  %i.ay = getelementptr inbounds nuw i8, ptr %.0140153.us, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !116
  %i.ba = getelementptr inbounds nuw i8, ptr %.1145152.us, i64 1
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !116
  %i.bb = load i8, ptr %.0138154.us, align 1, !tbaa !116
  %i.bc = getelementptr inbounds nuw i8, ptr %.1145152.us, i64 2
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !116
  %i.bd = getelementptr inbounds nuw i8, ptr %.0138154.us, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !116
  %i.bf = getelementptr inbounds nuw i8, ptr %.1145152.us, i64 3
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !116
  %i.bg = load i8, ptr %.0136155.us, align 1, !tbaa !116
  %i.bh = getelementptr inbounds nuw i8, ptr %.1145152.us, i64 4
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !116
  %i.bi = getelementptr inbounds nuw i8, ptr %.0136155.us, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !116
  %i.bk = getelementptr inbounds nuw i8, ptr %.1145152.us, i64 5
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !116
  %i.bl = load i8, ptr %.0134156.us, align 1, !tbaa !116
  %i.bm = getelementptr inbounds nuw i8, ptr %.1145152.us, i64 6
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !116
end_hunk_6
begin_hunk_7_@_ZN4ncnnL16pack_A_tile_int8ERKNS_3MatERS0_iiii:bb.a

.lr.ph190:                                        ; preds = %.lr.ph190.prol.loopexit, %.lr.ph190
  %.1189 = phi i32 [ %i.lt, %.lr.ph190 ], [ %.1189.unr, %.lr.ph190.prol.loopexit ]
  %.1129188 = phi ptr [ %i.ls, %.lr.ph190 ], [ %.1129188.unr, %.lr.ph190.prol.loopexit ] ; 5 uses
  %.1131187 = phi ptr [ %i.lr, %.lr.ph190 ], [ %.1131187.unr, %.lr.ph190.prol.loopexit ] ; 5 uses
  %.5186 = phi ptr [ %i.lq, %.lr.ph190 ], [ %.5186.unr, %.lr.ph190.prol.loopexit ] ; 9 uses
  %i.kv = load i8, ptr %.1131187, align 1, !tbaa !116
  store i8 %i.kv, ptr %.5186, align 1, !tbaa !116
  %i.kw = load i8, ptr %.1129188, align 1, !tbaa !116
  %i.kx = getelementptr inbounds nuw i8, ptr %.5186, i64 1
  store i8 %i.kw, ptr %i.kx, align 1, !tbaa !116
  %i.ky = getelementptr inbounds nuw i8, ptr %.5186, i64 2
  %i.kz = getelementptr inbounds nuw i8, ptr %.1131187, i64 1
  %i.la = getelementptr inbounds nuw i8, ptr %.1129188, i64 1
  %i.lb = load i8, ptr %i.kz, align 1, !tbaa !116
  store i8 %i.lb, ptr %i.ky, align 1, !tbaa !116
  %i.lc = load i8, ptr %i.la, align 1, !tbaa !116
  %i.ld = getelementptr inbounds nuw i8, ptr %.5186, i64 3
  store i8 %i.lc, ptr %i.ld, align 1, !tbaa !116
  %i.le = getelementptr inbounds nuw i8, ptr %.5186, i64 4
  %i.lf = getelementptr inbounds nuw i8, ptr %.1131187, i64 2
  %i.lg = getelementptr inbounds nuw i8, ptr %.1129188, i64 2
  %i.lh = load i8, ptr %i.lf, align 1, !tbaa !116
  store i8 %i.lh, ptr %i.le, align 1, !tbaa !116
  %i.li = load i8, ptr %i.lg, align 1, !tbaa !116
  %i.lj = getelementptr inbounds nuw i8, ptr %.5186, i64 5
  store i8 %i.li, ptr %i.lj, align 1, !tbaa !116
  %i.lk = getelementptr inbounds nuw i8, ptr %.5186, i64 6
  %i.ll = getelementptr inbounds nuw i8, ptr %.1131187, i64 3
  %i.lm = getelementptr inbounds nuw i8, ptr %.1129188, i64 3
  %i.ln = load i8, ptr %i.ll, align 1, !tbaa !116
  store i8 %i.ln, ptr %i.lk, align 1, !tbaa !116
  %i.lo = load i8, ptr %i.lm, align 1, !tbaa !116
  %i.lp = getelementptr inbounds nuw i8, ptr %.5186, i64 7
  store i8 %i.lo, ptr %i.lp, align 1, !tbaa !116
  %i.lq = getelementptr inbounds nuw i8, ptr %.5186, i64 8 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.1131187, i64 4
  %i.ls = getelementptr inbounds nuw i8, ptr %.1129188, i64 4
  %i.lt = add nuw nsw i32 %.1189, 4               ; 2 uses
  %exitcond229.not.3 = icmp eq i32 %i.lt, %5
  br i1 %exitcond229.not.3, label %._crit_edge191, label %.lr.ph190, !llvm.loop !568

._crit_edge191:                                   ; preds = %.lr.ph190.prol.loopexit, %.lr.ph190, %middle.block342, %vec.epilog.middle.block363, %.preheader149
  %.5.lcssa = phi ptr [ %.4.lcssa, %.preheader149 ], [ %i.jk, %vec.epilog.middle.block363 ], [ %i.iz, %middle.block342 ], [ %.lcssa411.unr, %.lr.ph190.prol.loopexit ], [ %i.lq, %.lr.ph190 ] ; 2 uses
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 2 ; 3 uses
  %i.lu = icmp slt i64 %indvars.iv.next231, %invariant.op
  br i1 %i.lu, label %bb.i, label %.preheader.loopexit, !llvm.loop !569

iter.check390:                                    ; preds = %.lr.ph202.preheader, %._crit_edge203
  %indvars.iv234 = phi i64 [ %i.hf, %.lr.ph202.preheader ], [ %indvars.iv.next235, %._crit_edge203 ] ; 2 uses
  %.6205 = phi ptr [ %.3.lcssa, %.lr.ph202.preheader ], [ %.lcssa, %._crit_edge203 ] ; 7 uses
  %i.lv = add i64 %indvars.iv234, %i.hg
  %i.lw = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.lx = load i32, ptr %i.hb, align 4, !tbaa !88
  %i.ly = sext i32 %i.lx to i64
  %i.lz = mul i64 %i.lv, %i.ly
  %i.ma = load i64, ptr %i.hc, align 8, !tbaa !59
  %i.mb = mul i64 %i.lz, %i.ma                    ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.mb
  %i.md = getelementptr inbounds i8, ptr %i.mc, i64 %i.hd ; 6 uses
  br i1 %min.iters.check371, label %vec.epilog.scalar.ph391.preheader, label %vector.memcheck369

vector.memcheck369:                               ; preds = %iter.check390
  %i.me = ptrtoaddr ptr %i.lw to i64
  %.6205370 = ptrtoaddr ptr %.6205 to i64
  %i.mf = add i64 %i.hd, %i.me
  %i.mg = add i64 %i.mf, %i.mb
  %i.mh = sub i64 %i.mg, %.6205370
  %diff.check = icmp ugt i64 %i.mh, -128
  br i1 %diff.check, label %vec.epilog.scalar.ph391.preheader, label %vector.main.loop.iter.check372

vector.main.loop.iter.check372:                   ; preds = %vector.memcheck369
  br i1 %min.iters.check373, label %vec.epilog.ph394, label %vector.ph374

vector.ph374:                                     ; preds = %vector.main.loop.iter.check372
  %i.mi = getelementptr i8, ptr %i.md, i64 %n.vec375
  %i.mj = getelementptr i8, ptr %.6205, i64 %n.vec375 ; 2 uses
  br label %vector.body376

vector.body376:                                   ; preds = %vector.body376, %vector.ph374
  %index377 = phi i64 [ 0, %vector.ph374 ], [ %index.next384, %vector.body376 ] ; 3 uses
  %next.gep378 = getelementptr i8, ptr %i.md, i64 %index377 ; 4 uses
  %next.gep379 = getelementptr i8, ptr %.6205, i64 %index377 ; 4 uses
  %i.mk = getelementptr i8, ptr %next.gep378, i64 32
  %i.ml = getelementptr i8, ptr %next.gep378, i64 64
  %i.mm = getelementptr i8, ptr %next.gep378, i64 96
  %wide.load380 = load <32 x i8>, ptr %next.gep378, align 1, !tbaa !116
  %wide.load381 = load <32 x i8>, ptr %i.mk, align 1, !tbaa !116
  %wide.load382 = load <32 x i8>, ptr %i.ml, align 1, !tbaa !116
  %wide.load383 = load <32 x i8>, ptr %i.mm, align 1, !tbaa !116
  %i.mn = getelementptr i8, ptr %next.gep379, i64 32
  %i.mo = getelementptr i8, ptr %next.gep379, i64 64
  %i.mp = getelementptr i8, ptr %next.gep379, i64 96
  store <32 x i8> %wide.load380, ptr %next.gep379, align 1, !tbaa !116
  store <32 x i8> %wide.load381, ptr %i.mn, align 1, !tbaa !116
  store <32 x i8> %wide.load382, ptr %i.mo, align 1, !tbaa !116
  store <32 x i8> %wide.load383, ptr %i.mp, align 1, !tbaa !116
  %index.next384 = add nuw i64 %index377, 128     ; 2 uses
  %i.mq = icmp eq i64 %index.next384, %n.vec375
  br i1 %i.mq, label %middle.block385, label %vector.body376, !llvm.loop !570

middle.block385:                                  ; preds = %vector.body376
  br i1 %cmp.n386, label %._crit_edge203, label %vec.epilog.iter.check392

vec.epilog.iter.check392:                         ; preds = %middle.block385
  br i1 %min.epilog.iters.check393, label %vec.epilog.scalar.ph391.preheader, label %vec.epilog.ph394, !prof !571

vec.epilog.ph394:                                 ; preds = %vector.main.loop.iter.check372, %vec.epilog.iter.check392
  %vec.epilog.resume.val387 = phi i64 [ %n.vec375, %vec.epilog.iter.check392 ], [ 0, %vector.main.loop.iter.check372 ]
  %i.mr = getelementptr i8, ptr %i.md, i64 %n.vec395
  %i.ms = getelementptr i8, ptr %.6205, i64 %n.vec395 ; 2 uses
  br label %vec.epilog.vector.body396

vec.epilog.vector.body396:                        ; preds = %vec.epilog.vector.body396, %vec.epilog.ph394
  %index397 = phi i64 [ %vec.epilog.resume.val387, %vec.epilog.ph394 ], [ %index.next401, %vec.epilog.vector.body396 ] ; 3 uses
  %next.gep398 = getelementptr i8, ptr %i.md, i64 %index397
  %next.gep399 = getelementptr i8, ptr %.6205, i64 %index397
  %wide.load400 = load <8 x i8>, ptr %next.gep398, align 1, !tbaa !116
  store <8 x i8> %wide.load400, ptr %next.gep399, align 1, !tbaa !116
  %index.next401 = add nuw i64 %index397, 8       ; 2 uses
  %i.mt = icmp eq i64 %index.next401, %n.vec395
  br i1 %i.mt, label %vec.epilog.middle.block402, label %vec.epilog.vector.body396, !llvm.loop !572

vec.epilog.middle.block402:                       ; preds = %vec.epilog.vector.body396
  br i1 %cmp.n403, label %._crit_edge203, label %vec.epilog.scalar.ph391.preheader

vec.epilog.scalar.ph391.preheader:                ; preds = %vector.memcheck369, %iter.check390, %vec.epilog.iter.check392, %vec.epilog.middle.block402
  %.0200.ph = phi i32 [ 0, %iter.check390 ], [ 0, %vector.memcheck369 ], [ %i.hj, %vec.epilog.iter.check392 ], [ %i.hk, %vec.epilog.middle.block402 ] ; 4 uses
  %.0126199.ph = phi ptr [ %i.md, %iter.check390 ], [ %i.md, %vector.memcheck369 ], [ %i.mi, %vec.epilog.iter.check392 ], [ %i.mr, %vec.epilog.middle.block402 ] ; 2 uses
  %.7198.ph = phi ptr [ %.6205, %iter.check390 ], [ %.6205, %vector.memcheck369 ], [ %i.mj, %vec.epilog.iter.check392 ], [ %i.ms, %vec.epilog.middle.block402 ] ; 2 uses
  %i.mu = sub i32 %5, %.0200.ph
  %xtraiter426 = and i32 %i.mu, 7                 ; 2 uses
  %lcmp.mod427.not = icmp eq i32 %xtraiter426, 0
  br i1 %lcmp.mod427.not, label %vec.epilog.scalar.ph391.prol.loopexit, label %vec.epilog.scalar.ph391.prol

vec.epilog.scalar.ph391.prol:                     ; preds = %vec.epilog.scalar.ph391.preheader, %vec.epilog.scalar.ph391.prol
  %.0200.prol = phi i32 [ %i.my, %vec.epilog.scalar.ph391.prol ], [ %.0200.ph, %vec.epilog.scalar.ph391.preheader ]
  %.0126199.prol = phi ptr [ %i.mx, %vec.epilog.scalar.ph391.prol ], [ %.0126199.ph, %vec.epilog.scalar.ph391.preheader ] ; 2 uses
  %.7198.prol = phi ptr [ %i.mw, %vec.epilog.scalar.ph391.prol ], [ %.7198.ph, %vec.epilog.scalar.ph391.preheader ] ; 2 uses
  %prol.iter428 = phi i32 [ %prol.iter428.next, %vec.epilog.scalar.ph391.prol ], [ 0, %vec.epilog.scalar.ph391.preheader ]
  %i.mv = load i8, ptr %.0126199.prol, align 1, !tbaa !116
  store i8 %i.mv, ptr %.7198.prol, align 1, !tbaa !116
  %i.mw = getelementptr inbounds nuw i8, ptr %.7198.prol, i64 1 ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.0126199.prol, i64 1 ; 2 uses
  %i.my = add nuw nsw i32 %.0200.prol, 1          ; 2 uses
  %prol.iter428.next = add i32 %prol.iter428, 1   ; 2 uses
  %prol.iter428.cmp.not = icmp eq i32 %prol.iter428.next, %xtraiter426
  br i1 %prol.iter428.cmp.not, label %vec.epilog.scalar.ph391.prol.loopexit, label %vec.epilog.scalar.ph391.prol, !llvm.loop !573

vec.epilog.scalar.ph391.prol.loopexit:            ; preds = %vec.epilog.scalar.ph391.prol, %vec.epilog.scalar.ph391.preheader
  %.lcssa407.unr = phi ptr [ poison, %vec.epilog.scalar.ph391.preheader ], [ %i.mw, %vec.epilog.scalar.ph391.prol ]
  %.0200.unr = phi i32 [ %.0200.ph, %vec.epilog.scalar.ph391.preheader ], [ %i.my, %vec.epilog.scalar.ph391.prol ]
  %.0126199.unr = phi ptr [ %.0126199.ph, %vec.epilog.scalar.ph391.preheader ], [ %i.mx, %vec.epilog.scalar.ph391.prol ]
  %.7198.unr = phi ptr [ %.7198.ph, %vec.epilog.scalar.ph391.preheader ], [ %i.mw, %vec.epilog.scalar.ph391.prol ]
  %i.mz = sub i32 %.0200.ph, %5
  %i.na = icmp ugt i32 %i.mz, -8
  br i1 %i.na, label %._crit_edge203, label %vec.epilog.scalar.ph391

vec.epilog.scalar.ph391:                          ; preds = %vec.epilog.scalar.ph391.prol.loopexit, %vec.epilog.scalar.ph391
  %.0200 = phi i32 [ %i.nz, %vec.epilog.scalar.ph391 ], [ %.0200.unr, %vec.epilog.scalar.ph391.prol.loopexit ]
  %.0126199 = phi ptr [ %i.ny, %vec.epilog.scalar.ph391 ], [ %.0126199.unr, %vec.epilog.scalar.ph391.prol.loopexit ] ; 9 uses
  %.7198 = phi ptr [ %i.nx, %vec.epilog.scalar.ph391 ], [ %.7198.unr, %vec.epilog.scalar.ph391.prol.loopexit ] ; 9 uses
  %i.nb = load i8, ptr %.0126199, align 1, !tbaa !116
  store i8 %i.nb, ptr %.7198, align 1, !tbaa !116
  %i.nc = getelementptr inbounds nuw i8, ptr %.7198, i64 1
  %i.nd = getelementptr inbounds nuw i8, ptr %.0126199, i64 1
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !116
  store i8 %i.ne, ptr %i.nc, align 1, !tbaa !116
  %i.nf = getelementptr inbounds nuw i8, ptr %.7198, i64 2
  %i.ng = getelementptr inbounds nuw i8, ptr %.0126199, i64 2
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !116
  store i8 %i.nh, ptr %i.nf, align 1, !tbaa !116
  %i.ni = getelementptr inbounds nuw i8, ptr %.7198, i64 3
  %i.nj = getelementptr inbounds nuw i8, ptr %.0126199, i64 3
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !116
  store i8 %i.nk, ptr %i.ni, align 1, !tbaa !116
  %i.nl = getelementptr inbounds nuw i8, ptr %.7198, i64 4
  %i.nm = getelementptr inbounds nuw i8, ptr %.0126199, i64 4
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !116
  store i8 %i.nn, ptr %i.nl, align 1, !tbaa !116
  %i.no = getelementptr inbounds nuw i8, ptr %.7198, i64 5
  %i.np = getelementptr inbounds nuw i8, ptr %.0126199, i64 5
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !116
  store i8 %i.nq, ptr %i.no, align 1, !tbaa !116
  %i.nr = getelementptr inbounds nuw i8, ptr %.7198, i64 6
  %i.ns = getelementptr inbounds nuw i8, ptr %.0126199, i64 6
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !116
  store i8 %i.nt, ptr %i.nr, align 1, !tbaa !116
  %i.nu = getelementptr inbounds nuw i8, ptr %.7198, i64 7
  %i.nv = getelementptr inbounds nuw i8, ptr %.0126199, i64 7
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !116
  store i8 %i.nw, ptr %i.nu, align 1, !tbaa !116
  %i.nx = getelementptr inbounds nuw i8, ptr %.7198, i64 8 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.0126199, i64 8
  %i.nz = add nuw nsw i32 %.0200, 8               ; 2 uses
  %exitcond233.not.7 = icmp eq i32 %i.nz, %5
  br i1 %exitcond233.not.7, label %._crit_edge203, label %vec.epilog.scalar.ph391, !llvm.loop !574

._crit_edge203:                                   ; preds = %vec.epilog.scalar.ph391.prol.loopexit, %vec.epilog.scalar.ph391, %vec.epilog.middle.block402, %middle.block385
  %.lcssa = phi ptr [ %i.ms, %vec.epilog.middle.block402 ], [ %i.mj, %middle.block385 ], [ %.lcssa407.unr, %vec.epilog.scalar.ph391.prol.loopexit ], [ %i.nx, %vec.epilog.scalar.ph391 ]
  %indvars.iv.next235 = add nsw i64 %indvars.iv234, 1 ; 2 uses
  %exitcond237.not = icmp eq i64 %indvars.iv.next235, %wide.trip.count
  br i1 %exitcond237.not, label %.loopexit, label %iter.check390, !llvm.loop !575

.loopexit:                                        ; preds = %._crit_edge203, %.preheader, %.lr.ph207, %bb.f, %bb.d, %bb.b
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnn12Gemm_x86_avx20create_pipeline_int8ERKNS_6OptionE.omp_outlined.9(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr noundef %7) #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %8 = alloca %"class.ncnn::Mat", align 8         ; 19 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ac

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !45
  %i.h = load i32, ptr %0, align 4, !tbaa !45     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !45
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !45
  %i.k = load i32, ptr %i.a, align 4, !tbaa !45   ; 2 uses
  %.not118 = icmp sgt i32 %i.k, %i.j
  br i1 %.not118, label %._crit_edge121, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 656
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 700
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 720
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 672
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 680
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 688
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 220
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 360 ; 15 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 404 ; 10 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 376 ; 9 uses
  %i.ac = load i32, ptr %4, align 4, !tbaa !45    ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.split, label %._crit_edge121

.lr.ph.split:                                     ; preds = %.lr.ph, %._crit_edge
  %i.ae = phi i32 [ %i.ak, %._crit_edge ], [ %i.j, %.lr.ph ]
  %i.af = phi i32 [ %i.al, %._crit_edge ], [ %i.ac, %.lr.ph ] ; 3 uses
  %.030119 = phi i32 [ %i.am, %._crit_edge ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.ag = load i32, ptr %3, align 4, !tbaa !45
  %i.ah = mul i32 %i.ag, %.030119                 ; 9 uses
  %i.ai = icmp sgt i32 %i.af, 0
  br i1 %i.ai, label %.noexc40.lr.ph, label %._crit_edge

.noexc40.lr.ph:                                   ; preds = %.lr.ph.split
  %i.aj = sext i32 %i.ah to i64                   ; 9 uses
  %.pre = load i32, ptr %5, align 4, !tbaa !45
  br label %.noexc40

._crit_edge.loopexit:                             ; preds = %_ZN4ncnn3MatD2Ev.exit
  %.pre156 = load i32, ptr %i.b, align 4, !tbaa !45
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph.split
  %i.ak = phi i32 [ %.pre156, %._crit_edge.loopexit ], [ %i.ae, %.lr.ph.split ] ; 2 uses
  %i.al = phi i32 [ %i.aic, %._crit_edge.loopexit ], [ %i.af, %.lr.ph.split ]
  %i.am = add i32 %.030119, 1
  %.not.not = icmp slt i32 %.030119, %i.ak
  br i1 %.not.not, label %.lr.ph.split, label %._crit_edge121, !llvm.loop !576

.noexc40:                                         ; preds = %.noexc40.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %i.an = phi i32 [ %.pre, %.noexc40.lr.ph ], [ %i.aia, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.ao = phi i32 [ %i.af, %.noexc40.lr.ph ], [ %i.aic, %_ZN4ncnn3MatD2Ev.exit ]
  %.0117 = phi i32 [ 0, %.noexc40.lr.ph ], [ %i.aib, %_ZN4ncnn3MatD2Ev.exit ] ; 17 uses
  %i.ap = load i32, ptr %6, align 4, !tbaa !45
  %i.aq = sub nsw i32 %i.ap, %i.ah
  %i.ar = load i32, ptr %3, align 4, !tbaa !45    ; 2 uses
  %.sroa.speculated81 = call i32 @llvm.smin.i32(i32 %i.ar, i32 %i.aq) ; 24 uses
  %i.as = sub i32 %i.ao, %.0117
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.an, i32 %i.as) ; 64 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  %i.at = sdiv i32 %i.ah, %i.ar
  %i.au = load i32, ptr %i.m, align 4, !tbaa !88, !noalias !577 ; 2 uses
  %i.av = load ptr, ptr %i.l, align 8, !tbaa !18, !noalias !577
  %i.aw = load i64, ptr %i.n, align 8, !tbaa !20, !noalias !577
  %i.ax = sext i32 %i.at to i64
  %i.ay = mul i64 %i.aw, %i.ax
  %i.az = load i64, ptr %i.o, align 8, !tbaa !59, !noalias !577 ; 3 uses
  %i.ba = mul i64 %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ba
  %i.bc = load i32, ptr %i.p, align 8, !tbaa !60, !noalias !577
  %i.bd = load ptr, ptr %i.q, align 8, !tbaa !17, !noalias !577
  %i.be = sext i32 %i.au to i64                   ; 2 uses
  %i.bf = sdiv i32 %.0117, %i.an
  %i.bg = sext i32 %i.bf to i64
  %i.bh = mul i64 %i.az, %i.be
  %i.bi = mul i64 %i.bh, %i.bg
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bi
  store ptr %i.bj, ptr %8, align 8, !tbaa !18
  store ptr null, ptr %i.r, align 8, !tbaa !11
  store i64 %i.az, ptr %i.s, align 8, !tbaa !59
  store i32 %i.bc, ptr %i.t, align 8, !tbaa !60
  store ptr %i.bd, ptr %i.u, align 8, !tbaa !17
  %i.bk = insertelement <4 x i32> <i32 2, i32 poison, i32 1, i32 1>, i32 %i.au, i64 1
  store <4 x i32> %i.bk, ptr %i.v, align 8, !tbaa !45
  store i32 1, ptr %i.w, align 8, !tbaa !51
  store i64 %i.be, ptr %i.x, align 8, !tbaa !20, !alias.scope !580
  %i.bl = load i32, ptr %i.y, align 4, !tbaa !86
  %.not31 = icmp eq i32 %i.bl, 0
  br i1 %.not31, label %bb.m, label %bb.c

bb.c:                                             ; preds = %.noexc40
  %i.bm = invoke noundef i32 @_ZN4ncnn29cpu_support_x86_avx_vnni_int8Ev()
          to label %.noexc43 unwind label %bb.ad

.noexc43:                                         ; preds = %bb.c
  %.not.i42 = icmp eq i32 %i.bm, 0
  br i1 %.not.i42, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc43
  invoke void @_ZN4ncnn28pack_B_tile_int8_avxvnniint8ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %i.z, ptr noundef nonnull align 8 dereferenceable(72) %8, i32 noundef %i.ah, i32 noundef %.sroa.speculated81, i32 noundef %.0117, i32 noundef %.sroa.speculated)
          to label %_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit unwind label %bb.ad

bb.e:                                             ; preds = %.noexc43
  %i.bn = invoke noundef i32 @_ZN4ncnn24cpu_support_x86_avx_vnniEv()
          to label %.noexc45 unwind label %bb.ad

.noexc45:                                         ; preds = %bb.e
  %.not273.i = icmp eq i32 %i.bn, 0
  br i1 %.not273.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.noexc45
  invoke void @_ZN4ncnn24pack_B_tile_int8_avxvnniERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %i.z, ptr noundef nonnull align 8 dereferenceable(72) %8, i32 noundef %i.ah, i32 noundef %.sroa.speculated81, i32 noundef %.0117, i32 noundef %.sroa.speculated)
          to label %_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit unwind label %bb.ad

bb.g:                                             ; preds = %.noexc45
  %i.bo = invoke noundef i32 @_ZN4ncnn20cpu_support_x86_avx2Ev()
          to label %.noexc47 unwind label %bb.ad

.noexc47:                                         ; preds = %bb.g
  %.not274.i = icmp eq i32 %i.bo, 0
  br i1 %.not274.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.noexc47
  invoke void @_ZN4ncnn21pack_B_tile_int8_avx2ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %i.z, ptr noundef nonnull align 8 dereferenceable(72) %8, i32 noundef %i.ah, i32 noundef %.sroa.speculated81, i32 noundef %.0117, i32 noundef %.sroa.speculated)
          to label %_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit unwind label %bb.ad

bb.i:                                             ; preds = %.noexc47
  %i.bp = load ptr, ptr %8, align 8, !tbaa !18    ; 2 uses
  %i.bq = icmp sgt i32 %.sroa.speculated81, 7
  br i1 %i.bq, label %.lr.ph314.i, label %.preheader278.i

.lr.ph314.i:                                      ; preds = %bb.i
  %i.br = sext i32 %.0117 to i64                  ; 8 uses
  %i.bs = icmp sgt i32 %.sroa.speculated, 1
  %i.bt = and i32 %.sroa.speculated, -2
  %i.bu = zext nneg i32 %.sroa.speculated81 to i64
  br label %bb.j

.preheader278.loopexit.i:                         ; preds = %._crit_edge.i
  %i.bv = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %.preheader278.i

.preheader278.i:                                  ; preds = %.preheader278.loopexit.i, %bb.i
  %.0269.lcssa.i = phi ptr [ %i.bp, %bb.i ], [ %.2271.lcssa.i, %.preheader278.loopexit.i ] ; 2 uses
  %.0267.lcssa.i = phi i32 [ 0, %bb.i ], [ %i.bv, %.preheader278.loopexit.i ] ; 3 uses
  %i.bw = or disjoint i32 %.0267.lcssa.i, 3
  %i.bx = icmp slt i32 %i.bw, %.sroa.speculated81
  br i1 %i.bx, label %.lr.ph342.i, label %.preheader276.i

.lr.ph342.i:                                      ; preds = %.preheader278.i
  %i.by = sext i32 %.0117 to i64                  ; 4 uses
  %i.bz = icmp sgt i32 %.sroa.speculated, 1
  %i.ca = and i32 %.sroa.speculated, -2
  %i.cb = zext nneg i32 %.0267.lcssa.i to i64
  %i.cc = sext i32 %.sroa.speculated81 to i64
  %invariant.op.i = add nsw i64 %i.cc, -3
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i, %.lr.ph314.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph314.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %.0269311.i = phi ptr [ %i.bp, %.lr.ph314.i ], [ %.2271.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.cd = add nsw i64 %indvars.iv.i, %i.aj        ; 8 uses
  %i.ce = load ptr, ptr %i.z, align 8, !tbaa !18  ; 8 uses
  %i.cf = load i32, ptr %i.aa, align 4, !tbaa !88
end_hunk_7
begin_hunk_8_@_ZN4ncnn12Gemm_x86_avx20create_pipeline_int8ERKNS_6OptionE.omp_outlined.9:bb.a

.lr.ph359.i:                                      ; preds = %.lr.ph359.i.prol.loopexit, %.lr.ph359.i
  %.1358.i = phi i32 [ %i.sj, %.lr.ph359.i ], [ %.1358.i.unr, %.lr.ph359.i.prol.loopexit ]
  %.1236357.i = phi ptr [ %i.si, %.lr.ph359.i ], [ %.1236357.i.unr, %.lr.ph359.i.prol.loopexit ] ; 5 uses
  %.1238356.i = phi ptr [ %i.sh, %.lr.ph359.i ], [ %.1238356.i.unr, %.lr.ph359.i.prol.loopexit ] ; 5 uses
  %.8355.i = phi ptr [ %i.sg, %.lr.ph359.i ], [ %.8355.i.unr, %.lr.ph359.i.prol.loopexit ] ; 9 uses
  %i.rl = load i8, ptr %.1238356.i, align 1, !tbaa !116
  store i8 %i.rl, ptr %.8355.i, align 1, !tbaa !116
  %i.rm = load i8, ptr %.1236357.i, align 1, !tbaa !116
  %i.rn = getelementptr inbounds nuw i8, ptr %.8355.i, i64 1
  store i8 %i.rm, ptr %i.rn, align 1, !tbaa !116
  %i.ro = getelementptr inbounds nuw i8, ptr %.8355.i, i64 2
  %i.rp = getelementptr inbounds nuw i8, ptr %.1238356.i, i64 1
  %i.rq = getelementptr inbounds nuw i8, ptr %.1236357.i, i64 1
  %i.rr = load i8, ptr %i.rp, align 1, !tbaa !116
  store i8 %i.rr, ptr %i.ro, align 1, !tbaa !116
  %i.rs = load i8, ptr %i.rq, align 1, !tbaa !116
  %i.rt = getelementptr inbounds nuw i8, ptr %.8355.i, i64 3
  store i8 %i.rs, ptr %i.rt, align 1, !tbaa !116
  %i.ru = getelementptr inbounds nuw i8, ptr %.8355.i, i64 4
  %i.rv = getelementptr inbounds nuw i8, ptr %.1238356.i, i64 2
  %i.rw = getelementptr inbounds nuw i8, ptr %.1236357.i, i64 2
  %i.rx = load i8, ptr %i.rv, align 1, !tbaa !116
  store i8 %i.rx, ptr %i.ru, align 1, !tbaa !116
  %i.ry = load i8, ptr %i.rw, align 1, !tbaa !116
  %i.rz = getelementptr inbounds nuw i8, ptr %.8355.i, i64 5
  store i8 %i.ry, ptr %i.rz, align 1, !tbaa !116
  %i.sa = getelementptr inbounds nuw i8, ptr %.8355.i, i64 6
  %i.sb = getelementptr inbounds nuw i8, ptr %.1238356.i, i64 3
  %i.sc = getelementptr inbounds nuw i8, ptr %.1236357.i, i64 3
  %i.sd = load i8, ptr %i.sb, align 1, !tbaa !116
  store i8 %i.sd, ptr %i.sa, align 1, !tbaa !116
  %i.se = load i8, ptr %i.sc, align 1, !tbaa !116
  %i.sf = getelementptr inbounds nuw i8, ptr %.8355.i, i64 7
  store i8 %i.se, ptr %i.sf, align 1, !tbaa !116
  %i.sg = getelementptr inbounds nuw i8, ptr %.8355.i, i64 8 ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %.1238356.i, i64 4
  %i.si = getelementptr inbounds nuw i8, ptr %.1236357.i, i64 4
  %i.sj = add nuw nsw i32 %.1358.i, 4             ; 2 uses
  %exitcond408.not.i.3 = icmp eq i32 %i.sj, %.sroa.speculated
  br i1 %exitcond408.not.i.3, label %._crit_edge360.i, label %.lr.ph359.i, !llvm.loop !638

._crit_edge360.i:                                 ; preds = %.lr.ph359.i.prol.loopexit, %.lr.ph359.i, %middle.block279, %vec.epilog.middle.block300, %.preheader275.i
  %.8.lcssa.i = phi ptr [ %.7.lcssa.i, %.preheader275.i ], [ %i.qa, %vec.epilog.middle.block300 ], [ %i.pp, %middle.block279 ], [ %.lcssa531.unr, %.lr.ph359.i.prol.loopexit ], [ %i.sg, %.lr.ph359.i ] ; 2 uses
  %indvars.iv.next410.i = add nuw nsw i64 %indvars.iv409.i, 2 ; 3 uses
  %i.sk = icmp slt i64 %indvars.iv.next410.i, %invariant.op441.i
  br i1 %i.sk, label %bb.l, label %.preheader.loopexit.i, !llvm.loop !639

iter.check:                                       ; preds = %._crit_edge372.i, %.lr.ph371.preheader.i
  %indvars.iv413.i = phi i64 [ %i.nw, %.lr.ph371.preheader.i ], [ %indvars.iv.next414.i, %._crit_edge372.i ] ; 2 uses
  %.9374.i = phi ptr [ %.6.lcssa.i, %.lr.ph371.preheader.i ], [ %.lcssa222, %._crit_edge372.i ] ; 7 uses
  %i.sl = add i64 %indvars.iv413.i, %i.aj
  %i.sm = load ptr, ptr %i.z, align 8, !tbaa !18  ; 2 uses
  %i.sn = load i32, ptr %i.aa, align 4, !tbaa !88
  %i.so = sext i32 %i.sn to i64
  %i.sp = mul i64 %i.sl, %i.so
  %i.sq = load i64, ptr %i.ab, align 8, !tbaa !59
  %i.sr = mul i64 %i.sp, %i.sq                    ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sm, i64 %i.sr
  %i.st = getelementptr inbounds i8, ptr %i.ss, i64 %i.nu ; 6 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.su = ptrtoaddr ptr %i.sm to i64
  %.9374.i235 = ptrtoaddr ptr %.9374.i to i64
  %i.sv = add i64 %i.nu, %i.su
  %i.sw = add i64 %i.sv, %i.sr
  %i.sx = sub i64 %i.sw, %.9374.i235
  %diff.check = icmp ugt i64 %i.sx, -128
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check236, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.sy = getelementptr i8, ptr %i.st, i64 %n.vec
  %i.sz = getelementptr i8, ptr %.9374.i, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.st, i64 %index ; 4 uses
  %next.gep237 = getelementptr i8, ptr %.9374.i, i64 %index ; 4 uses
  %i.ta = getelementptr i8, ptr %next.gep, i64 32
  %i.tb = getelementptr i8, ptr %next.gep, i64 64
  %i.tc = getelementptr i8, ptr %next.gep, i64 96
  %wide.load = load <32 x i8>, ptr %next.gep, align 1, !tbaa !116
  %wide.load238 = load <32 x i8>, ptr %i.ta, align 1, !tbaa !116
  %wide.load239 = load <32 x i8>, ptr %i.tb, align 1, !tbaa !116
  %wide.load240 = load <32 x i8>, ptr %i.tc, align 1, !tbaa !116
  %i.td = getelementptr i8, ptr %next.gep237, i64 32
  %i.te = getelementptr i8, ptr %next.gep237, i64 64
  %i.tf = getelementptr i8, ptr %next.gep237, i64 96
  store <32 x i8> %wide.load, ptr %next.gep237, align 1, !tbaa !116
  store <32 x i8> %wide.load238, ptr %i.td, align 1, !tbaa !116
  store <32 x i8> %wide.load239, ptr %i.te, align 1, !tbaa !116
  store <32 x i8> %wide.load240, ptr %i.tf, align 1, !tbaa !116
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.tg = icmp eq i64 %index.next, %n.vec
  br i1 %i.tg, label %middle.block, label %vector.body, !llvm.loop !640

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge372.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !571

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.th = getelementptr i8, ptr %i.st, i64 %n.vec243
  %i.ti = getelementptr i8, ptr %.9374.i, i64 %n.vec243 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index244 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next248, %vec.epilog.vector.body ] ; 3 uses
  %next.gep245 = getelementptr i8, ptr %i.st, i64 %index244
  %next.gep246 = getelementptr i8, ptr %.9374.i, i64 %index244
  %wide.load247 = load <8 x i8>, ptr %next.gep245, align 1, !tbaa !116
  store <8 x i8> %wide.load247, ptr %next.gep246, align 1, !tbaa !116
  %index.next248 = add nuw i64 %index244, 8       ; 2 uses
  %i.tj = icmp eq i64 %index.next248, %n.vec243
  br i1 %i.tj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !641

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n249, label %._crit_edge372.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0369.i.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.nz, %vec.epilog.iter.check ], [ %i.oa, %vec.epilog.middle.block ] ; 4 uses
  %.0233368.i.ph = phi ptr [ %i.st, %iter.check ], [ %i.st, %vector.memcheck ], [ %i.sy, %vec.epilog.iter.check ], [ %i.th, %vec.epilog.middle.block ] ; 2 uses
  %.10367.i.ph = phi ptr [ %.9374.i, %iter.check ], [ %.9374.i, %vector.memcheck ], [ %i.sz, %vec.epilog.iter.check ], [ %i.ti, %vec.epilog.middle.block ] ; 2 uses
  %i.tk = sub i32 %.sroa.speculated, %.0369.i.ph
  %xtraiter553 = and i32 %i.tk, 7                 ; 2 uses
  %lcmp.mod554.not = icmp eq i32 %xtraiter553, 0
  br i1 %lcmp.mod554.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.0369.i.prol = phi i32 [ %i.to, %vec.epilog.scalar.ph.prol ], [ %.0369.i.ph, %vec.epilog.scalar.ph.preheader ]
  %.0233368.i.prol = phi ptr [ %i.tn, %vec.epilog.scalar.ph.prol ], [ %.0233368.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.10367.i.prol = phi ptr [ %i.tm, %vec.epilog.scalar.ph.prol ], [ %.10367.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter555 = phi i32 [ %prol.iter555.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.tl = load i8, ptr %.0233368.i.prol, align 1, !tbaa !116
  store i8 %i.tl, ptr %.10367.i.prol, align 1, !tbaa !116
  %i.tm = getelementptr inbounds nuw i8, ptr %.10367.i.prol, i64 1 ; 3 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %.0233368.i.prol, i64 1 ; 2 uses
  %i.to = add nuw nsw i32 %.0369.i.prol, 1        ; 2 uses
  %prol.iter555.next = add i32 %prol.iter555, 1   ; 2 uses
  %prol.iter555.cmp.not = icmp eq i32 %prol.iter555.next, %xtraiter553
  br i1 %prol.iter555.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !642

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa532.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.tm, %vec.epilog.scalar.ph.prol ]
  %.0369.i.unr = phi i32 [ %.0369.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.to, %vec.epilog.scalar.ph.prol ]
  %.0233368.i.unr = phi ptr [ %.0233368.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.tn, %vec.epilog.scalar.ph.prol ]
  %.10367.i.unr = phi ptr [ %.10367.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.tm, %vec.epilog.scalar.ph.prol ]
  %i.tp = sub i32 %.0369.i.ph, %.sroa.speculated
  %i.tq = icmp ugt i32 %i.tp, -8
  br i1 %i.tq, label %._crit_edge372.i, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.0369.i = phi i32 [ %i.up, %vec.epilog.scalar.ph ], [ %.0369.i.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.0233368.i = phi ptr [ %i.uo, %vec.epilog.scalar.ph ], [ %.0233368.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %.10367.i = phi ptr [ %i.un, %vec.epilog.scalar.ph ], [ %.10367.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.tr = load i8, ptr %.0233368.i, align 1, !tbaa !116
  store i8 %i.tr, ptr %.10367.i, align 1, !tbaa !116
  %i.ts = getelementptr inbounds nuw i8, ptr %.10367.i, i64 1
  %i.tt = getelementptr inbounds nuw i8, ptr %.0233368.i, i64 1
  %i.tu = load i8, ptr %i.tt, align 1, !tbaa !116
  store i8 %i.tu, ptr %i.ts, align 1, !tbaa !116
  %i.tv = getelementptr inbounds nuw i8, ptr %.10367.i, i64 2
  %i.tw = getelementptr inbounds nuw i8, ptr %.0233368.i, i64 2
  %i.tx = load i8, ptr %i.tw, align 1, !tbaa !116
  store i8 %i.tx, ptr %i.tv, align 1, !tbaa !116
  %i.ty = getelementptr inbounds nuw i8, ptr %.10367.i, i64 3
  %i.tz = getelementptr inbounds nuw i8, ptr %.0233368.i, i64 3
  %i.ua = load i8, ptr %i.tz, align 1, !tbaa !116
  store i8 %i.ua, ptr %i.ty, align 1, !tbaa !116
  %i.ub = getelementptr inbounds nuw i8, ptr %.10367.i, i64 4
  %i.uc = getelementptr inbounds nuw i8, ptr %.0233368.i, i64 4
  %i.ud = load i8, ptr %i.uc, align 1, !tbaa !116
  store i8 %i.ud, ptr %i.ub, align 1, !tbaa !116
  %i.ue = getelementptr inbounds nuw i8, ptr %.10367.i, i64 5
  %i.uf = getelementptr inbounds nuw i8, ptr %.0233368.i, i64 5
  %i.ug = load i8, ptr %i.uf, align 1, !tbaa !116
  store i8 %i.ug, ptr %i.ue, align 1, !tbaa !116
  %i.uh = getelementptr inbounds nuw i8, ptr %.10367.i, i64 6
  %i.ui = getelementptr inbounds nuw i8, ptr %.0233368.i, i64 6
  %i.uj = load i8, ptr %i.ui, align 1, !tbaa !116
  store i8 %i.uj, ptr %i.uh, align 1, !tbaa !116
  %i.uk = getelementptr inbounds nuw i8, ptr %.10367.i, i64 7
  %i.ul = getelementptr inbounds nuw i8, ptr %.0233368.i, i64 7
  %i.um = load i8, ptr %i.ul, align 1, !tbaa !116
  store i8 %i.um, ptr %i.uk, align 1, !tbaa !116
  %i.un = getelementptr inbounds nuw i8, ptr %.10367.i, i64 8 ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %.0233368.i, i64 8
  %i.up = add nuw nsw i32 %.0369.i, 8             ; 2 uses
  %exitcond412.not.i.7 = icmp eq i32 %i.up, %.sroa.speculated
  br i1 %exitcond412.not.i.7, label %._crit_edge372.i, label %vec.epilog.scalar.ph, !llvm.loop !643

._crit_edge372.i:                                 ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa222 = phi ptr [ %i.ti, %vec.epilog.middle.block ], [ %i.sz, %middle.block ], [ %.lcssa532.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.un, %vec.epilog.scalar.ph ]
  %indvars.iv.next414.i = add nsw i64 %indvars.iv413.i, 1 ; 2 uses
  %exitcond416.not.i = icmp eq i64 %indvars.iv.next414.i, %wide.trip.count.i
  br i1 %exitcond416.not.i, label %_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit, label %iter.check, !llvm.loop !644

bb.m:                                             ; preds = %.noexc40
  %i.uq = invoke noundef i32 @_ZN4ncnn29cpu_support_x86_avx_vnni_int8Ev()
          to label %.noexc64 unwind label %bb.ad

.noexc64:                                         ; preds = %bb.m
  %.not.i49 = icmp eq i32 %i.uq, 0
  br i1 %.not.i49, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.noexc64
  invoke void @_ZN4ncnn38transpose_pack_B_tile_int8_avxvnniint8ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %i.z, ptr noundef nonnull align 8 dereferenceable(72) %8, i32 noundef %i.ah, i32 noundef %.sroa.speculated81, i32 noundef %.0117, i32 noundef %.sroa.speculated)
          to label %_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit unwind label %bb.ad

bb.o:                                             ; preds = %.noexc64
  %i.ur = invoke noundef i32 @_ZN4ncnn24cpu_support_x86_avx_vnniEv()
          to label %.noexc66 unwind label %bb.ad

.noexc66:                                         ; preds = %bb.o
  %.not161.i = icmp eq i32 %i.ur, 0
  br i1 %.not161.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.noexc66
  invoke void @_ZN4ncnn34transpose_pack_B_tile_int8_avxvnniERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %i.z, ptr noundef nonnull align 8 dereferenceable(72) %8, i32 noundef %i.ah, i32 noundef %.sroa.speculated81, i32 noundef %.0117, i32 noundef %.sroa.speculated)
          to label %_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit unwind label %bb.ad

bb.q:                                             ; preds = %.noexc66
  %i.us = invoke noundef i32 @_ZN4ncnn20cpu_support_x86_avx2Ev()
          to label %.noexc68 unwind label %bb.ad

.noexc68:                                         ; preds = %bb.q
  %.not162.i = icmp eq i32 %i.us, 0
  br i1 %.not162.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.noexc68
  invoke void @_ZN4ncnn31transpose_pack_B_tile_int8_avx2ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %i.z, ptr noundef nonnull align 8 dereferenceable(72) %8, i32 noundef %i.ah, i32 noundef %.sroa.speculated81, i32 noundef %.0117, i32 noundef %.sroa.speculated)
          to label %_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit unwind label %bb.ad

bb.s:                                             ; preds = %.noexc68
  %i.ut = load i32, ptr %i.aa, align 4, !tbaa !88 ; 7 uses
  %i.uu = load ptr, ptr %8, align 8, !tbaa !18    ; 4 uses
  %i.uv = icmp sgt i32 %.sroa.speculated81, 7
  br i1 %i.uv, label %.lr.ph181.i, label %.preheader166.i

.lr.ph181.i:                                      ; preds = %bb.s
  %i.uw = sext i32 %.0117 to i64                  ; 2 uses
  %i.ux = icmp sgt i32 %.sroa.speculated, 1
  %i.uy = sext i32 %i.ut to i64                   ; 12 uses
  %i.uz = shl nsw i32 %i.ut, 1
  %i.va = sext i32 %i.uz to i64                   ; 3 uses
  br i1 %i.ux, label %.lr.ph.us.preheader.i, label %.lr.ph181.split.i

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph181.i
  %i.vb = and i32 %.sroa.speculated, 2147483646   ; 4 uses
  %i.vc = zext nneg i32 %.sroa.speculated81 to i64
  %.not84 = icmp eq i32 %i.vb, %.sroa.speculated
  %i.vd = add nsw i32 %.sroa.speculated, -2       ; 2 uses
  %i.ve = lshr i32 %i.vd, 1                       ; 2 uses
  %i.vf = add nuw i32 %i.ve, 1                    ; 2 uses
  %i.vg = and i32 %.sroa.speculated, 1            ; 2 uses
  %i.vh = icmp eq i32 %i.ve, 0
  %unroll_iter561 = and i32 %i.vf, -2
  %i.vi = and i32 %i.vd, 2
  %lcmp.mod557.not.not = icmp eq i32 %i.vi, 0
  %lcmp.mod560 = trunc i32 %i.vf to i1
  %lcmp.mod564.not = icmp eq i32 %i.vg, 0
  %i.vj = sub nsw i32 %i.vb, %.sroa.speculated
  %i.vk = icmp ugt i32 %i.vj, -8
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %indvars.iv264.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next265.i, %._crit_edge.us.i ] ; 2 uses
  %.0151179.us.i = phi ptr [ %i.uu, %.lr.ph.us.preheader.i ], [ %.2.lcssa.us.i, %._crit_edge.us.i ] ; 2 uses
  %i.vl = load ptr, ptr %i.z, align 8, !tbaa !18
  %i.vm = load i32, ptr %i.aa, align 4, !tbaa !88
  %i.vn = sext i32 %i.vm to i64
  %i.vo = mul nsw i64 %i.vn, %i.uw
  %i.vp = load i64, ptr %i.ab, align 8, !tbaa !59
  %i.vq = mul i64 %i.vo, %i.vp
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vl, i64 %i.vq
  %i.vs = getelementptr i8, ptr %i.vr, i64 %indvars.iv264.i
  %i.vt = getelementptr i8, ptr %i.vs, i64 %i.aj  ; 2 uses
  br i1 %i.vh, label %.epil.preheader, label %.lr.ph.us.i.new

.lr.ph.us.i.new:                                  ; preds = %.lr.ph.us.i, %.lr.ph.us.i.new
  %.1152170.us.i = phi ptr [ %i.wm, %.lr.ph.us.i.new ], [ %.0151179.us.i, %.lr.ph.us.i ] ; 3 uses
  %.0157169.us.i = phi ptr [ %i.wn, %.lr.ph.us.i.new ], [ %i.vt, %.lr.ph.us.i ] ; 3 uses
  %niter562 = phi i32 [ %niter562.next.1, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ]
  %i.vu = load i64, ptr %.0157169.us.i, align 1, !tbaa !116
  %i.vv = insertelement <2 x i64> poison, i64 %i.vu, i64 0
  %i.vw = getelementptr inbounds i8, ptr %.0157169.us.i, i64 %i.uy
  %i.vx = load i64, ptr %i.vw, align 1, !tbaa !116
  %i.vy = insertelement <2 x i64> poison, i64 %i.vx, i64 0
  %i.vz = bitcast <2 x i64> %i.vv to <16 x i8>
  %i.wa = bitcast <2 x i64> %i.vy to <16 x i8>
  %i.wb = shufflevector <16 x i8> %i.vz, <16 x i8> %i.wa, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.wb, ptr %.1152170.us.i, align 1, !tbaa !116
  %i.wc = getelementptr inbounds nuw i8, ptr %.1152170.us.i, i64 16
  %i.wd = getelementptr inbounds i8, ptr %.0157169.us.i, i64 %i.va ; 3 uses
  %i.we = load i64, ptr %i.wd, align 1, !tbaa !116
  %i.wf = insertelement <2 x i64> poison, i64 %i.we, i64 0
  %i.wg = getelementptr inbounds i8, ptr %i.wd, i64 %i.uy
  %i.wh = load i64, ptr %i.wg, align 1, !tbaa !116
  %i.wi = insertelement <2 x i64> poison, i64 %i.wh, i64 0
  %i.wj = bitcast <2 x i64> %i.wf to <16 x i8>
  %i.wk = bitcast <2 x i64> %i.wi to <16 x i8>
  %i.wl = shufflevector <16 x i8> %i.wj, <16 x i8> %i.wk, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.wl, ptr %i.wc, align 1, !tbaa !116
  %i.wm = getelementptr inbounds nuw i8, ptr %.1152170.us.i, i64 32 ; 3 uses
  %i.wn = getelementptr inbounds i8, ptr %i.wd, i64 %i.va ; 3 uses
  %niter562.next.1 = add nuw nsw i32 %niter562, 2 ; 2 uses
  %niter562.ncmp.1.not = icmp eq i32 %niter562.next.1, %unroll_iter561
  br i1 %niter562.ncmp.1.not, label %..preheader167_crit_edge.us.i.unr-lcssa, label %.lr.ph.us.i.new, !llvm.loop !645

.lr.ph176.us.i:                                   ; preds = %.lr.ph176.us.i.prol.loopexit, %.lr.ph176.us.i
  %.2175.us.i = phi ptr [ %i.xk, %.lr.ph176.us.i ], [ %.2175.us.i.unr, %.lr.ph176.us.i.prol.loopexit ] ; 9 uses
  %.1158174.us.i = phi ptr [ %i.xl, %.lr.ph176.us.i ], [ %.1158174.us.i.unr, %.lr.ph176.us.i.prol.loopexit ] ; 2 uses
  %.1160173.us.i = phi i32 [ %i.xm, %.lr.ph176.us.i ], [ %.1160173.us.i.unr, %.lr.ph176.us.i.prol.loopexit ]
  %i.wo = load i64, ptr %.1158174.us.i, align 1, !tbaa !116
  store i64 %i.wo, ptr %.2175.us.i, align 1, !tbaa !116
  %i.wp = getelementptr inbounds nuw i8, ptr %.2175.us.i, i64 8
  %i.wq = getelementptr inbounds i8, ptr %.1158174.us.i, i64 %i.uy ; 2 uses
  %i.wr = load i64, ptr %i.wq, align 1, !tbaa !116
  store i64 %i.wr, ptr %i.wp, align 1, !tbaa !116
  %i.ws = getelementptr inbounds nuw i8, ptr %.2175.us.i, i64 16
  %i.wt = getelementptr inbounds i8, ptr %i.wq, i64 %i.uy ; 2 uses
  %i.wu = load i64, ptr %i.wt, align 1, !tbaa !116
  store i64 %i.wu, ptr %i.ws, align 1, !tbaa !116
  %i.wv = getelementptr inbounds nuw i8, ptr %.2175.us.i, i64 24
  %i.ww = getelementptr inbounds i8, ptr %i.wt, i64 %i.uy ; 2 uses
  %i.wx = load i64, ptr %i.ww, align 1, !tbaa !116
  store i64 %i.wx, ptr %i.wv, align 1, !tbaa !116
  %i.wy = getelementptr inbounds nuw i8, ptr %.2175.us.i, i64 32
  %i.wz = getelementptr inbounds i8, ptr %i.ww, i64 %i.uy ; 2 uses
  %i.xa = load i64, ptr %i.wz, align 1, !tbaa !116
  store i64 %i.xa, ptr %i.wy, align 1, !tbaa !116
  %i.xb = getelementptr inbounds nuw i8, ptr %.2175.us.i, i64 40
  %i.xc = getelementptr inbounds i8, ptr %i.wz, i64 %i.uy ; 2 uses
  %i.xd = load i64, ptr %i.xc, align 1, !tbaa !116
  store i64 %i.xd, ptr %i.xb, align 1, !tbaa !116
  %i.xe = getelementptr inbounds nuw i8, ptr %.2175.us.i, i64 48
  %i.xf = getelementptr inbounds i8, ptr %i.xc, i64 %i.uy ; 2 uses
  %i.xg = load i64, ptr %i.xf, align 1, !tbaa !116
  store i64 %i.xg, ptr %i.xe, align 1, !tbaa !116
  %i.xh = getelementptr inbounds nuw i8, ptr %.2175.us.i, i64 56
  %i.xi = getelementptr inbounds i8, ptr %i.xf, i64 %i.uy ; 2 uses
  %i.xj = load i64, ptr %i.xi, align 1, !tbaa !116
  store i64 %i.xj, ptr %i.xh, align 1, !tbaa !116
  %i.xk = getelementptr inbounds nuw i8, ptr %.2175.us.i, i64 64 ; 2 uses
  %i.xl = getelementptr inbounds i8, ptr %i.xi, i64 %i.uy
  %i.xm = add nuw nsw i32 %.1160173.us.i, 8       ; 2 uses
  %exitcond.not.i63.7 = icmp eq i32 %i.xm, %.sroa.speculated
  br i1 %exitcond.not.i63.7, label %._crit_edge.us.i, label %.lr.ph176.us.i, !llvm.loop !646

._crit_edge.us.i:                                 ; preds = %.lr.ph176.us.i.prol.loopexit, %.lr.ph176.us.i, %..preheader167_crit_edge.us.i
  %.2.lcssa.us.i = phi ptr [ %.lcssa535, %..preheader167_crit_edge.us.i ], [ %.lcssa536.unr, %.lr.ph176.us.i.prol.loopexit ], [ %i.xk, %.lr.ph176.us.i ] ; 2 uses
  %indvars.iv.next265.i = add nuw nsw i64 %indvars.iv264.i, 8 ; 3 uses
  %i.xn = or disjoint i64 %indvars.iv.next265.i, 7
  %i.xo = icmp samesign ult i64 %i.xn, %i.vc
  br i1 %i.xo, label %.lr.ph.us.i, label %.preheader166.loopexit.i, !llvm.loop !647

..preheader167_crit_edge.us.i.unr-lcssa:          ; preds = %.lr.ph.us.i.new
  br i1 %lcmp.mod557.not.not, label %.epil.preheader, label %..preheader167_crit_edge.us.i

.epil.preheader:                                  ; preds = %..preheader167_crit_edge.us.i.unr-lcssa, %.lr.ph.us.i
  %.1152170.us.i.epil.init = phi ptr [ %.0151179.us.i, %.lr.ph.us.i ], [ %i.wm, %..preheader167_crit_edge.us.i.unr-lcssa ] ; 2 uses
  %.0157169.us.i.epil.init = phi ptr [ %i.vt, %.lr.ph.us.i ], [ %i.wn, %..preheader167_crit_edge.us.i.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod560)
  %i.xp = load i64, ptr %.0157169.us.i.epil.init, align 1, !tbaa !116
  %i.xq = insertelement <2 x i64> poison, i64 %i.xp, i64 0
  %i.xr = getelementptr inbounds i8, ptr %.0157169.us.i.epil.init, i64 %i.uy
  %i.xs = load i64, ptr %i.xr, align 1, !tbaa !116
  %i.xt = insertelement <2 x i64> poison, i64 %i.xs, i64 0
  %i.xu = bitcast <2 x i64> %i.xq to <16 x i8>
  %i.xv = bitcast <2 x i64> %i.xt to <16 x i8>
  %i.xw = shufflevector <16 x i8> %i.xu, <16 x i8> %i.xv, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.xw, ptr %.1152170.us.i.epil.init, align 1, !tbaa !116
  %i.xx = getelementptr inbounds nuw i8, ptr %.1152170.us.i.epil.init, i64 16
  %i.xy = getelementptr inbounds i8, ptr %.0157169.us.i.epil.init, i64 %i.va
  br label %..preheader167_crit_edge.us.i

..preheader167_crit_edge.us.i:                    ; preds = %..preheader167_crit_edge.us.i.unr-lcssa, %.epil.preheader
  %.lcssa535 = phi ptr [ %i.wm, %..preheader167_crit_edge.us.i.unr-lcssa ], [ %i.xx, %.epil.preheader ] ; 3 uses
  %.lcssa534 = phi ptr [ %i.wn, %..preheader167_crit_edge.us.i.unr-lcssa ], [ %i.xy, %.epil.preheader ] ; 2 uses
  br i1 %.not84, label %._crit_edge.us.i, label %.lr.ph176.us.i.preheader

.lr.ph176.us.i.preheader:                         ; preds = %..preheader167_crit_edge.us.i
  br i1 %lcmp.mod564.not, label %.lr.ph176.us.i.prol.loopexit, label %.lr.ph176.us.i.prol

.lr.ph176.us.i.prol:                              ; preds = %.lr.ph176.us.i.preheader, %.lr.ph176.us.i.prol
  %.2175.us.i.prol = phi ptr [ %i.ya, %.lr.ph176.us.i.prol ], [ %.lcssa535, %.lr.ph176.us.i.preheader ] ; 2 uses
  %.1158174.us.i.prol = phi ptr [ %i.yb, %.lr.ph176.us.i.prol ], [ %.lcssa534, %.lr.ph176.us.i.preheader ] ; 2 uses
  %.1160173.us.i.prol = phi i32 [ %i.yc, %.lr.ph176.us.i.prol ], [ %i.vb, %.lr.ph176.us.i.preheader ]
  %prol.iter565 = phi i32 [ %prol.iter565.next, %.lr.ph176.us.i.prol ], [ 0, %.lr.ph176.us.i.preheader ]
  %i.xz = load i64, ptr %.1158174.us.i.prol, align 1, !tbaa !116
  store i64 %i.xz, ptr %.2175.us.i.prol, align 1, !tbaa !116
  %i.ya = getelementptr inbounds nuw i8, ptr %.2175.us.i.prol, i64 8 ; 3 uses
  %i.yb = getelementptr inbounds i8, ptr %.1158174.us.i.prol, i64 %i.uy ; 2 uses
  %i.yc = add nuw nsw i32 %.1160173.us.i.prol, 1  ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN4ncnn12Gemm_x86_avx20create_pipeline_int8ERKNS_6OptionE.omp_outlined.9:bb.a
  %.0144.lcssa.i = phi i32 [ 0, %bb.u ], [ %i.zn, %.preheader163.i.loopexit.unr-lcssa ], [ %i.zn, %.lr.ph218.i.epil.preheader ] ; 5 uses
  %i.adx = icmp slt i32 %.0144.lcssa.i, %.sroa.speculated
  br i1 %i.adx, label %.lr.ph225.i.preheader, label %._crit_edge226.i

.lr.ph225.i.preheader:                            ; preds = %.preheader163.i
  %i.ady = sub i32 %.sroa.speculated, %.0144.lcssa.i
  %xtraiter576 = and i32 %i.ady, 3                ; 2 uses
  %lcmp.mod577.not = icmp eq i32 %xtraiter576, 0
  br i1 %lcmp.mod577.not, label %.lr.ph225.i.prol.loopexit, label %.lr.ph225.i.prol

.lr.ph225.i.prol:                                 ; preds = %.lr.ph225.i.preheader, %.lr.ph225.i.prol
  %.1224.i.prol = phi i32 [ %i.aef, %.lr.ph225.i.prol ], [ %.0144.lcssa.i, %.lr.ph225.i.preheader ]
  %.1146223.i.prol = phi ptr [ %i.aee, %.lr.ph225.i.prol ], [ %.0145.lcssa.i, %.lr.ph225.i.preheader ] ; 3 uses
  %.8222.i.prol = phi ptr [ %i.aed, %.lr.ph225.i.prol ], [ %.7.lcssa.i53, %.lr.ph225.i.preheader ] ; 3 uses
  %prol.iter578 = phi i32 [ %prol.iter578.next, %.lr.ph225.i.prol ], [ 0, %.lr.ph225.i.preheader ]
  %i.adz = load i8, ptr %.1146223.i.prol, align 1, !tbaa !116
  store i8 %i.adz, ptr %.8222.i.prol, align 1, !tbaa !116
  %i.aea = getelementptr inbounds nuw i8, ptr %.1146223.i.prol, i64 1
  %i.aeb = load i8, ptr %i.aea, align 1, !tbaa !116
  %i.aec = getelementptr inbounds nuw i8, ptr %.8222.i.prol, i64 1
  store i8 %i.aeb, ptr %i.aec, align 1, !tbaa !116
  %i.aed = getelementptr inbounds nuw i8, ptr %.8222.i.prol, i64 2 ; 3 uses
  %i.aee = getelementptr inbounds i8, ptr %.1146223.i.prol, i64 %i.zk ; 2 uses
  %i.aef = add nuw nsw i32 %.1224.i.prol, 1       ; 2 uses
  %prol.iter578.next = add i32 %prol.iter578, 1   ; 2 uses
  %prol.iter578.cmp.not = icmp eq i32 %prol.iter578.next, %xtraiter576
  br i1 %prol.iter578.cmp.not, label %.lr.ph225.i.prol.loopexit, label %.lr.ph225.i.prol, !llvm.loop !652

.lr.ph225.i.prol.loopexit:                        ; preds = %.lr.ph225.i.prol, %.lr.ph225.i.preheader
  %.lcssa542.unr = phi ptr [ poison, %.lr.ph225.i.preheader ], [ %i.aed, %.lr.ph225.i.prol ]
  %.1224.i.unr = phi i32 [ %.0144.lcssa.i, %.lr.ph225.i.preheader ], [ %i.aef, %.lr.ph225.i.prol ]
  %.1146223.i.unr = phi ptr [ %.0145.lcssa.i, %.lr.ph225.i.preheader ], [ %i.aee, %.lr.ph225.i.prol ]
  %.8222.i.unr = phi ptr [ %.7.lcssa.i53, %.lr.ph225.i.preheader ], [ %i.aed, %.lr.ph225.i.prol ]
  %i.aeg = sub i32 %.0144.lcssa.i, %.sroa.speculated
  %i.aeh = icmp ugt i32 %i.aeg, -4
  br i1 %i.aeh, label %._crit_edge226.i, label %.lr.ph225.i

.lr.ph218.i:                                      ; preds = %.lr.ph218.i.preheader, %.lr.ph218.i
  %.0145215.i = phi ptr [ %i.aff, %.lr.ph218.i ], [ %i.adk, %.lr.ph218.i.preheader ] ; 4 uses
  %.7214.i = phi ptr [ %i.afe, %.lr.ph218.i ], [ %.6229.i, %.lr.ph218.i.preheader ] ; 9 uses
  %niter575 = phi i32 [ %niter575.next.1, %.lr.ph218.i ], [ 0, %.lr.ph218.i.preheader ]
  %i.aei = load i8, ptr %.0145215.i, align 1, !tbaa !116
  store i8 %i.aei, ptr %.7214.i, align 1, !tbaa !116
  %i.aej = getelementptr inbounds i8, ptr %.0145215.i, i64 %i.zk ; 2 uses
  %i.aek = load i8, ptr %i.aej, align 1, !tbaa !116
  %i.ael = getelementptr inbounds nuw i8, ptr %.7214.i, i64 1
  store i8 %i.aek, ptr %i.ael, align 1, !tbaa !116
  %i.aem = getelementptr inbounds nuw i8, ptr %.0145215.i, i64 1
  %i.aen = load i8, ptr %i.aem, align 1, !tbaa !116
  %i.aeo = getelementptr inbounds nuw i8, ptr %.7214.i, i64 2
  store i8 %i.aen, ptr %i.aeo, align 1, !tbaa !116
  %i.aep = getelementptr i8, ptr %i.aej, i64 1
  %i.aeq = load i8, ptr %i.aep, align 1, !tbaa !116
  %i.aer = getelementptr inbounds nuw i8, ptr %.7214.i, i64 3
  store i8 %i.aeq, ptr %i.aer, align 1, !tbaa !116
  %i.aes = getelementptr inbounds nuw i8, ptr %.7214.i, i64 4
  %i.aet = getelementptr inbounds i8, ptr %.0145215.i, i64 %i.zm ; 4 uses
  %i.aeu = load i8, ptr %i.aet, align 1, !tbaa !116
  store i8 %i.aeu, ptr %i.aes, align 1, !tbaa !116
  %i.aev = getelementptr inbounds i8, ptr %i.aet, i64 %i.zk ; 2 uses
  %i.aew = load i8, ptr %i.aev, align 1, !tbaa !116
  %i.aex = getelementptr inbounds nuw i8, ptr %.7214.i, i64 5
  store i8 %i.aew, ptr %i.aex, align 1, !tbaa !116
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aet, i64 1
  %i.aez = load i8, ptr %i.aey, align 1, !tbaa !116
  %i.afa = getelementptr inbounds nuw i8, ptr %.7214.i, i64 6
  store i8 %i.aez, ptr %i.afa, align 1, !tbaa !116
  %i.afb = getelementptr i8, ptr %i.aev, i64 1
  %i.afc = load i8, ptr %i.afb, align 1, !tbaa !116
  %i.afd = getelementptr inbounds nuw i8, ptr %.7214.i, i64 7
  store i8 %i.afc, ptr %i.afd, align 1, !tbaa !116
  %i.afe = getelementptr inbounds nuw i8, ptr %.7214.i, i64 8 ; 3 uses
  %i.aff = getelementptr inbounds i8, ptr %i.aet, i64 %i.zm ; 3 uses
  %niter575.next.1 = add nuw nsw i32 %niter575, 2 ; 2 uses
  %niter575.ncmp.1.not = icmp eq i32 %niter575.next.1, %unroll_iter574
  br i1 %niter575.ncmp.1.not, label %.preheader163.i.loopexit.unr-lcssa, label %.lr.ph218.i, !llvm.loop !653

.lr.ph225.i:                                      ; preds = %.lr.ph225.i.prol.loopexit, %.lr.ph225.i
  %.1224.i = phi i32 [ %i.age, %.lr.ph225.i ], [ %.1224.i.unr, %.lr.ph225.i.prol.loopexit ]
  %.1146223.i = phi ptr [ %i.agd, %.lr.ph225.i ], [ %.1146223.i.unr, %.lr.ph225.i.prol.loopexit ] ; 3 uses
  %.8222.i = phi ptr [ %i.agc, %.lr.ph225.i ], [ %.8222.i.unr, %.lr.ph225.i.prol.loopexit ] ; 9 uses
  %i.afg = load i8, ptr %.1146223.i, align 1, !tbaa !116
  store i8 %i.afg, ptr %.8222.i, align 1, !tbaa !116
  %i.afh = getelementptr inbounds nuw i8, ptr %.1146223.i, i64 1
  %i.afi = load i8, ptr %i.afh, align 1, !tbaa !116
  %i.afj = getelementptr inbounds nuw i8, ptr %.8222.i, i64 1
  store i8 %i.afi, ptr %i.afj, align 1, !tbaa !116
  %i.afk = getelementptr inbounds nuw i8, ptr %.8222.i, i64 2
  %i.afl = getelementptr inbounds i8, ptr %.1146223.i, i64 %i.zk ; 3 uses
  %i.afm = load i8, ptr %i.afl, align 1, !tbaa !116
  store i8 %i.afm, ptr %i.afk, align 1, !tbaa !116
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afl, i64 1
  %i.afo = load i8, ptr %i.afn, align 1, !tbaa !116
  %i.afp = getelementptr inbounds nuw i8, ptr %.8222.i, i64 3
  store i8 %i.afo, ptr %i.afp, align 1, !tbaa !116
  %i.afq = getelementptr inbounds nuw i8, ptr %.8222.i, i64 4
  %i.afr = getelementptr inbounds i8, ptr %i.afl, i64 %i.zk ; 3 uses
  %i.afs = load i8, ptr %i.afr, align 1, !tbaa !116
  store i8 %i.afs, ptr %i.afq, align 1, !tbaa !116
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afr, i64 1
  %i.afu = load i8, ptr %i.aft, align 1, !tbaa !116
  %i.afv = getelementptr inbounds nuw i8, ptr %.8222.i, i64 5
  store i8 %i.afu, ptr %i.afv, align 1, !tbaa !116
  %i.afw = getelementptr inbounds nuw i8, ptr %.8222.i, i64 6
  %i.afx = getelementptr inbounds i8, ptr %i.afr, i64 %i.zk ; 3 uses
  %i.afy = load i8, ptr %i.afx, align 1, !tbaa !116
  store i8 %i.afy, ptr %i.afw, align 1, !tbaa !116
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afx, i64 1
  %i.aga = load i8, ptr %i.afz, align 1, !tbaa !116
  %i.agb = getelementptr inbounds nuw i8, ptr %.8222.i, i64 7
  store i8 %i.aga, ptr %i.agb, align 1, !tbaa !116
  %i.agc = getelementptr inbounds nuw i8, ptr %.8222.i, i64 8 ; 2 uses
  %i.agd = getelementptr inbounds i8, ptr %i.afx, i64 %i.zk
  %i.age = add nuw nsw i32 %.1224.i, 4            ; 2 uses
  %exitcond271.not.i.3 = icmp eq i32 %i.age, %.sroa.speculated
  br i1 %exitcond271.not.i.3, label %._crit_edge226.i, label %.lr.ph225.i, !llvm.loop !654

._crit_edge226.i:                                 ; preds = %.lr.ph225.i.prol.loopexit, %.lr.ph225.i, %.preheader163.i
  %.8.lcssa.i54 = phi ptr [ %.7.lcssa.i53, %.preheader163.i ], [ %.lcssa542.unr, %.lr.ph225.i.prol.loopexit ], [ %i.agc, %.lr.ph225.i ] ; 2 uses
  %indvars.iv.next273.i = add nuw nsw i64 %indvars.iv272.i, 2 ; 3 uses
  %i.agf = icmp slt i64 %indvars.iv.next273.i, %invariant.op294.i
  br i1 %i.agf, label %bb.u, label %.preheader.loopexit.i55, !llvm.loop !655

.lr.ph237.i:                                      ; preds = %._crit_edge238.i, %.lr.ph237.preheader.i
  %indvars.iv276.i = phi i64 [ %i.acz, %.lr.ph237.preheader.i ], [ %indvars.iv.next277.i, %._crit_edge238.i ] ; 2 uses
  %.9241.i = phi ptr [ %.6.lcssa.i51, %.lr.ph237.preheader.i ], [ %.lcssa543, %._crit_edge238.i ] ; 2 uses
  %i.agg = load ptr, ptr %i.z, align 8, !tbaa !18
  %i.agh = load i32, ptr %i.aa, align 4, !tbaa !88
  %i.agi = sext i32 %i.agh to i64
  %i.agj = mul nsw i64 %i.agi, %i.acw
  %i.agk = load i64, ptr %i.ab, align 8, !tbaa !59
  %i.agl = mul i64 %i.agj, %i.agk
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agg, i64 %i.agl
  %i.agn = getelementptr i8, ptr %i.agm, i64 %indvars.iv276.i
  %i.ago = getelementptr i8, ptr %i.agn, i64 %i.aj ; 2 uses
  br i1 %i.adb, label %.epil.preheader579, label %.lr.ph237.i.new

.lr.ph237.i.new:                                  ; preds = %.lr.ph237.i, %.lr.ph237.i.new
  %.0143234.i = phi ptr [ %i.ahm, %.lr.ph237.i.new ], [ %i.ago, %.lr.ph237.i ] ; 2 uses
  %.10233.i = phi ptr [ %i.ahl, %.lr.ph237.i.new ], [ %.9241.i, %.lr.ph237.i ] ; 9 uses
  %niter585 = phi i32 [ %niter585.next.7, %.lr.ph237.i.new ], [ 0, %.lr.ph237.i ]
  %i.agp = load i8, ptr %.0143234.i, align 1, !tbaa !116
  store i8 %i.agp, ptr %.10233.i, align 1, !tbaa !116
  %i.agq = getelementptr inbounds nuw i8, ptr %.10233.i, i64 1
  %i.agr = getelementptr inbounds i8, ptr %.0143234.i, i64 %i.acy ; 2 uses
  %i.ags = load i8, ptr %i.agr, align 1, !tbaa !116
  store i8 %i.ags, ptr %i.agq, align 1, !tbaa !116
  %i.agt = getelementptr inbounds nuw i8, ptr %.10233.i, i64 2
  %i.agu = getelementptr inbounds i8, ptr %i.agr, i64 %i.acy ; 2 uses
  %i.agv = load i8, ptr %i.agu, align 1, !tbaa !116
  store i8 %i.agv, ptr %i.agt, align 1, !tbaa !116
  %i.agw = getelementptr inbounds nuw i8, ptr %.10233.i, i64 3
  %i.agx = getelementptr inbounds i8, ptr %i.agu, i64 %i.acy ; 2 uses
  %i.agy = load i8, ptr %i.agx, align 1, !tbaa !116
  store i8 %i.agy, ptr %i.agw, align 1, !tbaa !116
  %i.agz = getelementptr inbounds nuw i8, ptr %.10233.i, i64 4
  %i.aha = getelementptr inbounds i8, ptr %i.agx, i64 %i.acy ; 2 uses
  %i.ahb = load i8, ptr %i.aha, align 1, !tbaa !116
  store i8 %i.ahb, ptr %i.agz, align 1, !tbaa !116
  %i.ahc = getelementptr inbounds nuw i8, ptr %.10233.i, i64 5
  %i.ahd = getelementptr inbounds i8, ptr %i.aha, i64 %i.acy ; 2 uses
  %i.ahe = load i8, ptr %i.ahd, align 1, !tbaa !116
  store i8 %i.ahe, ptr %i.ahc, align 1, !tbaa !116
  %i.ahf = getelementptr inbounds nuw i8, ptr %.10233.i, i64 6
  %i.ahg = getelementptr inbounds i8, ptr %i.ahd, i64 %i.acy ; 2 uses
  %i.ahh = load i8, ptr %i.ahg, align 1, !tbaa !116
  store i8 %i.ahh, ptr %i.ahf, align 1, !tbaa !116
  %i.ahi = getelementptr inbounds nuw i8, ptr %.10233.i, i64 7
  %i.ahj = getelementptr inbounds i8, ptr %i.ahg, i64 %i.acy ; 2 uses
  %i.ahk = load i8, ptr %i.ahj, align 1, !tbaa !116
  store i8 %i.ahk, ptr %i.ahi, align 1, !tbaa !116
  %i.ahl = getelementptr inbounds nuw i8, ptr %.10233.i, i64 8 ; 3 uses
  %i.ahm = getelementptr inbounds i8, ptr %i.ahj, i64 %i.acy ; 2 uses
  %niter585.next.7 = add i32 %niter585, 8         ; 2 uses
  %niter585.ncmp.7 = icmp eq i32 %niter585.next.7, %unroll_iter584
  br i1 %niter585.ncmp.7, label %._crit_edge238.i.unr-lcssa, label %.lr.ph237.i.new, !llvm.loop !656

._crit_edge238.i.unr-lcssa:                       ; preds = %.lr.ph237.i.new
  br i1 %lcmp.mod581.not, label %._crit_edge238.i, label %.epil.preheader579

.epil.preheader579:                               ; preds = %._crit_edge238.i.unr-lcssa, %.lr.ph237.i
  %.0143234.i.epil.init = phi ptr [ %i.ago, %.lr.ph237.i ], [ %i.ahm, %._crit_edge238.i.unr-lcssa ]
  %.10233.i.epil.init = phi ptr [ %.9241.i, %.lr.ph237.i ], [ %i.ahl, %._crit_edge238.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod583)
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.epil.preheader579
  %.0143234.i.epil = phi ptr [ %.0143234.i.epil.init, %.epil.preheader579 ], [ %i.ahp, %bb.v ] ; 2 uses
  %.10233.i.epil = phi ptr [ %.10233.i.epil.init, %.epil.preheader579 ], [ %i.aho, %bb.v ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader579 ], [ %epil.iter.next, %bb.v ]
  %i.ahn = load i8, ptr %.0143234.i.epil, align 1, !tbaa !116
  store i8 %i.ahn, ptr %.10233.i.epil, align 1, !tbaa !116
  %i.aho = getelementptr inbounds nuw i8, ptr %.10233.i.epil, i64 1 ; 2 uses
  %i.ahp = getelementptr inbounds i8, ptr %.0143234.i.epil, i64 %i.acy
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter580
  br i1 %epil.iter.cmp.not, label %._crit_edge238.i, label %bb.v, !llvm.loop !657

._crit_edge238.i:                                 ; preds = %bb.v, %._crit_edge238.i.unr-lcssa
  %.lcssa543 = phi ptr [ %i.ahl, %._crit_edge238.i.unr-lcssa ], [ %i.aho, %bb.v ]
  %indvars.iv.next277.i = add nsw i64 %indvars.iv276.i, 1 ; 2 uses
  %exitcond279.not.i = icmp eq i64 %indvars.iv.next277.i, %wide.trip.count.i52
  br i1 %exitcond279.not.i, label %_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit, label %.lr.ph237.i, !llvm.loop !658

_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge372.i, %._crit_edge238.i, %.lr.ph242.i, %.preheader.i50, %bb.n, %bb.p, %bb.r, %.lr.ph376.i, %.preheader.i, %bb.d, %bb.f, %bb.h
  %i.ahq = load ptr, ptr %i.r, align 8, !tbaa !11 ; 2 uses
  %.not.i33 = icmp eq ptr %i.ahq, null
  br i1 %.not.i33, label %_ZN4ncnn3MatD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit
  %i.ahr = atomicrmw add ptr %i.ahq, i32 -1 acq_rel, align 4
  %i.ahs = icmp eq i32 %i.ahr, 1
  br i1 %i.ahs, label %bb.x, label %_ZN4ncnn3MatD2Ev.exit

bb.x:                                             ; preds = %bb.w
  %i.aht = load ptr, ptr %i.u, align 8, !tbaa !17 ; 3 uses
  %.not3.i34 = icmp eq ptr %i.aht, null
  %i.ahu = load ptr, ptr %8, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i34, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ahv = load ptr, ptr %i.aht, align 8, !tbaa !9
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahv, i64 24
  %i.ahx = load ptr, ptr %i.ahw, align 8
  invoke void %i.ahx(ptr noundef nonnull align 8 dereferenceable(8) %i.aht, ptr noundef %i.ahu)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.ab, !inline_history !19

bb.z:                                             ; preds = %bb.x
  %.not.i37 = icmp eq ptr %i.ahu, null
  br i1 %.not.i37, label %_ZN4ncnn3MatD2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @free(ptr noundef nonnull %i.ahu) #9
  br label %_ZN4ncnn3MatD2Ev.exit

bb.ab:                                            ; preds = %bb.y
  %i.ahy = landingpad { ptr, i32 }
          catch ptr null
  %i.ahz = extractvalue { ptr, i32 } %i.ahy, 0
  call void @__clang_call_terminate(ptr %i.ahz) #26
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.w, %_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit, %bb.y, %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  %i.aia = load i32, ptr %5, align 4, !tbaa !45   ; 2 uses
  %i.aib = add nsw i32 %i.aia, %.0117             ; 2 uses
  %i.aic = load i32, ptr %4, align 4, !tbaa !45   ; 3 uses
  %i.aid = icmp slt i32 %i.aib, %i.aic
  br i1 %i.aid, label %.noexc40, label %._crit_edge.loopexit, !llvm.loop !659

._crit_edge121:                                   ; preds = %._crit_edge, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge121, %bb.a
  ret void

bb.ad:                                            ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.aie = landingpad { ptr, i32 }
          catch ptr null
  %i.aif = extractvalue { ptr, i32 } %i.aie, 0
  call void @__clang_call_terminate(ptr %i.aif) #26
  unreachable
}

declare void @_ZN4ncnn38transpose_pack_A_tile_int8_avxvnniint8ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn34transpose_pack_A_tile_int8_avxvnniERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN4ncnn20cpu_support_x86_avx2Ev() local_unnamed_addr #1

declare void @_ZN4ncnn31transpose_pack_A_tile_int8_avx2ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn28pack_A_tile_int8_avxvnniint8ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn24pack_A_tile_int8_avxvnniERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn21pack_A_tile_int8_avx2ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn28pack_B_tile_int8_avxvnniint8ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn24pack_B_tile_int8_avxvnniERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn21pack_B_tile_int8_avx2ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn38transpose_pack_B_tile_int8_avxvnniint8ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn34transpose_pack_B_tile_int8_avxvnniERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn31transpose_pack_B_tile_int8_avx2ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL19gemm_AT_BT_x86_int8ERKNS_3MatES2_S2_fS2_RS0_iiiiiffiiiiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr noundef nonnull align 8 dereferenceable(72) %11, ptr noundef nonnull align 8 dereferenceable(72) %12, ptr noundef nonnull align 8 dereferenceable(72) %13) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 16 uses
  %15 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %16 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.y

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !45
  %i.h = load i32, ptr %0, align 4, !tbaa !45     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !45
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !45
  %i.k = load i32, ptr %i.a, align 4, !tbaa !45   ; 2 uses
  %.not138 = icmp sgt i32 %i.k, %i.j
  br i1 %.not138, label %._crit_edge141, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 52
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 44
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 52
  %i.ag = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %15, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.bf = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.bg = getelementptr inbounds nuw i8, ptr %16, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.052139 = phi i32 [ %i.k, %.lr.ph ], [ %i.fl, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.bh = load i32, ptr %3, align 4, !tbaa !331   ; 2 uses
  %i.bi = load i32, ptr %i.l, align 4, !tbaa !333 ; 2 uses
  %i.bj = load i32, ptr %i.m, align 4, !tbaa !334 ; 3 uses
  %i.bk = load i32, ptr %i.n, align 4, !tbaa !335
  %i.bl = load i32, ptr %i.o, align 4, !tbaa !337
  %i.bm = load float, ptr %i.p, align 4, !tbaa !660
  %i.bn = load float, ptr %i.q, align 4, !tbaa !661
  %i.bo = load i32, ptr %4, align 4, !tbaa !45    ; 2 uses
  %i.bp = sdiv i32 %.052139, %i.bo                ; 2 uses
  %i.bq = srem i32 %.052139, %i.bo                ; 2 uses
  %i.br = mul nsw i32 %i.bp, %i.bh                ; 3 uses
  %i.bs = mul nsw i32 %i.bq, %i.bi                ; 3 uses
  %i.bt = load i32, ptr %5, align 4, !tbaa !45
  %i.bu = sub nsw i32 %i.bt, %i.br
  %.sroa.speculated121 = call i32 @llvm.smin.i32(i32 %i.bh, i32 %i.bu) ; 2 uses
  %i.bv = load i32, ptr %6, align 4, !tbaa !45
  %i.bw = sub nsw i32 %i.bv, %i.bs
  %.sroa.speculated117 = call i32 @llvm.smin.i32(i32 %i.bi, i32 %i.bw) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  %i.bx = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
end_hunk_9
begin_hunk_10_@_ZN4ncnnL29unpack_output_tile_dequantizeERKNS_3MatES2_RS0_iiiiiS2_ffi:bb.a
  br i1 %i.bme, label %.lr.ph3851.i, label %.preheader3679.i, !llvm.loop !743

.preheader3678.i:                                 ; preds = %bb.iy, %.preheader3679.i
  %.171910.lcssa.i = phi ptr [ %.161909.lcssa.i, %.preheader3679.i ], [ %i.bmz, %bb.iy ] ; 2 uses
  %.62.lcssa.i = phi ptr [ %.60.lcssa.i, %.preheader3679.i ], [ %.63.i, %bb.iy ] ; 2 uses
  %.31859.lcssa.i = phi ptr [ %.11857.lcssa.i, %.preheader3679.i ], [ %i.bmy, %bb.iy ] ; 2 uses
  %.11852.lcssa.i = phi i32 [ %.01851.lcssa.i, %.preheader3679.i ], [ %i.bna, %bb.iy ] ; 3 uses
  %i.bmf = or disjoint i32 %.11852.lcssa.i, 1
  %i.bmg = icmp slt i32 %i.bmf, %7
  br i1 %i.bmg, label %.lr.ph3871.i, label %.preheader.i

.lr.ph3871.i:                                     ; preds = %.preheader3678.i
  %i.bmh = select ninf nsz i1 %or.cond35.i, float %.21855.i, float 0.000000e+00
  %i.bmi = insertelement <2 x float> poison, float %i.bkc, i64 0
  %i.bmj = shufflevector <2 x float> %i.bmi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bmk = insertelement <2 x float> poison, float %i.bmh, i64 0
  %i.bml = shufflevector <2 x float> %i.bmk, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.iz

.lr.ph3862.i:                                     ; preds = %.preheader3679.i, %bb.iy
  %.118523861.i = phi i32 [ %i.bna, %bb.iy ], [ %.01851.lcssa.i, %.preheader3679.i ]
  %.318593860.i = phi ptr [ %i.bmy, %bb.iy ], [ %.11857.lcssa.i, %.preheader3679.i ] ; 8 uses
  %.623859.i = phi ptr [ %.63.i, %bb.iy ], [ %.60.lcssa.i, %.preheader3679.i ] ; 5 uses
  %.1719103858.i = phi ptr [ %i.bmz, %bb.iy ], [ %.161909.lcssa.i, %.preheader3679.i ] ; 2 uses
  %.531113857.i = phi <4 x float> [ %.63112.i, %bb.iy ], [ %.33109.lcssa.i, %.preheader3679.i ] ; 4 uses
  %i.bmm = load <4 x i32>, ptr %.1719103858.i, align 1, !tbaa !116
  %i.bmn = sitofp fast <4 x i32> %i.bmm to <4 x float>
  %i.bmo = fmul fast <4 x float> %i.bke, %i.bmn   ; 4 uses
  %.not2006.i = icmp eq ptr %.623859.i, null
  br i1 %.not2006.i, label %bb.ir, label %bb.io

bb.io:                                            ; preds = %.lr.ph3862.i
  br i1 %or.cond35.i, label %.thread3651.i, label %bb.ip

.thread3651.i:                                    ; preds = %bb.io
  %i.bmp = fadd fast <4 x float> %i.bmo, %.531113857.i
  br label %bb.ir

bb.ip:                                            ; preds = %bb.io
  br i1 %or.cond37.i, label %bb.iq, label %bb.ir

bb.iq:                                            ; preds = %bb.ip
  %i.bmq = load <4 x float>, ptr %.623859.i, align 1, !tbaa !116 ; 2 uses
  %i.bmr = fmul fast <4 x float> %i.bmq, %i.azw
  %i.bms = fadd fast <4 x float> %i.bmr, %i.bmo
  %i.bmt = getelementptr inbounds nuw i8, ptr %.623859.i, i64 16
  br label %bb.ir

bb.ir:                                            ; preds = %bb.iq, %bb.ip, %.thread3651.i, %.lr.ph3862.i
  %.63112.i = phi nsz <4 x float> [ %.531113857.i, %.lr.ph3862.i ], [ %i.bmq, %bb.iq ], [ %.531113857.i, %bb.ip ], [ %.531113857.i, %.thread3651.i ]
  %.13069.i = phi nsz <4 x float> [ %i.bmo, %.lr.ph3862.i ], [ %i.bms, %bb.iq ], [ %i.bmo, %bb.ip ], [ %i.bmp, %.thread3651.i ]
  %.63.i = phi ptr [ null, %.lr.ph3862.i ], [ %i.bmt, %bb.iq ], [ %.623859.i, %bb.ip ], [ %.623859.i, %.thread3651.i ] ; 2 uses
  %i.bmu = fmul fast <4 x float> %.13069.i, %i.azz ; 7 uses
  br i1 %.not2002.i, label %bb.ix, label %bb.is

bb.is:                                            ; preds = %bb.ir
  br i1 %i.bab, label %bb.it, label %bb.iu

bb.it:                                            ; preds = %bb.is
  store <4 x float> %i.bmu, ptr %.318593860.i, align 1, !tbaa !116
  br label %bb.iy

bb.iu:                                            ; preds = %bb.is
  switch i32 %i.c, label %bb.iy [
    i32 4, label %bb.iv
    i32 1, label %bb.iw
  ]

bb.iv:                                            ; preds = %bb.iu
  store <4 x float> %i.bmu, ptr %.318593860.i, align 1, !tbaa !116
  br label %bb.iy

bb.iw:                                            ; preds = %bb.iu
  %.sroa.0.0.vec.extract.i = extractelement <4 x float> %i.bmu, i64 0
  store float %.sroa.0.0.vec.extract.i, ptr %.318593860.i, align 4, !tbaa !68
  %.sroa.0.4.vec.extract.i = extractelement <4 x float> %i.bmu, i64 1
  %i.bmv = getelementptr inbounds nuw [4 x i8], ptr %.318593860.i, i64 %i.l
  store float %.sroa.0.4.vec.extract.i, ptr %i.bmv, align 4, !tbaa !68
  %.sroa.0.8.vec.extract.i = extractelement <4 x float> %i.bmu, i64 2
  %i.bmw = getelementptr inbounds nuw i8, ptr %.318593860.i, i64 %.idx2012.i
  store float %.sroa.0.8.vec.extract.i, ptr %i.bmw, align 4, !tbaa !68
  %.sroa.0.12.vec.extract.i = extractelement <4 x float> %i.bmu, i64 3
  %i.bmx = getelementptr inbounds nuw i8, ptr %.318593860.i, i64 %.idx2013.i
  store float %.sroa.0.12.vec.extract.i, ptr %i.bmx, align 4, !tbaa !68
  br label %bb.iy

bb.ix:                                            ; preds = %bb.ir
  store <4 x float> %i.bmu, ptr %.318593860.i, align 1, !tbaa !116
  br label %bb.iy

bb.iy:                                            ; preds = %bb.ix, %bb.iw, %bb.iv, %bb.iu, %bb.it
  %.sink4021.i = phi i64 [ 16, %bb.ix ], [ %.idx2014.i, %bb.iv ], [ %.idx2014.i, %bb.iu ], [ %.idx2014.i, %bb.iw ], [ 16, %bb.it ]
  %i.bmy = getelementptr inbounds nuw i8, ptr %.318593860.i, i64 %.sink4021.i ; 2 uses
  %i.bmz = getelementptr inbounds nuw i8, ptr %.1719103858.i, i64 16 ; 2 uses
  %i.bna = add nuw nsw i32 %.118523861.i, 4       ; 3 uses
  %i.bnb = or disjoint i32 %i.bna, 3
  %i.bnc = icmp slt i32 %i.bnb, %7
  br i1 %i.bnc, label %.lr.ph3862.i, label %.preheader3678.i, !llvm.loop !744

.preheader.i:                                     ; preds = %bb.jf, %.preheader3678.i
  %.181911.lcssa.i = phi ptr [ %.171910.lcssa.i, %.preheader3678.i ], [ %i.bnv, %bb.jf ] ; 2 uses
  %.64.lcssa.i = phi ptr [ %.62.lcssa.i, %.preheader3678.i ], [ %.65.i, %bb.jf ] ; 2 uses
  %.5.lcssa.i = phi ptr [ %.31859.lcssa.i, %.preheader3678.i ], [ %i.bnu, %bb.jf ]
  %.2.lcssa.i = phi i32 [ %.11852.lcssa.i, %.preheader3678.i ], [ %i.bnw, %bb.jf ] ; 2 uses
  %i.bnd = icmp slt i32 %.2.lcssa.i, %7
  br i1 %i.bnd, label %.lr.ph3880.i, label %._crit_edge3881.i

.lr.ph3880.i:                                     ; preds = %.preheader.i
  %i.bne = select ninf i1 %or.cond35.i, float %.21855.i, float -0.000000e+00
  br label %bb.jg

bb.iz:                                            ; preds = %bb.jf, %.lr.ph3871.i
  %.23870.i = phi i32 [ %.11852.lcssa.i, %.lr.ph3871.i ], [ %i.bnw, %bb.jf ]
  %.53869.i = phi ptr [ %.31859.lcssa.i, %.lr.ph3871.i ], [ %i.bnu, %bb.jf ] ; 4 uses
  %.643868.i = phi ptr [ %.62.lcssa.i, %.lr.ph3871.i ], [ %.65.i, %bb.jf ] ; 4 uses
  %.1819113867.i = phi ptr [ %.171910.lcssa.i, %.lr.ph3871.i ], [ %i.bnv, %bb.jf ] ; 2 uses
  %i.bnf = load <2 x i32>, ptr %.1819113867.i, align 4, !tbaa !45
  %i.bng = sitofp <2 x i32> %i.bnf to <2 x float>
  %i.bnh = fmul fast <2 x float> %i.bmj, %i.bng   ; 3 uses
  %.not2005.i = icmp eq ptr %.643868.i, null
  br i1 %.not2005.i, label %bb.jc, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.bni = fadd fast <2 x float> %i.bnh, %i.bml
  br i1 %or.cond37.i, label %bb.jb, label %bb.jc

bb.jb:                                            ; preds = %bb.ja
  %i.bnj = load <2 x float>, ptr %.643868.i, align 4, !tbaa !68
  %i.bnk = fmul fast <2 x float> %i.bnj, %i.bag
  %i.bnl = fadd fast <2 x float> %i.bnk, %i.bnh
  %i.bnm = getelementptr inbounds nuw i8, ptr %.643868.i, i64 8
  br label %bb.jc

bb.jc:                                            ; preds = %bb.jb, %bb.ja, %bb.iz
  %.65.i = phi ptr [ %i.bnm, %bb.jb ], [ %.643868.i, %bb.ja ], [ null, %bb.iz ] ; 2 uses
  %i.bnn = phi <2 x float> [ %i.bnl, %bb.jb ], [ %i.bni, %bb.ja ], [ %i.bnh, %bb.iz ] ; 2 uses
  %i.bno = extractelement <2 x float> %i.bnn, i64 0
  %i.bnp = fmul fast float %i.bno, %9
  %i.bnq = extractelement <2 x float> %i.bnn, i64 1
  %i.bnr = fmul fast float %i.bnq, %9             ; 2 uses
  store float %i.bnp, ptr %.53869.i, align 4, !tbaa !68
  br i1 %.not2002.i, label %bb.je, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.bns = getelementptr inbounds nuw [4 x i8], ptr %.53869.i, i64 %i.l
  store float %i.bnr, ptr %i.bns, align 4, !tbaa !68
  br label %bb.jf

bb.je:                                            ; preds = %bb.jc
  %i.bnt = getelementptr inbounds nuw i8, ptr %.53869.i, i64 4
  store float %i.bnr, ptr %i.bnt, align 4, !tbaa !68
  br label %bb.jf

bb.jf:                                            ; preds = %bb.je, %bb.jd
  %.sink4022.i = phi i64 [ 8, %bb.je ], [ %.idx2012.i, %bb.jd ]
  %i.bnu = getelementptr inbounds nuw i8, ptr %.53869.i, i64 %.sink4022.i ; 2 uses
  %i.bnv = getelementptr inbounds nuw i8, ptr %.1819113867.i, i64 8 ; 2 uses
  %i.bnw = add nuw nsw i32 %.23870.i, 2           ; 3 uses
  %i.bnx = or disjoint i32 %i.bnw, 1
  %i.bny = icmp slt i32 %i.bnx, %7
  br i1 %i.bny, label %bb.iz, label %.preheader.i, !llvm.loop !745

bb.jg:                                            ; preds = %bb.jj, %.lr.ph3880.i
  %.33879.i = phi i32 [ %.2.lcssa.i, %.lr.ph3880.i ], [ %i.bok, %bb.jj ]
  %.73878.i = phi ptr [ %.5.lcssa.i, %.lr.ph3880.i ], [ %.8.i, %bb.jj ] ; 3 uses
  %.663877.i = phi ptr [ %.64.lcssa.i, %.lr.ph3880.i ], [ %.67.i, %bb.jj ] ; 4 uses
  %.1919123876.i = phi ptr [ %.181911.lcssa.i, %.lr.ph3880.i ], [ %i.boj, %bb.jj ] ; 2 uses
  %i.bnz = load i32, ptr %.1919123876.i, align 4, !tbaa !45
  %i.boa = sitofp fast i32 %i.bnz to float
  %i.bob = fmul fast float %i.bkc, %i.boa         ; 3 uses
  %.not2004.i = icmp eq ptr %.663877.i, null
  br i1 %.not2004.i, label %bb.jj, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %spec.select.i = fadd reassoc nnan ninf arcp contract afn float %i.bne, %i.bob
  br i1 %or.cond37.i, label %bb.ji, label %bb.jj

bb.ji:                                            ; preds = %bb.jh
  %i.boc = load float, ptr %.663877.i, align 4, !tbaa !68
  %i.bod = fmul fast float %i.boc, %10
  %i.boe = fadd fast float %i.bod, %i.bob
  %i.bof = getelementptr inbounds nuw i8, ptr %.663877.i, i64 4
  br label %bb.jj

bb.jj:                                            ; preds = %bb.ji, %bb.jh, %bb.jg
  %.67.i = phi ptr [ %i.bof, %bb.ji ], [ %.663877.i, %bb.jh ], [ null, %bb.jg ] ; 2 uses
  %.1.i = phi nsz float [ %i.boe, %bb.ji ], [ %spec.select.i, %bb.jh ], [ %i.bob, %bb.jg ]
  %i.bog = fmul fast float %.1.i, %9
  store float %i.bog, ptr %.73878.i, align 4, !tbaa !68
  %i.boh = getelementptr inbounds nuw [4 x i8], ptr %.73878.i, i64 %i.l
  %i.boi = getelementptr inbounds nuw i8, ptr %.73878.i, i64 4
  %.8.i = select i1 %.not2002.i, ptr %i.boi, ptr %i.boh
  %i.boj = getelementptr inbounds nuw i8, ptr %.1919123876.i, i64 4 ; 2 uses
  %i.bok = add nuw nsw i32 %.33879.i, 1           ; 2 uses
  %exitcond3935.not.i = icmp eq i32 %i.bok, %7
  br i1 %exitcond3935.not.i, label %._crit_edge3881.i, label %bb.jg, !llvm.loop !746

._crit_edge3881.i:                                ; preds = %bb.jj, %.preheader.i
  %.191912.lcssa.i = phi ptr [ %.181911.lcssa.i, %.preheader.i ], [ %i.boj, %bb.jj ]
  %.66.lcssa.i = phi ptr [ %.64.lcssa.i, %.preheader.i ], [ %.67.i, %bb.jj ]
  %indvars.iv.next3937.i = add nsw i64 %indvars.iv3936.i, 1 ; 2 uses
  %exitcond3939.not.i = icmp eq i64 %indvars.iv.next3937.i, %wide.trip.count.i
  br i1 %exitcond3939.not.i, label %_ZN4ncnnL32unpack_output_tile_int32_to_fp32ERKNS_3MatES2_RS0_iiiiiS2_ffi.exit, label %bb.hs, !llvm.loop !747

_ZN4ncnnL32unpack_output_tile_int32_to_fp32ERKNS_3MatES2_RS0_iiiiiS2_ffi.exit: ; preds = %._crit_edge3881.i, %bb.b, %.preheader3680.i
  ret void
}

declare void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN4ncnn40gemm_transB_packed_tile_int8_avxvnniint8ERKNS_3MatES2_RS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn36gemm_transB_packed_tile_int8_avxvnniERKNS_3MatES2_RS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn33gemm_transB_packed_tile_int8_avx2ERKNS_3MatES2_RS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN4ncnn19cpu_support_x86_xopEv() local_unnamed_addr #1

declare void @_ZN4ncnn32gemm_transB_packed_tile_int8_xopERKNS_3MatES2_RS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16>, <8 x i16>) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16>, <8 x i16>) #16

declare void @_ZN4ncnn37unpack_output_tile_int32_to_fp32_avx2ERKNS_3MatES2_RS0_iiiiiS2_ffi(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(72), float noundef nofpclass(nan inf), float noundef nofpclass(nan inf), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL20compute_B_int8_scaleERKNS_3MatERf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !87
  %i.c = icmp eq i32 %i.b, 3                      ; 4 uses
  %.in.v.i = select i1 %i.c, i64 56, i64 48
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v.i
  %i.d = load i32, ptr %.in.i, align 8, !tbaa !45 ; 5 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph79.i, label %_ZN4ncnnL25compute_B_fp32_int8_scaleERKNS_3MatERf.exit

.lr.ph79.i:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = sext i32 %i.g to i64                     ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i64, ptr %i.i, align 8              ; 3 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !18     ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !60   ; 2 uses
  %i.n = sext i32 %i.m to i64                     ; 4 uses
  %i.o = mul nsw i32 %i.m, %i.g                   ; 15 uses
  %i.p = icmp sgt i32 %i.o, 7
  br i1 %i.p, label %.lr.ph79.split.us.preheader.i, label %.lr.ph79.split.i

.lr.ph79.split.us.preheader.i:                    ; preds = %.lr.ph79.i
  %i.q = and i32 %i.o, 2147483640                 ; 3 uses
  %wide.trip.count178.i = zext nneg i32 %i.d to i64
  %..i = select i1 %i.c, i64 %i.j, i64 %i.h
  %factor.op.mul192.i = mul i64 %..i, %i.n
  %i.r = or disjoint i32 %i.q, 3
  %i.s = icmp samesign ult i32 %i.r, %i.o
  %i.t = add nsw i32 %i.o, -8                     ; 2 uses
  %i.u = lshr i32 %i.t, 3
  %i.v = add nuw nsw i32 %i.u, 1                  ; 2 uses
  %xtraiter173 = and i32 %i.v, 3                  ; 3 uses
  %i.w = icmp ult i32 %i.t, 24
  %unroll_iter179 = and i32 %i.v, 1073741820
  %lcmp.mod175.not = icmp eq i32 %xtraiter173, 0
  %lcmp.mod178 = icmp ne i32 %xtraiter173, 0
  br label %.lr.ph79.split.us.i

.lr.ph79.split.us.i:                              ; preds = %._crit_edge.us.i, %.lr.ph79.split.us.preheader.i
  %indvars.iv175.i = phi i64 [ 0, %.lr.ph79.split.us.preheader.i ], [ %indvars.iv.next176.i, %._crit_edge.us.i ] ; 2 uses
  %.05076.us.i = phi float [ 0.000000e+00, %.lr.ph79.split.us.preheader.i ], [ %.151.lcssa.us.i, %._crit_edge.us.i ] ; 4 uses
  %.05275.us.i = phi <8 x float> [ zeroinitializer, %.lr.ph79.split.us.preheader.i ], [ %.lcssa144, %._crit_edge.us.i ] ; 2 uses
  %.05474.us.i = phi <4 x float> [ zeroinitializer, %.lr.ph79.split.us.preheader.i ], [ %.155.lcssa.us.i, %._crit_edge.us.i ] ; 2 uses
  %.reass193.i = mul i64 %factor.op.mul192.i, %indvars.iv175.i
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.reass193.i ; 2 uses
  br i1 %i.w, label %.epil.preheader, label %.lr.ph79.split.us.i.new

.lr.ph79.split.us.i.new:                          ; preds = %.lr.ph79.split.us.i, %.lr.ph79.split.us.i.new
  %.02958.us.i = phi ptr [ %i.ar, %.lr.ph79.split.us.i.new ], [ %i.x, %.lr.ph79.split.us.i ] ; 5 uses
  %.15357.us.i = phi <8 x float> [ %i.aq, %.lr.ph79.split.us.i.new ], [ %.05275.us.i, %.lr.ph79.split.us.i ]
  %niter180 = phi i32 [ %niter180.next.3, %.lr.ph79.split.us.i.new ], [ 0, %.lr.ph79.split.us.i ]
  %i.y = load <8 x i32>, ptr %.02958.us.i, align 1, !tbaa !116
  %i.z = and <8 x i32> %i.y, splat (i32 2147483647)
  %i.aa = bitcast <8 x i32> %i.z to <8 x float>
  %i.ab = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.15357.us.i, <8 x float> nofpclass(nan inf) %i.aa)
  %i.ac = getelementptr inbounds nuw i8, ptr %.02958.us.i, i64 32
  %i.ad = load <8 x i32>, ptr %i.ac, align 1, !tbaa !116
  %i.ae = and <8 x i32> %i.ad, splat (i32 2147483647)
  %i.af = bitcast <8 x i32> %i.ae to <8 x float>
  %i.ag = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ab, <8 x float> nofpclass(nan inf) %i.af)
  %i.ah = getelementptr inbounds nuw i8, ptr %.02958.us.i, i64 64
  %i.ai = load <8 x i32>, ptr %i.ah, align 1, !tbaa !116
  %i.aj = and <8 x i32> %i.ai, splat (i32 2147483647)
  %i.ak = bitcast <8 x i32> %i.aj to <8 x float>
  %i.al = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ag, <8 x float> nofpclass(nan inf) %i.ak)
  %i.am = getelementptr inbounds nuw i8, ptr %.02958.us.i, i64 96
  %i.an = load <8 x i32>, ptr %i.am, align 1, !tbaa !116
  %i.ao = and <8 x i32> %i.an, splat (i32 2147483647)
  %i.ap = bitcast <8 x i32> %i.ao to <8 x float>
  %i.aq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.al, <8 x float> nofpclass(nan inf) %i.ap) ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.02958.us.i, i64 128 ; 3 uses
  %niter180.next.3 = add i32 %niter180, 4         ; 2 uses
  %niter180.ncmp.3.not = icmp eq i32 %niter180.next.3, %unroll_iter179
  br i1 %niter180.ncmp.3.not, label %..preheader56_crit_edge.us.i.unr-lcssa, label %.lr.ph79.split.us.i.new, !llvm.loop !748

.lr.ph65.us.i:                                    ; preds = %..preheader56_crit_edge.us.i, %.lr.ph65.us.i
  %.164.us.i = phi i32 [ %i.ax, %.lr.ph65.us.i ], [ %i.q, %..preheader56_crit_edge.us.i ]
  %.13063.us.i = phi ptr [ %i.aw, %.lr.ph65.us.i ], [ %.lcssa, %..preheader56_crit_edge.us.i ] ; 2 uses
  %.15562.us.i = phi <4 x float> [ %i.av, %.lr.ph65.us.i ], [ %.05474.us.i, %..preheader56_crit_edge.us.i ]
  %i.as = load <4 x i32>, ptr %.13063.us.i, align 1, !tbaa !116
  %i.at = and <4 x i32> %i.as, splat (i32 2147483647)
  %i.au = bitcast <4 x i32> %i.at to <4 x float>
  %i.av = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.15562.us.i, <4 x float> nofpclass(nan inf) %i.au) ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.13063.us.i, i64 16 ; 2 uses
  %i.ax = add nuw nsw i32 %.164.us.i, 4           ; 3 uses
  %i.ay = or disjoint i32 %i.ax, 3
  %i.az = icmp slt i32 %i.ay, %i.o
  br i1 %i.az, label %.lr.ph65.us.i, label %.preheader.us.i, !llvm.loop !749

.lr.ph72.us.i:                                    ; preds = %.lr.ph72.us.i.preheader, %.lr.ph72.us.i
  %.271.us.i = phi i32 [ %i.bd, %.lr.ph72.us.i ], [ %.271.us.i.ph, %.lr.ph72.us.i.preheader ]
  %.23170.us.i = phi ptr [ %i.bc, %.lr.ph72.us.i ], [ %.23170.us.i.ph, %.lr.ph72.us.i.preheader ] ; 2 uses
  %.15169.us.i = phi float [ %.sroa.speculated40.us.i, %.lr.ph72.us.i ], [ %.15169.us.i.ph, %.lr.ph72.us.i.preheader ]
  %i.ba = load float, ptr %.23170.us.i, align 4, !tbaa !68
  %i.bb = tail call fast float @llvm.fabs.f32(float %i.ba)
  %.sroa.speculated40.us.i = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.15169.us.i, float %i.bb) ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.23170.us.i, i64 4
  %i.bd = add nuw nsw i32 %.271.us.i, 1           ; 2 uses
  %exitcond174.not.i = icmp eq i32 %i.bd, %i.o
  br i1 %exitcond174.not.i, label %._crit_edge.us.i, label %.lr.ph72.us.i, !llvm.loop !750

._crit_edge.us.i:                                 ; preds = %.lr.ph72.us.i, %middle.block114, %vec.epilog.middle.block139, %.preheader.us.i
  %.151.lcssa.us.i = phi float [ %.05076.us.i, %.preheader.us.i ], [ %i.ck, %vec.epilog.middle.block139 ], [ %i.cb, %middle.block114 ], [ %.sroa.speculated40.us.i, %.lr.ph72.us.i ] ; 2 uses
  %indvars.iv.next176.i = add nuw nsw i64 %indvars.iv175.i, 1 ; 2 uses
  %exitcond179.not.i = icmp eq i64 %indvars.iv.next176.i, %wide.trip.count178.i
  br i1 %exitcond179.not.i, label %_ZN4ncnnL25compute_B_fp32_int8_scaleERKNS_3MatERf.exit, label %.lr.ph79.split.us.i, !llvm.loop !751

.preheader.us.i:                                  ; preds = %.lr.ph65.us.i, %..preheader56_crit_edge.us.i
  %.155.lcssa.us.i = phi <4 x float> [ %.05474.us.i, %..preheader56_crit_edge.us.i ], [ %i.av, %.lr.ph65.us.i ] ; 2 uses
  %.130.lcssa.us.i = phi ptr [ %.lcssa, %..preheader56_crit_edge.us.i ], [ %i.aw, %.lr.ph65.us.i ] ; 5 uses
  %.1.lcssa.us.i = phi i32 [ %i.q, %..preheader56_crit_edge.us.i ], [ %i.ax, %.lr.ph65.us.i ] ; 5 uses
  %i.be = icmp slt i32 %.1.lcssa.us.i, %i.o
  br i1 %i.be, label %iter.check125, label %._crit_edge.us.i

iter.check125:                                    ; preds = %.preheader.us.i
  %i.bf = xor i32 %.1.lcssa.us.i, -1
  %i.bg = add i32 %i.o, %i.bf                     ; 3 uses
  %i.bh = zext i32 %i.bg to i64
  %i.bi = add nuw nsw i64 %i.bh, 1                ; 5 uses
  %min.iters.check95 = icmp ult i32 %i.bg, 7
  br i1 %min.iters.check95, label %.lr.ph72.us.i.preheader, label %vector.main.loop.iter.check96

vector.main.loop.iter.check96:                    ; preds = %iter.check125
  %min.iters.check97 = icmp ult i32 %i.bg, 31
  br i1 %min.iters.check97, label %vec.epilog.ph129, label %vector.ph98

vector.ph98:                                      ; preds = %vector.main.loop.iter.check96
  %i.bj = and i64 %i.bi, 24
  %n.vec99 = and i64 %i.bi, 8589934560            ; 5 uses
  %i.bk = trunc i64 %n.vec99 to i32
  %i.bl = add i32 %.1.lcssa.us.i, %i.bk
  %i.bm = shl nuw nsw i64 %n.vec99, 2
  %i.bn = getelementptr i8, ptr %.130.lcssa.us.i, i64 %i.bm
  %broadcast.splatinsert100 = insertelement <8 x float> poison, float %.05076.us.i, i64 0
  %broadcast.splat101 = shufflevector <8 x float> %broadcast.splatinsert100, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body102

vector.body102:                                   ; preds = %vector.body102, %vector.ph98
  %index103 = phi i64 [ 0, %vector.ph98 ], [ %index.next113, %vector.body102 ] ; 2 uses
  %vec.phi104 = phi <8 x float> [ %broadcast.splat101, %vector.ph98 ], [ %i.bw, %vector.body102 ]
  %vec.phi105 = phi <8 x float> [ %broadcast.splat101, %vector.ph98 ], [ %i.bx, %vector.body102 ]
  %vec.phi106 = phi <8 x float> [ %broadcast.splat101, %vector.ph98 ], [ %i.by, %vector.body102 ]
  %vec.phi107 = phi <8 x float> [ %broadcast.splat101, %vector.ph98 ], [ %i.bz, %vector.body102 ]
  %i.bo = shl i64 %index103, 2
  %next.gep108 = getelementptr i8, ptr %.130.lcssa.us.i, i64 %i.bo ; 4 uses
  %i.bp = getelementptr i8, ptr %next.gep108, i64 32
  %i.bq = getelementptr i8, ptr %next.gep108, i64 64
  %i.br = getelementptr i8, ptr %next.gep108, i64 96
  %wide.load109 = load <8 x float>, ptr %next.gep108, align 4, !tbaa !68
  %wide.load110 = load <8 x float>, ptr %i.bp, align 4, !tbaa !68
  %wide.load111 = load <8 x float>, ptr %i.bq, align 4, !tbaa !68
  %wide.load112 = load <8 x float>, ptr %i.br, align 4, !tbaa !68
  %i.bs = tail call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load109)
  %i.bt = tail call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load110)
  %i.bu = tail call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load111)
  %i.bv = tail call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load112)
  %i.bw = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi104, <8 x float> %i.bs) ; 2 uses
  %i.bx = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi105, <8 x float> %i.bt) ; 2 uses
  %i.by = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi106, <8 x float> %i.bu) ; 2 uses
  %i.bz = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi107, <8 x float> %i.bv) ; 2 uses
  %index.next113 = add nuw i64 %index103, 32      ; 2 uses
  %i.ca = icmp eq i64 %index.next113, %n.vec99
  br i1 %i.ca, label %middle.block114, label %vector.body102, !llvm.loop !752

middle.block114:                                  ; preds = %vector.body102
  %rdx.minmax.select116 = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.bw, <8 x float> %i.bx)
  %rdx.minmax.select118 = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax.select116, <8 x float> %i.by)
  %rdx.minmax.select120 = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax.select118, <8 x float> %i.bz)
end_hunk_10
begin_hunk_11_@_ZN4ncnnL20pack_B_tile_quantizeERKNS_3MatERS0_iiiif:bb.a
  %i.qo = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.qn, <8 x i16> splat (i16 127))
  %i.qp = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.qo, <8 x i16> poison)
  %i.qq = bitcast <16 x i8> %i.qp to <4 x i32>
  %i.qr = extractelement <4 x i32> %i.qq, i64 0
  store i32 %i.qr, ptr %.19514.i, align 4, !tbaa !45
  %i.qs = getelementptr inbounds nuw i8, ptr %.19514.i, i64 4 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %.1323512.i, i64 8 ; 2 uses
  %i.qu = add nuw nsw i32 %.1320513.i, 2          ; 3 uses
  %i.qv = or disjoint i32 %i.qu, 1
  %i.qw = icmp slt i32 %i.qv, %5
  br i1 %i.qw, label %.lr.ph515.i, label %.preheader415.i, !llvm.loop !790

.lr.ph522.i:                                      ; preds = %.lr.ph522.i.preheader168, %.lr.ph522.i
  %.20521.i = phi ptr [ %i.rh, %.lr.ph522.i ], [ %.20521.i.ph, %.lr.ph522.i.preheader168 ] ; 3 uses
  %.2321520.i = phi i32 [ %i.rj, %.lr.ph522.i ], [ %.2321520.i.ph, %.lr.ph522.i.preheader168 ]
  %.2324519.i = phi ptr [ %i.ri, %.lr.ph522.i ], [ %.2324519.i.ph, %.lr.ph522.i.preheader168 ] ; 3 uses
  %i.qx = load float, ptr %.2324519.i, align 4, !tbaa !68
  %i.qy = fmul fast float %i.qx, %6
  %i.qz = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.qy)
  %i.ra = fptosi float %i.qz to i32
  %spec.select.i351402.i = tail call i32 @llvm.smax.i32(i32 %i.ra, i32 -127)
  %.0.i352403.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i351402.i, i32 127)
  %.0.i352.i = trunc nsw i32 %.0.i352403.i to i8
  store i8 %.0.i352.i, ptr %.20521.i, align 1, !tbaa !116
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %.2324519.i, i64 %i.n
  %i.rc = load float, ptr %i.rb, align 4, !tbaa !68
  %i.rd = fmul fast float %i.rc, %6
  %i.re = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.rd)
  %i.rf = fptosi float %i.re to i32
  %spec.select.i349404.i = tail call i32 @llvm.smax.i32(i32 %i.rf, i32 -127)
  %.0.i350405.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i349404.i, i32 127)
  %.0.i350.i = trunc nsw i32 %.0.i350405.i to i8
  %i.rg = getelementptr inbounds nuw i8, ptr %.20521.i, i64 1
  store i8 %.0.i350.i, ptr %i.rg, align 1, !tbaa !116
  %i.rh = getelementptr inbounds nuw i8, ptr %.20521.i, i64 2 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %.2324519.i, i64 4
  %i.rj = add nuw nsw i32 %.2321520.i, 1          ; 2 uses
  %exitcond590.not.i = icmp eq i32 %i.rj, %5
  br i1 %exitcond590.not.i, label %._crit_edge.i, label %.lr.ph522.i, !llvm.loop !791

._crit_edge.i:                                    ; preds = %.lr.ph522.i, %middle.block, %.preheader415.i
  %.20.lcssa.i = phi ptr [ %.19.lcssa.i, %.preheader415.i ], [ %i.pn, %middle.block ], [ %i.rh, %.lr.ph522.i ] ; 2 uses
  %indvars.iv.next592.i = add nuw nsw i64 %indvars.iv591.i, 2 ; 3 uses
  %i.rk = icmp slt i64 %indvars.iv.next592.i, %invariant.op639.i
  br i1 %i.rk, label %bb.l, label %.preheader414.loopexit.i, !llvm.loop !792

bb.m:                                             ; preds = %._crit_edge541.i, %.lr.ph545.i
  %indvars.iv595.i = phi i64 [ %i.nu, %.lr.ph545.i ], [ %indvars.iv.next596.i, %._crit_edge541.i ] ; 2 uses
  %.21544.i = phi ptr [ %.17.lcssa.i, %.lr.ph545.i ], [ %.23.lcssa.i, %._crit_edge541.i ] ; 2 uses
  %i.rl = load ptr, ptr %0, align 8, !tbaa !18
  %i.rm = add nsw i64 %indvars.iv595.i, %i.nv
  %i.rn = mul i64 %i.rm, %i.n
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.rl, i64 %i.rn
  %i.rp = getelementptr inbounds [4 x i8], ptr %i.ro, i64 %i.np ; 2 uses
  br i1 %i.ns, label %.lr.ph533.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph533.i, %bb.m
  %.22.lcssa.i = phi ptr [ %.21544.i, %bb.m ], [ %i.tg, %.lr.ph533.i ] ; 7 uses
  %.0301.lcssa.i = phi ptr [ %i.rp, %bb.m ], [ %i.th, %.lr.ph533.i ] ; 6 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.m ], [ %i.nt, %.lr.ph533.i ] ; 6 uses
  %i.rq = icmp slt i32 %.0.lcssa.i, %5
  br i1 %i.rq, label %.lr.ph540.i.preheader, label %._crit_edge541.i

.lr.ph540.i.preheader:                            ; preds = %.preheader.i
  %i.rr = xor i32 %.0.lcssa.i, -1
  %i.rs = add i32 %5, %i.rr                       ; 2 uses
  %i.rt = zext i32 %i.rs to i64
  %i.ru = add nuw nsw i64 %i.rt, 1                ; 2 uses
  %min.iters.check149 = icmp ult i32 %i.rs, 7
  br i1 %min.iters.check149, label %.lr.ph540.i.preheader165, label %vector.memcheck140

vector.memcheck140:                               ; preds = %.lr.ph540.i.preheader
  %scevgep141 = getelementptr i8, ptr %.22.lcssa.i, i64 1
  %i.rv = xor i32 %.0.lcssa.i, -1
  %i.rw = add i32 %5, %i.rv
  %i.rx = zext i32 %i.rw to i64                   ; 2 uses
  %scevgep142 = getelementptr i8, ptr %scevgep141, i64 %i.rx
  %scevgep143 = getelementptr i8, ptr %.0301.lcssa.i, i64 4
  %i.ry = shl nuw nsw i64 %i.rx, 2
  %scevgep144 = getelementptr i8, ptr %scevgep143, i64 %i.ry
  %bound0145 = icmp ult ptr %.22.lcssa.i, %scevgep144
  %bound1146 = icmp ult ptr %.0301.lcssa.i, %scevgep142
  %found.conflict147 = and i1 %bound0145, %bound1146
  br i1 %found.conflict147, label %.lr.ph540.i.preheader165, label %vector.ph150

vector.ph150:                                     ; preds = %vector.memcheck140
  %n.vec151 = and i64 %i.ru, 8589934584           ; 5 uses
  %i.rz = trunc i64 %n.vec151 to i32
  %i.sa = add i32 %.0.lcssa.i, %i.rz
  %i.sb = shl nuw nsw i64 %n.vec151, 2
  %i.sc = getelementptr i8, ptr %.0301.lcssa.i, i64 %i.sb
  %i.sd = getelementptr i8, ptr %.22.lcssa.i, i64 %n.vec151 ; 2 uses
  br label %vector.body154

vector.body154:                                   ; preds = %vector.body154, %vector.ph150
  %index155 = phi i64 [ 0, %vector.ph150 ], [ %index.next159, %vector.body154 ] ; 3 uses
  %i.se = shl i64 %index155, 2
  %next.gep156 = getelementptr i8, ptr %.0301.lcssa.i, i64 %i.se
  %next.gep157 = getelementptr i8, ptr %.22.lcssa.i, i64 %index155
  %wide.load158 = load <8 x float>, ptr %next.gep156, align 4, !tbaa !68, !alias.scope !793
  %i.sf = fmul fast <8 x float> %wide.load158, %broadcast.splat153
  %i.sg = tail call fast <8 x float> @llvm.round.v8f32(<8 x float> %i.sf)
  %i.sh = fptosi <8 x float> %i.sg to <8 x i32>
  %i.si = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.sh, <8 x i32> splat (i32 -127))
  %i.sj = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.si, <8 x i32> splat (i32 127))
  %i.sk = trunc nsw <8 x i32> %i.sj to <8 x i8>
  store <8 x i8> %i.sk, ptr %next.gep157, align 1, !tbaa !116, !alias.scope !796, !noalias !793
  %index.next159 = add nuw i64 %index155, 8       ; 2 uses
  %i.sl = icmp eq i64 %index.next159, %n.vec151
  br i1 %i.sl, label %middle.block160, label %vector.body154, !llvm.loop !798

middle.block160:                                  ; preds = %vector.body154
  %cmp.n161 = icmp eq i64 %i.ru, %n.vec151
  br i1 %cmp.n161, label %._crit_edge541.i, label %.lr.ph540.i.preheader165

.lr.ph540.i.preheader165:                         ; preds = %vector.memcheck140, %.lr.ph540.i.preheader, %middle.block160
  %.1539.i.ph = phi i32 [ %.0.lcssa.i, %vector.memcheck140 ], [ %.0.lcssa.i, %.lr.ph540.i.preheader ], [ %i.sa, %middle.block160 ] ; 4 uses
  %.1302538.i.ph = phi ptr [ %.0301.lcssa.i, %vector.memcheck140 ], [ %.0301.lcssa.i, %.lr.ph540.i.preheader ], [ %i.sc, %middle.block160 ] ; 3 uses
  %.23537.i.ph = phi ptr [ %.22.lcssa.i, %vector.memcheck140 ], [ %.22.lcssa.i, %.lr.ph540.i.preheader ], [ %i.sd, %middle.block160 ] ; 3 uses
  %i.sm = sub i32 %5, %.1539.i.ph
  %.neg195 = add i32 %.1539.i.ph, 1
  %xtraiter193 = and i32 %i.sm, 1
  %lcmp.mod194.not = icmp eq i32 %xtraiter193, 0
  br i1 %lcmp.mod194.not, label %.lr.ph540.i.prol.loopexit, label %.lr.ph540.i.prol

.lr.ph540.i.prol:                                 ; preds = %.lr.ph540.i.preheader165
  %i.sn = load float, ptr %.1302538.i.ph, align 4, !tbaa !68
  %i.so = fmul fast float %i.sn, %6
  %i.sp = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.so)
  %i.sq = fptosi float %i.sp to i32
  %spec.select.i400.i.prol = tail call i32 @llvm.smax.i32(i32 %i.sq, i32 -127)
  %.0.i401.i.prol = tail call i32 @llvm.smin.i32(i32 %spec.select.i400.i.prol, i32 127)
  %.0.i.i.prol = trunc nsw i32 %.0.i401.i.prol to i8
  store i8 %.0.i.i.prol, ptr %.23537.i.ph, align 1, !tbaa !116
  %i.sr = getelementptr inbounds nuw i8, ptr %.23537.i.ph, i64 1 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %.1302538.i.ph, i64 4
  %i.st = add nuw nsw i32 %.1539.i.ph, 1
  br label %.lr.ph540.i.prol.loopexit

.lr.ph540.i.prol.loopexit:                        ; preds = %.lr.ph540.i.prol, %.lr.ph540.i.preheader165
  %.lcssa167.unr = phi ptr [ poison, %.lr.ph540.i.preheader165 ], [ %i.sr, %.lr.ph540.i.prol ]
  %.1539.i.unr = phi i32 [ %.1539.i.ph, %.lr.ph540.i.preheader165 ], [ %i.st, %.lr.ph540.i.prol ]
  %.1302538.i.unr = phi ptr [ %.1302538.i.ph, %.lr.ph540.i.preheader165 ], [ %i.ss, %.lr.ph540.i.prol ]
  %.23537.i.unr = phi ptr [ %.23537.i.ph, %.lr.ph540.i.preheader165 ], [ %i.sr, %.lr.ph540.i.prol ]
  %i.su = icmp eq i32 %5, %.neg195
  br i1 %i.su, label %._crit_edge541.i, label %.lr.ph540.i

.lr.ph533.i:                                      ; preds = %bb.m, %.lr.ph533.i
  %.0531.i = phi i32 [ %i.ti, %.lr.ph533.i ], [ 0, %bb.m ]
  %.0301530.i = phi ptr [ %i.th, %.lr.ph533.i ], [ %i.rp, %bb.m ] ; 2 uses
  %.22529.i = phi ptr [ %i.tg, %.lr.ph533.i ], [ %.21544.i, %bb.m ] ; 2 uses
  %i.sv = load <4 x float>, ptr %.0301530.i, align 1, !tbaa !116
  %i.sw = fmul fast <4 x float> %i.sv, %i.nr      ; 2 uses
  %i.sx = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.sw)
  %i.sy = fadd fast <4 x float> %i.sx, %i.sw
  %i.sz = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.sy) ; 2 uses
  %i.ta = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.sz, <4 x i32> %i.sz)
  %i.tb = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ta, <8 x i16> splat (i16 -127))
  %i.tc = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.tb, <8 x i16> splat (i16 127))
  %i.td = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.tc, <8 x i16> poison)
  %i.te = bitcast <16 x i8> %i.td to <4 x i32>
  %i.tf = extractelement <4 x i32> %i.te, i64 0
  store i32 %i.tf, ptr %.22529.i, align 4, !tbaa !45
  %i.tg = getelementptr inbounds nuw i8, ptr %.22529.i, i64 4 ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %.0301530.i, i64 16 ; 2 uses
  %i.ti = add nuw nsw i32 %.0531.i, 4             ; 2 uses
  %i.tj = or disjoint i32 %i.ti, 3
  %i.tk = icmp slt i32 %i.tj, %5
  br i1 %i.tk, label %.lr.ph533.i, label %.preheader.i, !llvm.loop !799

.lr.ph540.i:                                      ; preds = %.lr.ph540.i.prol.loopexit, %.lr.ph540.i
  %.1539.i = phi i32 [ %i.tx, %.lr.ph540.i ], [ %.1539.i.unr, %.lr.ph540.i.prol.loopexit ]
  %.1302538.i = phi ptr [ %i.tw, %.lr.ph540.i ], [ %.1302538.i.unr, %.lr.ph540.i.prol.loopexit ] ; 3 uses
  %.23537.i = phi ptr [ %i.tv, %.lr.ph540.i ], [ %.23537.i.unr, %.lr.ph540.i.prol.loopexit ] ; 3 uses
  %i.tl = load float, ptr %.1302538.i, align 4, !tbaa !68
  %i.tm = fmul fast float %i.tl, %6
  %i.tn = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.tm)
  %i.to = fptosi float %i.tn to i32
  %spec.select.i400.i = tail call i32 @llvm.smax.i32(i32 %i.to, i32 -127)
  %.0.i401.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i400.i, i32 127)
  %.0.i.i = trunc nsw i32 %.0.i401.i to i8
  store i8 %.0.i.i, ptr %.23537.i, align 1, !tbaa !116
  %i.tp = getelementptr inbounds nuw i8, ptr %.23537.i, i64 1
  %i.tq = getelementptr inbounds nuw i8, ptr %.1302538.i, i64 4
  %i.tr = load float, ptr %i.tq, align 4, !tbaa !68
  %i.ts = fmul fast float %i.tr, %6
  %i.tt = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.ts)
  %i.tu = fptosi float %i.tt to i32
  %spec.select.i400.i.1 = tail call i32 @llvm.smax.i32(i32 %i.tu, i32 -127)
  %.0.i401.i.1 = tail call i32 @llvm.smin.i32(i32 %spec.select.i400.i.1, i32 127)
  %.0.i.i.1 = trunc nsw i32 %.0.i401.i.1 to i8
  store i8 %.0.i.i.1, ptr %i.tp, align 1, !tbaa !116
  %i.tv = getelementptr inbounds nuw i8, ptr %.23537.i, i64 2 ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %.1302538.i, i64 8
  %i.tx = add nuw nsw i32 %.1539.i, 2             ; 2 uses
  %exitcond594.not.i.1 = icmp eq i32 %i.tx, %5
  br i1 %exitcond594.not.i.1, label %._crit_edge541.i, label %.lr.ph540.i, !llvm.loop !800

._crit_edge541.i:                                 ; preds = %.lr.ph540.i.prol.loopexit, %.lr.ph540.i, %middle.block160, %.preheader.i
  %.23.lcssa.i = phi ptr [ %.22.lcssa.i, %.preheader.i ], [ %i.sd, %middle.block160 ], [ %.lcssa167.unr, %.lr.ph540.i.prol.loopexit ], [ %i.tv, %.lr.ph540.i ]
  %indvars.iv.next596.i = add nsw i64 %indvars.iv595.i, 1 ; 2 uses
  %exitcond598.not.i = icmp eq i64 %indvars.iv.next596.i, %wide.trip.count.i
  br i1 %exitcond598.not.i, label %_ZN4ncnnL24pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit, label %bb.m, !llvm.loop !801

_ZN4ncnnL24pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit: ; preds = %._crit_edge541.i, %bb.b, %bb.d, %bb.f, %.preheader414.i
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define internal fastcc void @_ZN4ncnnL30transpose_pack_B_tile_quantizeERKNS_3MatERS0_iiiif(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef nofpclass(nan inf) %6) unnamed_addr #15 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn29cpu_support_x86_avx_vnni_int8Ev()
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn46transpose_pack_B_tile_fp32_to_int8_avxvnniint8ERKNS_3MatERS0_iiiif(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef nofpclass(nan inf) %6)
  br label %_ZN4ncnnL34transpose_pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN4ncnn24cpu_support_x86_avx_vnniEv()
  %.not435.i = icmp eq i32 %i.b, 0
  br i1 %.not435.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4ncnn42transpose_pack_B_tile_fp32_to_int8_avxvnniERKNS_3MatERS0_iiiif(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef nofpclass(nan inf) %6)
  br label %_ZN4ncnnL34transpose_pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit

bb.e:                                             ; preds = %bb.c
  %i.c = tail call noundef i32 @_ZN4ncnn20cpu_support_x86_avx2Ev()
  %.not436.i = icmp eq i32 %i.c, 0
  br i1 %.not436.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4ncnn39transpose_pack_B_tile_fp32_to_int8_avx2ERKNS_3MatERS0_iiiif(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef nofpclass(nan inf) %6)
  br label %_ZN4ncnnL34transpose_pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit

bb.g:                                             ; preds = %bb.e
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !60   ; 16 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !87
  %i.h = icmp eq i32 %i.g, 3
  br i1 %i.h, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i64, ptr %i.i, align 8, !tbaa !20
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !88
  %i.m = sext i32 %i.l to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.n = phi i64 [ %i.j, %bb.h ], [ %i.m, %bb.i ] ; 31 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !18     ; 5 uses
  %i.p = icmp sgt i32 %3, 7
  br i1 %i.p, label %.lr.ph613.i, label %.preheader584.i

.lr.ph613.i:                                      ; preds = %bb.j
  %i.q = sext i32 %4 to i64
  %i.r = mul i64 %i.n, %i.q                       ; 3 uses
  %i.s = icmp ne i32 %i.e, 8
  %i.t = insertelement <8 x float> poison, float %6, i64 0
  %i.u = shufflevector <8 x float> %i.t, <8 x float> poison, <8 x i32> zeroinitializer ; 15 uses
  %i.v = icmp slt i32 %5, 8
  %.idx452.i = shl i64 %i.n, 5
  %.idx451.i = shl i64 %i.n, 4
  %i.w = icmp eq i32 %i.e, 1
  %i.x = icmp sgt i32 %5, 1
  %.idx450.i = shl i64 %i.n, 3
  %i.y = and i32 %5, -2
  %i.z = zext nneg i32 %3 to i64                  ; 4 uses
  %i.aa = sext i32 %2 to i64                      ; 3 uses
  %i.ab = sext i32 %i.e to i64                    ; 3 uses
  %brmerge.i = or i1 %i.v, %i.s
  br i1 %brmerge.i, label %.lr.ph613.i.split.us, label %.lr.ph.i.preheader

.lr.ph613.i.split.us:                             ; preds = %.lr.ph613.i
  %i.ac = icmp slt i32 %5, 4
  %i.ad = icmp ne i32 %i.e, 4
  %brmerge712.i = or i1 %i.ac, %i.ad
  br i1 %brmerge712.i, label %.lr.ph613.i.split.us.split.us, label %.loopexit588.i.us

.lr.ph613.i.split.us.split.us:                    ; preds = %.lr.ph613.i.split.us
  br i1 %i.w, label %.loopexit588.i.us.us.us, label %.loopexit588.i.us.us.preheader

.loopexit588.i.us.us.preheader:                   ; preds = %.lr.ph613.i.split.us.split.us
  %umax = tail call i64 @llvm.umax.i64(i64 %i.z, i64 15)
  %i.ae = and i64 %umax, 2147483640
  br label %.preheader584.loopexit.i

.loopexit588.i.us.us.us:                          ; preds = %.lr.ph613.i.split.us.split.us, %.loopexit586.i.us.us.us
  %indvars.iv.i.us.us.us = phi i64 [ %indvars.iv.next.i.us.us.us, %.loopexit586.i.us.us.us ], [ 0, %.lr.ph613.i.split.us.split.us ] ; 2 uses
  %.0390612.i.us.us.us = phi ptr [ %.7.i.us.us.us, %.loopexit586.i.us.us.us ], [ %i.o, %.lr.ph613.i.split.us.split.us ] ; 2 uses
  %i.af = load ptr, ptr %0, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.r
  %i.ah = add nsw i64 %indvars.iv.i.us.us.us, %i.aa
  %i.ai = mul nuw nsw i64 %i.ah, %i.ab
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.ai ; 2 uses
  br i1 %i.x, label %.lr.ph602.i.us.us.us, label %.preheader585.i.us.us.us

.lr.ph602.i.us.us.us:                             ; preds = %.loopexit588.i.us.us.us, %.lr.ph602.i.us.us.us
  %.5601.i.us.us.us = phi ptr [ %i.bh, %.lr.ph602.i.us.us.us ], [ %.0390612.i.us.us.us, %.loopexit588.i.us.us.us ] ; 2 uses
  %.4407600.i.us.us.us = phi ptr [ %i.bi, %.lr.ph602.i.us.us.us ], [ %i.aj, %.loopexit588.i.us.us.us ] ; 3 uses
  %.0411599.i.us.us.us = phi i32 [ %i.bj, %.lr.ph602.i.us.us.us ], [ 0, %.loopexit588.i.us.us.us ]
  %i.ak = load <8 x float>, ptr %.4407600.i.us.us.us, align 1, !tbaa !116
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.4407600.i.us.us.us, i64 %i.n
  %i.am = load <8 x float>, ptr %i.al, align 1, !tbaa !116
  %i.an = fmul fast <8 x float> %i.ak, %i.u       ; 2 uses
  %i.ao = fmul fast <8 x float> %i.am, %i.u       ; 2 uses
  %i.ap = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.an)
  %i.aq = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ao)
  %i.ar = fadd fast <8 x float> %i.ap, %i.an
  %i.as = fadd fast <8 x float> %i.aq, %i.ao
  %i.at = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ar) ; 2 uses
  %i.au = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.as) ; 2 uses
  %i.av = shufflevector <8 x i32> %i.at, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aw = shufflevector <8 x i32> %i.at, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ax = shufflevector <8 x i32> %i.au, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ay = shufflevector <8 x i32> %i.au, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.az = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.av, <4 x i32> %i.aw)
  %i.ba = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ax, <4 x i32> %i.ay)
  %i.bb = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.az, <8 x i16> splat (i16 -127))
  %i.bc = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.bb, <8 x i16> splat (i16 127))
  %i.bd = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ba, <8 x i16> splat (i16 -127))
  %i.be = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.bd, <8 x i16> splat (i16 127))
  %i.bf = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.bc, <8 x i16> %i.be)
  %i.bg = shufflevector <16 x i8> %i.bf, <16 x i8> poison, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %i.bg, ptr %.5601.i.us.us.us, align 1, !tbaa !116
  %i.bh = getelementptr inbounds nuw i8, ptr %.5601.i.us.us.us, i64 16 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.4407600.i.us.us.us, i64 %.idx450.i ; 2 uses
  %i.bj = add nuw nsw i32 %.0411599.i.us.us.us, 2 ; 2 uses
  %i.bk = or disjoint i32 %i.bj, 1
  %i.bl = icmp slt i32 %i.bk, %5
  br i1 %i.bl, label %.lr.ph602.i.us.us.us, label %.preheader585.i.us.us.us, !llvm.loop !802

.preheader585.i.us.us.us:                         ; preds = %.lr.ph602.i.us.us.us, %.loopexit588.i.us.us.us
  %.0411.lcssa.i.us.us.us = phi i32 [ 0, %.loopexit588.i.us.us.us ], [ %i.y, %.lr.ph602.i.us.us.us ] ; 2 uses
  %.4407.lcssa.i.us.us.us = phi ptr [ %i.aj, %.loopexit588.i.us.us.us ], [ %i.bi, %.lr.ph602.i.us.us.us ]
  %.5.lcssa.i.us.us.us = phi ptr [ %.0390612.i.us.us.us, %.loopexit588.i.us.us.us ], [ %i.bh, %.lr.ph602.i.us.us.us ] ; 2 uses
  %i.bm = icmp slt i32 %.0411.lcssa.i.us.us.us, %5
  br i1 %i.bm, label %.lr.ph609.i.us.us.us, label %.loopexit586.i.us.us.us

.lr.ph609.i.us.us.us:                             ; preds = %.preheader585.i.us.us.us, %.lr.ph609.i.us.us.us
  %.6608.i.us.us.us = phi ptr [ %i.ca, %.lr.ph609.i.us.us.us ], [ %.5.lcssa.i.us.us.us, %.preheader585.i.us.us.us ] ; 2 uses
  %.5408607.i.us.us.us = phi ptr [ %i.cb, %.lr.ph609.i.us.us.us ], [ %.4407.lcssa.i.us.us.us, %.preheader585.i.us.us.us ] ; 2 uses
  %.1412606.i.us.us.us = phi i32 [ %i.cc, %.lr.ph609.i.us.us.us ], [ %.0411.lcssa.i.us.us.us, %.preheader585.i.us.us.us ]
  %i.bn = load <8 x float>, ptr %.5408607.i.us.us.us, align 1, !tbaa !116
  %i.bo = fmul fast <8 x float> %i.bn, %i.u       ; 2 uses
  %i.bp = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.bo)
  %i.bq = fadd fast <8 x float> %i.bp, %i.bo
  %i.br = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bq) ; 2 uses
  %i.bs = shufflevector <8 x i32> %i.br, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bt = shufflevector <8 x i32> %i.br, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bu = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bs, <4 x i32> %i.bt)
  %i.bv = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bu, <8 x i16> splat (i16 -127))
  %i.bw = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.bv, <8 x i16> splat (i16 127))
  %i.bx = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.bw, <8 x i16> poison)
  %i.by = bitcast <16 x i8> %i.bx to <2 x i64>
  %i.bz = extractelement <2 x i64> %i.by, i64 0
  store i64 %i.bz, ptr %.6608.i.us.us.us, align 8, !tbaa !767
  %i.ca = getelementptr inbounds nuw i8, ptr %.6608.i.us.us.us, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.5408607.i.us.us.us, i64 %i.n
  %i.cc = add nuw nsw i32 %.1412606.i.us.us.us, 1 ; 2 uses
  %exitcond.not.i.us.us.us = icmp eq i32 %i.cc, %5
  br i1 %exitcond.not.i.us.us.us, label %.loopexit586.i.us.us.us, label %.lr.ph609.i.us.us.us, !llvm.loop !803

.loopexit586.i.us.us.us:                          ; preds = %.lr.ph609.i.us.us.us, %.preheader585.i.us.us.us
  %.7.i.us.us.us = phi ptr [ %.5.lcssa.i.us.us.us, %.preheader585.i.us.us.us ], [ %i.ca, %.lr.ph609.i.us.us.us ] ; 2 uses
  %indvars.iv.next.i.us.us.us = add nuw nsw i64 %indvars.iv.i.us.us.us, 8 ; 3 uses
  %i.cd = or disjoint i64 %indvars.iv.next.i.us.us.us, 7
  %i.ce = icmp samesign ult i64 %i.cd, %i.z
  br i1 %i.ce, label %.loopexit588.i.us.us.us, label %.preheader584.loopexit.i, !llvm.loop !804

.loopexit588.i.us:                                ; preds = %.lr.ph613.i.split.us, %.loopexit586.i.loopexit12.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %.loopexit586.i.loopexit12.us ], [ 0, %.lr.ph613.i.split.us ] ; 2 uses
  %.0390612.i.us = phi ptr [ %i.eg, %.loopexit586.i.loopexit12.us ], [ %i.o, %.lr.ph613.i.split.us ]
  %i.cf = load ptr, ptr %0, align 8, !tbaa !18
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.r
  %i.ch = add nsw i64 %indvars.iv.i.us, %i.aa
  %i.ci = mul nsw i64 %i.ch, %i.ab
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.ci
  br label %.lr.ph596.i.us

.lr.ph596.i.us:                                   ; preds = %.loopexit588.i.us, %.lr.ph596.i.us
  %.3595.i.us = phi ptr [ %i.eg, %.lr.ph596.i.us ], [ %.0390612.i.us, %.loopexit588.i.us ] ; 3 uses
  %.2405594.i.us = phi ptr [ %i.eh, %.lr.ph596.i.us ], [ %i.cj, %.loopexit588.i.us ] ; 5 uses
  %.0410593.i.us = phi i32 [ %i.ei, %.lr.ph596.i.us ], [ 0, %.loopexit588.i.us ]
  %i.ck = load <8 x float>, ptr %.2405594.i.us, align 1, !tbaa !116
  %i.cl = getelementptr inbounds nuw i8, ptr %.2405594.i.us, i64 32
  %i.cm = load <8 x float>, ptr %i.cl, align 1, !tbaa !116
  %i.cn = getelementptr inbounds nuw i8, ptr %.2405594.i.us, i64 64
  %i.co = load <8 x float>, ptr %i.cn, align 1, !tbaa !116
  %i.cp = getelementptr inbounds nuw i8, ptr %.2405594.i.us, i64 96
  %i.cq = load <8 x float>, ptr %i.cp, align 1, !tbaa !116
  %i.cr = fmul fast <8 x float> %i.ck, %i.u       ; 2 uses
  %i.cs = fmul fast <8 x float> %i.cm, %i.u       ; 2 uses
end_hunk_11
begin_hunk_12_@_ZN4ncnnL30transpose_pack_B_tile_quantizeERKNS_3MatERS0_iiiif:bb.a
  %i.wp = shufflevector <4 x i32> %i.wn, <4 x i32> %i.wo, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.wq = shufflevector <4 x i32> %i.wn, <4 x i32> %i.wo, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x i32> %i.wp, ptr %.9618.i, align 16, !tbaa !116
  %i.wr = getelementptr inbounds nuw i8, ptr %.9618.i, i64 16
  store <4 x i32> %i.wq, ptr %i.wr, align 16, !tbaa !116
  %i.ws = getelementptr inbounds nuw i8, ptr %.9618.i, i64 32 ; 3 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %.0413617.i, i64 %.idx449.i
  %i.wu = add nuw nsw i32 %.0422616.i, 8          ; 2 uses
  %i.wv = or disjoint i32 %i.wu, 7
  %i.ww = icmp slt i32 %i.wv, %5
  br i1 %i.ww, label %.lr.ph619.i, label %.loopexit581.i.loopexit11, !llvm.loop !816

.loopexit581.i.loopexit11:                        ; preds = %.lr.ph619.i
  %indvars.iv.next771.i = add nuw nsw i64 %indvars.iv770.i, 4 ; 3 uses
  %i.wx = icmp slt i64 %indvars.iv.next771.i, %invariant.op.i
  br i1 %i.wx, label %.lr.ph619.i.preheader, label %.preheader579.loopexit.i, !llvm.loop !808

.preheader572.loopexit.i:                         ; preds = %.loopexit575.i.loopexit9, %.loopexit575.i.loopexit8.us, %.loopexit575.i.us.us.us, %.loopexit578.i.us.us.preheader
  %.us-phi47 = phi ptr [ %.8.lcssa.i, %.loopexit578.i.us.us.preheader ], [ %i.uh, %.loopexit575.i.loopexit8.us ], [ %.24.i.us.us.us, %.loopexit575.i.us.us.us ], [ %i.abl, %.loopexit575.i.loopexit9 ]
  %.us-phi48 = phi i64 [ %i.qd, %.loopexit578.i.us.us.preheader ], [ %indvars.iv.next775.i.us, %.loopexit575.i.loopexit8.us ], [ %indvars.iv.next775.i.us.us.us, %.loopexit575.i.us.us.us ], [ %indvars.iv.next775.i, %.loopexit575.i.loopexit9 ]
  %i.wy = trunc nsw i64 %.us-phi48 to i32
  br label %.preheader572.i

.preheader572.i:                                  ; preds = %.preheader572.loopexit.i, %.preheader579.i
  %.2401.lcssa.i = phi i32 [ %.1400.lcssa.i, %.preheader579.i ], [ %i.wy, %.preheader572.loopexit.i ] ; 2 uses
  %.16.lcssa.i = phi ptr [ %.8.lcssa.i, %.preheader579.i ], [ %.us-phi47, %.preheader572.loopexit.i ] ; 2 uses
  %i.wz = icmp slt i32 %.2401.lcssa.i, %3
  br i1 %i.wz, label %.lr.ph707.i, label %_ZN4ncnnL34transpose_pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit

.lr.ph707.i:                                      ; preds = %.preheader572.i
  %i.xa = sext i32 %4 to i64
  %i.xb = mul i64 %i.n, %i.xa                     ; 2 uses
  %i.xc = icmp ne i32 %i.e, 8
  %i.xd = insertelement <8 x float> poison, float %6, i64 0
  %i.xe = shufflevector <8 x float> %i.xd, <8 x float> poison, <8 x i32> zeroinitializer
  %i.xf = icmp slt i32 %5, 8
  %.idx440.i = shl i64 %i.n, 5
  %i.xg = icmp ne i32 %i.e, 4
  %i.xh = insertelement <4 x float> poison, float %6, i64 0
  %i.xi = shufflevector <4 x float> %i.xh, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.xj = icmp slt i32 %5, 4
  %.idx439.i = shl i64 %i.n, 4                    ; 2 uses
  %i.xk = icmp eq i32 %i.e, 1
  %i.xl = icmp sgt i32 %5, 3
  %.idx.i = shl i64 %i.n, 3
  %.idx437.i = mul i64 %i.n, 12
  %i.xm = and i32 %5, -4
  %i.xn = sext i32 %.2401.lcssa.i to i64          ; 2 uses
  %i.xo = sext i32 %2 to i64                      ; 2 uses
  %i.xp = sext i32 %i.e to i64                    ; 2 uses
  %wide.trip.count.i = sext i32 %3 to i64         ; 2 uses
  %brmerge727.i = or i1 %i.xf, %i.xc
  %brmerge730.i = or i1 %i.xj, %i.xg
  br i1 %brmerge727.i, label %.loopexit571.i.us.preheader, label %.lr.ph684.i.preheader.preheader

.loopexit571.i.us.preheader:                      ; preds = %.lr.ph707.i
  %xtraiter182 = and i32 %5, 1
  %lcmp.mod183.not = icmp eq i32 %xtraiter182, 0
  br label %.loopexit571.i.us

.lr.ph684.i.preheader.preheader:                  ; preds = %.lr.ph707.i
  %.pre87 = load ptr, ptr %0, align 8, !tbaa !18
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %.pre87, i64 %i.xb
  br label %.lr.ph684.i.preheader

.loopexit571.i.us:                                ; preds = %.loopexit571.i.us.preheader, %.loopexit.i.us
  %indvars.iv778.i.us = phi i64 [ %indvars.iv.next779.i.us, %.loopexit.i.us ], [ %i.xn, %.loopexit571.i.us.preheader ] ; 2 uses
  %.25706.i.us = phi ptr [ %.32.i.us, %.loopexit.i.us ], [ %.16.lcssa.i, %.loopexit571.i.us.preheader ] ; 4 uses
  %i.xr = load ptr, ptr %0, align 8, !tbaa !18
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %i.xr, i64 %i.xb
  %i.xt = add nsw i64 %indvars.iv778.i.us, %i.xo
  %i.xu = mul nsw i64 %i.xt, %i.xp
  %i.xv = getelementptr inbounds [4 x i8], ptr %i.xs, i64 %i.xu ; 3 uses
  br i1 %brmerge730.i, label %.loopexit570.i.us, label %.lr.ph690.i.us

.lr.ph690.i.us:                                   ; preds = %.loopexit571.i.us, %.lr.ph690.i.us
  %.0389689.i.us = phi i32 [ %i.yj, %.lr.ph690.i.us ], [ 0, %.loopexit571.i.us ]
  %.28688.i.us = phi ptr [ %i.yh, %.lr.ph690.i.us ], [ %.25706.i.us, %.loopexit571.i.us ] ; 2 uses
  %.2395687.i.us = phi ptr [ %i.yi, %.lr.ph690.i.us ], [ %i.xv, %.loopexit571.i.us ] ; 2 uses
  %i.xw = load <4 x float>, ptr %.2395687.i.us, align 16, !tbaa !116
  %i.xx = fmul fast <4 x float> %i.xw, %i.xi      ; 2 uses
  %i.xy = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.xx)
  %i.xz = fadd fast <4 x float> %i.xy, %i.xx
  %i.ya = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.xz) ; 2 uses
  %i.yb = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ya, <4 x i32> %i.ya)
  %i.yc = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.yb, <8 x i16> splat (i16 -127))
  %i.yd = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.yc, <8 x i16> splat (i16 127))
  %i.ye = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.yd, <8 x i16> poison)
  %i.yf = bitcast <16 x i8> %i.ye to <4 x i32>
  %i.yg = extractelement <4 x i32> %i.yf, i64 0
  store i32 %i.yg, ptr %.28688.i.us, align 4, !tbaa !45
  %i.yh = getelementptr inbounds nuw i8, ptr %.28688.i.us, i64 4 ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %.2395687.i.us, i64 %.idx439.i
  %i.yj = add nuw nsw i32 %.0389689.i.us, 4       ; 2 uses
  %i.yk = or disjoint i32 %i.yj, 3
  %i.yl = icmp slt i32 %i.yk, %5
  br i1 %i.yl, label %.lr.ph690.i.us, label %.loopexit.i.us, !llvm.loop !817

.loopexit570.i.us:                                ; preds = %.loopexit571.i.us
  br i1 %i.xk, label %bb.k, label %.loopexit.i.us

bb.k:                                             ; preds = %.loopexit570.i.us
  br i1 %i.xl, label %.lr.ph696.i.us, label %.preheader.i.us

.lr.ph696.i.us:                                   ; preds = %bb.k, %.lr.ph696.i.us
  %.0695.i.us = phi i32 [ %i.zj, %.lr.ph696.i.us ], [ 0, %bb.k ]
  %.30694.i.us = phi ptr [ %i.zh, %.lr.ph696.i.us ], [ %.25706.i.us, %bb.k ] ; 2 uses
  %.4397693.i.us = phi ptr [ %i.zi, %.lr.ph696.i.us ], [ %i.xv, %bb.k ] ; 5 uses
  %i.ym = load float, ptr %.4397693.i.us, align 4, !tbaa !68
  %i.yn = getelementptr inbounds nuw [4 x i8], ptr %.4397693.i.us, i64 %i.n
  %i.yo = load float, ptr %i.yn, align 4, !tbaa !68
  %i.yp = getelementptr inbounds nuw i8, ptr %.4397693.i.us, i64 %.idx.i
  %i.yq = load float, ptr %i.yp, align 4, !tbaa !68
  %i.yr = getelementptr inbounds nuw i8, ptr %.4397693.i.us, i64 %.idx437.i
  %i.ys = load float, ptr %i.yr, align 4, !tbaa !68
  %i.yt = insertelement <4 x float> poison, float %i.ym, i64 0
  %i.yu = insertelement <4 x float> %i.yt, float %i.yo, i64 1
  %i.yv = insertelement <4 x float> %i.yu, float %i.yq, i64 2
  %i.yw = insertelement <4 x float> %i.yv, float %i.ys, i64 3
  %i.yx = fmul fast <4 x float> %i.yw, %i.xi      ; 2 uses
  %i.yy = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.yx)
  %i.yz = fadd fast <4 x float> %i.yy, %i.yx
  %i.za = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.yz) ; 2 uses
  %i.zb = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.za, <4 x i32> %i.za)
  %i.zc = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.zb, <8 x i16> splat (i16 -127))
  %i.zd = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.zc, <8 x i16> splat (i16 127))
  %i.ze = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.zd, <8 x i16> poison)
  %i.zf = bitcast <16 x i8> %i.ze to <4 x i32>
  %i.zg = extractelement <4 x i32> %i.zf, i64 0
  store i32 %i.zg, ptr %.30694.i.us, align 4, !tbaa !45
  %i.zh = getelementptr inbounds nuw i8, ptr %.30694.i.us, i64 4 ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %.4397693.i.us, i64 %.idx439.i ; 2 uses
  %i.zj = add nuw nsw i32 %.0695.i.us, 4          ; 2 uses
  %i.zk = or disjoint i32 %i.zj, 3
  %i.zl = icmp slt i32 %i.zk, %5
  br i1 %i.zl, label %.lr.ph696.i.us, label %.preheader.i.us, !llvm.loop !818

.preheader.i.us:                                  ; preds = %.lr.ph696.i.us, %bb.k
  %.4397.lcssa.i.us = phi ptr [ %i.xv, %bb.k ], [ %i.zi, %.lr.ph696.i.us ] ; 3 uses
  %.30.lcssa.i.us = phi ptr [ %.25706.i.us, %bb.k ], [ %i.zh, %.lr.ph696.i.us ] ; 4 uses
  %.0.lcssa.i.us = phi i32 [ 0, %bb.k ], [ %i.xm, %.lr.ph696.i.us ] ; 4 uses
  %i.zm = icmp slt i32 %.0.lcssa.i.us, %5
  br i1 %i.zm, label %.lr.ph703.i.us.preheader, label %.loopexit.i.us

.lr.ph703.i.us.preheader:                         ; preds = %.preheader.i.us
  %.neg184 = or disjoint i32 %.0.lcssa.i.us, 1
  br i1 %lcmp.mod183.not, label %.lr.ph703.i.us.prol.loopexit, label %.lr.ph703.i.us.prol

.lr.ph703.i.us.prol:                              ; preds = %.lr.ph703.i.us.preheader
  %i.zn = load float, ptr %.4397.lcssa.i.us, align 4, !tbaa !68
  %i.zo = fmul fast float %i.zn, %6
  %i.zp = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.zo)
  %i.zq = fptosi float %i.zp to i32
  %spec.select.i564.i.us.prol = tail call i32 @llvm.smax.i32(i32 %i.zq, i32 -127)
  %.0.i565.i.us.prol = tail call i32 @llvm.smin.i32(i32 %spec.select.i564.i.us.prol, i32 127)
  %.0.i.i.us.prol = trunc nsw i32 %.0.i565.i.us.prol to i8
  store i8 %.0.i.i.us.prol, ptr %.30.lcssa.i.us, align 1, !tbaa !116
  %i.zr = getelementptr inbounds nuw i8, ptr %.30.lcssa.i.us, i64 1 ; 2 uses
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr %.4397.lcssa.i.us, i64 %i.n
  %i.zt = or disjoint i32 %.0.lcssa.i.us, 1
  br label %.lr.ph703.i.us.prol.loopexit

.lr.ph703.i.us.prol.loopexit:                     ; preds = %.lr.ph703.i.us.prol, %.lr.ph703.i.us.preheader
  %.lcssa155.unr = phi ptr [ poison, %.lr.ph703.i.us.preheader ], [ %i.zr, %.lr.ph703.i.us.prol ]
  %.1702.i.us.unr = phi i32 [ %.0.lcssa.i.us, %.lr.ph703.i.us.preheader ], [ %i.zt, %.lr.ph703.i.us.prol ]
  %.31701.i.us.unr = phi ptr [ %.30.lcssa.i.us, %.lr.ph703.i.us.preheader ], [ %i.zr, %.lr.ph703.i.us.prol ]
  %.5398700.i.us.unr = phi ptr [ %.4397.lcssa.i.us, %.lr.ph703.i.us.preheader ], [ %i.zs, %.lr.ph703.i.us.prol ]
  %i.zu = icmp eq i32 %5, %.neg184
  br i1 %i.zu, label %.loopexit.i.us, label %.lr.ph703.i.us

.lr.ph703.i.us:                                   ; preds = %.lr.ph703.i.us.prol.loopexit, %.lr.ph703.i.us
  %.1702.i.us = phi i32 [ %i.aah, %.lr.ph703.i.us ], [ %.1702.i.us.unr, %.lr.ph703.i.us.prol.loopexit ]
  %.31701.i.us = phi ptr [ %i.aaf, %.lr.ph703.i.us ], [ %.31701.i.us.unr, %.lr.ph703.i.us.prol.loopexit ] ; 3 uses
  %.5398700.i.us = phi ptr [ %i.aag, %.lr.ph703.i.us ], [ %.5398700.i.us.unr, %.lr.ph703.i.us.prol.loopexit ] ; 2 uses
  %i.zv = load float, ptr %.5398700.i.us, align 4, !tbaa !68
  %i.zw = fmul fast float %i.zv, %6
  %i.zx = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.zw)
  %i.zy = fptosi float %i.zx to i32
  %spec.select.i564.i.us = tail call i32 @llvm.smax.i32(i32 %i.zy, i32 -127)
  %.0.i565.i.us = tail call i32 @llvm.smin.i32(i32 %spec.select.i564.i.us, i32 127)
  %.0.i.i.us = trunc nsw i32 %.0.i565.i.us to i8
  store i8 %.0.i.i.us, ptr %.31701.i.us, align 1, !tbaa !116
  %i.zz = getelementptr inbounds nuw i8, ptr %.31701.i.us, i64 1
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr %.5398700.i.us, i64 %i.n ; 2 uses
  %i.aab = load float, ptr %i.aaa, align 4, !tbaa !68
  %i.aac = fmul fast float %i.aab, %6
  %i.aad = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.aac)
  %i.aae = fptosi float %i.aad to i32
  %spec.select.i564.i.us.1 = tail call i32 @llvm.smax.i32(i32 %i.aae, i32 -127)
  %.0.i565.i.us.1 = tail call i32 @llvm.smin.i32(i32 %spec.select.i564.i.us.1, i32 127)
  %.0.i.i.us.1 = trunc nsw i32 %.0.i565.i.us.1 to i8
  store i8 %.0.i.i.us.1, ptr %i.zz, align 1, !tbaa !116
  %i.aaf = getelementptr inbounds nuw i8, ptr %.31701.i.us, i64 2 ; 2 uses
  %i.aag = getelementptr inbounds nuw [4 x i8], ptr %i.aaa, i64 %i.n
  %i.aah = add nuw nsw i32 %.1702.i.us, 2         ; 2 uses
  %exitcond777.not.i.us.1 = icmp eq i32 %i.aah, %5
  br i1 %exitcond777.not.i.us.1, label %.loopexit.i.us, label %.lr.ph703.i.us, !llvm.loop !819

.loopexit.i.us:                                   ; preds = %.lr.ph690.i.us, %.lr.ph703.i.us.prol.loopexit, %.lr.ph703.i.us, %.preheader.i.us, %.loopexit570.i.us
  %.32.i.us = phi ptr [ %.25706.i.us, %.loopexit570.i.us ], [ %.30.lcssa.i.us, %.preheader.i.us ], [ %i.aaf, %.lr.ph703.i.us ], [ %.lcssa155.unr, %.lr.ph703.i.us.prol.loopexit ], [ %i.yh, %.lr.ph690.i.us ]
  %indvars.iv.next779.i.us = add nsw i64 %indvars.iv778.i.us, 1 ; 2 uses
  %exitcond781.not.i.us = icmp eq i64 %indvars.iv.next779.i.us, %wide.trip.count.i
  br i1 %exitcond781.not.i.us, label %_ZN4ncnnL34transpose_pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit, label %.loopexit571.i.us, !llvm.loop !820

.lr.ph648.i.preheader:                            ; preds = %.lr.ph678.i, %.loopexit575.i.loopexit9
  %indvars.iv774.i = phi i64 [ %indvars.iv.next775.i, %.loopexit575.i.loopexit9 ], [ %i.pr, %.lr.ph678.i ] ; 2 uses
  %.16677.i = phi ptr [ %i.abl, %.loopexit575.i.loopexit9 ], [ %.8.lcssa.i, %.lr.ph678.i ]
  %i.aai = load ptr, ptr %0, align 8, !tbaa !18
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr %i.aai, i64 %i.ph
  %i.aak = add nsw i64 %indvars.iv774.i, %i.pt
  %i.aal = mul nsw i64 %i.aak, %i.pu
  %i.aam = getelementptr inbounds [4 x i8], ptr %i.aaj, i64 %i.aal
  br label %.lr.ph648.i

.lr.ph648.i:                                      ; preds = %.lr.ph648.i.preheader, %.lr.ph648.i
  %.17647.i = phi ptr [ %i.abl, %.lr.ph648.i ], [ %.16677.i, %.lr.ph648.i.preheader ] ; 2 uses
  %.0425646.i = phi i32 [ %i.abn, %.lr.ph648.i ], [ 0, %.lr.ph648.i.preheader ]
  %.0426645.i = phi ptr [ %i.abm, %.lr.ph648.i ], [ %i.aam, %.lr.ph648.i.preheader ] ; 3 uses
  %i.aan = load <8 x float>, ptr %.0426645.i, align 32, !tbaa !116
  %i.aao = getelementptr inbounds nuw i8, ptr %.0426645.i, i64 32
  %i.aap = load <8 x float>, ptr %i.aao, align 32, !tbaa !116
  %i.aaq = fmul fast <8 x float> %i.aan, %i.pk    ; 2 uses
  %i.aar = fmul fast <8 x float> %i.aap, %i.pk    ; 2 uses
  %i.aas = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.aaq)
  %i.aat = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.aar)
  %i.aau = fadd fast <8 x float> %i.aas, %i.aaq
  %i.aav = fadd fast <8 x float> %i.aat, %i.aar
  %i.aaw = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.aau) ; 2 uses
  %i.aax = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.aav) ; 2 uses
  %i.aay = shufflevector <8 x i32> %i.aaw, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aaz = shufflevector <8 x i32> %i.aaw, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.aba = shufflevector <8 x i32> %i.aax, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.abb = shufflevector <8 x i32> %i.aax, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.abc = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.aay, <4 x i32> %i.aaz)
  %i.abd = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.aba, <4 x i32> %i.abb)
  %i.abe = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.abc, <8 x i16> splat (i16 -127))
  %i.abf = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.abe, <8 x i16> splat (i16 127))
  %i.abg = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.abd, <8 x i16> splat (i16 -127))
  %i.abh = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.abg, <8 x i16> splat (i16 127))
  %i.abi = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.abf, <8 x i16> %i.abh)
  %i.abj = bitcast <16 x i8> %i.abi to <8 x i16>
  %i.abk = shufflevector <8 x i16> %i.abj, <8 x i16> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %i.abk, ptr %.17647.i, align 16, !tbaa !116
  %i.abl = getelementptr inbounds nuw i8, ptr %.17647.i, i64 16 ; 3 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %.0426645.i, i64 %.idx446.i
  %i.abn = add nuw nsw i32 %.0425646.i, 8         ; 2 uses
  %i.abo = or disjoint i32 %i.abn, 7
  %i.abp = icmp slt i32 %i.abo, %5
  br i1 %i.abp, label %.lr.ph648.i, label %.loopexit575.i.loopexit9, !llvm.loop !821

.loopexit575.i.loopexit9:                         ; preds = %.lr.ph648.i
  %indvars.iv.next775.i = add nuw nsw i64 %indvars.iv774.i, 2 ; 3 uses
  %i.abq = icmp slt i64 %indvars.iv.next775.i, %invariant.op842.i
  br i1 %i.abq, label %.lr.ph648.i.preheader, label %.preheader572.loopexit.i, !llvm.loop !814

.lr.ph684.i.preheader:                            ; preds = %.lr.ph684.i.preheader.preheader, %.loopexit.i.loopexit7
  %indvars.iv778.i = phi i64 [ %indvars.iv.next779.i, %.loopexit.i.loopexit7 ], [ %i.xn, %.lr.ph684.i.preheader.preheader ] ; 2 uses
  %.25706.i = phi ptr [ %i.ach, %.loopexit.i.loopexit7 ], [ %.16.lcssa.i, %.lr.ph684.i.preheader.preheader ]
  %i.abr = add nsw i64 %indvars.iv778.i, %i.xo
  %i.abs = mul nsw i64 %i.abr, %i.xp
  %i.abt = getelementptr inbounds [4 x i8], ptr %i.xq, i64 %i.abs
  br label %.lr.ph684.i

.lr.ph684.i:                                      ; preds = %.lr.ph684.i.preheader, %.lr.ph684.i
  %.26683.i = phi ptr [ %i.ach, %.lr.ph684.i ], [ %.25706.i, %.lr.ph684.i.preheader ] ; 2 uses
  %.0392682.i = phi i32 [ %i.acj, %.lr.ph684.i ], [ 0, %.lr.ph684.i.preheader ]
  %.0393681.i = phi ptr [ %i.aci, %.lr.ph684.i ], [ %i.abt, %.lr.ph684.i.preheader ] ; 2 uses
  %i.abu = load <8 x float>, ptr %.0393681.i, align 32, !tbaa !116
  %i.abv = fmul fast <8 x float> %i.abu, %i.xe    ; 2 uses
  %i.abw = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.abv)
  %i.abx = fadd fast <8 x float> %i.abw, %i.abv
  %i.aby = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.abx) ; 2 uses
  %i.abz = shufflevector <8 x i32> %i.aby, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aca = shufflevector <8 x i32> %i.aby, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.acb = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.abz, <4 x i32> %i.aca)
  %i.acc = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.acb, <8 x i16> splat (i16 -127))
  %i.acd = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.acc, <8 x i16> splat (i16 127))
  %i.ace = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.acd, <8 x i16> poison)
  %i.acf = bitcast <16 x i8> %i.ace to <2 x i64>
  %i.acg = extractelement <2 x i64> %i.acf, i64 0
  store i64 %i.acg, ptr %.26683.i, align 8, !tbaa !767
  %i.ach = getelementptr inbounds nuw i8, ptr %.26683.i, i64 8 ; 2 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %.0393681.i, i64 %.idx440.i
  %i.acj = add nuw nsw i32 %.0392682.i, 8         ; 2 uses
  %i.ack = or disjoint i32 %i.acj, 7
  %i.acl = icmp slt i32 %i.ack, %5
  br i1 %i.acl, label %.lr.ph684.i, label %.loopexit.i.loopexit7, !llvm.loop !822

.loopexit.i.loopexit7:                            ; preds = %.lr.ph684.i
  %indvars.iv.next779.i = add nsw i64 %indvars.iv778.i, 1 ; 2 uses
  %exitcond781.not.i = icmp eq i64 %indvars.iv.next779.i, %wide.trip.count.i
  br i1 %exitcond781.not.i, label %_ZN4ncnnL34transpose_pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit, label %.lr.ph684.i.preheader, !llvm.loop !820

_ZN4ncnnL34transpose_pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit: ; preds = %.loopexit.i.loopexit7, %.loopexit.i.us, %bb.b, %bb.d, %bb.f, %.preheader572.i
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16gemm_AT_x86_int8ERKNS_3MatES2_S2_S2_RS0_iiiiiffiiiiRKNS_6OptionE.omp_outlined.10(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr noundef nonnull align 8 dereferenceable(72) %11, ptr noundef nonnull align 8 dereferenceable(72) %12, ptr noundef nonnull align 8 dereferenceable(72) %13) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 16 uses
  %15 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %16 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.y

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !45
  %i.h = load i32, ptr %0, align 4, !tbaa !45     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !45
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !45
  %i.k = load i32, ptr %i.a, align 4, !tbaa !45   ; 2 uses
  %.not138 = icmp sgt i32 %i.k, %i.j
  br i1 %.not138, label %._crit_edge141, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 52
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 44
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 52
  %i.ag = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %15, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.bf = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.bg = getelementptr inbounds nuw i8, ptr %16, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.051139 = phi i32 [ %i.k, %.lr.ph ], [ %i.fl, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.bh = load i32, ptr %3, align 4, !tbaa !331   ; 2 uses
  %i.bi = load i32, ptr %i.l, align 4, !tbaa !333 ; 2 uses
  %i.bj = load i32, ptr %i.m, align 4, !tbaa !334 ; 3 uses
  %i.bk = load i32, ptr %i.n, align 4, !tbaa !335
  %i.bl = load i32, ptr %i.o, align 4, !tbaa !337
  %i.bm = load float, ptr %i.p, align 4, !tbaa !660
  %i.bn = load float, ptr %i.q, align 4, !tbaa !661
  %i.bo = load i32, ptr %4, align 4, !tbaa !45    ; 2 uses
  %i.bp = sdiv i32 %.051139, %i.bo                ; 2 uses
  %i.bq = srem i32 %.051139, %i.bo                ; 2 uses
  %i.br = mul nsw i32 %i.bp, %i.bh                ; 3 uses
  %i.bs = mul nsw i32 %i.bq, %i.bi                ; 3 uses
  %i.bt = load i32, ptr %5, align 4, !tbaa !45
  %i.bu = sub nsw i32 %i.bt, %i.br
  %.sroa.speculated121 = call i32 @llvm.smin.i32(i32 %i.bh, i32 %i.bu) ; 2 uses
  %i.bv = load i32, ptr %6, align 4, !tbaa !45
  %i.bw = sub nsw i32 %i.bv, %i.bs
  %.sroa.speculated117 = call i32 @llvm.smin.i32(i32 %i.bi, i32 %i.bw) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  %i.bx = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc82 unwind label %.loopexit.split-lp

.noexc82:                                         ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !823)
  %i.by = load i32, ptr %i.r, align 4, !tbaa !88, !noalias !823 ; 2 uses
  %i.bz = load i32, ptr %i.s, align 8, !tbaa !90, !noalias !823 ; 2 uses
  %i.ca = load i32, ptr %i.t, align 4, !tbaa !364, !noalias !823
  %i.cb = load ptr, ptr %7, align 8, !tbaa !18, !noalias !823
  %i.cc = load i64, ptr %i.u, align 8, !tbaa !20, !noalias !823
  %i.cd = sext i32 %i.bx to i64
  %i.ce = mul i64 %i.cc, %i.cd
  %i.cf = load i64, ptr %i.v, align 8, !tbaa !59, !noalias !823 ; 4 uses
  %i.cg = mul i64 %i.ce, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cg
  %i.ci = load i32, ptr %i.w, align 8, !tbaa !60, !noalias !823
  %i.cj = load ptr, ptr %i.x, align 8, !tbaa !17, !noalias !823
  store ptr %i.ch, ptr %14, align 8, !tbaa !18
  store ptr null, ptr %i.y, align 8, !tbaa !11
  store i64 %i.cf, ptr %i.z, align 8, !tbaa !59
  store i32 %i.ci, ptr %i.aa, align 8, !tbaa !60
  store ptr %i.cj, ptr %i.ab, align 8, !tbaa !17
  store i32 %i.by, ptr %i.ad, align 4, !tbaa !88
  store i32 %i.bz, ptr %i.ae, align 8, !tbaa !90
  store i32 1, ptr %i.af, align 4, !tbaa !364
  store i32 %i.ca, ptr %i.ag, align 8, !tbaa !51
  %i.ck = sext i32 %i.by to i64
  %i.cl = sext i32 %i.bz to i64
  %i.cm = mul nsw i64 %i.cl, %i.ck                ; 2 uses
  %i.cn = mul i64 %i.cf, %i.cm
  %i.co = add i64 %i.cn, 15
  %i.cp = and i64 %i.co, -16
  %i.cq = udiv i64 %i.cp, %i.cf
  store i64 %i.cq, ptr %i.ah, align 8, !tbaa !20
  %i.cr = load i32, ptr %i.ai, align 8, !tbaa !87, !noalias !823 ; 2 uses
  %i.cs = add nsw i32 %i.cr, -1
  store i32 %i.cs, ptr %i.ac, align 8, !tbaa !87, !alias.scope !823
  %i.ct = icmp eq i32 %i.cr, 4
  br i1 %i.ct, label %bb.d, label %_ZN4ncnn3Mat7channelEi.exit83

bb.d:                                             ; preds = %.noexc82
  store i64 %i.cm, ptr %i.ah, align 8, !tbaa !20, !alias.scope !823
  br label %_ZN4ncnn3Mat7channelEi.exit83

_ZN4ncnn3Mat7channelEi.exit83:                    ; preds = %.noexc82, %bb.d
  %i.cu = load i32, ptr %8, align 4, !tbaa !45    ; 2 uses
  %i.cv = icmp sgt i32 %i.cu, 0
  br i1 %i.cv, label %.noexc81.lr.ph, label %._crit_edge

.noexc81.lr.ph:                                   ; preds = %_ZN4ncnn3Mat7channelEi.exit83
  %i.cw = sext i32 %i.bp to i64
  %i.cx = sext i32 %i.bq to i64
  br label %.noexc81

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit52, %_ZN4ncnn3Mat7channelEi.exit83
  invoke fastcc void @_ZN4ncnnL29unpack_output_tile_dequantizeERKNS_3MatES2_RS0_iiiiiS2_ffi(ptr noundef nonnull align 8 dereferenceable(72) %14, ptr noundef nonnull align 8 dereferenceable(72) %11, ptr noundef nonnull align 8 dereferenceable(72) %12, i32 noundef %i.bk, i32 noundef %i.br, i32 noundef %.sroa.speculated121, i32 noundef %i.bs, i32 noundef %.sroa.speculated117, ptr noundef nonnull align 8 dereferenceable(72) %13, float noundef nofpclass(nan inf) %i.bm, float noundef nofpclass(nan inf) %i.bn, i32 noundef %i.bl)
          to label %bb.r unwind label %.loopexit.split-lp

.noexc81:                                         ; preds = %.noexc81.lr.ph, %_ZN4ncnn3MatD2Ev.exit52
  %i.cy = phi i32 [ %i.cu, %.noexc81.lr.ph ], [ %i.ez, %_ZN4ncnn3MatD2Ev.exit52 ]
  %.0137 = phi i32 [ 0, %.noexc81.lr.ph ], [ %i.ey, %_ZN4ncnn3MatD2Ev.exit52 ] ; 4 uses
  %i.cz = sub nsw i32 %i.cy, %.0137
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.bj, i32 %i.cz)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #9
  %i.da = load i32, ptr %i.aj, align 4, !tbaa !88, !noalias !826 ; 2 uses
  %i.db = load ptr, ptr %9, align 8, !tbaa !18, !noalias !826
  %i.dc = load i64, ptr %i.ak, align 8, !tbaa !20, !noalias !826
  %i.dd = mul i64 %i.dc, %i.cw
  %i.de = load i64, ptr %i.al, align 8, !tbaa !59, !noalias !826 ; 3 uses
  %i.df = mul i64 %i.dd, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.df
  %i.dh = load i32, ptr %i.am, align 8, !tbaa !60, !noalias !826
  %i.di = load ptr, ptr %i.an, align 8, !tbaa !17, !noalias !826
  %i.dj = sext i32 %i.da to i64                   ; 2 uses
  %i.dk = sdiv i32 %.0137, %i.bj
  %i.dl = sext i32 %i.dk to i64                   ; 2 uses
  %i.dm = mul i64 %i.de, %i.dj
  %i.dn = mul i64 %i.dm, %i.dl
  %i.do = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dn
  store ptr %i.do, ptr %15, align 8, !tbaa !18, !alias.scope !829
  store ptr null, ptr %i.ao, align 8, !tbaa !11, !alias.scope !829
  store i64 %i.de, ptr %i.ap, align 8, !tbaa !59, !alias.scope !829
  store i32 %i.dh, ptr %i.aq, align 8, !tbaa !60, !alias.scope !829
  store ptr %i.di, ptr %i.ar, align 8, !tbaa !17, !alias.scope !829
  %i.dp = insertelement <4 x i32> <i32 2, i32 poison, i32 1, i32 1>, i32 %i.da, i64 1
  store <4 x i32> %i.dp, ptr %i.as, align 8, !tbaa !45, !alias.scope !829
  store i32 1, ptr %i.at, align 8, !tbaa !51, !alias.scope !829
  store i64 %i.dj, ptr %i.au, align 8, !tbaa !20, !alias.scope !829
end_hunk_12
begin_hunk_13_@_ZN4ncnnL30transpose_pack_A_tile_quantizeERKNS_3MatERS0_iiiiS2_:bb.a
  %.0.i529.i = trunc nsw i32 %.0.i529652.i to i8
  store i8 %.0.i529.i, ptr %.22767.i, align 1, !tbaa !116
  %i.aal = getelementptr inbounds nuw i8, ptr %.6504765.i, i64 4
  %i.aam = load float, ptr %i.aal, align 4, !tbaa !68
  %i.aan = fmul fast float %i.aam, %i.xn
  %i.aao = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.aan)
  %i.aap = fptosi float %i.aao to i32
  %spec.select.i526653.i = tail call i32 @llvm.smax.i32(i32 %i.aap, i32 -127)
  %.0.i527654.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i526653.i, i32 127)
  %.0.i527.i = trunc nsw i32 %.0.i527654.i to i8
  %i.aaq = getelementptr inbounds nuw i8, ptr %.22767.i, i64 1
  store i8 %.0.i527.i, ptr %i.aaq, align 1, !tbaa !116
  %i.aar = getelementptr inbounds nuw i8, ptr %.22767.i, i64 2 ; 2 uses
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %.6504765.i, i64 %i.n
  %i.aat = add nuw nsw i32 %.2494766.i, 1         ; 2 uses
  %exitcond849.not.i = icmp eq i32 %i.aat, %5
  br i1 %exitcond849.not.i, label %.loopexit660.i, label %.lr.ph768.i, !llvm.loop !898

.loopexit660.i:                                   ; preds = %.lr.ph768.i, %.lr.ph748.i, %.lr.ph742.i, %.preheader659.i, %bb.q, %bb.p, %bb.o
  %.23.i = phi ptr [ %.15771.i, %bb.o ], [ %.21.lcssa.i, %.preheader659.i ], [ %i.vx, %.lr.ph742.i ], [ %i.xe, %.lr.ph748.i ], [ %.15771.i, %bb.q ], [ %.15771.i, %bb.p ], [ %i.aar, %.lr.ph768.i ] ; 2 uses
  %indvars.iv.next851.i = add nuw nsw i64 %indvars.iv850.i, 2 ; 3 uses
  %i.aau = icmp slt i64 %indvars.iv.next851.i, %invariant.op916.i
  br i1 %i.aau, label %bb.o, label %.preheader657.loopexit.i, !llvm.loop !899

bb.s:                                             ; preds = %.loopexit.i, %.lr.ph801.i
  %indvars.iv854.i = phi i64 [ %i.ui, %.lr.ph801.i ], [ %indvars.iv.next855.i, %.loopexit.i ] ; 2 uses
  %.24800.i = phi ptr [ %.15.lcssa.i, %.lr.ph801.i ], [ %.31.i, %.loopexit.i ] ; 7 uses
  %i.aav = load ptr, ptr %0, align 8, !tbaa !18
  %i.aaw = getelementptr inbounds nuw [4 x i8], ptr %i.aav, i64 %i.ue
  %i.aax = add nsw i64 %indvars.iv854.i, %i.uj    ; 2 uses
  %i.aay = mul nsw i64 %i.aax, %i.uk
  %i.aaz = getelementptr inbounds [4 x i8], ptr %i.aaw, i64 %i.aay ; 4 uses
  %i.aba = load ptr, ptr %6, align 8, !tbaa !18
  %i.abb = getelementptr inbounds nuw [4 x i8], ptr %i.aba, i64 %i.aax
  %i.abc = load float, ptr %i.abb, align 4, !tbaa !68 ; 6 uses
  switch i32 %i.e, label %.loopexit.i [
    i32 8, label %bb.t
    i32 4, label %bb.u
    i32 1, label %bb.v
  ]

bb.t:                                             ; preds = %bb.s
  %i.abd = insertelement <8 x float> poison, float %i.abc, i64 0
  %i.abe = shufflevector <8 x float> %i.abd, <8 x float> poison, <8 x i32> zeroinitializer
  br i1 %i.uf, label %.lr.ph778.i, label %.loopexit.i

.lr.ph778.i:                                      ; preds = %bb.t, %.lr.ph778.i
  %.25777.i = phi ptr [ %i.abs, %.lr.ph778.i ], [ %.24800.i, %bb.t ] ; 2 uses
  %.0457776.i = phi i32 [ %i.abu, %.lr.ph778.i ], [ 0, %bb.t ]
  %.0458775.i = phi ptr [ %i.abt, %.lr.ph778.i ], [ %i.aaz, %bb.t ] ; 2 uses
  %i.abf = load <8 x float>, ptr %.0458775.i, align 32, !tbaa !116
  %i.abg = fmul fast <8 x float> %i.abf, %i.abe   ; 2 uses
  %i.abh = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.abg)
  %i.abi = fadd fast <8 x float> %i.abh, %i.abg
  %i.abj = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.abi) ; 2 uses
  %i.abk = shufflevector <8 x i32> %i.abj, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.abl = shufflevector <8 x i32> %i.abj, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.abm = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.abk, <4 x i32> %i.abl)
  %i.abn = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.abm, <8 x i16> splat (i16 -127))
  %i.abo = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.abn, <8 x i16> splat (i16 127))
  %i.abp = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.abo, <8 x i16> poison)
  %i.abq = bitcast <16 x i8> %i.abp to <2 x i64>
  %i.abr = extractelement <2 x i64> %i.abq, i64 0
  store i64 %i.abr, ptr %.25777.i, align 8, !tbaa !767
  %i.abs = getelementptr inbounds nuw i8, ptr %.25777.i, i64 8 ; 2 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %.0458775.i, i64 %.idx513.i
  %i.abu = add nuw nsw i32 %.0457776.i, 8         ; 2 uses
  %i.abv = or disjoint i32 %i.abu, 7
  %i.abw = icmp slt i32 %i.abv, %5
  br i1 %i.abw, label %.lr.ph778.i, label %.loopexit.i, !llvm.loop !900

bb.u:                                             ; preds = %bb.s
  %i.abx = insertelement <4 x float> poison, float %i.abc, i64 0
  %i.aby = shufflevector <4 x float> %i.abx, <4 x float> poison, <4 x i32> zeroinitializer
  br i1 %i.ug, label %.lr.ph784.i, label %.loopexit.i

.lr.ph784.i:                                      ; preds = %bb.u, %.lr.ph784.i
  %.0454783.i = phi i32 [ %i.acm, %.lr.ph784.i ], [ 0, %bb.u ]
  %.27782.i = phi ptr [ %i.ack, %.lr.ph784.i ], [ %.24800.i, %bb.u ] ; 2 uses
  %.2460781.i = phi ptr [ %i.acl, %.lr.ph784.i ], [ %i.aaz, %bb.u ] ; 2 uses
  %i.abz = load <4 x float>, ptr %.2460781.i, align 16, !tbaa !116
  %i.aca = fmul fast <4 x float> %i.abz, %i.aby   ; 2 uses
  %i.acb = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.aca)
  %i.acc = fadd fast <4 x float> %i.acb, %i.aca
  %i.acd = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.acc) ; 2 uses
  %i.ace = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.acd, <4 x i32> %i.acd)
  %i.acf = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ace, <8 x i16> splat (i16 -127))
  %i.acg = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.acf, <8 x i16> splat (i16 127))
  %i.ach = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.acg, <8 x i16> poison)
  %i.aci = bitcast <16 x i8> %i.ach to <4 x i32>
  %i.acj = extractelement <4 x i32> %i.aci, i64 0
  store i32 %i.acj, ptr %.27782.i, align 4, !tbaa !45
  %i.ack = getelementptr inbounds nuw i8, ptr %.27782.i, i64 4 ; 2 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %.2460781.i, i64 %.idx512.i
  %i.acm = add nuw nsw i32 %.0454783.i, 4         ; 2 uses
  %i.acn = or disjoint i32 %i.acm, 3
  %i.aco = icmp slt i32 %i.acn, %5
  br i1 %i.aco, label %.lr.ph784.i, label %.loopexit.i, !llvm.loop !901

bb.v:                                             ; preds = %bb.s
  %i.acp = insertelement <4 x float> poison, float %i.abc, i64 0
  %i.acq = shufflevector <4 x float> %i.acp, <4 x float> poison, <4 x i32> zeroinitializer
  br i1 %i.ug, label %.lr.ph790.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph790.i, %bb.v
  %.4462.lcssa.i = phi ptr [ %i.aaz, %bb.v ], [ %i.adw, %.lr.ph790.i ] ; 3 uses
  %.29.lcssa.i = phi ptr [ %.24800.i, %bb.v ], [ %i.adv, %.lr.ph790.i ] ; 4 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.v ], [ %i.uh, %.lr.ph790.i ] ; 4 uses
  %i.acr = icmp slt i32 %.0.lcssa.i, %5
  br i1 %i.acr, label %.lr.ph797.i.preheader, label %.loopexit.i

.lr.ph797.i.preheader:                            ; preds = %.preheader.i
  %.neg183 = or disjoint i32 %.0.lcssa.i, 1
  br i1 %lcmp.mod182.not, label %.lr.ph797.i.prol.loopexit, label %.lr.ph797.i.prol

.lr.ph797.i.prol:                                 ; preds = %.lr.ph797.i.preheader
  %i.acs = load float, ptr %.4462.lcssa.i, align 4, !tbaa !68
  %i.act = fmul fast float %i.acs, %i.abc
  %i.acu = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.act)
  %i.acv = fptosi float %i.acu to i32
  %spec.select.i649.i.prol = tail call i32 @llvm.smax.i32(i32 %i.acv, i32 -127)
  %.0.i650.i.prol = tail call i32 @llvm.smin.i32(i32 %spec.select.i649.i.prol, i32 127)
  %.0.i.i.prol = trunc nsw i32 %.0.i650.i.prol to i8
  store i8 %.0.i.i.prol, ptr %.29.lcssa.i, align 1, !tbaa !116
  %i.acw = getelementptr inbounds nuw i8, ptr %.29.lcssa.i, i64 1 ; 2 uses
  %i.acx = getelementptr inbounds nuw [4 x i8], ptr %.4462.lcssa.i, i64 %i.n
  %i.acy = or disjoint i32 %.0.lcssa.i, 1
  br label %.lr.ph797.i.prol.loopexit

.lr.ph797.i.prol.loopexit:                        ; preds = %.lr.ph797.i.prol, %.lr.ph797.i.preheader
  %.lcssa153.unr = phi ptr [ poison, %.lr.ph797.i.preheader ], [ %i.acw, %.lr.ph797.i.prol ]
  %.1796.i.unr = phi i32 [ %.0.lcssa.i, %.lr.ph797.i.preheader ], [ %i.acy, %.lr.ph797.i.prol ]
  %.30795.i.unr = phi ptr [ %.29.lcssa.i, %.lr.ph797.i.preheader ], [ %i.acw, %.lr.ph797.i.prol ]
  %.5463794.i.unr = phi ptr [ %.4462.lcssa.i, %.lr.ph797.i.preheader ], [ %i.acx, %.lr.ph797.i.prol ]
  %i.acz = icmp eq i32 %5, %.neg183
  br i1 %i.acz, label %.loopexit.i, label %.lr.ph797.i

.lr.ph790.i:                                      ; preds = %bb.v, %.lr.ph790.i
  %.0789.i = phi i32 [ %i.adx, %.lr.ph790.i ], [ 0, %bb.v ]
  %.29788.i = phi ptr [ %i.adv, %.lr.ph790.i ], [ %.24800.i, %bb.v ] ; 2 uses
  %.4462787.i = phi ptr [ %i.adw, %.lr.ph790.i ], [ %i.aaz, %bb.v ] ; 5 uses
  %i.ada = load float, ptr %.4462787.i, align 4, !tbaa !68
  %i.adb = getelementptr inbounds nuw [4 x i8], ptr %.4462787.i, i64 %i.n
  %i.adc = load float, ptr %i.adb, align 4, !tbaa !68
  %i.add = getelementptr inbounds nuw i8, ptr %.4462787.i, i64 %.idx.i
  %i.ade = load float, ptr %i.add, align 4, !tbaa !68
  %i.adf = getelementptr inbounds nuw i8, ptr %.4462787.i, i64 %.idx510.i
  %i.adg = load float, ptr %i.adf, align 4, !tbaa !68
  %i.adh = insertelement <4 x float> poison, float %i.ada, i64 0
  %i.adi = insertelement <4 x float> %i.adh, float %i.adc, i64 1
  %i.adj = insertelement <4 x float> %i.adi, float %i.ade, i64 2
  %i.adk = insertelement <4 x float> %i.adj, float %i.adg, i64 3
  %i.adl = fmul fast <4 x float> %i.adk, %i.acq   ; 2 uses
  %i.adm = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.adl)
  %i.adn = fadd fast <4 x float> %i.adm, %i.adl
  %i.ado = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.adn) ; 2 uses
  %i.adp = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ado, <4 x i32> %i.ado)
  %i.adq = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.adp, <8 x i16> splat (i16 -127))
  %i.adr = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.adq, <8 x i16> splat (i16 127))
  %i.ads = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.adr, <8 x i16> poison)
  %i.adt = bitcast <16 x i8> %i.ads to <4 x i32>
  %i.adu = extractelement <4 x i32> %i.adt, i64 0
  store i32 %i.adu, ptr %.29788.i, align 4, !tbaa !45
  %i.adv = getelementptr inbounds nuw i8, ptr %.29788.i, i64 4 ; 2 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %.4462787.i, i64 %.idx512.i ; 2 uses
  %i.adx = add nuw nsw i32 %.0789.i, 4            ; 2 uses
  %i.ady = or disjoint i32 %i.adx, 3
  %i.adz = icmp slt i32 %i.ady, %5
  br i1 %i.adz, label %.lr.ph790.i, label %.preheader.i, !llvm.loop !902

.lr.ph797.i:                                      ; preds = %.lr.ph797.i.prol.loopexit, %.lr.ph797.i
  %.1796.i = phi i32 [ %i.aem, %.lr.ph797.i ], [ %.1796.i.unr, %.lr.ph797.i.prol.loopexit ]
  %.30795.i = phi ptr [ %i.aek, %.lr.ph797.i ], [ %.30795.i.unr, %.lr.ph797.i.prol.loopexit ] ; 3 uses
  %.5463794.i = phi ptr [ %i.ael, %.lr.ph797.i ], [ %.5463794.i.unr, %.lr.ph797.i.prol.loopexit ] ; 2 uses
  %i.aea = load float, ptr %.5463794.i, align 4, !tbaa !68
  %i.aeb = fmul fast float %i.aea, %i.abc
  %i.aec = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.aeb)
  %i.aed = fptosi float %i.aec to i32
  %spec.select.i649.i = tail call i32 @llvm.smax.i32(i32 %i.aed, i32 -127)
  %.0.i650.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i649.i, i32 127)
  %.0.i.i = trunc nsw i32 %.0.i650.i to i8
  store i8 %.0.i.i, ptr %.30795.i, align 1, !tbaa !116
  %i.aee = getelementptr inbounds nuw i8, ptr %.30795.i, i64 1
  %i.aef = getelementptr inbounds nuw [4 x i8], ptr %.5463794.i, i64 %i.n ; 2 uses
  %i.aeg = load float, ptr %i.aef, align 4, !tbaa !68
  %i.aeh = fmul fast float %i.aeg, %i.abc
  %i.aei = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.aeh)
  %i.aej = fptosi float %i.aei to i32
  %spec.select.i649.i.1 = tail call i32 @llvm.smax.i32(i32 %i.aej, i32 -127)
  %.0.i650.i.1 = tail call i32 @llvm.smin.i32(i32 %spec.select.i649.i.1, i32 127)
  %.0.i.i.1 = trunc nsw i32 %.0.i650.i.1 to i8
  store i8 %.0.i.i.1, ptr %i.aee, align 1, !tbaa !116
  %i.aek = getelementptr inbounds nuw i8, ptr %.30795.i, i64 2 ; 2 uses
  %i.ael = getelementptr inbounds nuw [4 x i8], ptr %i.aef, i64 %i.n
  %i.aem = add nuw nsw i32 %.1796.i, 2            ; 2 uses
  %exitcond853.not.i.1 = icmp eq i32 %i.aem, %5
  br i1 %exitcond853.not.i.1, label %.loopexit.i, label %.lr.ph797.i, !llvm.loop !903

.loopexit.i:                                      ; preds = %.lr.ph797.i.prol.loopexit, %.lr.ph797.i, %.lr.ph784.i, %.lr.ph778.i, %.preheader.i, %bb.u, %bb.t, %bb.s
  %.31.i = phi ptr [ %.24800.i, %bb.s ], [ %.29.lcssa.i, %.preheader.i ], [ %i.abs, %.lr.ph778.i ], [ %i.ack, %.lr.ph784.i ], [ %.24800.i, %bb.u ], [ %.24800.i, %bb.t ], [ %.lcssa153.unr, %.lr.ph797.i.prol.loopexit ], [ %i.aek, %.lr.ph797.i ]
  %indvars.iv.next855.i = add nsw i64 %indvars.iv854.i, 1 ; 2 uses
  %exitcond857.not.i = icmp eq i64 %indvars.iv.next855.i, %wide.trip.count.i
  br i1 %exitcond857.not.i, label %_ZN4ncnnL34transpose_pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit, label %bb.s, !llvm.loop !904

_ZN4ncnnL34transpose_pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit: ; preds = %.loopexit.i, %bb.b, %bb.d, %bb.f, %.preheader657.i
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define internal fastcc void @_ZN4ncnnL20pack_A_tile_quantizeERKNS_3MatERS0_iiiiS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(72) %6) unnamed_addr #15 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn29cpu_support_x86_avx_vnni_int8Ev()
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn36pack_A_tile_fp32_to_int8_avxvnniint8ERKNS_3MatERS0_iiiiS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(72) %6)
  br label %_ZN4ncnnL24pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN4ncnn24cpu_support_x86_avx_vnniEv()
  %.not399.i = icmp eq i32 %i.b, 0
  br i1 %.not399.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4ncnn32pack_A_tile_fp32_to_int8_avxvnniERKNS_3MatERS0_iiiiS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(72) %6)
  br label %_ZN4ncnnL24pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.c = tail call noundef i32 @_ZN4ncnn20cpu_support_x86_avx2Ev()
  %.not400.i = icmp eq i32 %i.c, 0
  br i1 %.not400.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4ncnn29pack_A_tile_fp32_to_int8_avx2ERKNS_3MatERS0_iiiiS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(72) %6)
  br label %_ZN4ncnnL24pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !60   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !87
  %i.h = icmp eq i32 %i.g, 3
  br i1 %i.h, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i64, ptr %i.i, align 8, !tbaa !20
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !88
  %i.m = sext i32 %i.l to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.n = phi i64 [ %i.j, %bb.h ], [ %i.m, %bb.i ] ; 22 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !18     ; 2 uses
  %i.p = shl nsw i32 %5, 2
  %i.q = sext i32 %i.p to i64
  %i.r = icmp sgt i32 %3, 7
  br i1 %i.r, label %.lr.ph541.i, label %.preheader482.i

.lr.ph541.i:                                      ; preds = %bb.j
  %i.s = mul nsw i32 %i.e, %4
  %i.t = sext i32 %i.s to i64
  %i.u = sext i32 %2 to i64                       ; 2 uses
  %i.v = icmp sgt i32 %5, 1                       ; 3 uses
  %.idx409.i = shl i64 %i.n, 4                    ; 4 uses
  %.idx466.i = shl i64 %i.n, 3                    ; 2 uses
  %.idx467.i = mul i64 %i.n, 12                   ; 2 uses
  %.idx469.i = mul i64 %i.n, 20                   ; 2 uses
  %.idx470.i = mul i64 %i.n, 24                   ; 2 uses
  %.idx471.i = mul i64 %i.n, 28                   ; 2 uses
  %i.w = and i32 %5, -2                           ; 3 uses
  %i.x = zext nneg i32 %3 to i64
  br label %bb.k

.preheader482.loopexit.i:                         ; preds = %.loopexit484.i
  %i.y = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %.preheader482.i

.preheader482.i:                                  ; preds = %.preheader482.loopexit.i, %bb.j
  %.0356.lcssa.i = phi i32 [ 0, %bb.j ], [ %i.y, %.preheader482.loopexit.i ] ; 3 uses
  %.0354.lcssa.i = phi ptr [ %i.o, %bb.j ], [ %.9369.i, %.preheader482.loopexit.i ] ; 4 uses
  %i.z = or disjoint i32 %.0356.lcssa.i, 3
  %i.aa = icmp slt i32 %i.z, %3
  br i1 %i.aa, label %.lr.ph571.i, label %.preheader475.i

.lr.ph571.i:                                      ; preds = %.preheader482.i
  %i.ab = load ptr, ptr %0, align 8, !tbaa !18
  %i.ac = mul nsw i32 %i.e, %4
  %i.ad = sext i32 %i.ac to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.ab, i64 %i.ad ; 2 uses
  %i.ae = load ptr, ptr %6, align 8, !tbaa !18
  %i.af = sext i32 %2 to i64                      ; 3 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.af ; 2 uses
  %i.ah = icmp sgt i32 %5, 1                      ; 2 uses
  %.idx464.i = shl i64 %i.n, 3                    ; 2 uses
  %.idx465.i = mul i64 %i.n, 12                   ; 2 uses
  %i.ai = and i32 %5, -2                          ; 2 uses
  %i.aj = zext i32 %.0356.lcssa.i to i64          ; 5 uses
  %i.ak = sext i32 %3 to i64
  %invariant.op.i = add nsw i64 %i.ak, -3         ; 3 uses
  switch i32 %i.e, label %.loopexit477.i.preheader [
    i32 4, label %.preheader481.i.us.preheader
    i32 1, label %.preheader478.i.us
  ]

.preheader481.i.us.preheader:                     ; preds = %.lr.ph571.i
  %xtraiter = and i32 %5, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br label %.preheader481.i.us

.loopexit477.i.preheader:                         ; preds = %.lr.ph571.i
  %i.al = add nuw nsw i64 %i.aj, 4
  %smax = tail call i64 @llvm.smax.i64(i64 %invariant.op.i, i64 %i.al)
  %i.am = xor i64 %i.aj, -1
  %i.an = add nsw i64 %smax, %i.am
  %i.ao = and i64 %i.an, -4
  %i.ap = add i64 %i.ao, %i.aj
  %i.aq = add i64 %i.ap, 4
  br label %.preheader475.loopexit.i

.preheader481.i.us:                               ; preds = %.preheader481.i.us.preheader, %.loopexit477.i.us
  %indvars.iv661.i.us = phi i64 [ %indvars.iv.next662.i.us, %.loopexit477.i.us ], [ %i.aj, %.preheader481.i.us.preheader ] ; 3 uses
  %.9570.i.us = phi ptr [ %.15.i.us, %.loopexit477.i.us ], [ %.0354.lcssa.i, %.preheader481.i.us.preheader ] ; 2 uses
  %i.ar = add nsw i64 %indvars.iv661.i.us, %i.af
  %i.as = mul i64 %i.ar, %i.n
  %gep.i.us = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.as ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv661.i.us
  %i.au = load <4 x float>, ptr %i.at, align 16, !tbaa !116 ; 5 uses
  br i1 %i.ah, label %.lr.ph547.i.us, label %.preheader479.i.us

.lr.ph547.i.us:                                   ; preds = %.preheader481.i.us, %.lr.ph547.i.us
  %.10546.i.us = phi ptr [ %i.bo, %.lr.ph547.i.us ], [ %.9570.i.us, %.preheader481.i.us ] ; 2 uses
  %.0390545.i.us = phi ptr [ %i.bp, %.lr.ph547.i.us ], [ %gep.i.us, %.preheader481.i.us ] ; 3 uses
  %.0397544.i.us = phi i32 [ %i.bq, %.lr.ph547.i.us ], [ 0, %.preheader481.i.us ]
  %i.av = load <4 x float>, ptr %.0390545.i.us, align 16, !tbaa !116
  %i.aw = getelementptr inbounds nuw i8, ptr %.0390545.i.us, i64 16
  %i.ax = load <4 x float>, ptr %i.aw, align 16, !tbaa !116
  %i.ay = fmul fast <4 x float> %i.av, %i.au      ; 2 uses
  %i.az = fmul fast <4 x float> %i.ax, %i.au      ; 2 uses
  %i.ba = shufflevector <4 x float> %i.ay, <4 x float> %i.az, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bb = shufflevector <4 x float> %i.ay, <4 x float> %i.az, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.bc = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ba)
  %i.bd = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bb)
  %i.be = fadd fast <4 x float> %i.bc, %i.ba
  %i.bf = fadd fast <4 x float> %i.bd, %i.bb
  %i.bg = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.be)
  %i.bh = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bf)
  %i.bi = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bg, <4 x i32> %i.bh)
  %i.bj = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bi, <8 x i16> splat (i16 -127))
  %i.bk = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.bj, <8 x i16> splat (i16 127))
  %i.bl = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.bk, <8 x i16> poison)
  %i.bm = bitcast <16 x i8> %i.bl to <2 x i64>
  %i.bn = extractelement <2 x i64> %i.bm, i64 0
  store i64 %i.bn, ptr %.10546.i.us, align 8, !tbaa !767
  %i.bo = getelementptr inbounds nuw i8, ptr %.10546.i.us, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0390545.i.us, i64 32 ; 2 uses
  %i.bq = add nuw nsw i32 %.0397544.i.us, 2       ; 2 uses
  %i.br = or disjoint i32 %i.bq, 1
  %i.bs = icmp slt i32 %i.br, %5
  br i1 %i.bs, label %.lr.ph547.i.us, label %.preheader479.i.us, !llvm.loop !905

.preheader479.i.us:                               ; preds = %.lr.ph547.i.us, %.preheader481.i.us
  %.0397.lcssa.i.us = phi i32 [ 0, %.preheader481.i.us ], [ %i.ai, %.lr.ph547.i.us ] ; 4 uses
  %.0390.lcssa.i.us = phi ptr [ %gep.i.us, %.preheader481.i.us ], [ %i.bp, %.lr.ph547.i.us ] ; 3 uses
  %.10.lcssa.i.us = phi ptr [ %.9570.i.us, %.preheader481.i.us ], [ %i.bo, %.lr.ph547.i.us ] ; 4 uses
  %i.bt = icmp slt i32 %.0397.lcssa.i.us, %5
  br i1 %i.bt, label %.lr.ph554.i.us.preheader, label %.loopexit477.i.us

.lr.ph554.i.us.preheader:                         ; preds = %.preheader479.i.us
  %.neg = or disjoint i32 %.0397.lcssa.i.us, 1
  br i1 %lcmp.mod.not, label %.lr.ph554.i.us.prol.loopexit, label %.lr.ph554.i.us.prol

.lr.ph554.i.us.prol:                              ; preds = %.lr.ph554.i.us.preheader
  %i.bu = load <4 x float>, ptr %.0390.lcssa.i.us, align 16, !tbaa !116
  %i.bv = fmul fast <4 x float> %i.bu, %i.au      ; 2 uses
  %i.bw = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bv)
  %i.bx = fadd fast <4 x float> %i.bw, %i.bv
  %i.by = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bx) ; 2 uses
  %i.bz = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.by, <4 x i32> %i.by)
  %i.ca = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bz, <8 x i16> splat (i16 -127))
  %i.cb = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ca, <8 x i16> splat (i16 127))
  %i.cc = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.cb, <8 x i16> poison)
  %i.cd = bitcast <16 x i8> %i.cc to <4 x i32>
  %i.ce = extractelement <4 x i32> %i.cd, i64 0
  store i32 %i.ce, ptr %.10.lcssa.i.us, align 4, !tbaa !45
  %i.cf = getelementptr inbounds nuw i8, ptr %.10.lcssa.i.us, i64 4 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0390.lcssa.i.us, i64 16
  %i.ch = or disjoint i32 %.0397.lcssa.i.us, 1
  br label %.lr.ph554.i.us.prol.loopexit

.lr.ph554.i.us.prol.loopexit:                     ; preds = %.lr.ph554.i.us.prol, %.lr.ph554.i.us.preheader
  %.lcssa191.unr = phi ptr [ poison, %.lr.ph554.i.us.preheader ], [ %i.cf, %.lr.ph554.i.us.prol ]
  %.11553.i.us.unr = phi ptr [ %.10.lcssa.i.us, %.lr.ph554.i.us.preheader ], [ %i.cf, %.lr.ph554.i.us.prol ]
  %.1391552.i.us.unr = phi ptr [ %.0390.lcssa.i.us, %.lr.ph554.i.us.preheader ], [ %i.cg, %.lr.ph554.i.us.prol ]
  %.1398551.i.us.unr = phi i32 [ %.0397.lcssa.i.us, %.lr.ph554.i.us.preheader ], [ %i.ch, %.lr.ph554.i.us.prol ]
  %i.ci = icmp eq i32 %5, %.neg
end_hunk_13
begin_hunk_14_@_ZN4ncnnL20pack_A_tile_quantizeERKNS_3MatERS0_iiiiS2_:bb.a
  %i.th = add nuw nsw i32 %.1379582.i, 2          ; 3 uses
  %i.ti = or disjoint i32 %i.th, 1
  %i.tj = icmp slt i32 %i.ti, %5
  br i1 %i.tj, label %.lr.ph584.i, label %.preheader473.i, !llvm.loop !927

.lr.ph591.i:                                      ; preds = %.lr.ph591.i.preheader182, %.lr.ph591.i
  %.19590.i = phi ptr [ %i.tu, %.lr.ph591.i ], [ %.19590.i.ph, %.lr.ph591.i.preheader182 ] ; 3 uses
  %.2380589.i = phi i32 [ %i.tw, %.lr.ph591.i ], [ %.2380589.i.ph, %.lr.ph591.i.preheader182 ]
  %.2383588.i = phi ptr [ %i.tv, %.lr.ph591.i ], [ %.2383588.i.ph, %.lr.ph591.i.preheader182 ] ; 3 uses
  %i.tk = load float, ptr %.2383588.i, align 4, !tbaa !68
  %i.tl = fmul fast float %i.tk, %i.qg
  %i.tm = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.tl)
  %i.tn = fptosi float %i.tm to i32
  %spec.select.i412460.i = tail call i32 @llvm.smax.i32(i32 %i.tn, i32 -127)
  %.0.i413461.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i412460.i, i32 127)
  %.0.i413.i = trunc nsw i32 %.0.i413461.i to i8
  store i8 %.0.i413.i, ptr %.19590.i, align 1, !tbaa !116
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %.2383588.i, i64 %i.n
  %i.tp = load float, ptr %i.to, align 4, !tbaa !68
  %i.tq = fmul fast float %i.tp, %i.qi
  %i.tr = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.tq)
  %i.ts = fptosi float %i.tr to i32
  %spec.select.i410462.i = tail call i32 @llvm.smax.i32(i32 %i.ts, i32 -127)
  %.0.i411463.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i410462.i, i32 127)
  %.0.i411.i = trunc nsw i32 %.0.i411463.i to i8
  %i.tt = getelementptr inbounds nuw i8, ptr %.19590.i, i64 1
  store i8 %.0.i411.i, ptr %i.tt, align 1, !tbaa !116
  %i.tu = getelementptr inbounds nuw i8, ptr %.19590.i, i64 2 ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %.2383588.i, i64 4
  %i.tw = add nuw nsw i32 %.2380589.i, 1          ; 2 uses
  %exitcond664.not.i = icmp eq i32 %i.tw, %5
  br i1 %exitcond664.not.i, label %._crit_edge.i, label %.lr.ph591.i, !llvm.loop !928

._crit_edge.i:                                    ; preds = %.lr.ph591.i, %middle.block, %.preheader473.i
  %.19.lcssa.i = phi ptr [ %.18.lcssa.i, %.preheader473.i ], [ %i.sa, %middle.block ], [ %i.tu, %.lr.ph591.i ] ; 2 uses
  %indvars.iv.next666.i = add nuw nsw i64 %indvars.iv665.i, 2 ; 3 uses
  %i.tx = icmp slt i64 %indvars.iv.next666.i, %invariant.op717.i
  br i1 %i.tx, label %bb.l, label %.preheader472.loopexit.i, !llvm.loop !929

bb.m:                                             ; preds = %._crit_edge610.i, %.lr.ph614.i
  %indvars.iv669.i = phi i64 [ %i.px, %.lr.ph614.i ], [ %indvars.iv.next670.i, %._crit_edge610.i ] ; 2 uses
  %.20613.i = phi ptr [ %.16.lcssa.i, %.lr.ph614.i ], [ %.22.lcssa.i, %._crit_edge610.i ] ; 2 uses
  %i.ty = load ptr, ptr %0, align 8, !tbaa !18
  %i.tz = add nsw i64 %indvars.iv669.i, %i.py     ; 2 uses
  %i.ua = mul i64 %i.tz, %i.n
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.ty, i64 %i.ua
  %i.uc = getelementptr inbounds [4 x i8], ptr %i.ub, i64 %i.pu ; 2 uses
  %i.ud = load ptr, ptr %6, align 8, !tbaa !18
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.ud, i64 %i.tz
  %i.uf = load float, ptr %i.ue, align 4, !tbaa !68 ; 5 uses
  %i.ug = insertelement <4 x float> poison, float %i.uf, i64 0
  %i.uh = shufflevector <4 x float> %i.ug, <4 x float> poison, <4 x i32> zeroinitializer
  br i1 %i.pv, label %.lr.ph602.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph602.i, %bb.m
  %.21.lcssa.i = phi ptr [ %.20613.i, %bb.m ], [ %i.vy, %.lr.ph602.i ] ; 7 uses
  %.0352.lcssa.i = phi ptr [ %i.uc, %bb.m ], [ %i.vz, %.lr.ph602.i ] ; 6 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.m ], [ %i.pw, %.lr.ph602.i ] ; 6 uses
  %i.ui = icmp slt i32 %.0.lcssa.i, %5
  br i1 %i.ui, label %.lr.ph609.i.preheader, label %._crit_edge610.i

.lr.ph609.i.preheader:                            ; preds = %.preheader.i
  %i.uj = xor i32 %.0.lcssa.i, -1
  %i.uk = add i32 %5, %i.uj                       ; 2 uses
  %i.ul = zext i32 %i.uk to i64
  %i.um = add nuw nsw i64 %i.ul, 1                ; 2 uses
  %min.iters.check163 = icmp ult i32 %i.uk, 7
  br i1 %min.iters.check163, label %.lr.ph609.i.preheader179, label %vector.memcheck154

vector.memcheck154:                               ; preds = %.lr.ph609.i.preheader
  %scevgep155 = getelementptr i8, ptr %.21.lcssa.i, i64 1
  %i.un = xor i32 %.0.lcssa.i, -1
  %i.uo = add i32 %5, %i.un
  %i.up = zext i32 %i.uo to i64                   ; 2 uses
  %scevgep156 = getelementptr i8, ptr %scevgep155, i64 %i.up
  %scevgep157 = getelementptr i8, ptr %.0352.lcssa.i, i64 4
  %i.uq = shl nuw nsw i64 %i.up, 2
  %scevgep158 = getelementptr i8, ptr %scevgep157, i64 %i.uq
  %bound0159 = icmp ult ptr %.21.lcssa.i, %scevgep158
  %bound1160 = icmp ult ptr %.0352.lcssa.i, %scevgep156
  %found.conflict161 = and i1 %bound0159, %bound1160
  br i1 %found.conflict161, label %.lr.ph609.i.preheader179, label %vector.ph164

vector.ph164:                                     ; preds = %vector.memcheck154
  %n.vec165 = and i64 %i.um, 8589934584           ; 5 uses
  %i.ur = trunc i64 %n.vec165 to i32
  %i.us = add i32 %.0.lcssa.i, %i.ur
  %i.ut = shl nuw nsw i64 %n.vec165, 2
  %i.uu = getelementptr i8, ptr %.0352.lcssa.i, i64 %i.ut
  %i.uv = getelementptr i8, ptr %.21.lcssa.i, i64 %n.vec165 ; 2 uses
  %broadcast.splatinsert166 = insertelement <8 x float> poison, float %i.uf, i64 0
  %broadcast.splat167 = shufflevector <8 x float> %broadcast.splatinsert166, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body168

vector.body168:                                   ; preds = %vector.body168, %vector.ph164
  %index169 = phi i64 [ 0, %vector.ph164 ], [ %index.next173, %vector.body168 ] ; 3 uses
  %i.uw = shl i64 %index169, 2
  %next.gep170 = getelementptr i8, ptr %.0352.lcssa.i, i64 %i.uw
  %next.gep171 = getelementptr i8, ptr %.21.lcssa.i, i64 %index169
  %wide.load172 = load <8 x float>, ptr %next.gep170, align 4, !tbaa !68, !alias.scope !930
  %i.ux = fmul fast <8 x float> %wide.load172, %broadcast.splat167
  %i.uy = tail call fast <8 x float> @llvm.round.v8f32(<8 x float> %i.ux)
  %i.uz = fptosi <8 x float> %i.uy to <8 x i32>
  %i.va = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.uz, <8 x i32> splat (i32 -127))
  %i.vb = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.va, <8 x i32> splat (i32 127))
  %i.vc = trunc nsw <8 x i32> %i.vb to <8 x i8>
  store <8 x i8> %i.vc, ptr %next.gep171, align 1, !tbaa !116, !alias.scope !933, !noalias !930
  %index.next173 = add nuw i64 %index169, 8       ; 2 uses
  %i.vd = icmp eq i64 %index.next173, %n.vec165
  br i1 %i.vd, label %middle.block174, label %vector.body168, !llvm.loop !935

middle.block174:                                  ; preds = %vector.body168
  %cmp.n175 = icmp eq i64 %i.um, %n.vec165
  br i1 %cmp.n175, label %._crit_edge610.i, label %.lr.ph609.i.preheader179

.lr.ph609.i.preheader179:                         ; preds = %vector.memcheck154, %.lr.ph609.i.preheader, %middle.block174
  %.1608.i.ph = phi i32 [ %.0.lcssa.i, %vector.memcheck154 ], [ %.0.lcssa.i, %.lr.ph609.i.preheader ], [ %i.us, %middle.block174 ] ; 4 uses
  %.1353607.i.ph = phi ptr [ %.0352.lcssa.i, %vector.memcheck154 ], [ %.0352.lcssa.i, %.lr.ph609.i.preheader ], [ %i.uu, %middle.block174 ] ; 3 uses
  %.22606.i.ph = phi ptr [ %.21.lcssa.i, %vector.memcheck154 ], [ %.21.lcssa.i, %.lr.ph609.i.preheader ], [ %i.uv, %middle.block174 ] ; 3 uses
  %i.ve = sub i32 %5, %.1608.i.ph
  %.neg212 = add i32 %.1608.i.ph, 1
  %xtraiter210 = and i32 %i.ve, 1
  %lcmp.mod211.not = icmp eq i32 %xtraiter210, 0
  br i1 %lcmp.mod211.not, label %.lr.ph609.i.prol.loopexit, label %.lr.ph609.i.prol

.lr.ph609.i.prol:                                 ; preds = %.lr.ph609.i.preheader179
  %i.vf = load float, ptr %.1353607.i.ph, align 4, !tbaa !68
  %i.vg = fmul fast float %i.vf, %i.uf
  %i.vh = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.vg)
  %i.vi = fptosi float %i.vh to i32
  %spec.select.i458.i.prol = tail call i32 @llvm.smax.i32(i32 %i.vi, i32 -127)
  %.0.i459.i.prol = tail call i32 @llvm.smin.i32(i32 %spec.select.i458.i.prol, i32 127)
  %.0.i.i.prol = trunc nsw i32 %.0.i459.i.prol to i8
  store i8 %.0.i.i.prol, ptr %.22606.i.ph, align 1, !tbaa !116
  %i.vj = getelementptr inbounds nuw i8, ptr %.22606.i.ph, i64 1 ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %.1353607.i.ph, i64 4
  %i.vl = add nuw nsw i32 %.1608.i.ph, 1
  br label %.lr.ph609.i.prol.loopexit

.lr.ph609.i.prol.loopexit:                        ; preds = %.lr.ph609.i.prol, %.lr.ph609.i.preheader179
  %.lcssa181.unr = phi ptr [ poison, %.lr.ph609.i.preheader179 ], [ %i.vj, %.lr.ph609.i.prol ]
  %.1608.i.unr = phi i32 [ %.1608.i.ph, %.lr.ph609.i.preheader179 ], [ %i.vl, %.lr.ph609.i.prol ]
  %.1353607.i.unr = phi ptr [ %.1353607.i.ph, %.lr.ph609.i.preheader179 ], [ %i.vk, %.lr.ph609.i.prol ]
  %.22606.i.unr = phi ptr [ %.22606.i.ph, %.lr.ph609.i.preheader179 ], [ %i.vj, %.lr.ph609.i.prol ]
  %i.vm = icmp eq i32 %5, %.neg212
  br i1 %i.vm, label %._crit_edge610.i, label %.lr.ph609.i

.lr.ph602.i:                                      ; preds = %bb.m, %.lr.ph602.i
  %.0600.i = phi i32 [ %i.wa, %.lr.ph602.i ], [ 0, %bb.m ]
  %.0352599.i = phi ptr [ %i.vz, %.lr.ph602.i ], [ %i.uc, %bb.m ] ; 2 uses
  %.21598.i = phi ptr [ %i.vy, %.lr.ph602.i ], [ %.20613.i, %bb.m ] ; 2 uses
  %i.vn = load <4 x float>, ptr %.0352599.i, align 1, !tbaa !116
  %i.vo = fmul fast <4 x float> %i.vn, %i.uh      ; 2 uses
  %i.vp = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.vo)
  %i.vq = fadd fast <4 x float> %i.vp, %i.vo
  %i.vr = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.vq) ; 2 uses
  %i.vs = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.vr, <4 x i32> %i.vr)
  %i.vt = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.vs, <8 x i16> splat (i16 -127))
  %i.vu = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.vt, <8 x i16> splat (i16 127))
  %i.vv = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.vu, <8 x i16> poison)
  %i.vw = bitcast <16 x i8> %i.vv to <4 x i32>
  %i.vx = extractelement <4 x i32> %i.vw, i64 0
  store i32 %i.vx, ptr %.21598.i, align 4, !tbaa !45
  %i.vy = getelementptr inbounds nuw i8, ptr %.21598.i, i64 4 ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %.0352599.i, i64 16 ; 2 uses
  %i.wa = add nuw nsw i32 %.0600.i, 4             ; 2 uses
  %i.wb = or disjoint i32 %i.wa, 3
  %i.wc = icmp slt i32 %i.wb, %5
  br i1 %i.wc, label %.lr.ph602.i, label %.preheader.i, !llvm.loop !936

.lr.ph609.i:                                      ; preds = %.lr.ph609.i.prol.loopexit, %.lr.ph609.i
  %.1608.i = phi i32 [ %i.wp, %.lr.ph609.i ], [ %.1608.i.unr, %.lr.ph609.i.prol.loopexit ]
  %.1353607.i = phi ptr [ %i.wo, %.lr.ph609.i ], [ %.1353607.i.unr, %.lr.ph609.i.prol.loopexit ] ; 3 uses
  %.22606.i = phi ptr [ %i.wn, %.lr.ph609.i ], [ %.22606.i.unr, %.lr.ph609.i.prol.loopexit ] ; 3 uses
  %i.wd = load float, ptr %.1353607.i, align 4, !tbaa !68
  %i.we = fmul fast float %i.wd, %i.uf
  %i.wf = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.we)
  %i.wg = fptosi float %i.wf to i32
  %spec.select.i458.i = tail call i32 @llvm.smax.i32(i32 %i.wg, i32 -127)
  %.0.i459.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i458.i, i32 127)
  %.0.i.i = trunc nsw i32 %.0.i459.i to i8
  store i8 %.0.i.i, ptr %.22606.i, align 1, !tbaa !116
  %i.wh = getelementptr inbounds nuw i8, ptr %.22606.i, i64 1
  %i.wi = getelementptr inbounds nuw i8, ptr %.1353607.i, i64 4
  %i.wj = load float, ptr %i.wi, align 4, !tbaa !68
  %i.wk = fmul fast float %i.wj, %i.uf
  %i.wl = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.wk)
  %i.wm = fptosi float %i.wl to i32
  %spec.select.i458.i.1 = tail call i32 @llvm.smax.i32(i32 %i.wm, i32 -127)
  %.0.i459.i.1 = tail call i32 @llvm.smin.i32(i32 %spec.select.i458.i.1, i32 127)
  %.0.i.i.1 = trunc nsw i32 %.0.i459.i.1 to i8
  store i8 %.0.i.i.1, ptr %i.wh, align 1, !tbaa !116
  %i.wn = getelementptr inbounds nuw i8, ptr %.22606.i, i64 2 ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %.1353607.i, i64 8
  %i.wp = add nuw nsw i32 %.1608.i, 2             ; 2 uses
  %exitcond668.not.i.1 = icmp eq i32 %i.wp, %5
  br i1 %exitcond668.not.i.1, label %._crit_edge610.i, label %.lr.ph609.i, !llvm.loop !937

._crit_edge610.i:                                 ; preds = %.lr.ph609.i.prol.loopexit, %.lr.ph609.i, %middle.block174, %.preheader.i
  %.22.lcssa.i = phi ptr [ %.21.lcssa.i, %.preheader.i ], [ %i.uv, %middle.block174 ], [ %.lcssa181.unr, %.lr.ph609.i.prol.loopexit ], [ %i.wn, %.lr.ph609.i ]
  %indvars.iv.next670.i = add nsw i64 %indvars.iv669.i, 1 ; 2 uses
  %exitcond672.not.i = icmp eq i64 %indvars.iv.next670.i, %wide.trip.count.i
  br i1 %exitcond672.not.i, label %_ZN4ncnnL24pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit, label %bb.m, !llvm.loop !938

_ZN4ncnnL24pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit: ; preds = %._crit_edge610.i, %bb.b, %bb.d, %bb.f, %.preheader472.i
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16gemm_BT_x86_int8ERKNS_3MatES2_fS2_RS0_iiiiiffiiiiRKNS_6OptionE.omp_outlined.12(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr noundef nonnull align 8 dereferenceable(72) %11, ptr noundef nonnull align 8 dereferenceable(72) %12, ptr noundef nonnull align 8 dereferenceable(72) %13) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 16 uses
  %15 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %16 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.y

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !45
  %i.h = load i32, ptr %0, align 4, !tbaa !45     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !45
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !45
  %i.k = load i32, ptr %i.a, align 4, !tbaa !45   ; 2 uses
  %.not138 = icmp sgt i32 %i.k, %i.j
  br i1 %.not138, label %._crit_edge141, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 52
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 44
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 52
  %i.ag = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %15, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.bf = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.bg = getelementptr inbounds nuw i8, ptr %16, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.051139 = phi i32 [ %i.k, %.lr.ph ], [ %i.fl, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.bh = load i32, ptr %3, align 4, !tbaa !331   ; 2 uses
  %i.bi = load i32, ptr %i.l, align 4, !tbaa !333 ; 2 uses
  %i.bj = load i32, ptr %i.m, align 4, !tbaa !334 ; 3 uses
  %i.bk = load i32, ptr %i.n, align 4, !tbaa !335
  %i.bl = load i32, ptr %i.o, align 4, !tbaa !337
  %i.bm = load float, ptr %i.p, align 4, !tbaa !660
  %i.bn = load float, ptr %i.q, align 4, !tbaa !661
  %i.bo = load i32, ptr %4, align 4, !tbaa !45    ; 2 uses
  %i.bp = sdiv i32 %.051139, %i.bo                ; 2 uses
  %i.bq = srem i32 %.051139, %i.bo                ; 2 uses
  %i.br = mul nsw i32 %i.bp, %i.bh                ; 3 uses
  %i.bs = mul nsw i32 %i.bq, %i.bi                ; 3 uses
  %i.bt = load i32, ptr %5, align 4, !tbaa !45
  %i.bu = sub nsw i32 %i.bt, %i.br
  %.sroa.speculated121 = call i32 @llvm.smin.i32(i32 %i.bh, i32 %i.bu) ; 2 uses
  %i.bv = load i32, ptr %6, align 4, !tbaa !45
  %i.bw = sub nsw i32 %i.bv, %i.bs
  %.sroa.speculated117 = call i32 @llvm.smin.i32(i32 %i.bi, i32 %i.bw) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  %i.bx = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc82 unwind label %.loopexit.split-lp

.noexc82:                                         ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !939)
  %i.by = load i32, ptr %i.r, align 4, !tbaa !88, !noalias !939 ; 2 uses
  %i.bz = load i32, ptr %i.s, align 8, !tbaa !90, !noalias !939 ; 2 uses
  %i.ca = load i32, ptr %i.t, align 4, !tbaa !364, !noalias !939
  %i.cb = load ptr, ptr %7, align 8, !tbaa !18, !noalias !939
  %i.cc = load i64, ptr %i.u, align 8, !tbaa !20, !noalias !939
  %i.cd = sext i32 %i.bx to i64
  %i.ce = mul i64 %i.cc, %i.cd
  %i.cf = load i64, ptr %i.v, align 8, !tbaa !59, !noalias !939 ; 4 uses
  %i.cg = mul i64 %i.ce, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cg
  %i.ci = load i32, ptr %i.w, align 8, !tbaa !60, !noalias !939
  %i.cj = load ptr, ptr %i.x, align 8, !tbaa !17, !noalias !939
  store ptr %i.ch, ptr %14, align 8, !tbaa !18
  store ptr null, ptr %i.y, align 8, !tbaa !11
  store i64 %i.cf, ptr %i.z, align 8, !tbaa !59
  store i32 %i.ci, ptr %i.aa, align 8, !tbaa !60
  store ptr %i.cj, ptr %i.ab, align 8, !tbaa !17
  store i32 %i.by, ptr %i.ad, align 4, !tbaa !88
  store i32 %i.bz, ptr %i.ae, align 8, !tbaa !90
  store i32 1, ptr %i.af, align 4, !tbaa !364
  store i32 %i.ca, ptr %i.ag, align 8, !tbaa !51
  %i.ck = sext i32 %i.by to i64
  %i.cl = sext i32 %i.bz to i64
  %i.cm = mul nsw i64 %i.cl, %i.ck                ; 2 uses
  %i.cn = mul i64 %i.cf, %i.cm
  %i.co = add i64 %i.cn, 15
  %i.cp = and i64 %i.co, -16
  %i.cq = udiv i64 %i.cp, %i.cf
  store i64 %i.cq, ptr %i.ah, align 8, !tbaa !20
  %i.cr = load i32, ptr %i.ai, align 8, !tbaa !87, !noalias !939 ; 2 uses
  %i.cs = add nsw i32 %i.cr, -1
  store i32 %i.cs, ptr %i.ac, align 8, !tbaa !87, !alias.scope !939
  %i.ct = icmp eq i32 %i.cr, 4
  br i1 %i.ct, label %bb.d, label %_ZN4ncnn3Mat7channelEi.exit83

bb.d:                                             ; preds = %.noexc82
  store i64 %i.cm, ptr %i.ah, align 8, !tbaa !20, !alias.scope !939
  br label %_ZN4ncnn3Mat7channelEi.exit83

_ZN4ncnn3Mat7channelEi.exit83:                    ; preds = %.noexc82, %bb.d
  %i.cu = load i32, ptr %8, align 4, !tbaa !45    ; 2 uses
  %i.cv = icmp sgt i32 %i.cu, 0
  br i1 %i.cv, label %.noexc81.lr.ph, label %._crit_edge

.noexc81.lr.ph:                                   ; preds = %_ZN4ncnn3Mat7channelEi.exit83
  %i.cw = sext i32 %i.bp to i64
  %i.cx = sext i32 %i.bq to i64
  br label %.noexc81

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit52, %_ZN4ncnn3Mat7channelEi.exit83
  invoke fastcc void @_ZN4ncnnL29unpack_output_tile_dequantizeERKNS_3MatES2_RS0_iiiiiS2_ffi(ptr noundef nonnull align 8 dereferenceable(72) %14, ptr noundef nonnull align 8 dereferenceable(72) %11, ptr noundef nonnull align 8 dereferenceable(72) %12, i32 noundef %i.bk, i32 noundef %i.br, i32 noundef %.sroa.speculated121, i32 noundef %i.bs, i32 noundef %.sroa.speculated117, ptr noundef nonnull align 8 dereferenceable(72) %13, float noundef nofpclass(nan inf) %i.bm, float noundef nofpclass(nan inf) %i.bn, i32 noundef %i.bl)
          to label %bb.r unwind label %.loopexit.split-lp

.noexc81:                                         ; preds = %.noexc81.lr.ph, %_ZN4ncnn3MatD2Ev.exit52
  %i.cy = phi i32 [ %i.cu, %.noexc81.lr.ph ], [ %i.ez, %_ZN4ncnn3MatD2Ev.exit52 ]
  %.0137 = phi i32 [ 0, %.noexc81.lr.ph ], [ %i.ey, %_ZN4ncnn3MatD2Ev.exit52 ] ; 4 uses
  %i.cz = sub nsw i32 %i.cy, %.0137
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.bj, i32 %i.cz)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #9
  %i.da = load i32, ptr %i.aj, align 4, !tbaa !88, !noalias !942 ; 2 uses
  %i.db = load ptr, ptr %9, align 8, !tbaa !18, !noalias !942
  %i.dc = load i64, ptr %i.ak, align 8, !tbaa !20, !noalias !942
  %i.dd = mul i64 %i.dc, %i.cw
  %i.de = load i64, ptr %i.al, align 8, !tbaa !59, !noalias !942 ; 3 uses
  %i.df = mul i64 %i.dd, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.df
  %i.dh = load i32, ptr %i.am, align 8, !tbaa !60, !noalias !942
  %i.di = load ptr, ptr %i.an, align 8, !tbaa !17, !noalias !942
  %i.dj = sext i32 %i.da to i64                   ; 2 uses
  %i.dk = sdiv i32 %.0137, %i.bj
  %i.dl = sext i32 %i.dk to i64                   ; 2 uses
  %i.dm = mul i64 %i.de, %i.dj
  %i.dn = mul i64 %i.dm, %i.dl
  %i.do = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dn
  store ptr %i.do, ptr %15, align 8, !tbaa !18
  store ptr null, ptr %i.ao, align 8, !tbaa !11
  store i64 %i.de, ptr %i.ap, align 8, !tbaa !59
  store i32 %i.dh, ptr %i.aq, align 8, !tbaa !60
  store ptr %i.di, ptr %i.ar, align 8, !tbaa !17
  %i.dp = insertelement <4 x i32> <i32 2, i32 poison, i32 1, i32 1>, i32 %i.da, i64 1
  store <4 x i32> %i.dp, ptr %i.as, align 8, !tbaa !45
  store i32 1, ptr %i.at, align 8, !tbaa !51
  store i64 %i.dj, ptr %i.au, align 8, !tbaa !20, !alias.scope !945
end_hunk_14
begin_hunk_15_@_ZN4ncnnL26transpose_pack_A_tile_bf16ERKNS_3MatERS0_iiii:bb.a

.lr.ph106.epil.preheader:                         ; preds = %.loopexit42.loopexit292.unr-lcssa, %.lr.ph106.preheader
  %.15105.epil.init = phi ptr [ %.14121, %.lr.ph106.preheader ], [ %i.mp, %.loopexit42.loopexit292.unr-lcssa ] ; 3 uses
  %.0259103.epil.init = phi ptr [ %i.ma, %.lr.ph106.preheader ], [ %i.mq, %.loopexit42.loopexit292.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod319)
  %i.ow = load <8 x i16>, ptr %.0259103.epil.init, align 1, !tbaa !116 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %.0259103.epil.init, i64 16
  %i.oy = load <8 x i16>, ptr %i.ox, align 1, !tbaa !116 ; 2 uses
  %i.oz = shufflevector <8 x i16> %i.ow, <8 x i16> %i.oy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.pa = shufflevector <8 x i16> %i.ow, <8 x i16> %i.oy, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.oz, ptr %.15105.epil.init, align 1, !tbaa !116
  %i.pb = getelementptr inbounds nuw i8, ptr %.15105.epil.init, i64 16
  store <8 x i16> %i.pa, ptr %i.pb, align 1, !tbaa !116
  %i.pc = getelementptr inbounds nuw i8, ptr %.15105.epil.init, i64 32
  br label %.loopexit42

.loopexit42:                                      ; preds = %.lr.ph106.epil.preheader, %.loopexit42.loopexit292.unr-lcssa, %.lr.ph112, %.loopexit42.loopexit.unr-lcssa, %.lr.ph118.epil, %.loopexit44
  %.20 = phi ptr [ %.14121, %.loopexit44 ], [ %i.ou, %.lr.ph118.epil ], [ %i.nn, %.lr.ph112 ], [ %i.oo, %.loopexit42.loopexit.unr-lcssa ], [ %i.mp, %.loopexit42.loopexit292.unr-lcssa ], [ %i.pc, %.lr.ph106.epil.preheader ] ; 2 uses
  %indvars.iv.next208 = add nuw nsw i64 %indvars.iv207, 2 ; 3 uses
  %i.pd = icmp slt i64 %indvars.iv.next208, %invariant.op267
  br i1 %i.pd, label %bb.d, label %.preheader40.loopexit, !llvm.loop !1046

bb.e:                                             ; preds = %.lr.ph144, %.loopexit
  %indvars.iv211 = phi i64 [ %i.lj, %.lr.ph144 ], [ %indvars.iv.next212, %.loopexit ] ; 2 uses
  %.21143 = phi ptr [ %.14.lcssa, %.lr.ph144 ], [ %.27, %.loopexit ] ; 7 uses
  %i.pe = load ptr, ptr %0, align 8, !tbaa !18
  %i.pf = getelementptr inbounds nuw [2 x i8], ptr %i.pe, i64 %i.lc
  %i.pg = add nsw i64 %indvars.iv211, %i.lk
  %i.ph = mul nsw i64 %i.pg, %i.ll
  %i.pi = getelementptr inbounds [2 x i8], ptr %i.pf, i64 %i.ph ; 6 uses
  br i1 %brmerge172, label %.loopexit39, label %.lr.ph128.preheader

.lr.ph128.preheader:                              ; preds = %bb.e
  br i1 %i.lt, label %.lr.ph128.epil.preheader, label %.lr.ph128

.lr.ph128:                                        ; preds = %.lr.ph128.preheader, %.lr.ph128
  %.0246126 = phi ptr [ %i.pu, %.lr.ph128 ], [ %i.pi, %.lr.ph128.preheader ] ; 2 uses
  %.22125 = phi ptr [ %i.pt, %.lr.ph128 ], [ %.21143, %.lr.ph128.preheader ] ; 5 uses
  %niter335 = phi i32 [ %niter335.next.3, %.lr.ph128 ], [ 0, %.lr.ph128.preheader ]
  %i.pj = load <2 x i64>, ptr %.0246126, align 1, !tbaa !116
  store <2 x i64> %i.pj, ptr %.22125, align 1, !tbaa !116
  %i.pk = getelementptr inbounds nuw i8, ptr %.22125, i64 16
  %i.pl = getelementptr inbounds nuw i8, ptr %.0246126, i64 %.idx280 ; 2 uses
  %i.pm = load <2 x i64>, ptr %i.pl, align 1, !tbaa !116
  store <2 x i64> %i.pm, ptr %i.pk, align 1, !tbaa !116
  %i.pn = getelementptr inbounds nuw i8, ptr %.22125, i64 32
  %i.po = getelementptr inbounds nuw i8, ptr %i.pl, i64 %.idx280 ; 2 uses
  %i.pp = load <2 x i64>, ptr %i.po, align 1, !tbaa !116
  store <2 x i64> %i.pp, ptr %i.pn, align 1, !tbaa !116
  %i.pq = getelementptr inbounds nuw i8, ptr %.22125, i64 48
  %i.pr = getelementptr inbounds nuw i8, ptr %i.po, i64 %.idx280 ; 2 uses
  %i.ps = load <2 x i64>, ptr %i.pr, align 1, !tbaa !116
  store <2 x i64> %i.ps, ptr %i.pq, align 1, !tbaa !116
  %i.pt = getelementptr inbounds nuw i8, ptr %.22125, i64 64 ; 3 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pr, i64 %.idx280 ; 2 uses
  %niter335.next.3 = add i32 %niter335, 4         ; 2 uses
  %niter335.ncmp.3.not = icmp eq i32 %niter335.next.3, %unroll_iter334
  br i1 %niter335.ncmp.3.not, label %.loopexit.loopexit288.unr-lcssa, label %.lr.ph128, !llvm.loop !1047

.loopexit39:                                      ; preds = %bb.e
  br i1 %brmerge175, label %.loopexit37, label %.lr.ph134.preheader

.lr.ph134.preheader:                              ; preds = %.loopexit39
  br i1 %i.lu, label %.lr.ph134.epil.preheader, label %.lr.ph134

.lr.ph134:                                        ; preds = %.lr.ph134.preheader, %.lr.ph134
  %.2132 = phi ptr [ %i.qg, %.lr.ph134 ], [ %i.pi, %.lr.ph134.preheader ] ; 2 uses
  %.24131 = phi ptr [ %i.qf, %.lr.ph134 ], [ %.21143, %.lr.ph134.preheader ] ; 5 uses
  %niter342 = phi i32 [ %niter342.next.3, %.lr.ph134 ], [ 0, %.lr.ph134.preheader ]
  %i.pv = load i64, ptr %.2132, align 1, !tbaa !116
  store i64 %i.pv, ptr %.24131, align 1, !tbaa !116
  %i.pw = getelementptr inbounds nuw i8, ptr %.24131, i64 8
  %i.px = getelementptr inbounds nuw i8, ptr %.2132, i64 %.idx ; 2 uses
  %i.py = load i64, ptr %i.px, align 1, !tbaa !116
  store i64 %i.py, ptr %i.pw, align 1, !tbaa !116
  %i.pz = getelementptr inbounds nuw i8, ptr %.24131, i64 16
  %i.qa = getelementptr inbounds nuw i8, ptr %i.px, i64 %.idx ; 2 uses
  %i.qb = load i64, ptr %i.qa, align 1, !tbaa !116
  store i64 %i.qb, ptr %i.pz, align 1, !tbaa !116
  %i.qc = getelementptr inbounds nuw i8, ptr %.24131, i64 24
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qa, i64 %.idx ; 2 uses
  %i.qe = load i64, ptr %i.qd, align 1, !tbaa !116
  store i64 %i.qe, ptr %i.qc, align 1, !tbaa !116
  %i.qf = getelementptr inbounds nuw i8, ptr %.24131, i64 32 ; 3 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qd, i64 %.idx ; 2 uses
  %niter342.next.3 = add nuw nsw i32 %niter342, 4 ; 2 uses
  %niter342.ncmp.3.not = icmp eq i32 %niter342.next.3, %unroll_iter341
  br i1 %niter342.ncmp.3.not, label %.loopexit.loopexit287.unr-lcssa, label %.lr.ph134, !llvm.loop !1048

.loopexit37:                                      ; preds = %.loopexit39
  br i1 %brmerge178, label %.loopexit, label %.lr.ph140.preheader

.lr.ph140.preheader:                              ; preds = %.loopexit37
  br i1 %i.lv, label %.lr.ph140.epil.preheader, label %.lr.ph140

.lr.ph140:                                        ; preds = %.lr.ph140.preheader, %.lr.ph140
  %.4138 = phi ptr [ %i.re, %.lr.ph140 ], [ %i.pi, %.lr.ph140.preheader ] ; 2 uses
  %.26137 = phi ptr [ %i.rd, %.lr.ph140 ], [ %.21143, %.lr.ph140.preheader ] ; 9 uses
  %niter349 = phi i32 [ %niter349.next.7, %.lr.ph140 ], [ 0, %.lr.ph140.preheader ]
  %i.qh = load i16, ptr %.4138, align 2, !tbaa !685
  store i16 %i.qh, ptr %.26137, align 2, !tbaa !685
  %i.qi = getelementptr inbounds nuw i8, ptr %.26137, i64 2
  %i.qj = getelementptr inbounds nuw [2 x i8], ptr %.4138, i64 %i.k ; 2 uses
  %i.qk = load i16, ptr %i.qj, align 2, !tbaa !685
  store i16 %i.qk, ptr %i.qi, align 2, !tbaa !685
  %i.ql = getelementptr inbounds nuw i8, ptr %.26137, i64 4
  %i.qm = getelementptr inbounds nuw [2 x i8], ptr %i.qj, i64 %i.k ; 2 uses
  %i.qn = load i16, ptr %i.qm, align 2, !tbaa !685
  store i16 %i.qn, ptr %i.ql, align 2, !tbaa !685
  %i.qo = getelementptr inbounds nuw i8, ptr %.26137, i64 6
  %i.qp = getelementptr inbounds nuw [2 x i8], ptr %i.qm, i64 %i.k ; 2 uses
  %i.qq = load i16, ptr %i.qp, align 2, !tbaa !685
  store i16 %i.qq, ptr %i.qo, align 2, !tbaa !685
  %i.qr = getelementptr inbounds nuw i8, ptr %.26137, i64 8
  %i.qs = getelementptr inbounds nuw [2 x i8], ptr %i.qp, i64 %i.k ; 2 uses
  %i.qt = load i16, ptr %i.qs, align 2, !tbaa !685
  store i16 %i.qt, ptr %i.qr, align 2, !tbaa !685
  %i.qu = getelementptr inbounds nuw i8, ptr %.26137, i64 10
  %i.qv = getelementptr inbounds nuw [2 x i8], ptr %i.qs, i64 %i.k ; 2 uses
  %i.qw = load i16, ptr %i.qv, align 2, !tbaa !685
  store i16 %i.qw, ptr %i.qu, align 2, !tbaa !685
  %i.qx = getelementptr inbounds nuw i8, ptr %.26137, i64 12
  %i.qy = getelementptr inbounds nuw [2 x i8], ptr %i.qv, i64 %i.k ; 2 uses
  %i.qz = load i16, ptr %i.qy, align 2, !tbaa !685
  store i16 %i.qz, ptr %i.qx, align 2, !tbaa !685
  %i.ra = getelementptr inbounds nuw i8, ptr %.26137, i64 14
  %i.rb = getelementptr inbounds nuw [2 x i8], ptr %i.qy, i64 %i.k ; 2 uses
  %i.rc = load i16, ptr %i.rb, align 2, !tbaa !685
  store i16 %i.rc, ptr %i.ra, align 2, !tbaa !685
  %i.rd = getelementptr inbounds nuw i8, ptr %.26137, i64 16 ; 3 uses
  %i.re = getelementptr inbounds nuw [2 x i8], ptr %i.rb, i64 %i.k ; 2 uses
  %niter349.next.7 = add nuw nsw i32 %niter349, 8 ; 2 uses
  %niter349.ncmp.7 = icmp eq i32 %niter349.next.7, %unroll_iter348
  br i1 %niter349.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph140, !llvm.loop !1049

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph140
  br i1 %lcmp.mod345.not, label %.loopexit, label %.lr.ph140.epil.preheader

.lr.ph140.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph140.preheader
  %.4138.epil.init = phi ptr [ %i.pi, %.lr.ph140.preheader ], [ %i.re, %.loopexit.loopexit.unr-lcssa ]
  %.26137.epil.init = phi ptr [ %.21143, %.lr.ph140.preheader ], [ %i.rd, %.loopexit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod347)
  br label %.lr.ph140.epil

.lr.ph140.epil:                                   ; preds = %.lr.ph140.epil, %.lr.ph140.epil.preheader
  %.4138.epil = phi ptr [ %i.rh, %.lr.ph140.epil ], [ %.4138.epil.init, %.lr.ph140.epil.preheader ] ; 2 uses
  %.26137.epil = phi ptr [ %i.rg, %.lr.ph140.epil ], [ %.26137.epil.init, %.lr.ph140.epil.preheader ] ; 2 uses
  %epil.iter344 = phi i32 [ %epil.iter344.next, %.lr.ph140.epil ], [ 0, %.lr.ph140.epil.preheader ]
  %i.rf = load i16, ptr %.4138.epil, align 2, !tbaa !685
  store i16 %i.rf, ptr %.26137.epil, align 2, !tbaa !685
  %i.rg = getelementptr inbounds nuw i8, ptr %.26137.epil, i64 2 ; 2 uses
  %i.rh = getelementptr inbounds nuw [2 x i8], ptr %.4138.epil, i64 %i.k
  %epil.iter344.next = add i32 %epil.iter344, 1   ; 2 uses
  %epil.iter344.cmp.not = icmp eq i32 %epil.iter344.next, %xtraiter343
  br i1 %epil.iter344.cmp.not, label %.loopexit, label %.lr.ph140.epil, !llvm.loop !1050

.loopexit.loopexit287.unr-lcssa:                  ; preds = %.lr.ph134
  br i1 %lcmp.mod338.not, label %.loopexit, label %.lr.ph134.epil.preheader

.lr.ph134.epil.preheader:                         ; preds = %.loopexit.loopexit287.unr-lcssa, %.lr.ph134.preheader
  %.2132.epil.init = phi ptr [ %i.pi, %.lr.ph134.preheader ], [ %i.qg, %.loopexit.loopexit287.unr-lcssa ]
  %.24131.epil.init = phi ptr [ %.21143, %.lr.ph134.preheader ], [ %i.qf, %.loopexit.loopexit287.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod340)
  br label %.lr.ph134.epil

.lr.ph134.epil:                                   ; preds = %.lr.ph134.epil, %.lr.ph134.epil.preheader
  %.2132.epil = phi ptr [ %i.rk, %.lr.ph134.epil ], [ %.2132.epil.init, %.lr.ph134.epil.preheader ] ; 2 uses
  %.24131.epil = phi ptr [ %i.rj, %.lr.ph134.epil ], [ %.24131.epil.init, %.lr.ph134.epil.preheader ] ; 2 uses
  %epil.iter337 = phi i32 [ %epil.iter337.next, %.lr.ph134.epil ], [ 0, %.lr.ph134.epil.preheader ]
  %i.ri = load i64, ptr %.2132.epil, align 1, !tbaa !116
  store i64 %i.ri, ptr %.24131.epil, align 1, !tbaa !116
  %i.rj = getelementptr inbounds nuw i8, ptr %.24131.epil, i64 8 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %.2132.epil, i64 %.idx
  %epil.iter337.next = add i32 %epil.iter337, 1   ; 2 uses
  %epil.iter337.cmp.not = icmp eq i32 %epil.iter337.next, %xtraiter336
  br i1 %epil.iter337.cmp.not, label %.loopexit, label %.lr.ph134.epil, !llvm.loop !1051

.loopexit.loopexit288.unr-lcssa:                  ; preds = %.lr.ph128
  br i1 %lcmp.mod331.not, label %.loopexit, label %.lr.ph128.epil.preheader

.lr.ph128.epil.preheader:                         ; preds = %.loopexit.loopexit288.unr-lcssa, %.lr.ph128.preheader
  %.0246126.epil.init = phi ptr [ %i.pi, %.lr.ph128.preheader ], [ %i.pu, %.loopexit.loopexit288.unr-lcssa ]
  %.22125.epil.init = phi ptr [ %.21143, %.lr.ph128.preheader ], [ %i.pt, %.loopexit.loopexit288.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod333)
  br label %.lr.ph128.epil

.lr.ph128.epil:                                   ; preds = %.lr.ph128.epil, %.lr.ph128.epil.preheader
  %.0246126.epil = phi ptr [ %i.rn, %.lr.ph128.epil ], [ %.0246126.epil.init, %.lr.ph128.epil.preheader ] ; 2 uses
  %.22125.epil = phi ptr [ %i.rm, %.lr.ph128.epil ], [ %.22125.epil.init, %.lr.ph128.epil.preheader ] ; 2 uses
  %epil.iter330 = phi i32 [ %epil.iter330.next, %.lr.ph128.epil ], [ 0, %.lr.ph128.epil.preheader ]
  %i.rl = load <2 x i64>, ptr %.0246126.epil, align 1, !tbaa !116
  store <2 x i64> %i.rl, ptr %.22125.epil, align 1, !tbaa !116
  %i.rm = getelementptr inbounds nuw i8, ptr %.22125.epil, i64 16 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %.0246126.epil, i64 %.idx280
  %epil.iter330.next = add i32 %epil.iter330, 1   ; 2 uses
  %epil.iter330.cmp.not = icmp eq i32 %epil.iter330.next, %xtraiter329
  br i1 %epil.iter330.cmp.not, label %.loopexit, label %.lr.ph128.epil, !llvm.loop !1052

.loopexit:                                        ; preds = %.loopexit.loopexit288.unr-lcssa, %.lr.ph128.epil, %.loopexit.loopexit287.unr-lcssa, %.lr.ph134.epil, %.loopexit.loopexit.unr-lcssa, %.lr.ph140.epil, %.loopexit37
  %.27 = phi ptr [ %.21143, %.loopexit37 ], [ %i.rg, %.lr.ph140.epil ], [ %i.rj, %.lr.ph134.epil ], [ %i.rd, %.loopexit.loopexit.unr-lcssa ], [ %i.qf, %.loopexit.loopexit287.unr-lcssa ], [ %i.pt, %.loopexit.loopexit288.unr-lcssa ], [ %i.rm, %.lr.ph128.epil ]
  %indvars.iv.next212 = add nsw i64 %indvars.iv211, 1 ; 2 uses
  %exitcond214.not = icmp eq i64 %indvars.iv.next212, %wide.trip.count
  br i1 %exitcond214.not, label %._crit_edge, label %bb.e, !llvm.loop !1053

._crit_edge:                                      ; preds = %.loopexit, %.preheader40
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL16pack_A_tile_bf16ERKNS_3MatERS0_iiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree writeonly captures(none) %.0.val, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !87
  %i.e = icmp eq i32 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load i32, ptr %i.h, align 4
  %i.j = sext i32 %i.i to i64
  %i.k = select i1 %i.e, i64 %i.g, i64 %i.j       ; 27 uses
  %i.l = icmp sgt i32 %2, 7
  br i1 %i.l, label %.lr.ph29, label %.preheader5

.lr.ph29:                                         ; preds = %bb.a
  %i.m = mul nsw i32 %i.b, %3
  %i.n = sext i32 %i.m to i64
  %i.o = icmp ne i32 %i.b, 8
  %i.p = icmp slt i32 %4, 1                       ; 2 uses
  %i.q = icmp eq i32 %i.b, 4
  %.idx194 = shl i64 %i.k, 3                      ; 2 uses
  %i.r = icmp sgt i32 %4, 0
  %i.s = icmp ne i32 %i.b, 1
  %.idx195 = shl i64 %i.k, 2
  %.idx196 = mul i64 %i.k, 6
  %.idx198 = mul i64 %i.k, 10
  %.idx199 = mul i64 %i.k, 12
  %.idx200 = mul i64 %i.k, 14
  %i.t = zext nneg i32 %2 to i64
  %i.u = sext i32 %1 to i64
  %brmerge109 = or i1 %i.o, %i.p
  %brmerge112 = or i1 %i.s, %i.p
  %i.v = add i32 %4, -1                           ; 2 uses
  %xtraiter = and i32 %4, 7                       ; 3 uses
  %i.w = icmp ult i32 %i.v, 7
  %unroll_iter = and i32 %4, 2147483640
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod449 = icmp ne i32 %xtraiter, 0
  %xtraiter450 = and i32 %4, 3                    ; 3 uses
  %i.x = icmp ult i32 %i.v, 3
  %unroll_iter455 = and i32 %4, 2147483644
  %lcmp.mod452.not = icmp eq i32 %xtraiter450, 0
  %lcmp.mod454 = icmp ne i32 %xtraiter450, 0
  br label %bb.b

.preheader5.loopexit:                             ; preds = %.loopexit7
  %i.y = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader5

.preheader5:                                      ; preds = %.preheader5.loopexit, %bb.a
  %.0167.lcssa = phi i32 [ 0, %bb.a ], [ %i.y, %.preheader5.loopexit ] ; 8 uses
  %.0166.lcssa = phi ptr [ %.0.val, %bb.a ], [ %.6, %.preheader5.loopexit ] ; 5 uses
  %i.z = or disjoint i32 %.0167.lcssa, 3
  %i.aa = icmp slt i32 %i.z, %2
  br i1 %i.aa, label %.lr.ph61, label %.preheader1

.lr.ph61:                                         ; preds = %.preheader5
  %i.ab = mul i32 %i.b, %3
  %i.ac = sext i32 %i.ab to i64                   ; 4 uses
  %i.ad = icmp ne i32 %i.b, 4                     ; 2 uses
  %i.ae = icmp slt i32 %4, 1                      ; 2 uses
  %i.af = icmp eq i32 %i.b, 1
  %.idx = shl i64 %i.k, 2
  %.idx193 = mul i64 %i.k, 6
  %i.ag = icmp sgt i32 %4, 3
  br i1 %i.af, label %.lr.ph61.split.us.preheader, label %.lr.ph61.split

.lr.ph61.split.us.preheader:                      ; preds = %.lr.ph61
  %i.ah = and i32 %4, -4
  %i.ai = zext i32 %.0167.lcssa to i64            ; 2 uses
  %i.aj = sext i32 %1 to i64                      ; 2 uses
  %i.ak = sext i32 %2 to i64
  %brmerge = or i1 %i.ad, %i.ae
  %invariant.op189 = add nsw i64 %i.ak, -3
  %i.al = add nsw i64 %i.aj, %i.ai
  %i.am = mul i64 %i.k, %i.al
  %i.an = mul i64 %i.am, -2
  %i.ao = shl nsw i64 %i.ac, 1
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = mul i64 %i.k, -8
  %i.ar = zext i32 %4 to i64                      ; 5 uses
  %min.iters.check302 = icmp ult i32 %4, 4
  %min.iters.check304 = icmp ult i32 %4, 16
  %i.as = and i64 %i.ar, 12
  %n.vec306 = and i64 %i.ar, 2147483632           ; 5 uses
  %i.at = shl nuw nsw i64 %n.vec306, 3            ; 2 uses
  %i.au = trunc nuw nsw i64 %n.vec306 to i32
  %cmp.n317 = icmp eq i64 %n.vec306, %i.ar
  %min.epilog.iters.check324 = icmp eq i64 %i.as, 0
  %n.vec326 = and i64 %i.ar, 2147483644           ; 4 uses
  %i.av = shl nuw nsw i64 %n.vec326, 3            ; 2 uses
  %i.aw = trunc nuw nsw i64 %n.vec326 to i32
  %cmp.n334 = icmp eq i64 %n.vec326, %i.ar
  br label %.lr.ph61.split.us

.lr.ph61.split.us:                                ; preds = %.lr.ph61.split.us.preheader, %.loopexit.us
  %indvar299 = phi i64 [ 0, %.lr.ph61.split.us.preheader ], [ %indvar.next300, %.loopexit.us ] ; 2 uses
  %indvars.iv149 = phi i64 [ %i.ai, %.lr.ph61.split.us.preheader ], [ %indvars.iv.next150, %.loopexit.us ] ; 2 uses
  %.760.us = phi ptr [ %.0166.lcssa, %.lr.ph61.split.us.preheader ], [ %.11.lcssa.us, %.loopexit.us ] ; 8 uses
  %.760.us298 = ptrtoaddr ptr %.760.us to i64
  %i.ax = mul i64 %i.aq, %indvar299
  %i.ay = add i64 %i.ap, %i.ax
  %i.az = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.ba = ptrtoaddr ptr %i.az to i64
  %i.bb = add nsw i64 %indvars.iv149, %i.aj
  %i.bc = mul i64 %i.k, %i.bb
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.bc
  %i.be = getelementptr inbounds [2 x i8], ptr %i.bd, i64 %i.ac ; 7 uses
  br i1 %brmerge, label %.loopexit4.us, label %iter.check321

iter.check321:                                    ; preds = %.lr.ph61.split.us
  br i1 %min.iters.check302, label %.lr.ph35.us.preheader, label %vector.memcheck297

vector.memcheck297:                               ; preds = %iter.check321
  %i.bf = add i64 %i.ay, %.760.us298
  %i.bg = sub i64 %i.ba, %i.bf
  %diff.check301 = icmp ugt i64 %i.bg, -128
  br i1 %diff.check301, label %.lr.ph35.us.preheader, label %vector.main.loop.iter.check303

vector.main.loop.iter.check303:                   ; preds = %vector.memcheck297
  br i1 %min.iters.check304, label %vec.epilog.ph325, label %vector.ph305

vector.ph305:                                     ; preds = %vector.main.loop.iter.check303
  %i.bh = getelementptr i8, ptr %.760.us, i64 %i.at ; 2 uses
  %i.bi = getelementptr i8, ptr %i.be, i64 %i.at  ; 2 uses
  br label %vector.body307

vector.body307:                                   ; preds = %vector.body307, %vector.ph305
  %index308 = phi i64 [ 0, %vector.ph305 ], [ %index.next315, %vector.body307 ] ; 2 uses
  %i.bj = shl i64 %index308, 3                    ; 2 uses
  %next.gep309 = getelementptr i8, ptr %.760.us, i64 %i.bj ; 4 uses
  %next.gep310 = getelementptr i8, ptr %i.be, i64 %i.bj ; 4 uses
  %i.bk = getelementptr i8, ptr %next.gep310, i64 32
  %i.bl = getelementptr i8, ptr %next.gep310, i64 64
  %i.bm = getelementptr i8, ptr %next.gep310, i64 96
  %wide.load311 = load <4 x i64>, ptr %next.gep310, align 1, !tbaa !116
  %wide.load312 = load <4 x i64>, ptr %i.bk, align 1, !tbaa !116
  %wide.load313 = load <4 x i64>, ptr %i.bl, align 1, !tbaa !116
  %wide.load314 = load <4 x i64>, ptr %i.bm, align 1, !tbaa !116
  %i.bn = getelementptr i8, ptr %next.gep309, i64 32
  %i.bo = getelementptr i8, ptr %next.gep309, i64 64
  %i.bp = getelementptr i8, ptr %next.gep309, i64 96
  store <4 x i64> %wide.load311, ptr %next.gep309, align 1, !tbaa !116
  store <4 x i64> %wide.load312, ptr %i.bn, align 1, !tbaa !116
  store <4 x i64> %wide.load313, ptr %i.bo, align 1, !tbaa !116
  store <4 x i64> %wide.load314, ptr %i.bp, align 1, !tbaa !116
  %index.next315 = add nuw i64 %index308, 16      ; 2 uses
  %i.bq = icmp eq i64 %index.next315, %n.vec306
  br i1 %i.bq, label %middle.block316, label %vector.body307, !llvm.loop !1054

middle.block316:                                  ; preds = %vector.body307
  br i1 %cmp.n317, label %.loopexit4.us, label %vec.epilog.iter.check323

vec.epilog.iter.check323:                         ; preds = %middle.block316
  br i1 %min.epilog.iters.check324, label %.lr.ph35.us.preheader, label %vec.epilog.ph325, !prof !564

vec.epilog.ph325:                                 ; preds = %vector.main.loop.iter.check303, %vec.epilog.iter.check323
  %vec.epilog.resume.val318 = phi i64 [ %n.vec306, %vec.epilog.iter.check323 ], [ 0, %vector.main.loop.iter.check303 ]
  %i.br = getelementptr i8, ptr %.760.us, i64 %i.av ; 2 uses
  %i.bs = getelementptr i8, ptr %i.be, i64 %i.av  ; 2 uses
  br label %vec.epilog.vector.body327

vec.epilog.vector.body327:                        ; preds = %vec.epilog.vector.body327, %vec.epilog.ph325
  %index328 = phi i64 [ %vec.epilog.resume.val318, %vec.epilog.ph325 ], [ %index.next332, %vec.epilog.vector.body327 ] ; 2 uses
  %i.bt = shl i64 %index328, 3                    ; 2 uses
  %next.gep329 = getelementptr i8, ptr %.760.us, i64 %i.bt
  %next.gep330 = getelementptr i8, ptr %i.be, i64 %i.bt
  %wide.load331 = load <4 x i64>, ptr %next.gep330, align 1, !tbaa !116
  store <4 x i64> %wide.load331, ptr %next.gep329, align 1, !tbaa !116
  %index.next332 = add nuw i64 %index328, 4       ; 2 uses
  %i.bu = icmp eq i64 %index.next332, %n.vec326
  br i1 %i.bu, label %vec.epilog.middle.block333, label %vec.epilog.vector.body327, !llvm.loop !1055

vec.epilog.middle.block333:                       ; preds = %vec.epilog.vector.body327
  br i1 %cmp.n334, label %.loopexit4.us, label %.lr.ph35.us.preheader

.lr.ph35.us.preheader:                            ; preds = %vector.memcheck297, %iter.check321, %vec.epilog.iter.check323, %vec.epilog.middle.block333
  %.834.us.ph = phi ptr [ %.760.us, %iter.check321 ], [ %.760.us, %vector.memcheck297 ], [ %i.bh, %vec.epilog.iter.check323 ], [ %i.br, %vec.epilog.middle.block333 ] ; 2 uses
  %.018533.us.ph = phi i32 [ 0, %iter.check321 ], [ 0, %vector.memcheck297 ], [ %i.au, %vec.epilog.iter.check323 ], [ %i.aw, %vec.epilog.middle.block333 ] ; 4 uses
  %.018632.us.ph = phi ptr [ %i.be, %iter.check321 ], [ %i.be, %vector.memcheck297 ], [ %i.bi, %vec.epilog.iter.check323 ], [ %i.bs, %vec.epilog.middle.block333 ] ; 2 uses
  %i.bv = sub i32 %4, %.018533.us.ph
  %xtraiter459 = and i32 %i.bv, 7                 ; 2 uses
  %lcmp.mod460.not = icmp eq i32 %xtraiter459, 0
  br i1 %lcmp.mod460.not, label %.lr.ph35.us.prol.loopexit, label %.lr.ph35.us.prol

.lr.ph35.us.prol:                                 ; preds = %.lr.ph35.us.preheader, %.lr.ph35.us.prol
  %.834.us.prol = phi ptr [ %i.bx, %.lr.ph35.us.prol ], [ %.834.us.ph, %.lr.ph35.us.preheader ] ; 2 uses
  %.018533.us.prol = phi i32 [ %i.bz, %.lr.ph35.us.prol ], [ %.018533.us.ph, %.lr.ph35.us.preheader ]
  %.018632.us.prol = phi ptr [ %i.by, %.lr.ph35.us.prol ], [ %.018632.us.ph, %.lr.ph35.us.preheader ] ; 2 uses
  %prol.iter461 = phi i32 [ %prol.iter461.next, %.lr.ph35.us.prol ], [ 0, %.lr.ph35.us.preheader ]
end_hunk_15
begin_hunk_16_@_ZN4ncnnL16pack_A_tile_bf16ERKNS_3MatERS0_iiii:bb.a
  br i1 %exitcond152.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !1096

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block369
  %.lcssa193 = phi ptr [ %i.qb, %middle.block369 ], [ %.lcssa433.unr, %scalar.ph.prol.loopexit ], [ %i.rn, %scalar.ph ] ; 2 uses
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 2 ; 3 uses
  %i.rr = icmp slt i64 %indvars.iv.next154, %invariant.op190
  br i1 %i.rr, label %.lr.ph87.us, label %.preheader.loopexit, !llvm.loop !1097

.preheader.loopexit:                              ; preds = %._crit_edge.us
  %i.rs = trunc nsw i64 %indvars.iv.next154 to i32
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph91.split.preheader, %.preheader.loopexit, %.preheader1
  %.2169.lcssa = phi i32 [ %.1168.lcssa, %.preheader1 ], [ %i.rs, %.preheader.loopexit ], [ %i.oj, %.lr.ph91.split.preheader ] ; 2 uses
  %.13.lcssa = phi ptr [ %.7.lcssa, %.preheader1 ], [ %.lcssa193, %.preheader.loopexit ], [ %.7.lcssa, %.lr.ph91.split.preheader ]
  %i.rt = icmp slt i32 %.2169.lcssa, %2
  br i1 %i.rt, label %.lr.ph103, label %._crit_edge104.split

.lr.ph103:                                        ; preds = %.preheader
  %i.ru = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.rv = sext i32 %3 to i64                      ; 2 uses
  %invariant.gep105 = getelementptr [2 x i8], ptr %i.ru, i64 %i.rv
  %i.rw = icmp sgt i32 %4, 0
  br i1 %i.rw, label %.lr.ph99.preheader, label %._crit_edge104.split

.lr.ph99.preheader:                               ; preds = %.lr.ph103
  %i.rx = ptrtoaddr ptr %i.ru to i64
  %i.ry = sext i32 %.2169.lcssa to i64            ; 2 uses
  %i.rz = sext i32 %1 to i64                      ; 2 uses
  %wide.trip.count = sext i32 %2 to i64
  %i.sa = add nsw i64 %i.ry, %i.rz
  %i.sb = mul i64 %i.k, %i.sa
  %i.sc = add i64 %i.sb, %i.rv
  %.neg = mul i64 %i.sc, -2
  %.neg423 = sub i64 %.neg, %i.rx
  %i.sd = mul i64 %i.k, -2
  %i.se = zext nneg i32 %4 to i64                 ; 5 uses
  %min.iters.check380 = icmp ult i32 %4, 8
  %min.iters.check382 = icmp ult i32 %4, 64
  %i.sf = and i64 %i.se, 56
  %n.vec384 = and i64 %i.se, 2147483584           ; 5 uses
  %i.sg = trunc nuw nsw i64 %n.vec384 to i32
  %i.sh = shl nuw nsw i64 %n.vec384, 1            ; 2 uses
  %cmp.n395 = icmp eq i64 %n.vec384, %i.se
  %min.epilog.iters.check403 = icmp eq i64 %i.sf, 0
  %n.vec405 = and i64 %i.se, 2147483640           ; 4 uses
  %i.si = trunc nuw nsw i64 %n.vec405 to i32
  %i.sj = shl nuw nsw i64 %n.vec405, 1            ; 2 uses
  %cmp.n413 = icmp eq i64 %n.vec405, %i.se
  br label %iter.check400

iter.check400:                                    ; preds = %.lr.ph99.preheader, %._crit_edge
  %indvar376 = phi i64 [ 0, %.lr.ph99.preheader ], [ %indvar.next377, %._crit_edge ] ; 2 uses
  %indvars.iv158 = phi i64 [ %i.ry, %.lr.ph99.preheader ], [ %indvars.iv.next159, %._crit_edge ] ; 2 uses
  %.15102 = phi ptr [ %.13.lcssa, %.lr.ph99.preheader ], [ %.lcssa, %._crit_edge ] ; 7 uses
  %i.sk = add nsw i64 %indvars.iv158, %i.rz
  %i.sl = mul i64 %i.k, %i.sk
  %gep = getelementptr [2 x i8], ptr %invariant.gep105, i64 %i.sl ; 6 uses
  br i1 %min.iters.check380, label %vec.epilog.scalar.ph401.preheader, label %vector.memcheck374

vector.memcheck374:                               ; preds = %iter.check400
  %i.sm = mul i64 %i.sd, %indvar376
  %i.sn = add i64 %.neg423, %i.sm
  %.15102375 = ptrtoaddr ptr %.15102 to i64
  %i.so = add i64 %i.sn, %.15102375
  %i.sp = add i64 %i.so, -1
  %diff.check378 = icmp ult i64 %i.sp, 127
  br i1 %diff.check378, label %vec.epilog.scalar.ph401.preheader, label %vector.main.loop.iter.check381

vector.main.loop.iter.check381:                   ; preds = %vector.memcheck374
  br i1 %min.iters.check382, label %vec.epilog.ph404, label %vector.ph383

vector.ph383:                                     ; preds = %vector.main.loop.iter.check381
  %i.sq = getelementptr i8, ptr %gep, i64 %i.sh
  %i.sr = getelementptr i8, ptr %.15102, i64 %i.sh ; 2 uses
  br label %vector.body385

vector.body385:                                   ; preds = %vector.body385, %vector.ph383
  %index386 = phi i64 [ 0, %vector.ph383 ], [ %index.next393, %vector.body385 ] ; 2 uses
  %i.ss = shl i64 %index386, 1                    ; 2 uses
  %next.gep387 = getelementptr i8, ptr %gep, i64 %i.ss ; 4 uses
  %next.gep388 = getelementptr i8, ptr %.15102, i64 %i.ss ; 4 uses
  %i.st = getelementptr i8, ptr %next.gep387, i64 32
  %i.su = getelementptr i8, ptr %next.gep387, i64 64
  %i.sv = getelementptr i8, ptr %next.gep387, i64 96
  %wide.load389 = load <16 x i16>, ptr %next.gep387, align 2, !tbaa !685
  %wide.load390 = load <16 x i16>, ptr %i.st, align 2, !tbaa !685
  %wide.load391 = load <16 x i16>, ptr %i.su, align 2, !tbaa !685
  %wide.load392 = load <16 x i16>, ptr %i.sv, align 2, !tbaa !685
  %i.sw = getelementptr i8, ptr %next.gep388, i64 32
  %i.sx = getelementptr i8, ptr %next.gep388, i64 64
  %i.sy = getelementptr i8, ptr %next.gep388, i64 96
  store <16 x i16> %wide.load389, ptr %next.gep388, align 2, !tbaa !685
  store <16 x i16> %wide.load390, ptr %i.sw, align 2, !tbaa !685
  store <16 x i16> %wide.load391, ptr %i.sx, align 2, !tbaa !685
  store <16 x i16> %wide.load392, ptr %i.sy, align 2, !tbaa !685
  %index.next393 = add nuw i64 %index386, 64      ; 2 uses
  %i.sz = icmp eq i64 %index.next393, %n.vec384
  br i1 %i.sz, label %middle.block394, label %vector.body385, !llvm.loop !1098

middle.block394:                                  ; preds = %vector.body385
  br i1 %cmp.n395, label %._crit_edge, label %vec.epilog.iter.check402

vec.epilog.iter.check402:                         ; preds = %middle.block394
  br i1 %min.epilog.iters.check403, label %vec.epilog.scalar.ph401.preheader, label %vec.epilog.ph404, !prof !1099

vec.epilog.ph404:                                 ; preds = %vector.main.loop.iter.check381, %vec.epilog.iter.check402
  %vec.epilog.resume.val396 = phi i64 [ %n.vec384, %vec.epilog.iter.check402 ], [ 0, %vector.main.loop.iter.check381 ]
  %i.ta = getelementptr i8, ptr %gep, i64 %i.sj
  %i.tb = getelementptr i8, ptr %.15102, i64 %i.sj ; 2 uses
  br label %vec.epilog.vector.body406

vec.epilog.vector.body406:                        ; preds = %vec.epilog.vector.body406, %vec.epilog.ph404
  %index407 = phi i64 [ %vec.epilog.resume.val396, %vec.epilog.ph404 ], [ %index.next411, %vec.epilog.vector.body406 ] ; 2 uses
  %i.tc = shl i64 %index407, 1                    ; 2 uses
  %next.gep408 = getelementptr i8, ptr %gep, i64 %i.tc
  %next.gep409 = getelementptr i8, ptr %.15102, i64 %i.tc
  %wide.load410 = load <8 x i16>, ptr %next.gep408, align 2, !tbaa !685
  store <8 x i16> %wide.load410, ptr %next.gep409, align 2, !tbaa !685
  %index.next411 = add nuw i64 %index407, 8       ; 2 uses
  %i.td = icmp eq i64 %index.next411, %n.vec405
  br i1 %i.td, label %vec.epilog.middle.block412, label %vec.epilog.vector.body406, !llvm.loop !1100

vec.epilog.middle.block412:                       ; preds = %vec.epilog.vector.body406
  br i1 %cmp.n413, label %._crit_edge, label %vec.epilog.scalar.ph401.preheader

vec.epilog.scalar.ph401.preheader:                ; preds = %vector.memcheck374, %iter.check400, %vec.epilog.iter.check402, %vec.epilog.middle.block412
  %.098.ph = phi i32 [ 0, %iter.check400 ], [ 0, %vector.memcheck374 ], [ %i.sg, %vec.epilog.iter.check402 ], [ %i.si, %vec.epilog.middle.block412 ] ; 4 uses
  %.016297.ph = phi ptr [ %gep, %iter.check400 ], [ %gep, %vector.memcheck374 ], [ %i.sq, %vec.epilog.iter.check402 ], [ %i.ta, %vec.epilog.middle.block412 ] ; 2 uses
  %.1696.ph = phi ptr [ %.15102, %iter.check400 ], [ %.15102, %vector.memcheck374 ], [ %i.sr, %vec.epilog.iter.check402 ], [ %i.tb, %vec.epilog.middle.block412 ] ; 2 uses
  %i.te = sub i32 %4, %.098.ph
  %xtraiter468 = and i32 %i.te, 7                 ; 2 uses
  %lcmp.mod469.not = icmp eq i32 %xtraiter468, 0
  br i1 %lcmp.mod469.not, label %vec.epilog.scalar.ph401.prol.loopexit, label %vec.epilog.scalar.ph401.prol

vec.epilog.scalar.ph401.prol:                     ; preds = %vec.epilog.scalar.ph401.preheader, %vec.epilog.scalar.ph401.prol
  %.098.prol = phi i32 [ %i.ti, %vec.epilog.scalar.ph401.prol ], [ %.098.ph, %vec.epilog.scalar.ph401.preheader ]
  %.016297.prol = phi ptr [ %i.th, %vec.epilog.scalar.ph401.prol ], [ %.016297.ph, %vec.epilog.scalar.ph401.preheader ] ; 2 uses
  %.1696.prol = phi ptr [ %i.tg, %vec.epilog.scalar.ph401.prol ], [ %.1696.ph, %vec.epilog.scalar.ph401.preheader ] ; 2 uses
  %prol.iter470 = phi i32 [ %prol.iter470.next, %vec.epilog.scalar.ph401.prol ], [ 0, %vec.epilog.scalar.ph401.preheader ]
  %i.tf = load i16, ptr %.016297.prol, align 2, !tbaa !685
  store i16 %i.tf, ptr %.1696.prol, align 2, !tbaa !685
  %i.tg = getelementptr inbounds nuw i8, ptr %.1696.prol, i64 2 ; 3 uses
  %i.th = getelementptr inbounds nuw i8, ptr %.016297.prol, i64 2 ; 2 uses
  %i.ti = add nuw nsw i32 %.098.prol, 1           ; 2 uses
  %prol.iter470.next = add i32 %prol.iter470, 1   ; 2 uses
  %prol.iter470.cmp.not = icmp eq i32 %prol.iter470.next, %xtraiter468
  br i1 %prol.iter470.cmp.not, label %vec.epilog.scalar.ph401.prol.loopexit, label %vec.epilog.scalar.ph401.prol, !llvm.loop !1101

vec.epilog.scalar.ph401.prol.loopexit:            ; preds = %vec.epilog.scalar.ph401.prol, %vec.epilog.scalar.ph401.preheader
  %.lcssa432.unr = phi ptr [ poison, %vec.epilog.scalar.ph401.preheader ], [ %i.tg, %vec.epilog.scalar.ph401.prol ]
  %.098.unr = phi i32 [ %.098.ph, %vec.epilog.scalar.ph401.preheader ], [ %i.ti, %vec.epilog.scalar.ph401.prol ]
  %.016297.unr = phi ptr [ %.016297.ph, %vec.epilog.scalar.ph401.preheader ], [ %i.th, %vec.epilog.scalar.ph401.prol ]
  %.1696.unr = phi ptr [ %.1696.ph, %vec.epilog.scalar.ph401.preheader ], [ %i.tg, %vec.epilog.scalar.ph401.prol ]
  %i.tj = sub i32 %.098.ph, %4
  %i.tk = icmp ugt i32 %i.tj, -8
  br i1 %i.tk, label %._crit_edge, label %vec.epilog.scalar.ph401

vec.epilog.scalar.ph401:                          ; preds = %vec.epilog.scalar.ph401.prol.loopexit, %vec.epilog.scalar.ph401
  %.098 = phi i32 [ %i.uj, %vec.epilog.scalar.ph401 ], [ %.098.unr, %vec.epilog.scalar.ph401.prol.loopexit ]
  %.016297 = phi ptr [ %i.ui, %vec.epilog.scalar.ph401 ], [ %.016297.unr, %vec.epilog.scalar.ph401.prol.loopexit ] ; 9 uses
  %.1696 = phi ptr [ %i.uh, %vec.epilog.scalar.ph401 ], [ %.1696.unr, %vec.epilog.scalar.ph401.prol.loopexit ] ; 9 uses
  %i.tl = load i16, ptr %.016297, align 2, !tbaa !685
  store i16 %i.tl, ptr %.1696, align 2, !tbaa !685
  %i.tm = getelementptr inbounds nuw i8, ptr %.1696, i64 2
  %i.tn = getelementptr inbounds nuw i8, ptr %.016297, i64 2
  %i.to = load i16, ptr %i.tn, align 2, !tbaa !685
  store i16 %i.to, ptr %i.tm, align 2, !tbaa !685
  %i.tp = getelementptr inbounds nuw i8, ptr %.1696, i64 4
  %i.tq = getelementptr inbounds nuw i8, ptr %.016297, i64 4
  %i.tr = load i16, ptr %i.tq, align 2, !tbaa !685
  store i16 %i.tr, ptr %i.tp, align 2, !tbaa !685
  %i.ts = getelementptr inbounds nuw i8, ptr %.1696, i64 6
  %i.tt = getelementptr inbounds nuw i8, ptr %.016297, i64 6
  %i.tu = load i16, ptr %i.tt, align 2, !tbaa !685
  store i16 %i.tu, ptr %i.ts, align 2, !tbaa !685
  %i.tv = getelementptr inbounds nuw i8, ptr %.1696, i64 8
  %i.tw = getelementptr inbounds nuw i8, ptr %.016297, i64 8
  %i.tx = load i16, ptr %i.tw, align 2, !tbaa !685
  store i16 %i.tx, ptr %i.tv, align 2, !tbaa !685
  %i.ty = getelementptr inbounds nuw i8, ptr %.1696, i64 10
  %i.tz = getelementptr inbounds nuw i8, ptr %.016297, i64 10
  %i.ua = load i16, ptr %i.tz, align 2, !tbaa !685
  store i16 %i.ua, ptr %i.ty, align 2, !tbaa !685
  %i.ub = getelementptr inbounds nuw i8, ptr %.1696, i64 12
  %i.uc = getelementptr inbounds nuw i8, ptr %.016297, i64 12
  %i.ud = load i16, ptr %i.uc, align 2, !tbaa !685
  store i16 %i.ud, ptr %i.ub, align 2, !tbaa !685
  %i.ue = getelementptr inbounds nuw i8, ptr %.1696, i64 14
  %i.uf = getelementptr inbounds nuw i8, ptr %.016297, i64 14
  %i.ug = load i16, ptr %i.uf, align 2, !tbaa !685
  store i16 %i.ug, ptr %i.ue, align 2, !tbaa !685
  %i.uh = getelementptr inbounds nuw i8, ptr %.1696, i64 16 ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %.016297, i64 16
  %i.uj = add nuw nsw i32 %.098, 8                ; 2 uses
  %exitcond157.not.7 = icmp eq i32 %i.uj, %4
  br i1 %exitcond157.not.7, label %._crit_edge, label %vec.epilog.scalar.ph401, !llvm.loop !1102

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph401.prol.loopexit, %vec.epilog.scalar.ph401, %vec.epilog.middle.block412, %middle.block394
  %.lcssa = phi ptr [ %i.tb, %vec.epilog.middle.block412 ], [ %i.sr, %middle.block394 ], [ %.lcssa432.unr, %vec.epilog.scalar.ph401.prol.loopexit ], [ %i.uh, %vec.epilog.scalar.ph401 ]
  %indvars.iv.next159 = add nsw i64 %indvars.iv158, 1 ; 2 uses
  %exitcond161.not = icmp eq i64 %indvars.iv.next159, %wide.trip.count
  %indvar.next377 = add i64 %indvar376, 1
  br i1 %exitcond161.not, label %._crit_edge104.split, label %iter.check400, !llvm.loop !1103

._crit_edge104.split:                             ; preds = %._crit_edge, %.lr.ph103, %.preheader
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnn12Gemm_x86_avx21create_pipeline_bf16sERKNS_6OptionE.omp_outlined.18(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !45
  %i.h = load i32, ptr %0, align 4, !tbaa !45     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !45
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !45
  %i.k = load i32, ptr %i.a, align 4, !tbaa !45   ; 2 uses
  %.not68 = icmp sgt i32 %i.k, %i.j
  br i1 %.not68, label %._crit_edge, label %.noexc42.lr.ph

.noexc42.lr.ph:                                   ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 656
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 700
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 720
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 672
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 220
  br label %.noexc42

.noexc42:                                         ; preds = %.noexc42.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.069 = phi i32 [ %i.k, %.noexc42.lr.ph ], [ %i.ap, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.q = load i32, ptr %3, align 4, !tbaa !45     ; 2 uses
  %i.r = sdiv i32 %.069, %i.q                     ; 2 uses
  %i.s = srem i32 %.069, %i.q                     ; 2 uses
  %i.t = load i32, ptr %4, align 4, !tbaa !45     ; 2 uses
  %i.u = mul nsw i32 %i.t, %i.r                   ; 3 uses
  %i.v = load i32, ptr %5, align 4, !tbaa !45     ; 2 uses
  %i.w = mul nsw i32 %i.v, %i.s                   ; 3 uses
  %i.x = load i32, ptr %6, align 4, !tbaa !45
  %i.y = sub nsw i32 %i.x, %i.u
  %.sroa.speculated65 = call i32 @llvm.smin.i32(i32 %i.t, i32 %i.y) ; 2 uses
  %i.z = load i32, ptr %7, align 4, !tbaa !45
  %i.aa = sub nsw i32 %i.z, %i.w
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.v, i32 %i.aa) ; 2 uses
  %i.ab = load i32, ptr %i.m, align 4, !tbaa !88, !noalias !1104
  %i.ac = load ptr, ptr %i.l, align 8, !tbaa !18, !noalias !1104
  %i.ad = load i64, ptr %i.n, align 8, !tbaa !20, !noalias !1104
  %i.ae = sext i32 %i.r to i64
  %i.af = mul i64 %i.ad, %i.ae
  %i.ag = load i64, ptr %i.o, align 8, !tbaa !59, !noalias !1104 ; 2 uses
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ah
  %i.aj = sext i32 %i.ab to i64
  %i.ak = sext i32 %i.s to i64
  %i.al = mul nsw i64 %i.aj, %i.ak
  %i.am = mul i64 %i.al, %i.ag
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.p, align 4, !tbaa !86
  %.not33 = icmp eq i32 %i.ao, 0
  br i1 %.not33, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc42
  call fastcc void @_ZN4ncnnL16pack_B_tile_bf16ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr %i.an, i32 noundef %i.u, i32 noundef %.sroa.speculated65, i32 noundef %i.w, i32 noundef %.sroa.speculated)
  br label %_ZN4ncnn3MatD2Ev.exit

bb.d:                                             ; preds = %.noexc42
  call fastcc void @_ZN4ncnnL26transpose_pack_B_tile_bf16ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr %i.an, i32 noundef %i.u, i32 noundef %.sroa.speculated65, i32 noundef %i.w, i32 noundef %.sroa.speculated)
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.d, %bb.c
  %i.ap = add nsw i32 %.069, 1
  %i.aq = load i32, ptr %i.b, align 4, !tbaa !45
  %.not.not = icmp slt i32 %.069, %i.aq
  br i1 %.not.not, label %.noexc42, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL16pack_B_tile_bf16ERKNS_3MatERS0_iiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree writeonly captures(none) %.0.val, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !87
  %i.e = icmp eq i32 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load i32, ptr %i.h, align 4
  %i.j = sext i32 %i.i to i64
  %i.k = select i1 %i.e, i64 %i.g, i64 %i.j       ; 28 uses
  %i.l = icmp sgt i32 %2, 7
  br i1 %i.l, label %.lr.ph28, label %.preheader4

.lr.ph28:                                         ; preds = %bb.a
  %i.m = mul nsw i32 %i.b, %3
  %i.n = sext i32 %i.m to i64
  %i.o = icmp ne i32 %i.b, 8
  %i.p = icmp slt i32 %4, 1                       ; 2 uses
  %i.q = icmp eq i32 %i.b, 4
  %.idx165 = shl i64 %i.k, 3                      ; 2 uses
  %i.r = icmp sgt i32 %4, 0
  %i.s = icmp ne i32 %i.b, 1
  %.idx166 = shl i64 %i.k, 2
  %.idx167 = mul i64 %i.k, 6
  %.idx169 = mul i64 %i.k, 10
  %.idx170 = mul i64 %i.k, 12
  %.idx171 = mul i64 %i.k, 14
  %i.t = zext nneg i32 %2 to i64
  %i.u = sext i32 %1 to i64
  %brmerge95 = or i1 %i.o, %i.p
  %brmerge98 = or i1 %i.s, %i.p
  %i.v = add i32 %4, -1                           ; 2 uses
  %xtraiter = and i32 %4, 7                       ; 3 uses
  %i.w = icmp ult i32 %i.v, 7
  %unroll_iter = and i32 %4, 2147483640
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod412 = icmp ne i32 %xtraiter, 0
  %xtraiter413 = and i32 %4, 3                    ; 3 uses
  %i.x = icmp ult i32 %i.v, 3
  %unroll_iter418 = and i32 %4, 2147483644
  %lcmp.mod415.not = icmp eq i32 %xtraiter413, 0
  %lcmp.mod417 = icmp ne i32 %xtraiter413, 0
  br label %bb.b

.preheader4.loopexit:                             ; preds = %.loopexit6
  %i.y = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader4.loopexit, %bb.a
  %.0159.lcssa = phi ptr [ %.0.val, %bb.a ], [ %.6, %.preheader4.loopexit ] ; 5 uses
  %.0155.lcssa = phi i32 [ 0, %bb.a ], [ %i.y, %.preheader4.loopexit ] ; 8 uses
  %i.z = or disjoint i32 %.0155.lcssa, 3
  %i.aa = icmp slt i32 %i.z, %2
  br i1 %i.aa, label %.lr.ph47, label %.preheader1

.lr.ph47:                                         ; preds = %.preheader4
  %i.ab = mul i32 %i.b, %3
  %i.ac = sext i32 %i.ab to i64                   ; 4 uses
  %i.ad = icmp ne i32 %i.b, 4                     ; 2 uses
  %i.ae = icmp slt i32 %4, 1                      ; 2 uses
  %i.af = icmp eq i32 %i.b, 1
  %.idx = shl i64 %i.k, 2                         ; 2 uses
  %.idx164 = mul i64 %i.k, 6                      ; 2 uses
  %i.ag = icmp sgt i32 %4, 0
  br i1 %i.af, label %.lr.ph47.split.us.preheader, label %.lr.ph47.split

.lr.ph47.split.us.preheader:                      ; preds = %.lr.ph47
  %i.ah = zext i32 %.0155.lcssa to i64            ; 2 uses
  %i.ai = sext i32 %1 to i64                      ; 2 uses
  %i.aj = sext i32 %2 to i64
  %brmerge = or i1 %i.ad, %i.ae
  %invariant.op167 = add nsw i64 %i.aj, -3
  %i.ak = add i32 %4, -1
  %i.al = zext i32 %i.ak to i64                   ; 3 uses
  %i.am = shl nuw nsw i64 %i.al, 3
  %i.an = shl nuw nsw i64 %i.al, 1                ; 3 uses
  %i.ao = add i64 %i.k, %i.al
  %i.ap = shl i64 %i.ao, 1
  %i.aq = add i32 %4, -1                          ; 3 uses
  %i.ar = zext i32 %i.aq to i64
  %i.as = add nuw nsw i64 %i.ar, 1                ; 5 uses
  %i.at = add nsw i64 %i.ai, %i.ah
  %i.au = mul i64 %i.k, %i.at
  %i.av = mul i64 %i.au, -2
  %i.aw = shl nsw i64 %i.ac, 1
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = mul i64 %i.k, -8
  %i.az = zext i32 %4 to i64                      ; 5 uses
  %min.iters.check270 = icmp ult i32 %4, 4
  %min.iters.check272 = icmp ult i32 %4, 16
  %i.ba = and i64 %i.az, 12
  %n.vec274 = and i64 %i.az, 2147483632           ; 5 uses
end_hunk_16
begin_hunk_17_@_ZN4ncnnL16pack_B_tile_bf16ERKNS_3MatERS0_iiii:bb.a
  br i1 %exitcond132.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !1147

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block337
  %.lcssa171 = phi ptr [ %i.pd, %middle.block337 ], [ %.lcssa401.unr, %scalar.ph.prol.loopexit ], [ %i.qp, %scalar.ph ] ; 2 uses
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 2 ; 3 uses
  %i.qt = icmp slt i64 %indvars.iv.next134, %invariant.op168
  br i1 %i.qt, label %.lr.ph73.us, label %.preheader.loopexit, !llvm.loop !1148

.preheader.loopexit:                              ; preds = %._crit_edge.us
  %i.qu = trunc nsw i64 %indvars.iv.next134 to i32
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph77.split.preheader, %.preheader.loopexit, %.preheader1
  %.12.lcssa = phi ptr [ %.7.lcssa, %.preheader1 ], [ %.lcssa171, %.preheader.loopexit ], [ %.7.lcssa, %.lr.ph77.split.preheader ]
  %.2157.lcssa = phi i32 [ %.1156.lcssa, %.preheader1 ], [ %i.qu, %.preheader.loopexit ], [ %i.nl, %.lr.ph77.split.preheader ] ; 2 uses
  %i.qv = icmp slt i32 %.2157.lcssa, %2
  br i1 %i.qv, label %.lr.ph89, label %._crit_edge90.split

.lr.ph89:                                         ; preds = %.preheader
  %i.qw = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.qx = sext i32 %3 to i64                      ; 2 uses
  %invariant.gep91 = getelementptr [2 x i8], ptr %i.qw, i64 %i.qx
  %i.qy = icmp sgt i32 %4, 0
  br i1 %i.qy, label %.lr.ph85.preheader, label %._crit_edge90.split

.lr.ph85.preheader:                               ; preds = %.lr.ph89
  %i.qz = ptrtoaddr ptr %i.qw to i64
  %i.ra = sext i32 %.2157.lcssa to i64            ; 2 uses
  %i.rb = sext i32 %1 to i64                      ; 2 uses
  %wide.trip.count = sext i32 %2 to i64
  %i.rc = add nsw i64 %i.ra, %i.rb
  %i.rd = mul i64 %i.k, %i.rc
  %i.re = add i64 %i.rd, %i.qx
  %.neg = mul i64 %i.re, -2
  %.neg391 = sub i64 %.neg, %i.qz
  %i.rf = mul i64 %i.k, -2
  %i.rg = zext nneg i32 %4 to i64                 ; 5 uses
  %min.iters.check348 = icmp ult i32 %4, 8
  %min.iters.check350 = icmp ult i32 %4, 64
  %i.rh = and i64 %i.rg, 56
  %n.vec352 = and i64 %i.rg, 2147483584           ; 5 uses
  %i.ri = trunc nuw nsw i64 %n.vec352 to i32
  %i.rj = shl nuw nsw i64 %n.vec352, 1            ; 2 uses
  %cmp.n363 = icmp eq i64 %n.vec352, %i.rg
  %min.epilog.iters.check371 = icmp eq i64 %i.rh, 0
  %n.vec373 = and i64 %i.rg, 2147483640           ; 4 uses
  %i.rk = trunc nuw nsw i64 %n.vec373 to i32
  %i.rl = shl nuw nsw i64 %n.vec373, 1            ; 2 uses
  %cmp.n381 = icmp eq i64 %n.vec373, %i.rg
  br label %iter.check368

iter.check368:                                    ; preds = %.lr.ph85.preheader, %._crit_edge
  %indvar344 = phi i64 [ 0, %.lr.ph85.preheader ], [ %indvar.next345, %._crit_edge ] ; 2 uses
  %indvars.iv138 = phi i64 [ %i.ra, %.lr.ph85.preheader ], [ %indvars.iv.next139, %._crit_edge ] ; 2 uses
  %.1487 = phi ptr [ %.12.lcssa, %.lr.ph85.preheader ], [ %.lcssa, %._crit_edge ] ; 7 uses
  %i.rm = add nsw i64 %indvars.iv138, %i.rb
  %i.rn = mul i64 %i.k, %i.rm
  %gep = getelementptr [2 x i8], ptr %invariant.gep91, i64 %i.rn ; 6 uses
  br i1 %min.iters.check348, label %vec.epilog.scalar.ph369.preheader, label %vector.memcheck342

vector.memcheck342:                               ; preds = %iter.check368
  %i.ro = mul i64 %i.rf, %indvar344
  %i.rp = add i64 %.neg391, %i.ro
  %.1487343 = ptrtoaddr ptr %.1487 to i64
  %i.rq = add i64 %i.rp, %.1487343
  %i.rr = add i64 %i.rq, -1
  %diff.check346 = icmp ult i64 %i.rr, 127
  br i1 %diff.check346, label %vec.epilog.scalar.ph369.preheader, label %vector.main.loop.iter.check349

vector.main.loop.iter.check349:                   ; preds = %vector.memcheck342
  br i1 %min.iters.check350, label %vec.epilog.ph372, label %vector.ph351

vector.ph351:                                     ; preds = %vector.main.loop.iter.check349
  %i.rs = getelementptr i8, ptr %gep, i64 %i.rj
  %i.rt = getelementptr i8, ptr %.1487, i64 %i.rj ; 2 uses
  br label %vector.body353

vector.body353:                                   ; preds = %vector.body353, %vector.ph351
  %index354 = phi i64 [ 0, %vector.ph351 ], [ %index.next361, %vector.body353 ] ; 2 uses
  %i.ru = shl i64 %index354, 1                    ; 2 uses
  %next.gep355 = getelementptr i8, ptr %gep, i64 %i.ru ; 4 uses
  %next.gep356 = getelementptr i8, ptr %.1487, i64 %i.ru ; 4 uses
  %i.rv = getelementptr i8, ptr %next.gep355, i64 32
  %i.rw = getelementptr i8, ptr %next.gep355, i64 64
  %i.rx = getelementptr i8, ptr %next.gep355, i64 96
  %wide.load357 = load <16 x i16>, ptr %next.gep355, align 2, !tbaa !685
  %wide.load358 = load <16 x i16>, ptr %i.rv, align 2, !tbaa !685
  %wide.load359 = load <16 x i16>, ptr %i.rw, align 2, !tbaa !685
  %wide.load360 = load <16 x i16>, ptr %i.rx, align 2, !tbaa !685
  %i.ry = getelementptr i8, ptr %next.gep356, i64 32
  %i.rz = getelementptr i8, ptr %next.gep356, i64 64
  %i.sa = getelementptr i8, ptr %next.gep356, i64 96
  store <16 x i16> %wide.load357, ptr %next.gep356, align 2, !tbaa !685
  store <16 x i16> %wide.load358, ptr %i.ry, align 2, !tbaa !685
  store <16 x i16> %wide.load359, ptr %i.rz, align 2, !tbaa !685
  store <16 x i16> %wide.load360, ptr %i.sa, align 2, !tbaa !685
  %index.next361 = add nuw i64 %index354, 64      ; 2 uses
  %i.sb = icmp eq i64 %index.next361, %n.vec352
  br i1 %i.sb, label %middle.block362, label %vector.body353, !llvm.loop !1149

middle.block362:                                  ; preds = %vector.body353
  br i1 %cmp.n363, label %._crit_edge, label %vec.epilog.iter.check370

vec.epilog.iter.check370:                         ; preds = %middle.block362
  br i1 %min.epilog.iters.check371, label %vec.epilog.scalar.ph369.preheader, label %vec.epilog.ph372, !prof !1099

vec.epilog.ph372:                                 ; preds = %vector.main.loop.iter.check349, %vec.epilog.iter.check370
  %vec.epilog.resume.val364 = phi i64 [ %n.vec352, %vec.epilog.iter.check370 ], [ 0, %vector.main.loop.iter.check349 ]
  %i.sc = getelementptr i8, ptr %gep, i64 %i.rl
  %i.sd = getelementptr i8, ptr %.1487, i64 %i.rl ; 2 uses
  br label %vec.epilog.vector.body374

vec.epilog.vector.body374:                        ; preds = %vec.epilog.vector.body374, %vec.epilog.ph372
  %index375 = phi i64 [ %vec.epilog.resume.val364, %vec.epilog.ph372 ], [ %index.next379, %vec.epilog.vector.body374 ] ; 2 uses
  %i.se = shl i64 %index375, 1                    ; 2 uses
  %next.gep376 = getelementptr i8, ptr %gep, i64 %i.se
  %next.gep377 = getelementptr i8, ptr %.1487, i64 %i.se
  %wide.load378 = load <8 x i16>, ptr %next.gep376, align 2, !tbaa !685
  store <8 x i16> %wide.load378, ptr %next.gep377, align 2, !tbaa !685
  %index.next379 = add nuw i64 %index375, 8       ; 2 uses
  %i.sf = icmp eq i64 %index.next379, %n.vec373
  br i1 %i.sf, label %vec.epilog.middle.block380, label %vec.epilog.vector.body374, !llvm.loop !1150

vec.epilog.middle.block380:                       ; preds = %vec.epilog.vector.body374
  br i1 %cmp.n381, label %._crit_edge, label %vec.epilog.scalar.ph369.preheader

vec.epilog.scalar.ph369.preheader:                ; preds = %vector.memcheck342, %iter.check368, %vec.epilog.iter.check370, %vec.epilog.middle.block380
  %.084.ph = phi i32 [ 0, %iter.check368 ], [ 0, %vector.memcheck342 ], [ %i.ri, %vec.epilog.iter.check370 ], [ %i.rk, %vec.epilog.middle.block380 ] ; 4 uses
  %.013883.ph = phi ptr [ %gep, %iter.check368 ], [ %gep, %vector.memcheck342 ], [ %i.rs, %vec.epilog.iter.check370 ], [ %i.sc, %vec.epilog.middle.block380 ] ; 2 uses
  %.1582.ph = phi ptr [ %.1487, %iter.check368 ], [ %.1487, %vector.memcheck342 ], [ %i.rt, %vec.epilog.iter.check370 ], [ %i.sd, %vec.epilog.middle.block380 ] ; 2 uses
  %i.sg = sub i32 %4, %.084.ph
  %xtraiter431 = and i32 %i.sg, 7                 ; 2 uses
  %lcmp.mod432.not = icmp eq i32 %xtraiter431, 0
  br i1 %lcmp.mod432.not, label %vec.epilog.scalar.ph369.prol.loopexit, label %vec.epilog.scalar.ph369.prol

vec.epilog.scalar.ph369.prol:                     ; preds = %vec.epilog.scalar.ph369.preheader, %vec.epilog.scalar.ph369.prol
  %.084.prol = phi i32 [ %i.sk, %vec.epilog.scalar.ph369.prol ], [ %.084.ph, %vec.epilog.scalar.ph369.preheader ]
  %.013883.prol = phi ptr [ %i.sj, %vec.epilog.scalar.ph369.prol ], [ %.013883.ph, %vec.epilog.scalar.ph369.preheader ] ; 2 uses
  %.1582.prol = phi ptr [ %i.si, %vec.epilog.scalar.ph369.prol ], [ %.1582.ph, %vec.epilog.scalar.ph369.preheader ] ; 2 uses
  %prol.iter433 = phi i32 [ %prol.iter433.next, %vec.epilog.scalar.ph369.prol ], [ 0, %vec.epilog.scalar.ph369.preheader ]
  %i.sh = load i16, ptr %.013883.prol, align 2, !tbaa !685
  store i16 %i.sh, ptr %.1582.prol, align 2, !tbaa !685
  %i.si = getelementptr inbounds nuw i8, ptr %.1582.prol, i64 2 ; 3 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %.013883.prol, i64 2 ; 2 uses
  %i.sk = add nuw nsw i32 %.084.prol, 1           ; 2 uses
  %prol.iter433.next = add i32 %prol.iter433, 1   ; 2 uses
  %prol.iter433.cmp.not = icmp eq i32 %prol.iter433.next, %xtraiter431
  br i1 %prol.iter433.cmp.not, label %vec.epilog.scalar.ph369.prol.loopexit, label %vec.epilog.scalar.ph369.prol, !llvm.loop !1151

vec.epilog.scalar.ph369.prol.loopexit:            ; preds = %vec.epilog.scalar.ph369.prol, %vec.epilog.scalar.ph369.preheader
  %.lcssa400.unr = phi ptr [ poison, %vec.epilog.scalar.ph369.preheader ], [ %i.si, %vec.epilog.scalar.ph369.prol ]
  %.084.unr = phi i32 [ %.084.ph, %vec.epilog.scalar.ph369.preheader ], [ %i.sk, %vec.epilog.scalar.ph369.prol ]
  %.013883.unr = phi ptr [ %.013883.ph, %vec.epilog.scalar.ph369.preheader ], [ %i.sj, %vec.epilog.scalar.ph369.prol ]
  %.1582.unr = phi ptr [ %.1582.ph, %vec.epilog.scalar.ph369.preheader ], [ %i.si, %vec.epilog.scalar.ph369.prol ]
  %i.sl = sub i32 %.084.ph, %4
  %i.sm = icmp ugt i32 %i.sl, -8
  br i1 %i.sm, label %._crit_edge, label %vec.epilog.scalar.ph369

vec.epilog.scalar.ph369:                          ; preds = %vec.epilog.scalar.ph369.prol.loopexit, %vec.epilog.scalar.ph369
  %.084 = phi i32 [ %i.tl, %vec.epilog.scalar.ph369 ], [ %.084.unr, %vec.epilog.scalar.ph369.prol.loopexit ]
  %.013883 = phi ptr [ %i.tk, %vec.epilog.scalar.ph369 ], [ %.013883.unr, %vec.epilog.scalar.ph369.prol.loopexit ] ; 9 uses
  %.1582 = phi ptr [ %i.tj, %vec.epilog.scalar.ph369 ], [ %.1582.unr, %vec.epilog.scalar.ph369.prol.loopexit ] ; 9 uses
  %i.sn = load i16, ptr %.013883, align 2, !tbaa !685
  store i16 %i.sn, ptr %.1582, align 2, !tbaa !685
  %i.so = getelementptr inbounds nuw i8, ptr %.1582, i64 2
  %i.sp = getelementptr inbounds nuw i8, ptr %.013883, i64 2
  %i.sq = load i16, ptr %i.sp, align 2, !tbaa !685
  store i16 %i.sq, ptr %i.so, align 2, !tbaa !685
  %i.sr = getelementptr inbounds nuw i8, ptr %.1582, i64 4
  %i.ss = getelementptr inbounds nuw i8, ptr %.013883, i64 4
  %i.st = load i16, ptr %i.ss, align 2, !tbaa !685
  store i16 %i.st, ptr %i.sr, align 2, !tbaa !685
  %i.su = getelementptr inbounds nuw i8, ptr %.1582, i64 6
  %i.sv = getelementptr inbounds nuw i8, ptr %.013883, i64 6
  %i.sw = load i16, ptr %i.sv, align 2, !tbaa !685
  store i16 %i.sw, ptr %i.su, align 2, !tbaa !685
  %i.sx = getelementptr inbounds nuw i8, ptr %.1582, i64 8
  %i.sy = getelementptr inbounds nuw i8, ptr %.013883, i64 8
  %i.sz = load i16, ptr %i.sy, align 2, !tbaa !685
  store i16 %i.sz, ptr %i.sx, align 2, !tbaa !685
  %i.ta = getelementptr inbounds nuw i8, ptr %.1582, i64 10
  %i.tb = getelementptr inbounds nuw i8, ptr %.013883, i64 10
  %i.tc = load i16, ptr %i.tb, align 2, !tbaa !685
  store i16 %i.tc, ptr %i.ta, align 2, !tbaa !685
  %i.td = getelementptr inbounds nuw i8, ptr %.1582, i64 12
  %i.te = getelementptr inbounds nuw i8, ptr %.013883, i64 12
  %i.tf = load i16, ptr %i.te, align 2, !tbaa !685
  store i16 %i.tf, ptr %i.td, align 2, !tbaa !685
  %i.tg = getelementptr inbounds nuw i8, ptr %.1582, i64 14
  %i.th = getelementptr inbounds nuw i8, ptr %.013883, i64 14
  %i.ti = load i16, ptr %i.th, align 2, !tbaa !685
  store i16 %i.ti, ptr %i.tg, align 2, !tbaa !685
  %i.tj = getelementptr inbounds nuw i8, ptr %.1582, i64 16 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %.013883, i64 16
  %i.tl = add nuw nsw i32 %.084, 8                ; 2 uses
  %exitcond137.not.7 = icmp eq i32 %i.tl, %4
  br i1 %exitcond137.not.7, label %._crit_edge, label %vec.epilog.scalar.ph369, !llvm.loop !1152

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph369.prol.loopexit, %vec.epilog.scalar.ph369, %vec.epilog.middle.block380, %middle.block362
  %.lcssa = phi ptr [ %i.sd, %vec.epilog.middle.block380 ], [ %i.rt, %middle.block362 ], [ %.lcssa400.unr, %vec.epilog.scalar.ph369.prol.loopexit ], [ %i.tj, %vec.epilog.scalar.ph369 ]
  %indvars.iv.next139 = add nsw i64 %indvars.iv138, 1 ; 2 uses
  %exitcond141.not = icmp eq i64 %indvars.iv.next139, %wide.trip.count
  %indvar.next345 = add i64 %indvar344, 1
  br i1 %exitcond141.not, label %._crit_edge90.split, label %iter.check368, !llvm.loop !1153

._crit_edge90.split:                              ; preds = %._crit_edge, %.lr.ph89, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL26transpose_pack_B_tile_bf16ERKNS_3MatERS0_iiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree writeonly %.0.val, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60   ; 16 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !87
  %i.e = icmp eq i32 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load i32, ptr %i.h, align 4
  %i.j = sext i32 %i.i to i64
  %i.k = select i1 %i.e, i64 %i.g, i64 %i.j       ; 44 uses
  %i.l = icmp sgt i32 %2, 7
  br i1 %i.l, label %.lr.ph78, label %.preheader54

.lr.ph78:                                         ; preds = %bb.a
  %i.m = sext i32 %3 to i64
  %i.n = mul i64 %i.k, %i.m
  %i.o = icmp ne i32 %i.b, 8
  %i.p = icmp slt i32 %4, 8
  %.idx286 = shl i64 %i.k, 4
  %i.q = icmp ne i32 %i.b, 4
  %i.r = icmp slt i32 %4, 4
  %.idx285 = shl i64 %i.k, 3
  %i.s = icmp ne i32 %i.b, 1
  %i.t = icmp slt i32 %4, 1
  %i.u = zext nneg i32 %2 to i64
  %i.v = sext i32 %1 to i64
  %i.w = sext i32 %i.b to i64
  %brmerge = or i1 %i.o, %i.p
  %brmerge148 = or i1 %i.q, %i.r
  %brmerge151 = or i1 %i.s, %i.t
  %i.x = add i32 %4, -1
  %xtraiter = and i32 %4, 7                       ; 3 uses
  %i.y = icmp ult i32 %i.x, 7
  %unroll_iter = and i32 %4, 2147483640
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod307 = icmp ne i32 %xtraiter, 0
  br label %bb.b

.preheader54.loopexit:                            ; preds = %.loopexit56
  %i.z = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader54

.preheader54:                                     ; preds = %.preheader54.loopexit, %bb.a
  %.0254.lcssa = phi i32 [ 0, %bb.a ], [ %i.z, %.preheader54.loopexit ] ; 3 uses
  %.0249.lcssa = phi ptr [ %.0.val, %bb.a ], [ %.6, %.preheader54.loopexit ] ; 2 uses
  %i.aa = or disjoint i32 %.0254.lcssa, 3
  %i.ab = icmp slt i32 %i.aa, %2
  br i1 %i.ab, label %.lr.ph100, label %.preheader47

.lr.ph100:                                        ; preds = %.preheader54
  %i.ac = sext i32 %3 to i64
  %i.ad = mul i64 %i.k, %i.ac
  %i.ae = icmp ne i32 %i.b, 8
  %i.af = icmp slt i32 %4, 8
  %.idx284 = shl i64 %i.k, 4
  %i.ag = icmp ne i32 %i.b, 4
  %i.ah = icmp slt i32 %4, 4
  %.idx283 = shl i64 %i.k, 3
  %i.ai = icmp ne i32 %i.b, 1
  %i.aj = icmp slt i32 %4, 1
  %i.ak = zext nneg i32 %.0254.lcssa to i64
  %i.al = sext i32 %2 to i64
  %i.am = sext i32 %1 to i64
  %i.an = sext i32 %i.b to i64
  %brmerge154 = or i1 %i.ae, %i.af
  %brmerge157 = or i1 %i.ag, %i.ah
  %brmerge160 = or i1 %i.ai, %i.aj
  %invariant.op = add nsw i64 %i.al, -3
  %i.ao = add i32 %4, -1
  %xtraiter308 = and i32 %4, 7                    ; 3 uses
  %i.ap = icmp ult i32 %i.ao, 7
  %unroll_iter313 = and i32 %4, 2147483640
  %lcmp.mod310.not = icmp eq i32 %xtraiter308, 0
  %lcmp.mod312 = icmp ne i32 %xtraiter308, 0
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph78, %.loopexit56
  %indvars.iv = phi i64 [ 0, %.lr.ph78 ], [ %indvars.iv.next, %.loopexit56 ] ; 2 uses
  %.024977 = phi ptr [ %.0.val, %.lr.ph78 ], [ %.6, %.loopexit56 ] ; 5 uses
  %i.aq = load ptr, ptr %0, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %i.n
  %i.as = add nsw i64 %indvars.iv, %i.v
  %i.at = mul nsw i64 %i.as, %i.w
  %i.au = getelementptr inbounds [2 x i8], ptr %i.ar, i64 %i.at ; 4 uses
  br i1 %brmerge, label %.loopexit60, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.125063 = phi ptr [ %i.df, %.lr.ph ], [ %.024977, %bb.b ] ; 9 uses
  %.026562 = phi ptr [ %i.dg, %.lr.ph ], [ %i.au, %bb.b ] ; 9 uses
  %.027061 = phi i32 [ %i.dh, %.lr.ph ], [ 0, %bb.b ]
  %i.av = load <8 x i16>, ptr %.026562, align 1, !tbaa !116 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.026562, i64 16
  %i.ax = load <8 x i16>, ptr %i.aw, align 1, !tbaa !116 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.026562, i64 32
  %i.az = load <8 x i16>, ptr %i.ay, align 1, !tbaa !116 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.026562, i64 48
  %i.bb = load <8 x i16>, ptr %i.ba, align 1, !tbaa !116 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.026562, i64 64
  %i.bd = load <8 x i16>, ptr %i.bc, align 1, !tbaa !116 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.026562, i64 80
  %i.bf = load <8 x i16>, ptr %i.be, align 1, !tbaa !116 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.026562, i64 96
  %i.bh = load <8 x i16>, ptr %i.bg, align 1, !tbaa !116 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.026562, i64 112
  %i.bj = load <8 x i16>, ptr %i.bi, align 1, !tbaa !116 ; 2 uses
  %i.bk = shufflevector <8 x i16> %i.av, <8 x i16> %i.ax, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bl = shufflevector <8 x i16> %i.av, <8 x i16> %i.ax, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bm = shufflevector <8 x i16> %i.az, <8 x i16> %i.bb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bn = shufflevector <8 x i16> %i.az, <8 x i16> %i.bb, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bo = shufflevector <8 x i16> %i.bd, <8 x i16> %i.bf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bp = shufflevector <8 x i16> %i.bd, <8 x i16> %i.bf, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bq = shufflevector <8 x i16> %i.bh, <8 x i16> %i.bj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.br = shufflevector <8 x i16> %i.bh, <8 x i16> %i.bj, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bs = bitcast <8 x i16> %i.bk to <4 x i32>    ; 2 uses
  %i.bt = bitcast <8 x i16> %i.bm to <4 x i32>    ; 2 uses
  %i.bu = shufflevector <4 x i32> %i.bs, <4 x i32> %i.bt, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.bv = bitcast <4 x i32> %i.bu to <2 x i64>    ; 2 uses
  %i.bw = shufflevector <4 x i32> %i.bs, <4 x i32> %i.bt, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.bx = bitcast <4 x i32> %i.bw to <2 x i64>    ; 2 uses
  %i.by = bitcast <8 x i16> %i.bl to <4 x i32>    ; 2 uses
  %i.bz = bitcast <8 x i16> %i.bn to <4 x i32>    ; 2 uses
  %i.ca = shufflevector <4 x i32> %i.by, <4 x i32> %i.bz, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.cb = bitcast <4 x i32> %i.ca to <2 x i64>    ; 2 uses
  %i.cc = shufflevector <4 x i32> %i.by, <4 x i32> %i.bz, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.cd = bitcast <4 x i32> %i.cc to <2 x i64>    ; 2 uses
  %i.ce = bitcast <8 x i16> %i.bo to <4 x i32>    ; 2 uses
  %i.cf = bitcast <8 x i16> %i.bq to <4 x i32>    ; 2 uses
  %i.cg = shufflevector <4 x i32> %i.ce, <4 x i32> %i.cf, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ch = bitcast <4 x i32> %i.cg to <2 x i64>    ; 2 uses
  %i.ci = shufflevector <4 x i32> %i.ce, <4 x i32> %i.cf, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.cj = bitcast <4 x i32> %i.ci to <2 x i64>    ; 2 uses
  %i.ck = bitcast <8 x i16> %i.bp to <4 x i32>    ; 2 uses
  %i.cl = bitcast <8 x i16> %i.br to <4 x i32>    ; 2 uses
  %i.cm = shufflevector <4 x i32> %i.ck, <4 x i32> %i.cl, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.cn = bitcast <4 x i32> %i.cm to <2 x i64>    ; 2 uses
  %i.co = shufflevector <4 x i32> %i.ck, <4 x i32> %i.cl, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.cp = bitcast <4 x i32> %i.co to <2 x i64>    ; 2 uses
  %i.cq = shufflevector <2 x i64> %i.bv, <2 x i64> %i.ch, <2 x i32> <i32 0, i32 2>
  %i.cr = shufflevector <2 x i64> %i.bv, <2 x i64> %i.ch, <2 x i32> <i32 1, i32 3>
  %i.cs = shufflevector <2 x i64> %i.bx, <2 x i64> %i.cj, <2 x i32> <i32 0, i32 2>
  %i.ct = shufflevector <2 x i64> %i.bx, <2 x i64> %i.cj, <2 x i32> <i32 1, i32 3>
  %i.cu = shufflevector <2 x i64> %i.cb, <2 x i64> %i.cn, <2 x i32> <i32 0, i32 2>
  %i.cv = shufflevector <2 x i64> %i.cb, <2 x i64> %i.cn, <2 x i32> <i32 1, i32 3>
  %i.cw = shufflevector <2 x i64> %i.cd, <2 x i64> %i.cp, <2 x i32> <i32 0, i32 2>
  %i.cx = shufflevector <2 x i64> %i.cd, <2 x i64> %i.cp, <2 x i32> <i32 1, i32 3>
  store <2 x i64> %i.cq, ptr %.125063, align 1, !tbaa !116
  %i.cy = getelementptr inbounds nuw i8, ptr %.125063, i64 16
  store <2 x i64> %i.cr, ptr %i.cy, align 1, !tbaa !116
  %i.cz = getelementptr inbounds nuw i8, ptr %.125063, i64 32
  store <2 x i64> %i.cs, ptr %i.cz, align 1, !tbaa !116
  %i.da = getelementptr inbounds nuw i8, ptr %.125063, i64 48
  store <2 x i64> %i.ct, ptr %i.da, align 1, !tbaa !116
  %i.db = getelementptr inbounds nuw i8, ptr %.125063, i64 64
  store <2 x i64> %i.cu, ptr %i.db, align 1, !tbaa !116
  %i.dc = getelementptr inbounds nuw i8, ptr %.125063, i64 80
  store <2 x i64> %i.cv, ptr %i.dc, align 1, !tbaa !116
  %i.dd = getelementptr inbounds nuw i8, ptr %.125063, i64 96
  store <2 x i64> %i.cw, ptr %i.dd, align 1, !tbaa !116
  %i.de = getelementptr inbounds nuw i8, ptr %.125063, i64 112
  store <2 x i64> %i.cx, ptr %i.de, align 1, !tbaa !116
  %i.df = getelementptr inbounds nuw i8, ptr %.125063, i64 128 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.026562, i64 %.idx286
  %i.dh = add nuw nsw i32 %.027061, 8             ; 2 uses
  %i.di = or disjoint i32 %i.dh, 7
  %i.dj = icmp slt i32 %i.di, %4
  br i1 %i.dj, label %.lr.ph, label %.loopexit56, !llvm.loop !1154

.loopexit60:                                      ; preds = %bb.b
  br i1 %brmerge148, label %.loopexit58, label %.lr.ph68

.lr.ph68:                                         ; preds = %.loopexit60, %.lr.ph68
  %.325267 = phi ptr [ %i.fm, %.lr.ph68 ], [ %.024977, %.loopexit60 ] ; 5 uses
  %.226766 = phi ptr [ %i.fn, %.lr.ph68 ], [ %i.au, %.loopexit60 ] ; 9 uses
  %.027165 = phi i32 [ %i.fo, %.lr.ph68 ], [ 0, %.loopexit60 ]
  %i.dk = load i64, ptr %.226766, align 1, !tbaa !116
  %i.dl = insertelement <2 x i64> poison, i64 %i.dk, i64 0
  %i.dm = getelementptr inbounds nuw i8, ptr %.226766, i64 8
  %i.dn = load i64, ptr %i.dm, align 1, !tbaa !116
  %i.do = insertelement <2 x i64> poison, i64 %i.dn, i64 0
  %i.dp = getelementptr inbounds nuw i8, ptr %.226766, i64 16
  %i.dq = load i64, ptr %i.dp, align 1, !tbaa !116
  %i.dr = insertelement <2 x i64> poison, i64 %i.dq, i64 0
  %i.ds = getelementptr inbounds nuw i8, ptr %.226766, i64 24
  %i.dt = load i64, ptr %i.ds, align 1, !tbaa !116
  %i.du = insertelement <2 x i64> poison, i64 %i.dt, i64 0
  %i.dv = getelementptr inbounds nuw i8, ptr %.226766, i64 32
  %i.dw = load i64, ptr %i.dv, align 1, !tbaa !116
  %i.dx = insertelement <2 x i64> poison, i64 %i.dw, i64 0
end_hunk_17
begin_hunk_18_@_ZN4ncnnL26transpose_pack_B_tile_bf16ERKNS_3MatERS0_iiii:bb.a

.lr.ph106.epil.preheader:                         ; preds = %.loopexit42.loopexit292.unr-lcssa, %.lr.ph106.preheader
  %.15105.epil.init = phi ptr [ %.14121, %.lr.ph106.preheader ], [ %i.mp, %.loopexit42.loopexit292.unr-lcssa ] ; 3 uses
  %.0259103.epil.init = phi ptr [ %i.ma, %.lr.ph106.preheader ], [ %i.mq, %.loopexit42.loopexit292.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod319)
  %i.ow = load <8 x i16>, ptr %.0259103.epil.init, align 1, !tbaa !116 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %.0259103.epil.init, i64 16
  %i.oy = load <8 x i16>, ptr %i.ox, align 1, !tbaa !116 ; 2 uses
  %i.oz = shufflevector <8 x i16> %i.ow, <8 x i16> %i.oy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.pa = shufflevector <8 x i16> %i.ow, <8 x i16> %i.oy, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.oz, ptr %.15105.epil.init, align 1, !tbaa !116
  %i.pb = getelementptr inbounds nuw i8, ptr %.15105.epil.init, i64 16
  store <8 x i16> %i.pa, ptr %i.pb, align 1, !tbaa !116
  %i.pc = getelementptr inbounds nuw i8, ptr %.15105.epil.init, i64 32
  br label %.loopexit42

.loopexit42:                                      ; preds = %.lr.ph106.epil.preheader, %.loopexit42.loopexit292.unr-lcssa, %.lr.ph112, %.loopexit42.loopexit.unr-lcssa, %.lr.ph118.epil, %.loopexit44
  %.20 = phi ptr [ %.14121, %.loopexit44 ], [ %i.ou, %.lr.ph118.epil ], [ %i.nn, %.lr.ph112 ], [ %i.oo, %.loopexit42.loopexit.unr-lcssa ], [ %i.mp, %.loopexit42.loopexit292.unr-lcssa ], [ %i.pc, %.lr.ph106.epil.preheader ] ; 2 uses
  %indvars.iv.next208 = add nuw nsw i64 %indvars.iv207, 2 ; 3 uses
  %i.pd = icmp slt i64 %indvars.iv.next208, %invariant.op267
  br i1 %i.pd, label %bb.d, label %.preheader40.loopexit, !llvm.loop !1168

bb.e:                                             ; preds = %.lr.ph144, %.loopexit
  %indvars.iv211 = phi i64 [ %i.lj, %.lr.ph144 ], [ %indvars.iv.next212, %.loopexit ] ; 2 uses
  %.21143 = phi ptr [ %.14.lcssa, %.lr.ph144 ], [ %.27, %.loopexit ] ; 7 uses
  %i.pe = load ptr, ptr %0, align 8, !tbaa !18
  %i.pf = getelementptr inbounds nuw [2 x i8], ptr %i.pe, i64 %i.lc
  %i.pg = add nsw i64 %indvars.iv211, %i.lk
  %i.ph = mul nsw i64 %i.pg, %i.ll
  %i.pi = getelementptr inbounds [2 x i8], ptr %i.pf, i64 %i.ph ; 6 uses
  br i1 %brmerge172, label %.loopexit39, label %.lr.ph128.preheader

.lr.ph128.preheader:                              ; preds = %bb.e
  br i1 %i.lt, label %.lr.ph128.epil.preheader, label %.lr.ph128

.lr.ph128:                                        ; preds = %.lr.ph128.preheader, %.lr.ph128
  %.0246126 = phi ptr [ %i.pu, %.lr.ph128 ], [ %i.pi, %.lr.ph128.preheader ] ; 2 uses
  %.22125 = phi ptr [ %i.pt, %.lr.ph128 ], [ %.21143, %.lr.ph128.preheader ] ; 5 uses
  %niter335 = phi i32 [ %niter335.next.3, %.lr.ph128 ], [ 0, %.lr.ph128.preheader ]
  %i.pj = load <2 x i64>, ptr %.0246126, align 1, !tbaa !116
  store <2 x i64> %i.pj, ptr %.22125, align 1, !tbaa !116
  %i.pk = getelementptr inbounds nuw i8, ptr %.22125, i64 16
  %i.pl = getelementptr inbounds nuw i8, ptr %.0246126, i64 %.idx280 ; 2 uses
  %i.pm = load <2 x i64>, ptr %i.pl, align 1, !tbaa !116
  store <2 x i64> %i.pm, ptr %i.pk, align 1, !tbaa !116
  %i.pn = getelementptr inbounds nuw i8, ptr %.22125, i64 32
  %i.po = getelementptr inbounds nuw i8, ptr %i.pl, i64 %.idx280 ; 2 uses
  %i.pp = load <2 x i64>, ptr %i.po, align 1, !tbaa !116
  store <2 x i64> %i.pp, ptr %i.pn, align 1, !tbaa !116
  %i.pq = getelementptr inbounds nuw i8, ptr %.22125, i64 48
  %i.pr = getelementptr inbounds nuw i8, ptr %i.po, i64 %.idx280 ; 2 uses
  %i.ps = load <2 x i64>, ptr %i.pr, align 1, !tbaa !116
  store <2 x i64> %i.ps, ptr %i.pq, align 1, !tbaa !116
  %i.pt = getelementptr inbounds nuw i8, ptr %.22125, i64 64 ; 3 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pr, i64 %.idx280 ; 2 uses
  %niter335.next.3 = add i32 %niter335, 4         ; 2 uses
  %niter335.ncmp.3.not = icmp eq i32 %niter335.next.3, %unroll_iter334
  br i1 %niter335.ncmp.3.not, label %.loopexit.loopexit288.unr-lcssa, label %.lr.ph128, !llvm.loop !1169

.loopexit39:                                      ; preds = %bb.e
  br i1 %brmerge175, label %.loopexit37, label %.lr.ph134.preheader

.lr.ph134.preheader:                              ; preds = %.loopexit39
  br i1 %i.lu, label %.lr.ph134.epil.preheader, label %.lr.ph134

.lr.ph134:                                        ; preds = %.lr.ph134.preheader, %.lr.ph134
  %.2132 = phi ptr [ %i.qg, %.lr.ph134 ], [ %i.pi, %.lr.ph134.preheader ] ; 2 uses
  %.24131 = phi ptr [ %i.qf, %.lr.ph134 ], [ %.21143, %.lr.ph134.preheader ] ; 5 uses
  %niter342 = phi i32 [ %niter342.next.3, %.lr.ph134 ], [ 0, %.lr.ph134.preheader ]
  %i.pv = load i64, ptr %.2132, align 1, !tbaa !116
  store i64 %i.pv, ptr %.24131, align 1, !tbaa !116
  %i.pw = getelementptr inbounds nuw i8, ptr %.24131, i64 8
  %i.px = getelementptr inbounds nuw i8, ptr %.2132, i64 %.idx ; 2 uses
  %i.py = load i64, ptr %i.px, align 1, !tbaa !116
  store i64 %i.py, ptr %i.pw, align 1, !tbaa !116
  %i.pz = getelementptr inbounds nuw i8, ptr %.24131, i64 16
  %i.qa = getelementptr inbounds nuw i8, ptr %i.px, i64 %.idx ; 2 uses
  %i.qb = load i64, ptr %i.qa, align 1, !tbaa !116
  store i64 %i.qb, ptr %i.pz, align 1, !tbaa !116
  %i.qc = getelementptr inbounds nuw i8, ptr %.24131, i64 24
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qa, i64 %.idx ; 2 uses
  %i.qe = load i64, ptr %i.qd, align 1, !tbaa !116
  store i64 %i.qe, ptr %i.qc, align 1, !tbaa !116
  %i.qf = getelementptr inbounds nuw i8, ptr %.24131, i64 32 ; 3 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qd, i64 %.idx ; 2 uses
  %niter342.next.3 = add nuw nsw i32 %niter342, 4 ; 2 uses
  %niter342.ncmp.3.not = icmp eq i32 %niter342.next.3, %unroll_iter341
  br i1 %niter342.ncmp.3.not, label %.loopexit.loopexit287.unr-lcssa, label %.lr.ph134, !llvm.loop !1170

.loopexit37:                                      ; preds = %.loopexit39
  br i1 %brmerge178, label %.loopexit, label %.lr.ph140.preheader

.lr.ph140.preheader:                              ; preds = %.loopexit37
  br i1 %i.lv, label %.lr.ph140.epil.preheader, label %.lr.ph140

.lr.ph140:                                        ; preds = %.lr.ph140.preheader, %.lr.ph140
  %.4138 = phi ptr [ %i.re, %.lr.ph140 ], [ %i.pi, %.lr.ph140.preheader ] ; 2 uses
  %.26137 = phi ptr [ %i.rd, %.lr.ph140 ], [ %.21143, %.lr.ph140.preheader ] ; 9 uses
  %niter349 = phi i32 [ %niter349.next.7, %.lr.ph140 ], [ 0, %.lr.ph140.preheader ]
  %i.qh = load i16, ptr %.4138, align 2, !tbaa !685
  store i16 %i.qh, ptr %.26137, align 2, !tbaa !685
  %i.qi = getelementptr inbounds nuw i8, ptr %.26137, i64 2
  %i.qj = getelementptr inbounds nuw [2 x i8], ptr %.4138, i64 %i.k ; 2 uses
  %i.qk = load i16, ptr %i.qj, align 2, !tbaa !685
  store i16 %i.qk, ptr %i.qi, align 2, !tbaa !685
  %i.ql = getelementptr inbounds nuw i8, ptr %.26137, i64 4
  %i.qm = getelementptr inbounds nuw [2 x i8], ptr %i.qj, i64 %i.k ; 2 uses
  %i.qn = load i16, ptr %i.qm, align 2, !tbaa !685
  store i16 %i.qn, ptr %i.ql, align 2, !tbaa !685
  %i.qo = getelementptr inbounds nuw i8, ptr %.26137, i64 6
  %i.qp = getelementptr inbounds nuw [2 x i8], ptr %i.qm, i64 %i.k ; 2 uses
  %i.qq = load i16, ptr %i.qp, align 2, !tbaa !685
  store i16 %i.qq, ptr %i.qo, align 2, !tbaa !685
  %i.qr = getelementptr inbounds nuw i8, ptr %.26137, i64 8
  %i.qs = getelementptr inbounds nuw [2 x i8], ptr %i.qp, i64 %i.k ; 2 uses
  %i.qt = load i16, ptr %i.qs, align 2, !tbaa !685
  store i16 %i.qt, ptr %i.qr, align 2, !tbaa !685
  %i.qu = getelementptr inbounds nuw i8, ptr %.26137, i64 10
  %i.qv = getelementptr inbounds nuw [2 x i8], ptr %i.qs, i64 %i.k ; 2 uses
  %i.qw = load i16, ptr %i.qv, align 2, !tbaa !685
  store i16 %i.qw, ptr %i.qu, align 2, !tbaa !685
  %i.qx = getelementptr inbounds nuw i8, ptr %.26137, i64 12
  %i.qy = getelementptr inbounds nuw [2 x i8], ptr %i.qv, i64 %i.k ; 2 uses
  %i.qz = load i16, ptr %i.qy, align 2, !tbaa !685
  store i16 %i.qz, ptr %i.qx, align 2, !tbaa !685
  %i.ra = getelementptr inbounds nuw i8, ptr %.26137, i64 14
  %i.rb = getelementptr inbounds nuw [2 x i8], ptr %i.qy, i64 %i.k ; 2 uses
  %i.rc = load i16, ptr %i.rb, align 2, !tbaa !685
  store i16 %i.rc, ptr %i.ra, align 2, !tbaa !685
  %i.rd = getelementptr inbounds nuw i8, ptr %.26137, i64 16 ; 3 uses
  %i.re = getelementptr inbounds nuw [2 x i8], ptr %i.rb, i64 %i.k ; 2 uses
  %niter349.next.7 = add nuw nsw i32 %niter349, 8 ; 2 uses
  %niter349.ncmp.7 = icmp eq i32 %niter349.next.7, %unroll_iter348
  br i1 %niter349.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph140, !llvm.loop !1171

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph140
  br i1 %lcmp.mod345.not, label %.loopexit, label %.lr.ph140.epil.preheader

.lr.ph140.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph140.preheader
  %.4138.epil.init = phi ptr [ %i.pi, %.lr.ph140.preheader ], [ %i.re, %.loopexit.loopexit.unr-lcssa ]
  %.26137.epil.init = phi ptr [ %.21143, %.lr.ph140.preheader ], [ %i.rd, %.loopexit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod347)
  br label %.lr.ph140.epil

.lr.ph140.epil:                                   ; preds = %.lr.ph140.epil, %.lr.ph140.epil.preheader
  %.4138.epil = phi ptr [ %i.rh, %.lr.ph140.epil ], [ %.4138.epil.init, %.lr.ph140.epil.preheader ] ; 2 uses
  %.26137.epil = phi ptr [ %i.rg, %.lr.ph140.epil ], [ %.26137.epil.init, %.lr.ph140.epil.preheader ] ; 2 uses
  %epil.iter344 = phi i32 [ %epil.iter344.next, %.lr.ph140.epil ], [ 0, %.lr.ph140.epil.preheader ]
  %i.rf = load i16, ptr %.4138.epil, align 2, !tbaa !685
  store i16 %i.rf, ptr %.26137.epil, align 2, !tbaa !685
  %i.rg = getelementptr inbounds nuw i8, ptr %.26137.epil, i64 2 ; 2 uses
  %i.rh = getelementptr inbounds nuw [2 x i8], ptr %.4138.epil, i64 %i.k
  %epil.iter344.next = add i32 %epil.iter344, 1   ; 2 uses
  %epil.iter344.cmp.not = icmp eq i32 %epil.iter344.next, %xtraiter343
  br i1 %epil.iter344.cmp.not, label %.loopexit, label %.lr.ph140.epil, !llvm.loop !1172

.loopexit.loopexit287.unr-lcssa:                  ; preds = %.lr.ph134
  br i1 %lcmp.mod338.not, label %.loopexit, label %.lr.ph134.epil.preheader

.lr.ph134.epil.preheader:                         ; preds = %.loopexit.loopexit287.unr-lcssa, %.lr.ph134.preheader
  %.2132.epil.init = phi ptr [ %i.pi, %.lr.ph134.preheader ], [ %i.qg, %.loopexit.loopexit287.unr-lcssa ]
  %.24131.epil.init = phi ptr [ %.21143, %.lr.ph134.preheader ], [ %i.qf, %.loopexit.loopexit287.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod340)
  br label %.lr.ph134.epil

.lr.ph134.epil:                                   ; preds = %.lr.ph134.epil, %.lr.ph134.epil.preheader
  %.2132.epil = phi ptr [ %i.rk, %.lr.ph134.epil ], [ %.2132.epil.init, %.lr.ph134.epil.preheader ] ; 2 uses
  %.24131.epil = phi ptr [ %i.rj, %.lr.ph134.epil ], [ %.24131.epil.init, %.lr.ph134.epil.preheader ] ; 2 uses
  %epil.iter337 = phi i32 [ %epil.iter337.next, %.lr.ph134.epil ], [ 0, %.lr.ph134.epil.preheader ]
  %i.ri = load i64, ptr %.2132.epil, align 1, !tbaa !116
  store i64 %i.ri, ptr %.24131.epil, align 1, !tbaa !116
  %i.rj = getelementptr inbounds nuw i8, ptr %.24131.epil, i64 8 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %.2132.epil, i64 %.idx
  %epil.iter337.next = add i32 %epil.iter337, 1   ; 2 uses
  %epil.iter337.cmp.not = icmp eq i32 %epil.iter337.next, %xtraiter336
  br i1 %epil.iter337.cmp.not, label %.loopexit, label %.lr.ph134.epil, !llvm.loop !1173

.loopexit.loopexit288.unr-lcssa:                  ; preds = %.lr.ph128
  br i1 %lcmp.mod331.not, label %.loopexit, label %.lr.ph128.epil.preheader

.lr.ph128.epil.preheader:                         ; preds = %.loopexit.loopexit288.unr-lcssa, %.lr.ph128.preheader
  %.0246126.epil.init = phi ptr [ %i.pi, %.lr.ph128.preheader ], [ %i.pu, %.loopexit.loopexit288.unr-lcssa ]
  %.22125.epil.init = phi ptr [ %.21143, %.lr.ph128.preheader ], [ %i.pt, %.loopexit.loopexit288.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod333)
  br label %.lr.ph128.epil

.lr.ph128.epil:                                   ; preds = %.lr.ph128.epil, %.lr.ph128.epil.preheader
  %.0246126.epil = phi ptr [ %i.rn, %.lr.ph128.epil ], [ %.0246126.epil.init, %.lr.ph128.epil.preheader ] ; 2 uses
  %.22125.epil = phi ptr [ %i.rm, %.lr.ph128.epil ], [ %.22125.epil.init, %.lr.ph128.epil.preheader ] ; 2 uses
  %epil.iter330 = phi i32 [ %epil.iter330.next, %.lr.ph128.epil ], [ 0, %.lr.ph128.epil.preheader ]
  %i.rl = load <2 x i64>, ptr %.0246126.epil, align 1, !tbaa !116
  store <2 x i64> %i.rl, ptr %.22125.epil, align 1, !tbaa !116
  %i.rm = getelementptr inbounds nuw i8, ptr %.22125.epil, i64 16 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %.0246126.epil, i64 %.idx280
  %epil.iter330.next = add i32 %epil.iter330, 1   ; 2 uses
  %epil.iter330.cmp.not = icmp eq i32 %epil.iter330.next, %xtraiter329
  br i1 %epil.iter330.cmp.not, label %.loopexit, label %.lr.ph128.epil, !llvm.loop !1174

.loopexit:                                        ; preds = %.loopexit.loopexit288.unr-lcssa, %.lr.ph128.epil, %.loopexit.loopexit287.unr-lcssa, %.lr.ph134.epil, %.loopexit.loopexit.unr-lcssa, %.lr.ph140.epil, %.loopexit37
  %.27 = phi ptr [ %.21143, %.loopexit37 ], [ %i.rg, %.lr.ph140.epil ], [ %i.rj, %.lr.ph134.epil ], [ %i.rd, %.loopexit.loopexit.unr-lcssa ], [ %i.qf, %.loopexit.loopexit287.unr-lcssa ], [ %i.pt, %.loopexit.loopexit288.unr-lcssa ], [ %i.rm, %.lr.ph128.epil ]
  %indvars.iv.next212 = add nsw i64 %indvars.iv211, 1 ; 2 uses
  %exitcond214.not = icmp eq i64 %indvars.iv.next212, %wide.trip.count
  br i1 %exitcond214.not, label %._crit_edge, label %bb.e, !llvm.loop !1175

._crit_edge:                                      ; preds = %.loopexit, %.preheader40
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

declare void @_ZN4ncnn24cast_bfloat16_to_float32ERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL20gemm_AT_BT_x86_bf16sERKNS_3MatES2_S2_RS0_iiiiiffiiiiiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %14, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %15, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %16, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %17, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %18, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %19) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !45
  %i.h = load i32, ptr %0, align 4, !tbaa !45     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !45
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !45
  %i.k = load i32, ptr %i.a, align 4, !tbaa !45   ; 2 uses
  %.not162 = icmp sgt i32 %i.k, %i.j
  br i1 %.not162, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 44
  %i.r = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.054163 = phi i32 [ %i.k, %.lr.ph ], [ %i.at, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.t = load i32, ptr %3, align 4, !tbaa !45     ; 2 uses
  %i.u = sdiv i32 %.054163, %i.t
  %i.v = srem i32 %.054163, %i.t
  %i.w = load i32, ptr %4, align 4, !tbaa !45     ; 2 uses
  %i.x = mul nsw i32 %i.w, %i.u                   ; 3 uses
  %i.y = load i32, ptr %5, align 4, !tbaa !45     ; 2 uses
  %i.z = mul nsw i32 %i.y, %i.v                   ; 3 uses
  %i.aa = load i32, ptr %6, align 4, !tbaa !45
  %i.ab = sub nsw i32 %i.aa, %i.x
  %.sroa.speculated158 = call i32 @llvm.smin.i32(i32 %i.w, i32 %i.ab) ; 2 uses
  %i.ac = load i32, ptr %7, align 4, !tbaa !45
  %i.ad = sub nsw i32 %i.ac, %i.z
  %.sroa.speculated154 = call i32 @llvm.smin.i32(i32 %i.y, i32 %i.ad) ; 2 uses
  %i.ae = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc84 unwind label %bb.e

.noexc84:                                         ; preds = %bb.c
  %i.af = load ptr, ptr %8, align 8, !tbaa !18, !noalias !1176
  %i.ag = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !1176
  %i.ah = sext i32 %i.ae to i64
  %i.ai = mul i64 %i.ag, %i.ah
  %i.aj = load i64, ptr %i.m, align 8, !tbaa !59, !noalias !1176
  %i.ak = mul i64 %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %9, align 4, !tbaa !45    ; 2 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %_ZN4ncnn3MatD2Ev.exit58.preheader, label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit58.preheader:                ; preds = %.noexc84
  %.pre = load i32, ptr %10, align 4, !tbaa !45
  br label %_ZN4ncnn3MatD2Ev.exit58

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnn3MatD2Ev.exit58, %.noexc84
  %i.ao = load i32, ptr %15, align 4, !tbaa !45
  %i.ap = load float, ptr %16, align 4, !tbaa !68
  %i.aq = load float, ptr %17, align 4, !tbaa !68
  %i.ar = load i32, ptr %18, align 4, !tbaa !45
  %i.as = load i32, ptr %19, align 4, !tbaa !45
  call fastcc void @_ZN4ncnnL31unpack_output_tile_fp32_to_bf16ERKNS_3MatES2_RS0_iiiiiffii(ptr %i.al, ptr noundef nonnull align 8 dereferenceable(72) %13, ptr noundef nonnull align 8 dereferenceable(72) %14, i32 noundef %i.ao, i32 noundef %i.x, i32 noundef %.sroa.speculated158, i32 noundef %i.z, i32 noundef %.sroa.speculated154, float noundef nofpclass(nan inf) %i.ap, float noundef nofpclass(nan inf) %i.aq, i32 noundef %i.ar, i32 noundef %i.as)
  %i.at = add nsw i32 %.054163, 1
  %i.au = load i32, ptr %i.b, align 4, !tbaa !45
  %.not.not = icmp slt i32 %.054163, %i.au
  br i1 %.not.not, label %bb.c, label %._crit_edge

_ZN4ncnn3MatD2Ev.exit58:                          ; preds = %_ZN4ncnn3MatD2Ev.exit58.preheader, %_ZN4ncnn3MatD2Ev.exit58
  %i.av = phi i32 [ %i.cc, %_ZN4ncnn3MatD2Ev.exit58 ], [ %.pre, %_ZN4ncnn3MatD2Ev.exit58.preheader ] ; 2 uses
  %i.aw = phi i32 [ %i.ce, %_ZN4ncnn3MatD2Ev.exit58 ], [ %i.am, %_ZN4ncnn3MatD2Ev.exit58.preheader ]
  %.0161 = phi i32 [ %i.cd, %_ZN4ncnn3MatD2Ev.exit58 ], [ 0, %_ZN4ncnn3MatD2Ev.exit58.preheader ] ; 4 uses
  %i.ax = sub nsw i32 %i.aw, %.0161
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.av, i32 %i.ax)
  %i.ay = load i32, ptr %4, align 4, !tbaa !45
  %i.az = sdiv i32 %i.x, %i.ay
  %i.ba = load i32, ptr %i.n, align 4, !tbaa !88, !noalias !1179
  %i.bb = load ptr, ptr %11, align 8, !tbaa !18, !noalias !1179
  %i.bc = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !1179
  %i.bd = sext i32 %i.az to i64
  %i.be = mul i64 %i.bc, %i.bd
  %i.bf = load i64, ptr %i.p, align 8, !tbaa !59, !noalias !1179 ; 2 uses
  %i.bg = mul i64 %i.be, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bg
  %i.bi = sext i32 %i.ba to i64
  %i.bj = sdiv i32 %.0161, %i.av
  %i.bk = sext i32 %i.bj to i64                   ; 2 uses
  %i.bl = mul i64 %i.bf, %i.bi
  %i.bm = mul i64 %i.bl, %i.bk
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bm
  %i.bo = load i32, ptr %5, align 4, !tbaa !45
  %i.bp = sdiv i32 %i.z, %i.bo
  %i.bq = load i32, ptr %i.q, align 4, !tbaa !88, !noalias !1182
  %i.br = load ptr, ptr %12, align 8, !tbaa !18, !noalias !1182
  %i.bs = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !1182
  %i.bt = sext i32 %i.bp to i64
  %i.bu = mul i64 %i.bs, %i.bt
  %i.bv = load i64, ptr %i.s, align 8, !tbaa !59, !noalias !1182 ; 2 uses
  %i.bw = mul i64 %i.bu, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bw
  %i.by = sext i32 %i.bq to i64
  %i.bz = mul i64 %i.bv, %i.by
  %i.ca = mul i64 %i.bz, %i.bk
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.ca
  call fastcc void @_ZN4ncnnL29gemm_transB_packed_tile_bf16sERKNS_3MatES2_RS0_iiiiii(ptr %i.bn, ptr %i.cb, ptr %i.al, i32 noundef %.sroa.speculated158, i32 noundef %.sroa.speculated154, i32 noundef %.0161, i32 noundef %.sroa.speculated)
  %i.cc = load i32, ptr %10, align 4, !tbaa !45   ; 2 uses
  %i.cd = add nsw i32 %i.cc, %.0161               ; 2 uses
  %i.ce = load i32, ptr %9, align 4, !tbaa !45    ; 2 uses
  %i.cf = icmp slt i32 %i.cd, %i.ce
  br i1 %i.cf, label %_ZN4ncnn3MatD2Ev.exit58, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !1185

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.e:                                             ; preds = %bb.c
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #26
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL29gemm_transB_packed_tile_bf16sERKNS_3MatES2_RS0_iiiiii(ptr nofree readonly %.0.val, ptr nofree readonly %.0.val1, ptr nofree %.0.val3, i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #10 {
bb.a:
  %i.a = icmp sgt i32 %0, 7
  br i1 %i.a, label %.preheader308.lr.ph, label %.preheader304

.preheader308.lr.ph:                              ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 7
  %.not594 = icmp eq i32 %2, 0                    ; 6 uses
  %i.c = icmp sgt i32 %3, 0                       ; 4 uses
  %i.d = shl nsw i32 %3, 3
  %i.e = sext i32 %i.d to i64
  %i.f = add i32 %3, -1
  %i.g = zext i32 %i.f to i64                     ; 4 uses
  %i.h = shl nuw nsw i64 %i.g, 4
  %i.i = and i32 %1, -8
  %i.j = shl nuw nsw i64 %i.g, 3
  %i.k = shl nuw nsw i64 %i.g, 2
  %i.l = add nsw i32 %1, -1                       ; 2 uses
  %i.m = shl nuw nsw i64 %i.g, 1
  br label %.preheader308

.preheader308:                                    ; preds = %.preheader308.lr.ph, %._crit_edge400
  %.0454410 = phi ptr [ %.0.val, %.preheader308.lr.ph ], [ %i.gv, %._crit_edge400 ] ; 5 uses
  %.0456409 = phi ptr [ %.0.val3, %.preheader308.lr.ph ], [ %.4.lcssa, %._crit_edge400 ] ; 2 uses
  %.0460408 = phi i32 [ 0, %.preheader308.lr.ph ], [ %i.gw, %._crit_edge400 ]
  br i1 %i.b, label %.lr.ph331, label %.preheader307

.preheader304.loopexit:                           ; preds = %._crit_edge400
  %i.n = and i32 %0, 2147483640
  br label %.preheader304

.preheader304:                                    ; preds = %.preheader304.loopexit, %bb.a
  %.0460.lcssa = phi i32 [ 0, %bb.a ], [ %i.n, %.preheader304.loopexit ] ; 3 uses
  %.0456.lcssa = phi ptr [ %.0.val3, %bb.a ], [ %.4.lcssa, %.preheader304.loopexit ] ; 2 uses
  %.0454.lcssa = phi ptr [ %.0.val, %bb.a ], [ %i.gv, %.preheader304.loopexit ] ; 2 uses
  %i.o = or disjoint i32 %.0460.lcssa, 3
  %i.p = icmp slt i32 %i.o, %0
  br i1 %i.p, label %.preheader303.lr.ph, label %.preheader299
end_hunk_18
begin_hunk_19_@_ZN4ncnnL31unpack_output_tile_fp32_to_bf16ERKNS_3MatES2_RS0_iiiiiffii:bb.a
  %i.coi = extractelement <2 x i64> %i.coh, i64 0
  store i64 %i.coi, ptr %.427001964, align 1, !tbaa !116
  br label %bb.nq

bb.nn:                                            ; preds = %bb.nl
  switch i32 %i.b, label %bb.nq [
    i32 4, label %bb.no
    i32 1, label %bb.np
  ]

bb.no:                                            ; preds = %bb.nn
  %i.coj = extractelement <2 x i64> %i.coh, i64 0
  store i64 %i.coj, ptr %.427001964, align 1, !tbaa !116
  br label %bb.nq

bb.np:                                            ; preds = %bb.nn
  %.sroa.0.0.extract.trunc = extractelement <8 x i16> %i.cog, i64 0
  %.sroa.4.0.extract.trunc = extractelement <8 x i16> %i.cog, i64 1
  %.sroa.5.0.extract.trunc = extractelement <8 x i16> %i.cog, i64 2
  %.sroa.6.0.extract.trunc = extractelement <8 x i16> %i.cog, i64 3
  store i16 %.sroa.0.0.extract.trunc, ptr %.427001964, align 2, !tbaa !685
  %i.cok = getelementptr inbounds nuw [2 x i8], ptr %.427001964, i64 %i.k
  store i16 %.sroa.4.0.extract.trunc, ptr %i.cok, align 2, !tbaa !685
  %i.col = getelementptr inbounds nuw i8, ptr %.427001964, i64 %.idx2921
  store i16 %.sroa.5.0.extract.trunc, ptr %i.col, align 2, !tbaa !685
  %i.com = getelementptr inbounds nuw i8, ptr %.427001964, i64 %.idx2922
  store i16 %.sroa.6.0.extract.trunc, ptr %i.com, align 2, !tbaa !685
  br label %bb.nq

bb.nq:                                            ; preds = %bb.no, %bb.nn, %bb.np, %bb.nm
  %i.con = getelementptr inbounds nuw i8, ptr %.427001964, i64 %.idx2923
  br label %bb.ns

bb.nr:                                            ; preds = %bb.nk
  %i.coo = extractelement <2 x i64> %i.coh, i64 0
  store i64 %i.coo, ptr %.427001964, align 1, !tbaa !116
  %i.cop = getelementptr inbounds nuw i8, ptr %.427001964, i64 8
  br label %bb.ns

bb.ns:                                            ; preds = %bb.nq, %bb.nr, %bb.ni, %bb.nj
  %.62702 = phi ptr [ %.427001964, %bb.ni ], [ %.427001964, %bb.nj ], [ %i.con, %bb.nq ], [ %i.cop, %bb.nr ] ; 2 uses
  %.4 = phi ptr [ %i.coc, %bb.ni ], [ %i.cod, %bb.nj ], [ %.326951965, %bb.nq ], [ %.326951965, %bb.nr ] ; 2 uses
  %i.coq = add nuw nsw i32 %.126881966, 4         ; 3 uses
  %i.cor = or disjoint i32 %i.coq, 3
  %i.cos = icmp slt i32 %i.cor, %6
  br i1 %i.cos, label %.lr.ph1967, label %.preheader1764, !llvm.loop !1250

.preheader:                                       ; preds = %bb.oc, %.preheader1764
  %.182759.lcssa = phi ptr [ %.172758.lcssa, %.preheader1764 ], [ %i.cov, %bb.oc ] ; 2 uses
  %.64.lcssa = phi ptr [ %.62.lcssa, %.preheader1764 ], [ %.65, %bb.oc ] ; 2 uses
  %.72703.lcssa = phi ptr [ %.42700.lcssa, %.preheader1764 ], [ %.9, %bb.oc ]
  %.5.lcssa = phi ptr [ %.32695.lcssa, %.preheader1764 ], [ %.6, %bb.oc ]
  %.2.lcssa = phi i32 [ %.12688.lcssa, %.preheader1764 ], [ %i.cpv, %bb.oc ] ; 2 uses
  %i.cot = icmp slt i32 %.2.lcssa, %6
  br i1 %i.cot, label %.lr.ph1989, label %._crit_edge1990

.lr.ph1978:                                       ; preds = %.lr.ph1978.preheader, %bb.oc
  %.21977 = phi i32 [ %i.cpv, %bb.oc ], [ %.12688.lcssa, %.lr.ph1978.preheader ]
  %.51976 = phi ptr [ %.6, %bb.oc ], [ %.32695.lcssa, %.lr.ph1978.preheader ] ; 7 uses
  %.727031975 = phi ptr [ %.9, %bb.oc ], [ %.42700.lcssa, %.lr.ph1978.preheader ] ; 7 uses
  %.641974 = phi ptr [ %.65, %bb.oc ], [ %.62.lcssa, %.lr.ph1978.preheader ] ; 4 uses
  %.1827591973 = phi ptr [ %i.cov, %bb.oc ], [ %.172758.lcssa, %.lr.ph1978.preheader ] ; 2 uses
  %i.cou = load <2 x float>, ptr %.1827591973, align 4, !tbaa !68 ; 4 uses
  %i.cov = getelementptr inbounds nuw i8, ptr %.1827591973, i64 8 ; 2 uses
  %.not2910 = icmp eq ptr %.641974, null
  br i1 %.not2910, label %bb.nv, label %bb.nt

bb.nt:                                            ; preds = %.lr.ph1978
  %i.cow = fadd fast <2 x float> %i.cou, %i.cnq
  %i.cox = select <2 x i1> %i.bya, <2 x float> %i.cow, <2 x float> %i.cou
  br i1 %or.cond37, label %bb.nu, label %bb.nv

bb.nu:                                            ; preds = %bb.nt
  %i.coy = load <2 x float>, ptr %.641974, align 4, !tbaa !68
  %i.coz = fmul fast <2 x float> %i.coy, %i.byc
  %i.cpa = fadd fast <2 x float> %i.coz, %i.cou
  %i.cpb = getelementptr inbounds nuw i8, ptr %.641974, i64 8
  br label %bb.nv

bb.nv:                                            ; preds = %bb.nu, %bb.nt, %.lr.ph1978
  %.65 = phi ptr [ %i.cpb, %bb.nu ], [ %.641974, %bb.nt ], [ null, %.lr.ph1978 ] ; 2 uses
  %i.cpc = phi <2 x float> [ %i.cpa, %bb.nu ], [ %i.cox, %bb.nt ], [ %i.cou, %.lr.ph1978 ]
  %i.cpd = fmul fast <2 x float> %i.cpc, %i.bye   ; 4 uses
  br i1 %i.bxu, label %bb.nw, label %bb.nz

bb.nw:                                            ; preds = %bb.nv
  %i.cpe = extractelement <2 x float> %i.cpd, i64 0
  store float %i.cpe, ptr %.51976, align 4, !tbaa !68
  br i1 %.not, label %bb.ny, label %bb.nx

bb.nx:                                            ; preds = %bb.nw
  %i.cpf = getelementptr inbounds nuw [4 x i8], ptr %.51976, i64 %i.k
  %i.cpg = extractelement <2 x float> %i.cpd, i64 1
  store float %i.cpg, ptr %i.cpf, align 4, !tbaa !68
  %i.cph = getelementptr inbounds nuw i8, ptr %.51976, i64 %.idx2923
  br label %bb.oc

bb.ny:                                            ; preds = %bb.nw
  %i.cpi = getelementptr inbounds nuw i8, ptr %.51976, i64 4
  %i.cpj = extractelement <2 x float> %i.cpd, i64 1
  store float %i.cpj, ptr %i.cpi, align 4, !tbaa !68
  %i.cpk = getelementptr inbounds nuw i8, ptr %.51976, i64 8
  br label %bb.oc

bb.nz:                                            ; preds = %bb.nv
  %i.cpl = bitcast <2 x float> %i.cpd to <2 x i32>
  %i.cpm = lshr <2 x i32> %i.cpl, splat (i32 16)  ; 2 uses
  %i.cpn = bitcast <2 x i32> %i.cpm to <4 x i16>
  %i.cpo = extractelement <4 x i16> %i.cpn, i64 0
  %i.cpp = bitcast <2 x i32> %i.cpm to <4 x i16>
  %i.cpq = extractelement <4 x i16> %i.cpp, i64 2 ; 2 uses
  store i16 %i.cpo, ptr %.727031975, align 2, !tbaa !685
  br i1 %.not, label %bb.ob, label %bb.oa

bb.oa:                                            ; preds = %bb.nz
  %i.cpr = getelementptr inbounds nuw [2 x i8], ptr %.727031975, i64 %i.k
  store i16 %i.cpq, ptr %i.cpr, align 2, !tbaa !685
  %i.cps = getelementptr inbounds nuw i8, ptr %.727031975, i64 %.idx2921
  br label %bb.oc

bb.ob:                                            ; preds = %bb.nz
  %i.cpt = getelementptr inbounds nuw i8, ptr %.727031975, i64 2
  store i16 %i.cpq, ptr %i.cpt, align 2, !tbaa !685
  %i.cpu = getelementptr inbounds nuw i8, ptr %.727031975, i64 4
  br label %bb.oc

bb.oc:                                            ; preds = %bb.oa, %bb.ob, %bb.nx, %bb.ny
  %.9 = phi ptr [ %.727031975, %bb.nx ], [ %.727031975, %bb.ny ], [ %i.cps, %bb.oa ], [ %i.cpu, %bb.ob ] ; 2 uses
  %.6 = phi ptr [ %i.cph, %bb.nx ], [ %i.cpk, %bb.ny ], [ %.51976, %bb.oa ], [ %.51976, %bb.ob ] ; 2 uses
  %i.cpv = add nuw nsw i32 %.21977, 2             ; 3 uses
  %i.cpw = or disjoint i32 %i.cpv, 1
  %i.cpx = icmp slt i32 %i.cpw, %6
  br i1 %i.cpx, label %.lr.ph1978, label %.preheader, !llvm.loop !1251

.lr.ph1989:                                       ; preds = %.preheader, %bb.om
  %.31988 = phi i32 [ %i.cqn, %bb.om ], [ %.2.lcssa, %.preheader ]
  %.71987 = phi ptr [ %.8, %bb.om ], [ %.5.lcssa, %.preheader ] ; 5 uses
  %.101986 = phi ptr [ %.11, %bb.om ], [ %.72703.lcssa, %.preheader ] ; 5 uses
  %.661985 = phi ptr [ %.67, %bb.om ], [ %.64.lcssa, %.preheader ] ; 4 uses
  %.1927601984 = phi ptr [ %i.cpz, %bb.om ], [ %.182759.lcssa, %.preheader ] ; 2 uses
  %i.cpy = load float, ptr %.1927601984, align 4, !tbaa !68 ; 4 uses
  %i.cpz = getelementptr inbounds nuw i8, ptr %.1927601984, i64 4 ; 2 uses
  %.not2909 = icmp eq ptr %.661985, null
  br i1 %.not2909, label %bb.of, label %bb.od

bb.od:                                            ; preds = %.lr.ph1989
  %i.cqa = fadd fast float %i.cpy, %.22691
  %spec.select = select i1 %or.cond31, float %i.cqa, float %i.cpy
  br i1 %or.cond37, label %bb.oe, label %bb.of

bb.oe:                                            ; preds = %bb.od
  %i.cqb = load float, ptr %.661985, align 4, !tbaa !68
  %i.cqc = fmul fast float %i.cqb, %8
  %i.cqd = fadd fast float %i.cqc, %i.cpy
  %i.cqe = getelementptr inbounds nuw i8, ptr %.661985, i64 4
  br label %bb.of

bb.of:                                            ; preds = %bb.oe, %bb.od, %.lr.ph1989
  %.67 = phi ptr [ %i.cqe, %bb.oe ], [ %.661985, %bb.od ], [ null, %.lr.ph1989 ] ; 2 uses
  %.1 = phi nsz float [ %i.cqd, %bb.oe ], [ %spec.select, %bb.od ], [ %i.cpy, %.lr.ph1989 ]
  %i.cqf = fmul fast float %.1, %7                ; 2 uses
  br i1 %i.bxu, label %bb.og, label %bb.oj

bb.og:                                            ; preds = %bb.of
  store float %i.cqf, ptr %.71987, align 4, !tbaa !68
  br i1 %.not, label %bb.oi, label %bb.oh

bb.oh:                                            ; preds = %bb.og
  %i.cqg = getelementptr inbounds nuw [4 x i8], ptr %.71987, i64 %i.k
  br label %bb.om

bb.oi:                                            ; preds = %bb.og
  %i.cqh = getelementptr inbounds nuw i8, ptr %.71987, i64 4
  br label %bb.om

bb.oj:                                            ; preds = %bb.of
  %i.cqi = bitcast float %i.cqf to i32
  %i.cqj = lshr i32 %i.cqi, 16
  %i.cqk = trunc nuw i32 %i.cqj to i16
  store i16 %i.cqk, ptr %.101986, align 2, !tbaa !685
  br i1 %.not, label %bb.ol, label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  %i.cql = getelementptr inbounds nuw [2 x i8], ptr %.101986, i64 %i.k
  br label %bb.om

bb.ol:                                            ; preds = %bb.oj
  %i.cqm = getelementptr inbounds nuw i8, ptr %.101986, i64 2
  br label %bb.om

bb.om:                                            ; preds = %bb.ok, %bb.ol, %bb.oh, %bb.oi
  %.11 = phi ptr [ %.101986, %bb.oh ], [ %.101986, %bb.oi ], [ %i.cql, %bb.ok ], [ %i.cqm, %bb.ol ]
  %.8 = phi ptr [ %i.cqg, %bb.oh ], [ %i.cqh, %bb.oi ], [ %.71987, %bb.ok ], [ %.71987, %bb.ol ]
  %i.cqn = add nuw nsw i32 %.31988, 1             ; 2 uses
  %exitcond2055.not = icmp eq i32 %i.cqn, %6
  br i1 %exitcond2055.not, label %._crit_edge1990, label %.lr.ph1989, !llvm.loop !1252

._crit_edge1990:                                  ; preds = %bb.om, %.preheader
  %.192760.lcssa = phi ptr [ %.182759.lcssa, %.preheader ], [ %i.cpz, %bb.om ]
  %.66.lcssa = phi ptr [ %.64.lcssa, %.preheader ], [ %.67, %bb.om ]
  %indvars.iv.next2057 = add nsw i64 %indvars.iv2056, 1 ; 2 uses
  %exitcond2059.not = icmp eq i64 %indvars.iv.next2057, %wide.trip.count
  br i1 %exitcond2059.not, label %._crit_edge1997, label %bb.lr, !llvm.loop !1253

._crit_edge1997:                                  ; preds = %._crit_edge1990, %.preheader1766
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32>, <4 x i32>) #16

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL17gemm_AT_x86_bf16sERKNS_3MatES2_S2_RS0_iiiiiffiiiiiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !45
  %i.h = load i32, ptr %0, align 4, !tbaa !45     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !45
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !45
  %i.k = load i32, ptr %i.a, align 4, !tbaa !45   ; 2 uses
  %.not71 = icmp sgt i32 %i.k, %i.j
  br i1 %.not71, label %._crit_edge, label %.noexc45.lr.ph

.noexc45.lr.ph:                                   ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %.noexc45

.noexc45:                                         ; preds = %.noexc45.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.072 = phi i32 [ %i.k, %.noexc45.lr.ph ], [ %i.an, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.o = load i32, ptr %3, align 4, !tbaa !45     ; 2 uses
  %i.p = sdiv i32 %.072, %i.o                     ; 2 uses
  %i.q = srem i32 %.072, %i.o                     ; 2 uses
  %i.r = load i32, ptr %4, align 4, !tbaa !45     ; 2 uses
  %i.s = mul nsw i32 %i.r, %i.p                   ; 3 uses
  %i.t = load i32, ptr %5, align 4, !tbaa !45     ; 2 uses
  %i.u = mul nsw i32 %i.t, %i.q                   ; 3 uses
  %i.v = load i32, ptr %6, align 4, !tbaa !45
  %i.w = sub nsw i32 %i.v, %i.s
  %.sroa.speculated68 = call i32 @llvm.smin.i32(i32 %i.r, i32 %i.w) ; 2 uses
  %i.x = load i32, ptr %7, align 4, !tbaa !45
  %i.y = sub nsw i32 %i.x, %i.u
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.t, i32 %i.y) ; 2 uses
  %i.z = load i32, ptr %i.l, align 4, !tbaa !88, !noalias !1254
  %i.aa = load ptr, ptr %8, align 8, !tbaa !18, !noalias !1254
  %i.ab = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !1254
  %i.ac = sext i32 %i.p to i64
  %i.ad = mul i64 %i.ab, %i.ac
  %i.ae = load i64, ptr %i.n, align 8, !tbaa !59, !noalias !1254 ; 2 uses
  %i.af = mul i64 %i.ad, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.af
  %i.ah = sext i32 %i.z to i64
  %i.ai = sext i32 %i.q to i64
  %i.aj = mul nsw i64 %i.ah, %i.ai
  %i.ak = mul i64 %i.aj, %i.ae
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %9, align 4, !tbaa !45
  %.not36 = icmp eq i32 %i.am, 0
  br i1 %.not36, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc45
  call fastcc void @_ZN4ncnnL16pack_B_tile_bf16ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %10, ptr %i.al, i32 noundef %i.s, i32 noundef %.sroa.speculated68, i32 noundef %i.u, i32 noundef %.sroa.speculated)
  br label %_ZN4ncnn3MatD2Ev.exit

bb.d:                                             ; preds = %.noexc45
  call fastcc void @_ZN4ncnnL26transpose_pack_B_tile_bf16ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %10, ptr %i.al, i32 noundef %i.s, i32 noundef %.sroa.speculated68, i32 noundef %i.u, i32 noundef %.sroa.speculated)
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.d, %bb.c
  %i.an = add nsw i32 %.072, 1
  %i.ao = load i32, ptr %i.b, align 4, !tbaa !45
  %.not.not = icmp slt i32 %.072, %i.ao
  br i1 %.not.not, label %.noexc45, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL17gemm_AT_x86_bf16sERKNS_3MatES2_S2_RS0_iiiiiffiiiiiRKNS_6OptionE.omp_outlined.19(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %14, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %15, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %16, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %17, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %18, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %19) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !45
  %i.h = load i32, ptr %0, align 4, !tbaa !45     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !45
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !45
  %i.k = load i32, ptr %i.a, align 4, !tbaa !45   ; 2 uses
  %.not162 = icmp sgt i32 %i.k, %i.j
  br i1 %.not162, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 44
  %i.r = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.053163 = phi i32 [ %i.k, %.lr.ph ], [ %i.at, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.t = load i32, ptr %3, align 4, !tbaa !45     ; 2 uses
  %i.u = sdiv i32 %.053163, %i.t
  %i.v = srem i32 %.053163, %i.t
  %i.w = load i32, ptr %4, align 4, !tbaa !45     ; 2 uses
  %i.x = mul nsw i32 %i.w, %i.u                   ; 3 uses
  %i.y = load i32, ptr %5, align 4, !tbaa !45     ; 2 uses
  %i.z = mul nsw i32 %i.y, %i.v                   ; 3 uses
  %i.aa = load i32, ptr %6, align 4, !tbaa !45
  %i.ab = sub nsw i32 %i.aa, %i.x
  %.sroa.speculated158 = call i32 @llvm.smin.i32(i32 %i.w, i32 %i.ab) ; 2 uses
  %i.ac = load i32, ptr %7, align 4, !tbaa !45
  %i.ad = sub nsw i32 %i.ac, %i.z
  %.sroa.speculated154 = call i32 @llvm.smin.i32(i32 %i.y, i32 %i.ad) ; 2 uses
  %i.ae = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc84 unwind label %bb.e

.noexc84:                                         ; preds = %bb.c
  %i.af = load ptr, ptr %8, align 8, !tbaa !18, !noalias !1257
  %i.ag = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !1257
  %i.ah = sext i32 %i.ae to i64
  %i.ai = mul i64 %i.ag, %i.ah
  %i.aj = load i64, ptr %i.m, align 8, !tbaa !59, !noalias !1257
  %i.ak = mul i64 %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %9, align 4, !tbaa !45    ; 2 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.noexc83.preheader, label %_ZN4ncnn3MatD2Ev.exit

.noexc83.preheader:                               ; preds = %.noexc84
  %.pre = load i32, ptr %10, align 4, !tbaa !45
  br label %.noexc83

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.noexc83, %.noexc84
  %i.ao = load i32, ptr %15, align 4, !tbaa !45
  %i.ap = load float, ptr %16, align 4, !tbaa !68
  %i.aq = load float, ptr %17, align 4, !tbaa !68
  %i.ar = load i32, ptr %18, align 4, !tbaa !45
  %i.as = load i32, ptr %19, align 4, !tbaa !45
  call fastcc void @_ZN4ncnnL31unpack_output_tile_fp32_to_bf16ERKNS_3MatES2_RS0_iiiiiffii(ptr %i.al, ptr noundef nonnull align 8 dereferenceable(72) %13, ptr noundef nonnull align 8 dereferenceable(72) %14, i32 noundef %i.ao, i32 noundef %i.x, i32 noundef %.sroa.speculated158, i32 noundef %i.z, i32 noundef %.sroa.speculated154, float noundef nofpclass(nan inf) %i.ap, float noundef nofpclass(nan inf) %i.aq, i32 noundef %i.ar, i32 noundef %i.as)
  %i.at = add nsw i32 %.053163, 1
  %i.au = load i32, ptr %i.b, align 4, !tbaa !45
  %.not.not = icmp slt i32 %.053163, %i.au
  br i1 %.not.not, label %bb.c, label %._crit_edge

.noexc83:                                         ; preds = %.noexc83.preheader, %.noexc83
  %i.av = phi i32 [ %i.cc, %.noexc83 ], [ %.pre, %.noexc83.preheader ] ; 2 uses
  %i.aw = phi i32 [ %i.ce, %.noexc83 ], [ %i.am, %.noexc83.preheader ]
  %.0161 = phi i32 [ %i.cd, %.noexc83 ], [ 0, %.noexc83.preheader ] ; 4 uses
  %i.ax = sub nsw i32 %i.aw, %.0161
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.av, i32 %i.ax)
  %i.ay = load i32, ptr %4, align 4, !tbaa !45
  %i.az = sdiv i32 %i.x, %i.ay
  %i.ba = load i32, ptr %i.n, align 4, !tbaa !88, !noalias !1260
end_hunk_19
