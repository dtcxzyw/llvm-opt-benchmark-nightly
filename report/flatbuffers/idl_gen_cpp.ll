Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/idl_gen_cpp?download=true
inline.NumInlined: 10427
inline.NumDeleted: 806
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_:bb.a
bb.cb:                                            ; preds = %_ZN11flatbuffers12IncludedFileaSEOS0_.exit148, %_ZN11flatbuffers12IncludedFileaSEOS0_.exit166
  %.117.i = phi ptr [ %i.kz, %_ZN11flatbuffers12IncludedFileaSEOS0_.exit166 ], [ %.01628.i, %_ZN11flatbuffers12IncludedFileaSEOS0_.exit148 ] ; 3 uses
  %.1.i = phi ptr [ %.030.i, %_ZN11flatbuffers12IncludedFileaSEOS0_.exit166 ], [ %i.mt, %_ZN11flatbuffers12IncludedFileaSEOS0_.exit148 ] ; 3 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i, i64 64 ; 2 uses
  %i.mv = icmp ne ptr %.1.i, %i.ip
  %i.mw = icmp ne ptr %.117.i, %i.iq
  %i.mx = select i1 %i.mv, i1 %i.mw, i1 false
  br i1 %i.mx, label %.lr.ph.i32, label %._crit_edge.i, !llvm.loop !12

._crit_edge.i:                                    ; preds = %bb.cb, %.lr.ph.i17
  %.sroa.0.0.lcssa.i = phi ptr [ %.sroa.018.027.i, %.lr.ph.i17 ], [ %i.mu, %bb.cb ] ; 4 uses
  %.016.lcssa.i = phi ptr [ %i.ip, %.lr.ph.i17 ], [ %.117.i, %bb.cb ] ; 2 uses
  %.0.lcssa.i26 = phi ptr [ %.026.i, %.lr.ph.i17 ], [ %.1.i, %bb.cb ] ; 2 uses
  %i.my = ptrtoint ptr %i.ip to i64
  %i.mz = ptrtoint ptr %.0.lcssa.i26 to i64
  %i.na = sub i64 %i.my, %i.mz
  %i.nb = ashr exact i64 %i.na, 6                 ; 2 uses
  %i.nc = icmp sgt i64 %i.nb, 0
  br i1 %i.nc, label %.lr.ph.i.i.i.i.i.i28, label %_ZSt4moveIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i

.lr.ph.i.i.i.i.i.i28:                             ; preds = %._crit_edge.i, %_ZN11flatbuffers12IncludedFileaSEOS0_.exit130
  %.012.i.i.i.i.i.i29 = phi i64 [ %i.pf, %_ZN11flatbuffers12IncludedFileaSEOS0_.exit130 ], [ %i.nb, %._crit_edge.i ] ; 2 uses
  %.0811.i.i.i.i.i.i30 = phi ptr [ %i.pe, %_ZN11flatbuffers12IncludedFileaSEOS0_.exit130 ], [ %.sroa.0.0.lcssa.i, %._crit_edge.i ] ; 16 uses
  %.0910.i.i.i.i.i.i31 = phi ptr [ %i.pd, %_ZN11flatbuffers12IncludedFileaSEOS0_.exit130 ], [ %.0.lcssa.i26, %._crit_edge.i ] ; 18 uses
  %i.nd = load ptr, ptr %.0811.i.i.i.i.i.i30, align 8, !tbaa !37 ; 6 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i30, i64 16 ; 4 uses
  %i.nf = icmp eq ptr %i.nd, %i.ne
  %i.ng = load ptr, ptr %.0910.i.i.i.i.i.i31, align 8, !tbaa !37 ; 6 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i31, i64 16 ; 6 uses
  %i.ni = icmp eq ptr %i.ng, %i.nh                ; 2 uses
  br i1 %i.nf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128: ; preds = %.lr.ph.i.i.i.i.i.i28
  br i1 %i.ni, label %bb.cc, label %.thread.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i113: ; preds = %.lr.ph.i.i.i.i.i.i28
  br i1 %i.ni, label %bb.cc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i114

bb.cc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128
  %i.nj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i31, i64 8 ; 2 uses
  %i.nk = load i64, ptr %i.nj, align 8, !tbaa !53 ; 3 uses
  %i.nl = icmp ult i64 %i.nk, 16
  tail call void @llvm.assume(i1 %i.nl)
  %.not21.i.i125 = icmp eq ptr %.0910.i.i.i.i.i.i31, %.0811.i.i.i.i.i.i30
  br i1 %.not21.i.i125, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i116, label %bb.cd, !prof !276

bb.cd:                                            ; preds = %bb.cc
  switch i64 %i.nk, label %bb.cf [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i126
    i64 1, label %bb.ce
  ]

bb.ce:                                            ; preds = %bb.cd
  %i.nm = load i8, ptr %i.ng, align 1, !tbaa !32
  store i8 %i.nm, ptr %i.nd, align 1, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i126

bb.cf:                                            ; preds = %bb.cd
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nd, ptr align 1 %i.ng, i64 %i.nk, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i126: ; preds = %bb.cf, %bb.ce, %bb.cd
  %i.nn = load i64, ptr %i.nj, align 8, !tbaa !53 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i30, i64 8
  store i64 %i.nn, ptr %i.no, align 8, !tbaa !53
  %i.np = load ptr, ptr %.0811.i.i.i.i.i.i30, align 8, !tbaa !37
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 %i.nn
  store i8 0, ptr %i.nq, align 1, !tbaa !32
  %.pre.i.i127 = load ptr, ptr %.0910.i.i.i.i.i.i31, align 8, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i116

.thread.i.i129:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128
  %i.nr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i30, i64 8
  store ptr %i.ng, ptr %.0811.i.i.i.i.i.i30, align 8, !tbaa !37
  %i.ns = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i31, i64 8
  %i.nt = load i64, ptr %i.ns, align 8, !tbaa !53
  store i64 %i.nt, ptr %i.nr, align 8, !tbaa !53
  %i.nu = load i64, ptr %i.nh, align 8, !tbaa !32
  store i64 %i.nu, ptr %i.ne, align 8, !tbaa !32
  br label %bb.ch

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i114: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i113
  %i.nv = load i64, ptr %i.ne, align 8, !tbaa !32
  store ptr %i.ng, ptr %.0811.i.i.i.i.i.i30, align 8, !tbaa !37
  %i.nw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i31, i64 8
  %i.nx = load i64, ptr %i.nw, align 8, !tbaa !53
  %i.ny = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i30, i64 8
  store i64 %i.nx, ptr %i.ny, align 8, !tbaa !53
  %i.nz = load i64, ptr %i.nh, align 8, !tbaa !32
  store i64 %i.nz, ptr %i.ne, align 8, !tbaa !32
  %.not.i.i115 = icmp eq ptr %i.nd, null
  br i1 %.not.i.i115, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i114
  store ptr %i.nd, ptr %.0910.i.i.i.i.i.i31, align 8, !tbaa !37
  store i64 %i.nv, ptr %i.nh, align 8, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i116

bb.ch:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i114, %.thread.i.i129
  store ptr %i.nh, ptr %.0910.i.i.i.i.i.i31, align 8, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i116: ; preds = %bb.ch, %bb.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i126, %bb.cc
  %i.oa = phi ptr [ %.pre.i.i127, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i126 ], [ %i.nd, %bb.cg ], [ %i.nh, %bb.ch ], [ %i.ng, %bb.cc ]
  %i.ob = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i31, i64 8
  store i64 0, ptr %i.ob, align 8, !tbaa !53
  store i8 0, ptr %i.oa, align 1, !tbaa !32
  %i.oc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i30, i64 32 ; 4 uses
  %i.od = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i31, i64 32 ; 4 uses
  %i.oe = load ptr, ptr %i.oc, align 8, !tbaa !37 ; 6 uses
  %i.of = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i30, i64 48 ; 4 uses
  %i.og = icmp eq ptr %i.oe, %i.of
  %i.oh = load ptr, ptr %i.od, align 8, !tbaa !37 ; 6 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i31, i64 48 ; 6 uses
  %i.oj = icmp eq ptr %i.oh, %i.oi                ; 2 uses
  br i1 %i.og, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i3.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i123: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i116
  br i1 %i.oj, label %bb.ci, label %.thread.i10.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i3.i117: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i116
  br i1 %i.oj, label %bb.ci, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i4.i118

bb.ci:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i3.i117, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i123
  %i.ok = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i31, i64 40 ; 2 uses
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !53 ; 3 uses
  %i.om = icmp ult i64 %i.ol, 16
  tail call void @llvm.assume(i1 %i.om)
  %.not21.i6.i120 = icmp eq ptr %.0910.i.i.i.i.i.i31, %.0811.i.i.i.i.i.i30
  br i1 %.not21.i6.i120, label %_ZN11flatbuffers12IncludedFileaSEOS0_.exit130, label %bb.cj, !prof !276

bb.cj:                                            ; preds = %bb.ci
  switch i64 %i.ol, label %bb.cl [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i7.i121
    i64 1, label %bb.ck
  ]

bb.ck:                                            ; preds = %bb.cj
  %i.on = load i8, ptr %i.oh, align 1, !tbaa !32
  store i8 %i.on, ptr %i.oe, align 1, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i7.i121

bb.cl:                                            ; preds = %bb.cj
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.oe, ptr align 1 %i.oh, i64 %i.ol, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i7.i121

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i7.i121: ; preds = %bb.cl, %bb.ck, %bb.cj
  %i.oo = load i64, ptr %i.ok, align 8, !tbaa !53 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i30, i64 40
  store i64 %i.oo, ptr %i.op, align 8, !tbaa !53
  %i.oq = load ptr, ptr %i.oc, align 8, !tbaa !37
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 %i.oo
  store i8 0, ptr %i.or, align 1, !tbaa !32
  %.pre.i8.i122 = load ptr, ptr %i.od, align 8, !tbaa !37
  br label %_ZN11flatbuffers12IncludedFileaSEOS0_.exit130

.thread.i10.i124:                                 ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i123
  %i.os = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i30, i64 40
  store ptr %i.oh, ptr %i.oc, align 8, !tbaa !37
  %i.ot = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i31, i64 40
  %i.ou = load i64, ptr %i.ot, align 8, !tbaa !53
  store i64 %i.ou, ptr %i.os, align 8, !tbaa !53
  %i.ov = load i64, ptr %i.oi, align 8, !tbaa !32
  store i64 %i.ov, ptr %i.of, align 8, !tbaa !32
  br label %bb.cn

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i4.i118: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i3.i117
  %i.ow = load i64, ptr %i.of, align 8, !tbaa !32
  store ptr %i.oh, ptr %i.oc, align 8, !tbaa !37
  %i.ox = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i31, i64 40
  %i.oy = load i64, ptr %i.ox, align 8, !tbaa !53
  %i.oz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i30, i64 40
  store i64 %i.oy, ptr %i.oz, align 8, !tbaa !53
  %i.pa = load i64, ptr %i.oi, align 8, !tbaa !32
  store i64 %i.pa, ptr %i.of, align 8, !tbaa !32
  %.not.i5.i119 = icmp eq ptr %i.oe, null
  br i1 %.not.i5.i119, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i4.i118
  store ptr %i.oe, ptr %i.od, align 8, !tbaa !37
  store i64 %i.ow, ptr %i.oi, align 8, !tbaa !32
  br label %_ZN11flatbuffers12IncludedFileaSEOS0_.exit130

bb.cn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i4.i118, %.thread.i10.i124
  store ptr %i.oi, ptr %i.od, align 8, !tbaa !37
  br label %_ZN11flatbuffers12IncludedFileaSEOS0_.exit130

_ZN11flatbuffers12IncludedFileaSEOS0_.exit130:    ; preds = %bb.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i7.i121, %bb.cm, %bb.cn
  %i.pb = phi ptr [ %.pre.i8.i122, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i7.i121 ], [ %i.oe, %bb.cm ], [ %i.oi, %bb.cn ], [ %i.oh, %bb.ci ]
  %i.pc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i31, i64 40
  store i64 0, ptr %i.pc, align 8, !tbaa !53
  store i8 0, ptr %i.pb, align 1, !tbaa !32
  %i.pd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i31, i64 64
  %i.pe = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i30, i64 64 ; 2 uses
  %i.pf = add nsw i64 %.012.i.i.i.i.i.i29, -1
  %i.pg = icmp samesign ugt i64 %.012.i.i.i.i.i.i29, 1
  br i1 %i.pg, label %.lr.ph.i.i.i.i.i.i28, label %_ZSt4moveIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i, !llvm.loop !11

_ZSt4moveIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i: ; preds = %_ZN11flatbuffers12IncludedFileaSEOS0_.exit130, %._crit_edge.i
  %.08.lcssa.i.i.i.i.i.i27 = phi ptr [ %.sroa.0.0.lcssa.i, %._crit_edge.i ], [ %i.pe, %_ZN11flatbuffers12IncludedFileaSEOS0_.exit130 ]
  %i.ph = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i27 to i64 ; 2 uses
  %i.pi = ptrtoint ptr %.sroa.0.0.lcssa.i to i64
  %i.pj = sub i64 %i.ph, %i.pi
  %i.pk = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i, i64 %i.pj ; 3 uses
  %i.pl = ptrtoint ptr %i.iq to i64               ; 2 uses
  %i.pm = ptrtoint ptr %.016.lcssa.i to i64
  %i.pn = sub i64 %i.pl, %i.pm
  %i.po = ashr exact i64 %i.pn, 6                 ; 2 uses
  %i.pp = icmp sgt i64 %i.po, 0
  br i1 %i.pp, label %.lr.ph.i.i.i.i.i19.i, label %_ZSt12__move_mergeIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit

.lr.ph.i.i.i.i.i19.i:                             ; preds = %_ZSt4moveIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i, %_ZN11flatbuffers12IncludedFileaSEOS0_.exit112
  %.012.i.i.i.i.i20.i = phi i64 [ %i.rs, %_ZN11flatbuffers12IncludedFileaSEOS0_.exit112 ], [ %i.po, %_ZSt4moveIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i ] ; 2 uses
  %.0811.i.i.i.i.i21.i = phi ptr [ %i.rr, %_ZN11flatbuffers12IncludedFileaSEOS0_.exit112 ], [ %i.pk, %_ZSt4moveIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i ] ; 16 uses
  %.0910.i.i.i.i.i22.i = phi ptr [ %i.rq, %_ZN11flatbuffers12IncludedFileaSEOS0_.exit112 ], [ %.016.lcssa.i, %_ZSt4moveIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i ] ; 18 uses
  %i.pq = load ptr, ptr %.0811.i.i.i.i.i21.i, align 8, !tbaa !37 ; 6 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 16 ; 4 uses
  %i.ps = icmp eq ptr %i.pq, %i.pr
  %i.pt = load ptr, ptr %.0910.i.i.i.i.i22.i, align 8, !tbaa !37 ; 6 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 16 ; 6 uses
  %i.pv = icmp eq ptr %i.pt, %i.pu                ; 2 uses
  br i1 %i.ps, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %.lr.ph.i.i.i.i.i19.i
  br i1 %i.pv, label %bb.co, label %.thread.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i95: ; preds = %.lr.ph.i.i.i.i.i19.i
  br i1 %i.pv, label %bb.co, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i96

bb.co:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i95, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110
  %i.pw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 8 ; 2 uses
  %i.px = load i64, ptr %i.pw, align 8, !tbaa !53 ; 3 uses
  %i.py = icmp ult i64 %i.px, 16
  tail call void @llvm.assume(i1 %i.py)
  %.not21.i.i107 = icmp eq ptr %.0910.i.i.i.i.i22.i, %.0811.i.i.i.i.i21.i
  br i1 %.not21.i.i107, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i98, label %bb.cp, !prof !276

bb.cp:                                            ; preds = %bb.co
  switch i64 %i.px, label %bb.cr [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i108
    i64 1, label %bb.cq
  ]

bb.cq:                                            ; preds = %bb.cp
  %i.pz = load i8, ptr %i.pt, align 1, !tbaa !32
  store i8 %i.pz, ptr %i.pq, align 1, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i108

bb.cr:                                            ; preds = %bb.cp
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pq, ptr align 1 %i.pt, i64 %i.px, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i108: ; preds = %bb.cr, %bb.cq, %bb.cp
  %i.qa = load i64, ptr %i.pw, align 8, !tbaa !53 ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 8
  store i64 %i.qa, ptr %i.qb, align 8, !tbaa !53
  %i.qc = load ptr, ptr %.0811.i.i.i.i.i21.i, align 8, !tbaa !37
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 %i.qa
  store i8 0, ptr %i.qd, align 1, !tbaa !32
  %.pre.i.i109 = load ptr, ptr %.0910.i.i.i.i.i22.i, align 8, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i98

.thread.i.i111:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110
  %i.qe = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 8
  store ptr %i.pt, ptr %.0811.i.i.i.i.i21.i, align 8, !tbaa !37
  %i.qf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 8
  %i.qg = load i64, ptr %i.qf, align 8, !tbaa !53
  store i64 %i.qg, ptr %i.qe, align 8, !tbaa !53
  %i.qh = load i64, ptr %i.pu, align 8, !tbaa !32
  store i64 %i.qh, ptr %i.pr, align 8, !tbaa !32
  br label %bb.ct

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i96: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i95
  %i.qi = load i64, ptr %i.pr, align 8, !tbaa !32
  store ptr %i.pt, ptr %.0811.i.i.i.i.i21.i, align 8, !tbaa !37
  %i.qj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 8
  %i.qk = load i64, ptr %i.qj, align 8, !tbaa !53
  %i.ql = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 8
  store i64 %i.qk, ptr %i.ql, align 8, !tbaa !53
  %i.qm = load i64, ptr %i.pu, align 8, !tbaa !32
  store i64 %i.qm, ptr %i.pr, align 8, !tbaa !32
  %.not.i.i97 = icmp eq ptr %i.pq, null
  br i1 %.not.i.i97, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i96
  store ptr %i.pq, ptr %.0910.i.i.i.i.i22.i, align 8, !tbaa !37
  store i64 %i.qi, ptr %i.pu, align 8, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i98

bb.ct:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i96, %.thread.i.i111
  store ptr %i.pu, ptr %.0910.i.i.i.i.i22.i, align 8, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i98: ; preds = %bb.ct, %bb.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i108, %bb.co
  %i.qn = phi ptr [ %.pre.i.i109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i108 ], [ %i.pq, %bb.cs ], [ %i.pu, %bb.ct ], [ %i.pt, %bb.co ]
  %i.qo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 8
  store i64 0, ptr %i.qo, align 8, !tbaa !53
  store i8 0, ptr %i.qn, align 1, !tbaa !32
  %i.qp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 32 ; 4 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 32 ; 4 uses
  %i.qr = load ptr, ptr %i.qp, align 8, !tbaa !37 ; 6 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 48 ; 4 uses
  %i.qt = icmp eq ptr %i.qr, %i.qs
  %i.qu = load ptr, ptr %i.qq, align 8, !tbaa !37 ; 6 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 48 ; 6 uses
  %i.qw = icmp eq ptr %i.qu, %i.qv                ; 2 uses
  br i1 %i.qt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i3.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i105: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i98
  br i1 %i.qw, label %bb.cu, label %.thread.i10.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i3.i99: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i98
  br i1 %i.qw, label %bb.cu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i4.i100

bb.cu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i3.i99, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i105
  %i.qx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 40 ; 2 uses
  %i.qy = load i64, ptr %i.qx, align 8, !tbaa !53 ; 3 uses
  %i.qz = icmp ult i64 %i.qy, 16
  tail call void @llvm.assume(i1 %i.qz)
  %.not21.i6.i102 = icmp eq ptr %.0910.i.i.i.i.i22.i, %.0811.i.i.i.i.i21.i
  br i1 %.not21.i6.i102, label %_ZN11flatbuffers12IncludedFileaSEOS0_.exit112, label %bb.cv, !prof !276

bb.cv:                                            ; preds = %bb.cu
  switch i64 %i.qy, label %bb.cx [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i7.i103
    i64 1, label %bb.cw
  ]

bb.cw:                                            ; preds = %bb.cv
  %i.ra = load i8, ptr %i.qu, align 1, !tbaa !32
  store i8 %i.ra, ptr %i.qr, align 1, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i7.i103

bb.cx:                                            ; preds = %bb.cv
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qr, ptr align 1 %i.qu, i64 %i.qy, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i7.i103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i7.i103: ; preds = %bb.cx, %bb.cw, %bb.cv
  %i.rb = load i64, ptr %i.qx, align 8, !tbaa !53 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 40
  store i64 %i.rb, ptr %i.rc, align 8, !tbaa !53
  %i.rd = load ptr, ptr %i.qp, align 8, !tbaa !37
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 %i.rb
  store i8 0, ptr %i.re, align 1, !tbaa !32
  %.pre.i8.i104 = load ptr, ptr %i.qq, align 8, !tbaa !37
  br label %_ZN11flatbuffers12IncludedFileaSEOS0_.exit112

.thread.i10.i106:                                 ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i105
  %i.rf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 40
  store ptr %i.qu, ptr %i.qp, align 8, !tbaa !37
  %i.rg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 40
  %i.rh = load i64, ptr %i.rg, align 8, !tbaa !53
  store i64 %i.rh, ptr %i.rf, align 8, !tbaa !53
  %i.ri = load i64, ptr %i.qv, align 8, !tbaa !32
  store i64 %i.ri, ptr %i.qs, align 8, !tbaa !32
  br label %bb.cz

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i4.i100: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i3.i99
  %i.rj = load i64, ptr %i.qs, align 8, !tbaa !32
  store ptr %i.qu, ptr %i.qp, align 8, !tbaa !37
  %i.rk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 40
  %i.rl = load i64, ptr %i.rk, align 8, !tbaa !53
  %i.rm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 40
  store i64 %i.rl, ptr %i.rm, align 8, !tbaa !53
  %i.rn = load i64, ptr %i.qv, align 8, !tbaa !32
  store i64 %i.rn, ptr %i.qs, align 8, !tbaa !32
  %.not.i5.i101 = icmp eq ptr %i.qr, null
  br i1 %.not.i5.i101, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i4.i100
  store ptr %i.qr, ptr %i.qq, align 8, !tbaa !37
  store i64 %i.rj, ptr %i.qv, align 8, !tbaa !32
  br label %_ZN11flatbuffers12IncludedFileaSEOS0_.exit112

bb.cz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i4.i100, %.thread.i10.i106
  store ptr %i.qv, ptr %i.qq, align 8, !tbaa !37
  br label %_ZN11flatbuffers12IncludedFileaSEOS0_.exit112

_ZN11flatbuffers12IncludedFileaSEOS0_.exit112:    ; preds = %bb.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i7.i103, %bb.cy, %bb.cz
  %i.ro = phi ptr [ %.pre.i8.i104, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i7.i103 ], [ %i.qr, %bb.cy ], [ %i.qv, %bb.cz ], [ %i.qu, %bb.cu ]
  %i.rp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 40
  store i64 0, ptr %i.rp, align 8, !tbaa !53
  store i8 0, ptr %i.ro, align 1, !tbaa !32
  %i.rq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 64
  %i.rr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 64 ; 2 uses
  %i.rs = add nsw i64 %.012.i.i.i.i.i20.i, -1
  %i.rt = icmp samesign ugt i64 %.012.i.i.i.i.i20.i, 1
  br i1 %i.rt, label %.lr.ph.i.i.i.i.i19.i, label %_ZSt12__move_mergeIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit, !llvm.loop !11

_ZSt12__move_mergeIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit: ; preds = %_ZN11flatbuffers12IncludedFileaSEOS0_.exit112, %_ZSt4moveIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i
  %.08.lcssa.i.i.i.i.i18.i = phi ptr [ %i.pk, %_ZSt4moveIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i ], [ %i.rr, %_ZN11flatbuffers12IncludedFileaSEOS0_.exit112 ]
  %3 = ptrtoint ptr %.08.lcssa.i.i.i.i.i18.i to i64
  %i.ru = sub i64 %3, %i.ph
  %i.rv = getelementptr inbounds i8, ptr %i.pk, i64 %i.ru ; 2 uses
  %i.rw = sub i64 %i.i, %i.pl
  %i.rx = ashr exact i64 %i.rw, 6                 ; 2 uses
  %.not.i18 = icmp slt i64 %i.rx, %i.io
  br i1 %.not.i18, label %_ZSt17__merge_sort_loopIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_less_iterEEvT_SB_T0_T1_T2_.exit, label %.lr.ph.i17, !llvm.loop !1071

_ZSt17__merge_sort_loopIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_less_iterEEvT_SB_T0_T1_T2_.exit: ; preds = %_ZSt12__move_mergeIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_T2_.exit
  %.0.lcssa.i19 = phi ptr [ %2, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_T2_.exit ], [ %i.iq, %_ZSt12__move_mergeIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit ] ; 2 uses
  %.sroa.018.0.lcssa.i = phi ptr [ %0, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_T2_.exit ], [ %i.rv, %_ZSt12__move_mergeIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit ]
  %.lcssa.i20 = phi i64 [ %i.d, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_T2_.exit ], [ %i.rx, %_ZSt12__move_mergeIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit ]
  %.sroa.speculated.i21 = tail call i64 @llvm.smin.i64(i64 %i.j, i64 %.lcssa.i20)
  %i.ry = getelementptr inbounds [64 x i8], ptr %.0.lcssa.i19, i64 %.sroa.speculated.i21 ; 2 uses
  %i.rz = tail call ptr @_ZSt12__move_mergeIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_(ptr noundef %.0.lcssa.i19, ptr noundef %i.ry, ptr noundef %i.ry, ptr noundef %i.e, ptr %.sroa.018.0.lcssa.i) ; 0 uses
  %i.sa = icmp slt i64 %i.io, %i.d
  br i1 %i.sa, label %bb.b, label %._crit_edge, !llvm.loop !1072

._crit_edge:                                      ; preds = %_ZSt17__merge_sort_loopIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_less_iterEEvT_SB_T0_T1_T2_.exit, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_.exit.thread, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_SC_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 6                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_less_iterEEvT_SB_T0_SC_T1_T2_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.i, %.lr.ph.i.i.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i ], [ %5, %bb.b ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i.i ], [ %0, %bb.b ] ; 2 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN11flatbuffers12IncludedFileaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.0910.i.i.i.i.i) #28 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 64 ; 3 uses
  %i.i = add nsw i64 %.012.i.i.i.i.i, -1
  %i.j = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.j, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i, !llvm.loop !11

.lr.ph.i:                                         ; preds = %.lr.ph.i.i.i.i.i, %bb.f
  %.026.i = phi ptr [ %.1.i, %bb.f ], [ %5, %.lr.ph.i.i.i.i.i ] ; 7 uses
  %.sroa.0.025.i = phi ptr [ %i.aa, %bb.f ], [ %0, %.lr.ph.i.i.i.i.i ] ; 4 uses
  %.sroa.016.024.i = phi ptr [ %.sroa.016.1.i, %bb.f ], [ %1, %.lr.ph.i.i.i.i.i ] ; 6 uses
  %.not19.i = icmp eq ptr %.sroa.016.024.i, %2
  br i1 %.not19.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.016.024.i, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !53   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.026.i, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !53   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.l) ; 2 uses
  %i.o = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.o, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.026.i, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.016.024.i, i64 32
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !37
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !37
  %i.t = tail call i32 @memcmp(ptr noundef %i.s, ptr noundef %i.r, i64 noundef %.sroa.speculated.i.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS5_SaIS5_EEEES6_EEbT_T0_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.c
  %i.u = sub i64 %i.l, %i.n
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.u, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS5_SaIS5_EEEES6_EEbT_T0_.exit.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS5_SaIS5_EEEES6_EEbT_T0_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.t, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.v = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS5_SaIS5_EEEES6_EEbT_T0_.exit.i
  %i.w = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN11flatbuffers12IncludedFileaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.025.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.016.024.i) #28 ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.016.024.i, i64 64
  br label %bb.f

bb.e:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS5_SaIS5_EEEES6_EEbT_T0_.exit.i
  %i.y = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN11flatbuffers12IncludedFileaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.025.i, ptr noundef nonnull align 8 dereferenceable(64) %.026.i) #28 ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.026.i, i64 64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.016.1.i = phi ptr [ %i.x, %bb.d ], [ %.sroa.016.024.i, %bb.e ]
  %.1.i = phi ptr [ %.026.i, %bb.d ], [ %i.z, %bb.e ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i, i64 64
  %.not.i = icmp eq ptr %.1.i, %i.h
  br i1 %.not.i, label %_ZSt21__move_merge_adaptiveIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_less_iterEEvT_SB_T0_SC_T1_T2_.exit, label %.lr.ph.i, !llvm.loop !1073

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.ab = ptrtoint ptr %i.h to i64
  %i.ac = ptrtoint ptr %.026.i to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 6                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph.i.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_less_iterEEvT_SB_T0_SC_T1_T2_.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %.critedge.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i.i ], [ %i.ae, %.critedge.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.025.i, %.critedge.i ] ; 2 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i ], [ %.026.i, %.critedge.i ] ; 2 uses
  %i.ag = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN11flatbuffers12IncludedFileaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %.0811.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.0910.i.i.i.i.i.i) #28 ; 0 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 64
  %i.aj = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.ak = icmp samesign ugt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.ak, label %.lr.ph.i.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_less_iterEEvT_SB_T0_SC_T1_T2_.exit, !llvm.loop !11

bb.g:                                             ; preds = %bb.a
  %i.al = ptrtoint ptr %2 to i64
  %i.am = ptrtoint ptr %1 to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 6                 ; 2 uses
  %i.ap = icmp sgt i64 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i20, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit24

.lr.ph.i.i.i.i.i20:                               ; preds = %bb.g, %.lr.ph.i.i.i.i.i20
  %.012.i.i.i.i.i21 = phi i64 [ %i.at, %.lr.ph.i.i.i.i.i20 ], [ %i.ao, %bb.g ] ; 2 uses
  %.0811.i.i.i.i.i22 = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i20 ], [ %5, %bb.g ] ; 2 uses
  %.0910.i.i.i.i.i23 = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i20 ], [ %1, %bb.g ] ; 2 uses
  %i.aq = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN11flatbuffers12IncludedFileaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %.0811.i.i.i.i.i22, ptr noundef nonnull align 8 dereferenceable(64) %.0910.i.i.i.i.i23) #28 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22, i64 64 ; 2 uses
  %i.at = add nsw i64 %.012.i.i.i.i.i21, -1
  %i.au = icmp samesign ugt i64 %.012.i.i.i.i.i21, 1
  br i1 %i.au, label %.lr.ph.i.i.i.i.i20, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit24, !llvm.loop !11

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit24: ; preds = %.lr.ph.i.i.i.i.i20, %bb.g
  %.08.lcssa.i.i.i.i.i19 = phi ptr [ %5, %bb.g ], [ %i.as, %.lr.ph.i.i.i.i.i20 ]
  tail call void @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES4_S8_NS0_5__ops15_Iter_less_iterEEvT_SB_T0_SC_T1_T2_(ptr %0, ptr %1, ptr noundef %5, ptr noundef %.08.lcssa.i.i.i.i.i19, ptr %2)
  br label %_ZSt21__move_merge_adaptiveIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_less_iterEEvT_SB_T0_SC_T1_T2_.exit

_ZSt21__move_merge_adaptiveIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_less_iterEEvT_SB_T0_SC_T1_T2_.exit: ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i, %bb.b, %.critedge.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %0, ptr %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.flatbuffers::IncludedFile", align 8 ; 11 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit16, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.017 = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not18 = icmp eq ptr %.sroa.0.017, %1
  br i1 %.not18, label %.loopexit16, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.i = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.q
  %.sroa.0.020 = phi ptr [ %.sroa.0.017, %.lr.ph ], [ %.sroa.0.0, %bb.q ] ; 7 uses
  %.pn19 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.020, %bb.q ] ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.pn19, i64 104 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !53   ; 4 uses
  %i.l = load i64, ptr %i.b, align 8, !tbaa !53   ; 2 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.l, i64 %i.k) ; 2 uses
  %i.m = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.m, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.pn19, i64 96
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !37
  %i.q = call i32 @memcmp(ptr noundef %i.p, ptr noundef %i.o, i64 noundef %.sroa.speculated.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.b
  %i.r = sub i64 %i.k, %i.l
  %spec.select7.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.r, i64 -2147483648)
  %.08.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.q, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.s = icmp slt i32 %.0.i.i.i.i, 0
  br i1 %i.s, label %bb.c, label %bb.p

bb.c:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit
end_hunk_0
begin_hunk_1_@_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_:bb.a
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #27
  br label %_ZN11flatbuffers12IncludedFileD2Ev.exit

_ZN11flatbuffers12IncludedFileD2Ev.exit:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_(ptr %0, ptr %1, ptr %2, ptr %3, ptr noundef %4) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne ptr %0, %1
  %i.b = icmp ne ptr %2, %3
  %or.cond23 = select i1 %i.a, i1 %i.b, i1 false
  br i1 %or.cond23, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.026 = phi ptr [ %i.s, %bb.d ], [ %4, %bb.a ]  ; 3 uses
  %.sroa.019.025 = phi ptr [ %.sroa.019.1, %bb.d ], [ %0, %bb.a ] ; 5 uses
  %.sroa.015.024 = phi ptr [ %.sroa.015.1, %bb.d ], [ %2, %bb.a ] ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.015.024, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !53   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.019.025, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !53   ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.d) ; 2 uses
  %i.g = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.g, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.019.025, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.015.024, i64 32
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !37
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %.lr.ph
  %i.m = sub i64 %i.d, %i.f
  %spec.select7.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit
  %i.o = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN11flatbuffers12IncludedFileaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %.026, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.015.024) #28 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.015.024, i64 64
  br label %bb.d

bb.c:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit
  %i.q = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN11flatbuffers12IncludedFileaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %.026, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.019.025) #28 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.019.025, i64 64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.015.1 = phi ptr [ %i.p, %bb.b ], [ %.sroa.015.024, %bb.c ] ; 3 uses
  %.sroa.019.1 = phi ptr [ %.sroa.019.025, %bb.b ], [ %i.r, %bb.c ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.026, i64 64 ; 2 uses
  %i.t = icmp ne ptr %.sroa.019.1, %1
  %i.u = icmp ne ptr %.sroa.015.1, %3
  %or.cond = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge, !llvm.loop !10

.critedge:                                        ; preds = %bb.d, %bb.a
  %.sroa.015.0.lcssa = phi ptr [ %2, %bb.a ], [ %.sroa.015.1, %bb.d ] ; 2 uses
  %.sroa.019.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.019.1, %bb.d ] ; 2 uses
  %.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.s, %bb.d ] ; 2 uses
  %i.v = ptrtoint ptr %1 to i64
  %i.w = ptrtoint ptr %.sroa.019.0.lcssa to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 6                   ; 2 uses
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %.critedge, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %i.y, %.critedge ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %.0.lcssa, %.critedge ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i ], [ %.sroa.019.0.lcssa, %.critedge ] ; 2 uses
  %i.aa = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN11flatbuffers12IncludedFileaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.0910.i.i.i.i.i) #28 ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 64 ; 2 uses
  %i.ad = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ae = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.ae, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, !llvm.loop !11

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit: ; preds = %.lr.ph.i.i.i.i.i, %.critedge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.0.lcssa, %.critedge ], [ %i.ac, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.af = ptrtoint ptr %3 to i64
  %i.ag = ptrtoint ptr %.sroa.015.0.lcssa to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 6                 ; 2 uses
  %i.aj = icmp sgt i64 %i.ai, 0
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i10, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit14

.lr.ph.i.i.i.i.i10:                               ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, %.lr.ph.i.i.i.i.i10
  %.012.i.i.i.i.i11 = phi i64 [ %i.an, %.lr.ph.i.i.i.i.i10 ], [ %i.ai, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit ] ; 2 uses
  %.0811.i.i.i.i.i12 = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i10 ], [ %.08.lcssa.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit ] ; 2 uses
  %.0910.i.i.i.i.i13 = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i10 ], [ %.sroa.015.0.lcssa, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit ] ; 2 uses
  %i.ak = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN11flatbuffers12IncludedFileaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %.0811.i.i.i.i.i12, ptr noundef nonnull align 8 dereferenceable(64) %.0910.i.i.i.i.i13) #28 ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12, i64 64 ; 2 uses
  %i.an = add nsw i64 %.012.i.i.i.i.i11, -1
  %i.ao = icmp samesign ugt i64 %.012.i.i.i.i.i11, 1
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i10, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit14, !llvm.loop !11

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit14: ; preds = %.lr.ph.i.i.i.i.i10, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %.08.lcssa.i.i.i.i.i9 = phi ptr [ %.08.lcssa.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit ], [ %i.am, %.lr.ph.i.i.i.i.i10 ]
  ret ptr %.08.lcssa.i.i.i.i.i9
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZSt12__move_mergeIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr %4) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne ptr %0, %1
  %i.b = icmp ne ptr %2, %3
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.030 = phi ptr [ %.1, %bb.d ], [ %0, %bb.a ]   ; 5 uses
  %.01628 = phi ptr [ %.117, %bb.d ], [ %2, %bb.a ] ; 5 uses
  %.sroa.0.027 = phi ptr [ %i.t, %bb.d ], [ %4, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01628, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !53   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.030, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !53   ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.e) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.030, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %.01628, i64 32
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !37
  %i.m = tail call i32 @memcmp(ptr noundef %i.l, ptr noundef %i.k, i64 noundef %.sroa.speculated.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN11flatbuffers12IncludedFileES5_EEbT_T0_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %.lr.ph
  %i.n = sub i64 %i.e, %i.g
  %spec.select7.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.n, i64 -2147483648)
  %.08.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN11flatbuffers12IncludedFileES5_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN11flatbuffers12IncludedFileES5_EEbT_T0_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.m, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.o = icmp slt i32 %.0.i.i.i.i, 0
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN11flatbuffers12IncludedFileES5_EEbT_T0_.exit
  %i.p = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN11flatbuffers12IncludedFileaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.027, ptr noundef nonnull align 8 dereferenceable(64) %.01628) #28 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.01628, i64 64
  br label %bb.d

bb.c:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN11flatbuffers12IncludedFileES5_EEbT_T0_.exit
  %i.r = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN11flatbuffers12IncludedFileaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.027, ptr noundef nonnull align 8 dereferenceable(64) %.030) #28 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.030, i64 64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.117 = phi ptr [ %i.q, %bb.b ], [ %.01628, %bb.c ] ; 3 uses
  %.1 = phi ptr [ %.030, %bb.b ], [ %i.s, %bb.c ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.027, i64 64 ; 2 uses
  %i.u = icmp ne ptr %.1, %1
  %i.v = icmp ne ptr %.117, %3
  %i.w = select i1 %i.u, i1 %i.v, i1 false
  br i1 %i.w, label %.lr.ph, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.sroa.0.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.t, %bb.d ] ; 4 uses
  %.016.lcssa = phi ptr [ %2, %bb.a ], [ %.117, %bb.d ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.1, %bb.d ] ; 2 uses
  %i.x = ptrtoint ptr %1 to i64
  %i.y = ptrtoint ptr %.0.lcssa to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 6                  ; 2 uses
  %i.ab = icmp sgt i64 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.af, %.lr.ph.i.i.i.i.i ], [ %i.aa, %._crit_edge ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.0.lcssa, %._crit_edge ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %.0.lcssa, %._crit_edge ] ; 2 uses
  %i.ac = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN11flatbuffers12IncludedFileaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.0910.i.i.i.i.i) #28 ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 64 ; 2 uses
  %i.af = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ag = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.ag, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit, !llvm.loop !11

_ZSt4moveIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit: ; preds = %.lr.ph.i.i.i.i.i, %._crit_edge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa, %._crit_edge ], [ %i.ae, %.lr.ph.i.i.i.i.i ]
  %i.ah = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64 ; 2 uses
  %i.ai = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa, i64 %i.aj ; 3 uses
  %i.al = ptrtoint ptr %3 to i64
  %i.am = ptrtoint ptr %.016.lcssa to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 6                 ; 2 uses
  %i.ap = icmp sgt i64 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i19, label %_ZSt4moveIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit23

.lr.ph.i.i.i.i.i19:                               ; preds = %_ZSt4moveIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit, %.lr.ph.i.i.i.i.i19
  %.012.i.i.i.i.i20 = phi i64 [ %i.at, %.lr.ph.i.i.i.i.i19 ], [ %i.ao, %_ZSt4moveIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit ] ; 2 uses
  %.0811.i.i.i.i.i21 = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i19 ], [ %i.ak, %_ZSt4moveIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit ] ; 2 uses
  %.0910.i.i.i.i.i22 = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i19 ], [ %.016.lcssa, %_ZSt4moveIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit ] ; 2 uses
  %i.aq = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN11flatbuffers12IncludedFileaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %.0811.i.i.i.i.i21, ptr noundef nonnull align 8 dereferenceable(64) %.0910.i.i.i.i.i22) #28 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21, i64 64 ; 2 uses
  %i.at = add nsw i64 %.012.i.i.i.i.i20, -1
  %i.au = icmp samesign ugt i64 %.012.i.i.i.i.i20, 1
  br i1 %i.au, label %.lr.ph.i.i.i.i.i19, label %_ZSt4moveIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit23, !llvm.loop !11

_ZSt4moveIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit23: ; preds = %.lr.ph.i.i.i.i.i19, %_ZSt4moveIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit
  %.08.lcssa.i.i.i.i.i18 = phi ptr [ %i.ak, %_ZSt4moveIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit ], [ %i.as, %.lr.ph.i.i.i.i.i19 ]
  %5 = ptrtoint ptr %.08.lcssa.i.i.i.i.i18 to i64
  %i.av = sub i64 %5, %i.ah
  %i.aw = getelementptr inbounds i8, ptr %i.ak, i64 %i.av
  ret ptr %i.aw
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES4_S8_NS0_5__ops15_Iter_less_iterEEvT_SB_T0_SC_T1_T2_(ptr %0, ptr %1, ptr noundef %2, ptr noundef %3, ptr %4) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64
  %i.c = ptrtoint ptr %2 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 6                   ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.j, %.lr.ph.i.i.i.i.i ], [ %i.e, %bb.b ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i ], [ %4, %bb.b ]
  %.078.i.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i.i ], [ %3, %bb.b ]
  %i.g = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -64 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -64 ; 2 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN11flatbuffers12IncludedFileaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(64) %i.g) #28 ; 0 uses
  %i.j = add nsw i64 %.010.i.i.i.i.i, -1
  %i.k = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.k, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit, !llvm.loop !13

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq ptr %2, %3
  br i1 %i.l, label %_ZSt13move_backwardIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds i8, ptr %3, i64 -64
  br label %.outer

.outer:                                           ; preds = %bb.f, %bb.d
  %.sroa.027.0.ph.pn = phi ptr [ %1, %bb.d ], [ %.sroa.027.0.ph, %bb.f ] ; 3 uses
  %.sroa.0.0.ph = phi ptr [ %4, %bb.d ], [ %i.z, %bb.f ]
  %.0.ph = phi ptr [ %i.m, %bb.d ], [ %.0, %bb.f ]
  %.sroa.027.0.ph = getelementptr inbounds i8, ptr %.sroa.027.0.ph.pn, i64 -64 ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %.sroa.027.0.ph.pn, i64 -24
  %i.o = getelementptr inbounds i8, ptr %.sroa.027.0.ph.pn, i64 -32
  br label %bb.e

bb.e:                                             ; preds = %.outer, %bb.i
  %.sroa.0.0 = phi ptr [ %i.z, %bb.i ], [ %.sroa.0.0.ph, %.outer ]
  %.0 = phi ptr [ %i.ap, %bb.i ], [ %.0.ph, %.outer ] ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !53   ; 2 uses
  %i.r = load i64, ptr %i.n, align 8, !tbaa !53   ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %i.q) ; 2 uses
  %i.s = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.s, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !37
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !37
  %i.w = tail call i32 @memcmp(ptr noundef %i.v, ptr noundef %i.u, i64 noundef %.sroa.speculated.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN11flatbuffers12IncludedFileENS_17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEEbT_T0_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.e
  %i.x = sub i64 %i.q, %i.r
  %spec.select7.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.x, i64 -2147483648)
  %.08.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN11flatbuffers12IncludedFileENS_17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN11flatbuffers12IncludedFileENS_17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEEbT_T0_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.w, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.y = icmp slt i32 %.0.i.i.i.i, 0
  %i.z = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -64 ; 5 uses
  br i1 %i.y, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN11flatbuffers12IncludedFileENS_17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEEbT_T0_.exit
  %i.aa = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN11flatbuffers12IncludedFileaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.z, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.027.0.ph) #28 ; 0 uses
  %i.ab = icmp eq ptr %0, %.sroa.027.0.ph
  br i1 %i.ab, label %bb.g, label %.outer, !llvm.loop !1076

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %.0, i64 64 ; 2 uses
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %2 to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 6                 ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, 0
  br i1 %i.ah, label %.lr.ph.i.i.i.i.i19, label %_ZSt13move_backwardIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit

.lr.ph.i.i.i.i.i19:                               ; preds = %bb.g, %.lr.ph.i.i.i.i.i19
  %.010.i.i.i.i.i20 = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i19 ], [ %i.ag, %bb.g ] ; 2 uses
  %.069.i.i.i.i.i21 = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i19 ], [ %i.z, %bb.g ]
  %.078.i.i.i.i.i22 = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i19 ], [ %i.ac, %bb.g ]
  %i.ai = getelementptr inbounds i8, ptr %.078.i.i.i.i.i22, i64 -64 ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i21, i64 -64 ; 2 uses
  %i.ak = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN11flatbuffers12IncludedFileaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.aj, ptr noundef nonnull align 8 dereferenceable(64) %i.ai) #28 ; 0 uses
  %i.al = add nsw i64 %.010.i.i.i.i.i20, -1
  %i.am = icmp samesign ugt i64 %.010.i.i.i.i.i20, 1
  br i1 %i.am, label %.lr.ph.i.i.i.i.i19, label %_ZSt13move_backwardIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit, !llvm.loop !13

bb.h:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN11flatbuffers12IncludedFileENS_17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEEbT_T0_.exit
  %i.an = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN11flatbuffers12IncludedFileaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.z, ptr noundef nonnull align 8 dereferenceable(64) %.0) #28 ; 0 uses
  %i.ao = icmp eq ptr %2, %.0
  br i1 %i.ao, label %_ZSt13move_backwardIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds i8, ptr %.0, i64 -64
  br label %bb.e, !llvm.loop !1076

_ZSt13move_backwardIPN11flatbuffers12IncludedFileEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit: ; preds = %bb.h, %.lr.ph.i.i.i.i.i19, %.lr.ph.i.i.i.i.i, %bb.g, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_SC_T1_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond88 = or i1 %i.a, %i.b
  br i1 %or.cond88, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr8393 = phi i64 [ %4, %.lr.ph ], [ %i.bu, %tailrecurse ] ; 4 uses
  %.tr8292 = phi i64 [ %3, %.lr.ph ], [ %i.bt, %tailrecurse ] ; 4 uses
  %.tr8090 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 8 uses
  %.tr89 = phi ptr [ %0, %.lr.ph ], [ %i.bs, %tailrecurse ] ; 8 uses
  %i.d = add nsw i64 %.tr8393, %.tr8292
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.tr8090, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !53   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.tr89, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !53   ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  %i.j = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.j, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.tr89, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %.tr8090, i64 32
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !37
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !37
  %i.o = tail call i32 @memcmp(ptr noundef %i.n, ptr noundef %i.m, i64 noundef %.sroa.speculated.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.c
  %i.p = sub i64 %i.g, %i.i
  %spec.select7.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.p, i64 -2147483648)
  %.08.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.o, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.q = icmp slt i32 %.0.i.i.i.i, 0
  br i1 %i.q, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit
  tail call void @_ZSt4swapIN11flatbuffers12IncludedFileEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_(ptr noundef nonnull align 8 dereferenceable(64) %.tr89, ptr noundef nonnull align 8 dereferenceable(64) %.tr8090) #28
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.r = icmp sgt i64 %.tr8292, %.tr8393
  %i.s = ptrtoint ptr %.tr8090 to i64             ; 4 uses
  br i1 %i.r, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit49

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.t = sdiv i64 %.tr8292, 2                     ; 2 uses
  %i.u = getelementptr inbounds [64 x i8], ptr %.tr89, i64 %i.t ; 3 uses
  %i.v = sub i64 %i.c, %i.s
  %i.w = ashr exact i64 %i.v, 6                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 0
  br i1 %i.x, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !53   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.016.i = phi i64 [ %i.w, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.i ] ; 2 uses
  %.sroa.011.015.i = phi ptr [ %.tr8090, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.sroa.011.1.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN11flatbuffers12IncludedFileESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.i ] ; 2 uses
  %i.ac = lshr i64 %.016.i, 1                     ; 3 uses
  %i.ad = getelementptr inbounds nuw [64 x i8], ptr %.sroa.011.015.i, i64 %i.ac ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !53 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %i.af) ; 2 uses
  %i.ag = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.ag, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
end_hunk_1
