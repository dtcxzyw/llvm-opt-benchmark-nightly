inline.NumInlined: 1441
inline.NumDeleted: 700
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNSt12__shared_ptrIN7rocksdb8IOTracerELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !368
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !370
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !137
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !371
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !137
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !371
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !364
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !365

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb7StripedINS_19CacheAlignedWrapperINS_4port5MutexEEENS_5SliceENS_15SliceNPHasher64EED2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !257  ; 5 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_N7rocksdb19CacheAlignedWrapperINS0_4port5MutexEEESt14default_deleteIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -64
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %.idx.i.i = shl i64 %i.e, 6                     ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZNKSt14default_deleteIA_N7rocksdb19CacheAlignedWrapperINS0_4port5MutexEEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 %.idx.i.i
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.preheader.i.i
  %i.h = phi ptr [ %i.i, %.preheader.i.i ], [ %i.g, %.preheader.preheader.i.i ]
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -64 ; 3 uses
  tail call void @_ZN7rocksdb4port5MutexD1Ev(ptr noundef nonnull align 64 dead_on_return(40) dereferenceable(40) %i.i) #25
  %i.j = icmp eq ptr %i.i, %i.b
  br i1 %i.j, label %_ZNKSt14default_deleteIA_N7rocksdb19CacheAlignedWrapperINS0_4port5MutexEEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i, label %.preheader.i.i

_ZNKSt14default_deleteIA_N7rocksdb19CacheAlignedWrapperINS0_4port5MutexEEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i: ; preds = %.preheader.i.i, %bb.b
  %i.k = add i64 %.idx.i.i, 64
  tail call void @_ZdaPvmSt11align_val_t(ptr noundef nonnull %i.c, i64 noundef %i.k, i64 noundef 64) #24
  br label %_ZNSt10unique_ptrIA_N7rocksdb19CacheAlignedWrapperINS0_4port5MutexEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrIA_N7rocksdb19CacheAlignedWrapperINS0_4port5MutexEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIA_N7rocksdb19CacheAlignedWrapperINS0_4port5MutexEEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7rocksdb10TableCacheD2Ev(ptr nofree noundef nonnull readonly align 8 captures(address) dead_on_return(152) dereferenceable(152) %0) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !15
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !362  ; 8 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7rocksdb8IOTracerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.i, align 8, !tbaa !368
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !370
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !137
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #25, !inline_history !372
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !137
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #25, !inline_history !372
  br label %_ZNSt12__shared_ptrIN7rocksdb8IOTracerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15
  %.not.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !364
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.l, %bb.e ], [ %i.v, %bb.f ]
  %i.w = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.w, label %bb.g, label %_ZNSt12__shared_ptrIN7rocksdb8IOTracerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !365

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #25
  br label %_ZNSt12__shared_ptrIN7rocksdb8IOTracerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7rocksdb8IOTracerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !257  ; 5 uses
  %.not.i.i1 = icmp eq ptr %i.y, null
  br i1 %.not.i.i1, label %_ZN7rocksdb7StripedINS_19CacheAlignedWrapperINS_4port5MutexEEENS_5SliceENS_15SliceNPHasher64EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN7rocksdb8IOTracerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -64
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -8
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %.idx.i.i.i = shl i64 %i.ab, 6                  ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_ZNKSt14default_deleteIA_N7rocksdb19CacheAlignedWrapperINS0_4port5MutexEEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %bb.h
  %i.ad = getelementptr inbounds i8, ptr %i.y, i64 %.idx.i.i.i
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.preheader.i.i.i
  %i.ae = phi ptr [ %i.af, %.preheader.i.i.i ], [ %i.ad, %.preheader.preheader.i.i.i ]
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -64 ; 3 uses
  tail call void @_ZN7rocksdb4port5MutexD1Ev(ptr noundef nonnull align 64 dead_on_return(40) dereferenceable(40) %i.af) #25
  %i.ag = icmp eq ptr %i.af, %i.y
  br i1 %i.ag, label %_ZNKSt14default_deleteIA_N7rocksdb19CacheAlignedWrapperINS0_4port5MutexEEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i.i, label %.preheader.i.i.i

_ZNKSt14default_deleteIA_N7rocksdb19CacheAlignedWrapperINS0_4port5MutexEEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i.i: ; preds = %.preheader.i.i.i, %bb.h
  %i.ah = add i64 %.idx.i.i.i, 64
  tail call void @_ZdaPvmSt11align_val_t(ptr noundef nonnull %i.z, i64 noundef %i.ah, i64 noundef 64) #24
  br label %_ZN7rocksdb7StripedINS_19CacheAlignedWrapperINS_4port5MutexEEENS_5SliceENS_15SliceNPHasher64EED2Ev.exit

_ZN7rocksdb7StripedINS_19CacheAlignedWrapperINS_4port5MutexEEENS_5SliceENS_15SliceNPHasher64EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN7rocksdb8IOTracerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt14default_deleteIA_N7rocksdb19CacheAlignedWrapperINS0_4port5MutexEEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !9  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %_ZN7rocksdb7StripedINS_19CacheAlignedWrapperINS_4port5MutexEEENS_5SliceENS_15SliceNPHasher64EED2Ev.exit
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !15
  %i.an = add i64 %i.am, 1
  tail call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %_ZN7rocksdb7StripedINS_19CacheAlignedWrapperINS_4port5MutexEEENS_5SliceENS_15SliceNPHasher64EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb10TableCache14GetTableReaderERKNS_11ReadOptionsERKNS_11FileOptionsERKNS_21InternalKeyComparatorERKNS_12FileMetaDataEbPNS_13HistogramImplEPSt10unique_ptrINS_11TableReaderESt14default_deleteISG_EERKNS_16MutableCFOptionsEbibmNS_11TemperatureEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr dead_on_unwind noalias nofree writable sret(%"class.rocksdb::Status") align 8 captures(address) %0, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(216) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(417) %5, i1 noundef zeroext %6, ptr noundef %7, ptr noundef %8, ptr noundef nonnull align 8 dereferenceable(736) %9, i1 noundef zeroext %10, i32 noundef %11, i1 noundef zeroext %12, i64 noundef %13, i8 noundef zeroext %14, ptr noundef %15, i1 noundef zeroext %16) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0 = alloca [2 x i64], align 8            ; 3 uses
  %17 = alloca %"class.std::unique_ptr", align 8  ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 21 uses
  %19 = alloca %"class.std::unique_ptr.158", align 8 ; 11 uses
  %20 = alloca %"struct.rocksdb::FileOptions", align 8 ; 23 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %22 = alloca %"class.rocksdb::IOStatus", align 8 ; 11 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %24 = alloca %"class.rocksdb::IOStatus", align 8 ; 8 uses
  %25 = alloca %"class.rocksdb::IOStatus", align 8 ; 7 uses
  %26 = alloca %"class.rocksdb::StopWatch", align 8 ; 20 uses
  %27 = alloca %"class.std::unique_ptr.166", align 8 ; 7 uses
  %28 = alloca %"struct.rocksdb::TableReaderOptions", align 8 ; 26 uses
  %29 = alloca %"class.rocksdb::Status", align 8  ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  %i.a = load ptr, ptr %1, align 8, !tbaa !33, !nonnull !58, !align !59
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 776
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !177  ; 2 uses
  %i.e = and i64 %i.d, 4611686018427387903
  %i.f = lshr i64 %i.d, 62
  %i.g = trunc nuw nsw i64 %i.f to i32
  call void @_ZN7rocksdb13TableFileNameB5cxx11ERKSt6vectorINS_6DbPathESaIS1_EEmj(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.e, i32 noundef %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  store ptr null, ptr %19, align 8, !tbaa !373
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  invoke void @_ZN7rocksdb11FileOptionsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(216) %20, ptr noundef nonnull align 8 dereferenceable(216) %3)
          to label %bb.b unwind label %.thread291

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %20, i64 136
  store i8 %14, ptr %i.h, align 8, !tbaa !376
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 224
  %i.j = getelementptr inbounds nuw i8, ptr %20, i64 144 ; 2 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 256
  %i.l = getelementptr inbounds nuw i8, ptr %20, i64 176 ; 2 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit70 unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit70: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  %i.m = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  store ptr %i.m, ptr %21, align 8, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 0, ptr %i.n, align 8, !tbaa !30
  store i8 0, ptr %i.m, align 8, !tbaa !15
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.p = load atomic i8, ptr %i.o monotonic, align 2, !range !129, !noundef !58
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.c, label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit70
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 392
  %i.s = load i64, ptr %i.r, align 8, !tbaa !30
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 384
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit71 unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit71: ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %20, i64 208
  store ptr %21, ptr %i.v, align 8, !tbaa !393
  %i.w = load ptr, ptr %1, align 8, !tbaa !33, !nonnull !58, !align !59
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 584
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !183  ; 3 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit71
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !137
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 176
  %i.ab = load ptr, ptr %i.aa, align 8
  invoke void %i.ab(ptr noundef nonnull align 8 dereferenceable(33) %i.y, i32 noundef 251, i64 noundef 1)
          to label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit unwind label %bb.g, !inline_history !227

.thread291:                                       ; preds = %bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  br label %_ZNSt10unique_ptrIN7rocksdb18FSRandomAccessFileESt14default_deleteIS1_EED2Ev.exit175

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit169

_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit71, %bb.e, %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit70
  %i.af = getelementptr inbounds nuw i8, ptr %20, i64 48 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !394, !noalias !395
  %.not.i72 = icmp eq i64 %i.ah, 0
  br i1 %.not.i72, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit
  %i.ai = load ptr, ptr %1, align 8, !tbaa !33, !nonnull !58, !align !59
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 576
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !228 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !137, !noalias !395
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 152
  %i.an = load ptr, ptr %i.am, align 8, !noalias !395
  %i.ao = invoke noundef i64 %i.an(ptr noundef nonnull align 8 dereferenceable(32) %i.ak)
          to label %.noexc73 unwind label %bb.r, !inline_history !398 ; 2 uses

.noexc73:                                         ; preds = %bb.h
  %i.ap = load i64, ptr %i.ag, align 8, !tbaa !139, !noalias !395 ; 2 uses
  %.not35.i = icmp slt i64 %i.ao, %i.ap
  br i1 %.not35.i, label %.thread.i, label %bb.i

.thread.i:                                        ; preds = %.noexc73
  %i.aq = sub nsw i64 %i.ap, %i.ao
  store i64 %i.aq, ptr %i.af, align 8, !tbaa !139, !noalias !395
  br label %bb.j

bb.i:                                             ; preds = %.noexc73
  %i.ar = invoke noalias noundef nonnull dereferenceable(18) ptr @_Znam(i64 noundef 18) #26
          to label %.noexc74 unwind label %bb.r   ; 3 uses

.noexc74:                                         ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.ar, ptr noundef nonnull align 1 dereferenceable(17) @.str.47, i64 17, i1 false), !noalias !399
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 17
  store i8 0, ptr %i.as, align 1, !tbaa !15, !noalias !399
  br label %bb.n

bb.j:                                             ; preds = %.thread.i, %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.au = load i64, ptr %i.at, align 8, !tbaa !394, !noalias !395 ; 3 uses
  %.not27.i = icmp eq i64 %i.au, 0
  br i1 %.not27.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = load i64, ptr %i.af, align 8, !tbaa !394, !noalias !395 ; 2 uses
  %.not28.i = icmp eq i64 %i.av, 0
  %i.aw = icmp slt i64 %i.au, %i.av
  %or.cond34.i = or i1 %.not28.i, %i.aw
  br i1 %or.cond34.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i64 %i.au, ptr %i.af, align 8, !tbaa !139, !noalias !395
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !402, !noalias !395
  %i.az = getelementptr inbounds nuw i8, ptr %20, i64 60
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !403, !noalias !395
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !404, !noalias !395
  %i.bc = getelementptr inbounds nuw i8, ptr %20, i64 131
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !405, !noalias !395
  br label %bb.n

bb.n:                                             ; preds = %.noexc74, %bb.m
  %i.bd = phi i1 [ true, %bb.m ], [ false, %.noexc74 ]
  %i.be = phi i8 [ 0, %bb.m ], [ 9, %.noexc74 ]   ; 2 uses
  %i.bf = phi ptr [ null, %bb.m ], [ %i.ar, %.noexc74 ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store i8 %i.be, ptr %0, align 8, !tbaa !84
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.bh, i8 0, i64 5, i1 false)
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !134
  br i1 %i.bd, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  %i.bk = load ptr, ptr %1, align 8, !tbaa !33, !nonnull !58, !align !59
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 560
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !406 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !137
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 192
  %i.bp = load ptr, ptr %i.bo, align 8
  invoke void %i.bp(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::IOStatus") align 8 %22, ptr noundef nonnull align 8 dereferenceable(32) %i.bm, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(216) %20, ptr noundef nonnull %19, ptr noundef null)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  %.not.i76 = icmp eq ptr %0, %22
  br i1 %.not.i76, label %_ZN7rocksdb6StatusaSEOS0_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bq = load <4 x i8>, ptr %22, align 8, !tbaa !15 ; 3 uses
  store <4 x i8> %i.bq, ptr %0, align 8, !tbaa !15
  store <4 x i8> zeroinitializer, ptr %22, align 8, !tbaa !15
  %i.br = getelementptr inbounds nuw i8, ptr %22, i64 4 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 4, !tbaa !131, !range !129, !noundef !58
  store i8 %i.bs, ptr %i.bi, align 4, !tbaa !132
  store i8 0, ptr %i.br, align 4, !tbaa !132
  %i.bt = getelementptr inbounds nuw i8, ptr %22, i64 5 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !15
end_hunk_0
begin_hunk_1_@_ZN7rocksdb10TableCache14GetTableReaderERKNS_11ReadOptionsERKNS_11FileOptionsERKNS_21InternalKeyComparatorERKNS_12FileMetaDataEbPNS_13HistogramImplEPSt10unique_ptrINS_11TableReaderESt14default_deleteISG_EERKNS_16MutableCFOptionsEbibmNS_11TemperatureEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
bb.aw:                                            ; preds = %bb.av
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !137
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 176
  %i.gf = load ptr, ptr %i.ge, align 8
  invoke void %i.gf(ptr noundef nonnull align 8 dereferenceable(33) %i.gc, i32 noundef 250, i64 noundef 1)
          to label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit127 unwind label %bb.ay, !inline_history !227

bb.ax:                                            ; preds = %bb.as
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit131

bb.ay:                                            ; preds = %bb.aw, %bb.ba
  %i.gh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !134 ; 2 uses
  %.not.i.i128 = icmp eq ptr %i.gj, null
  br i1 %.not.i.i128, label %_ZN7rocksdb6StatusD2Ev.exit131, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i129

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i129: ; preds = %bb.ay
  call void @_ZdaPv(ptr noundef nonnull %i.gj) #24
  br label %_ZN7rocksdb6StatusD2Ev.exit131

bb.az:                                            ; preds = %bb.au
  %i.gk = icmp ugt i64 %i.fy, 8192
  br i1 %i.gk, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.gl = load ptr, ptr %1, align 8, !tbaa !33, !nonnull !58, !align !59
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 592
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !414
  %i.go = load ptr, ptr %18, align 8, !tbaa !9
  invoke void (i8, ptr, ptr, ...) @_ZN7rocksdb3LogENS_12InfoLogLevelEPNS_6LoggerEPKcz(i8 noundef zeroext 2, ptr noundef %i.gn, ptr noundef nonnull @.str.39, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 32), ptr noundef %i.go, i64 noundef %i.fy)
          to label %bb.bb unwind label %bb.ay

bb.bb:                                            ; preds = %bb.at, %bb.ba, %bb.az
  %i.gp = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.gp, align 8, !tbaa !30
  %i.gq = load ptr, ptr %15, align 8, !tbaa !9
  store i8 0, ptr %i.gq, align 1, !tbaa !15
  br label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit127

_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit127: ; preds = %bb.av, %bb.aw, %bb.bb
  %i.gr = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !134 ; 2 uses
  %.not.i.i132 = icmp eq ptr %i.gs, null
  br i1 %.not.i.i132, label %_ZN7rocksdb6StatusD2Ev.exit135, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i133

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i133: ; preds = %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit127
  call void @_ZdaPv(ptr noundef nonnull %i.gs) #24
  br label %_ZN7rocksdb6StatusD2Ev.exit135

_ZN7rocksdb6StatusD2Ev.exit135:                   ; preds = %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit127, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  br label %bb.bc

_ZN7rocksdb6StatusD2Ev.exit131:                   ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i129, %bb.ay, %bb.ax
  %.pn60 = phi { ptr, i32 } [ %i.gg, %bb.ax ], [ %i.gh, %bb.ay ], [ %i.gh, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i129 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  br label %_ZN7rocksdb6StatusD2Ev.exit124

bb.bc:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit135, %_ZNK7rocksdb6Status14IsPathNotFoundEv.exit.thread.thread
  %.pre199 = load ptr, ptr %1, align 8, !tbaa !33 ; 3 uses
  br i1 %6, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gt = getelementptr inbounds nuw i8, ptr %.pre199, i64 271
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !415, !range !129, !noundef !58
  %i.gv = trunc nuw i8 %i.gu to i1
  br i1 %i.gv, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.gw = load ptr, ptr %19, align 8, !tbaa !413  ; 2 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !137
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 48
  %i.gz = load ptr, ptr %i.gy, align 8
  invoke void %i.gz(ptr noundef nonnull align 8 dereferenceable(8) %i.gw, i32 noundef 1)
          to label %._crit_edge unwind label %bb.s

._crit_edge:                                      ; preds = %bb.be
  %.pre198 = load ptr, ptr %1, align 8, !tbaa !33
  br label %bb.bf

bb.bf:                                            ; preds = %._crit_edge, %bb.bd, %bb.bc
  %i.ha = phi ptr [ %.pre198, %._crit_edge ], [ %.pre199, %bb.bd ], [ %.pre199, %bb.bc ] ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 759
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !416 ; 2 uses
  %i.hd = icmp ne i8 %i.hc, 0
  %i.he = icmp eq i8 %14, 0
  %or.cond = and i1 %i.he, %i.hd
  %spec.select = select i1 %or.cond, i8 %i.hc, i8 %14
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #25
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 576
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !228 ; 5 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ha, i64 584
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !183 ; 9 uses
  store ptr %i.hg, ptr %26, align 8, !tbaa !447
  %i.hj = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr %i.hi, ptr %i.hj, align 8, !tbaa !449
  %i.hk = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %.not.i136 = icmp eq ptr %i.hi, null
  br i1 %.not.i136, label %.thread20.i, label %bb.bg

.thread20.i:                                      ; preds = %bb.bf
  store i32 80, ptr %i.hk, align 8, !tbaa !450
  %i.hl = getelementptr inbounds nuw i8, ptr %26, i64 20
  store i32 80, ptr %i.hl, align 4, !tbaa !451
  %i.hm = getelementptr inbounds nuw i8, ptr %26, i64 24
  store ptr null, ptr %i.hm, align 8, !tbaa !452
  %i.hn = getelementptr inbounds nuw i8, ptr %26, i64 32
  store i8 1, ptr %i.hn, align 8, !tbaa !453
  %i.ho = getelementptr inbounds nuw i8, ptr %26, i64 33
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.hp = load ptr, ptr %i.hi, align 8, !tbaa !137
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 248
  %i.hr = load ptr, ptr %i.hq, align 8
  %i.hs = invoke noundef zeroext i1 %i.hr(ptr noundef nonnull align 8 dereferenceable(33) %i.hi, i32 noundef 9)
          to label %.noexc137 unwind label %bb.bm, !inline_history !454 ; 2 uses

.noexc137:                                        ; preds = %bb.bg
  %spec.select.i = select i1 %i.hs, i32 9, i32 80 ; 3 uses
  store i32 %spec.select.i, ptr %i.hk, align 8, !tbaa !450
  %i.ht = load ptr, ptr %i.hi, align 8, !tbaa !137
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 248
  %i.hv = load ptr, ptr %i.hu, align 8
  %i.hw = invoke noundef zeroext i1 %i.hv(ptr noundef nonnull align 8 dereferenceable(33) %i.hi, i32 noundef 80)
          to label %.noexc138 unwind label %bb.bm, !inline_history !454 ; 0 uses

.noexc138:                                        ; preds = %.noexc137
  %i.hx = getelementptr inbounds nuw i8, ptr %26, i64 20
  store i32 80, ptr %i.hx, align 4, !tbaa !451
  %i.hy = getelementptr inbounds nuw i8, ptr %26, i64 24
  store ptr null, ptr %i.hy, align 8, !tbaa !452
  %i.hz = getelementptr inbounds nuw i8, ptr %26, i64 32
  store i8 1, ptr %i.hz, align 8, !tbaa !453
  %i.ia = getelementptr inbounds nuw i8, ptr %26, i64 33 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hi, i64 32
  %i.ic = load atomic i8, ptr %i.ib monotonic, align 8
  %i.id = icmp ugt i8 %i.ic, 2
  %or.cond189.not = and i1 %i.id, %i.hs
  br i1 %or.cond189.not, label %.thread21.i, label %bb.bh

.thread21.i:                                      ; preds = %.noexc138
  store i8 1, ptr %i.ia, align 1, !tbaa !455
  %i.ie = getelementptr inbounds nuw i8, ptr %26, i64 34
  store i8 0, ptr %i.ie, align 2, !tbaa !456
  %i.if = getelementptr inbounds nuw i8, ptr %26, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.if, i8 0, i64 16, i1 false)
  %i.ig = load ptr, ptr %i.hg, align 8, !tbaa !137
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 152
  %i.ii = load ptr, ptr %i.ih, align 8
  %i.ij = invoke noundef i64 %i.ii(ptr noundef nonnull align 8 dereferenceable(32) %i.hg)
          to label %bb.bi unwind label %bb.bm, !inline_history !454

bb.bh:                                            ; preds = %.noexc138, %.thread20.i
  %i.ik = phi i32 [ %spec.select.i, %.noexc138 ], [ 80, %.thread20.i ]
  %i.il = phi ptr [ %i.ia, %.noexc138 ], [ %i.ho, %.thread20.i ]
  store i8 0, ptr %i.il, align 1, !tbaa !455
  %i.im = getelementptr inbounds nuw i8, ptr %26, i64 34
  store i8 0, ptr %i.im, align 2, !tbaa !456
  %i.in = getelementptr inbounds nuw i8, ptr %26, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.in, i8 0, i64 16, i1 false)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %.thread21.i
  %i.io = phi i32 [ %i.ik, %bb.bh ], [ %spec.select.i, %.thread21.i ] ; 2 uses
  %i.ip = phi i1 [ false, %bb.bh ], [ true, %.thread21.i ]
  %i.iq = phi i64 [ 0, %bb.bh ], [ %i.ij, %.thread21.i ] ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %26, i64 56
  store i64 %i.iq, ptr %i.ir, align 8, !tbaa !457
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #25
  %i.is = invoke noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #26
          to label %bb.bj unwind label %bb.bn     ; 3 uses

bb.bj:                                            ; preds = %bb.bi
  %i.it = load ptr, ptr %1, align 8, !tbaa !33, !nonnull !58, !align !59 ; 5 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 576
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !228
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ix = getelementptr inbounds nuw i8, ptr %i.it, i64 584
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !183
  %i.iz = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !458
  %i.jb = getelementptr inbounds nuw i8, ptr %i.it, i64 304
  %i.jc = getelementptr inbounds nuw i8, ptr %i.it, i64 752
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !459
  %i.je = add nsw i32 %i.jd, -1
  %i.jf = icmp eq i32 %11, %i.je
  invoke void @_ZN7rocksdb22RandomAccessFileReaderC2EOSt10unique_ptrINS_18FSRandomAccessFileESt14default_deleteIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_11SystemClockERKSt10shared_ptrINS_8IOTracerEEPNS_10StatisticsEjPNS_13HistogramImplEPNS_11RateLimiterERKSt6vectorISH_INS_13EventListenerEESaISU_EENS_11TemperatureEb(ptr noundef nonnull align 8 dereferenceable(202) %i.is, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef %i.iv, ptr noundef nonnull align 8 dereferenceable(16) %i.iw, ptr noundef %i.iy, i32 noundef 17, ptr noundef %7, ptr noundef %i.ja, ptr noundef nonnull align 8 dereferenceable(24) %i.jb, i8 noundef zeroext %spec.select, i1 noundef zeroext %i.jf)
          to label %bb.bk unwind label %bb.bo

bb.bk:                                            ; preds = %bb.bj
  store ptr %i.is, ptr %27, align 8, !tbaa !460
  %i.jg = load ptr, ptr %1, align 8, !tbaa !33, !nonnull !58, !align !59 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 9
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !462, !range !129, !noundef !58
  %i.jj = trunc nuw i8 %i.ji to i1
  br i1 %i.jj, label %bb.bl, label %30

bb.bl:                                            ; preds = %bb.bk
  %i.jk = getelementptr inbounds nuw i8, ptr %5, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.jk, i64 16, i1 false)
  br label %bb.bp

bb.bm:                                            ; preds = %.thread21.i, %.noexc137, %bb.bg
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.bn:                                            ; preds = %bb.bi
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.bo:                                            ; preds = %bb.bj
  %i.jn = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.is, i64 noundef 208) #24
  br label %bb.cc

30:                                               ; preds = %bb.bk
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i8 0, i64 16, i1 false)
  br label %bb.bp

bb.bp:                                            ; preds = %30, %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25
  %i.jo = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.jp = getelementptr inbounds nuw i8, ptr %9, i64 624
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !463
  %i.jr = getelementptr inbounds nuw i8, ptr %9, i64 648
  %i.js = load i8, ptr %i.jr, align 8, !tbaa !466
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ju = load i8, ptr %i.jt, align 8, !tbaa !359, !range !129, !noundef !58
  %i.jv = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !361
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.jy = load i64, ptr %i.c, align 8, !tbaa !177
  %i.jz = and i64 %i.jy, 4611686018427387903
  %i.ka = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !497
  %i.kc = getelementptr inbounds nuw i8, ptr %5, i64 304
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !498
  %i.ke = getelementptr inbounds nuw i8, ptr %5, i64 312
  %i.kf = load i8, ptr %i.ke, align 8, !tbaa !499, !range !129, !noundef !58
  %i.kg = zext i1 %10 to i8
  store ptr %i.jg, ptr %28, align 8, !tbaa !357
  %i.kh = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr %i.jo, ptr %i.kh, align 8, !tbaa !500
  %i.ki = getelementptr inbounds nuw i8, ptr %28, i64 16
  store ptr %i.jq, ptr %i.ki, align 8, !tbaa !502
  %i.kj = getelementptr inbounds nuw i8, ptr %28, i64 24
  store ptr %3, ptr %i.kj, align 8, !tbaa !503
  %i.kk = getelementptr inbounds nuw i8, ptr %28, i64 32
  store ptr %4, ptr %i.kk, align 8, !tbaa !505
  %i.kl = getelementptr inbounds nuw i8, ptr %28, i64 40
  store i8 %i.kg, ptr %i.kl, align 8, !tbaa !506
  %i.km = getelementptr inbounds nuw i8, ptr %28, i64 41
  store i8 %i.ju, ptr %i.km, align 1, !tbaa !509
  %i.kn = getelementptr inbounds nuw i8, ptr %28, i64 42
  store i8 0, ptr %i.kn, align 2, !tbaa !510
  %i.ko = getelementptr inbounds nuw i8, ptr %28, i64 44
  store i32 %11, ptr %i.ko, align 4, !tbaa !511
  %i.kp = getelementptr inbounds nuw i8, ptr %28, i64 48
  store i64 %i.kb, ptr %i.kp, align 8, !tbaa !512
  %i.kq = getelementptr inbounds nuw i8, ptr %28, i64 56
  store ptr %i.jw, ptr %i.kq, align 8, !tbaa !513
  %i.kr = getelementptr inbounds nuw i8, ptr %28, i64 64
  store i64 %13, ptr %i.kr, align 8, !tbaa !514
  %i.ks = getelementptr inbounds nuw i8, ptr %28, i64 72 ; 4 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %28, i64 88 ; 7 uses
  store ptr %i.kt, ptr %i.ks, align 8, !tbaa !29
  %i.ku = load ptr, ptr %i.jx, align 8, !tbaa !9  ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !30 ; 8 uses
  %i.kx = icmp ugt i64 %i.kw, 15
  br i1 %i.kx, label %bb.bq, label %._crit_edge.i.i.i

bb.bq:                                            ; preds = %bb.bp
  %i.ky = icmp slt i64 %i.kw, 0
  br i1 %i.ky, label %.noexc.i.i, label %bb.br

.noexc.i.i:                                       ; preds = %bb.bq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #28
          to label %.noexc140 unwind label %bb.ca

.noexc140:                                        ; preds = %.noexc.i.i
  unreachable

bb.br:                                            ; preds = %bb.bq
  %i.kz = add nuw i64 %i.kw, 1                    ; 2 uses
  %i.la = icmp slt i64 %i.kz, 0
  br i1 %i.la, label %.noexc6.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !365

.noexc6.i.i:                                      ; preds = %bb.br
  invoke void @_ZSt17__throw_bad_allocv() #28
          to label %.noexc141 unwind label %bb.ca

.noexc141:                                        ; preds = %.noexc6.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.br
  %i.lb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kz) #26
          to label %.noexc142 unwind label %bb.ca ; 2 uses

.noexc142:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.lb, ptr %i.ks, align 8, !tbaa !9
  store i64 %i.kw, ptr %i.kt, align 8, !tbaa !15
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc142, %bb.bp
  %i.lc = phi ptr [ %i.lb, %.noexc142 ], [ %i.kt, %bb.bp ] ; 3 uses
  switch i64 %i.kw, label %bb.bt [
    i64 1, label %bb.bs
    i64 0, label %bb.bu
  ]

bb.bs:                                            ; preds = %._crit_edge.i.i.i
  %i.ld = load i8, ptr %i.ku, align 1, !tbaa !15
  store i8 %i.ld, ptr %i.lc, align 1, !tbaa !15
  br label %bb.bu

bb.bt:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lc, ptr align 1 %i.ku, i64 %i.kw, i1 false)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %._crit_edge.i.i.i
  %i.le = zext i1 %16 to i8
  %i.lf = getelementptr inbounds nuw i8, ptr %28, i64 80
  store i64 %i.kw, ptr %i.lf, align 8, !tbaa !30
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.kw
  store i8 0, ptr %i.lg, align 1, !tbaa !15
  %i.lh = getelementptr inbounds nuw i8, ptr %28, i64 104
  store i64 %i.jz, ptr %i.lh, align 8, !tbaa !515
  %i.li = getelementptr inbounds nuw i8, ptr %28, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.li, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false)
  %i.lj = getelementptr inbounds nuw i8, ptr %28, i64 128
  store i8 %i.js, ptr %i.lj, align 8, !tbaa !516
  %i.lk = getelementptr inbounds nuw i8, ptr %28, i64 136
  store i64 %i.kd, ptr %i.lk, align 8, !tbaa !517
  %i.ll = getelementptr inbounds nuw i8, ptr %28, i64 144
  store i8 %i.kf, ptr %i.ll, align 8, !tbaa !518
  %i.lm = getelementptr inbounds nuw i8, ptr %28, i64 145
  store i8 %i.le, ptr %i.lm, align 1, !tbaa !519
  %i.ln = getelementptr inbounds nuw i8, ptr %28, i64 152
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !366
  store ptr %i.lp, ptr %i.ln, align 8, !tbaa !520
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #25
  %i.lq = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !521 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !522
  %i.lu = load ptr, ptr %i.lr, align 8, !tbaa !137
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 160
  %i.lw = load ptr, ptr %i.lv, align 8
  invoke void %i.lw(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %29, ptr noundef nonnull align 8 dereferenceable(32) %i.lr, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(160) %28, ptr noundef nonnull align 8 dereferenceable(8) %27, i64 noundef %i.lt, ptr noundef %8, i1 noundef zeroext %12)
          to label %bb.bv unwind label %bb.cb

bb.bv:                                            ; preds = %bb.bu
  %.not.i143 = icmp eq ptr %0, %29
  br i1 %.not.i143, label %_ZN7rocksdb6StatusaSEOS0_.exit147, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.lx = load <4 x i8>, ptr %29, align 8, !tbaa !15
  store <4 x i8> %i.lx, ptr %0, align 8, !tbaa !15
  store <4 x i8> zeroinitializer, ptr %29, align 8, !tbaa !15
  %i.ly = getelementptr inbounds nuw i8, ptr %29, i64 4 ; 2 uses
  %i.lz = load i8, ptr %i.ly, align 4, !tbaa !131, !range !129, !noundef !58
  store i8 %i.lz, ptr %i.bi, align 4, !tbaa !132
  store i8 0, ptr %i.ly, align 4, !tbaa !132
  %i.ma = getelementptr inbounds nuw i8, ptr %29, i64 5 ; 2 uses
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !15
  store i8 %i.mb, ptr %i.bj, align 1, !tbaa !133
  store i8 0, ptr %i.ma, align 1, !tbaa !133
  %i.mc = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !134
  store ptr null, ptr %i.mc, align 8, !tbaa !134
  %i.me = load ptr, ptr %i.bg, align 8, !tbaa !134 ; 2 uses
  store ptr %i.md, ptr %i.bg, align 8, !tbaa !134
  %.not.i.i.i.i.i144 = icmp eq ptr %i.me, null
  br i1 %.not.i.i.i.i.i144, label %_ZN7rocksdb6StatusaSEOS0_.exit147, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i145

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i145: ; preds = %bb.bw
  call void @_ZdaPv(ptr noundef nonnull %i.me) #24
  br label %_ZN7rocksdb6StatusaSEOS0_.exit147

_ZN7rocksdb6StatusaSEOS0_.exit147:                ; preds = %bb.bv, %bb.bw, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i145
  %i.mf = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !134 ; 2 uses
  %.not.i.i148 = icmp eq ptr %i.mg, null
  br i1 %.not.i.i148, label %_ZN7rocksdb6StatusD2Ev.exit151, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i149

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i149: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit147
  call void @_ZdaPv(ptr noundef nonnull %i.mg) #24
  br label %_ZN7rocksdb6StatusD2Ev.exit151

_ZN7rocksdb6StatusD2Ev.exit151:                   ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit147, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i149
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  %i.mh = load ptr, ptr %i.ks, align 8, !tbaa !9  ; 2 uses
  %i.mi = icmp eq ptr %i.mh, %i.kt
  br i1 %i.mi, label %_ZN7rocksdb18TableReaderOptionsD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7rocksdb6StatusD2Ev.exit151
  %i.mj = load i64, ptr %i.kt, align 8, !tbaa !15
  %i.mk = add i64 %i.mj, 1
  call void @_ZdlPvm(ptr noundef %i.mh, i64 noundef %i.mk) #24
  br label %_ZN7rocksdb18TableReaderOptionsD2Ev.exit

_ZN7rocksdb18TableReaderOptionsD2Ev.exit:         ; preds = %_ZN7rocksdb6StatusD2Ev.exit151, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  %i.ml = load ptr, ptr %27, align 8, !tbaa !460  ; 3 uses
  %.not.i152 = icmp eq ptr %i.ml, null
  br i1 %.not.i152, label %.thread12.i, label %_ZNKSt14default_deleteIN7rocksdb22RandomAccessFileReaderEEclEPS1_.exit.i

_ZNKSt14default_deleteIN7rocksdb22RandomAccessFileReaderEEclEPS1_.exit.i: ; preds = %_ZN7rocksdb18TableReaderOptionsD2Ev.exit
  call void @_ZN7rocksdb22RandomAccessFileReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(202) dereferenceable(202) %i.ml) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.ml, i64 noundef 208) #24
  br label %.thread12.i

.thread12.i:                                      ; preds = %_ZNKSt14default_deleteIN7rocksdb22RandomAccessFileReaderEEclEPS1_.exit.i, %_ZN7rocksdb18TableReaderOptionsD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  br i1 %i.ip, label %.thread15.i, label %_ZN7rocksdb9StopWatchD2Ev.exit

.thread15.i:                                      ; preds = %.thread12.i
  %i.mm = load ptr, ptr %i.hg, align 8, !tbaa !137
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 152
  %i.mo = load ptr, ptr %i.mn, align 8
  %i.mp = invoke noundef i64 %i.mo(ptr noundef nonnull align 8 dereferenceable(32) %i.hg)
          to label %bb.bx unwind label %bb.bz

bb.bx:                                            ; preds = %.thread15.i
  %.not7.i = icmp eq i32 %i.io, 80
  br i1 %.not7.i, label %_ZN7rocksdb9StopWatchD2Ev.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.mq = sub i64 %i.mp, %i.iq
  %i.mr = load ptr, ptr %i.hi, align 8, !tbaa !137
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 200
  %i.mt = load ptr, ptr %i.ms, align 8
  invoke void %i.mt(ptr noundef nonnull align 8 dereferenceable(33) %i.hi, i32 noundef %i.io, i64 noundef %i.mq)
          to label %_ZN7rocksdb9StopWatchD2Ev.exit unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by, %.thread15.i
  %i.mu = landingpad { ptr, i32 }
          catch ptr null
  %i.mv = extractvalue { ptr, i32 } %i.mu, 0
  call void @__clang_call_terminate(ptr %i.mv) #27
  unreachable

_ZN7rocksdb9StopWatchD2Ev.exit:                   ; preds = %bb.bx, %bb.by, %.thread12.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  br label %_ZNK7rocksdb6Status14IsPathNotFoundEv.exit.thread.thread290

bb.ca:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %.noexc6.i.i, %.noexc.i.i
  %i.mw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb18TableReaderOptionsD2Ev.exit156

bb.cb:                                            ; preds = %bb.bu
  %i.mx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  %i.my = load ptr, ptr %i.ks, align 8, !tbaa !9  ; 2 uses
  %i.mz = icmp eq ptr %i.my, %i.kt
  br i1 %i.mz, label %_ZN7rocksdb18TableReaderOptionsD2Ev.exit156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i154: ; preds = %bb.cb
  %i.na = load i64, ptr %i.kt, align 8, !tbaa !15
  %i.nb = add i64 %i.na, 1
  call void @_ZdlPvm(ptr noundef %i.my, i64 noundef %i.nb) #24
  br label %_ZN7rocksdb18TableReaderOptionsD2Ev.exit156

_ZN7rocksdb18TableReaderOptionsD2Ev.exit156:      ; preds = %bb.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i154, %bb.ca
  %.pn62 = phi { ptr, i32 } [ %i.mw, %bb.ca ], [ %i.mx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i154 ], [ %i.mx, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  call void @_ZNSt10unique_ptrIN7rocksdb22RandomAccessFileReaderESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #25
  br label %bb.cc

bb.cc:                                            ; preds = %_ZN7rocksdb18TableReaderOptionsD2Ev.exit156, %bb.bo, %bb.bn
  %.pn62.pn = phi { ptr, i32 } [ %.pn62, %_ZN7rocksdb18TableReaderOptionsD2Ev.exit156 ], [ %i.jn, %bb.bo ], [ %i.jm, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  call void @_ZN7rocksdb9StopWatchD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %26) #25
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.bm
  %.pn62.pn.pn = phi { ptr, i32 } [ %.pn62.pn, %bb.cc ], [ %i.jl, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  br label %_ZN7rocksdb6StatusD2Ev.exit124

_ZNK7rocksdb6Status14IsPathNotFoundEv.exit.thread.thread290: ; preds = %_ZNK7rocksdb6Status14IsPathNotFoundEv.exit, %_ZNK7rocksdb6Status14IsPathNotFoundEv.exit.thread, %_ZN7rocksdb9StopWatchD2Ev.exit
  %i.nc = load ptr, ptr %21, align 8, !tbaa !9    ; 2 uses
  %i.nd = icmp eq ptr %i.nc, %i.m
  br i1 %i.nd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157: ; preds = %_ZNK7rocksdb6Status14IsPathNotFoundEv.exit.thread.thread290
  %i.ne = load i64, ptr %i.m, align 8, !tbaa !15
  %i.nf = add i64 %i.ne, 1
  call void @_ZdlPvm(ptr noundef %i.nc, i64 noundef %i.nf) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159: ; preds = %_ZNK7rocksdb6Status14IsPathNotFoundEv.exit.thread.thread290, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  %i.ng = load ptr, ptr %i.l, align 8, !tbaa !9   ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %20, i64 192 ; 2 uses
  %i.ni = icmp eq ptr %i.ng, %i.nh
  br i1 %i.ni, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i160: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159
  %i.nj = load i64, ptr %i.nh, align 8, !tbaa !15
  %i.nk = add i64 %i.nj, 1
  call void @_ZdlPvm(ptr noundef %i.ng, i64 noundef %i.nk) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i160
  %i.nl = load ptr, ptr %i.j, align 8, !tbaa !9   ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %20, i64 160 ; 2 uses
  %i.nn = icmp eq ptr %i.nl, %i.nm
  br i1 %i.nn, label %_ZN7rocksdb11FileOptionsD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.no = load i64, ptr %i.nm, align 8, !tbaa !15
  %i.np = add i64 %i.no, 1
  call void @_ZdlPvm(ptr noundef %i.nl, i64 noundef %i.np) #24
  br label %_ZN7rocksdb11FileOptionsD2Ev.exit

_ZN7rocksdb11FileOptionsD2Ev.exit:                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.nq = getelementptr inbounds nuw i8, ptr %20, i64 72 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %20, i64 88 ; 2 uses
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !523 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.ns, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN7rocksdb11FileOptionsD2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.nt, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i ], [ %i.ns, %_ZN7rocksdb11FileOptionsD2Ev.exit ] ; 6 uses
  %i.nt = load ptr, ptr %.06.i.i.i, align 8, !tbaa !524 ; 2 uses
end_hunk_1
