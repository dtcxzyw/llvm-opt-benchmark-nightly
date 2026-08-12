inline.NumInlined: 21
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZN4ncnn38transpose_pack_B_tile_int8_avxvnniint8ERKNS_3MatERS0_iiii:bb.a
  %i.ou = add nuw nsw i32 %.281.i.prol, 1         ; 2 uses
  %prol.iter138.next = add i32 %prol.iter138, 1   ; 2 uses
  %prol.iter138.cmp.not = icmp eq i32 %prol.iter138.next, %xtraiter136
  br i1 %prol.iter138.cmp.not, label %.lr.ph82.i.prol.loopexit, label %.lr.ph82.i.prol, !llvm.loop !155

.lr.ph82.i.prol.loopexit:                         ; preds = %.lr.ph82.i.prol, %.lr.ph82.i.preheader
  %.lcssa115.unr = phi ptr [ poison, %.lr.ph82.i.preheader ], [ %i.os, %.lr.ph82.i.prol ]
  %.281.i.unr = phi i32 [ %.1202.lcssa.i, %.lr.ph82.i.preheader ], [ %i.ou, %.lr.ph82.i.prol ]
  %.220580.i.unr = phi ptr [ %.1204.lcssa.i, %.lr.ph82.i.preheader ], [ %i.ot, %.lr.ph82.i.prol ]
  %.1179.i.unr = phi ptr [ %.10.lcssa.i, %.lr.ph82.i.preheader ], [ %i.os, %.lr.ph82.i.prol ]
  %i.ov = sub i32 %.1202.lcssa.i, %5
  %i.ow = icmp ugt i32 %i.ov, -4
  br i1 %i.ow, label %._crit_edge83.i, label %.lr.ph82.i

.lr.ph75.i:                                       ; preds = %.preheader8.i, %.lr.ph75.i
  %.120274.i = phi i32 [ %i.pj, %.lr.ph75.i ], [ %.0201.lcssa.i, %.preheader8.i ]
  %.120473.i = phi ptr [ %i.pi, %.lr.ph75.i ], [ %.0203.lcssa.i, %.preheader8.i ] ; 4 uses
  %.1072.i = phi ptr [ %i.ph, %.lr.ph75.i ], [ %.9.lcssa.i, %.preheader8.i ] ; 5 uses
  %i.ox = load i8, ptr %.120473.i, align 1, !tbaa !17
  store i8 %i.ox, ptr %.1072.i, align 1, !tbaa !17
  %i.oy = getelementptr inbounds i8, ptr %.120473.i, i64 %i.dw ; 2 uses
  %i.oz = load i8, ptr %i.oy, align 1, !tbaa !17
  %i.pa = getelementptr inbounds nuw i8, ptr %.1072.i, i64 1
  store i8 %i.oz, ptr %i.pa, align 1, !tbaa !17
  %i.pb = getelementptr inbounds nuw i8, ptr %.120473.i, i64 1
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !17
  %i.pd = getelementptr inbounds nuw i8, ptr %.1072.i, i64 2
  store i8 %i.pc, ptr %i.pd, align 1, !tbaa !17
  %i.pe = getelementptr i8, ptr %i.oy, i64 1
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !17
  %i.pg = getelementptr inbounds nuw i8, ptr %.1072.i, i64 3
  store i8 %i.pf, ptr %i.pg, align 1, !tbaa !17
  %i.ph = getelementptr inbounds nuw i8, ptr %.1072.i, i64 4 ; 2 uses
  %i.pi = getelementptr inbounds i8, ptr %.120473.i, i64 %i.dy ; 2 uses
  %i.pj = add nuw nsw i32 %.120274.i, 2           ; 3 uses
  %i.pk = or disjoint i32 %i.pj, 1
  %i.pl = icmp slt i32 %i.pk, %5
  br i1 %i.pl, label %.lr.ph75.i, label %.preheader7.i, !llvm.loop !156

.lr.ph82.i:                                       ; preds = %.lr.ph82.i.prol.loopexit, %.lr.ph82.i
  %.281.i = phi i32 [ %i.qk, %.lr.ph82.i ], [ %.281.i.unr, %.lr.ph82.i.prol.loopexit ]
  %.220580.i = phi ptr [ %i.qj, %.lr.ph82.i ], [ %.220580.i.unr, %.lr.ph82.i.prol.loopexit ] ; 3 uses
  %.1179.i = phi ptr [ %i.qi, %.lr.ph82.i ], [ %.1179.i.unr, %.lr.ph82.i.prol.loopexit ] ; 9 uses
  %i.pm = load i8, ptr %.220580.i, align 1, !tbaa !17
  store i8 %i.pm, ptr %.1179.i, align 1, !tbaa !17
  %i.pn = getelementptr inbounds nuw i8, ptr %.220580.i, i64 1
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !17
  %i.pp = getelementptr inbounds nuw i8, ptr %.1179.i, i64 1
  store i8 %i.po, ptr %i.pp, align 1, !tbaa !17
  %i.pq = getelementptr inbounds nuw i8, ptr %.1179.i, i64 2
  %i.pr = getelementptr inbounds i8, ptr %.220580.i, i64 %i.dw ; 3 uses
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !17
  store i8 %i.ps, ptr %i.pq, align 1, !tbaa !17
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pr, i64 1
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !17
  %i.pv = getelementptr inbounds nuw i8, ptr %.1179.i, i64 3
  store i8 %i.pu, ptr %i.pv, align 1, !tbaa !17
  %i.pw = getelementptr inbounds nuw i8, ptr %.1179.i, i64 4
  %i.px = getelementptr inbounds i8, ptr %i.pr, i64 %i.dw ; 3 uses
  %i.py = load i8, ptr %i.px, align 1, !tbaa !17
  store i8 %i.py, ptr %i.pw, align 1, !tbaa !17
  %i.pz = getelementptr inbounds nuw i8, ptr %i.px, i64 1
  %i.qa = load i8, ptr %i.pz, align 1, !tbaa !17
  %i.qb = getelementptr inbounds nuw i8, ptr %.1179.i, i64 5
  store i8 %i.qa, ptr %i.qb, align 1, !tbaa !17
  %i.qc = getelementptr inbounds nuw i8, ptr %.1179.i, i64 6
  %i.qd = getelementptr inbounds i8, ptr %i.px, i64 %i.dw ; 3 uses
  %i.qe = load i8, ptr %i.qd, align 1, !tbaa !17
  store i8 %i.qe, ptr %i.qc, align 1, !tbaa !17
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qd, i64 1
  %i.qg = load i8, ptr %i.qf, align 1, !tbaa !17
  %i.qh = getelementptr inbounds nuw i8, ptr %.1179.i, i64 7
  store i8 %i.qg, ptr %i.qh, align 1, !tbaa !17
  %i.qi = getelementptr inbounds nuw i8, ptr %.1179.i, i64 8 ; 2 uses
  %i.qj = getelementptr inbounds i8, ptr %i.qd, i64 %i.dw
  %i.qk = add nuw nsw i32 %.281.i, 4              ; 2 uses
  %exitcond142.not.i.3 = icmp eq i32 %i.qk, %5
  br i1 %exitcond142.not.i.3, label %._crit_edge83.i, label %.lr.ph82.i, !llvm.loop !157

._crit_edge83.i:                                  ; preds = %.lr.ph82.i.prol.loopexit, %.lr.ph82.i, %.preheader7.i
  %.11.lcssa.i = phi ptr [ %.10.lcssa.i, %.preheader7.i ], [ %.lcssa115.unr, %.lr.ph82.i.prol.loopexit ], [ %i.qi, %.lr.ph82.i ] ; 2 uses
  %indvars.iv.next144.i = add nuw nsw i64 %indvars.iv143.i, 2 ; 3 uses
  %i.ql = icmp slt i64 %indvars.iv.next144.i, %invariant.op183.i
  br i1 %i.ql, label %bb.d, label %.preheader6.loopexit.i, !llvm.loop !158

.preheader.i:                                     ; preds = %._crit_edge102.i, %.preheader.preheader.i
  %indvars.iv147.i = phi i64 [ %i.my, %.preheader.preheader.i ], [ %indvars.iv.next148.i, %._crit_edge102.i ] ; 2 uses
  %.12105.i = phi ptr [ %.8.lcssa.i, %.preheader.preheader.i ], [ %.lcssa109, %._crit_edge102.i ] ; 4 uses
  %i.qm = load ptr, ptr %0, align 8, !tbaa !9
  %i.qn = load i32, ptr %i.a, align 4, !tbaa !15
  %i.qo = sext i32 %i.qn to i64
  %i.qp = mul nsw i64 %i.qo, %i.ik
  %i.qq = load i64, ptr %i.il, align 8, !tbaa !16
  %i.qr = mul i64 %i.qp, %i.qq
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qm, i64 %i.qr
  %i.qt = getelementptr i8, ptr %i.qs, i64 %indvars.iv147.i
  %i.qu = getelementptr i8, ptr %i.qt, i64 %i.mz  ; 2 uses
  %i.qv = load i8, ptr %i.qu, align 1, !tbaa !17
  store i8 %i.qv, ptr %.12105.i, align 1, !tbaa !17
  %i.qw = getelementptr inbounds nuw i8, ptr %.12105.i, i64 1 ; 2 uses
  br i1 %exitcond146.not.i, label %._crit_edge102.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i
  %i.qx = getelementptr inbounds i8, ptr %i.qu, i64 %i.in ; 2 uses
  %i.qy = load i8, ptr %i.qx, align 1, !tbaa !17
  store i8 %i.qy, ptr %i.qw, align 1, !tbaa !17
  %i.qz = getelementptr inbounds nuw i8, ptr %.12105.i, i64 2 ; 2 uses
  br i1 %exitcond146.not.i.1, label %._crit_edge102.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ra = getelementptr inbounds i8, ptr %i.qx, i64 %i.in
  %i.rb = load i8, ptr %i.ra, align 1, !tbaa !17
  store i8 %i.rb, ptr %i.qz, align 1, !tbaa !17
  %i.rc = getelementptr inbounds nuw i8, ptr %.12105.i, i64 3
  br label %._crit_edge102.i

._crit_edge102.i:                                 ; preds = %bb.f, %bb.e, %.preheader.i
  %.lcssa109 = phi ptr [ %i.qw, %.preheader.i ], [ %i.qz, %bb.e ], [ %i.rc, %bb.f ]
  %indvars.iv.next148.i = add nsw i64 %indvars.iv147.i, 1 ; 2 uses
  %exitcond150.not.i = icmp eq i64 %indvars.iv.next148.i, %wide.trip.count.i
  br i1 %exitcond150.not.i, label %_ZN4ncnnL26transpose_pack_B_tile_int8ERKNS_3MatERS0_iiii.exit, label %.preheader.i, !llvm.loop !152

_ZN4ncnnL26transpose_pack_B_tile_int8ERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge102.i, %._crit_edge102.us.i.loopexit, %..preheader_crit_edge.us.i.us, %.preheader6.i, %.lr.ph106.split.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable
define hidden void @_ZN4ncnn36pack_A_tile_fp32_to_int8_avxvnniint8ERKNS_3MatERS0_iiiiS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6) local_unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !159  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !160
  %i.e = icmp eq i32 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load i32, ptr %i.h, align 4
  %i.j = sext i32 %i.i to i64
  %i.k = select i1 %i.e, i64 %i.g, i64 %i.j       ; 22 uses
  %i.l = icmp sgt i32 %3, 7
  br i1 %i.l, label %.lr.ph235.i, label %.preheader163.i

.lr.ph235.i:                                      ; preds = %bb.a
  %i.m = mul nsw i32 %i.b, %4
  %i.n = sext i32 %i.m to i64
  %i.o = sext i32 %2 to i64                       ; 2 uses
  %i.p = icmp sgt i32 %5, 3                       ; 3 uses
  %.idx443.i = shl i64 %i.k, 4                    ; 4 uses
  %.idx435.i = shl i64 %i.k, 3
  %.idx436.i = mul i64 %i.k, 12
  %.idx438.i = mul i64 %i.k, 20
  %.idx439.i = mul i64 %i.k, 24
  %.idx440.i = mul i64 %i.k, 28
  %i.q = trunc i64 %i.k to i32
  %i.r = insertelement <8 x i32> poison, i32 %i.q, i64 0
  %i.s = shufflevector <8 x i32> %i.r, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.t = mul <8 x i32> %i.s, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 3 uses
  %i.u = and i32 %5, -4                           ; 3 uses
  %i.v = zext nneg i32 %3 to i64
  br label %bb.b

.preheader163.loopexit.i:                         ; preds = %.loopexit165.i
  %i.w = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %.preheader163.i

.preheader163.i:                                  ; preds = %.preheader163.loopexit.i, %bb.a
  %.0389.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.w, %.preheader163.loopexit.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %.val, %bb.a ], [ %.12.i, %.preheader163.loopexit.i ] ; 4 uses
  %i.x = or disjoint i32 %.0389.lcssa.i, 3
  %i.y = icmp slt i32 %i.x, %3
  br i1 %i.y, label %.lr.ph279.i, label %.preheader155.i

.lr.ph279.i:                                      ; preds = %.preheader163.i
  %i.z = mul nsw i32 %i.b, %4
  %i.aa = sext i32 %i.z to i64                    ; 2 uses
  %i.ab = sext i32 %2 to i64                      ; 4 uses
  %i.ac = icmp sgt i32 %5, 3                      ; 2 uses
  %.idx.i = shl i64 %i.k, 3
  %.idx434.i = mul i64 %i.k, 12
  %i.ad = trunc i64 %i.k to i32
  %i.ae = insertelement <4 x i32> poison, i32 %i.ad, i64 0
  %i.af = shufflevector <4 x i32> %i.ae, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ag = mul <4 x i32> %i.af, <i32 0, i32 1, i32 2, i32 3> ; 5 uses
  %i.ah = and i32 %5, -4                          ; 2 uses
  %i.ai = zext i32 %.0389.lcssa.i to i64          ; 5 uses
  %i.aj = sext i32 %3 to i64
  %invariant.op.i = add nsw i64 %i.aj, -3         ; 3 uses
  switch i32 %i.b, label %.loopexit.i.preheader [
    i32 4, label %.preheader162.i.us
    i32 1, label %.preheader158.i.us
  ]

.loopexit.i.preheader:                            ; preds = %.lr.ph279.i
  %i.ak = add nuw nsw i64 %i.ai, 4
  %smax = tail call i64 @llvm.smax.i64(i64 %invariant.op.i, i64 %i.ak)
  %i.al = xor i64 %i.ai, -1
  %i.am = add nsw i64 %smax, %i.al
  %i.an = and i64 %i.am, -4
  %i.ao = add i64 %i.an, %i.ai
  %i.ap = add i64 %i.ao, 4
  br label %.preheader155.loopexit.i

.preheader162.i.us:                               ; preds = %.lr.ph279.i, %.loopexit.i.us
  %indvars.iv380.i.us = phi i64 [ %indvars.iv.next381.i.us, %.loopexit.i.us ], [ %i.ai, %.lr.ph279.i ] ; 3 uses
  %.13278.i.us = phi ptr [ %.21.i.us, %.loopexit.i.us ], [ %.0.lcssa.i, %.lr.ph279.i ] ; 2 uses
  %i.aq = load ptr, ptr %0, align 8, !tbaa !9
  %i.ar = add nsw i64 %indvars.iv380.i.us, %i.ab
  %i.as = mul i64 %i.ar, %i.k
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.as
  %i.au = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.aa ; 2 uses
  %i.av = load ptr, ptr %6, align 8, !tbaa !9
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.ab
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv380.i.us
  %i.ay = load <4 x float>, ptr %i.ax, align 16, !tbaa !17 ; 9 uses
  br i1 %i.ac, label %.lr.ph241.i.us, label %.preheader161.i.us

.lr.ph241.i.us:                                   ; preds = %.preheader162.i.us, %.lr.ph241.i.us
  %.14240.i.us = phi ptr [ %i.ce, %.lr.ph241.i.us ], [ %.13278.i.us, %.preheader162.i.us ] ; 2 uses
  %.0415239.i.us = phi ptr [ %i.cf, %.lr.ph241.i.us ], [ %i.au, %.preheader162.i.us ] ; 5 uses
  %.0425238.i.us = phi i32 [ %i.cg, %.lr.ph241.i.us ], [ 0, %.preheader162.i.us ]
  %i.az = load <4 x float>, ptr %.0415239.i.us, align 16, !tbaa !17
  %i.ba = getelementptr inbounds nuw i8, ptr %.0415239.i.us, i64 16
  %i.bb = load <4 x float>, ptr %i.ba, align 16, !tbaa !17
  %i.bc = getelementptr inbounds nuw i8, ptr %.0415239.i.us, i64 32
  %i.bd = load <4 x float>, ptr %i.bc, align 16, !tbaa !17
  %i.be = getelementptr inbounds nuw i8, ptr %.0415239.i.us, i64 48
  %i.bf = load <4 x float>, ptr %i.be, align 16, !tbaa !17
  %i.bg = fmul fast <4 x float> %i.az, %i.ay      ; 2 uses
  %i.bh = fmul fast <4 x float> %i.bb, %i.ay      ; 2 uses
  %i.bi = fmul fast <4 x float> %i.bd, %i.ay      ; 2 uses
  %i.bj = fmul fast <4 x float> %i.bf, %i.ay      ; 2 uses
  %i.bk = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bg)
  %i.bl = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bh)
  %i.bm = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bi)
  %i.bn = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bj)
  %i.bo = fadd fast <4 x float> %i.bk, %i.bg
  %i.bp = fadd fast <4 x float> %i.bl, %i.bh
  %i.bq = fadd fast <4 x float> %i.bm, %i.bi
  %i.br = fadd fast <4 x float> %i.bn, %i.bj
  %i.bs = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bo)
  %i.bt = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bp)
  %i.bu = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bq)
  %i.bv = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.br)
  %i.bw = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bs, <4 x i32> %i.bt)
  %i.bx = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bu, <4 x i32> %i.bv)
  %i.by = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bw, <8 x i16> splat (i16 -127))
  %i.bz = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.by, <8 x i16> splat (i16 127))
  %i.ca = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bx, <8 x i16> splat (i16 -127))
  %i.cb = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ca, <8 x i16> splat (i16 127))
  %i.cc = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.bz, <8 x i16> %i.cb)
  %i.cd = shufflevector <16 x i8> %i.cc, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i8> %i.cd, ptr %.14240.i.us, align 1, !tbaa !17
  %i.ce = getelementptr inbounds nuw i8, ptr %.14240.i.us, i64 16 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0415239.i.us, i64 64 ; 2 uses
  %i.cg = add nuw nsw i32 %.0425238.i.us, 4       ; 2 uses
  %i.ch = or disjoint i32 %i.cg, 3
  %i.ci = icmp slt i32 %i.ch, %5
  br i1 %i.ci, label %.lr.ph241.i.us, label %.preheader161.i.us, !llvm.loop !161

.preheader161.i.us:                               ; preds = %.lr.ph241.i.us, %.preheader162.i.us
  %.0425.lcssa.i.us = phi i32 [ 0, %.preheader162.i.us ], [ %i.ah, %.lr.ph241.i.us ] ; 3 uses
  %.0415.lcssa.i.us = phi ptr [ %i.au, %.preheader162.i.us ], [ %i.cf, %.lr.ph241.i.us ] ; 2 uses
  %.14.lcssa.i.us = phi ptr [ %.13278.i.us, %.preheader162.i.us ], [ %i.ce, %.lr.ph241.i.us ] ; 2 uses
  %i.cj = or disjoint i32 %.0425.lcssa.i.us, 1
  %i.ck = icmp slt i32 %i.cj, %5
  br i1 %i.ck, label %.lr.ph248.i.us, label %.preheader159.i.us

.lr.ph248.i.us:                                   ; preds = %.preheader161.i.us, %.lr.ph248.i.us
  %.15247.i.us = phi ptr [ %i.de, %.lr.ph248.i.us ], [ %.14.lcssa.i.us, %.preheader161.i.us ] ; 2 uses
  %.1416246.i.us = phi ptr [ %i.df, %.lr.ph248.i.us ], [ %.0415.lcssa.i.us, %.preheader161.i.us ] ; 3 uses
  %.1426245.i.us = phi i32 [ %i.dg, %.lr.ph248.i.us ], [ %.0425.lcssa.i.us, %.preheader161.i.us ]
  %i.cl = load <4 x float>, ptr %.1416246.i.us, align 16, !tbaa !17
  %i.cm = getelementptr inbounds nuw i8, ptr %.1416246.i.us, i64 16
  %i.cn = load <4 x float>, ptr %i.cm, align 16, !tbaa !17
  %i.co = fmul fast <4 x float> %i.cl, %i.ay      ; 2 uses
  %i.cp = fmul fast <4 x float> %i.cn, %i.ay      ; 2 uses
  %i.cq = shufflevector <4 x float> %i.co, <4 x float> %i.cp, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.cr = shufflevector <4 x float> %i.co, <4 x float> %i.cp, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.cs = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.cq)
  %i.ct = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.cr)
  %i.cu = fadd fast <4 x float> %i.cs, %i.cq
  %i.cv = fadd fast <4 x float> %i.ct, %i.cr
  %i.cw = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cu)
  %i.cx = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cv)
  %i.cy = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.cw, <4 x i32> %i.cx)
  %i.cz = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.cy, <8 x i16> splat (i16 -127))
  %i.da = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.cz, <8 x i16> splat (i16 127))
  %i.db = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.da, <8 x i16> poison)
  %i.dc = bitcast <16 x i8> %i.db to <2 x i64>
  %i.dd = extractelement <2 x i64> %i.dc, i64 0
  store i64 %i.dd, ptr %.15247.i.us, align 8, !tbaa !162
  %i.de = getelementptr inbounds nuw i8, ptr %.15247.i.us, i64 8 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.1416246.i.us, i64 32 ; 2 uses
  %i.dg = add nuw nsw i32 %.1426245.i.us, 2       ; 3 uses
  %i.dh = or disjoint i32 %i.dg, 1
  %i.di = icmp slt i32 %i.dh, %5
  br i1 %i.di, label %.lr.ph248.i.us, label %.preheader159.i.us, !llvm.loop !163

.preheader159.i.us:                               ; preds = %.lr.ph248.i.us, %.preheader161.i.us
  %.1426.lcssa.i.us = phi i32 [ %.0425.lcssa.i.us, %.preheader161.i.us ], [ %i.dg, %.lr.ph248.i.us ] ; 5 uses
  %.1416.lcssa.i.us = phi ptr [ %.0415.lcssa.i.us, %.preheader161.i.us ], [ %i.df, %.lr.ph248.i.us ] ; 3 uses
  %.15.lcssa.i.us = phi ptr [ %.14.lcssa.i.us, %.preheader161.i.us ], [ %i.de, %.lr.ph248.i.us ] ; 4 uses
  %i.dj = icmp slt i32 %.1426.lcssa.i.us, %5
  br i1 %i.dj, label %.lr.ph255.i.us.preheader, label %.loopexit.i.us

.lr.ph255.i.us.preheader:                         ; preds = %.preheader159.i.us
  %i.dk = sub i32 %5, %.1426.lcssa.i.us
  %.neg288 = add i32 %.1426.lcssa.i.us, 1
  %xtraiter284 = and i32 %i.dk, 1
  %lcmp.mod285.not = icmp eq i32 %xtraiter284, 0
  br i1 %lcmp.mod285.not, label %.lr.ph255.i.us.prol.loopexit, label %.lr.ph255.i.us.prol

.lr.ph255.i.us.prol:                              ; preds = %.lr.ph255.i.us.preheader
  %i.dl = load <4 x float>, ptr %.1416.lcssa.i.us, align 16, !tbaa !17
  %i.dm = fmul fast <4 x float> %i.dl, %i.ay      ; 2 uses
  %i.dn = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.dm)
  %i.do = fadd fast <4 x float> %i.dn, %i.dm
  %i.dp = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.do) ; 2 uses
  %i.dq = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.dp, <4 x i32> %i.dp)
  %i.dr = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.dq, <8 x i16> splat (i16 -127))
  %i.ds = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.dr, <8 x i16> splat (i16 127))
  %i.dt = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ds, <8 x i16> poison)
  %i.du = bitcast <16 x i8> %i.dt to <4 x i32>
  %i.dv = extractelement <4 x i32> %i.du, i64 0
  store i32 %i.dv, ptr %.15.lcssa.i.us, align 4, !tbaa !164
  %i.dw = getelementptr inbounds nuw i8, ptr %.15.lcssa.i.us, i64 4 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.1416.lcssa.i.us, i64 16
  %i.dy = add nuw nsw i32 %.1426.lcssa.i.us, 1
  br label %.lr.ph255.i.us.prol.loopexit

.lr.ph255.i.us.prol.loopexit:                     ; preds = %.lr.ph255.i.us.prol, %.lr.ph255.i.us.preheader
  %.lcssa256.unr = phi ptr [ poison, %.lr.ph255.i.us.preheader ], [ %i.dw, %.lr.ph255.i.us.prol ]
  %.16254.i.us.unr = phi ptr [ %.15.lcssa.i.us, %.lr.ph255.i.us.preheader ], [ %i.dw, %.lr.ph255.i.us.prol ]
  %.2417253.i.us.unr = phi ptr [ %.1416.lcssa.i.us, %.lr.ph255.i.us.preheader ], [ %i.dx, %.lr.ph255.i.us.prol ]
  %.2427252.i.us.unr = phi i32 [ %.1426.lcssa.i.us, %.lr.ph255.i.us.preheader ], [ %i.dy, %.lr.ph255.i.us.prol ]
  %i.dz = icmp eq i32 %5, %.neg288
  br i1 %i.dz, label %.loopexit.i.us, label %.lr.ph255.i.us

.lr.ph255.i.us:                                   ; preds = %.lr.ph255.i.us.prol.loopexit, %.lr.ph255.i.us
  %.16254.i.us = phi ptr [ %i.ey, %.lr.ph255.i.us ], [ %.16254.i.us.unr, %.lr.ph255.i.us.prol.loopexit ] ; 3 uses
  %.2417253.i.us = phi ptr [ %i.ez, %.lr.ph255.i.us ], [ %.2417253.i.us.unr, %.lr.ph255.i.us.prol.loopexit ] ; 3 uses
  %.2427252.i.us = phi i32 [ %i.fa, %.lr.ph255.i.us ], [ %.2427252.i.us.unr, %.lr.ph255.i.us.prol.loopexit ]
  %i.ea = load <4 x float>, ptr %.2417253.i.us, align 16, !tbaa !17
  %i.eb = fmul fast <4 x float> %i.ea, %i.ay      ; 2 uses
  %i.ec = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.eb)
  %i.ed = fadd fast <4 x float> %i.ec, %i.eb
  %i.ee = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ed) ; 2 uses
  %i.ef = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ee, <4 x i32> %i.ee)
  %i.eg = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ef, <8 x i16> splat (i16 -127))
  %i.eh = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.eg, <8 x i16> splat (i16 127))
  %i.ei = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.eh, <8 x i16> poison)
  %i.ej = bitcast <16 x i8> %i.ei to <4 x i32>
  %i.ek = extractelement <4 x i32> %i.ej, i64 0
  store i32 %i.ek, ptr %.16254.i.us, align 4, !tbaa !164
  %i.el = getelementptr inbounds nuw i8, ptr %.16254.i.us, i64 4
  %i.em = getelementptr inbounds nuw i8, ptr %.2417253.i.us, i64 16
  %i.en = load <4 x float>, ptr %i.em, align 16, !tbaa !17
  %i.eo = fmul fast <4 x float> %i.en, %i.ay      ; 2 uses
  %i.ep = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.eo)
  %i.eq = fadd fast <4 x float> %i.ep, %i.eo
  %i.er = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.eq) ; 2 uses
  %i.es = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.er, <4 x i32> %i.er)
  %i.et = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.es, <8 x i16> splat (i16 -127))
  %i.eu = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.et, <8 x i16> splat (i16 127))
  %i.ev = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.eu, <8 x i16> poison)
  %i.ew = bitcast <16 x i8> %i.ev to <4 x i32>
  %i.ex = extractelement <4 x i32> %i.ew, i64 0
  store i32 %i.ex, ptr %i.el, align 4, !tbaa !164
  %i.ey = getelementptr inbounds nuw i8, ptr %.16254.i.us, i64 8 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.2417253.i.us, i64 32
  %i.fa = add nuw nsw i32 %.2427252.i.us, 2       ; 2 uses
  %exitcond378.not.i.us.1 = icmp eq i32 %i.fa, %5
  br i1 %exitcond378.not.i.us.1, label %.loopexit.i.us, label %.lr.ph255.i.us, !llvm.loop !165

.loopexit.i.us:                                   ; preds = %.lr.ph255.i.us.prol.loopexit, %.lr.ph255.i.us, %.preheader159.i.us
  %.21.i.us = phi ptr [ %.15.lcssa.i.us, %.preheader159.i.us ], [ %.lcssa256.unr, %.lr.ph255.i.us.prol.loopexit ], [ %i.ey, %.lr.ph255.i.us ] ; 2 uses
  %indvars.iv.next381.i.us = add nuw nsw i64 %indvars.iv380.i.us, 4 ; 3 uses
  %i.fb = icmp slt i64 %indvars.iv.next381.i.us, %invariant.op.i
  br i1 %i.fb, label %.preheader162.i.us, label %.preheader155.loopexit.i, !llvm.loop !166

.preheader158.i.us:                               ; preds = %.lr.ph279.i, %.loopexit.i.us51
  %indvars.iv380.i.us49 = phi i64 [ %indvars.iv.next381.i.us53, %.loopexit.i.us51 ], [ %i.ai, %.lr.ph279.i ] ; 3 uses
  %.13278.i.us50 = phi ptr [ %.21.i.us52, %.loopexit.i.us51 ], [ %.0.lcssa.i, %.lr.ph279.i ] ; 2 uses
  %i.fc = load ptr, ptr %0, align 8, !tbaa !9
  %i.fd = add nsw i64 %indvars.iv380.i.us49, %i.ab
  %i.fe = mul i64 %i.fd, %i.k
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.fe
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.aa ; 2 uses
  %i.fh = load ptr, ptr %6, align 8, !tbaa !9
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.ab
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv380.i.us49
  %i.fk = load <4 x float>, ptr %i.fj, align 16, !tbaa !17 ; 9 uses
  br i1 %i.ac, label %.lr.ph261.i.us, label %.preheader157.i.us

.lr.ph261.i.us:                                   ; preds = %.preheader158.i.us, %.lr.ph261.i.us
  %.18260.i.us = phi ptr [ %i.gy, %.lr.ph261.i.us ], [ %.13278.i.us50, %.preheader158.i.us ] ; 2 uses
  %.4419259.i.us = phi ptr [ %i.gz, %.lr.ph261.i.us ], [ %i.fg, %.preheader158.i.us ] ; 5 uses
  %.0428258.i.us = phi i32 [ %i.ha, %.lr.ph261.i.us ], [ 0, %.preheader158.i.us ]
  %i.fl = load <4 x float>, ptr %.4419259.i.us, align 1, !tbaa !17 ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.4419259.i.us, i64 %i.k
end_hunk_0
begin_hunk_1_@_ZN4ncnn46transpose_pack_A_tile_fp32_to_int8_avxvnniint8ERKNS_3MatERS0_iiiiS2_:bb.a
.lr.ph292.i:                                      ; preds = %bb.l, %.lr.ph292.i
  %.30291.i = phi ptr [ %i.adu, %.lr.ph292.i ], [ %.27308.i, %bb.l ] ; 2 uses
  %.0452290.i = phi i32 [ %i.adw, %.lr.ph292.i ], [ 0, %bb.l ]
  %.2468289.i = phi ptr [ %i.adv, %.lr.ph292.i ], [ %i.aci, %bb.l ] ; 2 uses
  %i.adj = load <4 x float>, ptr %.2468289.i, align 16, !tbaa !17
  %i.adk = fmul fast <4 x float> %i.adj, %i.adi   ; 2 uses
  %i.adl = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.adk)
  %i.adm = fadd fast <4 x float> %i.adl, %i.adk
  %i.adn = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.adm) ; 2 uses
  %i.ado = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.adn, <4 x i32> %i.adn)
  %i.adp = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ado, <8 x i16> splat (i16 -127))
  %i.adq = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.adp, <8 x i16> splat (i16 127))
  %i.adr = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.adq, <8 x i16> poison)
  %i.ads = bitcast <16 x i8> %i.adr to <4 x i32>
  %i.adt = extractelement <4 x i32> %i.ads, i64 0
  store i32 %i.adt, ptr %.30291.i, align 4, !tbaa !164
  %i.adu = getelementptr inbounds nuw i8, ptr %.30291.i, i64 4 ; 2 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %.2468289.i, i64 %.idx488.i
  %i.adw = add nuw nsw i32 %.0452290.i, 4         ; 2 uses
  %i.adx = or disjoint i32 %i.adw, 3
  %i.ady = icmp slt i32 %i.adx, %5
  br i1 %i.ady, label %.lr.ph292.i, label %.loopexit.i, !llvm.loop !225

bb.m:                                             ; preds = %bb.j
  %i.adz = insertelement <4 x float> poison, float %i.acl, i64 0
  %i.aea = shufflevector <4 x float> %i.adz, <4 x float> poison, <4 x i32> zeroinitializer
  br i1 %i.vt, label %.lr.ph298.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph298.i, %bb.m
  %.4470.lcssa.i = phi ptr [ %i.aci, %bb.m ], [ %i.aew, %.lr.ph298.i ] ; 3 uses
  %.0449.lcssa.i = phi i32 [ 0, %bb.m ], [ %i.vy, %.lr.ph298.i ] ; 4 uses
  %.32.lcssa.i = phi ptr [ %.27308.i, %bb.m ], [ %i.aev, %.lr.ph298.i ] ; 4 uses
  %i.aeb = icmp slt i32 %.0449.lcssa.i, %5
  br i1 %i.aeb, label %.lr.ph305.i.preheader, label %.loopexit.i

.lr.ph305.i.preheader:                            ; preds = %.preheader.i
  %.neg207 = or disjoint i32 %.0449.lcssa.i, 1
  br i1 %lcmp.mod206.not, label %.lr.ph305.i.prol.loopexit, label %.lr.ph305.i.prol

.lr.ph305.i.prol:                                 ; preds = %.lr.ph305.i.preheader
  %i.aec = load float, ptr %.4470.lcssa.i, align 4, !tbaa !180
  %i.aed = fmul fast float %i.aec, %i.acl
  %i.aee = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.aed)
  %i.aef = fptosi float %i.aee to i32
  %spec.select.i149.i.prol = tail call i32 @llvm.smax.i32(i32 %i.aef, i32 -127)
  %.0.i150.i.prol = tail call i32 @llvm.smin.i32(i32 %spec.select.i149.i.prol, i32 127)
  %.0.i.i.prol = trunc nsw i32 %.0.i150.i.prol to i8
  store i8 %.0.i.i.prol, ptr %.32.lcssa.i, align 1, !tbaa !17
  %i.aeg = getelementptr inbounds nuw i8, ptr %.32.lcssa.i, i64 1 ; 2 uses
  %i.aeh = getelementptr inbounds nuw [4 x i8], ptr %.4470.lcssa.i, i64 %i.k
  %i.aei = or disjoint i32 %.0449.lcssa.i, 1
  br label %.lr.ph305.i.prol.loopexit

.lr.ph305.i.prol.loopexit:                        ; preds = %.lr.ph305.i.prol, %.lr.ph305.i.preheader
  %.lcssa172.unr = phi ptr [ poison, %.lr.ph305.i.preheader ], [ %i.aeg, %.lr.ph305.i.prol ]
  %.33304.i.unr = phi ptr [ %.32.lcssa.i, %.lr.ph305.i.preheader ], [ %i.aeg, %.lr.ph305.i.prol ]
  %.1450303.i.unr = phi i32 [ %.0449.lcssa.i, %.lr.ph305.i.preheader ], [ %i.aei, %.lr.ph305.i.prol ]
  %.5471302.i.unr = phi ptr [ %.4470.lcssa.i, %.lr.ph305.i.preheader ], [ %i.aeh, %.lr.ph305.i.prol ]
  %i.aej = icmp eq i32 %5, %.neg207
  br i1 %i.aej, label %.loopexit.i, label %.lr.ph305.i

.lr.ph298.i:                                      ; preds = %bb.m, %.lr.ph298.i
  %.32297.i = phi ptr [ %i.aev, %.lr.ph298.i ], [ %.27308.i, %bb.m ] ; 2 uses
  %.0449296.i = phi i32 [ %i.aex, %.lr.ph298.i ], [ 0, %bb.m ]
  %.4470295.i = phi ptr [ %i.aew, %.lr.ph298.i ], [ %i.aci, %bb.m ] ; 2 uses
  %i.aek = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %.4470295.i, <4 x i32> %i.vx, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ael = fmul fast <4 x float> %i.aek, %i.aea   ; 2 uses
  %i.aem = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ael)
  %i.aen = fadd fast <4 x float> %i.aem, %i.ael
  %i.aeo = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aen) ; 2 uses
  %i.aep = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.aeo, <4 x i32> %i.aeo)
  %i.aeq = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aep, <8 x i16> splat (i16 -127))
  %i.aer = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.aeq, <8 x i16> splat (i16 127))
  %i.aes = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.aer, <8 x i16> poison)
  %i.aet = bitcast <16 x i8> %i.aes to <4 x i32>
  %i.aeu = extractelement <4 x i32> %i.aet, i64 0
  store i32 %i.aeu, ptr %.32297.i, align 4, !tbaa !164
  %i.aev = getelementptr inbounds nuw i8, ptr %.32297.i, i64 4 ; 2 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %.4470295.i, i64 %.idx488.i ; 2 uses
  %i.aex = add nuw nsw i32 %.0449296.i, 4         ; 2 uses
  %i.aey = or disjoint i32 %i.aex, 3
  %i.aez = icmp slt i32 %i.aey, %5
  br i1 %i.aez, label %.lr.ph298.i, label %.preheader.i, !llvm.loop !226

.lr.ph305.i:                                      ; preds = %.lr.ph305.i.prol.loopexit, %.lr.ph305.i
  %.33304.i = phi ptr [ %i.afk, %.lr.ph305.i ], [ %.33304.i.unr, %.lr.ph305.i.prol.loopexit ] ; 3 uses
  %.1450303.i = phi i32 [ %i.afm, %.lr.ph305.i ], [ %.1450303.i.unr, %.lr.ph305.i.prol.loopexit ]
  %.5471302.i = phi ptr [ %i.afl, %.lr.ph305.i ], [ %.5471302.i.unr, %.lr.ph305.i.prol.loopexit ] ; 2 uses
  %i.afa = load float, ptr %.5471302.i, align 4, !tbaa !180
  %i.afb = fmul fast float %i.afa, %i.acl
  %i.afc = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.afb)
  %i.afd = fptosi float %i.afc to i32
  %spec.select.i149.i = tail call i32 @llvm.smax.i32(i32 %i.afd, i32 -127)
  %.0.i150.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i149.i, i32 127)
  %.0.i.i = trunc nsw i32 %.0.i150.i to i8
  store i8 %.0.i.i, ptr %.33304.i, align 1, !tbaa !17
  %i.afe = getelementptr inbounds nuw i8, ptr %.33304.i, i64 1
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %.5471302.i, i64 %i.k ; 2 uses
  %i.afg = load float, ptr %i.aff, align 4, !tbaa !180
  %i.afh = fmul fast float %i.afg, %i.acl
  %i.afi = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.afh)
  %i.afj = fptosi float %i.afi to i32
  %spec.select.i149.i.1 = tail call i32 @llvm.smax.i32(i32 %i.afj, i32 -127)
  %.0.i150.i.1 = tail call i32 @llvm.smin.i32(i32 %spec.select.i149.i.1, i32 127)
  %.0.i.i.1 = trunc nsw i32 %.0.i150.i.1 to i8
  store i8 %.0.i.i.1, ptr %i.afe, align 1, !tbaa !17
  %i.afk = getelementptr inbounds nuw i8, ptr %.33304.i, i64 2 ; 2 uses
  %i.afl = getelementptr inbounds nuw [4 x i8], ptr %i.aff, i64 %i.k
  %i.afm = add nuw nsw i32 %.1450303.i, 2         ; 2 uses
  %exitcond363.not.i.1 = icmp eq i32 %i.afm, %5
  br i1 %exitcond363.not.i.1, label %.loopexit.i, label %.lr.ph305.i, !llvm.loop !227

.loopexit.i:                                      ; preds = %.lr.ph305.i.prol.loopexit, %.lr.ph305.i, %.lr.ph292.i, %.lr.ph286.i, %.preheader.i, %bb.l, %bb.k, %bb.j
  %.34.i = phi ptr [ %.27308.i, %bb.j ], [ %.32.lcssa.i, %.preheader.i ], [ %i.adc, %.lr.ph286.i ], [ %i.adu, %.lr.ph292.i ], [ %.27308.i, %bb.l ], [ %.27308.i, %bb.k ], [ %.lcssa172.unr, %.lr.ph305.i.prol.loopexit ], [ %i.afk, %.lr.ph305.i ]
  %indvars.iv.next365.i = add nsw i64 %indvars.iv364.i, 1 ; 2 uses
  %exitcond367.not.i = icmp eq i64 %indvars.iv.next365.i, %wide.trip.count.i
  br i1 %exitcond367.not.i, label %_ZN4ncnnL34transpose_pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit, label %bb.j, !llvm.loop !228

_ZN4ncnnL34transpose_pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit: ; preds = %.loopexit.i, %.preheader157.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable
define hidden void @_ZN4ncnn36pack_B_tile_fp32_to_int8_avxvnniint8ERKNS_3MatERS0_iiiif(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef nofpclass(nan inf) %6) local_unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !159  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !160
  %i.e = icmp eq i32 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load i32, ptr %i.h, align 4
  %i.j = sext i32 %i.i to i64
  %i.k = select i1 %i.e, i64 %i.g, i64 %i.j       ; 22 uses
  %i.l = icmp sgt i32 %3, 7
  br i1 %i.l, label %.lr.ph218.i, label %.preheader146.i

.lr.ph218.i:                                      ; preds = %bb.a
  %i.m = mul nsw i32 %i.b, %4
  %i.n = sext i32 %i.m to i64
  %i.o = insertelement <8 x float> poison, float %6, i64 0
  %i.p = shufflevector <8 x float> %i.o, <8 x float> poison, <8 x i32> zeroinitializer ; 21 uses
  %i.q = icmp sgt i32 %5, 3                       ; 3 uses
  %.idx388.i = shl i64 %i.k, 4                    ; 4 uses
  %.idx380.i = shl i64 %i.k, 3
  %.idx381.i = mul i64 %i.k, 12
  %.idx383.i = mul i64 %i.k, 20
  %.idx384.i = mul i64 %i.k, 24
  %.idx385.i = mul i64 %i.k, 28
  %i.r = trunc i64 %i.k to i32
  %i.s = insertelement <8 x i32> poison, i32 %i.r, i64 0
  %i.t = shufflevector <8 x i32> %i.s, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.u = mul <8 x i32> %i.t, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 3 uses
  %i.v = and i32 %5, -4                           ; 3 uses
  %i.w = zext nneg i32 %3 to i64
  %i.x = sext i32 %2 to i64
  br label %bb.b

.preheader146.loopexit.i:                         ; preds = %.loopexit148.i
  %i.y = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %.preheader146.i

.preheader146.i:                                  ; preds = %.preheader146.loopexit.i, %bb.a
  %.0334.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.y, %.preheader146.loopexit.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %.val, %bb.a ], [ %.12.i, %.preheader146.loopexit.i ] ; 4 uses
  %i.z = or disjoint i32 %.0334.lcssa.i, 3
  %i.aa = icmp slt i32 %i.z, %3
  br i1 %i.aa, label %.lr.ph262.i, label %.preheader138.i

.lr.ph262.i:                                      ; preds = %.preheader146.i
  %i.ab = mul nsw i32 %i.b, %4
  %i.ac = sext i32 %i.ab to i64                   ; 2 uses
  %i.ad = insertelement <4 x float> poison, float %6, i64 0
  %i.ae = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> zeroinitializer ; 18 uses
  %i.af = icmp sgt i32 %5, 3                      ; 2 uses
  %.idx.i = shl i64 %i.k, 3
  %.idx379.i = mul i64 %i.k, 12
  %i.ag = trunc i64 %i.k to i32
  %i.ah = insertelement <4 x i32> poison, i32 %i.ag, i64 0
  %i.ai = shufflevector <4 x i32> %i.ah, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aj = mul <4 x i32> %i.ai, <i32 0, i32 1, i32 2, i32 3> ; 5 uses
  %i.ak = and i32 %5, -4                          ; 2 uses
  %i.al = zext i32 %.0334.lcssa.i to i64          ; 5 uses
  %i.am = sext i32 %3 to i64
  %i.an = sext i32 %2 to i64                      ; 2 uses
  %invariant.op.i = add nsw i64 %i.am, -3         ; 3 uses
  switch i32 %i.b, label %.loopexit.i.preheader [
    i32 4, label %.preheader145.i.us
    i32 1, label %.preheader141.i.us
  ]

.loopexit.i.preheader:                            ; preds = %.lr.ph262.i
  %i.ao = add nuw nsw i64 %i.al, 4
  %smax = tail call i64 @llvm.smax.i64(i64 %invariant.op.i, i64 %i.ao)
  %i.ap = xor i64 %i.al, -1
  %i.aq = add nsw i64 %smax, %i.ap
  %i.ar = and i64 %i.aq, -4
  %i.as = add i64 %i.ar, %i.al
  %i.at = add i64 %i.as, 4
  br label %.preheader138.loopexit.i

.preheader145.i.us:                               ; preds = %.lr.ph262.i, %.loopexit.i.us
  %indvars.iv363.i.us = phi i64 [ %indvars.iv.next364.i.us, %.loopexit.i.us ], [ %i.al, %.lr.ph262.i ] ; 2 uses
  %.13261.i.us = phi ptr [ %.21.i.us, %.loopexit.i.us ], [ %.0.lcssa.i, %.lr.ph262.i ] ; 2 uses
  %i.au = load ptr, ptr %0, align 8, !tbaa !9
  %i.av = add nsw i64 %indvars.iv363.i.us, %i.an
  %i.aw = mul i64 %i.av, %i.k
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.aw
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.ac ; 2 uses
  br i1 %i.af, label %.lr.ph224.i.us, label %.preheader144.i.us

.lr.ph224.i.us:                                   ; preds = %.preheader145.i.us, %.lr.ph224.i.us
  %.14223.i.us = phi ptr [ %i.ce, %.lr.ph224.i.us ], [ %.13261.i.us, %.preheader145.i.us ] ; 2 uses
  %.0363222.i.us = phi ptr [ %i.cf, %.lr.ph224.i.us ], [ %i.ay, %.preheader145.i.us ] ; 5 uses
  %.0373221.i.us = phi i32 [ %i.cg, %.lr.ph224.i.us ], [ 0, %.preheader145.i.us ]
  %i.az = load <4 x float>, ptr %.0363222.i.us, align 16, !tbaa !17
  %i.ba = getelementptr inbounds nuw i8, ptr %.0363222.i.us, i64 16
  %i.bb = load <4 x float>, ptr %i.ba, align 16, !tbaa !17
  %i.bc = getelementptr inbounds nuw i8, ptr %.0363222.i.us, i64 32
  %i.bd = load <4 x float>, ptr %i.bc, align 16, !tbaa !17
  %i.be = getelementptr inbounds nuw i8, ptr %.0363222.i.us, i64 48
  %i.bf = load <4 x float>, ptr %i.be, align 16, !tbaa !17
  %i.bg = fmul fast <4 x float> %i.az, %i.ae      ; 2 uses
  %i.bh = fmul fast <4 x float> %i.bb, %i.ae      ; 2 uses
  %i.bi = fmul fast <4 x float> %i.bd, %i.ae      ; 2 uses
  %i.bj = fmul fast <4 x float> %i.bf, %i.ae      ; 2 uses
  %i.bk = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bg)
  %i.bl = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bh)
  %i.bm = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bi)
  %i.bn = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bj)
  %i.bo = fadd fast <4 x float> %i.bk, %i.bg
  %i.bp = fadd fast <4 x float> %i.bl, %i.bh
  %i.bq = fadd fast <4 x float> %i.bm, %i.bi
  %i.br = fadd fast <4 x float> %i.bn, %i.bj
  %i.bs = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bo)
  %i.bt = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bp)
  %i.bu = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bq)
  %i.bv = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.br)
  %i.bw = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bs, <4 x i32> %i.bt)
  %i.bx = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bu, <4 x i32> %i.bv)
  %i.by = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bw, <8 x i16> splat (i16 -127))
  %i.bz = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.by, <8 x i16> splat (i16 127))
  %i.ca = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bx, <8 x i16> splat (i16 -127))
  %i.cb = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ca, <8 x i16> splat (i16 127))
  %i.cc = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.bz, <8 x i16> %i.cb)
  %i.cd = shufflevector <16 x i8> %i.cc, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i8> %i.cd, ptr %.14223.i.us, align 1, !tbaa !17
  %i.ce = getelementptr inbounds nuw i8, ptr %.14223.i.us, i64 16 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0363222.i.us, i64 64 ; 2 uses
  %i.cg = add nuw nsw i32 %.0373221.i.us, 4       ; 2 uses
  %i.ch = or disjoint i32 %i.cg, 3
  %i.ci = icmp slt i32 %i.ch, %5
  br i1 %i.ci, label %.lr.ph224.i.us, label %.preheader144.i.us, !llvm.loop !229

.preheader144.i.us:                               ; preds = %.lr.ph224.i.us, %.preheader145.i.us
  %.0373.lcssa.i.us = phi i32 [ 0, %.preheader145.i.us ], [ %i.ak, %.lr.ph224.i.us ] ; 3 uses
  %.0363.lcssa.i.us = phi ptr [ %i.ay, %.preheader145.i.us ], [ %i.cf, %.lr.ph224.i.us ] ; 2 uses
  %.14.lcssa.i.us = phi ptr [ %.13261.i.us, %.preheader145.i.us ], [ %i.ce, %.lr.ph224.i.us ] ; 2 uses
  %i.cj = or disjoint i32 %.0373.lcssa.i.us, 1
  %i.ck = icmp slt i32 %i.cj, %5
  br i1 %i.ck, label %.lr.ph231.i.us, label %.preheader142.i.us

.lr.ph231.i.us:                                   ; preds = %.preheader144.i.us, %.lr.ph231.i.us
  %.15230.i.us = phi ptr [ %i.de, %.lr.ph231.i.us ], [ %.14.lcssa.i.us, %.preheader144.i.us ] ; 2 uses
  %.1364229.i.us = phi ptr [ %i.df, %.lr.ph231.i.us ], [ %.0363.lcssa.i.us, %.preheader144.i.us ] ; 3 uses
  %.1374228.i.us = phi i32 [ %i.dg, %.lr.ph231.i.us ], [ %.0373.lcssa.i.us, %.preheader144.i.us ]
  %i.cl = load <4 x float>, ptr %.1364229.i.us, align 16, !tbaa !17
  %i.cm = getelementptr inbounds nuw i8, ptr %.1364229.i.us, i64 16
  %i.cn = load <4 x float>, ptr %i.cm, align 16, !tbaa !17
  %i.co = fmul fast <4 x float> %i.cl, %i.ae      ; 2 uses
  %i.cp = fmul fast <4 x float> %i.cn, %i.ae      ; 2 uses
  %i.cq = shufflevector <4 x float> %i.co, <4 x float> %i.cp, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.cr = shufflevector <4 x float> %i.co, <4 x float> %i.cp, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.cs = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.cq)
  %i.ct = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.cr)
  %i.cu = fadd fast <4 x float> %i.cs, %i.cq
  %i.cv = fadd fast <4 x float> %i.ct, %i.cr
  %i.cw = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cu)
  %i.cx = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cv)
  %i.cy = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.cw, <4 x i32> %i.cx)
  %i.cz = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.cy, <8 x i16> splat (i16 -127))
  %i.da = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.cz, <8 x i16> splat (i16 127))
  %i.db = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.da, <8 x i16> poison)
  %i.dc = bitcast <16 x i8> %i.db to <2 x i64>
  %i.dd = extractelement <2 x i64> %i.dc, i64 0
  store i64 %i.dd, ptr %.15230.i.us, align 8, !tbaa !162
  %i.de = getelementptr inbounds nuw i8, ptr %.15230.i.us, i64 8 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.1364229.i.us, i64 32 ; 2 uses
  %i.dg = add nuw nsw i32 %.1374228.i.us, 2       ; 3 uses
  %i.dh = or disjoint i32 %i.dg, 1
  %i.di = icmp slt i32 %i.dh, %5
  br i1 %i.di, label %.lr.ph231.i.us, label %.preheader142.i.us, !llvm.loop !230

.preheader142.i.us:                               ; preds = %.lr.ph231.i.us, %.preheader144.i.us
  %.1374.lcssa.i.us = phi i32 [ %.0373.lcssa.i.us, %.preheader144.i.us ], [ %i.dg, %.lr.ph231.i.us ] ; 5 uses
  %.1364.lcssa.i.us = phi ptr [ %.0363.lcssa.i.us, %.preheader144.i.us ], [ %i.df, %.lr.ph231.i.us ] ; 3 uses
  %.15.lcssa.i.us = phi ptr [ %.14.lcssa.i.us, %.preheader144.i.us ], [ %i.de, %.lr.ph231.i.us ] ; 4 uses
  %i.dj = icmp slt i32 %.1374.lcssa.i.us, %5
  br i1 %i.dj, label %.lr.ph238.i.us.preheader, label %.loopexit.i.us

.lr.ph238.i.us.preheader:                         ; preds = %.preheader142.i.us
  %i.dk = sub i32 %5, %.1374.lcssa.i.us
  %.neg286 = add i32 %.1374.lcssa.i.us, 1
  %xtraiter282 = and i32 %i.dk, 1
  %lcmp.mod283.not = icmp eq i32 %xtraiter282, 0
  br i1 %lcmp.mod283.not, label %.lr.ph238.i.us.prol.loopexit, label %.lr.ph238.i.us.prol

.lr.ph238.i.us.prol:                              ; preds = %.lr.ph238.i.us.preheader
  %i.dl = load <4 x float>, ptr %.1364.lcssa.i.us, align 16, !tbaa !17
  %i.dm = fmul fast <4 x float> %i.dl, %i.ae      ; 2 uses
  %i.dn = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.dm)
  %i.do = fadd fast <4 x float> %i.dn, %i.dm
  %i.dp = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.do) ; 2 uses
  %i.dq = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.dp, <4 x i32> %i.dp)
  %i.dr = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.dq, <8 x i16> splat (i16 -127))
  %i.ds = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.dr, <8 x i16> splat (i16 127))
  %i.dt = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ds, <8 x i16> poison)
  %i.du = bitcast <16 x i8> %i.dt to <4 x i32>
  %i.dv = extractelement <4 x i32> %i.du, i64 0
  store i32 %i.dv, ptr %.15.lcssa.i.us, align 4, !tbaa !164
  %i.dw = getelementptr inbounds nuw i8, ptr %.15.lcssa.i.us, i64 4 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.1364.lcssa.i.us, i64 16
  %i.dy = add nuw nsw i32 %.1374.lcssa.i.us, 1
  br label %.lr.ph238.i.us.prol.loopexit

.lr.ph238.i.us.prol.loopexit:                     ; preds = %.lr.ph238.i.us.prol, %.lr.ph238.i.us.preheader
  %.lcssa254.unr = phi ptr [ poison, %.lr.ph238.i.us.preheader ], [ %i.dw, %.lr.ph238.i.us.prol ]
  %.16237.i.us.unr = phi ptr [ %.15.lcssa.i.us, %.lr.ph238.i.us.preheader ], [ %i.dw, %.lr.ph238.i.us.prol ]
  %.2365236.i.us.unr = phi ptr [ %.1364.lcssa.i.us, %.lr.ph238.i.us.preheader ], [ %i.dx, %.lr.ph238.i.us.prol ]
  %.2375235.i.us.unr = phi i32 [ %.1374.lcssa.i.us, %.lr.ph238.i.us.preheader ], [ %i.dy, %.lr.ph238.i.us.prol ]
  %i.dz = icmp eq i32 %5, %.neg286
  br i1 %i.dz, label %.loopexit.i.us, label %.lr.ph238.i.us

.lr.ph238.i.us:                                   ; preds = %.lr.ph238.i.us.prol.loopexit, %.lr.ph238.i.us
  %.16237.i.us = phi ptr [ %i.ey, %.lr.ph238.i.us ], [ %.16237.i.us.unr, %.lr.ph238.i.us.prol.loopexit ] ; 3 uses
  %.2365236.i.us = phi ptr [ %i.ez, %.lr.ph238.i.us ], [ %.2365236.i.us.unr, %.lr.ph238.i.us.prol.loopexit ] ; 3 uses
  %.2375235.i.us = phi i32 [ %i.fa, %.lr.ph238.i.us ], [ %.2375235.i.us.unr, %.lr.ph238.i.us.prol.loopexit ]
  %i.ea = load <4 x float>, ptr %.2365236.i.us, align 16, !tbaa !17
  %i.eb = fmul fast <4 x float> %i.ea, %i.ae      ; 2 uses
  %i.ec = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.eb)
  %i.ed = fadd fast <4 x float> %i.ec, %i.eb
  %i.ee = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ed) ; 2 uses
  %i.ef = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ee, <4 x i32> %i.ee)
  %i.eg = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ef, <8 x i16> splat (i16 -127))
  %i.eh = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.eg, <8 x i16> splat (i16 127))
  %i.ei = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.eh, <8 x i16> poison)
  %i.ej = bitcast <16 x i8> %i.ei to <4 x i32>
  %i.ek = extractelement <4 x i32> %i.ej, i64 0
  store i32 %i.ek, ptr %.16237.i.us, align 4, !tbaa !164
  %i.el = getelementptr inbounds nuw i8, ptr %.16237.i.us, i64 4
  %i.em = getelementptr inbounds nuw i8, ptr %.2365236.i.us, i64 16
  %i.en = load <4 x float>, ptr %i.em, align 16, !tbaa !17
  %i.eo = fmul fast <4 x float> %i.en, %i.ae      ; 2 uses
  %i.ep = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.eo)
  %i.eq = fadd fast <4 x float> %i.ep, %i.eo
  %i.er = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.eq) ; 2 uses
  %i.es = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.er, <4 x i32> %i.er)
  %i.et = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.es, <8 x i16> splat (i16 -127))
  %i.eu = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.et, <8 x i16> splat (i16 127))
  %i.ev = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.eu, <8 x i16> poison)
  %i.ew = bitcast <16 x i8> %i.ev to <4 x i32>
  %i.ex = extractelement <4 x i32> %i.ew, i64 0
  store i32 %i.ex, ptr %i.el, align 4, !tbaa !164
  %i.ey = getelementptr inbounds nuw i8, ptr %.16237.i.us, i64 8 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.2365236.i.us, i64 32
  %i.fa = add nuw nsw i32 %.2375235.i.us, 2       ; 2 uses
  %exitcond361.not.i.us.1 = icmp eq i32 %i.fa, %5
  br i1 %exitcond361.not.i.us.1, label %.loopexit.i.us, label %.lr.ph238.i.us, !llvm.loop !231

.loopexit.i.us:                                   ; preds = %.lr.ph238.i.us.prol.loopexit, %.lr.ph238.i.us, %.preheader142.i.us
  %.21.i.us = phi ptr [ %.15.lcssa.i.us, %.preheader142.i.us ], [ %.lcssa254.unr, %.lr.ph238.i.us.prol.loopexit ], [ %i.ey, %.lr.ph238.i.us ] ; 2 uses
  %indvars.iv.next364.i.us = add nuw nsw i64 %indvars.iv363.i.us, 4 ; 3 uses
  %i.fb = icmp slt i64 %indvars.iv.next364.i.us, %invariant.op.i
  br i1 %i.fb, label %.preheader145.i.us, label %.preheader138.loopexit.i, !llvm.loop !232

.preheader141.i.us:                               ; preds = %.lr.ph262.i, %.loopexit.i.us51
  %indvars.iv363.i.us49 = phi i64 [ %indvars.iv.next364.i.us53, %.loopexit.i.us51 ], [ %i.al, %.lr.ph262.i ] ; 2 uses
  %.13261.i.us50 = phi ptr [ %.21.i.us52, %.loopexit.i.us51 ], [ %.0.lcssa.i, %.lr.ph262.i ] ; 2 uses
  %i.fc = load ptr, ptr %0, align 8, !tbaa !9
  %i.fd = add nsw i64 %indvars.iv363.i.us49, %i.an
  %i.fe = mul i64 %i.fd, %i.k
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.fe
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.ac ; 2 uses
  br i1 %i.af, label %.lr.ph244.i.us, label %.preheader140.i.us

.lr.ph244.i.us:                                   ; preds = %.preheader141.i.us, %.lr.ph244.i.us
  %.18243.i.us = phi ptr [ %i.gl, %.lr.ph244.i.us ], [ %.13261.i.us50, %.preheader141.i.us ] ; 2 uses
  %.4367242.i.us = phi ptr [ %i.gm, %.lr.ph244.i.us ], [ %i.fg, %.preheader141.i.us ] ; 5 uses
  %.0376241.i.us = phi i32 [ %i.gn, %.lr.ph244.i.us ], [ 0, %.preheader141.i.us ]
  %i.fh = load <4 x float>, ptr %.4367242.i.us, align 1, !tbaa !17
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %.4367242.i.us, i64 %i.k
  %i.fj = load <4 x float>, ptr %i.fi, align 1, !tbaa !17
  %i.fk = getelementptr inbounds nuw i8, ptr %.4367242.i.us, i64 %.idx.i
  %i.fl = load <4 x float>, ptr %i.fk, align 1, !tbaa !17
  %i.fm = getelementptr inbounds nuw i8, ptr %.4367242.i.us, i64 %.idx379.i
  %i.fn = load <4 x float>, ptr %i.fm, align 1, !tbaa !17
  %i.fo = fmul fast <4 x float> %i.fh, %i.ae      ; 2 uses
  %i.fp = fmul fast <4 x float> %i.fj, %i.ae      ; 2 uses
  %i.fq = fmul fast <4 x float> %i.fl, %i.ae      ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4ncnn46transpose_pack_B_tile_fp32_to_int8_avxvnniint8ERKNS_3MatERS0_iiiif:bb.a
  %.0386.lcssa.i.us.us.us = phi i32 [ 0, %.loopexit162.i.us.us.us ], [ %i.u, %.lr.ph176.i.us.us.us ] ; 3 uses
  %.4378.lcssa.i.us.us.us = phi ptr [ %i.af, %.loopexit162.i.us.us.us ], [ %i.bz, %.lr.ph176.i.us.us.us ] ; 2 uses
  %.5.lcssa.i.us.us.us = phi ptr [ %.0193.i.us.us.us, %.loopexit162.i.us.us.us ], [ %i.by, %.lr.ph176.i.us.us.us ] ; 2 uses
  %i.cd = or disjoint i32 %.0386.lcssa.i.us.us.us, 1
  %i.ce = icmp slt i32 %i.cd, %5
  br i1 %i.ce, label %.lr.ph183.i.us.us.us, label %.preheader158.i.us.us.us

.lr.ph183.i.us.us.us:                             ; preds = %.preheader160.i.us.us.us, %.lr.ph183.i.us.us.us
  %.6182.i.us.us.us = phi ptr [ %i.db, %.lr.ph183.i.us.us.us ], [ %.5.lcssa.i.us.us.us, %.preheader160.i.us.us.us ] ; 2 uses
  %.5379181.i.us.us.us = phi ptr [ %i.dc, %.lr.ph183.i.us.us.us ], [ %.4378.lcssa.i.us.us.us, %.preheader160.i.us.us.us ] ; 3 uses
  %.1387180.i.us.us.us = phi i32 [ %i.dd, %.lr.ph183.i.us.us.us ], [ %.0386.lcssa.i.us.us.us, %.preheader160.i.us.us.us ]
  %i.cf = load <8 x float>, ptr %.5379181.i.us.us.us, align 1, !tbaa !17
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.5379181.i.us.us.us, i64 %i.k
  %i.ch = load <8 x float>, ptr %i.cg, align 1, !tbaa !17
  %i.ci = fmul fast <8 x float> %i.cf, %i.q       ; 2 uses
  %i.cj = fmul fast <8 x float> %i.ch, %i.q       ; 2 uses
  %i.ck = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ci)
  %i.cl = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.cj)
  %i.cm = fadd fast <8 x float> %i.ck, %i.ci
  %i.cn = fadd fast <8 x float> %i.cl, %i.cj
  %i.co = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cm)
  %i.cp = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cn)
  %i.cq = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.co, <8 x i32> %i.cp)
  %i.cr = bitcast <16 x i16> %i.cq to <4 x i64>
  %i.cs = shufflevector <4 x i64> %i.cr, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.ct = bitcast <4 x i64> %i.cs to <16 x i16>
  %i.cu = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.ct, <16 x i16> splat (i16 -127))
  %i.cv = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.cu, <16 x i16> splat (i16 127))
  %i.cw = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.cv, <16 x i16> poison)
  %i.cx = bitcast <32 x i8> %i.cw to <8 x i32>
  %i.cy = shufflevector <8 x i32> %i.cx, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cz = bitcast <4 x i32> %i.cy to <16 x i8>
  %i.da = shufflevector <16 x i8> %i.cz, <16 x i8> poison, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %i.da, ptr %.6182.i.us.us.us, align 1, !tbaa !17
  %i.db = getelementptr inbounds nuw i8, ptr %.6182.i.us.us.us, i64 16 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.5379181.i.us.us.us, i64 %.idx435.i ; 2 uses
  %i.dd = add nuw nsw i32 %.1387180.i.us.us.us, 2 ; 3 uses
  %i.de = or disjoint i32 %i.dd, 1
  %i.df = icmp slt i32 %i.de, %5
  br i1 %i.df, label %.lr.ph183.i.us.us.us, label %.preheader158.i.us.us.us, !llvm.loop !270

.preheader158.i.us.us.us:                         ; preds = %.lr.ph183.i.us.us.us, %.preheader160.i.us.us.us
  %.1387.lcssa.i.us.us.us = phi i32 [ %.0386.lcssa.i.us.us.us, %.preheader160.i.us.us.us ], [ %i.dd, %.lr.ph183.i.us.us.us ] ; 2 uses
  %.5379.lcssa.i.us.us.us = phi ptr [ %.4378.lcssa.i.us.us.us, %.preheader160.i.us.us.us ], [ %i.dc, %.lr.ph183.i.us.us.us ]
  %.6.lcssa.i.us.us.us = phi ptr [ %.5.lcssa.i.us.us.us, %.preheader160.i.us.us.us ], [ %i.db, %.lr.ph183.i.us.us.us ] ; 2 uses
  %i.dg = icmp slt i32 %.1387.lcssa.i.us.us.us, %5
  br i1 %i.dg, label %.lr.ph190.i.us.us.us, label %.loopexit159.i.us.us.us

.lr.ph190.i.us.us.us:                             ; preds = %.preheader158.i.us.us.us, %.lr.ph190.i.us.us.us
  %.7189.i.us.us.us = phi ptr [ %i.dv, %.lr.ph190.i.us.us.us ], [ %.6.lcssa.i.us.us.us, %.preheader158.i.us.us.us ] ; 2 uses
  %.6380188.i.us.us.us = phi ptr [ %i.dw, %.lr.ph190.i.us.us.us ], [ %.5379.lcssa.i.us.us.us, %.preheader158.i.us.us.us ] ; 2 uses
  %.2388187.i.us.us.us = phi i32 [ %i.dx, %.lr.ph190.i.us.us.us ], [ %.1387.lcssa.i.us.us.us, %.preheader158.i.us.us.us ]
  %i.dh = load <8 x float>, ptr %.6380188.i.us.us.us, align 1, !tbaa !17
  %i.di = fmul fast <8 x float> %i.dh, %i.q       ; 2 uses
  %i.dj = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.di)
  %i.dk = fadd fast <8 x float> %i.dj, %i.di
  %i.dl = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dk)
  %i.dm = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.dl, <8 x i32> poison)
  %i.dn = bitcast <16 x i16> %i.dm to <8 x i32>
  %i.do = shufflevector <8 x i32> %i.dn, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dp = bitcast <4 x i32> %i.do to <8 x i16>
  %i.dq = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.dp, <8 x i16> splat (i16 -127))
  %i.dr = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.dq, <8 x i16> splat (i16 127))
  %i.ds = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.dr, <8 x i16> poison)
  %i.dt = bitcast <16 x i8> %i.ds to <2 x i64>
  %i.du = extractelement <2 x i64> %i.dt, i64 0
  store i64 %i.du, ptr %.7189.i.us.us.us, align 8, !tbaa !162
  %i.dv = getelementptr inbounds nuw i8, ptr %.7189.i.us.us.us, i64 8 ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.6380188.i.us.us.us, i64 %i.k
  %i.dx = add nuw nsw i32 %.2388187.i.us.us.us, 1 ; 2 uses
  %exitcond.not.i.us.us.us = icmp eq i32 %i.dx, %5
  br i1 %exitcond.not.i.us.us.us, label %.loopexit159.i.us.us.us, label %.lr.ph190.i.us.us.us, !llvm.loop !271

.loopexit159.i.us.us.us:                          ; preds = %.lr.ph190.i.us.us.us, %.preheader158.i.us.us.us
  %.8.i.us.us.us = phi ptr [ %.6.lcssa.i.us.us.us, %.preheader158.i.us.us.us ], [ %i.dv, %.lr.ph190.i.us.us.us ] ; 2 uses
  %indvars.iv.next.i.us.us.us = add nuw nsw i64 %indvars.iv.i.us.us.us, 8 ; 3 uses
  %i.dy = or disjoint i64 %indvars.iv.next.i.us.us.us, 7
  %i.dz = icmp samesign ult i64 %i.dy, %i.v
  br i1 %i.dz, label %.loopexit162.i.us.us.us, label %.preheader157.loopexit.i, !llvm.loop !272

.loopexit162.i.us:                                ; preds = %.lr.ph194.i.split.us, %.loopexit159.i.loopexit12.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %.loopexit159.i.loopexit12.us ], [ 0, %.lr.ph194.i.split.us ] ; 2 uses
  %.0193.i.us = phi ptr [ %i.ft, %.loopexit159.i.loopexit12.us ], [ %.val, %.lr.ph194.i.split.us ]
  %i.ea = load ptr, ptr %0, align 8, !tbaa !9
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.n
  %i.ec = add nsw i64 %indvars.iv.i.us, %i.w
  %i.ed = mul nsw i64 %i.ec, %i.x
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %i.ed
  br label %.lr.ph170.i.us

.lr.ph170.i.us:                                   ; preds = %.loopexit162.i.us, %.lr.ph170.i.us
  %.3169.i.us = phi ptr [ %i.ft, %.lr.ph170.i.us ], [ %.0193.i.us, %.loopexit162.i.us ] ; 2 uses
  %.2376168.i.us = phi ptr [ %i.fu, %.lr.ph170.i.us ], [ %i.ee, %.loopexit162.i.us ] ; 5 uses
  %.0385167.i.us = phi i32 [ %i.fv, %.lr.ph170.i.us ], [ 0, %.loopexit162.i.us ]
  %i.ef = load <8 x float>, ptr %.2376168.i.us, align 1, !tbaa !17
  %i.eg = getelementptr inbounds nuw i8, ptr %.2376168.i.us, i64 32
  %i.eh = load <8 x float>, ptr %i.eg, align 1, !tbaa !17
  %i.ei = getelementptr inbounds nuw i8, ptr %.2376168.i.us, i64 64
  %i.ej = load <8 x float>, ptr %i.ei, align 1, !tbaa !17
  %i.ek = getelementptr inbounds nuw i8, ptr %.2376168.i.us, i64 96
  %i.el = load <8 x float>, ptr %i.ek, align 1, !tbaa !17
  %i.em = fmul fast <8 x float> %i.ef, %i.q       ; 2 uses
  %i.en = fmul fast <8 x float> %i.eh, %i.q       ; 2 uses
  %i.eo = fmul fast <8 x float> %i.ej, %i.q       ; 2 uses
  %i.ep = fmul fast <8 x float> %i.el, %i.q       ; 2 uses
  %i.eq = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.em)
  %i.er = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.en)
  %i.es = fadd fast <8 x float> %i.eq, %i.em
  %i.et = fadd fast <8 x float> %i.er, %i.en
  %i.eu = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.es)
  %i.ev = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.et)
  %i.ew = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.eu, <8 x i32> %i.ev)
  %i.ex = bitcast <16 x i16> %i.ew to <4 x i64>
  %i.ey = shufflevector <4 x i64> %i.ex, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.ez = bitcast <4 x i64> %i.ey to <16 x i16>
  %i.fa = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.ez, <16 x i16> splat (i16 -127))
  %i.fb = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.fa, <16 x i16> splat (i16 127))
  %i.fc = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.fb, <16 x i16> poison)
  %i.fd = bitcast <32 x i8> %i.fc to <4 x i64>
  %i.fe = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.eo)
  %i.ff = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ep)
  %i.fg = fadd fast <8 x float> %i.fe, %i.eo
  %i.fh = fadd fast <8 x float> %i.ff, %i.ep
  %i.fi = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fg)
  %i.fj = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fh)
  %i.fk = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.fi, <8 x i32> %i.fj)
  %i.fl = bitcast <16 x i16> %i.fk to <4 x i64>
  %i.fm = shufflevector <4 x i64> %i.fl, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.fn = bitcast <4 x i64> %i.fm to <16 x i16>
  %i.fo = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.fn, <16 x i16> splat (i16 -127))
  %i.fp = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.fo, <16 x i16> splat (i16 127))
  %i.fq = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.fp, <16 x i16> poison)
  %i.fr = bitcast <32 x i8> %i.fq to <4 x i64>
  %i.fs = shufflevector <4 x i64> %i.fd, <4 x i64> %i.fr, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x i64> %i.fs, ptr %.3169.i.us, align 32, !tbaa !17
  %i.ft = getelementptr inbounds nuw i8, ptr %.3169.i.us, i64 32 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.2376168.i.us, i64 %.idx438.i
  %i.fv = add nuw nsw i32 %.0385167.i.us, 4       ; 2 uses
  %i.fw = or disjoint i32 %i.fv, 3
  %i.fx = icmp slt i32 %i.fw, %5
  br i1 %i.fx, label %.lr.ph170.i.us, label %.loopexit159.i.loopexit12.us, !llvm.loop !273

.loopexit159.i.loopexit12.us:                     ; preds = %.lr.ph170.i.us
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 8 ; 3 uses
  %i.fy = or disjoint i64 %indvars.iv.next.i.us, 7
  %i.fz = icmp samesign ult i64 %i.fy, %i.v
  br i1 %i.fz, label %.loopexit162.i.us, label %.preheader157.loopexit.i, !llvm.loop !272

.preheader157.loopexit.i:                         ; preds = %.loopexit159.i.loopexit13, %.loopexit159.i.loopexit12.us, %.loopexit159.i.us.us.us, %.loopexit162.i.us.us.preheader
  %.us-phi = phi ptr [ %.val, %.loopexit162.i.us.us.preheader ], [ %i.ft, %.loopexit159.i.loopexit12.us ], [ %.8.i.us.us.us, %.loopexit159.i.us.us.us ], [ %i.qo, %.loopexit159.i.loopexit13 ]
  %.us-phi42 = phi i64 [ %i.aa, %.loopexit162.i.us.us.preheader ], [ %indvars.iv.next.i.us, %.loopexit159.i.loopexit12.us ], [ %indvars.iv.next.i.us.us.us, %.loopexit159.i.us.us.us ], [ %indvars.iv.next.i, %.loopexit159.i.loopexit13 ]
  %i.ga = trunc nuw nsw i64 %.us-phi42 to i32
  br label %.preheader157.i

.preheader157.i:                                  ; preds = %.preheader157.loopexit.i, %bb.a
  %.0370.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.ga, %.preheader157.loopexit.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %.val, %bb.a ], [ %.us-phi, %.preheader157.loopexit.i ] ; 5 uses
  %i.gb = or disjoint i32 %.0370.lcssa.i, 3
  %i.gc = icmp slt i32 %i.gb, %3
  br i1 %i.gc, label %.lr.ph230.i, label %.preheader151.i

.lr.ph230.i:                                      ; preds = %.preheader157.i
  %i.gd = sext i32 %4 to i64
  %i.ge = mul i64 %i.k, %i.gd                     ; 3 uses
  %i.gf = icmp ne i32 %i.b, 8
  %i.gg = insertelement <8 x float> poison, float %6, i64 0
  %i.gh = shufflevector <8 x float> %i.gg, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.gi = icmp slt i32 %5, 8
  %.idx433.i = shl i64 %i.k, 5
  %i.gj = insertelement <4 x float> poison, float %6, i64 0
  %i.gk = shufflevector <4 x float> %i.gj, <4 x float> poison, <4 x i32> zeroinitializer ; 13 uses
  %.idx432.i = shl i64 %i.k, 4                    ; 2 uses
  %i.gl = icmp eq i32 %i.b, 1
  %i.gm = icmp sgt i32 %5, 3
  %.idx429.i = shl i64 %i.k, 3                    ; 2 uses
  %.idx430.i = mul i64 %i.k, 12
  %i.gn = and i32 %5, -4
  %i.go = zext i32 %.0370.lcssa.i to i64          ; 6 uses
  %i.gp = sext i32 %3 to i64
  %i.gq = sext i32 %2 to i64                      ; 3 uses
  %i.gr = sext i32 %i.b to i64                    ; 3 uses
  %brmerge302.i = or i1 %i.gi, %i.gf
  %invariant.op.i = add nsw i64 %i.gp, -3         ; 4 uses
  br i1 %brmerge302.i, label %.lr.ph230.i.split.us, label %.lr.ph200.i.preheader

.lr.ph230.i.split.us:                             ; preds = %.lr.ph230.i
  %i.gs = icmp slt i32 %5, 4
  %i.gt = icmp ne i32 %i.b, 4
  %brmerge305.i = or i1 %i.gs, %i.gt
  br i1 %brmerge305.i, label %.lr.ph230.i.split.us.split.us, label %.loopexit156.i.us

.lr.ph230.i.split.us.split.us:                    ; preds = %.lr.ph230.i.split.us
  br i1 %i.gl, label %.loopexit156.i.us.us.us, label %.loopexit156.i.us.us.preheader

.loopexit156.i.us.us.preheader:                   ; preds = %.lr.ph230.i.split.us.split.us
  %i.gu = add nuw nsw i64 %i.go, 4
  %smax = tail call i64 @llvm.smax.i64(i64 %invariant.op.i, i64 %i.gu)
  %i.gv = xor i64 %i.go, -1
  %i.gw = add nsw i64 %smax, %i.gv
  %i.gx = and i64 %i.gw, -4
  %i.gy = add i64 %i.gx, %i.go
  %i.gz = add i64 %i.gy, 4
  br label %.preheader151.loopexit.i

.loopexit156.i.us.us.us:                          ; preds = %.lr.ph230.i.split.us.split.us, %.loopexit153.i.us.us.us
  %indvars.iv363.i.us.us.us = phi i64 [ %indvars.iv.next364.i.us.us.us, %.loopexit153.i.us.us.us ], [ %i.go, %.lr.ph230.i.split.us.split.us ] ; 2 uses
  %.9229.i.us.us.us = phi ptr [ %.17.i.us.us.us, %.loopexit153.i.us.us.us ], [ %.0.lcssa.i, %.lr.ph230.i.split.us.split.us ] ; 2 uses
  %i.ha = load ptr, ptr %0, align 8, !tbaa !9
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %i.ge
  %i.hc = add nsw i64 %indvars.iv363.i.us.us.us, %i.gq
  %i.hd = mul nuw nsw i64 %i.hc, %i.gr
  %i.he = getelementptr inbounds [4 x i8], ptr %i.hb, i64 %i.hd ; 2 uses
  br i1 %i.gm, label %.lr.ph212.i.us.us.us, label %.preheader154.i.us.us.us

.lr.ph212.i.us.us.us:                             ; preds = %.loopexit156.i.us.us.us, %.lr.ph212.i.us.us.us
  %.14211.i.us.us.us = phi ptr [ %i.ik, %.lr.ph212.i.us.us.us ], [ %.9229.i.us.us.us, %.loopexit156.i.us.us.us ] ; 2 uses
  %.4394210.i.us.us.us = phi ptr [ %i.il, %.lr.ph212.i.us.us.us ], [ %i.he, %.loopexit156.i.us.us.us ] ; 5 uses
  %.0405209.i.us.us.us = phi i32 [ %i.im, %.lr.ph212.i.us.us.us ], [ 0, %.loopexit156.i.us.us.us ]
  %i.hf = load <4 x float>, ptr %.4394210.i.us.us.us, align 1, !tbaa !17
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %.4394210.i.us.us.us, i64 %i.k
  %i.hh = load <4 x float>, ptr %i.hg, align 1, !tbaa !17
  %i.hi = getelementptr inbounds nuw i8, ptr %.4394210.i.us.us.us, i64 %.idx429.i
  %i.hj = load <4 x float>, ptr %i.hi, align 1, !tbaa !17
  %i.hk = getelementptr inbounds nuw i8, ptr %.4394210.i.us.us.us, i64 %.idx430.i
  %i.hl = load <4 x float>, ptr %i.hk, align 1, !tbaa !17
  %i.hm = fmul fast <4 x float> %i.hf, %i.gk      ; 2 uses
  %i.hn = fmul fast <4 x float> %i.hh, %i.gk      ; 2 uses
  %i.ho = fmul fast <4 x float> %i.hj, %i.gk      ; 2 uses
  %i.hp = fmul fast <4 x float> %i.hl, %i.gk      ; 2 uses
  %i.hq = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.hm)
  %i.hr = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.hn)
  %i.hs = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ho)
  %i.ht = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.hp)
  %i.hu = fadd fast <4 x float> %i.hq, %i.hm
  %i.hv = fadd fast <4 x float> %i.hr, %i.hn
  %i.hw = fadd fast <4 x float> %i.hs, %i.ho
  %i.hx = fadd fast <4 x float> %i.ht, %i.hp
  %i.hy = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hu)
  %i.hz = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hv)
  %i.ia = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hw)
  %i.ib = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hx)
  %i.ic = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.hy, <4 x i32> %i.hz)
  %i.id = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ia, <4 x i32> %i.ib)
  %i.ie = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ic, <8 x i16> splat (i16 -127))
  %i.if = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ie, <8 x i16> splat (i16 127))
  %i.ig = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.id, <8 x i16> splat (i16 -127))
  %i.ih = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ig, <8 x i16> splat (i16 127))
  %i.ii = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.if, <8 x i16> %i.ih)
  %i.ij = shufflevector <16 x i8> %i.ii, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i8> %i.ij, ptr %.14211.i.us.us.us, align 1, !tbaa !17
  %i.ik = getelementptr inbounds nuw i8, ptr %.14211.i.us.us.us, i64 16 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.4394210.i.us.us.us, i64 %.idx432.i ; 2 uses
  %i.im = add nuw nsw i32 %.0405209.i.us.us.us, 4 ; 2 uses
  %i.in = or disjoint i32 %i.im, 3
  %i.io = icmp slt i32 %i.in, %5
  br i1 %i.io, label %.lr.ph212.i.us.us.us, label %.preheader154.i.us.us.us, !llvm.loop !274

.preheader154.i.us.us.us:                         ; preds = %.lr.ph212.i.us.us.us, %.loopexit156.i.us.us.us
  %.0405.lcssa.i.us.us.us = phi i32 [ 0, %.loopexit156.i.us.us.us ], [ %i.gn, %.lr.ph212.i.us.us.us ] ; 3 uses
  %.4394.lcssa.i.us.us.us = phi ptr [ %i.he, %.loopexit156.i.us.us.us ], [ %i.il, %.lr.ph212.i.us.us.us ] ; 2 uses
  %.14.lcssa.i.us.us.us = phi ptr [ %.9229.i.us.us.us, %.loopexit156.i.us.us.us ], [ %i.ik, %.lr.ph212.i.us.us.us ] ; 2 uses
  %i.ip = or disjoint i32 %.0405.lcssa.i.us.us.us, 1
  %i.iq = icmp slt i32 %i.ip, %5
  br i1 %i.iq, label %.lr.ph219.i.us.us.us, label %.preheader152.i.us.us.us

.lr.ph219.i.us.us.us:                             ; preds = %.preheader154.i.us.us.us, %.lr.ph219.i.us.us.us
  %.15218.i.us.us.us = phi ptr [ %i.jk, %.lr.ph219.i.us.us.us ], [ %.14.lcssa.i.us.us.us, %.preheader154.i.us.us.us ] ; 2 uses
  %.5395217.i.us.us.us = phi ptr [ %i.jl, %.lr.ph219.i.us.us.us ], [ %.4394.lcssa.i.us.us.us, %.preheader154.i.us.us.us ] ; 3 uses
  %.1406216.i.us.us.us = phi i32 [ %i.jm, %.lr.ph219.i.us.us.us ], [ %.0405.lcssa.i.us.us.us, %.preheader154.i.us.us.us ]
  %i.ir = load <4 x float>, ptr %.5395217.i.us.us.us, align 1, !tbaa !17
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %.5395217.i.us.us.us, i64 %i.k
  %i.it = load <4 x float>, ptr %i.is, align 1, !tbaa !17
  %i.iu = fmul fast <4 x float> %i.ir, %i.gk      ; 2 uses
  %i.iv = fmul fast <4 x float> %i.it, %i.gk      ; 2 uses
  %i.iw = shufflevector <4 x float> %i.iu, <4 x float> %i.iv, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ix = shufflevector <4 x float> %i.iu, <4 x float> %i.iv, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.iy = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.iw)
  %i.iz = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ix)
  %i.ja = fadd fast <4 x float> %i.iy, %i.iw
  %i.jb = fadd fast <4 x float> %i.iz, %i.ix
  %i.jc = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ja)
  %i.jd = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.jb)
  %i.je = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.jc, <4 x i32> %i.jd)
  %i.jf = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.je, <8 x i16> splat (i16 -127))
  %i.jg = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.jf, <8 x i16> splat (i16 127))
  %i.jh = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.jg, <8 x i16> poison)
  %i.ji = bitcast <16 x i8> %i.jh to <2 x i64>
  %i.jj = extractelement <2 x i64> %i.ji, i64 0
  store i64 %i.jj, ptr %.15218.i.us.us.us, align 8, !tbaa !162
  %i.jk = getelementptr inbounds nuw i8, ptr %.15218.i.us.us.us, i64 8 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.5395217.i.us.us.us, i64 %.idx429.i ; 2 uses
  %i.jm = add nuw nsw i32 %.1406216.i.us.us.us, 2 ; 3 uses
  %i.jn = or disjoint i32 %i.jm, 1
  %i.jo = icmp slt i32 %i.jn, %5
  br i1 %i.jo, label %.lr.ph219.i.us.us.us, label %.preheader152.i.us.us.us, !llvm.loop !275

.preheader152.i.us.us.us:                         ; preds = %.lr.ph219.i.us.us.us, %.preheader154.i.us.us.us
  %.1406.lcssa.i.us.us.us = phi i32 [ %.0405.lcssa.i.us.us.us, %.preheader154.i.us.us.us ], [ %i.jm, %.lr.ph219.i.us.us.us ] ; 5 uses
  %.5395.lcssa.i.us.us.us = phi ptr [ %.4394.lcssa.i.us.us.us, %.preheader154.i.us.us.us ], [ %i.jl, %.lr.ph219.i.us.us.us ] ; 3 uses
  %.15.lcssa.i.us.us.us = phi ptr [ %.14.lcssa.i.us.us.us, %.preheader154.i.us.us.us ], [ %i.jk, %.lr.ph219.i.us.us.us ] ; 4 uses
  %i.jp = icmp slt i32 %.1406.lcssa.i.us.us.us, %5
  br i1 %i.jp, label %.lr.ph226.i.us.us.us.preheader, label %.loopexit153.i.us.us.us

.lr.ph226.i.us.us.us.preheader:                   ; preds = %.preheader152.i.us.us.us
  %i.jq = sub i32 %5, %.1406.lcssa.i.us.us.us
  %.neg = add i32 %.1406.lcssa.i.us.us.us, 1
  %xtraiter = and i32 %i.jq, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph226.i.us.us.us.prol.loopexit, label %.lr.ph226.i.us.us.us.prol

.lr.ph226.i.us.us.us.prol:                        ; preds = %.lr.ph226.i.us.us.us.preheader
  %i.jr = load <4 x float>, ptr %.5395.lcssa.i.us.us.us, align 1, !tbaa !17
  %i.js = fmul fast <4 x float> %i.jr, %i.gk      ; 2 uses
  %i.jt = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.js)
  %i.ju = fadd fast <4 x float> %i.jt, %i.js
  %i.jv = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ju) ; 2 uses
  %i.jw = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.jv, <4 x i32> %i.jv)
  %i.jx = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.jw, <8 x i16> splat (i16 -127))
  %i.jy = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.jx, <8 x i16> splat (i16 127))
  %i.jz = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.jy, <8 x i16> poison)
  %i.ka = bitcast <16 x i8> %i.jz to <4 x i32>
  %i.kb = extractelement <4 x i32> %i.ka, i64 0
  store i32 %i.kb, ptr %.15.lcssa.i.us.us.us, align 4, !tbaa !164
  %i.kc = getelementptr inbounds nuw i8, ptr %.15.lcssa.i.us.us.us, i64 4 ; 2 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %.5395.lcssa.i.us.us.us, i64 %i.k
  %i.ke = add nuw nsw i32 %.1406.lcssa.i.us.us.us, 1
  br label %.lr.ph226.i.us.us.us.prol.loopexit

.lr.ph226.i.us.us.us.prol.loopexit:               ; preds = %.lr.ph226.i.us.us.us.prol, %.lr.ph226.i.us.us.us.preheader
  %.lcssa197.unr = phi ptr [ poison, %.lr.ph226.i.us.us.us.preheader ], [ %i.kc, %.lr.ph226.i.us.us.us.prol ]
  %.16225.i.us.us.us.unr = phi ptr [ %.15.lcssa.i.us.us.us, %.lr.ph226.i.us.us.us.preheader ], [ %i.kc, %.lr.ph226.i.us.us.us.prol ]
  %.6396224.i.us.us.us.unr = phi ptr [ %.5395.lcssa.i.us.us.us, %.lr.ph226.i.us.us.us.preheader ], [ %i.kd, %.lr.ph226.i.us.us.us.prol ]
  %.2407223.i.us.us.us.unr = phi i32 [ %.1406.lcssa.i.us.us.us, %.lr.ph226.i.us.us.us.preheader ], [ %i.ke, %.lr.ph226.i.us.us.us.prol ]
  %i.kf = icmp eq i32 %5, %.neg
  br i1 %i.kf, label %.loopexit153.i.us.us.us, label %.lr.ph226.i.us.us.us

.lr.ph226.i.us.us.us:                             ; preds = %.lr.ph226.i.us.us.us.prol.loopexit, %.lr.ph226.i.us.us.us
  %.16225.i.us.us.us = phi ptr [ %i.le, %.lr.ph226.i.us.us.us ], [ %.16225.i.us.us.us.unr, %.lr.ph226.i.us.us.us.prol.loopexit ] ; 3 uses
  %.6396224.i.us.us.us = phi ptr [ %i.lf, %.lr.ph226.i.us.us.us ], [ %.6396224.i.us.us.us.unr, %.lr.ph226.i.us.us.us.prol.loopexit ] ; 2 uses
  %.2407223.i.us.us.us = phi i32 [ %i.lg, %.lr.ph226.i.us.us.us ], [ %.2407223.i.us.us.us.unr, %.lr.ph226.i.us.us.us.prol.loopexit ]
  %i.kg = load <4 x float>, ptr %.6396224.i.us.us.us, align 1, !tbaa !17
  %i.kh = fmul fast <4 x float> %i.kg, %i.gk      ; 2 uses
  %i.ki = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.kh)
  %i.kj = fadd fast <4 x float> %i.ki, %i.kh
  %i.kk = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.kj) ; 2 uses
  %i.kl = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.kk, <4 x i32> %i.kk)
  %i.km = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.kl, <8 x i16> splat (i16 -127))
  %i.kn = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.km, <8 x i16> splat (i16 127))
  %i.ko = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.kn, <8 x i16> poison)
  %i.kp = bitcast <16 x i8> %i.ko to <4 x i32>
  %i.kq = extractelement <4 x i32> %i.kp, i64 0
  store i32 %i.kq, ptr %.16225.i.us.us.us, align 4, !tbaa !164
  %i.kr = getelementptr inbounds nuw i8, ptr %.16225.i.us.us.us, i64 4
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %.6396224.i.us.us.us, i64 %i.k ; 2 uses
  %i.kt = load <4 x float>, ptr %i.ks, align 1, !tbaa !17
  %i.ku = fmul fast <4 x float> %i.kt, %i.gk      ; 2 uses
  %i.kv = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ku)
  %i.kw = fadd fast <4 x float> %i.kv, %i.ku
  %i.kx = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.kw) ; 2 uses
  %i.ky = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.kx, <4 x i32> %i.kx)
  %i.kz = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ky, <8 x i16> splat (i16 -127))
  %i.la = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.kz, <8 x i16> splat (i16 127))
  %i.lb = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.la, <8 x i16> poison)
  %i.lc = bitcast <16 x i8> %i.lb to <4 x i32>
  %i.ld = extractelement <4 x i32> %i.lc, i64 0
  store i32 %i.ld, ptr %i.kr, align 4, !tbaa !164
  %i.le = getelementptr inbounds nuw i8, ptr %.16225.i.us.us.us, i64 8 ; 2 uses
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %i.k
  %i.lg = add nuw nsw i32 %.2407223.i.us.us.us, 2 ; 2 uses
  %exitcond362.not.i.us.us.us.1 = icmp eq i32 %i.lg, %5
  br i1 %exitcond362.not.i.us.us.us.1, label %.loopexit153.i.us.us.us, label %.lr.ph226.i.us.us.us, !llvm.loop !276

.loopexit153.i.us.us.us:                          ; preds = %.lr.ph226.i.us.us.us.prol.loopexit, %.lr.ph226.i.us.us.us, %.preheader152.i.us.us.us
  %.17.i.us.us.us = phi ptr [ %.15.lcssa.i.us.us.us, %.preheader152.i.us.us.us ], [ %.lcssa197.unr, %.lr.ph226.i.us.us.us.prol.loopexit ], [ %i.le, %.lr.ph226.i.us.us.us ] ; 2 uses
  %indvars.iv.next364.i.us.us.us = add nuw nsw i64 %indvars.iv363.i.us.us.us, 4 ; 3 uses
  %i.lh = icmp slt i64 %indvars.iv.next364.i.us.us.us, %invariant.op.i
  br i1 %i.lh, label %.loopexit156.i.us.us.us, label %.preheader151.loopexit.i, !llvm.loop !277

.loopexit156.i.us:                                ; preds = %.lr.ph230.i.split.us, %.loopexit153.i.loopexit10.us
  %indvars.iv363.i.us = phi i64 [ %indvars.iv.next364.i.us, %.loopexit153.i.loopexit10.us ], [ %i.go, %.lr.ph230.i.split.us ] ; 2 uses
  %.9229.i.us = phi ptr [ %i.mr, %.loopexit153.i.loopexit10.us ], [ %.0.lcssa.i, %.lr.ph230.i.split.us ]
  %i.li = load ptr, ptr %0, align 8, !tbaa !9
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %i.ge
  %i.lk = add nsw i64 %indvars.iv363.i.us, %i.gq
  %i.ll = mul nsw i64 %i.lk, %i.gr
  %i.lm = getelementptr inbounds [4 x i8], ptr %i.lj, i64 %i.ll
  br label %.lr.ph206.i.us

.lr.ph206.i.us:                                   ; preds = %.loopexit156.i.us, %.lr.ph206.i.us
  %.12205.i.us = phi ptr [ %i.mr, %.lr.ph206.i.us ], [ %.9229.i.us, %.loopexit156.i.us ] ; 2 uses
  %.2392204.i.us = phi ptr [ %i.ms, %.lr.ph206.i.us ], [ %i.lm, %.loopexit156.i.us ] ; 5 uses
  %.0404203.i.us = phi i32 [ %i.mt, %.lr.ph206.i.us ], [ 0, %.loopexit156.i.us ]
  %i.ln = load <4 x float>, ptr %.2392204.i.us, align 16, !tbaa !17
  %i.lo = getelementptr inbounds nuw i8, ptr %.2392204.i.us, i64 16
  %i.lp = load <4 x float>, ptr %i.lo, align 16, !tbaa !17
  %i.lq = getelementptr inbounds nuw i8, ptr %.2392204.i.us, i64 32
  %i.lr = load <4 x float>, ptr %i.lq, align 16, !tbaa !17
  %i.ls = getelementptr inbounds nuw i8, ptr %.2392204.i.us, i64 48
  %i.lt = load <4 x float>, ptr %i.ls, align 16, !tbaa !17
  %i.lu = fmul fast <4 x float> %i.ln, %i.gk      ; 2 uses
  %i.lv = fmul fast <4 x float> %i.lp, %i.gk      ; 2 uses
  %i.lw = fmul fast <4 x float> %i.lr, %i.gk      ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN4ncnn46transpose_pack_B_tile_fp32_to_int8_avxvnniint8ERKNS_3MatERS0_iiiif:bb.a
  %i.mg = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mc)
  %i.mh = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.md)
  %i.mi = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.me)
  %i.mj = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mf)
  %i.mk = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.mg, <4 x i32> %i.mh)
  %i.ml = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.mi, <4 x i32> %i.mj)
  %i.mm = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.mk, <8 x i16> splat (i16 -127))
  %i.mn = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.mm, <8 x i16> splat (i16 127))
  %i.mo = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ml, <8 x i16> splat (i16 -127))
  %i.mp = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.mo, <8 x i16> splat (i16 127))
  %i.mq = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.mn, <8 x i16> %i.mp)
  store <16 x i8> %i.mq, ptr %.12205.i.us, align 16, !tbaa !17
  %i.mr = getelementptr inbounds nuw i8, ptr %.12205.i.us, i64 16 ; 3 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %.2392204.i.us, i64 %.idx432.i
  %i.mt = add nuw nsw i32 %.0404203.i.us, 4       ; 2 uses
  %i.mu = or disjoint i32 %i.mt, 3
  %i.mv = icmp slt i32 %i.mu, %5
  br i1 %i.mv, label %.lr.ph206.i.us, label %.loopexit153.i.loopexit10.us, !llvm.loop !278

.loopexit153.i.loopexit10.us:                     ; preds = %.lr.ph206.i.us
  %indvars.iv.next364.i.us = add nuw nsw i64 %indvars.iv363.i.us, 4 ; 3 uses
  %i.mw = icmp slt i64 %indvars.iv.next364.i.us, %invariant.op.i
  br i1 %i.mw, label %.loopexit156.i.us, label %.preheader151.loopexit.i, !llvm.loop !277

.lr.ph.i.preheader:                               ; preds = %.lr.ph194.i, %.loopexit159.i.loopexit13
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.loopexit159.i.loopexit13 ], [ 0, %.lr.ph194.i ] ; 2 uses
  %.0193.i = phi ptr [ %i.qo, %.loopexit159.i.loopexit13 ], [ %.val, %.lr.ph194.i ]
  %i.mx = load ptr, ptr %0, align 8, !tbaa !9
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %i.n
  %i.mz = add nsw i64 %indvars.iv.i, %i.w
  %i.na = mul nsw i64 %i.mz, %i.x
  %i.nb = getelementptr inbounds [4 x i8], ptr %i.my, i64 %i.na
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.1165.i = phi ptr [ %i.qo, %.lr.ph.i ], [ %.0193.i, %.lr.ph.i.preheader ] ; 3 uses
  %.0374164.i = phi ptr [ %i.qp, %.lr.ph.i ], [ %i.nb, %.lr.ph.i.preheader ] ; 9 uses
  %.0383163.i = phi i32 [ %i.qq, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.nc = load <8 x float>, ptr %.0374164.i, align 32, !tbaa !17
  %i.nd = getelementptr inbounds nuw i8, ptr %.0374164.i, i64 32
  %i.ne = load <8 x float>, ptr %i.nd, align 32, !tbaa !17
  %i.nf = getelementptr inbounds nuw i8, ptr %.0374164.i, i64 64
  %i.ng = load <8 x float>, ptr %i.nf, align 32, !tbaa !17
  %i.nh = getelementptr inbounds nuw i8, ptr %.0374164.i, i64 96
  %i.ni = load <8 x float>, ptr %i.nh, align 32, !tbaa !17
  %i.nj = getelementptr inbounds nuw i8, ptr %.0374164.i, i64 128
  %i.nk = load <8 x float>, ptr %i.nj, align 32, !tbaa !17
  %i.nl = getelementptr inbounds nuw i8, ptr %.0374164.i, i64 160
  %i.nm = load <8 x float>, ptr %i.nl, align 32, !tbaa !17
  %i.nn = getelementptr inbounds nuw i8, ptr %.0374164.i, i64 192
  %i.no = load <8 x float>, ptr %i.nn, align 32, !tbaa !17
  %i.np = getelementptr inbounds nuw i8, ptr %.0374164.i, i64 224
  %i.nq = load <8 x float>, ptr %i.np, align 32, !tbaa !17
  %i.nr = fmul fast <8 x float> %i.nc, %i.q       ; 2 uses
  %i.ns = fmul fast <8 x float> %i.ne, %i.q       ; 2 uses
  %i.nt = fmul fast <8 x float> %i.ng, %i.q       ; 2 uses
  %i.nu = fmul fast <8 x float> %i.ni, %i.q       ; 2 uses
  %i.nv = fmul fast <8 x float> %i.nk, %i.q       ; 2 uses
  %i.nw = fmul fast <8 x float> %i.nm, %i.q       ; 2 uses
  %i.nx = fmul fast <8 x float> %i.no, %i.q       ; 2 uses
  %i.ny = fmul fast <8 x float> %i.nq, %i.q       ; 2 uses
  %i.nz = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.nr)
  %i.oa = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.nt)
  %i.ob = fadd fast <8 x float> %i.nz, %i.nr
  %i.oc = fadd fast <8 x float> %i.oa, %i.nt
  %i.od = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ob)
  %i.oe = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.oc)
  %i.of = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.od, <8 x i32> %i.oe)
  %i.og = bitcast <16 x i16> %i.of to <4 x i64>
  %i.oh = shufflevector <4 x i64> %i.og, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.oi = bitcast <4 x i64> %i.oh to <16 x i16>
  %i.oj = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.oi, <16 x i16> splat (i16 -127))
  %i.ok = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.oj, <16 x i16> splat (i16 127))
  %i.ol = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.ok, <16 x i16> poison)
  %i.om = bitcast <32 x i8> %i.ol to <4 x i64>
  %i.on = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ns)
  %i.oo = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.nu)
  %i.op = fadd fast <8 x float> %i.on, %i.ns
  %i.oq = fadd fast <8 x float> %i.oo, %i.nu
  %i.or = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.op)
  %i.os = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.oq)
  %i.ot = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.or, <8 x i32> %i.os)
  %i.ou = bitcast <16 x i16> %i.ot to <4 x i64>
  %i.ov = shufflevector <4 x i64> %i.ou, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.ow = bitcast <4 x i64> %i.ov to <16 x i16>
  %i.ox = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.ow, <16 x i16> splat (i16 -127))
  %i.oy = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.ox, <16 x i16> splat (i16 127))
  %i.oz = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.oy, <16 x i16> poison)
  %i.pa = bitcast <32 x i8> %i.oz to <4 x i64>
  %i.pb = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.nv)
  %i.pc = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.nx)
  %i.pd = fadd fast <8 x float> %i.pb, %i.nv
  %i.pe = fadd fast <8 x float> %i.pc, %i.nx
  %i.pf = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.pd)
  %i.pg = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.pe)
  %i.ph = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.pf, <8 x i32> %i.pg)
  %i.pi = bitcast <16 x i16> %i.ph to <4 x i64>
  %i.pj = shufflevector <4 x i64> %i.pi, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.pk = bitcast <4 x i64> %i.pj to <16 x i16>
  %i.pl = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.pk, <16 x i16> splat (i16 -127))
  %i.pm = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.pl, <16 x i16> splat (i16 127))
  %i.pn = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.pm, <16 x i16> poison)
  %i.po = bitcast <32 x i8> %i.pn to <4 x i64>
  %i.pp = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.nw)
  %i.pq = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ny)
  %i.pr = fadd fast <8 x float> %i.pp, %i.nw
  %i.ps = fadd fast <8 x float> %i.pq, %i.ny
  %i.pt = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.pr)
  %i.pu = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ps)
  %i.pv = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.pt, <8 x i32> %i.pu)
  %i.pw = bitcast <16 x i16> %i.pv to <4 x i64>
  %i.px = shufflevector <4 x i64> %i.pw, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.py = bitcast <4 x i64> %i.px to <16 x i16>
  %i.pz = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.py, <16 x i16> splat (i16 -127))
  %i.qa = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.pz, <16 x i16> splat (i16 127))
  %i.qb = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.qa, <16 x i16> poison)
  %i.qc = bitcast <32 x i8> %i.qb to <4 x i64>
  %i.qd = shufflevector <4 x i64> %i.om, <4 x i64> %i.po, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.qe = shufflevector <4 x i64> %i.pa, <4 x i64> %i.qc, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.qf = bitcast <4 x i64> %i.qd to <8 x i32>    ; 2 uses
  %i.qg = bitcast <4 x i64> %i.qe to <8 x i32>    ; 2 uses
  %i.qh = shufflevector <8 x i32> %i.qf, <8 x i32> %i.qg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.qi = bitcast <8 x i32> %i.qh to <4 x i64>    ; 2 uses
  %i.qj = shufflevector <8 x i32> %i.qf, <8 x i32> %i.qg, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.qk = bitcast <8 x i32> %i.qj to <4 x i64>    ; 2 uses
  %i.ql = shufflevector <4 x i64> %i.qi, <4 x i64> %i.qk, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.qm = shufflevector <4 x i64> %i.qi, <4 x i64> %i.qk, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  store <4 x i64> %i.ql, ptr %.1165.i, align 32, !tbaa !17
  %i.qn = getelementptr inbounds nuw i8, ptr %.1165.i, i64 32
  store <4 x i64> %i.qm, ptr %i.qn, align 32, !tbaa !17
  %i.qo = getelementptr inbounds nuw i8, ptr %.1165.i, i64 64 ; 3 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %.0374164.i, i64 %.idx439.i
  %i.qq = add nuw nsw i32 %.0383163.i, 8          ; 2 uses
  %i.qr = or disjoint i32 %i.qq, 7
  %i.qs = icmp slt i32 %i.qr, %5
  br i1 %i.qs, label %.lr.ph.i, label %.loopexit159.i.loopexit13, !llvm.loop !279

.loopexit159.i.loopexit13:                        ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %i.qt = or disjoint i64 %indvars.iv.next.i, 7
  %i.qu = icmp samesign ult i64 %i.qt, %i.v
  br i1 %i.qu, label %.lr.ph.i.preheader, label %.preheader157.loopexit.i, !llvm.loop !272

.preheader151.loopexit.i:                         ; preds = %.loopexit153.i.loopexit11, %.loopexit153.i.loopexit10.us, %.loopexit153.i.us.us.us, %.loopexit156.i.us.us.preheader
  %.us-phi47 = phi ptr [ %.0.lcssa.i, %.loopexit156.i.us.us.preheader ], [ %i.mr, %.loopexit153.i.loopexit10.us ], [ %.17.i.us.us.us, %.loopexit153.i.us.us.us ], [ %i.yc, %.loopexit153.i.loopexit11 ]
  %.us-phi48 = phi i64 [ %i.gz, %.loopexit156.i.us.us.preheader ], [ %indvars.iv.next364.i.us, %.loopexit153.i.loopexit10.us ], [ %indvars.iv.next364.i.us.us.us, %.loopexit153.i.us.us.us ], [ %indvars.iv.next364.i, %.loopexit153.i.loopexit11 ]
  %i.qv = trunc nuw nsw i64 %.us-phi48 to i32
  br label %.preheader151.i

.preheader151.i:                                  ; preds = %.preheader151.loopexit.i, %.preheader157.i
  %.1371.lcssa.i = phi i32 [ %.0370.lcssa.i, %.preheader157.i ], [ %i.qv, %.preheader151.loopexit.i ] ; 3 uses
  %.9.lcssa.i = phi ptr [ %.0.lcssa.i, %.preheader157.i ], [ %.us-phi47, %.preheader151.loopexit.i ] ; 5 uses
  %i.qw = or disjoint i32 %.1371.lcssa.i, 1
  %i.qx = icmp slt i32 %i.qw, %3
  br i1 %i.qx, label %.lr.ph266.i, label %.preheader145.i

.lr.ph266.i:                                      ; preds = %.preheader151.i
  %i.qy = sext i32 %4 to i64
  %i.qz = mul i64 %i.k, %i.qy                     ; 3 uses
  %i.ra = icmp ne i32 %i.b, 8
  %i.rb = insertelement <8 x float> poison, float %6, i64 0
  %i.rc = shufflevector <8 x float> %i.rb, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.rd = icmp slt i32 %5, 8
  %.idx427.i = shl i64 %i.k, 5
  %i.re = insertelement <4 x float> poison, float %6, i64 0
  %i.rf = shufflevector <4 x float> %i.re, <4 x float> poison, <4 x i32> zeroinitializer ; 5 uses
  %.idx426.i = shl i64 %i.k, 4                    ; 2 uses
  %i.rg = icmp eq i32 %i.b, 1
  %i.rh = icmp sgt i32 %5, 3
  %.idx423.i = shl i64 %i.k, 3                    ; 2 uses
  %.idx424.i = mul i64 %i.k, 12
  %i.ri = and i32 %5, -4
  %i.rj = zext i32 %.1371.lcssa.i to i64          ; 6 uses
  %i.rk = sext i32 %3 to i64
  %i.rl = sext i32 %2 to i64                      ; 3 uses
  %i.rm = sext i32 %i.b to i64                    ; 3 uses
  %brmerge308.i = or i1 %i.rd, %i.ra
  %invariant.op441.i = add nsw i64 %i.rk, -1      ; 4 uses
  br i1 %brmerge308.i, label %.lr.ph266.i.split.us, label %.lr.ph236.i.preheader

.lr.ph266.i.split.us:                             ; preds = %.lr.ph266.i
  %i.rn = icmp slt i32 %5, 4
  %i.ro = icmp ne i32 %i.b, 4
  %brmerge311.i = or i1 %i.rn, %i.ro
  br i1 %brmerge311.i, label %.lr.ph266.i.split.us.split.us, label %.loopexit150.i.us.preheader

.loopexit150.i.us.preheader:                      ; preds = %.lr.ph266.i.split.us
  %.pre = load ptr, ptr %0, align 8, !tbaa !9
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.qz
  br label %.loopexit150.i.us

.lr.ph266.i.split.us.split.us:                    ; preds = %.lr.ph266.i.split.us
  br i1 %i.rg, label %.loopexit150.i.us.us.us, label %.loopexit150.i.us.us.preheader

.loopexit150.i.us.us.preheader:                   ; preds = %.lr.ph266.i.split.us.split.us
  %i.rq = add nuw nsw i64 %i.rj, 2
  %smax98 = tail call i64 @llvm.smax.i64(i64 %invariant.op441.i, i64 %i.rq)
  %i.rr = xor i64 %i.rj, -1
  %i.rs = add nsw i64 %smax98, %i.rr
  %i.rt = and i64 %i.rs, -2
  %i.ru = add i64 %i.rt, %i.rj
  %i.rv = add i64 %i.ru, 2
  br label %.preheader145.loopexit.i

.loopexit150.i.us.us.us:                          ; preds = %.lr.ph266.i.split.us.split.us, %.loopexit147.i.us.us.us
  %indvars.iv367.i.us.us.us = phi i64 [ %indvars.iv.next368.i.us.us.us, %.loopexit147.i.us.us.us ], [ %i.rj, %.lr.ph266.i.split.us.split.us ] ; 2 uses
  %.18265.i.us.us.us = phi ptr [ %.26.i.us.us.us, %.loopexit147.i.us.us.us ], [ %.9.lcssa.i, %.lr.ph266.i.split.us.split.us ] ; 2 uses
  %i.rw = load ptr, ptr %0, align 8, !tbaa !9
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.rw, i64 %i.qz
  %i.ry = add nsw i64 %indvars.iv367.i.us.us.us, %i.rl
  %i.rz = mul nuw nsw i64 %i.ry, %i.rm
  %i.sa = getelementptr inbounds [4 x i8], ptr %i.rx, i64 %i.rz ; 2 uses
  br i1 %i.rh, label %.lr.ph248.i.us.us.us, label %.preheader148.i.us.us.us

.lr.ph248.i.us.us.us:                             ; preds = %.loopexit150.i.us.us.us, %.lr.ph248.i.us.us.us
  %.23247.i.us.us.us = phi ptr [ %i.ti, %.lr.ph248.i.us.us.us ], [ %.18265.i.us.us.us, %.loopexit150.i.us.us.us ] ; 2 uses
  %.4412246.i.us.us.us = phi ptr [ %i.tj, %.lr.ph248.i.us.us.us ], [ %i.sa, %.loopexit150.i.us.us.us ] ; 5 uses
  %.0417245.i.us.us.us = phi i32 [ %i.tk, %.lr.ph248.i.us.us.us ], [ 0, %.loopexit150.i.us.us.us ]
  %i.sb = load i64, ptr %.4412246.i.us.us.us, align 1, !tbaa !17
  %i.sc = insertelement <2 x i64> poison, i64 %i.sb, i64 0
  %i.sd = bitcast <2 x i64> %i.sc to <4 x float>
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %.4412246.i.us.us.us, i64 %i.k
  %i.sf = load i64, ptr %i.se, align 1, !tbaa !17
  %i.sg = insertelement <2 x i64> poison, i64 %i.sf, i64 0
  %i.sh = bitcast <2 x i64> %i.sg to <4 x float>
  %i.si = getelementptr inbounds nuw i8, ptr %.4412246.i.us.us.us, i64 %.idx423.i
  %i.sj = load i64, ptr %i.si, align 1, !tbaa !17
  %i.sk = insertelement <2 x i64> poison, i64 %i.sj, i64 0
  %i.sl = bitcast <2 x i64> %i.sk to <4 x float>
  %i.sm = getelementptr inbounds nuw i8, ptr %.4412246.i.us.us.us, i64 %.idx424.i
  %i.sn = load i64, ptr %i.sm, align 1, !tbaa !17
  %i.so = insertelement <2 x i64> poison, i64 %i.sn, i64 0
  %i.sp = bitcast <2 x i64> %i.so to <4 x float>
  %i.sq = shufflevector <4 x float> %i.sd, <4 x float> %i.sh, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.sr = shufflevector <4 x float> %i.sl, <4 x float> %i.sp, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ss = shufflevector <4 x float> %i.sq, <4 x float> %i.sr, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.st = shufflevector <4 x float> %i.sq, <4 x float> %i.sr, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.su = fmul fast <4 x float> %i.rf, %i.ss      ; 2 uses
  %i.sv = fmul fast <4 x float> %i.rf, %i.st      ; 2 uses
  %i.sw = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.su)
  %i.sx = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.sv)
  %i.sy = fadd fast <4 x float> %i.sw, %i.su
  %i.sz = fadd fast <4 x float> %i.sx, %i.sv
  %i.ta = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.sy)
  %i.tb = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.sz)
  %i.tc = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ta, <4 x i32> %i.tb)
  %i.td = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.tc, <8 x i16> splat (i16 -127))
  %i.te = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.td, <8 x i16> splat (i16 127))
  %i.tf = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.te, <8 x i16> poison)
  %i.tg = bitcast <16 x i8> %i.tf to <2 x i64>
  %i.th = extractelement <2 x i64> %i.tg, i64 0
  store i64 %i.th, ptr %.23247.i.us.us.us, align 8, !tbaa !162
  %i.ti = getelementptr inbounds nuw i8, ptr %.23247.i.us.us.us, i64 8 ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %.4412246.i.us.us.us, i64 %.idx426.i ; 2 uses
  %i.tk = add nuw nsw i32 %.0417245.i.us.us.us, 4 ; 2 uses
  %i.tl = or disjoint i32 %i.tk, 3
  %i.tm = icmp slt i32 %i.tl, %5
  br i1 %i.tm, label %.lr.ph248.i.us.us.us, label %.preheader148.i.us.us.us, !llvm.loop !280

.preheader148.i.us.us.us:                         ; preds = %.lr.ph248.i.us.us.us, %.loopexit150.i.us.us.us
  %.0417.lcssa.i.us.us.us = phi i32 [ 0, %.loopexit150.i.us.us.us ], [ %i.ri, %.lr.ph248.i.us.us.us ] ; 3 uses
  %.4412.lcssa.i.us.us.us = phi ptr [ %i.sa, %.loopexit150.i.us.us.us ], [ %i.tj, %.lr.ph248.i.us.us.us ] ; 2 uses
  %.23.lcssa.i.us.us.us = phi ptr [ %.18265.i.us.us.us, %.loopexit150.i.us.us.us ], [ %i.ti, %.lr.ph248.i.us.us.us ] ; 2 uses
  %i.tn = or disjoint i32 %.0417.lcssa.i.us.us.us, 1
  %i.to = icmp slt i32 %i.tn, %5
  br i1 %i.to, label %.lr.ph255.i.us.us.us, label %.preheader146.i.us.us.us

.lr.ph255.i.us.us.us:                             ; preds = %.preheader148.i.us.us.us, %.lr.ph255.i.us.us.us
  %.24254.i.us.us.us = phi ptr [ %i.uh, %.lr.ph255.i.us.us.us ], [ %.23.lcssa.i.us.us.us, %.preheader148.i.us.us.us ] ; 2 uses
  %.5413253.i.us.us.us = phi ptr [ %i.ui, %.lr.ph255.i.us.us.us ], [ %.4412.lcssa.i.us.us.us, %.preheader148.i.us.us.us ] ; 3 uses
  %.1418252.i.us.us.us = phi i32 [ %i.uj, %.lr.ph255.i.us.us.us ], [ %.0417.lcssa.i.us.us.us, %.preheader148.i.us.us.us ]
  %i.tp = load i64, ptr %.5413253.i.us.us.us, align 1, !tbaa !17
  %i.tq = insertelement <2 x i64> poison, i64 %i.tp, i64 0
  %i.tr = bitcast <2 x i64> %i.tq to <4 x float>
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %.5413253.i.us.us.us, i64 %i.k
  %i.tt = load i64, ptr %i.ts, align 1, !tbaa !17
  %i.tu = insertelement <2 x i64> poison, i64 %i.tt, i64 0
  %i.tv = bitcast <2 x i64> %i.tu to <4 x float>
  %i.tw = shufflevector <4 x float> %i.tr, <4 x float> %i.tv, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.tx = fmul fast <4 x float> %i.tw, %i.rf      ; 2 uses
  %i.ty = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.tx)
  %i.tz = fadd fast <4 x float> %i.ty, %i.tx
  %i.ua = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.tz) ; 2 uses
  %i.ub = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ua, <4 x i32> %i.ua)
  %i.uc = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ub, <8 x i16> splat (i16 -127))
  %i.ud = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.uc, <8 x i16> splat (i16 127))
  %i.ue = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ud, <8 x i16> poison)
  %i.uf = bitcast <16 x i8> %i.ue to <4 x i32>
  %i.ug = extractelement <4 x i32> %i.uf, i64 0
  store i32 %i.ug, ptr %.24254.i.us.us.us, align 4, !tbaa !164
  %i.uh = getelementptr inbounds nuw i8, ptr %.24254.i.us.us.us, i64 4 ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %.5413253.i.us.us.us, i64 %.idx423.i ; 2 uses
  %i.uj = add nuw nsw i32 %.1418252.i.us.us.us, 2 ; 3 uses
  %i.uk = or disjoint i32 %i.uj, 1
  %i.ul = icmp slt i32 %i.uk, %5
  br i1 %i.ul, label %.lr.ph255.i.us.us.us, label %.preheader146.i.us.us.us, !llvm.loop !281

.preheader146.i.us.us.us:                         ; preds = %.lr.ph255.i.us.us.us, %.preheader148.i.us.us.us
  %.1418.lcssa.i.us.us.us = phi i32 [ %.0417.lcssa.i.us.us.us, %.preheader148.i.us.us.us ], [ %i.uj, %.lr.ph255.i.us.us.us ] ; 2 uses
  %.5413.lcssa.i.us.us.us = phi ptr [ %.4412.lcssa.i.us.us.us, %.preheader148.i.us.us.us ], [ %i.ui, %.lr.ph255.i.us.us.us ]
  %.24.lcssa.i.us.us.us = phi ptr [ %.23.lcssa.i.us.us.us, %.preheader148.i.us.us.us ], [ %i.uh, %.lr.ph255.i.us.us.us ] ; 2 uses
  %i.um = icmp slt i32 %.1418.lcssa.i.us.us.us, %5
  br i1 %i.um, label %.lr.ph262.i.us.us.us, label %.loopexit147.i.us.us.us

.lr.ph262.i.us.us.us:                             ; preds = %.preheader146.i.us.us.us, %.lr.ph262.i.us.us.us
  %.25261.i.us.us.us = phi ptr [ %i.ux, %.lr.ph262.i.us.us.us ], [ %.24.lcssa.i.us.us.us, %.preheader146.i.us.us.us ] ; 3 uses
  %.6414260.i.us.us.us = phi ptr [ %i.uy, %.lr.ph262.i.us.us.us ], [ %.5413.lcssa.i.us.us.us, %.preheader146.i.us.us.us ] ; 3 uses
  %.2419259.i.us.us.us = phi i32 [ %i.uz, %.lr.ph262.i.us.us.us ], [ %.1418.lcssa.i.us.us.us, %.preheader146.i.us.us.us ]
  %i.un = load float, ptr %.6414260.i.us.us.us, align 4, !tbaa !180
  %i.uo = fmul fast float %i.un, %6
  %i.up = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.uo)
  %i.uq = fptosi float %i.up to i32
  %spec.select.i442139.i.us.us.us = tail call i32 @llvm.smax.i32(i32 %i.uq, i32 -127)
  %.0.i443140.i.us.us.us = tail call i32 @llvm.smin.i32(i32 %spec.select.i442139.i.us.us.us, i32 127)
  %.0.i443.i.us.us.us = trunc nsw i32 %.0.i443140.i.us.us.us to i8
  store i8 %.0.i443.i.us.us.us, ptr %.25261.i.us.us.us, align 1, !tbaa !17
  %i.ur = getelementptr inbounds nuw i8, ptr %.6414260.i.us.us.us, i64 4
  %i.us = load float, ptr %i.ur, align 4, !tbaa !180
  %i.ut = fmul fast float %i.us, %6
  %i.uu = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.ut)
  %i.uv = fptosi float %i.uu to i32
  %spec.select.i440141.i.us.us.us = tail call i32 @llvm.smax.i32(i32 %i.uv, i32 -127)
  %.0.i441142.i.us.us.us = tail call i32 @llvm.smin.i32(i32 %spec.select.i440141.i.us.us.us, i32 127)
  %.0.i441.i.us.us.us = trunc nsw i32 %.0.i441142.i.us.us.us to i8
  %i.uw = getelementptr inbounds nuw i8, ptr %.25261.i.us.us.us, i64 1
  store i8 %.0.i441.i.us.us.us, ptr %i.uw, align 1, !tbaa !17
  %i.ux = getelementptr inbounds nuw i8, ptr %.25261.i.us.us.us, i64 2 ; 2 uses
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %.6414260.i.us.us.us, i64 %i.k
  %i.uz = add nuw nsw i32 %.2419259.i.us.us.us, 1 ; 2 uses
  %exitcond366.not.i.us.us.us = icmp eq i32 %i.uz, %5
  br i1 %exitcond366.not.i.us.us.us, label %.loopexit147.i.us.us.us, label %.lr.ph262.i.us.us.us, !llvm.loop !282

.loopexit147.i.us.us.us:                          ; preds = %.lr.ph262.i.us.us.us, %.preheader146.i.us.us.us
  %.26.i.us.us.us = phi ptr [ %.24.lcssa.i.us.us.us, %.preheader146.i.us.us.us ], [ %i.ux, %.lr.ph262.i.us.us.us ] ; 2 uses
  %indvars.iv.next368.i.us.us.us = add nuw nsw i64 %indvars.iv367.i.us.us.us, 2 ; 3 uses
  %i.va = icmp slt i64 %indvars.iv.next368.i.us.us.us, %invariant.op441.i
  br i1 %i.va, label %.loopexit150.i.us.us.us, label %.preheader145.loopexit.i, !llvm.loop !283

.loopexit150.i.us:                                ; preds = %.loopexit150.i.us.preheader, %.loopexit147.i.loopexit8.us
  %indvars.iv367.i.us = phi i64 [ %indvars.iv.next368.i.us, %.loopexit147.i.loopexit8.us ], [ %i.rj, %.loopexit150.i.us.preheader ] ; 2 uses
  %.18265.i.us = phi ptr [ %i.vv, %.loopexit147.i.loopexit8.us ], [ %.9.lcssa.i, %.loopexit150.i.us.preheader ]
  %i.vb = add nsw i64 %indvars.iv367.i.us, %i.rl
  %i.vc = mul nsw i64 %i.vb, %i.rm
  %i.vd = getelementptr inbounds [4 x i8], ptr %i.rp, i64 %i.vc
  br label %.lr.ph242.i.us

.lr.ph242.i.us:                                   ; preds = %.loopexit150.i.us, %.lr.ph242.i.us
  %.21241.i.us = phi ptr [ %i.vv, %.lr.ph242.i.us ], [ %.18265.i.us, %.loopexit150.i.us ] ; 2 uses
  %.2410240.i.us = phi ptr [ %i.vw, %.lr.ph242.i.us ], [ %i.vd, %.loopexit150.i.us ] ; 3 uses
  %.0416239.i.us = phi i32 [ %i.vx, %.lr.ph242.i.us ], [ 0, %.loopexit150.i.us ]
  %i.ve = load <4 x float>, ptr %.2410240.i.us, align 16, !tbaa !17
  %i.vf = getelementptr inbounds nuw i8, ptr %.2410240.i.us, i64 16
  %i.vg = load <4 x float>, ptr %i.vf, align 16, !tbaa !17
  %i.vh = fmul fast <4 x float> %i.ve, %i.rf      ; 2 uses
  %i.vi = fmul fast <4 x float> %i.vg, %i.rf      ; 2 uses
  %i.vj = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.vh)
  %i.vk = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.vi)
  %i.vl = fadd fast <4 x float> %i.vj, %i.vh
  %i.vm = fadd fast <4 x float> %i.vk, %i.vi
  %i.vn = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.vl)
  %i.vo = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.vm)
  %i.vp = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.vn, <4 x i32> %i.vo)
  %i.vq = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.vp, <8 x i16> splat (i16 -127))
  %i.vr = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.vq, <8 x i16> splat (i16 127))
  %i.vs = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.vr, <8 x i16> poison)
  %i.vt = bitcast <16 x i8> %i.vs to <2 x i64>
  %i.vu = extractelement <2 x i64> %i.vt, i64 0
  store i64 %i.vu, ptr %.21241.i.us, align 8, !tbaa !162
  %i.vv = getelementptr inbounds nuw i8, ptr %.21241.i.us, i64 8 ; 3 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %.2410240.i.us, i64 %.idx426.i
  %i.vx = add nuw nsw i32 %.0416239.i.us, 4       ; 2 uses
  %i.vy = or disjoint i32 %i.vx, 3
  %i.vz = icmp slt i32 %i.vy, %5
  br i1 %i.vz, label %.lr.ph242.i.us, label %.loopexit147.i.loopexit8.us, !llvm.loop !284

.loopexit147.i.loopexit8.us:                      ; preds = %.lr.ph242.i.us
  %indvars.iv.next368.i.us = add nuw nsw i64 %indvars.iv367.i.us, 2 ; 3 uses
  %i.wa = icmp slt i64 %indvars.iv.next368.i.us, %invariant.op441.i
  br i1 %i.wa, label %.loopexit150.i.us, label %.preheader145.loopexit.i, !llvm.loop !283

.lr.ph200.i.preheader:                            ; preds = %.lr.ph230.i, %.loopexit153.i.loopexit11
  %indvars.iv363.i = phi i64 [ %indvars.iv.next364.i, %.loopexit153.i.loopexit11 ], [ %i.go, %.lr.ph230.i ] ; 2 uses
  %.9229.i = phi ptr [ %i.yc, %.loopexit153.i.loopexit11 ], [ %.0.lcssa.i, %.lr.ph230.i ]
  %i.wb = load ptr, ptr %0, align 8, !tbaa !9
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %i.wb, i64 %i.ge
  %i.wd = add nsw i64 %indvars.iv363.i, %i.gq
  %i.we = mul nsw i64 %i.wd, %i.gr
  %i.wf = getelementptr inbounds [4 x i8], ptr %i.wc, i64 %i.we
  br label %.lr.ph200.i

.lr.ph200.i:                                      ; preds = %.lr.ph200.i.preheader, %.lr.ph200.i
  %.10199.i = phi ptr [ %i.yc, %.lr.ph200.i ], [ %.9229.i, %.lr.ph200.i.preheader ] ; 3 uses
  %.0390198.i = phi ptr [ %i.yd, %.lr.ph200.i ], [ %i.wf, %.lr.ph200.i.preheader ] ; 5 uses
  %.0403197.i = phi i32 [ %i.ye, %.lr.ph200.i ], [ 0, %.lr.ph200.i.preheader ]
  %i.wg = load <8 x float>, ptr %.0390198.i, align 32, !tbaa !17
  %i.wh = getelementptr inbounds nuw i8, ptr %.0390198.i, i64 32
  %i.wi = load <8 x float>, ptr %i.wh, align 32, !tbaa !17
  %i.wj = getelementptr inbounds nuw i8, ptr %.0390198.i, i64 64
  %i.wk = load <8 x float>, ptr %i.wj, align 32, !tbaa !17
  %i.wl = getelementptr inbounds nuw i8, ptr %.0390198.i, i64 96
  %i.wm = load <8 x float>, ptr %i.wl, align 32, !tbaa !17
  %i.wn = fmul fast <8 x float> %i.wg, %i.gh      ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN4ncnn46transpose_pack_B_tile_fp32_to_int8_avxvnniint8ERKNS_3MatERS0_iiiif:bb.a
bb.b:                                             ; preds = %.loopexit143.i.us
  br i1 %i.yv, label %.lr.ph284.i.us, label %.preheader.i.us

.lr.ph284.i.us:                                   ; preds = %bb.b, %.lr.ph284.i.us
  %.32283.i.us = phi ptr [ %i.aal, %.lr.ph284.i.us ], [ %.27294.i.us, %bb.b ] ; 2 uses
  %.0381282.i.us = phi i32 [ %i.aan, %.lr.ph284.i.us ], [ 0, %bb.b ]
  %.4401281.i.us = phi ptr [ %i.aam, %.lr.ph284.i.us ], [ %i.zj, %bb.b ] ; 2 uses
  %i.aaa = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %.4401281.i.us, <4 x i32> %i.yz, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.aab = fmul fast <4 x float> %i.aaa, %i.ys    ; 2 uses
  %i.aac = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.aab)
  %i.aad = fadd fast <4 x float> %i.aac, %i.aab
  %i.aae = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aad) ; 2 uses
  %i.aaf = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.aae, <4 x i32> %i.aae)
  %i.aag = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aaf, <8 x i16> splat (i16 -127))
  %i.aah = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.aag, <8 x i16> splat (i16 127))
  %i.aai = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.aah, <8 x i16> poison)
  %i.aaj = bitcast <16 x i8> %i.aai to <4 x i32>
  %i.aak = extractelement <4 x i32> %i.aaj, i64 0
  store i32 %i.aak, ptr %.32283.i.us, align 4, !tbaa !164
  %i.aal = getelementptr inbounds nuw i8, ptr %.32283.i.us, i64 4 ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %.4401281.i.us, i64 %.idx420.i ; 2 uses
  %i.aan = add nuw nsw i32 %.0381282.i.us, 4      ; 2 uses
  %i.aao = or disjoint i32 %i.aan, 3
  %i.aap = icmp slt i32 %i.aao, %5
  br i1 %i.aap, label %.lr.ph284.i.us, label %.preheader.i.us, !llvm.loop !287

.preheader.i.us:                                  ; preds = %.lr.ph284.i.us, %bb.b
  %.4401.lcssa.i.us = phi ptr [ %i.zj, %bb.b ], [ %i.aam, %.lr.ph284.i.us ] ; 3 uses
  %.0381.lcssa.i.us = phi i32 [ 0, %bb.b ], [ %i.za, %.lr.ph284.i.us ] ; 4 uses
  %.32.lcssa.i.us = phi ptr [ %.27294.i.us, %bb.b ], [ %i.aal, %.lr.ph284.i.us ] ; 4 uses
  %i.aaq = icmp slt i32 %.0381.lcssa.i.us, %5
  br i1 %i.aaq, label %.lr.ph291.i.us.preheader, label %.loopexit.i.us

.lr.ph291.i.us.preheader:                         ; preds = %.preheader.i.us
  %.neg214 = or disjoint i32 %.0381.lcssa.i.us, 1
  br i1 %lcmp.mod213.not, label %.lr.ph291.i.us.prol.loopexit, label %.lr.ph291.i.us.prol

.lr.ph291.i.us.prol:                              ; preds = %.lr.ph291.i.us.preheader
  %i.aar = load float, ptr %.4401.lcssa.i.us, align 4, !tbaa !180
  %i.aas = fmul fast float %i.aar, %6
  %i.aat = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.aas)
  %i.aau = fptosi float %i.aat to i32
  %spec.select.i137.i.us.prol = tail call i32 @llvm.smax.i32(i32 %i.aau, i32 -127)
  %.0.i138.i.us.prol = tail call i32 @llvm.smin.i32(i32 %spec.select.i137.i.us.prol, i32 127)
  %.0.i.i.us.prol = trunc nsw i32 %.0.i138.i.us.prol to i8
  store i8 %.0.i.i.us.prol, ptr %.32.lcssa.i.us, align 1, !tbaa !17
  %i.aav = getelementptr inbounds nuw i8, ptr %.32.lcssa.i.us, i64 1 ; 2 uses
  %i.aaw = getelementptr inbounds nuw [4 x i8], ptr %.4401.lcssa.i.us, i64 %i.k
  %i.aax = or disjoint i32 %.0381.lcssa.i.us, 1
  br label %.lr.ph291.i.us.prol.loopexit

.lr.ph291.i.us.prol.loopexit:                     ; preds = %.lr.ph291.i.us.prol, %.lr.ph291.i.us.preheader
  %.lcssa179.unr = phi ptr [ poison, %.lr.ph291.i.us.preheader ], [ %i.aav, %.lr.ph291.i.us.prol ]
  %.33290.i.us.unr = phi ptr [ %.32.lcssa.i.us, %.lr.ph291.i.us.preheader ], [ %i.aav, %.lr.ph291.i.us.prol ]
  %.1382289.i.us.unr = phi i32 [ %.0381.lcssa.i.us, %.lr.ph291.i.us.preheader ], [ %i.aax, %.lr.ph291.i.us.prol ]
  %.5402288.i.us.unr = phi ptr [ %.4401.lcssa.i.us, %.lr.ph291.i.us.preheader ], [ %i.aaw, %.lr.ph291.i.us.prol ]
  %i.aay = icmp eq i32 %5, %.neg214
  br i1 %i.aay, label %.loopexit.i.us, label %.lr.ph291.i.us

.lr.ph291.i.us:                                   ; preds = %.lr.ph291.i.us.prol.loopexit, %.lr.ph291.i.us
  %.33290.i.us = phi ptr [ %i.abj, %.lr.ph291.i.us ], [ %.33290.i.us.unr, %.lr.ph291.i.us.prol.loopexit ] ; 3 uses
  %.1382289.i.us = phi i32 [ %i.abl, %.lr.ph291.i.us ], [ %.1382289.i.us.unr, %.lr.ph291.i.us.prol.loopexit ]
  %.5402288.i.us = phi ptr [ %i.abk, %.lr.ph291.i.us ], [ %.5402288.i.us.unr, %.lr.ph291.i.us.prol.loopexit ] ; 2 uses
  %i.aaz = load float, ptr %.5402288.i.us, align 4, !tbaa !180
  %i.aba = fmul fast float %i.aaz, %6
  %i.abb = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.aba)
  %i.abc = fptosi float %i.abb to i32
  %spec.select.i137.i.us = tail call i32 @llvm.smax.i32(i32 %i.abc, i32 -127)
  %.0.i138.i.us = tail call i32 @llvm.smin.i32(i32 %spec.select.i137.i.us, i32 127)
  %.0.i.i.us = trunc nsw i32 %.0.i138.i.us to i8
  store i8 %.0.i.i.us, ptr %.33290.i.us, align 1, !tbaa !17
  %i.abd = getelementptr inbounds nuw i8, ptr %.33290.i.us, i64 1
  %i.abe = getelementptr inbounds nuw [4 x i8], ptr %.5402288.i.us, i64 %i.k ; 2 uses
  %i.abf = load float, ptr %i.abe, align 4, !tbaa !180
  %i.abg = fmul fast float %i.abf, %6
  %i.abh = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.abg)
  %i.abi = fptosi float %i.abh to i32
  %spec.select.i137.i.us.1 = tail call i32 @llvm.smax.i32(i32 %i.abi, i32 -127)
  %.0.i138.i.us.1 = tail call i32 @llvm.smin.i32(i32 %spec.select.i137.i.us.1, i32 127)
  %.0.i.i.us.1 = trunc nsw i32 %.0.i138.i.us.1 to i8
  store i8 %.0.i.i.us.1, ptr %i.abd, align 1, !tbaa !17
  %i.abj = getelementptr inbounds nuw i8, ptr %.33290.i.us, i64 2 ; 2 uses
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %i.abe, i64 %i.k
  %i.abl = add nuw nsw i32 %.1382289.i.us, 2      ; 2 uses
  %exitcond370.not.i.us.1 = icmp eq i32 %i.abl, %5
  br i1 %exitcond370.not.i.us.1, label %.loopexit.i.us, label %.lr.ph291.i.us, !llvm.loop !288

.loopexit.i.us:                                   ; preds = %.lr.ph278.i.us, %.lr.ph291.i.us.prol.loopexit, %.lr.ph291.i.us, %.preheader.i.us, %.loopexit143.i.us
  %.34.i.us = phi ptr [ %.27294.i.us, %.loopexit143.i.us ], [ %.32.lcssa.i.us, %.preheader.i.us ], [ %i.abj, %.lr.ph291.i.us ], [ %.lcssa179.unr, %.lr.ph291.i.us.prol.loopexit ], [ %i.zv, %.lr.ph278.i.us ]
  %indvars.iv.next372.i.us = add nsw i64 %indvars.iv371.i.us, 1 ; 2 uses
  %exitcond374.not.i.us = icmp eq i64 %indvars.iv.next372.i.us, %wide.trip.count.i
  br i1 %exitcond374.not.i.us, label %_ZN4ncnnL34transpose_pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit, label %.loopexit144.i.us, !llvm.loop !289

.lr.ph236.i.preheader:                            ; preds = %.lr.ph266.i, %.loopexit147.i.loopexit9
  %indvars.iv367.i = phi i64 [ %indvars.iv.next368.i, %.loopexit147.i.loopexit9 ], [ %i.rj, %.lr.ph266.i ] ; 2 uses
  %.18265.i = phi ptr [ %i.acl, %.loopexit147.i.loopexit9 ], [ %.9.lcssa.i, %.lr.ph266.i ]
  %i.abm = load ptr, ptr %0, align 8, !tbaa !9
  %i.abn = getelementptr inbounds nuw [4 x i8], ptr %i.abm, i64 %i.qz
  %i.abo = add nsw i64 %indvars.iv367.i, %i.rl
  %i.abp = mul nsw i64 %i.abo, %i.rm
  %i.abq = getelementptr inbounds [4 x i8], ptr %i.abn, i64 %i.abp
  br label %.lr.ph236.i

.lr.ph236.i:                                      ; preds = %.lr.ph236.i.preheader, %.lr.ph236.i
  %.19235.i = phi ptr [ %i.acl, %.lr.ph236.i ], [ %.18265.i, %.lr.ph236.i.preheader ] ; 2 uses
  %.0408234.i = phi ptr [ %i.acm, %.lr.ph236.i ], [ %i.abq, %.lr.ph236.i.preheader ] ; 3 uses
  %.0415233.i = phi i32 [ %i.acn, %.lr.ph236.i ], [ 0, %.lr.ph236.i.preheader ]
  %i.abr = load <8 x float>, ptr %.0408234.i, align 32, !tbaa !17
  %i.abs = getelementptr inbounds nuw i8, ptr %.0408234.i, i64 32
  %i.abt = load <8 x float>, ptr %i.abs, align 32, !tbaa !17
  %i.abu = fmul fast <8 x float> %i.abr, %i.rc    ; 2 uses
  %i.abv = fmul fast <8 x float> %i.abt, %i.rc    ; 2 uses
  %i.abw = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.abu)
  %i.abx = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.abv)
  %i.aby = fadd fast <8 x float> %i.abw, %i.abu
  %i.abz = fadd fast <8 x float> %i.abx, %i.abv
  %i.aca = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.aby)
  %i.acb = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.abz)
  %i.acc = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.aca, <8 x i32> %i.acb)
  %i.acd = bitcast <16 x i16> %i.acc to <4 x i64>
  %i.ace = shufflevector <4 x i64> %i.acd, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.acf = bitcast <4 x i64> %i.ace to <16 x i16>
  %i.acg = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.acf, <16 x i16> splat (i16 -127))
  %i.ach = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.acg, <16 x i16> splat (i16 127))
  %i.aci = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.ach, <16 x i16> poison)
  %i.acj = bitcast <32 x i8> %i.aci to <8 x i32>
  %i.ack = shufflevector <8 x i32> %i.acj, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x i32> %i.ack, ptr %.19235.i, align 16, !tbaa !17
  %i.acl = getelementptr inbounds nuw i8, ptr %.19235.i, i64 16 ; 3 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %.0408234.i, i64 %.idx427.i
  %i.acn = add nuw nsw i32 %.0415233.i, 8         ; 2 uses
  %i.aco = or disjoint i32 %i.acn, 7
  %i.acp = icmp slt i32 %i.aco, %5
  br i1 %i.acp, label %.lr.ph236.i, label %.loopexit147.i.loopexit9, !llvm.loop !290

.loopexit147.i.loopexit9:                         ; preds = %.lr.ph236.i
  %indvars.iv.next368.i = add nuw nsw i64 %indvars.iv367.i, 2 ; 3 uses
  %i.acq = icmp slt i64 %indvars.iv.next368.i, %invariant.op441.i
  br i1 %i.acq, label %.lr.ph236.i.preheader, label %.preheader145.loopexit.i, !llvm.loop !283

.lr.ph272.i.preheader:                            ; preds = %.lr.ph272.i.preheader.preheader, %.loopexit.i.loopexit7
  %indvars.iv371.i = phi i64 [ %indvars.iv.next372.i, %.loopexit.i.loopexit7 ], [ %i.zb, %.lr.ph272.i.preheader.preheader ] ; 2 uses
  %.27294.i = phi ptr [ %i.adi, %.loopexit.i.loopexit7 ], [ %.18.lcssa.i, %.lr.ph272.i.preheader.preheader ]
  %i.acr = add nsw i64 %indvars.iv371.i, %i.zc
  %i.acs = mul nsw i64 %i.acr, %i.zd
  %i.act = getelementptr inbounds [4 x i8], ptr %i.ze, i64 %i.acs
  br label %.lr.ph272.i

.lr.ph272.i:                                      ; preds = %.lr.ph272.i.preheader, %.lr.ph272.i
  %.28271.i = phi ptr [ %i.adi, %.lr.ph272.i ], [ %.27294.i, %.lr.ph272.i.preheader ] ; 2 uses
  %.0389270.i = phi i32 [ %i.adk, %.lr.ph272.i ], [ 0, %.lr.ph272.i.preheader ]
  %.0397269.i = phi ptr [ %i.adj, %.lr.ph272.i ], [ %i.act, %.lr.ph272.i.preheader ] ; 2 uses
  %i.acu = load <8 x float>, ptr %.0397269.i, align 32, !tbaa !17
  %i.acv = fmul fast <8 x float> %i.acu, %i.yo    ; 2 uses
  %i.acw = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.acv)
  %i.acx = fadd fast <8 x float> %i.acw, %i.acv
  %i.acy = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.acx)
  %i.acz = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.acy, <8 x i32> poison)
  %i.ada = bitcast <16 x i16> %i.acz to <8 x i32>
  %i.adb = shufflevector <8 x i32> %i.ada, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.adc = bitcast <4 x i32> %i.adb to <8 x i16>
  %i.add = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.adc, <8 x i16> splat (i16 -127))
  %i.ade = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.add, <8 x i16> splat (i16 127))
  %i.adf = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ade, <8 x i16> poison)
  %i.adg = bitcast <16 x i8> %i.adf to <2 x i64>
  %i.adh = extractelement <2 x i64> %i.adg, i64 0
  store i64 %i.adh, ptr %.28271.i, align 8, !tbaa !162
  %i.adi = getelementptr inbounds nuw i8, ptr %.28271.i, i64 8 ; 2 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %.0397269.i, i64 %.idx421.i
  %i.adk = add nuw nsw i32 %.0389270.i, 8         ; 2 uses
  %i.adl = or disjoint i32 %i.adk, 7
  %i.adm = icmp slt i32 %i.adl, %5
  br i1 %i.adm, label %.lr.ph272.i, label %.loopexit.i.loopexit7, !llvm.loop !291

.loopexit.i.loopexit7:                            ; preds = %.lr.ph272.i
  %indvars.iv.next372.i = add nsw i64 %indvars.iv371.i, 1 ; 2 uses
  %exitcond374.not.i = icmp eq i64 %indvars.iv.next372.i, %wide.trip.count.i
  br i1 %exitcond374.not.i, label %_ZN4ncnnL34transpose_pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit, label %.lr.ph272.i.preheader, !llvm.loop !289

_ZN4ncnnL34transpose_pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit: ; preds = %.loopexit.i.loopexit7, %.loopexit.i.us, %.preheader145.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ncnn40gemm_transB_packed_tile_int8_avxvnniint8ERKNS_3MatES2_RS0_iiiiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !9     ; 3 uses
  %.val8 = load ptr, ptr %1, align 8, !tbaa !9    ; 8 uses
  %.val9 = load ptr, ptr %2, align 8, !tbaa !9    ; 2 uses
  %i.a = icmp sgt i32 %4, 7
  br i1 %i.a, label %.preheader467.lr.ph.i, label %.preheader455.i

.preheader467.lr.ph.i:                            ; preds = %bb.a
  %i.b = icmp sgt i32 %6, 7
  %i.c = icmp eq i32 %7, 0                        ; 4 uses
  %i.d = icmp sgt i32 %8, 3                       ; 4 uses
  %i.e = shl i32 %8, 3
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = add i32 %8, -4                           ; 5 uses
  %i.h = and i32 %i.g, -4
  %i.i = add i32 %i.h, 4                          ; 4 uses
  %i.j = and i32 %6, -8
  %i.k = zext i32 %i.g to i64                     ; 2 uses
  %i.l = lshr i64 %i.k, 2                         ; 3 uses
  %i.m = shl nuw nsw i64 %i.l, 4
  %i.n = shl nuw nsw i64 %i.l, 5                  ; 2 uses
  %i.o = getelementptr i8, ptr %.val, i64 %i.n
  %scevgep1492.i = getelementptr i8, ptr %i.o, i64 32
  %i.p = shl nuw nsw i64 %i.l, 3
  %i.q = and i64 %i.k, 4294967292
  %i.r = lshr i32 %i.g, 2                         ; 2 uses
  %i.s = add nuw nsw i32 %i.r, 1                  ; 4 uses
  %i.t = icmp eq i32 %i.r, 0
  %unroll_iter = and i32 %i.s, 2147483646
  %i.u = and i32 %i.g, 4
  %lcmp.mod.not.not = icmp eq i32 %i.u, 0
  %lcmp.mod1931 = trunc i32 %i.s to i1
  %xtraiter1936 = and i32 %i.s, 3                 ; 3 uses
  %i.v = icmp ult i32 %i.g, 12
  %unroll_iter1942 = and i32 %i.s, 2147483644
  %lcmp.mod1939.not = icmp eq i32 %xtraiter1936, 0
  %lcmp.mod1941 = icmp ne i32 %xtraiter1936, 0
  br label %.preheader467.i

.preheader467.i:                                  ; preds = %._crit_edge713.i, %.preheader467.lr.ph.i
  %indvars.iv.i = phi ptr [ %scevgep1492.i, %.preheader467.lr.ph.i ], [ %scevgep1493.i, %._crit_edge713.i ] ; 4 uses
  %.01067717.i = phi ptr [ %.val, %.preheader467.lr.ph.i ], [ %i.sl, %._crit_edge713.i ] ; 11 uses
  %.01071716.i = phi ptr [ %.val9, %.preheader467.lr.ph.i ], [ %.4.lcssa.i, %._crit_edge713.i ] ; 2 uses
  %.01075715.i = phi i32 [ 0, %.preheader467.lr.ph.i ], [ %i.sm, %._crit_edge713.i ]
  br i1 %i.b, label %.lr.ph607.i, label %.preheader466.i

.preheader455.loopexit.i:                         ; preds = %._crit_edge713.i
  %i.w = and i32 %4, 2147483640
  br label %.preheader455.i

.preheader455.i:                                  ; preds = %.preheader455.loopexit.i, %bb.a
  %.01075.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.w, %.preheader455.loopexit.i ] ; 3 uses
  %.01071.lcssa.i = phi ptr [ %.val9, %bb.a ], [ %.4.lcssa.i, %.preheader455.loopexit.i ] ; 2 uses
  %.01067.lcssa.i = phi ptr [ %.val, %bb.a ], [ %i.sl, %.preheader455.loopexit.i ] ; 3 uses
  %i.x = or disjoint i32 %.01075.lcssa.i, 3
  %i.y = icmp slt i32 %i.x, %4
  br i1 %i.y, label %.preheader454.lr.ph.i, label %.preheader442.i

.preheader454.lr.ph.i:                            ; preds = %.preheader455.i
  %i.z = icmp sgt i32 %6, 7
  %i.aa = icmp eq i32 %7, 0                       ; 4 uses
  %i.ab = icmp sgt i32 %8, 3                      ; 4 uses
  %i.ac = shl i32 %8, 2
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %i.ae = add i32 %8, -4                          ; 6 uses
  %i.af = and i32 %i.ae, -4
  %i.ag = add i32 %i.af, 4                        ; 4 uses
  %i.ah = and i32 %6, -8
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = lshr i64 %i.ai, 2                       ; 3 uses
  %i.ak = shl nuw nsw i64 %i.aj, 4
  %i.al = add nuw nsw i64 %i.ak, 16               ; 2 uses
  %scevgep1502.i = getelementptr i8, ptr %.01067.lcssa.i, i64 %i.al
  %i.am = shl nuw nsw i64 %i.aj, 3
  %i.an = and i64 %i.ai, 4294967292
  %i.ao = shl nuw nsw i64 %i.aj, 5
  %i.ap = lshr i32 %i.ae, 2                       ; 3 uses
  %i.aq = add nuw nsw i32 %i.ap, 1                ; 6 uses
  %i.ar = icmp eq i32 %i.ap, 0
  %unroll_iter1963 = and i32 %i.aq, 2147483646
  %i.as = and i32 %i.ae, 4
  %lcmp.mod1957.not.not = icmp eq i32 %i.as, 0
  %lcmp.mod1962 = trunc i32 %i.aq to i1
  %i.at = icmp eq i32 %i.ap, 0
  %unroll_iter1975 = and i32 %i.aq, 2147483646
  %i.au = and i32 %i.ae, 4
  %lcmp.mod1971.not.not = icmp eq i32 %i.au, 0
  %lcmp.mod1974 = trunc i32 %i.aq to i1
  %xtraiter1977 = and i32 %i.aq, 3                ; 3 uses
  %i.av = icmp ult i32 %i.ae, 12
  %unroll_iter1984 = and i32 %i.aq, 2147483644
  %lcmp.mod1981.not = icmp eq i32 %xtraiter1977, 0
  %lcmp.mod1983 = icmp ne i32 %xtraiter1977, 0
  br label %.preheader454.i

.preheader466.i:                                  ; preds = %._crit_edge.i, %.preheader467.i
  %.01095.lcssa.i = phi i32 [ 0, %.preheader467.i ], [ %i.j, %._crit_edge.i ] ; 3 uses
  %.01079.lcssa.i = phi ptr [ %.val8, %.preheader467.i ], [ %.31082.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.11072.lcssa.i = phi ptr [ %.01071716.i, %.preheader467.i ], [ %i.gg, %._crit_edge.i ] ; 2 uses
  %i.aw = or disjoint i32 %.01095.lcssa.i, 3
  %i.ax = icmp slt i32 %i.aw, %6
  br i1 %i.ax, label %.lr.ph647.i, label %.preheader465.i

.lr.ph607.i:                                      ; preds = %.preheader467.i, %._crit_edge.i
  %.11072606.i = phi ptr [ %i.gg, %._crit_edge.i ], [ %.01071716.i, %.preheader467.i ] ; 17 uses
  %.01079605.i = phi ptr [ %.31082.lcssa.i, %._crit_edge.i ], [ %.val8, %.preheader467.i ] ; 3 uses
  %.01095604.i = phi i32 [ %i.gh, %._crit_edge.i ], [ 0, %.preheader467.i ]
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph607.i
  %i.ay = load <8 x i32>, ptr %.11072606.i, align 32, !tbaa !17
  %i.az = getelementptr inbounds nuw i8, ptr %.11072606.i, i64 32
  %i.ba = load <8 x i32>, ptr %i.az, align 32, !tbaa !17
  %i.bb = getelementptr inbounds nuw i8, ptr %.11072606.i, i64 64
  %i.bc = load <8 x i32>, ptr %i.bb, align 32, !tbaa !17
  %i.bd = getelementptr inbounds nuw i8, ptr %.11072606.i, i64 96
  %i.be = load <8 x i32>, ptr %i.bd, align 32, !tbaa !17
  %i.bf = getelementptr inbounds nuw i8, ptr %.11072606.i, i64 128
  %i.bg = load <8 x i32>, ptr %i.bf, align 32, !tbaa !17
  %i.bh = getelementptr inbounds nuw i8, ptr %.11072606.i, i64 160
  %i.bi = load <8 x i32>, ptr %i.bh, align 32, !tbaa !17
  %i.bj = getelementptr inbounds nuw i8, ptr %.11072606.i, i64 192
  %i.bk = load <8 x i32>, ptr %i.bj, align 32, !tbaa !17
  %i.bl = getelementptr inbounds nuw i8, ptr %.11072606.i, i64 224
  %i.bm = load <8 x i32>, ptr %i.bl, align 32, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph607.i
  %i.bn = phi <8 x i32> [ %i.bk, %bb.b ], [ zeroinitializer, %.lr.ph607.i ] ; 2 uses
  %i.bo = phi <8 x i32> [ %i.bi, %bb.b ], [ zeroinitializer, %.lr.ph607.i ] ; 2 uses
  %i.bp = phi <8 x i32> [ %i.bg, %bb.b ], [ zeroinitializer, %.lr.ph607.i ] ; 2 uses
  %i.bq = phi <8 x i32> [ %i.be, %bb.b ], [ zeroinitializer, %.lr.ph607.i ] ; 2 uses
  %i.br = phi <8 x i32> [ %i.bc, %bb.b ], [ zeroinitializer, %.lr.ph607.i ] ; 2 uses
  %i.bs = phi <8 x i32> [ %i.ba, %bb.b ], [ zeroinitializer, %.lr.ph607.i ] ; 2 uses
  %i.bt = phi <8 x i32> [ %i.ay, %bb.b ], [ zeroinitializer, %.lr.ph607.i ] ; 2 uses
  %i.bu = phi <8 x i32> [ %i.bm, %bb.b ], [ zeroinitializer, %.lr.ph607.i ] ; 2 uses
  br i1 %i.d, label %.lr.ph.i, label %.preheader463.i

.preheader463.i.loopexit:                         ; preds = %.lr.ph.i
  %i.bv = getelementptr i8, ptr %.01079605.i, i64 %i.n
  %scevgep = getelementptr i8, ptr %i.bv, i64 32
  br label %.preheader463.i

.preheader463.i:                                  ; preds = %.preheader463.i.loopexit, %bb.c
  %.lcssa525.i = phi <8 x i32> [ %i.bu, %bb.c ], [ %i.cv, %.preheader463.i.loopexit ] ; 2 uses
  %.lcssa524.i = phi <8 x i32> [ %i.bn, %bb.c ], [ %i.cu, %.preheader463.i.loopexit ] ; 2 uses
  %.lcssa523.i = phi <8 x i32> [ %i.bo, %bb.c ], [ %i.ct, %.preheader463.i.loopexit ] ; 2 uses
  %.lcssa522.i = phi <8 x i32> [ %i.bp, %bb.c ], [ %i.cs, %.preheader463.i.loopexit ] ; 2 uses
  %.lcssa521.i = phi <8 x i32> [ %i.bq, %bb.c ], [ %i.cr, %.preheader463.i.loopexit ] ; 2 uses
  %.lcssa520.i = phi <8 x i32> [ %i.br, %bb.c ], [ %i.cq, %.preheader463.i.loopexit ] ; 2 uses
  %.lcssa519.i = phi <8 x i32> [ %i.bs, %bb.c ], [ %i.cp, %.preheader463.i.loopexit ] ; 2 uses
  %.lcssa518.i = phi <8 x i32> [ %i.bt, %bb.c ], [ %i.co, %.preheader463.i.loopexit ] ; 2 uses
  %.01102.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.i, %.preheader463.i.loopexit ] ; 3 uses
  %.01099.lcssa.i = phi ptr [ %.01067717.i, %bb.c ], [ %i.cw, %.preheader463.i.loopexit ] ; 2 uses
  %.11080.lcssa.i = phi ptr [ %.01079605.i, %bb.c ], [ %scevgep, %.preheader463.i.loopexit ] ; 2 uses
  %i.bw = or disjoint i32 %.01102.lcssa.i, 1
  %i.bx = icmp slt i32 %i.bw, %8
  br i1 %i.bx, label %.lr.ph579.i, label %.preheader462.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.11080565.i = phi ptr [ %i.cx, %.lr.ph.i ], [ %.01079605.i, %bb.c ] ; 2 uses
  %.01099564.i = phi ptr [ %i.cw, %.lr.ph.i ], [ %.01067717.i, %bb.c ] ; 2 uses
  %.01102563.i = phi i32 [ %i.cy, %.lr.ph.i ], [ 0, %bb.c ]
  %i.by = phi <8 x i32> [ %i.co, %.lr.ph.i ], [ %i.bt, %bb.c ]
  %i.bz = phi <8 x i32> [ %i.cp, %.lr.ph.i ], [ %i.bs, %bb.c ]
  %i.ca = phi <8 x i32> [ %i.cq, %.lr.ph.i ], [ %i.br, %bb.c ]
  %i.cb = phi <8 x i32> [ %i.cr, %.lr.ph.i ], [ %i.bq, %bb.c ]
  %i.cc = phi <8 x i32> [ %i.cs, %.lr.ph.i ], [ %i.bp, %bb.c ]
  %i.cd = phi <8 x i32> [ %i.ct, %.lr.ph.i ], [ %i.bo, %bb.c ]
  %i.ce = phi <8 x i32> [ %i.cu, %.lr.ph.i ], [ %i.bn, %bb.c ]
  %i.cf = phi <8 x i32> [ %i.cv, %.lr.ph.i ], [ %i.bu, %bb.c ]
  %i.cg = load <32 x i8>, ptr %.01099564.i, align 1, !tbaa !17 ; 5 uses
  %i.ch = load <4 x i64>, ptr %.11080565.i, align 1, !tbaa !17 ; 2 uses
  %i.ci = shufflevector <32 x i8> %i.cg, <32 x i8> poison, <32 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 4 uses
  %i.cj = bitcast <4 x i64> %i.ch to <32 x i8>    ; 3 uses
  %i.ck = shufflevector <32 x i8> %i.cj, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19> ; 2 uses
  %i.cl = shufflevector <4 x i64> %i.ch, <4 x i64> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.cm = bitcast <4 x i64> %i.cl to <32 x i8>    ; 3 uses
  %i.cn = shufflevector <32 x i8> %i.cm, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19> ; 2 uses
  %i.co = tail call <8 x i32> @llvm.x86.avx2.vpdpbssd.256(<8 x i32> %i.by, <32 x i8> %i.cj, <32 x i8> %i.cg) ; 2 uses
  %i.cp = tail call <8 x i32> @llvm.x86.avx2.vpdpbssd.256(<8 x i32> %i.bz, <32 x i8> %i.ck, <32 x i8> %i.cg) ; 2 uses
  %i.cq = tail call <8 x i32> @llvm.x86.avx2.vpdpbssd.256(<8 x i32> %i.ca, <32 x i8> %i.cj, <32 x i8> %i.ci) ; 2 uses
  %i.cr = tail call <8 x i32> @llvm.x86.avx2.vpdpbssd.256(<8 x i32> %i.cb, <32 x i8> %i.ck, <32 x i8> %i.ci) ; 2 uses
  %i.cs = tail call <8 x i32> @llvm.x86.avx2.vpdpbssd.256(<8 x i32> %i.cc, <32 x i8> %i.cm, <32 x i8> %i.cg) ; 2 uses
  %i.ct = tail call <8 x i32> @llvm.x86.avx2.vpdpbssd.256(<8 x i32> %i.cd, <32 x i8> %i.cn, <32 x i8> %i.cg) ; 2 uses
  %i.cu = tail call <8 x i32> @llvm.x86.avx2.vpdpbssd.256(<8 x i32> %i.ce, <32 x i8> %i.cm, <32 x i8> %i.ci) ; 2 uses
  %i.cv = tail call <8 x i32> @llvm.x86.avx2.vpdpbssd.256(<8 x i32> %i.cf, <32 x i8> %i.cn, <32 x i8> %i.ci) ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.01099564.i, i64 32 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.11080565.i, i64 32
  %i.cy = add nuw nsw i32 %.01102563.i, 4         ; 2 uses
  %i.cz = or disjoint i32 %i.cy, 3
  %i.da = icmp slt i32 %i.cz, %8
  br i1 %i.da, label %.lr.ph.i, label %.preheader463.i.loopexit, !llvm.loop !292

.preheader462.i:                                  ; preds = %.lr.ph579.i, %.preheader463.i
  %.lcssa533.i = phi <8 x i32> [ %.lcssa525.i, %.preheader463.i ], [ %i.ec, %.lr.ph579.i ] ; 2 uses
  %.lcssa532.i = phi <8 x i32> [ %.lcssa524.i, %.preheader463.i ], [ %i.eb, %.lr.ph579.i ] ; 2 uses
  %.lcssa531.i = phi <8 x i32> [ %.lcssa523.i, %.preheader463.i ], [ %i.ea, %.lr.ph579.i ] ; 2 uses
  %.lcssa530.i = phi <8 x i32> [ %.lcssa522.i, %.preheader463.i ], [ %i.dx, %.lr.ph579.i ] ; 2 uses
  %.lcssa529.i = phi <8 x i32> [ %.lcssa521.i, %.preheader463.i ], [ %i.dv, %.lr.ph579.i ] ; 2 uses
  %.lcssa528.i = phi <8 x i32> [ %.lcssa520.i, %.preheader463.i ], [ %i.du, %.lr.ph579.i ] ; 2 uses
  %.lcssa527.i = phi <8 x i32> [ %.lcssa519.i, %.preheader463.i ], [ %i.ds, %.lr.ph579.i ] ; 2 uses
  %.lcssa526.i = phi <8 x i32> [ %.lcssa518.i, %.preheader463.i ], [ %i.dq, %.lr.ph579.i ] ; 2 uses
  %.11103.lcssa.i = phi i32 [ %.01102.lcssa.i, %.preheader463.i ], [ %i.ef, %.lr.ph579.i ] ; 2 uses
  %.11100.lcssa.i = phi ptr [ %.01099.lcssa.i, %.preheader463.i ], [ %i.ed, %.lr.ph579.i ]
  %.21081.lcssa.i = phi ptr [ %.11080.lcssa.i, %.preheader463.i ], [ %i.ee, %.lr.ph579.i ] ; 2 uses
  %i.db = icmp slt i32 %.11103.lcssa.i, %8
  br i1 %i.db, label %.lr.ph594.i, label %._crit_edge.i

.lr.ph579.i:                                      ; preds = %.preheader463.i, %.lr.ph579.i
  %.21081578.i = phi ptr [ %i.ee, %.lr.ph579.i ], [ %.11080.lcssa.i, %.preheader463.i ] ; 2 uses
  %.11100577.i = phi ptr [ %i.ed, %.lr.ph579.i ], [ %.01099.lcssa.i, %.preheader463.i ] ; 2 uses
  %.11103576.i = phi i32 [ %i.ef, %.lr.ph579.i ], [ %.01102.lcssa.i, %.preheader463.i ]
  %i.dc = phi <8 x i32> [ %i.dq, %.lr.ph579.i ], [ %.lcssa518.i, %.preheader463.i ]
  %i.dd = phi <8 x i32> [ %i.ds, %.lr.ph579.i ], [ %.lcssa519.i, %.preheader463.i ]
  %i.de = phi <8 x i32> [ %i.du, %.lr.ph579.i ], [ %.lcssa520.i, %.preheader463.i ]
  %i.df = phi <8 x i32> [ %i.dv, %.lr.ph579.i ], [ %.lcssa521.i, %.preheader463.i ]
  %i.dg = phi <8 x i32> [ %i.dx, %.lr.ph579.i ], [ %.lcssa522.i, %.preheader463.i ]
  %i.dh = phi <8 x i32> [ %i.ea, %.lr.ph579.i ], [ %.lcssa523.i, %.preheader463.i ]
  %i.di = phi <8 x i32> [ %i.eb, %.lr.ph579.i ], [ %.lcssa524.i, %.preheader463.i ]
  %i.dj = phi <8 x i32> [ %i.ec, %.lr.ph579.i ], [ %.lcssa525.i, %.preheader463.i ]
  %i.dk = load <16 x i8>, ptr %.11100577.i, align 1, !tbaa !17
  %i.dl = load <16 x i8>, ptr %.21081578.i, align 1, !tbaa !17
  %i.dm = sext <16 x i8> %i.dk to <16 x i16>      ; 5 uses
  %i.dn = sext <16 x i8> %i.dl to <16 x i16>      ; 4 uses
  %i.do = bitcast <16 x i16> %i.dn to <4 x i64>
  %i.dp = shufflevector <4 x i64> %i.do, <4 x i64> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.dq = tail call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.dc, <16 x i16> %i.dm, <16 x i16> %i.dn) ; 2 uses
  %i.dr = shufflevector <16 x i16> %i.dn, <16 x i16> poison, <16 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9> ; 2 uses
  %i.ds = tail call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.dd, <16 x i16> %i.dm, <16 x i16> %i.dr) ; 2 uses
  %i.dt = shufflevector <16 x i16> %i.dm, <16 x i16> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11> ; 4 uses
  %i.du = tail call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.de, <16 x i16> %i.dt, <16 x i16> %i.dn) ; 2 uses
  %i.dv = tail call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.df, <16 x i16> %i.dt, <16 x i16> %i.dr) ; 2 uses
  %i.dw = bitcast <4 x i64> %i.dp to <16 x i16>   ; 2 uses
  %i.dx = tail call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.dg, <16 x i16> %i.dm, <16 x i16> %i.dw) ; 2 uses
  %i.dy = bitcast <4 x i64> %i.dp to <16 x i16>
  %i.dz = shufflevector <16 x i16> %i.dy, <16 x i16> poison, <16 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9> ; 2 uses
  %i.ea = tail call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.dh, <16 x i16> %i.dm, <16 x i16> %i.dz) ; 2 uses
  %i.eb = tail call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.di, <16 x i16> %i.dt, <16 x i16> %i.dw) ; 2 uses
  %i.ec = tail call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.dj, <16 x i16> %i.dt, <16 x i16> %i.dz) ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.11100577.i, i64 16 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.21081578.i, i64 16 ; 2 uses
  %i.ef = add nuw nsw i32 %.11103576.i, 2         ; 3 uses
  %i.eg = or disjoint i32 %i.ef, 1
  %i.eh = icmp slt i32 %i.eg, %8
  br i1 %i.eh, label %.lr.ph579.i, label %.preheader462.i, !llvm.loop !293

.lr.ph594.i:                                      ; preds = %.preheader462.i, %.lr.ph594.i
  %.31082593.i = phi ptr [ %i.fx, %.lr.ph594.i ], [ %.21081.lcssa.i, %.preheader462.i ] ; 2 uses
  %.21101592.i = phi ptr [ %i.fw, %.lr.ph594.i ], [ %.11100.lcssa.i, %.preheader462.i ] ; 2 uses
  %.21104591.i = phi i32 [ %i.fy, %.lr.ph594.i ], [ %.11103.lcssa.i, %.preheader462.i ]
  %i.ei = phi <8 x i32> [ %i.fa, %.lr.ph594.i ], [ %.lcssa526.i, %.preheader462.i ]
  %i.ej = phi <8 x i32> [ %i.fd, %.lr.ph594.i ], [ %.lcssa527.i, %.preheader462.i ]
  %i.ek = phi <8 x i32> [ %i.fg, %.lr.ph594.i ], [ %.lcssa528.i, %.preheader462.i ]
  %i.el = phi <8 x i32> [ %i.fj, %.lr.ph594.i ], [ %.lcssa529.i, %.preheader462.i ]
  %i.em = phi <8 x i32> [ %i.fm, %.lr.ph594.i ], [ %.lcssa530.i, %.preheader462.i ]
  %i.en = phi <8 x i32> [ %i.fp, %.lr.ph594.i ], [ %.lcssa531.i, %.preheader462.i ]
  %i.eo = phi <8 x i32> [ %i.fs, %.lr.ph594.i ], [ %.lcssa532.i, %.preheader462.i ]
  %i.ep = phi <8 x i32> [ %i.fv, %.lr.ph594.i ], [ %.lcssa533.i, %.preheader462.i ]
  %i.eq = load <8 x i8>, ptr %.21101592.i, align 1, !tbaa !17
  %i.er = load <8 x i8>, ptr %.31082593.i, align 1, !tbaa !17
  %i.es = sext <8 x i8> %i.eq to <8 x i16>        ; 5 uses
  %i.et = sext <8 x i8> %i.er to <8 x i16>        ; 5 uses
  %i.eu = shufflevector <8 x i16> %i.es, <8 x i16> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 4 uses
  %i.ev = shufflevector <8 x i16> %i.et, <8 x i16> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %i.ew = shufflevector <8 x i16> %i.et, <8 x i16> poison, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.ex = shufflevector <8 x i16> %i.et, <8 x i16> poison, <8 x i32> <i32 5, i32 6, i32 7, i32 4, i32 1, i32 2, i32 3, i32 0> ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN4ncnn40gemm_transB_packed_tile_int8_avxvnniint8ERKNS_3MatES2_RS0_iiiiii:bb.a
  %i.oq = load <32 x i8>, ptr %.01123686.i.epil, align 1, !tbaa !17
  %i.or = load float, ptr %.131092687.i.epil, align 1, !tbaa !17
  %i.os = insertelement <8 x float> poison, float %i.or, i64 0
  %i.ot = shufflevector <8 x float> %i.os, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ou = bitcast <8 x float> %i.ot to <32 x i8>
  %i.ov = tail call <8 x i32> @llvm.x86.avx2.vpdpbssd.256(<8 x i32> %i.op, <32 x i8> %i.ou, <32 x i8> %i.oq) ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %.01123686.i.epil, i64 32
  %i.ox = getelementptr inbounds nuw i8, ptr %.131092687.i.epil, i64 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter1936
  br i1 %epil.iter.cmp.not, label %.preheader457.loopexit.i, label %.lr.ph689.i.epil, !llvm.loop !306

.preheader457.loopexit.i:                         ; preds = %.lr.ph689.i.epil, %.preheader457.loopexit.i.unr-lcssa
  %.lcssa1918 = phi <8 x i32> [ %i.qf, %.preheader457.loopexit.i.unr-lcssa ], [ %i.ov, %.lr.ph689.i.epil ]
  %i.oy = getelementptr i8, ptr %.121091710.i, i64 %i.q
  %scevgep1496.i = getelementptr i8, ptr %i.oy, i64 4
  br label %.preheader457.i

.preheader457.i:                                  ; preds = %.preheader457.loopexit.i, %bb.i
  %.lcssa560.i = phi <8 x i32> [ %i.oo, %bb.i ], [ %.lcssa1918, %.preheader457.loopexit.i ] ; 2 uses
  %.01126.lcssa.i = phi i32 [ 0, %bb.i ], [ %i.i, %.preheader457.loopexit.i ] ; 3 uses
  %.01123.lcssa.i = phi ptr [ %.01067717.i, %bb.i ], [ %indvars.iv.i, %.preheader457.loopexit.i ] ; 2 uses
  %.131092.lcssa.i = phi ptr [ %.121091710.i, %bb.i ], [ %scevgep1496.i, %.preheader457.loopexit.i ] ; 2 uses
  %i.oz = or disjoint i32 %.01126.lcssa.i, 1
  %i.pa = icmp slt i32 %i.oz, %8
  br i1 %i.pa, label %.lr.ph697.i, label %.preheader456.i

.lr.ph689.i:                                      ; preds = %.lr.ph689.i.preheader, %.lr.ph689.i
  %.131092687.i = phi ptr [ %i.qh, %.lr.ph689.i ], [ %.121091710.i, %.lr.ph689.i.preheader ] ; 5 uses
  %.01123686.i = phi ptr [ %i.qg, %.lr.ph689.i ], [ %.01067717.i, %.lr.ph689.i.preheader ] ; 5 uses
  %i.pb = phi <8 x i32> [ %i.qf, %.lr.ph689.i ], [ %i.oo, %.lr.ph689.i.preheader ]
  %niter1943 = phi i32 [ %niter1943.next.3, %.lr.ph689.i ], [ 0, %.lr.ph689.i.preheader ]
  %i.pc = load <32 x i8>, ptr %.01123686.i, align 1, !tbaa !17
  %i.pd = load float, ptr %.131092687.i, align 1, !tbaa !17
  %i.pe = insertelement <8 x float> poison, float %i.pd, i64 0
  %i.pf = shufflevector <8 x float> %i.pe, <8 x float> poison, <8 x i32> zeroinitializer
  %i.pg = bitcast <8 x float> %i.pf to <32 x i8>
  %i.ph = tail call <8 x i32> @llvm.x86.avx2.vpdpbssd.256(<8 x i32> %i.pb, <32 x i8> %i.pg, <32 x i8> %i.pc)
  %i.pi = getelementptr inbounds nuw i8, ptr %.01123686.i, i64 32
  %i.pj = getelementptr inbounds nuw i8, ptr %.131092687.i, i64 4
  %i.pk = load <32 x i8>, ptr %i.pi, align 1, !tbaa !17
  %i.pl = load float, ptr %i.pj, align 1, !tbaa !17
  %i.pm = insertelement <8 x float> poison, float %i.pl, i64 0
  %i.pn = shufflevector <8 x float> %i.pm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.po = bitcast <8 x float> %i.pn to <32 x i8>
  %i.pp = tail call <8 x i32> @llvm.x86.avx2.vpdpbssd.256(<8 x i32> %i.ph, <32 x i8> %i.po, <32 x i8> %i.pk)
  %i.pq = getelementptr inbounds nuw i8, ptr %.01123686.i, i64 64
  %i.pr = getelementptr inbounds nuw i8, ptr %.131092687.i, i64 8
  %i.ps = load <32 x i8>, ptr %i.pq, align 1, !tbaa !17
  %i.pt = load float, ptr %i.pr, align 1, !tbaa !17
  %i.pu = insertelement <8 x float> poison, float %i.pt, i64 0
  %i.pv = shufflevector <8 x float> %i.pu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.pw = bitcast <8 x float> %i.pv to <32 x i8>
  %i.px = tail call <8 x i32> @llvm.x86.avx2.vpdpbssd.256(<8 x i32> %i.pp, <32 x i8> %i.pw, <32 x i8> %i.ps)
  %i.py = getelementptr inbounds nuw i8, ptr %.01123686.i, i64 96
  %i.pz = getelementptr inbounds nuw i8, ptr %.131092687.i, i64 12
  %i.qa = load <32 x i8>, ptr %i.py, align 1, !tbaa !17
  %i.qb = load float, ptr %i.pz, align 1, !tbaa !17
  %i.qc = insertelement <8 x float> poison, float %i.qb, i64 0
  %i.qd = shufflevector <8 x float> %i.qc, <8 x float> poison, <8 x i32> zeroinitializer
  %i.qe = bitcast <8 x float> %i.qd to <32 x i8>
  %i.qf = tail call <8 x i32> @llvm.x86.avx2.vpdpbssd.256(<8 x i32> %i.px, <32 x i8> %i.qe, <32 x i8> %i.qa) ; 3 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %.01123686.i, i64 128 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %.131092687.i, i64 16 ; 2 uses
  %niter1943.next.3 = add nuw nsw i32 %niter1943, 4 ; 2 uses
  %niter1943.ncmp.3.not = icmp eq i32 %niter1943.next.3, %unroll_iter1942
  br i1 %niter1943.ncmp.3.not, label %.preheader457.loopexit.i.unr-lcssa, label %.lr.ph689.i, !llvm.loop !307

.preheader456.i:                                  ; preds = %.lr.ph697.i, %.preheader457.i
  %.lcssa561.i = phi <8 x i32> [ %.lcssa560.i, %.preheader457.i ], [ %i.rf, %.lr.ph697.i ] ; 3 uses
  %.11127.lcssa.i = phi i32 [ %.01126.lcssa.i, %.preheader457.i ], [ %i.ri, %.lr.ph697.i ] ; 5 uses
  %.11124.lcssa.i = phi ptr [ %.01123.lcssa.i, %.preheader457.i ], [ %i.rg, %.lr.ph697.i ] ; 3 uses
  %.141093.lcssa.i = phi ptr [ %.131092.lcssa.i, %.preheader457.i ], [ %i.rh, %.lr.ph697.i ] ; 4 uses
  %i.qi = icmp slt i32 %.11127.lcssa.i, %8
  br i1 %i.qi, label %.lr.ph705.i.preheader, label %._crit_edge706.i

.lr.ph705.i.preheader:                            ; preds = %.preheader456.i
  %i.qj = sub i32 %8, %.11127.lcssa.i
  %.neg2043 = add i32 %.11127.lcssa.i, 1
  %xtraiter1944 = and i32 %i.qj, 1
  %lcmp.mod1945.not = icmp eq i32 %xtraiter1944, 0
  br i1 %lcmp.mod1945.not, label %.lr.ph705.i.prol.loopexit, label %.lr.ph705.i.prol

.lr.ph705.i.prol:                                 ; preds = %.lr.ph705.i.preheader
  %i.qk = load <8 x i8>, ptr %.11124.lcssa.i, align 1, !tbaa !17
  %i.ql = load i8, ptr %.141093.lcssa.i, align 1, !tbaa !17
  %i.qm = sext i8 %i.ql to i16
  %i.qn = insertelement <8 x i16> poison, i16 %i.qm, i64 0
  %i.qo = shufflevector <8 x i16> %i.qn, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.qp = sext <8 x i8> %i.qk to <8 x i16>
  %i.qq = mul <8 x i16> %i.qo, %i.qp
  %i.qr = sext <8 x i16> %i.qq to <8 x i32>
  %i.qs = add <8 x i32> %.lcssa561.i, %i.qr       ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %.11124.lcssa.i, i64 8
  %i.qu = getelementptr inbounds nuw i8, ptr %.141093.lcssa.i, i64 1 ; 2 uses
  %i.qv = add nuw nsw i32 %.11127.lcssa.i, 1
  br label %.lr.ph705.i.prol.loopexit

.lr.ph705.i.prol.loopexit:                        ; preds = %.lr.ph705.i.prol, %.lr.ph705.i.preheader
  %.lcssa1924.unr = phi <8 x i32> [ poison, %.lr.ph705.i.preheader ], [ %i.qs, %.lr.ph705.i.prol ]
  %.lcssa1923.unr = phi ptr [ poison, %.lr.ph705.i.preheader ], [ %i.qu, %.lr.ph705.i.prol ]
  %.151094704.i.unr = phi ptr [ %.141093.lcssa.i, %.lr.ph705.i.preheader ], [ %i.qu, %.lr.ph705.i.prol ]
  %.21125703.i.unr = phi ptr [ %.11124.lcssa.i, %.lr.ph705.i.preheader ], [ %i.qt, %.lr.ph705.i.prol ]
  %.21128702.i.unr = phi i32 [ %.11127.lcssa.i, %.lr.ph705.i.preheader ], [ %i.qv, %.lr.ph705.i.prol ]
  %.unr1946 = phi <8 x i32> [ %.lcssa561.i, %.lr.ph705.i.preheader ], [ %i.qs, %.lr.ph705.i.prol ]
  %i.qw = icmp eq i32 %8, %.neg2043
  br i1 %i.qw, label %._crit_edge706.i, label %.lr.ph705.i

.lr.ph697.i:                                      ; preds = %.preheader457.i, %.lr.ph697.i
  %.141093696.i = phi ptr [ %i.rh, %.lr.ph697.i ], [ %.131092.lcssa.i, %.preheader457.i ] ; 2 uses
  %.11124695.i = phi ptr [ %i.rg, %.lr.ph697.i ], [ %.01123.lcssa.i, %.preheader457.i ] ; 2 uses
  %.11127694.i = phi i32 [ %i.ri, %.lr.ph697.i ], [ %.01126.lcssa.i, %.preheader457.i ]
  %i.qx = phi <8 x i32> [ %i.rf, %.lr.ph697.i ], [ %.lcssa560.i, %.preheader457.i ]
  %i.qy = load <16 x i8>, ptr %.11124695.i, align 1, !tbaa !17
  %i.qz = load float, ptr %.141093696.i, align 1, !tbaa !17
  %i.ra = insertelement <4 x float> poison, float %i.qz, i64 0
  %i.rb = sext <16 x i8> %i.qy to <16 x i16>
  %i.rc = bitcast <4 x float> %i.ra to <16 x i8>
  %i.rd = shufflevector <16 x i8> %i.rc, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.re = sext <16 x i8> %i.rd to <16 x i16>
  %i.rf = tail call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.qx, <16 x i16> %i.rb, <16 x i16> %i.re) ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %.11124695.i, i64 16 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %.141093696.i, i64 2 ; 2 uses
  %i.ri = add nuw nsw i32 %.11127694.i, 2         ; 3 uses
  %i.rj = or disjoint i32 %i.ri, 1
  %i.rk = icmp slt i32 %i.rj, %8
  br i1 %i.rk, label %.lr.ph697.i, label %.preheader456.i, !llvm.loop !308

.lr.ph705.i:                                      ; preds = %.lr.ph705.i.prol.loopexit, %.lr.ph705.i
  %.151094704.i = phi ptr [ %i.sh, %.lr.ph705.i ], [ %.151094704.i.unr, %.lr.ph705.i.prol.loopexit ] ; 3 uses
  %.21125703.i = phi ptr [ %i.sg, %.lr.ph705.i ], [ %.21125703.i.unr, %.lr.ph705.i.prol.loopexit ] ; 3 uses
  %.21128702.i = phi i32 [ %i.si, %.lr.ph705.i ], [ %.21128702.i.unr, %.lr.ph705.i.prol.loopexit ]
  %i.rl = phi <8 x i32> [ %i.sf, %.lr.ph705.i ], [ %.unr1946, %.lr.ph705.i.prol.loopexit ]
  %i.rm = load <8 x i8>, ptr %.21125703.i, align 1, !tbaa !17
  %i.rn = load i8, ptr %.151094704.i, align 1, !tbaa !17
  %i.ro = sext i8 %i.rn to i16
  %i.rp = insertelement <8 x i16> poison, i16 %i.ro, i64 0
  %i.rq = shufflevector <8 x i16> %i.rp, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.rr = sext <8 x i8> %i.rm to <8 x i16>
  %i.rs = mul <8 x i16> %i.rq, %i.rr
  %i.rt = sext <8 x i16> %i.rs to <8 x i32>
  %i.ru = add <8 x i32> %i.rl, %i.rt
  %i.rv = getelementptr inbounds nuw i8, ptr %.21125703.i, i64 8
  %i.rw = getelementptr inbounds nuw i8, ptr %.151094704.i, i64 1
  %i.rx = load <8 x i8>, ptr %i.rv, align 1, !tbaa !17
  %i.ry = load i8, ptr %i.rw, align 1, !tbaa !17
  %i.rz = sext i8 %i.ry to i16
  %i.sa = insertelement <8 x i16> poison, i16 %i.rz, i64 0
  %i.sb = shufflevector <8 x i16> %i.sa, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.sc = sext <8 x i8> %i.rx to <8 x i16>
  %i.sd = mul <8 x i16> %i.sb, %i.sc
  %i.se = sext <8 x i16> %i.sd to <8 x i32>
  %i.sf = add <8 x i32> %i.ru, %i.se              ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %.21125703.i, i64 16
  %i.sh = getelementptr inbounds nuw i8, ptr %.151094704.i, i64 2 ; 2 uses
  %i.si = add nuw nsw i32 %.21128702.i, 2         ; 2 uses
  %exitcond1497.not.i.1 = icmp eq i32 %i.si, %8
  br i1 %exitcond1497.not.i.1, label %._crit_edge706.i, label %.lr.ph705.i, !llvm.loop !309

._crit_edge706.i:                                 ; preds = %.lr.ph705.i.prol.loopexit, %.lr.ph705.i, %.preheader456.i
  %.lcssa562.i = phi <8 x i32> [ %.lcssa561.i, %.preheader456.i ], [ %.lcssa1924.unr, %.lr.ph705.i.prol.loopexit ], [ %i.sf, %.lr.ph705.i ]
  %.151094.lcssa.i = phi ptr [ %.141093.lcssa.i, %.preheader456.i ], [ %.lcssa1923.unr, %.lr.ph705.i.prol.loopexit ], [ %i.sh, %.lr.ph705.i ]
  store <8 x i32> %.lcssa562.i, ptr %.4711.i, align 32, !tbaa !17
  %i.sj = getelementptr inbounds nuw i8, ptr %.4711.i, i64 32 ; 2 uses
  %i.sk = add nuw nsw i32 %.31098709.i, 1         ; 2 uses
  %exitcond1498.not.i = icmp eq i32 %i.sk, %6
  br i1 %exitcond1498.not.i, label %._crit_edge713.i, label %.lr.ph712.i, !llvm.loop !310

._crit_edge713.i:                                 ; preds = %._crit_edge706.i, %.preheader464.i
  %.4.lcssa.i = phi ptr [ %.31074.lcssa.i, %.preheader464.i ], [ %i.sj, %._crit_edge706.i ] ; 2 uses
  %i.sl = getelementptr inbounds i8, ptr %.01067717.i, i64 %i.f ; 2 uses
  %i.sm = add nuw nsw i32 %.01075715.i, 8         ; 2 uses
  %i.sn = or disjoint i32 %i.sm, 7
  %i.so = icmp slt i32 %i.sn, %4
  %scevgep1493.i = getelementptr i8, ptr %indvars.iv.i, i64 %i.f
  br i1 %i.so, label %.preheader467.i, label %.preheader455.loopexit.i, !llvm.loop !311

.preheader454.i:                                  ; preds = %._crit_edge863.i, %.preheader454.lr.ph.i
  %indvars.iv1503.i = phi ptr [ %scevgep1502.i, %.preheader454.lr.ph.i ], [ %scevgep1504.i, %._crit_edge863.i ] ; 4 uses
  %.11068867.i = phi ptr [ %.01067.lcssa.i, %.preheader454.lr.ph.i ], [ %i.ajg, %._crit_edge863.i ] ; 12 uses
  %.5866.i = phi ptr [ %.01071.lcssa.i, %.preheader454.lr.ph.i ], [ %.9.lcssa.i, %._crit_edge863.i ] ; 2 uses
  %.11076865.i = phi i32 [ %.01075.lcssa.i, %.preheader454.lr.ph.i ], [ %i.ajh, %._crit_edge863.i ]
  br i1 %i.z, label %.lr.ph757.i, label %.preheader453.i

.preheader442.i:                                  ; preds = %._crit_edge863.i, %.preheader455.i
  %.11076.lcssa.i = phi i32 [ %.01075.lcssa.i, %.preheader455.i ], [ %i.ajh, %._crit_edge863.i ] ; 3 uses
  %.5.lcssa.i = phi ptr [ %.01071.lcssa.i, %.preheader455.i ], [ %.9.lcssa.i, %._crit_edge863.i ] ; 2 uses
  %.11068.lcssa.i = phi ptr [ %.01067.lcssa.i, %.preheader455.i ], [ %i.ajg, %._crit_edge863.i ] ; 3 uses
  %i.sp = or disjoint i32 %.11076.lcssa.i, 1
  %i.sq = icmp slt i32 %i.sp, %4
  br i1 %i.sq, label %.preheader441.lr.ph.i, label %.preheader429.i

.preheader441.lr.ph.i:                            ; preds = %.preheader442.i
  %i.sr = icmp sgt i32 %6, 7
  %i.ss = icmp eq i32 %7, 0                       ; 4 uses
  %i.st = icmp sgt i32 %8, 3                      ; 4 uses
  %i.su = shl i32 %8, 1
  %i.sv = sext i32 %i.su to i64                   ; 2 uses
  %i.sw = add i32 %8, -4                          ; 5 uses
  %i.sx = and i32 %i.sw, -4
  %i.sy = add i32 %i.sx, 4                        ; 4 uses
  %i.sz = and i32 %6, -8
  %i.ta = zext i32 %i.sw to i64                   ; 2 uses
  %i.tb = lshr i64 %i.ta, 2                       ; 4 uses
  %i.tc = shl nuw nsw i64 %i.tb, 4
  %i.td = shl nuw nsw i64 %i.tb, 3
  %i.te = add nuw nsw i64 %i.td, 8                ; 2 uses
  %scevgep1513.i = getelementptr i8, ptr %.11068.lcssa.i, i64 %i.te
  %i.tf = and i64 %i.ta, 4294967292
  %i.tg = shl nuw nsw i64 %i.tb, 5
  %i.th = add i32 %8, -2
  %i.ti = add nuw nsw i64 %i.tb, 1                ; 7 uses
  %i.tj = add i32 %8, -4                          ; 3 uses
  %i.tk = lshr i32 %i.tj, 2                       ; 3 uses
  %i.tl = add nuw nsw i32 %i.tk, 1                ; 4 uses
  %i.tm = icmp eq i32 %i.tk, 0
  %unroll_iter2000 = and i32 %i.tl, 2147483646
  %i.tn = and i32 %i.tj, 4
  %lcmp.mod1995.not.not = icmp eq i32 %i.tn, 0
  %lcmp.mod1999 = trunc i32 %i.tl to i1
  %i.to = icmp eq i32 %i.tk, 0
  %unroll_iter2016 = and i32 %i.tl, 2147483646
  %i.tp = and i32 %i.tj, 4
  %lcmp.mod2012.not.not = icmp eq i32 %i.tp, 0
  %lcmp.mod2015 = trunc i32 %i.tl to i1
  %min.iters.check1223 = icmp ult i32 %i.sw, 28
  %n.vec1225 = and i64 %i.ti, 2147483640          ; 4 uses
  %i.tq = trunc nuw nsw i64 %n.vec1225 to i32
  %i.tr = shl i32 %i.tq, 2
  %i.ts = shl nuw nsw i64 %n.vec1225, 3           ; 2 uses
  %cmp.n1250 = icmp eq i64 %i.ti, %n.vec1225
  %i.tt = add i32 %8, -2
  %min.iters.check1087 = icmp ult i32 %i.sw, 12
  %min.iters.check1089 = icmp ult i32 %i.sw, 60
  %i.tu = and i64 %i.ti, 12
  %n.vec1091 = and i64 %i.ti, 2147483632          ; 6 uses
  %i.tv = trunc nuw nsw i64 %n.vec1091 to i32
  %i.tw = shl i32 %i.tv, 2
  %i.tx = shl nuw nsw i64 %n.vec1091, 3
  %i.ty = shl nuw nsw i64 %n.vec1091, 2
  %cmp.n1130 = icmp eq i64 %i.ti, %n.vec1091
  %min.epilog.iters.check1139 = icmp eq i64 %i.tu, 0
  %n.vec1141 = and i64 %i.ti, 2147483644          ; 5 uses
  %i.tz = trunc nuw nsw i64 %n.vec1141 to i32
  %i.ua = shl i32 %i.tz, 2
  %i.ub = shl nuw nsw i64 %n.vec1141, 3
  %i.uc = shl nuw nsw i64 %n.vec1141, 2
  %cmp.n1158 = icmp eq i64 %i.ti, %n.vec1141
  br label %.preheader441.i

.preheader453.i:                                  ; preds = %._crit_edge748.i, %.preheader454.i
  %.01145.lcssa.i = phi i32 [ 0, %.preheader454.i ], [ %i.ah, %._crit_edge748.i ] ; 3 uses
  %.01129.lcssa.i = phi ptr [ %.val8, %.preheader454.i ], [ %.31132.lcssa.i, %._crit_edge748.i ] ; 2 uses
  %.6.lcssa.i = phi ptr [ %.5866.i, %.preheader454.i ], [ %i.xn, %._crit_edge748.i ] ; 2 uses
  %i.ud = or disjoint i32 %.01145.lcssa.i, 3
  %i.ue = icmp slt i32 %i.ud, %6
  br i1 %i.ue, label %.lr.ph797.i, label %.preheader452.i

.lr.ph757.i:                                      ; preds = %.preheader454.i, %._crit_edge748.i
  %.6756.i = phi ptr [ %i.xn, %._crit_edge748.i ], [ %.5866.i, %.preheader454.i ] ; 9 uses
  %.01129755.i = phi ptr [ %.31132.lcssa.i, %._crit_edge748.i ], [ %.val8, %.preheader454.i ] ; 3 uses
  %.01145754.i = phi i32 [ %i.xo, %._crit_edge748.i ], [ 0, %.preheader454.i ]
  br i1 %i.aa, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph757.i
  %i.uf = load <8 x i32>, ptr %.6756.i, align 32, !tbaa !17
  %i.ug = getelementptr inbounds nuw i8, ptr %.6756.i, i64 32
  %i.uh = load <8 x i32>, ptr %i.ug, align 32, !tbaa !17
  %i.ui = getelementptr inbounds nuw i8, ptr %.6756.i, i64 64
  %i.uj = load <8 x i32>, ptr %i.ui, align 32, !tbaa !17
  %i.uk = getelementptr inbounds nuw i8, ptr %.6756.i, i64 96
  %i.ul = load <8 x i32>, ptr %i.uk, align 32, !tbaa !17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph757.i
  %i.um = phi <8 x i32> [ %i.uf, %bb.j ], [ zeroinitializer, %.lr.ph757.i ] ; 2 uses
  %i.un = phi <8 x i32> [ %i.uh, %bb.j ], [ zeroinitializer, %.lr.ph757.i ] ; 2 uses
  %i.uo = phi <8 x i32> [ %i.uj, %bb.j ], [ zeroinitializer, %.lr.ph757.i ] ; 2 uses
  %i.up = phi <8 x i32> [ %i.ul, %bb.j ], [ zeroinitializer, %.lr.ph757.i ] ; 2 uses
  br i1 %i.ab, label %.lr.ph725.i, label %.preheader450.i

.preheader450.i.loopexit:                         ; preds = %.lr.ph725.i
  %i.uq = getelementptr i8, ptr %.01129755.i, i64 %i.ao
  %scevgep492 = getelementptr i8, ptr %i.uq, i64 32
  br label %.preheader450.i

.preheader450.i:                                  ; preds = %.preheader450.i.loopexit, %bb.k
  %.lcssa488.i = phi <8 x i32> [ %i.um, %bb.k ], [ %i.vc, %.preheader450.i.loopexit ] ; 2 uses
  %.lcssa487.i = phi <8 x i32> [ %i.un, %bb.k ], [ %i.vd, %.preheader450.i.loopexit ] ; 2 uses
  %.lcssa486.i = phi <8 x i32> [ %i.uo, %bb.k ], [ %i.ve, %.preheader450.i.loopexit ] ; 2 uses
  %.lcssa485.i = phi <8 x i32> [ %i.up, %bb.k ], [ %i.vf, %.preheader450.i.loopexit ] ; 2 uses
  %.01215.lcssa.i = phi i32 [ 0, %bb.k ], [ %i.ag, %.preheader450.i.loopexit ] ; 3 uses
  %.01212.lcssa.i = phi ptr [ %.11068867.i, %bb.k ], [ %i.vg, %.preheader450.i.loopexit ] ; 2 uses
  %.11130.lcssa.i = phi ptr [ %.01129755.i, %bb.k ], [ %scevgep492, %.preheader450.i.loopexit ] ; 2 uses
  %i.ur = or disjoint i32 %.01215.lcssa.i, 1
  %i.us = icmp slt i32 %i.ur, %8
  br i1 %i.us, label %.lr.ph736.i, label %.preheader449.i

.lr.ph725.i:                                      ; preds = %bb.k, %.lr.ph725.i
  %.11130723.i = phi ptr [ %i.vh, %.lr.ph725.i ], [ %.01129755.i, %bb.k ] ; 2 uses
  %.01212722.i = phi ptr [ %i.vg, %.lr.ph725.i ], [ %.11068867.i, %bb.k ] ; 2 uses
  %.01215721.i = phi i32 [ %i.vi, %.lr.ph725.i ], [ 0, %bb.k ]
  %i.ut = phi <8 x i32> [ %i.vf, %.lr.ph725.i ], [ %i.up, %bb.k ]
  %i.uu = phi <8 x i32> [ %i.ve, %.lr.ph725.i ], [ %i.uo, %bb.k ]
  %i.uv = phi <8 x i32> [ %i.vd, %.lr.ph725.i ], [ %i.un, %bb.k ]
  %i.uw = phi <8 x i32> [ %i.vc, %.lr.ph725.i ], [ %i.um, %bb.k ]
  %i.ux = load <16 x i8>, ptr %.01212722.i, align 1, !tbaa !17 ; 2 uses
  %i.uy = load <32 x i8>, ptr %.11130723.i, align 1, !tbaa !17 ; 3 uses
  %i.uz = shufflevector <16 x i8> %i.ux, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.va = shufflevector <16 x i8> %i.ux, <16 x i8> poison, <32 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.vb = shufflevector <32 x i8> %i.uy, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19> ; 2 uses
  %i.vc = tail call <8 x i32> @llvm.x86.avx2.vpdpbssd.256(<8 x i32> %i.uw, <32 x i8> %i.uy, <32 x i8> %i.uz) ; 2 uses
  %i.vd = tail call <8 x i32> @llvm.x86.avx2.vpdpbssd.256(<8 x i32> %i.uv, <32 x i8> %i.uy, <32 x i8> %i.va) ; 2 uses
  %i.ve = tail call <8 x i32> @llvm.x86.avx2.vpdpbssd.256(<8 x i32> %i.uu, <32 x i8> %i.vb, <32 x i8> %i.uz) ; 2 uses
  %i.vf = tail call <8 x i32> @llvm.x86.avx2.vpdpbssd.256(<8 x i32> %i.ut, <32 x i8> %i.vb, <32 x i8> %i.va) ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %.01212722.i, i64 16 ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %.11130723.i, i64 32
  %i.vi = add nuw nsw i32 %.01215721.i, 4         ; 2 uses
  %i.vj = or disjoint i32 %i.vi, 3
  %i.vk = icmp slt i32 %i.vj, %8
  br i1 %i.vk, label %.lr.ph725.i, label %.preheader450.i.loopexit, !llvm.loop !312

.preheader449.i:                                  ; preds = %.lr.ph736.i, %.preheader450.i
  %.lcssa492.i = phi <8 x i32> [ %.lcssa488.i, %.preheader450.i ], [ %i.vx, %.lr.ph736.i ] ; 2 uses
  %.lcssa491.i = phi <8 x i32> [ %.lcssa487.i, %.preheader450.i ], [ %i.vz, %.lr.ph736.i ] ; 2 uses
  %.lcssa490.i = phi <8 x i32> [ %.lcssa486.i, %.preheader450.i ], [ %i.wb, %.lr.ph736.i ] ; 2 uses
  %.lcssa489.i = phi <8 x i32> [ %.lcssa485.i, %.preheader450.i ], [ %i.wc, %.lr.ph736.i ] ; 2 uses
  %.11216.lcssa.i = phi i32 [ %.01215.lcssa.i, %.preheader450.i ], [ %i.wf, %.lr.ph736.i ] ; 2 uses
  %.11213.lcssa.i = phi ptr [ %.01212.lcssa.i, %.preheader450.i ], [ %i.wd, %.lr.ph736.i ]
  %.21131.lcssa.i = phi ptr [ %.11130.lcssa.i, %.preheader450.i ], [ %i.we, %.lr.ph736.i ] ; 2 uses
  %i.vl = icmp slt i32 %.11216.lcssa.i, %8
  br i1 %i.vl, label %.lr.ph747.i, label %._crit_edge748.i

.lr.ph736.i:                                      ; preds = %.preheader450.i, %.lr.ph736.i
  %.21131735.i = phi ptr [ %i.we, %.lr.ph736.i ], [ %.11130.lcssa.i, %.preheader450.i ] ; 2 uses
  %.11213734.i = phi ptr [ %i.wd, %.lr.ph736.i ], [ %.01212.lcssa.i, %.preheader450.i ] ; 2 uses
  %.11216733.i = phi i32 [ %i.wf, %.lr.ph736.i ], [ %.01215.lcssa.i, %.preheader450.i ]
  %i.vm = phi <8 x i32> [ %i.wc, %.lr.ph736.i ], [ %.lcssa485.i, %.preheader450.i ]
  %i.vn = phi <8 x i32> [ %i.wb, %.lr.ph736.i ], [ %.lcssa486.i, %.preheader450.i ]
  %i.vo = phi <8 x i32> [ %i.vz, %.lr.ph736.i ], [ %.lcssa487.i, %.preheader450.i ]
  %i.vp = phi <8 x i32> [ %i.vx, %.lr.ph736.i ], [ %.lcssa488.i, %.preheader450.i ]
  %i.vq = load double, ptr %.11213734.i, align 1, !tbaa !17
  %i.vr = insertelement <2 x double> poison, double %i.vq, i64 0
  %i.vs = load <16 x i8>, ptr %.21131735.i, align 1, !tbaa !17
  %i.vt = bitcast <2 x double> %i.vr to <16 x i8>
  %i.vu = shufflevector <16 x i8> %i.vt, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.vv = sext <16 x i8> %i.vu to <16 x i16>      ; 3 uses
  %i.vw = sext <16 x i8> %i.vs to <16 x i16>      ; 3 uses
  %i.vx = tail call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.vp, <16 x i16> %i.vv, <16 x i16> %i.vw) ; 2 uses
  %i.vy = shufflevector <16 x i16> %i.vv, <16 x i16> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.vz = tail call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.vo, <16 x i16> %i.vy, <16 x i16> %i.vw) ; 2 uses
  %i.wa = shufflevector <16 x i16> %i.vw, <16 x i16> poison, <16 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9> ; 2 uses
  %i.wb = tail call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.vn, <16 x i16> %i.vv, <16 x i16> %i.wa) ; 2 uses
  %i.wc = tail call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.vm, <16 x i16> %i.vy, <16 x i16> %i.wa) ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %.11213734.i, i64 8 ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %.21131735.i, i64 16 ; 2 uses
  %i.wf = add nuw nsw i32 %.11216733.i, 2         ; 3 uses
  %i.wg = or disjoint i32 %i.wf, 1
  %i.wh = icmp slt i32 %i.wg, %8
  br i1 %i.wh, label %.lr.ph736.i, label %.preheader449.i, !llvm.loop !313

.lr.ph747.i:                                      ; preds = %.preheader449.i, %.lr.ph747.i
  %.31132746.i = phi ptr [ %i.xi, %.lr.ph747.i ], [ %.21131.lcssa.i, %.preheader449.i ] ; 2 uses
  %.21214745.i = phi ptr [ %i.xh, %.lr.ph747.i ], [ %.11213.lcssa.i, %.preheader449.i ] ; 2 uses
  %.21217744.i = phi i32 [ %i.xj, %.lr.ph747.i ], [ %.11216.lcssa.i, %.preheader449.i ]
  %i.wi = phi <8 x i32> [ %i.xg, %.lr.ph747.i ], [ %.lcssa489.i, %.preheader449.i ]
  %i.wj = phi <8 x i32> [ %i.xf, %.lr.ph747.i ], [ %.lcssa490.i, %.preheader449.i ]
  %i.wk = phi <8 x i32> [ %i.xe, %.lr.ph747.i ], [ %.lcssa491.i, %.preheader449.i ]
  %i.wl = phi <8 x i32> [ %i.xd, %.lr.ph747.i ], [ %.lcssa492.i, %.preheader449.i ]
  %i.wm = load float, ptr %.21214745.i, align 1, !tbaa !17
  %i.wn = insertelement <4 x float> poison, float %i.wm, i64 0
  %i.wo = load <8 x i8>, ptr %.31132746.i, align 1, !tbaa !17
  %i.wp = bitcast <4 x float> %i.wn to <16 x i8>
  %i.wq = shufflevector <16 x i8> %i.wp, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.wr = sext <8 x i8> %i.wq to <8 x i16>        ; 3 uses
  %i.ws = sext <8 x i8> %i.wo to <8 x i16>        ; 3 uses
  %i.wt = shufflevector <8 x i16> %i.ws, <8 x i16> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %i.wu = mul nsw <8 x i16> %i.wr, %i.ws
  %i.wv = sext <8 x i16> %i.wu to <8 x i32>
  %i.ww = shufflevector <8 x i16> %i.wr, <8 x i16> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 2 uses
  %i.wx = mul nsw <8 x i16> %i.ww, %i.ws
  %i.wy = sext <8 x i16> %i.wx to <8 x i32>
  %i.wz = mul nsw <8 x i16> %i.wt, %i.wr
  %i.xa = sext <8 x i16> %i.wz to <8 x i32>
  %i.xb = mul nsw <8 x i16> %i.wt, %i.ww
  %i.xc = sext <8 x i16> %i.xb to <8 x i32>
  %i.xd = add <8 x i32> %i.wl, %i.wv              ; 2 uses
  %i.xe = add <8 x i32> %i.wk, %i.wy              ; 2 uses
  %i.xf = add <8 x i32> %i.wj, %i.xa              ; 2 uses
  %i.xg = add <8 x i32> %i.wi, %i.xc              ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %.21214745.i, i64 4
  %i.xi = getelementptr inbounds nuw i8, ptr %.31132746.i, i64 8 ; 2 uses
  %i.xj = add nuw nsw i32 %.21217744.i, 1         ; 2 uses
  %exitcond1499.not.i = icmp eq i32 %i.xj, %8
  br i1 %exitcond1499.not.i, label %._crit_edge748.i, label %.lr.ph747.i, !llvm.loop !314

._crit_edge748.i:                                 ; preds = %.lr.ph747.i, %.preheader449.i
  %.lcssa496.i = phi <8 x i32> [ %.lcssa492.i, %.preheader449.i ], [ %i.xd, %.lr.ph747.i ]
  %.lcssa495.i = phi <8 x i32> [ %.lcssa491.i, %.preheader449.i ], [ %i.xe, %.lr.ph747.i ]
  %.lcssa494.i = phi <8 x i32> [ %.lcssa490.i, %.preheader449.i ], [ %i.xf, %.lr.ph747.i ]
  %.lcssa493.i = phi <8 x i32> [ %.lcssa489.i, %.preheader449.i ], [ %i.xg, %.lr.ph747.i ]
end_hunk_5
begin_hunk_6_@_ZN4ncnn40gemm_transB_packed_tile_int8_avxvnniint8ERKNS_3MatES2_RS0_iiiiii:bb.a
  %i.afj = shufflevector <16 x i8> %i.afi, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.afk = tail call <4 x i32> @llvm.x86.avx2.vpdpbssd.128(<4 x i32> %i.afe, <16 x i8> %i.afj, <16 x i8> %i.aff) ; 2 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %.01230836.i.epil, i64 16
  %i.afm = getelementptr inbounds nuw i8, ptr %.131142837.i.epil, i64 4
  %epil.iter1978.next = add i32 %epil.iter1978, 1 ; 2 uses
  %epil.iter1978.cmp.not = icmp eq i32 %epil.iter1978.next, %xtraiter1977
  br i1 %epil.iter1978.cmp.not, label %.preheader444.loopexit.i, label %.lr.ph839.i.epil, !llvm.loop !324

.preheader444.loopexit.i:                         ; preds = %.lr.ph839.i.epil, %.preheader444.loopexit.i.unr-lcssa
  %.lcssa1848 = phi <4 x i32> [ %i.agu, %.preheader444.loopexit.i.unr-lcssa ], [ %i.afk, %.lr.ph839.i.epil ]
  %i.afn = getelementptr i8, ptr %.121141860.i, i64 %i.an
  %scevgep1507.i = getelementptr i8, ptr %i.afn, i64 4
  br label %.preheader444.i

.preheader444.i:                                  ; preds = %.preheader444.loopexit.i, %bb.q
  %.lcssa515.i = phi <4 x i32> [ %i.afd, %bb.q ], [ %.lcssa1848, %.preheader444.loopexit.i ] ; 2 uses
  %.01233.lcssa.i = phi i32 [ 0, %bb.q ], [ %i.ag, %.preheader444.loopexit.i ] ; 3 uses
  %.01230.lcssa.i = phi ptr [ %.11068867.i, %bb.q ], [ %indvars.iv1503.i, %.preheader444.loopexit.i ] ; 2 uses
  %.131142.lcssa.i = phi ptr [ %.121141860.i, %bb.q ], [ %scevgep1507.i, %.preheader444.loopexit.i ] ; 2 uses
  %i.afo = or disjoint i32 %.01233.lcssa.i, 1
  %i.afp = icmp slt i32 %i.afo, %8
  br i1 %i.afp, label %.lr.ph847.i, label %.preheader443.i

.lr.ph839.i:                                      ; preds = %.lr.ph839.i.preheader, %.lr.ph839.i
  %.131142837.i = phi ptr [ %i.agw, %.lr.ph839.i ], [ %.121141860.i, %.lr.ph839.i.preheader ] ; 5 uses
  %.01230836.i = phi ptr [ %i.agv, %.lr.ph839.i ], [ %.11068867.i, %.lr.ph839.i.preheader ] ; 5 uses
  %i.afq = phi <4 x i32> [ %i.agu, %.lr.ph839.i ], [ %i.afd, %.lr.ph839.i.preheader ]
  %niter1985 = phi i32 [ %niter1985.next.3, %.lr.ph839.i ], [ 0, %.lr.ph839.i.preheader ]
  %i.afr = load <16 x i8>, ptr %.01230836.i, align 1, !tbaa !17
  %i.afs = load float, ptr %.131142837.i, align 1, !tbaa !17
  %i.aft = insertelement <4 x float> poison, float %i.afs, i64 0
  %i.afu = bitcast <4 x float> %i.aft to <16 x i8>
  %i.afv = shufflevector <16 x i8> %i.afu, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.afw = tail call <4 x i32> @llvm.x86.avx2.vpdpbssd.128(<4 x i32> %i.afq, <16 x i8> %i.afv, <16 x i8> %i.afr)
  %i.afx = getelementptr inbounds nuw i8, ptr %.01230836.i, i64 16
  %i.afy = getelementptr inbounds nuw i8, ptr %.131142837.i, i64 4
  %i.afz = load <16 x i8>, ptr %i.afx, align 1, !tbaa !17
  %i.aga = load float, ptr %i.afy, align 1, !tbaa !17
  %i.agb = insertelement <4 x float> poison, float %i.aga, i64 0
  %i.agc = bitcast <4 x float> %i.agb to <16 x i8>
  %i.agd = shufflevector <16 x i8> %i.agc, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.age = tail call <4 x i32> @llvm.x86.avx2.vpdpbssd.128(<4 x i32> %i.afw, <16 x i8> %i.agd, <16 x i8> %i.afz)
  %i.agf = getelementptr inbounds nuw i8, ptr %.01230836.i, i64 32
  %i.agg = getelementptr inbounds nuw i8, ptr %.131142837.i, i64 8
  %i.agh = load <16 x i8>, ptr %i.agf, align 1, !tbaa !17
  %i.agi = load float, ptr %i.agg, align 1, !tbaa !17
  %i.agj = insertelement <4 x float> poison, float %i.agi, i64 0
  %i.agk = bitcast <4 x float> %i.agj to <16 x i8>
  %i.agl = shufflevector <16 x i8> %i.agk, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.agm = tail call <4 x i32> @llvm.x86.avx2.vpdpbssd.128(<4 x i32> %i.age, <16 x i8> %i.agl, <16 x i8> %i.agh)
  %i.agn = getelementptr inbounds nuw i8, ptr %.01230836.i, i64 48
  %i.ago = getelementptr inbounds nuw i8, ptr %.131142837.i, i64 12
  %i.agp = load <16 x i8>, ptr %i.agn, align 1, !tbaa !17
  %i.agq = load float, ptr %i.ago, align 1, !tbaa !17
  %i.agr = insertelement <4 x float> poison, float %i.agq, i64 0
  %i.ags = bitcast <4 x float> %i.agr to <16 x i8>
  %i.agt = shufflevector <16 x i8> %i.ags, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.agu = tail call <4 x i32> @llvm.x86.avx2.vpdpbssd.128(<4 x i32> %i.agm, <16 x i8> %i.agt, <16 x i8> %i.agp) ; 3 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %.01230836.i, i64 64 ; 2 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %.131142837.i, i64 16 ; 2 uses
  %niter1985.next.3 = add nuw nsw i32 %niter1985, 4 ; 2 uses
  %niter1985.ncmp.3.not = icmp eq i32 %niter1985.next.3, %unroll_iter1984
  br i1 %niter1985.ncmp.3.not, label %.preheader444.loopexit.i.unr-lcssa, label %.lr.ph839.i, !llvm.loop !325

.preheader443.i:                                  ; preds = %.lr.ph847.i, %.preheader444.i
  %.lcssa516.i = phi <4 x i32> [ %.lcssa515.i, %.preheader444.i ], [ %i.ahw, %.lr.ph847.i ] ; 3 uses
  %.11234.lcssa.i = phi i32 [ %.01233.lcssa.i, %.preheader444.i ], [ %i.ahz, %.lr.ph847.i ] ; 5 uses
  %.11231.lcssa.i = phi ptr [ %.01230.lcssa.i, %.preheader444.i ], [ %i.ahx, %.lr.ph847.i ] ; 3 uses
  %.141143.lcssa.i = phi ptr [ %.131142.lcssa.i, %.preheader444.i ], [ %i.ahy, %.lr.ph847.i ] ; 4 uses
  %i.agx = icmp slt i32 %.11234.lcssa.i, %8
  br i1 %i.agx, label %.lr.ph855.i.preheader, label %._crit_edge856.i

.lr.ph855.i.preheader:                            ; preds = %.preheader443.i
  %i.agy = sub i32 %8, %.11234.lcssa.i
  %.neg2044 = add i32 %.11234.lcssa.i, 1
  %xtraiter1986 = and i32 %i.agy, 1
  %lcmp.mod1987.not = icmp eq i32 %xtraiter1986, 0
  br i1 %lcmp.mod1987.not, label %.lr.ph855.i.prol.loopexit, label %.lr.ph855.i.prol

.lr.ph855.i.prol:                                 ; preds = %.lr.ph855.i.preheader
  %i.agz = load <8 x i8>, ptr %.11231.lcssa.i, align 1, !tbaa !17
  %i.aha = load i8, ptr %.141143.lcssa.i, align 1, !tbaa !17
  %i.ahb = sext i8 %i.aha to i16
  %i.ahc = insertelement <8 x i16> poison, i16 %i.ahb, i64 0
  %i.ahd = shufflevector <8 x i16> %i.ahc, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ahe = sext <8 x i8> %i.agz to <8 x i16>      ; 2 uses
  %i.ahf = mul <8 x i16> %i.ahd, %i.ahe
  %i.ahg = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.ahe, <8 x i16> %i.ahd)
  %i.ahh = shufflevector <8 x i16> %i.ahf, <8 x i16> %i.ahg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ahi = bitcast <8 x i16> %i.ahh to <4 x i32>
  %i.ahj = add <4 x i32> %.lcssa516.i, %i.ahi     ; 2 uses
  %i.ahk = getelementptr inbounds nuw i8, ptr %.11231.lcssa.i, i64 4
  %i.ahl = getelementptr inbounds nuw i8, ptr %.141143.lcssa.i, i64 1 ; 2 uses
  %i.ahm = add nuw nsw i32 %.11234.lcssa.i, 1
  br label %.lr.ph855.i.prol.loopexit

.lr.ph855.i.prol.loopexit:                        ; preds = %.lr.ph855.i.prol, %.lr.ph855.i.preheader
  %.lcssa1854.unr = phi <4 x i32> [ poison, %.lr.ph855.i.preheader ], [ %i.ahj, %.lr.ph855.i.prol ]
  %.lcssa1853.unr = phi ptr [ poison, %.lr.ph855.i.preheader ], [ %i.ahl, %.lr.ph855.i.prol ]
  %.151144854.i.unr = phi ptr [ %.141143.lcssa.i, %.lr.ph855.i.preheader ], [ %i.ahl, %.lr.ph855.i.prol ]
  %.21232853.i.unr = phi ptr [ %.11231.lcssa.i, %.lr.ph855.i.preheader ], [ %i.ahk, %.lr.ph855.i.prol ]
  %.21235852.i.unr = phi i32 [ %.11234.lcssa.i, %.lr.ph855.i.preheader ], [ %i.ahm, %.lr.ph855.i.prol ]
  %.unr1988 = phi <4 x i32> [ %.lcssa516.i, %.lr.ph855.i.preheader ], [ %i.ahj, %.lr.ph855.i.prol ]
  %i.ahn = icmp eq i32 %8, %.neg2044
  br i1 %i.ahn, label %._crit_edge856.i, label %.lr.ph855.i

.lr.ph847.i:                                      ; preds = %.preheader444.i, %.lr.ph847.i
  %.141143846.i = phi ptr [ %i.ahy, %.lr.ph847.i ], [ %.131142.lcssa.i, %.preheader444.i ] ; 2 uses
  %.11231845.i = phi ptr [ %i.ahx, %.lr.ph847.i ], [ %.01230.lcssa.i, %.preheader444.i ] ; 2 uses
  %.11234844.i = phi i32 [ %i.ahz, %.lr.ph847.i ], [ %.01233.lcssa.i, %.preheader444.i ]
  %i.aho = phi <4 x i32> [ %i.ahw, %.lr.ph847.i ], [ %.lcssa515.i, %.preheader444.i ]
  %i.ahp = load <8 x i8>, ptr %.11231845.i, align 1, !tbaa !17
  %i.ahq = load i16, ptr %.141143846.i, align 2, !tbaa !301
  %i.ahr = insertelement <8 x i16> poison, i16 %i.ahq, i64 0
  %i.ahs = sext <8 x i8> %i.ahp to <8 x i16>
  %i.aht = bitcast <8 x i16> %i.ahr to <16 x i8>
  %i.ahu = shufflevector <16 x i8> %i.aht, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.ahv = sext <8 x i8> %i.ahu to <8 x i16>
  %i.ahw = tail call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %i.aho, <8 x i16> %i.ahs, <8 x i16> %i.ahv) ; 2 uses
  %i.ahx = getelementptr inbounds nuw i8, ptr %.11231845.i, i64 8 ; 2 uses
  %i.ahy = getelementptr inbounds nuw i8, ptr %.141143846.i, i64 2 ; 2 uses
  %i.ahz = add nuw nsw i32 %.11234844.i, 2        ; 3 uses
  %i.aia = or disjoint i32 %i.ahz, 1
  %i.aib = icmp slt i32 %i.aia, %8
  br i1 %i.aib, label %.lr.ph847.i, label %.preheader443.i, !llvm.loop !326

.lr.ph855.i:                                      ; preds = %.lr.ph855.i.prol.loopexit, %.lr.ph855.i
  %.151144854.i = phi ptr [ %i.ajc, %.lr.ph855.i ], [ %.151144854.i.unr, %.lr.ph855.i.prol.loopexit ] ; 3 uses
  %.21232853.i = phi ptr [ %i.ajb, %.lr.ph855.i ], [ %.21232853.i.unr, %.lr.ph855.i.prol.loopexit ] ; 3 uses
  %.21235852.i = phi i32 [ %i.ajd, %.lr.ph855.i ], [ %.21235852.i.unr, %.lr.ph855.i.prol.loopexit ]
  %i.aic = phi <4 x i32> [ %i.aja, %.lr.ph855.i ], [ %.unr1988, %.lr.ph855.i.prol.loopexit ]
  %i.aid = load <8 x i8>, ptr %.21232853.i, align 1, !tbaa !17
  %i.aie = load i8, ptr %.151144854.i, align 1, !tbaa !17
  %i.aif = sext i8 %i.aie to i16
  %i.aig = insertelement <8 x i16> poison, i16 %i.aif, i64 0
  %i.aih = shufflevector <8 x i16> %i.aig, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.aii = sext <8 x i8> %i.aid to <8 x i16>      ; 2 uses
  %i.aij = mul <8 x i16> %i.aih, %i.aii
  %i.aik = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.aii, <8 x i16> %i.aih)
  %i.ail = shufflevector <8 x i16> %i.aij, <8 x i16> %i.aik, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aim = bitcast <8 x i16> %i.ail to <4 x i32>
  %i.ain = add <4 x i32> %i.aic, %i.aim
  %i.aio = getelementptr inbounds nuw i8, ptr %.21232853.i, i64 4
  %i.aip = getelementptr inbounds nuw i8, ptr %.151144854.i, i64 1
  %i.aiq = load <8 x i8>, ptr %i.aio, align 1, !tbaa !17
  %i.air = load i8, ptr %i.aip, align 1, !tbaa !17
  %i.ais = sext i8 %i.air to i16
  %i.ait = insertelement <8 x i16> poison, i16 %i.ais, i64 0
  %i.aiu = shufflevector <8 x i16> %i.ait, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.aiv = sext <8 x i8> %i.aiq to <8 x i16>      ; 2 uses
  %i.aiw = mul <8 x i16> %i.aiu, %i.aiv
  %i.aix = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.aiv, <8 x i16> %i.aiu)
  %i.aiy = shufflevector <8 x i16> %i.aiw, <8 x i16> %i.aix, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aiz = bitcast <8 x i16> %i.aiy to <4 x i32>
  %i.aja = add <4 x i32> %i.ain, %i.aiz           ; 2 uses
  %i.ajb = getelementptr inbounds nuw i8, ptr %.21232853.i, i64 8
  %i.ajc = getelementptr inbounds nuw i8, ptr %.151144854.i, i64 2 ; 2 uses
  %i.ajd = add nuw nsw i32 %.21235852.i, 2        ; 2 uses
  %exitcond1508.not.i.1 = icmp eq i32 %i.ajd, %8
  br i1 %exitcond1508.not.i.1, label %._crit_edge856.i, label %.lr.ph855.i, !llvm.loop !327

._crit_edge856.i:                                 ; preds = %.lr.ph855.i.prol.loopexit, %.lr.ph855.i, %.preheader443.i
  %.lcssa517.i = phi <4 x i32> [ %.lcssa516.i, %.preheader443.i ], [ %.lcssa1854.unr, %.lr.ph855.i.prol.loopexit ], [ %i.aja, %.lr.ph855.i ]
  %.151144.lcssa.i = phi ptr [ %.141143.lcssa.i, %.preheader443.i ], [ %.lcssa1853.unr, %.lr.ph855.i.prol.loopexit ], [ %i.ajc, %.lr.ph855.i ]
  store <4 x i32> %.lcssa517.i, ptr %.9861.i, align 16, !tbaa !17
  %i.aje = getelementptr inbounds nuw i8, ptr %.9861.i, i64 16 ; 2 uses
  %i.ajf = add nuw nsw i32 %.31148859.i, 1        ; 2 uses
  %exitcond1509.not.i = icmp eq i32 %i.ajf, %6
  br i1 %exitcond1509.not.i, label %._crit_edge863.i, label %.lr.ph862.i, !llvm.loop !328

._crit_edge863.i:                                 ; preds = %._crit_edge856.i, %.preheader451.i
  %.9.lcssa.i = phi ptr [ %.8.lcssa.i, %.preheader451.i ], [ %i.aje, %._crit_edge856.i ] ; 2 uses
  %i.ajg = getelementptr inbounds i8, ptr %.11068867.i, i64 %i.ad ; 2 uses
  %i.ajh = add nuw nsw i32 %.11076865.i, 4        ; 3 uses
  %i.aji = or disjoint i32 %i.ajh, 3
  %i.ajj = icmp slt i32 %i.aji, %4
  %scevgep1504.i = getelementptr i8, ptr %indvars.iv1503.i, i64 %i.ad
  br i1 %i.ajj, label %.preheader454.i, label %.preheader442.i, !llvm.loop !329

.preheader441.i:                                  ; preds = %._crit_edge1028.i, %.preheader441.lr.ph.i
  %indvars.iv1514.i = phi ptr [ %scevgep1513.i, %.preheader441.lr.ph.i ], [ %scevgep1515.i, %._crit_edge1028.i ] ; 4 uses
  %.210691032.i = phi ptr [ %.11068.lcssa.i, %.preheader441.lr.ph.i ], [ %i.cux, %._crit_edge1028.i ] ; 42 uses
  %.101031.i = phi ptr [ %.5.lcssa.i, %.preheader441.lr.ph.i ], [ %.14.lcssa.i, %._crit_edge1028.i ] ; 2 uses
  %.210771030.i = phi i32 [ %.11076.lcssa.i, %.preheader441.lr.ph.i ], [ %i.cuy, %._crit_edge1028.i ]
  br i1 %i.sr, label %.lr.ph901.i, label %.preheader440.i

.preheader429.i:                                  ; preds = %._crit_edge1028.i, %.preheader442.i
  %.21077.lcssa.i = phi i32 [ %.11076.lcssa.i, %.preheader442.i ], [ %i.cuy, %._crit_edge1028.i ] ; 2 uses
  %.10.lcssa.i = phi ptr [ %.5.lcssa.i, %.preheader442.i ], [ %.14.lcssa.i, %._crit_edge1028.i ]
  %.21069.lcssa.i = phi ptr [ %.11068.lcssa.i, %.preheader442.i ], [ %i.cux, %._crit_edge1028.i ] ; 2 uses
  %i.ajk = icmp slt i32 %.21077.lcssa.i, %4
  br i1 %i.ajk, label %.preheader428.lr.ph.i, label %_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii.exit

.preheader428.lr.ph.i:                            ; preds = %.preheader429.i
  %i.ajl = icmp sgt i32 %6, 7
  %i.ajm = icmp eq i32 %7, 0                      ; 4 uses
  %i.ajn = icmp sgt i32 %8, 3                     ; 4 uses
  %i.ajo = sext i32 %8 to i64                     ; 2 uses
  %i.ajp = add i32 %8, -4                         ; 5 uses
  %i.ajq = and i32 %i.ajp, -4
  %i.ajr = add i32 %i.ajq, 4                      ; 4 uses
  %i.ajs = and i32 %6, -8
  %i.ajt = zext i32 %i.ajp to i64                 ; 3 uses
  %i.aju = lshr i64 %i.ajt, 2                     ; 4 uses
  %i.ajv = shl nuw nsw i64 %i.aju, 4
  %i.ajw = and i64 %i.ajt, 4294967292
  %i.ajx = add nuw nsw i64 %i.ajw, 4              ; 2 uses
  %scevgep1524.i = getelementptr i8, ptr %.21069.lcssa.i, i64 %i.ajx
  %i.ajy = shl nuw nsw i64 %i.aju, 3
  %i.ajz = shl nuw nsw i64 %i.aju, 5
  %i.aka = add i32 %8, -2
  %i.akb = add nuw nsw i64 %i.aju, 1              ; 5 uses
  %i.akc = add i32 %8, -4                         ; 3 uses
  %i.akd = lshr i32 %i.akc, 2
  %i.ake = add nuw nsw i32 %i.akd, 1              ; 4 uses
  %xtraiter2018 = and i32 %i.ake, 3               ; 3 uses
  %i.akf = icmp ult i32 %i.akc, 12
  %unroll_iter2026 = and i32 %i.ake, 2147483644
  %lcmp.mod2022.not = icmp eq i32 %xtraiter2018, 0
  %lcmp.mod2025 = icmp ne i32 %xtraiter2018, 0
  %xtraiter2031 = and i32 %i.ake, 3               ; 3 uses
  %i.akg = icmp ult i32 %i.akc, 12
  %unroll_iter2038 = and i32 %i.ake, 2147483644
  %lcmp.mod2035.not = icmp eq i32 %xtraiter2031, 0
  %lcmp.mod2037 = icmp ne i32 %xtraiter2031, 0
  %min.iters.check1541 = icmp ult i32 %i.ajp, 12
  %min.iters.check1543 = icmp ult i32 %i.ajp, 60
  %i.akh = and i64 %i.akb, 12
  %n.vec1545 = and i64 %i.akb, 2147483632         ; 6 uses
  %i.aki = trunc nuw nsw i64 %n.vec1545 to i32
  %i.akj = shl i32 %i.aki, 2
  %i.akk = shl nuw nsw i64 %n.vec1545, 2
  %i.akl = shl nuw nsw i64 %n.vec1545, 3
  %cmp.n1584 = icmp eq i64 %i.akb, %n.vec1545
  %min.epilog.iters.check1594 = icmp eq i64 %i.akh, 0
  %n.vec1596 = and i64 %i.akb, 2147483644         ; 5 uses
  %i.akm = trunc nuw nsw i64 %n.vec1596 to i32
  %i.akn = shl i32 %i.akm, 2
  %i.ako = shl nuw nsw i64 %n.vec1596, 2
  %i.akp = shl nuw nsw i64 %n.vec1596, 3
  %cmp.n1613 = icmp eq i64 %i.akb, %n.vec1596
  %i.akq = lshr i64 %i.ajt, 2
  %i.akr = add nuw nsw i64 %i.akq, 1              ; 2 uses
  %min.iters.check1344 = icmp ult i32 %i.ajp, 28
  %n.vec1346 = and i64 %i.akr, 2147483640         ; 4 uses
  %i.aks = trunc nuw nsw i64 %n.vec1346 to i32
  %i.akt = shl i32 %i.aks, 2
  %i.aku = shl nuw nsw i64 %n.vec1346, 2          ; 2 uses
  %cmp.n1364 = icmp eq i64 %i.akr, %n.vec1346
  br label %.preheader428.i

.preheader440.i:                                  ; preds = %._crit_edge894.i, %.preheader441.i
  %.01252.lcssa.i = phi i32 [ 0, %.preheader441.i ], [ %i.sz, %._crit_edge894.i ] ; 3 uses
  %.01236.lcssa.i = phi ptr [ %.val8, %.preheader441.i ], [ %.31239.lcssa.i, %._crit_edge894.i ] ; 2 uses
  %.11.lcssa.i = phi ptr [ %.101031.i, %.preheader441.i ], [ %i.api, %._crit_edge894.i ] ; 2 uses
  %i.akv = or disjoint i32 %.01252.lcssa.i, 3
  %i.akw = icmp slt i32 %i.akv, %6
  br i1 %i.akw, label %.lr.ph935.i, label %.preheader439.i

.lr.ph901.i:                                      ; preds = %.preheader441.i, %._crit_edge894.i
  %.11900.i = phi ptr [ %i.api, %._crit_edge894.i ], [ %.101031.i, %.preheader441.i ] ; 5 uses
  %.01236899.i = phi ptr [ %.31239.lcssa.i, %._crit_edge894.i ], [ %.val8, %.preheader441.i ] ; 4 uses
  %.01252898.i = phi i32 [ %i.apj, %._crit_edge894.i ], [ 0, %.preheader441.i ]
  br i1 %i.ss, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph901.i
  %i.akx = load <8 x i32>, ptr %.11900.i, align 1, !tbaa !17
  %i.aky = getelementptr inbounds nuw i8, ptr %.11900.i, i64 32
  %i.akz = load <8 x i32>, ptr %i.aky, align 1, !tbaa !17
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph901.i
  %i.ala = phi <8 x i32> [ %i.akx, %bb.r ], [ zeroinitializer, %.lr.ph901.i ] ; 3 uses
  %i.alb = phi <8 x i32> [ %i.akz, %bb.r ], [ zeroinitializer, %.lr.ph901.i ] ; 3 uses
  br i1 %i.st, label %.lr.ph875.i.preheader, label %.preheader437.i

.lr.ph875.i.preheader:                            ; preds = %bb.s
  br i1 %i.tm, label %.lr.ph875.i.epil.preheader, label %.lr.ph875.i

.preheader437.i.loopexit.unr-lcssa:               ; preds = %.lr.ph875.i
  br i1 %lcmp.mod1995.not.not, label %.lr.ph875.i.epil.preheader, label %.preheader437.i.loopexit

.lr.ph875.i.epil.preheader:                       ; preds = %.preheader437.i.loopexit.unr-lcssa, %.lr.ph875.i.preheader
  %.11237873.i.epil.init = phi ptr [ %.01236899.i, %.lr.ph875.i.preheader ], [ %i.amm, %.preheader437.i.loopexit.unr-lcssa ]
  %.01256872.i.epil.init = phi ptr [ %.210691032.i, %.lr.ph875.i.preheader ], [ %i.aml, %.preheader437.i.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init1992 = phi <8 x i32> [ %i.alb, %.lr.ph875.i.preheader ], [ %i.amk, %.preheader437.i.loopexit.unr-lcssa ]
  %.epil.init1994 = phi <8 x i32> [ %i.ala, %.lr.ph875.i.preheader ], [ %i.amj, %.preheader437.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1999)
  %i.alc = load double, ptr %.01256872.i.epil.init, align 1, !tbaa !17
  %i.ald = insertelement <4 x double> poison, double %i.alc, i64 0
  %i.ale = bitcast <4 x double> %i.ald to <4 x i64>
  %i.alf = shufflevector <4 x i64> %i.ale, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.alg = bitcast <4 x i64> %i.alf to <32 x i8>  ; 2 uses
  %i.alh = shufflevector <32 x i8> %i.alg, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19>
  %i.ali = load <32 x i8>, ptr %.11237873.i.epil.init, align 1, !tbaa !17 ; 2 uses
  %i.alj = tail call <8 x i32> @llvm.x86.avx2.vpdpbssd.256(<8 x i32> %.epil.init1994, <32 x i8> %i.ali, <32 x i8> %i.alg)
  %i.alk = tail call <8 x i32> @llvm.x86.avx2.vpdpbssd.256(<8 x i32> %.epil.init1992, <32 x i8> %i.ali, <32 x i8> %i.alh)
  %i.all = getelementptr inbounds nuw i8, ptr %.01256872.i.epil.init, i64 8
  br label %.preheader437.i.loopexit

.preheader437.i.loopexit:                         ; preds = %.preheader437.i.loopexit.unr-lcssa, %.lr.ph875.i.epil.preheader
  %.lcssa1719 = phi <8 x i32> [ %i.amj, %.preheader437.i.loopexit.unr-lcssa ], [ %i.alj, %.lr.ph875.i.epil.preheader ]
  %.lcssa1718 = phi <8 x i32> [ %i.amk, %.preheader437.i.loopexit.unr-lcssa ], [ %i.alk, %.lr.ph875.i.epil.preheader ]
  %.lcssa1717 = phi ptr [ %i.aml, %.preheader437.i.loopexit.unr-lcssa ], [ %i.all, %.lr.ph875.i.epil.preheader ]
  %i.alm = getelementptr i8, ptr %.01236899.i, i64 %i.tg
  %scevgep493 = getelementptr i8, ptr %i.alm, i64 32
  br label %.preheader437.i

.preheader437.i:                                  ; preds = %.preheader437.i.loopexit, %bb.s
  %.lcssa474.i = phi <8 x i32> [ %i.ala, %bb.s ], [ %.lcssa1719, %.preheader437.i.loopexit ] ; 2 uses
  %.lcssa473.i = phi <8 x i32> [ %i.alb, %bb.s ], [ %.lcssa1718, %.preheader437.i.loopexit ] ; 2 uses
  %.01265.lcssa.i = phi i32 [ 0, %bb.s ], [ %i.sy, %.preheader437.i.loopexit ] ; 3 uses
  %.01256.lcssa.i = phi ptr [ %.210691032.i, %bb.s ], [ %.lcssa1717, %.preheader437.i.loopexit ] ; 2 uses
  %.11237.lcssa.i = phi ptr [ %.01236899.i, %bb.s ], [ %scevgep493, %.preheader437.i.loopexit ] ; 2 uses
  %i.aln = or disjoint i32 %.01265.lcssa.i, 1
  %i.alo = icmp slt i32 %i.aln, %8
  br i1 %i.alo, label %.lr.ph884.i, label %.preheader436.i

.lr.ph875.i:                                      ; preds = %.lr.ph875.i.preheader, %.lr.ph875.i
  %.11237873.i = phi ptr [ %i.amm, %.lr.ph875.i ], [ %.01236899.i, %.lr.ph875.i.preheader ] ; 3 uses
  %.01256872.i = phi ptr [ %i.aml, %.lr.ph875.i ], [ %.210691032.i, %.lr.ph875.i.preheader ] ; 3 uses
  %i.alp = phi <8 x i32> [ %i.amk, %.lr.ph875.i ], [ %i.alb, %.lr.ph875.i.preheader ]
  %i.alq = phi <8 x i32> [ %i.amj, %.lr.ph875.i ], [ %i.ala, %.lr.ph875.i.preheader ]
  %niter2001 = phi i32 [ %niter2001.next.1, %.lr.ph875.i ], [ 0, %.lr.ph875.i.preheader ]
  %i.alr = load double, ptr %.01256872.i, align 1, !tbaa !17
  %i.als = insertelement <4 x double> poison, double %i.alr, i64 0
  %i.alt = bitcast <4 x double> %i.als to <4 x i64>
  %i.alu = shufflevector <4 x i64> %i.alt, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.alv = bitcast <4 x i64> %i.alu to <32 x i8>  ; 2 uses
  %i.alw = shufflevector <32 x i8> %i.alv, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19>
  %i.alx = load <32 x i8>, ptr %.11237873.i, align 1, !tbaa !17 ; 2 uses
  %i.aly = tail call <8 x i32> @llvm.x86.avx2.vpdpbssd.256(<8 x i32> %i.alq, <32 x i8> %i.alx, <32 x i8> %i.alv)
  %i.alz = tail call <8 x i32> @llvm.x86.avx2.vpdpbssd.256(<8 x i32> %i.alp, <32 x i8> %i.alx, <32 x i8> %i.alw)
  %i.ama = getelementptr inbounds nuw i8, ptr %.01256872.i, i64 8
  %i.amb = getelementptr inbounds nuw i8, ptr %.11237873.i, i64 32
  %i.amc = load double, ptr %i.ama, align 1, !tbaa !17
  %i.amd = insertelement <4 x double> poison, double %i.amc, i64 0
  %i.ame = bitcast <4 x double> %i.amd to <4 x i64>
  %i.amf = shufflevector <4 x i64> %i.ame, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.amg = bitcast <4 x i64> %i.amf to <32 x i8>  ; 2 uses
  %i.amh = shufflevector <32 x i8> %i.amg, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19>
  %i.ami = load <32 x i8>, ptr %i.amb, align 1, !tbaa !17 ; 2 uses
  %i.amj = tail call <8 x i32> @llvm.x86.avx2.vpdpbssd.256(<8 x i32> %i.aly, <32 x i8> %i.ami, <32 x i8> %i.amg) ; 3 uses
  %i.amk = tail call <8 x i32> @llvm.x86.avx2.vpdpbssd.256(<8 x i32> %i.alz, <32 x i8> %i.ami, <32 x i8> %i.amh) ; 3 uses
  %i.aml = getelementptr inbounds nuw i8, ptr %.01256872.i, i64 16 ; 3 uses
  %i.amm = getelementptr inbounds nuw i8, ptr %.11237873.i, i64 64 ; 2 uses
  %niter2001.next.1 = add i32 %niter2001, 2       ; 2 uses
  %niter2001.ncmp.1.not = icmp eq i32 %niter2001.next.1, %unroll_iter2000
  br i1 %niter2001.ncmp.1.not, label %.preheader437.i.loopexit.unr-lcssa, label %.lr.ph875.i, !llvm.loop !330

.preheader436.i:                                  ; preds = %.lr.ph884.i, %.preheader437.i
  %.lcssa476.i = phi <8 x i32> [ %.lcssa474.i, %.preheader437.i ], [ %i.anq, %.lr.ph884.i ] ; 3 uses
  %.lcssa475.i = phi <8 x i32> [ %.lcssa473.i, %.preheader437.i ], [ %i.ans, %.lr.ph884.i ] ; 3 uses
  %.11266.lcssa.i = phi i32 [ %.01265.lcssa.i, %.preheader437.i ], [ %i.anv, %.lr.ph884.i ] ; 5 uses
  %.11257.lcssa.i = phi ptr [ %.01256.lcssa.i, %.preheader437.i ], [ %i.ant, %.lr.ph884.i ] ; 3 uses
  %.21238.lcssa.i = phi ptr [ %.11237.lcssa.i, %.preheader437.i ], [ %i.anu, %.lr.ph884.i ] ; 4 uses
  %i.amn = icmp slt i32 %.11266.lcssa.i, %8
  br i1 %i.amn, label %.lr.ph893.i.preheader, label %._crit_edge894.i

.lr.ph893.i.preheader:                            ; preds = %.preheader436.i
  %i.amo = sub i32 %8, %.11266.lcssa.i
  %.neg2045 = add i32 %.11266.lcssa.i, 1
  %xtraiter2002 = and i32 %i.amo, 1
  %lcmp.mod2003.not = icmp eq i32 %xtraiter2002, 0
  br i1 %lcmp.mod2003.not, label %.lr.ph893.i.prol.loopexit, label %.lr.ph893.i.prol

.lr.ph893.i.prol:                                 ; preds = %.lr.ph893.i.preheader
  %i.amp = load i16, ptr %.11257.lcssa.i, align 2, !tbaa !301
  %i.amq = insertelement <8 x i16> poison, i16 %i.amp, i64 0
  %i.amr = load <8 x i8>, ptr %.21238.lcssa.i, align 1, !tbaa !17
  %i.ams = bitcast <8 x i16> %i.amq to <16 x i8>
  %i.amt = shufflevector <16 x i8> %i.ams, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.amu = sext <8 x i8> %i.amt to <8 x i16>      ; 2 uses
  %i.amv = sext <8 x i8> %i.amr to <8 x i16>      ; 2 uses
  %i.amw = shufflevector <8 x i16> %i.amu, <8 x i16> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.amx = mul nsw <8 x i16> %i.amu, %i.amv
  %i.amy = sext <8 x i16> %i.amx to <8 x i32>
  %i.amz = mul nsw <8 x i16> %i.amw, %i.amv
  %i.ana = sext <8 x i16> %i.amz to <8 x i32>
  %i.anb = add <8 x i32> %.lcssa476.i, %i.amy     ; 2 uses
  %i.anc = add <8 x i32> %.lcssa475.i, %i.ana     ; 2 uses
  %i.and = getelementptr inbounds nuw i8, ptr %.11257.lcssa.i, i64 2
  %i.ane = getelementptr inbounds nuw i8, ptr %.21238.lcssa.i, i64 8 ; 2 uses
  %i.anf = add nuw nsw i32 %.11266.lcssa.i, 1
  br label %.lr.ph893.i.prol.loopexit

.lr.ph893.i.prol.loopexit:                        ; preds = %.lr.ph893.i.prol, %.lr.ph893.i.preheader
  %.lcssa1727.unr = phi <8 x i32> [ poison, %.lr.ph893.i.preheader ], [ %i.anb, %.lr.ph893.i.prol ]
  %.lcssa1726.unr = phi <8 x i32> [ poison, %.lr.ph893.i.preheader ], [ %i.anc, %.lr.ph893.i.prol ]
  %.lcssa1725.unr = phi ptr [ poison, %.lr.ph893.i.preheader ], [ %i.ane, %.lr.ph893.i.prol ]
  %.31239892.i.unr = phi ptr [ %.21238.lcssa.i, %.lr.ph893.i.preheader ], [ %i.ane, %.lr.ph893.i.prol ]
  %.21258891.i.unr = phi ptr [ %.11257.lcssa.i, %.lr.ph893.i.preheader ], [ %i.and, %.lr.ph893.i.prol ]
  %.21267890.i.unr = phi i32 [ %.11266.lcssa.i, %.lr.ph893.i.preheader ], [ %i.anf, %.lr.ph893.i.prol ]
  %.unr2004 = phi <8 x i32> [ %.lcssa475.i, %.lr.ph893.i.preheader ], [ %i.anc, %.lr.ph893.i.prol ]
  %.unr2005 = phi <8 x i32> [ %.lcssa476.i, %.lr.ph893.i.preheader ], [ %i.anb, %.lr.ph893.i.prol ]
  %i.ang = icmp eq i32 %8, %.neg2045
  br i1 %i.ang, label %._crit_edge894.i, label %.lr.ph893.i

.lr.ph884.i:                                      ; preds = %.preheader437.i, %.lr.ph884.i
  %.21238883.i = phi ptr [ %i.anu, %.lr.ph884.i ], [ %.11237.lcssa.i, %.preheader437.i ] ; 2 uses
  %.11257882.i = phi ptr [ %i.ant, %.lr.ph884.i ], [ %.01256.lcssa.i, %.preheader437.i ] ; 2 uses
end_hunk_6
