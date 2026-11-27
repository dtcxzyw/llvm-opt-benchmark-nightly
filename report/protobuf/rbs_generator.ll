Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/rbs_generator?download=true
inline.NumInlined: 2689
inline.NumDeleted: 1130
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN6google8protobuf8compiler4ruby26GenerateEnumTypeDefinitionEPKNS0_14EnumDescriptorEPNS0_2io7PrinterE:bb.a
  %.not = icmp eq ptr %i.oo, %.sroa.12.0.lcssa
  br i1 %.not, label %._crit_edge654, label %bb.bt

bb.ch:                                            ; preds = %.noexc.i.i, %._crit_edge648
  %i.op = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284

bb.ci:                                            ; preds = %bb.ce
  %i.oq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281

bb.cj:                                            ; preds = %bb.cf
  %i.or = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.os = load ptr, ptr %27, align 8, !tbaa !119  ; 2 uses
  %i.ot = icmp eq ptr %i.os, %i.kt
  br i1 %i.ot, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279: ; preds = %bb.cj
  %i.ou = load i64, ptr %i.kt, align 8, !tbaa !121
  %i.ov = add i64 %i.ou, 1
  call void @_ZdlPvm(ptr noundef %i.os, i64 noundef %i.ov) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281: ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279, %bb.ci
  %.pn161 = phi { ptr, i32 } [ %i.oq, %bb.ci ], [ %i.or, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279 ], [ %i.or, %bb.cj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  %i.ow = load ptr, ptr %25, align 8, !tbaa !119  ; 2 uses
  %i.ox = icmp eq ptr %i.ow, %i.kr
  br i1 %i.ox, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281
  %i.oy = load i64, ptr %i.kr, align 8, !tbaa !121
  %i.oz = add i64 %i.oy, 1
  call void @_ZdlPvm(ptr noundef %i.ow, i64 noundef %i.oz) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282, %bb.ch
  %.pn161.pn = phi { ptr, i32 } [ %i.op, %bb.ch ], [ %.pn161, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282 ], [ %.pn161, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  %i.pa = load ptr, ptr %24, align 8, !tbaa !119  ; 2 uses
  %i.pb = icmp eq ptr %i.pa, %i.kl
  br i1 %i.pb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284
  %i.pc = load i64, ptr %i.kl, align 8, !tbaa !121
  %i.pd = add i64 %i.pc, 1
  call void @_ZdlPvm(ptr noundef %i.pa, i64 noundef %i.pd) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  br label %bb.ck

bb.ck:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287, %bb.ca
  %.pn165.pn = phi { ptr, i32 } [ %i.nn, %bb.ca ], [ %.pn161.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287 ] ; 2 uses
  %i.pe = load ptr, ptr %19, align 8, !tbaa !119  ; 2 uses
  %i.pf = icmp eq ptr %i.pe, %i.ku
  br i1 %i.pf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288: ; preds = %bb.ck
  %i.pg = load i64, ptr %i.ku, align 8, !tbaa !121
  %i.ph = add i64 %i.pg, 1
  call void @_ZdlPvm(ptr noundef %i.pe, i64 noundef %i.ph) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290: ; preds = %bb.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288, %bb.by
  %.pn165.pn.pn = phi { ptr, i32 } [ %i.mz, %bb.by ], [ %.pn165.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288 ], [ %.pn165.pn, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  br label %.body199

bb.cl:                                            ; preds = %._crit_edge654
  %i.pi = load ptr, ptr %28, align 8, !tbaa !119  ; 2 uses
  %i.pj = icmp eq ptr %i.pi, %i.kv
  br i1 %i.pj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i292, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291: ; preds = %bb.cl
  %i.pk = load i64, ptr %i.kv, align 8, !tbaa !121
  %i.pl = add i64 %i.pk, 1
  call void @_ZdlPvm(ptr noundef %i.pi, i64 noundef %i.pl) #25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i292

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i292: ; preds = %bb.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #24
  %i.pm = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 6 uses
  store ptr %i.pm, ptr %29, align 8, !tbaa !122, !alias.scope !445
  store i16 8316, ptr %i.pm, align 8, !alias.scope !445
  %i.pn = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 2, ptr %i.pn, align 8, !tbaa !120, !alias.scope !445
  %i.po = getelementptr inbounds nuw i8, ptr %29, i64 18
  store i8 0, ptr %i.po, align 2, !tbaa !121, !alias.scope !445
  invoke void @_ZN6google8protobuf2io7Printer5PrintIJA4_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvSt17basic_string_viewIcS8_EDpRKT_(ptr noundef nonnull align 16 dereferenceable(296) %1, i64 9, ptr nonnull @.str.47, ptr noundef nonnull align 1 dereferenceable(4) @.str.44, ptr noundef nonnull align 8 dereferenceable(32) %29)
          to label %bb.cm unwind label %bb.dd

bb.cm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i292
  %i.pp = load ptr, ptr %29, align 8, !tbaa !119  ; 2 uses
  %i.pq = icmp eq ptr %i.pp, %i.pm
  br i1 %i.pq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i296

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i296: ; preds = %bb.cm
  %i.pr = load i64, ptr %i.pm, align 8, !tbaa !121
  %i.ps = add i64 %i.pr, 1
  call void @_ZdlPvm(ptr noundef %i.pp, i64 noundef %i.ps) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298: ; preds = %bb.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i296
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24
  invoke void @_ZN6google8protobuf2io7Printer7OutdentENS2_14SourceLocationE(ptr noundef nonnull align 16 dereferenceable(296) %1)
          to label %bb.cn unwind label %.loopexit.split-lp.loopexit.split-lp

bb.cn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i.i299 = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i299, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 1, ptr nonnull @.str.7)
          to label %bb.cp unwind label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.pt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %.body199

bb.cp:                                            ; preds = %bb.cn
  %i.pu = load i64, ptr %8, align 8, !tbaa !144   ; 2 uses
  %i.pv = icmp eq i64 %i.pu, 0
  br i1 %i.pv, label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit.i300, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.pw = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i299, align 8, !tbaa !121
  %i.px = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.py = load i64, ptr %i.px, align 8, !tbaa !145
  %i.pz = and i64 %i.py, 65536
  %i.qa = icmp ne i64 %i.pz, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.pu, ptr noundef %i.pw, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.qa)
          to label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit.i300 unwind label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.qb = landingpad { ptr, i32 }
          catch ptr null
  %i.qc = extractvalue { ptr, i32 } %i.qb, 0
  call void @__clang_call_terminate(ptr %i.qc) #27
  unreachable

_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit.i300: ; preds = %bb.cq, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i304 = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i304, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 18, ptr nonnull @.str.48)
          to label %bb.ct unwind label %bb.cs

bb.cs:                                            ; preds = %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit.i300
  %i.qd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %.body199

bb.ct:                                            ; preds = %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit.i300
  %i.qe = load i64, ptr %7, align 8, !tbaa !144   ; 2 uses
  %i.qf = icmp eq i64 %i.qe, 0
  br i1 %i.qf, label %bb.cw, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.qg = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i304, align 8, !tbaa !121
  %i.qh = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.qi = load i64, ptr %i.qh, align 8, !tbaa !145
  %i.qj = and i64 %i.qi, 65536
  %i.qk = icmp ne i64 %i.qj, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.qe, ptr noundef %i.qg, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.qk)
          to label %bb.cw unwind label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ql = landingpad { ptr, i32 }
          catch ptr null
  %i.qm = extractvalue { ptr, i32 } %i.ql, 0
  call void @__clang_call_terminate(ptr %i.qm) #27
  unreachable

bb.cw:                                            ; preds = %bb.cu, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.qn = load i64, ptr %i.am, align 8, !tbaa !224
  %i.qo = load i64, ptr %i.ao, align 8, !tbaa !225
  %i.qp = add i64 %i.qo, %i.qn
  store i64 %i.qp, ptr %i.ao, align 8, !tbaa !225
  %i.qq = load i32, ptr %i.bb, align 4, !tbaa !436
  %i.qr = icmp sgt i32 %i.qq, 0
  br i1 %i.qr, label %.lr.ph659, label %._crit_edge660

.lr.ph659:                                        ; preds = %bb.cw
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 10 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %30, i64 18 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 9 uses
  %i.qy = ptrtoint ptr %i.qx to i64               ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 12 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  %i.rc = load ptr, ptr %i.qs, align 8, !tbaa !437 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #24
  store ptr %i.qt, ptr %30, align 8, !tbaa !122, !alias.scope !446
  store i16 8224, ptr %i.qt, align 8, !alias.scope !446
  store i64 2, ptr %i.qu, align 8, !tbaa !120, !alias.scope !446
  store i8 0, ptr %i.qv, align 2, !tbaa !121, !alias.scope !446
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #24
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 8
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !186 ; 2 uses
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !119
  %i.rg = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  %i.rh = load i64, ptr %i.rg, align 8, !tbaa !120
  store i64 %i.rh, ptr %31, align 8
  store ptr %i.rf, ptr %i.qw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #24
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rc, i64 4
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !187
  %i.rk = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.rj, ptr noundef nonnull %i.qx)
          to label %bb.cx unwind label %.loopexit.split-lp.loopexit.split-lp893.loopexit.split-lp

bb.cx:                                            ; preds = %.lr.ph659
  %i.rl = ptrtoint ptr %i.rk to i64
  %i.rm = sub i64 %i.rl, %i.qy                    ; 5 uses
  store i64 %i.rm, ptr %33, align 8, !tbaa !133
  store ptr %i.qx, ptr %i.qz, align 8, !tbaa !134
  call void @llvm.experimental.noalias.scope.decl(metadata !447)
  store ptr %i.ra, ptr %32, align 8, !tbaa !122, !alias.scope !447
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24, !noalias !447
  store i64 %i.rm, ptr %i.b, align 8, !tbaa !123, !noalias !447
  %i.rn = icmp ugt i64 %i.rm, 15
  br i1 %i.rn, label %.noexc.i.i324.peel, label %._crit_edge.i.i.i323.peel

.noexc.i.i324.peel:                               ; preds = %bb.cx
  %i.ro = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc327.peel unwind label %.loopexit.split-lp.loopexit.split-lp893.loopexit.split-lp ; 2 uses

.noexc327.peel:                                   ; preds = %.noexc.i.i324.peel
  store ptr %i.ro, ptr %32, align 8, !tbaa !119, !alias.scope !447
  %i.rp = load i64, ptr %i.b, align 8, !tbaa !123, !noalias !447
  store i64 %i.rp, ptr %i.ra, align 8, !tbaa !121, !alias.scope !447
  br label %._crit_edge.i.i.i323.peel

._crit_edge.i.i.i323.peel:                        ; preds = %.noexc327.peel, %bb.cx
  %i.rq = phi ptr [ %i.ro, %.noexc327.peel ], [ %i.ra, %bb.cx ] ; 2 uses
  switch i64 %i.rm, label %bb.cz [
    i64 1, label %bb.cy
    i64 0, label %bb.da
  ]

bb.cy:                                            ; preds = %._crit_edge.i.i.i323.peel
  %i.rr = load i8, ptr %i.qx, align 8, !tbaa !121
  store i8 %i.rr, ptr %i.rq, align 1, !tbaa !121
  br label %bb.da

bb.cz:                                            ; preds = %._crit_edge.i.i.i323.peel
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rq, ptr nonnull align 8 %i.qx, i64 %i.rm, i1 false)
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy, %._crit_edge.i.i.i323.peel
  %i.rs = load i64, ptr %i.b, align 8, !tbaa !123, !noalias !447 ; 2 uses
  store i64 %i.rs, ptr %i.rb, align 8, !tbaa !120, !alias.scope !447
  %i.rt = load ptr, ptr %32, align 8, !tbaa !119, !alias.scope !447
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 %i.rs
  store i8 0, ptr %i.ru, align 1, !tbaa !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24, !noalias !447
  invoke void @_ZN6google8protobuf2io7Printer5PrintIJA4_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA5_cSt17basic_string_viewIcS8_EA7_cSA_EEEvSD_DpRKT_(ptr noundef nonnull align 16 dereferenceable(296) %1, i64 32, ptr nonnull @.str.49, ptr noundef nonnull align 1 dereferenceable(4) @.str.44, ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 1 dereferenceable(5) @.str.35, ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef nonnull align 1 dereferenceable(7) @.str.36, ptr noundef nonnull align 8 dereferenceable(32) %32)
          to label %bb.db unwind label %.loopexit.split-lp722.loopexit.split-lp.loopexit.split-lp

bb.db:                                            ; preds = %bb.da
  %i.rv = load ptr, ptr %32, align 8, !tbaa !119  ; 2 uses
  %i.rw = icmp eq ptr %i.rv, %i.ra
  br i1 %i.rw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329.peel: ; preds = %bb.db
  %i.rx = load i64, ptr %i.ra, align 8, !tbaa !121
  %i.ry = add i64 %i.rx, 1
  call void @_ZdlPvm(ptr noundef %i.rv, i64 noundef %i.ry) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331.peel: ; preds = %bb.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #24
  %i.rz = load ptr, ptr %30, align 8, !tbaa !119  ; 2 uses
  %i.sa = icmp eq ptr %i.rz, %i.qt
  br i1 %i.sa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331.peel
  %i.sb = load i64, ptr %i.qt, align 8, !tbaa !121
  %i.sc = add i64 %i.sb, 1
  call void @_ZdlPvm(ptr noundef %i.rz, i64 noundef %i.sc) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #24
  %i.sd = load i32, ptr %i.bb, align 4, !tbaa !436
  %i.se = icmp sgt i32 %i.sd, 1
  br i1 %i.se, label %.peel.next, label %._crit_edge660

._crit_edge660:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334.peel, %bb.cw
  %.1495.lcssa = phi i16 [ 8224, %bb.cw ], [ 8316, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334.peel ], [ 8316, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #24
  %i.sf = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 6 uses
  store ptr %i.sf, ptr %34, align 8, !tbaa !122, !alias.scope !448
  store i16 %.1495.lcssa, ptr %i.sf, align 8, !alias.scope !448
  %i.sg = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i64 2, ptr %i.sg, align 8, !tbaa !120, !alias.scope !448
  %i.sh = getelementptr inbounds nuw i8, ptr %34, i64 18
  store i8 0, ptr %i.sh, align 2, !tbaa !121, !alias.scope !448
  invoke void @_ZN6google8protobuf2io7Printer5PrintIJA4_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvSt17basic_string_viewIcS8_EDpRKT_(ptr noundef nonnull align 16 dereferenceable(296) %1, i64 33, ptr nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(4) @.str.44, ptr noundef nonnull align 8 dereferenceable(32) %34)
          to label %bb.dj unwind label %bb.dr

bb.dc:                                            ; preds = %._crit_edge654
  %i.si = landingpad { ptr, i32 }
          cleanup
  %i.sj = load ptr, ptr %28, align 8, !tbaa !119  ; 2 uses
  %i.sk = icmp eq ptr %i.sj, %i.kv
  br i1 %i.sk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310: ; preds = %bb.dc
  %i.sl = load i64, ptr %i.kv, align 8, !tbaa !121
  %i.sm = add i64 %i.sl, 1
  call void @_ZdlPvm(ptr noundef %i.sj, i64 noundef %i.sm) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312: ; preds = %bb.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24
  br label %.body199

bb.dd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i292
  %i.sn = landingpad { ptr, i32 }
          cleanup
  %i.so = load ptr, ptr %29, align 8, !tbaa !119  ; 2 uses
  %i.sp = icmp eq ptr %i.so, %i.pm
  br i1 %i.sp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313: ; preds = %bb.dd
  %i.sq = load i64, ptr %i.pm, align 8, !tbaa !121
  %i.sr = add i64 %i.sq, 1
  call void @_ZdlPvm(ptr noundef %i.so, i64 noundef %i.sr) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315: ; preds = %bb.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24
  br label %.body199

.loopexit503:                                     ; preds = %bb.bw
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body199

.loopexit.split-lp.loopexit:                      ; preds = %bb.ap, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %.sroa.17.0636.lcssa692 = phi ptr [ %.sroa.17.0636, %bb.ap ], [ %.sroa.12.0637, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i ]
  %lpad.loopexit510 = landingpad { ptr, i32 }
          cleanup
  br label %.body199

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298
  %.sroa.17.0628 = phi ptr [ %.sroa.12.0637, %bb.ba ], [ %.sroa.17.0.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348 ], [ %.sroa.17.0.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298 ]
  %.sroa.0470.0594 = phi ptr [ %.sroa.0470.0638, %bb.ba ], [ %.sroa.0470.0.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348 ], [ %.sroa.0470.0.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298 ]
  %lpad.loopexit.split-lp511 = landingpad { ptr, i32 }
          cleanup
  br label %.body199

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334
  %indvars.iv714 = phi i64 [ %indvars.iv.next715, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334.peel ] ; 2 uses
  %i.ss = load ptr, ptr %i.qs, align 8, !tbaa !437
  %i.st = getelementptr inbounds nuw [48 x i8], ptr %i.ss, i64 %indvars.iv714 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #24
  store ptr %i.qt, ptr %30, align 8, !tbaa !122, !alias.scope !446
  store i16 8316, ptr %i.qt, align 8, !alias.scope !446
  store i64 2, ptr %i.qu, align 8, !tbaa !120, !alias.scope !446
  store i8 0, ptr %i.qv, align 2, !tbaa !121, !alias.scope !446
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #24
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 8
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !186 ; 2 uses
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !119
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sv, i64 8
  %i.sy = load i64, ptr %i.sx, align 8, !tbaa !120
  store i64 %i.sy, ptr %31, align 8
  store ptr %i.sw, ptr %i.qw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #24
  %i.sz = getelementptr inbounds nuw i8, ptr %i.st, i64 4
  %i.ta = load i32, ptr %i.sz, align 4, !tbaa !187
  %i.tb = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.ta, ptr noundef nonnull %i.qx)
          to label %bb.de unwind label %.loopexit.split-lp.loopexit.split-lp893.loopexit.split-lp

bb.de:                                            ; preds = %.peel.next
  %i.tc = ptrtoint ptr %i.tb to i64
  %i.td = sub i64 %i.tc, %i.qy                    ; 5 uses
  store i64 %i.td, ptr %33, align 8, !tbaa !133
  store ptr %i.qx, ptr %i.qz, align 8, !tbaa !134
  call void @llvm.experimental.noalias.scope.decl(metadata !449)
  store ptr %i.ra, ptr %32, align 8, !tbaa !122, !alias.scope !449
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24, !noalias !449
  store i64 %i.td, ptr %i.b, align 8, !tbaa !123, !noalias !449
  %i.te = icmp ugt i64 %i.td, 15
  br i1 %i.te, label %.noexc.i.i324, label %._crit_edge.i.i.i323

.noexc.i.i324:                                    ; preds = %bb.de
  %i.tf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc327 unwind label %.loopexit.split-lp.loopexit.split-lp893.loopexit.split-lp ; 2 uses

.noexc327:                                        ; preds = %.noexc.i.i324
  store ptr %i.tf, ptr %32, align 8, !tbaa !119, !alias.scope !449
  %i.tg = load i64, ptr %i.b, align 8, !tbaa !123, !noalias !449
  store i64 %i.tg, ptr %i.ra, align 8, !tbaa !121, !alias.scope !449
  br label %._crit_edge.i.i.i323

._crit_edge.i.i.i323:                             ; preds = %.noexc327, %bb.de
  %i.th = phi ptr [ %i.tf, %.noexc327 ], [ %i.ra, %bb.de ] ; 2 uses
  switch i64 %i.td, label %bb.dg [
    i64 1, label %bb.df
    i64 0, label %bb.dh
  ]

bb.df:                                            ; preds = %._crit_edge.i.i.i323
  %i.ti = load i8, ptr %i.qx, align 8, !tbaa !121
  store i8 %i.ti, ptr %i.th, align 1, !tbaa !121
  br label %bb.dh

bb.dg:                                            ; preds = %._crit_edge.i.i.i323
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.th, ptr nonnull align 8 %i.qx, i64 %i.td, i1 false)
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df, %._crit_edge.i.i.i323
  %i.tj = load i64, ptr %i.b, align 8, !tbaa !123, !noalias !449 ; 2 uses
  store i64 %i.tj, ptr %i.rb, align 8, !tbaa !120, !alias.scope !449
  %i.tk = load ptr, ptr %32, align 8, !tbaa !119, !alias.scope !449
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 %i.tj
  store i8 0, ptr %i.tl, align 1, !tbaa !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24, !noalias !449
  invoke void @_ZN6google8protobuf2io7Printer5PrintIJA4_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA5_cSt17basic_string_viewIcS8_EA7_cSA_EEEvSD_DpRKT_(ptr noundef nonnull align 16 dereferenceable(296) %1, i64 32, ptr nonnull @.str.49, ptr noundef nonnull align 1 dereferenceable(4) @.str.44, ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 1 dereferenceable(5) @.str.35, ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef nonnull align 1 dereferenceable(7) @.str.36, ptr noundef nonnull align 8 dereferenceable(32) %32)
          to label %bb.di unwind label %.loopexit.split-lp722.loopexit.split-lp.loopexit.split-lp

bb.di:                                            ; preds = %bb.dh
  %i.tm = load ptr, ptr %32, align 8, !tbaa !119  ; 2 uses
  %i.tn = icmp eq ptr %i.tm, %i.ra
  br i1 %i.tn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329: ; preds = %bb.di
  %i.to = load i64, ptr %i.ra, align 8, !tbaa !121
  %i.tp = add i64 %i.to, 1
  call void @_ZdlPvm(ptr noundef %i.tm, i64 noundef %i.tp) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331: ; preds = %bb.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #24
  %i.tq = load ptr, ptr %30, align 8, !tbaa !119  ; 2 uses
  %i.tr = icmp eq ptr %i.tq, %i.qt
  br i1 %i.tr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331
  %i.ts = load i64, ptr %i.qt, align 8, !tbaa !121
  %i.tt = add i64 %i.ts, 1
  call void @_ZdlPvm(ptr noundef %i.tq, i64 noundef %i.tt) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #24
  %indvars.iv.next715 = add nuw nsw i64 %indvars.iv714, 1 ; 2 uses
  %i.tu = load i32, ptr %i.bb, align 4, !tbaa !436
  %i.tv = sext i32 %i.tu to i64
  %i.tw = icmp slt i64 %indvars.iv.next715, %i.tv
  br i1 %i.tw, label %.peel.next, label %._crit_edge660, !llvm.loop !426

.loopexit.split-lp.loopexit.split-lp893.loopexit.split-lp: ; preds = %.noexc.i.i324, %.peel.next, %.lr.ph659, %.noexc.i.i324.peel
  %lpad.loopexit.split-lp945 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337

.loopexit.split-lp722.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dh, %bb.da
  %lpad.loopexit.split-lp947 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tx = load ptr, ptr %32, align 8, !tbaa !119  ; 2 uses
  %i.ty = icmp eq ptr %i.tx, %i.ra
  br i1 %i.ty, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335: ; preds = %.loopexit.split-lp722.loopexit.split-lp.loopexit.split-lp
  %i.tz = load i64, ptr %i.ra, align 8, !tbaa !121
  %i.ua = add i64 %i.tz, 1
  call void @_ZdlPvm(ptr noundef %i.tx, i64 noundef %i.ua) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337: ; preds = %.loopexit.split-lp722.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp893.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335
  %.pn156 = phi { ptr, i32 } [ %lpad.loopexit.split-lp947, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335 ], [ %lpad.loopexit.split-lp945, %.loopexit.split-lp.loopexit.split-lp893.loopexit.split-lp ], [ %lpad.loopexit.split-lp947, %.loopexit.split-lp722.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #24
  %i.ub = load ptr, ptr %30, align 8, !tbaa !119  ; 2 uses
  %i.uc = icmp eq ptr %i.ub, %i.qt
end_hunk_0
begin_hunk_1_@_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev:bb.a
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf8compiler4ruby22GenerateMessageInitMapEPKNS0_10DescriptorEPNS0_2io7PrinterE(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !617 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::flat_hash_map.104", align 8 ; 10 uses
  %3 = alloca %"class.absl::lts_20250512::flat_hash_map.104", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 18, ptr nonnull @.str.71)
          to label %bb.c unwind label %bb.b

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %bb.f, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.a, %bb.b ], [ %i.w, %bb.f ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %common.resume

bb.c:                                             ; preds = %bb.a
  %i.b = load i64, ptr %3, align 8, !tbaa !144    ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !121
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !145
  %i.g = and i64 %i.f, 65536
  %i.h = icmp ne i64 %i.g, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.b, ptr noundef %i.d, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.h)
          to label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #27
  unreachable

_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.l = load i64, ptr %i.k, align 8, !tbaa !224
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !225
  %i.o = add i64 %i.n, %i.l
  store i64 %i.o, ptr %i.m, align 8, !tbaa !225
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !244
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  br label %bb.j

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit
  call void @_ZN6google8protobuf2io7Printer7OutdentENS2_14SourceLocationE(ptr noundef nonnull align 16 dereferenceable(296) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i18 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i18, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 2, ptr nonnull @.str.74)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %common.resume

bb.g:                                             ; preds = %._crit_edge
  %i.x = load i64, ptr %2, align 8, !tbaa !144    ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit19, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i18, align 8, !tbaa !121
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !145
  %i.ac = and i64 %i.ab, 65536
  %i.ad = icmp ne i64 %i.ac, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.x, ptr noundef %i.z, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.ad)
          to label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit19 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #27
  unreachable

_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit19: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

bb.j:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.ag = load ptr, ptr %i.s, align 8, !tbaa !245
  %i.ah = getelementptr inbounds nuw [88 x i8], ptr %i.ag, i64 %indvars.iv ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZN6google8protobuf8compiler4ruby13FieldInitTypeB5cxx11EPKNS0_15FieldDescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !174 ; 2 uses
  %.0.copyload.i.i.i = load i16, ptr %i.aj, align 1
  %i.ak = zext i16 %.0.copyload.i.i.i to i64      ; 2 uses
  %i.al = xor i64 %i.ak, -1
  %i.am = getelementptr inbounds i8, ptr %i.aj, i64 %i.al
  store i64 %i.ak, ptr %5, align 8
  store ptr %i.am, ptr %i.t, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIJA5_cSt17basic_string_viewIcSt11char_traitsIcEES4_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEEvS8_DpRKT_(ptr noundef nonnull align 16 dereferenceable(296) %1, i64 16, ptr nonnull @.str.72, ptr noundef nonnull align 1 dereferenceable(5) @.str.35, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(5) @.str.70, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !174 ; 2 uses
  %.0.copyload.i.i.i20 = load i16, ptr %i.an, align 1
  %i.ao = zext i16 %.0.copyload.i.i.i20 to i64    ; 2 uses
  %i.ap = xor i64 %i.ao, -1
  %i.aq = getelementptr inbounds i8, ptr %i.an, i64 %i.ap
  store i64 %i.ao, ptr %6, align 8
  store ptr %i.aq, ptr %i.u, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIJA5_cSt17basic_string_viewIcSt11char_traitsIcEES4_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEEvS8_DpRKT_(ptr noundef nonnull align 16 dereferenceable(296) %1, i64 20, ptr nonnull @.str.73, ptr noundef nonnull align 1 dereferenceable(5) @.str.35, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 1 dereferenceable(5) @.str.70, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.ar = load ptr, ptr %4, align 8, !tbaa !119   ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.v
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.at = load i64, ptr %i.v, align 8, !tbaa !121
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.av = load i32, ptr %i.p, align 8, !tbaa !244
  %i.aw = sext i32 %i.av to i64
  %i.ax = icmp slt i64 %indvars.iv.next, %i.aw
  br i1 %i.ax, label %bb.j, label %._crit_edge, !llvm.loop !616

bb.m:                                             ; preds = %bb.j
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.az, %bb.n ], [ %i.ay, %bb.m ]
  %i.ba = load ptr, ptr %4, align 8, !tbaa !119   ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.v
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.o
  %i.bc = load i64, ptr %i.v, align 8, !tbaa !121
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf8compiler4ruby29GenerateIndexReaderDefinitionEPKNS0_10DescriptorEPNS0_2io7PrinterE(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !621 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::flat_hash_map.104", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 8, ptr nonnull @.str.75)
          to label %bb.c unwind label %bb.b

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.a, %bb.b ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %common.resume

bb.c:                                             ; preds = %bb.a
  %i.b = load i64, ptr %2, align 8, !tbaa !144    ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !121
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !145
  %i.g = and i64 %i.f, 65536
  %i.h = icmp ne i64 %i.g, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.b, ptr noundef %i.d, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.h)
          to label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #27
  unreachable

_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.l = load i64, ptr %i.k, align 8, !tbaa !224
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !225
  %i.o = add i64 %i.n, %i.l
  store i64 %i.o, ptr %i.m, align 8, !tbaa !225
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !244
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 18 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !245  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %i.t, ptr %3, align 8, !tbaa !122, !alias.scope !622
  store i16 8224, ptr %i.t, align 8, !alias.scope !622
  store i64 2, ptr %i.u, align 8, !tbaa !120, !alias.scope !622
  store i8 0, ptr %i.v, align 2, !tbaa !121, !alias.scope !622
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !174 ; 2 uses
  %.0.copyload.i.i.i.peel = load i16, ptr %i.ab, align 1
  %i.ac = zext i16 %.0.copyload.i.i.i.peel to i64 ; 2 uses
  %i.ad = xor i64 %i.ac, -1
  %i.ae = getelementptr inbounds i8, ptr %i.ab, i64 %i.ad
  store i64 %i.ac, ptr %4, align 8
  store ptr %i.ae, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZN6google8protobuf8compiler4ruby13FieldReadTypeB5cxx11EPKNS0_15FieldDescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull %i.z)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %.lr.ph
  invoke void @_ZN6google8protobuf8compiler4ruby9WrapUnionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.g unwind label %.loopexit.split-lp45.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6google8protobuf2io7Printer5PrintIJA4_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA5_cSt17basic_string_viewIcS8_ESB_SA_EEEvSD_DpRKT_(ptr noundef nonnull align 16 dereferenceable(296) %1, i64 31, ptr nonnull @.str.76, ptr noundef nonnull align 1 dereferenceable(4) @.str.44, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(5) @.str.35, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(5) @.str.70, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.h unwind label %.loopexit.split-lp50.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  %i.af = load ptr, ptr %5, align 8, !tbaa !119   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.x
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %bb.h
  %i.ah = load i64, ptr %i.x, align 8, !tbaa !121
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  %i.aj = load ptr, ptr %6, align 8, !tbaa !119   ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.y
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel
  %i.al = load i64, ptr %i.y, align 8, !tbaa !121
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.an = load ptr, ptr %3, align 8, !tbaa !119   ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.t
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.peel
  %i.ap = load i64, ptr %i.t, align 8, !tbaa !121
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.ar = load i32, ptr %i.p, align 8, !tbaa !244
  %i.as = icmp sgt i32 %i.ar, 1
  br i1 %i.as, label %.peel.next, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.peel, %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit
  call void @_ZN6google8protobuf2io7Printer7OutdentENS2_14SourceLocationE(ptr noundef nonnull align 16 dereferenceable(296) %1)
  ret void

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.peel ] ; 2 uses
  %i.at = load ptr, ptr %i.s, align 8, !tbaa !245
  %i.au = getelementptr inbounds nuw [88 x i8], ptr %i.at, i64 %indvars.iv ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %i.t, ptr %3, align 8, !tbaa !122, !alias.scope !622
  store i16 8316, ptr %i.t, align 8, !alias.scope !622
  store i64 2, ptr %i.u, align 8, !tbaa !120, !alias.scope !622
  store i8 0, ptr %i.v, align 2, !tbaa !121, !alias.scope !622
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !174 ; 2 uses
  %.0.copyload.i.i.i = load i16, ptr %i.aw, align 1
  %i.ax = zext i16 %.0.copyload.i.i.i to i64      ; 2 uses
  %i.ay = xor i64 %i.ax, -1
  %i.az = getelementptr inbounds i8, ptr %i.aw, i64 %i.ay
  store i64 %i.ax, ptr %4, align 8
  store ptr %i.az, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZN6google8protobuf8compiler4ruby13FieldReadTypeB5cxx11EPKNS0_15FieldDescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull %i.au)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %.peel.next
  invoke void @_ZN6google8protobuf8compiler4ruby9WrapUnionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.j unwind label %.loopexit.split-lp45.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6google8protobuf2io7Printer5PrintIJA4_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA5_cSt17basic_string_viewIcS8_ESB_SA_EEEvSD_DpRKT_(ptr noundef nonnull align 16 dereferenceable(296) %1, i64 31, ptr nonnull @.str.76, ptr noundef nonnull align 1 dereferenceable(4) @.str.44, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(5) @.str.35, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(5) @.str.70, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.k unwind label %.loopexit.split-lp50.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.ba = load ptr, ptr %5, align 8, !tbaa !119   ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.x
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.bc = load i64, ptr %i.x, align 8, !tbaa !121
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.be = load ptr, ptr %6, align 8, !tbaa !119   ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.y
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bg = load i64, ptr %i.y, align 8, !tbaa !121
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.bi = load ptr, ptr %3, align 8, !tbaa !119   ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.t
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %i.bk = load i64, ptr %i.t, align 8, !tbaa !121
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bm = load i32, ptr %i.p, align 8, !tbaa !244
  %i.bn = sext i32 %i.bm to i64
  %i.bo = icmp slt i64 %indvars.iv.next, %i.bn
  br i1 %i.bo, label %.peel.next, label %._crit_edge, !llvm.loop !620

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.peel.next, %.lr.ph
  %lpad.loopexit.split-lp76 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

.loopexit.split-lp45.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.i, %bb.f
  %lpad.loopexit.split-lp78 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

.loopexit.split-lp50.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = load ptr, ptr %5, align 8, !tbaa !119   ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.x
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %.loopexit.split-lp50.loopexit.split-lp.loopexit.split-lp
  %i.br = load i64, ptr %i.x, align 8, !tbaa !121
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %.loopexit.split-lp50.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp45.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ], [ %lpad.loopexit.split-lp78, %.loopexit.split-lp45.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp50.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.bt = load ptr, ptr %6, align 8, !tbaa !119   ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.y
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %i.bv = load i64, ptr %i.y, align 8, !tbaa !121
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28 ], [ %lpad.loopexit.split-lp76, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.bx = load ptr, ptr %3, align 8, !tbaa !119   ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.t
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %i.bz = load i64, ptr %i.t, align 8, !tbaa !121
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf2io7Printer5PrintIJA4_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA5_cSt17basic_string_viewIcS8_ESB_SA_EEEvSD_DpRKT_(ptr noundef nonnull align 16 dereferenceable(296) %0, i64 %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(5) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 1 dereferenceable(5) %7, ptr noundef nonnull align 8 dereferenceable(32) %8) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !635 {
bb.a:
  %9 = alloca [7 x %"class.std::basic_string_view"], align 16 ; 20 uses
  %10 = alloca %"class.absl::lts_20250512::flat_hash_map.104", align 8 ; 14 uses
  %11 = alloca %"struct.std::pair.107", align 8   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #24
  store i64 %i.a, ptr %9, align 16, !tbaa !133
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %3, ptr %i.b, align 8, !tbaa !134
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.d = load ptr, ptr %4, align 8, !tbaa !119
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !120
  store i64 %i.f, ptr %i.c, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #24
  store i64 %i.i, ptr %i.h, align 16, !tbaa !133
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 40
  store ptr %5, ptr %i.j, align 8, !tbaa !134
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !141
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 3 uses
  %i.m = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #24
  store i64 %i.m, ptr %i.l, align 16, !tbaa !133
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 72
  store ptr %7, ptr %i.n, align 8, !tbaa !134
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.p = load ptr, ptr %8, align 8, !tbaa !119
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !120
  store i64 %i.r, ptr %i.o, align 16
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 88
  store ptr %i.p, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 96
  store i64 0, ptr %i.t, align 16, !tbaa !133
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 104
  store ptr @.str.11, ptr %i.u, align 8, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  invoke void @_ZN4absl12lts_2025051218container_internal24ReserveTableToFitNewSizeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE18GetPolicyFunctionsEvE5value, i64 noundef 3)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader unwind label %bb.b

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader: ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE30find_or_prepare_insert_non_sooIS7_EESB_INSF_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.107") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %.noexc unwind label %bb.f

bb.b:                                             ; preds = %bb.a, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.2
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.noexc:                                           ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader
  %i.x = load i8, ptr %i.v, align 8, !tbaa !138, !range !139, !alias.scope !636, !noundef !140
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.c, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit

bb.c:                                             ; preds = %.noexc
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !636 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2.0.copyload.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !141
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 16 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !141
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit: ; preds = %bb.c, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE30find_or_prepare_insert_non_sooIS7_EESB_INSF_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.107") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %.noexc.1 unwind label %bb.f

.noexc.1:                                         ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit
  %i.ab = load i8, ptr %i.v, align 8, !tbaa !138, !range !139, !alias.scope !636, !noundef !140
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.d, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.1

bb.d:                                             ; preds = %.noexc.1
  %.sroa.2.0.copyload.i.i.i.i.i.i.1 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !636 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2.0.copyload.i.i.i.i.i.i.1, ptr noundef nonnull align 16 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !141
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 16 dereferenceable(16) %i.aa, i64 16, i1 false), !tbaa.struct !141
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.1

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.1: ; preds = %bb.d, %.noexc.1
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE30find_or_prepare_insert_non_sooIS7_EESB_INSF_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.107") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %.noexc.2 unwind label %bb.f

.noexc.2:                                         ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.1
  %i.af = load i8, ptr %i.v, align 8, !tbaa !138, !range !139, !alias.scope !636, !noundef !140
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.e, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.2

bb.e:                                             ; preds = %.noexc.2
  %.sroa.2.0.copyload.i.i.i.i.i.i.2 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !636 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2.0.copyload.i.i.i.i.i.i.2, ptr noundef nonnull align 16 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !141
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 16 dereferenceable(16) %i.ae, i64 16, i1 false), !tbaa.struct !141
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.2

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.2: ; preds = %bb.e, %.noexc.2
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 %1, ptr %2)
          to label %bb.g unwind label %bb.b

bb.f:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.j

bb.g:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.2
  %i.aj = load i64, ptr %10, align 8, !tbaa !144  ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !121
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !145
  %i.ao = and i64 %i.an, 65536
  %i.ap = icmp ne i64 %i.ao, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.aj, ptr noundef %i.al, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.ap)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #27
  unreachable

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  ret void

bb.j:                                             ; preds = %bb.f, %bb.b
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.f ], [ %i.w, %bb.b ]
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf8compiler4ruby29GenerateIndexWriterDefinitionEPKNS0_10DescriptorEPNS0_2io7PrinterE(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !640 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::flat_hash_map.104", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 9, ptr nonnull @.str.77)
          to label %bb.c unwind label %bb.b

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.a, %bb.b ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %common.resume

bb.c:                                             ; preds = %bb.a
  %i.b = load i64, ptr %2, align 8, !tbaa !144    ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !121
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !145
  %i.g = and i64 %i.f, 65536
  %i.h = icmp ne i64 %i.g, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.b, ptr noundef %i.d, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.h)
          to label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #27
  unreachable

_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.l = load i64, ptr %i.k, align 8, !tbaa !224
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !225
  %i.o = add i64 %i.n, %i.l
  store i64 %i.o, ptr %i.m, align 8, !tbaa !225
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !244
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 18 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !245  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %i.t, ptr %3, align 8, !tbaa !122, !alias.scope !641
  store i16 8224, ptr %i.t, align 8, !alias.scope !641
  store i64 2, ptr %i.u, align 8, !tbaa !120, !alias.scope !641
  store i8 0, ptr %i.v, align 2, !tbaa !121, !alias.scope !641
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !174 ; 2 uses
  %.0.copyload.i.i.i.peel = load i16, ptr %i.ab, align 1
  %i.ac = zext i16 %.0.copyload.i.i.i.peel to i64 ; 2 uses
  %i.ad = xor i64 %i.ac, -1
  %i.ae = getelementptr inbounds i8, ptr %i.ab, i64 %i.ad
  store i64 %i.ac, ptr %4, align 8
  store ptr %i.ae, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZN6google8protobuf8compiler4ruby14FieldWriteTypeB5cxx11EPKNS0_15FieldDescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull %i.z)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %.lr.ph
  invoke void @_ZN6google8protobuf8compiler4ruby9WrapUnionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.g unwind label %.loopexit.split-lp45.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6google8protobuf2io7Printer5PrintIJA4_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA5_cSt17basic_string_viewIcS8_ESB_SA_EEEvSD_DpRKT_(ptr noundef nonnull align 16 dereferenceable(296) %1, i64 43, ptr nonnull @.str.78, ptr noundef nonnull align 1 dereferenceable(4) @.str.44, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(5) @.str.35, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(5) @.str.70, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.h unwind label %.loopexit.split-lp50.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  %i.af = load ptr, ptr %5, align 8, !tbaa !119   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.x
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %bb.h
  %i.ah = load i64, ptr %i.x, align 8, !tbaa !121
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  %i.aj = load ptr, ptr %6, align 8, !tbaa !119   ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.y
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel
  %i.al = load i64, ptr %i.y, align 8, !tbaa !121
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.an = load ptr, ptr %3, align 8, !tbaa !119   ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.t
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.peel
  %i.ap = load i64, ptr %i.t, align 8, !tbaa !121
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.ar = load i32, ptr %i.p, align 8, !tbaa !244
  %i.as = icmp sgt i32 %i.ar, 1
  br i1 %i.as, label %.peel.next, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.peel, %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit
  call void @_ZN6google8protobuf2io7Printer7OutdentENS2_14SourceLocationE(ptr noundef nonnull align 16 dereferenceable(296) %1)
  ret void

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.peel ] ; 2 uses
  %i.at = load ptr, ptr %i.s, align 8, !tbaa !245
  %i.au = getelementptr inbounds nuw [88 x i8], ptr %i.at, i64 %indvars.iv ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %i.t, ptr %3, align 8, !tbaa !122, !alias.scope !641
  store i16 8316, ptr %i.t, align 8, !alias.scope !641
  store i64 2, ptr %i.u, align 8, !tbaa !120, !alias.scope !641
  store i8 0, ptr %i.v, align 2, !tbaa !121, !alias.scope !641
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !174 ; 2 uses
  %.0.copyload.i.i.i = load i16, ptr %i.aw, align 1
  %i.ax = zext i16 %.0.copyload.i.i.i to i64      ; 2 uses
  %i.ay = xor i64 %i.ax, -1
  %i.az = getelementptr inbounds i8, ptr %i.aw, i64 %i.ay
  store i64 %i.ax, ptr %4, align 8
  store ptr %i.az, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZN6google8protobuf8compiler4ruby14FieldWriteTypeB5cxx11EPKNS0_15FieldDescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull %i.au)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %.peel.next
  invoke void @_ZN6google8protobuf8compiler4ruby9WrapUnionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.j unwind label %.loopexit.split-lp45.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6google8protobuf2io7Printer5PrintIJA4_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA5_cSt17basic_string_viewIcS8_ESB_SA_EEEvSD_DpRKT_(ptr noundef nonnull align 16 dereferenceable(296) %1, i64 43, ptr nonnull @.str.78, ptr noundef nonnull align 1 dereferenceable(4) @.str.44, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(5) @.str.35, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(5) @.str.70, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.k unwind label %.loopexit.split-lp50.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.ba = load ptr, ptr %5, align 8, !tbaa !119   ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.x
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.bc = load i64, ptr %i.x, align 8, !tbaa !121
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.be = load ptr, ptr %6, align 8, !tbaa !119   ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.y
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bg = load i64, ptr %i.y, align 8, !tbaa !121
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.bi = load ptr, ptr %3, align 8, !tbaa !119   ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.t
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %i.bk = load i64, ptr %i.t, align 8, !tbaa !121
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bm = load i32, ptr %i.p, align 8, !tbaa !244
  %i.bn = sext i32 %i.bm to i64
  %i.bo = icmp slt i64 %indvars.iv.next, %i.bn
  br i1 %i.bo, label %.peel.next, label %._crit_edge, !llvm.loop !639

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.peel.next, %.lr.ph
  %lpad.loopexit.split-lp76 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

.loopexit.split-lp45.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.i, %bb.f
  %lpad.loopexit.split-lp78 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

.loopexit.split-lp50.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = load ptr, ptr %5, align 8, !tbaa !119   ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.x
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %.loopexit.split-lp50.loopexit.split-lp.loopexit.split-lp
  %i.br = load i64, ptr %i.x, align 8, !tbaa !121
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %.loopexit.split-lp50.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp45.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ], [ %lpad.loopexit.split-lp78, %.loopexit.split-lp45.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp50.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.bt = load ptr, ptr %6, align 8, !tbaa !119   ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.y
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %i.bv = load i64, ptr %i.y, align 8, !tbaa !121
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28 ], [ %lpad.loopexit.split-lp76, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.bx = load ptr, ptr %3, align 8, !tbaa !119   ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.t
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %i.bz = load i64, ptr %i.t, align 8, !tbaa !121
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf8compiler4ruby29GenerateMessageTypeDefinitionEPKNS0_10DescriptorEPNS0_2io7PrinterE(ptr noundef nonnull %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !646 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::flat_hash_map.104", align 8 ; 10 uses
  %3 = alloca %"class.absl::lts_20250512::flat_hash_map.104", align 8 ; 10 uses
  %4 = alloca %"class.absl::lts_20250512::flat_hash_map.104", align 8 ; 10 uses
  %5 = alloca %"class.absl::lts_20250512::flat_hash_map.104", align 8 ; 10 uses
  %6 = alloca %"class.absl::lts_20250512::flat_hash_map.104", align 8 ; 10 uses
  %7 = alloca %"class.absl::lts_20250512::flat_hash_map.104", align 8 ; 10 uses
  %8 = alloca %"class.absl::lts_20250512::flat_hash_map.104", align 8 ; 10 uses
  %9 = alloca %"class.absl::lts_20250512::flat_hash_map.104", align 8 ; 10 uses
  %10 = alloca %"class.absl::lts_20250512::flat_hash_map.104", align 8 ; 16 uses
  %11 = alloca %"class.absl::lts_20250512::flat_hash_map.104", align 8 ; 10 uses
  %12 = alloca %"class.absl::lts_20250512::flat_hash_map.104", align 8 ; 10 uses
  %13 = alloca %"class.absl::lts_20250512::flat_hash_map.104", align 8 ; 10 uses
  %14 = alloca %"struct.google::protobuf::SourceLocation", align 8 ; 14 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %i.a = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 4 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !122
  %i.c = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i64 0, ptr %i.c, align 8, !tbaa !120
  store i8 0, ptr %i.b, align 8, !tbaa !121
  %i.d = getelementptr inbounds nuw i8, ptr %14, i64 48 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 4 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !122
  %i.f = getelementptr inbounds nuw i8, ptr %14, i64 56
  store i64 0, ptr %i.f, align 8, !tbaa !120
  store i8 0, ptr %i.e, align 8, !tbaa !121
  %i.g = getelementptr inbounds nuw i8, ptr %14, i64 80 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.h = invoke noundef zeroext i1 @_ZNK6google8protobuf10Descriptor17GetSourceLocationEPNS0_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull %14)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6google8protobuf8compiler4ruby12PrintCommentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_2io7PrinterE(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef %1)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !647
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 50
  %i.l = load i8, ptr %i.k, align 2, !tbaa !121, !range !139, !noundef !140
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 14, ptr nonnull @.str.6)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %.body

bb.g:                                             ; preds = %bb.e
  %i.o = load i64, ptr %13, align 8, !tbaa !144   ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !121
  %i.r = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !145
  %i.t = and i64 %i.s, 65536
  %i.u = icmp ne i64 %i.t, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef %i.o, ptr noundef %i.q, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.u)
          to label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #27
  unreachable

_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit.i: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !174  ; 2 uses
  %.0.copyload.i.i.i = load i16, ptr %i.y, align 1
  %i.z = zext i16 %.0.copyload.i.i.i to i64       ; 2 uses
  %i.aa = xor i64 %i.z, -1
  %i.ab = getelementptr inbounds i8, ptr %i.y, i64 %i.aa
  invoke void @_ZN6google8protobuf8compiler4ruby14RubifyConstantB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, i64 %i.z, ptr nonnull %i.ab)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN6google8protobuf2io7Printer5PrintIJA10_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvSt17basic_string_viewIcS8_EDpRKT_(ptr noundef nonnull align 16 dereferenceable(296) %1, i64 56, ptr nonnull @.str.79, ptr noundef nonnull align 1 dereferenceable(10) @.str.80, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.ac = load ptr, ptr %15, align 8, !tbaa !119  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !121
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !224
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !225
  %i.al = add i64 %i.ak, %i.ai
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !225
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !246
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph, label %.preheader161

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i87 = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 8
  br label %bb.s

.preheader161.loopexit:                           ; preds = %bb.aa
  %i.ar = trunc nuw i8 %.1 to i1
  br label %.preheader161

.preheader161:                                    ; preds = %.preheader161.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0157.lcssa = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ar, %.preheader161.loopexit ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 3 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !247
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph180, label %._crit_edge

.lr.ph180:                                        ; preds = %.preheader161
  %.sroa.4.0..sroa_idx.i.i.i.i.i96 = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  br i1 %.0157.lcssa, label %_ZN6google8protobuf8compiler4ruby13InsertMidLineERbPNS0_2io7PrinterE.exit100.peel, label %bb.m

bb.m:                                             ; preds = %.lr.ph180
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i96, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 1, ptr nonnull @.str.7)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.m
  %i.ax = load i64, ptr %10, align 8, !tbaa !144  ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit.i97.peel, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i96, align 8, !tbaa !121
  %i.ba = load i64, ptr %i.av, align 8, !tbaa !145
  %i.bb = and i64 %i.ba, 65536
  %i.bc = icmp ne i64 %i.bb, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.ax, ptr noundef %i.az, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.bc)
          to label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit.i97.peel unwind label %.loopexit.split-lp201.loopexit.split-lp.loopexit.split-lp

_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit.i97.peel: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %_ZN6google8protobuf8compiler4ruby13InsertMidLineERbPNS0_2io7PrinterE.exit100.peel

_ZN6google8protobuf8compiler4ruby13InsertMidLineERbPNS0_2io7PrinterE.exit100.peel: ; preds = %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit.i97.peel, %.lr.ph180
  %i.bd = load ptr, ptr %i.aw, align 8, !tbaa !248
  invoke void @_ZN6google8protobuf8compiler4ruby26GenerateEnumTypeDefinitionEPKNS0_14EnumDescriptorEPNS0_2io7PrinterE(ptr noundef %i.bd, ptr noundef nonnull %1)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %_ZN6google8protobuf8compiler4ruby13InsertMidLineERbPNS0_2io7PrinterE.exit100.peel
  %i.be = load i32, ptr %i.as, align 4, !tbaa !247
  %i.bf = icmp sgt i32 %i.be, 1
  br i1 %i.bf, label %.peel.next, label %._crit_edge.thread

bb.q:                                             ; preds = %bb.j
  %i.bg = landingpad { ptr, i32 }
          cleanup
end_hunk_1
