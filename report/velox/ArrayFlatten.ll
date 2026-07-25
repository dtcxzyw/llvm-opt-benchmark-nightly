inline.NumInlined: 2135
inline.NumDeleted: 1150
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN8facebook5velox10BaseVectorD2Ev:bb.a
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #24, !inline_history !352
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !45
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #24, !inline_history !352
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.u, %bb.g ], [ %i.ae, %bb.h ]
  %i.af = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.af, label %bb.i, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !48

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #24
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  ret void
}

declare void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.71") align 8, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customIN8facebook5velox8TypeKindENS0_9formatterIS8_cvEEEEvPvRNS0_13parse_contextIcEERS3_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.fmt::v11::formatter.256", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store i32 32768, ptr %3, align 8, !tbaa !541
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 32, ptr %i.b, align 4, !tbaa !32
  %scevgep.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i.i.i.i.i, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.c, align 4, !tbaa !543
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.d, align 8, !tbaa !32
  %i.e = load ptr, ptr %1, align 8, !tbaa !545    ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !547  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  %i.i = icmp samesign eq i64 %i.g, 0
  br i1 %i.i, label %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseERNS0_13parse_contextIcEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i8, ptr %i.e, align 1, !tbaa !32
  %i.k = icmp eq i8 %i.j, 125
  br i1 %i.k, label %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseERNS0_13parse_contextIcEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = call noundef ptr @_ZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeE(ptr noundef nonnull %i.e, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(20) %1, i32 noundef 13)
  %.pre = load ptr, ptr %1, align 8, !tbaa !545
  %.pre6 = load i64, ptr %i.f, align 8, !tbaa !547
  br label %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseERNS0_13parse_contextIcEE.exit

_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseERNS0_13parse_contextIcEE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.m = phi i64 [ %.pre6, %bb.c ], [ %i.g, %bb.b ], [ 0, %bb.a ]
  %i.n = phi ptr [ %.pre, %bb.c ], [ %i.e, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %.0.i = phi ptr [ %i.l, %bb.c ], [ %i.e, %bb.b ], [ %i.e, %bb.a ]
  %i.o = ptrtoint ptr %.0.i to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  store ptr %i.r, ptr %1, align 8, !tbaa !545
  %i.s = sub i64 %i.m, %i.q
  store i64 %i.s, ptr %i.f, align 8, !tbaa !547
  %i.t = load i8, ptr %0, align 1, !tbaa !677
  %i.u = call ptr @_ZNK3fmt3v119formatterIN8facebook5velox8TypeKindEcvE6formatINS0_7contextEEEDaS4_RT_(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 noundef signext %i.t, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNK3fmt3v119formatterIN8facebook5velox8TypeKindEcvE6formatINS0_7contextEEEDaS4_RT_(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.fmt::v11::format_specs", align 4 ; 7 uses
  %i.a = tail call { i64, ptr } @_ZN8facebook5velox12TypeKindName6toNameENS0_8TypeKindE(i8 noundef signext %1) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0        ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 2 uses
  %i.d = load i32, ptr %0, align 8, !tbaa !541
  %i.e = and i32 %i.d, 960
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i = load ptr, ptr %2, align 8, !tbaa !353
  %i.f = tail call ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i.i, ptr %i.c, i64 %i.b, ptr noundef nonnull align 8 dereferenceable(48) %0)
  br label %_ZNK3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 16, i1 false)
  %i.g = load i32, ptr %3, align 4, !tbaa !541    ; 2 uses
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
  %.sroa.0.0.copyload.i19.i = load ptr, ptr %2, align 8, !tbaa !353
  %i.r = call ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i19.i, ptr %i.c, i64 %i.b, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZNK3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit

_ZNK3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit: ; preds = %bb.b, %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i
  %.sroa.015.0.i = phi ptr [ %i.r, %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i ], [ %i.f, %bb.b ]
  ret ptr %.sroa.015.0.i
}

declare { i64, ptr } @_ZN8facebook5velox12TypeKindName6toNameENS0_8TypeKindE(i8 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #12

declare void @_ZN8facebook5velox10BaseVector16wrapInDictionaryEN5boost13intrusive_ptrINS0_6BufferEEES5_iSt10shared_ptrIS1_Eb(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.71") align 8, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayFlattenFunction26flattenArrayWithDictionaryERKNS0_17SelectivityVectorERNS3_12ProcessStateEENKUliE_clEi(ptr nofree readonly captures(none) %.8.val, ptr nofree captures(none) %.16.val, i32 noundef %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v11::detail::format_arg_store.259", align 16 ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = load i32, ptr %.16.val, align 4, !tbaa !3
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 104
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !305
  %i.d = sext i32 %0 to i64                       ; 4 uses
  %i.e = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.d
  store i32 %i.a, ptr %i.e, align 4, !tbaa !3
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !250
  %i.h = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.d
  %i.i = load i32, ptr %i.h, align 4, !tbaa !3    ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !252
  %i.l = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.d ; 6 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !3    ; 8 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph14.i, label %._crit_edge15.i

.lr.ph14.i:                                       ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !278  ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !653  ; 5 uses
  %.not.i.i = icmp eq ptr %i.r, null
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 57
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 59 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 58
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 64 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.8.val, i64 80
  %.val.i = load ptr, ptr %i.x, align 8           ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.8.val, i64 88 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.8.val, i64 144 ; 5 uses
  %i.aa = load i8, ptr %i.v, align 2, !tbaa !654, !range !69, !noundef !70
  %i.ab = trunc nuw i8 %i.aa to i1                ; 2 uses
  br i1 %.not.i.i, label %.lr.ph14.split.us.i, label %.lr.ph14.split.i

.lr.ph14.split.us.i:                              ; preds = %.lr.ph14.i
  %.val32.us.i = load ptr, ptr %i.y, align 8, !tbaa !291 ; 3 uses
  br i1 %i.ab, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i, label %.lr.ph14.split.us.split.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i: ; preds = %.lr.ph14.split.us.i
  %i.ac = sext i32 %i.i to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i: ; preds = %bb.b, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i
  %i.ad = phi i32 [ %i.m, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i ], [ %.0318.us.us.i, %bb.b ]
  %indvars.iv54.i = phi i64 [ %i.ac, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i ], [ %indvars.iv.next55.i, %bb.b ] ; 3 uses
  %.012.us.us.i = phi i32 [ 0, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i ], [ %7, %bb.b ]
  %.069.us.us.i = phi i32 [ 0, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i ], [ %i.an, %bb.b ]
  %i.ae = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %indvars.iv54.i
  %i.af = getelementptr inbounds [4 x i8], ptr %.val32.us.i, i64 %indvars.iv54.i
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !3  ; 2 uses
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !3  ; 3 uses
  %i.ai = add nsw i32 %i.ah, %i.ag
  %i.aj = icmp sgt i32 %i.ah, 0
  br i1 %i.aj, label %.lr.ph.us.us.i, label %bb.b

._crit_edge.us.us.i.a:                            ; preds = %.lr.ph.us.us.i, %._crit_edge.us.us.i.a
  %i.ak = phi i32 [ %i.ag, %.lr.ph.us.us.i ], [ %6, %._crit_edge.us.us.i.a ] ; 2 uses
  %3 = load i32, ptr %.16.val, align 4, !tbaa !3  ; 2 uses
  %i.al = add nsw i32 %3, 1
  store i32 %i.al, ptr %.16.val, align 4, !tbaa !3
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %4
  store i32 %i.ak, ptr %5, align 4, !tbaa !3
  %6 = add nsw i32 %i.ak, 1                       ; 2 uses
  %i.am = icmp slt i32 %6, %i.ai
  br i1 %i.am, label %._crit_edge.us.us.i.a, label %._crit_edge.us.us.loopexit.i, !llvm.loop !696

._crit_edge.us.us.loopexit.i:                     ; preds = %._crit_edge.us.us.i.a
  %.pre60.i = load i32, ptr %i.l, align 4, !tbaa !3
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.us.us.loopexit.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i
  %.0318.us.us.i = phi i32 [ %.pre60.i, %._crit_edge.us.us.loopexit.i ], [ %i.ad, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i ] ; 2 uses
  %i.an = add nsw i32 %i.ah, %.069.us.us.i        ; 2 uses
  %7 = add nuw nsw i32 %.012.us.us.i, 1           ; 2 uses
  %indvars.iv.next55.i = add nsw i64 %indvars.iv54.i, 1
  %i.ao = icmp slt i32 %7, %.0318.us.us.i
  br i1 %i.ao, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i, label %._crit_edge15.i, !llvm.loop !697

.lr.ph.us.us.i:                                   ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i
  %i.ap = load ptr, ptr %i.z, align 8, !tbaa !335
  br label %._crit_edge.us.us.i.a

.lr.ph14.split.us.split.i:                        ; preds = %.lr.ph14.split.us.i
  %i.aq = load i8, ptr %i.t, align 1, !tbaa !656, !range !69, !noundef !70
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us30.i, label %.lr.ph14.split.us.split.split.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us30.i: ; preds = %.lr.ph14.split.us.split.i, %._crit_edge.us.us38.i
  %i.as = phi i32 [ %8, %._crit_edge.us.us38.i ], [ %i.m, %.lr.ph14.split.us.split.i ]
  %.012.us.us31.i = phi i32 [ %10, %._crit_edge.us.us38.i ], [ 0, %.lr.ph14.split.us.split.i ]
  %.069.us.us33.i = phi i32 [ %9, %._crit_edge.us.us38.i ], [ 0, %.lr.ph14.split.us.split.i ]
  %i.at = load i32, ptr %i.w, align 8, !tbaa !698
  %i.au = sext i32 %i.at to i64                   ; 2 uses
  %i.av = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.au
  %i.aw = getelementptr inbounds [4 x i8], ptr %.val32.us.i, i64 %i.au
  %i.ax = load i32, ptr %i.av, align 4, !tbaa !3  ; 2 uses
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !3  ; 3 uses
  %i.az = add nsw i32 %i.ay, %i.ax
  %i.ba = icmp sgt i32 %i.ay, 0
  br i1 %i.ba, label %.lr.ph.us.us37.i, label %._crit_edge.us.us38.i

bb.c:                                             ; preds = %.lr.ph.us.us37.i, %bb.c
  %.0318.us.us36.i = phi i32 [ %i.ax, %.lr.ph.us.us37.i ], [ %i.bf, %bb.c ] ; 2 uses
  %i.bb = load i32, ptr %.16.val, align 4, !tbaa !3 ; 2 uses
  %i.bc = add nsw i32 %i.bb, 1
  store i32 %i.bc, ptr %.16.val, align 4, !tbaa !3
  %i.bd = sext i32 %i.bb to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.bd
  store i32 %.0318.us.us36.i, ptr %i.be, align 4, !tbaa !3
  %i.bf = add nsw i32 %.0318.us.us36.i, 1         ; 2 uses
  %i.bg = icmp slt i32 %i.bf, %i.az
  br i1 %i.bg, label %bb.c, label %._crit_edge.us.us38.loopexit.i, !llvm.loop !696

._crit_edge.us.us38.loopexit.i:                   ; preds = %bb.c
  %.pre59.i = load i32, ptr %i.l, align 4, !tbaa !3
  br label %._crit_edge.us.us38.i

._crit_edge.us.us38.i:                            ; preds = %._crit_edge.us.us38.loopexit.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us30.i
  %8 = phi i32 [ %.pre59.i, %._crit_edge.us.us38.loopexit.i ], [ %i.as, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us30.i ] ; 2 uses
  %9 = add nsw i32 %i.ay, %.069.us.us33.i         ; 2 uses
  %10 = add nuw nsw i32 %.012.us.us31.i, 1        ; 2 uses
  %11 = icmp slt i32 %10, %8
  br i1 %11, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us30.i, label %._crit_edge15.i, !llvm.loop !697

.lr.ph.us.us37.i:                                 ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us30.i
  %i.bh = load ptr, ptr %i.z, align 8, !tbaa !335
  br label %bb.c

.lr.ph14.split.us.split.split.i:                  ; preds = %.lr.ph14.split.us.split.i
  %i.bi = load ptr, ptr %i.u, align 8, !tbaa !657
  %i.bj = sext i32 %i.i to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i: ; preds = %bb.d, %.lr.ph14.split.us.split.split.i
  %i.bk = phi i32 [ %.0318.us.i, %bb.d ], [ %i.m, %.lr.ph14.split.us.split.split.i ]
  %indvars.iv51.i = phi i64 [ %indvars.iv.next52.i, %bb.d ], [ %i.bj, %.lr.ph14.split.us.split.split.i ] ; 2 uses
  %.012.us.i = phi i32 [ %16, %bb.d ], [ 0, %.lr.ph14.split.us.split.split.i ]
  %.069.us.i = phi i32 [ %i.bx, %bb.d ], [ 0, %.lr.ph14.split.us.split.split.i ]
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %indvars.iv51.i
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bn = sext i32 %i.bm to i64                   ; 2 uses
  %i.bo = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.bn
  %i.bp = getelementptr inbounds [4 x i8], ptr %.val32.us.i, i64 %i.bn
  %i.bq = load i32, ptr %i.bo, align 4, !tbaa !3  ; 2 uses
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !3  ; 3 uses
  %i.bs = add nsw i32 %i.br, %i.bq
  %i.bt = icmp sgt i32 %i.br, 0
  br i1 %i.bt, label %.lr.ph.us.i, label %bb.d

._crit_edge.us.i.a:                               ; preds = %.lr.ph.us.i, %._crit_edge.us.i.a
  %i.bu = phi i32 [ %i.bq, %.lr.ph.us.i ], [ %15, %._crit_edge.us.i.a ] ; 2 uses
  %12 = load i32, ptr %.16.val, align 4, !tbaa !3 ; 2 uses
  %i.bv = add nsw i32 %12, 1
  store i32 %i.bv, ptr %.16.val, align 4, !tbaa !3
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %13
  store i32 %i.bu, ptr %14, align 4, !tbaa !3
  %15 = add nsw i32 %i.bu, 1                      ; 2 uses
  %i.bw = icmp slt i32 %15, %i.bs
  br i1 %i.bw, label %._crit_edge.us.i.a, label %._crit_edge.us.loopexit.i, !llvm.loop !696

._crit_edge.us.loopexit.i:                        ; preds = %._crit_edge.us.i.a
  %.pre58.i = load i32, ptr %i.l, align 4, !tbaa !3
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.us.loopexit.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i
  %.0318.us.i = phi i32 [ %.pre58.i, %._crit_edge.us.loopexit.i ], [ %i.bk, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i ] ; 2 uses
  %i.bx = add nsw i32 %i.br, %.069.us.i           ; 2 uses
  %16 = add nuw nsw i32 %.012.us.i, 1             ; 2 uses
  %indvars.iv.next52.i = add nsw i64 %indvars.iv51.i, 1
  %i.by = icmp slt i32 %16, %.0318.us.i
  br i1 %i.by, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i, label %._crit_edge15.i, !llvm.loop !697

.lr.ph.us.i:                                      ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i
  %i.bz = load ptr, ptr %i.z, align 8, !tbaa !335
  br label %._crit_edge.us.i.a

.lr.ph14.split.i:                                 ; preds = %.lr.ph14.i
  %i.ca = sext i32 %i.i to i64                    ; 2 uses
  br i1 %i.ab, label %.lr.ph14.split.split.us.i, label %.lr.ph14.split.split.i

.lr.ph14.split.split.us.i:                        ; preds = %.lr.ph14.split.i, %bb.e
  %.pre5764.i = phi i32 [ %.pre5765.i, %bb.e ], [ %i.m, %.lr.ph14.split.i ] ; 2 uses
  %i.cb = phi i32 [ %i.cq, %bb.e ], [ %i.m, %.lr.ph14.split.i ]
  %indvars.iv48.i = phi i64 [ %indvars.iv.next49.i, %bb.e ], [ %i.ca, %.lr.ph14.split.i ] ; 5 uses
  %.012.us16.i = phi i32 [ %i.cr, %bb.e ], [ 0, %.lr.ph14.split.i ]
  %.069.us18.i = phi i32 [ %.1.us23.i, %bb.e ], [ 0, %.lr.ph14.split.i ] ; 2 uses
  %i.cc = lshr i64 %indvars.iv48.i, 6
  %i.cd = and i64 %i.cc, 67108863
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.cd
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !120
  %i.cg = and i64 %indvars.iv48.i, 63
  %i.ch = shl nuw i64 1, %i.cg
  %i.ci = and i64 %i.cf, %i.ch
  %.not.i.i.us.i = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i.us.i, label %bb.e, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit.us20.i, !prof !658

_ZNK8facebook5velox13DecodedVector5indexEi.exit.us20.i: ; preds = %.lr.ph14.split.split.us.i
  %.val32.us22.i = load ptr, ptr %i.y, align 8, !tbaa !291
  %i.cj = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %indvars.iv48.i
  %i.ck = getelementptr inbounds [4 x i8], ptr %.val32.us22.i, i64 %indvars.iv48.i
  %i.cl = load i32, ptr %i.cj, align 4, !tbaa !3  ; 2 uses
  %i.cm = load i32, ptr %i.ck, align 4, !tbaa !3  ; 3 uses
  %i.cn = add nsw i32 %i.cm, %i.cl
  %i.co = icmp sgt i32 %i.cm, 0
  br i1 %i.co, label %.lr.ph.us25.i, label %._crit_edge.us26.i

17:                                               ; preds = %.lr.ph.us25.i, %17
  %.0318.us23.i = phi i32 [ %i.cl, %.lr.ph.us25.i ], [ %22, %17 ] ; 2 uses
  %18 = load i32, ptr %.16.val, align 4, !tbaa !3 ; 2 uses
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %.16.val, align 4, !tbaa !3
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %20
  store i32 %.0318.us23.i, ptr %21, align 4, !tbaa !3
  %22 = add nsw i32 %.0318.us23.i, 1              ; 2 uses
  %23 = icmp slt i32 %22, %i.cn
  br i1 %23, label %17, label %._crit_edge.us26.loopexit.i, !llvm.loop !696

._crit_edge.us26.loopexit.i:                      ; preds = %17
  %.pre57.pre.i = load i32, ptr %i.l, align 4, !tbaa !3
  br label %._crit_edge.us26.i

._crit_edge.us26.i:                               ; preds = %._crit_edge.us26.loopexit.i, %_ZNK8facebook5velox13DecodedVector5indexEi.exit.us20.i
  %.pre57.i = phi i32 [ %.pre57.pre.i, %._crit_edge.us26.loopexit.i ], [ %.pre5764.i, %_ZNK8facebook5velox13DecodedVector5indexEi.exit.us20.i ] ; 2 uses
  %i.cp = add nsw i32 %i.cm, %.069.us18.i
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.us26.i, %.lr.ph14.split.split.us.i
  %.pre5765.i = phi i32 [ %.pre5764.i, %.lr.ph14.split.split.us.i ], [ %.pre57.i, %._crit_edge.us26.i ]
  %i.cq = phi i32 [ %i.cb, %.lr.ph14.split.split.us.i ], [ %.pre57.i, %._crit_edge.us26.i ] ; 2 uses
  %.1.us23.i = phi i32 [ %.069.us18.i, %.lr.ph14.split.split.us.i ], [ %i.cp, %._crit_edge.us26.i ] ; 2 uses
  %i.cr = add nuw nsw i32 %.012.us16.i, 1         ; 2 uses
  %indvars.iv.next49.i = add nsw i64 %indvars.iv48.i, 1
  %i.cs = icmp slt i32 %i.cr, %i.cq
  br i1 %i.cs, label %.lr.ph14.split.split.us.i, label %._crit_edge15.i, !llvm.loop !697

.lr.ph.us25.i:                                    ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit.us20.i
  %i.ct = load ptr, ptr %i.z, align 8, !tbaa !335
  br label %17

._crit_edge15.i:                                  ; preds = %bb.j, %bb.e, %bb.d, %._crit_edge.us.us38.i, %bb.b, %bb.a
  %.06.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.an, %bb.b ], [ %i.bx, %bb.d ], [ %.1.us23.i, %bb.e ], [ %9, %._crit_edge.us.us38.i ], [ %.1.i, %bb.j ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.8.val, i64 120
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !309
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.d
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !3  ; 2 uses
  %.not.i = icmp eq i32 %.06.lcssa.i, %i.cx
  br i1 %.not.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_120ArrayFlattenFunction19processOneOutputRowEiiRKNS3_12ProcessStateERi.exit, label %bb.k, !prof !82

.lr.ph14.split.split.i:                           ; preds = %.lr.ph14.split.i, %bb.j
  %.pre61.i = phi i32 [ %.pre62.i, %bb.j ], [ %i.m, %.lr.ph14.split.i ] ; 4 uses
  %i.cy = phi i32 [ %i.eo, %bb.j ], [ %i.m, %.lr.ph14.split.i ] ; 3 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.j ], [ %i.ca, %.lr.ph14.split.i ] ; 5 uses
  %.012.i = phi i32 [ %i.ep, %bb.j ], [ 0, %.lr.ph14.split.i ]
  %.069.i = phi i32 [ %.1.i, %bb.j ], [ 0, %.lr.ph14.split.i ] ; 4 uses
  %i.cz = load i8, ptr %i.s, align 1, !range !69
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph14.split.split.i
  %i.db = lshr i64 %indvars.iv.i, 6
  %i.dc = and i64 %i.db, 67108863
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.dc
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !120
  %i.df = and i64 %indvars.iv.i, 63
  %i.dg = shl nuw i64 1, %i.df
  %i.dh = and i64 %i.de, %i.dg
  %.not.i.i.i = icmp eq i64 %i.dh, 0
  br i1 %.not.i.i.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i, !prof !658

bb.g:                                             ; preds = %.lr.ph14.split.split.i
  %i.di = load i8, ptr %i.t, align 1, !tbaa !656, !range !69, !noundef !70
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dk = load ptr, ptr %i.u, align 8, !tbaa !657
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.dk, i64 %indvars.iv.i
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !3
  %i.dn = zext i32 %i.dm to i64                   ; 2 uses
  %i.do = lshr i64 %i.dn, 6
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.do
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !120
  %i.dr = and i64 %i.dn, 63
  %i.ds = shl nuw i64 1, %i.dr
  %i.dt = and i64 %i.ds, %i.dq
  %.not.i7.i.i = icmp eq i64 %i.dt, 0
  br i1 %.not.i7.i.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.thread27, !prof !658

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i: ; preds = %bb.g
  %i.du = load i64, ptr %i.r, align 8, !tbaa !120
  %i.dv = and i64 %i.du, 1
  %.not.i6.i.i = icmp eq i64 %i.dv, 0
  br i1 %.not.i6.i.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i, !prof !658

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i: ; preds = %bb.f
  %.pre = load i8, ptr %i.t, align 1, !tbaa !656, !range !69
  %i.dw = trunc nuw i8 %.pre to i1
  br i1 %i.dw, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.thread27

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.thread27: ; preds = %bb.h, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i
  %i.dx = load ptr, ptr %i.u, align 8, !tbaa !657
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %indvars.iv.i
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i

_ZNK8facebook5velox13DecodedVector5indexEi.exit.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.thread27, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i
  %.0.i33.in.i = phi ptr [ %i.dy, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.thread27 ], [ %i.w, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i ], [ %i.w, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i ]
  %.0.i33.i = load i32, ptr %.0.i33.in.i, align 4, !tbaa !3
  %.val32.i = load ptr, ptr %i.y, align 8, !tbaa !291
  %i.dz = sext i32 %.0.i33.i to i64               ; 2 uses
  %i.ea = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.dz
  %i.eb = getelementptr inbounds [4 x i8], ptr %.val32.i, i64 %i.dz
  %i.ec = load i32, ptr %i.ea, align 4, !tbaa !3  ; 2 uses
  %i.ed = load i32, ptr %i.eb, align 4, !tbaa !3  ; 3 uses
  %i.ee = add nsw i32 %i.ed, %i.ec
  %i.ef = icmp sgt i32 %i.ed, 0
  br i1 %i.ef, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i
  %i.eg = load ptr, ptr %i.z, align 8, !tbaa !335
  br label %bb.i

._crit_edge.loopexit.i:                           ; preds = %bb.i
  %.pre.pre.i = load i32, ptr %i.l, align 4, !tbaa !3
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i
  %.pre.i = phi i32 [ %.pre.pre.i, %._crit_edge.loopexit.i ], [ %.pre61.i, %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i ] ; 2 uses
  %i.eh = add nsw i32 %i.ed, %.069.i
  br label %bb.j

bb.i:                                             ; preds = %bb.i, %.lr.ph.i
  %.0318.i = phi i32 [ %i.ec, %.lr.ph.i ], [ %i.em, %bb.i ] ; 2 uses
  %i.ei = load i32, ptr %.16.val, align 4, !tbaa !3 ; 2 uses
  %i.ej = add nsw i32 %i.ei, 1
  store i32 %i.ej, ptr %.16.val, align 4, !tbaa !3
  %i.ek = sext i32 %i.ei to i64
  %i.el = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.ek
  store i32 %.0318.i, ptr %i.el, align 4, !tbaa !3
  %i.em = add nsw i32 %.0318.i, 1                 ; 2 uses
  %i.en = icmp slt i32 %i.em, %i.ee
  br i1 %i.en, label %bb.i, label %._crit_edge.loopexit.i, !llvm.loop !696

bb.j:                                             ; preds = %._crit_edge.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %bb.h, %bb.f
  %.pre62.i = phi i32 [ %.pre61.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i ], [ %.pre.i, %._crit_edge.i ], [ %.pre61.i, %bb.f ], [ %.pre61.i, %bb.h ]
  %i.eo = phi i32 [ %i.cy, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i ], [ %.pre.i, %._crit_edge.i ], [ %i.cy, %bb.f ], [ %i.cy, %bb.h ] ; 2 uses
  %.1.i = phi i32 [ %.069.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i ], [ %i.eh, %._crit_edge.i ], [ %.069.i, %bb.f ], [ %.069.i, %bb.h ] ; 2 uses
  %i.ep = add nuw nsw i32 %.012.i, 1              ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  %i.eq = icmp slt i32 %i.ep, %i.eo
  br i1 %i.eq, label %.lr.ph14.split.split.i, label %._crit_edge15.i, !llvm.loop !697

bb.k:                                             ; preds = %._crit_edge15.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24, !noalias !699
  store i32 %.06.lcssa.i, ptr %1, align 16, !tbaa !32, !alias.scope !702, !noalias !699
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.cx, ptr %i.er, align 16, !tbaa !32, !alias.scope !702, !noalias !699
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr nonnull @.str.23, i64 11, i64 17, ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24, !noalias !699
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayFlattenFunction19processOneOutputRowEiiRKNS3_12ProcessStateERiE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nonnull @.str.23) #28
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.es = landingpad { ptr, i32 }
          cleanup
  %i.et = load ptr, ptr %2, align 8, !tbaa !49    ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ev = icmp eq ptr %i.et, %i.eu
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.m
  %i.ew = load i64, ptr %i.eu, align 8, !tbaa !32
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ex) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.es

_ZNK8facebook5velox9functions12_GLOBAL__N_120ArrayFlattenFunction19processOneOutputRowEiiRKNS3_12ProcessStateERi.exit: ; preds = %._crit_edge15.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt10_ConstructIN8facebook5velox11ArrayVectorEJRPNS1_6memory10MemoryPoolERSt10shared_ptrIKNS1_4TypeEEDnRiRN5boost13intrusive_ptrINS1_6BufferEEESH_RS7_INS1_10BaseVectorEEEEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(16) %7) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::shared_ptr.74", align 16 ; 4 uses
  %9 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %10 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %11 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %12 = alloca %"class.std::shared_ptr.71", align 16 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !521
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  %i.e = load <2 x ptr>, ptr %2, align 8, !tbaa !40
  store <2 x ptr> %i.e, ptr %8, align 16, !tbaa !40
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !3
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit: ; preds = %bb.a, %bb.c, %bb.d
  store ptr null, ptr %9, align 8, !tbaa !296
  %i.k = load i32, ptr %4, align 4, !tbaa !3
  %i.l = load ptr, ptr %5, align 8, !tbaa !296    ; 3 uses
  store ptr %i.l, ptr %10, align 8, !tbaa !296
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = atomicrmw add ptr %i.m, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit: ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit, %bb.e
  %i.o = load ptr, ptr %6, align 8, !tbaa !296    ; 3 uses
  store ptr %i.o, ptr %11, align 8, !tbaa !296
  %.not.i8 = icmp eq ptr %i.o, null
  br i1 %.not.i8, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit9, label %bb.f

bb.f:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = atomicrmw add ptr %i.p, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit9

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit9: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit, %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !37   ; 2 uses
  %i.u = load <2 x ptr>, ptr %7, align 8, !tbaa !40
  store <2 x ptr> %i.u, ptr %12, align 16, !tbaa !40
  %.not.i.i.i10 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i10, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit9
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i.i11 = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i11, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load i32, ptr %i.v, align 4, !tbaa !3
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.v, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit

bb.i:                                             ; preds = %bb.g
  %i.z = atomicrmw volatile add ptr %i.v, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit9, %bb.h, %bb.i
  invoke void @_ZN8facebook5velox11ArrayVectorC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSC_SC_S5_INS0_10BaseVectorEESt8optionalIiE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %i.a, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef %i.k, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, i64 0)
          to label %bb.j unwind label %bb.ac

bb.j:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !37  ; 8 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.ab, align 8, !tbaa !42
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !44
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !45
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #24, !inline_history !346
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !45
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #24, !inline_history !346
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i12 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i12, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i = phi i32 [ %i.ae, %bb.n ], [ %i.ao, %bb.o ]
  %i.ap = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ap, label %bb.p, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !48

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #24
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.j, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.p
  %i.aq = load ptr, ptr %11, align 8, !tbaa !296  ; 7 uses
  %.not.i13 = icmp eq ptr %i.aq, null
  br i1 %.not.i13, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.as = atomicrmw sub ptr %i.ar, i32 1 acq_rel, align 4
  %i.at = icmp eq i32 %i.as, 1
  br i1 %i.at, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.q
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !45
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.aw = load ptr, ptr %i.av, align 8
  invoke void %i.aw(ptr noundef nonnull align 8 dereferenceable(64) %i.aq)
          to label %.noexc.i unwind label %bb.r, !inline_history !297

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !298
  %.not.i.i14 = icmp eq ptr %i.ay, null
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !45
  %..i.i = select i1 %.not.i.i14, i64 8, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %..i.i
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr noundef nonnull align 8 dereferenceable(64) %i.aq)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.r, !inline_history !297
end_hunk_0
