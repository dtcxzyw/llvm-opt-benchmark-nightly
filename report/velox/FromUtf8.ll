inline.NumInlined: 7620
inline.NumDeleted: 2368
begin_hunk_0_@_ZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
  %i.my = add nsw i32 %i.mp, -1
  store i32 %i.my, ptr %i.mm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i81

bb.bw:                                            ; preds = %bb.bu
  %i.mz = atomicrmw volatile add ptr %i.mm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i81

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i81: ; preds = %bb.bw, %bb.bv
  %.0.i.i.i.i82 = phi i32 [ %i.mp, %bb.bv ], [ %i.mz, %bb.bw ]
  %i.na = icmp eq i32 %.0.i.i.i.i82, 1
  br i1 %i.na, label %bb.bx, label %_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE7EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !48

bb.bx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i81
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ml) #27
  br label %_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE7EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE7EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.bt, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i81, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  %i.nb = load ptr, ptr %5, align 8, !tbaa !152   ; 3 uses
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !45
  %i.nd = icmp eq ptr %i.nc, getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox10FlatVectorINS0_10StringViewEEE, i64 16)
  %i.ne = select i1 %i.nd, ptr %i.nb, ptr null
  store ptr %i.ne, ptr %i.f, align 8, !tbaa !228
  %i.nf = load i8, ptr %i.bh, align 1, !tbaa !170, !range !69, !noundef !70
  %i.ng = trunc nuw i8 %i.nf to i1
  br i1 %i.ng, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i, label %bb.by

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i:   ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE7EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.0.in.pre.i.i = load i8, ptr %i.bg, align 4, !tbaa !56, !range !69
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

bb.by:                                            ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE7EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.nh = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !154
  %i.nj = icmp eq i32 %i.ni, 0
  br i1 %i.nj, label %bb.bz, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.bz:                                            ; preds = %bb.by
  %i.nk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.nl = load i32, ptr %i.nk, align 8, !tbaa !171 ; 6 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.nn = load i32, ptr %i.nm, align 8, !tbaa !172
  %i.no = icmp eq i32 %i.nl, %i.nn
  br i1 %i.no, label %bb.ca, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.ca:                                            ; preds = %bb.bz
  %i.np = load ptr, ptr %1, align 8, !tbaa !173   ; 2 uses
  %.not.i.i.i89 = icmp sgt i32 %i.nl, 0
  br i1 %.not.i.i.i89, label %bb.cb, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.cb:                                            ; preds = %bb.ca
  %i.nq = and i32 %i.nl, 2147483584               ; 3 uses
  %i.nr = zext nneg i32 %i.nq to i64
  %.not37.i.i.not.i.i600.not = icmp eq i32 %i.nq, 0
  br i1 %.not37.i.i.not.i.i600.not, label %.critedge.i.i.i.i, label %.lr.ph602

bb.cc:                                            ; preds = %.lr.ph602
  %indvars.iv.next.i.i91 = add nuw nsw i64 %indvars.iv.i.i90601, 64 ; 2 uses
  %.not37.i.i.not.i.i = icmp samesign ult i64 %indvars.iv.next.i.i91, %i.nr
  br i1 %.not37.i.i.not.i.i, label %.lr.ph602, label %.critedge.i.i.i.i, !llvm.loop !174

.lr.ph602:                                        ; preds = %bb.cb, %bb.cc
  %indvars.iv.i.i90601 = phi i64 [ %indvars.iv.next.i.i91, %bb.cc ], [ 0, %bb.cb ] ; 2 uses
  %i.ns = lshr exact i64 %indvars.iv.i.i90601, 3
  %i.nt = getelementptr inbounds nuw i8, ptr %i.np, i64 %i.ns
  %i.nu = load i64, ptr %i.nt, align 8, !tbaa !116
  %i.nv = icmp eq i64 %i.nu, -1
  br i1 %i.nv, label %bb.cc, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, !llvm.loop !174

.critedge.i.i.i.i:                                ; preds = %bb.cc, %bb.cb
  %.not38.i.i.i.i = icmp eq i32 %i.nl, %i.nq
  br i1 %.not38.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, label %bb.cd

bb.cd:                                            ; preds = %.critedge.i.i.i.i
  %i.nw = lshr i32 %i.nl, 6
  %i.nx = and i32 %i.nl, 63
  %i.ny = zext nneg i32 %i.nx to i64
  %notmask.i40.i.i.i.i = shl nsw i64 -1, %i.ny
  %i.nz = zext nneg i32 %i.nw to i64
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.np, i64 %i.nz
  %i.ob = load i64, ptr %i.oa, align 8, !tbaa !116
  %.demorgan.i.i = or i64 %i.ob, %notmask.i40.i.i.i.i
  %i.oc = icmp eq i64 %.demorgan.i.i, -1
  %i.od = zext i1 %i.oc to i16
  %i.oe = or disjoint i16 %i.od, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i: ; preds = %.lr.ph602, %bb.cd, %.critedge.i.i.i.i, %bb.ca, %bb.bz, %bb.by
  %.sroa.0.0.insert.ext.i.i = phi i16 [ 256, %bb.bz ], [ 256, %bb.by ], [ 257, %bb.ca ], [ 257, %.critedge.i.i.i.i ], [ %i.oe, %bb.cd ], [ 256, %.lr.ph602 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i, ptr %i.bg, align 4
  %i.of = trunc i16 %.sroa.0.0.insert.ext.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i
  %.0.in.i.i = phi i8 [ %.0.in.pre.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i ], [ %i.of, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i ]
  %.0.i.i = trunc nuw i8 %.0.in.i.i to i1
  br i1 %.0.i.i, label %bb.ce, label %bb.cj

bb.ce:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.og = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.oh = load i32, ptr %i.og, align 8, !tbaa !171 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !154 ; 2 uses
  %i.ok = icmp slt i32 %i.oj, %i.oh
  br i1 %i.ok, label %.lr.ph.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit

.lr.ph.i:                                         ; preds = %bb.ce
  %i.ol = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !175
  %i.on = getelementptr inbounds nuw i8, ptr %i.i, i64 58
  %i.oo = load i8, ptr %i.on, align 2, !tbaa !176, !range !69, !noundef !70
  %i.op = trunc nuw i8 %i.oo to i1
  %i.oq = getelementptr inbounds nuw i8, ptr %i.i, i64 59
  %i.or = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.os = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.ot = sext i32 %i.oj to i64
  %wide.trip.count.i = sext i32 %i.oh to i64
  br label %bb.cf

bb.cf:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.ot, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i ] ; 3 uses
  %i.ou = phi i64 [ 0, %.lr.ph.i ], [ %i.pf, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i ]
  %i.ov = trunc nsw i64 %indvars.iv.i to i32
  br i1 %i.op, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ow = load i8, ptr %i.oq, align 1, !tbaa !136, !range !69, !noundef !70
  %i.ox = trunc nuw i8 %i.ow to i1
  br i1 %i.ox, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.oy = load i32, ptr %i.os, align 8, !tbaa !177
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i

bb.ci:                                            ; preds = %bb.cg
  %i.oz = load ptr, ptr %i.or, align 8, !tbaa !178
  %i.pa = getelementptr inbounds [4 x i8], ptr %i.oz, i64 %indvars.iv.i
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !3
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i: ; preds = %bb.ci, %bb.ch, %bb.cf
  %.0.i.i.i.i88 = phi i32 [ %i.pb, %bb.ci ], [ %i.oy, %bb.ch ], [ %i.ov, %bb.cf ]
  %i.pc = sext i32 %.0.i.i.i.i88 to i64
  %i.pd = getelementptr inbounds [16 x i8], ptr %i.om, i64 %i.pc
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.pd, align 8
  %i.pe = and i64 %.sroa.0.0.copyload.i.i.i, 4294967295
  %i.pf = add i64 %i.pe, %i.ou                    ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit, label %bb.cf, !llvm.loop !230

bb.cj:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.pg = load ptr, ptr %1, align 8, !tbaa !173   ; 4 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !154 ; 6 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.pk = load i32, ptr %i.pj, align 8, !tbaa !171 ; 7 uses
  %.not.i.i.i.i83 = icmp slt i32 %i.pi, %i.pk
  br i1 %.not.i.i.i.i83, label %bb.ck, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit

bb.ck:                                            ; preds = %bb.cj
  %i.pl = add i32 %i.pi, 63                       ; 2 uses
  %i.pm = srem i32 %i.pl, 64
  %i.pn = sub nsw i32 %i.pl, %i.pm                ; 6 uses
  %i.po = and i32 %i.pk, -64                      ; 8 uses
  %i.pp = icmp slt i32 %i.po, %i.pn
  br i1 %i.pp, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.pq = ashr i32 %i.pk, 6
  %i.pr = and i32 %i.pk, 63
  %i.ps = zext nneg i32 %i.pr to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.ps
  %i.pt = xor i64 %notmask.i.i.i.i.i, -1
  %i.pu = sub nsw i32 %i.pn, %i.pi                ; 2 uses
  %i.pv = zext nneg i32 %i.pu to i64
  %notmask.i.i.i.i.i.i86 = shl nsw i64 -1, %i.pv
  %i.pw = xor i64 %notmask.i.i.i.i.i.i86, -1
  %i.px = sub nsw i32 64, %i.pu
  %i.py = zext nneg i32 %i.px to i64
  %i.pz = shl i64 %i.pw, %i.py
  %i.qa = and i64 %i.pz, %i.pt
  %i.qb = sext i32 %i.pq to i64
  %i.qc = getelementptr inbounds [8 x i8], ptr %i.pg, i64 %i.qb
  %i.qd = load i64, ptr %i.qc, align 8, !tbaa !116
  %i.qe = and i64 %i.qa, %i.qd                    ; 4 uses
  %.not.i.i.i.i.i87 = icmp eq i64 %i.qe, 0
  br i1 %.not.i.i.i.i.i87, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.cl
  %i.qf = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !175 ; 3 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.i, i64 58
  %i.qi = load i8, ptr %i.qh, align 2, !tbaa !176, !range !69, !noundef !70
  %i.qj = trunc nuw i8 %i.qi to i1
  %i.qk = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ql = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  br i1 %i.qj, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i.i.i.i.i, label %.preheader.split.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i.i.i.i.i
  %i.qm = phi i64 [ %i.qq, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i ]
  %.012.us.i.i.i.i.i = phi i64 [ %i.qs, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i.i.i.i.i ], [ %i.qe, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.qn = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.us.i.i.i.i.i, i1 true)
  %34 = trunc nuw nsw i64 %i.qn to i32
  %35 = or disjoint i32 %i.po, %34
  %36 = sext i32 %35 to i64
  %i.qo = getelementptr inbounds [16 x i8], ptr %i.qg, i64 %36
  %.sroa.0.0.copyload.i.i.us.i.i.i.i.i = load i64, ptr %i.qo, align 8
  %i.qp = and i64 %.sroa.0.0.copyload.i.i.us.i.i.i.i.i, 4294967295
  %i.qq = add i64 %i.qp, %i.qm                    ; 2 uses
  %i.qr = add nsw i64 %.012.us.i.i.i.i.i, -1
  %i.qs = and i64 %i.qr, %.012.us.i.i.i.i.i       ; 2 uses
  %.not10.us.i.i.i.i.i = icmp eq i64 %i.qs, 0
  br i1 %.not10.us.i.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i.i.i.i.i, !llvm.loop !231

.preheader.split.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i
  %i.qt = getelementptr inbounds nuw i8, ptr %i.i, i64 59
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !136, !range !69, !noundef !70
  %i.qv = trunc nuw i8 %i.qu to i1
  br i1 %i.qv, label %.preheader.split.split.us.i.i.i.i.i, label %.preheader.split.split.i.i.i.i.i

.preheader.split.split.us.i.i.i.i.i:              ; preds = %.preheader.split.i.i.i.i.i
  %i.qw = load i32, ptr %i.ql, align 8, !tbaa !177
  %i.qx = sext i32 %i.qw to i64
  %i.qy = getelementptr inbounds [16 x i8], ptr %i.qg, i64 %i.qx
  %.sroa.0.0.copyload.i.i.us17.i.i.i.i.i = load i64, ptr %i.qy, align 8
  %i.qz = and i64 %.sroa.0.0.copyload.i.i.us17.i.i.i.i.i, 4294967295
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us15.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us15.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us15.i.i.i.i.i, %.preheader.split.split.us.i.i.i.i.i
  %i.ra = phi i64 [ 0, %.preheader.split.split.us.i.i.i.i.i ], [ %i.rb, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us15.i.i.i.i.i ]
  %.012.us13.i.i.i.i.i = phi i64 [ %i.qe, %.preheader.split.split.us.i.i.i.i.i ], [ %i.rd, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us15.i.i.i.i.i ] ; 2 uses
  %i.rb = add i64 %i.qz, %i.ra                    ; 2 uses
  %i.rc = add nsw i64 %.012.us13.i.i.i.i.i, -1
  %i.rd = and i64 %i.rc, %.012.us13.i.i.i.i.i     ; 2 uses
  %.not10.us18.i.i.i.i.i = icmp eq i64 %i.rd, 0
  br i1 %.not10.us18.i.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us15.i.i.i.i.i, !llvm.loop !231

.preheader.split.split.i.i.i.i.i:                 ; preds = %.preheader.split.i.i.i.i.i
  %i.re = load ptr, ptr %i.qk, align 8, !tbaa !178
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i, %.preheader.split.split.i.i.i.i.i
  %i.rf = phi i64 [ 0, %.preheader.split.split.i.i.i.i.i ], [ %i.rm, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i ]
  %.012.i.i.i.i.i = phi i64 [ %i.qe, %.preheader.split.split.i.i.i.i.i ], [ %i.ro, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i ] ; 3 uses
  %i.rg = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i.i.i.i.i, i1 true)
  %37 = trunc nuw nsw i64 %i.rg to i32
  %38 = or disjoint i32 %i.po, %37
  %39 = sext i32 %38 to i64
  %i.rh = getelementptr inbounds [4 x i8], ptr %i.re, i64 %39
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !3
  %i.rj = sext i32 %i.ri to i64
  %i.rk = getelementptr inbounds [16 x i8], ptr %i.qg, i64 %i.rj
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.rk, align 8
  %i.rl = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 4294967295
  %i.rm = add i64 %i.rl, %i.rf                    ; 2 uses
  %i.rn = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ro = and i64 %i.rn, %.012.i.i.i.i.i          ; 2 uses
  %.not10.i.i.i.i.i = icmp eq i64 %i.ro, 0
  br i1 %.not10.i.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i, !llvm.loop !231

bb.cm:                                            ; preds = %bb.ck
  %.not32.i.i.i.i = icmp eq i32 %i.pi, %i.pn
  br i1 %.not32.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit57.i.i.i.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.rp = sdiv i32 %i.pi, 64                      ; 2 uses
  %i.rq = sub nsw i32 %i.pn, %i.pi                ; 2 uses
  %i.rr = zext nneg i32 %i.rq to i64
  %notmask.i.i35.i.i.i.i = shl nsw i64 -1, %i.rr
  %i.rs = xor i64 %notmask.i.i35.i.i.i.i, -1
  %i.rt = sub nsw i32 64, %i.rq
  %i.ru = zext nneg i32 %i.rt to i64
  %i.rv = shl i64 %i.rs, %i.ru
  %i.rw = sext i32 %i.rp to i64
  %i.rx = getelementptr inbounds [8 x i8], ptr %i.pg, i64 %i.rw
  %i.ry = load i64, ptr %i.rx, align 8, !tbaa !116
  %i.rz = and i64 %i.ry, %i.rv                    ; 4 uses
  %.not.i36.i.i.i.i = icmp eq i64 %i.rz, 0
  br i1 %.not.i36.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit57.i.i.i.i, label %.preheader.i37.i.i.i.i

.preheader.i37.i.i.i.i:                           ; preds = %bb.cn
  %i.sa = shl nsw i32 %i.rp, 6                    ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !175 ; 3 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.i, i64 58
  %i.se = load i8, ptr %i.sd, align 2, !tbaa !176, !range !69, !noundef !70
  %i.sf = trunc nuw i8 %i.se to i1
  %i.sg = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.sh = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  br i1 %i.sf, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i52.i.i.i.i, label %.preheader.split.i39.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i52.i.i.i.i: ; preds = %.preheader.i37.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i52.i.i.i.i
  %i.si = phi i64 [ %i.sm, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i52.i.i.i.i ], [ 0, %.preheader.i37.i.i.i.i ]
  %.012.us.i53.i.i.i.i = phi i64 [ %i.so, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i52.i.i.i.i ], [ %i.rz, %.preheader.i37.i.i.i.i ] ; 3 uses
  %i.sj = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.us.i53.i.i.i.i, i1 true)
  %40 = trunc nuw nsw i64 %i.sj to i32
  %41 = or disjoint i32 %i.sa, %40
  %42 = sext i32 %41 to i64
  %i.sk = getelementptr inbounds [16 x i8], ptr %i.sc, i64 %42
  %.sroa.0.0.copyload.i.i.us.i55.i.i.i.i = load i64, ptr %i.sk, align 8
  %i.sl = and i64 %.sroa.0.0.copyload.i.i.us.i55.i.i.i.i, 4294967295
  %i.sm = add i64 %i.sl, %i.si                    ; 2 uses
  %i.sn = add i64 %.012.us.i53.i.i.i.i, -1
  %i.so = and i64 %i.sn, %.012.us.i53.i.i.i.i     ; 2 uses
  %.not10.us.i56.i.i.i.i = icmp eq i64 %i.so, 0
  br i1 %.not10.us.i56.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit57.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i52.i.i.i.i, !llvm.loop !231

.preheader.split.i39.i.i.i.i:                     ; preds = %.preheader.i37.i.i.i.i
  %i.sp = getelementptr inbounds nuw i8, ptr %i.i, i64 59
  %i.sq = load i8, ptr %i.sp, align 1, !tbaa !136, !range !69, !noundef !70
  %i.sr = trunc nuw i8 %i.sq to i1
  br i1 %i.sr, label %.preheader.split.split.us.i46.i.i.i.i, label %.preheader.split.split.i40.i.i.i.i

.preheader.split.split.us.i46.i.i.i.i:            ; preds = %.preheader.split.i39.i.i.i.i
  %i.ss = load i32, ptr %i.sh, align 8, !tbaa !177
  %i.st = sext i32 %i.ss to i64
  %i.su = getelementptr inbounds [16 x i8], ptr %i.sc, i64 %i.st
  %.sroa.0.0.copyload.i.i.us17.i50.i.i.i.i = load i64, ptr %i.su, align 8
  %i.sv = and i64 %.sroa.0.0.copyload.i.i.us17.i50.i.i.i.i, 4294967295
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us15.i47.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us15.i47.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us15.i47.i.i.i.i, %.preheader.split.split.us.i46.i.i.i.i
  %i.sw = phi i64 [ 0, %.preheader.split.split.us.i46.i.i.i.i ], [ %i.sx, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us15.i47.i.i.i.i ]
  %.012.us13.i48.i.i.i.i = phi i64 [ %i.rz, %.preheader.split.split.us.i46.i.i.i.i ], [ %i.sz, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us15.i47.i.i.i.i ] ; 2 uses
  %i.sx = add i64 %i.sv, %i.sw                    ; 2 uses
  %i.sy = add i64 %.012.us13.i48.i.i.i.i, -1
  %i.sz = and i64 %i.sy, %.012.us13.i48.i.i.i.i   ; 2 uses
  %.not10.us18.i51.i.i.i.i = icmp eq i64 %i.sz, 0
  br i1 %.not10.us18.i51.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit57.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us15.i47.i.i.i.i, !llvm.loop !231

.preheader.split.split.i40.i.i.i.i:               ; preds = %.preheader.split.i39.i.i.i.i
  %i.ta = load ptr, ptr %i.sg, align 8, !tbaa !178
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i, %.preheader.split.split.i40.i.i.i.i
  %i.tb = phi i64 [ 0, %.preheader.split.split.i40.i.i.i.i ], [ %i.ti, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i ]
  %.012.i42.i.i.i.i = phi i64 [ %i.rz, %.preheader.split.split.i40.i.i.i.i ], [ %i.tk, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i ] ; 3 uses
  %i.tc = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i42.i.i.i.i, i1 true)
  %43 = trunc nuw nsw i64 %i.tc to i32
  %44 = or disjoint i32 %i.sa, %43
  %45 = sext i32 %44 to i64
  %i.td = getelementptr inbounds [4 x i8], ptr %i.ta, i64 %45
  %i.te = load i32, ptr %i.td, align 4, !tbaa !3
  %i.tf = sext i32 %i.te to i64
  %i.tg = getelementptr inbounds [16 x i8], ptr %i.sc, i64 %i.tf
  %.sroa.0.0.copyload.i.i.i44.i.i.i.i = load i64, ptr %i.tg, align 8
  %i.th = and i64 %.sroa.0.0.copyload.i.i.i44.i.i.i.i, 4294967295
  %i.ti = add i64 %i.th, %i.tb                    ; 2 uses
  %i.tj = add i64 %.012.i42.i.i.i.i, -1
  %i.tk = and i64 %i.tj, %.012.i42.i.i.i.i        ; 2 uses
  %.not10.i45.i.i.i.i = icmp eq i64 %i.tk, 0
  br i1 %.not10.i45.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit57.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i, !llvm.loop !231

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit57.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us15.i47.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i52.i.i.i.i, %bb.cn, %bb.cm
  %.0 = phi i64 [ 0, %bb.cm ], [ 0, %bb.cn ], [ %i.sm, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i52.i.i.i.i ], [ %i.sx, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us15.i47.i.i.i.i ], [ %i.ti, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i ] ; 2 uses
  %i.tl = add nsw i32 %i.pn, 64                   ; 2 uses
  %.not33100.i.i.i.i = icmp sgt i32 %i.tl, %i.po
  br i1 %.not33100.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit57.i.i.i.i
  %i.tm = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.i, i64 58 ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.i, i64 59 ; 2 uses
  br label %bb.co

._crit_edge.i.i.i.i:                              ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit57.i.i.i.i
  %.3 = phi i64 [ %.0, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit57.i.i.i.i ], [ %.2, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i ] ; 5 uses
  %.not34.i.i.i.i = icmp eq i32 %i.pk, %i.po
  br i1 %.not34.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit, label %bb.cq

bb.co:                                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.1 = phi i64 [ %.0, %.lr.ph.i.i.i.i ], [ %.2, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i ] ; 13 uses
  %i.tr = phi i32 [ %i.tl, %.lr.ph.i.i.i.i ], [ %i.agn, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i ] ; 2 uses
  %.0101.i.i.i.i = phi i32 [ %i.pn, %.lr.ph.i.i.i.i ], [ %i.tr, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i ] ; 2 uses
  %i.ts = sdiv i32 %.0101.i.i.i.i, 64             ; 3 uses
  %i.tt = sext i32 %i.ts to i64
  %i.tu = getelementptr inbounds [8 x i8], ptr %i.pg, i64 %i.tt
  %i.tv = load i64, ptr %i.tu, align 8, !tbaa !116 ; 4 uses
  switch i64 %i.tv, label %.lr.ph.i.i.i.i.i85 [
    i64 -1, label %bb.cp
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i
  ]

.lr.ph.i.i.i.i.i85:                               ; preds = %bb.co
  %i.tw = shl nsw i32 %i.ts, 6                    ; 2 uses
  %i.tx = load ptr, ptr %i.tm, align 8, !tbaa !175 ; 3 uses
  %i.ty = load i8, ptr %i.tn, align 2, !tbaa !176, !range !69, !noundef !70
  %i.tz = trunc nuw i8 %i.ty to i1
  br i1 %i.tz, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i63.i.i.i.i, label %.lr.ph.split.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i63.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i85, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i63.i.i.i.i
  %i.ua = phi i64 [ %i.ue, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i63.i.i.i.i ], [ %.1, %.lr.ph.i.i.i.i.i85 ]
  %.01524.us.i.i.i.i.i = phi i64 [ %i.ug, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i63.i.i.i.i ], [ %i.tv, %.lr.ph.i.i.i.i.i85 ] ; 3 uses
  %i.ub = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01524.us.i.i.i.i.i, i1 true)
  %46 = trunc nuw nsw i64 %i.ub to i32
  %47 = or disjoint i32 %i.tw, %46
  %48 = sext i32 %47 to i64
  %i.uc = getelementptr inbounds [16 x i8], ptr %i.tx, i64 %48
  %.sroa.0.0.copyload.i.i21.us.i.i.i.i.i = load i64, ptr %i.uc, align 8
  %i.ud = and i64 %.sroa.0.0.copyload.i.i21.us.i.i.i.i.i, 4294967295
  %i.ue = add i64 %i.ud, %i.ua                    ; 2 uses
  %i.uf = add i64 %.01524.us.i.i.i.i.i, -1
  %i.ug = and i64 %i.uf, %.01524.us.i.i.i.i.i     ; 2 uses
  %.not.us.i.i.i.i.i = icmp eq i64 %i.ug, 0
  br i1 %.not.us.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i63.i.i.i.i, !llvm.loop !232

.lr.ph.split.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i85
  %i.uh = load i8, ptr %i.tq, align 1, !tbaa !136, !range !69, !noundef !70
  %i.ui = trunc nuw i8 %i.uh to i1
  br i1 %i.ui, label %.lr.ph.split.split.us.i.i.i.i.i, label %.lr.ph.split.split.i.i.i.i.i

.lr.ph.split.split.us.i.i.i.i.i:                  ; preds = %.lr.ph.split.i.i.i.i.i
  %i.uj = load i32, ptr %i.tp, align 8, !tbaa !177
  %i.uk = sext i32 %i.uj to i64
  %i.ul = getelementptr inbounds [16 x i8], ptr %i.tx, i64 %i.uk
  %.sroa.0.0.copyload.i.i21.us29.i.i.i.i.i = load i64, ptr %i.ul, align 8
  %i.um = and i64 %.sroa.0.0.copyload.i.i21.us29.i.i.i.i.i, 4294967295
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us27.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us27.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us27.i.i.i.i.i, %.lr.ph.split.split.us.i.i.i.i.i
  %i.un = phi i64 [ %.1, %.lr.ph.split.split.us.i.i.i.i.i ], [ %i.uo, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us27.i.i.i.i.i ]
  %.01524.us25.i.i.i.i.i = phi i64 [ %i.tv, %.lr.ph.split.split.us.i.i.i.i.i ], [ %i.uq, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us27.i.i.i.i.i ] ; 2 uses
  %i.uo = add i64 %i.um, %i.un                    ; 2 uses
  %i.up = add i64 %.01524.us25.i.i.i.i.i, -1
  %i.uq = and i64 %i.up, %.01524.us25.i.i.i.i.i   ; 2 uses
  %.not.us30.i.i.i.i.i = icmp eq i64 %i.uq, 0
  br i1 %.not.us30.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us27.i.i.i.i.i, !llvm.loop !232

.lr.ph.split.split.i.i.i.i.i:                     ; preds = %.lr.ph.split.i.i.i.i.i
  %i.ur = load ptr, ptr %i.to, align 8, !tbaa !178
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i60.i.i.i.i

bb.cp:                                            ; preds = %bb.co
  %i.us = shl nsw i32 %i.ts, 6                    ; 4 uses
  %i.ut = sext i32 %i.us to i64                   ; 19 uses
  %i.uu = add i32 %i.us, 64
  %i.uv = sext i32 %i.uu to i64                   ; 7 uses
  %.0.off.i.i.i.i = add i32 %.0101.i.i.i.i, 127
  %.not38.i.i.i.i.i84 = icmp ult i32 %.0.off.i.i.i.i, 64
  br i1 %.not38.i.i.i.i.i84, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i, label %.lr.ph32.i.i.i.i.i

.lr.ph32.i.i.i.i.i:                               ; preds = %bb.cp
  %i.uw = load ptr, ptr %i.tm, align 8, !tbaa !175 ; 28 uses
  %i.ux = load i8, ptr %i.tn, align 2, !tbaa !176, !range !69, !noundef !70
  %i.uy = trunc nuw i8 %i.ux to i1
  br i1 %i.uy, label %iter.check, label %.lr.ph32.split.i.i.i.i.i

iter.check:                                       ; preds = %.lr.ph32.i.i.i.i.i
  %i.uz = or disjoint i64 %i.ut, 1
  %umax610 = call i64 @llvm.umax.i64(i64 %i.uz, i64 %i.uv) ; 5 uses
  %i.va = sub i64 %umax610, %i.ut                 ; 4 uses
  %min.iters.check = icmp ult i64 %i.va, 5
  br i1 %min.iters.check, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.us.i.i.i.i.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.vb = or disjoint i64 %i.ut, 1
  %umax609 = call i64 @llvm.umax.i64(i64 %i.vb, i64 %i.uv)
  %i.vc = xor i64 %i.ut, -1
  %i.vd = add i64 %umax609, %i.vc                 ; 2 uses
  %i.ve = sext i32 %i.us to i36                   ; 2 uses
  %i.vf = shl nsw i36 %i.ve, 4
  %i.vg = trunc i64 %i.vd to i36
  %i.vh = add i36 %i.ve, %i.vg
  %i.vi = shl i36 %i.vh, 4
  %i.vj = icmp slt i36 %i.vi, %i.vf
  %i.vk = icmp ugt i64 %i.vd, 4294967295
  %i.vl = or i1 %i.vj, %i.vk
  br i1 %i.vl, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.us.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check611 = icmp ult i64 %i.va, 17
  br i1 %min.iters.check611, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.vm = trunc i64 %umax610 to i1                ; 2 uses
  %.neg = select i1 %i.vm, i64 -1, i64 -16        ; 2 uses
  %n.vec = add i64 %.neg, %i.va                   ; 2 uses
  %i.vn = add i64 %.neg, %umax610
  %i.vo = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %.1, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i64> [ %i.vo, %vector.ph ], [ %i.wj, %vector.body ]
  %vec.phi612 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.wk, %vector.body ]
  %vec.phi613 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.wl, %vector.body ]
  %vec.phi614 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.wm, %vector.body ]
  %i.vp = add i64 %index, %i.ut                   ; 4 uses
  %i.vq = shl i64 %i.vp, 32
  %i.vr = shl i64 %i.vp, 32
  %i.vs = shl i64 %i.vp, 32
  %i.vt = shl i64 %i.vp, 32
  %i.vu = ashr exact i64 %i.vq, 28
  %i.vv = ashr exact i64 %i.vr, 28
  %i.vw = ashr exact i64 %i.vs, 28
  %i.vx = ashr exact i64 %i.vt, 28
  %i.vy = getelementptr inbounds i8, ptr %i.uw, i64 %i.vu
  %i.vz = getelementptr i8, ptr %i.uw, i64 %i.vv
  %i.wa = getelementptr i8, ptr %i.vz, i64 64
  %i.wb = getelementptr i8, ptr %i.uw, i64 %i.vw
  %i.wc = getelementptr i8, ptr %i.wb, i64 128
  %i.wd = getelementptr i8, ptr %i.uw, i64 %i.vx
  %i.we = getelementptr i8, ptr %i.wd, i64 192
  %wide.vec = load <8 x i64>, ptr %i.vy, align 8
  %strided.vec = shufflevector <8 x i64> %wide.vec, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec615 = load <8 x i64>, ptr %i.wa, align 8
  %strided.vec616 = shufflevector <8 x i64> %wide.vec615, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec617 = load <8 x i64>, ptr %i.wc, align 8
  %strided.vec618 = shufflevector <8 x i64> %wide.vec617, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec619 = load <8 x i64>, ptr %i.we, align 8
  %strided.vec620 = shufflevector <8 x i64> %wide.vec619, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.wf = and <4 x i64> %strided.vec, splat (i64 4294967295)
  %i.wg = and <4 x i64> %strided.vec616, splat (i64 4294967295)
  %i.wh = and <4 x i64> %strided.vec618, splat (i64 4294967295)
  %i.wi = and <4 x i64> %strided.vec620, splat (i64 4294967295)
  %i.wj = add <4 x i64> %i.wf, %vec.phi           ; 2 uses
  %i.wk = add <4 x i64> %i.wg, %vec.phi612        ; 2 uses
  %i.wl = add <4 x i64> %i.wh, %vec.phi613        ; 2 uses
  %i.wm = add <4 x i64> %i.wi, %vec.phi614        ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.wn = icmp eq i64 %index.next, %n.vec
  br i1 %i.wn, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !233

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = add <4 x i64> %i.wk, %i.wj
  %bin.rdx621 = add <4 x i64> %i.wl, %bin.rdx
  %bin.rdx622 = add <4 x i64> %i.wm, %bin.rdx621
  %i.wo = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx622) ; 2 uses
  br i1 %i.vm, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.us.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !236

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.wo, %vec.epilog.iter.check ], [ %.1, %vector.main.loop.iter.check ]
  %n.mod.vf623 = and i64 %umax610, 1
  %i.wp = icmp eq i64 %n.mod.vf623, 0
  %.neg672 = select i1 %i.wp, i64 -4, i64 -1      ; 2 uses
  %n.vec624 = add i64 %.neg672, %i.va
  %i.wq = add i64 %.neg672, %umax610
  %i.wr = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index625 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next629, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi626 = phi <4 x i64> [ %i.wr, %vec.epilog.ph ], [ %i.wx, %vec.epilog.vector.body ]
  %i.ws = add i64 %index625, %i.ut
  %i.wt = shl i64 %i.ws, 32
  %i.wu = ashr exact i64 %i.wt, 28
  %i.wv = getelementptr inbounds i8, ptr %i.uw, i64 %i.wu
  %wide.vec627 = load <8 x i64>, ptr %i.wv, align 8
  %strided.vec628 = shufflevector <8 x i64> %wide.vec627, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ww = and <4 x i64> %strided.vec628, splat (i64 4294967295)
  %i.wx = add <4 x i64> %i.ww, %vec.phi626        ; 2 uses
  %index.next629 = add nuw i64 %index625, 4       ; 2 uses
  %i.wy = icmp eq i64 %index.next629, %n.vec624
  br i1 %i.wy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !237

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.wz = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.wx)
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.us.i.i.i.i.i.preheader

_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.us.i.i.i.i.i.preheader: ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.1, %iter.check ], [ %.1, %vector.scevcheck ], [ %i.wo, %vec.epilog.iter.check ], [ %i.wz, %vec.epilog.middle.block ]
  %.031.us.i.i.i.i.i.ph = phi i64 [ %i.ut, %iter.check ], [ %i.ut, %vector.scevcheck ], [ %i.vn, %vec.epilog.iter.check ], [ %i.wq, %vec.epilog.middle.block ]
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.us.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.us.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.us.i.i.i.i.i.preheader, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.us.i.i.i.i.i
  %i.xa = phi i64 [ %i.xe, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.us.i.i.i.i.i ], [ %.ph, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.us.i.i.i.i.i.preheader ]
  %.031.us.i.i.i.i.i = phi i64 [ %i.xf, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.us.i.i.i.i.i ], [ %.031.us.i.i.i.i.i.ph, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.us.i.i.i.i.i.preheader ] ; 2 uses
  %sext.i.i.i.i.i = shl i64 %.031.us.i.i.i.i.i, 32
  %i.xb = ashr exact i64 %sext.i.i.i.i.i, 28
  %i.xc = getelementptr inbounds i8, ptr %i.uw, i64 %i.xb
  %.sroa.0.0.copyload.i.i.us.i59.i.i.i.i = load i64, ptr %i.xc, align 8
  %i.xd = and i64 %.sroa.0.0.copyload.i.i.us.i59.i.i.i.i, 4294967295
  %i.xe = add i64 %i.xd, %i.xa                    ; 2 uses
  %i.xf = add nuw i64 %.031.us.i.i.i.i.i, 1       ; 2 uses
  %i.xg = icmp ult i64 %i.xf, %i.uv
  br i1 %i.xg, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.us.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i, !llvm.loop !238

.lr.ph32.split.i.i.i.i.i:                         ; preds = %.lr.ph32.i.i.i.i.i
  %i.xh = load i8, ptr %i.tq, align 1, !tbaa !136, !range !69, !noundef !70
  %i.xi = trunc nuw i8 %i.xh to i1
  br i1 %i.xi, label %.lr.ph32.split.split.us.i.i.i.i.i, label %iter.check657

.lr.ph32.split.split.us.i.i.i.i.i:                ; preds = %.lr.ph32.split.i.i.i.i.i
  %i.xj = load i32, ptr %i.tp, align 8, !tbaa !177
  %i.xk = sext i32 %i.xj to i64
  %i.xl = getelementptr inbounds [16 x i8], ptr %i.uw, i64 %i.xk
  %.sroa.0.0.copyload.i.i.us37.i.i.i.i.i = load i64, ptr %i.xl, align 8
  %i.xm = and i64 %.sroa.0.0.copyload.i.i.us37.i.i.i.i.i, 4294967295
  %i.xn = or disjoint i64 %i.ut, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.xn, i64 %i.uv)
  %i.xo = sub nsw i64 %umax, %i.ut
  %i.xp = mul i64 %i.xo, %i.xm
  %i.xq = add i64 %.1, %i.xp
  br label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i

iter.check657:                                    ; preds = %.lr.ph32.split.i.i.i.i.i
  %i.xr = load ptr, ptr %i.to, align 8, !tbaa !178 ; 21 uses
  %i.xs = or disjoint i64 %i.ut, 1
  %umax637 = call i64 @llvm.umax.i64(i64 %i.xs, i64 %i.uv) ; 2 uses
  %i.xt = sub i64 %umax637, %i.ut                 ; 3 uses
  %min.iters.check638 = icmp ult i64 %i.xt, 4
  br i1 %min.iters.check638, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.preheader, label %vector.scevcheck632

vector.scevcheck632:                              ; preds = %iter.check657
  %i.xu = or disjoint i64 %i.ut, 1
  %umax633 = call i64 @llvm.umax.i64(i64 %i.xu, i64 %i.uv)
  %i.xv = xor i64 %i.ut, -1
  %i.xw = add i64 %umax633, %i.xv                 ; 2 uses
  %i.xx = sext i32 %i.us to i34                   ; 2 uses
  %i.xy = shl nsw i34 %i.xx, 2
  %i.xz = trunc i64 %i.xw to i34
  %i.ya = add i34 %i.xx, %i.xz
  %i.yb = shl i34 %i.ya, 2
  %i.yc = icmp slt i34 %i.yb, %i.xy
  %i.yd = icmp ugt i64 %i.xw, 4294967295
  %i.ye = or i1 %i.yc, %i.yd
  br i1 %i.ye, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.preheader, label %vector.main.loop.iter.check639

vector.main.loop.iter.check639:                   ; preds = %vector.scevcheck632
  %min.iters.check640 = icmp ult i64 %i.xt, 16
  %n.mod.vf662 = and i64 %umax637, 1              ; 3 uses
  %n.vec663 = sub i64 %i.xt, %n.mod.vf662         ; 3 uses
  %i.yf = add i64 %n.vec663, %i.ut                ; 2 uses
  %i.yg = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %.1, i64 0 ; 2 uses
  br i1 %min.iters.check640, label %vec.epilog.vector.body664, label %vector.body644

vector.body644:                                   ; preds = %vector.main.loop.iter.check639, %vector.body644
  %index645 = phi i64 [ %index.next650, %vector.body644 ], [ 0, %vector.main.loop.iter.check639 ] ; 2 uses
  %vec.phi646 = phi <4 x i64> [ %i.adz, %vector.body644 ], [ %i.yg, %vector.main.loop.iter.check639 ]
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
  %i.zu = getelementptr i8, ptr %i.zt, i64 12
  %i.zv = getelementptr i8, ptr %i.xr, i64 %i.zc
  %i.zw = getelementptr i8, ptr %i.zv, i64 16
  %i.zx = getelementptr i8, ptr %i.xr, i64 %i.zd
  %i.zy = getelementptr i8, ptr %i.zx, i64 20
  %i.zz = getelementptr i8, ptr %i.xr, i64 %i.ze
  %i.aaa = getelementptr i8, ptr %i.zz, i64 24
  %i.aab = getelementptr i8, ptr %i.xr, i64 %i.zf
  %i.aac = getelementptr i8, ptr %i.aab, i64 28
  %i.aad = getelementptr i8, ptr %i.xr, i64 %i.zg
  %i.aae = getelementptr i8, ptr %i.aad, i64 32
  %i.aaf = getelementptr i8, ptr %i.xr, i64 %i.zh
  %i.aag = getelementptr i8, ptr %i.aaf, i64 36
  %i.aah = getelementptr i8, ptr %i.xr, i64 %i.zi
  %i.aai = getelementptr i8, ptr %i.aah, i64 40
  %i.aaj = getelementptr i8, ptr %i.xr, i64 %i.zj
  %i.aak = getelementptr i8, ptr %i.aaj, i64 44
  %i.aal = getelementptr i8, ptr %i.xr, i64 %i.zk
  %i.aam = getelementptr i8, ptr %i.aal, i64 48
  %i.aan = getelementptr i8, ptr %i.xr, i64 %i.zl
  %i.aao = getelementptr i8, ptr %i.aan, i64 52
  %i.aap = getelementptr i8, ptr %i.xr, i64 %i.zm
  %i.aaq = getelementptr i8, ptr %i.aap, i64 56
  %i.aar = getelementptr i8, ptr %i.xr, i64 %i.zn
  %i.aas = getelementptr i8, ptr %i.aar, i64 60
  %i.aat = load i32, ptr %i.zo, align 4, !tbaa !3
  %i.aau = load i32, ptr %i.zq, align 4, !tbaa !3
  %i.aav = load i32, ptr %i.zs, align 4, !tbaa !3
  %i.aaw = load i32, ptr %i.zu, align 4, !tbaa !3
  %i.aax = load i32, ptr %i.zw, align 4, !tbaa !3
  %i.aay = load i32, ptr %i.zy, align 4, !tbaa !3
  %i.aaz = load i32, ptr %i.aaa, align 4, !tbaa !3
  %i.aba = load i32, ptr %i.aac, align 4, !tbaa !3
  %i.abb = load i32, ptr %i.aae, align 4, !tbaa !3
  %i.abc = load i32, ptr %i.aag, align 4, !tbaa !3
  %i.abd = load i32, ptr %i.aai, align 4, !tbaa !3
  %i.abe = load i32, ptr %i.aak, align 4, !tbaa !3
  %i.abf = load i32, ptr %i.aam, align 4, !tbaa !3
  %i.abg = load i32, ptr %i.aao, align 4, !tbaa !3
  %i.abh = load i32, ptr %i.aaq, align 4, !tbaa !3
  %i.abi = load i32, ptr %i.aas, align 4, !tbaa !3
  %i.abj = sext i32 %i.aat to i64
  %i.abk = sext i32 %i.aau to i64
  %i.abl = sext i32 %i.aav to i64
  %i.abm = sext i32 %i.aaw to i64
  %i.abn = sext i32 %i.aax to i64
  %i.abo = sext i32 %i.aay to i64
  %i.abp = sext i32 %i.aaz to i64
  %i.abq = sext i32 %i.aba to i64
  %i.abr = sext i32 %i.abb to i64
  %i.abs = sext i32 %i.abc to i64
  %i.abt = sext i32 %i.abd to i64
  %i.abu = sext i32 %i.abe to i64
  %i.abv = sext i32 %i.abf to i64
  %i.abw = sext i32 %i.abg to i64
  %i.abx = sext i32 %i.abh to i64
  %i.aby = sext i32 %i.abi to i64
  %i.abz = getelementptr inbounds [16 x i8], ptr %i.uw, i64 %i.abj
  %i.aca = getelementptr inbounds [16 x i8], ptr %i.uw, i64 %i.abk
  %i.acb = getelementptr inbounds [16 x i8], ptr %i.uw, i64 %i.abl
  %i.acc = getelementptr inbounds [16 x i8], ptr %i.uw, i64 %i.abm
  %i.acd = getelementptr inbounds [16 x i8], ptr %i.uw, i64 %i.abn
  %i.ace = getelementptr inbounds [16 x i8], ptr %i.uw, i64 %i.abo
  %i.acf = getelementptr inbounds [16 x i8], ptr %i.uw, i64 %i.abp
  %i.acg = getelementptr inbounds [16 x i8], ptr %i.uw, i64 %i.abq
  %i.ach = getelementptr inbounds [16 x i8], ptr %i.uw, i64 %i.abr
  %i.aci = getelementptr inbounds [16 x i8], ptr %i.uw, i64 %i.abs
  %i.acj = getelementptr inbounds [16 x i8], ptr %i.uw, i64 %i.abt
  %i.ack = getelementptr inbounds [16 x i8], ptr %i.uw, i64 %i.abu
  %i.acl = getelementptr inbounds [16 x i8], ptr %i.uw, i64 %i.abv
  %i.acm = getelementptr inbounds [16 x i8], ptr %i.uw, i64 %i.abw
  %i.acn = getelementptr inbounds [16 x i8], ptr %i.uw, i64 %i.abx
  %i.aco = getelementptr inbounds [16 x i8], ptr %i.uw, i64 %i.aby
  %i.acp = load i64, ptr %i.abz, align 8
  %i.acq = load i64, ptr %i.aca, align 8
  %i.acr = load i64, ptr %i.acb, align 8
  %i.acs = load i64, ptr %i.acc, align 8
  %i.act = insertelement <4 x i64> poison, i64 %i.acp, i64 0
  %i.acu = insertelement <4 x i64> %i.act, i64 %i.acq, i64 1
  %i.acv = insertelement <4 x i64> %i.acu, i64 %i.acr, i64 2
  %i.acw = insertelement <4 x i64> %i.acv, i64 %i.acs, i64 3
  %i.acx = load i64, ptr %i.acd, align 8
  %i.acy = load i64, ptr %i.ace, align 8
  %i.acz = load i64, ptr %i.acf, align 8
  %i.ada = load i64, ptr %i.acg, align 8
  %i.adb = insertelement <4 x i64> poison, i64 %i.acx, i64 0
  %i.adc = insertelement <4 x i64> %i.adb, i64 %i.acy, i64 1
  %i.add = insertelement <4 x i64> %i.adc, i64 %i.acz, i64 2
  %i.ade = insertelement <4 x i64> %i.add, i64 %i.ada, i64 3
  %i.adf = load i64, ptr %i.ach, align 8
  %i.adg = load i64, ptr %i.aci, align 8
  %i.adh = load i64, ptr %i.acj, align 8
  %i.adi = load i64, ptr %i.ack, align 8
  %i.adj = insertelement <4 x i64> poison, i64 %i.adf, i64 0
  %i.adk = insertelement <4 x i64> %i.adj, i64 %i.adg, i64 1
  %i.adl = insertelement <4 x i64> %i.adk, i64 %i.adh, i64 2
  %i.adm = insertelement <4 x i64> %i.adl, i64 %i.adi, i64 3
  %i.adn = load i64, ptr %i.acl, align 8
  %i.ado = load i64, ptr %i.acm, align 8
  %i.adp = load i64, ptr %i.acn, align 8
  %i.adq = load i64, ptr %i.aco, align 8
  %i.adr = insertelement <4 x i64> poison, i64 %i.adn, i64 0
  %i.ads = insertelement <4 x i64> %i.adr, i64 %i.ado, i64 1
  %i.adt = insertelement <4 x i64> %i.ads, i64 %i.adp, i64 2
  %i.adu = insertelement <4 x i64> %i.adt, i64 %i.adq, i64 3
  %i.adv = and <4 x i64> %i.acw, splat (i64 4294967295)
  %i.adw = and <4 x i64> %i.ade, splat (i64 4294967295)
  %i.adx = and <4 x i64> %i.adm, splat (i64 4294967295)
  %i.ady = and <4 x i64> %i.adu, splat (i64 4294967295)
  %i.adz = add <4 x i64> %i.adv, %vec.phi646      ; 2 uses
  %i.aea = add <4 x i64> %i.adw, %vec.phi647      ; 2 uses
  %i.aeb = add <4 x i64> %i.adx, %vec.phi648      ; 2 uses
  %i.aec = add <4 x i64> %i.ady, %vec.phi649      ; 2 uses
  %index.next650 = add nuw i64 %index645, 16      ; 2 uses
  %i.aed = icmp eq i64 %index.next650, %n.vec663
  br i1 %i.aed, label %middle.block651, label %vector.body644, !llvm.loop !239

middle.block651:                                  ; preds = %vector.body644
  %bin.rdx652 = add <4 x i64> %i.aea, %i.adz
  %bin.rdx653 = add <4 x i64> %i.aeb, %bin.rdx652
  %bin.rdx654 = add <4 x i64> %i.aec, %bin.rdx653
  %i.aee = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx654) ; 2 uses
  %cmp.n = icmp eq i64 %n.mod.vf662, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.preheader

vec.epilog.vector.body664:                        ; preds = %vector.main.loop.iter.check639, %vec.epilog.vector.body664
  %index665 = phi i64 [ %index.next667, %vec.epilog.vector.body664 ], [ 0, %vector.main.loop.iter.check639 ] ; 2 uses
  %vec.phi666 = phi <4 x i64> [ %i.afq, %vec.epilog.vector.body664 ], [ %i.yg, %vector.main.loop.iter.check639 ]
  %i.aef = add i64 %index665, %i.ut               ; 4 uses
  %i.aeg = shl i64 %i.aef, 32
  %i.aeh = shl i64 %i.aef, 32
  %i.aei = shl i64 %i.aef, 32
  %i.aej = shl i64 %i.aef, 32
  %i.aek = ashr exact i64 %i.aeg, 30
  %i.ael = ashr exact i64 %i.aeh, 30
  %i.aem = ashr exact i64 %i.aei, 30
  %i.aen = ashr exact i64 %i.aej, 30
  %i.aeo = getelementptr inbounds i8, ptr %i.xr, i64 %i.aek
  %i.aep = getelementptr i8, ptr %i.xr, i64 %i.ael
  %i.aeq = getelementptr i8, ptr %i.aep, i64 4
  %i.aer = getelementptr i8, ptr %i.xr, i64 %i.aem
  %i.aes = getelementptr i8, ptr %i.aer, i64 8
  %i.aet = getelementptr i8, ptr %i.xr, i64 %i.aen
  %i.aeu = getelementptr i8, ptr %i.aet, i64 12
  %i.aev = load i32, ptr %i.aeo, align 4, !tbaa !3
  %i.aew = load i32, ptr %i.aeq, align 4, !tbaa !3
  %i.aex = load i32, ptr %i.aes, align 4, !tbaa !3
  %i.aey = load i32, ptr %i.aeu, align 4, !tbaa !3
  %i.aez = sext i32 %i.aev to i64
  %i.afa = sext i32 %i.aew to i64
  %i.afb = sext i32 %i.aex to i64
  %i.afc = sext i32 %i.aey to i64
  %i.afd = getelementptr inbounds [16 x i8], ptr %i.uw, i64 %i.aez
  %i.afe = getelementptr inbounds [16 x i8], ptr %i.uw, i64 %i.afa
  %i.aff = getelementptr inbounds [16 x i8], ptr %i.uw, i64 %i.afb
  %i.afg = getelementptr inbounds [16 x i8], ptr %i.uw, i64 %i.afc
  %i.afh = load i64, ptr %i.afd, align 8
  %i.afi = load i64, ptr %i.afe, align 8
  %i.afj = load i64, ptr %i.aff, align 8
  %i.afk = load i64, ptr %i.afg, align 8
  %i.afl = insertelement <4 x i64> poison, i64 %i.afh, i64 0
  %i.afm = insertelement <4 x i64> %i.afl, i64 %i.afi, i64 1
  %i.afn = insertelement <4 x i64> %i.afm, i64 %i.afj, i64 2
  %i.afo = insertelement <4 x i64> %i.afn, i64 %i.afk, i64 3
  %i.afp = and <4 x i64> %i.afo, splat (i64 4294967295)
  %i.afq = add <4 x i64> %i.afp, %vec.phi666      ; 2 uses
  %index.next667 = add nuw i64 %index665, 4       ; 2 uses
  %i.afr = icmp eq i64 %index.next667, %n.vec663
  br i1 %i.afr, label %vec.epilog.middle.block668, label %vec.epilog.vector.body664, !llvm.loop !240

vec.epilog.middle.block668:                       ; preds = %vec.epilog.vector.body664
  %i.afs = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.afq) ; 2 uses
  %cmp.n669 = icmp eq i64 %n.mod.vf662, 0
  br i1 %cmp.n669, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.preheader

_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.preheader: ; preds = %middle.block651, %vector.scevcheck632, %iter.check657, %vec.epilog.middle.block668
  %.ph707 = phi i64 [ %i.aee, %middle.block651 ], [ %.1, %vector.scevcheck632 ], [ %.1, %iter.check657 ], [ %i.afs, %vec.epilog.middle.block668 ]
  %.031.i.i.i.i.i.ph = phi i64 [ %i.yf, %middle.block651 ], [ %i.ut, %vector.scevcheck632 ], [ %i.ut, %iter.check657 ], [ %i.yf, %vec.epilog.middle.block668 ]
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.preheader, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i
  %i.aft = phi i64 [ %i.aga, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i ], [ %.ph707, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.preheader ]
  %.031.i.i.i.i.i = phi i64 [ %i.agb, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i ], [ %.031.i.i.i.i.i.ph, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.preheader ] ; 2 uses
  %sext.i.i.i.i.i.i = shl i64 %.031.i.i.i.i.i, 32
  %i.afu = ashr exact i64 %sext.i.i.i.i.i.i, 30
  %i.afv = getelementptr inbounds i8, ptr %i.xr, i64 %i.afu
  %i.afw = load i32, ptr %i.afv, align 4, !tbaa !3
  %i.afx = sext i32 %i.afw to i64
  %i.afy = getelementptr inbounds [16 x i8], ptr %i.uw, i64 %i.afx
  %.sroa.0.0.copyload.i.i.i58.i.i.i.i = load i64, ptr %i.afy, align 8
  %i.afz = and i64 %.sroa.0.0.copyload.i.i.i58.i.i.i.i, 4294967295
  %i.aga = add i64 %i.afz, %i.aft                 ; 2 uses
  %i.agb = add nuw i64 %.031.i.i.i.i.i, 1         ; 2 uses
  %i.agc = icmp ult i64 %i.agb, %i.uv
  br i1 %i.agc, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i, !llvm.loop !241

_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i60.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i60.i.i.i.i, %.lr.ph.split.split.i.i.i.i.i
  %i.agd = phi i64 [ %.1, %.lr.ph.split.split.i.i.i.i.i ], [ %i.agk, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i60.i.i.i.i ]
  %.01524.i.i.i.i.i = phi i64 [ %i.tv, %.lr.ph.split.split.i.i.i.i.i ], [ %i.agm, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i60.i.i.i.i ] ; 3 uses
  %i.age = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01524.i.i.i.i.i, i1 true)
  %49 = trunc nuw nsw i64 %i.age to i32
  %50 = or disjoint i32 %i.tw, %49
  %51 = sext i32 %50 to i64
  %i.agf = getelementptr inbounds [4 x i8], ptr %i.ur, i64 %51
  %i.agg = load i32, ptr %i.agf, align 4, !tbaa !3
  %i.agh = sext i32 %i.agg to i64
  %i.agi = getelementptr inbounds [16 x i8], ptr %i.tx, i64 %i.agh
  %.sroa.0.0.copyload.i.i21.i.i.i.i.i = load i64, ptr %i.agi, align 8
  %i.agj = and i64 %.sroa.0.0.copyload.i.i21.i.i.i.i.i, 4294967295
  %i.agk = add i64 %i.agj, %i.agd                 ; 2 uses
  %i.agl = add i64 %.01524.i.i.i.i.i, -1
  %i.agm = and i64 %i.agl, %.01524.i.i.i.i.i      ; 2 uses
  %.not.i62.i.i.i.i = icmp eq i64 %i.agm, 0
  br i1 %.not.i62.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i60.i.i.i.i, !llvm.loop !232

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.us.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i60.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us27.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i63.i.i.i.i, %middle.block651, %vec.epilog.middle.block668, %.lr.ph32.split.split.us.i.i.i.i.i, %bb.cp, %bb.co
  %.2 = phi i64 [ %.1, %bb.co ], [ %i.ue, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i63.i.i.i.i ], [ %i.xq, %.lr.ph32.split.split.us.i.i.i.i.i ], [ %.1, %bb.cp ], [ %i.uo, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us27.i.i.i.i.i ], [ %i.agk, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i60.i.i.i.i ], [ %i.xe, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.us.i.i.i.i.i ], [ %i.afs, %vec.epilog.middle.block668 ], [ %i.aee, %middle.block651 ], [ %i.aga, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i ] ; 2 uses
  %i.agn = add nsw i32 %i.tr, 64                  ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.agn, %i.po
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.co, !llvm.loop !242

bb.cq:                                            ; preds = %._crit_edge.i.i.i.i
  %i.ago = ashr i32 %i.pk, 6
  %i.agp = and i32 %i.pk, 63
  %i.agq = zext nneg i32 %i.agp to i64
  %notmask.i65.i.i.i.i = shl nsw i64 -1, %i.agq
  %i.agr = xor i64 %notmask.i65.i.i.i.i, -1
  %i.ags = sext i32 %i.ago to i64
  %i.agt = getelementptr inbounds [8 x i8], ptr %i.pg, i64 %i.ags
  %i.agu = load i64, ptr %i.agt, align 8, !tbaa !116
  %i.agv = and i64 %i.agu, %i.agr                 ; 4 uses
  %.not.i66.i.i.i.i = icmp eq i64 %i.agv, 0
  br i1 %.not.i66.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit, label %.preheader.i67.i.i.i.i

.preheader.i67.i.i.i.i:                           ; preds = %bb.cq
  %i.agw = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.agx = load ptr, ptr %i.agw, align 8, !tbaa !175 ; 3 uses
  %i.agy = getelementptr inbounds nuw i8, ptr %i.i, i64 58
  %i.agz = load i8, ptr %i.agy, align 2, !tbaa !176, !range !69, !noundef !70
  %i.aha = trunc nuw i8 %i.agz to i1
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  br i1 %i.aha, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i82.i.i.i.i, label %.preheader.split.i69.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i82.i.i.i.i: ; preds = %.preheader.i67.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i82.i.i.i.i
  %i.ahd = phi i64 [ %i.ahh, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i82.i.i.i.i ], [ %.3, %.preheader.i67.i.i.i.i ]
  %.012.us.i83.i.i.i.i = phi i64 [ %i.ahj, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i82.i.i.i.i ], [ %i.agv, %.preheader.i67.i.i.i.i ] ; 3 uses
  %i.ahe = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.us.i83.i.i.i.i, i1 true)
  %52 = trunc nuw nsw i64 %i.ahe to i32
  %53 = or disjoint i32 %i.po, %52
  %54 = sext i32 %53 to i64
  %i.ahf = getelementptr inbounds [16 x i8], ptr %i.agx, i64 %54
  %.sroa.0.0.copyload.i.i.us.i85.i.i.i.i = load i64, ptr %i.ahf, align 8
  %i.ahg = and i64 %.sroa.0.0.copyload.i.i.us.i85.i.i.i.i, 4294967295
  %i.ahh = add i64 %i.ahg, %i.ahd                 ; 2 uses
  %i.ahi = add nsw i64 %.012.us.i83.i.i.i.i, -1
  %i.ahj = and i64 %i.ahi, %.012.us.i83.i.i.i.i   ; 2 uses
  %.not10.us.i86.i.i.i.i = icmp eq i64 %i.ahj, 0
  br i1 %.not10.us.i86.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i82.i.i.i.i, !llvm.loop !231

.preheader.split.i69.i.i.i.i:                     ; preds = %.preheader.i67.i.i.i.i
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.i, i64 59
  %i.ahl = load i8, ptr %i.ahk, align 1, !tbaa !136, !range !69, !noundef !70
  %i.ahm = trunc nuw i8 %i.ahl to i1
  br i1 %i.ahm, label %.preheader.split.split.us.i76.i.i.i.i, label %.preheader.split.split.i70.i.i.i.i

.preheader.split.split.us.i76.i.i.i.i:            ; preds = %.preheader.split.i69.i.i.i.i
  %i.ahn = load i32, ptr %i.ahc, align 8, !tbaa !177
  %i.aho = sext i32 %i.ahn to i64
  %i.ahp = getelementptr inbounds [16 x i8], ptr %i.agx, i64 %i.aho
  %.sroa.0.0.copyload.i.i.us17.i80.i.i.i.i = load i64, ptr %i.ahp, align 8
  %i.ahq = and i64 %.sroa.0.0.copyload.i.i.us17.i80.i.i.i.i, 4294967295
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us15.i77.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us15.i77.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us15.i77.i.i.i.i, %.preheader.split.split.us.i76.i.i.i.i
  %i.ahr = phi i64 [ %.3, %.preheader.split.split.us.i76.i.i.i.i ], [ %i.ahs, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us15.i77.i.i.i.i ]
  %.012.us13.i78.i.i.i.i = phi i64 [ %i.agv, %.preheader.split.split.us.i76.i.i.i.i ], [ %i.ahu, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us15.i77.i.i.i.i ] ; 2 uses
  %i.ahs = add i64 %i.ahq, %i.ahr                 ; 2 uses
  %i.aht = add nsw i64 %.012.us13.i78.i.i.i.i, -1
  %i.ahu = and i64 %i.aht, %.012.us13.i78.i.i.i.i ; 2 uses
  %.not10.us18.i81.i.i.i.i = icmp eq i64 %i.ahu, 0
  br i1 %.not10.us18.i81.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us15.i77.i.i.i.i, !llvm.loop !231

.preheader.split.split.i70.i.i.i.i:               ; preds = %.preheader.split.i69.i.i.i.i
  %i.ahv = load ptr, ptr %i.ahb, align 8, !tbaa !178
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i71.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i71.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i71.i.i.i.i, %.preheader.split.split.i70.i.i.i.i
  %i.ahw = phi i64 [ %.3, %.preheader.split.split.i70.i.i.i.i ], [ %i.aid, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i71.i.i.i.i ]
  %.012.i72.i.i.i.i = phi i64 [ %i.agv, %.preheader.split.split.i70.i.i.i.i ], [ %i.aif, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i71.i.i.i.i ] ; 3 uses
  %i.ahx = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i72.i.i.i.i, i1 true)
  %55 = trunc nuw nsw i64 %i.ahx to i32
  %56 = or disjoint i32 %i.po, %55
  %57 = sext i32 %56 to i64
  %i.ahy = getelementptr inbounds [4 x i8], ptr %i.ahv, i64 %57
  %i.ahz = load i32, ptr %i.ahy, align 4, !tbaa !3
  %i.aia = sext i32 %i.ahz to i64
  %i.aib = getelementptr inbounds [16 x i8], ptr %i.agx, i64 %i.aia
  %.sroa.0.0.copyload.i.i.i74.i.i.i.i = load i64, ptr %i.aib, align 8
  %i.aic = and i64 %.sroa.0.0.copyload.i.i.i74.i.i.i.i, 4294967295
  %i.aid = add i64 %i.aic, %i.ahw                 ; 2 uses
  %i.aie = add nsw i64 %.012.i72.i.i.i.i, -1
  %i.aif = and i64 %i.aie, %.012.i72.i.i.i.i      ; 2 uses
  %.not10.i75.i.i.i.i = icmp eq i64 %i.aif, 0
  br i1 %.not10.i75.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i71.i.i.i.i, !llvm.loop !231

_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i71.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us15.i77.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i82.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us15.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i, %bb.cq, %._crit_edge.i.i.i.i, %bb.cl, %bb.cj, %bb.ce
  %.4 = phi i64 [ 0, %bb.cj ], [ 0, %bb.ce ], [ 0, %bb.cl ], [ %i.rm, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i ], [ %i.ahh, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i82.i.i.i.i ], [ %i.ahs, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us15.i77.i.i.i.i ], [ %.3, %._crit_edge.i.i.i.i ], [ %.3, %bb.cq ], [ %i.pf, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i ], [ %i.qq, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i.i.i.i.i ], [ %i.rb, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us15.i.i.i.i.i ], [ %i.aid, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i71.i.i.i.i ]
  %i.aig = invoke noundef ptr @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE18getBufferWithSpaceEmb(ptr noundef nonnull align 8 dereferenceable(272) %i.nb, i64 noundef %.4, i1 noundef zeroext false)
          to label %bb.cr unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.cr:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit
  br i1 %i.bf, label %bb.cs, label %bb.ea

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  store ptr %i.f, ptr %22, align 8
  %.sroa.2158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %i.i, ptr %.sroa.2158.0..sroa_idx, align 8
  %.sroa.3159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 16
  store ptr %31, ptr %.sroa.3159.0..sroa_idx, align 8
  %.sroa.4160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 24
  store ptr %0, ptr %.sroa.4160.0..sroa_idx, align 8
  %.sroa.5161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 32
  store ptr %29, ptr %.sroa.5161.0..sroa_idx, align 8
  %i.aih = load i8, ptr %i.bh, align 1, !tbaa !170, !range !69, !noundef !70
  %i.aii = trunc nuw i8 %i.aih to i1
  br i1 %i.aii, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i127, label %bb.ct

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i127: ; preds = %bb.cs
  %.0.in.pre.i.i128 = load i8, ptr %i.bg, align 4, !tbaa !56, !range !69
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i94

bb.ct:                                            ; preds = %bb.cs
  %i.aij = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.aik = load i32, ptr %i.aij, align 4, !tbaa !154
  %i.ail = icmp eq i32 %i.aik, 0
  br i1 %i.ail, label %bb.cu, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i92

bb.cu:                                            ; preds = %bb.ct
  %i.aim = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ain = load i32, ptr %i.aim, align 8, !tbaa !171 ; 6 uses
  %i.aio = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aip = load i32, ptr %i.aio, align 8, !tbaa !172
  %i.aiq = icmp eq i32 %i.ain, %i.aip
  br i1 %i.aiq, label %bb.cv, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i92

bb.cv:                                            ; preds = %bb.cu
  %i.air = load ptr, ptr %1, align 8, !tbaa !173  ; 2 uses
  %.not.i.i.i119 = icmp sgt i32 %i.ain, 0
  br i1 %.not.i.i.i119, label %bb.cw, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i92

bb.cw:                                            ; preds = %bb.cv
  %i.ais = and i32 %i.ain, 2147483584             ; 3 uses
  %i.ait = zext nneg i32 %i.ais to i64
  %.not37.i.i.not.i.i121606.not = icmp eq i32 %i.ais, 0
  br i1 %.not37.i.i.not.i.i121606.not, label %.critedge.i.i.i.i122, label %.lr.ph608

bb.cx:                                            ; preds = %.lr.ph608
  %indvars.iv.next.i.i126 = add nuw nsw i64 %indvars.iv.i.i120607, 64 ; 2 uses
  %.not37.i.i.not.i.i121 = icmp samesign ult i64 %indvars.iv.next.i.i126, %i.ait
  br i1 %.not37.i.i.not.i.i121, label %.lr.ph608, label %.critedge.i.i.i.i122, !llvm.loop !174

.lr.ph608:                                        ; preds = %bb.cw, %bb.cx
  %indvars.iv.i.i120607 = phi i64 [ %indvars.iv.next.i.i126, %bb.cx ], [ 0, %bb.cw ] ; 2 uses
  %i.aiu = lshr exact i64 %indvars.iv.i.i120607, 3
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.air, i64 %i.aiu
  %i.aiw = load i64, ptr %i.aiv, align 8, !tbaa !116
  %i.aix = icmp eq i64 %i.aiw, -1
  br i1 %i.aix, label %bb.cx, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i92, !llvm.loop !174

.critedge.i.i.i.i122:                             ; preds = %bb.cx, %bb.cw
  %.not38.i.i.i.i123 = icmp eq i32 %i.ain, %i.ais
  br i1 %.not38.i.i.i.i123, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i92, label %bb.cy

bb.cy:                                            ; preds = %.critedge.i.i.i.i122
  %i.aiy = lshr i32 %i.ain, 6
  %i.aiz = and i32 %i.ain, 63
  %i.aja = zext nneg i32 %i.aiz to i64
  %notmask.i40.i.i.i.i124 = shl nsw i64 -1, %i.aja
  %i.ajb = zext nneg i32 %i.aiy to i64
  %i.ajc = getelementptr inbounds nuw [8 x i8], ptr %i.air, i64 %i.ajb
  %i.ajd = load i64, ptr %i.ajc, align 8, !tbaa !116
  %.demorgan.i.i125 = or i64 %i.ajd, %notmask.i40.i.i.i.i124
  %i.aje = icmp eq i64 %.demorgan.i.i125, -1
  %i.ajf = zext i1 %i.aje to i16
  %i.ajg = or disjoint i16 %i.ajf, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i92

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i92: ; preds = %.lr.ph608, %bb.cy, %.critedge.i.i.i.i122, %bb.cv, %bb.cu, %bb.ct
  %.sroa.0.0.insert.ext.i.i93 = phi i16 [ 256, %bb.cu ], [ 256, %bb.ct ], [ 257, %bb.cv ], [ 257, %.critedge.i.i.i.i122 ], [ %i.ajg, %bb.cy ], [ 256, %.lr.ph608 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i93, ptr %i.bg, align 4
  %i.ajh = trunc i16 %.sroa.0.0.insert.ext.i.i93 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i94

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i94: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i92, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i127
  %.0.in.i.i95 = phi i8 [ %.0.in.pre.i.i128, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i127 ], [ %i.ajh, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i92 ]
  %.0.i.i96 = trunc nuw i8 %.0.in.i.i95 to i1
  br i1 %.0.i.i96, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i94
  %i.aji = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ajj = load i32, ptr %i.aji, align 8, !tbaa !171 ; 2 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ajl = load i32, ptr %i.ajk, align 4, !tbaa !154 ; 2 uses
  %i.ajm = icmp slt i32 %i.ajl, %i.ajj
  br i1 %i.ajm, label %.lr.ph.i117, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E0_EEvSO_.exit

.lr.ph.i117:                                      ; preds = %bb.cz, %.noexc129
  %.06.i = phi i32 [ %i.ajn, %.noexc129 ], [ %i.ajl, %bb.cz ] ; 2 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E0_clIiEEDaSN_(ptr noundef nonnull readonly align 8 dereferenceable(40) %22, i32 noundef %.06.i)
          to label %.noexc129 unwind label %.loopexit

.noexc129:                                        ; preds = %.lr.ph.i117
  %i.ajn = add i32 %.06.i, 1                      ; 2 uses
  %exitcond.not.i118 = icmp eq i32 %i.ajn, %i.ajj
  br i1 %exitcond.not.i118, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E0_EEvSO_.exit, label %.lr.ph.i117, !llvm.loop !243

bb.da:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i94
  %i.ajo = load ptr, ptr %1, align 8, !tbaa !173  ; 6 uses
  %i.ajp = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ajq = load i32, ptr %i.ajp, align 4, !tbaa !154 ; 6 uses
  %i.ajr = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ajs = load i32, ptr %i.ajr, align 8, !tbaa !171 ; 7 uses
  %.sroa.39.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.39.0..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(40) %22, i64 40, i1 false)
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3.0..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(40) %22, i64 40, i1 false)
  store i8 1, ptr %20, align 8
  %.sroa.25.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %i.ajo, ptr %.sroa.25.0..sroa_idx.i.i.i, align 8
  store i8 1, ptr %21, align 8
  %.sroa.28.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %i.ajo, ptr %.sroa.28.0..sroa_idx.i.i.i, align 8
  %.not.i.i.i.i97 = icmp slt i32 %i.ajq, %i.ajs
  br i1 %.not.i.i.i.i97, label %bb.db, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiiSP_.exit.i

bb.db:                                            ; preds = %bb.da
  %i.ajt = add i32 %i.ajq, 63                     ; 2 uses
  %i.aju = srem i32 %i.ajt, 64
  %i.ajv = sub nsw i32 %i.ajt, %i.aju             ; 6 uses
  %i.ajw = and i32 %i.ajs, -64                    ; 6 uses
  %i.ajx = icmp slt i32 %i.ajw, %i.ajv
  br i1 %i.ajx, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.ajy = ashr i32 %i.ajs, 6
  %i.ajz = and i32 %i.ajs, 63
  %i.aka = zext nneg i32 %i.ajz to i64
  %notmask.i.i.i.i.i112 = shl nsw i64 -1, %i.aka
  %i.akb = xor i64 %notmask.i.i.i.i.i112, -1
  %i.akc = sub nsw i32 %i.ajv, %i.ajq             ; 2 uses
  %i.akd = zext nneg i32 %i.akc to i64
  %notmask.i.i.i.i.i.i113 = shl nsw i64 -1, %i.akd
  %i.ake = xor i64 %notmask.i.i.i.i.i.i113, -1
  %i.akf = sub nsw i32 64, %i.akc
  %i.akg = zext nneg i32 %i.akf to i64
  %i.akh = shl i64 %i.ake, %i.akg
  %i.aki = and i64 %i.akh, %i.akb
  %i.akj = sext i32 %i.ajy to i64
  %i.akk = getelementptr inbounds [8 x i8], ptr %i.ajo, i64 %i.akj
  %i.akl = load i64, ptr %i.akk, align 8, !tbaa !116
  %i.akm = and i64 %i.aki, %i.akl                 ; 2 uses
  %.not.i.i.i.i.i114 = icmp eq i64 %i.akm, 0
  br i1 %.not.i.i.i.i.i114, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiiSP_.exit.i, label %.preheader.i.i.i.i.i115

.preheader.i.i.i.i.i115:                          ; preds = %bb.dc, %.noexc130
  %.011.i.i.i.i.i = phi i64 [ %i.akr, %.noexc130 ], [ %i.akm, %bb.dc ] ; 3 uses
  %i.akn = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i, i1 true)
  %i.ako = trunc nuw nsw i64 %i.akn to i32
  %i.akp = or disjoint i32 %i.ajw, %i.ako
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E0_clIiEEDaSN_(ptr noundef nonnull readonly align 8 dereferenceable(40) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.akp)
          to label %.noexc130 unwind label %.loopexit.split-lp.loopexit

.noexc130:                                        ; preds = %.preheader.i.i.i.i.i115
  %i.akq = add nsw i64 %.011.i.i.i.i.i, -1
  %i.akr = and i64 %i.akq, %.011.i.i.i.i.i        ; 2 uses
  %.not10.i.i.i.i.i116 = icmp eq i64 %i.akr, 0
  br i1 %.not10.i.i.i.i.i116, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiiSP_.exit.i, label %.preheader.i.i.i.i.i115, !llvm.loop !244

bb.dd:                                            ; preds = %bb.db
  %.not32.i.i.i.i98 = icmp eq i32 %i.ajq, %i.ajv
  br i1 %.not32.i.i.i.i98, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiibSP_ENKUlimE_clEim.exit40.i.i.i.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.aks = sdiv i32 %i.ajq, 64                    ; 2 uses
  %i.akt = sub nsw i32 %i.ajv, %i.ajq             ; 2 uses
  %i.aku = zext nneg i32 %i.akt to i64
  %notmask.i.i35.i.i.i.i99 = shl nsw i64 -1, %i.aku
  %i.akv = xor i64 %notmask.i.i35.i.i.i.i99, -1
  %i.akw = sub nsw i32 64, %i.akt
  %i.akx = zext nneg i32 %i.akw to i64
  %i.aky = shl i64 %i.akv, %i.akx
end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKS1_PKiEUlT_E3_EEvSC_:bb.a

bb.q:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtImEET_i.exit.i
  %i.cs = trunc i64 %indvars.iv to i8
  %i.ct = and i8 %i.cs, 7
  %i.cu = shl nuw i8 1, %i.ct
  %i.cv = lshr i64 %indvars.iv, 3
  %i.cw = and i64 %i.cv, 536870911
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cw ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !32
  %i.cz = or i8 %i.cy, %i.cu
  store i8 %i.cz, ptr %i.cx, align 1, !tbaa !32
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E3_clIiEEDaSB_.exit

bb.r:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %bb.m, %bb.k
  %i.da = load ptr, ptr %i.at, align 8, !tbaa !772
  %i.db = and i64 %indvars.iv, 7
  %i.dc = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !32
  %i.de = lshr i64 %indvars.iv, 3
  %i.df = and i64 %i.de, 536870911
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.df ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !32
  %i.di = and i8 %i.dh, %i.dd
  store i8 %i.di, ptr %i.dg, align 1, !tbaa !32
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E3_clIiEEDaSB_.exit

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E3_clIiEEDaSB_.exit: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtImEET_i.exit.i, %bb.q, %bb.r
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.i, !llvm.loop !1849

bb.s:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.dj = load ptr, ptr %0, align 8, !tbaa !173
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !154
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !171
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E3_EEvPKmiibSD_(ptr noundef %i.dj, i32 noundef %i.dl, i32 noundef %i.dn, i1 noundef zeroext true, ptr noundef nonnull byval(%class.anon.472) align 8 %1)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E3_clIiEEDaSB_.exit, %bb.h, %bb.s
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customIN8facebook5velox8TypeKindENS0_9formatterIS8_cvEEEEvPvRNS0_13parse_contextIcEERS3_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #1 comdat align 2 {
bb.a:
  %3 = alloca %"struct.fmt::v11::formatter.473", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store i32 32768, ptr %3, align 8, !tbaa !746
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 32, ptr %i.b, align 4, !tbaa !32
  %scevgep.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i.i.i.i.i, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.c, align 4, !tbaa !748
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.d, align 8, !tbaa !32
  %i.e = load ptr, ptr %1, align 8, !tbaa !750    ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !752  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  %i.i = icmp samesign eq i64 %i.g, 0
  br i1 %i.i, label %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseERNS0_13parse_contextIcEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i8, ptr %i.e, align 1, !tbaa !32
  %i.k = icmp eq i8 %i.j, 125
  br i1 %i.k, label %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseERNS0_13parse_contextIcEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = call noundef ptr @_ZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeE(ptr noundef nonnull %i.e, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(20) %1, i32 noundef 13)
  %.pre = load ptr, ptr %1, align 8, !tbaa !750
  %.pre6 = load i64, ptr %i.f, align 8, !tbaa !752
  br label %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseERNS0_13parse_contextIcEE.exit

_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseERNS0_13parse_contextIcEE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.m = phi i64 [ %.pre6, %bb.c ], [ %i.g, %bb.b ], [ 0, %bb.a ]
  %i.n = phi ptr [ %.pre, %bb.c ], [ %i.e, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %.0.i = phi ptr [ %i.l, %bb.c ], [ %i.e, %bb.b ], [ %i.e, %bb.a ]
  %i.o = ptrtoint ptr %.0.i to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  store ptr %i.r, ptr %1, align 8, !tbaa !750
  %i.s = sub i64 %i.m, %i.q
  store i64 %i.s, ptr %i.f, align 8, !tbaa !752
  %i.t = load i8, ptr %0, align 1, !tbaa !1316
  %i.u = call ptr @_ZNK3fmt3v119formatterIN8facebook5velox8TypeKindEcvE6formatINS0_7contextEEEDaS4_RT_(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 noundef signext %i.t, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNK3fmt3v119formatterIN8facebook5velox8TypeKindEcvE6formatINS0_7contextEEEDaS4_RT_(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %3 = alloca %"struct.fmt::v11::format_specs", align 4 ; 7 uses
  %i.a = tail call { i64, ptr } @_ZN8facebook5velox12TypeKindName6toNameENS0_8TypeKindE(i8 noundef signext %1) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0        ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 2 uses
  %i.d = load i32, ptr %0, align 8, !tbaa !746
  %i.e = and i32 %i.d, 960
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i = load ptr, ptr %2, align 8, !tbaa !753
  %i.f = tail call ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i.i, ptr %i.c, i64 %i.b, ptr noundef nonnull align 8 dereferenceable(48) %0)
  br label %_ZNK3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 16, i1 false)
  %i.g = load i32, ptr %3, align 4, !tbaa !746    ; 2 uses
  %i.h = lshr i32 %i.g, 6
  %i.i = and i32 %i.h, 3                          ; 2 uses
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = tail call noundef i32 @_ZN3fmt3v116detail16get_dynamic_specINS0_7contextEEEiNS0_11arg_id_kindERKNS1_7arg_refINT_9char_typeEEERS6_(i32 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2)
  store i32 %i.l, ptr %i.k, align 4, !tbaa !3
  br label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i

_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i: ; preds = %bb.d, %bb.c
  %i.m = lshr i32 %i.g, 8
  %i.n = and i32 %i.m, 3                          ; 2 uses
  %.not.i17.i = icmp eq i32 %i.n, 0
  br i1 %.not.i17.i, label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i, label %bb.e

bb.e:                                             ; preds = %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.q = tail call noundef i32 @_ZN3fmt3v116detail16get_dynamic_specINS0_7contextEEEiNS0_11arg_id_kindERKNS1_7arg_refINT_9char_typeEEERS6_(i32 noundef %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %2)
  store i32 %i.q, ptr %i.p, align 4, !tbaa !3
  br label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i

_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i: ; preds = %bb.e, %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i
  %.sroa.0.0.copyload.i19.i = load ptr, ptr %2, align 8, !tbaa !753
  %i.r = call ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i19.i, ptr %i.c, i64 %i.b, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %_ZNK3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit

_ZNK3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit: ; preds = %bb.b, %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i
  %.sroa.015.0.i = phi ptr [ %i.r, %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i ], [ %i.f, %bb.b ]
  ret ptr %.sroa.015.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.476) align 8 %2, ptr noundef byval(%class.anon.477) align 8 %3) local_unnamed_addr #11 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !1795, !range !69, !noundef !70
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1798
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !116
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1850
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !1851, !nonnull !70, !align !245
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !502
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1852, !nonnull !70, !align !245
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !772
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1494
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.at, %bb.d ] ; 3 uses
  %i.al = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %4 = trunc nuw nsw i64 %i.al to i32
  %5 = or disjoint i32 %i.d, %4
  %6 = sext i32 %5 to i64                         ; 2 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %i.af, i64 %6
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !116
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %6
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !116
  %i.as = add nsw i64 %.011.i, -1
  %i.at = and i64 %i.as, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.at, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1853

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = sdiv i32 %0, 64                         ; 2 uses
  %i.av = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.aw = zext nneg i32 %i.av to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.aw
  %i.ax = xor i64 %notmask.i.i35, -1
  %i.ay = sub nsw i32 64, %i.av
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = shl i64 %i.ax, %i.az
  %i.bb = load i8, ptr %2, align 8, !tbaa !1795, !range !69, !noundef !70
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !1798
  %i.be = sext i32 %i.au to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !116
  %i.bh = xor i8 %i.bb, 1
  %i.bi = zext nneg i8 %i.bh to i64
  %i.bj = sub nsw i64 0, %i.bi
  %i.bk = xor i64 %i.bg, %i.bj
  %i.bl = and i64 %i.bk, %i.ba                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bl, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bn = shl nsw i32 %i.au, 6
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !1850
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !1851, !nonnull !70, !align !245
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !502
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !1852, !nonnull !70, !align !245
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !772
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 144
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1494
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bl, %.preheader.i37 ], [ %i.cf, %bb.g ] ; 3 uses
  %i.bx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %7 = trunc nuw nsw i64 %i.bx to i32
  %8 = or disjoint i32 %i.bn, %7
  %9 = sext i32 %8 to i64                         ; 2 uses
  %i.by = getelementptr inbounds [4 x i8], ptr %i.br, i64 %9
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !116
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %9
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !116
  %i.ce = add i64 %.011.i38, -1
  %i.cf = and i64 %i.ce, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.cf, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !1853

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.cg = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.cg, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %i.ch = load i8, ptr %3, align 8, !tbaa !1799, !range !69, !noundef !70
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1801
  %i.ck = xor i8 %i.ch, 1
  %i.cl = zext nneg i8 %i.ck to i64
  %i.cm = sub nsw i64 0, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = load ptr, ptr %i.cn, align 8, !nonnull !70, !align !245 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !nonnull !70, !align !245 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 144 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit
  %i.cu = phi i32 [ %i.cg, %.lr.ph ], [ %i.ec, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.cu, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %i.cv = sdiv i32 %.051, 64                      ; 3 uses
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.cw
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !116
  %i.cz = xor i64 %i.cy, %i.cm                    ; 2 uses
  switch i64 %i.cz, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.da = shl nsw i32 %i.cv, 6
  %i.db = load ptr, ptr %i.cq, align 8, !tbaa !502
  %i.dc = load ptr, ptr %i.cs, align 8, !tbaa !772
  %i.dd = load ptr, ptr %i.ct, align 8, !tbaa !1494
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.de = shl nsw i32 %i.cv, 6                    ; 2 uses
  %i.df = add i32 %i.de, 64
  %i.dg = sext i32 %i.df to i64
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.i
  %i.dh = sext i32 %i.de to i64
  %i.di = load ptr, ptr %i.cq, align 8, !tbaa !502
  %i.dj = load ptr, ptr %i.cs, align 8, !tbaa !772
  %i.dk = load ptr, ptr %i.ct, align 8, !tbaa !1494
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph21.i
  %.020.i = phi i64 [ %i.dh, %.lr.ph21.i ], [ %i.dr, %bb.j ] ; 3 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %.020.i
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !3
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %i.dn
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !116
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %.020.i
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !116
  %i.dr = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.ds = icmp ult i64 %i.dr, %i.dg
  br i1 %i.ds, label %bb.j, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, !llvm.loop !1854

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cz, %.lr.ph.i ], [ %i.eb, %bb.k ] ; 3 uses
  %i.dt = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %10 = trunc nuw nsw i64 %i.dt to i32
  %11 = or disjoint i32 %i.da, %10
  %12 = sext i32 %11 to i64                       ; 2 uses
  %i.du = getelementptr inbounds [4 x i8], ptr %i.db, i64 %12
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !3
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.dw
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !116
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %12
  store i64 %i.dy, ptr %i.dz, align 8, !tbaa !116
  %i.ea = add i64 %.01519.i, -1
  %i.eb = and i64 %i.ea, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.eb, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, label %bb.k, !llvm.loop !1855

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit: ; preds = %bb.j, %bb.k, %bb.h, %bb.i
  %i.ec = add nsw i32 %i.cu, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.ec, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1856

bb.l:                                             ; preds = %._crit_edge
  %i.ed = ashr i32 %1, 6
  %i.ee = and i32 %1, 63
  %i.ef = zext nneg i32 %i.ee to i64
  %notmask.i42 = shl nsw i64 -1, %i.ef
  %i.eg = xor i64 %notmask.i42, -1
  %i.eh = load i8, ptr %2, align 8, !tbaa !1795, !range !69, !noundef !70
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !1798
  %i.ek = sext i32 %i.ed to i64
  %i.el = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %i.ek
  %i.em = load i64, ptr %i.el, align 8, !tbaa !116
  %i.en = xor i8 %i.eh, 1
  %i.eo = zext nneg i8 %i.en to i64
  %i.ep = sub nsw i64 0, %i.eo
  %i.eq = xor i64 %i.em, %i.ep
  %i.er = and i64 %i.eq, %i.eg                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.er, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.l
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !1850
  %i.ev = load ptr, ptr %i.es, align 8, !tbaa !1851, !nonnull !70, !align !245
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !502
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !1852, !nonnull !70, !align !245
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !772
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eu, i64 144
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !1494
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader.i44
  %.011.i45 = phi i64 [ %i.er, %.preheader.i44 ], [ %i.fk, %bb.m ] ; 3 uses
  %i.fc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %13 = trunc nuw nsw i64 %i.fc to i32
  %14 = or disjoint i32 %i.d, %13
  %15 = sext i32 %14 to i64                       ; 2 uses
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %15
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !3
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.ez, i64 %i.ff
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !116
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %15
  store i64 %i.fh, ptr %i.fi, align 8, !tbaa !116
  %i.fj = add nsw i64 %.011.i45, -1
  %i.fk = and i64 %i.fj, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fk, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !1853

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %bb.m, %bb.d, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.478) align 8 %2, ptr noundef byval(%class.anon.479) align 8 %3) local_unnamed_addr #11 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !1806, !range !69, !noundef !70
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1809
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !116
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1857
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1858, !nonnull !70, !align !245
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !772
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1494
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.an, %bb.d ] ; 3 uses
  %i.ai = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %4 = trunc nuw nsw i64 %i.ai to i32
  %5 = or disjoint i32 %i.d, %4
  %6 = sext i32 %5 to i64                         ; 2 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.af, i64 %6
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !116
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %6
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !116
  %i.am = add nsw i64 %.011.i, -1
  %i.an = and i64 %i.am, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.an, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1859

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = sdiv i32 %0, 64                         ; 2 uses
  %i.ap = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.aq = zext nneg i32 %i.ap to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.aq
  %i.ar = xor i64 %notmask.i.i35, -1
  %i.as = sub nsw i32 64, %i.ap
  %i.at = zext nneg i32 %i.as to i64
  %i.au = shl i64 %i.ar, %i.at
  %i.av = load i8, ptr %2, align 8, !tbaa !1806, !range !69, !noundef !70
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1809
  %i.ay = sext i32 %i.ao to i64
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !116
  %i.bb = xor i8 %i.av, 1
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = sub nsw i64 0, %i.bc
  %i.be = xor i64 %i.ba, %i.bd
  %i.bf = and i64 %i.be, %i.au                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bf, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bh = shl nsw i32 %i.ao, 6
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !1857
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1858, !nonnull !70, !align !245
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !772
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 144
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1494
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bf, %.preheader.i37 ], [ %i.bt, %bb.g ] ; 3 uses
  %i.bo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %7 = trunc nuw nsw i64 %i.bo to i32
  %8 = or disjoint i32 %i.bh, %7
  %9 = sext i32 %8 to i64                         ; 2 uses
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %9
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !116
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %9
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !116
  %i.bs = add i64 %.011.i38, -1
  %i.bt = and i64 %i.bs, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bt, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !1859

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.bu = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.bu, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %i.bv = load i8, ptr %3, align 8, !tbaa !1810, !range !69, !noundef !70
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !1812
  %i.by = xor i8 %i.bv, 1
  %i.bz = zext nneg i8 %i.by to i64
  %i.ca = sub nsw i64 0, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !70, !align !245 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 144 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit
  %i.cg = phi i32 [ %i.bu, %.lr.ph ], [ %i.ea, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.cg, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %i.ch = sdiv i32 %.051, 64                      ; 3 uses
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !116
  %i.cl = xor i64 %i.ck, %i.ca                    ; 2 uses
  switch i64 %i.cl, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cm = shl nsw i32 %i.ch, 6
  %i.cn = load ptr, ptr %i.ce, align 8, !tbaa !772
  %i.co = load ptr, ptr %i.cf, align 8, !tbaa !1494
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cp = shl nsw i32 %i.ch, 6                    ; 2 uses
  %i.cq = add i32 %i.cp, 64
  %i.cr = sext i32 %i.cq to i64                   ; 2 uses
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cs = sext i32 %i.cp to i64                   ; 6 uses
  %i.ct = load ptr, ptr %i.ce, align 8, !tbaa !772 ; 4 uses
  %i.cu = load ptr, ptr %i.cf, align 8, !tbaa !1494 ; 4 uses
  %i.cv = or disjoint i64 %i.cs, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cv, i64 %i.cr) ; 2 uses
  %i.cw = sub i64 %umax, %i.cs                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.cw, 4
  %i.cx = ptrtoaddr ptr %i.cu to i64
  %i.cy = ptrtoaddr ptr %i.ct to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %diff.check = icmp ult i64 %i.cz, 128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check68 = icmp ult i64 %i.cw, 16
  %n.mod.vf72 = and i64 %umax, 1                  ; 3 uses
  %n.vec73 = sub nuw i64 %i.cw, %n.mod.vf72       ; 3 uses
  %i.da = add i64 %n.vec73, %i.cs                 ; 2 uses
  br i1 %min.iters.check68, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.db = add i64 %index, %i.cs                   ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.db ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 96
  %wide.load = load <4 x i64>, ptr %i.dc, align 8, !tbaa !116
  %wide.load69 = load <4 x i64>, ptr %i.dd, align 8, !tbaa !116
  %wide.load70 = load <4 x i64>, ptr %i.de, align 8, !tbaa !116
  %wide.load71 = load <4 x i64>, ptr %i.df, align 8, !tbaa !116
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.db ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 96
  store <4 x i64> %wide.load, ptr %i.dg, align 8, !tbaa !116
  store <4 x i64> %wide.load69, ptr %i.dh, align 8, !tbaa !116
  store <4 x i64> %wide.load70, ptr %i.di, align 8, !tbaa !116
  store <4 x i64> %wide.load71, ptr %i.dj, align 8, !tbaa !116
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec73
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !1860

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index74 = phi i64 [ %index.next76, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dl = add i64 %index74, %i.cs                 ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.dl
  %wide.load75 = load <4 x i64>, ptr %i.dm, align 8, !tbaa !116
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.dl
  store <4 x i64> %wide.load75, ptr %i.dn, align 8, !tbaa !116
  %index.next76 = add nuw i64 %index74, 4         ; 2 uses
  %i.do = icmp eq i64 %index.next76, %n.vec73
  br i1 %i.do, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1861

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n77 = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n77, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.da, %middle.block ], [ %i.cs, %iter.check ], [ %i.da, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.ds, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %.020.i
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !116
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %.020.i
  store i64 %i.dq, ptr %i.dr, align 8, !tbaa !116
  %i.ds = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %i.cr
  br i1 %i.dt, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, !llvm.loop !1862

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cl, %.lr.ph.i ], [ %i.dz, %bb.j ] ; 3 uses
  %i.du = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %10 = trunc nuw nsw i64 %i.du to i32
  %11 = or disjoint i32 %i.cm, %10
  %12 = sext i32 %11 to i64                       ; 2 uses
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %12
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !116
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.co, i64 %12
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !116
  %i.dy = add i64 %.01519.i, -1
  %i.dz = and i64 %i.dy, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.dz, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !1863

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.ea = add nsw i32 %i.cg, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.ea, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1864

bb.k:                                             ; preds = %._crit_edge
  %i.eb = ashr i32 %1, 6
  %i.ec = and i32 %1, 63
  %i.ed = zext nneg i32 %i.ec to i64
  %notmask.i42 = shl nsw i64 -1, %i.ed
  %i.ee = xor i64 %notmask.i42, -1
  %i.ef = load i8, ptr %2, align 8, !tbaa !1806, !range !69, !noundef !70
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !1809
  %i.ei = sext i32 %i.eb to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.ei
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !116
  %i.el = xor i8 %i.ef, 1
  %i.em = zext nneg i8 %i.el to i64
  %i.en = sub nsw i64 0, %i.em
  %i.eo = xor i64 %i.ek, %i.en
  %i.ep = and i64 %i.eo, %i.ee                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.ep, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.k
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !1857
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !1858, !nonnull !70, !align !245
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !772
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 144
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !1494
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i44
  %.011.i45 = phi i64 [ %i.ep, %.preheader.i44 ], [ %i.fc, %bb.l ] ; 3 uses
  %i.ex = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %13 = trunc nuw nsw i64 %i.ex to i32
  %14 = or disjoint i32 %i.d, %13
  %15 = sext i32 %14 to i64                       ; 2 uses
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.eu, i64 %15
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !116
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %15
  store i64 %i.ez, ptr %i.fa, align 8, !tbaa !116
  %i.fb = add nsw i64 %.011.i45, -1
  %i.fc = and i64 %i.fb, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fc, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !1859

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.482) align 8 %2, ptr noundef byval(%class.anon.483) align 8 %3) local_unnamed_addr #11 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !1831, !range !69, !noundef !70
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1833
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !116
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !1826, !nonnull !70, !align !245
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !1828, !nonnull !70, !align !245
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !1829, !nonnull !70, !align !245
  br label %bb.d

bb.d:                                             ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.bk, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i ] ; 3 uses
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true) ; 2 uses
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = or disjoint i32 %i.d, %i.ai             ; 2 uses
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !502
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !772
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !772
  %i.aq = zext i32 %i.an to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 6
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !116
  %i.au = and i64 %i.aq, 63
  %i.av = shl nuw i64 1, %i.au
  %i.aw = and i64 %i.at, %i.av
  %.not.i.i.i = icmp eq i64 %i.aw, 0
  %i.ax = zext i32 %i.aj to i64                   ; 2 uses
  %i.ay = lshr i64 %i.ax, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ay ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !32  ; 2 uses
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = trunc nuw nsw i64 %i.ah to i8
  %i.bc = and i8 %i.bb, 7
  %i.bd = shl nuw i8 1, %i.bc
  %i.be = or i8 %i.ba, %i.bd
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.bf = and i64 %i.ax, 7
  %i.bg = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !32
  %i.bi = and i8 %i.bh, %i.ba
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i: ; preds = %bb.f, %bb.e
  %.sink.i.i.i.i = phi i8 [ %i.bi, %bb.f ], [ %i.be, %bb.e ]
  store i8 %.sink.i.i.i.i, ptr %i.az, align 1, !tbaa !32
  %i.bj = add nsw i64 %.011.i, -1
  %i.bk = and i64 %i.bj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.bk, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1865

bb.g:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = sdiv i32 %0, 64                         ; 2 uses
  %i.bm = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.bn = zext nneg i32 %i.bm to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.bn
  %i.bo = xor i64 %notmask.i.i35, -1
  %i.bp = sub nsw i32 64, %i.bm
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = shl i64 %i.bo, %i.bq
  %i.bs = load i8, ptr %2, align 8, !tbaa !1831, !range !69, !noundef !70
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !1833
  %i.bv = sext i32 %i.bl to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !116
  %i.by = xor i8 %i.bs, 1
  %i.bz = zext nneg i8 %i.by to i64
  %i.ca = sub nsw i64 0, %i.bz
  %i.cb = xor i64 %i.bx, %i.ca
  %i.cc = and i64 %i.cb, %i.br                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.cc, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.h
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ce = shl nsw i32 %i.bl, 6
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ch = load ptr, ptr %i.cd, align 8, !tbaa !1826, !nonnull !70, !align !245
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !1828, !nonnull !70, !align !245
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !1829, !nonnull !70, !align !245
  br label %bb.i

bb.i:                                             ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40, %.preheader.i37
  %.011.i38 = phi i64 [ %i.cc, %.preheader.i37 ], [ %i.dn, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40 ] ; 3 uses
  %i.ck = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true) ; 2 uses
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = or disjoint i32 %i.ce, %i.cl            ; 2 uses
  %i.cn = load ptr, ptr %i.ch, align 8, !tbaa !502
  %i.co = sext i32 %i.cm to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !3
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !772
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !772
  %i.ct = zext i32 %i.cq to i64                   ; 2 uses
  %i.cu = lshr i64 %i.ct, 6
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !116
  %i.cx = and i64 %i.ct, 63
  %i.cy = shl nuw i64 1, %i.cx
  %i.cz = and i64 %i.cw, %i.cy
  %.not.i.i.i39 = icmp eq i64 %i.cz, 0
  %i.da = zext i32 %i.cm to i64                   ; 2 uses
  %i.db = lshr i64 %i.da, 3
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.db ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !32  ; 2 uses
  br i1 %.not.i.i.i39, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.de = trunc nuw nsw i64 %i.ck to i8
  %i.df = and i8 %i.de, 7
  %i.dg = shl nuw i8 1, %i.df
  %i.dh = or i8 %i.dd, %i.dg
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40

bb.k:                                             ; preds = %bb.i
  %i.di = and i64 %i.da, 7
  %i.dj = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !32
  %i.dl = and i8 %i.dk, %i.dd
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40: ; preds = %bb.k, %bb.j
  %.sink.i.i.i.i41 = phi i8 [ %i.dl, %bb.k ], [ %i.dh, %bb.j ]
  store i8 %.sink.i.i.i.i41, ptr %i.dc, align 1, !tbaa !32
  %i.dm = add i64 %.011.i38, -1
  %i.dn = and i64 %i.dm, %.011.i38                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.dn, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %bb.i, !llvm.loop !1865

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43: ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40, %bb.h, %bb.g
  %i.do = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3354 = icmp sgt i32 %i.do, %i.d
  br i1 %.not3354, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_:bb.a

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49: ; preds = %bb.o, %bb.n
  %.sink.i.i.i.i50 = phi i8 [ %i.fo, %bb.o ], [ %i.fk, %bb.n ]
  store i8 %.sink.i.i.i.i50, ptr %i.ff, align 1, !tbaa !32
  %i.fp = add nsw i64 %.011.i47, -1
  %i.fq = and i64 %i.fp, %.011.i47                ; 2 uses
  %.not10.i51 = icmp eq i64 %i.fq, 0
  br i1 %.not10.i51, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !1865

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !1834, !range !69, !noundef !70
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1836
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !116
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit
  ]

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.o = shl i32 %1, 6                            ; 3 uses
  %i.p = add i32 %i.o, 64
  %i.q = sext i32 %i.p to i64
  %.not24 = icmp eq i32 %i.o, -64
  br i1 %.not24, label %.loopexit, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.b
  %i.r = sext i32 %i.o to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph23, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit
  %.022 = phi i64 [ %i.r, %.lr.ph23 ], [ %i.aw, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit ] ; 5 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !1826, !nonnull !70, !align !245
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !502
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.022
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !1828, !nonnull !70, !align !245
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !772
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !1829, !nonnull !70, !align !245
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !772
  %i.ad = zext i32 %i.y to i64                    ; 2 uses
  %i.ae = lshr i64 %i.ad, 6
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !116
  %i.ah = and i64 %i.ad, 63
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = and i64 %i.ag, %i.ai
  %.not.i.i = icmp eq i64 %i.aj, 0
  %i.ak = lshr i64 %.022, 3
  %i.al = and i64 %i.ak, 536870911
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.al ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !32  ; 2 uses
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = trunc i64 %.022 to i8
  %i.ap = and i8 %i.ao, 7
  %i.aq = shl nuw i8 1, %i.ap
  %i.ar = or i8 %i.an, %i.aq
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit

bb.e:                                             ; preds = %bb.c
  %i.as = and i64 %.022, 7
  %i.at = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !32
  %i.av = and i8 %i.au, %i.an
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit: ; preds = %bb.d, %bb.e
  %.sink.i.i.i = phi i8 [ %i.av, %bb.e ], [ %i.ar, %bb.d ]
  store i8 %.sink.i.i.i, ptr %i.am, align 1, !tbaa !32
  %i.aw = add nuw i64 %.022, 1                    ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.q
  br i1 %i.ax, label %bb.c, label %.loopexit, !llvm.loop !1867

bb.f:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit
  %.01521 = phi i64 [ %i.j, %.lr.ph ], [ %i.ce, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit ] ; 3 uses
  %i.ay = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01521, i1 true) ; 2 uses
  %i.az = trunc nuw nsw i64 %i.ay to i32
  %i.ba = or disjoint i32 %i.l, %i.az             ; 2 uses
  %i.bb = load ptr, ptr %i.k, align 8, !tbaa !1826, !nonnull !70, !align !245
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !502
  %i.bd = sext i32 %i.ba to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !3
  %i.bg = load ptr, ptr %i.m, align 8, !tbaa !1828, !nonnull !70, !align !245
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !772
  %i.bi = load ptr, ptr %i.n, align 8, !tbaa !1829, !nonnull !70, !align !245
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !772
  %i.bk = zext i32 %i.bf to i64                   ; 2 uses
  %i.bl = lshr i64 %i.bk, 6
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !116
  %i.bo = and i64 %i.bk, 63
  %i.bp = shl nuw i64 1, %i.bo
  %i.bq = and i64 %i.bn, %i.bp
  %.not.i.i17 = icmp eq i64 %i.bq, 0
  %i.br = zext i32 %i.ba to i64                   ; 2 uses
  %i.bs = lshr i64 %i.br, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !32  ; 2 uses
  br i1 %.not.i.i17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bv = trunc nuw nsw i64 %i.ay to i8
  %i.bw = and i8 %i.bv, 7
  %i.bx = shl nuw i8 1, %i.bw
  %i.by = or i8 %i.bu, %i.bx
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit

bb.h:                                             ; preds = %bb.f
  %i.bz = and i64 %i.br, 7
  %i.ca = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !32
  %i.cc = and i8 %i.cb, %i.bu
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit: ; preds = %bb.g, %bb.h
  %.sink.i.i.i18 = phi i8 [ %i.cc, %bb.h ], [ %i.by, %bb.g ]
  store i8 %.sink.i.i.i18, ptr %i.bt, align 1, !tbaa !32
  %i.cd = add i64 %.01521, -1
  %i.ce = and i64 %i.cd, %.01521                  ; 2 uses
  %.not = icmp eq i64 %i.ce, 0
  br i1 %.not, label %.loopexit, label %bb.f, !llvm.loop !1868

.loopexit:                                        ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit, %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_EUlimE_ZNS3_ISE_EEvSG_iibSH_EUliE_EEviiSH_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.484) align 8 %2, ptr noundef byval(%class.anon.485) align 8 %3) local_unnamed_addr #11 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !1816, !range !69, !noundef !70
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1819
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !116
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1869
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1870, !nonnull !70, !align !245
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1494
  %.pre.i = load i64, ptr %i.ae, align 8, !tbaa !116
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ak, %bb.d ] ; 3 uses
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %4 = trunc nuw nsw i64 %i.ah to i32
  %5 = or disjoint i32 %i.d, %4
  %6 = sext i32 %5 to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %6
  store i64 %.pre.i, ptr %i.ai, align 8, !tbaa !116
  %i.aj = add nsw i64 %.011.i, -1
  %i.ak = and i64 %i.aj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ak, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1871

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit41, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = sdiv i32 %0, 64                         ; 2 uses
  %i.am = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.an = zext nneg i32 %i.am to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.an
  %i.ao = xor i64 %notmask.i.i35, -1
  %i.ap = sub nsw i32 64, %i.am
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = shl i64 %i.ao, %i.aq
  %i.as = load i8, ptr %2, align 8, !tbaa !1816, !range !69, !noundef !70
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1819
  %i.av = sext i32 %i.al to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !116
  %i.ay = xor i8 %i.as, 1
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = xor i64 %i.ax, %i.ba
  %i.bc = and i64 %i.bb, %i.ar                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bc, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit41, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.be = shl nsw i32 %i.al, 6
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !1869
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1870, !nonnull !70, !align !245
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 144
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1494
  %.pre.i38 = load i64, ptr %i.bh, align 8, !tbaa !116
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i39 = phi i64 [ %i.bc, %.preheader.i37 ], [ %i.bn, %bb.g ] ; 3 uses
  %i.bk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i39, i1 true)
  %7 = trunc nuw nsw i64 %i.bk to i32
  %8 = or disjoint i32 %i.be, %7
  %9 = sext i32 %8 to i64
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %9
  store i64 %.pre.i38, ptr %i.bl, align 8, !tbaa !116
  %i.bm = add i64 %.011.i39, -1
  %i.bn = and i64 %i.bm, %.011.i39                ; 2 uses
  %.not10.i40 = icmp eq i64 %i.bn, 0
  br i1 %.not10.i40, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit41, label %bb.g, !llvm.loop !1871

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit41: ; preds = %bb.g, %bb.f, %bb.e
  %i.bo = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3353 = icmp sgt i32 %i.bo, %i.d
  br i1 %.not3353, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit41
  %i.bp = load i8, ptr %3, align 8, !tbaa !1820, !range !69, !noundef !70
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1822
  %i.bs = xor i8 %i.bp, 1
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = sub nsw i64 0, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !70, !align !245 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 144 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit41
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ca = phi i32 [ %i.bo, %.lr.ph ], [ %i.dw, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.054 = phi i32 [ %i.c, %.lr.ph ], [ %i.ca, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cb = sdiv i32 %.054, 64                      ; 3 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !116
  %i.cf = xor i64 %i.ce, %i.bu                    ; 2 uses
  switch i64 %i.cf, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cg = shl nsw i32 %i.cb, 6
  %i.ch = load ptr, ptr %i.bz, align 8, !tbaa !1494
  %.pre24.i = load i64, ptr %i.by, align 8, !tbaa !116
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ci = shl nsw i32 %i.cb, 6                    ; 3 uses
  %i.cj = add i32 %i.ci, 64
  %i.ck = sext i32 %i.cj to i64                   ; 3 uses
  %.0.off = add i32 %.054, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cl = sext i32 %i.ci to i64                   ; 9 uses
  %i.cm = load ptr, ptr %i.bz, align 8, !tbaa !1494 ; 3 uses
  %.pre.i42 = load i64, ptr %i.by, align 8, !tbaa !116 ; 2 uses
  %i.cn = or disjoint i64 %i.cl, 1
  %umax70 = tail call i64 @llvm.umax.i64(i64 %i.cn, i64 %i.ck) ; 2 uses
  %i.co = sub i64 %umax70, %i.cl                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.co, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.cp = or disjoint i64 %i.cl, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cp, i64 %i.ck)
  %i.cq = xor i64 %i.cl, -1
  %i.cr = add i64 %umax, %i.cq                    ; 2 uses
  %i.cs = sext i32 %i.ci to i35                   ; 2 uses
  %i.ct = shl nsw i35 %i.cs, 3
  %i.cu = trunc i64 %i.cr to i35
  %i.cv = add i35 %i.cs, %i.cu
  %i.cw = shl i35 %i.cv, 3
  %i.cx = icmp slt i35 %i.cw, %i.ct
  %i.cy = icmp ugt i64 %i.cr, 4294967295
  %i.cz = or i1 %i.cx, %i.cy
  br i1 %i.cz, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check71 = icmp ult i64 %i.co, 16
  %n.mod.vf72 = and i64 %umax70, 1                ; 3 uses
  %n.vec73 = sub i64 %i.co, %n.mod.vf72           ; 3 uses
  %i.da = add i64 %n.vec73, %i.cl                 ; 2 uses
  %broadcast.splatinsert74 = insertelement <4 x i64> poison, i64 %.pre.i42, i64 0
  %broadcast.splat75 = shufflevector <4 x i64> %broadcast.splatinsert74, <4 x i64> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check71, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.db = add i64 %index, %i.cl
  %i.dc = shl i64 %i.db, 32
  %i.dd = ashr exact i64 %i.dc, 29
  %i.de = getelementptr inbounds i8, ptr %i.cm, i64 %i.dd ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 96
  store <4 x i64> %broadcast.splat75, ptr %i.de, align 8, !tbaa !116
  store <4 x i64> %broadcast.splat75, ptr %i.df, align 8, !tbaa !116
  store <4 x i64> %broadcast.splat75, ptr %i.dg, align 8, !tbaa !116
  store <4 x i64> %broadcast.splat75, ptr %i.dh, align 8, !tbaa !116
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.di = icmp eq i64 %index.next, %n.vec73
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !1872

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index76 = phi i64 [ %index.next77, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dj = add i64 %index76, %i.cl
  %i.dk = shl i64 %i.dj, 32
  %i.dl = ashr exact i64 %i.dk, 29
  %i.dm = getelementptr inbounds i8, ptr %i.cm, i64 %i.dl
  store <4 x i64> %broadcast.splat75, ptr %i.dm, align 8, !tbaa !116
  %index.next77 = add nuw i64 %index76, 4         ; 2 uses
  %i.dn = icmp eq i64 %index.next77, %n.vec73
  br i1 %i.dn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1873

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n78 = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n78, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.da, %middle.block ], [ %i.cl, %vector.scevcheck ], [ %i.cl, %iter.check ], [ %i.da, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.dq, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %sext.i = shl i64 %.020.i, 32
  %i.do = ashr exact i64 %sext.i, 29
  %i.dp = getelementptr inbounds i8, ptr %i.cm, i64 %i.do
  store i64 %.pre.i42, ptr %i.dp, align 8, !tbaa !116
  %i.dq = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dr = icmp ult i64 %i.dq, %i.ck
  br i1 %i.dr, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !1874

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cf, %.lr.ph.i ], [ %i.dv, %bb.j ] ; 3 uses
  %i.ds = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %10 = trunc nuw nsw i64 %i.ds to i32
  %11 = or disjoint i32 %i.cg, %10
  %12 = sext i32 %11 to i64
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %12
  store i64 %.pre24.i, ptr %i.dt, align 8, !tbaa !116
  %i.du = add i64 %.01519.i, -1
  %i.dv = and i64 %i.du, %.01519.i                ; 2 uses
  %.not.i43 = icmp eq i64 %i.dv, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !1875

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.dw = add nsw i32 %i.ca, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dw, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1876

bb.k:                                             ; preds = %._crit_edge
  %i.dx = ashr i32 %1, 6
  %i.dy = and i32 %1, 63
  %i.dz = zext nneg i32 %i.dy to i64
  %notmask.i44 = shl nsw i64 -1, %i.dz
  %i.ea = xor i64 %notmask.i44, -1
  %i.eb = load i8, ptr %2, align 8, !tbaa !1816, !range !69, !noundef !70
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !1819
  %i.ee = sext i32 %i.dx to i64
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.ee
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !116
  %i.eh = xor i8 %i.eb, 1
  %i.ei = zext nneg i8 %i.eh to i64
  %i.ej = sub nsw i64 0, %i.ei
  %i.ek = xor i64 %i.eg, %i.ej
  %i.el = and i64 %i.ek, %i.ea                    ; 2 uses
  %.not.i45 = icmp eq i64 %i.el, 0
  br i1 %.not.i45, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i46

.preheader.i46:                                   ; preds = %bb.k
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !1869
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !1870, !nonnull !70, !align !245
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 144
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !1494
  %.pre.i47 = load i64, ptr %i.ep, align 8, !tbaa !116
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i46
  %.011.i48 = phi i64 [ %i.el, %.preheader.i46 ], [ %i.ev, %bb.l ] ; 3 uses
  %i.es = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i48, i1 true)
  %13 = trunc nuw nsw i64 %i.es to i32
  %14 = or disjoint i32 %i.d, %13
  %15 = sext i32 %14 to i64
  %i.et = getelementptr inbounds [8 x i8], ptr %i.er, i64 %15
  store i64 %.pre.i47, ptr %i.et, align 8, !tbaa !116
  %i.eu = add nsw i64 %.011.i48, -1
  %i.ev = and i64 %i.eu, %.011.i48                ; 2 uses
  %.not10.i49 = icmp eq i64 %i.ev, 0
  br i1 %.not10.i49, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !1871

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr %4, ptr %5) local_unnamed_addr #1 comdat {
bb.a:
  %6 = alloca %class.anon.487, align 8            ; 7 uses
  %7 = alloca %class.anon.486, align 8            ; 9 uses
  %i.a = zext i1 %3 to i8                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i8 %i.a, ptr %6, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %.sroa.3.0..sroa_idx9, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %5, ptr %.sroa.4.0..sroa_idx, align 8
  store i8 %i.a, ptr %7, align 8
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %.sroa.212.0..sroa_idx, align 8
  %.sroa.313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %4, ptr %.sroa.313.0..sroa_idx, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %5, ptr %.sroa.414.0..sroa_idx, align 8
  %.not.i = icmp slt i32 %1, %2
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, 63                           ; 2 uses
  %i.c = srem i32 %i.b, 64
  %i.d = sub nsw i32 %i.b, %i.c                   ; 6 uses
  %i.e = and i32 %2, -64                          ; 4 uses
  %i.f = icmp slt i32 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = ashr i32 %2, 6
  %i.h = and i32 %2, 63
  %i.i = zext nneg i32 %i.h to i64
  %notmask.i.i = shl nsw i64 -1, %i.i
  %i.j = xor i64 %notmask.i.i, -1
  %i.k = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.l
  %i.m = xor i64 %notmask.i.i.i, -1
  %i.n = sub nsw i32 64, %i.k
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl i64 %i.m, %i.o
  %i.q = and i64 %i.p, %i.j
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.g, i64 noundef %i.q)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

bb.d:                                             ; preds = %bb.b
  %.not32.i = icmp eq i32 %1, %i.d
  br i1 %.not32.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = sdiv i32 %1, 64
  %i.s = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %notmask.i.i35.i = shl nsw i64 -1, %i.t
  %i.u = xor i64 %notmask.i.i35.i, -1
  %i.v = sub nsw i32 64, %i.s
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl i64 %i.u, %i.w
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1877

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !1878, !range !69, !noundef !70
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1881
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !116
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 6 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6                        ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1882
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !1883, !nonnull !70, !align !245 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1837 ; 5 uses
  %.not.i.i = icmp eq ptr %i.r, null
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.p, i64 58
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 2, !tbaa !176, !range !69
  %.pre.i.fr = freeze i8 %.pre.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 57
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 59 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 5 uses
  %i.w = trunc i8 %.pre.i.fr to i1                ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 64 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 144 ; 3 uses
  br i1 %.not.i.i, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !175  ; 3 uses
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !1494 ; 3 uses
  br i1 %i.w, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us, label %.preheader.split.us.split

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us: ; preds = %.preheader.split.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us
  %.011.us.us = phi i64 [ %i.ag, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us ], [ %i.k, %.preheader.split.us ] ; 3 uses
  %i.ab = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us.us, i1 true)
  %3 = trunc nuw nsw i64 %i.ab to i32
  %4 = or disjoint i32 %i.m, %3
  %5 = sext i32 %4 to i64                         ; 2 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.z, i64 %5
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !116
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %5
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !116
  %i.af = add i64 %.011.us.us, -1
  %i.ag = and i64 %i.af, %.011.us.us              ; 2 uses
  %.not10.us.us = icmp eq i64 %i.ag, 0
  br i1 %.not10.us.us, label %.loopexit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us, !llvm.loop !1884

.preheader.split.us.split:                        ; preds = %.preheader.split.us
  %i.ah = load i8, ptr %i.t, align 1, !tbaa !136, !range !69, !noundef !70
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %.preheader.split.us.split.split.us, label %.preheader.split.us.split.split

.preheader.split.us.split.split.us:               ; preds = %.preheader.split.us.split
  %i.aj = load i32, ptr %i.x, align 8, !tbaa !177
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ak
  %.pre29 = load i64, ptr %i.al, align 8, !tbaa !116
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19, %.preheader.split.us.split.split.us
  %.011.us.us20 = phi i64 [ %i.k, %.preheader.split.us.split.split.us ], [ %i.ap, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19 ] ; 3 uses
  %i.am = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us.us20, i1 true)
  %6 = trunc nuw nsw i64 %i.am to i32
  %7 = or disjoint i32 %i.m, %6
  %8 = sext i32 %7 to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %8
  store i64 %.pre29, ptr %i.an, align 8, !tbaa !116
  %i.ao = add i64 %.011.us.us20, -1
  %i.ap = and i64 %i.ao, %.011.us.us20            ; 2 uses
  %.not10.us.us23 = icmp eq i64 %i.ap, 0
  br i1 %.not10.us.us23, label %.loopexit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19, !llvm.loop !1884

.preheader.split.us.split.split:                  ; preds = %.preheader.split.us.split
  %i.aq = load ptr, ptr %i.u, align 8, !tbaa !178
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us, %.preheader.split.us.split.split
  %.011.us = phi i64 [ %i.k, %.preheader.split.us.split.split ], [ %i.az, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us ] ; 3 uses
  %i.ar = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us, i1 true)
  %9 = trunc nuw nsw i64 %i.ar to i32
  %10 = or disjoint i32 %i.m, %9
  %11 = sext i32 %10 to i64                       ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %11
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !116
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %11
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !116
  %i.ay = add i64 %.011.us, -1
  %i.az = and i64 %i.ay, %.011.us                 ; 2 uses
  %.not10.us = icmp eq i64 %i.az, 0
  br i1 %.not10.us, label %.loopexit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us, !llvm.loop !1884

.preheader.split:                                 ; preds = %.preheader
  br i1 %i.w, label %.preheader.split.split.us.split.us, label %.preheader.split.split

.preheader.split.split.us.split.us:               ; preds = %.preheader.split, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit.us16.us
  %.011.us12.us = phi i64 [ %i.br, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit.us16.us ], [ %i.k, %.preheader.split ] ; 3 uses
  %i.ba = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us12.us, i1 true)
  %i.bb = trunc nuw nsw i64 %i.ba to i32
  %i.bc = or disjoint i32 %i.m, %i.bb             ; 2 uses
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %i.be = lshr i64 %i.bd, 6
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !116
  %i.bh = and i64 %i.bd, 63
  %i.bi = shl nuw i64 1, %i.bh
  %i.bj = and i64 %i.bg, %i.bi
  %.not.i.i.i.us.us = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i.us.us, label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit.us16.us, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us13.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us13.us: ; preds = %.preheader.split.split.us.split.us
  %i.bk = load ptr, ptr %i.v, align 8, !tbaa !175
  %i.bl = sext i32 %i.bc to i64                   ; 2 uses
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !116
  %i.bo = load ptr, ptr %i.y, align 8, !tbaa !1494
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.bl
  store i64 %i.bn, ptr %i.bp, align 8, !tbaa !116
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit.us16.us

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit.us16.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us13.us, %.preheader.split.split.us.split.us
  %i.bq = add i64 %.011.us12.us, -1
  %i.br = and i64 %i.bq, %.011.us12.us            ; 2 uses
  %.not10.us17.us = icmp eq i64 %i.br, 0
  br i1 %.not10.us17.us, label %.loopexit, label %.preheader.split.split.us.split.us, !llvm.loop !1884

.preheader.split.split:                           ; preds = %.preheader.split, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit
  %.011 = phi i64 [ %i.dj, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit ], [ %i.k, %.preheader.split ] ; 3 uses
  %i.bs = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011, i1 true)
  %i.bt = trunc nuw nsw i64 %i.bs to i32
  %i.bu = or disjoint i32 %i.m, %i.bt             ; 4 uses
  %i.bv = load i8, ptr %i.s, align 1, !range !69
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader.split.split
  %i.bx = zext i32 %i.bu to i64                   ; 2 uses
  %i.by = lshr i64 %i.bx, 6
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !116
  %i.cb = and i64 %i.bx, 63
  %i.cc = shl nuw i64 1, %i.cb
  %i.cd = and i64 %i.ca, %i.cc
  %.not.i.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i.i, label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i

bb.c:                                             ; preds = %.preheader.split.split
  %i.ce = load i8, ptr %i.t, align 1, !tbaa !136, !range !69, !noundef !70
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cg = load ptr, ptr %i.u, align 8, !tbaa !178
  %i.ch = sext i32 %i.bu to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.ck = zext i32 %i.cj to i64                   ; 2 uses
  %i.cl = lshr i64 %i.ck, 6
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.cl
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !116
  %i.co = and i64 %i.ck, 63
  %i.cp = shl nuw i64 1, %i.co
  %i.cq = and i64 %i.cp, %i.cn
  %.not.i7.i.i = icmp eq i64 %i.cq, 0
  br i1 %.not.i7.i.i, label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.thread35

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.thread35: ; preds = %bb.d
  %i.cr = load ptr, ptr %i.v, align 8, !tbaa !175
  br label %bb.e

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i: ; preds = %bb.c
  %i.cs = load i64, ptr %i.r, align 8, !tbaa !116
  %i.ct = and i64 %i.cs, 1
  %.not.i6.i.i = icmp eq i64 %i.ct, 0
  br i1 %.not.i6.i.i, label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.thread: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i
  %i.cu = load ptr, ptr %i.v, align 8, !tbaa !175
  br label %_ZNK8facebook5velox13DecodedVector7valueAtImEET_i.exit.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i: ; preds = %bb.b
  %.pre = load i8, ptr %i.t, align 1, !tbaa !136, !range !69
  %i.cv = load ptr, ptr %i.v, align 8, !tbaa !175 ; 2 uses
  %i.cw = trunc nuw i8 %.pre to i1
  br i1 %i.cw, label %_ZNK8facebook5velox13DecodedVector7valueAtImEET_i.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.thread35, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i
  %i.cx = phi ptr [ %i.cr, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.thread35 ], [ %i.cv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i ]
  %i.cy = load ptr, ptr %i.u, align 8, !tbaa !178
  %i.cz = sext i32 %i.bu to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.cz
  br label %_ZNK8facebook5velox13DecodedVector7valueAtImEET_i.exit.i

_ZNK8facebook5velox13DecodedVector7valueAtImEET_i.exit.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.thread, %bb.e
  %i.db = phi ptr [ %i.cx, %bb.e ], [ %i.cu, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.thread ], [ %i.cv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i ]
  %.0.i.i.i.in = phi ptr [ %i.da, %bb.e ], [ %i.x, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.thread ], [ %i.x, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i ]
  %.0.i.i.i = load i32, ptr %.0.i.i.i.in, align 4, !tbaa !3
  %i.dc = sext i32 %.0.i.i.i to i64
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.db, i64 %i.dc
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !116
  %i.df = load ptr, ptr %i.y, align 8, !tbaa !1494
  %i.dg = sext i32 %i.bu to i64
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.dg
  store i64 %i.de, ptr %i.dh, align 8, !tbaa !116
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit: ; preds = %bb.b, %bb.d, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %_ZNK8facebook5velox13DecodedVector7valueAtImEET_i.exit.i
  %i.di = add i64 %.011, -1
  %i.dj = and i64 %i.di, %.011                    ; 2 uses
  %.not10 = icmp eq i64 %i.dj, 0
  br i1 %.not10, label %.loopexit, label %.preheader.split.split, !llvm.loop !1884

.loopexit:                                        ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit.us16.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !1885, !range !69, !noundef !70
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1887
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !116
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 6 uses
  switch i64 %i.j, label %.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit
  ]

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6                        ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1882
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !1883, !nonnull !70, !align !245 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1837 ; 5 uses
  %.not.i.i17 = icmp eq ptr %i.q, null
  %.phi.trans.insert.i18 = getelementptr inbounds nuw i8, ptr %i.o, i64 58
  %.pre.i19 = load i8, ptr %.phi.trans.insert.i18, align 2, !tbaa !176, !range !69
  %.pre.i19.fr = freeze i8 %.pre.i19
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 57
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 59 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 5 uses
  %i.v = trunc i8 %.pre.i19.fr to i1              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 64 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 144 ; 3 uses
  br i1 %.not.i.i17, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !175  ; 3 uses
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !1494 ; 3 uses
  br i1 %i.v, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us, label %.lr.ph.split.us.split

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us: ; preds = %.lr.ph.split.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us
  %.01531.us.us = phi i64 [ %i.af, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us ], [ %i.j, %.lr.ph.split.us ] ; 3 uses
  %i.aa = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01531.us.us, i1 true)
  %2 = trunc nuw nsw i64 %i.aa to i32
  %3 = or disjoint i32 %i.l, %2
  %4 = sext i32 %3 to i64                         ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.y, i64 %4
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !116
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.z, i64 %4
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !116
  %i.ae = add i64 %.01531.us.us, -1
  %i.af = and i64 %i.ae, %.01531.us.us            ; 2 uses
  %.not.us.us = icmp eq i64 %i.af, 0
  br i1 %.not.us.us, label %.loopexit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us, !llvm.loop !1888

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %i.ag = load i8, ptr %i.s, align 1, !tbaa !136, !range !69, !noundef !70
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.split.us.split.split.us, label %.lr.ph.split.us.split.split

.lr.ph.split.us.split.split.us:                   ; preds = %.lr.ph.split.us.split
  %i.ai = load i32, ptr %i.w, align 8, !tbaa !177
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.aj
  %.pre57 = load i64, ptr %i.ak, align 8, !tbaa !116
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us39

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us39: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us39, %.lr.ph.split.us.split.split.us
  %.01531.us.us40 = phi i64 [ %i.j, %.lr.ph.split.us.split.split.us ], [ %i.ao, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us39 ] ; 3 uses
  %i.al = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01531.us.us40, i1 true)
  %5 = trunc nuw nsw i64 %i.al to i32
  %6 = or disjoint i32 %i.l, %5
  %7 = sext i32 %6 to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %i.z, i64 %7
  store i64 %.pre57, ptr %i.am, align 8, !tbaa !116
  %i.an = add i64 %.01531.us.us40, -1
  %i.ao = and i64 %i.an, %.01531.us.us40          ; 2 uses
  %.not.us.us43 = icmp eq i64 %i.ao, 0
  br i1 %.not.us.us43, label %.loopexit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us39, !llvm.loop !1888

.lr.ph.split.us.split.split:                      ; preds = %.lr.ph.split.us.split
  %i.ap = load ptr, ptr %i.t, align 8, !tbaa !178
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us, %.lr.ph.split.us.split.split
  %.01531.us = phi i64 [ %i.j, %.lr.ph.split.us.split.split ], [ %i.ay, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us ] ; 3 uses
  %i.aq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01531.us, i1 true)
  %8 = trunc nuw nsw i64 %i.aq to i32
  %9 = or disjoint i32 %i.l, %8
  %10 = sext i32 %9 to i64                        ; 2 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %10
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !3
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8, !tbaa !116
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.z, i64 %10
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !116
  %i.ax = add i64 %.01531.us, -1
  %i.ay = and i64 %i.ax, %.01531.us               ; 2 uses
  %.not.us = icmp eq i64 %i.ay, 0
  br i1 %.not.us, label %.loopexit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us, !llvm.loop !1888

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.v, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit.us36.us
  %.01531.us32.us = phi i64 [ %i.bq, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit.us36.us ], [ %i.j, %.lr.ph.split ] ; 3 uses
  %i.az = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01531.us32.us, i1 true)
  %i.ba = trunc nuw nsw i64 %i.az to i32
  %i.bb = or disjoint i32 %i.l, %i.ba             ; 2 uses
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %i.bd = lshr i64 %i.bc, 6
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.bd
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !116
  %i.bg = and i64 %i.bc, 63
  %i.bh = shl nuw i64 1, %i.bg
  %i.bi = and i64 %i.bf, %i.bh
  %.not.i.i.i27.us.us = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i.i27.us.us, label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit.us36.us, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us33.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us33.us: ; preds = %.lr.ph.split.split.us.split.us
  %i.bj = load ptr, ptr %i.u, align 8, !tbaa !175
  %i.bk = sext i32 %i.bb to i64                   ; 2 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !116
  %i.bn = load ptr, ptr %i.x, align 8, !tbaa !1494
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bk
  store i64 %i.bm, ptr %i.bo, align 8, !tbaa !116
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit.us36.us

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit.us36.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us33.us, %.lr.ph.split.split.us.split.us
  %i.bp = add i64 %.01531.us32.us, -1
  %i.bq = and i64 %i.bp, %.01531.us32.us          ; 2 uses
  %.not.us37.us = icmp eq i64 %i.bq, 0
  br i1 %.not.us37.us, label %.loopexit, label %.lr.ph.split.split.us.split.us, !llvm.loop !1888

bb.b:                                             ; preds = %bb.a
  %i.br = shl i32 %1, 6                           ; 3 uses
  %i.bs = add i32 %i.br, 64
  %i.bt = sext i32 %i.bs to i64
  %.not49 = icmp eq i32 %i.br, -64
  br i1 %.not49, label %.loopexit, label %.lr.ph48

.lr.ph48:                                         ; preds = %bb.b
  %i.bu = sext i32 %i.br to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !1882
  %i.by = load ptr, ptr %i.bv, align 8, !tbaa !1883, !nonnull !70, !align !245 ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1837 ; 4 uses
  %.not.i.i = icmp eq ptr %i.ca, null
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.by, i64 58
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 2, !tbaa !176, !range !69
  %i.cb = trunc nuw i8 %.pre.i to i1              ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 57
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 59 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 144
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph48, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clImEEDaSB_.exit
  %.044 = phi i64 [ %i.bu, %.lr.ph48 ], [ %i.dx, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clImEEDaSB_.exit ] ; 7 uses
  %i.ci = trunc i64 %.044 to i32
  br i1 %.not.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cj = load i8, ptr %i.cc, align 1, !range !69
  %i.ck = trunc nuw i8 %i.cj to i1
  %or.cond.i.i = select i1 %i.cb, i1 true, i1 %i.ck
  br i1 %or.cond.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cl = lshr i64 %.044, 6
  %i.cm = and i64 %i.cl, 67108863
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !116
  %i.cp = and i64 %.044, 63
  %i.cq = shl nuw i64 1, %i.cp
  %i.cr = and i64 %i.co, %i.cq
  %.not.i.i.i = icmp eq i64 %i.cr, 0
  br i1 %.not.i.i.i, label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clImEEDaSB_.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i

bb.f:                                             ; preds = %bb.d
  %i.cs = load i8, ptr %i.cd, align 1, !tbaa !136, !range !69, !noundef !70 ; 2 uses
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cu = load ptr, ptr %i.ce, align 8, !tbaa !178
  %sext.i = shl i64 %.044, 32
  %i.cv = ashr exact i64 %sext.i, 30
  %i.cw = getelementptr inbounds i8, ptr %i.cu, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !3
  %i.cy = zext i32 %i.cx to i64                   ; 2 uses
  %i.cz = lshr i64 %i.cy, 6
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cz
  %i.db = load i64, ptr %i.da, align 8, !tbaa !116
  %i.dc = and i64 %i.cy, 63
  %i.dd = shl nuw i64 1, %i.dc
  %i.de = and i64 %i.dd, %i.db
  %.not.i7.i.i = icmp eq i64 %i.de, 0
  br i1 %.not.i7.i.i, label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clImEEDaSB_.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i: ; preds = %bb.f
  %i.df = load i64, ptr %i.ca, align 8, !tbaa !116
  %i.dg = and i64 %i.df, 1
  %.not.i6.i.i = icmp eq i64 %i.dg, 0
  br i1 %.not.i6.i.i, label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clImEEDaSB_.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %bb.g
  %i.dh = load ptr, ptr %i.cf, align 8, !tbaa !175
  br label %bb.h

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i: ; preds = %bb.e, %bb.c
  %i.di = load ptr, ptr %i.cf, align 8, !tbaa !175 ; 2 uses
  br i1 %i.cb, label %_ZNK8facebook5velox13DecodedVector7valueAtImEET_i.exit.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i
  %.pre = load i8, ptr %i.cd, align 1, !tbaa !136, !range !69
  br label %bb.h

bb.h:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i
  %i.dj = phi i8 [ %i.cs, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i ], [ %.pre, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge ]
  %i.dk = phi ptr [ %i.dh, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i ], [ %i.di, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge ] ; 2 uses
  %i.dl = trunc nuw i8 %i.dj to i1
  br i1 %i.dl, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dm = load i32, ptr %i.cg, align 8, !tbaa !177
  br label %_ZNK8facebook5velox13DecodedVector7valueAtImEET_i.exit.i

bb.j:                                             ; preds = %bb.h
  %i.dn = load ptr, ptr %i.ce, align 8, !tbaa !178
  %sext4.i = shl i64 %.044, 32
  %i.do = ashr exact i64 %sext4.i, 30
  %i.dp = getelementptr inbounds i8, ptr %i.dn, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtImEET_i.exit.i

_ZNK8facebook5velox13DecodedVector7valueAtImEET_i.exit.i: ; preds = %bb.j, %bb.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i
  %i.dr = phi ptr [ %i.dk, %bb.j ], [ %i.dk, %bb.i ], [ %i.di, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i ]
  %.0.i.i.i = phi i32 [ %i.dq, %bb.j ], [ %i.dm, %bb.i ], [ %i.ci, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i ]
  %i.ds = sext i32 %.0.i.i.i to i64
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.ds
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !116
  %i.dv = load ptr, ptr %i.ch, align 8, !tbaa !1494
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.044
  store i64 %i.du, ptr %i.dw, align 8, !tbaa !116
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clImEEDaSB_.exit

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clImEEDaSB_.exit: ; preds = %bb.e, %bb.g, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %_ZNK8facebook5velox13DecodedVector7valueAtImEET_i.exit.i
  %i.dx = add nuw i64 %.044, 1                    ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.bt
  br i1 %i.dy, label %bb.c, label %.loopexit, !llvm.loop !1889

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit
  %.01531 = phi i64 [ %i.fq, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit ], [ %i.j, %.lr.ph.split ] ; 3 uses
  %i.dz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01531, i1 true)
  %i.ea = trunc nuw nsw i64 %i.dz to i32
  %i.eb = or disjoint i32 %i.l, %i.ea             ; 4 uses
  %i.ec = load i8, ptr %i.r, align 1, !range !69
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.split.split
  %i.ee = zext i32 %i.eb to i64                   ; 2 uses
  %i.ef = lshr i64 %i.ee, 6
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ef
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !116
  %i.ei = and i64 %i.ee, 63
  %i.ej = shl nuw i64 1, %i.ei
  %i.ek = and i64 %i.eh, %i.ej
  %.not.i.i.i27 = icmp eq i64 %i.ek, 0
  br i1 %.not.i.i.i27, label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i22

bb.l:                                             ; preds = %.lr.ph.split.split
  %i.el = load i8, ptr %i.s, align 1, !tbaa !136, !range !69, !noundef !70
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i25, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.en = load ptr, ptr %i.t, align 8, !tbaa !178
  %i.eo = sext i32 %i.eb to i64
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.en, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !3
  %i.er = zext i32 %i.eq to i64                   ; 2 uses
  %i.es = lshr i64 %i.er, 6
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.es
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !116
  %i.ev = and i64 %i.er, 63
  %i.ew = shl nuw i64 1, %i.ev
  %i.ex = and i64 %i.ew, %i.eu
  %.not.i7.i.i21 = icmp eq i64 %i.ex, 0
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox13AlignedBuffer13fillNewMemoryIhEEvmmRKSt8optionalIT_E:bb.a
  %i.h = load i64, ptr %i.f, align 8, !tbaa !32
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.a
  %.not8 = icmp ugt i64 %2, %1
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.k = load i8, ptr %i.j, align 1, !range !69
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond = select i1 %.not8, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.f, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.n = load i8, ptr %i.m, align 4, !tbaa !262
  %i.o = and i8 %i.n, 2
  %.not.i = icmp eq i8 %i.o, 0
  br i1 %.not.i, label %_ZNK8facebook5velox6Buffer9asMutableIhEEPT_v.exit, label %bb.g, !prof !121

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIhEEPT_vE18veloxCheckFailArgs) #42
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIhEEPT_v.exit: ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !263
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %1
  %gepdiff = sub nsw i64 %2, %1
  %i.s = load i8, ptr %3, align 1, !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.r, i8 %i.s, i64 %gepdiff, i1 false)
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

_ZSt4fillIPhhEvT_S1_RKT0_.exit:                   ; preds = %_ZNK8facebook5velox6Buffer9asMutableIhEEPT_v.exit, %bb.e
  ret void
}

declare void @_ZN8facebook5velox6Buffer19sliceBufferZeroCopyEmbRKN5boost13intrusive_ptrIS1_EEmm(ptr dead_on_unwind writable sret(%"class.boost::intrusive_ptr") align 8, i64 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt10_ConstructIN8facebook5velox10FlatVectorImEEJRKPNS1_6memory10MemoryPoolERKSt10shared_ptrIKNS1_4TypeEEN5boost13intrusive_ptrINS1_6BufferEEERiSI_St6vectorISI_SaISI_EEEEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %8 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %9 = alloca %"struct.facebook::velox::SimpleVectorStats.290", align 8 ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !317
  %i.b = load ptr, ptr %3, align 8, !tbaa !330
  store ptr %i.b, ptr %7, align 8, !tbaa !330
  store ptr null, ptr %3, align 8, !tbaa !330
  %i.c = load i32, ptr %4, align 4, !tbaa !3
  %i.d = load ptr, ptr %5, align 8, !tbaa !330
  store ptr %i.d, ptr %8, align 8, !tbaa !330
  store ptr null, ptr %5, align 8, !tbaa !330
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 0, ptr %i.e, align 8, !tbaa !507
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i8 0, ptr %i.f, align 8, !tbaa !507
  invoke void @_ZN8facebook5velox10FlatVectorImEC2EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsImEESt8optionalIiESP_SO_IbESP_SP_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %7, i32 noundef %i.c, ptr noundef nonnull %8, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 0, i64 0, i16 0, i64 0, i64 0)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.g = load ptr, ptr %8, align 8, !tbaa !330    ; 7 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = atomicrmw sub ptr %i.h, i32 1 acq_rel, align 4
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.c
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !45
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr noundef nonnull align 8 dereferenceable(64) %i.g)
          to label %.noexc.i unwind label %bb.d, !inline_history !351

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !352
  %.not.i.i = icmp eq ptr %i.o, null
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !45
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %..i.i
  %i.r = load ptr, ptr %i.q, align 8
  invoke void %i.r(ptr noundef nonnull align 8 dereferenceable(64) %i.g)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.d, !inline_history !351

bb.d:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #41
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.b, %bb.c, %.noexc.i
  %i.u = load ptr, ptr %7, align 8, !tbaa !330    ; 7 uses
  %.not.i8 = icmp eq ptr %i.u, null
  br i1 %.not.i8, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13, label %bb.e

bb.e:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = atomicrmw sub ptr %i.v, i32 1 acq_rel, align 4
  %i.x = icmp eq i32 %i.w, 1
  br i1 %i.x, label %.sink.split.i.i9, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13

.sink.split.i.i9:                                 ; preds = %bb.e
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !45
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(64) %i.u)
          to label %.noexc.i10 unwind label %bb.f, !inline_history !351

.noexc.i10:                                       ; preds = %.sink.split.i.i9
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !352
  %.not.i.i11 = icmp eq ptr %i.ac, null
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !45
  %..i.i12 = select i1 %.not.i.i11, i64 8, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %..i.i12
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(64) %i.u)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13 unwind label %bb.f, !inline_history !351

bb.f:                                             ; preds = %.noexc.i10, %.sink.split.i.i9
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #41
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.e, %.noexc.i10
  ret void

bb.g:                                             ; preds = %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #27
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #27
  resume { ptr, i32 } %i.ai
}

declare void @_ZN8facebook5velox6Buffer5sliceIbEEN5boost13intrusive_ptrIS1_EERKS5_mmPNS0_6memory10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.boost::intrusive_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_EUlimE_ZNS3_IS9_EEvSB_iibSC_EUliE_EEviiSC_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.512) align 8 %2, ptr noundef byval(%class.anon.513) align 8 %3) local_unnamed_addr #11 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !1566, !range !69, !noundef !70
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1570
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !116
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1919
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1494
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !1920, !nonnull !70, !align !245
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !772
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.an, %bb.d ] ; 3 uses
  %i.ai = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %4 = trunc nuw nsw i64 %i.ai to i32
  %5 = or disjoint i32 %i.d, %4
  %6 = sext i32 %5 to i64                         ; 2 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.af, i64 %6
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !116
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %6
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !116
  %i.am = add nsw i64 %.011.i, -1
  %i.an = and i64 %i.am, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.an, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1921

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = sdiv i32 %0, 64                         ; 2 uses
  %i.ap = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.aq = zext nneg i32 %i.ap to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.aq
  %i.ar = xor i64 %notmask.i.i35, -1
  %i.as = sub nsw i32 64, %i.ap
  %i.at = zext nneg i32 %i.as to i64
  %i.au = shl i64 %i.ar, %i.at
  %i.av = load i8, ptr %2, align 8, !tbaa !1566, !range !69, !noundef !70
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1570
  %i.ay = sext i32 %i.ao to i64
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !116
  %i.bb = xor i8 %i.av, 1
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = sub nsw i64 0, %i.bc
  %i.be = xor i64 %i.ba, %i.bd
  %i.bf = and i64 %i.be, %i.au                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bf, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bh = shl nsw i32 %i.ao, 6
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1919
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 144
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1494
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !1920, !nonnull !70, !align !245
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !772
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bf, %.preheader.i37 ], [ %i.bt, %bb.g ] ; 3 uses
  %i.bo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %7 = trunc nuw nsw i64 %i.bo to i32
  %8 = or disjoint i32 %i.bh, %7
  %9 = sext i32 %8 to i64                         ; 2 uses
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %9
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !116
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %9
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !116
  %i.bs = add i64 %.011.i38, -1
  %i.bt = and i64 %i.bs, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bt, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !1921

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.bu = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.bu, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %i.bv = load i8, ptr %3, align 8, !tbaa !1572, !range !69, !noundef !70
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !1574
  %i.by = xor i8 %i.bv, 1
  %i.bz = zext nneg i8 %i.by to i64
  %i.ca = sub nsw i64 0, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 144 ; 2 uses
  %i.cf = load ptr, ptr %i.cb, align 8, !nonnull !70, !align !245 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.cg = phi i32 [ %i.bu, %.lr.ph ], [ %i.en, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.cg, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.ch = sdiv i32 %.051, 64                      ; 3 uses
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !116
  %i.cl = xor i64 %i.ck, %i.ca                    ; 2 uses
  switch i64 %i.cl, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cm = shl nsw i32 %i.ch, 6
  %i.cn = load ptr, ptr %i.ce, align 8, !tbaa !1494
  %i.co = load ptr, ptr %i.cf, align 8, !tbaa !772
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cp = shl nsw i32 %i.ch, 6                    ; 4 uses
  %i.cq = add i32 %i.cp, 64
  %i.cr = sext i32 %i.cq to i64                   ; 3 uses
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cs = sext i32 %i.cp to i64                   ; 9 uses
  %i.ct = load ptr, ptr %i.ce, align 8, !tbaa !1494 ; 4 uses
  %i.cu = load ptr, ptr %i.cf, align 8, !tbaa !772 ; 4 uses
  %i.cv = or disjoint i64 %i.cs, 1
  %umax67 = tail call i64 @llvm.umax.i64(i64 %i.cv, i64 %i.cr) ; 2 uses
  %i.cw = sub i64 %umax67, %i.cs                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.cw, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.cx = ptrtoaddr ptr %i.cu to i64
  %i.cy = ptrtoaddr ptr %i.ct to i64
  %i.cz = or disjoint i64 %i.cs, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cz, i64 %i.cr)
  %i.da = xor i64 %i.cs, -1
  %i.db = add i64 %umax, %i.da                    ; 2 uses
  %i.dc = trunc i64 %i.db to i32
  %i.dd = add i32 %i.cp, %i.dc
  %i.de = icmp slt i32 %i.dd, %i.cp
  %i.df = icmp ugt i64 %i.db, 4294967295
  %i.dg = or i1 %i.de, %i.df
  %i.dh = sub i64 %i.cx, %i.cy
  %diff.check = icmp ult i64 %i.dh, 128
  %or.cond = select i1 %i.dg, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check68 = icmp ult i64 %i.cw, 16
  %n.mod.vf72 = and i64 %umax67, 1                ; 3 uses
  %n.vec73 = sub i64 %i.cw, %n.mod.vf72           ; 3 uses
  %i.di = add i64 %n.vec73, %i.cs                 ; 2 uses
  br i1 %min.iters.check68, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dj = add i64 %index, %i.cs
  %i.dk = shl i64 %i.dj, 32
  %i.dl = ashr exact i64 %i.dk, 32                ; 2 uses
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.dl ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 96
  %wide.load = load <4 x i64>, ptr %i.dm, align 8, !tbaa !116
  %wide.load69 = load <4 x i64>, ptr %i.dn, align 8, !tbaa !116
  %wide.load70 = load <4 x i64>, ptr %i.do, align 8, !tbaa !116
  %wide.load71 = load <4 x i64>, ptr %i.dp, align 8, !tbaa !116
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.dl ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 96
  store <4 x i64> %wide.load, ptr %i.dq, align 8, !tbaa !116
  store <4 x i64> %wide.load69, ptr %i.dr, align 8, !tbaa !116
  store <4 x i64> %wide.load70, ptr %i.ds, align 8, !tbaa !116
  store <4 x i64> %wide.load71, ptr %i.dt, align 8, !tbaa !116
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.du = icmp eq i64 %index.next, %n.vec73
  br i1 %i.du, label %middle.block, label %vector.body, !llvm.loop !1922

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index74 = phi i64 [ %index.next76, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dv = add i64 %index74, %i.cs
  %i.dw = shl i64 %i.dv, 32
  %i.dx = ashr exact i64 %i.dw, 32                ; 2 uses
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.dx
  %wide.load75 = load <4 x i64>, ptr %i.dy, align 8, !tbaa !116
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.dx
  store <4 x i64> %wide.load75, ptr %i.dz, align 8, !tbaa !116
  %index.next76 = add nuw i64 %index74, 4         ; 2 uses
  %i.ea = icmp eq i64 %index.next76, %n.vec73
  br i1 %i.ea, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1923

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n77 = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n77, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.di, %middle.block ], [ %i.cs, %iter.check ], [ %i.cs, %vector.scevcheck ], [ %i.di, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.ef, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %sext.i = shl i64 %.020.i, 32
  %i.eb = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.eb
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !116
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.eb
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !116
  %i.ef = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.eg = icmp ult i64 %i.ef, %i.cr
  br i1 %i.eg, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !1924

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cl, %.lr.ph.i ], [ %i.em, %bb.j ] ; 3 uses
  %i.eh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %10 = trunc nuw nsw i64 %i.eh to i32
  %11 = or disjoint i32 %i.cm, %10
  %12 = sext i32 %11 to i64                       ; 2 uses
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %12
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !116
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.co, i64 %12
  store i64 %i.ej, ptr %i.ek, align 8, !tbaa !116
  %i.el = add i64 %.01519.i, -1
  %i.em = and i64 %i.el, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.em, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !1925

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.en = add nsw i32 %i.cg, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.en, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1926

bb.k:                                             ; preds = %._crit_edge
  %i.eo = ashr i32 %1, 6
  %i.ep = and i32 %1, 63
  %i.eq = zext nneg i32 %i.ep to i64
  %notmask.i42 = shl nsw i64 -1, %i.eq
  %i.er = xor i64 %notmask.i42, -1
  %i.es = load i8, ptr %2, align 8, !tbaa !1566, !range !69, !noundef !70
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !1570
  %i.ev = sext i32 %i.eo to i64
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.eu, i64 %i.ev
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !116
  %i.ey = xor i8 %i.es, 1
  %i.ez = zext nneg i8 %i.ey to i64
  %i.fa = sub nsw i64 0, %i.ez
  %i.fb = xor i64 %i.ex, %i.fa
  %i.fc = and i64 %i.fb, %i.er                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.fc, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.k
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !1919
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 144
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !1494
  %i.fi = load ptr, ptr %i.fd, align 8, !tbaa !1920, !nonnull !70, !align !245
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !772
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i44
  %.011.i45 = phi i64 [ %i.fc, %.preheader.i44 ], [ %i.fp, %bb.l ] ; 3 uses
  %i.fk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %13 = trunc nuw nsw i64 %i.fk to i32
  %14 = or disjoint i32 %i.d, %13
  %15 = sext i32 %14 to i64                       ; 2 uses
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.fh, i64 %15
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !116
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.fj, i64 %15
  store i64 %i.fm, ptr %i.fn, align 8, !tbaa !116
  %i.fo = add nsw i64 %.011.i45, -1
  %i.fp = and i64 %i.fo, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fp, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !1921

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(272) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %2 = alloca %"class.std::optional.116", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !330  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.d = load i8, ptr %i.c, align 4, !tbaa !262
  %i.e = and i8 %i.d, 2
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread

_ZNK8facebook5velox6Buffer9isMutableEv.exit:      ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.g = load atomic i32, ptr %i.f acquire, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.q, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread

_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread: ; preds = %bb.b, %_ZNK8facebook5velox6Buffer9isMutableEv.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !333
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !445
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 0, ptr %i.n, align 8, !tbaa !358
  call void @_ZN8facebook5velox13AlignedBuffer8allocateINS0_10StringViewEEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %1, i64 noundef %i.k, ptr noundef %i.m, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !330
  %.not10 = icmp eq ptr %i.o, null
  br i1 %.not10, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread
  %i.p = load ptr, ptr %1, align 8, !tbaa !330    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 44
  %i.r = load i8, ptr %i.q, align 4, !tbaa !262
  %i.s = and i8 %i.r, 2
  %.not.i5 = icmp eq i8 %i.s, 0
  br i1 %.not.i5, label %bb.e, label %bb.d, !prof !121

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIhEEPT_vE18veloxCheckFailArgs) #42
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.t = load i32, ptr %i.i, align 8, !tbaa !333
  %i.u = zext i32 %i.t to i64
  %i.v = shl i64 %i.u, 36
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !263
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1304
  %i.aa = ashr exact i64 %i.v, 32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 8 %i.z, i64 %i.aa, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.g:                                             ; preds = %bb.e, %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread
  %i.ac = load ptr, ptr %1, align 8, !tbaa !330   ; 3 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = atomicrmw add ptr %i.ad, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i: ; preds = %bb.h, %bb.g
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !330 ; 7 uses
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !330
  %.not.i2.i = icmp eq ptr %i.af, null
  br i1 %.not.i2.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = atomicrmw sub ptr %i.ag, i32 1 acq_rel, align 4
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %.sink.split.i.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit

.sink.split.i.i.i:                                ; preds = %bb.i
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !45
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.al = load ptr, ptr %i.ak, align 8
  invoke void %i.al(ptr noundef nonnull align 8 dereferenceable(64) %i.af)
          to label %.noexc.i.i unwind label %bb.j, !inline_history !351

.noexc.i.i:                                       ; preds = %.sink.split.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !352
  %.not.i.i.i = icmp eq ptr %i.an, null
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !45
  %..i.i.i = select i1 %.not.i.i.i, i64 8, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %..i.i.i
  %i.aq = load ptr, ptr %i.ap, align 8
  invoke void %i.aq(ptr noundef nonnull align 8 dereferenceable(64) %i.af)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit unwind label %bb.j, !inline_history !351

bb.j:                                             ; preds = %.noexc.i.i, %.sink.split.i.i.i
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #41
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit: ; preds = %.noexc.i.i, %bb.i, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !330 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 44
  %i.av = load i8, ptr %i.au, align 4, !tbaa !262
  %i.aw = and i8 %i.av, 2
  %.not.i6 = icmp eq i8 %i.aw, 0
  br i1 %.not.i6, label %bb.l, label %bb.k, !prof !121

bb.k:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableINS0_10StringViewEEEPT_vE18veloxCheckFailArgs) #42
          to label %.noexc7 unwind label %bb.o

.noexc7:                                          ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !263
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !1304
  %i.ba = load ptr, ptr %1, align 8, !tbaa !330   ; 7 uses
  %.not.i8 = icmp eq ptr %i.ba, null
  br i1 %.not.i8, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bc = atomicrmw sub ptr %i.bb, i32 1 acq_rel, align 4
  %i.bd = icmp eq i32 %i.bc, 1
  br i1 %i.bd, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.m
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !45
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  %i.bg = load ptr, ptr %i.bf, align 8
  invoke void %i.bg(ptr noundef nonnull align 8 dereferenceable(64) %i.ba)
          to label %.noexc.i unwind label %bb.n, !inline_history !351

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !352
  %.not.i.i9 = icmp eq ptr %i.bi, null
  %i.bj = load ptr, ptr %i.ba, align 8, !tbaa !45
  %..i.i = select i1 %.not.i.i9, i64 8, i64 48
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %..i.i
  %i.bl = load ptr, ptr %i.bk, align 8
  invoke void %i.bl(ptr noundef nonnull align 8 dereferenceable(64) %i.ba)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.n, !inline_history !351

bb.n:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  call void @__clang_call_terminate(ptr %i.bn) #41
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.l, %bb.m, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %bb.q

bb.o:                                             ; preds = %bb.k
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.f
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.o ], [ %i.ab, %bb.f ]
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  resume { ptr, i32 } %.pn

bb.q:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %_ZNK8facebook5velox6Buffer9isMutableEv.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 216
end_hunk_4
begin_hunk_5_@_ZN8facebook5velox10FlatVectorINS0_10StringViewEEC2EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSG_OSt6vectorISG_SaISG_EERKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESQ_SP_IbESQ_SQ_:bb.a
  %i.dz = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.dy)
  %i.ea = trunc nuw nsw i64 %i.dz to i32
  %i.eb = add nuw nsw i32 %i.dv, %i.ea            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 64
  %.not33.i.i.i.not = icmp samesign ult i64 %indvars.iv, %i.ck
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 64
  br i1 %.not33.i.i.i.not, label %.lr.ph.i.i.i37, label %._crit_edge.i.i.i, !llvm.loop !2011

.sink.split.i.i.i:                                ; preds = %._crit_edge.i.i.i
  %i.ec = lshr i32 %i.ci, 6
  %i.ed = and i32 %i.ci, 63
  %i.ee = zext nneg i32 %i.ed to i64
  %notmask.i36.i.i.i = shl nsw i64 -1, %i.ee
  %i.ef = xor i64 %notmask.i36.i.i.i, -1
  %i.eg = zext nneg i32 %i.ec to i64
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.eg
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !116
  %i.ej = and i64 %i.ei, %i.ef
  %i.ek = call range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.ej)
  %i.el = trunc nuw nsw i64 %i.ek to i32
  %i.em = add nsw i32 %.1.i.i, %i.el
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split.i.i.i, %._crit_edge.i.i.i
  %.3.i.i = phi i32 [ %i.em, %.sink.split.i.i.i ], [ %.1.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %.not26 = icmp eq i32 %.3.i.i, 0
  br i1 %.not26, label %.thread, label %bb.ac, !prof !1499

bb.ac:                                            ; preds = %bb.ab
  %i.en = sext i32 %.3.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27, !noalias !2012
  store i32 0, ptr %14, align 16, !tbaa !32, !alias.scope !2015, !noalias !2012
  %i.eo = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 %i.en, ptr %i.eo, align 16, !tbaa !32, !noalias !2012
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr nonnull @.str.164, i64 77, i64 65, ptr nonnull %14)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27, !noalias !2012
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorINS0_10StringViewEEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSG_OSt6vectorISG_SaISG_EERKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESQ_SP_IbESQ_SQ_E18veloxCheckFailArgs_1, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr nonnull @.str.164) #42
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  unreachable

bb.af:                                            ; preds = %bb.ac
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ag:                                            ; preds = %bb.ad
  %i.eq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.er = load ptr, ptr %18, align 8, !tbaa !49   ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.et = icmp eq ptr %i.er, %i.es
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ag
  %i.eu = load i64, ptr %i.es, align 8, !tbaa !32
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.ev) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.af
  %.pn27 = phi { ptr, i32 } [ %i.eq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ep, %bb.af ], [ %i.eq, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  br label %bb.ap

.critedge:                                        ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !333
  %i.ey = sext i32 %i.ex to i64
  %i.ez = shl nsw i64 %i.ey, 4                    ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !256 ; 2 uses
  %.not23 = icmp ult i64 %i.fb, %i.ez
  br i1 %.not23, label %bb.ah, label %bb.am, !prof !48

bb.ah:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27, !noalias !2018
  store i64 %i.fb, ptr %13, align 16, !tbaa !32, !alias.scope !2021, !noalias !2018
  %i.fc = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 %i.ez, ptr %i.fc, align 16, !tbaa !32, !alias.scope !2021, !noalias !2018
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr nonnull @.str.8, i64 11, i64 68, ptr nonnull %13)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27, !noalias !2018
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorINS0_10StringViewEEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSG_OSt6vectorISG_SaISG_EERKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESQ_SP_IbESQ_SQ_E18veloxCheckFailArgs_4, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr nonnull @.str.8) #42
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %bb.ai
  unreachable

bb.ak:                                            ; preds = %bb.ah
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.al:                                            ; preds = %bb.ai
  %i.fe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ff = load ptr, ptr %19, align 8, !tbaa !49   ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.fh = icmp eq ptr %i.ff, %i.fg
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.al
  %i.fi = load i64, ptr %i.fg, align 8, !tbaa !32
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fj) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.ak
  %.pn = phi { ptr, i32 } [ %i.fe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %i.fd, %bb.ak ], [ %i.fe, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  br label %bb.ap

bb.am:                                            ; preds = %.critedge
  %i.fk = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !261
  %i.fm = icmp ult i64 %i.fl, %i.ez
  br i1 %i.fm, label %bb.an, label %.thread

bb.an:                                            ; preds = %bb.am
  %i.fn = load ptr, ptr %i.bz, align 8, !tbaa !45
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fp = load ptr, ptr %i.fo, align 8
  invoke void %i.fp(ptr noundef nonnull align 8 dereferenceable(64) %i.bz, i64 noundef %i.ez)
          to label %.thread unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.thread:                                          ; preds = %bb.z, %bb.am, %bb.an, %bb.ab
  ret void

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.y, %bb.x
  %.pn30 = phi { ptr, i32 } [ %i.ce, %bb.y ], [ %i.cd, %bb.x ], [ %i.fq, %bb.ao ], [ %.pn27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ]
  call void @_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.aw) #27
  call void @_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.av) #27
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #27
  call void @_ZN8facebook5velox12SimpleVectorINS0_10StringViewEED2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) #27
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.w
  %.pn30.pn = phi { ptr, i32 } [ %.pn30, %bb.ap ], [ %i.cc, %bb.w ]
  resume { ptr, i32 } %.pn30.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_EUlimE_ZNS3_ISA_EEvSC_iibSD_EUliE_EEviiSD_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.544) align 8 %2, ptr noundef byval(%class.anon.545) align 8 %3) local_unnamed_addr #11 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !1344, !range !69, !noundef !70
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1348
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !116
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !2024
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 216
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !2025, !nonnull !70, !align !245
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.am, %bb.d ] ; 3 uses
  %i.ag = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %4 = trunc nuw nsw i64 %i.ag to i32
  %5 = or disjoint i32 %i.d, %4
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !1304
  %6 = sext i32 %5 to i64                         ; 2 uses
  %i.ai = getelementptr inbounds [16 x i8], ptr %i.ah, i64 %6
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !500
  %i.ak = getelementptr inbounds [16 x i8], ptr %i.aj, i64 %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false), !tbaa.struct !135
  %i.al = add nsw i64 %.011.i, -1
  %i.am = and i64 %i.al, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.am, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !2026

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = sdiv i32 %0, 64                         ; 2 uses
  %i.ao = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.ap = zext nneg i32 %i.ao to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.ap
  %i.aq = xor i64 %notmask.i.i35, -1
  %i.ar = sub nsw i32 64, %i.ao
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = shl i64 %i.aq, %i.as
  %i.au = load i8, ptr %2, align 8, !tbaa !1344, !range !69, !noundef !70
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1348
  %i.ax = sext i32 %i.an to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !116
  %i.ba = xor i8 %i.au, 1
  %i.bb = zext nneg i8 %i.ba to i64
  %i.bc = sub nsw i64 0, %i.bb
  %i.bd = xor i64 %i.az, %i.bc
  %i.be = and i64 %i.bd, %i.at                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.be, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bg = shl nsw i32 %i.an, 6
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !2024
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 216
  %i.bk = load ptr, ptr %i.bf, align 8, !tbaa !2025, !nonnull !70, !align !245
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.be, %.preheader.i37 ], [ %i.br, %bb.g ] ; 3 uses
  %i.bl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %7 = trunc nuw nsw i64 %i.bl to i32
  %8 = or disjoint i32 %i.bg, %7
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !1304
  %9 = sext i32 %8 to i64                         ; 2 uses
  %i.bn = getelementptr inbounds [16 x i8], ptr %i.bm, i64 %9
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !500
  %i.bp = getelementptr inbounds [16 x i8], ptr %i.bo, i64 %9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i64 16, i1 false), !tbaa.struct !135
  %i.bq = add i64 %.011.i38, -1
  %i.br = and i64 %i.bq, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.br, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !2026

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.bs = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.bs, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %i.bt = load i8, ptr %3, align 8, !tbaa !1350, !range !69, !noundef !70
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !1352
  %i.bw = xor i8 %i.bt, 1
  %i.bx = zext nneg i8 %i.bw to i64
  %i.by = sub nsw i64 0, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 216 ; 2 uses
  %i.cd = load ptr, ptr %i.bz, align 8, !nonnull !70, !align !245 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ce = phi i32 [ %i.bs, %.lr.ph ], [ %i.dd, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.ce, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cf = sdiv i32 %.051, 64                      ; 3 uses
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !116
  %i.cj = xor i64 %i.ci, %i.by                    ; 2 uses
  switch i64 %i.cj, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.ck = shl nsw i32 %i.cf, 6
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.cl = shl nsw i32 %i.cf, 6                    ; 2 uses
  %i.cm = add i32 %i.cl, 64
  %i.cn = sext i32 %i.cm to i64
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.i
  %i.co = sext i32 %i.cl to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph21.i
  %.020.i = phi i64 [ %i.co, %.lr.ph21.i ], [ %i.cu, %bb.j ] ; 2 uses
  %i.cp = load ptr, ptr %i.cc, align 8, !tbaa !1304
  %sext.i = shl i64 %.020.i, 32
  %i.cq = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.cr = getelementptr inbounds [16 x i8], ptr %i.cp, i64 %i.cq
  %i.cs = load ptr, ptr %i.cd, align 8, !tbaa !500
  %i.ct = getelementptr inbounds [16 x i8], ptr %i.cs, i64 %i.cq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, ptr noundef nonnull align 8 dereferenceable(16) %i.cr, i64 16, i1 false), !tbaa.struct !135
  %i.cu = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.cn
  br i1 %i.cv, label %bb.j, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !2027

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cj, %.lr.ph.i ], [ %i.dc, %bb.k ] ; 3 uses
  %i.cw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %10 = trunc nuw nsw i64 %i.cw to i32
  %11 = or disjoint i32 %i.ck, %10
  %i.cx = load ptr, ptr %i.cc, align 8, !tbaa !1304
  %12 = sext i32 %11 to i64                       ; 2 uses
  %i.cy = getelementptr inbounds [16 x i8], ptr %i.cx, i64 %12
  %i.cz = load ptr, ptr %i.cd, align 8, !tbaa !500
  %i.da = getelementptr inbounds [16 x i8], ptr %i.cz, i64 %12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.da, ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i64 16, i1 false), !tbaa.struct !135
  %i.db = add i64 %.01519.i, -1
  %i.dc = and i64 %i.db, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.dc, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.k, !llvm.loop !2028

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %bb.j, %bb.k, %bb.h, %bb.i
  %i.dd = add nsw i32 %i.ce, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dd, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !2029

bb.l:                                             ; preds = %._crit_edge
  %i.de = ashr i32 %1, 6
  %i.df = and i32 %1, 63
  %i.dg = zext nneg i32 %i.df to i64
  %notmask.i42 = shl nsw i64 -1, %i.dg
  %i.dh = xor i64 %notmask.i42, -1
  %i.di = load i8, ptr %2, align 8, !tbaa !1344, !range !69, !noundef !70
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !1348
  %i.dl = sext i32 %i.de to i64
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !116
  %i.do = xor i8 %i.di, 1
  %i.dp = zext nneg i8 %i.do to i64
  %i.dq = sub nsw i64 0, %i.dp
  %i.dr = xor i64 %i.dn, %i.dq
  %i.ds = and i64 %i.dr, %i.dh                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.ds, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.l
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !2024
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 216
  %i.dx = load ptr, ptr %i.dt, align 8, !tbaa !2025, !nonnull !70, !align !245
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader.i44
  %.011.i45 = phi i64 [ %i.ds, %.preheader.i44 ], [ %i.ee, %bb.m ] ; 3 uses
  %i.dy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %13 = trunc nuw nsw i64 %i.dy to i32
  %14 = or disjoint i32 %i.d, %13
  %i.dz = load ptr, ptr %i.dw, align 8, !tbaa !1304
  %15 = sext i32 %14 to i64                       ; 2 uses
  %i.ea = getelementptr inbounds [16 x i8], ptr %i.dz, i64 %15
  %i.eb = load ptr, ptr %i.dx, align 8, !tbaa !500
  %i.ec = getelementptr inbounds [16 x i8], ptr %i.eb, i64 %15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ec, ptr noundef nonnull align 8 dereferenceable(16) %i.ea, i64 16, i1 false), !tbaa.struct !135
  %i.ed = add nsw i64 %.011.i45, -1
  %i.ee = and i64 %i.ed, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.ee, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !2026

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.m, %bb.d, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt10_ConstructIN8facebook5velox10FlatVectorINS1_10StringViewEEEJPNS1_6memory10MemoryPoolESt10shared_ptrIKNS1_10ScalarTypeILNS1_8TypeKindE7EEEEDniRKN5boost13intrusive_ptrINS1_6BufferEEESt6vectorISH_SaISH_EEEEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::shared_ptr.102", align 16 ; 7 uses
  %8 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %9 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %10 = alloca %"struct.facebook::velox::SimpleVectorStats", align 8 ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !317
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load <2 x ptr>, ptr %2, align 8, !tbaa !40
  store ptr null, ptr %i.c, align 8, !tbaa !37
  store <2 x ptr> %i.d, ptr %7, align 16, !tbaa !40
  store ptr null, ptr %2, align 8, !tbaa !186
  store ptr null, ptr %8, align 8, !tbaa !330
  %i.e = load i32, ptr %4, align 4, !tbaa !3
  %i.f = load ptr, ptr %5, align 8, !tbaa !330    ; 3 uses
  store ptr %i.f, ptr %9, align 8, !tbaa !330
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = atomicrmw add ptr %i.g, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i8 0, ptr %i.i, align 8, !tbaa !358
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i8 0, ptr %i.j, align 8, !tbaa !358
  invoke void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEEC2EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSG_OSt6vectorISG_SaISG_EERKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESQ_SP_IbESQ_SQ_(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %8, i32 noundef %i.e, ptr noundef nonnull %9, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(48) %10, i64 0, i64 0, i16 0, i64 0, i64 0)
          to label %bb.c unwind label %bb.n

bb.c:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %i.k = load ptr, ptr %9, align 8, !tbaa !330    ; 7 uses
  %.not.i7 = icmp eq ptr %i.k, null
  br i1 %.not.i7, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = atomicrmw sub ptr %i.l, i32 1 acq_rel, align 4
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.d
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !45
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.q = load ptr, ptr %i.p, align 8
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(64) %i.k)
          to label %.noexc.i unwind label %bb.e, !inline_history !351

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !352
  %.not.i.i = icmp eq ptr %i.s, null
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !45
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %..i.i
  %i.v = load ptr, ptr %i.u, align 8
  invoke void %i.v(ptr noundef nonnull align 8 dereferenceable(64) %i.k)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.e, !inline_history !351

bb.e:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #41
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.c, %bb.d, %.noexc.i
  %i.y = load ptr, ptr %8, align 8, !tbaa !330    ; 7 uses
  %.not.i8 = icmp eq ptr %i.y, null
  br i1 %.not.i8, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13, label %bb.f

bb.f:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.aa = atomicrmw sub ptr %i.z, i32 1 acq_rel, align 4
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %.sink.split.i.i9, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13

.sink.split.i.i9:                                 ; preds = %bb.f
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !45
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8
  invoke void %i.ae(ptr noundef nonnull align 8 dereferenceable(64) %i.y)
          to label %.noexc.i10 unwind label %bb.g, !inline_history !351

.noexc.i10:                                       ; preds = %.sink.split.i.i9
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !352
  %.not.i.i11 = icmp eq ptr %i.ag, null
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !45
  %..i.i12 = select i1 %.not.i.i11, i64 8, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %..i.i12
  %i.aj = load ptr, ptr %i.ai, align 8
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(64) %i.y)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13 unwind label %bb.g, !inline_history !351

bb.g:                                             ; preds = %.noexc.i10, %.sink.split.i.i9
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #41
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.f, %.noexc.i10
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !37  ; 8 uses
  %.not.i.i14 = icmp eq ptr %i.am, null
  br i1 %.not.i.i14, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 4 uses
  %i.ao = load atomic i64, ptr %i.an acquire, align 8 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 4294967297
  %i.aq = trunc i64 %i.ao to i32                  ; 2 uses
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.an, align 8, !tbaa !42
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 0, ptr %i.ar, align 4, !tbaa !44
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !45
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #27, !inline_history !226
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !45
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #27, !inline_history !226
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ay = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i = icmp eq i8 %i.ay, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = add nsw i32 %i.aq, -1
  store i32 %i.az, ptr %i.an, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ba = atomicrmw volatile add ptr %i.an, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.aq, %bb.k ], [ %i.ba, %bb.l ]
  %i.bb = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bb, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !48

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #27
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  ret void

bb.n:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #27
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #27
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  resume { ptr, i32 } %i.bc
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt10_ConstructIN8facebook5velox10FlatVectorINS1_10StringViewEEEJPNS1_6memory10MemoryPoolESt10shared_ptrIKNS1_10ScalarTypeILNS1_8TypeKindE7EEEEDniN5boost13intrusive_ptrINS1_6BufferEEESt6vectorISH_SaISH_EEEEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::shared_ptr.102", align 16 ; 7 uses
  %8 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %9 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %10 = alloca %"struct.facebook::velox::SimpleVectorStats", align 8 ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !317
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load <2 x ptr>, ptr %2, align 8, !tbaa !40
  store ptr null, ptr %i.c, align 8, !tbaa !37
  store <2 x ptr> %i.d, ptr %7, align 16, !tbaa !40
  store ptr null, ptr %2, align 8, !tbaa !186
  store ptr null, ptr %8, align 8, !tbaa !330
  %i.e = load i32, ptr %4, align 4, !tbaa !3
end_hunk_5
