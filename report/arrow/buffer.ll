inline.NumInlined: 725
inline.NumDeleted: 348
begin_hunk_0_@_ZN5arrow15SliceBufferSafeESt10shared_ptrINS_6BufferEEl:bb.a
  %7 = alloca %"class.std::shared_ptr", align 8   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.b = load ptr, ptr %1, align 8, !tbaa !77, !nonnull !38, !noundef !38
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %.val = load i64, ptr %i.c, align 8             ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
end_hunk_0
begin_hunk_1_@_ZN5arrow15SliceBufferSafeESt10shared_ptrINS_6BufferEEll:bb.a
  %6 = alloca %"class.std::shared_ptr", align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.d = load ptr, ptr %1, align 8, !tbaa !77, !nonnull !38, !noundef !38 ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 24
  %.val = load i64, ptr %i.e, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !105
end_hunk_1
begin_hunk_2_@_ZN5arrow22SliceMutableBufferSafeESt10shared_ptrINS_6BufferEEl:bb.a
  %6 = alloca %"class.std::shared_ptr", align 8   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.b = load ptr, ptr %1, align 8, !tbaa !77, !nonnull !38, !noundef !38
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %.val = load i64, ptr %i.c, align 8             ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
end_hunk_2
begin_hunk_3_@_ZN5arrow22SliceMutableBufferSafeESt10shared_ptrINS_6BufferEEll:bb.a
  %6 = alloca %"class.std::shared_ptr", align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.b = load ptr, ptr %1, align 8, !tbaa !77, !nonnull !38, !noundef !38 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %.val = load i64, ptr %i.c, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !143
end_hunk_3
begin_hunk_4_@_ZN5arrow18ConcatenateBuffersERKSt6vectorISt10shared_ptrINS_6BufferEESaIS3_EEPNS_10MemoryPoolE:bb.a

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.036 = phi i64 [ %i.j, %.lr.ph ], [ 0, %bb.a ]
  %.sroa.032.035 = phi ptr [ %i.k, %.lr.ph ], [ %i.a, %bb.a ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.032.035) ]
  %i.g = load ptr, ptr %.sroa.032.035, align 8, !tbaa !77
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !7
end_hunk_4
begin_hunk_5_@_ZN5arrow18ConcatenateBuffersERKSt6vectorISt10shared_ptrINS_6BufferEESaIS3_EEPNS_10MemoryPoolE:bb.a

.lr.ph40:                                         ; preds = %.lr.ph40.preheader, %bb.e
  %.02138 = phi ptr [ %.1, %bb.e ], [ %i.aa, %.lr.ph40.preheader ] ; 3 uses
  %.sroa.028.037 = phi ptr [ %i.ao, %bb.e ], [ %i.o, %.lr.ph40.preheader ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.028.037) ]
  %i.ab = load ptr, ptr %.sroa.028.037, align 8, !tbaa !77 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !7  ; 2 uses
end_hunk_5
