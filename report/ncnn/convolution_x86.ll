inline.NumInlined: 399
inline.NumDeleted: 92
loop-unroll.NumCompletelyUnrolled: 114
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 220
begin_hunk_0_@_ZN4ncnnL20conv3x3s1_winograd23ERKNS_3MatERS0_S2_S2_iRKNS_6OptionE.omp_outlined.3:bb.a
  %i.od = sext i32 %i.oc to i64
  %i.oe = getelementptr inbounds [4 x i8], ptr %i.ob, i64 %i.od ; 7 uses
  %i.of = or disjoint i32 %i.oc, 1
  %i.og = icmp slt i32 %i.of, %i.bt
  %.fr.us.i = freeze i1 %i.og
  %.not330.us.us.i = icmp slt i32 %i.nz, %i.bu    ; 2 uses
  br i1 %.fr.us.i, label %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit.split.us114.preheader.i

_ZN4ncnn3MatD2Ev.exit.split.us114.preheader.i:    ; preds = %_ZN4ncnn3MatD2Ev.exit.us.i
  br i1 %.not330.us.us.i, label %bb.ad, label %_ZN4ncnn3MatD2Ev.exit.split.us114.1.i

_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i:    ; preds = %_ZN4ncnn3MatD2Ev.exit.us.i
  br i1 %.not330.us.us.i, label %bb.af, label %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i

bb.ad:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us114.preheader.i
  %i.oh = fadd fast float %i.mx, %i.ly
  %i.oi = fadd fast float %i.oh, %i.ml
  %i.oj = fadd fast float %i.oi, %i.nj
  store float %i.oj, ptr %i.oe, align 4, !tbaa !39
  %i.ok = getelementptr inbounds [4 x i8], ptr %i.oe, i64 %i.lp
  br label %_ZN4ncnn3MatD2Ev.exit.split.us114.1.i

_ZN4ncnn3MatD2Ev.exit.split.us114.1.i:            ; preds = %bb.ad, %_ZN4ncnn3MatD2Ev.exit.split.us114.preheader.i
  %.1304.us112.i = phi ptr [ %i.oe, %_ZN4ncnn3MatD2Ev.exit.split.us114.preheader.i ], [ %i.ok, %bb.ad ]
  %i.ol = or disjoint i32 %i.nz, 1
  %.not330.us111.1.i = icmp slt i32 %i.ol, %i.bu
  br i1 %.not330.us111.1.i, label %bb.ae, label %.split.us113.i

bb.ae:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us114.1.i
  %i.om = fadd fast float %i.na, %i.ly
  %i.on = fadd fast float %i.om, %i.mo
  %i.oo = fadd fast float %i.on, %i.nm
  store float %i.oo, ptr %.1304.us112.i, align 4, !tbaa !39
  br label %.split.us113.i

.split.us113.i:                                   ; preds = %bb.ag, %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i, %bb.ae, %_ZN4ncnn3MatD2Ev.exit.split.us114.1.i
  %indvars.iv.next165.i = add nuw nsw i64 %indvars.iv164.i, 1 ; 2 uses
  %exitcond168.not.i = icmp eq i64 %indvars.iv.next165.i, %wide.trip.count167.i
  br i1 %exitcond168.not.i, label %._crit_edge.us116.i, label %_ZN4ncnn3MatD2Ev.exit.us.i, !llvm.loop !772

bb.af:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i
  %i.op = fadd fast float %i.mx, %i.ly            ; 2 uses
  %i.oq = fadd fast float %i.op, %i.ml
  %i.or = fadd fast float %i.oq, %i.nj
  store float %i.or, ptr %i.oe, align 4, !tbaa !39
  %i.os = fsub fast float %i.op, %i.nj
  %i.ot = fadd fast float %i.os, %i.nr
  %i.ou = fadd fast float %i.ot, %i.ns
  %i.ov = fadd fast float %i.ou, %i.nt
  %i.ow = getelementptr inbounds nuw i8, ptr %i.oe, i64 4
  store float %i.ov, ptr %i.ow, align 4, !tbaa !39
  %i.ox = getelementptr inbounds [4 x i8], ptr %i.oe, i64 %i.lp
  br label %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i

_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i:            ; preds = %bb.af, %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i
  %.1304.us.us.i = phi ptr [ %i.oe, %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i ], [ %i.ox, %bb.af ] ; 2 uses
  %i.oy = or disjoint i32 %i.nz, 1
  %.not330.us.us.1.i = icmp slt i32 %i.oy, %i.bu
  br i1 %.not330.us.us.1.i, label %bb.ag, label %.split.us113.i

bb.ag:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i
  %i.oz = fadd fast float %i.na, %i.ly            ; 2 uses
  %i.pa = fadd fast float %i.oz, %i.mo
  %i.pb = fadd fast float %i.pa, %i.nm
  store float %i.pb, ptr %.1304.us.us.i, align 4, !tbaa !39
  %i.pc = fadd fast float %i.oz, %i.ns
  %i.pd = fadd fast float %i.nm, %i.nt
  %i.pe = fsub fast float %i.pc, %i.pd
  %i.pf = fadd fast float %i.pe, %i.nu
  %i.pg = getelementptr inbounds nuw i8, ptr %.1304.us.us.i, i64 4
  store float %i.pf, ptr %i.pg, align 4, !tbaa !39
  br label %.split.us113.i

._crit_edge.us116.i:                              ; preds = %.split.us113.i
  %indvars.iv.next170.i = add nsw i64 %indvars.iv169.i, 1 ; 2 uses
  %exitcond173.not.i = icmp eq i64 %indvars.iv.next170.i, %i.bl
  br i1 %exitcond173.not.i, label %_ZN4ncnnL42conv3x3s1_winograd23_transform_output_tileERKNS_3MatERS0_S2_iiii.exit, label %bb.ab, !llvm.loop !773

.noexc:                                           ; preds = %.noexc.preheader, %.noexc
  %i.ph = phi i32 [ %i.re, %.noexc ], [ %.pre153, %.noexc.preheader ] ; 2 uses
  %i.pi = phi i32 [ %i.rg, %.noexc ], [ %i.br, %.noexc.preheader ]
  %.044146 = phi i32 [ %i.rf, %.noexc ], [ 0, %.noexc.preheader ] ; 4 uses
  %i.pj = sub nsw i32 %i.pi, %.044146
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ph, i32 %i.pj)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  %i.pk = load i32, ptr %3, align 4, !tbaa !67
  %i.pl = sdiv i32 %i.at, %i.pk
  %i.pm = load ptr, ptr %10, align 8, !tbaa !18, !noalias !774
  %i.pn = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !774
  %i.po = sext i32 %i.pl to i64
  %i.pp = mul i64 %i.pn, %i.po
  %i.pq = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !774 ; 3 uses
  %i.pr = mul i64 %i.pp, %i.pq
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pm, i64 %i.pr
  %i.pt = load i32, ptr %i.r, align 8, !tbaa !66, !noalias !774
  %i.pu = load ptr, ptr %i.s, align 8, !tbaa !17, !noalias !774
  %i.pv = sdiv i32 %.044146, %i.ph
  %i.pw = sext i32 %i.pv to i64                   ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !11, !alias.scope !777
  store i64 %i.pq, ptr %i.u, align 8, !tbaa !65, !alias.scope !777
  store i32 %i.pt, ptr %i.v, align 8, !tbaa !66, !alias.scope !777
  store ptr %i.pu, ptr %i.w, align 8, !tbaa !17, !alias.scope !777
  store i32 2, ptr %i.x, align 8, !tbaa !227, !alias.scope !777
  %i.px = load <2 x i32>, ptr %i.n, align 4, !tbaa !67, !noalias !774
  %i.py = load i32, ptr %i.o, align 8, !tbaa !76, !noalias !774
  %i.pz = load i32, ptr %i.n, align 4, !tbaa !75, !noalias !774
  %i.qa = sext i32 %i.pz to i64
  %i.qb = sext i32 %i.py to i64
  %i.qc = mul nsw i64 %i.qb, %i.qa                ; 2 uses
  %i.qd = mul i64 %i.pq, %i.qc
  %i.qe = mul i64 %i.qd, %i.pw
  %i.qf = getelementptr inbounds nuw i8, ptr %i.ps, i64 %i.qe
  store ptr %i.qf, ptr %14, align 8, !tbaa !18, !alias.scope !777
  %i.qg = shufflevector <2 x i32> %i.px, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qh = shufflevector <4 x i32> %i.qg, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.qh, ptr %i.y, align 4, !tbaa !67, !alias.scope !777
  store i64 %i.qc, ptr %i.z, align 8, !tbaa !20, !alias.scope !777
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #12
  %i.qi = load i32, ptr %7, align 4, !tbaa !67
  %i.qj = sdiv i32 %.045147, %i.qi
  %i.qk = load ptr, ptr %11, align 8, !tbaa !18, !noalias !780
  %i.ql = load i64, ptr %i.ac, align 8, !tbaa !20, !noalias !780
  %i.qm = sext i32 %i.qj to i64
  %i.qn = mul i64 %i.ql, %i.qm
  %i.qo = load i64, ptr %i.ad, align 8, !tbaa !65, !noalias !780 ; 3 uses
  %i.qp = mul i64 %i.qn, %i.qo
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qk, i64 %i.qp
  %i.qr = load i32, ptr %i.ae, align 8, !tbaa !66, !noalias !780
  %i.qs = load ptr, ptr %i.af, align 8, !tbaa !17, !noalias !780
  store ptr null, ptr %i.ag, align 8, !tbaa !11
  store i64 %i.qo, ptr %i.ah, align 8, !tbaa !65
  store i32 %i.qr, ptr %i.ai, align 8, !tbaa !66
  store ptr %i.qs, ptr %i.aj, align 8, !tbaa !17
  store i32 2, ptr %i.ak, align 8, !tbaa !227
  %i.qt = load <2 x i32>, ptr %i.aa, align 4, !tbaa !67, !noalias !780
  %i.qu = load i32, ptr %i.ab, align 8, !tbaa !76, !noalias !780
  %i.qv = load i32, ptr %i.aa, align 4, !tbaa !75, !noalias !780
  %i.qw = sext i32 %i.qv to i64
  %i.qx = sext i32 %i.qu to i64
  %i.qy = mul nsw i64 %i.qx, %i.qw                ; 2 uses
  %i.qz = mul i64 %i.qo, %i.qy
  %i.ra = mul i64 %i.qz, %i.pw
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qq, i64 %i.ra
  store ptr %i.rb, ptr %15, align 8, !tbaa !18
  %i.rc = shufflevector <2 x i32> %i.qt, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.rd = shufflevector <4 x i32> %i.rc, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.rd, ptr %i.al, align 4, !tbaa !67
  store i64 %i.qy, ptr %i.am, align 8, !tbaa !20, !alias.scope !783
  call fastcc void @_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_RS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %14, ptr noundef nonnull align 8 dereferenceable(72) %15, ptr %i.bb, i32 noundef 16, i32 noundef %.sroa.speculated121, i32 noundef %.sroa.speculated117, i32 noundef %.044146, i32 noundef %.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  %i.re = load i32, ptr %9, align 4, !tbaa !67    ; 2 uses
  %i.rf = add nsw i32 %i.re, %.044146             ; 2 uses
  %i.rg = load i32, ptr %8, align 4, !tbaa !67    ; 2 uses
  %i.rh = icmp slt i32 %i.rf, %i.rg
  br i1 %i.rh, label %.noexc, label %._crit_edge, !llvm.loop !786

_ZN4ncnnL42conv3x3s1_winograd23_transform_output_tileERKNS_3MatERS0_S2_iiii.exit: ; preds = %._crit_edge.us116.i, %.lr.ph107.i, %.preheader.i
  %i.ri = load i32, ptr %7, align 4, !tbaa !67    ; 2 uses
  %i.rj = add nsw i32 %i.ri, %.045147             ; 2 uses
  %i.rk = load i32, ptr %6, align 4, !tbaa !67    ; 2 uses
  %i.rl = icmp slt i32 %i.rj, %i.rk
  br i1 %i.rl, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !787

._crit_edge152:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge152, %bb.a
  ret void

bb.ai:                                            ; preds = %bb.c
  %i.rm = landingpad { ptr, i32 }
          catch ptr null
  %i.rn = extractvalue { ptr, i32 } %i.rm, 0
  call void @__clang_call_terminate(ptr %i.rn) #27
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_RS0_iiiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr nofree %.0.val, i32 noundef range(i32 16, 65) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #17 {
bb.a:
  %i.a = icmp sgt i32 %3, 3
  br i1 %i.a, label %.preheader286.lr.ph, label %.preheader281

.preheader286.lr.ph:                              ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = icmp sgt i32 %4, 11
  %i.g = icmp eq i32 %5, 0                        ; 6 uses
  %i.h = icmp sgt i32 %6, 0                       ; 5 uses
  %i.i = add i32 %4, -12                          ; 2 uses
  %i.j = urem i32 %i.i, 12
  %i.k = sub nuw i32 %i.i, %i.j
  %i.l = add nuw nsw i32 %i.k, 12
  %i.m = add i32 %6, -1                           ; 2 uses
  %i.n = zext i32 %i.m to i64                     ; 4 uses
  %i.o = shl nuw nsw i64 %i.n, 5
  %i.p = shl nuw nsw i64 %i.n, 4
  %i.q = shl nuw nsw i64 %i.n, 3
  %i.r = add i32 %4, -1                           ; 2 uses
  %i.s = shl nuw nsw i64 %i.n, 2
  %i.t = zext nneg i32 %3 to i64
  %i.u = sext i32 %6 to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  %xtraiter = and i32 %6, 1
  %i.v = icmp eq i32 %6, 1
  %unroll_iter = and i32 %6, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod1176 = trunc i32 %6 to i1
  %xtraiter1177 = and i32 %6, 3                   ; 3 uses
  %i.w = icmp ult i32 %i.m, 3
  %unroll_iter1181 = and i32 %6, 2147483644
  %lcmp.mod1178.not = icmp eq i32 %xtraiter1177, 0
  %lcmp.mod1180 = icmp ne i32 %xtraiter1177, 0
  br label %.preheader286

.preheader286:                                    ; preds = %.preheader286.lr.ph, %bb.b
  %indvars.iv756 = phi i64 [ 0, %.preheader286.lr.ph ], [ %indvars.iv.next757, %bb.b ] ; 2 uses
  %.0455415 = phi ptr [ %.0.val, %.preheader286.lr.ph ], [ %.6461.lcssa, %bb.b ]
  %i.x = mul nsw i64 %indvars.iv756, %i.u
  br label %bb.c

.preheader281.loopexit:                           ; preds = %bb.b
  %i.y = trunc nuw nsw i64 %indvars.iv.next757 to i32
  br label %.preheader281

.preheader281:                                    ; preds = %.preheader281.loopexit, %bb.a
  %.0482.lcssa = phi i32 [ 0, %bb.a ], [ %i.y, %.preheader281.loopexit ] ; 3 uses
  %.0455.lcssa = phi ptr [ %.0.val, %bb.a ], [ %.6461.lcssa, %.preheader281.loopexit ] ; 2 uses
  %i.z = or disjoint i32 %.0482.lcssa, 1
  %i.aa = icmp slt i32 %i.z, %3
  br i1 %i.aa, label %.preheader280.lr.ph, label %.preheader275

.preheader280.lr.ph:                              ; preds = %.preheader281
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = icmp sgt i32 %4, 11
  %i.ag = icmp eq i32 %5, 0                       ; 5 uses
  %i.ah = icmp sgt i32 %6, 0                      ; 5 uses
  %i.ai = add i32 %4, -12                         ; 2 uses
  %i.aj = urem i32 %i.ai, 12
  %i.ak = sub nuw i32 %i.ai, %i.aj
  %i.al = add nuw nsw i32 %i.ak, 12
  %i.am = add i32 %6, -1
  %i.an = zext i32 %i.am to i64                   ; 4 uses
  %i.ao = shl nuw nsw i64 %i.an, 5
  %i.ap = shl nuw nsw i64 %i.an, 4
  %i.aq = shl nuw nsw i64 %i.an, 3
  %i.ar = shl nuw nsw i64 %i.an, 2
  %i.as = zext nneg i32 %.0482.lcssa to i64
  %i.at = sext i32 %3 to i64
  %i.au = sext i32 %6 to i64
  %wide.trip.count772 = zext nneg i32 %2 to i64
  %invariant.op = add nsw i64 %i.at, -1
  %xtraiter1183 = and i32 %6, 1
  %i.av = icmp eq i32 %6, 1
  %unroll_iter1189 = and i32 %6, 2147483646
  %lcmp.mod1185.not = icmp eq i32 %xtraiter1183, 0
  %lcmp.mod1188 = trunc i32 %6 to i1
  %i.aw = zext nneg i32 %6 to i64                 ; 2 uses
  %min.iters.check999 = icmp ult i32 %6, 4
  %n.vec1001 = and i64 %i.aw, 2147483644          ; 4 uses
  %i.ax = trunc nuw nsw i64 %n.vec1001 to i32
  %i.ay = shl nuw nsw i64 %n.vec1001, 3           ; 2 uses
  %cmp.n1018 = icmp eq i64 %n.vec1001, %i.aw
  %i.az = zext nneg i32 %6 to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %6, 8
  %n.vec = and i64 %i.az, 2147483640              ; 5 uses
  %i.ba = trunc nuw nsw i64 %n.vec to i32
  %i.bb = shl nuw nsw i64 %n.vec, 3
  %i.bc = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %i.az
  br label %.preheader280

bb.b:                                             ; preds = %._crit_edge405
  %indvars.iv.next757 = add nuw nsw i64 %indvars.iv756, 4 ; 3 uses
  %i.bd = or disjoint i64 %indvars.iv.next757, 3
  %i.be = icmp samesign ult i64 %i.bd, %i.t
  br i1 %i.be, label %.preheader286, label %.preheader281.loopexit, !llvm.loop !788

bb.c:                                             ; preds = %.preheader286, %._crit_edge405
  %indvars.iv = phi i64 [ 0, %.preheader286 ], [ %indvars.iv.next, %._crit_edge405 ] ; 3 uses
  %.1456413 = phi ptr [ %.0455415, %.preheader286 ], [ %.6461.lcssa, %._crit_edge405 ] ; 2 uses
  %i.bf = load ptr, ptr %0, align 8, !tbaa !18
  %i.bg = load i32, ptr %i.b, align 4, !tbaa !75
  %i.bh = sext i32 %i.bg to i64
  %i.bi = mul nsw i64 %indvars.iv, %i.bh
  %i.bj = load i64, ptr %i.c, align 8, !tbaa !65
  %i.bk = mul i64 %i.bi, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bk
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.x ; 7 uses
  %i.bn = load ptr, ptr %1, align 8, !tbaa !18
  %i.bo = load i32, ptr %i.d, align 4, !tbaa !75
  %i.bp = sext i32 %i.bo to i64
  %i.bq = mul nsw i64 %indvars.iv, %i.bp
  %i.br = load i64, ptr %i.e, align 8, !tbaa !65
  %i.bs = mul i64 %i.bq, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bs ; 2 uses
  br i1 %i.f, label %.lr.ph318, label %.preheader285

.preheader285:                                    ; preds = %._crit_edge, %bb.c
  %.0497.lcssa = phi i32 [ 0, %bb.c ], [ %i.l, %._crit_edge ] ; 3 uses
  %.0487.lcssa = phi ptr [ %i.bt, %bb.c ], [ %.1488.lcssa, %._crit_edge ] ; 2 uses
  %.2457.lcssa = phi ptr [ %.1456413, %bb.c ], [ %i.gb, %._crit_edge ] ; 2 uses
  %i.bu = add nuw nsw i32 %.0497.lcssa, 7
  %i.bv = icmp slt i32 %i.bu, %4
  br i1 %i.bv, label %.lr.ph348, label %.preheader284

.lr.ph318:                                        ; preds = %bb.c, %._crit_edge
  %.2457316 = phi ptr [ %i.gb, %._crit_edge ], [ %.1456413, %bb.c ] ; 25 uses
  %.0487315 = phi ptr [ %.1488.lcssa, %._crit_edge ], [ %i.bt, %bb.c ] ; 2 uses
  %.0497314 = phi i32 [ %i.gc, %._crit_edge ], [ 0, %bb.c ] ; 2 uses
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph318
  %i.bw = load <4 x float>, ptr %.2457316, align 16, !tbaa !254
  %i.bx = getelementptr inbounds nuw i8, ptr %.2457316, i64 16
  %i.by = load <4 x float>, ptr %i.bx, align 16, !tbaa !254
  %i.bz = getelementptr inbounds nuw i8, ptr %.2457316, i64 32
  %i.ca = load <4 x float>, ptr %i.bz, align 16, !tbaa !254
  %i.cb = getelementptr inbounds nuw i8, ptr %.2457316, i64 48
  %i.cc = load <4 x float>, ptr %i.cb, align 16, !tbaa !254
  %i.cd = getelementptr inbounds nuw i8, ptr %.2457316, i64 64
  %i.ce = load <4 x float>, ptr %i.cd, align 16, !tbaa !254
  %i.cf = getelementptr inbounds nuw i8, ptr %.2457316, i64 80
  %i.cg = load <4 x float>, ptr %i.cf, align 16, !tbaa !254
  %i.ch = getelementptr inbounds nuw i8, ptr %.2457316, i64 96
  %i.ci = load <4 x float>, ptr %i.ch, align 16, !tbaa !254
  %i.cj = getelementptr inbounds nuw i8, ptr %.2457316, i64 112
  %i.ck = load <4 x float>, ptr %i.cj, align 16, !tbaa !254
  %i.cl = getelementptr inbounds nuw i8, ptr %.2457316, i64 128
  %i.cm = load <4 x float>, ptr %i.cl, align 16, !tbaa !254
  %i.cn = getelementptr inbounds nuw i8, ptr %.2457316, i64 144
  %i.co = load <4 x float>, ptr %i.cn, align 16, !tbaa !254
  %i.cp = getelementptr inbounds nuw i8, ptr %.2457316, i64 160
  %i.cq = load <4 x float>, ptr %i.cp, align 16, !tbaa !254
  %i.cr = getelementptr inbounds nuw i8, ptr %.2457316, i64 176
  %i.cs = load <4 x float>, ptr %i.cr, align 16, !tbaa !254
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph318, %bb.d
  %.0221 = phi nsz <4 x float> [ %i.cq, %bb.d ], [ zeroinitializer, %.lr.ph318 ] ; 2 uses
  %.0219 = phi nsz <4 x float> [ %i.co, %bb.d ], [ zeroinitializer, %.lr.ph318 ] ; 2 uses
  %.0212 = phi nsz <4 x float> [ %i.cm, %bb.d ], [ zeroinitializer, %.lr.ph318 ] ; 2 uses
  %.0210 = phi nsz <4 x float> [ %i.ck, %bb.d ], [ zeroinitializer, %.lr.ph318 ] ; 2 uses
  %.0208 = phi nsz <4 x float> [ %i.ci, %bb.d ], [ zeroinitializer, %.lr.ph318 ] ; 2 uses
  %.0206 = phi nsz <4 x float> [ %i.cg, %bb.d ], [ zeroinitializer, %.lr.ph318 ] ; 2 uses
  %.0201 = phi nsz <4 x float> [ %i.ce, %bb.d ], [ zeroinitializer, %.lr.ph318 ] ; 2 uses
  %.0199 = phi nsz <4 x float> [ %i.cc, %bb.d ], [ zeroinitializer, %.lr.ph318 ] ; 2 uses
  %.0197 = phi nsz <4 x float> [ %i.ca, %bb.d ], [ zeroinitializer, %.lr.ph318 ] ; 2 uses
  %.0194 = phi nsz <4 x float> [ %i.by, %bb.d ], [ zeroinitializer, %.lr.ph318 ] ; 2 uses
  %.0192 = phi nsz <4 x float> [ %i.bw, %bb.d ], [ zeroinitializer, %.lr.ph318 ] ; 2 uses
  %storemerge542 = phi <4 x float> [ %i.cs, %bb.d ], [ zeroinitializer, %.lr.ph318 ] ; 2 uses
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.1488301 = phi ptr [ %i.fo, %.lr.ph ], [ %.0487315, %bb.e ] ; 13 uses
  %.0503300 = phi ptr [ %i.fn, %.lr.ph ], [ %i.bm, %bb.e ] ; 2 uses
  %.0504299 = phi i32 [ %i.fp, %.lr.ph ], [ 0, %bb.e ]
  %.1193298 = phi <4 x float> [ %i.cy, %.lr.ph ], [ %.0192, %bb.e ]
  %.1195297 = phi <4 x float> [ %i.de, %.lr.ph ], [ %.0194, %bb.e ]
  %.1198296 = phi <4 x float> [ %i.dk, %.lr.ph ], [ %.0197, %bb.e ]
  %.1200295 = phi <4 x float> [ %i.dq, %.lr.ph ], [ %.0199, %bb.e ]
  %.1202294 = phi <4 x float> [ %i.dw, %.lr.ph ], [ %.0201, %bb.e ]
  %.1207293 = phi <4 x float> [ %i.ec, %.lr.ph ], [ %.0206, %bb.e ]
  %.1209292 = phi <4 x float> [ %i.ei, %.lr.ph ], [ %.0208, %bb.e ]
  %.1211291 = phi <4 x float> [ %i.eo, %.lr.ph ], [ %.0210, %bb.e ]
  %.1213290 = phi <4 x float> [ %i.eu, %.lr.ph ], [ %.0212, %bb.e ]
  %.1220289 = phi <4 x float> [ %i.fa, %.lr.ph ], [ %.0219, %bb.e ]
  %.1222288 = phi <4 x float> [ %i.fg, %.lr.ph ], [ %.0221, %bb.e ]
  %.0223287 = phi <4 x float> [ %i.fm, %.lr.ph ], [ %storemerge542, %bb.e ]
  %i.ct = load <4 x float>, ptr %.0503300, align 16, !tbaa !254 ; 12 uses
  %i.cu = load float, ptr %.1488301, align 4, !tbaa !39
  %i.cv = insertelement <4 x float> poison, float %i.cu, i64 0
  %i.cw = shufflevector <4 x float> %i.cv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cx = fmul fast <4 x float> %i.cw, %i.ct
  %i.cy = fadd fast <4 x float> %i.cx, %.1193298  ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.1488301, i64 4
  %i.da = load float, ptr %i.cz, align 4, !tbaa !39
  %i.db = insertelement <4 x float> poison, float %i.da, i64 0
  %i.dc = shufflevector <4 x float> %i.db, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dd = fmul fast <4 x float> %i.dc, %i.ct
  %i.de = fadd fast <4 x float> %i.dd, %.1195297  ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.1488301, i64 8
  %i.dg = load float, ptr %i.df, align 4, !tbaa !39
  %i.dh = insertelement <4 x float> poison, float %i.dg, i64 0
  %i.di = shufflevector <4 x float> %i.dh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dj = fmul fast <4 x float> %i.di, %i.ct
  %i.dk = fadd fast <4 x float> %i.dj, %.1198296  ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.1488301, i64 12
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !39
  %i.dn = insertelement <4 x float> poison, float %i.dm, i64 0
  %i.do = shufflevector <4 x float> %i.dn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dp = fmul fast <4 x float> %i.do, %i.ct
  %i.dq = fadd fast <4 x float> %i.dp, %.1200295  ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.1488301, i64 16
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !39
  %i.dt = insertelement <4 x float> poison, float %i.ds, i64 0
  %i.du = shufflevector <4 x float> %i.dt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dv = fmul fast <4 x float> %i.du, %i.ct
  %i.dw = fadd fast <4 x float> %i.dv, %.1202294  ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.1488301, i64 20
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !39
  %i.dz = insertelement <4 x float> poison, float %i.dy, i64 0
  %i.ea = shufflevector <4 x float> %i.dz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eb = fmul fast <4 x float> %i.ea, %i.ct
  %i.ec = fadd fast <4 x float> %i.eb, %.1207293  ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.1488301, i64 24
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !39
  %i.ef = insertelement <4 x float> poison, float %i.ee, i64 0
  %i.eg = shufflevector <4 x float> %i.ef, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eh = fmul fast <4 x float> %i.eg, %i.ct
  %i.ei = fadd fast <4 x float> %i.eh, %.1209292  ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.1488301, i64 28
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !39
  %i.el = insertelement <4 x float> poison, float %i.ek, i64 0
  %i.em = shufflevector <4 x float> %i.el, <4 x float> poison, <4 x i32> zeroinitializer
  %i.en = fmul fast <4 x float> %i.em, %i.ct
  %i.eo = fadd fast <4 x float> %i.en, %.1211291  ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.1488301, i64 32
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !39
  %i.er = insertelement <4 x float> poison, float %i.eq, i64 0
  %i.es = shufflevector <4 x float> %i.er, <4 x float> poison, <4 x i32> zeroinitializer
  %i.et = fmul fast <4 x float> %i.es, %i.ct
  %i.eu = fadd fast <4 x float> %i.et, %.1213290  ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.1488301, i64 36
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !39
  %i.ex = insertelement <4 x float> poison, float %i.ew, i64 0
  %i.ey = shufflevector <4 x float> %i.ex, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ez = fmul fast <4 x float> %i.ey, %i.ct
  %i.fa = fadd fast <4 x float> %i.ez, %.1220289  ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.1488301, i64 40
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !39
  %i.fd = insertelement <4 x float> poison, float %i.fc, i64 0
  %i.fe = shufflevector <4 x float> %i.fd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ff = fmul fast <4 x float> %i.fe, %i.ct
  %i.fg = fadd fast <4 x float> %i.ff, %.1222288  ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.1488301, i64 44
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !39
  %i.fj = insertelement <4 x float> poison, float %i.fi, i64 0
  %i.fk = shufflevector <4 x float> %i.fj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fl = fmul fast <4 x float> %i.fk, %i.ct
  %i.fm = fadd fast <4 x float> %i.fl, %.0223287  ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_RS0_iiiii:bb.a
  %i.md = fmul fast <4 x float> %i.mc, %i.lz
  %i.me = fadd fast <4 x float> %i.md, %i.lw      ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.0513394.us, i64 64 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.9496395.us, i64 16 ; 2 uses
  %niter1182.next.3 = add nuw nsw i32 %niter1182, 4 ; 2 uses
  %niter1182.ncmp.3 = icmp eq i32 %niter1182.next.3, %unroll_iter1181
  br i1 %niter1182.ncmp.3, label %._crit_edge398.us.unr-lcssa, label %.lr.ph397.us, !llvm.loop !795

._crit_edge398.us.unr-lcssa:                      ; preds = %.lr.ph397.us
  br i1 %lcmp.mod1178.not, label %._crit_edge398.us, label %.lr.ph397.us.epil.preheader

.lr.ph397.us.epil.preheader:                      ; preds = %._crit_edge398.us.unr-lcssa, %.lr.ph397.us.preheader
  %.9496395.us.epil.init = phi ptr [ %.8495402.us, %.lr.ph397.us.preheader ], [ %i.mg, %._crit_edge398.us.unr-lcssa ]
  %.0513394.us.epil.init = phi ptr [ %i.bm, %.lr.ph397.us.preheader ], [ %i.mf, %._crit_edge398.us.unr-lcssa ]
  %.0266392.us.epil.init = phi <4 x float> [ %.0266392.us.ph, %.lr.ph397.us.preheader ], [ %i.me, %._crit_edge398.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1180)
  br label %.lr.ph397.us.epil

.lr.ph397.us.epil:                                ; preds = %.lr.ph397.us.epil, %.lr.ph397.us.epil.preheader
  %.9496395.us.epil = phi ptr [ %i.mo, %.lr.ph397.us.epil ], [ %.9496395.us.epil.init, %.lr.ph397.us.epil.preheader ] ; 2 uses
  %.0513394.us.epil = phi ptr [ %i.mn, %.lr.ph397.us.epil ], [ %.0513394.us.epil.init, %.lr.ph397.us.epil.preheader ] ; 2 uses
  %.0266392.us.epil = phi <4 x float> [ %i.mm, %.lr.ph397.us.epil ], [ %.0266392.us.epil.init, %.lr.ph397.us.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph397.us.epil ], [ 0, %.lr.ph397.us.epil.preheader ]
  %i.mh = load <4 x float>, ptr %.0513394.us.epil, align 16, !tbaa !254
  %i.mi = load float, ptr %.9496395.us.epil, align 4, !tbaa !39
  %i.mj = insertelement <4 x float> poison, float %i.mi, i64 0
  %i.mk = shufflevector <4 x float> %i.mj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ml = fmul fast <4 x float> %i.mk, %i.mh
  %i.mm = fadd fast <4 x float> %i.ml, %.0266392.us.epil ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %.0513394.us.epil, i64 16
  %i.mo = getelementptr inbounds nuw i8, ptr %.9496395.us.epil, i64 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter1177
  br i1 %epil.iter.cmp.not, label %._crit_edge398.us, label %.lr.ph397.us.epil, !llvm.loop !796

._crit_edge398.us:                                ; preds = %.lr.ph397.us.epil, %._crit_edge398.us.unr-lcssa
  %.lcssa1172 = phi <4 x float> [ %i.me, %._crit_edge398.us.unr-lcssa ], [ %i.mm, %.lr.ph397.us.epil ]
  %i.mp = getelementptr i8, ptr %.8495402.us, i64 %i.s
  %scevgep751 = getelementptr i8, ptr %i.mp, i64 4
  store <4 x float> %.lcssa1172, ptr %.6461403.us, align 16, !tbaa !254
  %i.mq = getelementptr inbounds nuw i8, ptr %.6461403.us, i64 16 ; 2 uses
  %i.mr = add nuw nsw i32 %.4501401.us, 1         ; 2 uses
  %exitcond753.not = icmp eq i32 %i.mr, %4
  br i1 %exitcond753.not, label %._crit_edge405, label %.lr.ph404.split.us, !llvm.loop !797

.lr.ph404.split:                                  ; preds = %.lr.ph404
  br i1 %i.g, label %.lr.ph404.split.split.us.preheader, label %.lr.ph404.split.split.preheader

.lr.ph404.split.split.preheader:                  ; preds = %.lr.ph404.split
  %scevgep747 = getelementptr i8, ptr %.5460.lcssa, i64 16
  %i.ms = sub i32 %i.r, %.3500.lcssa
  %i.mt = zext i32 %i.ms to i64
  %i.mu = shl nuw nsw i64 %i.mt, 4
  %scevgep748 = getelementptr i8, ptr %scevgep747, i64 %i.mu
  br label %._crit_edge405

.lr.ph404.split.split.us.preheader:               ; preds = %.lr.ph404.split
  %i.mv = sub i32 %i.r, %.3500.lcssa
  %i.mw = zext i32 %i.mv to i64
  %i.mx = shl nuw nsw i64 %i.mw, 4                ; 2 uses
  %i.my = add nuw nsw i64 %i.mx, 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %.5460.lcssa, i8 0, i64 %i.my, i1 false), !tbaa !254
  %scevgep749 = getelementptr i8, ptr %.5460.lcssa, i64 16
  %scevgep750 = getelementptr i8, ptr %scevgep749, i64 %i.mx
  br label %._crit_edge405

.lr.ph388:                                        ; preds = %.preheader283, %._crit_edge381
  %.5460387 = phi ptr [ %i.os, %._crit_edge381 ], [ %.4459.lcssa, %.preheader283 ] ; 5 uses
  %.6493386 = phi ptr [ %.7494.lcssa, %._crit_edge381 ], [ %.4491.lcssa, %.preheader283 ] ; 4 uses
  %.3500385 = phi i32 [ %i.ot, %._crit_edge381 ], [ %.2499.lcssa, %.preheader283 ]
  br i1 %i.g, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph388
  %i.mz = load <4 x float>, ptr %.5460387, align 16, !tbaa !254
  %i.na = getelementptr inbounds nuw i8, ptr %.5460387, i64 16
  %i.nb = load <4 x float>, ptr %i.na, align 16, !tbaa !254
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph388, %bb.k
  %.0268 = phi nsz <4 x float> [ %i.mz, %bb.k ], [ zeroinitializer, %.lr.ph388 ] ; 3 uses
  %storemerge539 = phi <4 x float> [ %i.nb, %bb.k ], [ zeroinitializer, %.lr.ph388 ] ; 3 uses
  br i1 %i.h, label %.lr.ph380.preheader, label %._crit_edge381

.lr.ph380.preheader:                              ; preds = %bb.l
  br i1 %i.v, label %.lr.ph380.epil.preheader, label %.lr.ph380

.lr.ph380:                                        ; preds = %.lr.ph380.preheader, %.lr.ph380
  %.7494378 = phi ptr [ %i.od, %.lr.ph380 ], [ %.6493386, %.lr.ph380.preheader ] ; 5 uses
  %.0510377 = phi ptr [ %i.oc, %.lr.ph380 ], [ %i.bm, %.lr.ph380.preheader ] ; 3 uses
  %.1269375 = phi <4 x float> [ %i.nv, %.lr.ph380 ], [ %.0268, %.lr.ph380.preheader ]
  %.0270374 = phi <4 x float> [ %i.ob, %.lr.ph380 ], [ %storemerge539, %.lr.ph380.preheader ]
  %niter = phi i32 [ %niter.next.1, %.lr.ph380 ], [ 0, %.lr.ph380.preheader ]
  %i.nc = load <4 x float>, ptr %.0510377, align 16, !tbaa !254 ; 2 uses
  %i.nd = load float, ptr %.7494378, align 4, !tbaa !39
  %i.ne = insertelement <4 x float> poison, float %i.nd, i64 0
  %i.nf = shufflevector <4 x float> %i.ne, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ng = fmul fast <4 x float> %i.nf, %i.nc
  %i.nh = fadd fast <4 x float> %i.ng, %.1269375
  %i.ni = getelementptr inbounds nuw i8, ptr %.7494378, i64 4
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !39
  %i.nk = insertelement <4 x float> poison, float %i.nj, i64 0
  %i.nl = shufflevector <4 x float> %i.nk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nm = fmul fast <4 x float> %i.nl, %i.nc
  %i.nn = fadd fast <4 x float> %i.nm, %.0270374
  %i.no = getelementptr inbounds nuw i8, ptr %.0510377, i64 16
  %i.np = getelementptr inbounds nuw i8, ptr %.7494378, i64 8
  %i.nq = load <4 x float>, ptr %i.no, align 16, !tbaa !254 ; 2 uses
  %i.nr = load float, ptr %i.np, align 4, !tbaa !39
  %i.ns = insertelement <4 x float> poison, float %i.nr, i64 0
  %i.nt = shufflevector <4 x float> %i.ns, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nu = fmul fast <4 x float> %i.nt, %i.nq
  %i.nv = fadd fast <4 x float> %i.nu, %i.nh      ; 3 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %.7494378, i64 12
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !39
  %i.ny = insertelement <4 x float> poison, float %i.nx, i64 0
  %i.nz = shufflevector <4 x float> %i.ny, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oa = fmul fast <4 x float> %i.nz, %i.nq
  %i.ob = fadd fast <4 x float> %i.oa, %i.nn      ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.0510377, i64 32 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %.7494378, i64 16 ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge381.loopexit.unr-lcssa, label %.lr.ph380, !llvm.loop !798

._crit_edge381.loopexit.unr-lcssa:                ; preds = %.lr.ph380
  br i1 %lcmp.mod.not, label %._crit_edge381.loopexit, label %.lr.ph380.epil.preheader

.lr.ph380.epil.preheader:                         ; preds = %._crit_edge381.loopexit.unr-lcssa, %.lr.ph380.preheader
  %.7494378.epil.init = phi ptr [ %.6493386, %.lr.ph380.preheader ], [ %i.od, %._crit_edge381.loopexit.unr-lcssa ] ; 2 uses
  %.0510377.epil.init = phi ptr [ %i.bm, %.lr.ph380.preheader ], [ %i.oc, %._crit_edge381.loopexit.unr-lcssa ]
  %.1269375.epil.init = phi <4 x float> [ %.0268, %.lr.ph380.preheader ], [ %i.nv, %._crit_edge381.loopexit.unr-lcssa ]
  %.0270374.epil.init = phi <4 x float> [ %storemerge539, %.lr.ph380.preheader ], [ %i.ob, %._crit_edge381.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1176)
  %i.oe = load <4 x float>, ptr %.0510377.epil.init, align 16, !tbaa !254 ; 2 uses
  %i.of = load float, ptr %.7494378.epil.init, align 4, !tbaa !39
  %i.og = insertelement <4 x float> poison, float %i.of, i64 0
  %i.oh = shufflevector <4 x float> %i.og, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oi = fmul fast <4 x float> %i.oh, %i.oe
  %i.oj = fadd fast <4 x float> %i.oi, %.1269375.epil.init
  %i.ok = getelementptr inbounds nuw i8, ptr %.7494378.epil.init, i64 4
  %i.ol = load float, ptr %i.ok, align 4, !tbaa !39
  %i.om = insertelement <4 x float> poison, float %i.ol, i64 0
  %i.on = shufflevector <4 x float> %i.om, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oo = fmul fast <4 x float> %i.on, %i.oe
  %i.op = fadd fast <4 x float> %i.oo, %.0270374.epil.init
  br label %._crit_edge381.loopexit

._crit_edge381.loopexit:                          ; preds = %._crit_edge381.loopexit.unr-lcssa, %.lr.ph380.epil.preheader
  %.lcssa1169 = phi <4 x float> [ %i.nv, %._crit_edge381.loopexit.unr-lcssa ], [ %i.oj, %.lr.ph380.epil.preheader ]
  %.lcssa1168 = phi <4 x float> [ %i.ob, %._crit_edge381.loopexit.unr-lcssa ], [ %i.op, %.lr.ph380.epil.preheader ]
  %i.oq = getelementptr i8, ptr %.6493386, i64 %i.q
  %scevgep745 = getelementptr i8, ptr %i.oq, i64 8
  br label %._crit_edge381

._crit_edge381:                                   ; preds = %._crit_edge381.loopexit, %bb.l
  %.0270.lcssa = phi <4 x float> [ %storemerge539, %bb.l ], [ %.lcssa1168, %._crit_edge381.loopexit ]
  %.1269.lcssa = phi <4 x float> [ %.0268, %bb.l ], [ %.lcssa1169, %._crit_edge381.loopexit ]
  %.7494.lcssa = phi ptr [ %.6493386, %bb.l ], [ %scevgep745, %._crit_edge381.loopexit ] ; 2 uses
  store <4 x float> %.1269.lcssa, ptr %.5460387, align 16, !tbaa !254
  %i.or = getelementptr inbounds nuw i8, ptr %.5460387, i64 16
  store <4 x float> %.0270.lcssa, ptr %i.or, align 16, !tbaa !254
  %i.os = getelementptr inbounds nuw i8, ptr %.5460387, i64 32 ; 2 uses
  %i.ot = add nuw nsw i32 %.3500385, 2            ; 3 uses
  %i.ou = or disjoint i32 %i.ot, 1
  %i.ov = icmp slt i32 %i.ou, %4
  br i1 %i.ov, label %.lr.ph388, label %.preheader282, !llvm.loop !799

._crit_edge405:                                   ; preds = %._crit_edge398.us, %.lr.ph404.split.split.preheader, %.lr.ph404.split.split.us.preheader, %.preheader282
  %.6461.lcssa = phi ptr [ %.5460.lcssa, %.preheader282 ], [ %scevgep750, %.lr.ph404.split.split.us.preheader ], [ %scevgep748, %.lr.ph404.split.split.preheader ], [ %i.mq, %._crit_edge398.us ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond755.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond755.not, label %bb.b, label %bb.c, !llvm.loop !800

.preheader280:                                    ; preds = %.preheader280.lr.ph, %bb.m
  %indvars.iv774 = phi i64 [ %i.as, %.preheader280.lr.ph ], [ %indvars.iv.next775, %bb.m ] ; 2 uses
  %.7462527 = phi ptr [ %.0455.lcssa, %.preheader280.lr.ph ], [ %.13.lcssa, %bb.m ]
  %i.ow = mul nsw i64 %indvars.iv774, %i.au
  br label %bb.n

.preheader275.loopexit:                           ; preds = %bb.m
  %i.ox = trunc nuw nsw i64 %indvars.iv.next775 to i32
  br label %.preheader275

.preheader275:                                    ; preds = %.preheader275.loopexit, %.preheader281
  %.1483.lcssa = phi i32 [ %.0482.lcssa, %.preheader281 ], [ %i.ox, %.preheader275.loopexit ] ; 2 uses
  %.7462.lcssa = phi ptr [ %.0455.lcssa, %.preheader281 ], [ %.13.lcssa, %.preheader275.loopexit ]
  %i.oy = icmp slt i32 %.1483.lcssa, %3
  br i1 %i.oy, label %.preheader274.lr.ph, label %._crit_edge634

.preheader274.lr.ph:                              ; preds = %.preheader275
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.pc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.pd = icmp sgt i32 %4, 11
  %i.pe = icmp eq i32 %5, 0                       ; 6 uses
  %i.pf = icmp sgt i32 %6, 0                      ; 5 uses
  %i.pg = add i32 %4, -12                         ; 2 uses
  %i.ph = urem i32 %i.pg, 12
  %i.pi = sub nuw i32 %i.pg, %i.ph
  %i.pj = add nuw nsw i32 %i.pi, 12
  %i.pk = add i32 %6, -1
  %i.pl = zext i32 %i.pk to i64                   ; 4 uses
  %i.pm = shl nuw nsw i64 %i.pl, 5
  %i.pn = shl nuw nsw i64 %i.pl, 4
  %i.po = shl nuw nsw i64 %i.pl, 3
  %i.pp = shl nuw nsw i64 %i.pl, 2
  %i.pq = zext nneg i32 %.1483.lcssa to i64
  %i.pr = sext i32 %6 to i64
  %wide.trip.count801 = zext i32 %3 to i64
  %wide.trip.count796 = zext nneg i32 %2 to i64
  %i.ps = add i32 %6, -1                          ; 3 uses
  %xtraiter1191 = and i32 %6, 1
  %i.pt = icmp eq i32 %i.ps, 0
  %unroll_iter1199 = and i32 %6, 2147483646
  %lcmp.mod1193.not = icmp eq i32 %xtraiter1191, 0
  %lcmp.mod1198 = trunc i32 %6 to i1
  %xtraiter1201 = and i32 %6, 1
  %i.pu = icmp eq i32 %i.ps, 0
  %unroll_iter1207 = and i32 %6, 2147483646
  %lcmp.mod1203.not = icmp eq i32 %xtraiter1201, 0
  %lcmp.mod1206 = trunc i32 %6 to i1
  %xtraiter1209 = and i32 %6, 3                   ; 3 uses
  %i.pv = icmp ult i32 %i.ps, 3
  %unroll_iter1214 = and i32 %6, 2147483644
  %lcmp.mod1211.not = icmp eq i32 %xtraiter1209, 0
  %lcmp.mod1213 = icmp ne i32 %xtraiter1209, 0
  %i.pw = zext nneg i32 %6 to i64                 ; 2 uses
  %min.iters.check1049 = icmp ult i32 %6, 8
  %n.vec1051 = and i64 %i.pw, 2147483640          ; 5 uses
  %i.px = trunc nuw nsw i64 %n.vec1051 to i32
  %i.py = shl nuw nsw i64 %n.vec1051, 2
  %i.pz = shl nuw nsw i64 %n.vec1051, 3
  %cmp.n1073 = icmp eq i64 %n.vec1051, %i.pw
  %i.qa = zext nneg i32 %6 to i64                 ; 2 uses
  %min.iters.check1027 = icmp ult i32 %6, 8
  %n.vec1029 = and i64 %i.qa, 2147483640          ; 4 uses
  %i.qb = trunc nuw nsw i64 %n.vec1029 to i32
  %i.qc = shl nuw nsw i64 %n.vec1029, 2           ; 2 uses
  %cmp.n1043 = icmp eq i64 %n.vec1029, %i.qa
  br label %.preheader274

bb.m:                                             ; preds = %._crit_edge522
  %indvars.iv.next775 = add nuw nsw i64 %indvars.iv774, 2 ; 3 uses
  %i.qd = icmp slt i64 %indvars.iv.next775, %invariant.op
  br i1 %i.qd, label %.preheader280, label %.preheader275.loopexit, !llvm.loop !801

bb.n:                                             ; preds = %.preheader280, %._crit_edge522
  %indvars.iv769 = phi i64 [ 0, %.preheader280 ], [ %indvars.iv.next770, %._crit_edge522 ] ; 3 uses
  %.8463525 = phi ptr [ %.7462527, %.preheader280 ], [ %.13.lcssa, %._crit_edge522 ] ; 2 uses
  %i.qe = load ptr, ptr %0, align 8, !tbaa !18
  %i.qf = load i32, ptr %i.ab, align 4, !tbaa !75
  %i.qg = sext i32 %i.qf to i64
  %i.qh = mul nsw i64 %indvars.iv769, %i.qg
  %i.qi = load i64, ptr %i.ac, align 8, !tbaa !65
  %i.qj = mul i64 %i.qh, %i.qi
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qe, i64 %i.qj
  %i.ql = getelementptr inbounds [4 x i8], ptr %i.qk, i64 %i.ow ; 11 uses
  %i.qm = load ptr, ptr %1, align 8, !tbaa !18
  %i.qn = load i32, ptr %i.ad, align 4, !tbaa !75
  %i.qo = sext i32 %i.qn to i64
  %i.qp = mul nsw i64 %indvars.iv769, %i.qo
  %i.qq = load i64, ptr %i.ae, align 8, !tbaa !65
  %i.qr = mul i64 %i.qp, %i.qq
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qm, i64 %i.qr ; 2 uses
  br i1 %i.af, label %.lr.ph441, label %.preheader279

.preheader279:                                    ; preds = %._crit_edge429, %bb.n
  %.0526.lcssa = phi i32 [ 0, %bb.n ], [ %i.al, %._crit_edge429 ] ; 3 uses
  %.0516.lcssa = phi ptr [ %i.qs, %bb.n ], [ %.1517.lcssa, %._crit_edge429 ] ; 2 uses
  %.9464.lcssa = phi ptr [ %.8463525, %bb.n ], [ %i.sy, %._crit_edge429 ] ; 2 uses
  %i.qt = add nuw nsw i32 %.0526.lcssa, 7
  %i.qu = icmp slt i32 %i.qt, %4
  br i1 %i.qu, label %.lr.ph463, label %.preheader278

.lr.ph441:                                        ; preds = %bb.n, %._crit_edge429
  %.9464439 = phi ptr [ %i.sy, %._crit_edge429 ], [ %.8463525, %bb.n ] ; 13 uses
  %.0516438 = phi ptr [ %.1517.lcssa, %._crit_edge429 ], [ %i.qs, %bb.n ] ; 2 uses
  %.0526437 = phi i32 [ %i.sz, %._crit_edge429 ], [ 0, %bb.n ] ; 2 uses
  br i1 %i.ag, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph441
  %i.qv = load <4 x float>, ptr %.9464439, align 1, !tbaa !254 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %.9464439, i64 16
  %i.qx = load <4 x float>, ptr %i.qw, align 1, !tbaa !254 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %.9464439, i64 32
  %i.qz = load <4 x float>, ptr %i.qy, align 1, !tbaa !254 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %.9464439, i64 48
  %i.rb = load <4 x float>, ptr %i.ra, align 1, !tbaa !254 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %.9464439, i64 64
  %i.rd = load <4 x float>, ptr %i.rc, align 1, !tbaa !254 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %.9464439, i64 80
  %i.rf = load <4 x float>, ptr %i.re, align 1, !tbaa !254 ; 2 uses
  %i.rg = shufflevector <4 x float> %i.qv, <4 x float> %i.qx, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.rh = shufflevector <4 x float> %i.qz, <4 x float> %i.rb, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ri = shufflevector <4 x float> %i.rd, <4 x float> %i.rf, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.rj = shufflevector <4 x float> %i.qv, <4 x float> %i.qx, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.rk = shufflevector <4 x float> %i.qz, <4 x float> %i.rb, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.rl = shufflevector <4 x float> %i.rd, <4 x float> %i.rf, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph441, %bb.o
  %.0260 = phi nsz <4 x float> [ %i.rg, %bb.o ], [ zeroinitializer, %.lr.ph441 ] ; 2 uses
  %.0258 = phi nsz <4 x float> [ %i.rh, %bb.o ], [ zeroinitializer, %.lr.ph441 ] ; 2 uses
  %.0256 = phi nsz <4 x float> [ %i.ri, %bb.o ], [ zeroinitializer, %.lr.ph441 ] ; 2 uses
  %.0254 = phi nsz <4 x float> [ %i.rj, %bb.o ], [ zeroinitializer, %.lr.ph441 ] ; 2 uses
  %.0252 = phi nsz <4 x float> [ %i.rk, %bb.o ], [ zeroinitializer, %.lr.ph441 ] ; 2 uses
  %storemerge537 = phi <4 x float> [ %i.rl, %bb.o ], [ zeroinitializer, %.lr.ph441 ] ; 2 uses
  br i1 %i.ah, label %.lr.ph428, label %._crit_edge429

.lr.ph428:                                        ; preds = %bb.p, %.lr.ph428
  %.1517426 = phi ptr [ %i.sl, %.lr.ph428 ], [ %.0516438, %bb.p ] ; 4 uses
  %.0531425 = phi ptr [ %i.sk, %.lr.ph428 ], [ %i.ql, %bb.p ] ; 3 uses
  %.0532424 = phi i32 [ %i.sm, %.lr.ph428 ], [ 0, %bb.p ]
  %.0251423 = phi <4 x float> [ %i.sj, %.lr.ph428 ], [ %storemerge537, %bb.p ]
  %.1253422 = phi <4 x float> [ %i.sh, %.lr.ph428 ], [ %.0252, %bb.p ]
  %.1255421 = phi <4 x float> [ %i.sf, %.lr.ph428 ], [ %.0254, %bb.p ]
  %.1257420 = phi <4 x float> [ %i.sd, %.lr.ph428 ], [ %.0256, %bb.p ]
  %.1259419 = phi <4 x float> [ %i.sb, %.lr.ph428 ], [ %.0258, %bb.p ]
  %.1261418 = phi <4 x float> [ %i.rz, %.lr.ph428 ], [ %.0260, %bb.p ]
  %i.rm = load float, ptr %.0531425, align 4, !tbaa !39
  %i.rn = insertelement <4 x float> poison, float %i.rm, i64 0
  %i.ro = shufflevector <4 x float> %i.rn, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %.0531425, i64 4
  %i.rq = load float, ptr %i.rp, align 4, !tbaa !39
  %i.rr = insertelement <4 x float> poison, float %i.rq, i64 0
  %i.rs = shufflevector <4 x float> %i.rr, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.rt = load <4 x float>, ptr %.1517426, align 16, !tbaa !254 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %.1517426, i64 16
  %i.rv = load <4 x float>, ptr %i.ru, align 16, !tbaa !254 ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %.1517426, i64 32
  %i.rx = load <4 x float>, ptr %i.rw, align 16, !tbaa !254 ; 2 uses
  %i.ry = fmul fast <4 x float> %i.ro, %i.rt
  %i.rz = fadd fast <4 x float> %i.ry, %.1261418  ; 2 uses
  %i.sa = fmul fast <4 x float> %i.rv, %i.ro
  %i.sb = fadd fast <4 x float> %i.sa, %.1259419  ; 2 uses
  %i.sc = fmul fast <4 x float> %i.rx, %i.ro
  %i.sd = fadd fast <4 x float> %i.sc, %.1257420  ; 2 uses
  %i.se = fmul fast <4 x float> %i.rs, %i.rt
  %i.sf = fadd fast <4 x float> %i.se, %.1255421  ; 2 uses
  %i.sg = fmul fast <4 x float> %i.rs, %i.rv
  %i.sh = fadd fast <4 x float> %i.sg, %.1253422  ; 2 uses
  %i.si = fmul fast <4 x float> %i.rx, %i.rs
  %i.sj = fadd fast <4 x float> %i.si, %.0251423  ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %.0531425, i64 8
  %i.sl = getelementptr inbounds nuw i8, ptr %.1517426, i64 48 ; 2 uses
  %i.sm = add nuw nsw i32 %.0532424, 1            ; 2 uses
  %exitcond759.not = icmp eq i32 %i.sm, %6
  br i1 %exitcond759.not, label %._crit_edge429, label %.lr.ph428, !llvm.loop !802

._crit_edge429:                                   ; preds = %.lr.ph428, %bb.p
  %.1261.lcssa = phi <4 x float> [ %.0260, %bb.p ], [ %i.rz, %.lr.ph428 ] ; 2 uses
  %.1259.lcssa = phi <4 x float> [ %.0258, %bb.p ], [ %i.sb, %.lr.ph428 ] ; 2 uses
  %.1257.lcssa = phi <4 x float> [ %.0256, %bb.p ], [ %i.sd, %.lr.ph428 ] ; 2 uses
  %.1255.lcssa = phi <4 x float> [ %.0254, %bb.p ], [ %i.sf, %.lr.ph428 ] ; 2 uses
  %.1253.lcssa = phi <4 x float> [ %.0252, %bb.p ], [ %i.sh, %.lr.ph428 ] ; 2 uses
  %.0251.lcssa = phi <4 x float> [ %storemerge537, %bb.p ], [ %i.sj, %.lr.ph428 ] ; 2 uses
  %.1517.lcssa = phi ptr [ %.0516438, %bb.p ], [ %i.sl, %.lr.ph428 ] ; 2 uses
  %i.sn = shufflevector <4 x float> %.1261.lcssa, <4 x float> %.1255.lcssa, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.so = shufflevector <4 x float> %.1261.lcssa, <4 x float> %.1255.lcssa, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.sp = shufflevector <4 x float> %.1259.lcssa, <4 x float> %.1253.lcssa, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.sq = shufflevector <4 x float> %.1259.lcssa, <4 x float> %.1253.lcssa, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.sr = shufflevector <4 x float> %.1257.lcssa, <4 x float> %.0251.lcssa, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ss = shufflevector <4 x float> %.1257.lcssa, <4 x float> %.0251.lcssa, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.sn, ptr %.9464439, align 1, !tbaa !254
  %i.st = getelementptr inbounds nuw i8, ptr %.9464439, i64 16
  store <4 x float> %i.so, ptr %i.st, align 1, !tbaa !254
  %i.su = getelementptr inbounds nuw i8, ptr %.9464439, i64 32
  store <4 x float> %i.sp, ptr %i.su, align 1, !tbaa !254
  %i.sv = getelementptr inbounds nuw i8, ptr %.9464439, i64 48
  store <4 x float> %i.sq, ptr %i.sv, align 1, !tbaa !254
  %i.sw = getelementptr inbounds nuw i8, ptr %.9464439, i64 64
  store <4 x float> %i.sr, ptr %i.sw, align 1, !tbaa !254
  %i.sx = getelementptr inbounds nuw i8, ptr %.9464439, i64 80
  store <4 x float> %i.ss, ptr %i.sx, align 1, !tbaa !254
  %i.sy = getelementptr inbounds nuw i8, ptr %.9464439, i64 96 ; 2 uses
  %i.sz = add nuw nsw i32 %.0526437, 12
  %i.ta = add nuw nsw i32 %.0526437, 23
  %i.tb = icmp slt i32 %i.ta, %4
  br i1 %i.tb, label %.lr.ph441, label %.preheader279, !llvm.loop !803

.preheader278:                                    ; preds = %._crit_edge454, %.preheader279
  %.1527.lcssa = phi i32 [ %.0526.lcssa, %.preheader279 ], [ %i.ut, %._crit_edge454 ] ; 3 uses
  %.2518.lcssa = phi ptr [ %.0516.lcssa, %.preheader279 ], [ %.3519.lcssa, %._crit_edge454 ] ; 2 uses
  %.10.lcssa = phi ptr [ %.9464.lcssa, %.preheader279 ], [ %i.us, %._crit_edge454 ] ; 2 uses
  %i.tc = or disjoint i32 %.1527.lcssa, 3
  %i.td = icmp slt i32 %i.tc, %4
  br i1 %i.td, label %.lr.ph481, label %.preheader277

.lr.ph463:                                        ; preds = %.preheader279, %._crit_edge454
  %.10462 = phi ptr [ %i.us, %._crit_edge454 ], [ %.9464.lcssa, %.preheader279 ] ; 9 uses
  %.2518461 = phi ptr [ %.3519.lcssa, %._crit_edge454 ], [ %.0516.lcssa, %.preheader279 ] ; 3 uses
  %.1527460 = phi i32 [ %i.ut, %._crit_edge454 ], [ %.0526.lcssa, %.preheader279 ] ; 2 uses
  br i1 %i.ag, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph463
  %i.te = load <4 x float>, ptr %.10462, align 1, !tbaa !254 ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %.10462, i64 16
  %i.tg = load <4 x float>, ptr %i.tf, align 1, !tbaa !254 ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %.10462, i64 32
  %i.ti = load <4 x float>, ptr %i.th, align 1, !tbaa !254 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_RS0_iiiii:bb.a
  br i1 %i.pf, label %.lr.ph537.preheader, label %._crit_edge538

.lr.ph537.preheader:                              ; preds = %bb.ab
  br i1 %i.pt, label %.lr.ph537.epil.preheader, label %.lr.ph537

.lr.ph537:                                        ; preds = %.lr.ph537.preheader, %.lr.ph537
  %.0447534 = phi ptr [ %i.acf, %.lr.ph537 ], [ %i.aam, %.lr.ph537.preheader ] ; 3 uses
  %.1451533 = phi ptr [ %i.acg, %.lr.ph537 ], [ %.0450544, %.lr.ph537.preheader ] ; 7 uses
  %.0214532 = phi <4 x float> [ %i.ace, %.lr.ph537 ], [ %storemerge534, %.lr.ph537.preheader ]
  %.1216531 = phi <4 x float> [ %i.acc, %.lr.ph537 ], [ %.0215, %.lr.ph537.preheader ]
  %.1218530 = phi <4 x float> [ %i.aca, %.lr.ph537 ], [ %.0217, %.lr.ph537.preheader ]
  %niter1200 = phi i32 [ %niter1200.next.1, %.lr.ph537 ], [ 0, %.lr.ph537.preheader ]
  %i.abb = load float, ptr %.0447534, align 4, !tbaa !39
  %i.abc = insertelement <4 x float> poison, float %i.abb, i64 0
  %i.abd = shufflevector <4 x float> %i.abc, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.abe = load <4 x float>, ptr %.1451533, align 16, !tbaa !254
  %i.abf = getelementptr inbounds nuw i8, ptr %.1451533, i64 16
  %i.abg = load <4 x float>, ptr %i.abf, align 16, !tbaa !254
  %i.abh = getelementptr inbounds nuw i8, ptr %.1451533, i64 32
  %i.abi = load <4 x float>, ptr %i.abh, align 16, !tbaa !254
  %i.abj = fmul fast <4 x float> %i.abd, %i.abe
  %i.abk = fadd fast <4 x float> %i.abj, %.1218530
  %i.abl = fmul fast <4 x float> %i.abd, %i.abg
  %i.abm = fadd fast <4 x float> %i.abl, %.1216531
  %i.abn = fmul fast <4 x float> %i.abi, %i.abd
  %i.abo = fadd fast <4 x float> %i.abn, %.0214532
  %i.abp = getelementptr inbounds nuw i8, ptr %.0447534, i64 4
  %i.abq = getelementptr inbounds nuw i8, ptr %.1451533, i64 48
  %i.abr = load float, ptr %i.abp, align 4, !tbaa !39
  %i.abs = insertelement <4 x float> poison, float %i.abr, i64 0
  %i.abt = shufflevector <4 x float> %i.abs, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.abu = load <4 x float>, ptr %i.abq, align 16, !tbaa !254
  %i.abv = getelementptr inbounds nuw i8, ptr %.1451533, i64 64
  %i.abw = load <4 x float>, ptr %i.abv, align 16, !tbaa !254
  %i.abx = getelementptr inbounds nuw i8, ptr %.1451533, i64 80
  %i.aby = load <4 x float>, ptr %i.abx, align 16, !tbaa !254
  %i.abz = fmul fast <4 x float> %i.abt, %i.abu
  %i.aca = fadd fast <4 x float> %i.abz, %i.abk   ; 3 uses
  %i.acb = fmul fast <4 x float> %i.abt, %i.abw
  %i.acc = fadd fast <4 x float> %i.acb, %i.abm   ; 3 uses
  %i.acd = fmul fast <4 x float> %i.aby, %i.abt
  %i.ace = fadd fast <4 x float> %i.acd, %i.abo   ; 3 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %.0447534, i64 8 ; 2 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %.1451533, i64 96 ; 3 uses
  %niter1200.next.1 = add nuw nsw i32 %niter1200, 2 ; 2 uses
  %niter1200.ncmp.1 = icmp eq i32 %niter1200.next.1, %unroll_iter1199
  br i1 %niter1200.ncmp.1, label %._crit_edge538.loopexit.unr-lcssa, label %.lr.ph537, !llvm.loop !816

._crit_edge538.loopexit.unr-lcssa:                ; preds = %.lr.ph537
  br i1 %lcmp.mod1193.not, label %._crit_edge538, label %.lr.ph537.epil.preheader

.lr.ph537.epil.preheader:                         ; preds = %._crit_edge538.loopexit.unr-lcssa, %.lr.ph537.preheader
  %.0447534.epil.init = phi ptr [ %i.aam, %.lr.ph537.preheader ], [ %i.acf, %._crit_edge538.loopexit.unr-lcssa ]
  %.1451533.epil.init = phi ptr [ %.0450544, %.lr.ph537.preheader ], [ %i.acg, %._crit_edge538.loopexit.unr-lcssa ] ; 4 uses
  %.0214532.epil.init = phi <4 x float> [ %storemerge534, %.lr.ph537.preheader ], [ %i.ace, %._crit_edge538.loopexit.unr-lcssa ]
  %.1216531.epil.init = phi <4 x float> [ %.0215, %.lr.ph537.preheader ], [ %i.acc, %._crit_edge538.loopexit.unr-lcssa ]
  %.1218530.epil.init = phi <4 x float> [ %.0217, %.lr.ph537.preheader ], [ %i.aca, %._crit_edge538.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1198)
  %i.ach = load float, ptr %.0447534.epil.init, align 4, !tbaa !39
  %i.aci = insertelement <4 x float> poison, float %i.ach, i64 0
  %i.acj = shufflevector <4 x float> %i.aci, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.ack = load <4 x float>, ptr %.1451533.epil.init, align 16, !tbaa !254
  %i.acl = getelementptr inbounds nuw i8, ptr %.1451533.epil.init, i64 16
  %i.acm = load <4 x float>, ptr %i.acl, align 16, !tbaa !254
  %i.acn = getelementptr inbounds nuw i8, ptr %.1451533.epil.init, i64 32
  %i.aco = load <4 x float>, ptr %i.acn, align 16, !tbaa !254
  %i.acp = fmul fast <4 x float> %i.acj, %i.ack
  %i.acq = fadd fast <4 x float> %i.acp, %.1218530.epil.init
  %i.acr = fmul fast <4 x float> %i.acj, %i.acm
  %i.acs = fadd fast <4 x float> %i.acr, %.1216531.epil.init
  %i.act = fmul fast <4 x float> %i.aco, %i.acj
  %i.acu = fadd fast <4 x float> %i.act, %.0214532.epil.init
  %i.acv = getelementptr inbounds nuw i8, ptr %.1451533.epil.init, i64 48
  br label %._crit_edge538

._crit_edge538:                                   ; preds = %.lr.ph537.epil.preheader, %._crit_edge538.loopexit.unr-lcssa, %bb.ab
  %.1218.lcssa = phi <4 x float> [ %.0217, %bb.ab ], [ %i.aca, %._crit_edge538.loopexit.unr-lcssa ], [ %i.acq, %.lr.ph537.epil.preheader ]
  %.1216.lcssa = phi <4 x float> [ %.0215, %bb.ab ], [ %i.acc, %._crit_edge538.loopexit.unr-lcssa ], [ %i.acs, %.lr.ph537.epil.preheader ]
  %.0214.lcssa = phi <4 x float> [ %storemerge534, %bb.ab ], [ %i.ace, %._crit_edge538.loopexit.unr-lcssa ], [ %i.acu, %.lr.ph537.epil.preheader ]
  %.1451.lcssa = phi ptr [ %.0450544, %bb.ab ], [ %i.acg, %._crit_edge538.loopexit.unr-lcssa ], [ %i.acv, %.lr.ph537.epil.preheader ] ; 2 uses
  store <4 x float> %.1218.lcssa, ptr %.16543, align 1, !tbaa !254
  %i.acw = getelementptr inbounds nuw i8, ptr %.16543, i64 16
  store <4 x float> %.1216.lcssa, ptr %i.acw, align 1, !tbaa !254
  %i.acx = getelementptr inbounds nuw i8, ptr %.16543, i64 32
  store <4 x float> %.0214.lcssa, ptr %i.acx, align 1, !tbaa !254
  %i.acy = getelementptr inbounds nuw i8, ptr %.16543, i64 48 ; 2 uses
  %i.acz = add nuw nsw i32 %.0448545, 12
  %i.ada = add nuw nsw i32 %.0448545, 23
  %i.adb = icmp slt i32 %i.ada, %4
  br i1 %i.adb, label %.lr.ph547, label %.preheader273, !llvm.loop !817

.preheader272:                                    ; preds = %._crit_edge558, %.preheader273
  %.17.lcssa = phi ptr [ %.16.lcssa, %.preheader273 ], [ %i.ahe, %._crit_edge558 ] ; 5 uses
  %.2452.lcssa = phi ptr [ %.0450.lcssa, %.preheader273 ], [ %.3453.lcssa, %._crit_edge558 ] ; 4 uses
  %.1449.lcssa = phi i32 [ %.0448.lcssa, %.preheader273 ], [ %i.ahf, %._crit_edge558 ] ; 9 uses
  %i.adc = or disjoint i32 %.1449.lcssa, 3
  %i.add = icmp slt i32 %i.adc, %4
  br i1 %i.add, label %.lr.ph581, label %.preheader271

.lr.ph581:                                        ; preds = %.preheader272
  br i1 %i.pf, label %.lr.ph581.split.us, label %.lr.ph581.split

.lr.ph581.split.us:                               ; preds = %.lr.ph581, %._crit_edge575.us
  %.2580.us = phi i32 [ %i.aev, %._crit_edge575.us ], [ %.1449.lcssa, %.lr.ph581 ]
  %.4454579.us = phi ptr [ %scevgep786, %._crit_edge575.us ], [ %.2452.lcssa, %.lr.ph581 ] ; 3 uses
  %.18578.us = phi ptr [ %i.aeu, %._crit_edge575.us ], [ %.17.lcssa, %.lr.ph581 ] ; 3 uses
  br i1 %i.pe, label %.lr.ph574.us.preheader, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph581.split.us
  %i.ade = load <4 x float>, ptr %.18578.us, align 1, !tbaa !254
  br label %.lr.ph574.us.preheader

.lr.ph574.us.preheader:                           ; preds = %bb.ac, %.lr.ph581.split.us
  %.0196569.us.ph = phi <4 x float> [ zeroinitializer, %.lr.ph581.split.us ], [ %i.ade, %bb.ac ] ; 2 uses
  br i1 %i.pv, label %.lr.ph574.us.epil.preheader, label %.lr.ph574.us

.lr.ph574.us:                                     ; preds = %.lr.ph574.us.preheader, %.lr.ph574.us
  %.0443571.us = phi ptr [ %i.aej, %.lr.ph574.us ], [ %i.aam, %.lr.ph574.us.preheader ] ; 5 uses
  %.5570.us = phi ptr [ %i.aek, %.lr.ph574.us ], [ %.4454579.us, %.lr.ph574.us.preheader ] ; 5 uses
  %.0196569.us = phi <4 x float> [ %i.aei, %.lr.ph574.us ], [ %.0196569.us.ph, %.lr.ph574.us.preheader ]
  %niter1215 = phi i32 [ %niter1215.next.3, %.lr.ph574.us ], [ 0, %.lr.ph574.us.preheader ]
  %i.adf = load float, ptr %.0443571.us, align 4, !tbaa !39
  %i.adg = insertelement <4 x float> poison, float %i.adf, i64 0
  %i.adh = shufflevector <4 x float> %i.adg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.adi = load <4 x float>, ptr %.5570.us, align 16, !tbaa !254
  %i.adj = fmul fast <4 x float> %i.adh, %i.adi
  %i.adk = fadd fast <4 x float> %i.adj, %.0196569.us
  %i.adl = getelementptr inbounds nuw i8, ptr %.0443571.us, i64 4
  %i.adm = getelementptr inbounds nuw i8, ptr %.5570.us, i64 16
  %i.adn = load float, ptr %i.adl, align 4, !tbaa !39
  %i.ado = insertelement <4 x float> poison, float %i.adn, i64 0
  %i.adp = shufflevector <4 x float> %i.ado, <4 x float> poison, <4 x i32> zeroinitializer
  %i.adq = load <4 x float>, ptr %i.adm, align 16, !tbaa !254
  %i.adr = fmul fast <4 x float> %i.adp, %i.adq
  %i.ads = fadd fast <4 x float> %i.adr, %i.adk
  %i.adt = getelementptr inbounds nuw i8, ptr %.0443571.us, i64 8
  %i.adu = getelementptr inbounds nuw i8, ptr %.5570.us, i64 32
  %i.adv = load float, ptr %i.adt, align 4, !tbaa !39
  %i.adw = insertelement <4 x float> poison, float %i.adv, i64 0
  %i.adx = shufflevector <4 x float> %i.adw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ady = load <4 x float>, ptr %i.adu, align 16, !tbaa !254
  %i.adz = fmul fast <4 x float> %i.adx, %i.ady
  %i.aea = fadd fast <4 x float> %i.adz, %i.ads
  %i.aeb = getelementptr inbounds nuw i8, ptr %.0443571.us, i64 12
  %i.aec = getelementptr inbounds nuw i8, ptr %.5570.us, i64 48
  %i.aed = load float, ptr %i.aeb, align 4, !tbaa !39
  %i.aee = insertelement <4 x float> poison, float %i.aed, i64 0
  %i.aef = shufflevector <4 x float> %i.aee, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aeg = load <4 x float>, ptr %i.aec, align 16, !tbaa !254
  %i.aeh = fmul fast <4 x float> %i.aef, %i.aeg
  %i.aei = fadd fast <4 x float> %i.aeh, %i.aea   ; 3 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %.0443571.us, i64 16 ; 2 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %.5570.us, i64 64 ; 2 uses
  %niter1215.next.3 = add nuw nsw i32 %niter1215, 4 ; 2 uses
  %niter1215.ncmp.3 = icmp eq i32 %niter1215.next.3, %unroll_iter1214
  br i1 %niter1215.ncmp.3, label %._crit_edge575.us.unr-lcssa, label %.lr.ph574.us, !llvm.loop !818

._crit_edge575.us.unr-lcssa:                      ; preds = %.lr.ph574.us
  br i1 %lcmp.mod1211.not, label %._crit_edge575.us, label %.lr.ph574.us.epil.preheader

.lr.ph574.us.epil.preheader:                      ; preds = %._crit_edge575.us.unr-lcssa, %.lr.ph574.us.preheader
  %.0443571.us.epil.init = phi ptr [ %i.aam, %.lr.ph574.us.preheader ], [ %i.aej, %._crit_edge575.us.unr-lcssa ]
  %.5570.us.epil.init = phi ptr [ %.4454579.us, %.lr.ph574.us.preheader ], [ %i.aek, %._crit_edge575.us.unr-lcssa ]
  %.0196569.us.epil.init = phi <4 x float> [ %.0196569.us.ph, %.lr.ph574.us.preheader ], [ %i.aei, %._crit_edge575.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1213)
  br label %.lr.ph574.us.epil

.lr.ph574.us.epil:                                ; preds = %.lr.ph574.us.epil, %.lr.ph574.us.epil.preheader
  %.0443571.us.epil = phi ptr [ %i.aer, %.lr.ph574.us.epil ], [ %.0443571.us.epil.init, %.lr.ph574.us.epil.preheader ] ; 2 uses
  %.5570.us.epil = phi ptr [ %i.aes, %.lr.ph574.us.epil ], [ %.5570.us.epil.init, %.lr.ph574.us.epil.preheader ] ; 2 uses
  %.0196569.us.epil = phi <4 x float> [ %i.aeq, %.lr.ph574.us.epil ], [ %.0196569.us.epil.init, %.lr.ph574.us.epil.preheader ]
  %epil.iter1210 = phi i32 [ %epil.iter1210.next, %.lr.ph574.us.epil ], [ 0, %.lr.ph574.us.epil.preheader ]
  %i.ael = load float, ptr %.0443571.us.epil, align 4, !tbaa !39
  %i.aem = insertelement <4 x float> poison, float %i.ael, i64 0
  %i.aen = shufflevector <4 x float> %i.aem, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aeo = load <4 x float>, ptr %.5570.us.epil, align 16, !tbaa !254
  %i.aep = fmul fast <4 x float> %i.aen, %i.aeo
  %i.aeq = fadd fast <4 x float> %i.aep, %.0196569.us.epil ; 2 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %.0443571.us.epil, i64 4
  %i.aes = getelementptr inbounds nuw i8, ptr %.5570.us.epil, i64 16
  %epil.iter1210.next = add i32 %epil.iter1210, 1 ; 2 uses
  %epil.iter1210.cmp.not = icmp eq i32 %epil.iter1210.next, %xtraiter1209
  br i1 %epil.iter1210.cmp.not, label %._crit_edge575.us, label %.lr.ph574.us.epil, !llvm.loop !819

._crit_edge575.us:                                ; preds = %.lr.ph574.us.epil, %._crit_edge575.us.unr-lcssa
  %.lcssa1089 = phi <4 x float> [ %i.aei, %._crit_edge575.us.unr-lcssa ], [ %i.aeq, %.lr.ph574.us.epil ]
  %i.aet = getelementptr i8, ptr %.4454579.us, i64 %i.pn
  %scevgep786 = getelementptr i8, ptr %i.aet, i64 16 ; 2 uses
  store <4 x float> %.lcssa1089, ptr %.18578.us, align 1, !tbaa !254
  %i.aeu = getelementptr inbounds nuw i8, ptr %.18578.us, i64 16 ; 2 uses
  %i.aev = add nuw nsw i32 %.2580.us, 4           ; 3 uses
  %i.aew = or disjoint i32 %i.aev, 3
  %i.aex = icmp slt i32 %i.aew, %4
  br i1 %i.aex, label %.lr.ph581.split.us, label %.preheader271, !llvm.loop !820

.lr.ph581.split:                                  ; preds = %.lr.ph581
  br i1 %i.pe, label %.lr.ph581.split.split.us.preheader, label %.lr.ph581.split.split.preheader

.lr.ph581.split.split.preheader:                  ; preds = %.lr.ph581.split
  %scevgep780 = getelementptr i8, ptr %.17.lcssa, i64 16
  %i.aey = add nuw i32 %.1449.lcssa, 7
  %smax = tail call i32 @llvm.smax.i32(i32 %4, i32 %i.aey)
  %i.aez = add nsw i32 %smax, -4
  %i.afa = sub nsw i32 %i.aez, %.1449.lcssa       ; 2 uses
  %i.afb = lshr i32 %i.afa, 2
  %i.afc = zext nneg i32 %i.afb to i64
  %i.afd = shl nuw nsw i64 %i.afc, 4
  %scevgep781 = getelementptr i8, ptr %scevgep780, i64 %i.afd
  %i.afe = add nuw i32 %.1449.lcssa, 4
  %i.aff = and i32 %i.afa, -4
  %i.afg = add i32 %i.afe, %i.aff
  br label %.preheader271

.lr.ph581.split.split.us.preheader:               ; preds = %.lr.ph581.split
  %i.afh = add nuw i32 %.1449.lcssa, 7
  %smax782 = tail call i32 @llvm.smax.i32(i32 %4, i32 %i.afh)
  %i.afi = add nsw i32 %smax782, -4
  %i.afj = sub nsw i32 %i.afi, %.1449.lcssa       ; 2 uses
  %i.afk = lshr i32 %i.afj, 2
  %i.afl = zext nneg i32 %i.afk to i64
  %i.afm = shl nuw nsw i64 %i.afl, 4              ; 2 uses
  %i.afn = add nuw nsw i64 %i.afm, 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.17.lcssa, i8 0, i64 %i.afn, i1 false), !tbaa !254
  %scevgep783 = getelementptr i8, ptr %.17.lcssa, i64 16
  %scevgep785 = getelementptr i8, ptr %scevgep783, i64 %i.afm
  %i.afo = add nuw i32 %.1449.lcssa, 4
  %i.afp = and i32 %i.afj, -4
  %i.afq = add i32 %i.afo, %i.afp
  br label %.preheader271

.lr.ph565:                                        ; preds = %.preheader273, %._crit_edge558
  %.1449564 = phi i32 [ %i.ahf, %._crit_edge558 ], [ %.0448.lcssa, %.preheader273 ] ; 2 uses
  %.2452563 = phi ptr [ %.3453.lcssa, %._crit_edge558 ], [ %.0450.lcssa, %.preheader273 ] ; 4 uses
  %.17562 = phi ptr [ %i.ahe, %._crit_edge558 ], [ %.16.lcssa, %.preheader273 ] ; 5 uses
  br i1 %i.pe, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph565
  %i.afr = load <4 x float>, ptr %.17562, align 1, !tbaa !254
  %i.afs = getelementptr inbounds nuw i8, ptr %.17562, i64 16
  %i.aft = load <4 x float>, ptr %i.afs, align 1, !tbaa !254
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph565, %bb.ad
  %.0204 = phi nsz <4 x float> [ %i.afr, %bb.ad ], [ zeroinitializer, %.lr.ph565 ] ; 3 uses
  %storemerge533 = phi <4 x float> [ %i.aft, %bb.ad ], [ zeroinitializer, %.lr.ph565 ] ; 3 uses
  br i1 %i.pf, label %.lr.ph557.preheader, label %._crit_edge558

.lr.ph557.preheader:                              ; preds = %bb.ae
  br i1 %i.pu, label %.lr.ph557.epil.preheader, label %.lr.ph557

.lr.ph557:                                        ; preds = %.lr.ph557.preheader, %.lr.ph557
  %.0445554 = phi ptr [ %i.agq, %.lr.ph557 ], [ %i.aam, %.lr.ph557.preheader ] ; 3 uses
  %.3453553 = phi ptr [ %i.agr, %.lr.ph557 ], [ %.2452563, %.lr.ph557.preheader ] ; 5 uses
  %.0203552 = phi <4 x float> [ %i.agp, %.lr.ph557 ], [ %storemerge533, %.lr.ph557.preheader ]
  %.1205551 = phi <4 x float> [ %i.agn, %.lr.ph557 ], [ %.0204, %.lr.ph557.preheader ]
  %niter1208 = phi i32 [ %niter1208.next.1, %.lr.ph557 ], [ 0, %.lr.ph557.preheader ]
  %i.afu = load float, ptr %.0445554, align 4, !tbaa !39
  %i.afv = insertelement <4 x float> poison, float %i.afu, i64 0
  %i.afw = shufflevector <4 x float> %i.afv, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.afx = load <4 x float>, ptr %.3453553, align 16, !tbaa !254
  %i.afy = getelementptr inbounds nuw i8, ptr %.3453553, i64 16
  %i.afz = load <4 x float>, ptr %i.afy, align 16, !tbaa !254
  %i.aga = fmul fast <4 x float> %i.afw, %i.afx
  %i.agb = fadd fast <4 x float> %i.aga, %.1205551
  %i.agc = fmul fast <4 x float> %i.afw, %i.afz
  %i.agd = fadd fast <4 x float> %i.agc, %.0203552
  %i.age = getelementptr inbounds nuw i8, ptr %.0445554, i64 4
  %i.agf = getelementptr inbounds nuw i8, ptr %.3453553, i64 32
  %i.agg = load float, ptr %i.age, align 4, !tbaa !39
  %i.agh = insertelement <4 x float> poison, float %i.agg, i64 0
  %i.agi = shufflevector <4 x float> %i.agh, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.agj = load <4 x float>, ptr %i.agf, align 16, !tbaa !254
  %i.agk = getelementptr inbounds nuw i8, ptr %.3453553, i64 48
  %i.agl = load <4 x float>, ptr %i.agk, align 16, !tbaa !254
  %i.agm = fmul fast <4 x float> %i.agi, %i.agj
  %i.agn = fadd fast <4 x float> %i.agm, %i.agb   ; 3 uses
  %i.ago = fmul fast <4 x float> %i.agi, %i.agl
  %i.agp = fadd fast <4 x float> %i.ago, %i.agd   ; 3 uses
  %i.agq = getelementptr inbounds nuw i8, ptr %.0445554, i64 8 ; 2 uses
  %i.agr = getelementptr inbounds nuw i8, ptr %.3453553, i64 64 ; 2 uses
  %niter1208.next.1 = add nuw nsw i32 %niter1208, 2 ; 2 uses
  %niter1208.ncmp.1 = icmp eq i32 %niter1208.next.1, %unroll_iter1207
  br i1 %niter1208.ncmp.1, label %._crit_edge558.loopexit.unr-lcssa, label %.lr.ph557, !llvm.loop !821

._crit_edge558.loopexit.unr-lcssa:                ; preds = %.lr.ph557
  br i1 %lcmp.mod1203.not, label %._crit_edge558.loopexit, label %.lr.ph557.epil.preheader

.lr.ph557.epil.preheader:                         ; preds = %._crit_edge558.loopexit.unr-lcssa, %.lr.ph557.preheader
  %.0445554.epil.init = phi ptr [ %i.aam, %.lr.ph557.preheader ], [ %i.agq, %._crit_edge558.loopexit.unr-lcssa ]
  %.3453553.epil.init = phi ptr [ %.2452563, %.lr.ph557.preheader ], [ %i.agr, %._crit_edge558.loopexit.unr-lcssa ] ; 2 uses
  %.0203552.epil.init = phi <4 x float> [ %storemerge533, %.lr.ph557.preheader ], [ %i.agp, %._crit_edge558.loopexit.unr-lcssa ]
  %.1205551.epil.init = phi <4 x float> [ %.0204, %.lr.ph557.preheader ], [ %i.agn, %._crit_edge558.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1206)
  %i.ags = load float, ptr %.0445554.epil.init, align 4, !tbaa !39
  %i.agt = insertelement <4 x float> poison, float %i.ags, i64 0
  %i.agu = shufflevector <4 x float> %i.agt, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.agv = load <4 x float>, ptr %.3453553.epil.init, align 16, !tbaa !254
  %i.agw = getelementptr inbounds nuw i8, ptr %.3453553.epil.init, i64 16
  %i.agx = load <4 x float>, ptr %i.agw, align 16, !tbaa !254
  %i.agy = fmul fast <4 x float> %i.agu, %i.agv
  %i.agz = fadd fast <4 x float> %i.agy, %.1205551.epil.init
  %i.aha = fmul fast <4 x float> %i.agu, %i.agx
  %i.ahb = fadd fast <4 x float> %i.aha, %.0203552.epil.init
  br label %._crit_edge558.loopexit

._crit_edge558.loopexit:                          ; preds = %._crit_edge558.loopexit.unr-lcssa, %.lr.ph557.epil.preheader
  %.lcssa1086 = phi <4 x float> [ %i.agn, %._crit_edge558.loopexit.unr-lcssa ], [ %i.agz, %.lr.ph557.epil.preheader ]
  %.lcssa1085 = phi <4 x float> [ %i.agp, %._crit_edge558.loopexit.unr-lcssa ], [ %i.ahb, %.lr.ph557.epil.preheader ]
  %i.ahc = getelementptr i8, ptr %.2452563, i64 %i.pm
  %scevgep778 = getelementptr i8, ptr %i.ahc, i64 32
  br label %._crit_edge558

._crit_edge558:                                   ; preds = %._crit_edge558.loopexit, %bb.ae
  %.1205.lcssa = phi <4 x float> [ %.0204, %bb.ae ], [ %.lcssa1086, %._crit_edge558.loopexit ]
  %.0203.lcssa = phi <4 x float> [ %storemerge533, %bb.ae ], [ %.lcssa1085, %._crit_edge558.loopexit ]
  %.3453.lcssa = phi ptr [ %.2452563, %bb.ae ], [ %scevgep778, %._crit_edge558.loopexit ] ; 2 uses
  store <4 x float> %.1205.lcssa, ptr %.17562, align 1, !tbaa !254
  %i.ahd = getelementptr inbounds nuw i8, ptr %.17562, i64 16
  store <4 x float> %.0203.lcssa, ptr %i.ahd, align 1, !tbaa !254
  %i.ahe = getelementptr inbounds nuw i8, ptr %.17562, i64 32 ; 2 uses
  %i.ahf = add nuw nsw i32 %.1449564, 8           ; 2 uses
  %i.ahg = add nuw nsw i32 %.1449564, 15
  %i.ahh = icmp slt i32 %i.ahg, %4
  br i1 %i.ahh, label %.lr.ph565, label %.preheader272, !llvm.loop !822

.preheader271:                                    ; preds = %._crit_edge575.us, %.lr.ph581.split.split.preheader, %.lr.ph581.split.split.us.preheader, %.preheader272
  %.18.lcssa = phi ptr [ %.17.lcssa, %.preheader272 ], [ %scevgep785, %.lr.ph581.split.split.us.preheader ], [ %scevgep781, %.lr.ph581.split.split.preheader ], [ %i.aeu, %._crit_edge575.us ] ; 2 uses
  %.4454.lcssa = phi ptr [ %.2452.lcssa, %.preheader272 ], [ %.2452.lcssa, %.lr.ph581.split.split.us.preheader ], [ %.2452.lcssa, %.lr.ph581.split.split.preheader ], [ %scevgep786, %._crit_edge575.us ] ; 2 uses
  %.2.lcssa = phi i32 [ %.1449.lcssa, %.preheader272 ], [ %i.afq, %.lr.ph581.split.split.us.preheader ], [ %i.afg, %.lr.ph581.split.split.preheader ], [ %i.aev, %._crit_edge575.us ] ; 3 uses
  %i.ahi = or disjoint i32 %.2.lcssa, 1
  %i.ahj = icmp slt i32 %i.ahi, %4
  br i1 %i.ahj, label %.lr.ph611.preheader, label %.preheader

.lr.ph611.preheader:                              ; preds = %.preheader271
  %i.ahk = getelementptr i8, ptr %i.aam, i64 %i.py
  br label %.lr.ph611

.preheader:                                       ; preds = %._crit_edge604, %.preheader271
  %.19.lcssa = phi ptr [ %.18.lcssa, %.preheader271 ], [ %i.aix, %._crit_edge604 ] ; 2 uses
  %.6.lcssa = phi ptr [ %.4454.lcssa, %.preheader271 ], [ %.7.lcssa, %._crit_edge604 ]
  %.3.lcssa = phi i32 [ %.2.lcssa, %.preheader271 ], [ %i.aiy, %._crit_edge604 ] ; 2 uses
  %i.ahl = icmp slt i32 %.3.lcssa, %4
  br i1 %i.ahl, label %.lr.ph627.preheader, label %._crit_edge628

.lr.ph627.preheader:                              ; preds = %.preheader
  %i.ahm = getelementptr i8, ptr %i.aam, i64 %i.qc
  br label %.lr.ph627

.lr.ph611:                                        ; preds = %.lr.ph611.preheader, %._crit_edge604
  %.3610 = phi i32 [ %i.aiy, %._crit_edge604 ], [ %.2.lcssa, %.lr.ph611.preheader ]
  %.6609 = phi ptr [ %.7.lcssa, %._crit_edge604 ], [ %.4454.lcssa, %.lr.ph611.preheader ] ; 6 uses
  %.19608 = phi ptr [ %i.aix, %._crit_edge604 ], [ %.18.lcssa, %.lr.ph611.preheader ] ; 3 uses
  br i1 %i.pe, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph611
  %i.ahn = load <2 x float>, ptr %.19608, align 4, !tbaa !39
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph611, %bb.af
  %i.aho = phi <2 x float> [ %i.ahn, %bb.af ], [ zeroinitializer, %.lr.ph611 ] ; 3 uses
  br i1 %i.pf, label %.lr.ph603.preheader, label %._crit_edge604

.lr.ph603.preheader:                              ; preds = %bb.ag
  br i1 %min.iters.check1049, label %.lr.ph603.preheader1080, label %vector.ph1050

vector.ph1050:                                    ; preds = %.lr.ph603.preheader
  %i.ahp = getelementptr i8, ptr %.6609, i64 %i.pz
  %i.ahq = shufflevector <2 x float> %i.aho, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ahr = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.ahq, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.ahs = shufflevector <4 x float> %i.ahq, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body1052

vector.body1052:                                  ; preds = %vector.body1052, %vector.ph1050
  %index1053 = phi i64 [ 0, %vector.ph1050 ], [ %index.next1069, %vector.body1052 ] ; 3 uses
  %vec.phi1054 = phi <4 x float> [ %i.ahr, %vector.ph1050 ], [ %i.aid, %vector.body1052 ]
  %vec.phi1055 = phi <4 x float> [ zeroinitializer, %vector.ph1050 ], [ %i.aie, %vector.body1052 ]
  %vec.phi1056 = phi <4 x float> [ %i.ahs, %vector.ph1050 ], [ %i.ahz, %vector.body1052 ]
  %vec.phi1057 = phi <4 x float> [ zeroinitializer, %vector.ph1050 ], [ %i.aia, %vector.body1052 ]
  %i.aht = shl i64 %index1053, 2
  %next.gep1058 = getelementptr i8, ptr %i.aam, i64 %i.aht ; 2 uses
  %i.ahu = shl i64 %index1053, 3                  ; 2 uses
  %next.gep1059 = getelementptr i8, ptr %.6609, i64 %i.ahu
  %i.ahv = getelementptr i8, ptr %.6609, i64 %i.ahu
  %next.gep1060 = getelementptr i8, ptr %i.ahv, i64 32
  %i.ahw = getelementptr i8, ptr %next.gep1058, i64 16
  %wide.load1061 = load <4 x float>, ptr %next.gep1058, align 4, !tbaa !39 ; 2 uses
  %wide.load1062 = load <4 x float>, ptr %i.ahw, align 4, !tbaa !39 ; 2 uses
  %wide.vec1063 = load <8 x float>, ptr %next.gep1059, align 4, !tbaa !39 ; 2 uses
  %strided.vec1064 = shufflevector <8 x float> %wide.vec1063, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1065 = shufflevector <8 x float> %wide.vec1063, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec1066 = load <8 x float>, ptr %next.gep1060, align 4, !tbaa !39 ; 2 uses
  %strided.vec1067 = shufflevector <8 x float> %wide.vec1066, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1068 = shufflevector <8 x float> %wide.vec1066, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ahx = fmul fast <4 x float> %strided.vec1064, %wide.load1061
  %i.ahy = fmul fast <4 x float> %strided.vec1067, %wide.load1062
  %i.ahz = fadd fast <4 x float> %i.ahx, %vec.phi1056 ; 2 uses
  %i.aia = fadd fast <4 x float> %i.ahy, %vec.phi1057 ; 2 uses
  %i.aib = fmul fast <4 x float> %strided.vec1065, %wide.load1061
  %i.aic = fmul fast <4 x float> %strided.vec1068, %wide.load1062
  %i.aid = fadd fast <4 x float> %i.aib, %vec.phi1054 ; 2 uses
  %i.aie = fadd fast <4 x float> %i.aic, %vec.phi1055 ; 2 uses
  %index.next1069 = add nuw i64 %index1053, 8     ; 2 uses
  %i.aif = icmp eq i64 %index.next1069, %n.vec1051
  br i1 %i.aif, label %middle.block1070, label %vector.body1052, !llvm.loop !823

middle.block1070:                                 ; preds = %vector.body1052
  %bin.rdx1071 = fadd fast <4 x float> %i.aie, %i.aid
  %i.aig = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx1071)
  %bin.rdx1072 = fadd fast <4 x float> %i.aia, %i.ahz
  %i.aih = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx1072)
  %i.aii = insertelement <2 x float> poison, float %i.aih, i64 0
  %i.aij = insertelement <2 x float> %i.aii, float %i.aig, i64 1 ; 2 uses
  br i1 %cmp.n1073, label %._crit_edge604.loopexit, label %.lr.ph603.preheader1080

.lr.ph603.preheader1080:                          ; preds = %.lr.ph603.preheader, %middle.block1070
  %.0436601.ph = phi i32 [ 0, %.lr.ph603.preheader ], [ %i.px, %middle.block1070 ]
  %.0441598.ph = phi ptr [ %i.aam, %.lr.ph603.preheader ], [ %i.ahk, %middle.block1070 ]
  %.7597.ph = phi ptr [ %.6609, %.lr.ph603.preheader ], [ %i.ahp, %middle.block1070 ]
  %.ph = phi <2 x float> [ %i.aho, %.lr.ph603.preheader ], [ %i.aij, %middle.block1070 ]
  br label %.lr.ph603

.lr.ph603:                                        ; preds = %.lr.ph603.preheader1080, %.lr.ph603
  %.0436601 = phi i32 [ %i.ait, %.lr.ph603 ], [ %.0436601.ph, %.lr.ph603.preheader1080 ]
  %.0441598 = phi ptr [ %i.air, %.lr.ph603 ], [ %.0441598.ph, %.lr.ph603.preheader1080 ] ; 2 uses
  %.7597 = phi ptr [ %i.ais, %.lr.ph603 ], [ %.7597.ph, %.lr.ph603.preheader1080 ] ; 2 uses
  %i.aik = phi <2 x float> [ %i.aiq, %.lr.ph603 ], [ %.ph, %.lr.ph603.preheader1080 ]
end_hunk_2
begin_hunk_3_@_ZN4ncnnL41conv3x3s1_winograd63_transform_input_tileERKNS_3MatERS0_iiiii.omp_outlined:bb.a
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afq, i64 32
  %i.afv = load <4 x float>, ptr %i.afu, align 16, !tbaa !254 ; 4 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afq, i64 48
  %i.afx = load <4 x float>, ptr %i.afw, align 16, !tbaa !254 ; 3 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afq, i64 64
  %i.afz = load <4 x float>, ptr %i.afy, align 16, !tbaa !254 ; 3 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afq, i64 80
  %i.agb = load <4 x float>, ptr %i.aga, align 16, !tbaa !254 ; 4 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %i.afq, i64 96
  %i.agd = load <4 x float>, ptr %i.agc, align 16, !tbaa !254 ; 4 uses
  %i.age = getelementptr inbounds nuw i8, ptr %i.afq, i64 112
  %i.agf = load <4 x float>, ptr %i.age, align 16, !tbaa !254
  %i.agg = fmul fast <4 x float> %i.afz, splat (float -4.250000e+00)
  %i.agh = fadd fast <4 x float> %i.agg, %i.afv
  %i.agi = fadd fast <4 x float> %i.agh, %i.agd   ; 2 uses
  %i.agj = fmul fast <4 x float> %i.afx, splat (float -4.250000e+00)
  %i.agk = fadd fast <4 x float> %i.agj, %i.aft
  %i.agl = fadd fast <4 x float> %i.agk, %i.agb   ; 2 uses
  %i.agm = fmul fast <4 x float> %i.afv, splat (float 2.500000e-01)
  %i.agn = fmul fast <4 x float> %i.afz, splat (float -1.250000e+00) ; 2 uses
  %i.ago = fadd fast <4 x float> %i.agn, %i.agm
  %i.agp = fadd fast <4 x float> %i.ago, %i.agd   ; 2 uses
  %i.agq = fmul fast <4 x float> %i.aft, splat (float 5.000000e-01)
  %i.agr = fmul fast <4 x float> %i.afx, splat (float -2.500000e+00) ; 2 uses
  %i.ags = fadd fast <4 x float> %i.agr, %i.agq
  %i.agt = fmul fast <4 x float> %i.agb, splat (float 2.000000e+00)
  %i.agu = fadd fast <4 x float> %i.ags, %i.agt   ; 2 uses
  %i.agv = fadd fast <4 x float> %i.agn, %i.afv
  %i.agw = fmul fast <4 x float> %i.agv, splat (float 4.000000e+00)
  %i.agx = fadd fast <4 x float> %i.agw, %i.agd   ; 2 uses
  %i.agy = fmul fast <4 x float> %i.aft, splat (float 2.000000e+00)
  %i.agz = fadd fast <4 x float> %i.agr, %i.agy
  %i.aha = fmul fast <4 x float> %i.agb, splat (float 5.000000e-01)
  %i.ahb = fadd fast <4 x float> %i.agz, %i.aha   ; 2 uses
  %i.ahc = fsub fast <4 x float> %i.afz, %i.afv
  %i.ahd = fsub fast <4 x float> %i.afr, %i.agd
  %i.ahe = fmul fast <4 x float> %i.ahc, splat (float 5.250000e+00)
  %i.ahf = fadd fast <4 x float> %i.ahd, %i.ahe
  %i.ahg = fadd fast <4 x float> %i.agi, %i.agl
  %i.ahh = fsub fast <4 x float> %i.agi, %i.agl
  %i.ahi = fadd fast <4 x float> %i.agp, %i.agu
  %i.ahj = fsub fast <4 x float> %i.agp, %i.agu
  %i.ahk = fadd fast <4 x float> %i.agx, %i.ahb
  %i.ahl = fsub fast <4 x float> %i.agx, %i.ahb
  %i.ahm = fsub fast <4 x float> %i.afx, %i.agb
  %i.ahn = fsub fast <4 x float> %i.agf, %i.aft
  %i.aho = fmul fast <4 x float> %i.ahm, splat (float 5.250000e+00)
  %i.ahp = fadd fast <4 x float> %i.ahn, %i.aho
  store <4 x float> %i.ahf, ptr %.0213361, align 16, !tbaa !254
  store <4 x float> %i.ahg, ptr %.0214360, align 16, !tbaa !254
  store <4 x float> %i.ahh, ptr %.0215359, align 16, !tbaa !254
  store <4 x float> %i.ahi, ptr %.0216358, align 16, !tbaa !254
  store <4 x float> %i.ahj, ptr %.0217357, align 16, !tbaa !254
  store <4 x float> %i.ahk, ptr %.0218356, align 16, !tbaa !254
  store <4 x float> %i.ahl, ptr %.0221353, align 16, !tbaa !254
  store <4 x float> %i.ahp, ptr %.0220354, align 16, !tbaa !254
  %i.ahq = load i32, ptr %4, align 4, !tbaa !67   ; 4 uses
  %i.ahr = shl nsw i32 %i.ahq, 5
  %i.ahs = sext i32 %i.ahr to i64                 ; 8 uses
  %i.aht = getelementptr inbounds [4 x i8], ptr %.0213361, i64 %i.ahs
  %i.ahu = getelementptr inbounds [4 x i8], ptr %.0214360, i64 %i.ahs
  %i.ahv = getelementptr inbounds [4 x i8], ptr %.0215359, i64 %i.ahs
  %i.ahw = getelementptr inbounds [4 x i8], ptr %.0216358, i64 %i.ahs
  %i.ahx = getelementptr inbounds [4 x i8], ptr %.0217357, i64 %i.ahs
  %i.ahy = getelementptr inbounds [4 x i8], ptr %.0218356, i64 %i.ahs
  %i.ahz = getelementptr inbounds [4 x i8], ptr %.0221353, i64 %i.ahs
  %i.aia = getelementptr inbounds [4 x i8], ptr %.0220354, i64 %i.ahs
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369, 1 ; 2 uses
  %exitcond372.not = icmp eq i64 %indvars.iv.next370, 8
  br i1 %exitcond372.not, label %bb.eq, label %bb.er, !llvm.loop !978

._crit_edge:                                      ; preds = %bb.eq, %.lr.ph.split
  %i.aib = phi i32 [ %i.cc, %.lr.ph.split ], [ %i.ahq, %bb.eq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  %i.aic = add i32 %.0364, 1
  %exitcond376.not = icmp eq i32 %.0364, %i.k
  br i1 %exitcond376.not, label %._crit_edge366, label %.lr.ph.split, !llvm.loop !979

._crit_edge366:                                   ; preds = %._crit_edge, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.es

bb.es:                                            ; preds = %._crit_edge366, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL23convolution_im2col_gemmERKNS_3MatERS0_S2_S2_iiiiiiiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %15) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.h = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !67
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !67
  %i.k = load i32, ptr %i.a, align 4, !tbaa !67   ; 2 uses
  %.not86 = icmp sgt i32 %i.k, %i.j
  br i1 %.not86, label %._crit_edge, label %_ZN4ncnn3MatD2Ev.exit36.lr.ph

_ZN4ncnn3MatD2Ev.exit36.lr.ph:                    ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 33 uses
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 10 uses
  br label %_ZN4ncnn3MatD2Ev.exit36

_ZN4ncnn3MatD2Ev.exit36:                          ; preds = %_ZN4ncnn3MatD2Ev.exit36.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.087 = phi i32 [ %i.k, %_ZN4ncnn3MatD2Ev.exit36.lr.ph ], [ %i.ur, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.r = load i32, ptr %3, align 4, !tbaa !67     ; 2 uses
  %i.s = sdiv i32 %.087, %i.r                     ; 2 uses
  %i.t = srem i32 %.087, %i.r                     ; 2 uses
  %i.u = load i32, ptr %4, align 4, !tbaa !67     ; 2 uses
  %i.v = mul nsw i32 %i.u, %i.s                   ; 14 uses
  %i.w = load i32, ptr %5, align 4, !tbaa !67     ; 2 uses
  %i.x = mul i32 %i.w, %i.t                       ; 18 uses
  %i.y = load i32, ptr %6, align 4, !tbaa !67
  %i.z = sub nsw i32 %i.y, %i.v
  %.sroa.speculated64 = call i32 @llvm.smin.i32(i32 %i.u, i32 %i.z) ; 21 uses
  %i.aa = load i32, ptr %7, align 4, !tbaa !67
  %i.ab = sub i32 %i.aa, %i.x
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.w, i32 %i.ab) ; 39 uses
  %i.ac = load i32, ptr %i.l, align 4, !tbaa !75, !noalias !980
  %i.ad = load ptr, ptr %8, align 8, !tbaa !18, !noalias !980
  %i.ae = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !980
  %i.af = sext i32 %i.s to i64
  %i.ag = mul i64 %i.ae, %i.af
  %i.ah = load i64, ptr %i.n, align 8, !tbaa !65, !noalias !980 ; 2 uses
  %i.ai = mul i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ai
  %i.ak = sext i32 %i.ac to i64
  %i.al = sext i32 %i.t to i64
  %i.am = mul nsw i64 %i.ak, %i.al
  %i.an = mul i64 %i.am, %i.ah
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.an ; 13 uses
  %i.ap = load i32, ptr %10, align 4, !tbaa !67   ; 5 uses
  %i.aq = load i32, ptr %11, align 4, !tbaa !67   ; 5 uses
  %i.ar = load i32, ptr %12, align 4, !tbaa !67   ; 2 uses
  %i.as = load i32, ptr %13, align 4, !tbaa !67   ; 2 uses
  %i.at = load i32, ptr %14, align 4, !tbaa !67   ; 3 uses
  %i.au = load i32, ptr %15, align 4, !tbaa !67   ; 3 uses
  %i.av = icmp eq i32 %i.ap, 1
  %i.aw = icmp eq i32 %i.aq, 1
  %or.cond.i = and i1 %i.av, %i.aw                ; 2 uses
  %i.ax = icmp eq i32 %i.ar, 1                    ; 4 uses
  %or.cond3.i = and i1 %or.cond.i, %i.ax
  %i.ay = icmp eq i32 %i.as, 1                    ; 4 uses
  %or.cond5.i = and i1 %or.cond3.i, %i.ay
  %i.az = icmp eq i32 %i.at, 1                    ; 3 uses
  %or.cond7.i = and i1 %or.cond5.i, %i.az
  %i.ba = icmp eq i32 %i.au, 1                    ; 3 uses
  %or.cond9.i = and i1 %or.cond7.i, %i.ba
  br i1 %or.cond9.i, label %bb.c, label %bb.h

bb.c:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit36
  %i.bb = load i32, ptr %i.o, align 8, !tbaa !66  ; 5 uses
  %i.bc = icmp sgt i32 %.sroa.speculated64, 11
  br i1 %i.bc, label %.lr.ph172.i.i, label %.preheader159.i.i

.lr.ph172.i.i:                                    ; preds = %bb.c
  %i.bd = sdiv i32 %i.x, 4
  %i.be = sext i32 %i.bd to i64
  %i.bf = lshr i32 %.sroa.speculated, 2
  %i.bg = sext i32 %i.x to i64
  %i.bh = sext i32 %i.v to i64                    ; 2 uses
  %i.bi = zext nneg i32 %.sroa.speculated64 to i64 ; 5 uses
  switch i32 %i.bb, label %.loopexit160.i.preheader.i [
    i32 4, label %.lr.ph172.i.split.us.i
    i32 1, label %.lr.ph172.i.split.us18.i
  ]

.loopexit160.i.preheader.i:                       ; preds = %.lr.ph172.i.i
  %i.bj = call i64 @llvm.usub.sat.i64(i64 %i.bi, i64 23)
  %i.bk = icmp samesign ugt i32 %.sroa.speculated64, 23
  %umin71.i = zext i1 %i.bk to i64                ; 2 uses
  %i.bl = sub nsw i64 %i.bj, %umin71.i
  %i.bm = udiv i64 %i.bl, 12
  %i.bn = add nuw nsw i64 %i.bm, %umin71.i
  %i.bo = mul nuw nsw i64 %i.bn, 12
  %i.bp = add nuw nsw i64 %i.bo, 12
  br label %.preheader159.loopexit.i.i

.lr.ph172.i.split.us.i:                           ; preds = %.lr.ph172.i.i
  %i.bq = icmp sgt i32 %.sroa.speculated, 3
  br i1 %i.bq, label %_ZN4ncnn3MatD2Ev.exit375.i.us.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit375.i.us.preheader.i

_ZN4ncnn3MatD2Ev.exit375.i.us.preheader.i:        ; preds = %.lr.ph172.i.split.us.i
  %i.br = call i64 @llvm.usub.sat.i64(i64 %i.bi, i64 23)
  %i.bs = icmp samesign ugt i32 %.sroa.speculated64, 23
  %umin69.i = zext i1 %i.bs to i64                ; 2 uses
  %i.bt = sub nsw i64 %i.br, %umin69.i
  %i.bu = udiv i64 %i.bt, 12
  %i.bv = add nuw nsw i64 %i.bu, %umin69.i
  %i.bw = mul nuw nsw i64 %i.bv, 12
  %i.bx = add nuw nsw i64 %i.bw, 12
  br label %.preheader159.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit375.i.us.us.preheader.i:     ; preds = %.lr.ph172.i.split.us.i
  %.pre74.i = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !983
  br label %_ZN4ncnn3MatD2Ev.exit375.i.us.us.i

_ZN4ncnn3MatD2Ev.exit375.i.us.us.i:               ; preds = %.loopexit160.i.loopexit.us.us.i, %_ZN4ncnn3MatD2Ev.exit375.i.us.us.preheader.i
  %i.by = phi i64 [ %i.en, %.loopexit160.i.loopexit.us.us.i ], [ %.pre74.i, %_ZN4ncnn3MatD2Ev.exit375.i.us.us.preheader.i ]
  %indvars.iv.i.us.us.i = phi i64 [ %indvars.iv.next.i.us.us.i, %.loopexit160.i.loopexit.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit375.i.us.us.preheader.i ] ; 3 uses
  %.0334171.i.us.us.i = phi ptr [ %i.em, %.loopexit160.i.loopexit.us.us.i ], [ %i.ao, %_ZN4ncnn3MatD2Ev.exit375.i.us.us.preheader.i ]
  %i.bz = load ptr, ptr %9, align 8, !tbaa !18, !noalias !983
  %i.ca = mul i64 %i.by, %i.be
  %i.cb = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !983
  %i.cc = mul i64 %i.ca, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cc
  %i.ce = add nsw i64 %indvars.iv.i.us.us.i, %i.bh
  %.idx.i.us.us.i = shl nsw i64 %i.ce, 4
  %i.cf = getelementptr inbounds i8, ptr %i.cd, i64 %.idx.i.us.us.i
  br label %.lr.ph.i.us.us.i

.lr.ph.i.us.us.i:                                 ; preds = %.lr.ph.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit375.i.us.us.i
  %.1164.i.us.us.i = phi ptr [ %i.em, %.lr.ph.i.us.us.i ], [ %.0334171.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit375.i.us.us.i ] ; 13 uses
  %.0340163.i.us.us.i = phi ptr [ %i.eo, %.lr.ph.i.us.us.i ], [ %i.cf, %_ZN4ncnn3MatD2Ev.exit375.i.us.us.i ] ; 13 uses
  %.0341162.i.us.us.i = phi i32 [ %i.ep, %.lr.ph.i.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit375.i.us.us.i ]
  %i.cg = load <4 x float>, ptr %.0340163.i.us.us.i, align 16, !tbaa !254 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0340163.i.us.us.i, i64 16
  %i.ci = load <4 x float>, ptr %i.ch, align 16, !tbaa !254 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0340163.i.us.us.i, i64 32
  %i.ck = load <4 x float>, ptr %i.cj, align 16, !tbaa !254 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0340163.i.us.us.i, i64 48
  %i.cm = load <4 x float>, ptr %i.cl, align 16, !tbaa !254 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0340163.i.us.us.i, i64 64
  %i.co = load <4 x float>, ptr %i.cn, align 16, !tbaa !254 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0340163.i.us.us.i, i64 80
  %i.cq = load <4 x float>, ptr %i.cp, align 16, !tbaa !254 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0340163.i.us.us.i, i64 96
  %i.cs = load <4 x float>, ptr %i.cr, align 16, !tbaa !254 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.0340163.i.us.us.i, i64 112
  %i.cu = load <4 x float>, ptr %i.ct, align 16, !tbaa !254 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.0340163.i.us.us.i, i64 128
  %i.cw = load <4 x float>, ptr %i.cv, align 16, !tbaa !254 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.0340163.i.us.us.i, i64 144
  %i.cy = load <4 x float>, ptr %i.cx, align 16, !tbaa !254 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.0340163.i.us.us.i, i64 160
  %i.da = load <4 x float>, ptr %i.cz, align 16, !tbaa !254 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.0340163.i.us.us.i, i64 176
  %i.dc = load <4 x float>, ptr %i.db, align 16, !tbaa !254 ; 2 uses
  %i.dd = shufflevector <4 x float> %i.cg, <4 x float> %i.ci, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.de = shufflevector <4 x float> %i.ck, <4 x float> %i.cm, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.df = shufflevector <4 x float> %i.cg, <4 x float> %i.ci, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.dg = shufflevector <4 x float> %i.ck, <4 x float> %i.cm, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.dh = shufflevector <4 x float> %i.dd, <4 x float> %i.de, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.di = shufflevector <4 x float> %i.de, <4 x float> %i.dd, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.dj = shufflevector <4 x float> %i.df, <4 x float> %i.dg, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dk = shufflevector <4 x float> %i.dg, <4 x float> %i.df, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.dl = shufflevector <4 x float> %i.co, <4 x float> %i.cq, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.dm = shufflevector <4 x float> %i.cs, <4 x float> %i.cu, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.dn = shufflevector <4 x float> %i.co, <4 x float> %i.cq, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.do = shufflevector <4 x float> %i.cs, <4 x float> %i.cu, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.dp = shufflevector <4 x float> %i.dl, <4 x float> %i.dm, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dq = shufflevector <4 x float> %i.dm, <4 x float> %i.dl, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.dr = shufflevector <4 x float> %i.dn, <4 x float> %i.do, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ds = shufflevector <4 x float> %i.do, <4 x float> %i.dn, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.dt = shufflevector <4 x float> %i.cw, <4 x float> %i.cy, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.du = shufflevector <4 x float> %i.da, <4 x float> %i.dc, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.dv = shufflevector <4 x float> %i.cw, <4 x float> %i.cy, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.dw = shufflevector <4 x float> %i.da, <4 x float> %i.dc, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.dx = shufflevector <4 x float> %i.dt, <4 x float> %i.du, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dy = shufflevector <4 x float> %i.du, <4 x float> %i.dt, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.dz = shufflevector <4 x float> %i.dv, <4 x float> %i.dw, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ea = shufflevector <4 x float> %i.dw, <4 x float> %i.dv, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.dh, ptr %.1164.i.us.us.i, align 16, !tbaa !254
  %i.eb = getelementptr inbounds nuw i8, ptr %.1164.i.us.us.i, i64 16
  store <4 x float> %i.dp, ptr %i.eb, align 16, !tbaa !254
  %i.ec = getelementptr inbounds nuw i8, ptr %.1164.i.us.us.i, i64 32
  store <4 x float> %i.dx, ptr %i.ec, align 16, !tbaa !254
  %i.ed = getelementptr inbounds nuw i8, ptr %.1164.i.us.us.i, i64 48
  store <4 x float> %i.di, ptr %i.ed, align 16, !tbaa !254
  %i.ee = getelementptr inbounds nuw i8, ptr %.1164.i.us.us.i, i64 64
  store <4 x float> %i.dq, ptr %i.ee, align 16, !tbaa !254
  %i.ef = getelementptr inbounds nuw i8, ptr %.1164.i.us.us.i, i64 80
  store <4 x float> %i.dy, ptr %i.ef, align 16, !tbaa !254
  %i.eg = getelementptr inbounds nuw i8, ptr %.1164.i.us.us.i, i64 96
  store <4 x float> %i.dj, ptr %i.eg, align 16, !tbaa !254
  %i.eh = getelementptr inbounds nuw i8, ptr %.1164.i.us.us.i, i64 112
  store <4 x float> %i.dr, ptr %i.eh, align 16, !tbaa !254
  %i.ei = getelementptr inbounds nuw i8, ptr %.1164.i.us.us.i, i64 128
  store <4 x float> %i.dz, ptr %i.ei, align 16, !tbaa !254
  %i.ej = getelementptr inbounds nuw i8, ptr %.1164.i.us.us.i, i64 144
  store <4 x float> %i.dk, ptr %i.ej, align 16, !tbaa !254
  %i.ek = getelementptr inbounds nuw i8, ptr %.1164.i.us.us.i, i64 160
  store <4 x float> %i.ds, ptr %i.ek, align 16, !tbaa !254
  %i.el = getelementptr inbounds nuw i8, ptr %.1164.i.us.us.i, i64 176
  store <4 x float> %i.ea, ptr %i.el, align 16, !tbaa !254
  %i.em = getelementptr inbounds nuw i8, ptr %.1164.i.us.us.i, i64 192 ; 3 uses
  %i.en = load i64, ptr %i.p, align 8, !tbaa !20  ; 2 uses
  %.idx357.i.us.us.i = shl i64 %i.en, 4
  %i.eo = getelementptr inbounds nuw i8, ptr %.0340163.i.us.us.i, i64 %.idx357.i.us.us.i
  %i.ep = add nuw nsw i32 %.0341162.i.us.us.i, 1  ; 2 uses
  %exitcond.not.i.us.us.i = icmp eq i32 %i.ep, %i.bf
  br i1 %exitcond.not.i.us.us.i, label %.loopexit160.i.loopexit.us.us.i, label %.lr.ph.i.us.us.i, !llvm.loop !986

.loopexit160.i.loopexit.us.us.i:                  ; preds = %.lr.ph.i.us.us.i
  %indvars.iv.next.i.us.us.i = add nuw nsw i64 %indvars.iv.i.us.us.i, 12 ; 2 uses
  %i.eq = add nuw nsw i64 %indvars.iv.i.us.us.i, 23
  %i.er = icmp samesign ult i64 %i.eq, %i.bi
  br i1 %i.er, label %_ZN4ncnn3MatD2Ev.exit375.i.us.us.i, label %.preheader159.loopexit.i.i, !llvm.loop !987

.lr.ph172.i.split.us18.i:                         ; preds = %.lr.ph172.i.i
  %i.es = icmp sgt i32 %.sroa.speculated, 0
  br i1 %i.es, label %_ZN4ncnn3MatD2Ev.exit374.i.us.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit374.i.us.preheader.i

_ZN4ncnn3MatD2Ev.exit374.i.us.preheader.i:        ; preds = %.lr.ph172.i.split.us18.i
  %i.et = call i64 @llvm.usub.sat.i64(i64 %i.bi, i64 23)
  %i.eu = icmp samesign ugt i32 %.sroa.speculated64, 23
  %umin.i = zext i1 %i.eu to i64                  ; 2 uses
  %i.ev = sub nsw i64 %i.et, %umin.i
  %i.ew = udiv i64 %i.ev, 12
  %i.ex = add nuw nsw i64 %i.ew, %umin.i
  %i.ey = mul nuw nsw i64 %i.ex, 12
  %i.ez = add nuw nsw i64 %i.ey, 12
  br label %.preheader159.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit374.i.us.us.preheader.i:     ; preds = %.lr.ph172.i.split.us18.i
  %.pre.i = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !988
  %xtraiter = and i32 %.sroa.speculated, 1
  %i.fa = icmp eq i32 %.sroa.speculated, 1
  %unroll_iter = and i32 %.sroa.speculated, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod169 = trunc i32 %.sroa.speculated to i1
  br label %_ZN4ncnn3MatD2Ev.exit374.i.us.us.i

_ZN4ncnn3MatD2Ev.exit374.i.us.us.i:               ; preds = %.loopexit160.i.loopexit5.us.us.i, %_ZN4ncnn3MatD2Ev.exit374.i.us.us.preheader.i
  %i.fb = phi i64 [ %.lcssa, %.loopexit160.i.loopexit5.us.us.i ], [ %.pre.i, %_ZN4ncnn3MatD2Ev.exit374.i.us.us.preheader.i ]
  %indvars.iv.i.us19.us.i = phi i64 [ %indvars.iv.next.i.us23.us.i, %.loopexit160.i.loopexit5.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit374.i.us.us.preheader.i ] ; 3 uses
  %.0334171.i.us20.us.i = phi ptr [ %.lcssa153, %.loopexit160.i.loopexit5.us.us.i ], [ %i.ao, %_ZN4ncnn3MatD2Ev.exit374.i.us.us.preheader.i ] ; 2 uses
  %i.fc = load ptr, ptr %9, align 8, !tbaa !18, !noalias !988
  %i.fd = mul i64 %i.fb, %i.bg
  %i.fe = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !988
  %i.ff = mul i64 %i.fd, %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.ff
  %i.fh = getelementptr [4 x i8], ptr %i.fg, i64 %indvars.iv.i.us19.us.i
  %i.fi = getelementptr [4 x i8], ptr %i.fh, i64 %i.bh ; 2 uses
  br i1 %i.fa, label %.lr.ph168.i.us.us.i.epil.preheader, label %.lr.ph168.i.us.us.i

.lr.ph168.i.us.us.i:                              ; preds = %_ZN4ncnn3MatD2Ev.exit374.i.us.us.i, %.lr.ph168.i.us.us.i
  %.3167.i.us.us.i = phi ptr [ %i.ga, %.lr.ph168.i.us.us.i ], [ %.0334171.i.us20.us.i, %_ZN4ncnn3MatD2Ev.exit374.i.us.us.i ] ; 7 uses
  %.0346166.i.us.us.i = phi ptr [ %i.gc, %.lr.ph168.i.us.us.i ], [ %i.fi, %_ZN4ncnn3MatD2Ev.exit374.i.us.us.i ] ; 4 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph168.i.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit374.i.us.us.i ]
  %i.fj = load <4 x float>, ptr %.0346166.i.us.us.i, align 1, !tbaa !254
  %i.fk = getelementptr inbounds nuw i8, ptr %.0346166.i.us.us.i, i64 16
  %i.fl = load <4 x float>, ptr %i.fk, align 1, !tbaa !254
  %i.fm = getelementptr inbounds nuw i8, ptr %.0346166.i.us.us.i, i64 32
  %i.fn = load <4 x float>, ptr %i.fm, align 1, !tbaa !254
  store <4 x float> %i.fj, ptr %.3167.i.us.us.i, align 1, !tbaa !254
  %i.fo = getelementptr inbounds nuw i8, ptr %.3167.i.us.us.i, i64 16
  store <4 x float> %i.fl, ptr %i.fo, align 1, !tbaa !254
  %i.fp = getelementptr inbounds nuw i8, ptr %.3167.i.us.us.i, i64 32
  store <4 x float> %i.fn, ptr %i.fp, align 1, !tbaa !254
  %i.fq = getelementptr inbounds nuw i8, ptr %.3167.i.us.us.i, i64 48
  %i.fr = load i64, ptr %i.p, align 8, !tbaa !20
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %.0346166.i.us.us.i, i64 %i.fr ; 4 uses
  %i.ft = load <4 x float>, ptr %i.fs, align 1, !tbaa !254
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fv = load <4 x float>, ptr %i.fu, align 1, !tbaa !254
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 32
  %i.fx = load <4 x float>, ptr %i.fw, align 1, !tbaa !254
  store <4 x float> %i.ft, ptr %i.fq, align 1, !tbaa !254
  %i.fy = getelementptr inbounds nuw i8, ptr %.3167.i.us.us.i, i64 64
  store <4 x float> %i.fv, ptr %i.fy, align 1, !tbaa !254
  %i.fz = getelementptr inbounds nuw i8, ptr %.3167.i.us.us.i, i64 80
  store <4 x float> %i.fx, ptr %i.fz, align 1, !tbaa !254
  %i.ga = getelementptr inbounds nuw i8, ptr %.3167.i.us.us.i, i64 96 ; 3 uses
  %i.gb = load i64, ptr %i.p, align 8, !tbaa !20  ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.gb ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit160.i.loopexit5.us.us.i.unr-lcssa, label %.lr.ph168.i.us.us.i, !llvm.loop !991

.loopexit160.i.loopexit5.us.us.i.unr-lcssa:       ; preds = %.lr.ph168.i.us.us.i
  br i1 %lcmp.mod.not, label %.loopexit160.i.loopexit5.us.us.i, label %.lr.ph168.i.us.us.i.epil.preheader

.lr.ph168.i.us.us.i.epil.preheader:               ; preds = %.loopexit160.i.loopexit5.us.us.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit374.i.us.us.i
  %.3167.i.us.us.i.epil.init = phi ptr [ %.0334171.i.us20.us.i, %_ZN4ncnn3MatD2Ev.exit374.i.us.us.i ], [ %i.ga, %.loopexit160.i.loopexit5.us.us.i.unr-lcssa ] ; 4 uses
  %.0346166.i.us.us.i.epil.init = phi ptr [ %i.fi, %_ZN4ncnn3MatD2Ev.exit374.i.us.us.i ], [ %i.gc, %.loopexit160.i.loopexit5.us.us.i.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod169)
  %i.gd = load <4 x float>, ptr %.0346166.i.us.us.i.epil.init, align 1, !tbaa !254
  %i.ge = getelementptr inbounds nuw i8, ptr %.0346166.i.us.us.i.epil.init, i64 16
  %i.gf = load <4 x float>, ptr %i.ge, align 1, !tbaa !254
  %i.gg = getelementptr inbounds nuw i8, ptr %.0346166.i.us.us.i.epil.init, i64 32
  %i.gh = load <4 x float>, ptr %i.gg, align 1, !tbaa !254
  store <4 x float> %i.gd, ptr %.3167.i.us.us.i.epil.init, align 1, !tbaa !254
  %i.gi = getelementptr inbounds nuw i8, ptr %.3167.i.us.us.i.epil.init, i64 16
  store <4 x float> %i.gf, ptr %i.gi, align 1, !tbaa !254
  %i.gj = getelementptr inbounds nuw i8, ptr %.3167.i.us.us.i.epil.init, i64 32
  store <4 x float> %i.gh, ptr %i.gj, align 1, !tbaa !254
  %i.gk = getelementptr inbounds nuw i8, ptr %.3167.i.us.us.i.epil.init, i64 48
  %i.gl = load i64, ptr %i.p, align 8, !tbaa !20
  br label %.loopexit160.i.loopexit5.us.us.i

.loopexit160.i.loopexit5.us.us.i:                 ; preds = %.loopexit160.i.loopexit5.us.us.i.unr-lcssa, %.lr.ph168.i.us.us.i.epil.preheader
  %.lcssa153 = phi ptr [ %i.ga, %.loopexit160.i.loopexit5.us.us.i.unr-lcssa ], [ %i.gk, %.lr.ph168.i.us.us.i.epil.preheader ] ; 2 uses
  %.lcssa = phi i64 [ %i.gb, %.loopexit160.i.loopexit5.us.us.i.unr-lcssa ], [ %i.gl, %.lr.ph168.i.us.us.i.epil.preheader ]
  %indvars.iv.next.i.us23.us.i = add nuw nsw i64 %indvars.iv.i.us19.us.i, 12 ; 2 uses
  %i.gm = add nuw nsw i64 %indvars.iv.i.us19.us.i, 23
  %i.gn = icmp samesign ult i64 %i.gm, %i.bi
  br i1 %i.gn, label %_ZN4ncnn3MatD2Ev.exit374.i.us.us.i, label %.preheader159.loopexit.i.i, !llvm.loop !987

.preheader159.loopexit.i.i:                       ; preds = %.loopexit160.i.loopexit5.us.us.i, %.loopexit160.i.loopexit.us.us.i, %_ZN4ncnn3MatD2Ev.exit374.i.us.preheader.i, %_ZN4ncnn3MatD2Ev.exit375.i.us.preheader.i, %.loopexit160.i.preheader.i
  %.us-phi.i = phi ptr [ %i.ao, %_ZN4ncnn3MatD2Ev.exit374.i.us.preheader.i ], [ %i.ao, %.loopexit160.i.preheader.i ], [ %i.em, %.loopexit160.i.loopexit.us.us.i ], [ %i.ao, %_ZN4ncnn3MatD2Ev.exit375.i.us.preheader.i ], [ %.lcssa153, %.loopexit160.i.loopexit5.us.us.i ]
  %.us-phi17.i = phi i64 [ %i.ez, %_ZN4ncnn3MatD2Ev.exit374.i.us.preheader.i ], [ %i.bp, %.loopexit160.i.preheader.i ], [ %indvars.iv.next.i.us.us.i, %.loopexit160.i.loopexit.us.us.i ], [ %i.bx, %_ZN4ncnn3MatD2Ev.exit375.i.us.preheader.i ], [ %indvars.iv.next.i.us23.us.i, %.loopexit160.i.loopexit5.us.us.i ]
  %i.go = trunc nuw nsw i64 %.us-phi17.i to i32
  br label %.preheader159.i.i

.preheader159.i.i:                                ; preds = %.preheader159.loopexit.i.i, %bb.c
  %.0335.lcssa.i.i = phi i32 [ 0, %bb.c ], [ %i.go, %.preheader159.loopexit.i.i ] ; 3 uses
  %.0334.lcssa.i.i = phi ptr [ %i.ao, %bb.c ], [ %.us-phi.i, %.preheader159.loopexit.i.i ] ; 6 uses
  %i.gp = add nuw nsw i32 %.0335.lcssa.i.i, 7
  %i.gq = icmp slt i32 %i.gp, %.sroa.speculated64
  br i1 %i.gq, label %.lr.ph187.i.i, label %.preheader156.i.i

.lr.ph187.i.i:                                    ; preds = %.preheader159.i.i
  %i.gr = sdiv i32 %i.x, 4
  %i.gs = sext i32 %i.gr to i64
  %i.gt = lshr i32 %.sroa.speculated, 2
  %i.gu = sext i32 %i.x to i64
  %i.gv = zext i32 %.0335.lcssa.i.i to i64        ; 11 uses
  %i.gw = sext i32 %i.v to i64                    ; 2 uses
  %i.gx = sext i32 %.sroa.speculated64 to i64
  %invariant.op.i.i = add nsw i64 %i.gx, -15      ; 5 uses
  switch i32 %i.bb, label %.loopexit157.i.preheader.i [
    i32 4, label %.lr.ph187.i.split.us.i
    i32 1, label %.lr.ph187.i.split.us34.i
  ]

.loopexit157.i.preheader.i:                       ; preds = %.lr.ph187.i.i
  %smax73.i = call i64 @llvm.smax.i64(i64 %invariant.op.i.i, i64 %i.gv)
  %reass.sub89 = sub nsw i64 %smax73.i, %i.gv
  %i.gy = add nsw i64 %reass.sub89, 7
  %i.gz = and i64 %i.gy, -8
  %i.ha = add nuw nsw i64 %i.gv, 8
  %i.hb = add nuw i64 %i.ha, %i.gz
  br label %.preheader156.loopexit.i.i

.lr.ph187.i.split.us.i:                           ; preds = %.lr.ph187.i.i
  %i.hc = icmp sgt i32 %.sroa.speculated, 3
  br i1 %i.hc, label %_ZN4ncnn3MatD2Ev.exit373.i.us.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit373.i.us.preheader.i

_ZN4ncnn3MatD2Ev.exit373.i.us.preheader.i:        ; preds = %.lr.ph187.i.split.us.i
  %smax72.i = call i64 @llvm.smax.i64(i64 %invariant.op.i.i, i64 %i.gv)
  %reass.sub88 = sub nsw i64 %smax72.i, %i.gv
  %i.hd = add nsw i64 %reass.sub88, 7
  %i.he = and i64 %i.hd, -8
  %i.hf = add nuw nsw i64 %i.gv, 8
  %i.hg = add nuw i64 %i.hf, %i.he
  br label %.preheader156.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit373.i.us.us.preheader.i:     ; preds = %.lr.ph187.i.split.us.i
  %.pre76.i = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !992
  br label %_ZN4ncnn3MatD2Ev.exit373.i.us.us.i

_ZN4ncnn3MatD2Ev.exit373.i.us.us.i:               ; preds = %.loopexit157.i.loopexit.us.us.i, %_ZN4ncnn3MatD2Ev.exit373.i.us.us.preheader.i
  %i.hh = phi i64 [ %i.jc, %.loopexit157.i.loopexit.us.us.i ], [ %.pre76.i, %_ZN4ncnn3MatD2Ev.exit373.i.us.us.preheader.i ]
  %indvars.iv253.i.us.us.i = phi i64 [ %indvars.iv.next254.i.us.us.i, %.loopexit157.i.loopexit.us.us.i ], [ %i.gv, %_ZN4ncnn3MatD2Ev.exit373.i.us.us.preheader.i ] ; 3 uses
  %.5186.i.us.us.i = phi ptr [ %i.jb, %.loopexit157.i.loopexit.us.us.i ], [ %.0334.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit373.i.us.us.preheader.i ]
  %i.hi = load ptr, ptr %9, align 8, !tbaa !18, !noalias !992
  %i.hj = mul i64 %i.hh, %i.gs
  %i.hk = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !992
  %i.hl = mul i64 %i.hj, %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.hl
  %i.hn = add nsw i64 %indvars.iv253.i.us.us.i, %i.gw
  %.idx285.i.us.us.i = shl nsw i64 %i.hn, 4
  %i.ho = getelementptr inbounds i8, ptr %i.hm, i64 %.idx285.i.us.us.i
  br label %.lr.ph178.i.us.us.i

.lr.ph178.i.us.us.i:                              ; preds = %.lr.ph178.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit373.i.us.us.i
  %.6177.i.us.us.i = phi ptr [ %i.jb, %.lr.ph178.i.us.us.i ], [ %.5186.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit373.i.us.us.i ] ; 9 uses
  %.0348176.i.us.us.i = phi ptr [ %i.jd, %.lr.ph178.i.us.us.i ], [ %i.ho, %_ZN4ncnn3MatD2Ev.exit373.i.us.us.i ] ; 9 uses
  %.0349175.i.us.us.i = phi i32 [ %i.je, %.lr.ph178.i.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit373.i.us.us.i ]
  %i.hp = load <4 x float>, ptr %.0348176.i.us.us.i, align 16, !tbaa !254 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.0348176.i.us.us.i, i64 16
  %i.hr = load <4 x float>, ptr %i.hq, align 16, !tbaa !254 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.0348176.i.us.us.i, i64 32
  %i.ht = load <4 x float>, ptr %i.hs, align 16, !tbaa !254 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.0348176.i.us.us.i, i64 48
  %i.hv = load <4 x float>, ptr %i.hu, align 16, !tbaa !254 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.0348176.i.us.us.i, i64 64
  %i.hx = load <4 x float>, ptr %i.hw, align 16, !tbaa !254 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.0348176.i.us.us.i, i64 80
  %i.hz = load <4 x float>, ptr %i.hy, align 16, !tbaa !254 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.0348176.i.us.us.i, i64 96
  %i.ib = load <4 x float>, ptr %i.ia, align 16, !tbaa !254 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.0348176.i.us.us.i, i64 112
  %i.id = load <4 x float>, ptr %i.ic, align 16, !tbaa !254 ; 2 uses
  %i.ie = shufflevector <4 x float> %i.hp, <4 x float> %i.hr, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.if = shufflevector <4 x float> %i.ht, <4 x float> %i.hv, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ig = shufflevector <4 x float> %i.hp, <4 x float> %i.hr, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ih = shufflevector <4 x float> %i.ht, <4 x float> %i.hv, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ii = shufflevector <4 x float> %i.ie, <4 x float> %i.if, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ij = shufflevector <4 x float> %i.if, <4 x float> %i.ie, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ik = shufflevector <4 x float> %i.ig, <4 x float> %i.ih, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.il = shufflevector <4 x float> %i.ih, <4 x float> %i.ig, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.im = shufflevector <4 x float> %i.hx, <4 x float> %i.hz, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.in = shufflevector <4 x float> %i.ib, <4 x float> %i.id, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.io = shufflevector <4 x float> %i.hx, <4 x float> %i.hz, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ip = shufflevector <4 x float> %i.ib, <4 x float> %i.id, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.iq = shufflevector <4 x float> %i.im, <4 x float> %i.in, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ir = shufflevector <4 x float> %i.in, <4 x float> %i.im, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.is = shufflevector <4 x float> %i.io, <4 x float> %i.ip, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.it = shufflevector <4 x float> %i.ip, <4 x float> %i.io, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.ii, ptr %.6177.i.us.us.i, align 16, !tbaa !254
  %i.iu = getelementptr inbounds nuw i8, ptr %.6177.i.us.us.i, i64 16
  store <4 x float> %i.iq, ptr %i.iu, align 16, !tbaa !254
  %i.iv = getelementptr inbounds nuw i8, ptr %.6177.i.us.us.i, i64 32
  store <4 x float> %i.ij, ptr %i.iv, align 16, !tbaa !254
  %i.iw = getelementptr inbounds nuw i8, ptr %.6177.i.us.us.i, i64 48
  store <4 x float> %i.ir, ptr %i.iw, align 16, !tbaa !254
  %i.ix = getelementptr inbounds nuw i8, ptr %.6177.i.us.us.i, i64 64
  store <4 x float> %i.ik, ptr %i.ix, align 16, !tbaa !254
  %i.iy = getelementptr inbounds nuw i8, ptr %.6177.i.us.us.i, i64 80
  store <4 x float> %i.is, ptr %i.iy, align 16, !tbaa !254
  %i.iz = getelementptr inbounds nuw i8, ptr %.6177.i.us.us.i, i64 96
  store <4 x float> %i.il, ptr %i.iz, align 16, !tbaa !254
  %i.ja = getelementptr inbounds nuw i8, ptr %.6177.i.us.us.i, i64 112
  store <4 x float> %i.it, ptr %i.ja, align 16, !tbaa !254
  %i.jb = getelementptr inbounds nuw i8, ptr %.6177.i.us.us.i, i64 128 ; 3 uses
  %i.jc = load i64, ptr %i.p, align 8, !tbaa !20  ; 2 uses
  %.idx356.i.us.us.i = shl i64 %i.jc, 4
  %i.jd = getelementptr inbounds nuw i8, ptr %.0348176.i.us.us.i, i64 %.idx356.i.us.us.i
  %i.je = add nuw nsw i32 %.0349175.i.us.us.i, 1  ; 2 uses
  %exitcond251.not.i.us.us.i = icmp eq i32 %i.je, %i.gt
  br i1 %exitcond251.not.i.us.us.i, label %.loopexit157.i.loopexit.us.us.i, label %.lr.ph178.i.us.us.i, !llvm.loop !995

.loopexit157.i.loopexit.us.us.i:                  ; preds = %.lr.ph178.i.us.us.i
  %indvars.iv.next254.i.us.us.i = add nuw nsw i64 %indvars.iv253.i.us.us.i, 8 ; 2 uses
  %i.jf = icmp slt i64 %indvars.iv253.i.us.us.i, %invariant.op.i.i
  br i1 %i.jf, label %_ZN4ncnn3MatD2Ev.exit373.i.us.us.i, label %.preheader156.loopexit.i.i, !llvm.loop !996

.lr.ph187.i.split.us34.i:                         ; preds = %.lr.ph187.i.i
  %i.jg = icmp sgt i32 %.sroa.speculated, 0
  br i1 %i.jg, label %_ZN4ncnn3MatD2Ev.exit372.i.us.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit372.i.us.preheader.i

_ZN4ncnn3MatD2Ev.exit372.i.us.preheader.i:        ; preds = %.lr.ph187.i.split.us34.i
  %smax.i = call i64 @llvm.smax.i64(i64 %invariant.op.i.i, i64 %i.gv)
  %reass.sub = sub nsw i64 %smax.i, %i.gv
  %i.jh = add nsw i64 %reass.sub, 7
  %i.ji = and i64 %i.jh, -8
  %i.jj = add nuw nsw i64 %i.gv, 8
  %i.jk = add nuw i64 %i.jj, %i.ji
  br label %.preheader156.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit372.i.us.us.preheader.i:     ; preds = %.lr.ph187.i.split.us34.i
  %.pre75.i = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !997
  %i.jl = add nsw i32 %.sroa.speculated, -1
  %xtraiter170 = and i32 %.sroa.speculated, 3     ; 3 uses
  %i.jm = icmp ult i32 %i.jl, 3
  %unroll_iter175 = and i32 %.sroa.speculated, 2147483644
  %lcmp.mod171.not = icmp eq i32 %xtraiter170, 0
  %lcmp.mod174 = icmp ne i32 %xtraiter170, 0
  br label %_ZN4ncnn3MatD2Ev.exit372.i.us.us.i

_ZN4ncnn3MatD2Ev.exit372.i.us.us.i:               ; preds = %.loopexit157.i.loopexit4.us.us.i, %_ZN4ncnn3MatD2Ev.exit372.i.us.us.preheader.i
  %i.jn = phi i64 [ %.lcssa156, %.loopexit157.i.loopexit4.us.us.i ], [ %.pre75.i, %_ZN4ncnn3MatD2Ev.exit372.i.us.us.preheader.i ]
  %indvars.iv253.i.us35.us.i = phi i64 [ %indvars.iv.next254.i.us39.us.i, %.loopexit157.i.loopexit4.us.us.i ], [ %i.gv, %_ZN4ncnn3MatD2Ev.exit372.i.us.us.preheader.i ] ; 3 uses
  %.5186.i.us36.us.i = phi ptr [ %.lcssa157, %.loopexit157.i.loopexit4.us.us.i ], [ %.0334.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit372.i.us.us.preheader.i ] ; 2 uses
  %i.jo = load ptr, ptr %9, align 8, !tbaa !18, !noalias !997
  %i.jp = mul i64 %i.jn, %i.gu
  %i.jq = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !997
  %i.jr = mul i64 %i.jp, %i.jq
  %i.js = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.jr
  %i.jt = getelementptr [4 x i8], ptr %i.js, i64 %indvars.iv253.i.us35.us.i
  %i.ju = getelementptr [4 x i8], ptr %i.jt, i64 %i.gw ; 2 uses
  br i1 %i.jm, label %.lr.ph183.i.us.us.i.epil.preheader, label %.lr.ph183.i.us.us.i

.lr.ph183.i.us.us.i:                              ; preds = %_ZN4ncnn3MatD2Ev.exit372.i.us.us.i, %.lr.ph183.i.us.us.i
  %.8182.i.us.us.i = phi ptr [ %i.ku, %.lr.ph183.i.us.us.i ], [ %.5186.i.us36.us.i, %_ZN4ncnn3MatD2Ev.exit372.i.us.us.i ] ; 9 uses
  %.0350181.i.us.us.i = phi ptr [ %i.kw, %.lr.ph183.i.us.us.i ], [ %i.ju, %_ZN4ncnn3MatD2Ev.exit372.i.us.us.i ] ; 3 uses
  %niter176 = phi i32 [ %niter176.next.3, %.lr.ph183.i.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit372.i.us.us.i ]
  %i.jv = load <4 x float>, ptr %.0350181.i.us.us.i, align 1, !tbaa !254
  %i.jw = getelementptr inbounds nuw i8, ptr %.0350181.i.us.us.i, i64 16
  %i.jx = load <4 x float>, ptr %i.jw, align 1, !tbaa !254
  store <4 x float> %i.jv, ptr %.8182.i.us.us.i, align 1, !tbaa !254
  %i.jy = getelementptr inbounds nuw i8, ptr %.8182.i.us.us.i, i64 16
  store <4 x float> %i.jx, ptr %i.jy, align 1, !tbaa !254
  %i.jz = getelementptr inbounds nuw i8, ptr %.8182.i.us.us.i, i64 32
  %i.ka = load i64, ptr %i.p, align 8, !tbaa !20
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %.0350181.i.us.us.i, i64 %i.ka ; 3 uses
  %i.kc = load <4 x float>, ptr %i.kb, align 1, !tbaa !254
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  %i.ke = load <4 x float>, ptr %i.kd, align 1, !tbaa !254
  store <4 x float> %i.kc, ptr %i.jz, align 1, !tbaa !254
  %i.kf = getelementptr inbounds nuw i8, ptr %.8182.i.us.us.i, i64 48
  store <4 x float> %i.ke, ptr %i.kf, align 1, !tbaa !254
  %i.kg = getelementptr inbounds nuw i8, ptr %.8182.i.us.us.i, i64 64
  %i.kh = load i64, ptr %i.p, align 8, !tbaa !20
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.kb, i64 %i.kh ; 3 uses
  %i.kj = load <4 x float>, ptr %i.ki, align 1, !tbaa !254
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  %i.kl = load <4 x float>, ptr %i.kk, align 1, !tbaa !254
  store <4 x float> %i.kj, ptr %i.kg, align 1, !tbaa !254
  %i.km = getelementptr inbounds nuw i8, ptr %.8182.i.us.us.i, i64 80
  store <4 x float> %i.kl, ptr %i.km, align 1, !tbaa !254
  %i.kn = getelementptr inbounds nuw i8, ptr %.8182.i.us.us.i, i64 96
  %i.ko = load i64, ptr %i.p, align 8, !tbaa !20
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %i.ko ; 3 uses
  %i.kq = load <4 x float>, ptr %i.kp, align 1, !tbaa !254
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %i.ks = load <4 x float>, ptr %i.kr, align 1, !tbaa !254
  store <4 x float> %i.kq, ptr %i.kn, align 1, !tbaa !254
  %i.kt = getelementptr inbounds nuw i8, ptr %.8182.i.us.us.i, i64 112
  store <4 x float> %i.ks, ptr %i.kt, align 1, !tbaa !254
  %i.ku = getelementptr inbounds nuw i8, ptr %.8182.i.us.us.i, i64 128 ; 3 uses
  %i.kv = load i64, ptr %i.p, align 8, !tbaa !20  ; 2 uses
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %i.kv ; 2 uses
  %niter176.next.3 = add i32 %niter176, 4         ; 2 uses
  %niter176.ncmp.3 = icmp eq i32 %niter176.next.3, %unroll_iter175
  br i1 %niter176.ncmp.3, label %.loopexit157.i.loopexit4.us.us.i.unr-lcssa, label %.lr.ph183.i.us.us.i, !llvm.loop !1000

.loopexit157.i.loopexit4.us.us.i.unr-lcssa:       ; preds = %.lr.ph183.i.us.us.i
  br i1 %lcmp.mod171.not, label %.loopexit157.i.loopexit4.us.us.i, label %.lr.ph183.i.us.us.i.epil.preheader

.lr.ph183.i.us.us.i.epil.preheader:               ; preds = %.loopexit157.i.loopexit4.us.us.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit372.i.us.us.i
  %.8182.i.us.us.i.epil.init = phi ptr [ %.5186.i.us36.us.i, %_ZN4ncnn3MatD2Ev.exit372.i.us.us.i ], [ %i.ku, %.loopexit157.i.loopexit4.us.us.i.unr-lcssa ]
  %.0350181.i.us.us.i.epil.init = phi ptr [ %i.ju, %_ZN4ncnn3MatD2Ev.exit372.i.us.us.i ], [ %i.kw, %.loopexit157.i.loopexit4.us.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod174)
  br label %.lr.ph183.i.us.us.i.epil

.lr.ph183.i.us.us.i.epil:                         ; preds = %.lr.ph183.i.us.us.i.epil, %.lr.ph183.i.us.us.i.epil.preheader
  %.8182.i.us.us.i.epil = phi ptr [ %i.lb, %.lr.ph183.i.us.us.i.epil ], [ %.8182.i.us.us.i.epil.init, %.lr.ph183.i.us.us.i.epil.preheader ] ; 3 uses
  %.0350181.i.us.us.i.epil = phi ptr [ %i.ld, %.lr.ph183.i.us.us.i.epil ], [ %.0350181.i.us.us.i.epil.init, %.lr.ph183.i.us.us.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph183.i.us.us.i.epil ], [ 0, %.lr.ph183.i.us.us.i.epil.preheader ]
  %i.kx = load <4 x float>, ptr %.0350181.i.us.us.i.epil, align 1, !tbaa !254
  %i.ky = getelementptr inbounds nuw i8, ptr %.0350181.i.us.us.i.epil, i64 16
  %i.kz = load <4 x float>, ptr %i.ky, align 1, !tbaa !254
  store <4 x float> %i.kx, ptr %.8182.i.us.us.i.epil, align 1, !tbaa !254
  %i.la = getelementptr inbounds nuw i8, ptr %.8182.i.us.us.i.epil, i64 16
  store <4 x float> %i.kz, ptr %i.la, align 1, !tbaa !254
  %i.lb = getelementptr inbounds nuw i8, ptr %.8182.i.us.us.i.epil, i64 32 ; 2 uses
  %i.lc = load i64, ptr %i.p, align 8, !tbaa !20  ; 2 uses
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %.0350181.i.us.us.i.epil, i64 %i.lc
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter170
  br i1 %epil.iter.cmp.not, label %.loopexit157.i.loopexit4.us.us.i, label %.lr.ph183.i.us.us.i.epil, !llvm.loop !1001

.loopexit157.i.loopexit4.us.us.i:                 ; preds = %.lr.ph183.i.us.us.i.epil, %.loopexit157.i.loopexit4.us.us.i.unr-lcssa
  %.lcssa157 = phi ptr [ %i.ku, %.loopexit157.i.loopexit4.us.us.i.unr-lcssa ], [ %i.lb, %.lr.ph183.i.us.us.i.epil ] ; 2 uses
  %.lcssa156 = phi i64 [ %i.kv, %.loopexit157.i.loopexit4.us.us.i.unr-lcssa ], [ %i.lc, %.lr.ph183.i.us.us.i.epil ]
  %indvars.iv.next254.i.us39.us.i = add nuw nsw i64 %indvars.iv253.i.us35.us.i, 8 ; 2 uses
  %i.le = icmp slt i64 %indvars.iv253.i.us35.us.i, %invariant.op.i.i
  br i1 %i.le, label %_ZN4ncnn3MatD2Ev.exit372.i.us.us.i, label %.preheader156.loopexit.i.i, !llvm.loop !996

.preheader156.loopexit.i.i:                       ; preds = %.loopexit157.i.loopexit4.us.us.i, %.loopexit157.i.loopexit.us.us.i, %_ZN4ncnn3MatD2Ev.exit372.i.us.preheader.i, %_ZN4ncnn3MatD2Ev.exit373.i.us.preheader.i, %.loopexit157.i.preheader.i
  %.us-phi32.i = phi ptr [ %.0334.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit372.i.us.preheader.i ], [ %.0334.lcssa.i.i, %.loopexit157.i.preheader.i ], [ %i.jb, %.loopexit157.i.loopexit.us.us.i ], [ %.0334.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit373.i.us.preheader.i ], [ %.lcssa157, %.loopexit157.i.loopexit4.us.us.i ]
  %.us-phi33.i = phi i64 [ %i.jk, %_ZN4ncnn3MatD2Ev.exit372.i.us.preheader.i ], [ %i.hb, %.loopexit157.i.preheader.i ], [ %indvars.iv.next254.i.us.us.i, %.loopexit157.i.loopexit.us.us.i ], [ %i.hg, %_ZN4ncnn3MatD2Ev.exit373.i.us.preheader.i ], [ %indvars.iv.next254.i.us39.us.i, %.loopexit157.i.loopexit4.us.us.i ]
  %i.lf = trunc nsw i64 %.us-phi33.i to i32
  br label %.preheader156.i.i

.preheader156.i.i:                                ; preds = %.preheader156.loopexit.i.i, %.preheader159.i.i
  %.1336.lcssa.i.i = phi i32 [ %.0335.lcssa.i.i, %.preheader159.i.i ], [ %i.lf, %.preheader156.loopexit.i.i ] ; 3 uses
  %.5.lcssa.i.i = phi ptr [ %.0334.lcssa.i.i, %.preheader159.i.i ], [ %.us-phi32.i, %.preheader156.loopexit.i.i ] ; 2 uses
  %i.lg = or disjoint i32 %.1336.lcssa.i.i, 3
  %i.lh = icmp slt i32 %i.lg, %.sroa.speculated64
  br i1 %i.lh, label %.lr.ph202.i.i, label %.preheader153.i.i

.lr.ph202.i.i:                                    ; preds = %.preheader156.i.i
  %i.li = sdiv i32 %i.x, 4
  %i.lj = sext i32 %i.li to i64
  %i.lk = lshr i32 %.sroa.speculated, 2
  %i.ll = icmp sgt i32 %.sroa.speculated, 3
  %i.lm = sext i32 %i.x to i64
  %i.ln = icmp sgt i32 %.sroa.speculated, 0
  %i.lo = sext i32 %.1336.lcssa.i.i to i64
  %i.lp = sext i32 %.sroa.speculated64 to i64
  %i.lq = sext i32 %i.v to i64                    ; 2 uses
  %invariant.op309.i.i = add nsw i64 %i.lp, -3
  %i.lr = add i32 %.sroa.speculated, -1
  %xtraiter177 = and i32 %.sroa.speculated, 3     ; 3 uses
  %i.ls = icmp ult i32 %i.lr, 3
  %unroll_iter182 = and i32 %.sroa.speculated, 2147483644
  %lcmp.mod179.not = icmp eq i32 %xtraiter177, 0
  %lcmp.mod181 = icmp ne i32 %xtraiter177, 0
  br label %bb.d

.preheader153.loopexit.i.i:                       ; preds = %.loopexit154.i.i
  %i.lt = trunc nsw i64 %indvars.iv.next259.i.i to i32
  br label %.preheader153.i.i

.preheader153.i.i:                                ; preds = %.preheader153.loopexit.i.i, %.preheader156.i.i
  %.2337.lcssa.i.i = phi i32 [ %.1336.lcssa.i.i, %.preheader156.i.i ], [ %i.lt, %.preheader153.loopexit.i.i ] ; 3 uses
  %.10.lcssa.i.i = phi ptr [ %.5.lcssa.i.i, %.preheader156.i.i ], [ %.14.i.i, %.preheader153.loopexit.i.i ] ; 2 uses
  %i.lu = or disjoint i32 %.2337.lcssa.i.i, 1
  %i.lv = icmp slt i32 %i.lu, %.sroa.speculated64
  br i1 %i.lv, label %.lr.ph217.i.i, label %.preheader.i.i

.lr.ph217.i.i:                                    ; preds = %.preheader153.i.i
  %i.lw = sdiv i32 %i.x, 4
  %i.lx = sext i32 %i.lw to i64
  %i.ly = lshr i32 %.sroa.speculated, 2           ; 3 uses
  %i.lz = icmp sgt i32 %.sroa.speculated, 3
  %i.ma = sext i32 %i.x to i64
  %i.mb = icmp sgt i32 %.sroa.speculated, 0
  %i.mc = sext i32 %.2337.lcssa.i.i to i64
  %i.md = sext i32 %.sroa.speculated64 to i64
  %i.me = sext i32 %i.v to i64                    ; 2 uses
  %invariant.op310.i.i = add nsw i64 %i.md, -1
  %i.mf = add i32 %.sroa.speculated, -1
  %xtraiter184 = and i32 %.sroa.speculated, 3     ; 3 uses
  %i.mg = icmp ult i32 %i.mf, 3
  %unroll_iter189 = and i32 %.sroa.speculated, 2147483644
  %lcmp.mod186.not = icmp eq i32 %xtraiter184, 0
  %lcmp.mod188 = icmp ne i32 %xtraiter184, 0
  %i.mh = icmp eq i32 %i.ly, 1
  %unroll_iter196 = and i32 %i.ly, 536870910
  %i.mi = and i32 %.sroa.speculated, 4
  %lcmp.mod193.not = icmp eq i32 %i.mi, 0
  %lcmp.mod195 = trunc i32 %i.ly to i1
  br label %bb.e

bb.d:                                             ; preds = %.loopexit154.i.i, %.lr.ph202.i.i
  %indvars.iv258.i.i = phi i64 [ %i.lo, %.lr.ph202.i.i ], [ %indvars.iv.next259.i.i, %.loopexit154.i.i ] ; 3 uses
  %.10201.i.i = phi ptr [ %.5.lcssa.i.i, %.lr.ph202.i.i ], [ %.14.i.i, %.loopexit154.i.i ] ; 6 uses
  switch i32 %i.bb, label %.loopexit154.i.i [
    i32 4, label %_ZN4ncnn3MatD2Ev.exit371.i.i
    i32 1, label %_ZN4ncnn3MatD2Ev.exit370.i.i
  ]

_ZN4ncnn3MatD2Ev.exit371.i.i:                     ; preds = %bb.d
  br i1 %i.ll, label %.lr.ph193.preheader.i.i, label %.loopexit154.i.i

.lr.ph193.preheader.i.i:                          ; preds = %_ZN4ncnn3MatD2Ev.exit371.i.i
  %i.mj = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1002
  %i.mk = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1002
  %i.ml = mul i64 %i.mk, %i.lj
  %i.mm = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1002
  %i.mn = mul i64 %i.ml, %i.mm
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mj, i64 %i.mn
  %i.mp = add nsw i64 %indvars.iv258.i.i, %i.lq
  %.idx286.i.i = shl nsw i64 %i.mp, 4
  %i.mq = getelementptr inbounds i8, ptr %i.mo, i64 %.idx286.i.i
  br label %.lr.ph193.i.i

.lr.ph193.i.i:                                    ; preds = %.lr.ph193.i.i, %.lr.ph193.preheader.i.i
  %.11192.i.i = phi ptr [ %i.nj, %.lr.ph193.i.i ], [ %.10201.i.i, %.lr.ph193.preheader.i.i ] ; 5 uses
  %.0352191.i.i = phi ptr [ %i.nl, %.lr.ph193.i.i ], [ %i.mq, %.lr.ph193.preheader.i.i ] ; 5 uses
  %.0353190.i.i = phi i32 [ %i.nm, %.lr.ph193.i.i ], [ 0, %.lr.ph193.preheader.i.i ]
  %i.mr = load <4 x float>, ptr %.0352191.i.i, align 16, !tbaa !254 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %.0352191.i.i, i64 16
  %i.mt = load <4 x float>, ptr %i.ms, align 16, !tbaa !254 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %.0352191.i.i, i64 32
end_hunk_3
begin_hunk_4_@_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.10:bb.a
  store i32 %i.apo, ptr %i.apu, align 4, !tbaa !67
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  br i1 %i.amj, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.apv = getelementptr inbounds nuw i8, ptr %.1655.us.1.i, i64 12
  store i32 %i.app, ptr %i.apv, align 4, !tbaa !67
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.apw = getelementptr inbounds [4 x i8], ptr %.1655.us.1.i, i64 %i.agk
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.au
  %.1655.us.2.i = phi ptr [ %.1655.us.1.i, %bb.au ], [ %i.apw, %bb.bb ] ; 4 uses
  %i.apx = or disjoint i32 %i.alw, 3
  %.not.us.3.i = icmp slt i32 %i.apx, %i.eo
  br i1 %.not.us.3.i, label %bb.bd, label %bb.bj

bb.bd:                                            ; preds = %bb.bc
  %i.apy = add nsw i32 %i.aje, %i.aii             ; 2 uses
  %i.apz = add nsw i32 %i.akw, %i.aka             ; 2 uses
  %i.aqa = sub nsw i32 %i.aii, %i.aje             ; 2 uses
  %i.aqb = sub nsw i32 %i.aka, %i.akw             ; 2 uses
  %i.aqc = add i32 %i.ahk, %i.ahg
  %i.aqd = add i32 %i.aqc, %i.ahm
  %i.aqe = add i32 %i.aqd, %i.apy
  %i.aqf = add i32 %i.aqe, %i.apz
  %i.aqg = shl nsw i32 %i.apz, 2
  %i.aqh = add nsw i32 %i.aqg, %i.apy
  %i.aqi = shl nsw i32 %i.aqb, 3
  %i.aqj = add i32 %i.aqi, %i.aqa
  %i.aqk = add i32 %i.aqj, %i.alp
  %i.aql = add i32 %i.aqk, %i.alt
  %i.aqm = add i32 %i.aql, %i.als
  %i.aqn = sdiv i32 %i.aqf, 576
  %i.aqo = sdiv i32 %i.aqh, 576
  %i.aqp = sdiv i32 %i.aqm, 576
  store i32 %i.aqn, ptr %.1655.us.2.i, align 4, !tbaa !67
  br i1 %i.amf, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.aqq = shl nsw i32 %i.aqb, 1
  %i.aqr = add nsw i32 %i.aqq, %i.aqa
  %i.aqs = sdiv i32 %i.aqr, 576
  %i.aqt = getelementptr inbounds nuw i8, ptr %.1655.us.2.i, i64 4
  store i32 %i.aqs, ptr %i.aqt, align 4, !tbaa !67
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  br i1 %i.amh, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.aqu = getelementptr inbounds nuw i8, ptr %.1655.us.2.i, i64 8
  store i32 %i.aqo, ptr %i.aqu, align 4, !tbaa !67
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  br i1 %i.amj, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.aqv = getelementptr inbounds nuw i8, ptr %.1655.us.2.i, i64 12
  store i32 %i.aqp, ptr %i.aqv, align 4, !tbaa !67
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bc
  %indvars.iv.next1027.i = add nuw nsw i64 %indvars.iv1026.i, 1 ; 2 uses
  %exitcond1030.not.i = icmp eq i64 %indvars.iv.next1027.i, %wide.trip.count1029.i
  br i1 %exitcond1030.not.i, label %._crit_edge.us942.i, label %.preheader.us.i, !llvm.loop !1287

._crit_edge.us942.i:                              ; preds = %bb.bj
  %indvars.iv.next1032.i = add nsw i64 %indvars.iv1031.i, 1 ; 2 uses
  %exitcond1035.not.i = icmp eq i64 %indvars.iv.next1032.i, %i.ee
  br i1 %exitcond1035.not.i, label %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit, label %.lr.ph.us941.i, !llvm.loop !1288

.noexc:                                           ; preds = %.noexc.preheader, %.noexc
  %i.aqw = phi i32 [ %i.asv, %.noexc ], [ %.pre140, %.noexc.preheader ] ; 3 uses
  %i.aqx = phi i32 [ %i.asx, %.noexc ], [ %i.el, %.noexc.preheader ] ; 2 uses
  %.045133 = phi i32 [ %i.asw, %.noexc ], [ 0, %.noexc.preheader ] ; 5 uses
  %i.aqy = sub nsw i32 %i.aqx, %.045133
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.aqw, i32 %i.aqy)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  %i.aqz = load i32, ptr %3, align 4, !tbaa !67
  %i.ara = sdiv i32 %i.dn, %i.aqz
  %i.arb = load ptr, ptr %10, align 8, !tbaa !18, !noalias !1289
  %i.arc = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !1289
  %i.ard = sext i32 %i.ara to i64
  %i.are = mul i64 %i.arc, %i.ard
  %i.arf = load i64, ptr %i.s, align 8, !tbaa !65, !noalias !1289 ; 3 uses
  %i.arg = mul i64 %i.are, %i.arf
  %i.arh = getelementptr inbounds nuw i8, ptr %i.arb, i64 %i.arg
  %i.ari = load i32, ptr %i.t, align 8, !tbaa !66, !noalias !1289
  %i.arj = load ptr, ptr %i.u, align 8, !tbaa !17, !noalias !1289
  %i.ark = sdiv i32 %.045133, %i.aqw
  %i.arl = sext i32 %i.ark to i64                 ; 2 uses
  store ptr null, ptr %i.v, align 8, !tbaa !11, !alias.scope !1292
  store i64 %i.arf, ptr %i.w, align 8, !tbaa !65, !alias.scope !1292
  store i32 %i.ari, ptr %i.x, align 8, !tbaa !66, !alias.scope !1292
  store ptr %i.arj, ptr %i.y, align 8, !tbaa !17, !alias.scope !1292
  store i32 2, ptr %i.z, align 8, !tbaa !227, !alias.scope !1292
  %i.arm = load <2 x i32>, ptr %i.p, align 4, !tbaa !67, !noalias !1289
  %i.arn = load i32, ptr %i.q, align 8, !tbaa !76, !noalias !1289
  %i.aro = load i32, ptr %i.p, align 4, !tbaa !75, !noalias !1289
  %i.arp = sext i32 %i.aro to i64
  %i.arq = sext i32 %i.arn to i64
  %i.arr = mul nsw i64 %i.arq, %i.arp             ; 2 uses
  %i.ars = mul i64 %i.arf, %i.arr
  %i.art = mul i64 %i.ars, %i.arl
  %i.aru = getelementptr inbounds nuw i8, ptr %i.arh, i64 %i.art
  store ptr %i.aru, ptr %13, align 8, !tbaa !18, !alias.scope !1292
  %i.arv = shufflevector <2 x i32> %i.arm, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.arw = shufflevector <4 x i32> %i.arv, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.arw, ptr %i.aa, align 4, !tbaa !67, !alias.scope !1292
  store i64 %i.arr, ptr %i.ab, align 8, !tbaa !20, !alias.scope !1292
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  %i.arx = load i32, ptr %7, align 4, !tbaa !67
  %i.ary = sdiv i32 %.044134, %i.arx
  %i.arz = load ptr, ptr %11, align 8, !tbaa !18, !noalias !1295
  %i.asa = load i64, ptr %i.ae, align 8, !tbaa !20, !noalias !1295
  %i.asb = sext i32 %i.ary to i64
  %i.asc = mul i64 %i.asa, %i.asb
  %i.asd = load i64, ptr %i.af, align 8, !tbaa !65, !noalias !1295 ; 3 uses
  %i.ase = mul i64 %i.asc, %i.asd
  %i.asf = getelementptr inbounds nuw i8, ptr %i.arz, i64 %i.ase
  %i.asg = load i32, ptr %i.ag, align 8, !tbaa !66, !noalias !1295
  %i.ash = load ptr, ptr %i.ah, align 8, !tbaa !17, !noalias !1295
  store ptr null, ptr %i.ai, align 8, !tbaa !11
  store i64 %i.asd, ptr %i.aj, align 8, !tbaa !65
  store i32 %i.asg, ptr %i.ak, align 8, !tbaa !66
  store ptr %i.ash, ptr %i.al, align 8, !tbaa !17
  store i32 2, ptr %i.am, align 8, !tbaa !227
  %i.asi = load <2 x i32>, ptr %i.ac, align 4, !tbaa !67, !noalias !1295
  %i.asj = load i32, ptr %i.ad, align 8, !tbaa !76, !noalias !1295
  %i.ask = load i32, ptr %i.ac, align 4, !tbaa !75, !noalias !1295
  %i.asl = sext i32 %i.ask to i64
  %i.asm = sext i32 %i.asj to i64
  %i.asn = mul nsw i64 %i.asm, %i.asl             ; 2 uses
  %i.aso = mul i64 %i.asd, %i.asn
  %i.asp = mul i64 %i.aso, %i.arl
  %i.asq = getelementptr inbounds nuw i8, ptr %i.asf, i64 %i.asp
  store ptr %i.asq, ptr %14, align 8, !tbaa !18
  %i.asr = shufflevector <2 x i32> %i.asi, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ass = shufflevector <4 x i32> %i.asr, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.ass, ptr %i.an, align 4, !tbaa !67
  store i64 %i.asn, ptr %i.ao, align 8, !tbaa !20, !alias.scope !1298
  %i.ast = add nsw i32 %i.aqw, %.045133
  %i.asu = icmp sge i32 %i.ast, %i.aqx
  call fastcc void @_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiib(ptr noundef nonnull align 8 dereferenceable(72) %13, ptr noundef nonnull align 8 dereferenceable(72) %14, ptr %i.dv, i32 noundef 36, i32 noundef %.sroa.speculated118, i32 noundef %.sroa.speculated114, i32 noundef %.045133, i32 noundef %.sroa.speculated, i1 noundef zeroext %i.asu)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  %i.asv = load i32, ptr %9, align 4, !tbaa !67   ; 2 uses
  %i.asw = add nsw i32 %i.asv, %.045133           ; 2 uses
  %i.asx = load i32, ptr %8, align 4, !tbaa !67   ; 2 uses
  %i.asy = icmp slt i32 %i.asw, %i.asx
  br i1 %i.asy, label %.noexc, label %._crit_edge, !llvm.loop !1301

_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge.us942.i, %.lr.ph939.i, %.preheader773.i
  %i.asz = load i32, ptr %7, align 4, !tbaa !67   ; 2 uses
  %i.ata = add nsw i32 %i.asz, %.044134           ; 2 uses
  %i.atb = load i32, ptr %6, align 4, !tbaa !67   ; 2 uses
  %i.atc = icmp slt i32 %i.ata, %i.atb
  br i1 %i.atc, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !1302

._crit_edge139:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.bk

bb.bk:                                            ; preds = %._crit_edge139, %bb.a
  ret void

bb.bl:                                            ; preds = %bb.c
  %i.atd = landingpad { ptr, i32 }
          catch ptr null
  %i.ate = extractvalue { ptr, i32 } %i.atd, 0
  call void @__clang_call_terminate(ptr %i.ate) #27
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiib(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr nofree %.0.val, i32 noundef range(i32 16, 37) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7) unnamed_addr #17 {
bb.a:
  %i.a = icmp sgt i32 %3, 3
  br i1 %i.a, label %.preheader235.lr.ph, label %.preheader227

.preheader235.lr.ph:                              ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = icmp sgt i32 %4, 7
  %i.g = icmp eq i32 %5, 0                        ; 4 uses
  %i.h = icmp sgt i32 %6, 1                       ; 4 uses
  %i.i = add i32 %6, -2                           ; 5 uses
  %i.j = and i32 %i.i, -2
  %i.k = add nuw nsw i32 %i.j, 2                  ; 4 uses
  %i.l = and i32 %4, -8
  %i.m = lshr i32 %i.i, 1                         ; 2 uses
  %i.n = zext nneg i32 %i.m to i64                ; 3 uses
  %i.o = shl nuw nsw i64 %i.n, 4
  %i.p = shl nuw nsw i64 %i.n, 3
  %i.q = shl nuw nsw i64 %i.n, 2
  %i.r = zext nneg i32 %3 to i64
  %i.s = sext i32 %6 to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  %i.t = lshr i32 %i.i, 1                         ; 2 uses
  %i.u = add nuw i32 %i.t, 1                      ; 4 uses
  %i.v = icmp eq i32 %i.t, 0
  %unroll_iter = and i32 %i.u, -2
  %i.w = and i32 %i.i, 2
  %lcmp.mod.not.not = icmp eq i32 %i.w, 0
  %lcmp.mod1386 = trunc i32 %i.u to i1
  %i.x = icmp eq i32 %i.m, 0
  %unroll_iter1392 = and i32 %i.u, -2
  %i.y = and i32 %i.i, 2
  %lcmp.mod1388.not.not = icmp eq i32 %i.y, 0
  %lcmp.mod1391 = trunc i32 %i.u to i1
  br label %.preheader235

.preheader235:                                    ; preds = %.preheader235.lr.ph, %bb.b
  %indvars.iv773 = phi i64 [ 0, %.preheader235.lr.ph ], [ %indvars.iv.next774, %bb.b ] ; 2 uses
  %.0655384 = phi ptr [ %.0.val, %.preheader235.lr.ph ], [ %.5.lcssa, %bb.b ]
  %i.z = mul nsw i64 %indvars.iv773, %i.s
  br label %bb.c

.preheader227.loopexit:                           ; preds = %bb.b
  %i.aa = trunc nuw nsw i64 %indvars.iv.next774 to i32
  br label %.preheader227

.preheader227:                                    ; preds = %.preheader227.loopexit, %bb.a
  %.0658.lcssa = phi i32 [ 0, %bb.a ], [ %i.aa, %.preheader227.loopexit ] ; 3 uses
  %.0655.lcssa = phi ptr [ %.0.val, %bb.a ], [ %.5.lcssa, %.preheader227.loopexit ] ; 2 uses
  %i.ab = or disjoint i32 %.0658.lcssa, 1
  %i.ac = icmp slt i32 %i.ab, %3
  br i1 %i.ac, label %.preheader226.lr.ph, label %.preheader218

.preheader226.lr.ph:                              ; preds = %.preheader227
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = icmp sgt i32 %4, 7
  %i.ai = icmp eq i32 %5, 0                       ; 4 uses
  %i.aj = icmp sgt i32 %6, 1                      ; 4 uses
  %i.ak = add i32 %6, -2                          ; 6 uses
  %i.al = and i32 %i.ak, -2
  %i.am = add nuw nsw i32 %i.al, 2                ; 4 uses
  %i.an = and i32 %4, -8
  %i.ao = lshr i32 %i.ak, 1
  %i.ap = zext nneg i32 %i.ao to i64              ; 5 uses
  %i.aq = shl nuw nsw i64 %i.ap, 4
  %i.ar = shl nuw nsw i64 %i.ap, 3
  %i.as = shl nuw nsw i64 %i.ap, 2
  %i.at = zext nneg i32 %.0658.lcssa to i64
  %i.au = sext i32 %3 to i64
  %i.av = sext i32 %6 to i64
  %wide.trip.count787 = zext nneg i32 %2 to i64
  %invariant.op = add nsw i64 %i.au, -1
  %i.aw = lshr i32 %i.ak, 1                       ; 2 uses
  %i.ax = add nuw i32 %i.aw, 1                    ; 2 uses
  %i.ay = icmp eq i32 %i.aw, 0
  %unroll_iter1400 = and i32 %i.ax, -2
  %i.az = and i32 %i.ak, 2
  %lcmp.mod1395.not.not = icmp eq i32 %i.az, 0
  %lcmp.mod1399 = trunc i32 %i.ax to i1
  %i.ba = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check1127 = icmp ult i32 %i.ak, 6
  %n.vec1129 = and i64 %i.ba, 4294967292          ; 4 uses
  %i.bb = shl nuw nsw i64 %n.vec1129, 3           ; 2 uses
  %i.bc = trunc nuw i64 %n.vec1129 to i32
  %i.bd = shl i32 %i.bc, 1
  %cmp.n1146 = icmp eq i64 %i.ba, %n.vec1129
  %i.be = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check1063 = icmp ult i32 %i.ak, 14
  %n.vec1065 = and i64 %i.be, 4294967288          ; 5 uses
  %i.bf = shl nuw nsw i64 %n.vec1065, 2
  %i.bg = trunc nuw i64 %n.vec1065 to i32
  %i.bh = shl i32 %i.bg, 1
  %i.bi = shl nuw nsw i64 %n.vec1065, 3
  %cmp.n1092 = icmp eq i64 %i.be, %n.vec1065
  br label %.preheader226

bb.b:                                             ; preds = %._crit_edge379
  %indvars.iv.next774 = add nuw nsw i64 %indvars.iv773, 4 ; 3 uses
  %i.bj = or disjoint i64 %indvars.iv.next774, 3
  %i.bk = icmp samesign ult i64 %i.bj, %i.r
  br i1 %i.bk, label %.preheader235, label %.preheader227.loopexit, !llvm.loop !1303

bb.c:                                             ; preds = %.preheader235, %._crit_edge379
  %indvars.iv = phi i64 [ 0, %.preheader235 ], [ %indvars.iv.next, %._crit_edge379 ] ; 3 uses
  %.1656382 = phi ptr [ %.0655384, %.preheader235 ], [ %.5.lcssa, %._crit_edge379 ] ; 2 uses
  %i.bl = load ptr, ptr %0, align 8, !tbaa !18
  %i.bm = load i32, ptr %i.b, align 4, !tbaa !75
  %i.bn = sext i32 %i.bm to i64
  %i.bo = mul nsw i64 %indvars.iv, %i.bn
  %i.bp = load i64, ptr %i.c, align 8, !tbaa !65
  %i.bq = mul i64 %i.bo, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bq
  %i.bs = getelementptr inbounds [2 x i8], ptr %i.br, i64 %i.z ; 10 uses
  %i.bt = load ptr, ptr %1, align 8, !tbaa !18
  %i.bu = load i32, ptr %i.d, align 4, !tbaa !75
  %i.bv = sext i32 %i.bu to i64
  %i.bw = mul nsw i64 %indvars.iv, %i.bv
  %i.bx = load i64, ptr %i.e, align 8, !tbaa !65
  %i.by = mul i64 %i.bw, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.by ; 2 uses
  br i1 %i.f, label %.lr.ph289, label %.preheader234

.preheader234:                                    ; preds = %bb.g, %bb.c
  %.0674.lcssa = phi i32 [ 0, %bb.c ], [ %i.l, %bb.g ] ; 3 uses
  %.0662.lcssa = phi ptr [ %i.bz, %bb.c ], [ %.2664.lcssa, %bb.g ] ; 2 uses
  %.2657.lcssa = phi ptr [ %.1656382, %bb.c ], [ %i.jb, %bb.g ] ; 2 uses
  %i.ca = or disjoint i32 %.0674.lcssa, 3
  %i.cb = icmp slt i32 %i.ca, %4
  br i1 %i.cb, label %.lr.ph326, label %.preheader233

.lr.ph289:                                        ; preds = %bb.c, %bb.g
  %.2657287 = phi ptr [ %i.jb, %bb.g ], [ %.1656382, %bb.c ] ; 17 uses
  %.0662286 = phi ptr [ %.2664.lcssa, %bb.g ], [ %i.bz, %bb.c ] ; 2 uses
  %.0674285 = phi i32 [ %i.jc, %bb.g ], [ 0, %bb.c ]
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph289
  %i.cc = load <2 x i64>, ptr %.2657287, align 16, !tbaa !254
  %i.cd = getelementptr inbounds nuw i8, ptr %.2657287, i64 16
  %i.ce = load <2 x i64>, ptr %i.cd, align 16, !tbaa !254
  %i.cf = getelementptr inbounds nuw i8, ptr %.2657287, i64 32
  %i.cg = load <2 x i64>, ptr %i.cf, align 16, !tbaa !254
  %i.ch = getelementptr inbounds nuw i8, ptr %.2657287, i64 48
  %i.ci = load <2 x i64>, ptr %i.ch, align 16, !tbaa !254
  %i.cj = getelementptr inbounds nuw i8, ptr %.2657287, i64 64
  %i.ck = load <2 x i64>, ptr %i.cj, align 16, !tbaa !254
  %i.cl = getelementptr inbounds nuw i8, ptr %.2657287, i64 80
  %i.cm = load <2 x i64>, ptr %i.cl, align 16, !tbaa !254
  %i.cn = getelementptr inbounds nuw i8, ptr %.2657287, i64 96
  %i.co = load <2 x i64>, ptr %i.cn, align 16, !tbaa !254
  %i.cp = getelementptr inbounds nuw i8, ptr %.2657287, i64 112
  %i.cq = load <2 x i64>, ptr %i.cp, align 16, !tbaa !254
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph289, %bb.d
  %.0205 = phi <2 x i64> [ %i.co, %bb.d ], [ zeroinitializer, %.lr.ph289 ] ; 2 uses
  %.0174 = phi <2 x i64> [ %i.cm, %bb.d ], [ zeroinitializer, %.lr.ph289 ] ; 2 uses
  %.0170 = phi <2 x i64> [ %i.ck, %bb.d ], [ zeroinitializer, %.lr.ph289 ] ; 2 uses
  %.0151 = phi <2 x i64> [ %i.ci, %bb.d ], [ zeroinitializer, %.lr.ph289 ] ; 2 uses
  %.0147 = phi <2 x i64> [ %i.cg, %bb.d ], [ zeroinitializer, %.lr.ph289 ] ; 2 uses
  %.0137 = phi <2 x i64> [ %i.ce, %bb.d ], [ zeroinitializer, %.lr.ph289 ] ; 2 uses
  %.0133 = phi <2 x i64> [ %i.cc, %bb.d ], [ zeroinitializer, %.lr.ph289 ] ; 2 uses
  %storemerge806 = phi <2 x i64> [ %i.cq, %bb.d ], [ zeroinitializer, %.lr.ph289 ] ; 2 uses
  br i1 %i.h, label %.lr.ph.preheader, label %.preheader231

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.cr = bitcast <2 x i64> %.0133 to <4 x i32>
  %i.cs = bitcast <2 x i64> %.0137 to <4 x i32>
  %i.ct = bitcast <2 x i64> %.0147 to <4 x i32>
  %i.cu = bitcast <2 x i64> %.0151 to <4 x i32>
  %i.cv = bitcast <2 x i64> %.0170 to <4 x i32>
  %i.cw = bitcast <2 x i64> %.0174 to <4 x i32>
  %i.cx = bitcast <2 x i64> %.0205 to <4 x i32>
  %i.cy = bitcast <2 x i64> %storemerge806 to <4 x i32>
  br label %.lr.ph

.preheader231.loopexit:                           ; preds = %.lr.ph
  %i.cz = bitcast <4 x i32> %i.ev to <2 x i64>
  %i.da = bitcast <4 x i32> %i.et to <2 x i64>
  %i.db = bitcast <4 x i32> %i.er to <2 x i64>
  %i.dc = bitcast <4 x i32> %i.ep to <2 x i64>
  %i.dd = bitcast <4 x i32> %i.em to <2 x i64>
  %i.de = bitcast <4 x i32> %i.ej to <2 x i64>
  %i.df = bitcast <4 x i32> %i.eg to <2 x i64>
  %i.dg = bitcast <4 x i32> %i.ed to <2 x i64>
  br label %.preheader231

.preheader231:                                    ; preds = %.preheader231.loopexit, %bb.e
  %.0209.lcssa = phi <2 x i64> [ %storemerge806, %bb.e ], [ %i.cz, %.preheader231.loopexit ] ; 2 uses
  %.1206.lcssa = phi <2 x i64> [ %.0205, %bb.e ], [ %i.da, %.preheader231.loopexit ] ; 2 uses
  %.1175.lcssa = phi <2 x i64> [ %.0174, %bb.e ], [ %i.db, %.preheader231.loopexit ] ; 2 uses
  %.1171.lcssa = phi <2 x i64> [ %.0170, %bb.e ], [ %i.dc, %.preheader231.loopexit ] ; 2 uses
  %.1152.lcssa = phi <2 x i64> [ %.0151, %bb.e ], [ %i.dd, %.preheader231.loopexit ] ; 2 uses
  %.1148.lcssa = phi <2 x i64> [ %.0147, %bb.e ], [ %i.de, %.preheader231.loopexit ] ; 2 uses
  %.1138.lcssa = phi <2 x i64> [ %.0137, %bb.e ], [ %i.df, %.preheader231.loopexit ] ; 2 uses
  %.1134.lcssa = phi <2 x i64> [ %.0133, %bb.e ], [ %i.dg, %.preheader231.loopexit ] ; 2 uses
  %.0680.lcssa = phi i32 [ 0, %bb.e ], [ %i.k, %.preheader231.loopexit ] ; 2 uses
  %.0678.lcssa = phi ptr [ %i.bs, %bb.e ], [ %i.ew, %.preheader231.loopexit ]
  %.1663.lcssa = phi ptr [ %.0662286, %bb.e ], [ %i.ex, %.preheader231.loopexit ] ; 2 uses
  %i.dh = icmp slt i32 %.0680.lcssa, %6
  br i1 %i.dh, label %.lr.ph275.preheader, label %._crit_edge

.lr.ph275.preheader:                              ; preds = %.preheader231
  %i.di = bitcast <2 x i64> %.1134.lcssa to <4 x i32>
  %i.dj = bitcast <2 x i64> %.1138.lcssa to <4 x i32>
  %i.dk = bitcast <2 x i64> %.1148.lcssa to <4 x i32>
  %i.dl = bitcast <2 x i64> %.1152.lcssa to <4 x i32>
  %i.dm = bitcast <2 x i64> %.1171.lcssa to <4 x i32>
  %i.dn = bitcast <2 x i64> %.1175.lcssa to <4 x i32>
  %i.do = bitcast <2 x i64> %.1206.lcssa to <4 x i32>
  %i.dp = bitcast <2 x i64> %.0209.lcssa to <4 x i32>
  br label %.lr.ph275

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.1663253 = phi ptr [ %i.ex, %.lr.ph ], [ %.0662286, %.lr.ph.preheader ] ; 3 uses
  %.0678252 = phi ptr [ %i.ew, %.lr.ph ], [ %i.bs, %.lr.ph.preheader ] ; 2 uses
  %.0680251 = phi i32 [ %i.ey, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.1134250 = phi <4 x i32> [ %i.ed, %.lr.ph ], [ %i.cr, %.lr.ph.preheader ]
  %.1138249 = phi <4 x i32> [ %i.eg, %.lr.ph ], [ %i.cs, %.lr.ph.preheader ]
  %.1148248 = phi <4 x i32> [ %i.ej, %.lr.ph ], [ %i.ct, %.lr.ph.preheader ]
  %.1152247 = phi <4 x i32> [ %i.em, %.lr.ph ], [ %i.cu, %.lr.ph.preheader ]
  %.1171246 = phi <4 x i32> [ %i.ep, %.lr.ph ], [ %i.cv, %.lr.ph.preheader ]
  %.1175245 = phi <4 x i32> [ %i.er, %.lr.ph ], [ %i.cw, %.lr.ph.preheader ]
  %.1206244 = phi <4 x i32> [ %i.et, %.lr.ph ], [ %i.cx, %.lr.ph.preheader ]
  %.0209243 = phi <4 x i32> [ %i.ev, %.lr.ph ], [ %i.cy, %.lr.ph.preheader ]
  %i.dq = load <2 x i64>, ptr %.0678252, align 1, !tbaa !254 ; 2 uses
  %i.dr = load <2 x i64>, ptr %.1663253, align 1, !tbaa !254 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.1663253, i64 16
  %i.dt = load <2 x i64>, ptr %i.ds, align 1, !tbaa !254 ; 2 uses
  %i.du = bitcast <2 x i64> %i.dq to <4 x i32>
  %i.dv = shufflevector <4 x i32> %i.du, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.dw = bitcast <2 x i64> %i.dr to <4 x i32>
  %i.dx = shufflevector <4 x i32> %i.dw, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.dy = bitcast <2 x i64> %i.dt to <4 x i32>
  %i.dz = shufflevector <4 x i32> %i.dy, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.ea = bitcast <2 x i64> %i.dq to <8 x i16>    ; 4 uses
  %i.eb = bitcast <2 x i64> %i.dr to <8 x i16>    ; 2 uses
  %i.ec = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ea, <8 x i16> %i.eb)
  %i.ed = add <4 x i32> %i.ec, %.1134250          ; 2 uses
  %i.ee = bitcast <2 x i64> %i.dt to <8 x i16>    ; 2 uses
  %i.ef = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ea, <8 x i16> %i.ee)
  %i.eg = add <4 x i32> %i.ef, %.1138249          ; 2 uses
  %i.eh = bitcast <4 x i32> %i.dx to <8 x i16>    ; 2 uses
  %i.ei = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ea, <8 x i16> %i.eh)
  %i.ej = add <4 x i32> %i.ei, %.1148248          ; 2 uses
  %i.ek = bitcast <4 x i32> %i.dz to <8 x i16>    ; 2 uses
  %i.el = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ea, <8 x i16> %i.ek)
  %i.em = add <4 x i32> %i.el, %.1152247          ; 2 uses
  %i.en = bitcast <4 x i32> %i.dv to <8 x i16>    ; 4 uses
  %i.eo = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.en, <8 x i16> %i.eb)
  %i.ep = add <4 x i32> %i.eo, %.1171246          ; 2 uses
  %i.eq = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.en, <8 x i16> %i.ee)
  %i.er = add <4 x i32> %i.eq, %.1175245          ; 2 uses
  %i.es = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.en, <8 x i16> %i.eh)
  %i.et = add <4 x i32> %i.es, %.1206244          ; 2 uses
  %i.eu = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.en, <8 x i16> %i.ek)
  %i.ev = add <4 x i32> %i.eu, %.0209243          ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.0678252, i64 16 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.1663253, i64 32 ; 2 uses
  %i.ey = add nuw nsw i32 %.0680251, 2            ; 2 uses
  %i.ez = or disjoint i32 %i.ey, 1
end_hunk_4
begin_hunk_5_@_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiib:bb.a
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader229.loopexit.unr-lcssa, label %.lr.ph336, !llvm.loop !1310

.lr.ph347:                                        ; preds = %.lr.ph347.preheader, %.lr.ph347
  %.8670346 = phi ptr [ %i.qf, %.lr.ph347 ], [ %.7669.lcssa, %.lr.ph347.preheader ] ; 2 uses
  %.1694345 = phi ptr [ %i.qe, %.lr.ph347 ], [ %.0693.lcssa, %.lr.ph347.preheader ] ; 2 uses
  %.1696344 = phi i32 [ %i.qg, %.lr.ph347 ], [ %.0695.lcssa, %.lr.ph347.preheader ]
  %.1156343 = phi <4 x i32> [ %i.qd, %.lr.ph347 ], [ %i.oj, %.lr.ph347.preheader ]
  %.2160342 = phi <4 x i32> [ %i.qb, %.lr.ph347 ], [ %i.oi, %.lr.ph347.preheader ]
  %i.pm = load double, ptr %.1694345, align 1, !tbaa !254
  %i.pn = insertelement <2 x double> poison, double %i.pm, i64 0
  %i.po = bitcast <2 x double> %i.pn to <2 x i64>
  %i.pp = shufflevector <2 x i64> %i.po, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.pq = load float, ptr %.8670346, align 1, !tbaa !254
  %i.pr = insertelement <4 x float> poison, float %i.pq, i64 0
  %i.ps = shufflevector <4 x float> %i.pr, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.pt = bitcast <4 x float> %i.ps to <8 x i16>
  %i.pu = shufflevector <8 x i16> %i.pt, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 5, i32 4, i32 5, i32 4> ; 2 uses
  %i.pv = bitcast <2 x i64> %i.pp to <8 x i16>    ; 2 uses
  %i.pw = mul <8 x i16> %i.pu, %i.pv              ; 2 uses
  %i.px = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.pv, <8 x i16> %i.pu) ; 2 uses
  %i.py = shufflevector <8 x i16> %i.pw, <8 x i16> %i.px, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.pz = shufflevector <8 x i16> %i.pw, <8 x i16> %i.px, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.qa = bitcast <8 x i16> %i.py to <4 x i32>
  %i.qb = add <4 x i32> %.2160342, %i.qa          ; 2 uses
  %i.qc = bitcast <8 x i16> %i.pz to <4 x i32>
  %i.qd = add <4 x i32> %.1156343, %i.qc          ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %.1694345, i64 8
  %i.qf = getelementptr inbounds nuw i8, ptr %.8670346, i64 4 ; 2 uses
  %i.qg = add nuw nsw i32 %.1696344, 1            ; 2 uses
  %exitcond767.not = icmp eq i32 %i.qg, %6
  br i1 %exitcond767.not, label %._crit_edge348.loopexit, label %.lr.ph347, !llvm.loop !1311

._crit_edge348.loopexit:                          ; preds = %.lr.ph347
  %i.qh = bitcast <4 x i32> %i.qd to <2 x i64>
  %i.qi = bitcast <4 x i32> %i.qb to <2 x i64>
  br label %._crit_edge348

._crit_edge348:                                   ; preds = %._crit_edge348.loopexit, %.preheader229
  %.2160.lcssa = phi <2 x i64> [ %.1159.lcssa, %.preheader229 ], [ %i.qi, %._crit_edge348.loopexit ] ; 2 uses
  %.1156.lcssa = phi <2 x i64> [ %.0155.lcssa, %.preheader229 ], [ %i.qh, %._crit_edge348.loopexit ] ; 2 uses
  %.8670.lcssa = phi ptr [ %.7669.lcssa, %.preheader229 ], [ %i.qf, %._crit_edge348.loopexit ] ; 2 uses
  %i.qj = bitcast <2 x i64> %.2160.lcssa to <4 x i32> ; 2 uses
  %i.qk = bitcast <2 x i64> %.1156.lcssa to <4 x i32> ; 2 uses
  %i.ql = shufflevector <4 x i32> %i.qj, <4 x i32> %i.qk, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.qm = bitcast <4 x i32> %i.ql to <2 x i64>
  %i.qn = shufflevector <4 x i32> %i.qk, <4 x i32> %i.qj, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.qo = bitcast <4 x i32> %i.qn to <2 x i64>
  %.3161 = select i1 %7, <2 x i64> %i.qm, <2 x i64> %.2160.lcssa
  %.2157 = select i1 %7, <2 x i64> %i.qo, <2 x i64> %.1156.lcssa
  store <2 x i64> %.3161, ptr %.4354, align 16, !tbaa !254
  %i.qp = getelementptr inbounds nuw i8, ptr %.4354, i64 16
  store <2 x i64> %.2157, ptr %i.qp, align 16, !tbaa !254
  %i.qq = getelementptr inbounds nuw i8, ptr %.4354, i64 32 ; 2 uses
  %i.qr = add nuw nsw i32 %.2676352, 2            ; 3 uses
  %i.qs = or disjoint i32 %i.qr, 1
  %i.qt = icmp slt i32 %i.qs, %4
  br i1 %i.qt, label %.lr.ph355, label %.preheader232, !llvm.loop !1312

.lr.ph378:                                        ; preds = %.preheader232, %._crit_edge372
  %.5377 = phi ptr [ %i.so, %._crit_edge372 ], [ %.4.lcssa, %.preheader232 ] ; 3 uses
  %.9671376 = phi ptr [ %.11673.lcssa, %._crit_edge372 ], [ %.6668.lcssa, %.preheader232 ] ; 4 uses
  %.3677375 = phi i32 [ %i.sp, %._crit_edge372 ], [ %.2676.lcssa, %.preheader232 ]
  br i1 %i.g, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph378
  %i.qu = load <4 x i32>, ptr %.5377, align 16, !tbaa !254
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph378, %bb.n
  %i.qv = phi <4 x i32> [ %i.qu, %bb.n ], [ zeroinitializer, %.lr.ph378 ] ; 3 uses
  br i1 %i.h, label %.lr.ph363.preheader, label %.preheader228

.lr.ph363.preheader:                              ; preds = %bb.o
  br i1 %i.x, label %.lr.ph363.epil.preheader, label %.lr.ph363

.preheader228.loopexit.unr-lcssa:                 ; preds = %.lr.ph363
  br i1 %lcmp.mod1388.not.not, label %.lr.ph363.epil.preheader, label %.preheader228.loopexit

.lr.ph363.epil.preheader:                         ; preds = %.preheader228.loopexit.unr-lcssa, %.lr.ph363.preheader
  %.10672361.epil.init = phi ptr [ %.9671376, %.lr.ph363.preheader ], [ %i.ry, %.preheader228.loopexit.unr-lcssa ]
  %.0697360.epil.init = phi ptr [ %i.bs, %.lr.ph363.preheader ], [ %i.rx, %.preheader228.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi <4 x i32> [ %i.qv, %.lr.ph363.preheader ], [ %i.rw, %.preheader228.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1391)
  %i.qw = load <8 x i16>, ptr %.0697360.epil.init, align 1, !tbaa !254
  %i.qx = load float, ptr %.10672361.epil.init, align 1, !tbaa !254
  %i.qy = insertelement <4 x float> poison, float %i.qx, i64 0
  %i.qz = shufflevector <4 x float> %i.qy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ra = bitcast <4 x float> %i.qz to <8 x i16>
  %i.rb = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.qw, <8 x i16> %i.ra)
  %i.rc = add <4 x i32> %i.rb, %.epil.init
  %i.rd = getelementptr inbounds nuw i8, ptr %.0697360.epil.init, i64 16
  br label %.preheader228.loopexit

.preheader228.loopexit:                           ; preds = %.preheader228.loopexit.unr-lcssa, %.lr.ph363.epil.preheader
  %.lcssa1379 = phi <4 x i32> [ %i.rw, %.preheader228.loopexit.unr-lcssa ], [ %i.rc, %.lr.ph363.epil.preheader ]
  %.lcssa1378 = phi ptr [ %i.rx, %.preheader228.loopexit.unr-lcssa ], [ %i.rd, %.lr.ph363.epil.preheader ]
  %i.re = getelementptr i8, ptr %.9671376, i64 %i.q
  %scevgep768 = getelementptr i8, ptr %i.re, i64 4
  br label %.preheader228

.preheader228:                                    ; preds = %.preheader228.loopexit, %bb.o
  %.lcssa241 = phi <4 x i32> [ %i.qv, %bb.o ], [ %.lcssa1379, %.preheader228.loopexit ] ; 2 uses
  %.0699.lcssa = phi i32 [ 0, %bb.o ], [ %i.k, %.preheader228.loopexit ] ; 2 uses
  %.0697.lcssa = phi ptr [ %i.bs, %bb.o ], [ %.lcssa1378, %.preheader228.loopexit ]
  %.10672.lcssa = phi ptr [ %.9671376, %bb.o ], [ %scevgep768, %.preheader228.loopexit ] ; 2 uses
  %i.rf = icmp slt i32 %.0699.lcssa, %6
  br i1 %i.rf, label %.lr.ph371, label %._crit_edge372

.lr.ph363:                                        ; preds = %.lr.ph363.preheader, %.lr.ph363
  %.10672361 = phi ptr [ %i.ry, %.lr.ph363 ], [ %.9671376, %.lr.ph363.preheader ] ; 3 uses
  %.0697360 = phi ptr [ %i.rx, %.lr.ph363 ], [ %i.bs, %.lr.ph363.preheader ] ; 3 uses
  %i.rg = phi <4 x i32> [ %i.rw, %.lr.ph363 ], [ %i.qv, %.lr.ph363.preheader ]
  %niter1393 = phi i32 [ %niter1393.next.1, %.lr.ph363 ], [ 0, %.lr.ph363.preheader ]
  %i.rh = load <8 x i16>, ptr %.0697360, align 1, !tbaa !254
  %i.ri = load float, ptr %.10672361, align 1, !tbaa !254
  %i.rj = insertelement <4 x float> poison, float %i.ri, i64 0
  %i.rk = shufflevector <4 x float> %i.rj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rl = bitcast <4 x float> %i.rk to <8 x i16>
  %i.rm = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.rh, <8 x i16> %i.rl)
  %i.rn = add <4 x i32> %i.rm, %i.rg
  %i.ro = getelementptr inbounds nuw i8, ptr %.0697360, i64 16
  %i.rp = getelementptr inbounds nuw i8, ptr %.10672361, i64 4
  %i.rq = load <8 x i16>, ptr %i.ro, align 1, !tbaa !254
  %i.rr = load float, ptr %i.rp, align 1, !tbaa !254
  %i.rs = insertelement <4 x float> poison, float %i.rr, i64 0
  %i.rt = shufflevector <4 x float> %i.rs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ru = bitcast <4 x float> %i.rt to <8 x i16>
  %i.rv = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.rq, <8 x i16> %i.ru)
  %i.rw = add <4 x i32> %i.rv, %i.rn              ; 3 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %.0697360, i64 32 ; 3 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %.10672361, i64 8 ; 2 uses
  %niter1393.next.1 = add nuw nsw i32 %niter1393, 2 ; 2 uses
  %niter1393.ncmp.1.not = icmp eq i32 %niter1393.next.1, %unroll_iter1392
  br i1 %niter1393.ncmp.1.not, label %.preheader228.loopexit.unr-lcssa, label %.lr.ph363, !llvm.loop !1313

.lr.ph371:                                        ; preds = %.preheader228, %.lr.ph371
  %.11673370 = phi ptr [ %i.sm, %.lr.ph371 ], [ %.10672.lcssa, %.preheader228 ] ; 2 uses
  %.1698369 = phi ptr [ %i.sl, %.lr.ph371 ], [ %.0697.lcssa, %.preheader228 ] ; 2 uses
  %.1700368 = phi i32 [ %i.sn, %.lr.ph371 ], [ %.0699.lcssa, %.preheader228 ]
  %i.rz = phi <4 x i32> [ %i.sk, %.lr.ph371 ], [ %.lcssa241, %.preheader228 ]
  %i.sa = load i64, ptr %.1698369, align 1, !tbaa !254
  %i.sb = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.sa, i64 0
  %i.sc = load i16, ptr %.11673370, align 2, !tbaa !394
  %i.sd = insertelement <8 x i16> poison, i16 %i.sc, i64 0
  %i.se = shufflevector <8 x i16> %i.sd, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.sf = bitcast <2 x i64> %i.sb to <8 x i16>    ; 2 uses
  %i.sg = mul <8 x i16> %i.se, %i.sf
  %i.sh = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.sf, <8 x i16> %i.se)
  %i.si = shufflevector <8 x i16> %i.sg, <8 x i16> %i.sh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.sj = bitcast <8 x i16> %i.si to <4 x i32>
  %i.sk = add <4 x i32> %i.rz, %i.sj              ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %.1698369, i64 8
  %i.sm = getelementptr inbounds nuw i8, ptr %.11673370, i64 2 ; 2 uses
  %i.sn = add nuw nsw i32 %.1700368, 1            ; 2 uses
  %exitcond769.not = icmp eq i32 %i.sn, %6
  br i1 %exitcond769.not, label %._crit_edge372, label %.lr.ph371, !llvm.loop !1314

._crit_edge372:                                   ; preds = %.lr.ph371, %.preheader228
  %.lcssa242 = phi <4 x i32> [ %.lcssa241, %.preheader228 ], [ %i.sk, %.lr.ph371 ]
  %.11673.lcssa = phi ptr [ %.10672.lcssa, %.preheader228 ], [ %i.sm, %.lr.ph371 ]
  store <4 x i32> %.lcssa242, ptr %.5377, align 16, !tbaa !254
  %i.so = getelementptr inbounds nuw i8, ptr %.5377, i64 16 ; 2 uses
  %i.sp = add nuw nsw i32 %.3677375, 1            ; 2 uses
  %exitcond770.not = icmp eq i32 %i.sp, %4
  br i1 %exitcond770.not, label %._crit_edge379, label %.lr.ph378, !llvm.loop !1315

._crit_edge379:                                   ; preds = %._crit_edge372, %.preheader232
  %.5.lcssa = phi ptr [ %.4.lcssa, %.preheader232 ], [ %i.so, %._crit_edge372 ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond772.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond772.not, label %bb.b, label %bb.c, !llvm.loop !1316

.preheader226:                                    ; preds = %.preheader226.lr.ph, %bb.p
  %indvars.iv789 = phi i64 [ %i.at, %.preheader226.lr.ph ], [ %indvars.iv.next790, %bb.p ] ; 2 uses
  %.6522 = phi ptr [ %.0655.lcssa, %.preheader226.lr.ph ], [ %.11.lcssa, %bb.p ]
  %i.sq = mul nsw i64 %indvars.iv789, %i.av
  br label %bb.q

.preheader218.loopexit:                           ; preds = %bb.p
  %i.sr = trunc nuw nsw i64 %indvars.iv.next790 to i32
  br label %.preheader218

.preheader218:                                    ; preds = %.preheader218.loopexit, %.preheader227
  %.1659.lcssa = phi i32 [ %.0658.lcssa, %.preheader227 ], [ %i.sr, %.preheader218.loopexit ] ; 2 uses
  %.6.lcssa = phi ptr [ %.0655.lcssa, %.preheader227 ], [ %.11.lcssa, %.preheader218.loopexit ]
  %i.ss = icmp slt i32 %.1659.lcssa, %3
  br i1 %i.ss, label %.preheader217.lr.ph, label %._crit_edge627

.preheader217.lr.ph:                              ; preds = %.preheader218
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.sv = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.sw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.sx = icmp sgt i32 %4, 7
  %i.sy = icmp eq i32 %5, 0                       ; 5 uses
  %i.sz = icmp sgt i32 %6, 1                      ; 3 uses
  %i.ta = icmp sgt i32 %6, 0
  %i.tb = add i32 %6, -2                          ; 3 uses
  %i.tc = and i32 %i.tb, -2
  %i.td = add nuw nsw i32 %i.tc, 2                ; 4 uses
  %i.te = and i32 %4, -8
  %i.tf = lshr i32 %i.tb, 1
  %i.tg = zext nneg i32 %i.tf to i64              ; 3 uses
  %i.th = shl nuw nsw i64 %i.tg, 4
  %i.ti = shl nuw nsw i64 %i.tg, 3
  %i.tj = add i32 %4, -1                          ; 2 uses
  %i.tk = add i32 %6, -1
  %i.tl = zext i32 %i.tk to i64
  %i.tm = shl nuw nsw i64 %i.tl, 1
  %i.tn = zext nneg i32 %.1659.lcssa to i64
  %i.to = sext i32 %6 to i64
  %wide.trip.count812 = zext i32 %3 to i64
  %wide.trip.count807 = zext nneg i32 %2 to i64
  %i.tp = add i32 %6, -2                          ; 3 uses
  %i.tq = lshr i32 %i.tp, 1                       ; 3 uses
  %i.tr = add nuw i32 %i.tq, 1                    ; 4 uses
  %i.ts = icmp eq i32 %i.tq, 0
  %unroll_iter1413 = and i32 %i.tr, -2
  %i.tt = and i32 %i.tp, 2
  %lcmp.mod1407.not.not = icmp eq i32 %i.tt, 0
  %lcmp.mod1412 = trunc i32 %i.tr to i1
  %i.tu = icmp eq i32 %i.tq, 0
  %unroll_iter1422 = and i32 %i.tr, -2
  %i.tv = and i32 %i.tp, 2
  %lcmp.mod1418.not.not = icmp eq i32 %i.tv, 0
  %lcmp.mod1421 = trunc i32 %i.tr to i1
  %i.tw = add nuw nsw i64 %i.tg, 1                ; 2 uses
  %min.iters.check1208 = icmp ult i32 %i.tb, 14
  %n.vec1210 = and i64 %i.tw, 4294967288          ; 5 uses
  %i.tx = trunc nuw i64 %n.vec1210 to i32
  %i.ty = shl i32 %i.tx, 1
  %i.tz = shl nuw nsw i64 %n.vec1210, 2
  %i.ua = shl nuw nsw i64 %n.vec1210, 3
  %cmp.n1237 = icmp eq i64 %i.tw, %n.vec1210
  %i.ub = zext nneg i32 %6 to i64                 ; 2 uses
  %min.iters.check1155 = icmp ult i32 %6, 8
  %n.vec1157 = and i64 %i.ub, 2147483640          ; 4 uses
  %i.uc = trunc nuw nsw i64 %n.vec1157 to i32
  %i.ud = shl nuw nsw i64 %n.vec1157, 1           ; 2 uses
  %cmp.n1171 = icmp eq i64 %n.vec1157, %i.ub
  br label %.preheader217

bb.p:                                             ; preds = %._crit_edge517
  %indvars.iv.next790 = add nuw nsw i64 %indvars.iv789, 2 ; 3 uses
  %i.ue = icmp slt i64 %indvars.iv.next790, %invariant.op
  br i1 %i.ue, label %.preheader226, label %.preheader218.loopexit, !llvm.loop !1317

bb.q:                                             ; preds = %.preheader226, %._crit_edge517
  %indvars.iv784 = phi i64 [ 0, %.preheader226 ], [ %indvars.iv.next785, %._crit_edge517 ] ; 3 uses
  %.7520 = phi ptr [ %.6522, %.preheader226 ], [ %.11.lcssa, %._crit_edge517 ] ; 2 uses
  %i.uf = load ptr, ptr %0, align 8, !tbaa !18
  %i.ug = load i32, ptr %i.ad, align 4, !tbaa !75
  %i.uh = sext i32 %i.ug to i64
  %i.ui = mul nsw i64 %indvars.iv784, %i.uh
  %i.uj = load i64, ptr %i.ae, align 8, !tbaa !65
  %i.uk = mul i64 %i.ui, %i.uj
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uf, i64 %i.uk
  %i.um = getelementptr inbounds [2 x i8], ptr %i.ul, i64 %i.sq ; 23 uses
  %i.un = load ptr, ptr %1, align 8, !tbaa !18
  %i.uo = load i32, ptr %i.af, align 4, !tbaa !75
  %i.up = sext i32 %i.uo to i64
  %i.uq = mul nsw i64 %indvars.iv784, %i.up
  %i.ur = load i64, ptr %i.ag, align 8, !tbaa !65
  %i.us = mul i64 %i.uq, %i.ur
  %i.ut = getelementptr inbounds nuw i8, ptr %i.un, i64 %i.us ; 2 uses
  br i1 %i.ah, label %.lr.ph421, label %.preheader225

.preheader225:                                    ; preds = %bb.u, %bb.q
  %.0714.lcssa = phi i32 [ 0, %bb.q ], [ %i.an, %bb.u ] ; 3 uses
  %.0702.lcssa = phi ptr [ %i.ut, %bb.q ], [ %.2704.lcssa, %bb.u ] ; 2 uses
  %.8.lcssa = phi ptr [ %.7520, %bb.q ], [ %i.yj, %bb.u ] ; 2 uses
  %i.uu = or disjoint i32 %.0714.lcssa, 3
  %i.uv = icmp slt i32 %i.uu, %4
  br i1 %i.uv, label %.lr.ph450, label %.preheader224

.lr.ph421:                                        ; preds = %bb.q, %bb.u
  %.8419 = phi ptr [ %i.yj, %bb.u ], [ %.7520, %bb.q ] ; 9 uses
  %.0702418 = phi ptr [ %.2704.lcssa, %bb.u ], [ %i.ut, %bb.q ] ; 2 uses
  %.0714417 = phi i32 [ %i.yk, %bb.u ], [ 0, %bb.q ]
  br i1 %i.ai, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph421
  %i.uw = load <2 x i64>, ptr %.8419, align 1, !tbaa !254
  %i.ux = getelementptr inbounds nuw i8, ptr %.8419, i64 16
  %i.uy = load <2 x i64>, ptr %i.ux, align 1, !tbaa !254
  %i.uz = getelementptr inbounds nuw i8, ptr %.8419, i64 32
  %i.va = load <2 x i64>, ptr %i.uz, align 1, !tbaa !254
  %i.vb = getelementptr inbounds nuw i8, ptr %.8419, i64 48
  %i.vc = load <2 x i64>, ptr %i.vb, align 1, !tbaa !254
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph421, %bb.r
  %.0784 = phi <2 x i64> [ %i.vc, %bb.r ], [ zeroinitializer, %.lr.ph421 ] ; 2 uses
  %.0780 = phi <2 x i64> [ %i.va, %bb.r ], [ zeroinitializer, %.lr.ph421 ] ; 2 uses
  %.0776 = phi <2 x i64> [ %i.uy, %bb.r ], [ zeroinitializer, %.lr.ph421 ] ; 2 uses
  %.0772 = phi <2 x i64> [ %i.uw, %bb.r ], [ zeroinitializer, %.lr.ph421 ] ; 2 uses
  br i1 %i.aj, label %.lr.ph395.preheader, label %.preheader222

.lr.ph395.preheader:                              ; preds = %bb.s
  %i.vd = bitcast <2 x i64> %.0772 to <4 x i32>
  %i.ve = bitcast <2 x i64> %.0776 to <4 x i32>
  %i.vf = bitcast <2 x i64> %.0780 to <4 x i32>
  %i.vg = bitcast <2 x i64> %.0784 to <4 x i32>
  br label %.lr.ph395

.preheader222.loopexit:                           ; preds = %.lr.ph395
  %i.vh = bitcast <4 x i32> %i.wj to <2 x i64>
  %i.vi = bitcast <4 x i32> %i.wh to <2 x i64>
  %i.vj = bitcast <4 x i32> %i.we to <2 x i64>
  %i.vk = bitcast <4 x i32> %i.wc to <2 x i64>
  br label %.preheader222

.preheader222:                                    ; preds = %.preheader222.loopexit, %bb.s
  %.0788.lcssa = phi i32 [ 0, %bb.s ], [ %i.am, %.preheader222.loopexit ] ; 2 uses
  %.1785.lcssa = phi <2 x i64> [ %.0784, %bb.s ], [ %i.vh, %.preheader222.loopexit ] ; 2 uses
  %.1781.lcssa = phi <2 x i64> [ %.0780, %bb.s ], [ %i.vi, %.preheader222.loopexit ] ; 2 uses
  %.1777.lcssa = phi <2 x i64> [ %.0776, %bb.s ], [ %i.vj, %.preheader222.loopexit ] ; 2 uses
  %.1773.lcssa = phi <2 x i64> [ %.0772, %bb.s ], [ %i.vk, %.preheader222.loopexit ] ; 2 uses
  %.0743.lcssa = phi ptr [ %i.um, %bb.s ], [ %i.wk, %.preheader222.loopexit ]
  %.1703.lcssa = phi ptr [ %.0702418, %bb.s ], [ %i.wl, %.preheader222.loopexit ] ; 2 uses
  %i.vl = icmp slt i32 %.0788.lcssa, %6
  br i1 %i.vl, label %.lr.ph410.preheader, label %._crit_edge411

.lr.ph410.preheader:                              ; preds = %.preheader222
  %i.vm = bitcast <2 x i64> %.1773.lcssa to <4 x i32>
  %i.vn = bitcast <2 x i64> %.1777.lcssa to <4 x i32>
  %i.vo = bitcast <2 x i64> %.1781.lcssa to <4 x i32>
  %i.vp = bitcast <2 x i64> %.1785.lcssa to <4 x i32>
  br label %.lr.ph410

.lr.ph395:                                        ; preds = %.lr.ph395.preheader, %.lr.ph395
  %.1703393 = phi ptr [ %i.wl, %.lr.ph395 ], [ %.0702418, %.lr.ph395.preheader ] ; 3 uses
  %.0743392 = phi ptr [ %i.wk, %.lr.ph395 ], [ %i.um, %.lr.ph395.preheader ] ; 3 uses
  %.1773391 = phi <4 x i32> [ %i.wc, %.lr.ph395 ], [ %i.vd, %.lr.ph395.preheader ]
  %.1777390 = phi <4 x i32> [ %i.we, %.lr.ph395 ], [ %i.ve, %.lr.ph395.preheader ]
  %.1781389 = phi <4 x i32> [ %i.wh, %.lr.ph395 ], [ %i.vf, %.lr.ph395.preheader ]
  %.1785388 = phi <4 x i32> [ %i.wj, %.lr.ph395 ], [ %i.vg, %.lr.ph395.preheader ]
  %.0788387 = phi i32 [ %i.wm, %.lr.ph395 ], [ 0, %.lr.ph395.preheader ]
  %i.vq = load float, ptr %.0743392, align 1, !tbaa !254
  %i.vr = insertelement <4 x float> poison, float %i.vq, i64 0
  %i.vs = shufflevector <4 x float> %i.vr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vt = getelementptr inbounds nuw i8, ptr %.0743392, i64 4
  %i.vu = load float, ptr %i.vt, align 1, !tbaa !254
  %i.vv = insertelement <4 x float> poison, float %i.vu, i64 0
  %i.vw = shufflevector <4 x float> %i.vv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vx = load <8 x i16>, ptr %.1703393, align 1, !tbaa !254 ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %.1703393, i64 16
  %i.vz = load <8 x i16>, ptr %i.vy, align 1, !tbaa !254 ; 2 uses
  %i.wa = bitcast <4 x float> %i.vs to <8 x i16>  ; 2 uses
  %i.wb = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.wa, <8 x i16> %i.vx)
  %i.wc = add <4 x i32> %i.wb, %.1773391          ; 2 uses
  %i.wd = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.wa, <8 x i16> %i.vz)
  %i.we = add <4 x i32> %i.wd, %.1777390          ; 2 uses
  %i.wf = bitcast <4 x float> %i.vw to <8 x i16>  ; 2 uses
  %i.wg = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.wf, <8 x i16> %i.vx)
  %i.wh = add <4 x i32> %i.wg, %.1781389          ; 2 uses
  %i.wi = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.wf, <8 x i16> %i.vz)
  %i.wj = add <4 x i32> %i.wi, %.1785388          ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %.0743392, i64 8 ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %.1703393, i64 32 ; 2 uses
  %i.wm = add nuw nsw i32 %.0788387, 2            ; 2 uses
  %i.wn = or disjoint i32 %i.wm, 1
  %i.wo = icmp slt i32 %i.wn, %6
  br i1 %i.wo, label %.lr.ph395, label %.preheader222.loopexit, !llvm.loop !1318

.lr.ph410:                                        ; preds = %.lr.ph410.preheader, %.lr.ph410
  %.2704409 = phi ptr [ %i.xo, %.lr.ph410 ], [ %.1703.lcssa, %.lr.ph410.preheader ] ; 2 uses
  %.1744408 = phi ptr [ %i.xn, %.lr.ph410 ], [ %.0743.lcssa, %.lr.ph410.preheader ] ; 3 uses
  %.2774407 = phi <4 x i32> [ %i.xg, %.lr.ph410 ], [ %i.vm, %.lr.ph410.preheader ]
  %.2778406 = phi <4 x i32> [ %i.xi, %.lr.ph410 ], [ %i.vn, %.lr.ph410.preheader ]
  %.2782405 = phi <4 x i32> [ %i.xk, %.lr.ph410 ], [ %i.vo, %.lr.ph410.preheader ]
  %.2786404 = phi <4 x i32> [ %i.xm, %.lr.ph410 ], [ %i.vp, %.lr.ph410.preheader ]
  %.1789403 = phi i32 [ %i.xp, %.lr.ph410 ], [ %.0788.lcssa, %.lr.ph410.preheader ]
  %i.wp = load <8 x i16>, ptr %.2704409, align 16, !tbaa !254 ; 4 uses
  %i.wq = load i16, ptr %.1744408, align 2, !tbaa !394
  %i.wr = insertelement <8 x i16> poison, i16 %i.wq, i64 0
  %i.ws = shufflevector <8 x i16> %i.wr, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %.1744408, i64 2
  %i.wu = load i16, ptr %i.wt, align 2, !tbaa !394
  %i.wv = insertelement <8 x i16> poison, i16 %i.wu, i64 0
  %i.ww = shufflevector <8 x i16> %i.wv, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.wx = mul <8 x i16> %i.ws, %i.wp              ; 2 uses
  %i.wy = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.ws, <8 x i16> %i.wp) ; 2 uses
  %i.wz = mul <8 x i16> %i.ww, %i.wp              ; 2 uses
  %i.xa = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.ww, <8 x i16> %i.wp) ; 2 uses
  %i.xb = shufflevector <8 x i16> %i.wx, <8 x i16> %i.wy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.xc = shufflevector <8 x i16> %i.wx, <8 x i16> %i.wy, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.xd = shufflevector <8 x i16> %i.wz, <8 x i16> %i.xa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.xe = shufflevector <8 x i16> %i.wz, <8 x i16> %i.xa, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.xf = bitcast <8 x i16> %i.xb to <4 x i32>
  %i.xg = add <4 x i32> %.2774407, %i.xf          ; 2 uses
  %i.xh = bitcast <8 x i16> %i.xc to <4 x i32>
  %i.xi = add <4 x i32> %.2778406, %i.xh          ; 2 uses
  %i.xj = bitcast <8 x i16> %i.xd to <4 x i32>
  %i.xk = add <4 x i32> %.2782405, %i.xj          ; 2 uses
  %i.xl = bitcast <8 x i16> %i.xe to <4 x i32>
  %i.xm = add <4 x i32> %.2786404, %i.xl          ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %.1744408, i64 4
  %i.xo = getelementptr inbounds nuw i8, ptr %.2704409, i64 16 ; 2 uses
  %i.xp = add nuw nsw i32 %.1789403, 1            ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN4ncnnL28convolution_im2col_gemm_int8ERKNS_3MatERS0_S2_iiiiiiiRKNS_6OptionE.omp_outlined:bb.a
.lr.ph.i.us.us.i:                                 ; preds = %.lr.ph.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit271.i.us.us.i
  %.1132.i.us.us.i = phi ptr [ %i.cy, %.lr.ph.i.us.us.i ], [ %.0233146.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit271.i.us.us.i ] ; 5 uses
  %.0244131.i.us.us.i = phi ptr [ %i.cz, %.lr.ph.i.us.us.i ], [ %i.cb, %_ZN4ncnn3MatD2Ev.exit271.i.us.us.i ] ; 5 uses
  %.0245130.i.us.us.i = phi i32 [ %i.da, %.lr.ph.i.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit271.i.us.us.i ]
  %i.cc = load <8 x i16>, ptr %.0244131.i.us.us.i, align 1, !tbaa !254 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.0244131.i.us.us.i, i64 16
  %i.ce = load <8 x i16>, ptr %i.cd, align 1, !tbaa !254 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0244131.i.us.us.i, i64 32
  %i.cg = load <8 x i16>, ptr %i.cf, align 1, !tbaa !254 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0244131.i.us.us.i, i64 48
  %i.ci = load <8 x i16>, ptr %i.ch, align 1, !tbaa !254 ; 2 uses
  %i.cj = shufflevector <8 x i16> %i.cc, <8 x i16> %i.ce, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.ck = bitcast <8 x i16> %i.cj to <2 x i64>    ; 2 uses
  %i.cl = shufflevector <8 x i16> %i.cc, <8 x i16> %i.ce, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %i.cm = bitcast <8 x i16> %i.cl to <2 x i64>    ; 2 uses
  %i.cn = shufflevector <8 x i16> %i.cg, <8 x i16> %i.ci, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.co = bitcast <8 x i16> %i.cn to <2 x i64>    ; 2 uses
  %i.cp = shufflevector <8 x i16> %i.cg, <8 x i16> %i.ci, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %i.cq = bitcast <8 x i16> %i.cp to <2 x i64>    ; 2 uses
  %i.cr = shufflevector <2 x i64> %i.ck, <2 x i64> %i.co, <2 x i32> <i32 0, i32 2>
  %i.cs = shufflevector <2 x i64> %i.ck, <2 x i64> %i.co, <2 x i32> <i32 1, i32 3>
  %i.ct = shufflevector <2 x i64> %i.cm, <2 x i64> %i.cq, <2 x i32> <i32 0, i32 2>
  %i.cu = shufflevector <2 x i64> %i.cm, <2 x i64> %i.cq, <2 x i32> <i32 1, i32 3>
  store <2 x i64> %i.cr, ptr %.1132.i.us.us.i, align 16, !tbaa !254
  %i.cv = getelementptr inbounds nuw i8, ptr %.1132.i.us.us.i, i64 16
  store <2 x i64> %i.cs, ptr %i.cv, align 16, !tbaa !254
  %i.cw = getelementptr inbounds nuw i8, ptr %.1132.i.us.us.i, i64 32
  store <2 x i64> %i.ct, ptr %i.cw, align 16, !tbaa !254
  %i.cx = getelementptr inbounds nuw i8, ptr %.1132.i.us.us.i, i64 48
  store <2 x i64> %i.cu, ptr %i.cx, align 16, !tbaa !254
  %i.cy = getelementptr inbounds nuw i8, ptr %.1132.i.us.us.i, i64 64 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.0244131.i.us.us.i, i64 %i.bj
  %i.da = add nuw nsw i32 %.0245130.i.us.us.i, 1  ; 2 uses
  %exitcond.not.i.us.us.i = icmp eq i32 %i.da, %i.bi
  br i1 %exitcond.not.i.us.us.i, label %.loopexit128.i.loopexit.us.us.i, label %.lr.ph.i.us.us.i, !llvm.loop !1436

.loopexit128.i.loopexit.us.us.i:                  ; preds = %.lr.ph.i.us.us.i
  %indvars.iv.next.i.us.us.i = add nuw nsw i64 %indvars.iv.i.us.us.i, 8 ; 3 uses
  %i.db = or disjoint i64 %indvars.iv.next.i.us.us.i, 7
  %i.dc = icmp samesign ult i64 %i.db, %i.bo
  br i1 %i.dc, label %_ZN4ncnn3MatD2Ev.exit271.i.us.us.i, label %.preheader126.loopexit.i.i, !llvm.loop !1437

_ZN4ncnn3MatD2Ev.exit270.i.us.i:                  ; preds = %.lr.ph147.i.i, %.loopexit128.i.us64.i
  %indvars.iv.i.us62.i = phi i64 [ %indvars.iv.next.i.us66.i, %.loopexit128.i.us64.i ], [ 0, %.lr.ph147.i.i ] ; 2 uses
  %.0233146.i.us63.i = phi ptr [ %.5.i.us65.i, %.loopexit128.i.us64.i ], [ %i.ap, %.lr.ph147.i.i ] ; 2 uses
  %i.dd = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1438
  %i.de = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !1438
  %i.df = mul i64 %i.de, %i.bk
  %i.dg = load i64, ptr %i.r, align 8, !tbaa !65, !noalias !1438
  %i.dh = mul i64 %i.df, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dh
  %i.dj = getelementptr i8, ptr %i.di, i64 %indvars.iv.i.us62.i
  %i.dk = getelementptr i8, ptr %i.dj, i64 %i.bp  ; 2 uses
  br i1 %i.bl, label %.lr.ph136.i.us.i, label %.preheader127.i.us.i

.lr.ph136.i.us.i:                                 ; preds = %_ZN4ncnn3MatD2Ev.exit270.i.us.i, %.lr.ph136.i.us.i
  %.3135.i.us.i = phi ptr [ %i.dt, %.lr.ph136.i.us.i ], [ %.0233146.i.us63.i, %_ZN4ncnn3MatD2Ev.exit270.i.us.i ] ; 2 uses
  %.0252134.i.us.i = phi ptr [ %i.du, %.lr.ph136.i.us.i ], [ %i.dk, %_ZN4ncnn3MatD2Ev.exit270.i.us.i ] ; 3 uses
  %.0254133.i.us.i = phi i32 [ %i.dv, %.lr.ph136.i.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit270.i.us.i ]
  %i.dl = load i64, ptr %.0252134.i.us.i, align 1, !tbaa !254
  %i.dm = insertelement <2 x i64> poison, i64 %i.dl, i64 0
  %i.dn = getelementptr inbounds nuw i8, ptr %.0252134.i.us.i, i64 %i.bd
  %i.do = load i64, ptr %i.dn, align 1, !tbaa !254
  %i.dp = insertelement <2 x i64> poison, i64 %i.do, i64 0
  %i.dq = bitcast <2 x i64> %i.dm to <16 x i8>
  %i.dr = bitcast <2 x i64> %i.dp to <16 x i8>
  %i.ds = shufflevector <16 x i8> %i.dq, <16 x i8> %i.dr, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.ds, ptr %.3135.i.us.i, align 1, !tbaa !254
  %i.dt = getelementptr inbounds nuw i8, ptr %.3135.i.us.i, i64 16 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.0252134.i.us.i, i64 %i.bm ; 2 uses
  %i.dv = add nuw nsw i32 %.0254133.i.us.i, 2     ; 2 uses
  %i.dw = or disjoint i32 %i.dv, 1
  %i.dx = icmp slt i32 %i.dw, %.sroa.speculated
  br i1 %i.dx, label %.lr.ph136.i.us.i, label %.preheader127.i.us.i, !llvm.loop !1441

.preheader127.i.us.i:                             ; preds = %.lr.ph136.i.us.i, %_ZN4ncnn3MatD2Ev.exit270.i.us.i
  %.0254.lcssa.i.us.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit270.i.us.i ], [ %i.bn, %.lr.ph136.i.us.i ] ; 5 uses
  %.0252.lcssa.i.us.i = phi ptr [ %i.dk, %_ZN4ncnn3MatD2Ev.exit270.i.us.i ], [ %i.du, %.lr.ph136.i.us.i ] ; 2 uses
  %.3.lcssa.i.us.i = phi ptr [ %.0233146.i.us63.i, %_ZN4ncnn3MatD2Ev.exit270.i.us.i ], [ %i.dt, %.lr.ph136.i.us.i ] ; 3 uses
  %i.dy = icmp slt i32 %.0254.lcssa.i.us.i, %.sroa.speculated
  br i1 %i.dy, label %.lr.ph143.i.us.i.preheader, label %.loopexit128.i.us64.i

.lr.ph143.i.us.i.preheader:                       ; preds = %.preheader127.i.us.i
  %i.dz = sub i32 %.sroa.speculated, %.0254.lcssa.i.us.i
  %xtraiter = and i32 %i.dz, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph143.i.us.i.prol.loopexit, label %.lr.ph143.i.us.i.prol

.lr.ph143.i.us.i.prol:                            ; preds = %.lr.ph143.i.us.i.preheader, %.lr.ph143.i.us.i.prol
  %.4142.i.us.i.prol = phi ptr [ %i.eb, %.lr.ph143.i.us.i.prol ], [ %.3.lcssa.i.us.i, %.lr.ph143.i.us.i.preheader ] ; 2 uses
  %.1253141.i.us.i.prol = phi ptr [ %i.ec, %.lr.ph143.i.us.i.prol ], [ %.0252.lcssa.i.us.i, %.lr.ph143.i.us.i.preheader ] ; 2 uses
  %.1255140.i.us.i.prol = phi i32 [ %i.ed, %.lr.ph143.i.us.i.prol ], [ %.0254.lcssa.i.us.i, %.lr.ph143.i.us.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph143.i.us.i.prol ], [ 0, %.lr.ph143.i.us.i.preheader ]
  %i.ea = load i64, ptr %.1253141.i.us.i.prol, align 1, !tbaa !254
  store i64 %i.ea, ptr %.4142.i.us.i.prol, align 1, !tbaa !254
  %i.eb = getelementptr inbounds nuw i8, ptr %.4142.i.us.i.prol, i64 8 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.1253141.i.us.i.prol, i64 %i.bd ; 2 uses
  %i.ed = add nuw nsw i32 %.1255140.i.us.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph143.i.us.i.prol.loopexit, label %.lr.ph143.i.us.i.prol, !llvm.loop !1442

.lr.ph143.i.us.i.prol.loopexit:                   ; preds = %.lr.ph143.i.us.i.prol, %.lr.ph143.i.us.i.preheader
  %.lcssa394.unr = phi ptr [ poison, %.lr.ph143.i.us.i.preheader ], [ %i.eb, %.lr.ph143.i.us.i.prol ]
  %.4142.i.us.i.unr = phi ptr [ %.3.lcssa.i.us.i, %.lr.ph143.i.us.i.preheader ], [ %i.eb, %.lr.ph143.i.us.i.prol ]
  %.1253141.i.us.i.unr = phi ptr [ %.0252.lcssa.i.us.i, %.lr.ph143.i.us.i.preheader ], [ %i.ec, %.lr.ph143.i.us.i.prol ]
  %.1255140.i.us.i.unr = phi i32 [ %.0254.lcssa.i.us.i, %.lr.ph143.i.us.i.preheader ], [ %i.ed, %.lr.ph143.i.us.i.prol ]
  %i.ee = sub i32 %.0254.lcssa.i.us.i, %.sroa.speculated
  %i.ef = icmp ugt i32 %i.ee, -8
  br i1 %i.ef, label %.loopexit128.i.us64.i, label %.lr.ph143.i.us.i

.lr.ph143.i.us.i:                                 ; preds = %.lr.ph143.i.us.i.prol.loopexit, %.lr.ph143.i.us.i
  %.4142.i.us.i = phi ptr [ %i.fc, %.lr.ph143.i.us.i ], [ %.4142.i.us.i.unr, %.lr.ph143.i.us.i.prol.loopexit ] ; 9 uses
  %.1253141.i.us.i = phi ptr [ %i.fd, %.lr.ph143.i.us.i ], [ %.1253141.i.us.i.unr, %.lr.ph143.i.us.i.prol.loopexit ] ; 2 uses
  %.1255140.i.us.i = phi i32 [ %i.fe, %.lr.ph143.i.us.i ], [ %.1255140.i.us.i.unr, %.lr.ph143.i.us.i.prol.loopexit ]
  %i.eg = load i64, ptr %.1253141.i.us.i, align 1, !tbaa !254
  store i64 %i.eg, ptr %.4142.i.us.i, align 1, !tbaa !254
  %i.eh = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %.1253141.i.us.i, i64 %i.bd ; 2 uses
  %i.ej = load i64, ptr %i.ei, align 1, !tbaa !254
  store i64 %i.ej, ptr %i.eh, align 1, !tbaa !254
  %i.ek = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 16
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.bd ; 2 uses
  %i.em = load i64, ptr %i.el, align 1, !tbaa !254
  store i64 %i.em, ptr %i.ek, align 1, !tbaa !254
  %i.en = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 24
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.bd ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 1, !tbaa !254
  store i64 %i.ep, ptr %i.en, align 1, !tbaa !254
  %i.eq = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 32
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.bd ; 2 uses
  %i.es = load i64, ptr %i.er, align 1, !tbaa !254
  store i64 %i.es, ptr %i.eq, align 1, !tbaa !254
  %i.et = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 40
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.bd ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 1, !tbaa !254
  store i64 %i.ev, ptr %i.et, align 1, !tbaa !254
  %i.ew = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 48
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.bd ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 1, !tbaa !254
  store i64 %i.ey, ptr %i.ew, align 1, !tbaa !254
  %i.ez = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 56
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.bd ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 1, !tbaa !254
  store i64 %i.fb, ptr %i.ez, align 1, !tbaa !254
  %i.fc = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 64 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.bd
  %i.fe = add nuw nsw i32 %.1255140.i.us.i, 8     ; 2 uses
  %exitcond228.not.i.us.i.7 = icmp eq i32 %i.fe, %.sroa.speculated
  br i1 %exitcond228.not.i.us.i.7, label %.loopexit128.i.us64.i, label %.lr.ph143.i.us.i, !llvm.loop !1443

.loopexit128.i.us64.i:                            ; preds = %.lr.ph143.i.us.i.prol.loopexit, %.lr.ph143.i.us.i, %.preheader127.i.us.i
  %.5.i.us65.i = phi ptr [ %.3.lcssa.i.us.i, %.preheader127.i.us.i ], [ %.lcssa394.unr, %.lr.ph143.i.us.i.prol.loopexit ], [ %i.fc, %.lr.ph143.i.us.i ] ; 2 uses
  %indvars.iv.next.i.us66.i = add nuw nsw i64 %indvars.iv.i.us62.i, 8 ; 3 uses
  %i.ff = or disjoint i64 %indvars.iv.next.i.us66.i, 7
  %i.fg = icmp samesign ult i64 %i.ff, %i.bo
  br i1 %i.fg, label %_ZN4ncnn3MatD2Ev.exit270.i.us.i, label %.preheader126.loopexit.i.i, !llvm.loop !1437

.preheader126.loopexit.i.i:                       ; preds = %.loopexit128.i.us64.i, %.loopexit128.i.loopexit.us.us.i, %_ZN4ncnn3MatD2Ev.exit271.i.us.preheader.i, %.loopexit128.i.preheader.i
  %.us-phi.i = phi ptr [ %i.cy, %.loopexit128.i.loopexit.us.us.i ], [ %i.ap, %.loopexit128.i.preheader.i ], [ %i.ap, %_ZN4ncnn3MatD2Ev.exit271.i.us.preheader.i ], [ %.5.i.us65.i, %.loopexit128.i.us64.i ]
  %.us-phi60.i = phi i64 [ %indvars.iv.next.i.us.us.i, %.loopexit128.i.loopexit.us.us.i ], [ %i.bq, %.loopexit128.i.preheader.i ], [ %i.bs, %_ZN4ncnn3MatD2Ev.exit271.i.us.preheader.i ], [ %indvars.iv.next.i.us66.i, %.loopexit128.i.us64.i ]
  %i.fh = trunc nuw nsw i64 %.us-phi60.i to i32
  br label %.preheader126.i.i

.preheader126.i.i:                                ; preds = %.preheader126.loopexit.i.i, %bb.c
  %.0240.lcssa.i.i = phi i32 [ 0, %bb.c ], [ %i.fh, %.preheader126.loopexit.i.i ] ; 3 uses
  %.0233.lcssa.i.i = phi ptr [ %i.ap, %bb.c ], [ %.us-phi.i, %.preheader126.loopexit.i.i ] ; 5 uses
  %i.fi = or disjoint i32 %.0240.lcssa.i.i, 3
  %i.fj = icmp slt i32 %i.fi, %.sroa.speculated64
  br i1 %i.fj, label %.lr.ph169.i.i, label %.preheader122.i.i

.lr.ph169.i.i:                                    ; preds = %.preheader126.i.i
  %i.fk = sdiv i32 %i.y, 8
  %i.fl = sext i32 %i.fk to i64
  %i.fm = lshr i32 %.sroa.speculated, 3
  %i.fn = shl i64 %i.bd, 3
  %i.fo = sext i32 %i.y to i64
  %i.fp = icmp sgt i32 %.sroa.speculated, 1
  %i.fq = shl i64 %i.bd, 1
  %i.fr = and i32 %.sroa.speculated, -2
  %i.fs = zext i32 %.0240.lcssa.i.i to i64        ; 6 uses
  %i.ft = sext i32 %.sroa.speculated64 to i64
  %i.fu = sext i32 %i.w to i64                    ; 2 uses
  %invariant.op.i.i = add nsw i64 %i.ft, -3       ; 4 uses
  switch i32 %i.be, label %.loopexit124.i.preheader.i [
    i32 8, label %.lr.ph169.i.split.us.i
    i32 1, label %_ZN4ncnn3MatD2Ev.exit268.i.us.i.preheader
  ]

_ZN4ncnn3MatD2Ev.exit268.i.us.i.preheader:        ; preds = %.lr.ph169.i.i
  %xtraiter406 = and i32 %.sroa.speculated, 1
  %lcmp.mod407.not = icmp eq i32 %xtraiter406, 0
  br label %_ZN4ncnn3MatD2Ev.exit268.i.us.i

.loopexit124.i.preheader.i:                       ; preds = %.lr.ph169.i.i
  %i.fv = add nuw nsw i64 %i.fs, 4                ; 2 uses
  %smax151.i = call i64 @llvm.smax.i64(i64 %invariant.op.i.i, i64 %i.fv)
  %i.fw = xor i64 %i.fs, -1
  %i.fx = add nsw i64 %smax151.i, %i.fw
  %i.fy = and i64 %i.fx, -4
  %i.fz = add nuw i64 %i.fv, %i.fy
  br label %.preheader122.loopexit.i.i

.lr.ph169.i.split.us.i:                           ; preds = %.lr.ph169.i.i
  %i.ga = icmp sgt i32 %.sroa.speculated, 7
  br i1 %i.ga, label %_ZN4ncnn3MatD2Ev.exit269.i.us.us.i, label %_ZN4ncnn3MatD2Ev.exit269.i.us.preheader.i

_ZN4ncnn3MatD2Ev.exit269.i.us.preheader.i:        ; preds = %.lr.ph169.i.split.us.i
  %i.gb = add nuw nsw i64 %i.fs, 4                ; 2 uses
  %smax.i = call i64 @llvm.smax.i64(i64 %invariant.op.i.i, i64 %i.gb)
  %i.gc = xor i64 %i.fs, -1
  %i.gd = add nsw i64 %smax.i, %i.gc
  %i.ge = and i64 %i.gd, -4
  %i.gf = add nuw i64 %i.gb, %i.ge
  br label %.preheader122.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit269.i.us.us.i:               ; preds = %.lr.ph169.i.split.us.i, %.loopexit124.i.loopexit.us.us.i
  %indvars.iv232.i.us.us.i = phi i64 [ %indvars.iv.next233.i.us.us.i, %.loopexit124.i.loopexit.us.us.i ], [ %i.fs, %.lr.ph169.i.split.us.i ] ; 2 uses
  %.6168.i.us.us.i = phi ptr [ %i.gv, %.loopexit124.i.loopexit.us.us.i ], [ %.0233.lcssa.i.i, %.lr.ph169.i.split.us.i ]
  %i.gg = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1444
  %i.gh = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !1444
  %i.gi = mul i64 %i.gh, %i.fl
  %i.gj = load i64, ptr %i.r, align 8, !tbaa !65, !noalias !1444
  %i.gk = mul i64 %i.gi, %i.gj
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gk
  %i.gm = add nsw i64 %indvars.iv232.i.us.us.i, %i.fu
  %i.gn = shl nsw i64 %i.gm, 3
  %i.go = getelementptr inbounds i8, ptr %i.gl, i64 %i.gn
  br label %.lr.ph153.i.us.us.i

.lr.ph153.i.us.us.i:                              ; preds = %.lr.ph153.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit269.i.us.us.i
  %.7152.i.us.us.i = phi ptr [ %i.gv, %.lr.ph153.i.us.us.i ], [ %.6168.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit269.i.us.us.i ] ; 3 uses
  %.0256151.i.us.us.i = phi ptr [ %i.gw, %.lr.ph153.i.us.us.i ], [ %i.go, %_ZN4ncnn3MatD2Ev.exit269.i.us.us.i ] ; 3 uses
  %.0257150.i.us.us.i = phi i32 [ %i.gx, %.lr.ph153.i.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit269.i.us.us.i ]
  %i.gp = load <8 x i16>, ptr %.0256151.i.us.us.i, align 1, !tbaa !254 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.0256151.i.us.us.i, i64 16
  %i.gr = load <8 x i16>, ptr %i.gq, align 1, !tbaa !254 ; 2 uses
  %i.gs = shufflevector <8 x i16> %i.gp, <8 x i16> %i.gr, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.gt = shufflevector <8 x i16> %i.gp, <8 x i16> %i.gr, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <8 x i16> %i.gs, ptr %.7152.i.us.us.i, align 16, !tbaa !254
  %i.gu = getelementptr inbounds nuw i8, ptr %.7152.i.us.us.i, i64 16
  store <8 x i16> %i.gt, ptr %i.gu, align 16, !tbaa !254
  %i.gv = getelementptr inbounds nuw i8, ptr %.7152.i.us.us.i, i64 32 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.0256151.i.us.us.i, i64 %i.fn
  %i.gx = add nuw nsw i32 %.0257150.i.us.us.i, 1  ; 2 uses
  %exitcond230.not.i.us.us.i = icmp eq i32 %i.gx, %i.fm
  br i1 %exitcond230.not.i.us.us.i, label %.loopexit124.i.loopexit.us.us.i, label %.lr.ph153.i.us.us.i, !llvm.loop !1447

.loopexit124.i.loopexit.us.us.i:                  ; preds = %.lr.ph153.i.us.us.i
  %indvars.iv.next233.i.us.us.i = add nuw nsw i64 %indvars.iv232.i.us.us.i, 4 ; 3 uses
  %i.gy = icmp slt i64 %indvars.iv.next233.i.us.us.i, %invariant.op.i.i
  br i1 %i.gy, label %_ZN4ncnn3MatD2Ev.exit269.i.us.us.i, label %.preheader122.loopexit.i.i, !llvm.loop !1448

_ZN4ncnn3MatD2Ev.exit268.i.us.i:                  ; preds = %_ZN4ncnn3MatD2Ev.exit268.i.us.i.preheader, %.loopexit124.i.us78.i
  %indvars.iv232.i.us76.i = phi i64 [ %indvars.iv.next233.i.us80.i, %.loopexit124.i.us78.i ], [ %i.fs, %_ZN4ncnn3MatD2Ev.exit268.i.us.i.preheader ] ; 2 uses
  %.6168.i.us77.i = phi ptr [ %.11.i.us79.i, %.loopexit124.i.us78.i ], [ %.0233.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit268.i.us.i.preheader ] ; 2 uses
  %i.gz = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1449
  %i.ha = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !1449
  %i.hb = mul i64 %i.ha, %i.fo
  %i.hc = load i64, ptr %i.r, align 8, !tbaa !65, !noalias !1449
  %i.hd = mul i64 %i.hb, %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.hd
  %i.hf = getelementptr i8, ptr %i.he, i64 %indvars.iv232.i.us76.i
  %i.hg = getelementptr i8, ptr %i.hf, i64 %i.fu  ; 2 uses
  br i1 %i.fp, label %.lr.ph158.i.us.i, label %.preheader123.i.us.i

.lr.ph158.i.us.i:                                 ; preds = %_ZN4ncnn3MatD2Ev.exit268.i.us.i, %.lr.ph158.i.us.i
  %.9157.i.us.i = phi ptr [ %i.id, %.lr.ph158.i.us.i ], [ %.6168.i.us77.i, %_ZN4ncnn3MatD2Ev.exit268.i.us.i ] ; 9 uses
  %.0248156.i.us.i = phi i32 [ %i.if, %.lr.ph158.i.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit268.i.us.i ]
  %.0250155.i.us.i = phi ptr [ %i.ie, %.lr.ph158.i.us.i ], [ %i.hg, %_ZN4ncnn3MatD2Ev.exit268.i.us.i ] ; 6 uses
  %i.hh = load i8, ptr %.0250155.i.us.i, align 1, !tbaa !254
  store i8 %i.hh, ptr %.9157.i.us.i, align 1, !tbaa !254
  %i.hi = getelementptr inbounds nuw i8, ptr %.0250155.i.us.i, i64 %i.bd ; 4 uses
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !254
  %i.hk = getelementptr inbounds nuw i8, ptr %.9157.i.us.i, i64 1
  store i8 %i.hj, ptr %i.hk, align 1, !tbaa !254
  %i.hl = getelementptr inbounds nuw i8, ptr %.0250155.i.us.i, i64 1
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !254
  %i.hn = getelementptr inbounds nuw i8, ptr %.9157.i.us.i, i64 2
  store i8 %i.hm, ptr %i.hn, align 1, !tbaa !254
  %i.ho = getelementptr i8, ptr %i.hi, i64 1
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !254
  %i.hq = getelementptr inbounds nuw i8, ptr %.9157.i.us.i, i64 3
  store i8 %i.hp, ptr %i.hq, align 1, !tbaa !254
  %i.hr = getelementptr inbounds nuw i8, ptr %.0250155.i.us.i, i64 2
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !254
  %i.ht = getelementptr inbounds nuw i8, ptr %.9157.i.us.i, i64 4
  store i8 %i.hs, ptr %i.ht, align 1, !tbaa !254
  %i.hu = getelementptr i8, ptr %i.hi, i64 2
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !254
  %i.hw = getelementptr inbounds nuw i8, ptr %.9157.i.us.i, i64 5
  store i8 %i.hv, ptr %i.hw, align 1, !tbaa !254
  %i.hx = getelementptr inbounds nuw i8, ptr %.0250155.i.us.i, i64 3
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !254
  %i.hz = getelementptr inbounds nuw i8, ptr %.9157.i.us.i, i64 6
  store i8 %i.hy, ptr %i.hz, align 1, !tbaa !254
  %i.ia = getelementptr i8, ptr %i.hi, i64 3
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !254
  %i.ic = getelementptr inbounds nuw i8, ptr %.9157.i.us.i, i64 7
  store i8 %i.ib, ptr %i.ic, align 1, !tbaa !254
  %i.id = getelementptr inbounds nuw i8, ptr %.9157.i.us.i, i64 8 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.0250155.i.us.i, i64 %i.fq ; 2 uses
  %i.if = add nuw nsw i32 %.0248156.i.us.i, 2     ; 2 uses
  %i.ig = or disjoint i32 %i.if, 1
  %i.ih = icmp slt i32 %i.ig, %.sroa.speculated
  br i1 %i.ih, label %.lr.ph158.i.us.i, label %.preheader123.i.us.i, !llvm.loop !1452

.preheader123.i.us.i:                             ; preds = %.lr.ph158.i.us.i, %_ZN4ncnn3MatD2Ev.exit268.i.us.i
  %.0250.lcssa.i.us.i = phi ptr [ %i.hg, %_ZN4ncnn3MatD2Ev.exit268.i.us.i ], [ %i.ie, %.lr.ph158.i.us.i ] ; 6 uses
  %.0248.lcssa.i.us.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit268.i.us.i ], [ %i.fr, %.lr.ph158.i.us.i ] ; 4 uses
  %.9.lcssa.i.us.i = phi ptr [ %.6168.i.us77.i, %_ZN4ncnn3MatD2Ev.exit268.i.us.i ], [ %i.id, %.lr.ph158.i.us.i ] ; 7 uses
  %i.ii = icmp slt i32 %.0248.lcssa.i.us.i, %.sroa.speculated
  br i1 %i.ii, label %.lr.ph165.i.us.i.preheader, label %.loopexit124.i.us78.i

.lr.ph165.i.us.i.preheader:                       ; preds = %.preheader123.i.us.i
  %.neg = or disjoint i32 %.0248.lcssa.i.us.i, 1
  br i1 %lcmp.mod407.not, label %.lr.ph165.i.us.i.prol.loopexit, label %.lr.ph165.i.us.i.prol

.lr.ph165.i.us.i.prol:                            ; preds = %.lr.ph165.i.us.i.preheader
  %i.ij = load i8, ptr %.0250.lcssa.i.us.i, align 1, !tbaa !254
  store i8 %i.ij, ptr %.9.lcssa.i.us.i, align 1, !tbaa !254
  %i.ik = getelementptr inbounds nuw i8, ptr %.0250.lcssa.i.us.i, i64 1
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !254
  %i.im = getelementptr inbounds nuw i8, ptr %.9.lcssa.i.us.i, i64 1
  store i8 %i.il, ptr %i.im, align 1, !tbaa !254
  %i.in = getelementptr inbounds nuw i8, ptr %.0250.lcssa.i.us.i, i64 2
  %i.io = load i8, ptr %i.in, align 1, !tbaa !254
  %i.ip = getelementptr inbounds nuw i8, ptr %.9.lcssa.i.us.i, i64 2
  store i8 %i.io, ptr %i.ip, align 1, !tbaa !254
  %i.iq = getelementptr inbounds nuw i8, ptr %.0250.lcssa.i.us.i, i64 3
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !254
  %i.is = getelementptr inbounds nuw i8, ptr %.9.lcssa.i.us.i, i64 3
  store i8 %i.ir, ptr %i.is, align 1, !tbaa !254
  %i.it = getelementptr inbounds nuw i8, ptr %.9.lcssa.i.us.i, i64 4 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.0250.lcssa.i.us.i, i64 %i.bd
  %i.iv = or disjoint i32 %.0248.lcssa.i.us.i, 1
  br label %.lr.ph165.i.us.i.prol.loopexit

.lr.ph165.i.us.i.prol.loopexit:                   ; preds = %.lr.ph165.i.us.i.prol, %.lr.ph165.i.us.i.preheader
  %.lcssa398.unr = phi ptr [ poison, %.lr.ph165.i.us.i.preheader ], [ %i.it, %.lr.ph165.i.us.i.prol ]
  %.10164.i.us.i.unr = phi ptr [ %.9.lcssa.i.us.i, %.lr.ph165.i.us.i.preheader ], [ %i.it, %.lr.ph165.i.us.i.prol ]
  %.1249163.i.us.i.unr = phi i32 [ %.0248.lcssa.i.us.i, %.lr.ph165.i.us.i.preheader ], [ %i.iv, %.lr.ph165.i.us.i.prol ]
  %.1251162.i.us.i.unr = phi ptr [ %.0250.lcssa.i.us.i, %.lr.ph165.i.us.i.preheader ], [ %i.iu, %.lr.ph165.i.us.i.prol ]
  %i.iw = icmp eq i32 %.sroa.speculated, %.neg
  br i1 %i.iw, label %.loopexit124.i.us78.i, label %.lr.ph165.i.us.i

.lr.ph165.i.us.i:                                 ; preds = %.lr.ph165.i.us.i.prol.loopexit, %.lr.ph165.i.us.i
  %.10164.i.us.i = phi ptr [ %i.jt, %.lr.ph165.i.us.i ], [ %.10164.i.us.i.unr, %.lr.ph165.i.us.i.prol.loopexit ] ; 9 uses
  %.1249163.i.us.i = phi i32 [ %i.jv, %.lr.ph165.i.us.i ], [ %.1249163.i.us.i.unr, %.lr.ph165.i.us.i.prol.loopexit ]
  %.1251162.i.us.i = phi ptr [ %i.ju, %.lr.ph165.i.us.i ], [ %.1251162.i.us.i.unr, %.lr.ph165.i.us.i.prol.loopexit ] ; 5 uses
  %i.ix = load i8, ptr %.1251162.i.us.i, align 1, !tbaa !254
  store i8 %i.ix, ptr %.10164.i.us.i, align 1, !tbaa !254
  %i.iy = getelementptr inbounds nuw i8, ptr %.1251162.i.us.i, i64 1
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !254
  %i.ja = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 1
  store i8 %i.iz, ptr %i.ja, align 1, !tbaa !254
  %i.jb = getelementptr inbounds nuw i8, ptr %.1251162.i.us.i, i64 2
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !254
  %i.jd = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 2
  store i8 %i.jc, ptr %i.jd, align 1, !tbaa !254
  %i.je = getelementptr inbounds nuw i8, ptr %.1251162.i.us.i, i64 3
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !254
  %i.jg = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 3
  store i8 %i.jf, ptr %i.jg, align 1, !tbaa !254
  %i.jh = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 4
  %i.ji = getelementptr inbounds nuw i8, ptr %.1251162.i.us.i, i64 %i.bd ; 5 uses
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !254
  store i8 %i.jj, ptr %i.jh, align 1, !tbaa !254
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 1
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !254
  %i.jm = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 5
  store i8 %i.jl, ptr %i.jm, align 1, !tbaa !254
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ji, i64 2
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !254
  %i.jp = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 6
  store i8 %i.jo, ptr %i.jp, align 1, !tbaa !254
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ji, i64 3
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !254
  %i.js = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 7
  store i8 %i.jr, ptr %i.js, align 1, !tbaa !254
  %i.jt = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 8 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.bd
  %i.jv = add nuw nsw i32 %.1249163.i.us.i, 2     ; 2 uses
  %exitcond231.not.i.us.i.1 = icmp eq i32 %i.jv, %.sroa.speculated
  br i1 %exitcond231.not.i.us.i.1, label %.loopexit124.i.us78.i, label %.lr.ph165.i.us.i, !llvm.loop !1453

.loopexit124.i.us78.i:                            ; preds = %.lr.ph165.i.us.i.prol.loopexit, %.lr.ph165.i.us.i, %.preheader123.i.us.i
  %.11.i.us79.i = phi ptr [ %.9.lcssa.i.us.i, %.preheader123.i.us.i ], [ %.lcssa398.unr, %.lr.ph165.i.us.i.prol.loopexit ], [ %i.jt, %.lr.ph165.i.us.i ] ; 2 uses
  %indvars.iv.next233.i.us80.i = add nuw nsw i64 %indvars.iv232.i.us76.i, 4 ; 3 uses
  %i.jw = icmp slt i64 %indvars.iv.next233.i.us80.i, %invariant.op.i.i
  br i1 %i.jw, label %_ZN4ncnn3MatD2Ev.exit268.i.us.i, label %.preheader122.loopexit.i.i, !llvm.loop !1448

.preheader122.loopexit.i.i:                       ; preds = %.loopexit124.i.us78.i, %.loopexit124.i.loopexit.us.us.i, %_ZN4ncnn3MatD2Ev.exit269.i.us.preheader.i, %.loopexit124.i.preheader.i
  %.us-phi73.i = phi ptr [ %i.gv, %.loopexit124.i.loopexit.us.us.i ], [ %.0233.lcssa.i.i, %.loopexit124.i.preheader.i ], [ %.0233.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit269.i.us.preheader.i ], [ %.11.i.us79.i, %.loopexit124.i.us78.i ]
  %.us-phi74.i = phi i64 [ %indvars.iv.next233.i.us.us.i, %.loopexit124.i.loopexit.us.us.i ], [ %i.fz, %.loopexit124.i.preheader.i ], [ %i.gf, %_ZN4ncnn3MatD2Ev.exit269.i.us.preheader.i ], [ %indvars.iv.next233.i.us80.i, %.loopexit124.i.us78.i ]
  %i.jx = trunc nuw nsw i64 %.us-phi74.i to i32
  br label %.preheader122.i.i

.preheader122.i.i:                                ; preds = %.preheader122.loopexit.i.i, %.preheader126.i.i
  %.1241.lcssa.i.i = phi i32 [ %.0240.lcssa.i.i, %.preheader126.i.i ], [ %i.jx, %.preheader122.loopexit.i.i ] ; 3 uses
  %.6.lcssa.i.i = phi ptr [ %.0233.lcssa.i.i, %.preheader126.i.i ], [ %.us-phi73.i, %.preheader122.loopexit.i.i ] ; 2 uses
  %i.jy = or disjoint i32 %.1241.lcssa.i.i, 1
  %i.jz = icmp slt i32 %i.jy, %.sroa.speculated64
  br i1 %i.jz, label %.lr.ph191.i.i, label %.preheader.i.i

.lr.ph191.i.i:                                    ; preds = %.preheader122.i.i
  %i.ka = sdiv i32 %i.y, 8
  %i.kb = sext i32 %i.ka to i64
  %i.kc = lshr i32 %.sroa.speculated, 3           ; 3 uses
  %i.kd = icmp sgt i32 %.sroa.speculated, 7
  %i.ke = shl i64 %i.bd, 3                        ; 2 uses
  %i.kf = sext i32 %i.y to i64
  %i.kg = icmp sgt i32 %.sroa.speculated, 1
  %i.kh = shl i64 %i.bd, 1                        ; 3 uses
end_hunk_6
