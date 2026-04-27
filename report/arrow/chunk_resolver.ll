inline.NumInlined: 223
inline.NumDeleted: 140
begin_hunk_0_@_ZN5arrow13ChunkResolverC2ERKSt6vectorISt10shared_ptrINS_5ArrayEESaIS4_EE:bb.a
.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i
  %.0.i = phi i64 [ %i.t, %.lr.ph.i.i ], [ 0, %.lr.ph.i.preheader.i ] ; 2 uses
  %.08.i.i = phi ptr [ %i.u, %.lr.ph.i.i ], [ %i.a, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.04.07.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %.ph.i, %.lr.ph.i.preheader.i ] ; 2 uses
  %.0.val.i.i = load ptr, ptr %.08.i.i, align 8, !tbaa !47, !noalias !38
  %i.r = getelementptr i8, ptr %.0.val.i.i, i64 8
  %.0.val.val.i.i = load ptr, ptr %i.r, align 8, !tbaa !52, !noalias !38
  %i.s = getelementptr i8, ptr %.0.val.val.i.i, i64 16
  %.0.val.val.val.i.i = load i64, ptr %i.s, align 8, !tbaa !55, !noalias !38
  %i.t = add nsw i64 %.0.val.val.val.i.i, %.0.i   ; 2 uses
  store i64 %.0.i, ptr %.sroa.04.07.i.i, align 8, !tbaa !45, !noalias !38
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i, i64 8
end_hunk_0
begin_hunk_1_@_ZN5arrow13ChunkResolverC2ERKSt6vectorISt10shared_ptrINS_5ArrayEESaIS4_EE:bb.a
.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.b
  %i.w = phi ptr [ %i.l, %bb.b ], [ %.ph.i, %.lr.ph.i.i ]
  %.1.i = phi i64 [ 0, %bb.b ], [ %i.t, %.lr.ph.i.i ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.g
  store i64 %.1.i, ptr %i.x, align 8, !tbaa !45, !noalias !38
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.y, align 8, !tbaa !78
end_hunk_1
begin_hunk_2_@_ZN5arrow13ChunkResolverC2ENS_4util4spanIKPKNS_5ArrayEEE:bb.a
.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i.new
  %.0.i = phi i64 [ 0, %.lr.ph.i.preheader.i.new ], [ %i.af, %.lr.ph.i.i ] ; 2 uses
  %.08.i.i = phi ptr [ %1, %.lr.ph.i.preheader.i.new ], [ %i.ag, %.lr.ph.i.i ] ; 5 uses
  %.sroa.04.07.i.i = phi ptr [ %.ph.i, %.lr.ph.i.preheader.i.new ], [ %i.ah, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.i.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %.0.val.i.i = load ptr, ptr %.08.i.i, align 8, !tbaa !83, !noalias !80
  %i.o = getelementptr i8, ptr %.0.val.i.i, i64 8
end_hunk_2
begin_hunk_3_@_ZN5arrow13ChunkResolverC2ENS_4util4spanIKPKNS_5ArrayEEE:bb.a
  %i.p = getelementptr i8, ptr %.0.val.val.i.i, i64 16
  %.0.val.val.val.i.i = load i64, ptr %i.p, align 8, !tbaa !55, !noalias !80
  %i.q = add nsw i64 %.0.val.val.val.i.i, %.0.i   ; 2 uses
  store i64 %.0.i, ptr %.sroa.04.07.i.i, align 8, !tbaa !45, !noalias !80
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i, i64 8
end_hunk_3
begin_hunk_4_@_ZN5arrow13ChunkResolverC2ENS_4util4spanIKPKNS_5ArrayEEE:bb.a
.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.0.i.epil = phi i64 [ %i.ak, %.lr.ph.i.i.epil ], [ %.0.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.08.i.i.epil = phi ptr [ %i.al, %.lr.ph.i.i.epil ], [ %.08.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.sroa.04.07.i.i.epil = phi ptr [ %i.am, %.lr.ph.i.i.epil ], [ %.sroa.04.07.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %.0.val.i.i.epil = load ptr, ptr %.08.i.i.epil, align 8, !tbaa !83, !noalias !80
  %i.ai = getelementptr i8, ptr %.0.val.i.i.epil, i64 8
end_hunk_4
begin_hunk_5_@_ZN5arrow13ChunkResolverC2ENS_4util4spanIKPKNS_5ArrayEEE:bb.a
  %i.aj = getelementptr i8, ptr %.0.val.val.i.i.epil, i64 16
  %.0.val.val.val.i.i.epil = load i64, ptr %i.aj, align 8, !tbaa !55, !noalias !80
  %i.ak = add nsw i64 %.0.val.val.val.i.i.epil, %.0.i.epil ; 2 uses
  store i64 %.0.i.epil, ptr %.sroa.04.07.i.i.epil, align 8, !tbaa !45, !noalias !80
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.epil, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.epil, i64 8
end_hunk_5
begin_hunk_6_@_ZN5arrow13ChunkResolverC2ENS_4util4spanIKPKNS_5ArrayEEE:bb.a
.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.b
  %i.an = phi ptr [ %i.e, %bb.b ], [ %.ph.i, %.lr.ph.i.i.epil ], [ %.ph.i, %.loopexit.loopexit.unr-lcssa ]
  %.1.i = phi i64 [ 0, %bb.b ], [ %i.af, %.loopexit.loopexit.unr-lcssa ], [ %i.ak, %.lr.ph.i.i.epil ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %2
  store i64 %.1.i, ptr %i.ao, align 8, !tbaa !45, !noalias !80
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.ap, align 8, !tbaa !78
end_hunk_6
begin_hunk_7_@_ZN5arrow13ChunkResolverC2ERKSt6vectorISt10shared_ptrINS_11RecordBatchEESaIS4_EE:bb.a
.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i
  %.0.i = phi i64 [ %i.s, %.lr.ph.i.i ], [ 0, %.lr.ph.i.preheader.i ] ; 2 uses
  %.08.i.i = phi ptr [ %i.t, %.lr.ph.i.i ], [ %i.a, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.04.07.i.i = phi ptr [ %i.u, %.lr.ph.i.i ], [ %.ph.i, %.lr.ph.i.preheader.i ] ; 2 uses
  %.0.val.i.i = load ptr, ptr %.08.i.i, align 8, !tbaa !94, !noalias !91
  %i.r = getelementptr i8, ptr %.0.val.i.i, i64 24
  %.0.val.val.i.i = load i64, ptr %i.r, align 8, !tbaa !97, !noalias !91
  %i.s = add nsw i64 %.0.val.val.i.i, %.0.i       ; 2 uses
  store i64 %.0.i, ptr %.sroa.04.07.i.i, align 8, !tbaa !45, !noalias !91
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i, i64 8
end_hunk_7
begin_hunk_8_@_ZN5arrow13ChunkResolverC2ERKSt6vectorISt10shared_ptrINS_11RecordBatchEESaIS4_EE:bb.a
.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.b
  %i.v = phi ptr [ %i.l, %bb.b ], [ %.ph.i, %.lr.ph.i.i ]
  %.1.i = phi i64 [ 0, %bb.b ], [ %i.s, %.lr.ph.i.i ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.g
  store i64 %.1.i, ptr %i.w, align 8, !tbaa !45, !noalias !91
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.x, align 8, !tbaa !78
end_hunk_8
begin_hunk_9_@_ZNSt6vectorIlSaIlEEaSERKS1_:bb.a
  store i64 %i.ak, ptr %i.ad, align 8, !tbaa !45
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit
  %i.al = load ptr, ptr %0, align 8, !tbaa !41
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_9
begin_hunk_10_@_ZSt20__throw_length_errorPKc
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn }
end_hunk_10
begin_hunk_11_@llvm.assume/@llvm.memcpy.p0.p0.i64
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { noreturn }
attributes #14 = { builtin allocsize(0) }
attributes #15 = { noreturn nounwind }
end_hunk_11
