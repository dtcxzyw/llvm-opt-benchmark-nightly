Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ValueEnumerator?download=true
inline.NumInlined: 4350
inline.NumDeleted: 2158
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm5ValueEjESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZNS3_15ValueEnumerator17OptimizeConstantsEjjE3$_0EEEvT_SI_T0_T1_":bb.a
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %i.mt
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !244, !noalias !1123
  %i.mw = and i32 %i.mr, 31
  %i.mx = lshr i32 %i.mv, %i.mw
  %i.my = trunc i32 %i.mx to i1
  br i1 %i.my, label %.lr.ph.i.i.i.i.i.i.i36, label %.loopexit.i.i.i.i.i.i30, !prof !245

.lr.ph.i.i.i.i.i.i.i36:                           ; preds = %bb.q, %bb.r
  %i.mz = phi i64 [ %i.nf, %bb.r ], [ %i.ms, %bb.q ] ; 2 uses
  %.017.i.i.i.i.i.i.i37 = phi i32 [ %i.ne, %bb.r ], [ %i.mr, %bb.q ]
  %i.na = getelementptr inbounds nuw [16 x i8], ptr %i.mh, i64 %i.mz
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !257, !noalias !1123
  %i.nc = icmp eq ptr %.016.val.val.i, %i.nb
  br i1 %i.nc, label %_ZNK4llvm15ValueEnumerator9getTypeIDEPNS_4TypeE.exit.i.i.i31, label %bb.r, !prof !246

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i36
  %i.nd = add nuw i32 %.017.i.i.i.i.i.i.i37, 1
  %i.ne = and i32 %i.nd, %i.ml                    ; 3 uses
  %i.nf = zext i32 %i.ne to i64                   ; 2 uses
  %i.ng = lshr i64 %i.nf, 5
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %i.ng
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !244, !noalias !1123
  %i.nj = and i32 %i.ne, 31
  %i.nk = lshr i32 %i.ni, %i.nj
  %i.nl = trunc i32 %i.nk to i1
  br i1 %i.nl, label %.lr.ph.i.i.i.i.i.i.i36, label %.loopexit.i.i.i.i.i.i30, !prof !247

.loopexit.i.i.i.i.i.i30:                          ; preds = %bb.r, %bb.q, %bb.p
  %i.nm = zext i32 %i.mj to i64
  br label %_ZNK4llvm15ValueEnumerator9getTypeIDEPNS_4TypeE.exit.i.i.i31

_ZNK4llvm15ValueEnumerator9getTypeIDEPNS_4TypeE.exit.i.i.i31: ; preds = %.lr.ph.i.i.i.i.i.i.i36, %.loopexit.i.i.i.i.i.i30
  %i.nn = phi i64 [ %i.nm, %.loopexit.i.i.i.i.i.i30 ], [ %i.mz, %.lr.ph.i.i.i.i.i.i.i36 ]
  %i.no = getelementptr inbounds nuw [16 x i8], ptr %i.mh, i64 %i.nn
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.nq = load i32, ptr %i.np, align 8, !tbaa !332
  %i.nr = add i32 %i.nq, -1
  br i1 %i.mk, label %.loopexit.i.i.i8.i.i.i32, label %bb.s

bb.s:                                             ; preds = %_ZNK4llvm15ValueEnumerator9getTypeIDEPNS_4TypeE.exit.i.i.i31
  %i.ns = add i32 %i.mj, -1                       ; 2 uses
  %i.nt = ptrtoint ptr %.0.val.val.i to i64
  %i.nu = mul i64 %i.nt, -4658895280553007687     ; 2 uses
  %i.nv = lshr i64 %i.nu, 31
  %i.nw = xor i64 %i.nv, %i.nu
  %i.nx = trunc i64 %i.nw to i32
  %i.ny = and i32 %i.ns, %i.nx                    ; 3 uses
  %i.nz = zext i32 %i.ny to i64                   ; 2 uses
  %i.oa = lshr i64 %i.nz, 5
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %i.oa
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !244, !noalias !1124
  %i.od = and i32 %i.ny, 31
  %i.oe = lshr i32 %i.oc, %i.od
  %i.of = trunc i32 %i.oe to i1
  br i1 %i.of, label %.lr.ph.i.i.i.i9.i.i.i34, label %.loopexit.i.i.i8.i.i.i32, !prof !245

.lr.ph.i.i.i.i9.i.i.i34:                          ; preds = %bb.s, %bb.t
  %i.og = phi i64 [ %i.om, %bb.t ], [ %i.nz, %bb.s ] ; 2 uses
  %.017.i.i.i.i10.i.i.i35 = phi i32 [ %i.ol, %bb.t ], [ %i.ny, %bb.s ]
  %i.oh = getelementptr inbounds nuw [16 x i8], ptr %i.mh, i64 %i.og
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !257, !noalias !1124
  %i.oj = icmp eq ptr %.0.val.val.i, %i.oi
  br i1 %i.oj, label %_ZNK4llvm15ValueEnumerator9getTypeIDEPNS_4TypeE.exit11.i.i.i33, label %bb.t, !prof !246

bb.t:                                             ; preds = %.lr.ph.i.i.i.i9.i.i.i34
  %i.ok = add nuw i32 %.017.i.i.i.i10.i.i.i35, 1
  %i.ol = and i32 %i.ok, %i.ns                    ; 3 uses
  %i.om = zext i32 %i.ol to i64                   ; 2 uses
  %i.on = lshr i64 %i.om, 5
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %i.on
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !244, !noalias !1124
  %i.oq = and i32 %i.ol, 31
  %i.or = lshr i32 %i.op, %i.oq
  %i.os = trunc i32 %i.or to i1
  br i1 %i.os, label %.lr.ph.i.i.i.i9.i.i.i34, label %.loopexit.i.i.i8.i.i.i32, !prof !247

.loopexit.i.i.i8.i.i.i32:                         ; preds = %bb.t, %bb.s, %_ZNK4llvm15ValueEnumerator9getTypeIDEPNS_4TypeE.exit.i.i.i31
  %i.ot = zext i32 %i.mj to i64
  br label %_ZNK4llvm15ValueEnumerator9getTypeIDEPNS_4TypeE.exit11.i.i.i33

_ZNK4llvm15ValueEnumerator9getTypeIDEPNS_4TypeE.exit11.i.i.i33: ; preds = %.lr.ph.i.i.i.i9.i.i.i34, %.loopexit.i.i.i8.i.i.i32
  %i.ou = phi i64 [ %i.ot, %.loopexit.i.i.i8.i.i.i32 ], [ %i.og, %.lr.ph.i.i.i.i9.i.i.i34 ]
  %i.ov = getelementptr inbounds nuw [16 x i8], ptr %i.mh, i64 %i.ou
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  %i.ox = load i32, ptr %i.ow, align 8, !tbaa !332
  %i.oy = add i32 %i.ox, -1
  %i.oz = icmp ult i32 %i.nr, %i.oy
  br i1 %i.oz, label %bb.u, label %bb.v

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm15ValueEnumerator17OptimizeConstantsEjjE3$_0EclIPSt4pairIPKNS2_5ValueEjESC_EEbT_T0_.exit.i": ; preds = %.lr.ph.i28
  %i.pa = icmp ugt i32 %.016.val18.i, %.0.val19.i
  br i1 %i.pa, label %bb.u, label %bb.v

bb.u:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm15ValueEnumerator17OptimizeConstantsEjjE3$_0EclIPSt4pairIPKNS2_5ValueEjESC_EEbT_T0_.exit.i", %_ZNK4llvm15ValueEnumerator9getTypeIDEPNS_4TypeE.exit11.i.i.i33
  store ptr %.016.val.i, ptr %.sroa.026.034.i, align 8, !tbaa !264
  %i.pb = getelementptr inbounds nuw i8, ptr %.sroa.026.034.i, i64 8
  store i32 %.016.val18.i, ptr %i.pb, align 8, !tbaa !252
  %i.pc = getelementptr inbounds nuw i8, ptr %.01636.i, i64 16
  br label %bb.w

bb.v:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm15ValueEnumerator17OptimizeConstantsEjjE3$_0EclIPSt4pairIPKNS2_5ValueEjESC_EEbT_T0_.exit.i", %_ZNK4llvm15ValueEnumerator9getTypeIDEPNS_4TypeE.exit11.i.i.i33
  store ptr %.0.val.i, ptr %.sroa.026.034.i, align 8, !tbaa !264
  %i.pd = getelementptr inbounds nuw i8, ptr %.sroa.026.034.i, i64 8
  store i32 %.0.val19.i, ptr %i.pd, align 8, !tbaa !252
  %i.pe = getelementptr inbounds nuw i8, ptr %.037.i, i64 16
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.117.i = phi ptr [ %i.pc, %bb.u ], [ %.01636.i, %bb.v ] ; 3 uses
  %.1.i = phi ptr [ %.037.i, %bb.u ], [ %i.pe, %bb.v ] ; 3 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %.sroa.026.034.i, i64 16 ; 2 uses
  %i.pg = icmp ne ptr %.1.i, %i.mb
  %i.ph = icmp ne ptr %.117.i, %i.mc
  %i.pi = select i1 %i.pg, i1 %i.ph, i1 false
  br i1 %i.pi, label %.lr.ph.i28, label %._crit_edge.i25, !llvm.loop !10

._crit_edge.i25:                                  ; preds = %bb.w, %.lr.ph.i20
  %.sroa.026.0.lcssa.i = phi ptr [ %.sroa.021.030.i, %.lr.ph.i20 ], [ %i.pf, %bb.w ] ; 5 uses
  %.016.lcssa.i = phi ptr [ %i.mb, %.lr.ph.i20 ], [ %.117.i, %bb.w ] ; 3 uses
  %.0.lcssa.i26 = phi ptr [ %.029.i, %.lr.ph.i20 ], [ %.1.i, %bb.w ] ; 3 uses
  %i.pj = ptrtoint ptr %i.mb to i64
  %i.pk = ptrtoint ptr %.0.lcssa.i26 to i64
  %i.pl = sub i64 %i.pj, %i.pk
  %i.pm = ashr exact i64 %i.pl, 4                 ; 5 uses
  %i.pn = icmp sgt i64 %i.pm, 0
  br i1 %i.pn, label %.lr.ph.i.i.i.i.i.i27.preheader, label %_ZSt4moveIPSt4pairIPKN4llvm5ValueEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i

.lr.ph.i.i.i.i.i.i27.preheader:                   ; preds = %._crit_edge.i25
  %xtraiter193 = and i64 %i.pm, 3                 ; 2 uses
  %lcmp.mod194.not = icmp eq i64 %xtraiter193, 0
  br i1 %lcmp.mod194.not, label %.lr.ph.i.i.i.i.i.i27.prol.loopexit, label %.lr.ph.i.i.i.i.i.i27.prol

.lr.ph.i.i.i.i.i.i27.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i27.preheader, %.lr.ph.i.i.i.i.i.i27.prol
  %.012.i.i.i.i.i.i.prol = phi i64 [ %i.pu, %.lr.ph.i.i.i.i.i.i27.prol ], [ %i.pm, %.lr.ph.i.i.i.i.i.i27.preheader ]
  %.0811.i.i.i.i.i.i.prol = phi ptr [ %i.pt, %.lr.ph.i.i.i.i.i.i27.prol ], [ %.sroa.026.0.lcssa.i, %.lr.ph.i.i.i.i.i.i27.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i.prol = phi ptr [ %i.ps, %.lr.ph.i.i.i.i.i.i27.prol ], [ %.0.lcssa.i26, %.lr.ph.i.i.i.i.i.i27.preheader ] ; 3 uses
  %prol.iter195 = phi i64 [ %prol.iter195.next, %.lr.ph.i.i.i.i.i.i27.prol ], [ 0, %.lr.ph.i.i.i.i.i.i27.preheader ]
  %i.po = load ptr, ptr %.0910.i.i.i.i.i.i.prol, align 8, !tbaa !238
  store ptr %i.po, ptr %.0811.i.i.i.i.i.i.prol, align 8, !tbaa !264
  %i.pp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.prol, i64 8
  %i.pq = load i32, ptr %i.pp, align 8, !tbaa !244
  %i.pr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.prol, i64 8
  store i32 %i.pq, ptr %i.pr, align 8, !tbaa !252
  %i.ps = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.prol, i64 16 ; 3 uses
  %i.pu = add nsw i64 %.012.i.i.i.i.i.i.prol, -1  ; 2 uses
  %prol.iter195.next = add i64 %prol.iter195, 1   ; 2 uses
  %prol.iter195.cmp.not = icmp eq i64 %prol.iter195.next, %xtraiter193
  br i1 %prol.iter195.cmp.not, label %.lr.ph.i.i.i.i.i.i27.prol.loopexit, label %.lr.ph.i.i.i.i.i.i27.prol, !llvm.loop !1112

.lr.ph.i.i.i.i.i.i27.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i27.prol, %.lr.ph.i.i.i.i.i.i27.preheader
  %.012.i.i.i.i.i.i.unr = phi i64 [ %i.pm, %.lr.ph.i.i.i.i.i.i27.preheader ], [ %i.pu, %.lr.ph.i.i.i.i.i.i27.prol ]
  %.0811.i.i.i.i.i.i.unr = phi ptr [ %.sroa.026.0.lcssa.i, %.lr.ph.i.i.i.i.i.i27.preheader ], [ %i.pt, %.lr.ph.i.i.i.i.i.i27.prol ]
  %.0910.i.i.i.i.i.i.unr = phi ptr [ %.0.lcssa.i26, %.lr.ph.i.i.i.i.i.i27.preheader ], [ %i.ps, %.lr.ph.i.i.i.i.i.i27.prol ]
  %.lcssa178.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i27.preheader ], [ %i.pt, %.lr.ph.i.i.i.i.i.i27.prol ]
  %i.pv = icmp ult i64 %i.pm, 4
  br i1 %i.pv, label %_ZSt4moveIPSt4pairIPKN4llvm5ValueEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i, label %.lr.ph.i.i.i.i.i.i27

.lr.ph.i.i.i.i.i.i27:                             ; preds = %.lr.ph.i.i.i.i.i.i27.prol.loopexit, %.lr.ph.i.i.i.i.i.i27
  %.012.i.i.i.i.i.i = phi i64 [ %i.qu, %.lr.ph.i.i.i.i.i.i27 ], [ %.012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i27.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.qt, %.lr.ph.i.i.i.i.i.i27 ], [ %.0811.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i27.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.qs, %.lr.ph.i.i.i.i.i.i27 ], [ %.0910.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i27.prol.loopexit ] ; 9 uses
  %i.pw = load ptr, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !238
  store ptr %i.pw, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !264
  %i.px = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.py = load i32, ptr %i.px, align 8, !tbaa !244
  %i.pz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8
  store i32 %i.py, ptr %i.pz, align 8, !tbaa !252
  %i.qa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 16
  %i.qb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 16
  %i.qc = load ptr, ptr %i.qa, align 8, !tbaa !238
  store ptr %i.qc, ptr %i.qb, align 8, !tbaa !264
  %i.qd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 24
  %i.qe = load i32, ptr %i.qd, align 8, !tbaa !244
  %i.qf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 24
  store i32 %i.qe, ptr %i.qf, align 8, !tbaa !252
  %i.qg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 32
  %i.qh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 32
  %i.qi = load ptr, ptr %i.qg, align 8, !tbaa !238
  store ptr %i.qi, ptr %i.qh, align 8, !tbaa !264
  %i.qj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 40
  %i.qk = load i32, ptr %i.qj, align 8, !tbaa !244
  %i.ql = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 40
  store i32 %i.qk, ptr %i.ql, align 8, !tbaa !252
  %i.qm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 48
  %i.qn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 48
  %i.qo = load ptr, ptr %i.qm, align 8, !tbaa !238
  store ptr %i.qo, ptr %i.qn, align 8, !tbaa !264
  %i.qp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 56
  %i.qq = load i32, ptr %i.qp, align 8, !tbaa !244
  %i.qr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 56
  store i32 %i.qq, ptr %i.qr, align 8, !tbaa !252
  %i.qs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 64
  %i.qt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.qu = add nsw i64 %.012.i.i.i.i.i.i, -4
  %i.qv = icmp sgt i64 %.012.i.i.i.i.i.i, 4
  br i1 %i.qv, label %.lr.ph.i.i.i.i.i.i27, label %_ZSt4moveIPSt4pairIPKN4llvm5ValueEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i, !llvm.loop !9

_ZSt4moveIPSt4pairIPKN4llvm5ValueEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i27.prol.loopexit, %.lr.ph.i.i.i.i.i.i27, %._crit_edge.i25
  %.08.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.026.0.lcssa.i, %._crit_edge.i25 ], [ %.lcssa178.unr, %.lr.ph.i.i.i.i.i.i27.prol.loopexit ], [ %i.qt, %.lr.ph.i.i.i.i.i.i27 ]
  %i.qw = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i to i64 ; 3 uses
  %i.qx = ptrtoint ptr %.sroa.026.0.lcssa.i to i64
  %i.qy = sub i64 %i.qw, %i.qx
  %i.qz = getelementptr inbounds i8, ptr %.sroa.026.0.lcssa.i, i64 %i.qy ; 3 uses
  %i.ra = ptrtoint ptr %i.mc to i64               ; 2 uses
  %i.rb = ptrtoint ptr %.016.lcssa.i to i64
  %i.rc = sub i64 %i.ra, %i.rb
  %i.rd = ashr exact i64 %i.rc, 4                 ; 5 uses
  %i.re = icmp sgt i64 %i.rd, 0
  br i1 %i.re, label %.lr.ph.i.i.i.i.i21.i.preheader, label %"_ZSt12__move_mergeIPSt4pairIPKN4llvm5ValueEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNS1_15ValueEnumerator17OptimizeConstantsEjjE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit"

.lr.ph.i.i.i.i.i21.i.preheader:                   ; preds = %_ZSt4moveIPSt4pairIPKN4llvm5ValueEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i
  %xtraiter196 = and i64 %i.rd, 3                 ; 2 uses
  %lcmp.mod197.not = icmp eq i64 %xtraiter196, 0
  br i1 %lcmp.mod197.not, label %.lr.ph.i.i.i.i.i21.i.prol.loopexit, label %.lr.ph.i.i.i.i.i21.i.prol

.lr.ph.i.i.i.i.i21.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i21.i.preheader, %.lr.ph.i.i.i.i.i21.i.prol
  %.012.i.i.i.i.i22.i.prol = phi i64 [ %i.rl, %.lr.ph.i.i.i.i.i21.i.prol ], [ %i.rd, %.lr.ph.i.i.i.i.i21.i.preheader ]
  %.0811.i.i.i.i.i23.i.prol = phi ptr [ %i.rk, %.lr.ph.i.i.i.i.i21.i.prol ], [ %i.qz, %.lr.ph.i.i.i.i.i21.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i24.i.prol = phi ptr [ %i.rj, %.lr.ph.i.i.i.i.i21.i.prol ], [ %.016.lcssa.i, %.lr.ph.i.i.i.i.i21.i.preheader ] ; 3 uses
  %prol.iter198 = phi i64 [ %prol.iter198.next, %.lr.ph.i.i.i.i.i21.i.prol ], [ 0, %.lr.ph.i.i.i.i.i21.i.preheader ]
  %i.rf = load ptr, ptr %.0910.i.i.i.i.i24.i.prol, align 8, !tbaa !238
  store ptr %i.rf, ptr %.0811.i.i.i.i.i23.i.prol, align 8, !tbaa !264
  %i.rg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24.i.prol, i64 8
  %i.rh = load i32, ptr %i.rg, align 8, !tbaa !244
  %i.ri = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23.i.prol, i64 8
  store i32 %i.rh, ptr %i.ri, align 8, !tbaa !252
  %i.rj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24.i.prol, i64 16 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23.i.prol, i64 16 ; 3 uses
  %i.rl = add nsw i64 %.012.i.i.i.i.i22.i.prol, -1 ; 2 uses
  %prol.iter198.next = add i64 %prol.iter198, 1   ; 2 uses
  %prol.iter198.cmp.not = icmp eq i64 %prol.iter198.next, %xtraiter196
  br i1 %prol.iter198.cmp.not, label %.lr.ph.i.i.i.i.i21.i.prol.loopexit, label %.lr.ph.i.i.i.i.i21.i.prol, !llvm.loop !1113

.lr.ph.i.i.i.i.i21.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i21.i.prol, %.lr.ph.i.i.i.i.i21.i.preheader
  %.012.i.i.i.i.i22.i.unr = phi i64 [ %i.rd, %.lr.ph.i.i.i.i.i21.i.preheader ], [ %i.rl, %.lr.ph.i.i.i.i.i21.i.prol ]
  %.0811.i.i.i.i.i23.i.unr = phi ptr [ %i.qz, %.lr.ph.i.i.i.i.i21.i.preheader ], [ %i.rk, %.lr.ph.i.i.i.i.i21.i.prol ]
  %.0910.i.i.i.i.i24.i.unr = phi ptr [ %.016.lcssa.i, %.lr.ph.i.i.i.i.i21.i.preheader ], [ %i.rj, %.lr.ph.i.i.i.i.i21.i.prol ]
  %.lcssa179.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i21.i.preheader ], [ %i.rk, %.lr.ph.i.i.i.i.i21.i.prol ]
  %i.rm = icmp ult i64 %i.rd, 4
  br i1 %i.rm, label %_ZSt4moveIPSt4pairIPKN4llvm5ValueEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit25.loopexit.i, label %.lr.ph.i.i.i.i.i21.i

.lr.ph.i.i.i.i.i21.i:                             ; preds = %.lr.ph.i.i.i.i.i21.i.prol.loopexit, %.lr.ph.i.i.i.i.i21.i
  %.012.i.i.i.i.i22.i = phi i64 [ %i.sl, %.lr.ph.i.i.i.i.i21.i ], [ %.012.i.i.i.i.i22.i.unr, %.lr.ph.i.i.i.i.i21.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i23.i = phi ptr [ %i.sk, %.lr.ph.i.i.i.i.i21.i ], [ %.0811.i.i.i.i.i23.i.unr, %.lr.ph.i.i.i.i.i21.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i24.i = phi ptr [ %i.sj, %.lr.ph.i.i.i.i.i21.i ], [ %.0910.i.i.i.i.i24.i.unr, %.lr.ph.i.i.i.i.i21.i.prol.loopexit ] ; 9 uses
  %i.rn = load ptr, ptr %.0910.i.i.i.i.i24.i, align 8, !tbaa !238
  store ptr %i.rn, ptr %.0811.i.i.i.i.i23.i, align 8, !tbaa !264
  %i.ro = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24.i, i64 8
  %i.rp = load i32, ptr %i.ro, align 8, !tbaa !244
  %i.rq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23.i, i64 8
  store i32 %i.rp, ptr %i.rq, align 8, !tbaa !252
  %i.rr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24.i, i64 16
  %i.rs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23.i, i64 16
  %i.rt = load ptr, ptr %i.rr, align 8, !tbaa !238
  store ptr %i.rt, ptr %i.rs, align 8, !tbaa !264
  %i.ru = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24.i, i64 24
  %i.rv = load i32, ptr %i.ru, align 8, !tbaa !244
  %i.rw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23.i, i64 24
  store i32 %i.rv, ptr %i.rw, align 8, !tbaa !252
  %i.rx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24.i, i64 32
  %i.ry = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23.i, i64 32
  %i.rz = load ptr, ptr %i.rx, align 8, !tbaa !238
  store ptr %i.rz, ptr %i.ry, align 8, !tbaa !264
  %i.sa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24.i, i64 40
  %i.sb = load i32, ptr %i.sa, align 8, !tbaa !244
  %i.sc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23.i, i64 40
  store i32 %i.sb, ptr %i.sc, align 8, !tbaa !252
  %i.sd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24.i, i64 48
  %i.se = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23.i, i64 48
  %i.sf = load ptr, ptr %i.sd, align 8, !tbaa !238
  store ptr %i.sf, ptr %i.se, align 8, !tbaa !264
  %i.sg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24.i, i64 56
  %i.sh = load i32, ptr %i.sg, align 8, !tbaa !244
  %i.si = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23.i, i64 56
  store i32 %i.sh, ptr %i.si, align 8, !tbaa !252
  %i.sj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24.i, i64 64
  %i.sk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23.i, i64 64 ; 2 uses
  %i.sl = add nsw i64 %.012.i.i.i.i.i22.i, -4
  %i.sm = icmp sgt i64 %.012.i.i.i.i.i22.i, 4
  br i1 %i.sm, label %.lr.ph.i.i.i.i.i21.i, label %_ZSt4moveIPSt4pairIPKN4llvm5ValueEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit25.loopexit.i, !llvm.loop !9

_ZSt4moveIPSt4pairIPKN4llvm5ValueEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit25.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i21.i, %.lr.ph.i.i.i.i.i21.i.prol.loopexit
  %.lcssa179 = phi ptr [ %.lcssa179.unr, %.lr.ph.i.i.i.i.i21.i.prol.loopexit ], [ %i.sk, %.lr.ph.i.i.i.i.i21.i ]
  %4 = ptrtoint ptr %.lcssa179 to i64
  br label %"_ZSt12__move_mergeIPSt4pairIPKN4llvm5ValueEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNS1_15ValueEnumerator17OptimizeConstantsEjjE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit"

"_ZSt12__move_mergeIPSt4pairIPKN4llvm5ValueEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNS1_15ValueEnumerator17OptimizeConstantsEjjE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit": ; preds = %_ZSt4moveIPSt4pairIPKN4llvm5ValueEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i, %_ZSt4moveIPSt4pairIPKN4llvm5ValueEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit25.loopexit.i
  %.08.lcssa.i.i.i.i.i20.i = phi i64 [ %i.qw, %_ZSt4moveIPSt4pairIPKN4llvm5ValueEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i ], [ %4, %_ZSt4moveIPSt4pairIPKN4llvm5ValueEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit25.loopexit.i ]
  %i.sn = sub i64 %.08.lcssa.i.i.i.i.i20.i, %i.qw
  %i.so = getelementptr inbounds i8, ptr %i.qz, i64 %i.sn ; 2 uses
  %i.sp = sub i64 %i.o, %i.ra
  %i.sq = ashr exact i64 %i.sp, 4                 ; 2 uses
  %.not.i21 = icmp slt i64 %i.sq, %i.ma
  br i1 %.not.i21, label %"_ZSt17__merge_sort_loopIPSt4pairIPKN4llvm5ValueEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEElNS7_5__ops15_Iter_comp_iterIZNS1_15ValueEnumerator17OptimizeConstantsEjjE3$_0EEEvT_SI_T0_T1_T2_.exit", label %.lr.ph.i20, !llvm.loop !1114

"_ZSt17__merge_sort_loopIPSt4pairIPKN4llvm5ValueEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEElNS7_5__ops15_Iter_comp_iterIZNS1_15ValueEnumerator17OptimizeConstantsEjjE3$_0EEEvT_SI_T0_T1_T2_.exit": ; preds = %"_ZSt12__move_mergeIPSt4pairIPKN4llvm5ValueEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNS1_15ValueEnumerator17OptimizeConstantsEjjE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit", %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm5ValueEjESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZNS3_15ValueEnumerator17OptimizeConstantsEjjE3$_0EEEvT_SI_T0_T1_T2_.exit"
  %.0.lcssa.i23 = phi ptr [ %2, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm5ValueEjESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZNS3_15ValueEnumerator17OptimizeConstantsEjjE3$_0EEEvT_SI_T0_T1_T2_.exit" ], [ %i.mc, %"_ZSt12__move_mergeIPSt4pairIPKN4llvm5ValueEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNS1_15ValueEnumerator17OptimizeConstantsEjjE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit" ] ; 2 uses
  %.sroa.021.0.lcssa.i = phi ptr [ %0, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm5ValueEjESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZNS3_15ValueEnumerator17OptimizeConstantsEjjE3$_0EEEvT_SI_T0_T1_T2_.exit" ], [ %i.so, %"_ZSt12__move_mergeIPSt4pairIPKN4llvm5ValueEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNS1_15ValueEnumerator17OptimizeConstantsEjjE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit" ]
  %.lcssa.i = phi i64 [ %i.d, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm5ValueEjESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZNS3_15ValueEnumerator17OptimizeConstantsEjjE3$_0EEEvT_SI_T0_T1_T2_.exit" ], [ %i.sq, %"_ZSt12__move_mergeIPSt4pairIPKN4llvm5ValueEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNS1_15ValueEnumerator17OptimizeConstantsEjjE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit" ]
  %.sroa.speculated.i24 = tail call i64 @llvm.smin.i64(i64 %i.p, i64 %.lcssa.i)
  %i.sr = getelementptr inbounds [16 x i8], ptr %.0.lcssa.i23, i64 %.sroa.speculated.i24 ; 2 uses
  tail call fastcc void @"_ZSt12__move_mergeIPSt4pairIPKN4llvm5ValueEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNS1_15ValueEnumerator17OptimizeConstantsEjjE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_"(ptr noundef %.0.lcssa.i23, ptr noundef %i.sr, ptr noundef %i.sr, ptr noundef %i.e, ptr %.sroa.021.0.lcssa.i, ptr readonly %3)
  %i.ss = icmp slt i64 %i.ma, %i.d
  br i1 %i.ss, label %bb.b, label %._crit_edge, !llvm.loop !1115

._crit_edge:                                      ; preds = %"_ZSt17__merge_sort_loopIPSt4pairIPKN4llvm5ValueEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEElNS7_5__ops15_Iter_comp_iterIZNS1_15ValueEnumerator17OptimizeConstantsEjjE3$_0EEEvT_SI_T0_T1_T2_.exit", %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm5ValueEjESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_15ValueEnumerator17OptimizeConstantsEjjE3$_0EEEvT_SI_T0_T1_.exit"
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm5ValueEjESt6vectorIS7_SaIS7_EEEElS8_NS0_5__ops15_Iter_comp_iterIZNS3_15ValueEnumerator17OptimizeConstantsEjjE3$_0EEEvT_SI_SI_T0_SJ_T1_T2_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 %6) unnamed_addr #16 {
bb.a:
  %i.a = inttoptr i64 %6 to ptr                   ; 6 uses
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 4                   ; 5 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.i.i.i.i.i.preheader, label %"_ZSt21__move_merge_adaptiveIPSt4pairIPKN4llvm5ValueEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEESC_NS7_5__ops15_Iter_comp_iterIZNS1_15ValueEnumerator17OptimizeConstantsEjjE3$_0EEEvT_SI_T0_SJ_T1_T2_.exit"

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.b
  %xtraiter = and i64 %i.e, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.012.i.i.i.i.i.prol = phi i64 [ %i.m, %.lr.ph.i.i.i.i.i.prol ], [ %i.e, %.lr.ph.i.i.i.i.i.preheader ]
  %.0811.i.i.i.i.i.prol = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.prol ], [ %5, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.prol = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.prol ], [ %0, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.g = load ptr, ptr %.0910.i.i.i.i.i.prol, align 8, !tbaa !238
  store ptr %i.g, ptr %.0811.i.i.i.i.i.prol, align 8, !tbaa !264
  %i.h = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.prol, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !244
  %i.j = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.prol, i64 8
  store i32 %i.i, ptr %i.j, align 8, !tbaa !252
  %i.k = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.prol, i64 16 ; 3 uses
  %i.m = add nsw i64 %.012.i.i.i.i.i.prol, -1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !1125

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.012.i.i.i.i.i.unr = phi i64 [ %i.e, %.lr.ph.i.i.i.i.i.preheader ], [ %i.m, %.lr.ph.i.i.i.i.i.prol ]
  %.0811.i.i.i.i.i.unr = phi ptr [ %5, %.lr.ph.i.i.i.i.i.preheader ], [ %i.l, %.lr.ph.i.i.i.i.i.prol ]
  %.0910.i.i.i.i.i.unr = phi ptr [ %0, %.lr.ph.i.i.i.i.i.preheader ], [ %i.k, %.lr.ph.i.i.i.i.i.prol ]
  %.lcssa148.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.preheader ], [ %i.l, %.lr.ph.i.i.i.i.i.prol ]
  %i.n = icmp ult i64 %i.e, 4
  br i1 %i.n, label %.lr.ph.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.0811.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.0910.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.o = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !238
  store ptr %i.o, ptr %.0811.i.i.i.i.i, align 8, !tbaa !264
  %i.p = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !244
  %i.r = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store i32 %i.q, ptr %i.r, align 8, !tbaa !252
  %i.s = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !238
  store ptr %i.u, ptr %i.t, align 8, !tbaa !264
  %i.v = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !244
  %i.x = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  store i32 %i.w, ptr %i.x, align 8, !tbaa !252
  %i.y = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !238
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !264
  %i.ab = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 40
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !244
  %i.ad = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 40
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !252
  %i.ae = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 48
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !238
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !264
  %i.ah = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 56
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !244
  %i.aj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 56
  store i32 %i.ai, ptr %i.aj, align 8, !tbaa !252
  %i.ak = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 64
  %i.al = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 64 ; 2 uses
  %i.am = add nsw i64 %.012.i.i.i.i.i, -4
  %i.an = icmp sgt i64 %.012.i.i.i.i.i, 4
  br i1 %i.an, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i, !llvm.loop !9

.lr.ph.i:                                         ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa148 = phi ptr [ %.lcssa148.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.al, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  br label %bb.c

bb.c:                                             ; preds = %bb.l, %.lr.ph.i
  %.032.i = phi ptr [ %5, %.lr.ph.i ], [ %.1.i, %bb.l ] ; 7 uses
  %.sroa.018.031.i = phi ptr [ %1, %.lr.ph.i ], [ %.sroa.018.1.i, %bb.l ] ; 6 uses
  %.sroa.014.029.i = phi ptr [ %0, %.lr.ph.i ], [ %i.du, %bb.l ] ; 7 uses
  %.not21.i = icmp eq ptr %.sroa.018.031.i, %2
  br i1 %.not21.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.0.val.i = load ptr, ptr %.032.i, align 8, !tbaa !264 ; 2 uses
  %i.ar = getelementptr i8, ptr %.032.i, i64 8
  %.0.val13.i = load i32, ptr %i.ar, align 8      ; 2 uses
  %i.as = getelementptr i8, ptr %.0.val.i, i64 8
  %.0.val.val.i = load ptr, ptr %i.as, align 8, !tbaa !226 ; 3 uses
  %.val2.i.i = load ptr, ptr %.sroa.018.031.i, align 8, !tbaa !264 ; 2 uses
  %i.at = getelementptr i8, ptr %.val2.i.i, i64 8
  %.val2.val.i.i = load ptr, ptr %i.at, align 8, !tbaa !226 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.val2.val.i.i, %.0.val.val.i
  br i1 %.not.i.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm15ValueEnumerator17OptimizeConstantsEjjE3$_0EclINS_17__normal_iteratorIPSt4pairIPKNS2_5ValueEjESt6vectorISC_SaISC_EEEESD_EEbT_T0_.exit.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !328, !noalias !1156 ; 4 uses
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !329, !noalias !1156 ; 4 uses
  %i.aw = load i32, ptr %i.aq, align 4, !tbaa !330, !noalias !1156 ; 5 uses
  %i.ax = icmp eq i32 %i.aw, 0                    ; 2 uses
  br i1 %i.ax, label %.loopexit.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ay = add i32 %i.aw, -1                       ; 2 uses
  %i.az = ptrtoint ptr %.val2.val.i.i to i64
  %i.ba = mul i64 %i.az, -4658895280553007687     ; 2 uses
  %i.bb = lshr i64 %i.ba, 31
  %i.bc = xor i64 %i.bb, %i.ba
  %i.bd = trunc i64 %i.bc to i32
  %i.be = and i32 %i.ay, %i.bd                    ; 3 uses
  %i.bf = zext i32 %i.be to i64                   ; 2 uses
  %i.bg = lshr i64 %i.bf, 5
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !244, !noalias !1157
  %i.bj = and i32 %i.be, 31
  %i.bk = lshr i32 %i.bi, %i.bj
  %i.bl = trunc i32 %i.bk to i1
  br i1 %i.bl, label %.lr.ph.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i, !prof !245

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.f, %bb.g
  %i.bm = phi i64 [ %i.bs, %bb.g ], [ %i.bf, %bb.f ] ; 2 uses
  %.017.i.i.i.i.i.i.i = phi i32 [ %i.br, %bb.g ], [ %i.be, %bb.f ]
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !257, !noalias !1157
  %i.bp = icmp eq ptr %.val2.val.i.i, %i.bo
  br i1 %i.bp, label %_ZNK4llvm15ValueEnumerator9getTypeIDEPNS_4TypeE.exit.i.i.i, label %bb.g, !prof !246

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bq = add nuw i32 %.017.i.i.i.i.i.i.i, 1
  %i.br = and i32 %i.bq, %i.ay                    ; 3 uses
  %i.bs = zext i32 %i.br to i64                   ; 2 uses
  %i.bt = lshr i64 %i.bs, 5
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !244, !noalias !1157
  %i.bw = and i32 %i.br, 31
  %i.bx = lshr i32 %i.bv, %i.bw
  %i.by = trunc i32 %i.bx to i1
  br i1 %i.by, label %.lr.ph.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i, !prof !247

.loopexit.i.i.i.i.i.i:                            ; preds = %bb.g, %bb.f, %bb.e
  %i.bz = zext i32 %i.aw to i64
  br label %_ZNK4llvm15ValueEnumerator9getTypeIDEPNS_4TypeE.exit.i.i.i

_ZNK4llvm15ValueEnumerator9getTypeIDEPNS_4TypeE.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i
  %i.ca = phi i64 [ %i.bz, %.loopexit.i.i.i.i.i.i ], [ %i.bm, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !332
  %i.ce = add i32 %i.cd, -1
  br i1 %i.ax, label %.loopexit.i.i.i8.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4llvm15ValueEnumerator9getTypeIDEPNS_4TypeE.exit.i.i.i
  %i.cf = add i32 %i.aw, -1                       ; 2 uses
  %i.cg = ptrtoint ptr %.0.val.val.i to i64
  %i.ch = mul i64 %i.cg, -4658895280553007687     ; 2 uses
  %i.ci = lshr i64 %i.ch, 31
  %i.cj = xor i64 %i.ci, %i.ch
  %i.ck = trunc i64 %i.cj to i32
  %i.cl = and i32 %i.cf, %i.ck                    ; 3 uses
  %i.cm = zext i32 %i.cl to i64                   ; 2 uses
  %i.cn = lshr i64 %i.cm, 5
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !244, !noalias !1158
end_hunk_0
