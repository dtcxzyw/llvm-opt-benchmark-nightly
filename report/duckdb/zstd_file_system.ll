inline.NumInlined: 265
inline.NumDeleted: 188
begin_hunk_0_@_ZN6duckdb17ZstdStreamWrapper5WriteERNS_14CompressedFileERNS_10StreamDataEPhl:bb.a
  %.pn.pn40 = phi { ptr, i32 } [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.y, %bb.h ], [ %.pn.pn40.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.u) #17
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i, %bb.h
  %.pn.pn39 = phi { ptr, i32 } [ %.pn.pn40, %bb.i ], [ %i.y, %bb.h ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  resume { ptr, i32 } %.pn.pn39

bb.k:                                             ; preds = %bb.b
  %i.ac = load i64, ptr %i.f, align 8, !tbaa !69  ; 2 uses
  %i.ad = load i64, ptr %i.h, align 8, !tbaa !75
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ad ; 3 uses
  store ptr %i.af, ptr %i.d, align 8, !tbaa !70
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !78  ; 2 uses
  %i.ah = load i64, ptr %i.c, align 8, !tbaa !73
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah
  %i.aj = icmp eq ptr %i.af, %i.ai
  br i1 %i.aj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ak = call noundef ptr @_ZNK6duckdb10unique_ptrINS_10FileHandleESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !78  ; 2 uses
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = call noundef i64 @_ZN6duckdb10FileHandle5WriteEPvm(ptr noundef nonnull align 8 dereferenceable(80) %i.ak, ptr noundef %i.al, i64 noundef %i.ap) ; 0 uses
  %i.ar = load ptr, ptr %i.b, align 8, !tbaa !78  ; 3 uses
  store ptr %i.ar, ptr %i.d, align 8, !tbaa !70
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.as = phi ptr [ %i.ar, %bb.l ], [ %i.af, %bb.k ]
  %i.at = phi ptr [ %i.ar, %bb.l ], [ %i.ag, %bb.k ]
  %i.au = getelementptr inbounds nuw i8, ptr %.045, i64 %i.ac
  %i.av = sub nsw i64 %.02944, %i.ac              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.aw = icmp sgt i64 %i.av, 0
  br i1 %i.aw, label %bb.b, label %._crit_edge, !llvm.loop !80

._crit_edge:                                      ; preds = %bb.m, %bb.a
  ret void

bb.n:                                             ; preds = %bb.f
  unreachable
}

declare noundef i64 @_ZN11duckdb_zstd20ZSTD_compressStream2EPNS_11ZSTD_CCtx_sEPNS_16ZSTD_outBuffer_sEPNS_15ZSTD_inBuffer_sENS_17ZSTD_EndDirectiveE(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef i64 @_ZN6duckdb10FileHandle5WriteEPvm(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6duckdb17ZstdStreamWrapper11FlushStreamEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(33) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.duckdb_zstd::ZSTD_inBuffer_s", align 8 ; 5 uses
  %2 = alloca %"struct.duckdb_zstd::ZSTD_outBuffer_s", align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !78
  %.pre37 = load ptr, ptr %i.e, align 8, !tbaa !70
  br label %bb.b

bb.b:                                             ; preds = %bb.m, %bb.a
  %i.i = phi ptr [ %i.ap, %bb.m ], [ %.pre37, %bb.a ] ; 2 uses
  %i.j = phi ptr [ %i.aq, %bb.m ], [ %.pre, %bb.a ]
  %i.k = load i64, ptr %i.d, align 8, !tbaa !73
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.i to i64
  %i.o = sub i64 %i.m, %i.n
  store ptr %i.i, ptr %2, align 8, !tbaa !71
  store i64 %i.o, ptr %i.f, align 8, !tbaa !74
  store i64 0, ptr %i.g, align 8, !tbaa !75
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !79
  %i.q = call noundef i64 @_ZN11duckdb_zstd20ZSTD_compressStream2EPNS_11ZSTD_CCtx_sEPNS_16ZSTD_outBuffer_sEPNS_15ZSTD_inBuffer_sENS_17ZSTD_EndDirectiveE(ptr noundef %i.p, ptr noundef nonnull %2, ptr noundef nonnull %1, i32 noundef 2) ; 3 uses
  %i.r = call noundef i32 @_ZN11duckdb_zstd12ZSTD_isErrorEm(i64 noundef %i.q)
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.t = invoke noundef ptr @_ZN11duckdb_zstd17ZSTD_getErrorNameEm(i64 noundef %i.q)
          to label %bb.d unwind label %.thread

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.t, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.e unwind label %.thread32

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb11IOExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTIN6duckdb11IOExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #20
          to label %bb.o unwind label %bb.g

.thread:                                          ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread32:                                        ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %.sink.split

bb.g:                                             ; preds = %bb.f, %bb.e
  %.022 = phi i1 [ false, %bb.f ], [ true, %bb.e ] ; 2 uses
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.x = load ptr, ptr %3, align 8, !tbaa !26     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.x) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br i1 %.022, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br i1 %.022, label %bb.i, label %bb.j

.sink.split:                                      ; preds = %.thread, %.thread32
  %.pn.pn31.ph = phi { ptr, i32 } [ %i.v, %.thread32 ], [ %i.u, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.h
  %.pn.pn31 = phi { ptr, i32 } [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.w, %bb.h ], [ %.pn.pn31.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.s) #17
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i, %bb.h
  %.pn.pn30 = phi { ptr, i32 } [ %.pn.pn31, %bb.i ], [ %i.w, %bb.h ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  resume { ptr, i32 } %.pn.pn30

bb.k:                                             ; preds = %bb.b
  %i.aa = load i64, ptr %i.g, align 8, !tbaa !75
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa ; 3 uses
  store ptr %i.ac, ptr %i.e, align 8, !tbaa !70
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !78  ; 2 uses
  %i.ae = icmp ugt ptr %i.ac, %i.ad
  br i1 %i.ae, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  %i.ah = call noundef ptr @_ZNK6duckdb10unique_ptrINS_10FileHandleESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !78  ; 2 uses
  %i.aj = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = call noundef i64 @_ZN6duckdb10FileHandle5WriteEPvm(ptr noundef nonnull align 8 dereferenceable(80) %i.ah, ptr noundef %i.ai, i64 noundef %i.am) ; 0 uses
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !78  ; 3 uses
  store ptr %i.ao, ptr %i.e, align 8, !tbaa !70
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ap = phi ptr [ %i.ao, %bb.l ], [ %i.ac, %bb.k ]
  %i.aq = phi ptr [ %i.ao, %bb.l ], [ %i.ad, %bb.k ]
  %i.ar = icmp eq i64 %i.q, 0
  br i1 %i.ar, label %bb.n, label %bb.b

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void

bb.o:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6duckdb17ZstdStreamWrapper5CloseEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(33) %0) unnamed_addr #6 align 2 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %3 = load ptr, ptr %2, align 8, !tbaa !76       ; 2 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.a, label %bb.b

bb.a:                                             ; preds = %1
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79
  %.not2 = icmp eq ptr %i.b, null
  br i1 %.not2, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i8, ptr %i.c, align 8, !tbaa !54, !range !81, !noundef !82
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb17ZstdStreamWrapper11FlushStreamEv(ptr noundef nonnull align 8 dereferenceable(33) %0)
  %.pre = load ptr, ptr %2, align 8, !tbaa !76
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = phi ptr [ %.pre, %bb.c ], [ %3, %bb.b ]  ; 2 uses
  %.not3 = icmp eq ptr %i.f, null
  br i1 %.not3, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = tail call noundef i64 @_ZN11duckdb_zstd16ZSTD_freeDStreamEPNS_11ZSTD_DCtx_sE(ptr noundef nonnull %i.f) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %4, align 8, !tbaa !79     ; 2 uses
  %.not4 = icmp eq ptr %i.h, null
  br i1 %.not4, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = tail call noundef i64 @_ZN11duckdb_zstd16ZSTD_freeCStreamEPNS_11ZSTD_CCtx_sE(ptr noundef nonnull %i.h) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  ret void
}

declare noundef i64 @_ZN11duckdb_zstd16ZSTD_freeDStreamEPNS_11ZSTD_DCtx_sE(ptr noundef) local_unnamed_addr #1

declare noundef i64 @_ZN11duckdb_zstd16ZSTD_freeCStreamEPNS_11ZSTD_CCtx_sE(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6duckdb14ZStdFileSystem18OpenCompressedFileENS_12QueryContextENS_10unique_ptrINS_10FileHandleESt14default_deleteIS3_ELb1EEEb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr %2, ptr noundef nonnull %3, i1 noundef zeroext %4) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.duckdb::unique_ptr", align 8 ; 6 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.b = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10FileHandleESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.d, ptr %6, align 8, !tbaa !33
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !32   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %i.g, ptr %i.a, align 8, !tbaa !83
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %6, align 8, !tbaa !26
  %i.j = load i64, ptr %i.a, align 8, !tbaa !83
  store i64 %i.j, ptr %i.d, align 8, !tbaa !25
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc.i ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !25
  store i8 %i.l, ptr %i.k, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.m = load i64, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !32
  %i.o = load ptr, ptr %6, align 8, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.q = invoke noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #21
          to label %.noexc unwind label %bb.g, !inline_history !84 ; 8 uses

.noexc:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.r = load i64, ptr %3, align 8, !tbaa !17, !noalias !85
  store ptr null, ptr %3, align 8, !tbaa !17, !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !85
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb8ZStdFileE, i64 16), ptr %i.q, align 8, !tbaa !7, !noalias !85
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 192 ; 3 uses
  store i64 %i.r, ptr %5, align 8, !tbaa !17, !noalias !85
  invoke void @_ZN6duckdb14CompressedFileC2ERNS_20CompressedFileSystemENS_10unique_ptrINS_10FileHandleESt14default_deleteIS4_ELb1EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(200) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.d unwind label %bb.e, !noalias !85, !inline_history !88

bb.d:                                             ; preds = %.noexc
  %i.t = load ptr, ptr %5, align 8, !tbaa !17, !noalias !85 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN6duckdb10FileHandleESt14default_deleteIS1_EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb10FileHandleEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN6duckdb10FileHandleEEclEPS1_.exit.i.i.i: ; preds = %bb.d
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !7, !noalias !85
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !noalias !85
  call void %i.w(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.t) #17, !noalias !85, !inline_history !89
  br label %_ZNSt10unique_ptrIN6duckdb10FileHandleESt14default_deleteIS1_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN6duckdb10FileHandleESt14default_deleteIS1_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10FileHandleEEclEPS1_.exit.i.i.i, %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb8ZStdFileE, i64 16), ptr %i.q, align 8, !tbaa !7, !noalias !85
  store ptr getelementptr inbounds nuw inrange(-16, 464) (i8, ptr @_ZTVN6duckdb14ZStdFileSystemE, i64 16), ptr %i.s, align 8, !tbaa !7, !noalias !85
  invoke void @_ZN6duckdb14CompressedFile10InitializeENS_12QueryContextEb(ptr noundef nonnull align 8 dereferenceable(200) %i.q, ptr %2, i1 noundef zeroext %4)
          to label %_ZNSt10unique_ptrIN6duckdb8ZStdFileESt14default_deleteIS1_EED2Ev.exit unwind label %bb.f, !noalias !85, !inline_history !88

bb.e:                                             ; preds = %.noexc
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %5, align 8, !tbaa !17, !noalias !85 ; 3 uses
  %.not.i7.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i7.i.i, label %_ZNSt10unique_ptrIN6duckdb10FileHandleESt14default_deleteIS1_EED2Ev.exit8.i, label %_ZNKSt14default_deleteIN6duckdb10FileHandleEEclEPS1_.exit.i8.i.i

_ZNKSt14default_deleteIN6duckdb10FileHandleEEclEPS1_.exit.i8.i.i: ; preds = %bb.e
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !7, !noalias !85
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !85
  call void %i.ab(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.y) #17, !noalias !85, !inline_history !89
  br label %_ZNSt10unique_ptrIN6duckdb10FileHandleESt14default_deleteIS1_EED2Ev.exit8.i

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb10FileHandleESt14default_deleteIS1_EED2Ev.exit.i.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10FileSystemD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.s) #17, !noalias !85, !inline_history !88
  call void @_ZN6duckdb14CompressedFileD2Ev(ptr noundef nonnull align 8 dereferenceable(200) %i.q) #17, !noalias !85, !inline_history !88
  br label %_ZNSt10unique_ptrIN6duckdb10FileHandleESt14default_deleteIS1_EED2Ev.exit8.i

_ZNSt10unique_ptrIN6duckdb10FileHandleESt14default_deleteIS1_EED2Ev.exit8.i: ; preds = %bb.f, %_ZNKSt14default_deleteIN6duckdb10FileHandleEEclEPS1_.exit.i8.i.i, %bb.e
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.x, %_ZNKSt14default_deleteIN6duckdb10FileHandleEEclEPS1_.exit.i8.i.i ], [ %i.ac, %bb.f ], [ %i.x, %bb.e ]
  call void @_ZdlPv(ptr noundef nonnull %i.q) #18, !noalias !85, !inline_history !84
  br label %.body

_ZNSt10unique_ptrIN6duckdb8ZStdFileESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb10FileHandleESt14default_deleteIS1_EED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !85
  store ptr %i.q, ptr %0, align 8, !tbaa !90
  %i.ad = load ptr, ptr %6, align 8, !tbaa !26    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.d
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb8ZStdFileESt14default_deleteIS1_EED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.ad) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb8ZStdFileESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  ret void

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb10FileHandleESt14default_deleteIS1_EED2Ev.exit8.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.g ], [ %eh.lpad-body.i, %_ZNSt10unique_ptrIN6duckdb10FileHandleESt14default_deleteIS1_EED2Ev.exit8.i ]
  %i.ag = load ptr, ptr %6, align 8, !tbaa !26    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.d
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.ag) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6duckdb14ZStdFileSystem12CreateStreamEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.11") align 8 captures(none) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt10unique_ptrIN6duckdb17ZstdStreamWrapperESt14default_deleteIS1_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21, !noalias !92 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %i.b, align 16, !noalias !92
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6duckdb17ZstdStreamWrapperE, i64 16), ptr %i.a, align 16, !tbaa !7, !noalias !92
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.c, i8 0, i64 25, i1 false), !noalias !92
  store ptr %i.a, ptr %0, align 8, !tbaa !95
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6duckdb14ZStdFileSystem12InBufferSizeEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZN11duckdb_zstd18ZSTD_DStreamInSizeEv()
  ret i64 %i.a
}

declare noundef i64 @_ZN11duckdb_zstd18ZSTD_DStreamInSizeEv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6duckdb14ZStdFileSystem13OutBufferSizeEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZN11duckdb_zstd19ZSTD_DStreamOutSizeEv()
  ret i64 %i.a
}

declare noundef i64 @_ZN11duckdb_zstd19ZSTD_DStreamOutSizeEv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef range(i64 -2147483648, 2147483648) i64 @_ZN6duckdb14ZStdFileSystem23DefaultCompressionLevelEv() local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN11duckdb_zstd18ZSTD_defaultCLevelEv()
  %i.b = sext i32 %i.a to i64
  ret i64 %i.b
}

declare noundef i32 @_ZN11duckdb_zstd18ZSTD_defaultCLevelEv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef range(i64 -2147483648, 2147483648) i64 @_ZN6duckdb14ZStdFileSystem23MinimumCompressionLevelEv() local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN11duckdb_zstd14ZSTD_minCLevelEv()
  %i.b = sext i32 %i.a to i64
  ret i64 %i.b
}
end_hunk_0
