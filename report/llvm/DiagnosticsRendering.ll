Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DiagnosticsRendering?download=true
inline.NumInlined: 1174
inline.NumDeleted: 549
begin_hunk_0_@"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN12lldb_private16DiagnosticDetailESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIZZNS2_23RenderDiagnosticDetailsERNS2_6StreamESt8optionalItEbN4llvm8ArrayRefIS3_EEbENK3$_0clERS7_EUlRT_RT0_E_EEEvSK_SK_SM_T1_":bb.a
  %i.ob = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i, i64 120 ; 5 uses
  %i.oc = icmp ne ptr %.1.i, %i.jl
  %i.od = icmp ne ptr %.117.i, %i.jm
  %i.oe = select i1 %i.oc, i1 %i.od, i1 false
  br i1 %i.oe, label %bb.bc, label %._crit_edge.i, !llvm.loop !4

._crit_edge.i:                                    ; preds = %bb.cd
  %i.of = ptrtoint ptr %i.jl to i64
  %i.og = ptrtoint ptr %.1.i to i64
  %i.oh = sub i64 %i.of, %i.og                    ; 2 uses
  %i.oi = icmp sgt i64 %i.oh, 0
  br i1 %i.oi, label %.lr.ph.preheader.i.i.i.i.i.i31, label %_ZSt4moveIPN12lldb_private16DiagnosticDetailEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i

.lr.ph.preheader.i.i.i.i.i.i31:                   ; preds = %._crit_edge.i
  %i.oj = udiv exact i64 %i.oh, 120
  br label %.lr.ph.i.i.i.i.i.i32

.lr.ph.i.i.i.i.i.i32:                             ; preds = %_ZN12lldb_private16DiagnosticDetailaSEOS0_.exit139, %.lr.ph.preheader.i.i.i.i.i.i31
  %.012.i.i.i.i.i.i33 = phi i64 [ %i.qo, %_ZN12lldb_private16DiagnosticDetailaSEOS0_.exit139 ], [ %i.oj, %.lr.ph.preheader.i.i.i.i.i.i31 ] ; 2 uses
  %.0811.i.i.i.i.i.i34 = phi ptr [ %i.qn, %_ZN12lldb_private16DiagnosticDetailaSEOS0_.exit139 ], [ %i.ob, %.lr.ph.preheader.i.i.i.i.i.i31 ] ; 14 uses
  %.0910.i.i.i.i.i.i35 = phi ptr [ %i.qm, %_ZN12lldb_private16DiagnosticDetailaSEOS0_.exit139 ], [ %.1.i, %.lr.ph.preheader.i.i.i.i.i.i31 ] ; 16 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.0811.i.i.i.i.i.i34, ptr noundef nonnull align 8 dereferenceable(120) %.0910.i.i.i.i.i.i35, i64 52, i1 false)
  %i.ok = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i34, i64 56 ; 4 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i35, i64 56 ; 4 uses
  %i.om = load ptr, ptr %i.ok, align 8, !tbaa !54 ; 6 uses
  %i.on = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i34, i64 72 ; 4 uses
  %i.oo = icmp eq ptr %i.om, %i.on
  %i.op = load ptr, ptr %i.ol, align 8, !tbaa !54 ; 6 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i35, i64 72 ; 6 uses
  %i.or = icmp eq ptr %i.op, %i.oq                ; 2 uses
  br i1 %i.oo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137: ; preds = %.lr.ph.i.i.i.i.i.i32
  br i1 %i.or, label %bb.ce, label %.thread.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i122: ; preds = %.lr.ph.i.i.i.i.i.i32
  br i1 %i.or, label %bb.ce, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i123

bb.ce:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i122, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137
  %i.os = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i35, i64 64 ; 2 uses
  %i.ot = load i64, ptr %i.os, align 8, !tbaa !55 ; 3 uses
  %i.ou = icmp ult i64 %i.ot, 16
  call void @llvm.assume(i1 %i.ou)
  %.not21.i.i134 = icmp eq ptr %.0910.i.i.i.i.i.i35, %.0811.i.i.i.i.i.i34
  br i1 %.not21.i.i134, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i125, label %bb.cf, !prof !44

bb.cf:                                            ; preds = %bb.ce
  switch i64 %i.ot, label %bb.ch [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i135
    i64 1, label %bb.cg
  ]

bb.cg:                                            ; preds = %bb.cf
  %i.ov = load i8, ptr %i.op, align 1, !tbaa !42
  store i8 %i.ov, ptr %i.om, align 1, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i135

bb.ch:                                            ; preds = %bb.cf
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.om, ptr align 1 %i.op, i64 %i.ot, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i135: ; preds = %bb.ch, %bb.cg, %bb.cf
  %i.ow = load i64, ptr %i.os, align 8, !tbaa !55 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i34, i64 64
  store i64 %i.ow, ptr %i.ox, align 8, !tbaa !55
  %i.oy = load ptr, ptr %i.ok, align 8, !tbaa !54
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 %i.ow
  store i8 0, ptr %i.oz, align 1, !tbaa !42
  %.pre.i.i136 = load ptr, ptr %i.ol, align 8, !tbaa !54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i125

.thread.i.i138:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137
  %i.pa = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i34, i64 64
  store ptr %i.op, ptr %i.ok, align 8, !tbaa !54
  %i.pb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i35, i64 64
  %i.pc = load i64, ptr %i.pb, align 8, !tbaa !55
  store i64 %i.pc, ptr %i.pa, align 8, !tbaa !55
  %i.pd = load i64, ptr %i.oq, align 8, !tbaa !42
  store i64 %i.pd, ptr %i.on, align 8, !tbaa !42
  br label %bb.cj

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i123: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i122
  %i.pe = load i64, ptr %i.on, align 8, !tbaa !42
  store ptr %i.op, ptr %i.ok, align 8, !tbaa !54
  %i.pf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i35, i64 64
  %i.pg = load i64, ptr %i.pf, align 8, !tbaa !55
  %i.ph = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i34, i64 64
  store i64 %i.pg, ptr %i.ph, align 8, !tbaa !55
  %i.pi = load i64, ptr %i.oq, align 8, !tbaa !42
  store i64 %i.pi, ptr %i.on, align 8, !tbaa !42
  %.not.i.i124 = icmp eq ptr %i.om, null
  br i1 %.not.i.i124, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i123
  store ptr %i.om, ptr %i.ol, align 8, !tbaa !54
  store i64 %i.pe, ptr %i.oq, align 8, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i125

bb.cj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i123, %.thread.i.i138
  store ptr %i.oq, ptr %i.ol, align 8, !tbaa !54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i125: ; preds = %bb.cj, %bb.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i135, %bb.ce
  %i.pj = phi ptr [ %i.om, %bb.ci ], [ %i.oq, %bb.cj ], [ %i.op, %bb.ce ], [ %.pre.i.i136, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i135 ]
  %i.pk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i35, i64 64
  store i64 0, ptr %i.pk, align 8, !tbaa !55
  store i8 0, ptr %i.pj, align 1, !tbaa !42
  %i.pl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i34, i64 88 ; 4 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i35, i64 88 ; 4 uses
  %i.pn = load ptr, ptr %i.pl, align 8, !tbaa !54 ; 6 uses
  %i.po = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i34, i64 104 ; 4 uses
  %i.pp = icmp eq ptr %i.pn, %i.po
  %i.pq = load ptr, ptr %i.pm, align 8, !tbaa !54 ; 6 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i35, i64 104 ; 6 uses
  %i.ps = icmp eq ptr %i.pq, %i.pr                ; 2 uses
  br i1 %i.pp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i10.i132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i4.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i10.i132: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i125
  br i1 %i.ps, label %bb.ck, label %.thread.i11.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i4.i126: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i125
  br i1 %i.ps, label %bb.ck, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i5.i127

bb.ck:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i4.i126, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i10.i132
  %i.pt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i35, i64 96 ; 2 uses
  %i.pu = load i64, ptr %i.pt, align 8, !tbaa !55 ; 3 uses
  %i.pv = icmp ult i64 %i.pu, 16
  call void @llvm.assume(i1 %i.pv)
  %.not21.i7.i129 = icmp eq ptr %.0910.i.i.i.i.i.i35, %.0811.i.i.i.i.i.i34
  br i1 %.not21.i7.i129, label %_ZN12lldb_private16DiagnosticDetailaSEOS0_.exit139, label %bb.cl, !prof !44

bb.cl:                                            ; preds = %bb.ck
  switch i64 %i.pu, label %bb.cn [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i8.i130
    i64 1, label %bb.cm
  ]

bb.cm:                                            ; preds = %bb.cl
  %i.pw = load i8, ptr %i.pq, align 1, !tbaa !42
  store i8 %i.pw, ptr %i.pn, align 1, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i8.i130

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pn, ptr align 1 %i.pq, i64 %i.pu, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i8.i130

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i8.i130: ; preds = %bb.cn, %bb.cm, %bb.cl
  %i.px = load i64, ptr %i.pt, align 8, !tbaa !55 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i34, i64 96
  store i64 %i.px, ptr %i.py, align 8, !tbaa !55
  %i.pz = load ptr, ptr %i.pl, align 8, !tbaa !54
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 %i.px
  store i8 0, ptr %i.qa, align 1, !tbaa !42
  %.pre.i9.i131 = load ptr, ptr %i.pm, align 8, !tbaa !54
  br label %_ZN12lldb_private16DiagnosticDetailaSEOS0_.exit139

.thread.i11.i133:                                 ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i10.i132
  %i.qb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i34, i64 96
  store ptr %i.pq, ptr %i.pl, align 8, !tbaa !54
  %i.qc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i35, i64 96
  %i.qd = load i64, ptr %i.qc, align 8, !tbaa !55
  store i64 %i.qd, ptr %i.qb, align 8, !tbaa !55
  %i.qe = load i64, ptr %i.pr, align 8, !tbaa !42
  store i64 %i.qe, ptr %i.po, align 8, !tbaa !42
  br label %bb.cp

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i5.i127: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i4.i126
  %i.qf = load i64, ptr %i.po, align 8, !tbaa !42
  store ptr %i.pq, ptr %i.pl, align 8, !tbaa !54
  %i.qg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i35, i64 96
  %i.qh = load i64, ptr %i.qg, align 8, !tbaa !55
  %i.qi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i34, i64 96
  store i64 %i.qh, ptr %i.qi, align 8, !tbaa !55
  %i.qj = load i64, ptr %i.pr, align 8, !tbaa !42
  store i64 %i.qj, ptr %i.po, align 8, !tbaa !42
  %.not.i6.i128 = icmp eq ptr %i.pn, null
  br i1 %.not.i6.i128, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i5.i127
  store ptr %i.pn, ptr %i.pm, align 8, !tbaa !54
  store i64 %i.qf, ptr %i.pr, align 8, !tbaa !42
  br label %_ZN12lldb_private16DiagnosticDetailaSEOS0_.exit139

bb.cp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i5.i127, %.thread.i11.i133
  store ptr %i.pr, ptr %i.pm, align 8, !tbaa !54
  br label %_ZN12lldb_private16DiagnosticDetailaSEOS0_.exit139

_ZN12lldb_private16DiagnosticDetailaSEOS0_.exit139: ; preds = %bb.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i8.i130, %bb.co, %bb.cp
  %i.qk = phi ptr [ %i.pn, %bb.co ], [ %i.pr, %bb.cp ], [ %i.pq, %bb.ck ], [ %.pre.i9.i131, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i8.i130 ]
  %i.ql = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i35, i64 96
  store i64 0, ptr %i.ql, align 8, !tbaa !55
  store i8 0, ptr %i.qk, align 1, !tbaa !42
  %i.qm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i35, i64 120
  %i.qn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i34, i64 120 ; 2 uses
  %i.qo = add nsw i64 %.012.i.i.i.i.i.i33, -1
  %i.qp = icmp samesign ugt i64 %.012.i.i.i.i.i.i33, 1
  br i1 %i.qp, label %.lr.ph.i.i.i.i.i.i32, label %_ZSt4moveIPN12lldb_private16DiagnosticDetailEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i, !llvm.loop !3

_ZSt4moveIPN12lldb_private16DiagnosticDetailEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i: ; preds = %_ZN12lldb_private16DiagnosticDetailaSEOS0_.exit139, %._crit_edge.i
  %.08.lcssa.i.i.i.i.i.i30 = phi ptr [ %i.ob, %._crit_edge.i ], [ %i.qn, %_ZN12lldb_private16DiagnosticDetailaSEOS0_.exit139 ]
  %i.qq = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30 to i64 ; 2 uses
  %i.qr = ptrtoint ptr %i.ob to i64
  %i.qs = sub i64 %i.qq, %i.qr
  %i.qt = getelementptr inbounds i8, ptr %i.ob, i64 %i.qs ; 3 uses
  %i.qu = ptrtoint ptr %i.jm to i64               ; 2 uses
  %i.qv = ptrtoint ptr %.117.i to i64
  %i.qw = sub i64 %i.qu, %i.qv                    ; 2 uses
  %i.qx = icmp sgt i64 %i.qw, 0
  br i1 %i.qx, label %.lr.ph.preheader.i.i.i.i.i19.i, label %"_ZSt12__move_mergeIPN12lldb_private16DiagnosticDetailEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZZNS0_23RenderDiagnosticDetailsERNS0_6StreamESt8optionalItEbN4llvm8ArrayRefIS1_EEbENK3$_0clERS7_EUlRT_RT0_E_EEESM_SK_SK_SK_SK_SM_T1_.exit"

.lr.ph.preheader.i.i.i.i.i19.i:                   ; preds = %_ZSt4moveIPN12lldb_private16DiagnosticDetailEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i
  %i.qy = udiv exact i64 %i.qw, 120
  br label %.lr.ph.i.i.i.i.i20.i

.lr.ph.i.i.i.i.i20.i:                             ; preds = %_ZN12lldb_private16DiagnosticDetailaSEOS0_.exit121, %.lr.ph.preheader.i.i.i.i.i19.i
  %.012.i.i.i.i.i21.i = phi i64 [ %i.td, %_ZN12lldb_private16DiagnosticDetailaSEOS0_.exit121 ], [ %i.qy, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 2 uses
  %.0811.i.i.i.i.i22.i = phi ptr [ %i.tc, %_ZN12lldb_private16DiagnosticDetailaSEOS0_.exit121 ], [ %i.qt, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 14 uses
  %.0910.i.i.i.i.i23.i = phi ptr [ %i.tb, %_ZN12lldb_private16DiagnosticDetailaSEOS0_.exit121 ], [ %.117.i, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 16 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.0811.i.i.i.i.i22.i, ptr noundef nonnull align 8 dereferenceable(120) %.0910.i.i.i.i.i23.i, i64 52, i1 false)
  %i.qz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 56 ; 4 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 56 ; 4 uses
  %i.rb = load ptr, ptr %i.qz, align 8, !tbaa !54 ; 6 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 72 ; 4 uses
  %i.rd = icmp eq ptr %i.rb, %i.rc
  %i.re = load ptr, ptr %i.ra, align 8, !tbaa !54 ; 6 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 72 ; 6 uses
  %i.rg = icmp eq ptr %i.re, %i.rf                ; 2 uses
  br i1 %i.rd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119: ; preds = %.lr.ph.i.i.i.i.i20.i
  br i1 %i.rg, label %bb.cq, label %.thread.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i104: ; preds = %.lr.ph.i.i.i.i.i20.i
  br i1 %i.rg, label %bb.cq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i105

bb.cq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119
  %i.rh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 64 ; 2 uses
  %i.ri = load i64, ptr %i.rh, align 8, !tbaa !55 ; 3 uses
  %i.rj = icmp ult i64 %i.ri, 16
  call void @llvm.assume(i1 %i.rj)
  %.not21.i.i116 = icmp eq ptr %.0910.i.i.i.i.i23.i, %.0811.i.i.i.i.i22.i
  br i1 %.not21.i.i116, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i107, label %bb.cr, !prof !44

bb.cr:                                            ; preds = %bb.cq
  switch i64 %i.ri, label %bb.ct [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i117
    i64 1, label %bb.cs
  ]

bb.cs:                                            ; preds = %bb.cr
  %i.rk = load i8, ptr %i.re, align 1, !tbaa !42
  store i8 %i.rk, ptr %i.rb, align 1, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i117

bb.ct:                                            ; preds = %bb.cr
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rb, ptr align 1 %i.re, i64 %i.ri, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i117: ; preds = %bb.ct, %bb.cs, %bb.cr
  %i.rl = load i64, ptr %i.rh, align 8, !tbaa !55 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 64
  store i64 %i.rl, ptr %i.rm, align 8, !tbaa !55
  %i.rn = load ptr, ptr %i.qz, align 8, !tbaa !54
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 %i.rl
  store i8 0, ptr %i.ro, align 1, !tbaa !42
  %.pre.i.i118 = load ptr, ptr %i.ra, align 8, !tbaa !54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i107

.thread.i.i120:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119
  %i.rp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 64
  store ptr %i.re, ptr %i.qz, align 8, !tbaa !54
  %i.rq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 64
  %i.rr = load i64, ptr %i.rq, align 8, !tbaa !55
  store i64 %i.rr, ptr %i.rp, align 8, !tbaa !55
  %i.rs = load i64, ptr %i.rf, align 8, !tbaa !42
  store i64 %i.rs, ptr %i.rc, align 8, !tbaa !42
  br label %bb.cv

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i105: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i104
  %i.rt = load i64, ptr %i.rc, align 8, !tbaa !42
  store ptr %i.re, ptr %i.qz, align 8, !tbaa !54
  %i.ru = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 64
  %i.rv = load i64, ptr %i.ru, align 8, !tbaa !55
  %i.rw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 64
  store i64 %i.rv, ptr %i.rw, align 8, !tbaa !55
  %i.rx = load i64, ptr %i.rf, align 8, !tbaa !42
  store i64 %i.rx, ptr %i.rc, align 8, !tbaa !42
  %.not.i.i106 = icmp eq ptr %i.rb, null
  br i1 %.not.i.i106, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i105
  store ptr %i.rb, ptr %i.ra, align 8, !tbaa !54
  store i64 %i.rt, ptr %i.rf, align 8, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i107

bb.cv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i105, %.thread.i.i120
  store ptr %i.rf, ptr %i.ra, align 8, !tbaa !54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i107: ; preds = %bb.cv, %bb.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i117, %bb.cq
  %i.ry = phi ptr [ %i.rb, %bb.cu ], [ %i.rf, %bb.cv ], [ %i.re, %bb.cq ], [ %.pre.i.i118, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i117 ]
  %i.rz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 64
  store i64 0, ptr %i.rz, align 8, !tbaa !55
  store i8 0, ptr %i.ry, align 1, !tbaa !42
  %i.sa = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 88 ; 4 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 88 ; 4 uses
  %i.sc = load ptr, ptr %i.sa, align 8, !tbaa !54 ; 6 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 104 ; 4 uses
  %i.se = icmp eq ptr %i.sc, %i.sd
  %i.sf = load ptr, ptr %i.sb, align 8, !tbaa !54 ; 6 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 104 ; 6 uses
  %i.sh = icmp eq ptr %i.sf, %i.sg                ; 2 uses
  br i1 %i.se, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i10.i114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i4.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i10.i114: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i107
  br i1 %i.sh, label %bb.cw, label %.thread.i11.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i4.i108: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i107
  br i1 %i.sh, label %bb.cw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i5.i109

bb.cw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i4.i108, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i10.i114
  %i.si = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 96 ; 2 uses
  %i.sj = load i64, ptr %i.si, align 8, !tbaa !55 ; 3 uses
  %i.sk = icmp ult i64 %i.sj, 16
  call void @llvm.assume(i1 %i.sk)
  %.not21.i7.i111 = icmp eq ptr %.0910.i.i.i.i.i23.i, %.0811.i.i.i.i.i22.i
  br i1 %.not21.i7.i111, label %_ZN12lldb_private16DiagnosticDetailaSEOS0_.exit121, label %bb.cx, !prof !44

bb.cx:                                            ; preds = %bb.cw
  switch i64 %i.sj, label %bb.cz [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i8.i112
    i64 1, label %bb.cy
  ]

bb.cy:                                            ; preds = %bb.cx
  %i.sl = load i8, ptr %i.sf, align 1, !tbaa !42
  store i8 %i.sl, ptr %i.sc, align 1, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i8.i112

bb.cz:                                            ; preds = %bb.cx
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sc, ptr align 1 %i.sf, i64 %i.sj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i8.i112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i8.i112: ; preds = %bb.cz, %bb.cy, %bb.cx
  %i.sm = load i64, ptr %i.si, align 8, !tbaa !55 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 96
  store i64 %i.sm, ptr %i.sn, align 8, !tbaa !55
  %i.so = load ptr, ptr %i.sa, align 8, !tbaa !54
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 %i.sm
  store i8 0, ptr %i.sp, align 1, !tbaa !42
  %.pre.i9.i113 = load ptr, ptr %i.sb, align 8, !tbaa !54
  br label %_ZN12lldb_private16DiagnosticDetailaSEOS0_.exit121

.thread.i11.i115:                                 ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i10.i114
  %i.sq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 96
  store ptr %i.sf, ptr %i.sa, align 8, !tbaa !54
  %i.sr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 96
  %i.ss = load i64, ptr %i.sr, align 8, !tbaa !55
  store i64 %i.ss, ptr %i.sq, align 8, !tbaa !55
  %i.st = load i64, ptr %i.sg, align 8, !tbaa !42
  store i64 %i.st, ptr %i.sd, align 8, !tbaa !42
  br label %bb.db

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i5.i109: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i4.i108
  %i.su = load i64, ptr %i.sd, align 8, !tbaa !42
  store ptr %i.sf, ptr %i.sa, align 8, !tbaa !54
  %i.sv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 96
  %i.sw = load i64, ptr %i.sv, align 8, !tbaa !55
  %i.sx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 96
  store i64 %i.sw, ptr %i.sx, align 8, !tbaa !55
  %i.sy = load i64, ptr %i.sg, align 8, !tbaa !42
  store i64 %i.sy, ptr %i.sd, align 8, !tbaa !42
  %.not.i6.i110 = icmp eq ptr %i.sc, null
  br i1 %.not.i6.i110, label %bb.db, label %bb.da

bb.da:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i5.i109
  store ptr %i.sc, ptr %i.sb, align 8, !tbaa !54
  store i64 %i.su, ptr %i.sg, align 8, !tbaa !42
  br label %_ZN12lldb_private16DiagnosticDetailaSEOS0_.exit121

bb.db:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i5.i109, %.thread.i11.i115
  store ptr %i.sg, ptr %i.sb, align 8, !tbaa !54
  br label %_ZN12lldb_private16DiagnosticDetailaSEOS0_.exit121

_ZN12lldb_private16DiagnosticDetailaSEOS0_.exit121: ; preds = %bb.cw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i8.i112, %bb.da, %bb.db
  %i.sz = phi ptr [ %i.sc, %bb.da ], [ %i.sg, %bb.db ], [ %i.sf, %bb.cw ], [ %.pre.i9.i113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i8.i112 ]
  %i.ta = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 96
  store i64 0, ptr %i.ta, align 8, !tbaa !55
  store i8 0, ptr %i.sz, align 1, !tbaa !42
  %i.tb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 120
  %i.tc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 120 ; 2 uses
  %i.td = add nsw i64 %.012.i.i.i.i.i21.i, -1
  %i.te = icmp samesign ugt i64 %.012.i.i.i.i.i21.i, 1
  br i1 %i.te, label %.lr.ph.i.i.i.i.i20.i, label %"_ZSt12__move_mergeIPN12lldb_private16DiagnosticDetailEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZZNS0_23RenderDiagnosticDetailsERNS0_6StreamESt8optionalItEbN4llvm8ArrayRefIS1_EEbENK3$_0clERS7_EUlRT_RT0_E_EEESM_SK_SK_SK_SK_SM_T1_.exit", !llvm.loop !3

"_ZSt12__move_mergeIPN12lldb_private16DiagnosticDetailEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZZNS0_23RenderDiagnosticDetailsERNS0_6StreamESt8optionalItEbN4llvm8ArrayRefIS1_EEbENK3$_0clERS7_EUlRT_RT0_E_EEESM_SK_SK_SK_SK_SM_T1_.exit": ; preds = %_ZN12lldb_private16DiagnosticDetailaSEOS0_.exit121, %_ZSt4moveIPN12lldb_private16DiagnosticDetailEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i
  %.08.lcssa.i.i.i.i.i18.i = phi ptr [ %i.qt, %_ZSt4moveIPN12lldb_private16DiagnosticDetailEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i ], [ %i.tc, %_ZN12lldb_private16DiagnosticDetailaSEOS0_.exit121 ]
  %7 = ptrtoint ptr %.08.lcssa.i.i.i.i.i18.i to i64
  %i.tf = sub i64 %7, %i.qq
  %i.tg = getelementptr inbounds i8, ptr %i.qt, i64 %i.tf ; 2 uses
  %i.th = sub i64 %i.n, %i.qu
  %i.ti = sdiv exact i64 %i.th, 120               ; 2 uses
  %.not.i23 = icmp slt i64 %i.ti, %i.jk
  br i1 %.not.i23, label %"_ZSt17__merge_sort_loopIPN12lldb_private16DiagnosticDetailEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_comp_iterIZZNS0_23RenderDiagnosticDetailsERNS0_6StreamESt8optionalItEbN4llvm8ArrayRefIS1_EEbENK3$_0clERS7_EUlRT_RT0_E_EEEvSK_SK_SM_T1_T2_.exit", label %.lr.ph.i22, !llvm.loop !226

"_ZSt17__merge_sort_loopIPN12lldb_private16DiagnosticDetailEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_comp_iterIZZNS0_23RenderDiagnosticDetailsERNS0_6StreamESt8optionalItEbN4llvm8ArrayRefIS1_EEbENK3$_0clERS7_EUlRT_RT0_E_EEEvSK_SK_SM_T1_T2_.exit": ; preds = %"_ZSt12__move_mergeIPN12lldb_private16DiagnosticDetailEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZZNS0_23RenderDiagnosticDetailsERNS0_6StreamESt8optionalItEbN4llvm8ArrayRefIS1_EEbENK3$_0clERS7_EUlRT_RT0_E_EEESM_SK_SK_SK_SK_SM_T1_.exit", %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN12lldb_private16DiagnosticDetailESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZZNS2_23RenderDiagnosticDetailsERNS2_6StreamESt8optionalItEbN4llvm8ArrayRefIS3_EEbENK3$_0clERS7_EUlRT_RT0_E_EEEvSK_SK_SM_T1_T2_.exit"
  %.0.lcssa.i24 = phi ptr [ %2, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN12lldb_private16DiagnosticDetailESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZZNS2_23RenderDiagnosticDetailsERNS2_6StreamESt8optionalItEbN4llvm8ArrayRefIS3_EEbENK3$_0clERS7_EUlRT_RT0_E_EEEvSK_SK_SM_T1_T2_.exit" ], [ %i.jm, %"_ZSt12__move_mergeIPN12lldb_private16DiagnosticDetailEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZZNS0_23RenderDiagnosticDetailsERNS0_6StreamESt8optionalItEbN4llvm8ArrayRefIS1_EEbENK3$_0clERS7_EUlRT_RT0_E_EEESM_SK_SK_SK_SK_SM_T1_.exit" ] ; 2 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN12lldb_private16DiagnosticDetailESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZZNS2_23RenderDiagnosticDetailsERNS2_6StreamESt8optionalItEbN4llvm8ArrayRefIS3_EEbENK3$_0clERS7_EUlRT_RT0_E_EEEvSK_SK_SM_T1_T2_.exit" ], [ %i.tg, %"_ZSt12__move_mergeIPN12lldb_private16DiagnosticDetailEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZZNS0_23RenderDiagnosticDetailsERNS0_6StreamESt8optionalItEbN4llvm8ArrayRefIS1_EEbENK3$_0clERS7_EUlRT_RT0_E_EEESM_SK_SK_SK_SK_SM_T1_.exit" ]
  %.lcssa.i25 = phi i64 [ %i.o, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN12lldb_private16DiagnosticDetailESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZZNS2_23RenderDiagnosticDetailsERNS2_6StreamESt8optionalItEbN4llvm8ArrayRefIS3_EEbENK3$_0clERS7_EUlRT_RT0_E_EEEvSK_SK_SM_T1_T2_.exit" ], [ %i.ti, %"_ZSt12__move_mergeIPN12lldb_private16DiagnosticDetailEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZZNS0_23RenderDiagnosticDetailsERNS0_6StreamESt8optionalItEbN4llvm8ArrayRefIS1_EEbENK3$_0clERS7_EUlRT_RT0_E_EEESM_SK_SK_SK_SK_SM_T1_.exit" ]
  %.sroa.speculated.i26 = call i64 @llvm.smin.i64(i64 %i.r, i64 %.lcssa.i25)
  %i.tj = getelementptr inbounds [120 x i8], ptr %.0.lcssa.i24, i64 %.sroa.speculated.i26 ; 2 uses
  call fastcc void @"_ZSt12__move_mergeIPN12lldb_private16DiagnosticDetailEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZZNS0_23RenderDiagnosticDetailsERNS0_6StreamESt8optionalItEbN4llvm8ArrayRefIS1_EEbENK3$_0clERS7_EUlRT_RT0_E_EEESM_SK_SK_SK_SK_SM_T1_"(ptr noundef %.0.lcssa.i24, ptr noundef %i.tj, ptr noundef %i.tj, ptr noundef nonnull %i.e, ptr %.sroa.022.0.lcssa.i)
  %i.tk = icmp slt i64 %i.jk, %i.d
  br i1 %i.tk, label %bb.b, label %._crit_edge, !llvm.loop !227

._crit_edge:                                      ; preds = %"_ZSt17__merge_sort_loopIPN12lldb_private16DiagnosticDetailEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_comp_iterIZZNS0_23RenderDiagnosticDetailsERNS0_6StreamESt8optionalItEbN4llvm8ArrayRefIS1_EEbENK3$_0clERS7_EUlRT_RT0_E_EEEvSK_SK_SM_T1_T2_.exit", %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12lldb_private16DiagnosticDetailESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZZNS2_23RenderDiagnosticDetailsERNS2_6StreamESt8optionalItEbN4llvm8ArrayRefIS3_EEbENK3$_0clERS7_EUlRT_RT0_E_EEEvSK_SK_SM_T1_.exit.thread", %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12lldb_private16DiagnosticDetailESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZZNS2_23RenderDiagnosticDetailsERNS2_6StreamESt8optionalItEbN4llvm8ArrayRefIS3_EEbENK3$_0clERS7_EUlRT_RT0_E_EEEvSK_SK_SM_T1_.exit"
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN12lldb_private16DiagnosticDetailESt6vectorIS3_SaIS3_EEEElS4_NS0_5__ops15_Iter_comp_iterIZZNS2_23RenderDiagnosticDetailsERNS2_6StreamESt8optionalItEbN4llvm8ArrayRefIS3_EEbENK3$_0clERS7_EUlRT_RT0_E_EEEvSK_SK_SK_SM_SM_T1_T2_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) unnamed_addr #1 {
bb.a:
  %6 = alloca %"struct.lldb_private::DiagnosticDetail::SourceLocation", align 8 ; 5 uses
  %7 = alloca %"struct.lldb_private::DiagnosticDetail::SourceLocation", align 8 ; 5 uses
  %8 = alloca %"struct.lldb_private::DiagnosticDetail::SourceLocation", align 8 ; 5 uses
  %9 = alloca %"struct.lldb_private::DiagnosticDetail::SourceLocation", align 8 ; 5 uses
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPN12lldb_private16DiagnosticDetailEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIZZNS0_23RenderDiagnosticDetailsERNS0_6StreamESt8optionalItEbN4llvm8ArrayRefIS1_EEbENK3$_0clERS7_EUlRT_RT0_E_EEEvSK_SK_SM_SM_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.b
  %i.e = udiv exact i64 %i.c, 120
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.i, %.lr.ph.i.i.i.i.i ], [ %i.e, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i ], [ %5, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i.i ], [ %0, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN12lldb_private16DiagnosticDetailaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(120) %.0910.i.i.i.i.i) #16 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 120
  %i.h = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 120 ; 3 uses
  %i.i = add nsw i64 %.012.i.i.i.i.i, -1
  %i.j = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.j, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i, !llvm.loop !3

.lr.ph.i:                                         ; preds = %.lr.ph.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i
  %.027.i = phi ptr [ %5, %.lr.ph.i ], [ %.1.i, %bb.g ] ; 8 uses
  %.sroa.0.026.i = phi ptr [ %0, %.lr.ph.i ], [ %i.aa, %bb.g ] ; 4 uses
  %.sroa.016.025.i = phi ptr [ %1, %.lr.ph.i ], [ %.sroa.016.1.i, %bb.g ] ; 7 uses
  %.not20.i = icmp eq ptr %.sroa.016.025.i, %2
  br i1 %.not20.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @_ZN12lldb_private8FileSpecC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #16
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.k, i8 0, i64 10, i1 false)
  %i.n = load i8, ptr %i.m, align 8, !tbaa !47, !range !48, !noalias !242, !noundef !49
  %i.o = trunc nuw i8 %i.n to i1                  ; 2 uses
  %.sroa.gep11.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i, i64 24
  %..i.sroa.sel.i.i.i = select i1 %i.o, ptr %.sroa.gep11.i.i.i, ptr %i.k
  %.sroa.3.0.copyload.i.i.i = load i32, ptr %..i.sroa.sel.i.i.i, align 8 ; 2 uses
  %..i.sroa.sel15.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.o, ptr %.sroa.016.025.i, ptr %8
  %..i.sroa.sel15.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %..i.sroa.sel15.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 28
  %.sroa.4.0.copyload.i.i.i = load i16, ptr %..i.sroa.sel15.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @_ZN12lldb_private8FileSpecC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #16
  %i.p = getelementptr inbounds nuw i8, ptr %.027.i, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.l, i8 0, i64 10, i1 false)
  %i.q = load i8, ptr %i.p, align 8, !tbaa !47, !range !48, !noalias !243, !noundef !49
  %i.r = trunc nuw i8 %i.q to i1                  ; 2 uses
  %.sroa.gep.i.i.i = getelementptr inbounds nuw i8, ptr %.027.i, i64 24
  %..i2.sroa.sel.i.i.i = select i1 %i.r, ptr %.sroa.gep.i.i.i, ptr %i.l
  %.sroa.34.0.copyload.i.i.i = load i32, ptr %..i2.sroa.sel.i.i.i, align 8 ; 2 uses
  %..i2.sroa.sel10.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.r, ptr %.027.i, ptr %9
  %..i2.sroa.sel10.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %..i2.sroa.sel10.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 28
  %.sroa.45.0.copyload.i.i.i = load i16, ptr %..i2.sroa.sel10.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  %i.s = icmp ult i32 %.sroa.3.0.copyload.i.i.i, %.sroa.34.0.copyload.i.i.i
  %i.t = icmp uge i32 %.sroa.34.0.copyload.i.i.i, %.sroa.3.0.copyload.i.i.i
  %i.u = icmp ult i16 %.sroa.4.0.copyload.i.i.i, %.sroa.45.0.copyload.i.i.i
  %spec.select.i.i.i = select i1 %i.t, i1 %i.u, i1 false
  %i.v = select i1 %i.s, i1 true, i1 %spec.select.i.i.i
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = call noundef nonnull align 8 dereferenceable(120) ptr @_ZN12lldb_private16DiagnosticDetailaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.0.026.i, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.016.025.i) #16 ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i, i64 120
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.y = call noundef nonnull align 8 dereferenceable(120) ptr @_ZN12lldb_private16DiagnosticDetailaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.0.026.i, ptr noundef nonnull align 8 dereferenceable(120) %.027.i) #16 ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.027.i, i64 120
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.016.1.i = phi ptr [ %i.x, %bb.e ], [ %.sroa.016.025.i, %bb.f ]
  %.1.i = phi ptr [ %.027.i, %bb.e ], [ %i.z, %bb.f ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.026.i, i64 120
  %.not.i = icmp eq ptr %.1.i, %i.h
  br i1 %.not.i, label %"_ZSt21__move_merge_adaptiveIPN12lldb_private16DiagnosticDetailEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIZZNS0_23RenderDiagnosticDetailsERNS0_6StreamESt8optionalItEbN4llvm8ArrayRefIS1_EEbENK3$_0clERS7_EUlRT_RT0_E_EEEvSK_SK_SM_SM_T1_T2_.exit", label %bb.c, !llvm.loop !236

.critedge.i:                                      ; preds = %bb.c
  %i.ab = ptrtoint ptr %i.h to i64
  %i.ac = ptrtoint ptr %.027.i to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = icmp sgt i64 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.preheader.i.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPN12lldb_private16DiagnosticDetailEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIZZNS0_23RenderDiagnosticDetailsERNS0_6StreamESt8optionalItEbN4llvm8ArrayRefIS1_EEbENK3$_0clERS7_EUlRT_RT0_E_EEEvSK_SK_SM_SM_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %.critedge.i
  %i.af = udiv exact i64 %i.ad, 120
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i.i ], [ %i.af, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.026.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i ], [ %.027.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.ag = call noundef nonnull align 8 dereferenceable(120) ptr @_ZN12lldb_private16DiagnosticDetailaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %.0811.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(120) %.0910.i.i.i.i.i.i) #16 ; 0 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 120
  %i.ai = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 120
  %i.aj = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.ak = icmp samesign ugt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.ak, label %.lr.ph.i.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPN12lldb_private16DiagnosticDetailEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIZZNS0_23RenderDiagnosticDetailsERNS0_6StreamESt8optionalItEbN4llvm8ArrayRefIS1_EEbENK3$_0clERS7_EUlRT_RT0_E_EEEvSK_SK_SM_SM_T1_T2_.exit", !llvm.loop !3

bb.h:                                             ; preds = %bb.a
  %i.al = ptrtoint ptr %2 to i64
  %i.am = ptrtoint ptr %1 to i64
  %i.an = sub i64 %i.al, %i.am                    ; 2 uses
  %i.ao = icmp sgt i64 %i.an, 0
  br i1 %i.ao, label %.lr.ph.preheader.i.i.i.i.i24, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12lldb_private16DiagnosticDetailESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit29

.lr.ph.preheader.i.i.i.i.i24:                     ; preds = %bb.h
  %i.ap = udiv exact i64 %i.an, 120
  br label %.lr.ph.i.i.i.i.i25

.lr.ph.i.i.i.i.i25:                               ; preds = %.lr.ph.i.i.i.i.i25, %.lr.ph.preheader.i.i.i.i.i24
  %.012.i.i.i.i.i26 = phi i64 [ %i.at, %.lr.ph.i.i.i.i.i25 ], [ %i.ap, %.lr.ph.preheader.i.i.i.i.i24 ] ; 2 uses
  %.0811.i.i.i.i.i27 = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i25 ], [ %5, %.lr.ph.preheader.i.i.i.i.i24 ] ; 2 uses
  %.0910.i.i.i.i.i28 = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i25 ], [ %1, %.lr.ph.preheader.i.i.i.i.i24 ] ; 2 uses
  %i.aq = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN12lldb_private16DiagnosticDetailaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %.0811.i.i.i.i.i27, ptr noundef nonnull align 8 dereferenceable(120) %.0910.i.i.i.i.i28) #16 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i28, i64 120
  %i.as = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i27, i64 120 ; 2 uses
  %i.at = add nsw i64 %.012.i.i.i.i.i26, -1
  %i.au = icmp samesign ugt i64 %.012.i.i.i.i.i26, 1
  br i1 %i.au, label %.lr.ph.i.i.i.i.i25, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12lldb_private16DiagnosticDetailESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit29, !llvm.loop !3

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12lldb_private16DiagnosticDetailESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit29: ; preds = %.lr.ph.i.i.i.i.i25, %bb.h
  %.08.lcssa.i.i.i.i.i23 = phi ptr [ %5, %bb.h ], [ %i.as, %.lr.ph.i.i.i.i.i25 ] ; 4 uses
  %i.av = icmp eq ptr %0, %1
  br i1 %i.av, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12lldb_private16DiagnosticDetailESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit29
  %i.aw = ptrtoint ptr %.08.lcssa.i.i.i.i.i23 to i64
  %i.ax = ptrtoint ptr %5 to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 2 uses
  %i.az = icmp sgt i64 %i.ay, 0
  br i1 %i.az, label %.lr.ph.preheader.i.i.i.i.i.i44, label %"_ZSt21__move_merge_adaptiveIPN12lldb_private16DiagnosticDetailEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIZZNS0_23RenderDiagnosticDetailsERNS0_6StreamESt8optionalItEbN4llvm8ArrayRefIS1_EEbENK3$_0clERS7_EUlRT_RT0_E_EEEvSK_SK_SM_SM_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i.i44:                   ; preds = %bb.i
  %i.ba = udiv exact i64 %i.ay, 120
  br label %.lr.ph.i.i.i.i.i.i45

.lr.ph.i.i.i.i.i.i45:                             ; preds = %.lr.ph.i.i.i.i.i.i45, %.lr.ph.preheader.i.i.i.i.i.i44
  %.010.i.i.i.i.i.i = phi i64 [ %i.be, %.lr.ph.i.i.i.i.i.i45 ], [ %i.ba, %.lr.ph.preheader.i.i.i.i.i.i44 ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.i45 ], [ %2, %.lr.ph.preheader.i.i.i.i.i.i44 ]
  %.078.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i45 ], [ %.08.lcssa.i.i.i.i.i23, %.lr.ph.preheader.i.i.i.i.i.i44 ]
  %i.bb = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -120 ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -120 ; 2 uses
  %i.bd = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN12lldb_private16DiagnosticDetailaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.bc, ptr noundef nonnull align 8 dereferenceable(120) %i.bb) #16 ; 0 uses
  %i.be = add nsw i64 %.010.i.i.i.i.i.i, -1
  %i.bf = icmp samesign ugt i64 %.010.i.i.i.i.i.i, 1
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i.i45, label %"_ZSt21__move_merge_adaptiveIPN12lldb_private16DiagnosticDetailEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIZZNS0_23RenderDiagnosticDetailsERNS0_6StreamESt8optionalItEbN4llvm8ArrayRefIS1_EEbENK3$_0clERS7_EUlRT_RT0_E_EEEvSK_SK_SM_SM_T1_T2_.exit", !llvm.loop !5

bb.j:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12lldb_private16DiagnosticDetailESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit29
  %i.bg = icmp eq ptr %5, %.08.lcssa.i.i.i.i.i23
  br i1 %i.bg, label %"_ZSt21__move_merge_adaptiveIPN12lldb_private16DiagnosticDetailEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIZZNS0_23RenderDiagnosticDetailsERNS0_6StreamESt8optionalItEbN4llvm8ArrayRefIS1_EEbENK3$_0clERS7_EUlRT_RT0_E_EEEvSK_SK_SM_SM_T1_T2_.exit", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds i8, ptr %.08.lcssa.i.i.i.i.i23, i64 -120
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %.sroa.gep108 = getelementptr inbounds nuw i8, ptr %7, i64 28
  br label %.outer

.outer:                                           ; preds = %bb.m, %bb.k
  %.sroa.028.0.i.ph.pn = phi ptr [ %1, %bb.k ], [ %.sroa.028.0.i.ph, %bb.m ] ; 4 uses
  %.sroa.0.0.i.ph = phi ptr [ %2, %bb.k ], [ %i.bu, %bb.m ]
end_hunk_0
