inline.NumInlined: 14179
inline.NumDeleted: 6830
begin_hunk_0_@_ZN6duckdb11FSSTStorage6SelectERNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERKNS_15SelectionVectorEm:bb.a
  %i.al = extractvalue { i64, ptr } %i.ak, 0
  %i.am = extractvalue { i64, ptr } %i.ak, 1
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %.028 ; 2 uses
  store i64 %i.al, ptr %i.an, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !239
  %i.ao = add nuw i64 %.028, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ao, %5
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1050
}

; Function Attrs: mustprogress uwtable
define i64 @_ZN6duckdb11FSSTStorage13GetDictionaryERNS_13ColumnSegmentERNS_12BufferHandleE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !455
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !456
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.f = load i64, ptr %i.e, align 8, !tbaa !460
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f
  %.0.copyload.i = load i64, ptr %i.g, align 1
  ret i64 %.0.copyload.i
}

declare noundef nonnull align 8 dereferenceable(144) ptr @_ZN6duckdb12StringVector15GetStringBufferERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr { i64, ptr } @_ZNK6duckdb13FSSTScanState16DecompressStringENS_25StringDictionaryContainerEPhRKNS_20BPDeltaDecodeOffsetsEmRNS_18VectorStringBufferE(ptr noundef nonnull align 8 dereferenceable(129) %0, i64 %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(144) %5) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %.sroa.0.i.i = alloca %struct.anon, align 8     ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1030
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !851
  %i.e = getelementptr [4 x i8], ptr %i.d, i64 %i.c
  %i.f = getelementptr [4 x i8], ptr %i.e, i64 %4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !1029
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !851
  %i.l = getelementptr [4 x i8], ptr %i.k, i64 %4
  %i.m = getelementptr [4 x i8], ptr %i.l, i64 %i.j
  %i.n = load i32, ptr %i.m, align 4, !tbaa !3    ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  %.sroa.1.0.extract.shift.i = lshr i64 %1, 32
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.1.0.extract.shift.i
  %i.q = sext i32 %i.n to i64
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds i8, ptr %i.p, i64 %i.r
  %.0.i = select i1 %i.o, ptr null, ptr %i.s      ; 2 uses
  %i.t = icmp eq i32 %i.g, 0
  br i1 %i.t, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.v = load i8, ptr %i.u, align 8, !tbaa !1015, !range !54, !noundef !55
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !999  ; 2 uses
  %i.z = zext i32 %i.g to i64                     ; 3 uses
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = tail call { i64, ptr } @_ZN6duckdb14FSSTPrimitives22DecompressInlinedValueEPvPKcm(ptr noundef %i.y, ptr noundef %.0.i, i64 noundef %i.z) ; 2 uses
  %i.ab = extractvalue { i64, ptr } %i.aa, 0      ; 2 uses
  %.sroa.0.sroa.4.0.extract.shift = and i64 %i.ab, -4294967296
  %i.ac = extractvalue { i64, ptr } %i.aa, 1
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.ad = shl nuw nsw i64 %i.z, 3                 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1051 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !1052 ; 2 uses
  %i.aj = add i64 %i.ai, %i.ad                    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1054
  %i.am = icmp ugt i64 %i.aj, %i.al
  br i1 %i.am, label %bb.f, label %_ZN6duckdb18VectorStringBuffer24AllocateShrinkableBufferEm.exit.i

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_ZN6duckdb14ArenaAllocator16AllocateNewBlockEm(ptr noundef nonnull align 8 dereferenceable(72) %i.ae, i64 noundef %i.ad)
  %.pre.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !1051 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 24
  %.pre4.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !1052 ; 2 uses
  %.pre5.i.i.i = add i64 %.pre4.i.i.i, %i.ad
  br label %_ZN6duckdb18VectorStringBuffer24AllocateShrinkableBufferEm.exit.i

_ZN6duckdb18VectorStringBuffer24AllocateShrinkableBufferEm.exit.i: ; preds = %bb.f, %bb.e
  %.pre-phi.i.i.i = phi i64 [ %.pre5.i.i.i, %bb.f ], [ %i.aj, %bb.e ]
  %i.an = phi i64 [ %.pre4.i.i.i, %bb.f ], [ %i.ai, %bb.e ]
  %i.ao = phi ptr [ %.pre.i.i.i, %bb.f ], [ %i.ag, %bb.e ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1055
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.an ; 4 uses
  store i64 %.pre-phi.i.i.i, ptr %i.ar, align 8, !tbaa !1052
  %i.at = tail call i64 @duckdb_fsst_decompress(ptr noundef %i.y, i64 noundef %i.z, ptr noundef %.0.i, i64 noundef %i.ad, ptr noundef %i.as) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.au = icmp ugt i64 %i.at, 12
  %i.av = select i1 %i.au, i64 %i.at, i64 0
  %.neg.i.i = sub i64 %i.av, %i.ad
  %i.aw = load ptr, ptr %i.af, align 8, !tbaa !1051
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !1052
  %i.az = add i64 %.neg.i.i, %i.ay
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !1052
  %i.ba = trunc i64 %i.at to i32                  ; 3 uses
  store i32 %i.ba, ptr %.sroa.0.i.i, align 8, !tbaa !239
  %i.bb = icmp ult i32 %i.ba, 13
  br i1 %i.bb, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZN6duckdb18VectorStringBuffer24AllocateShrinkableBufferEm.exit.i
  %.sroa.0.i.i.4.i.i.4.i.i.4.i.4.i.4..sroa_idx23 = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.i.i.4.i.i.4.i.i.4.i.4.i.4..sroa_idx23, i8 0, i64 12, i1 false)
  %i.bc = icmp eq i32 %i.ba, 0
  br i1 %i.bc, label %_ZN6duckdb14FSSTPrimitives15DecompressValueEPvRNS_18VectorStringBufferEPKcm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = and i64 %i.at, 15
  %.sroa.0.i.i.4.i.i.4.i.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.4.i.i.4.i.i.4.i.4.i.4..sroa_idx, ptr align 1 %i.as, i64 %i.bd, i1 false)
  %.sroa.0.i.i.8.i.i.8.i.i.8.i.8.i.8..fca.1.gep.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 8
  %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..sroa.0.8..fca.1.load.pre.i.i = load ptr, ptr %.sroa.0.i.i.8.i.i.8.i.i.8.i.8.i.8..fca.1.gep.sroa_idx, align 8
  br label %_ZN6duckdb14FSSTPrimitives15DecompressValueEPvRNS_18VectorStringBufferEPKcm.exit

bb.i:                                             ; preds = %_ZN6duckdb18VectorStringBuffer24AllocateShrinkableBufferEm.exit.i
  %i.be = load i32, ptr %i.as, align 1
  %.sroa.0.i.i.4.i.i.4.i.i.4.i.4.i.4..sroa_idx22 = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 4
  store i32 %i.be, ptr %.sroa.0.i.i.4.i.i.4.i.i.4.i.4.i.4..sroa_idx22, align 4
  br label %_ZN6duckdb14FSSTPrimitives15DecompressValueEPvRNS_18VectorStringBufferEPKcm.exit

_ZN6duckdb14FSSTPrimitives15DecompressValueEPvRNS_18VectorStringBufferEPKcm.exit: ; preds = %bb.g, %bb.h, %bb.i
  %.sroa.0.8..sroa.0.8..sroa.0.8..fca.1.load.i.i = phi ptr [ null, %bb.g ], [ %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..sroa.0.8..fca.1.load.pre.i.i, %bb.h ], [ %i.as, %bb.i ]
  %.sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..fca.0.load.i.i = load i64, ptr %.sroa.0.i.i, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %.sroa.0.sroa.4.0.extract.shift13 = and i64 %.sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..fca.0.load.i.i, -4294967296
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZN6duckdb14FSSTPrimitives15DecompressValueEPvRNS_18VectorStringBufferEPKcm.exit, %bb.c
  %.sroa.0.sroa.4.0 = phi i64 [ %.sroa.0.sroa.4.0.extract.shift13, %_ZN6duckdb14FSSTPrimitives15DecompressValueEPvRNS_18VectorStringBufferEPKcm.exit ], [ %.sroa.0.sroa.4.0.extract.shift, %bb.c ], [ 0, %bb.a ]
  %.sroa.0.sroa.0.0 = phi i64 [ %.sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..fca.0.load.i.i, %_ZN6duckdb14FSSTPrimitives15DecompressValueEPvRNS_18VectorStringBufferEPKcm.exit ], [ %i.ab, %bb.c ], [ 0, %bb.a ]
  %.sroa.5.0 = phi ptr [ %.sroa.0.8..sroa.0.8..sroa.0.8..fca.1.load.i.i, %_ZN6duckdb14FSSTPrimitives15DecompressValueEPvRNS_18VectorStringBufferEPKcm.exit ], [ %i.ac, %bb.c ], [ null, %bb.a ]
  %.sroa.0.sroa.0.0.insert.ext = and i64 %.sroa.0.sroa.0.0, 4294967295
  %.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.sroa.0.0.insert.ext, %.sroa.0.sroa.4.0
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.0.sroa.0.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.5.0, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11FSSTStorage14StringFetchRowERNS_13ColumnSegmentERNS_16ColumnFetchStateElRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr nonnull readnone align 8 captures(none) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.sroa.4 = alloca [12 x i8], align 4 ; 6 uses
  %.sroa.0.i.sroa.2 = alloca [12 x i8], align 4   ; 6 uses
  %5 = alloca %"class.duckdb::BufferHandle", align 8 ; 7 uses
  %6 = alloca %struct.duckdb_fsst_decoder_t, align 8 ; 5 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %7 = alloca %"class.duckdb::unique_ptr.1095", align 8 ; 8 uses
  %8 = alloca %"class.duckdb::unique_ptr.1095", align 8 ; 7 uses
  %9 = alloca %"struct.duckdb::string_t", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !248
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb13BufferManager16GetBufferManagerERNS_16DatabaseInstanceE(ptr noundef nonnull align 1 %i.c) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::BufferHandle") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !455
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !456
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !460
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.n ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  invoke void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !455
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !456
  %i.t = load i64, ptr %i.m, align 8, !tbaa !460
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  %.0.copyload.i.i.shift = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %.0.copyload.i.i69 = load i32, ptr %.0.copyload.i.i.shift, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.v = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_11BlockHandleELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %bb.d unwind label %bb.j       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !515
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.z = load i64, ptr %i.y, align 8, !tbaa !516
  %i.aa = sub i64 %i.x, %i.z
  %i.ab = invoke noundef zeroext i1 @_ZN6duckdb11FSSTStorage22ParseFSSTSegmentHeaderEPhP21duckdb_fsst_decoder_tS1_m(ptr noundef %i.o, ptr noundef nonnull %6, ptr noundef nonnull %i.a, i64 noundef %i.aa)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !461 ; 2 uses
  br i1 %i.ab, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  br label %bb.ag

bb.h:                                             ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.i:                                             ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.j:                                             ; preds = %bb.c
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.k:                                             ; preds = %bb.d
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.l:                                             ; preds = %bb.e
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.m:                                             ; preds = %bb.f
  %i.ak = add i64 %2, 1                           ; 5 uses
  %i.al = trunc i64 %i.ak to i32
  %i.am = and i32 %i.al, 31                       ; 2 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %_ZN6duckdb11FSSTStorage23CalculateBpDeltaOffsetsElmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = invoke noundef i64 @_ZN6duckdb15NumericCastImplImiLb0EE7ConvertEi(i32 noundef %i.am)
          to label %.noexc unwind label %bb.ah

.noexc:                                           ; preds = %bb.n
  %i.ap = add i64 %2, 33
  %i.aq = sub i64 %i.ap, %i.ao
  br label %_ZN6duckdb11FSSTStorage23CalculateBpDeltaOffsetsElmm.exit

_ZN6duckdb11FSSTStorage23CalculateBpDeltaOffsetsElmm.exit: ; preds = %.noexc, %bb.m
  %.0.i.i = phi i64 [ %i.aq, %.noexc ], [ %i.ak, %bb.m ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.ar = icmp ugt i64 %.0.i.i, 4611686018427387903
  %i.as = shl nuw i64 %.0.i.i, 2
  %i.at = select i1 %i.ar, i64 -1, i64 %i.as
  %i.au = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.at) #33
          to label %bb.o unwind label %bb.ai      ; 2 uses

bb.o:                                             ; preds = %_ZN6duckdb11FSSTStorage23CalculateBpDeltaOffsetsElmm.exit
  store ptr %i.au, ptr %7, align 8, !tbaa !851
  %i.av = load i8, ptr %i.a, align 1, !tbaa !239  ; 2 uses
  %i.aw = zext i8 %i.av to i64
  %.not.i.i = icmp eq i64 %.0.i.i, 0
  br i1 %.not.i.i, label %_ZN6duckdb14BitUnpackRangeEPhS0_mmh.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o
  %i.ax = zext i8 %i.av to i32
  br label %bb.p

bb.p:                                             ; preds = %.noexc49, %.lr.ph.i.i
  %.09.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bd, %.noexc49 ] ; 3 uses
  %i.ay = shl i64 %.09.i.i, 2
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ay
  %i.ba = mul i64 %.09.i.i, %i.aw
  %i.bb = lshr exact i64 %i.ba, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.bb
  invoke void @_ZN18duckdb_fastpforlib10fastunpackEPKjPjj(ptr noundef nonnull %i.bc, ptr noundef nonnull %i.az, i32 noundef %i.ax)
          to label %.noexc49 unwind label %bb.aj

.noexc49:                                         ; preds = %bb.p
  %i.bd = add i64 %.09.i.i, 32                    ; 2 uses
  %i.be = icmp ult i64 %i.bd, %.0.i.i
  br i1 %i.be, label %bb.p, label %_ZN6duckdb14BitUnpackRangeEPhS0_mmh.exit, !llvm.loop !1021

_ZN6duckdb14BitUnpackRangeEPhS0_mmh.exit:         ; preds = %.noexc49, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.bf = icmp ugt i64 %i.ak, 4611686018427387903
  %i.bg = shl nuw i64 %i.ak, 2
  %i.bh = select i1 %i.bf, i64 -1, i64 %i.bg
  %i.bi = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bh) #33
          to label %bb.q unwind label %bb.ak      ; 8 uses

bb.q:                                             ; preds = %_ZN6duckdb14BitUnpackRangeEPhS0_mmh.exit
  store ptr %i.bi, ptr %8, align 8, !tbaa !851
  %i.bj = load ptr, ptr %7, align 8, !tbaa !851   ; 6 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !3
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !3
  %i.bl = icmp ugt i64 %i.ak, 1
  br i1 %i.bl, label %.lr.ph.i.preheader, label %_ZN6duckdb18DeltaDecodeIndicesEPjS0_mj.exit

.lr.ph.i.preheader:                               ; preds = %bb.q
  %load_initial = load i32, ptr %i.bi, align 4    ; 2 uses
  %i.bm = add i64 %2, -1
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.bn = icmp ult i64 %i.bm, 3
  br i1 %i.bn, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %2, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %store_forwarded = phi i32 [ %load_initial, %.lr.ph.i.preheader.new ], [ %i.cg, %.lr.ph.i ]
  %.012.i = phi i64 [ 1, %.lr.ph.i.preheader.new ], [ %i.ch, %.lr.ph.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.012.i
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3
  %i.bq = getelementptr [4 x i8], ptr %i.bi, i64 %.012.i
  %i.br = add i32 %store_forwarded, %i.bp         ; 2 uses
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !3
  %i.bs = add nuw nsw i64 %.012.i, 1              ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bv = getelementptr [4 x i8], ptr %i.bi, i64 %i.bs
  %i.bw = add i32 %i.br, %i.bu                    ; 2 uses
  store i32 %i.bw, ptr %i.bv, align 4, !tbaa !3
  %i.bx = add nuw nsw i64 %.012.i, 2              ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3
  %i.ca = getelementptr [4 x i8], ptr %i.bi, i64 %i.bx
  %i.cb = add i32 %i.bw, %i.bz                    ; 2 uses
  store i32 %i.cb, ptr %i.ca, align 4, !tbaa !3
  %i.cc = add nuw i64 %.012.i, 3                  ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = getelementptr [4 x i8], ptr %i.bi, i64 %i.cc
  %i.cg = add i32 %i.cb, %i.ce                    ; 3 uses
  store i32 %i.cg, ptr %i.cf, align 4, !tbaa !3
  %i.ch = add nuw i64 %.012.i, 4                  ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6duckdb18DeltaDecodeIndicesEPjS0_mj.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1020

_ZN6duckdb18DeltaDecodeIndicesEPjS0_mj.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb18DeltaDecodeIndicesEPjS0_mj.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6duckdb18DeltaDecodeIndicesEPjS0_mj.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %store_forwarded.epil.init = phi i32 [ %load_initial, %.lr.ph.i.preheader ], [ %i.cg, %_ZN6duckdb18DeltaDecodeIndicesEPjS0_mj.exit.loopexit.unr-lcssa ]
  %.012.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.ch, %_ZN6duckdb18DeltaDecodeIndicesEPjS0_mj.exit.loopexit.unr-lcssa ]
  %lcmp.mod90 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod90)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %store_forwarded.epil = phi i32 [ %store_forwarded.epil.init, %.lr.ph.i.epil.preheader ], [ %i.cl, %.lr.ph.i.epil ]
  %.012.i.epil = phi i64 [ %.012.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.cm, %.lr.ph.i.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.012.i.epil
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.ck = getelementptr [4 x i8], ptr %i.bi, i64 %.012.i.epil
  %i.cl = add i32 %store_forwarded.epil, %i.cj    ; 2 uses
  store i32 %i.cl, ptr %i.ck, align 4, !tbaa !3
  %i.cm = add nuw i64 %.012.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6duckdb18DeltaDecodeIndicesEPjS0_mj.exit, label %.lr.ph.i.epil, !llvm.loop !1056

_ZN6duckdb18DeltaDecodeIndicesEPjS0_mj.exit:      ; preds = %_ZN6duckdb18DeltaDecodeIndicesEPjS0_mj.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.q
  %i.cn = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK6duckdb10unique_ptrIA_jSt14default_deleteIS1_ELb1EEixEm(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %2)
          to label %bb.r unwind label %bb.al

bb.r:                                             ; preds = %_ZN6duckdb18DeltaDecodeIndicesEPjS0_mj.exit
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !3  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.cp = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK6duckdb10unique_ptrIA_jSt14default_deleteIS1_ELb1EEixEm(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef %2)
          to label %bb.s unwind label %bb.am

bb.s:                                             ; preds = %bb.r
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !3  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.2)
  %i.cr = icmp sgt i32 %i.cq, -1
  %10 = zext i32 %.0.copyload.i.i69 to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.o, i64 %10 ; 2 uses
  br i1 %i.cr, label %bb.t, label %bb.x, !prof !64

bb.t:                                             ; preds = %bb.s
  %i.ct = zext nneg i32 %i.cq to i64
  %i.cu = sub nsw i64 0, %i.ct
  %i.cv = getelementptr inbounds i8, ptr %i.cs, i64 %i.cu ; 3 uses
  %i.cw = icmp ult i32 %i.co, 13
  br i1 %i.cw, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.i.sroa.2, i8 0, i64 12, i1 false)
  %i.cx = icmp eq i32 %i.co, 0
  br i1 %i.cx, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cy = zext nneg i32 %i.co to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.sroa.2, ptr align 1 %i.cv, i64 %i.cy, i1 false)
  %.sroa.0.i.sroa.2.4.i.8.i.8..fca.1.gep.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.sroa.2, i64 4
  %.sroa.0.i.sroa.2.4..sroa.0.i.sroa.2.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..sroa.0.8..fca.1.load.pre.i = load ptr, ptr %.sroa.0.i.sroa.2.4.i.8.i.8..fca.1.gep.sroa_idx, align 4
  %.sroa.0.i.sroa.2.0..sroa.0.i.sroa.2.4..sroa.0.i.4..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..fca.0.load.i71.pre = load i32, ptr %.sroa.0.i.sroa.2, align 4
  br label %bb.y

bb.w:                                             ; preds = %bb.t
  %i.cz = load i32, ptr %i.cv, align 1
  br label %bb.y

bb.x:                                             ; preds = %bb.s
  %i.da = sub nsw i32 0, %i.cq
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = sub nsw i64 0, %i.db
  %i.dd = getelementptr inbounds i8, ptr %i.cs, i64 %i.dc ; 2 uses
  %i.de = load i64, ptr %i.dd, align 1
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dg = load i32, ptr %i.df, align 1
  %i.dh = invoke { i64, ptr } @_ZN6duckdb25UncompressedStringStorage18ReadOverflowStringERNS_13ColumnSegmentERNS_6VectorEli(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %i.de, i32 noundef %i.dg)
          to label %.noexc50 unwind label %bb.am  ; 2 uses

.noexc50:                                         ; preds = %bb.x
  %i.di = extractvalue { i64, ptr } %i.dh, 0      ; 2 uses
  %i.dj = extractvalue { i64, ptr } %i.dh, 1
  %i.dk = trunc i64 %i.di to i32
  %i.dl = lshr i64 %i.di, 32
  %i.dm = trunc nuw i64 %i.dl to i32
  br label %bb.y

bb.y:                                             ; preds = %.noexc50, %bb.w, %bb.v, %bb.u
  %.sroa.0.i.4..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..fca.0.load.i71 = phi i32 [ %i.cz, %bb.w ], [ %.sroa.0.i.sroa.2.0..sroa.0.i.sroa.2.4..sroa.0.i.4..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..fca.0.load.i71.pre, %bb.v ], [ 0, %bb.u ], [ %i.dm, %.noexc50 ]
  %i.dn = phi i32 [ %i.co, %bb.w ], [ %i.co, %bb.v ], [ 0, %bb.u ], [ %i.dk, %.noexc50 ] ; 3 uses
  %i.do = phi ptr [ %i.cv, %bb.w ], [ %.sroa.0.i.sroa.2.4..sroa.0.i.sroa.2.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..sroa.0.8..fca.1.load.pre.i, %bb.v ], [ null, %bb.u ], [ %i.dj, %.noexc50 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.2)
  store i32 %i.dn, ptr %9, align 8
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  store i32 %.sroa.0.i.4..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..fca.0.load.i71, ptr %.sroa_idx, align 4
  %i.dp = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.do, ptr %i.dp, align 8
  %i.dq = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN6duckdb12StringVector15GetStringBufferERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
          to label %bb.z unwind label %bb.an      ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.dr = icmp ult i32 %i.dn, 13
  %i.ds = select i1 %i.dr, ptr %.sroa_idx, ptr %i.do
  %i.dt = zext i32 %i.dn to i64                   ; 2 uses
  %i.du = shl nuw nsw i64 %i.dt, 3                ; 5 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 48
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dq, i64 64 ; 3 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !1051 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !1052 ; 2 uses
  %i.ea = add i64 %i.dz, %i.du                    ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !1054
  %i.ed = icmp ugt i64 %i.ea, %i.ec
  br i1 %i.ed, label %bb.ab, label %_ZN6duckdb18VectorStringBuffer24AllocateShrinkableBufferEm.exit.i

bb.ab:                                            ; preds = %bb.aa, %bb.z
  invoke void @_ZN6duckdb14ArenaAllocator16AllocateNewBlockEm(ptr noundef nonnull align 8 dereferenceable(72) %i.dv, i64 noundef %i.du)
          to label %.noexc51 unwind label %bb.ao

.noexc51:                                         ; preds = %bb.ab
  %.pre.i.i.i = load ptr, ptr %i.dw, align 8, !tbaa !1051 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 24
  %.pre4.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !1052 ; 2 uses
  %.pre5.i.i.i = add i64 %.pre4.i.i.i, %i.du
  br label %_ZN6duckdb18VectorStringBuffer24AllocateShrinkableBufferEm.exit.i

_ZN6duckdb18VectorStringBuffer24AllocateShrinkableBufferEm.exit.i: ; preds = %.noexc51, %bb.aa
  %.pre-phi.i.i.i = phi i64 [ %.pre5.i.i.i, %.noexc51 ], [ %i.ea, %bb.aa ]
  %i.ee = phi i64 [ %.pre4.i.i.i, %.noexc51 ], [ %i.dz, %bb.aa ]
  %i.ef = phi ptr [ %.pre.i.i.i, %.noexc51 ], [ %i.dx, %bb.aa ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !1055
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ee ; 4 uses
  store i64 %.pre-phi.i.i.i, ptr %i.ei, align 8, !tbaa !1052
  %i.ek = call i64 @duckdb_fsst_decompress(ptr noundef nonnull %6, i64 noundef %i.dt, ptr noundef %i.ds, i64 noundef %i.du, ptr noundef %i.ej) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.sroa.4)
  %i.el = icmp ugt i64 %i.ek, 12
  %i.em = select i1 %i.el, i64 %i.ek, i64 0
  %.neg.i.i = sub i64 %i.em, %i.du
  %i.en = load ptr, ptr %i.dw, align 8, !tbaa !1051
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24 ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !1052
  %i.eq = add i64 %.neg.i.i, %i.ep
  store i64 %i.eq, ptr %i.eo, align 8, !tbaa !1052
  %i.er = trunc i64 %i.ek to i32                  ; 3 uses
  %i.es = icmp ult i32 %i.er, 13
  br i1 %i.es, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %_ZN6duckdb18VectorStringBuffer24AllocateShrinkableBufferEm.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.i.i.sroa.4, i8 0, i64 12, i1 false)
  %i.et = icmp eq i32 %i.er, 0
  br i1 %i.et, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eu = and i64 %i.ek, 15
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.sroa.4, ptr align 1 %i.ej, i64 %i.eu, i1 false)
  %.sroa.0.i.i.sroa.4.4.i.i.8.i.8.i.8..fca.1.gep.sroa_idx91 = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.sroa.4, i64 4
  %.sroa.0.i.i.sroa.4.4..sroa.0.i.i.sroa.4.4..sroa.0.i.i.sroa.4.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..sroa.0.8..fca.1.load.pre.i.i = load ptr, ptr %.sroa.0.i.i.sroa.4.4.i.i.8.i.8.i.8..fca.1.gep.sroa_idx91, align 4
  %.sroa.0.i.i.sroa.4.0..sroa.0.i.i.sroa.4.0..sroa.0.i.i.sroa.4.4..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..fca.0.load.i.i75.pre = load i32, ptr %.sroa.0.i.i.sroa.4, align 4
  br label %bb.af

bb.ae:                                            ; preds = %_ZN6duckdb18VectorStringBuffer24AllocateShrinkableBufferEm.exit.i
  %i.ev = load i32, ptr %i.ej, align 1
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %.sroa.0.i.i.sroa.4.0..sroa.0.i.i.sroa.4.4..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..fca.0.load.i.i75 = phi i32 [ 0, %bb.ac ], [ %.sroa.0.i.i.sroa.4.0..sroa.0.i.i.sroa.4.0..sroa.0.i.i.sroa.4.4..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..fca.0.load.i.i75.pre, %bb.ad ], [ %i.ev, %bb.ae ]
  %.sroa.0.8..sroa.0.8..sroa.0.8..fca.1.load.i.i = phi ptr [ null, %bb.ac ], [ %.sroa.0.i.i.sroa.4.4..sroa.0.i.i.sroa.4.4..sroa.0.i.i.sroa.4.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..sroa.0.8..fca.1.load.pre.i.i, %bb.ad ], [ %i.ej, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.sroa.4)
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %4 ; 3 uses
  store i32 %i.er, ptr %i.ew, align 8
  %.sroa_idx76 = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  store i32 %.sroa.0.i.i.sroa.4.0..sroa.0.i.i.sroa.4.4..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..fca.0.load.i.i75, ptr %.sroa_idx76, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store ptr %.sroa.0.8..sroa.0.8..sroa.0.8..fca.1.load.i.i, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !239
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.ex = load ptr, ptr %8, align 8, !tbaa !851   ; 2 uses
  %.not.i = icmp eq ptr %i.ex, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %bb.af
  call void @_ZdaPv(ptr noundef nonnull %i.ex) #32
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.af, %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.ey = load ptr, ptr %7, align 8, !tbaa !851   ; 2 uses
  %.not.i52 = icmp eq ptr %i.ey, null
  br i1 %.not.i52, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit54, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i53

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i53: ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.ey) #32
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit54

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit54: ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit, %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit54, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  ret void

bb.ah:                                            ; preds = %bb.n
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ai:                                            ; preds = %_ZN6duckdb11FSSTStorage23CalculateBpDeltaOffsetsElmm.exit
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit60

bb.aj:                                            ; preds = %bb.p
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ak:                                            ; preds = %_ZN6duckdb14BitUnpackRangeEPhS0_mmh.exit
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit57

bb.al:                                            ; preds = %_ZN6duckdb18DeltaDecodeIndicesEPjS0_mj.exit
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.am:                                            ; preds = %bb.x, %bb.r
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.an:                                            ; preds = %bb.y
end_hunk_0
