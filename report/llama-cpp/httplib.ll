Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/httplib?download=true
inline.NumInlined: 21893
inline.NumDeleted: 6596
loop-unroll.NumCompletelyUnrolled: 60
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 105
begin_hunk_0_@_ZN7httplib6detail16has_header_tokenERKNS0_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEEERKS7_SE_:bb.a
  br i1 %i.bi, label %.lr.ph.i, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tIKSt4pairIS7_S7_EEppEv.exit

.lr.ph.i:                                         ; preds = %bb.l
  %i.bj = load i64, ptr %i.ak, align 8, !tbaa !182
  %.fr = freeze i64 %i.bj                         ; 3 uses
  %.not6.i.i.i.i.i.i17 = icmp eq i64 %.fr, 0
  br i1 %.not6.i.i.i.i.i.i17, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.i.us
  %.sroa.7.1.us = phi i64 [ %i.bo, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.i.us ], [ %i.bh, %.lr.ph.i ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %.sroa.7.1.us
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !182
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tIKSt4pairIS7_S7_EEppEv.exit, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.i.us

_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.i.us: ; preds = %.lr.ph.i.split.us
  %i.bo = add nuw i64 %.sroa.7.1.us, 1            ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.bo, %.pre30.i
  br i1 %exitcond.not.i.us, label %.critedge, label %.lr.ph.i.split.us, !llvm.loop !11

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.i
  %.sroa.7.1 = phi i64 [ %i.ch, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.i ], [ %i.bh, %.lr.ph.i ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %.sroa.7.1 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !182
  %i.bs = icmp eq i64 %i.br, %.fr
  br i1 %i.bs, label %.lr.ph.i.preheader.i.i.i.i.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %.lr.ph.i.split
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !195 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.fr
  %i.bv = load ptr, ptr %i.aj, align 8, !tbaa !195
  br label %.lr.ph.i.i.i.i.i.i18

.lr.ph.i.i.i.i.i.i18:                             ; preds = %bb.m, %.lr.ph.i.preheader.i.i.i.i.i
  %.sroa.0.08.i.i.i.i.i.i19 = phi ptr [ %i.cg, %bb.m ], [ %i.bv, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i20 = phi ptr [ %i.cf, %bb.m ], [ %i.bt, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.bw = load i8, ptr %.sroa.03.07.i.i.i.i.i.i20, align 1, !tbaa !183
  %i.bx = load i8, ptr %.sroa.0.08.i.i.i.i.i.i19, align 1, !tbaa !183
  %i.by = zext i8 %i.bw to i64
  %i.bz = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !183
  %i.cb = zext i8 %i.bx to i64
  %i.cc = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !183
  %i.ce = icmp eq i8 %i.ca, %i.cd
  br i1 %i.ce, label %bb.m, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.i

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i18
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i20, i64 1 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i19, i64 1
  %.not.i.i.i.i.i.i21 = icmp eq ptr %i.cf, %i.bu
  br i1 %.not.i.i.i.i.i.i21, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tIKSt4pairIS7_S7_EEppEv.exit, label %.lr.ph.i.i.i.i.i.i18, !llvm.loop !4

_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i18, %.lr.ph.i.split
  %i.ch = add nuw i64 %.sroa.7.1, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ch, %.pre30.i
  br i1 %exitcond.not.i, label %.critedge, label %.lr.ph.i.split, !llvm.loop !11

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tIKSt4pairIS7_S7_EEppEv.exit: ; preds = %.lr.ph.i.split.us, %bb.m, %bb.k, %bb.l
  %.sroa.7.2 = phi i64 [ %i.bh, %bb.l ], [ %.sroa.7.044, %bb.k ], [ %.sroa.7.1, %bb.m ], [ %.sroa.7.1.us, %.lr.ph.i.split.us ] ; 2 uses
  %.not57 = icmp eq i64 %.sroa.7.2, %.pre30.i
  br i1 %.not57, label %.critedge, label %_ZNSt8functionIFbPKcS1_EEC2EOS3_.exit.i, !llvm.loop !1344

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
  store ptr %i.d, ptr %0, align 8, !tbaa !181
  %i.e = icmp eq ptr %i.c, null
  br i1 %i.e, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.352) #48
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.f, ptr %i.a, align 8, !tbaa !196
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !195
  %i.i = load i64, ptr %i.a, align 8, !tbaa !196
  store i64 %i.i, ptr %i.d, align 8, !tbaa !183
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.d, %bb.b ] ; 2 uses
  switch i64 %i.f, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.c, align 1, !tbaa !183
  store i8 %i.k, ptr %i.j, align 1, !tbaa !183
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 1 %i.c, i64 %i.f, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !196  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !182
  %i.n = load ptr, ptr %0, align 8, !tbaa !195
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !183
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
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %6 = alloca %"class.std::random_device", align 8 ; 7 uses
  %i.d = alloca [4 x i8], align 16                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.e = select i1 %4, i8 -128, i8 0
  %i.f = and i8 %1, 15
  %i.g = or disjoint i8 %i.e, %i.f
  store i8 %i.g, ptr %i.a, align 1, !tbaa !183
  %i.h = icmp ult i64 %3, 126
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = trunc nuw nsw i64 %3 to i8               ; 2 uses
  %i.k = or disjoint i8 %i.j, -128
  %storemerge61 = select i1 %5, i8 %i.k, i8 %i.j
  store i8 %storemerge61, ptr %i.i, align 1, !tbaa !183
  %i.l = load ptr, ptr %0, align 8, !tbaa !200
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
  store i8 %spec.select, ptr %i.i, align 1, !tbaa !183
  %i.r = load ptr, ptr %0, align 8, !tbaa !200
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = call noundef i64 %i.t(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %i.a, i64 noundef 2)
  %i.v = icmp slt i64 %i.u, 0
  br i1 %i.v, label %bb.aa, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.w = lshr i64 %3, 8
  %i.x = trunc nuw i64 %i.w to i8
  store i8 %i.x, ptr %i.b, align 1, !tbaa !183
  %i.y = trunc i64 %3 to i8
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.y, ptr %i.z, align 1, !tbaa !183
  %i.aa = load ptr, ptr %0, align 8, !tbaa !200
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call noundef i64 %i.ac(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %i.b, i64 noundef 2)
  %i.ae = icmp sgt i64 %i.ad, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br i1 %i.ae, label %bb.h, label %bb.aa

bb.f:                                             ; preds = %bb.c
  %spec.select65 = select i1 %5, i8 -1, i8 127
  store i8 %spec.select65, ptr %i.i, align 1, !tbaa !183
  %i.af = load ptr, ptr %0, align 8, !tbaa !200
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call noundef i64 %i.ah(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %i.a, i64 noundef 2)
  %i.aj = icmp slt i64 %i.ai, 0
  br i1 %i.aj, label %bb.aa, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %7 = bitcast i64 %3 to <8 x i8>
  %8 = shufflevector <8 x i8> %7, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %8, ptr %i.c, align 8, !tbaa !183
  %i.ak = load ptr, ptr %0, align 8, !tbaa !200
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
  br i1 %.b, label %bb.o, label %bb.j, !prof !297

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZNSt13random_deviceC2Ev(ptr noundef nonnull align 8 dereferenceable(5000) %6)
  %i.ap = invoke noundef i32 @_ZNSt13random_device9_M_getvalEv(ptr noundef nonnull align 8 dereferenceable(5000) %6)
          to label %_ZNSt13random_deviceclEv.exit unwind label %bb.p

_ZNSt13random_deviceclEv.exit:                    ; preds = %bb.j
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  store i64 %i.aq, ptr @_ZZN7httplib6detail21write_websocket_frameERNS_6StreamENS_2ws6OpcodeEPKcmbbE3rng, align 8, !tbaa !196
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
  store i64 %i.aw, ptr %i.ar, align 8, !tbaa !196
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
  store i64 %i.bd, ptr %i.ay, align 8, !tbaa !196
  %i.be = add nuw nsw i64 %.011.i.i, 2
  br label %bb.k

bb.m:                                             ; preds = %bb.k
  store i64 624, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7httplib6detail21write_websocket_frameERNS_6StreamENS_2ws6OpcodeEPKcmbbE3rng, i64 4992), align 8, !tbaa !299
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
  %i.bj = load ptr, ptr %0, align 8, !tbaa !200
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
  store i8 0, ptr %i.br, align 1, !tbaa !183
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
  br i1 %.not64.not, label %iter.check, label %.critedge67, !llvm.loop !1346

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
  %wide.load118 = load <16 x i8>, ptr %i.d, align 16, !tbaa !183
  %wide.load119 = load <16 x i8>, ptr %i.bv, align 16, !tbaa !183
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ce = getelementptr i8, ptr %i.ca, i64 %index ; 2 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 16
  %wide.load = load <16 x i8>, ptr %i.ce, align 1, !tbaa !183
  %wide.load117 = load <16 x i8>, ptr %i.cf, align 1, !tbaa !183
  %i.cg = xor <16 x i8> %wide.load118, %wide.load
  %i.ch = xor <16 x i8> %wide.load119, %wide.load117
  %i.ci = getelementptr inbounds nuw i8, ptr %i.br, i64 %index ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store <16 x i8> %i.cg, ptr %i.ci, align 1, !tbaa !183
  store <16 x i8> %i.ch, ptr %i.cj, align 1, !tbaa !183
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !1347

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %umax, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cd, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1350

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec120 = and i64 %umax, 8188                 ; 3 uses
  %wide.load123 = load <4 x i8>, ptr %i.d, align 16, !tbaa !183
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index121 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next124, %vec.epilog.vector.body ] ; 3 uses
  %i.cl = getelementptr i8, ptr %i.ca, i64 %index121
  %wide.load122 = load <4 x i8>, ptr %i.cl, align 1, !tbaa !183
  %i.cm = xor <4 x i8> %wide.load123, %wide.load122
  %i.cn = getelementptr inbounds nuw i8, ptr %i.br, i64 %index121
  store <4 x i8> %i.cm, ptr %i.cn, align 1, !tbaa !183
  %index.next124 = add nuw i64 %index121, 4       ; 2 uses
  %i.co = icmp eq i64 %index.next124, %n.vec120
end_hunk_0
begin_hunk_1_@"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN7httplib2ws9WebSocket15start_heartbeatEvE3$_0EEEEE6_M_runEv":bb.a

bb.k:                                             ; preds = %bb.j
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %i.ay = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.l) #23 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit28.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.az = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.l) #23 ; 0 uses
  br i1 %i.aw, label %bb.m, label %.loopexit20.i.i.i.i.i

.loopexit20.i.i.i.i.i:                            ; preds = %bb.l, %.thread.i.i.i.i.i
  %i.ba = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #23 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11unique_lockISt5mutexE4lockEv.exit.i.i.i.i.i, label %.noexc19.i.i.i.i.i

.noexc19.i.i.i.i.i:                               ; preds = %.loopexit20.i.i.i.i.i
  call void @_ZSt20__throw_system_errori(i32 noundef %i.ba) #48
  unreachable

_ZNSt11unique_lockISt5mutexE4lockEv.exit.i.i.i.i.i: ; preds = %.loopexit20.i.i.i.i.i
  store atomic i8 1, ptr %i.d seq_cst, align 8
  br label %.loopexit.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.bb = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #23 ; 2 uses
  %.not.i.i21.i.i.i.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i21.i.i.i.i.i, label %_ZNSt11unique_lockISt5mutexE4lockEv.exit25.i.i.i.i.i, label %.noexc24.i.i.i.i.i

.noexc24.i.i.i.i.i:                               ; preds = %bb.m
  call void @_ZSt20__throw_system_errori(i32 noundef %i.bb) #48
  unreachable

_ZNSt11unique_lockISt5mutexE4lockEv.exit25.i.i.i.i.i: ; preds = %bb.m
  %i.bc = load i32, ptr %i.k, align 4, !tbaa !784
  %i.bd = add nsw i32 %i.bc, 1
  store i32 %i.bd, ptr %i.k, align 4, !tbaa !784
  %i.be = load atomic i8, ptr %i.d seq_cst, align 8, !range !197, !noundef !198
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %.loopexit.i.i.i.i.i, label %bb.c, !llvm.loop !3955

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %"_ZNSt6thread8_InvokerISt5tupleIJZN7httplib2ws9WebSocket15start_heartbeatEvE3$_0EEEclEv.exit"

.loopexit.i.i.i.i.i:                              ; preds = %_ZNSt11unique_lockISt5mutexE4lockEv.exit25.i.i.i.i.i, %bb.d, %_ZNSt11unique_lockISt5mutexE4lockEv.exit.i.i.i.i.i, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.preheader.i.i.i.i.i
  %i.bg = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #23 ; 0 uses
  br label %"_ZNSt6thread8_InvokerISt5tupleIJZN7httplib2ws9WebSocket15start_heartbeatEvE3$_0EEEclEv.exit"

bb.n:                                             ; preds = %bb.c
  %i.bh = landingpad { ptr, i32 }
          cleanup
  %i.bi = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #23 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit28.i.i.i.i.i

_ZNSt11unique_lockISt5mutexED2Ev.exit28.i.i.i.i.i: ; preds = %bb.n, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i.i.i.i
  %.pn.pn19.i.i.i.i.i = phi { ptr, i32 } [ %i.bh, %bb.n ], [ %i.ax, %bb.k ], [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i.i.i.i ]
  resume { ptr, i32 } %.pn.pn19.i.i.i.i.i

"_ZNSt6thread8_InvokerISt5tupleIJZN7httplib2ws9WebSocket15start_heartbeatEvE3$_0EEEclEv.exit": ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJRA5_KcS6_EEERS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(5) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !225  ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !227
  %.not = icmp eq ptr %i.c, %i.e
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !181
  %i.g = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(5) %1) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.g, ptr %i.a, align 8, !tbaa !196
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %i.c, align 8, !tbaa !195
  %i.j = load i64, ptr %i.a, align 8, !tbaa !196
  store i64 %i.j, ptr %i.f, align 8, !tbaa !183
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.b
  %i.k = phi ptr [ %i.i, %.noexc.i.i ], [ %i.f, %bb.b ] ; 2 uses
  switch i64 %i.g, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.l = load i8, ptr %1, align 1, !tbaa !183
  store i8 %i.l, ptr %i.k, align 1, !tbaa !183
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr nonnull align 1 dereferenceable(5) %1, i64 %i.g, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.m = load i64, ptr %i.a, align 8, !tbaa !196  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !182
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !195
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !181
  %i.s = load ptr, ptr %2, align 8, !tbaa !195    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !182  ; 2 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA5_KcS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  store ptr %i.s, ptr %i.q, align 8, !tbaa !195
  %i.z = load i64, ptr %i.t, align 8, !tbaa !183
  store i64 %i.z, ptr %i.r, align 8, !tbaa !183
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA5_KcS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA5_KcS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !182
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !182
  store ptr %i.t, ptr %2, align 8, !tbaa !195
  store i64 0, ptr %i.aa, align 8, !tbaa !182
  store i8 0, ptr %i.t, align 8, !tbaa !183
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !225
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 64 ; 2 uses
  store ptr %i.ae, ptr %i.b, align 8, !tbaa !225
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJRA5_KcS6_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.c, ptr noundef nonnull align 1 dereferenceable(5) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !402
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA5_KcS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_.exit
  %i.af = phi ptr [ %.pre, %bb.g ], [ %i.ae, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA5_KcS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_.exit ]
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -64
  ret ptr %i.ag
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #44

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #41

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #41

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #45

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #41

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #41

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nounwind }
attributes #24 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { cold noreturn }
attributes #29 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind memory(none) }
attributes #33 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nofree nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #38 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #41 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #42 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #43 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #44 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #45 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #46 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #47 = { builtin nounwind }
attributes #48 = { noreturn }
attributes #49 = { noreturn nounwind }
attributes #50 = { nounwind willreturn memory(none) }
attributes #51 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #52 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!118, !119}
!llvm.ident = !{!120}
!llvm.errno.tbaa = !{!125}

!0 = distinct !{null, null, null, null, null}
!1 = distinct !{null, null, null, null, null}
!2 = distinct !{!2, !226}
!3 = distinct !{!3, !226}
!4 = distinct !{!4, !226}
!5 = distinct !{!5, !226}
!6 = distinct !{!6, !226}
!7 = distinct !{!7, !226}
!8 = distinct !{null}
!9 = distinct !{!9, !226}
!10 = distinct !{!10, !226}
!11 = distinct !{!11, !226}
!12 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIKNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!13 = distinct !{!13, !226}
!14 = distinct !{!14, !226}
!15 = distinct !{!15, !226}
!16 = distinct !{!16, !226}
!17 = distinct !{!17, !226}
!18 = distinct !{null}
!19 = distinct !{!19, !226}
!20 = distinct !{!20, !226}
!21 = distinct !{!21, !226}
!22 = distinct !{!22, !226}
!23 = distinct !{null}
!24 = distinct !{!24, !226}
!25 = distinct !{null}
!26 = distinct !{!26, !226}
!27 = distinct !{!27, !226}
!28 = distinct !{!28, !226}
!29 = distinct !{null}
!30 = distinct !{null}
!31 = distinct !{null}
!32 = distinct !{!32, !226}
!33 = distinct !{!33, !226}
!34 = distinct !{null}
!35 = distinct !{ptr @_ZNSt12__shared_ptrIN7httplib6detail4mmapELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!36 = distinct !{!36, !226}
!37 = distinct !{!37, !226}
!38 = distinct !{!38, !226}
!39 = distinct !{!39, !226}
!40 = distinct !{!40, !226}
!41 = distinct !{ptr @_ZNSt12__shared_ptrIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14MultipartStateLN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!42 = distinct !{null, null}
!43 = distinct !{!43, !226}
!44 = distinct !{!44, !226}
!45 = distinct !{!45, !226}
!46 = distinct !{null}
!47 = distinct !{null}
!48 = distinct !{!48, !226}
!49 = distinct !{!49, !226}
!50 = distinct !{!50, !226}
!51 = distinct !{!51, !226}
!52 = distinct !{!52, !226}
!53 = distinct !{!53, !226}
!54 = distinct !{!54, !226}
!55 = distinct !{!55, !226}
!56 = distinct !{!56, !226}
!57 = distinct !{!57, !226}
!58 = distinct !{!58, !226}
!59 = distinct !{!59, !226}
!60 = distinct !{!60, !226}
!61 = distinct !{!61, !226}
!62 = distinct !{null, null, null, null, null, null, null}
!63 = distinct !{!63, !226}
!64 = distinct !{null, null, null, null, null, null, null}
!65 = distinct !{!65, !226}
!66 = distinct !{null, null, null}
!67 = distinct !{null, null, null}
!68 = distinct !{!68, !226}
!69 = distinct !{null}
!70 = distinct !{!70, !226}
!71 = distinct !{ptr @_ZN7httplib6Server21WebSocketHandlerEntryD2Ev, null, null}
!72 = distinct !{null}
!73 = distinct !{null}
!74 = distinct !{null}
!75 = distinct !{null, null}
!76 = distinct !{null, null}
!77 = distinct !{ptr @_ZN7httplib2ws9WebSocket15start_heartbeatEv, null, null, null}
!78 = distinct !{!78, !226}
!79 = distinct !{!79, !226}
!80 = distinct !{!80, !226}
!81 = distinct !{!81, !226}
!82 = distinct !{!82, !226}
!83 = distinct !{null}
!84 = distinct !{!84, !226}
!85 = distinct !{null, null}
!86 = distinct !{null, null}
!87 = distinct !{!87, !226}
!88 = distinct !{!88, !226}
!89 = distinct !{!89, !226}
!90 = distinct !{!90, !226}
!91 = distinct !{null}
!92 = distinct !{!92, !226}
!93 = distinct !{!93, !226}
!94 = distinct !{ptr @_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb0EE12_M_translateEc, null, null}
!95 = distinct !{null, null}
!96 = distinct !{ptr @_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb1EE12_M_translateEc, null, null}
!97 = distinct !{!97, !226}
!98 = distinct !{!98, !226}
!99 = distinct !{null}
!100 = distinct !{!100, !226}
!101 = distinct !{!101, !226}
!102 = distinct !{!102, !226}
!103 = distinct !{null, null}
!104 = distinct !{null}
!105 = distinct !{null}
!106 = distinct !{null}
!107 = distinct !{null}
!108 = distinct !{!108, !226}
!109 = distinct !{!109, !226}
!110 = distinct !{!110, !226}
!111 = distinct !{!111, !226}
!112 = distinct !{null, null}
!113 = distinct !{!113, !226}
!114 = distinct !{!114, !226}
!115 = distinct !{!115, !226}
!116 = distinct !{!116, !226}
!117 = distinct !{!117, !226}
!118 = !{i32 8, !"PIC Level", i32 2}
!119 = !{i32 7, !"uwtable", i32 2}
!120 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!121 = !{!"Simple C++ TBAA"}
!122 = !{!"omnipotent char", !121, i64 0}
!123 = !{!"int", !122, i64 0}
!124 = !{!"__libc_errno", !123, i64 0}
!125 = !{!124, !123, i64 0}
!126 = !{!"any pointer", !122, i64 0}
!127 = !{!"p1 _ZTSN7httplib8ResponseE", !126, i64 0}
!128 = !{!"_ZTSSt10_Head_baseILm0EPN7httplib8ResponseELb0EE", !127, i64 0}
!129 = !{!128, !127, i64 0}
!130 = !{!"_ZTSSt11_Tuple_implILm0EJPN7httplib8ResponseESt14default_deleteIS1_EEE", !128, i64 0}
!131 = !{!"_ZTSSt5tupleIJPN7httplib8ResponseESt14default_deleteIS1_EEE", !130, i64 0}
!132 = !{!"_ZTSSt15__uniq_ptr_implIN7httplib8ResponseESt14default_deleteIS1_EE", !131, i64 0}
!133 = !{!"_ZTSSt15__uniq_ptr_dataIN7httplib8ResponseESt14default_deleteIS1_ELb1ELb1EE", !132, i64 0}
!134 = !{!"_ZTSSt10unique_ptrIN7httplib8ResponseESt14default_deleteIS1_EE", !133, i64 0}
!135 = !{!"_ZTSN7httplib5ErrorE", !122, i64 0}
!136 = !{!"bool", !122, i64 0}
!137 = !{!"p1 _ZTSN7httplib16ClientConnectionE", !126, i64 0}
!138 = !{!"_ZTSSt10_Head_baseILm0EPN7httplib16ClientConnectionELb0EE", !137, i64 0}
!139 = !{!"_ZTSSt11_Tuple_implILm0EJPN7httplib16ClientConnectionESt14default_deleteIS1_EEE", !138, i64 0}
!140 = !{!"_ZTSSt5tupleIJPN7httplib16ClientConnectionESt14default_deleteIS1_EEE", !139, i64 0}
!141 = !{!"_ZTSSt15__uniq_ptr_implIN7httplib16ClientConnectionESt14default_deleteIS1_EE", !140, i64 0}
end_hunk_1
