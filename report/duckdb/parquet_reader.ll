Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/parquet_reader?download=true
inline.NumInlined: 4640
inline.NumDeleted: 2561
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK6duckdb13ParquetReader8ReadDataERN13duckdb_apache6thrift8protocol9TProtocolEPhj:bb.a
bb.k:                                             ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol12getTransportEv.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN13duckdb_apache6thrift9transport10TTransportELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %i.af
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN13duckdb_apache6thrift9transport10TTransportELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !282  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !284
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !285
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !137
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !25
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !137
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !25
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !228
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !235

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZNK6duckdb13ParquetReader17ReadDataEncryptedERN13duckdb_apache6thrift8protocol9TProtocolEPhjRNS_14CryptoMetaDataE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(48) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !392, !nonnull !107, !align !221
  tail call void @_ZN6duckdb13ParquetCrypto35GenerateAdditionalAuthenticatedDataERNS_9AllocatorERNS_14CryptoMetaDataE(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %4)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.d = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_23ParquetEncryptionConfigELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
  %i.e = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6duckdb23ParquetEncryptionConfig12GetFooterKeyB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(88) %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10shared_ptrINS_14EncryptionUtilELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f)
  %i.h = tail call noundef i32 @_ZN6duckdb13ParquetCrypto8ReadDataERN13duckdb_apache6thrift8protocol9TProtocolEPhjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_14EncryptionUtilERKNS_14CryptoMetaDataE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %4)
  ret i32 %i.h
}

declare noundef i32 @_ZN6duckdb13ParquetCrypto8ReadDataERN13duckdb_apache6thrift8protocol9TProtocolEPhjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_14EncryptionUtilERKNS_14CryptoMetaDataE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(91) ptr @_ZN6duckdb13ParquetReader8GetGroupERNS_22ParquetReaderScanStateE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(248) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.b = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_24ParquetFileMetadataCacheELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !239
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !542
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.g)
  %i.i = load i64, ptr %i.h, align 8, !tbaa !147
  %i.j = tail call noundef nonnull align 8 dereferenceable(91) ptr @_ZNK6duckdb6vectorIN14duckdb_parquet8RowGroupELb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.i)
  ret ptr %i.j
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !543
  %i.e = load ptr, ptr %0, align 8, !tbaa !544    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !147
  store i64 %i.i, ptr %i.b, align 8, !tbaa !147
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorImLb1ESaImEE3getILb1EEERmm.exit, label %bb.b, !prof !148

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.107, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !84     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorImLb1ESaImEE3getILb1EEERmm.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6duckdb13ParquetReader22GetGroupCompressedSizeERNS_22ParquetReaderScanStateE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(248) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.b = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_24ParquetFileMetadataCacheELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !239
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !542
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(248) %1, i64 noundef %i.g)
  %i.i = load i64, ptr %i.h, align 8, !tbaa !147
  %i.j = tail call noundef nonnull align 8 dereferenceable(91) ptr @_ZNK6duckdb6vectorIN14duckdb_parquet8RowGroupELb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.i) ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 90
  %i.l = load i8, ptr %i.k, align 2
  %i.m = and i8 %i.l, 4
  %.not = icmp eq i8 %i.m, 0
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = select i1 %.not, i64 0, i64 %i.o         ; 4 uses
  %i.q = icmp eq i64 %i.o, 0
  br i1 %i.q, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.r = icmp ne i64 %i.p, 0
  br label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !545  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !545  ; 2 uses
  %.not4142 = icmp eq ptr %i.t, %i.v
  br i1 %.not4142, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.b
  %i.w = icmp ne i64 %i.p, 0
  br label %bb.i

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.02244 = phi i64 [ %i.z, %.lr.ph ], [ 0, %bb.b ]
  %.sroa.028.043 = phi ptr [ %i.aa, %.lr.ph ], [ %i.t, %bb.b ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.028.043, i64 136
  %i.y = load i64, ptr %i.x, align 8, !tbaa !590
  %i.z = add i64 %i.y, %.02244                    ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.028.043, i64 760 ; 2 uses
  %.not41 = icmp eq ptr %i.aa, %i.v
  br i1 %.not41, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.ab = icmp ne i64 %i.p, 0                     ; 2 uses
  %.not25 = icmp ne i64 %i.z, 0
  %or.cond27 = select i1 %i.ab, i1 %.not25, i1 false
  br i1 %or.cond27, label %bb.c, label %bb.i

bb.c:                                             ; preds = %._crit_edge
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.45, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES9_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.j unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]  ; 2 uses
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ag = load ptr, ptr %2, align 8, !tbaa !84    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.ag) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.0, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.0, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn40 = phi { ptr, i32 } [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.ac) #24
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn39 = phi { ptr, i32 } [ %.pn40, %bb.g ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn39

bb.i:                                             ; preds = %._crit_edge.thread, %.thread, %._crit_edge
  %i.aj = phi i1 [ %i.r, %.thread ], [ %i.ab, %._crit_edge ], [ %i.w, %._crit_edge.thread ]
  %.12336 = phi i64 [ 0, %.thread ], [ %i.z, %._crit_edge ], [ 0, %._crit_edge.thread ]
  %i.ak = select i1 %i.aj, i64 %i.p, i64 %.12336
  ret i64 %i.ak

bb.j:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6duckdb13ParquetReader12GetGroupSpanERNS_22ParquetReaderScanStateE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(248) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.b = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_24ParquetFileMetadataCacheELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !239
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !542
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(248) %1, i64 noundef %i.g)
  %i.i = load i64, ptr %i.h, align 8, !tbaa !147
  %i.j = tail call noundef nonnull align 8 dereferenceable(91) ptr @_ZNK6duckdb6vectorIN14duckdb_parquet8RowGroupELb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.i) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !545  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !545  ; 2 uses
  %.not2526 = icmp eq ptr %i.l, %i.n
  br i1 %.not2526, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.e
  %i.o = sub i64 %i.ag, %i.ac
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.p = phi i64 [ 1, %bb.a ], [ %i.o, %._crit_edge.loopexit ]
  ret i64 %i.p

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.01929 = phi i64 [ %i.ag, %bb.e ], [ 0, %bb.a ]
  %.02028 = phi i64 [ %i.ac, %bb.e ], [ -1, %bb.a ]
  %.sroa.022.027 = phi ptr [ %i.ah, %bb.e ], [ %i.l, %bb.a ] ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.022.027, i64 584
  %i.r = load i16, ptr %i.q, align 8              ; 2 uses
  %i.s = and i16 %i.r, 4
  %.not = icmp eq i16 %i.s, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.022.027, i64 184
  %i.u = load i64, ptr %i.t, align 8, !tbaa !591
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.0 = phi i64 [ %i.u, %bb.b ], [ -1, %.lr.ph ]  ; 2 uses
  %i.v = and i16 %i.r, 2
  %.not21 = icmp eq i16 %i.v, 0
  br i1 %.not21, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.022.027, i64 176
  %i.x = load i64, ptr %i.w, align 8, !tbaa !592
  %i.y = tail call noundef i64 @llvm.umin.i64(i64 %.0, i64 %i.x)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i64 [ %i.y, %bb.d ], [ %.0, %bb.c ]
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.022.027, i64 168
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !593
  %i.ab = tail call noundef i64 @llvm.umin.i64(i64 %.1, i64 %i.aa) ; 2 uses
  %i.ac = tail call noundef i64 @llvm.umin.i64(i64 %i.ab, i64 %.02028) ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.022.027, i64 136
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !590
  %i.af = add i64 %i.ae, %i.ab
  %i.ag = tail call noundef i64 @llvm.umax.i64(i64 %.01929, i64 %i.af) ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.022.027, i64 760 ; 2 uses
  %.not25 = icmp eq ptr %i.ah, %i.n
  br i1 %.not25, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6duckdb13ParquetReader14GetGroupOffsetERNS_22ParquetReaderScanStateE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(248) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.b = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_24ParquetFileMetadataCacheELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !239
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !542
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(248) %1, i64 noundef %i.g)
  %i.i = load i64, ptr %i.h, align 8, !tbaa !147
  %i.j = tail call noundef nonnull align 8 dereferenceable(91) ptr @_ZNK6duckdb6vectorIN14duckdb_parquet8RowGroupELb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.i) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !545  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !545  ; 2 uses
  %.not1718 = icmp eq ptr %i.l, %i.n
  br i1 %.not1718, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.0.lcssa = phi i64 [ -1, %bb.a ], [ %i.aa, %bb.e ]
  ret i64 %.0.lcssa

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.020 = phi i64 [ %i.aa, %bb.e ], [ -1, %bb.a ] ; 2 uses
  %.sroa.014.019 = phi ptr [ %i.ab, %bb.e ], [ %i.l, %bb.a ] ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.014.019, i64 584
  %i.p = load i16, ptr %i.o, align 8              ; 2 uses
  %i.q = and i16 %i.p, 4
  %.not = icmp eq i16 %i.q, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.019, i64 184
  %i.s = load i64, ptr %i.r, align 8, !tbaa !591
  %i.t = tail call noundef i64 @llvm.umin.i64(i64 %.020, i64 %i.s)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.1 = phi i64 [ %i.t, %bb.b ], [ %.020, %.lr.ph ] ; 2 uses
  %i.u = and i16 %i.p, 2
  %.not13 = icmp eq i16 %i.u, 0
  br i1 %.not13, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.014.019, i64 176
  %i.w = load i64, ptr %i.v, align 8, !tbaa !592
  %i.x = tail call noundef i64 @llvm.umin.i64(i64 %.1, i64 %i.w)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.2 = phi i64 [ %i.x, %bb.d ], [ %.1, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.014.019, i64 168
  %i.z = load i64, ptr %i.y, align 8, !tbaa !593
  %i.aa = tail call noundef i64 @llvm.umin.i64(i64 %.2, i64 %i.z) ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.014.019, i64 760 ; 2 uses
  %.not17 = icmp eq ptr %i.ab, %i.n
  br i1 %.not17, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6duckdb13ParquetReader21PrepareRowGroupBufferERNS_22ParquetReaderScanStateEm(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(248) %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::unique_ptr.302", align 8 ; 11 uses
  %i.a = alloca i8, align 1                       ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
end_hunk_0
