Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/builder_dict?download=true
inline.NumInlined: 5256
inline.NumDeleted: 1512
loop-unroll.NumCompletelyUnrolled: 99
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 113
begin_hunk_0_@_ZN5arrow15VisitTypeInlineINS_8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserterEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
  %i.i = alloca i32, align 4                      ; 3 uses
  %41 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %42 = alloca %class.anon.238, align 1           ; 3 uses
  %43 = alloca %class.anon.239, align 1           ; 3 uses
  %i.j = alloca i16, align 2                      ; 4 uses
  %i.k = alloca i32, align 4                      ; 3 uses
  %44 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !620
  switch i32 %i.m, label %bb.ce [
    i32 0, label %bb.b
    i32 1, label %bb.e
    i32 3, label %bb.f
    i32 2, label %bb.g
    i32 5, label %bb.h
    i32 4, label %bb.i
    i32 7, label %bb.j
    i32 6, label %bb.k
    i32 9, label %bb.l
    i32 8, label %bb.m
    i32 10, label %bb.n
    i32 11, label %bb.p
    i32 12, label %bb.q
    i32 13, label %bb.r
    i32 39, label %bb.t
    i32 14, label %bb.u
    i32 40, label %bb.w
    i32 34, label %bb.x
    i32 35, label %bb.z
    i32 15, label %bb.ab
    i32 33, label %bb.ad
    i32 16, label %bb.ae
    i32 17, label %bb.af
    i32 18, label %bb.ag
    i32 19, label %bb.ah
    i32 20, label %bb.ai
    i32 37, label %bb.aj
    i32 21, label %bb.ak
    i32 22, label %bb.al
    i32 43, label %bb.am
    i32 44, label %bb.ao
    i32 23, label %bb.aq
    i32 24, label %bb.as
    i32 25, label %bb.au
    i32 36, label %bb.ax
    i32 41, label %bb.ba
    i32 42, label %bb.bd
    i32 30, label %bb.bg
    i32 32, label %bb.bj
    i32 26, label %bb.bm
    i32 27, label %bb.bp
    i32 28, label %bb.bs
    i32 29, label %bb.bv
    i32 38, label %bb.by
    i32 31, label %bb.cb
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #25, !noalias !1297
  call void @_ZN5arrow8internal12JoinToStringIJRA27_KcRKNS_8NullTypeERA20_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %45, ptr noundef nonnull align 1 dereferenceable(27) @.str.20, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 1 dereferenceable(20) @.str.21), !noalias !1297
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 10, ptr noundef nonnull align 8 dereferenceable(32) %45)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %45, align 8, !tbaa !71, !noalias !1297 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_8NullTypeEEENS_6StatusERKT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.q = load i64, ptr %i.o, align 8, !tbaa !38, !noalias !1297
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #26
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_8NullTypeEEENS_6StatusERKT_.exit

bb.d:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %45, align 8, !tbaa !71, !noalias !1297 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i: ; preds = %bb.d
  %i.w = load i64, ptr %i.u, align 8, !tbaa !38, !noalias !1297
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i201, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i196, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i191, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i186, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i181, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i176, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i171, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i166, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i161, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i156, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i151, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i146, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i ], [ %i.mc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i146 ], [ %i.mn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i151 ], [ %i.my, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i156 ], [ %i.nj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i161 ], [ %i.nu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i166 ], [ %i.of, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i171 ], [ %i.oq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i176 ], [ %i.pb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i181 ], [ %i.pm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i186 ], [ %i.px, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i191 ], [ %i.qi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i196 ], [ %i.qt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i201 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #25, !noalias !1297
  br label %common.resume

_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_8NullTypeEEENS_6StatusERKT_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #25, !noalias !1297
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.e:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1306, !noalias !1307, !nonnull !84, !align !952
  tail call void @_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_11BooleanTypeENS_12BooleanArrayEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKS9_RKT0_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.z)
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.f:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1306, !noalias !1310, !nonnull !84, !align !952
  tail call void @_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_8Int8TypeENS_12NumericArrayIS5_EEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKSA_RKT0_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.ab)
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.g:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1306, !noalias !1313, !nonnull !84, !align !952
  tail call void @_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_9UInt8TypeENS_12NumericArrayIS5_EEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKSA_RKT0_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.ad)
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.h:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1306, !noalias !1316, !nonnull !84, !align !952
  tail call void @_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_9Int16TypeENS_12NumericArrayIS5_EEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKSA_RKT0_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.af)
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.i:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1306, !noalias !1319, !nonnull !84, !align !952
  tail call void @_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_10UInt16TypeENS_12NumericArrayIS5_EEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKSA_RKT0_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.ah)
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.j:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1306, !noalias !1322, !nonnull !84, !align !952
  tail call void @_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_9Int32TypeENS_12NumericArrayIS5_EEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKSA_RKT0_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.aj)
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.k:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1306, !noalias !1325, !nonnull !84, !align !952
  tail call void @_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_10UInt32TypeENS_12NumericArrayIS5_EEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKSA_RKT0_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.al)
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.l:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1306, !noalias !1328, !nonnull !84, !align !952
  tail call void @_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_9Int64TypeENS_12NumericArrayIS5_EEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKSA_RKT0_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.an)
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.m:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1306, !noalias !1331, !nonnull !84, !align !952
  tail call void @_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_10UInt64TypeENS_12NumericArrayIS5_EEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKSA_RKT0_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.ap)
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.n:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1334)
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1306, !noalias !1334, !nonnull !84, !align !952 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1337)
  %i.as = tail call noundef i64 @_ZNK5arrow5Array10null_countEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ar), !noalias !1340
  %i.at = icmp sgt i64 %i.as, 0
  br i1 %i.at, label %bb.o, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !92, !noalias !1340
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !1341, !noalias !1340
  %i.ay = icmp sgt i64 %i.ax, 0
  br i1 %i.ay, label %_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i, label %._crit_edge.i.i

_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i:              ; preds = %.preheader.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  br label %_ZN5arrow6StatusD2Ev.exit.i.i

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN5arrow6Status8FromArgsIJRA49_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(49) @.str.22)
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit18.i.i, %_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i
  %.020.i.i = phi i64 [ 0, %_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i ], [ %i.bi, %_ZN5arrow6StatusD2Ev.exit18.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #25, !noalias !1340
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #25, !noalias !1340
  %i.ba = load ptr, ptr %2, align 8, !tbaa !101, !noalias !1340
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !1356, !noalias !1340
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %.020.i.i
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !1362, !noalias !1340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1340
  store i16 %i.bd, ptr %i.j, align 2, !tbaa !1362, !noalias !1363
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !86, !noalias !1363
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #25, !noalias !1366
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #25, !noalias !1366
  call void @_ZN5arrow8internal15ScalarMemoTableINS_4util7Float16ENS0_9HashTableEE11GetOrInsertIRtZNS5_11GetOrInsertIS7_EENS_6StatusEOT_PiEUliE_ZNS8_IS7_EES9_SB_SC_EUliE0_EES9_SB_OT0_OT1_SC_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %44, ptr noundef nonnull align 8 dereferenceable(100) %i.bf, ptr noundef nonnull align 2 dereferenceable(2) %i.j, ptr noundef nonnull align 1 dereferenceable(1) %42, ptr noundef nonnull align 1 dereferenceable(1) %43, ptr noundef nonnull %i.k), !noalias !1340
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #25, !noalias !1366
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #25, !noalias !1366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1340
  %i.bg = load ptr, ptr %44, align 8, !tbaa !67, !noalias !1340 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #25, !noalias !1340
  %i.bh = icmp eq ptr %i.bg, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #25, !noalias !1340
  br i1 %i.bh, label %_ZN5arrow6StatusD2Ev.exit18.i.i, label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_13HalfFloatTypeENS_12NumericArrayIS5_EEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKSA_RKT0_.exit.loopexit.i

_ZN5arrow6StatusD2Ev.exit18.i.i:                  ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  %i.bi = add nuw nsw i64 %.020.i.i, 1            ; 2 uses
  %i.bj = load ptr, ptr %i.au, align 8, !tbaa !92, !noalias !1340
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !1341, !noalias !1340
  %i.bm = icmp slt i64 %i.bi, %i.bl
  br i1 %i.bm, label %_ZN5arrow6StatusD2Ev.exit.i.i, label %._crit_edge.i.i, !llvm.loop !1369

._crit_edge.i.i:                                  ; preds = %_ZN5arrow6StatusD2Ev.exit18.i.i, %.preheader.i.i
  store ptr null, ptr %0, align 8, !tbaa !67, !alias.scope !1370
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_13HalfFloatTypeENS_12NumericArrayIS5_EEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKSA_RKT0_.exit.loopexit.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  store ptr %i.bg, ptr %0, align 8, !alias.scope !1334
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.p:                                             ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1306, !noalias !1373, !nonnull !84, !align !952
  tail call void @_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_9FloatTypeENS_12NumericArrayIS5_EEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKSA_RKT0_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.bo)
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.q:                                             ; preds = %bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1306, !noalias !1376, !nonnull !84, !align !952
  tail call void @_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_10DoubleTypeENS_12NumericArrayIS5_EEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKSA_RKT0_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.bq)
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.r:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1379)
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !1306, !noalias !1379, !nonnull !84, !align !952 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1382)
  %i.bt = tail call noundef i64 @_ZNK5arrow5Array10null_countEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bs), !noalias !1385
  %i.bu = icmp sgt i64 %i.bt, 0
  br i1 %i.bu, label %bb.s, label %.preheader.i.i91

.preheader.i.i91:                                 ; preds = %bb.r
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !92, !noalias !1385
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !1341, !noalias !1385
  %i.bz = icmp sgt i64 %i.by, 0
  br i1 %i.bz, label %_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i93, label %._crit_edge.i.i92

_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i93:            ; preds = %.preheader.i.i91
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  br label %_ZN5arrow6StatusD2Ev.exit.i.i94

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN5arrow6Status8FromArgsIJRA49_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(49) @.str.22)
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

_ZN5arrow6StatusD2Ev.exit.i.i94:                  ; preds = %_ZN5arrow6StatusD2Ev.exit18.i.i96, %_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i93
  %.020.i.i95 = phi i64 [ 0, %_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i93 ], [ %i.cq, %_ZN5arrow6StatusD2Ev.exit18.i.i96 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #25, !noalias !1385
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #25, !noalias !1385
  %i.cc = load ptr, ptr %2, align 8, !tbaa !101, !noalias !1385
  %i.cd = load ptr, ptr %i.ca, align 8, !tbaa !1386, !noalias !1385
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %.020.i.i95 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !3, !noalias !1385 ; 2 uses
  %i.cg = load ptr, ptr %i.cb, align 8, !tbaa !1389, !noalias !1385
  %i.ch = sext i32 %i.cf to i64
  %i.ci = getelementptr inbounds i8, ptr %i.cg, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.ce, i64 4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !3, !noalias !1385
  %i.cl = sub nsw i32 %i.ck, %i.cf
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !86, !noalias !1390
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #25, !noalias !1393
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #25, !noalias !1393
  call void @_ZN5arrow8internal15BinaryMemoTableINS_13BinaryBuilderEE11GetOrInsertIZNS3_11GetOrInsertEPKviPiEUliE_ZNS3_11GetOrInsertES6_iS7_EUliE0_EENS_6StatusES6_iOT_OT0_S7_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %41, ptr noundef nonnull align 8 dereferenceable(356) %i.cn, ptr noundef %i.ci, i32 noundef %i.cl, ptr noundef nonnull align 1 dereferenceable(1) %39, ptr noundef nonnull align 1 dereferenceable(1) %40, ptr noundef nonnull %i.i), !noalias !1385
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #25, !noalias !1393
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #25, !noalias !1393
  %i.co = load ptr, ptr %41, align 8, !tbaa !67, !noalias !1385 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #25, !noalias !1385
  %i.cp = icmp eq ptr %i.co, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #25, !noalias !1385
  br i1 %i.cp, label %_ZN5arrow6StatusD2Ev.exit18.i.i96, label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_10StringTypeENS_11StringArrayEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKS9_RKT0_.exit.loopexit.i

_ZN5arrow6StatusD2Ev.exit18.i.i96:                ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i94
  %i.cq = add nuw nsw i64 %.020.i.i95, 1          ; 2 uses
  %i.cr = load ptr, ptr %i.bv, align 8, !tbaa !92, !noalias !1385
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !1341, !noalias !1385
  %i.cu = icmp slt i64 %i.cq, %i.ct
  br i1 %i.cu, label %_ZN5arrow6StatusD2Ev.exit.i.i94, label %._crit_edge.i.i92, !llvm.loop !1398

._crit_edge.i.i92:                                ; preds = %_ZN5arrow6StatusD2Ev.exit18.i.i96, %.preheader.i.i91
  store ptr null, ptr %0, align 8, !tbaa !67, !alias.scope !1399
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_10StringTypeENS_11StringArrayEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKS9_RKT0_.exit.loopexit.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i94
  store ptr %i.co, ptr %0, align 8, !alias.scope !1379
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.t:                                             ; preds = %bb.a
  tail call void @_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_14StringViewTypeEEENS_6StatusERKT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(72) %1)
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.u:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1402)
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !1306, !noalias !1402, !nonnull !84, !align !952 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1405)
  %i.cx = tail call noundef i64 @_ZNK5arrow5Array10null_countEv(ptr noundef nonnull align 8 dereferenceable(48) %i.cw), !noalias !1408
  %i.cy = icmp sgt i64 %i.cx, 0
  br i1 %i.cy, label %bb.v, label %.preheader.i.i97

.preheader.i.i97:                                 ; preds = %bb.u
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !92, !noalias !1408
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !1341, !noalias !1408
  %i.dd = icmp sgt i64 %i.dc, 0
  br i1 %i.dd, label %_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i99, label %._crit_edge.i.i98

_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i99:            ; preds = %.preheader.i.i97
  %i.de = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.df = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  br label %_ZN5arrow6StatusD2Ev.exit.i.i100

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN5arrow6Status8FromArgsIJRA49_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(49) @.str.22)
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

_ZN5arrow6StatusD2Ev.exit.i.i100:                 ; preds = %_ZN5arrow6StatusD2Ev.exit18.i.i102, %_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i99
  %.020.i.i101 = phi i64 [ 0, %_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i99 ], [ %i.du, %_ZN5arrow6StatusD2Ev.exit18.i.i102 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25, !noalias !1408
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #25, !noalias !1408
  %i.dg = load ptr, ptr %2, align 8, !tbaa !101, !noalias !1408
  %i.dh = load ptr, ptr %i.de, align 8, !tbaa !1386, !noalias !1408
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %.020.i.i101 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !3, !noalias !1408 ; 2 uses
  %i.dk = load ptr, ptr %i.df, align 8, !tbaa !1389, !noalias !1408
  %i.dl = sext i32 %i.dj to i64
  %i.dm = getelementptr inbounds i8, ptr %i.dk, i64 %i.dl
  %i.dn = getelementptr i8, ptr %i.di, i64 4
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !3, !noalias !1408
  %i.dp = sub nsw i32 %i.do, %i.dj
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !86, !noalias !1409
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #25, !noalias !1412
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #25, !noalias !1412
  call void @_ZN5arrow8internal15BinaryMemoTableINS_13BinaryBuilderEE11GetOrInsertIZNS3_11GetOrInsertEPKviPiEUliE_ZNS3_11GetOrInsertES6_iS7_EUliE0_EENS_6StatusES6_iOT_OT0_S7_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %38, ptr noundef nonnull align 8 dereferenceable(356) %i.dr, ptr noundef %i.dm, i32 noundef %i.dp, ptr noundef nonnull align 1 dereferenceable(1) %36, ptr noundef nonnull align 1 dereferenceable(1) %37, ptr noundef nonnull %i.h), !noalias !1408
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #25, !noalias !1412
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #25, !noalias !1412
  %i.ds = load ptr, ptr %38, align 8, !tbaa !67, !noalias !1408 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #25, !noalias !1408
  %i.dt = icmp eq ptr %i.ds, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25, !noalias !1408
  br i1 %i.dt, label %_ZN5arrow6StatusD2Ev.exit18.i.i102, label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_10BinaryTypeENS_11BinaryArrayEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKS9_RKT0_.exit.loopexit.i

_ZN5arrow6StatusD2Ev.exit18.i.i102:               ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i100
  %i.du = add nuw nsw i64 %.020.i.i101, 1         ; 2 uses
  %i.dv = load ptr, ptr %i.cz, align 8, !tbaa !92, !noalias !1408
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !1341, !noalias !1408
  %i.dy = icmp slt i64 %i.du, %i.dx
  br i1 %i.dy, label %_ZN5arrow6StatusD2Ev.exit.i.i100, label %._crit_edge.i.i98, !llvm.loop !1417

._crit_edge.i.i98:                                ; preds = %_ZN5arrow6StatusD2Ev.exit18.i.i102, %.preheader.i.i97
  store ptr null, ptr %0, align 8, !tbaa !67, !alias.scope !1418
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_10BinaryTypeENS_11BinaryArrayEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKS9_RKT0_.exit.loopexit.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i100
  store ptr %i.ds, ptr %0, align 8, !alias.scope !1402
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.w:                                             ; preds = %bb.a
  tail call void @_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_14BinaryViewTypeEEENS_6StatusERKT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(72) %1)
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.x:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1421)
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !1306, !noalias !1421, !nonnull !84, !align !952 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1424)
  %i.eb = tail call noundef i64 @_ZNK5arrow5Array10null_countEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ea), !noalias !1427
  %i.ec = icmp sgt i64 %i.eb, 0
  br i1 %i.ec, label %bb.y, label %.preheader.i.i103

.preheader.i.i103:                                ; preds = %bb.x
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !92, !noalias !1427
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !1341, !noalias !1427
  %i.eh = icmp sgt i64 %i.eg, 0
  br i1 %i.eh, label %_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i105, label %._crit_edge.i.i104

_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i105:           ; preds = %.preheader.i.i103
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  br label %_ZN5arrow6StatusD2Ev.exit.i.i106

bb.y:                                             ; preds = %bb.x
  tail call void @_ZN5arrow6Status8FromArgsIJRA49_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(49) @.str.22)
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

_ZN5arrow6StatusD2Ev.exit.i.i106:                 ; preds = %_ZN5arrow6StatusD2Ev.exit18.i.i108, %_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i105
  %.020.i.i107 = phi i64 [ 0, %_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i105 ], [ %i.ex, %_ZN5arrow6StatusD2Ev.exit18.i.i108 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25, !noalias !1427
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #25, !noalias !1427
  %i.ek = load ptr, ptr %2, align 8, !tbaa !101, !noalias !1427
  %i.el = load ptr, ptr %i.ei, align 8, !tbaa !1428, !noalias !1427
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %.020.i.i107 ; 2 uses
  %i.en = load i64, ptr %i.em, align 8, !tbaa !126, !noalias !1427 ; 2 uses
  %i.eo = load ptr, ptr %i.ej, align 8, !tbaa !1430, !noalias !1427
  %i.ep = getelementptr inbounds i8, ptr %i.eo, i64 %i.en
  %i.eq = getelementptr i8, ptr %i.em, i64 8
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !126, !noalias !1427
  %i.es = sub nsw i64 %i.er, %i.en
  %i.et = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !86, !noalias !1431
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #25, !noalias !1434
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #25, !noalias !1434
  call void @_ZN5arrow8internal15BinaryMemoTableINS_18LargeBinaryBuilderEE11GetOrInsertIZNS3_11GetOrInsertEPKvlPiEUliE_ZNS3_11GetOrInsertES6_lS7_EUliE0_EENS_6StatusES6_lOT_OT0_S7_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %35, ptr noundef nonnull align 8 dereferenceable(356) %i.eu, ptr noundef %i.ep, i64 noundef %i.es, ptr noundef nonnull align 1 dereferenceable(1) %33, ptr noundef nonnull align 1 dereferenceable(1) %34, ptr noundef nonnull %i.g), !noalias !1427
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #25, !noalias !1434
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #25, !noalias !1434
  %i.ev = load ptr, ptr %35, align 8, !tbaa !67, !noalias !1427 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #25, !noalias !1427
  %i.ew = icmp eq ptr %i.ev, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25, !noalias !1427
  br i1 %i.ew, label %_ZN5arrow6StatusD2Ev.exit18.i.i108, label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_15LargeStringTypeENS_16LargeStringArrayEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKS9_RKT0_.exit.loopexit.i

_ZN5arrow6StatusD2Ev.exit18.i.i108:               ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i106
  %i.ex = add nuw nsw i64 %.020.i.i107, 1         ; 2 uses
  %i.ey = load ptr, ptr %i.ed, align 8, !tbaa !92, !noalias !1427
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !1341, !noalias !1427
  %i.fb = icmp slt i64 %i.ex, %i.fa
  br i1 %i.fb, label %_ZN5arrow6StatusD2Ev.exit.i.i106, label %._crit_edge.i.i104, !llvm.loop !1439

._crit_edge.i.i104:                               ; preds = %_ZN5arrow6StatusD2Ev.exit18.i.i108, %.preheader.i.i103
  store ptr null, ptr %0, align 8, !tbaa !67, !alias.scope !1440
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_15LargeStringTypeENS_16LargeStringArrayEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKS9_RKT0_.exit.loopexit.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i106
  store ptr %i.ev, ptr %0, align 8, !alias.scope !1421
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.z:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1443)
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !1306, !noalias !1443, !nonnull !84, !align !952 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1446)
  %i.fe = tail call noundef i64 @_ZNK5arrow5Array10null_countEv(ptr noundef nonnull align 8 dereferenceable(48) %i.fd), !noalias !1449
  %i.ff = icmp sgt i64 %i.fe, 0
  br i1 %i.ff, label %bb.aa, label %.preheader.i.i109

.preheader.i.i109:                                ; preds = %bb.z
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 8 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !92, !noalias !1449
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !1341, !noalias !1449
  %i.fk = icmp sgt i64 %i.fj, 0
  br i1 %i.fk, label %_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i111, label %._crit_edge.i.i110

_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i111:           ; preds = %.preheader.i.i109
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fd, i64 40
  br label %_ZN5arrow6StatusD2Ev.exit.i.i112

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZN5arrow6Status8FromArgsIJRA49_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(49) @.str.22)
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

_ZN5arrow6StatusD2Ev.exit.i.i112:                 ; preds = %_ZN5arrow6StatusD2Ev.exit18.i.i114, %_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i111
  %.020.i.i113 = phi i64 [ 0, %_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i111 ], [ %i.ga, %_ZN5arrow6StatusD2Ev.exit18.i.i114 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25, !noalias !1449
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #25, !noalias !1449
  %i.fn = load ptr, ptr %2, align 8, !tbaa !101, !noalias !1449
  %i.fo = load ptr, ptr %i.fl, align 8, !tbaa !1428, !noalias !1449
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %.020.i.i113 ; 2 uses
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !126, !noalias !1449 ; 2 uses
  %i.fr = load ptr, ptr %i.fm, align 8, !tbaa !1430, !noalias !1449
  %i.fs = getelementptr inbounds i8, ptr %i.fr, i64 %i.fq
  %i.ft = getelementptr i8, ptr %i.fp, i64 8
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !126, !noalias !1449
  %i.fv = sub nsw i64 %i.fu, %i.fq
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !86, !noalias !1450
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #25, !noalias !1453
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #25, !noalias !1453
  call void @_ZN5arrow8internal15BinaryMemoTableINS_18LargeBinaryBuilderEE11GetOrInsertIZNS3_11GetOrInsertEPKvlPiEUliE_ZNS3_11GetOrInsertES6_lS7_EUliE0_EENS_6StatusES6_lOT_OT0_S7_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %32, ptr noundef nonnull align 8 dereferenceable(356) %i.fx, ptr noundef %i.fs, i64 noundef %i.fv, ptr noundef nonnull align 1 dereferenceable(1) %30, ptr noundef nonnull align 1 dereferenceable(1) %31, ptr noundef nonnull %i.f), !noalias !1449
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #25, !noalias !1453
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #25, !noalias !1453
  %i.fy = load ptr, ptr %32, align 8, !tbaa !67, !noalias !1449 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #25, !noalias !1449
  %i.fz = icmp eq ptr %i.fy, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25, !noalias !1449
  br i1 %i.fz, label %_ZN5arrow6StatusD2Ev.exit18.i.i114, label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_15LargeBinaryTypeENS_16LargeBinaryArrayEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKS9_RKT0_.exit.loopexit.i

_ZN5arrow6StatusD2Ev.exit18.i.i114:               ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i112
  %i.ga = add nuw nsw i64 %.020.i.i113, 1         ; 2 uses
  %i.gb = load ptr, ptr %i.fg, align 8, !tbaa !92, !noalias !1449
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !1341, !noalias !1449
  %i.ge = icmp slt i64 %i.ga, %i.gd
  br i1 %i.ge, label %_ZN5arrow6StatusD2Ev.exit.i.i112, label %._crit_edge.i.i110, !llvm.loop !1458

._crit_edge.i.i110:                               ; preds = %_ZN5arrow6StatusD2Ev.exit18.i.i114, %.preheader.i.i109
  store ptr null, ptr %0, align 8, !tbaa !67, !alias.scope !1459
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_15LargeBinaryTypeENS_16LargeBinaryArrayEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKS9_RKT0_.exit.loopexit.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i112
  store ptr %i.fy, ptr %0, align 8, !alias.scope !1443
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.ab:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1462)
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !1306, !noalias !1462, !nonnull !84, !align !952 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1465)
  %i.gh = tail call noundef i64 @_ZNK5arrow5Array10null_countEv(ptr noundef nonnull align 8 dereferenceable(52) %i.gg), !noalias !1468
  %i.gi = icmp sgt i64 %i.gh, 0
  br i1 %i.gi, label %bb.ac, label %.preheader.i.i115

.preheader.i.i115:                                ; preds = %bb.ab
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 8 ; 2 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !92, !noalias !1468
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !1341, !noalias !1468
  %i.gn = icmp sgt i64 %i.gm, 0
  br i1 %i.gn, label %_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i117, label %._crit_edge.i.i116

_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i117:           ; preds = %.preheader.i.i115
  %i.go = getelementptr inbounds nuw i8, ptr %i.gg, i64 40
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gg, i64 48
  br label %_ZN5arrow6StatusD2Ev.exit.i.i118

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZN5arrow6Status8FromArgsIJRA49_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(49) @.str.22)
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

_ZN5arrow6StatusD2Ev.exit.i.i118:                 ; preds = %_ZN5arrow6StatusD2Ev.exit18.i.i120, %_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i117
  %.020.i.i119 = phi i64 [ 0, %_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i117 ], [ %i.ha, %_ZN5arrow6StatusD2Ev.exit18.i.i120 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25, !noalias !1468
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #25, !noalias !1468
  %i.gq = load ptr, ptr %2, align 8, !tbaa !101, !noalias !1468
  %i.gr = load ptr, ptr %i.go, align 8, !tbaa !1469, !noalias !1468
  %i.gs = load i32, ptr %i.gp, align 8, !tbaa !1471, !noalias !1468 ; 2 uses
  %i.gt = sext i32 %i.gs to i64
  %i.gu = mul nsw i64 %.020.i.i119, %i.gt
  %i.gv = getelementptr inbounds i8, ptr %i.gr, i64 %i.gu
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !86, !noalias !1472
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #25, !noalias !1475
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25, !noalias !1475
  call void @_ZN5arrow8internal15BinaryMemoTableINS_13BinaryBuilderEE11GetOrInsertIZNS3_11GetOrInsertEPKviPiEUliE_ZNS3_11GetOrInsertES6_iS7_EUliE0_EENS_6StatusES6_iOT_OT0_S7_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %29, ptr noundef nonnull align 8 dereferenceable(356) %i.gx, ptr noundef %i.gv, i32 noundef %i.gs, ptr noundef nonnull align 1 dereferenceable(1) %27, ptr noundef nonnull align 1 dereferenceable(1) %28, ptr noundef nonnull %i.e), !noalias !1468
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25, !noalias !1475
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25, !noalias !1475
  %i.gy = load ptr, ptr %29, align 8, !tbaa !67, !noalias !1468 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25, !noalias !1468
  %i.gz = icmp eq ptr %i.gy, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25, !noalias !1468
  br i1 %i.gz, label %_ZN5arrow6StatusD2Ev.exit18.i.i120, label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_19FixedSizeBinaryTypeENS_20FixedSizeBinaryArrayEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKS9_RKT0_.exit.loopexit.i

_ZN5arrow6StatusD2Ev.exit18.i.i120:               ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i118
  %i.ha = add nuw nsw i64 %.020.i.i119, 1         ; 2 uses
  %i.hb = load ptr, ptr %i.gj, align 8, !tbaa !92, !noalias !1468
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !1341, !noalias !1468
  %i.he = icmp slt i64 %i.ha, %i.hd
  br i1 %i.he, label %_ZN5arrow6StatusD2Ev.exit.i.i118, label %._crit_edge.i.i116, !llvm.loop !1480

._crit_edge.i.i116:                               ; preds = %_ZN5arrow6StatusD2Ev.exit18.i.i120, %.preheader.i.i115
  store ptr null, ptr %0, align 8, !tbaa !67, !alias.scope !1481
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_19FixedSizeBinaryTypeENS_20FixedSizeBinaryArrayEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKS9_RKT0_.exit.loopexit.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i118
  store ptr %i.gy, ptr %0, align 8, !alias.scope !1462
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.ad:                                            ; preds = %bb.a
  %i.hf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !1306, !noalias !1484, !nonnull !84, !align !952
  tail call void @_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_12DurationTypeENS_12NumericArrayIS5_EEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKSA_RKT0_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(76) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.hg)
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.ae:                                            ; preds = %bb.a
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !1306, !noalias !1487, !nonnull !84, !align !952
  tail call void @_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_10Date32TypeENS_12NumericArrayIS5_EEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKSA_RKT0_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.hi)
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.af:                                            ; preds = %bb.a
  %i.hj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !1306, !noalias !1490, !nonnull !84, !align !952
  tail call void @_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_10Date64TypeENS_12NumericArrayIS5_EEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKSA_RKT0_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.hk)
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.ag:                                            ; preds = %bb.a
  %i.hl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !1306, !noalias !1493, !nonnull !84, !align !952
  tail call void @_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_13TimestampTypeENS_12NumericArrayIS5_EEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKSA_RKT0_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.hm)
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.ah:                                            ; preds = %bb.a
  %i.hn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !1306, !noalias !1496, !nonnull !84, !align !952
  tail call void @_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_10Time32TypeENS_12NumericArrayIS5_EEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKSA_RKT0_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(76) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.ho)
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.ai:                                            ; preds = %bb.a
  %i.hp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !1306, !noalias !1499, !nonnull !84, !align !952
  tail call void @_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_10Time64TypeENS_12NumericArrayIS5_EEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKSA_RKT0_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(76) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.hq)
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.aj:                                            ; preds = %bb.a
  %i.hr = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !1306, !noalias !1502, !nonnull !84, !align !952
  tail call void @_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_24MonthDayNanoIntervalTypeENS_25MonthDayNanoIntervalArrayEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKS9_RKT0_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.hs)
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.ak:                                            ; preds = %bb.a
  %i.ht = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !1306, !noalias !1505, !nonnull !84, !align !952
  tail call void @_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_17MonthIntervalTypeENS_12NumericArrayIS5_EEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKSA_RKT0_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.hu)
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.al:                                            ; preds = %bb.a
  %i.hv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !1306, !noalias !1508, !nonnull !84, !align !952
  tail call void @_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_19DayTimeIntervalTypeENS_20DayTimeIntervalArrayEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKS9_RKT0_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.hw)
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.am:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1511)
  %i.hx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !1306, !noalias !1511, !nonnull !84, !align !952 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1514)
  %i.hz = tail call noundef i64 @_ZNK5arrow5Array10null_countEv(ptr noundef nonnull align 8 dereferenceable(52) %i.hy), !noalias !1517
  %i.ia = icmp sgt i64 %i.hz, 0
  br i1 %i.ia, label %bb.an, label %.preheader.i.i121

.preheader.i.i121:                                ; preds = %bb.am
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 8 ; 2 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !92, !noalias !1517
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !1341, !noalias !1517
  %i.if = icmp sgt i64 %i.ie, 0
  br i1 %i.if, label %_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i123, label %._crit_edge.i.i122

_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i123:           ; preds = %.preheader.i.i121
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hy, i64 40
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hy, i64 48
  br label %_ZN5arrow6StatusD2Ev.exit.i.i124

bb.an:                                            ; preds = %bb.am
  tail call void @_ZN5arrow6Status8FromArgsIJRA49_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(49) @.str.22)
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

_ZN5arrow6StatusD2Ev.exit.i.i124:                 ; preds = %_ZN5arrow6StatusD2Ev.exit18.i.i126, %_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i123
  %.020.i.i125 = phi i64 [ 0, %_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i123 ], [ %i.is, %_ZN5arrow6StatusD2Ev.exit18.i.i126 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25, !noalias !1517
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #25, !noalias !1517
  %i.ii = load ptr, ptr %2, align 8, !tbaa !101, !noalias !1517
  %i.ij = load ptr, ptr %i.ig, align 8, !tbaa !1469, !noalias !1517
  %i.ik = load i32, ptr %i.ih, align 8, !tbaa !1471, !noalias !1517 ; 2 uses
  %i.il = sext i32 %i.ik to i64
  %i.im = mul nsw i64 %.020.i.i125, %i.il
  %i.in = getelementptr inbounds i8, ptr %i.ij, i64 %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %i.ii, i64 24
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !86, !noalias !1518
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #25, !noalias !1521
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25, !noalias !1521
  call void @_ZN5arrow8internal15BinaryMemoTableINS_13BinaryBuilderEE11GetOrInsertIZNS3_11GetOrInsertEPKviPiEUliE_ZNS3_11GetOrInsertES6_iS7_EUliE0_EENS_6StatusES6_iOT_OT0_S7_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %26, ptr noundef nonnull align 8 dereferenceable(356) %i.ip, ptr noundef %i.in, i32 noundef %i.ik, ptr noundef nonnull align 1 dereferenceable(1) %24, ptr noundef nonnull align 1 dereferenceable(1) %25, ptr noundef nonnull %i.d), !noalias !1517
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25, !noalias !1521
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25, !noalias !1521
  %i.iq = load ptr, ptr %26, align 8, !tbaa !67, !noalias !1517 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25, !noalias !1517
  %i.ir = icmp eq ptr %i.iq, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25, !noalias !1517
  br i1 %i.ir, label %_ZN5arrow6StatusD2Ev.exit18.i.i126, label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_13Decimal32TypeENS_14Decimal32ArrayEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKS9_RKT0_.exit.loopexit.i

_ZN5arrow6StatusD2Ev.exit18.i.i126:               ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i124
  %i.is = add nuw nsw i64 %.020.i.i125, 1         ; 2 uses
  %i.it = load ptr, ptr %i.ib, align 8, !tbaa !92, !noalias !1517
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !1341, !noalias !1517
  %i.iw = icmp slt i64 %i.is, %i.iv
  br i1 %i.iw, label %_ZN5arrow6StatusD2Ev.exit.i.i124, label %._crit_edge.i.i122, !llvm.loop !1526

._crit_edge.i.i122:                               ; preds = %_ZN5arrow6StatusD2Ev.exit18.i.i126, %.preheader.i.i121
  store ptr null, ptr %0, align 8, !tbaa !67, !alias.scope !1527
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_13Decimal32TypeENS_14Decimal32ArrayEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKS9_RKT0_.exit.loopexit.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i124
  store ptr %i.iq, ptr %0, align 8, !alias.scope !1511
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.ao:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1530)
  %i.ix = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !1306, !noalias !1530, !nonnull !84, !align !952 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1533)
  %i.iz = tail call noundef i64 @_ZNK5arrow5Array10null_countEv(ptr noundef nonnull align 8 dereferenceable(52) %i.iy), !noalias !1536
  %i.ja = icmp sgt i64 %i.iz, 0
  br i1 %i.ja, label %bb.ap, label %.preheader.i.i127

.preheader.i.i127:                                ; preds = %bb.ao
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 8 ; 2 uses
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !92, !noalias !1536
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !1341, !noalias !1536
  %i.jf = icmp sgt i64 %i.je, 0
  br i1 %i.jf, label %_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i129, label %._crit_edge.i.i128

_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i129:           ; preds = %.preheader.i.i127
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iy, i64 40
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iy, i64 48
  br label %_ZN5arrow6StatusD2Ev.exit.i.i130

bb.ap:                                            ; preds = %bb.ao
  tail call void @_ZN5arrow6Status8FromArgsIJRA49_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(49) @.str.22)
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

_ZN5arrow6StatusD2Ev.exit.i.i130:                 ; preds = %_ZN5arrow6StatusD2Ev.exit18.i.i132, %_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i129
  %.020.i.i131 = phi i64 [ 0, %_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i129 ], [ %i.js, %_ZN5arrow6StatusD2Ev.exit18.i.i132 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25, !noalias !1536
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25, !noalias !1536
  %i.ji = load ptr, ptr %2, align 8, !tbaa !101, !noalias !1536
  %i.jj = load ptr, ptr %i.jg, align 8, !tbaa !1469, !noalias !1536
  %i.jk = load i32, ptr %i.jh, align 8, !tbaa !1471, !noalias !1536 ; 2 uses
  %i.jl = sext i32 %i.jk to i64
  %i.jm = mul nsw i64 %.020.i.i131, %i.jl
  %i.jn = getelementptr inbounds i8, ptr %i.jj, i64 %i.jm
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ji, i64 24
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !86, !noalias !1537
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25, !noalias !1540
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25, !noalias !1540
  call void @_ZN5arrow8internal15BinaryMemoTableINS_13BinaryBuilderEE11GetOrInsertIZNS3_11GetOrInsertEPKviPiEUliE_ZNS3_11GetOrInsertES6_iS7_EUliE0_EENS_6StatusES6_iOT_OT0_S7_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %23, ptr noundef nonnull align 8 dereferenceable(356) %i.jp, ptr noundef %i.jn, i32 noundef %i.jk, ptr noundef nonnull align 1 dereferenceable(1) %21, ptr noundef nonnull align 1 dereferenceable(1) %22, ptr noundef nonnull %i.c), !noalias !1536
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25, !noalias !1540
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25, !noalias !1540
  %i.jq = load ptr, ptr %23, align 8, !tbaa !67, !noalias !1536 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25, !noalias !1536
  %i.jr = icmp eq ptr %i.jq, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25, !noalias !1536
  br i1 %i.jr, label %_ZN5arrow6StatusD2Ev.exit18.i.i132, label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_13Decimal64TypeENS_14Decimal64ArrayEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKS9_RKT0_.exit.loopexit.i

_ZN5arrow6StatusD2Ev.exit18.i.i132:               ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i130
  %i.js = add nuw nsw i64 %.020.i.i131, 1         ; 2 uses
  %i.jt = load ptr, ptr %i.jb, align 8, !tbaa !92, !noalias !1536
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !1341, !noalias !1536
  %i.jw = icmp slt i64 %i.js, %i.jv
  br i1 %i.jw, label %_ZN5arrow6StatusD2Ev.exit.i.i130, label %._crit_edge.i.i128, !llvm.loop !1545

._crit_edge.i.i128:                               ; preds = %_ZN5arrow6StatusD2Ev.exit18.i.i132, %.preheader.i.i127
  store ptr null, ptr %0, align 8, !tbaa !67, !alias.scope !1546
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_13Decimal64TypeENS_14Decimal64ArrayEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKS9_RKT0_.exit.loopexit.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i130
  store ptr %i.jq, ptr %0, align 8, !alias.scope !1530
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.aq:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1549)
  %i.jx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !1306, !noalias !1549, !nonnull !84, !align !952 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1552)
  %i.jz = tail call noundef i64 @_ZNK5arrow5Array10null_countEv(ptr noundef nonnull align 8 dereferenceable(52) %i.jy), !noalias !1555
  %i.ka = icmp sgt i64 %i.jz, 0
  br i1 %i.ka, label %bb.ar, label %.preheader.i.i133

.preheader.i.i133:                                ; preds = %bb.aq
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jy, i64 8 ; 2 uses
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !92, !noalias !1555
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !1341, !noalias !1555
  %i.kf = icmp sgt i64 %i.ke, 0
  br i1 %i.kf, label %_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i135, label %._crit_edge.i.i134

_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i135:           ; preds = %.preheader.i.i133
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jy, i64 40
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jy, i64 48
  br label %_ZN5arrow6StatusD2Ev.exit.i.i136

bb.ar:                                            ; preds = %bb.aq
  tail call void @_ZN5arrow6Status8FromArgsIJRA49_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(49) @.str.22)
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

_ZN5arrow6StatusD2Ev.exit.i.i136:                 ; preds = %_ZN5arrow6StatusD2Ev.exit18.i.i138, %_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i135
  %.020.i.i137 = phi i64 [ 0, %_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i135 ], [ %i.ks, %_ZN5arrow6StatusD2Ev.exit18.i.i138 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25, !noalias !1555
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25, !noalias !1555
  %i.ki = load ptr, ptr %2, align 8, !tbaa !101, !noalias !1555
  %i.kj = load ptr, ptr %i.kg, align 8, !tbaa !1469, !noalias !1555
  %i.kk = load i32, ptr %i.kh, align 8, !tbaa !1471, !noalias !1555 ; 2 uses
  %i.kl = sext i32 %i.kk to i64
  %i.km = mul nsw i64 %.020.i.i137, %i.kl
  %i.kn = getelementptr inbounds i8, ptr %i.kj, i64 %i.km
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ki, i64 24
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !86, !noalias !1556
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25, !noalias !1559
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25, !noalias !1559
  call void @_ZN5arrow8internal15BinaryMemoTableINS_13BinaryBuilderEE11GetOrInsertIZNS3_11GetOrInsertEPKviPiEUliE_ZNS3_11GetOrInsertES6_iS7_EUliE0_EENS_6StatusES6_iOT_OT0_S7_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %20, ptr noundef nonnull align 8 dereferenceable(356) %i.kp, ptr noundef %i.kn, i32 noundef %i.kk, ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef nonnull align 1 dereferenceable(1) %19, ptr noundef nonnull %i.b), !noalias !1555
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25, !noalias !1559
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25, !noalias !1559
  %i.kq = load ptr, ptr %20, align 8, !tbaa !67, !noalias !1555 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25, !noalias !1555
  %i.kr = icmp eq ptr %i.kq, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25, !noalias !1555
  br i1 %i.kr, label %_ZN5arrow6StatusD2Ev.exit18.i.i138, label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_14Decimal128TypeENS_15Decimal128ArrayEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKS9_RKT0_.exit.loopexit.i

_ZN5arrow6StatusD2Ev.exit18.i.i138:               ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i136
  %i.ks = add nuw nsw i64 %.020.i.i137, 1         ; 2 uses
  %i.kt = load ptr, ptr %i.kb, align 8, !tbaa !92, !noalias !1555
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !1341, !noalias !1555
  %i.kw = icmp slt i64 %i.ks, %i.kv
  br i1 %i.kw, label %_ZN5arrow6StatusD2Ev.exit.i.i136, label %._crit_edge.i.i134, !llvm.loop !1564

._crit_edge.i.i134:                               ; preds = %_ZN5arrow6StatusD2Ev.exit18.i.i138, %.preheader.i.i133
  store ptr null, ptr %0, align 8, !tbaa !67, !alias.scope !1565
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_14Decimal128TypeENS_15Decimal128ArrayEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKS9_RKT0_.exit.loopexit.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i136
  store ptr %i.kq, ptr %0, align 8, !alias.scope !1549
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.as:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1568)
  %i.kx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !1306, !noalias !1568, !nonnull !84, !align !952 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1571)
  %i.kz = tail call noundef i64 @_ZNK5arrow5Array10null_countEv(ptr noundef nonnull align 8 dereferenceable(52) %i.ky), !noalias !1574
  %i.la = icmp sgt i64 %i.kz, 0
  br i1 %i.la, label %bb.at, label %.preheader.i.i139

.preheader.i.i139:                                ; preds = %bb.as
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ky, i64 8 ; 2 uses
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !92, !noalias !1574
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !1341, !noalias !1574
  %i.lf = icmp sgt i64 %i.le, 0
  br i1 %i.lf, label %_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i141, label %._crit_edge.i.i140

_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i141:           ; preds = %.preheader.i.i139
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ky, i64 40
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ky, i64 48
  br label %_ZN5arrow6StatusD2Ev.exit.i.i142

bb.at:                                            ; preds = %bb.as
  tail call void @_ZN5arrow6Status8FromArgsIJRA49_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(49) @.str.22)
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

_ZN5arrow6StatusD2Ev.exit.i.i142:                 ; preds = %_ZN5arrow6StatusD2Ev.exit18.i.i144, %_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i141
  %.020.i.i143 = phi i64 [ 0, %_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i141 ], [ %i.ls, %_ZN5arrow6StatusD2Ev.exit18.i.i144 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !1574
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25, !noalias !1574
  %i.li = load ptr, ptr %2, align 8, !tbaa !101, !noalias !1574
  %i.lj = load ptr, ptr %i.lg, align 8, !tbaa !1469, !noalias !1574
  %i.lk = load i32, ptr %i.lh, align 8, !tbaa !1471, !noalias !1574 ; 2 uses
  %i.ll = sext i32 %i.lk to i64
  %i.lm = mul nsw i64 %.020.i.i143, %i.ll
  %i.ln = getelementptr inbounds i8, ptr %i.lj, i64 %i.lm
  %i.lo = getelementptr inbounds nuw i8, ptr %i.li, i64 24
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !86, !noalias !1575
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25, !noalias !1578
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25, !noalias !1578
  call void @_ZN5arrow8internal15BinaryMemoTableINS_13BinaryBuilderEE11GetOrInsertIZNS3_11GetOrInsertEPKviPiEUliE_ZNS3_11GetOrInsertES6_iS7_EUliE0_EENS_6StatusES6_iOT_OT0_S7_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %17, ptr noundef nonnull align 8 dereferenceable(356) %i.lp, ptr noundef %i.ln, i32 noundef %i.lk, ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef nonnull %i.a), !noalias !1574
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25, !noalias !1578
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25, !noalias !1578
  %i.lq = load ptr, ptr %17, align 8, !tbaa !67, !noalias !1574 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25, !noalias !1574
  %i.lr = icmp eq ptr %i.lq, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !1574
  br i1 %i.lr, label %_ZN5arrow6StatusD2Ev.exit18.i.i144, label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_14Decimal256TypeENS_15Decimal256ArrayEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKS9_RKT0_.exit.loopexit.i

_ZN5arrow6StatusD2Ev.exit18.i.i144:               ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i142
  %i.ls = add nuw nsw i64 %.020.i.i143, 1         ; 2 uses
  %i.lt = load ptr, ptr %i.lb, align 8, !tbaa !92, !noalias !1574
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !1341, !noalias !1574
  %i.lw = icmp slt i64 %i.ls, %i.lv
  br i1 %i.lw, label %_ZN5arrow6StatusD2Ev.exit.i.i142, label %._crit_edge.i.i140, !llvm.loop !1583

._crit_edge.i.i140:                               ; preds = %_ZN5arrow6StatusD2Ev.exit18.i.i144, %.preheader.i.i139
  store ptr null, ptr %0, align 8, !tbaa !67, !alias.scope !1584
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_14Decimal256TypeENS_15Decimal256ArrayEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKS9_RKT0_.exit.loopexit.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i142
  store ptr %i.lq, ptr %0, align 8, !alias.scope !1568
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.au:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25, !noalias !1587
  call void @_ZN5arrow8internal12JoinToStringIJRA27_KcRKNS_8ListTypeERA20_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 1 dereferenceable(27) @.str.20, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 1 dereferenceable(20) @.str.21), !noalias !1587
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 10, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.lx = load ptr, ptr %14, align 8, !tbaa !71, !noalias !1587 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.lz = icmp eq ptr %i.lx, %i.ly
  br i1 %i.lz, label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_8ListTypeEEENS_6StatusERKT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i148: ; preds = %bb.av
  %i.ma = load i64, ptr %i.ly, align 8, !tbaa !38, !noalias !1587
  %i.mb = add i64 %i.ma, 1
  call void @_ZdlPvm(ptr noundef %i.lx, i64 noundef %i.mb) #26
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_8ListTypeEEENS_6StatusERKT_.exit

bb.aw:                                            ; preds = %bb.au
  %i.mc = landingpad { ptr, i32 }
          cleanup
  %i.md = load ptr, ptr %14, align 8, !tbaa !71, !noalias !1587 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.mf = icmp eq ptr %i.md, %i.me
  br i1 %i.mf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i145: ; preds = %bb.aw
  %i.mg = load i64, ptr %i.me, align 8, !tbaa !38, !noalias !1587
  %i.mh = add i64 %i.mg, 1
  call void @_ZdlPvm(ptr noundef %i.md, i64 noundef %i.mh) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i146: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i145
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25, !noalias !1587
  br label %common.resume

_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_8ListTypeEEENS_6StatusERKT_.exit: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i148
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25, !noalias !1587
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.ax:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25, !noalias !1596
  call void @_ZN5arrow8internal12JoinToStringIJRA27_KcRKNS_13LargeListTypeERA20_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 1 dereferenceable(27) @.str.20, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 1 dereferenceable(20) @.str.21), !noalias !1596
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 10, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.mi = load ptr, ptr %13, align 8, !tbaa !71, !noalias !1596 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.mk = icmp eq ptr %i.mi, %i.mj
  br i1 %i.mk, label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13LargeListTypeEEENS_6StatusERKT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i153: ; preds = %bb.ay
  %i.ml = load i64, ptr %i.mj, align 8, !tbaa !38, !noalias !1596
  %i.mm = add i64 %i.ml, 1
  call void @_ZdlPvm(ptr noundef %i.mi, i64 noundef %i.mm) #26
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13LargeListTypeEEENS_6StatusERKT_.exit

bb.az:                                            ; preds = %bb.ax
  %i.mn = landingpad { ptr, i32 }
          cleanup
  %i.mo = load ptr, ptr %13, align 8, !tbaa !71, !noalias !1596 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.mq = icmp eq ptr %i.mo, %i.mp
  br i1 %i.mq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i151, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i150: ; preds = %bb.az
  %i.mr = load i64, ptr %i.mp, align 8, !tbaa !38, !noalias !1596
  %i.ms = add i64 %i.mr, 1
  call void @_ZdlPvm(ptr noundef %i.mo, i64 noundef %i.ms) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i151

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i151: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i150
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25, !noalias !1596
  br label %common.resume

_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13LargeListTypeEEENS_6StatusERKT_.exit: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i153
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25, !noalias !1596
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.ba:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25, !noalias !1605
  call void @_ZN5arrow8internal12JoinToStringIJRA27_KcRKNS_12ListViewTypeERA20_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 1 dereferenceable(27) @.str.20, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 1 dereferenceable(20) @.str.21), !noalias !1605
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 10, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.mt = load ptr, ptr %12, align 8, !tbaa !71, !noalias !1605 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.mv = icmp eq ptr %i.mt, %i.mu
  br i1 %i.mv, label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_12ListViewTypeEEENS_6StatusERKT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i158: ; preds = %bb.bb
  %i.mw = load i64, ptr %i.mu, align 8, !tbaa !38, !noalias !1605
  %i.mx = add i64 %i.mw, 1
  call void @_ZdlPvm(ptr noundef %i.mt, i64 noundef %i.mx) #26
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_12ListViewTypeEEENS_6StatusERKT_.exit

bb.bc:                                            ; preds = %bb.ba
  %i.my = landingpad { ptr, i32 }
          cleanup
  %i.mz = load ptr, ptr %12, align 8, !tbaa !71, !noalias !1605 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.nb = icmp eq ptr %i.mz, %i.na
  br i1 %i.nb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i155: ; preds = %bb.bc
  %i.nc = load i64, ptr %i.na, align 8, !tbaa !38, !noalias !1605
  %i.nd = add i64 %i.nc, 1
  call void @_ZdlPvm(ptr noundef %i.mz, i64 noundef %i.nd) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i156

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i156: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i155
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25, !noalias !1605
  br label %common.resume

_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_12ListViewTypeEEENS_6StatusERKT_.exit: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i158
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25, !noalias !1605
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.bd:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25, !noalias !1614
  call void @_ZN5arrow8internal12JoinToStringIJRA27_KcRKNS_17LargeListViewTypeERA20_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 1 dereferenceable(27) @.str.20, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 1 dereferenceable(20) @.str.21), !noalias !1614
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 10, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.be unwind label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.ne = load ptr, ptr %11, align 8, !tbaa !71, !noalias !1614 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ng = icmp eq ptr %i.ne, %i.nf
  br i1 %i.ng, label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_17LargeListViewTypeEEENS_6StatusERKT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i163: ; preds = %bb.be
  %i.nh = load i64, ptr %i.nf, align 8, !tbaa !38, !noalias !1614
  %i.ni = add i64 %i.nh, 1
  call void @_ZdlPvm(ptr noundef %i.ne, i64 noundef %i.ni) #26
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_17LargeListViewTypeEEENS_6StatusERKT_.exit

bb.bf:                                            ; preds = %bb.bd
  %i.nj = landingpad { ptr, i32 }
          cleanup
  %i.nk = load ptr, ptr %11, align 8, !tbaa !71, !noalias !1614 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.nm = icmp eq ptr %i.nk, %i.nl
  br i1 %i.nm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i160: ; preds = %bb.bf
  %i.nn = load i64, ptr %i.nl, align 8, !tbaa !38, !noalias !1614
  %i.no = add i64 %i.nn, 1
  call void @_ZdlPvm(ptr noundef %i.nk, i64 noundef %i.no) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i161

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i161: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i160
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25, !noalias !1614
  br label %common.resume

_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_17LargeListViewTypeEEENS_6StatusERKT_.exit: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i163
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25, !noalias !1614
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.bg:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25, !noalias !1623
  call void @_ZN5arrow8internal12JoinToStringIJRA27_KcRKNS_7MapTypeERA20_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 1 dereferenceable(27) @.str.20, ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef nonnull align 1 dereferenceable(20) @.str.21), !noalias !1623
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 10, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.bh unwind label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.np = load ptr, ptr %10, align 8, !tbaa !71, !noalias !1623 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.nr = icmp eq ptr %i.np, %i.nq
  br i1 %i.nr, label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_7MapTypeEEENS_6StatusERKT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i168: ; preds = %bb.bh
  %i.ns = load i64, ptr %i.nq, align 8, !tbaa !38, !noalias !1623
  %i.nt = add i64 %i.ns, 1
  call void @_ZdlPvm(ptr noundef %i.np, i64 noundef %i.nt) #26
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_7MapTypeEEENS_6StatusERKT_.exit

bb.bi:                                            ; preds = %bb.bg
  %i.nu = landingpad { ptr, i32 }
          cleanup
  %i.nv = load ptr, ptr %10, align 8, !tbaa !71, !noalias !1623 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.nx = icmp eq ptr %i.nv, %i.nw
  br i1 %i.nx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i165

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i165: ; preds = %bb.bi
  %i.ny = load i64, ptr %i.nw, align 8, !tbaa !38, !noalias !1623
  %i.nz = add i64 %i.ny, 1
  call void @_ZdlPvm(ptr noundef %i.nv, i64 noundef %i.nz) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i166

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i166: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i165
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25, !noalias !1623
  br label %common.resume

_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_7MapTypeEEENS_6StatusERKT_.exit: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i168
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25, !noalias !1623
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

end_hunk_0
begin_hunk_1_@_ZN5arrow15VisitTypeInlineINS_8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserterEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
          to label %bb.bq unwind label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ow = load ptr, ptr %7, align 8, !tbaa !71, !noalias !1650 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.oy = icmp eq ptr %i.ow, %i.ox
  br i1 %i.oy, label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_15SparseUnionTypeEEENS_6StatusERKT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i183

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i183: ; preds = %bb.bq
  %i.oz = load i64, ptr %i.ox, align 8, !tbaa !38, !noalias !1650
  %i.pa = add i64 %i.oz, 1
  call void @_ZdlPvm(ptr noundef %i.ow, i64 noundef %i.pa) #26
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_15SparseUnionTypeEEENS_6StatusERKT_.exit

bb.br:                                            ; preds = %bb.bp
  %i.pb = landingpad { ptr, i32 }
          cleanup
  %i.pc = load ptr, ptr %7, align 8, !tbaa !71, !noalias !1650 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.pe = icmp eq ptr %i.pc, %i.pd
  br i1 %i.pe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i180: ; preds = %bb.br
  %i.pf = load i64, ptr %i.pd, align 8, !tbaa !38, !noalias !1650
  %i.pg = add i64 %i.pf, 1
  call void @_ZdlPvm(ptr noundef %i.pc, i64 noundef %i.pg) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i181

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i181: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i180
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !1650
  br label %common.resume

_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_15SparseUnionTypeEEENS_6StatusERKT_.exit: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i183
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !1650
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.bs:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !1659
  call void @_ZN5arrow8internal12JoinToStringIJRA27_KcRKNS_14DenseUnionTypeERA20_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 1 dereferenceable(27) @.str.20, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 1 dereferenceable(20) @.str.21), !noalias !1659
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 10, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.bt unwind label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.ph = load ptr, ptr %6, align 8, !tbaa !71, !noalias !1659 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.pj = icmp eq ptr %i.ph, %i.pi
  br i1 %i.pj, label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_14DenseUnionTypeEEENS_6StatusERKT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i188

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i188: ; preds = %bb.bt
  %i.pk = load i64, ptr %i.pi, align 8, !tbaa !38, !noalias !1659
  %i.pl = add i64 %i.pk, 1
  call void @_ZdlPvm(ptr noundef %i.ph, i64 noundef %i.pl) #26
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_14DenseUnionTypeEEENS_6StatusERKT_.exit

bb.bu:                                            ; preds = %bb.bs
  %i.pm = landingpad { ptr, i32 }
          cleanup
  %i.pn = load ptr, ptr %6, align 8, !tbaa !71, !noalias !1659 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.pp = icmp eq ptr %i.pn, %i.po
  br i1 %i.pp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i186, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i185

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i185: ; preds = %bb.bu
  %i.pq = load i64, ptr %i.po, align 8, !tbaa !38, !noalias !1659
  %i.pr = add i64 %i.pq, 1
  call void @_ZdlPvm(ptr noundef %i.pn, i64 noundef %i.pr) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i186

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i186: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i185
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !1659
  br label %common.resume

_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_14DenseUnionTypeEEENS_6StatusERKT_.exit: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i188
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !1659
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.bv:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !1668
  call void @_ZN5arrow8internal12JoinToStringIJRA27_KcRKNS_14DictionaryTypeERA20_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 1 dereferenceable(27) @.str.20, ptr noundef nonnull align 8 dereferenceable(105) %1, ptr noundef nonnull align 1 dereferenceable(20) @.str.21), !noalias !1668
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 10, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.bw unwind label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.ps = load ptr, ptr %5, align 8, !tbaa !71, !noalias !1668 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.pu = icmp eq ptr %i.ps, %i.pt
  br i1 %i.pu, label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_14DictionaryTypeEEENS_6StatusERKT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i193

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i193: ; preds = %bb.bw
  %i.pv = load i64, ptr %i.pt, align 8, !tbaa !38, !noalias !1668
  %i.pw = add i64 %i.pv, 1
  call void @_ZdlPvm(ptr noundef %i.ps, i64 noundef %i.pw) #26
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_14DictionaryTypeEEENS_6StatusERKT_.exit

bb.bx:                                            ; preds = %bb.bv
  %i.px = landingpad { ptr, i32 }
          cleanup
  %i.py = load ptr, ptr %5, align 8, !tbaa !71, !noalias !1668 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.qa = icmp eq ptr %i.py, %i.pz
  br i1 %i.qa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i191, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i190

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i190: ; preds = %bb.bx
  %i.qb = load i64, ptr %i.pz, align 8, !tbaa !38, !noalias !1668
  %i.qc = add i64 %i.qb, 1
  call void @_ZdlPvm(ptr noundef %i.py, i64 noundef %i.qc) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i191

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i191: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i190
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !1668
  br label %common.resume

_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_14DictionaryTypeEEENS_6StatusERKT_.exit: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i193
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !1668
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.by:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !1677
  call void @_ZN5arrow8internal12JoinToStringIJRA27_KcRKNS_17RunEndEncodedTypeERA20_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(27) @.str.20, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 1 dereferenceable(20) @.str.21), !noalias !1677
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 10, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.bz unwind label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.qd = load ptr, ptr %4, align 8, !tbaa !71, !noalias !1677 ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.qf = icmp eq ptr %i.qd, %i.qe
  br i1 %i.qf, label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_17RunEndEncodedTypeEEENS_6StatusERKT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i198

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i198: ; preds = %bb.bz
  %i.qg = load i64, ptr %i.qe, align 8, !tbaa !38, !noalias !1677
  %i.qh = add i64 %i.qg, 1
  call void @_ZdlPvm(ptr noundef %i.qd, i64 noundef %i.qh) #26
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_17RunEndEncodedTypeEEENS_6StatusERKT_.exit

bb.ca:                                            ; preds = %bb.by
  %i.qi = landingpad { ptr, i32 }
          cleanup
  %i.qj = load ptr, ptr %4, align 8, !tbaa !71, !noalias !1677 ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ql = icmp eq ptr %i.qj, %i.qk
  br i1 %i.ql, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i196, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i195

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i195: ; preds = %bb.ca
  %i.qm = load i64, ptr %i.qk, align 8, !tbaa !38, !noalias !1677
  %i.qn = add i64 %i.qm, 1
  call void @_ZdlPvm(ptr noundef %i.qj, i64 noundef %i.qn) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i196

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i196: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i195
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !1677
  br label %common.resume

_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_17RunEndEncodedTypeEEENS_6StatusERKT_.exit: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i198
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !1677
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.cb:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !1686
  call void @_ZN5arrow8internal12JoinToStringIJRA27_KcRKNS_13ExtensionTypeERA20_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(27) @.str.20, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 1 dereferenceable(20) @.str.21), !noalias !1686
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 10, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.cc unwind label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.qo = load ptr, ptr %3, align 8, !tbaa !71, !noalias !1686 ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.qq = icmp eq ptr %i.qo, %i.qp
  br i1 %i.qq, label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13ExtensionTypeEEENS_6StatusERKT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i203

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i203: ; preds = %bb.cc
  %i.qr = load i64, ptr %i.qp, align 8, !tbaa !38, !noalias !1686
  %i.qs = add i64 %i.qr, 1
  call void @_ZdlPvm(ptr noundef %i.qo, i64 noundef %i.qs) #26
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13ExtensionTypeEEENS_6StatusERKT_.exit

bb.cd:                                            ; preds = %bb.cb
  %i.qt = landingpad { ptr, i32 }
          cleanup
  %i.qu = load ptr, ptr %3, align 8, !tbaa !71, !noalias !1686 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.qw = icmp eq ptr %i.qu, %i.qv
  br i1 %i.qw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i201, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i200

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i200: ; preds = %bb.cd
  %i.qx = load i64, ptr %i.qv, align 8, !tbaa !38, !noalias !1686
  %i.qy = add i64 %i.qx, 1
  call void @_ZdlPvm(ptr noundef %i.qu, i64 noundef %i.qy) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i201

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i201: ; preds = %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i200
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !1686
  br label %common.resume

_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13ExtensionTypeEEENS_6StatusERKT_.exit: ; preds = %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i203
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !1686
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.ce:                                            ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA21_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(21) @.str.8)
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_.exit: ; preds = %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_14Decimal256TypeENS_15Decimal256ArrayEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKS9_RKT0_.exit.loopexit.i, %._crit_edge.i.i140, %bb.at, %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_14Decimal128TypeENS_15Decimal128ArrayEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKS9_RKT0_.exit.loopexit.i, %._crit_edge.i.i134, %bb.ar, %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_13Decimal64TypeENS_14Decimal64ArrayEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKS9_RKT0_.exit.loopexit.i, %._crit_edge.i.i128, %bb.ap, %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_13Decimal32TypeENS_14Decimal32ArrayEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKS9_RKT0_.exit.loopexit.i, %._crit_edge.i.i122, %bb.an, %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_19FixedSizeBinaryTypeENS_20FixedSizeBinaryArrayEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKS9_RKT0_.exit.loopexit.i, %._crit_edge.i.i116, %bb.ac, %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_15LargeBinaryTypeENS_16LargeBinaryArrayEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKS9_RKT0_.exit.loopexit.i, %._crit_edge.i.i110, %bb.aa, %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_15LargeStringTypeENS_16LargeStringArrayEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKS9_RKT0_.exit.loopexit.i, %._crit_edge.i.i104, %bb.y, %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_10BinaryTypeENS_11BinaryArrayEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKS9_RKT0_.exit.loopexit.i, %._crit_edge.i.i98, %bb.v, %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_10StringTypeENS_11StringArrayEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKS9_RKT0_.exit.loopexit.i, %._crit_edge.i.i92, %bb.s, %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_13HalfFloatTypeENS_12NumericArrayIS5_EEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKSA_RKT0_.exit.loopexit.i, %._crit_edge.i.i, %bb.o, %bb.ce, %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13ExtensionTypeEEENS_6StatusERKT_.exit, %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_17RunEndEncodedTypeEEENS_6StatusERKT_.exit, %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_14DictionaryTypeEEENS_6StatusERKT_.exit, %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_14DenseUnionTypeEEENS_6StatusERKT_.exit, %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_15SparseUnionTypeEEENS_6StatusERKT_.exit, %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_10StructTypeEEENS_6StatusERKT_.exit, %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_17FixedSizeListTypeEEENS_6StatusERKT_.exit, %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_7MapTypeEEENS_6StatusERKT_.exit, %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_17LargeListViewTypeEEENS_6StatusERKT_.exit, %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_12ListViewTypeEEENS_6StatusERKT_.exit, %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_13LargeListTypeEEENS_6StatusERKT_.exit, %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_8ListTypeEEENS_6StatusERKT_.exit, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.w, %bb.t, %bb.q, %bb.p, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_8NullTypeEEENS_6StatusERKT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA44_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(44) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !942, !nonnull !84, !align !952
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(44) %1) #25
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(44) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA44_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_ENKUlOT_E0_clIS4_EEDaSF_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA44_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_ENKUlOT_E0_clIS4_EEDaSF_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !942, !nonnull !84, !align !952
  %i.f = load ptr, ptr %2, align 8, !tbaa !71
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !104
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.f, i64 noundef %i.h)
          to label %_ZZN5arrow8internal12JoinToStringIJRA44_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_ENKUlOT_E_clISA_EEDaSF_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA44_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_ENKUlOT_E_clISA_EEDaSF_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA44_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_ENKUlOT_E0_clIS4_EEDaSF_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA44_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_ENKUlOT_E_clISA_EEDaSF_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA44_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_ENKUlOT_E0_clIS4_EEDaSF_.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA44_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_ENKUlOT_E_clISA_EEDaSF_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.pn6 = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.k, %bb.d ], [ %i.j, %bb.c ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %.pn6
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_14StringViewTypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.255, align 1            ; 3 uses
  %4 = alloca %class.anon.257, align 1            ; 3 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1306, !nonnull !84, !align !952 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1695)
  %i.d = tail call noundef i64 @_ZNK5arrow5Array10null_countEv(ptr noundef nonnull align 8 dereferenceable(40) %i.c), !noalias !1695
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !92, !noalias !1695
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !1341, !noalias !1695
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %_ZN5arrow6StatusD2Ev.exit.i, label %._crit_edge.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA49_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(49) @.str.22)
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_14StringViewTypeENS_15StringViewArrayEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKS9_RKT0_.exit

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %.preheader.i, %_ZN5arrow6StatusD2Ev.exit18.i
  %.020.i = phi i64 [ %i.t, %_ZN5arrow6StatusD2Ev.exit18.i ], [ 0, %.preheader.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !1695
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !1695
  %i.k = load ptr, ptr %1, align 8, !tbaa !101, !noalias !1695
  %i.l = call { i64, ptr } @_ZNK5arrow15BinaryViewArray7GetViewEl(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 noundef %.020.i), !noalias !1695 ; 2 uses
  %i.m = extractvalue { i64, ptr } %i.l, 0
  %i.n = extractvalue { i64, ptr } %i.l, 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !86, !noalias !1698
  %i.q = trunc i64 %i.m to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !1701
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !1701
  call void @_ZN5arrow8internal15BinaryMemoTableINS_13BinaryBuilderEE11GetOrInsertIZNS3_11GetOrInsertEPKviPiEUliE_ZNS3_11GetOrInsertES6_iS7_EUliE0_EENS_6StatusES6_iOT_OT0_S7_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(356) %i.p, ptr noundef %i.n, i32 noundef %i.q, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull %i.a), !noalias !1695
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !1701
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !1701
  %i.r = load ptr, ptr %5, align 8, !tbaa !67, !noalias !1695 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !1695
  %i.s = icmp eq ptr %i.r, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !1695
  br i1 %i.s, label %_ZN5arrow6StatusD2Ev.exit18.i, label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_14StringViewTypeENS_15StringViewArrayEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKS9_RKT0_.exit.loopexit

_ZN5arrow6StatusD2Ev.exit18.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %i.t = add nuw nsw i64 %.020.i, 1               ; 2 uses
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !92, !noalias !1695
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !1341, !noalias !1695
  %i.x = icmp slt i64 %i.t, %i.w
  br i1 %i.x, label %_ZN5arrow6StatusD2Ev.exit.i, label %._crit_edge.i, !llvm.loop !1706

._crit_edge.i:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit18.i, %.preheader.i
  store ptr null, ptr %0, align 8, !tbaa !67, !alias.scope !1707
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_14StringViewTypeENS_15StringViewArrayEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKS9_RKT0_.exit

_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_14StringViewTypeENS_15StringViewArrayEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKS9_RKT0_.exit.loopexit: ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  store ptr %i.r, ptr %0, align 8
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_14StringViewTypeENS_15StringViewArrayEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKS9_RKT0_.exit

_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_14StringViewTypeENS_15StringViewArrayEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKS9_RKT0_.exit: ; preds = %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_14StringViewTypeENS_15StringViewArrayEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKS9_RKT0_.exit.loopexit, %bb.b, %._crit_edge.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter5VisitINS_14BinaryViewTypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.255, align 1            ; 3 uses
  %4 = alloca %class.anon.257, align 1            ; 3 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1306, !nonnull !84, !align !952 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1710)
  %i.d = tail call noundef i64 @_ZNK5arrow5Array10null_countEv(ptr noundef nonnull align 8 dereferenceable(40) %i.c), !noalias !1710
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !92, !noalias !1710
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !1341, !noalias !1710
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %_ZN5arrow6StatusD2Ev.exit.i, label %._crit_edge.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA49_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(49) @.str.22)
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_14BinaryViewTypeENS_15BinaryViewArrayEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKS9_RKT0_.exit

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %.preheader.i, %_ZN5arrow6StatusD2Ev.exit18.i
  %.020.i = phi i64 [ %i.t, %_ZN5arrow6StatusD2Ev.exit18.i ], [ 0, %.preheader.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !1710
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !1710
  %i.k = load ptr, ptr %1, align 8, !tbaa !101, !noalias !1710
  %i.l = call { i64, ptr } @_ZNK5arrow15BinaryViewArray7GetViewEl(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 noundef %.020.i), !noalias !1710 ; 2 uses
  %i.m = extractvalue { i64, ptr } %i.l, 0
  %i.n = extractvalue { i64, ptr } %i.l, 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !86, !noalias !1713
  %i.q = trunc i64 %i.m to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !1716
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !1716
  call void @_ZN5arrow8internal15BinaryMemoTableINS_13BinaryBuilderEE11GetOrInsertIZNS3_11GetOrInsertEPKviPiEUliE_ZNS3_11GetOrInsertES6_iS7_EUliE0_EENS_6StatusES6_iOT_OT0_S7_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(356) %i.p, ptr noundef %i.n, i32 noundef %i.q, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull %i.a), !noalias !1710
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !1716
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !1716
  %i.r = load ptr, ptr %5, align 8, !tbaa !67, !noalias !1710 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !1710
  %i.s = icmp eq ptr %i.r, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !1710
  br i1 %i.s, label %_ZN5arrow6StatusD2Ev.exit18.i, label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_14BinaryViewTypeENS_15BinaryViewArrayEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKS9_RKT0_.exit.loopexit

_ZN5arrow6StatusD2Ev.exit18.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %i.t = add nuw nsw i64 %.020.i, 1               ; 2 uses
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !92, !noalias !1710
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !1341, !noalias !1710
  %i.x = icmp slt i64 %i.t, %i.w
  br i1 %i.x, label %_ZN5arrow6StatusD2Ev.exit.i, label %._crit_edge.i, !llvm.loop !1721

._crit_edge.i:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit18.i, %.preheader.i
  store ptr null, ptr %0, align 8, !tbaa !67, !alias.scope !1722
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_14BinaryViewTypeENS_15BinaryViewArrayEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKS9_RKT0_.exit

_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_14BinaryViewTypeENS_15BinaryViewArrayEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKS9_RKT0_.exit.loopexit: ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  store ptr %i.r, ptr %0, align 8
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_14BinaryViewTypeENS_15BinaryViewArrayEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKS9_RKT0_.exit

_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_14BinaryViewTypeENS_15BinaryViewArrayEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKS9_RKT0_.exit: ; preds = %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_14BinaryViewTypeENS_15BinaryViewArrayEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKS9_RKT0_.exit.loopexit, %bb.b, %._crit_edge.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA27_KcRKNS_8NullTypeERA20_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(27) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 1 dereferenceable(20) %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !942, !nonnull !84, !align !952
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(27) %1) #25
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(27) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA27_KcRKNS_8NullTypeERA20_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSK_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA27_KcRKNS_8NullTypeERA20_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSK_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !942, !nonnull !84, !align !952
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrowlsERSoRKNS_8DataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %_ZZN5arrow8internal12JoinToStringIJRA27_KcRKNS_8NullTypeERA20_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS7_EEDaSK_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA27_KcRKNS_8NullTypeERA20_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS7_EEDaSK_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA27_KcRKNS_8NullTypeERA20_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSK_.exit
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !942, !nonnull !84, !align !952
  %i.h = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(20) %3) #25
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 1 dereferenceable(20) %3, i64 noundef %i.h)
          to label %_ZZN5arrow8internal12JoinToStringIJRA27_KcRKNS_8NullTypeERA20_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS9_EEDaSK_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA27_KcRKNS_8NullTypeERA20_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS9_EEDaSK_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA27_KcRKNS_8NullTypeERA20_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS7_EEDaSK_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA27_KcRKNS_8NullTypeERA20_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS9_EEDaSK_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA27_KcRKNS_8NullTypeERA20_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSK_.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA27_KcRKNS_8NullTypeERA20_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS7_EEDaSK_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA27_KcRKNS_8NullTypeERA20_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS9_EEDaSK_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.m, %bb.f ], [ %i.j, %bb.c ], [ %i.l, %bb.e ], [ %i.k, %bb.d ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %.pn9
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrowlsERSoRKNS_8DataTypeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_11BooleanTypeENS_12BooleanArrayEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKS9_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @_ZNK5arrow5Array10null_countEv(ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.b = icmp sgt i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !92   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !1341
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA49_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(49) @.str.22)
  br label %bb.j

bb.c:                                             ; preds = %.lr.ph, %_ZN5arrow6StatusD2Ev.exit18
  %.pre20 = phi ptr [ %i.d, %.lr.ph ], [ %.pre21, %_ZN5arrow6StatusD2Ev.exit18 ] ; 3 uses
  %i.i = phi ptr [ %i.d, %.lr.ph ], [ %i.az, %_ZN5arrow6StatusD2Ev.exit18 ] ; 2 uses
  %.019 = phi i64 [ 0, %.lr.ph ], [ %i.ba, %_ZN5arrow6StatusD2Ev.exit18 ] ; 2 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !101
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !1725
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !1726
  %i.n = add nsw i64 %i.m, %.019                  ; 2 uses
  %i.o = lshr i64 %i.n, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !38
  %i.r = trunc i64 %i.n to i8
  %i.s = and i8 %i.r, 7
  %i.t = lshr i8 %i.q, %i.s                       ; 2 uses
  %i.u = trunc i8 %i.t to i1                      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !86, !noalias !1727 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.mask = and i8 %i.t, 1
  %i.y = zext nneg i8 %.mask to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3, !noalias !1730
  %i.ab = icmp eq i32 %i.aa, -1
  br i1 %i.ab, label %bb.d, label %_ZN5arrow6StatusD2Ev.exit18

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !119, !noalias !1730 ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 48 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !122, !noalias !1730 ; 5 uses
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !119, !noalias !1730
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = zext nneg i32 %i.ag to i64
  %.tr.i.i.i = trunc i64 %i.ak to i32
  %i.am = shl i32 %.tr.i.i.i, 3
  %i.an = add i32 %i.am, %i.ag
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !123, !noalias !1730
  %.not.i.i.i.i = icmp eq ptr %i.ae, %i.ap
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = add i32 %i.ag, 1
  store i32 %i.aq, ptr %i.af, align 8, !tbaa !122, !noalias !1730
  %i.ar = icmp eq i32 %i.ag, 63
  br i1 %i.ar, label %bb.f, label %_ZNSt13_Bit_iteratorppEi.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.af, align 8, !tbaa !122, !noalias !1730
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.as, ptr %i.ad, align 8, !tbaa !119, !noalias !1730
  br label %_ZNSt13_Bit_iteratorppEi.exit.i.i.i.i

_ZNSt13_Bit_iteratorppEi.exit.i.i.i.i:            ; preds = %bb.f, %bb.e
  %i.at = shl nuw i64 1, %i.al                    ; 2 uses
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i.i.i.i
  %i.au = load i64, ptr %i.ae, align 8, !tbaa !126, !noalias !1730
  %i.av = or i64 %i.au, %i.at
  store i64 %i.av, ptr %i.ae, align 8, !tbaa !126, !noalias !1730
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit.i.i.i

bb.h:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i.i.i.i
  %i.aw = xor i64 %i.at, -1
  %i.ax = load i64, ptr %i.ae, align 8, !tbaa !126, !noalias !1730
  %i.ay = and i64 %i.ax, %i.aw
  store i64 %i.ay, ptr %i.ae, align 8, !tbaa !126, !noalias !1730
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit.i.i.i

bb.i:                                             ; preds = %bb.d
  tail call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.ac, ptr %i.ae, i32 %i.ag, i1 noundef zeroext %i.u), !noalias !1730
  %.pre.pre = load ptr, ptr %i.c, align 8, !tbaa !92
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit.i.i.i

_ZNSt6vectorIbSaIbEE9push_backEb.exit.i.i.i:      ; preds = %bb.i, %bb.h, %bb.g
  %.pre = phi ptr [ %.pre.pre, %bb.i ], [ %.pre20, %bb.h ], [ %.pre20, %bb.g ] ; 2 uses
  store i32 %i.an, ptr %i.z, align 4, !tbaa !3, !noalias !1730
  br label %_ZN5arrow6StatusD2Ev.exit18

_ZN5arrow6StatusD2Ev.exit18:                      ; preds = %bb.c, %_ZNSt6vectorIbSaIbEE9push_backEb.exit.i.i.i
  %.pre21 = phi ptr [ %.pre20, %bb.c ], [ %.pre, %_ZNSt6vectorIbSaIbEE9push_backEb.exit.i.i.i ]
  %i.az = phi ptr [ %i.i, %bb.c ], [ %.pre, %_ZNSt6vectorIbSaIbEE9push_backEb.exit.i.i.i ] ; 2 uses
  %i.ba = add nuw nsw i64 %.019, 1                ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !1341
  %i.bd = icmp slt i64 %i.ba, %i.bc
  br i1 %i.bd, label %bb.c, label %._crit_edge, !llvm.loop !1735

._crit_edge:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit18, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !67, !alias.scope !1736
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.b
  ret void
}

declare noundef i64 @_ZNK5arrow5Array10null_countEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA49_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(49) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !1739
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !1739
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !942, !noalias !1739, !nonnull !84, !align !952
end_hunk_1
