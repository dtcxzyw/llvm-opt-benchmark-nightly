Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/parser?download=true
inline.NumInlined: 5128
inline.NumDeleted: 1457
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN4bzla6parser4smt26Parser23parse_open_term_indexedEv:bb.a
  store <2 x ptr> %i.uw, ptr %1, align 16, !tbaa !265
  %.not.i.i.i.i.i = icmp eq ptr %.pre335, null
  br i1 %.not.i.i.i.i.i, label %.critedge460, label %bb.dz

bb.dz:                                            ; preds = %.thread451, %bb.dy
  %i.ux = phi ptr [ %i.us, %.thread451 ], [ %i.uv, %bb.dy ] ; 2 uses
  %i.uy = phi ptr [ %i.ur, %.thread451 ], [ %i.uu, %bb.dy ] ; 2 uses
  %i.uz = phi ptr [ %i.ug, %.thread451 ], [ %.pre335, %bb.dy ]
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 8 ; 3 uses
  %i.vb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i.i.i.i = icmp eq i8 %i.vb, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.vc = load i32, ptr %i.va, align 4, !tbaa !254
  %i.vd = add nsw i32 %i.vc, 1
  store i32 %i.vd, ptr %i.va, align 4, !tbaa !254
  br label %.critedge460

bb.eb:                                            ; preds = %bb.dz
  %i.ve = atomicrmw volatile add ptr %i.va, i32 1 acq_rel, align 4 ; 0 uses
  %.pre336 = load i8, ptr %i.un, align 16, !tbaa !339, !range !211
  %i.vf = trunc nuw i8 %.pre336 to i1
  store i32 8, ptr %i.ux, align 8, !tbaa !240
  %i.vg = getelementptr inbounds i8, ptr %i.uy, i64 -128
  %i.vh = call noundef nonnull align 8 dereferenceable(17) ptr @_ZNSt7variantIJPN4bzla6parser4smt211SymbolTable4NodeEN8bitwuzla4SortENS6_4TermEEEaSIRS8_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS5_S7_S8_EE4typeEE18is_constructible_vISH_SE_E15is_assignable_vIRSH_SE_EERS9_E4typeESF_(ptr noundef nonnull align 8 dereferenceable(17) %i.vg, ptr noundef nonnull align 8 dereferenceable(16) %1) #30 ; 0 uses
  call void @_ZN8bitwuzla4TermD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #30
  %i.vi = load ptr, ptr %i.q, align 8, !tbaa !162
  %i.vj = getelementptr inbounds i8, ptr %i.vi, i64 -8
  store ptr %i.vj, ptr %i.q, align 8, !tbaa !162
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  store i8 0, ptr %i.un, align 16, !tbaa !339
  br i1 %i.vf, label %bb.ec, label %_ZNSt14_Optional_baseIN8bitwuzla4TermELb0ELb0EED2Ev.exit

.critedge460:                                     ; preds = %.thread, %bb.dy, %bb.ea
  %.ph = phi ptr [ %i.uj, %.thread ], [ %i.uv, %bb.dy ], [ %i.ux, %bb.ea ]
  %.ph458 = phi ptr [ %i.ui, %.thread ], [ %i.uu, %bb.dy ], [ %i.uy, %bb.ea ]
  %.ph459 = phi ptr [ %i.uh, %.thread ], [ %i.un, %bb.dy ], [ %i.un, %bb.ea ]
  store i32 8, ptr %.ph, align 8, !tbaa !240
  %i.vk = getelementptr inbounds i8, ptr %.ph458, i64 -128
  %i.vl = call noundef nonnull align 8 dereferenceable(17) ptr @_ZNSt7variantIJPN4bzla6parser4smt211SymbolTable4NodeEN8bitwuzla4SortENS6_4TermEEEaSIRS8_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS5_S7_S8_EE4typeEE18is_constructible_vISH_SE_E15is_assignable_vIRSH_SE_EERS9_E4typeESF_(ptr noundef nonnull align 8 dereferenceable(17) %i.vk, ptr noundef nonnull align 8 dereferenceable(16) %1) #30 ; 0 uses
  call void @_ZN8bitwuzla4TermD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #30
  %i.vm = load ptr, ptr %i.q, align 8, !tbaa !162
  %i.vn = getelementptr inbounds i8, ptr %i.vm, i64 -8
  store ptr %i.vn, ptr %i.q, align 8, !tbaa !162
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  store i8 0, ptr %.ph459, align 8, !tbaa !339
  br label %bb.ec

bb.ec:                                            ; preds = %.critedge460, %bb.eb
  call void @_ZN8bitwuzla4TermD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %35) #30
  br label %_ZNSt14_Optional_baseIN8bitwuzla4TermELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN8bitwuzla4TermELb0ELb0EED2Ev.exit: ; preds = %bb.eb, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #30
  call void @_ZN8bitwuzla4TermD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %26) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #30
  br label %bb.ej

bb.ed:                                            ; preds = %bb.dv, %bb.dp
  %.pn126 = phi { ptr, i32 } [ %.pn121.pn, %bb.dp ], [ %.pn124, %bb.dv ]
  call void @_ZN8bitwuzla4TermD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %26) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #30
  br label %bb.ek

bb.ee:                                            ; preds = %bb.ct
  %i.vo = load ptr, ptr %i.q, align 8, !tbaa !316
  %i.vp = getelementptr inbounds i8, ptr %i.vo, i64 -8
  %i.vq = load i64, ptr %i.vp, align 8, !tbaa !164 ; 5 uses
  %i.vr = icmp ult i64 %i.vq, 2
  br i1 %i.vr, label %.noexc.i300, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.vs = load ptr, ptr %i.p, align 8, !tbaa !183
  %i.vt = getelementptr [152 x i8], ptr %i.vs, i64 %i.vq ; 3 uses
  %i.vu = getelementptr i8, ptr %i.vt, i64 -304
  %i.vv = load i32, ptr %i.vu, align 8, !tbaa !240
  %.not118 = icmp eq i32 %i.vv, 3
  br i1 %.not118, label %bb.ei, label %.noexc.i300

.noexc.i300:                                      ; preds = %bb.ef, %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #30
  %i.vw = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 6 uses
  store ptr %i.vw, ptr %36, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 23, ptr %i.a, align 8, !tbaa !164
  %i.vx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc301 unwind label %bb.eg ; 2 uses

.noexc301:                                        ; preds = %.noexc.i300
  store ptr %i.vx, ptr %36, align 8, !tbaa !154
  %i.vy = load i64, ptr %i.a, align 8, !tbaa !164 ; 3 uses
  store i64 %i.vy, ptr %i.vw, align 8, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.vx, ptr noundef nonnull align 1 dereferenceable(23) @.str.101, i64 23, i1 false)
  %i.vz = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i64 %i.vy, ptr %i.vz, align 8, !tbaa !53
  %i.wa = load ptr, ptr %36, align 8, !tbaa !154
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 %i.vy
  store i8 0, ptr %i.wb, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #30
  %i.wc = load ptr, ptr %i.p, align 8, !tbaa !183
  %i.wd = getelementptr [152 x i8], ptr %i.wc, i64 %i.vq
  %i.we = getelementptr i8, ptr %i.wd, i64 -144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %37, ptr noundef nonnull align 8 dereferenceable(16) %i.we, i64 16, i1 false), !tbaa.struct !241
  %i.wf = getelementptr inbounds nuw i8, ptr %37, i64 16
  store i8 1, ptr %i.wf, align 8, !tbaa !219
  %i.wg = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_5Lexer10CoordinateEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(24) %37)
          to label %.critedge138 unwind label %bb.eh ; 0 uses

.critedge138:                                     ; preds = %.noexc301
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #30
  %i.wh = load ptr, ptr %36, align 8, !tbaa !154  ; 2 uses
  %i.wi = icmp eq ptr %i.wh, %i.vw
  br i1 %i.wi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303: ; preds = %.critedge138
  %i.wj = load i64, ptr %i.vw, align 8, !tbaa !54
  %i.wk = add i64 %i.wj, 1
  call void @_ZdlPvm(ptr noundef %i.wh, i64 noundef %i.wk) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305: ; preds = %.critedge138, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #30
  br label %bb.ej

bb.eg:                                            ; preds = %.noexc.i300
  %i.wl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308

bb.eh:                                            ; preds = %.noexc301
  %i.wm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #30
  %i.wn = load ptr, ptr %36, align 8, !tbaa !154  ; 2 uses
  %i.wo = icmp eq ptr %i.wn, %i.vw
  br i1 %i.wo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306: ; preds = %bb.eh
  %i.wp = load i64, ptr %i.vw, align 8, !tbaa !54
  %i.wq = add i64 %i.wp, 1
  call void @_ZdlPvm(ptr noundef %i.wn, i64 noundef %i.wq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308: ; preds = %bb.eh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306, %bb.eg
  %.pn119 = phi { ptr, i32 } [ %i.wl, %bb.eg ], [ %i.wm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306 ], [ %i.wm, %bb.eh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #30
  br label %bb.ek

bb.ei:                                            ; preds = %bb.ef
  store i32 %spec.select, ptr %i.vt, align 8, !tbaa !240
  %i.wr = getelementptr inbounds nuw i8, ptr %i.vt, i64 24
  %i.ws = call noundef nonnull align 8 dereferenceable(17) ptr @_ZNSt7variantIJPN4bzla6parser4smt211SymbolTable4NodeEN8bitwuzla4SortENS6_4TermEEEaSIRS5_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS5_S7_S8_EE4typeEE18is_constructible_vISH_SE_E15is_assignable_vIRSH_SE_EERS9_E4typeESF_(ptr noundef nonnull align 8 dereferenceable(17) %i.wr, ptr noundef nonnull align 8 dereferenceable(8) %i.e) #30 ; 0 uses
  %i.wt = load ptr, ptr %i.p, align 8, !tbaa !183 ; 2 uses
  %i.wu = getelementptr inbounds nuw [152 x i8], ptr %i.wt, i64 %i.vq
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 8
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.wv, align 8, !tbaa !164
  %i.ww = getelementptr inbounds [152 x i8], ptr %i.wt, i64 %i.vq
  %i.wx = getelementptr inbounds i8, ptr %i.ww, i64 -152
  %i.wy = call ptr @_ZNSt6vectorIN4bzla6parser4smt26Parser10ParsedItemESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr nonnull %i.wx) ; 0 uses
  %i.wz = load ptr, ptr %i.q, align 8, !tbaa !162
  %i.xa = getelementptr inbounds i8, ptr %i.wz, i64 -8
  store ptr %i.xa, ptr %i.q, align 8, !tbaa !162
  br label %bb.ej

bb.ej:                                            ; preds = %_ZN4bzla6parser4smt26Parser10parse_rparEv.exit, %.critedge134, %_ZNSt14_Optional_baseIN8bitwuzla4TermELb0ELb0EED2Ev.exit, %bb.ei, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196
  %.7 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196 ], [ false, %_ZN4bzla6parser4smt26Parser10parse_rparEv.exit ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145 ], [ false, %.critedge134 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169 ], [ true, %bb.ei ], [ true, %_ZNSt14_Optional_baseIN8bitwuzla4TermELb0ELb0EED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  br label %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit.thread

bb.ek:                                            ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308, %bb.ed, %bb.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205
  %.pn128.pn.pn.pn = phi { ptr, i32 } [ %.pn128.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205 ], [ %.pn126, %bb.ed ], [ %.pn119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308 ], [ %.pn114.pn, %bb.cq ], [ %.pn103.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ], [ %i.bl, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  br label %common.resume

_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit.thread: ; preds = %bb.c, %bb.b, %bb.ej
  %.8 = phi i1 [ %.7, %bb.ej ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.8
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN4bzla6parser4smt26Parser23parse_open_term_indexedEvE3$_0EbT_SF_T0_"(ptr %0, ptr %1) unnamed_addr #15 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr i64 %i.c, 2                         ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.a
  %i.f = and i64 %i.c, -4
  %scevgep.i.i.i = getelementptr i8, ptr %0, i64 %i.f ; 2 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.preheader.i.i.i
  %.051.i.i.i = phi i64 [ %i.o, %bb.e ], [ %i.d, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.sroa.031.050.i.i.i = phi ptr [ %i.n, %bb.e ], [ %0, %.lr.ph.preheader.i.i.i ] ; 9 uses
  %i.g = load i8, ptr %.sroa.031.050.i.i.i, align 1, !tbaa !54
  %2 = sext i8 %i.g to i32
  %3 = add nsw i32 %2, -58
  %isdigit.i.i.i.i.i = icmp ult i32 %3, -10
  br i1 %isdigit.i.i.i.i.i, label %"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN4bzla6parser4smt26Parser23parse_open_term_indexedEvE3$_0ET_SF_SF_T0_.exit", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !54
  %4 = sext i8 %i.i to i32
  %5 = add nsw i32 %4, -58
  %isdigit.i.i16.i.i.i = icmp ult i32 %5, -10
  br i1 %isdigit.i.i16.i.i.i, label %"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN4bzla6parser4smt26Parser23parse_open_term_indexedEvE3$_0ET_SF_SF_T0_.exit.loopexit.split.loop.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i, i64 2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !54
  %6 = sext i8 %i.k to i32
  %7 = add nsw i32 %6, -58
  %isdigit.i.i17.i.i.i = icmp ult i32 %7, -10
  br i1 %isdigit.i.i17.i.i.i, label %"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN4bzla6parser4smt26Parser23parse_open_term_indexedEvE3$_0ET_SF_SF_T0_.exit.loopexit.split.loop.exit16", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i, i64 3
  %i.m = load i8, ptr %i.l, align 1, !tbaa !54
  %8 = sext i8 %i.m to i32
  %9 = add nsw i32 %8, -58
  %isdigit.i.i18.i.i.i = icmp ult i32 %9, -10
  br i1 %isdigit.i.i18.i.i.i, label %"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN4bzla6parser4smt26Parser23parse_open_term_indexedEvE3$_0ET_SF_SF_T0_.exit.loopexit.split.loop.exit18", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i, i64 4
  %i.o = add nsw i64 %.051.i.i.i, -1
  %i.p = icmp sgt i64 %.051.i.i.i, 1
  br i1 %i.p, label %.lr.ph.i.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !759

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.e
  %.pre.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.a
  %.pre-phi.i.i.i = phi i64 [ %.pre.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.b, %bb.a ]
  %.sroa.031.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %0, %bb.a ] ; 5 uses
  %i.q = sub i64 %i.a, %.pre-phi.i.i.i
  switch i64 %i.q, label %"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN4bzla6parser4smt26Parser23parse_open_term_indexedEvE3$_0ET_SF_SF_T0_.exit" [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.r = load i8, ptr %.sroa.031.0.lcssa.i.i.i, align 1, !tbaa !54
  %10 = sext i8 %i.r to i32
  %11 = add nsw i32 %10, -58
  %isdigit.i.i19.i.i.i = icmp ult i32 %11, -10
  br i1 %isdigit.i.i19.i.i.i, label %"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN4bzla6parser4smt26Parser23parse_open_term_indexedEvE3$_0ET_SF_SF_T0_.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.031.0.lcssa.i.i.i, i64 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i
  %.sroa.031.1.i.i.i = phi ptr [ %i.s, %bb.g ], [ %.sroa.031.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.t = load i8, ptr %.sroa.031.1.i.i.i, align 1, !tbaa !54
  %12 = sext i8 %i.t to i32
  %13 = add nsw i32 %12, -58
  %isdigit.i.i20.i.i.i = icmp ult i32 %13, -10
  br i1 %isdigit.i.i20.i.i.i, label %"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN4bzla6parser4smt26Parser23parse_open_term_indexedEvE3$_0ET_SF_SF_T0_.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.031.1.i.i.i, i64 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i
  %.sroa.031.2.i.i.i = phi ptr [ %i.u, %bb.i ], [ %.sroa.031.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.v = load i8, ptr %.sroa.031.2.i.i.i, align 1, !tbaa !54
  %14 = sext i8 %i.v to i32
  %15 = add nsw i32 %14, -58
  %isdigit.i.i21.i.i.i = icmp ult i32 %15, -10
  %spec.select.i.i.i = select i1 %isdigit.i.i21.i.i.i, ptr %.sroa.031.2.i.i.i, ptr %1
  br label %"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN4bzla6parser4smt26Parser23parse_open_term_indexedEvE3$_0ET_SF_SF_T0_.exit"

"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN4bzla6parser4smt26Parser23parse_open_term_indexedEvE3$_0ET_SF_SF_T0_.exit.loopexit.split.loop.exit": ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i, i64 1
  br label %"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN4bzla6parser4smt26Parser23parse_open_term_indexedEvE3$_0ET_SF_SF_T0_.exit"

"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN4bzla6parser4smt26Parser23parse_open_term_indexedEvE3$_0ET_SF_SF_T0_.exit.loopexit.split.loop.exit16": ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i, i64 2
  br label %"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN4bzla6parser4smt26Parser23parse_open_term_indexedEvE3$_0ET_SF_SF_T0_.exit"

"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN4bzla6parser4smt26Parser23parse_open_term_indexedEvE3$_0ET_SF_SF_T0_.exit.loopexit.split.loop.exit18": ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i, i64 3
  br label %"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN4bzla6parser4smt26Parser23parse_open_term_indexedEvE3$_0ET_SF_SF_T0_.exit"

"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN4bzla6parser4smt26Parser23parse_open_term_indexedEvE3$_0ET_SF_SF_T0_.exit": ; preds = %.lr.ph.i.i.i, %"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN4bzla6parser4smt26Parser23parse_open_term_indexedEvE3$_0ET_SF_SF_T0_.exit.loopexit.split.loop.exit", %"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN4bzla6parser4smt26Parser23parse_open_term_indexedEvE3$_0ET_SF_SF_T0_.exit.loopexit.split.loop.exit16", %"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN4bzla6parser4smt26Parser23parse_open_term_indexedEvE3$_0ET_SF_SF_T0_.exit.loopexit.split.loop.exit18", %._crit_edge.i.i.i, %bb.f, %bb.h, %bb.j
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.031.1.i.i.i, %bb.h ], [ %spec.select.i.i.i, %bb.j ], [ %1, %._crit_edge.i.i.i ], [ %.sroa.031.0.lcssa.i.i.i, %bb.f ], [ %i.y, %"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN4bzla6parser4smt26Parser23parse_open_term_indexedEvE3$_0ET_SF_SF_T0_.exit.loopexit.split.loop.exit18" ], [ %i.x, %"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN4bzla6parser4smt26Parser23parse_open_term_indexedEvE3$_0ET_SF_SF_T0_.exit.loopexit.split.loop.exit16" ], [ %i.w, %"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN4bzla6parser4smt26Parser23parse_open_term_indexedEvE3$_0ET_SF_SF_T0_.exit.loopexit.split.loop.exit" ], [ %.sroa.031.050.i.i.i, %.lr.ph.i.i.i ]
  %i.z = icmp eq ptr %1, %.sroa.08.0.in.sroa.speculated.i.i.i
  ret i1 %i.z
}

declare void @_ZN8bitwuzla11TermManager10mk_fp_sortEmm(ptr dead_on_unwind writable sret(%"class.bitwuzla::Sort") align 8, ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZN8bitwuzla11TermManager9mk_fp_nanERKNS_4SortE(ptr dead_on_unwind writable sret(%"class.bitwuzla::Term") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN8bitwuzla11TermManager13mk_fp_neg_infERKNS_4SortE(ptr dead_on_unwind writable sret(%"class.bitwuzla::Term") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN8bitwuzla11TermManager13mk_fp_pos_infERKNS_4SortE(ptr dead_on_unwind writable sret(%"class.bitwuzla::Term") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN8bitwuzla11TermManager14mk_fp_neg_zeroERKNS_4SortE(ptr dead_on_unwind writable sret(%"class.bitwuzla::Term") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN8bitwuzla11TermManager14mk_fp_pos_zeroERKNS_4SortE(ptr dead_on_unwind writable sret(%"class.bitwuzla::Term") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4bzla6parser4smt26Parser16close_term_scopeERKSt8optionalIN8bitwuzla4TermEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(2056) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.bitwuzla::Term", align 16   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !339, !range !211, !noundef !209
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1600 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !260  ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -152 ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !253  ; 2 uses
  %i.i = load <2 x ptr>, ptr %1, align 8, !tbaa !265
  store <2 x ptr> %i.i, ptr %2, align 16, !tbaa !265
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZN4bzla6parser4smt26Parser8set_itemIN8bitwuzla4TermEEEvRNS2_10ParsedItemENS1_5TokenET_RKSt8optionalINS1_5Lexer10CoordinateEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.k = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr %i.j, align 4, !tbaa !254
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.j, align 4, !tbaa !254
  br label %_ZN4bzla6parser4smt26Parser8set_itemIN8bitwuzla4TermEEEvRNS2_10ParsedItemENS1_5TokenET_RKSt8optionalINS1_5Lexer10CoordinateEE.exit

bb.e:                                             ; preds = %bb.c
  %i.n = atomicrmw volatile add ptr %i.j, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4bzla6parser4smt26Parser8set_itemIN8bitwuzla4TermEEEvRNS2_10ParsedItemENS1_5TokenET_RKSt8optionalINS1_5Lexer10CoordinateEE.exit

_ZN4bzla6parser4smt26Parser8set_itemIN8bitwuzla4TermEEEvRNS2_10ParsedItemENS1_5TokenET_RKSt8optionalINS1_5Lexer10CoordinateEE.exit: ; preds = %bb.e, %bb.d, %bb.b
  store i32 8, ptr %i.f, align 8, !tbaa !240
  %i.o = getelementptr inbounds i8, ptr %i.e, i64 -128
  %i.p = call noundef nonnull align 8 dereferenceable(17) ptr @_ZNSt7variantIJPN4bzla6parser4smt211SymbolTable4NodeEN8bitwuzla4SortENS6_4TermEEEaSIRS8_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS5_S7_S8_EE4typeEE18is_constructible_vISH_SE_E15is_assignable_vIRSH_SE_EERS9_E4typeESF_(ptr noundef nonnull align 8 dereferenceable(17) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %2) #30 ; 0 uses
  call void @_ZN8bitwuzla4TermD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #30
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  store ptr %i.f, ptr %i.d, align 8, !tbaa !184
  tail call void @_ZN4bzla6parser4smt26Parser10ParsedItemD2Ev(ptr noundef nonnull align 8 dead_on_return(145) dereferenceable(145) %i.f) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4bzla6parser4smt26Parser8set_itemIN8bitwuzla4TermEEEvRNS2_10ParsedItemENS1_5TokenET_RKSt8optionalINS1_5Lexer10CoordinateEE.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1624 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !162
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -8
  store ptr %i.s, ptr %i.q, align 8, !tbaa !162
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(17) ptr @_ZNSt7variantIJPN4bzla6parser4smt211SymbolTable4NodeEN8bitwuzla4SortENS6_4TermEEEaSIRS5_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS5_S7_S8_EE4typeEE18is_constructible_vISH_SE_E15is_assignable_vIRSH_SE_EERS9_E4typeESF_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !244
  switch i8 %i.b, label %bb.d [
    i8 0, label %_ZSt3getILm0EJPN4bzla6parser4smt211SymbolTable4NodeEN8bitwuzla4SortENS6_4TermEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSD_.exit
    i8 -1, label %_ZNSt7variantIJPN4bzla6parser4smt211SymbolTable4NodeEN8bitwuzla4SortENS6_4TermEEE7emplaceILm0EJRS5_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS5_S7_S8_EE4typeEDpT0_EERSF_E4typeEDpOSG_.exit
    i8 2, label %bb.c
    i8 1, label %bb.b
  ], !prof !337

_ZSt3getILm0EJPN4bzla6parser4smt211SymbolTable4NodeEN8bitwuzla4SortENS6_4TermEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSD_.exit: ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !270
  store ptr %i.c, ptr %0, align 8, !tbaa !270
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(17) %0) #30
  br label %_ZNSt7variantIJPN4bzla6parser4smt211SymbolTable4NodeEN8bitwuzla4SortENS6_4TermEEE7emplaceILm0EJRS5_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS5_S7_S8_EE4typeEDpT0_EERSF_E4typeEDpOSG_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN8bitwuzla4TermD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(17) %0) #30
  br label %_ZNSt7variantIJPN4bzla6parser4smt211SymbolTable4NodeEN8bitwuzla4SortENS6_4TermEEE7emplaceILm0EJRS5_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS5_S7_S8_EE4typeEDpT0_EERSF_E4typeEDpOSG_.exit

bb.d:                                             ; preds = %bb.a
  unreachable

_ZNSt7variantIJPN4bzla6parser4smt211SymbolTable4NodeEN8bitwuzla4SortENS6_4TermEEE7emplaceILm0EJRS5_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS5_S7_S8_EE4typeEDpT0_EERSF_E4typeEDpOSG_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.d = load ptr, ptr %1, align 8, !tbaa !270
  store ptr %i.d, ptr %0, align 8, !tbaa !243
  store i8 0, ptr %i.a, align 8, !tbaa !244
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt7variantIJPN4bzla6parser4smt211SymbolTable4NodeEN8bitwuzla4SortENS6_4TermEEE7emplaceILm0EJRS5_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS5_S7_S8_EE4typeEDpT0_EERSF_E4typeEDpOSG_.exit, %_ZSt3getILm0EJPN4bzla6parser4smt211SymbolTable4NodeEN8bitwuzla4SortENS6_4TermEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSD_.exit
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4bzla6parser4smt26Parser21parse_open_term_quantEv(ptr noundef nonnull align 8 dereferenceable(2056) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::optional", align 8     ; 5 uses
  %i.b = tail call noundef i32 @_ZN4bzla6parser4smt26Parser10next_tokenEb(ptr noundef nonnull align 8 dereferenceable(2056) %0, i1 noundef zeroext false)
  %.not.i = icmp eq i32 %i.b, 3                   ; 2 uses
  br i1 %.not.i, label %bb.d, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.c, ptr %1, align 8, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.c, ptr noundef nonnull align 1 dereferenceable(11) @.str.17, i64 11, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 11, ptr %i.d, align 8, !tbaa !53
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 27
  store i8 0, ptr %i.e, align 1, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 0, ptr %i.f, align 8, !tbaa !219
  %i.g = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_5Lexer10CoordinateEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.h = load ptr, ptr %1, align 8, !tbaa !154    ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.c
  br i1 %i.i, label %_ZN4bzla6parser4smt26Parser10parse_lparEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.j = load i64, ptr %i.c, align 8, !tbaa !54
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #28
  br label %_ZN4bzla6parser4smt26Parser10parse_lparEv.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.m = load ptr, ptr %1, align 8, !tbaa !154    ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.c
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i: ; preds = %bb.c
  %i.o = load i64, ptr %i.c, align 8, !tbaa !54
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  resume { ptr, i32 } %i.l

_ZN4bzla6parser4smt26Parser10parse_lparEv.exit:   ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN4bzla6parser4smt26Parser15open_term_scopeEv(ptr noundef nonnull align 8 dereferenceable(2056) %0)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !153
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 13, ptr %i.a, align 4, !tbaa !221
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1592 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1600 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !184  ; 10 uses
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !183
  %.not.i.i = icmp eq ptr %i.v, %i.w
  br i1 %.not.i.i, label %_ZNK4bzla6parser4smt26Parser18peek_item_is_tokenENS1_5TokenE.exit.thread.i, label %_ZNK4bzla6parser4smt26Parser18peek_item_is_tokenENS1_5TokenE.exit.i

end_hunk_0
