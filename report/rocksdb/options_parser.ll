Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/options_parser?download=true
inline.NumInlined: 2281
inline.NumDeleted: 961
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN7rocksdb20RocksDBOptionsParser13ValidityCheckEv:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store ptr @.str.72, ptr %2, align 8, !tbaa !116
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 58, ptr %i.d, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr @.str, ptr %3, align 8, !tbaa !116
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !117
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 890
  %i.g = load i8, ptr %i.f, align 2, !tbaa !228, !range !152, !noundef !153
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr @.str.73, ptr %4, align 8, !tbaa !116
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 66, ptr %i.i, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr @.str, ptr %5, align 8, !tbaa !116
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !117
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.k, align 8, !tbaa !166, !alias.scope !531
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !531
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb14LineFileReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(8409) dereferenceable(8409) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8376
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #26
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %bb.a, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8192
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8328 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !171  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8336
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !172  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb13EventListenerEES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN7rocksdb6StatusD2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN7rocksdb13EventListenerEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyISt10shared_ptrIN7rocksdb13EventListenerEEEvPT_.exit.i.i.i.i ], [ %i.e, %_ZN7rocksdb6StatusD2Ev.exit ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !97   ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN7rocksdb13EventListenerEEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.j, align 8, !tbaa !99
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !100
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !102
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #27, !inline_history !532
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !102
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #27, !inline_history !532
  br label %_ZSt8_DestroyISt10shared_ptrIN7rocksdb13EventListenerEEEvPT_.exit.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !103
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.m, %bb.e ], [ %i.w, %bb.f ]
  %i.x = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.x, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN7rocksdb13EventListenerEEEvPT_.exit.i.i.i.i, !prof !104

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #27
  br label %_ZSt8_DestroyISt10shared_ptrIN7rocksdb13EventListenerEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIN7rocksdb13EventListenerEEEvPT_.exit.i.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.g
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb13EventListenerEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb13EventListenerEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN7rocksdb13EventListenerEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.d, align 8, !tbaa !171
  br label %_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb13EventListenerEES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb13EventListenerEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb13EventListenerEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, %_ZN7rocksdb6StatusD2Ev.exit
  %i.z = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb13EventListenerEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.e, %_ZN7rocksdb6StatusD2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb13EventListenerEES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8344
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !174
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #26
  br label %_ZNSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EED2Ev.exit.i: ; preds = %bb.h, %_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb13EventListenerEES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8224
  tail call void @_ZN7rocksdb19FSSequentialFilePtrD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.af) #27
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !38  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8208 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZN7rocksdb20SequentialFileReaderD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EED2Ev.exit.i
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !39
  %i.ak = add i64 %i.aj, 1
  tail call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #26
  br label %_ZN7rocksdb20SequentialFileReaderD2Ev.exit

_ZN7rocksdb20SequentialFileReaderD2Ev.exit:       ; preds = %_ZNSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb20RocksDBOptionsParser18ParseVersionNumberERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iPi(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [200 x i8], align 16              ; 14 uses
  %6 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %7 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %8 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %9 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %10 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %11 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %12 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %13 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %i.b = icmp sgt i32 %4, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = zext nneg i32 %4 to i64
  %i.d = shl nuw nsw i64 %i.c, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %5, i8 0, i64 %i.d, i1 false), !tbaa !103
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !40   ; 2 uses
  %.not4459.not = icmp eq i64 %i.f, 0
  br i1 %.not4459.not, label %.critedge.thread, label %.lr.ph66

.critedge.thread:                                 ; preds = %._crit_edge
  store i32 0, ptr %5, align 4, !tbaa !103
  br label %bb.m

.lr.ph66:                                         ; preds = %._crit_edge
  %i.g = load ptr, ptr %3, align 8, !tbaa !38
  %i.h = add nsw i32 %4, -1                       ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph66, %bb.k
  %.03364 = phi i64 [ 0, %.lr.ph66 ], [ %i.ah, %bb.k ] ; 2 uses
  %.03563 = phi i1 [ false, %.lr.ph66 ], [ %.1, %bb.k ]
  %.03662 = phi i32 [ 0, %.lr.ph66 ], [ %.137, %bb.k ] ; 2 uses
  %.03861 = phi i32 [ 0, %.lr.ph66 ], [ %.139, %bb.k ] ; 2 uses
  %.04060 = phi i32 [ 0, %.lr.ph66 ], [ %.141, %bb.k ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %.03364
  %i.j = load i8, ptr %i.i, align 1, !tbaa !39    ; 3 uses
  %i.k = icmp eq i8 %i.j, 46
  br i1 %i.k, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %.not = icmp slt i32 %.04060, %i.h
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %2, align 8, !tbaa !38
  %i.m = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 199, ptr noundef nonnull @.str.64, ptr noundef %i.l, i32 noundef %i.h) #27 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store ptr %i.a, ptr %6, align 8, !tbaa !116
  %i.n = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #30
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  store ptr @.str, ptr %7, align 8, !tbaa !116
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !117
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.q = icmp eq i32 %.03662, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %2, align 8, !tbaa !38
  %i.s = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 199, ptr noundef nonnull @.str.65, ptr noundef %i.r) #27 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  store ptr %i.a, ptr %8, align 8, !tbaa !116
  %i.t = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #30
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  store ptr @.str, ptr %9, align 8, !tbaa !116
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.v, align 8, !tbaa !117
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %9, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.w = add nsw i32 %.04060, 1
  %i.x = sext i32 %.04060 to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %5, i64 %i.x
  store i32 %.03861, ptr %i.y, align 4, !tbaa !103
  br label %bb.k

bb.h:                                             ; preds = %bb.b
  %14 = add i8 %i.j, -48
  %isdigit = icmp ult i8 %14, 10
  br i1 %isdigit, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = mul nsw i32 %.03861, 10
  %15 = zext nneg i8 %i.j to i32
  %16 = add i32 %i.z, -48
  %i.aa = add i32 %16, %15
  %i.ab = add nsw i32 %.03662, 1
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ac = load ptr, ptr %2, align 8, !tbaa !38
  %i.ad = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 199, ptr noundef nonnull @.str.66, ptr noundef %i.ac) #27 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  store ptr %i.a, ptr %10, align 8, !tbaa !116
  %i.ae = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #30
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  store ptr @.str, ptr %11, align 8, !tbaa !116
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.ag, align 8, !tbaa !117
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %11, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.n

bb.k:                                             ; preds = %bb.g, %bb.i
  %.141 = phi i32 [ %i.w, %bb.g ], [ %.04060, %bb.i ] ; 2 uses
  %.139 = phi i32 [ 0, %bb.g ], [ %i.aa, %bb.i ]  ; 2 uses
  %.137 = phi i32 [ 0, %bb.g ], [ %i.ab, %bb.i ]  ; 2 uses
  %.1 = phi i1 [ true, %bb.g ], [ %.03563, %bb.i ] ; 2 uses
  %i.ah = add nuw i64 %.03364, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %i.f
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !533

.critedge:                                        ; preds = %bb.k
  %i.ai = sext i32 %.141 to i64
  %i.aj = icmp eq i32 %.137, 0
  %i.ak = select i1 %.1, i1 %i.aj, i1 false
  %i.al = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ai
  store i32 %.139, ptr %i.al, align 4, !tbaa !103
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.critedge
  %i.am = load ptr, ptr %2, align 8, !tbaa !38
  %i.an = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 199, ptr noundef nonnull @.str.67, ptr noundef %i.am) #27 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  store ptr %i.a, ptr %12, align 8, !tbaa !116
  %i.ao = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #30
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  store ptr @.str, ptr %13, align 8, !tbaa !116
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 0, ptr %i.aq, align 8, !tbaa !117
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %13, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %bb.n

bb.m:                                             ; preds = %.critedge.thread, %.critedge
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.ar, align 8, !tbaa !166, !alias.scope !536
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !536
  br label %bb.n

bb.n:                                             ; preds = %bb.d, %bb.f, %bb.j, %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #12

declare void @_ZN7rocksdb19GetDBOptionsFromMapERKNS_13ConfigOptionsERKNS_9DBOptionsERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_St4hashISC_ESt8equal_toISC_ESaISt4pairIKSC_SC_EEEPS3_(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(753), ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !231
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !105
  %i.f = load ptr, ptr %1, align 8, !tbaa !38     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !40   ; 8 uses
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %bb.c, label %._crit_edge.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.j = icmp slt i64 %i.h, 0
  br i1 %i.j, label %.noexc.i.i, label %bb.d

.noexc.i.i:                                       ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.90) #28
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.k = add nuw i64 %i.h, 1                      ; 2 uses
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %.noexc6.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !104

.noexc6.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.d
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #29 ; 2 uses
  store ptr %i.m, ptr %i.b, align 8, !tbaa !38
  store i64 %i.h, ptr %i.e, align 8, !tbaa !39
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.b
  %i.n = phi ptr [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.e, %bb.b ] ; 3 uses
  switch i64 %i.h, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.o = load i8, ptr %i.f, align 1, !tbaa !39
  store i8 %i.o, ptr %i.n, align 1, !tbaa !39
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.h, ptr %i.p, align 8, !tbaa !40
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.h
  store i8 0, ptr %i.q, align 1, !tbaa !39
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  store ptr %i.s, ptr %i.a, align 8, !tbaa !109
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !537
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit
  %i.t = phi ptr [ %.pre, %bb.g ], [ %i.s, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit ]
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -32
  ret ptr %i.u
}

declare void @_ZN7rocksdb29GetColumnFamilyOptionsFromMapERKNS_13ConfigOptionsERKNS_19ColumnFamilyOptionsERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_St4hashISC_ESt8equal_toISC_ESaISt4pairIKSC_SC_EEEPS3_(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(976), ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #5

declare void @_ZN7rocksdb19ColumnFamilyOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(976)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb19ColumnFamilyOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(976) dereferenceable(976) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7rocksdb21SstPartitionerFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !99
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !100
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !102
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !538
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !102
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !538
  br label %_ZNSt12__shared_ptrIN7rocksdb21SstPartitionerFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !103
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN7rocksdb21SstPartitionerFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !104
end_hunk_0
