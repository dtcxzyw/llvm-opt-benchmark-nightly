Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/httplib?download=true
inline.NumInlined: 21893
inline.NumDeleted: 6596
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 105
begin_hunk_0_@_ZN7httplib6detail16has_header_tokenERKNS0_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEEERKS7_SE_:bb.a
  unreachable

.split:                                           ; preds = %_ZNSt8functionIFbPKcS1_EEC2EOS3_.exit.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = load ptr, ptr %i.ai, align 8, !tbaa !264 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.ax, null
  br i1 %.not.i4.i, label %.body, label %bb.e

bb.e:                                             ; preds = %.split
  %i.ay = invoke noundef zeroext i1 %i.ax(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %.body unwind label %bb.f      ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #49
  unreachable

bb.g:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.bb = load ptr, ptr %i.ag, align 8, !tbaa !264 ; 2 uses
  %.not.i = icmp eq ptr %i.bb, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = invoke noundef zeroext i1 %i.bb(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %.split52 ; 0 uses

.split52:                                         ; preds = %bb.h
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  call void @__clang_call_terminate(ptr %i.be) #49
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.g, %bb.h
  br i1 %i.ar, label %.critedge, label %bb.k

.body:                                            ; preds = %.split, %bb.e
  %i.bf = load ptr, ptr %i.ag, align 8, !tbaa !264 ; 2 uses
  %.not.i14 = icmp eq ptr %i.bf, null
  br i1 %.not.i14, label %_ZNSt14_Function_baseD2Ev.exit15, label %bb.i

bb.i:                                             ; preds = %.body
  %i.bg = invoke noundef zeroext i1 %i.bf(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit15 unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #49
  unreachable

_ZNSt14_Function_baseD2Ev.exit15:                 ; preds = %.body, %bb.i
  resume { ptr, i32 } %i.aw

bb.k:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %.not.i16 = icmp ult i64 %.sroa.7.044, %.pre30.i
  br i1 %.not.i16, label %bb.l, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tIKSt4pairIS7_S7_EEppEv.exit

bb.l:                                             ; preds = %bb.k
  %i.bj = add nuw i64 %.sroa.7.044, 1             ; 4 uses
  %i.bk = icmp ult i64 %i.bj, %.pre30.i
  br i1 %i.bk, label %.lr.ph.i, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tIKSt4pairIS7_S7_EEppEv.exit

.lr.ph.i:                                         ; preds = %bb.l
  %i.bl = load i64, ptr %i.ak, align 8, !tbaa !183
  %.fr = freeze i64 %i.bl                         ; 3 uses
  %.not6.i.i.i.i.i.i17 = icmp eq i64 %.fr, 0
  br i1 %.not6.i.i.i.i.i.i17, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.i.us
  %.sroa.7.1.us = phi i64 [ %i.bq, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.i.us ], [ %i.bj, %.lr.ph.i ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %.sroa.7.1.us
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !183
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tIKSt4pairIS7_S7_EEppEv.exit, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.i.us

_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.i.us: ; preds = %.lr.ph.i.split.us
  %i.bq = add nuw i64 %.sroa.7.1.us, 1            ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.bq, %.pre30.i
  br i1 %exitcond.not.i.us, label %.critedge, label %.lr.ph.i.split.us, !llvm.loop !11

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.i
  %.sroa.7.1 = phi i64 [ %i.cj, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.i ], [ %i.bj, %.lr.ph.i ] ; 3 uses
  %i.br = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %.sroa.7.1 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !183
  %i.bu = icmp eq i64 %i.bt, %.fr
  br i1 %i.bu, label %.lr.ph.i.preheader.i.i.i.i.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %.lr.ph.i.split
  %i.bv = load ptr, ptr %i.br, align 8, !tbaa !196 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.fr
  %i.bx = load ptr, ptr %i.aj, align 8, !tbaa !196
  br label %.lr.ph.i.i.i.i.i.i18

.lr.ph.i.i.i.i.i.i18:                             ; preds = %bb.m, %.lr.ph.i.preheader.i.i.i.i.i
  %.sroa.0.08.i.i.i.i.i.i19 = phi ptr [ %i.ci, %bb.m ], [ %i.bx, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i20 = phi ptr [ %i.ch, %bb.m ], [ %i.bv, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.by = load i8, ptr %.sroa.03.07.i.i.i.i.i.i20, align 1, !tbaa !184
  %i.bz = load i8, ptr %.sroa.0.08.i.i.i.i.i.i19, align 1, !tbaa !184
  %i.ca = zext i8 %i.by to i64
  %i.cb = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !184
  %i.cd = zext i8 %i.bz to i64
  %i.ce = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !184
  %i.cg = icmp eq i8 %i.cc, %i.cf
  br i1 %i.cg, label %bb.m, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.i

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i18
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i20, i64 1 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i19, i64 1
  %.not.i.i.i.i.i.i21 = icmp eq ptr %i.ch, %i.bw
  br i1 %.not.i.i.i.i.i.i21, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tIKSt4pairIS7_S7_EEppEv.exit, label %.lr.ph.i.i.i.i.i.i18, !llvm.loop !4

_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i18, %.lr.ph.i.split
  %i.cj = add nuw i64 %.sroa.7.1, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cj, %.pre30.i
  br i1 %exitcond.not.i, label %.critedge, label %.lr.ph.i.split, !llvm.loop !11

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tIKSt4pairIS7_S7_EEppEv.exit: ; preds = %.lr.ph.i.split.us, %bb.m, %bb.k, %bb.l
  %.sroa.7.2 = phi i64 [ %i.bj, %bb.l ], [ %.sroa.7.044, %bb.k ], [ %.sroa.7.1, %bb.m ], [ %.sroa.7.1.us, %.lr.ph.i.split.us ] ; 2 uses
  %.not57 = icmp eq i64 %.sroa.7.2, %.pre30.i
  br i1 %.not57, label %.critedge, label %_ZNSt8functionIFbPKcS1_EEC2EOS3_.exit.i, !llvm.loop !1345

.critedge:                                        ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.us.i, %_ZNSt14_Function_baseD2Ev.exit, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tIKSt4pairIS7_S7_EEppEv.exit, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.i, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.i.us, %bb.a, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE11equal_rangeERKS7_.exit
  %.lcssa35 = phi i1 [ false, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE11equal_rangeERKS7_.exit ], [ false, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.us.i ], [ false, %bb.a ], [ false, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.i ], [ false, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.i.us ], [ %i.ar, %_ZNSt14_Function_baseD2Ev.exit ], [ %i.ar, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tIKSt4pairIS7_S7_EEppEv.exit ], [ false, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i ]
  ret i1 %.lcssa35
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7httplib7Request16get_header_valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcm(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(776) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nofree noundef readonly captures(address) %3, i64 noundef %4) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.c = tail call noundef ptr @_ZN7httplib6detail16get_header_valueERKNS0_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEEERKS7_PKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3, i64 noundef %4) ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !182
  %i.e = icmp eq ptr %i.c, null
  br i1 %i.e, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.352) #48
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.f, ptr %i.a, align 8, !tbaa !197
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !196
  %i.i = load i64, ptr %i.a, align 8, !tbaa !197
  store i64 %i.i, ptr %i.d, align 8, !tbaa !184
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.d, %bb.b ] ; 2 uses
  switch i64 %i.f, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.c, align 1, !tbaa !184
  store i8 %i.k, ptr %i.j, align 1, !tbaa !184
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 1 %i.c, i64 %i.f, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !197  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !183
  %i.n = load ptr, ptr %0, align 8, !tbaa !196
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7httplib6detail21write_websocket_frameERNS_6StreamENS_2ws6OpcodeEPKcmbb(ptr noundef nonnull align 8 dereferenceable(12) %0, i8 noundef zeroext %1, ptr noundef %2, i64 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 8 uses
  %i.b = alloca [2 x i8], align 1                 ; 5 uses
  %i.c = alloca [8 x i8], align 1                 ; 11 uses
  %6 = alloca %"class.std::random_device", align 8 ; 7 uses
  %i.d = alloca [4 x i8], align 16                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.e = select i1 %4, i8 -128, i8 0
  %i.f = and i8 %1, 15
  %i.g = or disjoint i8 %i.e, %i.f
  store i8 %i.g, ptr %i.a, align 1, !tbaa !184
  %i.h = icmp ult i64 %3, 126
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = trunc nuw nsw i64 %3 to i8               ; 2 uses
  %i.k = or disjoint i8 %i.j, -128
  %storemerge61 = select i1 %5, i8 %i.k, i8 %i.j
  store i8 %storemerge61, ptr %i.i, align 1, !tbaa !184
  %i.l = load ptr, ptr %0, align 8, !tbaa !201
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call noundef i64 %i.n(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %i.a, i64 noundef 2)
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.aa, label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.q = icmp ult i64 %3, 65536
  br i1 %i.q, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %spec.select = select i1 %5, i8 -2, i8 126
  store i8 %spec.select, ptr %i.i, align 1, !tbaa !184
  %i.r = load ptr, ptr %0, align 8, !tbaa !201
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = call noundef i64 %i.t(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %i.a, i64 noundef 2)
  %i.v = icmp slt i64 %i.u, 0
  br i1 %i.v, label %bb.aa, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.w = lshr i64 %3, 8
  %i.x = trunc nuw i64 %i.w to i8
  store i8 %i.x, ptr %i.b, align 1, !tbaa !184
  %i.y = trunc i64 %3 to i8
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.y, ptr %i.z, align 1, !tbaa !184
  %i.aa = load ptr, ptr %0, align 8, !tbaa !201
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call noundef i64 %i.ac(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %i.b, i64 noundef 2)
  %i.ae = icmp sgt i64 %i.ad, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br i1 %i.ae, label %bb.h, label %bb.aa

bb.f:                                             ; preds = %bb.c
  %spec.select65 = select i1 %5, i8 -1, i8 127
  store i8 %spec.select65, ptr %i.i, align 1, !tbaa !184
  %i.af = load ptr, ptr %0, align 8, !tbaa !201
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call noundef i64 %i.ah(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %i.a, i64 noundef 2)
  %i.aj = icmp slt i64 %i.ai, 0
  br i1 %i.aj, label %bb.aa, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %7 = lshr i64 %3, 56
  %8 = trunc nuw i64 %7 to i8
  store i8 %8, ptr %i.c, align 1, !tbaa !184
  %9 = lshr i64 %3, 48
  %10 = trunc i64 %9 to i8
  %11 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %10, ptr %11, align 1, !tbaa !184
  %12 = lshr i64 %3, 40
  %13 = trunc i64 %12 to i8
  %14 = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 %13, ptr %14, align 1, !tbaa !184
  %15 = lshr i64 %3, 32
  %16 = trunc i64 %15 to i8
  %17 = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store i8 %16, ptr %17, align 1, !tbaa !184
  %18 = lshr i64 %3, 24
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i8 %19, ptr %20, align 1, !tbaa !184
  %21 = lshr i64 %3, 16
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  store i8 %22, ptr %23, align 1, !tbaa !184
  %24 = lshr i64 %3, 8
  %25 = trunc i64 %24 to i8
  %26 = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  store i8 %25, ptr %26, align 1, !tbaa !184
  %27 = trunc i64 %3 to i8
  %28 = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  store i8 %27, ptr %28, align 1, !tbaa !184
  %i.ak = load ptr, ptr %0, align 8, !tbaa !201
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = call noundef i64 %i.am(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %i.c, i64 noundef 8)
  %i.ao = icmp sgt i64 %i.an, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br i1 %i.ao, label %bb.h, label %bb.aa

bb.h:                                             ; preds = %bb.e, %bb.g, %bb.b
  br i1 %5, label %bb.i, label %bb.x

bb.i:                                             ; preds = %bb.h
  %.b = load i1, ptr @_ZGVZN7httplib6detail21write_websocket_frameERNS_6StreamENS_2ws6OpcodeEPKcmbbE3rng, align 1
  br i1 %.b, label %bb.o, label %bb.j, !prof !298

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZNSt13random_deviceC2Ev(ptr noundef nonnull align 8 dereferenceable(5000) %6)
  %i.ap = invoke noundef i32 @_ZNSt13random_device9_M_getvalEv(ptr noundef nonnull align 8 dereferenceable(5000) %6)
          to label %_ZNSt13random_deviceclEv.exit unwind label %bb.p

_ZNSt13random_deviceclEv.exit:                    ; preds = %bb.j
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  store i64 %i.aq, ptr @_ZZN7httplib6detail21write_websocket_frameERNS_6StreamENS_2ws6OpcodeEPKcmbbE3rng, align 8, !tbaa !197
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %_ZNSt13random_deviceclEv.exit
  %store_forwarded = phi i64 [ %i.aq, %_ZNSt13random_deviceclEv.exit ], [ %i.bd, %bb.l ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %_ZNSt13random_deviceclEv.exit ], [ %i.be, %bb.l ] ; 4 uses
  %i.ar = getelementptr [8 x i8], ptr @_ZZN7httplib6detail21write_websocket_frameERNS_6StreamENS_2ws6OpcodeEPKcmbbE3rng, i64 %.011.i.i
  %i.as = lshr i64 %store_forwarded, 30
  %i.at = xor i64 %i.as, %store_forwarded
  %i.au = mul nuw nsw i64 %i.at, 1812433253
  %i.av = add nuw i64 %i.au, %.011.i.i            ; 2 uses
  %i.aw = and i64 %i.av, 4294967295               ; 2 uses
  store i64 %i.aw, ptr %i.ar, align 8, !tbaa !197
  %i.ax = add nuw nsw i64 %.011.i.i, 1            ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.ax, 624
  br i1 %exitcond.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr [8 x i8], ptr @_ZZN7httplib6detail21write_websocket_frameERNS_6StreamENS_2ws6OpcodeEPKcmbbE3rng, i64 %i.ax
  %i.az = lshr i64 %i.aw, 30
  %i.ba = xor i64 %i.az, %i.av
  %i.bb = mul i64 %i.ba, 1812433253
  %i.bc = add i64 %i.bb, %i.ax
  %i.bd = and i64 %i.bc, 4294967295               ; 2 uses
  store i64 %i.bd, ptr %i.ay, align 8, !tbaa !197
  %i.be = add nuw nsw i64 %.011.i.i, 2
  br label %bb.k

bb.m:                                             ; preds = %bb.k
  store i64 624, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7httplib6detail21write_websocket_frameERNS_6StreamENS_2ws6OpcodeEPKcmbbE3rng, i64 4992), align 8, !tbaa !300
  invoke void @_ZNSt13random_device7_M_finiEv(ptr noundef nonnull align 8 dereferenceable(5000) %6)
          to label %_ZNSt13random_deviceD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #49
  unreachable

_ZNSt13random_deviceD2Ev.exit:                    ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  store i1 true, ptr @_ZGVZN7httplib6detail21write_websocket_frameERNS_6StreamENS_2ws6OpcodeEPKcmbbE3rng, align 1
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt13random_deviceD2Ev.exit, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.bh = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN7httplib6detail21write_websocket_frameERNS_6StreamENS_2ws6OpcodeEPKcmbbE3rng)
  %i.bi = call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %i.bh)
  %.0.extract.trunc = trunc i64 %i.bi to i32
  store i32 %.0.extract.trunc, ptr %i.d, align 16
  %i.bj = load ptr, ptr %0, align 8, !tbaa !201
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = call noundef i64 %i.bl(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %i.d, i64 noundef 4)
  %i.bn = icmp slt i64 %i.bm, 0
  br i1 %i.bn, label %.critedge, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i

bb.p:                                             ; preds = %bb.j
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZNSt13random_device7_M_finiEv(ptr noundef nonnull align 8 dereferenceable(5000) %6)
          to label %_ZNSt13random_deviceD2Ev.exit68 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #49
  unreachable

_ZNSt13random_deviceD2Ev.exit68:                  ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.ab

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.o
  %.sroa.speculated85 = call i64 @llvm.umin.i64(i64 %3, i64 4096) ; 5 uses
  %.not.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit74, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  %i.br = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.sroa.speculated85) #51
          to label %.noexc69 unwind label %bb.u   ; 11 uses

.noexc69:                                         ; preds = %bb.r
  store i8 0, ptr %i.br, align 1, !tbaa !184
  %i.bs = add nsw i64 %.sroa.speculated85, -1     ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %iter.check.preheader, label %bb.s

bb.s:                                             ; preds = %.noexc69
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bu, i8 0, i64 %i.bs, i1 false)
  br label %iter.check.preheader

iter.check.preheader:                             ; preds = %bb.s, %.noexc69
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %iter.check

bb.t:                                             ; preds = %bb.v
  %i.bw = add i64 %.044100, 4096                  ; 2 uses
  %.not64.not = icmp ult i64 %i.bw, %3
  %indvars.iv.next = add i64 %indvars.iv, -4096
  br i1 %.not64.not, label %iter.check, label %.critedge67, !llvm.loop !1347

bb.u:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

iter.check:                                       ; preds = %iter.check.preheader, %bb.t
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.t ], [ %3, %iter.check.preheader ] ; 5 uses
  %.044100 = phi i64 [ %i.bw, %bb.t ], [ 0, %iter.check.preheader ] ; 3 uses
  %i.by = call i64 @llvm.umax.i64(i64 %indvars.iv, i64 1)
  %umax = call i64 @llvm.umin.i64(i64 %i.by, i64 4096) ; 8 uses
  %i.bz = sub nuw i64 %3, %.044100
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.bz, i64 4096)
  %i.ca = getelementptr i8, ptr %2, i64 %.044100  ; 5 uses
  %min.iters.check = icmp ult i64 %indvars.iv, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %umin = call i64 @llvm.umin.i64(i64 %indvars.iv, i64 4096)
  %i.cb = add nsw i64 %umin, -5
  %i.cc = icmp ult i64 %i.cb, -4
  br i1 %i.cc, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check116 = icmp ult i64 %indvars.iv, 32
  br i1 %min.iters.check116, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cd = and i64 %umax, 28
  %n.vec = and i64 %umax, 8160                    ; 4 uses
  %wide.load118 = load <16 x i8>, ptr %i.d, align 16, !tbaa !184
  %wide.load119 = load <16 x i8>, ptr %i.bv, align 16, !tbaa !184
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ce = getelementptr i8, ptr %i.ca, i64 %index ; 2 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 16
  %wide.load = load <16 x i8>, ptr %i.ce, align 1, !tbaa !184
  %wide.load117 = load <16 x i8>, ptr %i.cf, align 1, !tbaa !184
  %i.cg = xor <16 x i8> %wide.load118, %wide.load
  %i.ch = xor <16 x i8> %wide.load119, %wide.load117
  %i.ci = getelementptr inbounds nuw i8, ptr %i.br, i64 %index ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store <16 x i8> %i.cg, ptr %i.ci, align 1, !tbaa !184
  store <16 x i8> %i.ch, ptr %i.cj, align 1, !tbaa !184
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !1348

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %umax, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cd, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1351

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec120 = and i64 %umax, 8188                 ; 3 uses
  %wide.load123 = load <4 x i8>, ptr %i.d, align 16, !tbaa !184
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index121 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next124, %vec.epilog.vector.body ] ; 3 uses
  %i.cl = getelementptr i8, ptr %i.ca, i64 %index121
  %wide.load122 = load <4 x i8>, ptr %i.cl, align 1, !tbaa !184
  %i.cm = xor <4 x i8> %wide.load123, %wide.load122
  %i.cn = getelementptr inbounds nuw i8, ptr %i.br, i64 %index121
  store <4 x i8> %i.cm, ptr %i.cn, align 1, !tbaa !184
  %index.next124 = add nuw i64 %index121, 4       ; 2 uses
  %i.co = icmp eq i64 %index.next124, %n.vec120
end_hunk_0
