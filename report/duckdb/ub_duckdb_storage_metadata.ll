Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_storage_metadata?download=true
inline.NumInlined: 1642
inline.NumDeleted: 696
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6duckdb14MetadataReader18GetRemainingBlocksENS_16MetaBlockPointerE:bb.a
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.f, %i.e
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc4, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i ], [ %i.y, %.noexc4 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i ], [ %i.f, %.noexc4 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !211, !alias.scope !352
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aa, %i.e
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !14

_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc4
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.y, %.noexc4 ], [ %i.ab, %.lr.ph.i.i.i.i.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #24
  br label %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.ac, ptr %i.c, align 8, !tbaa !209
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.w
  store ptr %i.ad, ptr %i.d, align 8, !tbaa !210
  br label %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.g
  %i.ae = phi ptr [ %i.ac, %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.n, %bb.g ]
  %i.af = phi ptr [ %i.y, %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.f, %bb.g ] ; 2 uses
  invoke void @_ZN6duckdb14MetadataReader13ReadNextBlockENS_12QueryContextE(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr poison)
          to label %_ZN6duckdb14MetadataReader13ReadNextBlockEv.exit unwind label %.loopexit

bb.k:                                             ; preds = %_ZN6duckdb14MetadataReader13ReadNextBlockEv.exit, %bb.c
  store ptr %i.f, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14MetadataReader13ReadNextBlockEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #5 align 2 !guid !353 {
bb.a:
  tail call void @_ZN6duckdb14MetadataReader13ReadNextBlockENS_12QueryContextE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr poison)
  ret void
}

declare void @_ZN6duckdb11IOExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6duckdb14MetadataReader7BasePtrEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #5 align 2 !guid !354 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !150
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !154
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i64, ptr %i.e, align 8, !tbaa !206
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !204, !nonnull !98, !align !133
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !132, !nonnull !98, !align !133 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.k = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  %i.m = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  %i.n = sub i64 %i.k, %i.m
  %i.o = lshr i64 %i.n, 6
  %i.p = and i64 %i.o, 288230376151711736
  %i.q = mul i64 %i.p, %i.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.q
  ret ptr %i.r
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14MetadataWriterC2ERNS_15MetadataManagerENS_12optional_ptrINS_6vectorINS_16MetaBlockPointerELb1ESaIS5_EEELb1EEE(ptr noundef nonnull align 8 dereferenceable(80) initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(168) %1, ptr %2) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !guid !355 {
_ZN6duckdb14MetadataHandleC2Ev.exit:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6duckdb14MetadataWriterE, i64 16), ptr %0, align 8, !tbaa !90
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !190
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN6duckdb12BufferHandleC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %2, ptr %i.c, align 8, !tbaa !201
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6duckdb14MetadataWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(80) initializes((0, 8)) %0) unnamed_addr #1 align 2 !guid !356 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6duckdb14MetadataWriterE, i64 16), ptr %0, align 8, !tbaa !90
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6duckdb14MetadataWriterD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 align 2 !guid !357 {
bb.a:
  tail call void @_ZN6duckdb14MetadataWriterD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #21
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZN6duckdb14MetadataWriter15GetBlockPointerEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #5 align 2 !guid !358 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !215  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i64, ptr %i.c, align 8, !tbaa !216
  %.not.i = icmp ult i64 %i.b, %i.d
  br i1 %.not.i, label %_ZN6duckdb14MetadataWriter19GetMetaBlockPointerEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb14MetadataWriter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  %.pre.i = load i64, ptr %i.a, align 8, !tbaa !215
  br label %_ZN6duckdb14MetadataWriter19GetMetaBlockPointerEv.exit

_ZN6duckdb14MetadataWriter19GetMetaBlockPointerEv.exit: ; preds = %bb.a, %bb.b
  %i.e = phi i64 [ %.pre.i, %bb.b ], [ %i.b, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !217, !nonnull !98, !align !133
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !132, !nonnull !98, !align !133 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  %i.l = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.n = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  %i.o = sub i64 %i.l, %i.n
  %i.p = lshr i64 %i.o, 6
  %i.q = and i64 %i.p, 288230376151711736
  %.sroa.3.8.extract.trunc.i = trunc i64 %i.e to i32
  %i.r = and i64 %i.g, 72057594037927935
  %i.s = lshr i64 %i.g, 56
  %i.t = trunc nuw nsw i64 %i.s to i32
  %i.u = tail call noundef i32 @_ZN6duckdb15NumericCastImplIjmLb0EE7ConvertEm(i64 noundef %i.q)
  %i.v = mul i32 %i.u, %i.t
  %i.w = add i32 %i.v, %.sroa.3.8.extract.trunc.i
  %.fca.0.insert.i = insertvalue { i64, i64 } poison, i64 %i.r, 0
  %.sroa.33.8.insert.ext.i = zext i32 %i.w to i64
  %.fca.1.insert.i = insertvalue { i64, i64 } %.fca.0.insert.i, i64 %.sroa.33.8.insert.ext.i, 1
  ret { i64, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZN6duckdb14MetadataWriter19GetMetaBlockPointerEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #5 align 2 !guid !359 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !215  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i64, ptr %i.c, align 8, !tbaa !216
  %.not = icmp ult i64 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb14MetadataWriter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !215
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i64 [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8
  %.fca.0.insert.i = insertvalue { i64, i64 } poison, i64 %i.g, 0
  %.sroa.2.8.insert.ext.i = and i64 %i.e, 4294967295
  %.fca.1.insert.i = insertvalue { i64, i64 } %.fca.0.insert.i, i64 %.sroa.2.8.insert.ext.i, 1
  ret { i64, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14MetadataWriter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !guid !363 {
bb.a:
  %1 = alloca %"struct.duckdb::MetadataHandle", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.a = load ptr, ptr %0, align 8, !tbaa !90
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::MetadataHandle") align 8 %1, ptr noundef nonnull align 8 dereferenceable(80) %0)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !216
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %1, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !150
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !154
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 55
  %2 = load i8, ptr %i.l, align 1
  %3 = zext i8 %2 to i64
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !217, !nonnull !98, !align !133
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !132, !nonnull !98, !align !133 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  %i.p = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %.noexc4 unwind label %bb.m

.noexc4:                                          ; preds = %.noexc
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  %i.r = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.c unwind label %bb.m

bb.c:                                             ; preds = %.noexc4
  %i.s = sub i64 %i.p, %i.r
  %i.t = lshr i64 %i.s, 6
  %i.u = and i64 %i.t, 288230376151711736
  %i.v = mul i64 %i.u, %3
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.v
  store i64 %i.f, ptr %i.w, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.y = load i64, ptr %1, align 8, !tbaa !91
  store i64 %i.y, ptr %i.x, align 8, !tbaa !91
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ab = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb12BufferHandleaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.aa) #21 ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ad = load i64, ptr %i.x, align 8, !tbaa !91
  store i64 %i.ad, ptr %i.ac, align 8, !tbaa !91
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 8, ptr %i.ae, align 8, !tbaa !215
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !217, !nonnull !98, !align !133
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !132, !nonnull !98, !align !133 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 128
  %i.aj = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ai)
          to label %.noexc6 unwind label %bb.m

.noexc6:                                          ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 136
  %i.al = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ak)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %.noexc6
  %i.am = sub i64 %i.aj, %i.al
  %i.an = lshr i64 %i.am, 6
  %i.ao = and i64 %i.an, 288230376151711736
  store i64 %i.ao, ptr %i.d, align 8, !tbaa !216
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ap)
          to label %.noexc8 unwind label %bb.m

.noexc8:                                          ; preds = %bb.e
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !150
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !154
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 55
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i64
  %i.at = load ptr, ptr %i.af, align 8, !tbaa !217, !nonnull !98, !align !133
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !132, !nonnull !98, !align !133 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 128
  %i.aw = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.av)
          to label %.noexc9 unwind label %bb.m

.noexc9:                                          ; preds = %.noexc8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 136
  %i.ay = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %.noexc9
  %i.az = sub i64 %i.aw, %i.ay
  %i.ba = lshr i64 %i.az, 6
  %i.bb = and i64 %i.ba, 288230376151711736
  %i.bc = mul i64 %i.bb, %6
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bc
  store i64 -1, ptr %i.bd, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !207
  %.not21 = icmp eq ptr %i.bf, null
  br i1 %.not21, label %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE9push_backEOS1_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNK6duckdb12optional_ptrINS_6vectorINS_16MetaBlockPointerELb1ESaIS2_EEELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.be)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !207 ; 4 uses
  %i.bh = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !209 ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !210
  %.not.i.i = icmp eq ptr %i.bj, %i.bl
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 %i.bh, ptr %i.bj, align 8, !tbaa !94
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !24
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store ptr %i.bm, ptr %i.bi, align 8, !tbaa !209
  br label %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE9push_backEOS1_.exit

bb.j:                                             ; preds = %bb.h
  %i.bn = load ptr, ptr %i.bg, align 8, !tbaa !212 ; 5 uses
  %i.bo = ptrtoint ptr %i.bj to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp                    ; 3 uses
  %i.br = icmp eq i64 %i.bq, 9223372036854775792
  br i1 %i.br, label %bb.k, label %_ZNKSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #23
          to label %.noexc15 unwind label %bb.m

.noexc15:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.bs = ashr exact i64 %i.bq, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bs, i64 1)
  %i.bt = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bs ; 2 uses
  %i.bu = icmp ult i64 %i.bt, %i.bs
  %i.bv = call i64 @llvm.umin.i64(i64 %i.bt, i64 576460752303423487)
  %i.bw = select i1 %i.bu, i64 576460752303423487, i64 %i.bv ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bx = shl nuw nsw i64 %i.bw, 4
  %i.by = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bx) #25
          to label %.noexc16 unwind label %bb.m   ; 5 uses

.noexc16:                                         ; preds = %_ZNKSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bq ; 2 uses
  store i64 %i.bh, ptr %i.bz, align 8, !tbaa !94
  %.sroa.6.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i64 0, ptr %.sroa.6.0..sroa_idx18, align 8, !tbaa !24
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bn, %i.bj
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc16, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i.i.i ], [ %i.by, %.noexc16 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bn, %.noexc16 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !211, !alias.scope !364
  %i.ca = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ca, %i.bj
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !14

_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc16
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.by, %.noexc16 ], [ %i.cb, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bn) #24
  br label %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.by, ptr %i.bg, align 8, !tbaa !212
  store ptr %i.cc, ptr %i.bi, align 8, !tbaa !209
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.bw
  store ptr %i.cd, ptr %i.bk, align 8, !tbaa !210
  br label %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE9push_backEOS1_.exit

bb.m:                                             ; preds = %bb.e, %.noexc8, %.noexc9, %bb.d, %.noexc6, %bb.g, %bb.b, %.noexc, %.noexc4, %_ZNKSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.k
  %i.ce = landingpad { ptr, i32 }
          cleanup
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cf) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  resume { ptr, i32 } %i.ce

_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.i, %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.f
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aa) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14MetadataWriter18SetWrittenPointersENS_12optional_ptrINS_6vectorINS_16MetaBlockPointerELb1ESaIS3_EEELb1EEE(ptr noundef nonnull align 8 dereferenceable(80) initializes((56, 64)) %0, ptr %1) local_unnamed_addr #5 align 2 !guid !368 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !201
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE9push_backEOS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i64, ptr %i.b, align 8, !tbaa !216  ; 2 uses
  %.not = icmp ne i64 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp ult i64 %i.e, %i.c
  %or.cond = select i1 %.not, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.c, label %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE9push_backEOS1_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNK6duckdb12optional_ptrINS_6vectorINS_16MetaBlockPointerELb1ESaIS2_EEELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !207  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !209  ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !210
  %.not.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.i, ptr %i.k, align 8, !tbaa !94
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.n, ptr %i.j, align 8, !tbaa !209
  br label %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE9push_backEOS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !212  ; 5 uses
  %i.p = ptrtoint ptr %i.k to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775792
  br i1 %i.s, label %bb.f, label %_ZNKSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #23
  unreachable

_ZNKSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.t = ashr exact i64 %i.r, 4                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 576460752303423487)
  %i.x = select i1 %i.v, i64 576460752303423487, i64 %i.w ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 4
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #25 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.r ; 2 uses
  store i64 %i.i, ptr %i.aa, align 8, !tbaa !94
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 0, ptr %.sroa.5.0..sroa_idx2, align 8, !tbaa !24
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.o, %i.k
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNKSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i.i ], [ %i.z, %_ZNKSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.i ], [ %i.o, %_ZNKSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !211, !alias.scope !369
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ab, %i.k
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !14

_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.z, %_ZNKSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.o) #24
  br label %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.z, ptr %i.g, align 8, !tbaa !212
  store ptr %i.ad, ptr %i.j, align 8, !tbaa !209
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.x
  store ptr %i.ae, ptr %i.l, align 8, !tbaa !210
  br label %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14MetadataWriter10NextHandleEv(ptr dead_on_unwind noalias writable sret(%"struct.duckdb::MetadataHandle") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) unnamed_addr #5 align 2 !guid !370 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !217, !nonnull !98, !align !133
  tail call void @_ZN6duckdb15MetadataManager14AllocateHandleEv(ptr dead_on_unwind writable sret(%"struct.duckdb::MetadataHandle") align 8 %0, ptr noundef nonnull align 8 dereferenceable(168) %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6duckdb14MetadataWriter7BasePtrEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #5 align 2 !guid !371 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !150
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !154
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 55
  %1 = load i8, ptr %i.e, align 1
  %2 = zext i8 %1 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !217, !nonnull !98, !align !133
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !132, !nonnull !98, !align !133 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.j = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.l = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  %i.m = sub i64 %i.j, %i.l
  %i.n = lshr i64 %i.m, 6
  %i.o = and i64 %i.n, 288230376151711736
  %i.p = mul i64 %i.o, %2
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.p
  ret ptr %i.q
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14MetadataWriter9WriteDataEPKhm(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #5 align 2 !guid !373 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !215  ; 2 uses
  %i.d = add i64 %i.c, %2
  %i.e = load i64, ptr %i.b, align 8, !tbaa !216  ; 2 uses
  %i.f = icmp ugt i64 %i.d, %i.e
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 55
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.j = phi i64 [ %i.e, %.lr.ph ], [ %i.ai, %bb.d ] ; 2 uses
  %i.k = phi i64 [ %i.c, %.lr.ph ], [ %i.ag, %bb.d ] ; 2 uses
  %.017 = phi i64 [ %2, %.lr.ph ], [ %.1, %bb.d ] ; 2 uses
  %.01216 = phi ptr [ %1, %.lr.ph ], [ %.113, %bb.d ] ; 3 uses
  %.not = icmp eq i64 %i.j, %i.k
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !150
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !154
  %3 = load i8, ptr %i.h, align 1
  %4 = zext i8 %3 to i64
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !217, !nonnull !98, !align !133
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !132, !nonnull !98, !align !133 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  %i.s = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 136
  %i.u = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t)
  %i.v = sub i64 %i.s, %i.u
  %i.w = lshr i64 %i.v, 6
  %i.x = and i64 %i.w, 288230376151711736
  %i.y = mul i64 %i.x, %4
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.y
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !215
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %.01216, i64 %i.l, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.01216, i64 %i.l
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !215
  %i.ae = add i64 %i.ad, %i.l
  store i64 %i.ae, ptr %i.a, align 8, !tbaa !215
  %i.af = sub i64 %.017, %i.l
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.113 = phi ptr [ %i.ac, %bb.c ], [ %.01216, %bb.b ] ; 2 uses
  %.1 = phi i64 [ %i.af, %bb.c ], [ %.017, %bb.b ] ; 3 uses
  tail call void @_ZN6duckdb14MetadataWriter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !215 ; 2 uses
  %i.ah = add i64 %i.ag, %.1
  %i.ai = load i64, ptr %i.b, align 8, !tbaa !216 ; 2 uses
  %i.aj = icmp ugt i64 %i.ah, %i.ai
  br i1 %i.aj, label %bb.b, label %._crit_edge, !llvm.loop !372

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.012.lcssa = phi ptr [ %1, %bb.a ], [ %.113, %bb.d ]
  %.0.lcssa = phi i64 [ %2, %bb.a ], [ %.1, %bb.d ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ak)
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !150
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !154
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 55
  %5 = load i8, ptr %i.ao, align 1
  %6 = zext i8 %5 to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !217, !nonnull !98, !align !133
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !132, !nonnull !98, !align !133 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 128
  %i.at = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.as)
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 136
  %i.av = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.au)
  %i.aw = sub i64 %i.at, %i.av
  %i.ax = lshr i64 %i.aw, 6
  %i.ay = and i64 %i.ax, 288230376151711736
  %i.az = mul i64 %i.ay, %6
  %i.ba = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.az
  %i.bb = load i64, ptr %i.a, align 8, !tbaa !215
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bb
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bc, ptr align 1 %.012.lcssa, i64 %.0.lcssa, i1 false)
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !215
  %i.be = add i64 %i.bd, %.0.lcssa
  store i64 %i.be, ptr %i.a, align 8, !tbaa !215
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6duckdb14MetadataWriter3PtrEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #5 align 2 !guid !374 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !150
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !154
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 55
  %1 = load i8, ptr %i.e, align 1
  %2 = zext i8 %1 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !217, !nonnull !98, !align !133
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !132, !nonnull !98, !align !133 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.j = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.l = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  %i.m = sub i64 %i.j, %i.l
  %i.n = lshr i64 %i.m, 6
  %i.o = and i64 %i.n, 288230376151711736
  %i.p = mul i64 %i.o, %2
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i64, ptr %i.r, align 8, !tbaa !215
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.s
  ret ptr %i.t
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14MetadataWriter5FlushEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #5 align 2 !guid !375 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !215
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !216
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !150
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !154
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 55
  %1 = load i8, ptr %i.j, align 1
  %2 = zext i8 %1 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !217, !nonnull !98, !align !133
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !132, !nonnull !98, !align !133 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.o = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  %i.q = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  %i.r = sub i64 %i.o, %i.q
  %i.s = lshr i64 %i.r, 6
  %i.t = and i64 %i.s, 288230376151711736
  %i.u = mul i64 %i.t, %2
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.u
  %i.w = load i64, ptr %i.a, align 8, !tbaa !215  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.y = load i64, ptr %i.c, align 8, !tbaa !216
  %i.z = sub i64 %i.y, %i.w
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.x, i8 0, i64 %i.z, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN6duckdb12BufferHandle7DestroyEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aa)
  ret void
}

declare void @_ZN6duckdb12BufferHandle7DestroyEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #10

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableIlSt4pairIKlN6duckdb13MetadataBlockEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !guid !378 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !218  ; 2 uses
  %.not5.i = icmp eq ptr %i.b, null
  br i1 %.not5.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlN6duckdb13MetadataBlockEELb0EEEEE19_M_deallocate_nodesEPS7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlN6duckdb13MetadataBlockEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i
  %.06.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlN6duckdb13MetadataBlockEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.c = load ptr, ptr %.06.i, align 8, !tbaa !120 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !147  ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #24
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i.i.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i.i.i.i:            ; preds = %bb.b, %.lr.ph.i
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !85   ; 8 uses
  %.not.i.i.i1.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i1.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlN6duckdb13MetadataBlockEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.h, align 8, !tbaa !87
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !88
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !90
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #21, !inline_history !376
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !90
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #21, !inline_history !376
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlN6duckdb13MetadataBlockEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !91
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !24
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.k, %bb.f ], [ %i.u, %bb.g ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.v, label %bb.h, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlN6duckdb13MetadataBlockEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i, !prof !92

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #21
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlN6duckdb13MetadataBlockEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlN6duckdb13MetadataBlockEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.d, %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i) #24
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlN6duckdb13MetadataBlockEELb0EEEEE19_M_deallocate_nodesEPS7_.exit, label %.lr.ph.i, !llvm.loop !377

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlN6duckdb13MetadataBlockEELb0EEEEE19_M_deallocate_nodesEPS7_.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlN6duckdb13MetadataBlockEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i, %bb.a
  %i.w = load ptr, ptr %0, align 8, !tbaa !114
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !115
  %i.z = shl i64 %i.y, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.w, i8 0, i64 %i.z, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret void
}

declare void @_ZN6duckdb12BufferHandleC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #10

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !guid !380 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !90
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #21, !inline_history !379
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !91
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !24   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !24
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !90
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #21, !inline_history !379
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !guid !381 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !150
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !104    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br i1 %.0, label %bb.f, label %bb.h

end_hunk_0
