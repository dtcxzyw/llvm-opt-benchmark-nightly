Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_python-5edf94d4479ec0ca.polars_python.a5d715ccd120a5f3-cgu.12?download=true
inline.NumInlined: 17181
inline.NumDeleted: 6681
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 73
begin_hunk_0_@_RINvNtCsh8eZTKRCwoO_3std2io18default_read_exactINtNtNtB2_8buffered9bufreader9BufReaderNtNtB4_2fs4FileEECseeLknQCOKOd_13polars_python:bb.a
  br i1 %i.i, label %bb.e, label %bb.f, !dbg !47885, !prof !4282

._crit_edge:                                      ; preds = %.split42, %.split41, %.split, %bb.g, %bb.c, %bb.h, %bb.a
  %.sroa.09.0 = phi ptr [ null, %bb.a ], [ @63, %bb.c ], [ %i.d, %.split41 ], [ %i.d, %.split ], [ %i.d, %bb.g ], [ null, %bb.h ], [ %i.d, %.split42 ], !dbg !47886
  ret ptr %.sroa.09.0, !dbg !47887

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.e, i64 noundef %.sroa.7.047, i64 noundef %.sroa.7.047, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #51, !dbg !47888
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.j = sub nuw nsw i64 %.sroa.7.047, %i.e, !dbg !47889
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.048, i64 %i.e, !dbg !47890
  br label %bb.h, !dbg !47891

.split:                                           ; preds = %bb.b
  %.mask43 = and i64 %i.e, -4294967296, !dbg !47892
  %i.l = icmp eq i64 %.mask43, 17179869184, !dbg !47892
  br i1 %i.l, label %.thread, label %._crit_edge, !dbg !47893

.split42:                                         ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !47894
  %i.n = load i8, ptr %i.m, align 8, !dbg !47894, !range !4789, !noundef !4270
  %i.o = icmp eq i8 %i.n, 35, !dbg !47895
  br i1 %i.o, label %.thread, label %._crit_edge, !dbg !47893

.split41:                                         ; preds = %bb.b
  %i.p = getelementptr i8, ptr %i.d, i64 15, !dbg !47896
  %i.q = load i8, ptr %i.p, align 8, !dbg !47896, !range !4789, !noundef !4270
  %i.r = icmp eq i8 %i.q, 35, !dbg !47897
  br i1 %i.r, label %.thread, label %._crit_edge, !dbg !47893

bb.g:                                             ; preds = %bb.b
  %i.s = icmp ult ptr %i.d, inttoptr (i64 180388626432 to ptr), !dbg !47898
  tail call void @llvm.assume(i1 %i.s), !dbg !47899
  %.mask = and i64 %i.e, -4294967296, !dbg !47900
  %i.t = icmp eq i64 %.mask, 150323855360, !dbg !47900
  br i1 %i.t, label %.thread, label %._crit_edge, !dbg !47893

.thread:                                          ; preds = %bb.g, %.split, %.split41, %.split42
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python(ptr %i.d), !dbg !47891
  br label %bb.h, !dbg !47891

bb.h:                                             ; preds = %bb.f, %.thread
  %.sroa.0.122 = phi ptr [ %.sroa.0.048, %.thread ], [ %i.k, %bb.f ]
  %.sroa.7.120 = phi i64 [ %.sroa.7.047, %.thread ], [ %i.j, %bb.f ] ; 2 uses
  %i.u = icmp eq i64 %.sroa.7.120, 0, !dbg !47880
  br i1 %i.u, label %._crit_edge, label %.lr.ph, !dbg !47880
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvNtCsh8eZTKRCwoO_3std2io18default_read_exactNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectEBN_(ptr noalias noundef align 8 dereferenceable(16) %0, ptr noalias noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !47901 {
bb.a:
  %i.a = icmp eq i64 %2, 0, !dbg !47933
  br i1 %i.a, label %._crit_edge, label %.lr.ph, !dbg !47933

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %.sroa.0.048 = phi ptr [ %.sroa.0.122, %bb.h ], [ %1, %bb.a ] ; 3 uses
  %.sroa.7.047 = phi i64 [ %.sroa.7.120, %bb.h ], [ %2, %bb.a ] ; 6 uses
  %i.b = tail call { i64, ptr } @_RNvXs1_NtCseeLknQCOKOd_13polars_python4fileNtB5_16PyFileLikeObjectNtNtCsh8eZTKRCwoO_3std2io4Read4read(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef nonnull %.sroa.0.048, i64 noundef %.sroa.7.047), !dbg !47934 ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0, !dbg !47934
  %i.d = extractvalue { i64, ptr } %i.b, 1, !dbg !47934 ; 11 uses
  %i.e = ptrtoint ptr %i.d to i64, !dbg !47934    ; 7 uses
  %i.f = trunc nuw i64 %i.c to i1, !dbg !47935
  br i1 %i.f, label %bb.b, label %bb.c, !dbg !47935

bb.b:                                             ; preds = %.lr.ph
  %i.g = and i64 %i.e, 3, !dbg !47936
  switch i64 %i.g, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.g
    i64 0, label %.split42
    i64 1, label %.split41
  ], !dbg !47937, !prof !4782

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.h = icmp eq ptr %i.d, null, !dbg !47935
  br i1 %i.h, label %._crit_edge, label %bb.d, !dbg !47935

bb.d:                                             ; preds = %bb.c
  %i.i = icmp ult i64 %.sroa.7.047, %i.e, !dbg !47938
  br i1 %i.i, label %bb.e, label %bb.f, !dbg !47938, !prof !4282

._crit_edge:                                      ; preds = %.split42, %.split41, %.split, %bb.g, %bb.c, %bb.h, %bb.a
  %.sroa.09.0 = phi ptr [ null, %bb.a ], [ @63, %bb.c ], [ %i.d, %.split41 ], [ %i.d, %.split ], [ %i.d, %bb.g ], [ null, %bb.h ], [ %i.d, %.split42 ], !dbg !47939
  ret ptr %.sroa.09.0, !dbg !47940

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.e, i64 noundef %.sroa.7.047, i64 noundef %.sroa.7.047, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #51, !dbg !47941
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.j = sub nuw nsw i64 %.sroa.7.047, %i.e, !dbg !47942
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.048, i64 %i.e, !dbg !47943
  br label %bb.h, !dbg !47944

.split:                                           ; preds = %bb.b
  %.mask43 = and i64 %i.e, -4294967296, !dbg !47945
  %i.l = icmp eq i64 %.mask43, 17179869184, !dbg !47945
  br i1 %i.l, label %.thread, label %._crit_edge, !dbg !47946

.split42:                                         ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !47947
  %i.n = load i8, ptr %i.m, align 8, !dbg !47947, !range !4789, !noundef !4270
  %i.o = icmp eq i8 %i.n, 35, !dbg !47948
  br i1 %i.o, label %.thread, label %._crit_edge, !dbg !47946

.split41:                                         ; preds = %bb.b
  %i.p = getelementptr i8, ptr %i.d, i64 15, !dbg !47949
  %i.q = load i8, ptr %i.p, align 8, !dbg !47949, !range !4789, !noundef !4270
  %i.r = icmp eq i8 %i.q, 35, !dbg !47950
  br i1 %i.r, label %.thread, label %._crit_edge, !dbg !47946

bb.g:                                             ; preds = %bb.b
  %i.s = icmp ult ptr %i.d, inttoptr (i64 180388626432 to ptr), !dbg !47951
  tail call void @llvm.assume(i1 %i.s), !dbg !47952
  %.mask = and i64 %i.e, -4294967296, !dbg !47953
  %i.t = icmp eq i64 %.mask, 150323855360, !dbg !47953
  br i1 %i.t, label %.thread, label %._crit_edge, !dbg !47946

.thread:                                          ; preds = %bb.g, %.split, %.split41, %.split42
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python(ptr %i.d), !dbg !47944
  br label %bb.h, !dbg !47944

bb.h:                                             ; preds = %bb.f, %.thread
  %.sroa.0.122 = phi ptr [ %.sroa.0.048, %.thread ], [ %i.k, %bb.f ]
  %.sroa.7.120 = phi i64 [ %.sroa.7.047, %.thread ], [ %i.j, %bb.f ] ; 2 uses
  %i.u = icmp eq i64 %.sroa.7.120, 0, !dbg !47933
  br i1 %i.u, label %._crit_edge, label %.lr.ph, !dbg !47933
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io18stream_len_defaultNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectEBN_(ptr noalias noundef align 8 dereferenceable(16) %0) unnamed_addr #1 !dbg !47954 {
bb.a:
  %i.a = tail call { i64, ptr } @_RNvYNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectNtNtCsh8eZTKRCwoO_3std2io4Seek15stream_positionB6_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0), !dbg !47961 ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0, !dbg !47961
  %i.c = extractvalue { i64, ptr } %i.a, 1, !dbg !47961 ; 3 uses
  %i.d = ptrtoint ptr %i.c to i64, !dbg !47961
  %i.e = trunc nuw i64 %i.b to i1, !dbg !47962
  br i1 %i.e, label %bb.e, label %bb.b, !dbg !47962

bb.b:                                             ; preds = %bb.a
  %i.f = tail call { i64, ptr } @_RNvXs3_NtCseeLknQCOKOd_13polars_python4fileNtB5_16PyFileLikeObjectNtNtCsh8eZTKRCwoO_3std2io4Seek4seek(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 1, i64 noundef 0), !dbg !47963 ; 2 uses
  %i.g = extractvalue { i64, ptr } %i.f, 0, !dbg !47963
  %i.h = extractvalue { i64, ptr } %i.f, 1, !dbg !47963 ; 4 uses
  %i.i = trunc nuw i64 %i.g to i1, !dbg !47964
  br i1 %i.i, label %bb.e, label %bb.c, !dbg !47964

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq ptr %i.c, %i.h, !dbg !47965
  br i1 %.not, label %bb.e, label %bb.d, !dbg !47965

bb.d:                                             ; preds = %bb.c
  %i.j = tail call { i64, ptr } @_RNvXs3_NtCseeLknQCOKOd_13polars_python4fileNtB5_16PyFileLikeObjectNtNtCsh8eZTKRCwoO_3std2io4Seek4seek(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 0, i64 noundef %i.d), !dbg !47966 ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.j, 0, !dbg !47966 ; 2 uses
  %i.l = trunc nuw i64 %i.k to i1, !dbg !47967
  %i.m = extractvalue { i64, ptr } %i.j, 1
  %spec.select = select i1 %i.l, ptr %i.m, ptr %i.h, !dbg !47967
  br label %bb.e, !dbg !47967

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.sroa.5.0 = phi ptr [ %i.h, %bb.b ], [ %i.c, %bb.a ], [ %spec.select, %bb.d ], [ %i.h, %bb.c ], !dbg !47968
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 1, %bb.a ], [ %i.k, %bb.d ], [ 0, %bb.c ], !dbg !47968
  %i.n = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0, !dbg !47969
  %i.o = insertvalue { i64, ptr } %i.n, ptr %.sroa.5.0, 1, !dbg !47969
  ret { i64, ptr } %i.o, !dbg !47969
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQIBL_QQINtNtB2_6cursor6CursorQRShEEEECseeLknQCOKOd_13polars_python(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !47970 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !48310 ; 7 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !48310, !noundef !4270 ; 7 uses
  %i.g = icmp sgt i64 %i.f, -1, !dbg !48311
  tail call void @llvm.assume(i1 %i.g), !dbg !48312
  %i.h = load i64, ptr %1, align 8, !dbg !48313, !range !4635, !noundef !4270 ; 2 uses
  %i.i = trunc nuw i64 %2 to i1, !dbg !48314      ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c, !dbg !48314

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %3, -1025, !dbg !48315
  br i1 %i.j, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtB4_6cursor6CursorQRShEEEE0CseeLknQCOKOd_13polars_python.exit.thread, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtB4_6cursor6CursorQRShEEEE0CseeLknQCOKOd_13polars_python.exit, !dbg !48316, !prof !4282

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtB4_6cursor6CursorQRShEEEE0CseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  %i.k = add nuw i64 %3, 1024, !dbg !48315        ; 3 uses
  %i.l = and i64 %i.k, 8191, !dbg !48317          ; 2 uses
  %i.m = icmp eq i64 %i.l, 0, !dbg !48318
  %i.n = sub i64 %3, %i.l, !dbg !48318
  %i.o = add i64 %i.n, 9216, !dbg !48318          ; 2 uses
  %.not102 = icmp ult i64 %i.o, %i.k, !dbg !48318
  %.sroa.5.1.i = select i1 %.not102, i64 8192, i64 %i.o, !dbg !48319
  %.sroa.050.1 = select i1 %i.m, i64 %i.k, i64 %.sroa.5.1.i, !dbg !48318 ; 2 uses
  %i.p = icmp eq i64 %3, 0
  br i1 %i.p, label %bb.c, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtB4_6cursor6CursorQRShEEEE0CseeLknQCOKOd_13polars_python.exit.thread, !dbg !48320

bb.c:                                             ; preds = %bb.a, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtB4_6cursor6CursorQRShEEEE0CseeLknQCOKOd_13polars_python.exit
  %.sroa.050.0 = phi i64 [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtB4_6cursor6CursorQRShEEEE0CseeLknQCOKOd_13polars_python.exit ], [ 8192, %bb.a ], !dbg !48321 ; 2 uses
  %.sroa.013.0 = xor i1 %i.i, true, !dbg !48322   ; 2 uses
  %i.q = sub nsw i64 %i.h, %i.f, !dbg !48323
  %i.r = icmp ult i64 %i.q, 32, !dbg !48323
  br i1 %i.r, label %bb.d, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtB4_6cursor6CursorQRShEEEE0CseeLknQCOKOd_13polars_python.exit.thread, !dbg !48323

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtB4_6cursor6CursorQRShEEEE0CseeLknQCOKOd_13polars_python.exit.thread: ; preds = %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtB4_6cursor6CursorQRShEEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtB4_6cursor6CursorQRShEEEE0CseeLknQCOKOd_13polars_python.exit
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtB4_6cursor6CursorQRShEEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge ], [ %i.f, %bb.c ], [ %i.f, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtB4_6cursor6CursorQRShEEEE0CseeLknQCOKOd_13polars_python.exit ], [ %i.f, %bb.b ], !dbg !48324
  %.sroa.050.2 = phi i64 [ %.sroa.050.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtB4_6cursor6CursorQRShEEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge ], [ %.sroa.050.0, %bb.c ], [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtB4_6cursor6CursorQRShEEEE0CseeLknQCOKOd_13polars_python.exit ], [ 8192, %bb.b ], !dbg !48325
  %.sroa.013.1 = phi i1 [ %.sroa.013.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtB4_6cursor6CursorQRShEEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge ], [ %.sroa.013.0, %bb.c ], [ false, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtB4_6cursor6CursorQRShEEEE0CseeLknQCOKOd_13polars_python.exit ], [ false, %bb.b ], !dbg !48326
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br label %bb.f, !dbg !48327

bb.d:                                             ; preds = %bb.c
  %i.ag = tail call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQIB15_QQINtNtB4_6cursor6CursorQRShEEEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !48231 ; 2 uses
  %i.ah = extractvalue { i64, ptr } %i.ag, 0, !dbg !48231
  %i.ai = extractvalue { i64, ptr } %i.ag, 1, !dbg !48231 ; 2 uses
  %i.aj = trunc nuw i64 %i.ah to i1, !dbg !48328
  br i1 %i.aj, label %bb.al, label %bb.e, !dbg !48328

bb.e:                                             ; preds = %bb.d
  %i.ak = icmp eq ptr %i.ai, null, !dbg !48329
  br i1 %i.ak, label %bb.al, label %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtB4_6cursor6CursorQRShEEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge, !dbg !48329

._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtB4_6cursor6CursorQRShEEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge: ; preds = %bb.e
  %.pre.pre = load i64, ptr %i.e, align 8, !dbg !48324
  br label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtB4_6cursor6CursorQRShEEEE0CseeLknQCOKOd_13polars_python.exit.thread, !dbg !48329

bb.f:                                             ; preds = %bb.ah, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtB4_6cursor6CursorQRShEEEE0CseeLknQCOKOd_13polars_python.exit.thread
  %i.al = phi i64 [ %.pre, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtB4_6cursor6CursorQRShEEEE0CseeLknQCOKOd_13polars_python.exit.thread ], [ %i.dk, %bb.ah ], !dbg !48324 ; 3 uses
  %.sroa.048.2 = phi i64 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtB4_6cursor6CursorQRShEEEE0CseeLknQCOKOd_13polars_python.exit.thread ], [ %i.dh, %bb.ah ], !dbg !48330
  %.sroa.050.3 = phi i64 [ %.sroa.050.2, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtB4_6cursor6CursorQRShEEEE0CseeLknQCOKOd_13polars_python.exit.thread ], [ %.sroa.050.4, %bb.ah ], !dbg !48331 ; 3 uses
  %.sroa.019.0 = phi i32 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtB4_6cursor6CursorQRShEEEE0CseeLknQCOKOd_13polars_python.exit.thread ], [ %.sroa.019.1, %bb.ah ], !dbg !48332
  %i.am = icmp sgt i64 %i.al, -1, !dbg !48333
  call void @llvm.assume(i1 %i.am), !dbg !48334
  %i.an = load i64, ptr %1, align 8, !dbg !48335, !range !4635, !noundef !4270 ; 3 uses
  %i.ao = icmp eq i64 %i.al, %i.an, !dbg !48336
  %i.ap = icmp eq i64 %i.an, %i.h
  %or.cond62 = and i1 %i.ao, %i.ap, !dbg !48336
  br i1 %or.cond62, label %bb.h, label %bb.g, !dbg !48336

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.aq = phi i64 [ %.pre128, %._crit_edge ], [ %i.an, %bb.f ], !dbg !48337 ; 3 uses
  %i.ar = phi i64 [ %.pre127, %._crit_edge ], [ %i.al, %bb.f ], !dbg !48338 ; 3 uses
  %i.as = icmp sgt i64 %i.ar, -1, !dbg !48339
  call void @llvm.assume(i1 %i.as), !dbg !48340
  %i.at = icmp eq i64 %i.ar, %i.aq, !dbg !48341
  br i1 %i.at, label %bb.l, label %bb.m, !dbg !48341

bb.h:                                             ; preds = %bb.f
  %i.au = call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQIB15_QQINtNtB4_6cursor6CursorQRShEEEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !48243 ; 2 uses
  %i.av = extractvalue { i64, ptr } %i.au, 0, !dbg !48243
  %i.aw = extractvalue { i64, ptr } %i.au, 1, !dbg !48243 ; 2 uses
  %i.ax = trunc nuw i64 %i.av to i1, !dbg !48342
  br i1 %i.ax, label %bb.i, label %bb.j, !dbg !48342

bb.i:                                             ; preds = %bb.h
  %i.ay = ptrtoint ptr %i.aw to i64, !dbg !48243
  br label %.loopexit, !dbg !48343

bb.j:                                             ; preds = %bb.h
  %i.az = icmp eq ptr %i.aw, null, !dbg !48344
  %.pre127 = load i64, ptr %i.e, align 8, !dbg !48338 ; 3 uses
  br i1 %i.az, label %bb.k, label %._crit_edge, !dbg !48344

._crit_edge:                                      ; preds = %bb.j
  %.pre128 = load i64, ptr %1, align 8, !dbg !48337, !range !4635
  br label %bb.g, !dbg !48344

bb.k:                                             ; preds = %bb.j
  %i.ba = icmp sgt i64 %.pre127, -1, !dbg !48345
  call void @llvm.assume(i1 %i.ba), !dbg !48346
  %i.bb = sub nsw i64 %.pre127, %i.f, !dbg !48347
  br label %.loopexit, !dbg !48348

bb.l:                                             ; preds = %bb.g
  %i.bc = call { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.aq, i64 noundef 32, i64 noundef 1, i64 noundef 1), !dbg !48349
  %i.bd = extractvalue { i64, i64 } %i.bc, 0, !dbg !48349
  %.not = icmp eq i64 %i.bd, -9223372036854775807, !dbg !48350
  br i1 %.not, label %._crit_edge129, label %.loopexit, !dbg !48351

._crit_edge129:                                   ; preds = %bb.l
  %.pre130 = load i64, ptr %i.e, align 8, !dbg !48352
  %.pre131 = load i64, ptr %1, align 8, !dbg !48353, !range !4635
  br label %bb.m, !dbg !48351

bb.m:                                             ; preds = %._crit_edge129, %bb.g
  %i.be = phi i64 [ %.pre131, %._crit_edge129 ], [ %i.aq, %bb.g ], !dbg !48353
  %i.bf = phi i64 [ %.pre130, %._crit_edge129 ], [ %i.ar, %bb.g ], !dbg !48352 ; 5 uses
  %i.bg = load ptr, ptr %i.s, align 8, !dbg !48354, !nonnull !4270, !noundef !4270
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bf, !dbg !48355
  %i.bi = sub i64 %i.be, %i.bf, !dbg !48356
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.050.3, i64 %i.bi), !dbg !48357 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !48358
  store ptr %i.bh, ptr %i.d, align 8, !dbg !48359
  store i64 %.sroa.0.0.i, ptr %i.t, align 8, !dbg !48359
  store i64 0, ptr %i.u, align 8, !dbg !48359
  store i64 %.sroa.048.2, ptr %i.v, align 8, !dbg !48360
  %i.bj = load i64, ptr %i.w, align 8, !dbg !48361, !alias.scope !48264, !noalias !48265, !noundef !4270 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 0, !dbg !48361
  br i1 %i.bk, label %.thread, label %.lr.ph, !dbg !48361

.thread:                                          ; preds = %bb.m
  %i.bl = icmp sgt i64 %i.bf, -1, !dbg !48362
  call void @llvm.assume(i1 %i.bl), !dbg !48363
  store i64 %i.bf, ptr %i.e, align 8, !dbg !48364
  br label %.loopexit153, !dbg !48365

.lr.ph:                                           ; preds = %bb.m, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit
  %i.bm = phi i64 [ %i.ei, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit ], [ %i.bj, %bb.m ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !48268), !dbg !48366
  call void @llvm.experimental.noalias.scope.decl(metadata !48269), !dbg !48366
  %i.bn = load i64, ptr %i.t, align 8, !dbg !48367, !alias.scope !48269, !noalias !48268, !noundef !4270
  %i.bo = load i64, ptr %i.u, align 8, !dbg !48368, !alias.scope !48269, !noalias !48268, !noundef !4270 ; 12 uses
  %i.bp = sub i64 %i.bn, %i.bo, !dbg !48369       ; 2 uses
  %i.bq = icmp ult i64 %i.bm, %i.bp, !dbg !48370
  br i1 %i.bq, label %bb.r, label %bb.n, !dbg !48370

bb.n:                                             ; preds = %.lr.ph
  %.val4.i = load ptr, ptr %0, align 8, !dbg !48371, !alias.scope !48268, !noalias !48269, !nonnull !4270, !align !4488, !noundef !4270 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !48270), !dbg !48371
  call void @llvm.experimental.noalias.scope.decl(metadata !48271), !dbg !48372
  call void @llvm.experimental.noalias.scope.decl(metadata !48272), !dbg !48372
  %i.br = getelementptr inbounds nuw i8, ptr %.val4.i, i64 16, !dbg !48373 ; 3 uses
  %i.bs = load i64, ptr %i.br, align 8, !dbg !48373, !alias.scope !48271, !noalias !48273, !noundef !4270 ; 6 uses
  %i.bt = icmp eq i64 %i.bs, 0, !dbg !48373
  br i1 %i.bt, label %_RNvXNtNtCsh8eZTKRCwoO_3std2io5implsQINtB4_4TakeQQINtNtB4_6cursor6CursorQRShEENtB4_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.i, label %bb.o, !dbg !48373

bb.o:                                             ; preds = %bb.n
  %i.bu = icmp ult i64 %i.bs, %i.bp, !dbg !48374
  br i1 %i.bu, label %bb.q, label %bb.p, !dbg !48374

bb.p:                                             ; preds = %bb.o
  %.val4.i.i.i = load ptr, ptr %.val4.i, align 8, !dbg !48375, !alias.scope !48271, !noalias !48273, !nonnull !4270, !align !4488, !noundef !4270
  %.val.i.i.i.i = load ptr, ptr %.val4.i.i.i, align 8, !dbg !48376, !noalias !48274, !nonnull !4270, !align !4488, !noundef !4270
  %i.bv = call noundef ptr @_RNvXs3_NtNtCsh8eZTKRCwoO_3std2io6cursorINtB5_6CursorQRShENtB7_4Read8read_bufCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(16) %.val.i.i.i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d), !dbg !48377, !noalias !48275
  %i.bw = load i64, ptr %i.u, align 8, !dbg !48378, !alias.scope !48276, !noalias !48275, !noundef !4270 ; 2 uses
  %.neg.i.i.i = add i64 %i.bs, %i.bo, !dbg !48379
  %i.bx = sub i64 %.neg.i.i.i, %i.bw, !dbg !48380
  store i64 %i.bx, ptr %i.br, align 8, !dbg !48380, !alias.scope !48271, !noalias !48277
  br label %_RNvXNtNtCsh8eZTKRCwoO_3std2io5implsQINtB4_4TakeQQINtNtB4_6cursor6CursorQRShEENtB4_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.i, !dbg !48381

bb.q:                                             ; preds = %bb.o
  %i.by = load i64, ptr %i.v, align 8, !dbg !48382, !alias.scope !48276, !noalias !48275, !noundef !4270 ; 2 uses
  %i.bz = sub nuw i64 %i.by, %i.bo, !dbg !48383
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bz, i64 %i.bs), !dbg !48384
  %i.ca = load ptr, ptr %i.d, align 8, !dbg !48385, !alias.scope !48276, !noalias !48275, !nonnull !4270, !noundef !4270
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bo, !dbg !48386
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !48387, !noalias !48278
  store ptr %i.cb, ptr %i.b, align 8, !dbg !48388, !noalias !48278
  store i64 %i.bs, ptr %i.x, align 8, !dbg !48388, !noalias !48278
  store i64 0, ptr %i.y, align 8, !dbg !48388, !noalias !48278
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.z, align 8, !dbg !48389, !noalias !48278
  %.val3.i.i.i = load ptr, ptr %.val4.i, align 8, !dbg !48390, !alias.scope !48271, !noalias !48273, !nonnull !4270, !align !4488, !noundef !4270
  %.val.i6.i.i.i = load ptr, ptr %.val3.i.i.i, align 8, !dbg !48391, !noalias !48279, !nonnull !4270, !align !4488, !noundef !4270
  %i.cc = call noundef ptr @_RNvXs3_NtNtCsh8eZTKRCwoO_3std2io6cursorINtB5_6CursorQRShENtB7_4Read8read_bufCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(16) %.val.i6.i.i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b), !dbg !48392, !noalias !48278
  %i.cd = load i64, ptr %i.y, align 8, !dbg !48393, !noalias !48278, !noundef !4270 ; 2 uses
  %i.ce = load i64, ptr %i.z, align 8, !dbg !48394, !noalias !48278, !noundef !4270
  %i.cf = add i64 %i.cd, %i.bo, !dbg !48395       ; 3 uses
  store i64 %i.cf, ptr %i.u, align 8, !dbg !48395, !alias.scope !48276, !noalias !48275
  %.sroa.0.0.i7.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.cf, i64 %i.by), !dbg !48396
  %i.cg = add i64 %i.ce, %i.bo, !dbg !48397
  %.sroa.0.0.i8.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.cg, i64 %.sroa.0.0.i7.i.i.i), !dbg !48398
  store i64 %.sroa.0.0.i8.i.i.i, ptr %i.v, align 8, !dbg !48399, !alias.scope !48276, !noalias !48275
  %i.ch = sub i64 %i.bs, %i.cd, !dbg !48400
  store i64 %i.ch, ptr %i.br, align 8, !dbg !48400, !alias.scope !48271, !noalias !48273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !48401, !noalias !48278
  br label %_RNvXNtNtCsh8eZTKRCwoO_3std2io5implsQINtB4_4TakeQQINtNtB4_6cursor6CursorQRShEENtB4_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.i, !dbg !48381

_RNvXNtNtCsh8eZTKRCwoO_3std2io5implsQINtB4_4TakeQQINtNtB4_6cursor6CursorQRShEENtB4_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.i: ; preds = %bb.q, %bb.p, %bb.n
  %i.ci = phi i64 [ %i.bw, %bb.p ], [ %i.cf, %bb.q ], [ %i.bo, %bb.n ], !dbg !48402
  %.sroa.0.0.i.i.i = phi ptr [ %i.bv, %bb.p ], [ %i.cc, %bb.q ], [ null, %bb.n ], !dbg !48403
  %.neg.i = add i64 %i.bo, %i.bm, !dbg !48404
  %i.cj = sub i64 %.neg.i, %i.ci, !dbg !48405     ; 2 uses
  store i64 %i.cj, ptr %i.w, align 8, !dbg !48405, !alias.scope !48268, !noalias !48269
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtB5_6cursor6CursorQRShEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit, !dbg !48406

bb.r:                                             ; preds = %.lr.ph
  %i.ck = load i64, ptr %i.v, align 8, !dbg !48407, !alias.scope !48269, !noalias !48268, !noundef !4270 ; 2 uses
  %i.cl = sub nuw i64 %i.ck, %i.bo, !dbg !48408
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cl, i64 %i.bm), !dbg !48409 ; 4 uses
  %i.cm = load ptr, ptr %i.d, align 8, !dbg !48410, !alias.scope !48269, !noalias !48268, !nonnull !4270, !noundef !4270
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.bo, !dbg !48411 ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQIBL_QQINtNtB2_6cursor6CursorQRShEEEECseeLknQCOKOd_13polars_python:bb.a
  %i.de = phi i64 [ %i.cj, %_RNvXNtNtCsh8eZTKRCwoO_3std2io5implsQINtB4_4TakeQQINtNtB4_6cursor6CursorQRShEENtB4_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.i ], [ %i.dd, %bb.v ] ; 3 uses
  %.sroa.0.0.i65 = phi ptr [ %.sroa.0.0.i.i.i, %_RNvXNtNtCsh8eZTKRCwoO_3std2io5implsQINtB4_4TakeQQINtNtB4_6cursor6CursorQRShEENtB4_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.i ], [ %.sroa.0.0.i.i9.i, %bb.v ], !dbg !48448 ; 11 uses
  %.not60 = icmp eq ptr %.sroa.0.0.i65, null, !dbg !48449
  br i1 %.not60, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtB5_6cursor6CursorQRShEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread, label %bb.w, !dbg !48450

bb.w:                                             ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtB5_6cursor6CursorQRShEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit
  %i.df = ptrtoint ptr %.sroa.0.0.i65 to i64, !dbg !48451 ; 3 uses
  %i.dg = and i64 %i.df, 3, !dbg !48452
  switch i64 %i.dg, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.x
    i64 0, label %.split100
    i64 1, label %.split99
  ], !dbg !48453, !prof !4782

default.unreachable:                              ; preds = %bb.w
  unreachable

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtB5_6cursor6CursorQRShEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread: ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtB5_6cursor6CursorQRShEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit, %bb.x, %.split, %.split99, %.split100, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit
  %.not6081.ph = phi i1 [ true, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtB5_6cursor6CursorQRShEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit ], [ false, %.split100 ], [ false, %.split99 ], [ false, %bb.x ], [ false, %.split ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit ]
  %.sroa.0.0.i6579.ph = phi ptr [ null, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtB5_6cursor6CursorQRShEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit ], [ %.sroa.0.0.i65, %.split100 ], [ %.sroa.0.0.i65, %.split99 ], [ %.sroa.0.0.i65, %bb.x ], [ %.sroa.0.0.i65, %.split ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit ]
  %.pre133 = load i64, ptr %i.u, align 8, !dbg !48454 ; 5 uses
  %.pre134 = load i64, ptr %i.v, align 8, !dbg !48455 ; 2 uses
  %.pre135 = load i64, ptr %i.e, align 8, !dbg !48456 ; 2 uses
  %i.dh = sub nuw i64 %.pre134, %.pre133, !dbg !48457
  %i.di = icmp ne i64 %.pre134, %.sroa.0.0.i, !dbg !48458
  %i.dj = icmp sgt i64 %.pre135, -1, !dbg !48362
  call void @llvm.assume(i1 %i.dj), !dbg !48363
  %i.dk = add i64 %.pre135, %.pre133, !dbg !48459 ; 3 uses
  store i64 %i.dk, ptr %i.e, align 8, !dbg !48364
  br i1 %.not6081.ph, label %bb.ae, label %.loopexit152, !dbg !48460

.split:                                           ; preds = %bb.w
  %.mask103 = and i64 %i.df, -4294967296, !dbg !48461
  %i.dl = icmp eq i64 %.mask103, 17179869184, !dbg !48461
  br i1 %i.dl, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtB5_6cursor6CursorQRShEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread, !dbg !48462

.split100:                                        ; preds = %bb.w
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i65, i64 16, !dbg !48463
  %i.dn = load i8, ptr %i.dm, align 8, !dbg !48463, !range !4789, !noundef !4270
  %i.do = icmp eq i8 %i.dn, 35, !dbg !48464
  br i1 %i.do, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtB5_6cursor6CursorQRShEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread, !dbg !48462

.split99:                                         ; preds = %bb.w
  %i.dp = getelementptr i8, ptr %.sroa.0.0.i65, i64 -1, !dbg !48465 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dp) ]
  %i.dq = getelementptr i8, ptr %.sroa.0.0.i65, i64 15, !dbg !48466
  %i.dr = load i8, ptr %i.dq, align 8, !dbg !48466, !range !4789, !noundef !4270
  %i.ds = icmp eq i8 %i.dr, 35, !dbg !48467
  br i1 %i.ds, label %bb.y, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtB5_6cursor6CursorQRShEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread, !dbg !48462

bb.x:                                             ; preds = %bb.w
  %i.dt = icmp ult ptr %.sroa.0.0.i65, inttoptr (i64 180388626432 to ptr), !dbg !48468
  call void @llvm.assume(i1 %i.dt), !dbg !48469
  %.mask = and i64 %i.df, -4294967296, !dbg !48470
  %i.du = icmp eq i64 %.mask, 150323855360, !dbg !48470
  br i1 %i.du, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtB5_6cursor6CursorQRShEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread, !dbg !48462

bb.y:                                             ; preds = %.split99
  %.val.i.i.i.i.i = load ptr, ptr %i.dp, align 8, !dbg !48471 ; 5 uses
  %i.dv = getelementptr i8, ptr %.sroa.0.0.i65, i64 7, !dbg !48471
  %.val1.i.i.i.i.i = load ptr, ptr %i.dv, align 8, !dbg !48471, !nonnull !4270, !align !4488, !noundef !4270 ; 5 uses
  %i.dw = load ptr, ptr %.val1.i.i.i.i.i, align 8, !dbg !48472, !invariant.load !4270 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dw, null, !dbg !48472
  br i1 %.not.i.i.i.i.i.i.i, label %bb.aa, label %bb.z, !dbg !48472

bb.z:                                             ; preds = %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  invoke void %i.dw(ptr noundef nonnull %.val.i.i.i.i.i)
          to label %bb.aa unwind label %bb.ac, !dbg !48472

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dx = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !48473
  %i.dy = load i64, ptr %i.dx, align 8, !dbg !48473, !range !4635, !invariant.load !4270 ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 0, !dbg !48474
  br i1 %i.dz, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i, label %bb.ab, !dbg !48474

bb.ab:                                            ; preds = %bb.aa
  %i.ea = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16, !dbg !48473
  %i.eb = load i64, ptr %i.ea, align 8, !dbg !48475, !range !4615, !invariant.load !4270
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.dy, i64 noundef range(i64 1, 536870913) %i.eb) #53, !dbg !48476
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i, !dbg !48477

bb.ac:                                            ; preds = %bb.z
  %i.ec = landingpad { ptr, i32 }
          cleanup
  %i.ed = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !48478
  %i.ee = load i64, ptr %i.ed, align 8, !dbg !48478, !range !4635, !invariant.load !4270 ; 2 uses
  %i.ef = icmp eq i64 %i.ee, 0, !dbg !48479
  br i1 %i.ef, label %.body, label %bb.ad, !dbg !48479

bb.ad:                                            ; preds = %bb.ac
  %i.eg = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16, !dbg !48478
  %i.eh = load i64, ptr %i.eg, align 8, !dbg !48480, !range !4615, !invariant.load !4270
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.ee, i64 noundef range(i64 1, 536870913) %i.eh) #53, !dbg !48481
  br label %.body, !dbg !48482

.body:                                            ; preds = %bb.ad, %bb.ac
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dp, i64 noundef 24, i64 noundef 8) #53, !dbg !48483
  resume { ptr, i32 } %i.ec, !dbg !48484

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i: ; preds = %bb.ab, %bb.aa
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dp, i64 noundef 24, i64 noundef 8) #53, !dbg !48485
  %.pre132 = load i64, ptr %i.w, align 8, !dbg !48361, !alias.scope !48302, !noalias !48303
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, !dbg !48486

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.x, %.split, %.split100, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i
  %i.ei = phi i64 [ %i.de, %bb.x ], [ %i.de, %.split ], [ %i.de, %.split100 ], [ %.pre132, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i ], !dbg !48361 ; 2 uses
  %i.ej = icmp eq i64 %i.ei, 0, !dbg !48361
  br i1 %i.ej, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtB5_6cursor6CursorQRShEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread, label %.lr.ph, !dbg !48361

bb.ae:                                            ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtB5_6cursor6CursorQRShEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread
  %i.ek = icmp eq i64 %.pre133, 0, !dbg !48365
  br i1 %i.ek, label %.loopexit153, label %bb.af, !dbg !48365

.loopexit153:                                     ; preds = %bb.ae, %.thread
  %i.el = phi i64 [ %i.bf, %.thread ], [ %i.dk, %bb.ae ]
  %i.em = sub nsw i64 %i.el, %i.f, !dbg !48487
  br label %bb.ag, !dbg !48488

bb.af:                                            ; preds = %bb.ae
  %i.en = icmp ult i64 %.pre133, %.sroa.0.0.i, !dbg !48489
  %i.eo = add i32 %.sroa.019.0, 1, !dbg !48489
  %.sroa.019.1 = select i1 %i.en, i32 %i.eo, i32 0, !dbg !48489 ; 2 uses
  br i1 %.sroa.013.1, label %bb.ai, label %bb.ah, !dbg !48490

.loopexit152:                                     ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtB5_6cursor6CursorQRShEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread
  %i.ep = ptrtoint ptr %.sroa.0.0.i6579.ph to i64
  br label %bb.ag, !dbg !48491

bb.ag:                                            ; preds = %.loopexit152, %.loopexit153
  %.sroa.8.0 = phi i64 [ %i.em, %.loopexit153 ], [ %i.ep, %.loopexit152 ], !dbg !48492
  %.sroa.010.0 = phi i64 [ 0, %.loopexit153 ], [ 1, %.loopexit152 ], !dbg !48492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !48491
  br label %.loopexit, !dbg !48343

bb.ah:                                            ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.af
  %.sroa.050.4 = phi i64 [ -1, %bb.ak ], [ %i.et, %bb.aj ], [ %spec.select, %bb.ai ], [ %.sroa.050.3, %bb.af ], !dbg !48331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !48491
  br label %bb.f, !dbg !48327

bb.ai:                                            ; preds = %bb.af
  %i.eq = icmp sgt i32 %.sroa.019.1, 1
  %or.cond7 = select i1 %i.di, i1 %i.eq, i1 false, !dbg !48493
  %spec.select = select i1 %or.cond7, i64 -1, i64 %.sroa.050.3, !dbg !48493 ; 4 uses
  %i.er = icmp uge i64 %.sroa.0.0.i, %spec.select, !dbg !48494
  %i.es = icmp eq i64 %.pre133, %.sroa.0.0.i
  %or.cond2 = and i1 %i.es, %i.er, !dbg !48494
  br i1 %or.cond2, label %bb.aj, label %bb.ah, !dbg !48494

bb.aj:                                            ; preds = %bb.ai
  %i.et = shl nuw i64 %spec.select, 1, !dbg !48495
  %i.eu = icmp slt i64 %spec.select, 0, !dbg !48495
  br i1 %i.eu, label %bb.ak, label %bb.ah, !dbg !48496, !prof !4282

bb.ak:                                            ; preds = %bb.aj
  br label %bb.ah, !dbg !48497

.loopexit:                                        ; preds = %bb.l, %bb.i, %bb.k, %bb.ag
  %.sroa.8.1 = phi i64 [ %i.ay, %bb.i ], [ %i.bb, %bb.k ], [ %.sroa.8.0, %bb.ag ], [ 163208757251, %bb.l ], !dbg !48498
  %.sroa.010.1 = phi i64 [ 1, %bb.i ], [ 0, %bb.k ], [ %.sroa.010.0, %bb.ag ], [ 1, %bb.l ], !dbg !48498
  %i.ev = inttoptr i64 %.sroa.8.1 to ptr, !dbg !48499
  br label %bb.al, !dbg !48500

bb.al:                                            ; preds = %bb.e, %bb.d, %.loopexit
  %.sroa.8.2 = phi ptr [ %i.ev, %.loopexit ], [ %i.ai, %bb.d ], [ null, %bb.e ], !dbg !48332
  %.sroa.010.2 = phi i64 [ %.sroa.010.1, %.loopexit ], [ 1, %bb.d ], [ 0, %bb.e ], !dbg !48332
  %i.ew = insertvalue { i64, ptr } poison, i64 %.sroa.010.2, 0, !dbg !48499
  %i.ex = insertvalue { i64, ptr } %i.ew, ptr %.sroa.8.2, 1, !dbg !48499
  ret { i64, ptr } %i.ex, !dbg !48499
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQIBL_QQINtNtB2_6cursor6CursorRShEEEECseeLknQCOKOd_13polars_python(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !48501 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !48841 ; 7 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !48841, !noundef !4270 ; 7 uses
  %i.g = icmp sgt i64 %i.f, -1, !dbg !48842
  tail call void @llvm.assume(i1 %i.g), !dbg !48843
  %i.h = load i64, ptr %1, align 8, !dbg !48844, !range !4635, !noundef !4270 ; 2 uses
  %i.i = trunc nuw i64 %2 to i1, !dbg !48845      ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c, !dbg !48845

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %3, -1025, !dbg !48846
  br i1 %i.j, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtB4_6cursor6CursorRShEEEE0CseeLknQCOKOd_13polars_python.exit.thread, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtB4_6cursor6CursorRShEEEE0CseeLknQCOKOd_13polars_python.exit, !dbg !48847, !prof !4282

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtB4_6cursor6CursorRShEEEE0CseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  %i.k = add nuw i64 %3, 1024, !dbg !48846        ; 3 uses
  %i.l = and i64 %i.k, 8191, !dbg !48848          ; 2 uses
  %i.m = icmp eq i64 %i.l, 0, !dbg !48849
  %i.n = sub i64 %3, %i.l, !dbg !48849
  %i.o = add i64 %i.n, 9216, !dbg !48849          ; 2 uses
  %.not102 = icmp ult i64 %i.o, %i.k, !dbg !48849
  %.sroa.5.1.i = select i1 %.not102, i64 8192, i64 %i.o, !dbg !48850
  %.sroa.050.1 = select i1 %i.m, i64 %i.k, i64 %.sroa.5.1.i, !dbg !48849 ; 2 uses
  %i.p = icmp eq i64 %3, 0
  br i1 %i.p, label %bb.c, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtB4_6cursor6CursorRShEEEE0CseeLknQCOKOd_13polars_python.exit.thread, !dbg !48851

bb.c:                                             ; preds = %bb.a, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtB4_6cursor6CursorRShEEEE0CseeLknQCOKOd_13polars_python.exit
  %.sroa.050.0 = phi i64 [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtB4_6cursor6CursorRShEEEE0CseeLknQCOKOd_13polars_python.exit ], [ 8192, %bb.a ], !dbg !48852 ; 2 uses
  %.sroa.013.0 = xor i1 %i.i, true, !dbg !48853   ; 2 uses
  %i.q = sub nsw i64 %i.h, %i.f, !dbg !48854
  %i.r = icmp ult i64 %i.q, 32, !dbg !48854
  br i1 %i.r, label %bb.d, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtB4_6cursor6CursorRShEEEE0CseeLknQCOKOd_13polars_python.exit.thread, !dbg !48854

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtB4_6cursor6CursorRShEEEE0CseeLknQCOKOd_13polars_python.exit.thread: ; preds = %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtB4_6cursor6CursorRShEEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtB4_6cursor6CursorRShEEEE0CseeLknQCOKOd_13polars_python.exit
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtB4_6cursor6CursorRShEEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge ], [ %i.f, %bb.c ], [ %i.f, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtB4_6cursor6CursorRShEEEE0CseeLknQCOKOd_13polars_python.exit ], [ %i.f, %bb.b ], !dbg !48855
  %.sroa.050.2 = phi i64 [ %.sroa.050.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtB4_6cursor6CursorRShEEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge ], [ %.sroa.050.0, %bb.c ], [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtB4_6cursor6CursorRShEEEE0CseeLknQCOKOd_13polars_python.exit ], [ 8192, %bb.b ], !dbg !48856
  %.sroa.013.1 = phi i1 [ %.sroa.013.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtB4_6cursor6CursorRShEEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge ], [ %.sroa.013.0, %bb.c ], [ false, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtB4_6cursor6CursorRShEEEE0CseeLknQCOKOd_13polars_python.exit ], [ false, %bb.b ], !dbg !48857
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br label %bb.f, !dbg !48858

bb.d:                                             ; preds = %bb.c
  %i.ag = tail call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQIB15_QQINtNtB4_6cursor6CursorRShEEEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !48762 ; 2 uses
  %i.ah = extractvalue { i64, ptr } %i.ag, 0, !dbg !48762
  %i.ai = extractvalue { i64, ptr } %i.ag, 1, !dbg !48762 ; 2 uses
  %i.aj = trunc nuw i64 %i.ah to i1, !dbg !48859
  br i1 %i.aj, label %bb.al, label %bb.e, !dbg !48859

bb.e:                                             ; preds = %bb.d
  %i.ak = icmp eq ptr %i.ai, null, !dbg !48860
  br i1 %i.ak, label %bb.al, label %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtB4_6cursor6CursorRShEEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge, !dbg !48860

._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtB4_6cursor6CursorRShEEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge: ; preds = %bb.e
  %.pre.pre = load i64, ptr %i.e, align 8, !dbg !48855
  br label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtB4_6cursor6CursorRShEEEE0CseeLknQCOKOd_13polars_python.exit.thread, !dbg !48860

bb.f:                                             ; preds = %bb.ah, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtB4_6cursor6CursorRShEEEE0CseeLknQCOKOd_13polars_python.exit.thread
  %i.al = phi i64 [ %.pre, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtB4_6cursor6CursorRShEEEE0CseeLknQCOKOd_13polars_python.exit.thread ], [ %i.dk, %bb.ah ], !dbg !48855 ; 3 uses
  %.sroa.048.2 = phi i64 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtB4_6cursor6CursorRShEEEE0CseeLknQCOKOd_13polars_python.exit.thread ], [ %i.dh, %bb.ah ], !dbg !48861
  %.sroa.050.3 = phi i64 [ %.sroa.050.2, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtB4_6cursor6CursorRShEEEE0CseeLknQCOKOd_13polars_python.exit.thread ], [ %.sroa.050.4, %bb.ah ], !dbg !48862 ; 3 uses
  %.sroa.019.0 = phi i32 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtB4_6cursor6CursorRShEEEE0CseeLknQCOKOd_13polars_python.exit.thread ], [ %.sroa.019.1, %bb.ah ], !dbg !48863
  %i.am = icmp sgt i64 %i.al, -1, !dbg !48864
  call void @llvm.assume(i1 %i.am), !dbg !48865
  %i.an = load i64, ptr %1, align 8, !dbg !48866, !range !4635, !noundef !4270 ; 3 uses
  %i.ao = icmp eq i64 %i.al, %i.an, !dbg !48867
  %i.ap = icmp eq i64 %i.an, %i.h
  %or.cond62 = and i1 %i.ao, %i.ap, !dbg !48867
  br i1 %or.cond62, label %bb.h, label %bb.g, !dbg !48867

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.aq = phi i64 [ %.pre128, %._crit_edge ], [ %i.an, %bb.f ], !dbg !48868 ; 3 uses
  %i.ar = phi i64 [ %.pre127, %._crit_edge ], [ %i.al, %bb.f ], !dbg !48869 ; 3 uses
  %i.as = icmp sgt i64 %i.ar, -1, !dbg !48870
  call void @llvm.assume(i1 %i.as), !dbg !48871
  %i.at = icmp eq i64 %i.ar, %i.aq, !dbg !48872
  br i1 %i.at, label %bb.l, label %bb.m, !dbg !48872

bb.h:                                             ; preds = %bb.f
  %i.au = call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQIB15_QQINtNtB4_6cursor6CursorRShEEEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !48774 ; 2 uses
  %i.av = extractvalue { i64, ptr } %i.au, 0, !dbg !48774
  %i.aw = extractvalue { i64, ptr } %i.au, 1, !dbg !48774 ; 2 uses
  %i.ax = trunc nuw i64 %i.av to i1, !dbg !48873
  br i1 %i.ax, label %bb.i, label %bb.j, !dbg !48873

bb.i:                                             ; preds = %bb.h
  %i.ay = ptrtoint ptr %i.aw to i64, !dbg !48774
  br label %.loopexit, !dbg !48874

bb.j:                                             ; preds = %bb.h
  %i.az = icmp eq ptr %i.aw, null, !dbg !48875
  %.pre127 = load i64, ptr %i.e, align 8, !dbg !48869 ; 3 uses
  br i1 %i.az, label %bb.k, label %._crit_edge, !dbg !48875

._crit_edge:                                      ; preds = %bb.j
  %.pre128 = load i64, ptr %1, align 8, !dbg !48868, !range !4635
  br label %bb.g, !dbg !48875

bb.k:                                             ; preds = %bb.j
  %i.ba = icmp sgt i64 %.pre127, -1, !dbg !48876
  call void @llvm.assume(i1 %i.ba), !dbg !48877
  %i.bb = sub nsw i64 %.pre127, %i.f, !dbg !48878
  br label %.loopexit, !dbg !48879

bb.l:                                             ; preds = %bb.g
  %i.bc = call { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.aq, i64 noundef 32, i64 noundef 1, i64 noundef 1), !dbg !48880
  %i.bd = extractvalue { i64, i64 } %i.bc, 0, !dbg !48880
  %.not = icmp eq i64 %i.bd, -9223372036854775807, !dbg !48881
  br i1 %.not, label %._crit_edge129, label %.loopexit, !dbg !48882

._crit_edge129:                                   ; preds = %bb.l
  %.pre130 = load i64, ptr %i.e, align 8, !dbg !48883
  %.pre131 = load i64, ptr %1, align 8, !dbg !48884, !range !4635
  br label %bb.m, !dbg !48882

bb.m:                                             ; preds = %._crit_edge129, %bb.g
  %i.be = phi i64 [ %.pre131, %._crit_edge129 ], [ %i.aq, %bb.g ], !dbg !48884
  %i.bf = phi i64 [ %.pre130, %._crit_edge129 ], [ %i.ar, %bb.g ], !dbg !48883 ; 5 uses
  %i.bg = load ptr, ptr %i.s, align 8, !dbg !48885, !nonnull !4270, !noundef !4270
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bf, !dbg !48886
  %i.bi = sub i64 %i.be, %i.bf, !dbg !48887
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.050.3, i64 %i.bi), !dbg !48888 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !48889
  store ptr %i.bh, ptr %i.d, align 8, !dbg !48890
  store i64 %.sroa.0.0.i, ptr %i.t, align 8, !dbg !48890
  store i64 0, ptr %i.u, align 8, !dbg !48890
  store i64 %.sroa.048.2, ptr %i.v, align 8, !dbg !48891
  %i.bj = load i64, ptr %i.w, align 8, !dbg !48892, !alias.scope !48795, !noalias !48796, !noundef !4270 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 0, !dbg !48892
  br i1 %i.bk, label %.thread, label %.lr.ph, !dbg !48892

.thread:                                          ; preds = %bb.m
  %i.bl = icmp sgt i64 %i.bf, -1, !dbg !48893
  call void @llvm.assume(i1 %i.bl), !dbg !48894
  store i64 %i.bf, ptr %i.e, align 8, !dbg !48895
  br label %.loopexit153, !dbg !48896

.lr.ph:                                           ; preds = %bb.m, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit
  %i.bm = phi i64 [ %i.ei, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit ], [ %i.bj, %bb.m ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !48799), !dbg !48897
  call void @llvm.experimental.noalias.scope.decl(metadata !48800), !dbg !48897
  %i.bn = load i64, ptr %i.t, align 8, !dbg !48898, !alias.scope !48800, !noalias !48799, !noundef !4270
  %i.bo = load i64, ptr %i.u, align 8, !dbg !48899, !alias.scope !48800, !noalias !48799, !noundef !4270 ; 12 uses
  %i.bp = sub i64 %i.bn, %i.bo, !dbg !48900       ; 2 uses
  %i.bq = icmp ult i64 %i.bm, %i.bp, !dbg !48901
  br i1 %i.bq, label %bb.r, label %bb.n, !dbg !48901

bb.n:                                             ; preds = %.lr.ph
  %.val4.i = load ptr, ptr %0, align 8, !dbg !48902, !alias.scope !48799, !noalias !48800, !nonnull !4270, !align !4488, !noundef !4270 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !48801), !dbg !48902
  call void @llvm.experimental.noalias.scope.decl(metadata !48802), !dbg !48903
  call void @llvm.experimental.noalias.scope.decl(metadata !48803), !dbg !48903
  %i.br = getelementptr inbounds nuw i8, ptr %.val4.i, i64 16, !dbg !48904 ; 3 uses
  %i.bs = load i64, ptr %i.br, align 8, !dbg !48904, !alias.scope !48802, !noalias !48804, !noundef !4270 ; 6 uses
  %i.bt = icmp eq i64 %i.bs, 0, !dbg !48904
  br i1 %i.bt, label %_RNvXNtNtCsh8eZTKRCwoO_3std2io5implsQINtB4_4TakeQQINtNtB4_6cursor6CursorRShEENtB4_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.i, label %bb.o, !dbg !48904

bb.o:                                             ; preds = %bb.n
  %i.bu = icmp ult i64 %i.bs, %i.bp, !dbg !48905
  br i1 %i.bu, label %bb.q, label %bb.p, !dbg !48905

bb.p:                                             ; preds = %bb.o
  %.val4.i.i.i = load ptr, ptr %.val4.i, align 8, !dbg !48906, !alias.scope !48802, !noalias !48804, !nonnull !4270, !align !4488, !noundef !4270
  %.val.i.i.i.i = load ptr, ptr %.val4.i.i.i, align 8, !dbg !48907, !noalias !48805, !nonnull !4270, !align !4488, !noundef !4270
  %i.bv = call noundef ptr @_RNvXs3_NtNtCsh8eZTKRCwoO_3std2io6cursorINtB5_6CursorRShENtB7_4Read8read_bufCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d), !dbg !48908, !noalias !48806
  %i.bw = load i64, ptr %i.u, align 8, !dbg !48909, !alias.scope !48807, !noalias !48806, !noundef !4270 ; 2 uses
  %.neg.i.i.i = add i64 %i.bs, %i.bo, !dbg !48910
  %i.bx = sub i64 %.neg.i.i.i, %i.bw, !dbg !48911
  store i64 %i.bx, ptr %i.br, align 8, !dbg !48911, !alias.scope !48802, !noalias !48808
  br label %_RNvXNtNtCsh8eZTKRCwoO_3std2io5implsQINtB4_4TakeQQINtNtB4_6cursor6CursorRShEENtB4_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.i, !dbg !48912

bb.q:                                             ; preds = %bb.o
  %i.by = load i64, ptr %i.v, align 8, !dbg !48913, !alias.scope !48807, !noalias !48806, !noundef !4270 ; 2 uses
  %i.bz = sub nuw i64 %i.by, %i.bo, !dbg !48914
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bz, i64 %i.bs), !dbg !48915
  %i.ca = load ptr, ptr %i.d, align 8, !dbg !48916, !alias.scope !48807, !noalias !48806, !nonnull !4270, !noundef !4270
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bo, !dbg !48917
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !48918, !noalias !48809
  store ptr %i.cb, ptr %i.b, align 8, !dbg !48919, !noalias !48809
  store i64 %i.bs, ptr %i.x, align 8, !dbg !48919, !noalias !48809
  store i64 0, ptr %i.y, align 8, !dbg !48919, !noalias !48809
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.z, align 8, !dbg !48920, !noalias !48809
  %.val3.i.i.i = load ptr, ptr %.val4.i, align 8, !dbg !48921, !alias.scope !48802, !noalias !48804, !nonnull !4270, !align !4488, !noundef !4270
  %.val.i6.i.i.i = load ptr, ptr %.val3.i.i.i, align 8, !dbg !48922, !noalias !48810, !nonnull !4270, !align !4488, !noundef !4270
  %i.cc = call noundef ptr @_RNvXs3_NtNtCsh8eZTKRCwoO_3std2io6cursorINtB5_6CursorRShENtB7_4Read8read_bufCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i6.i.i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b), !dbg !48923, !noalias !48809
  %i.cd = load i64, ptr %i.y, align 8, !dbg !48924, !noalias !48809, !noundef !4270 ; 2 uses
  %i.ce = load i64, ptr %i.z, align 8, !dbg !48925, !noalias !48809, !noundef !4270
  %i.cf = add i64 %i.cd, %i.bo, !dbg !48926       ; 3 uses
  store i64 %i.cf, ptr %i.u, align 8, !dbg !48926, !alias.scope !48807, !noalias !48806
  %.sroa.0.0.i7.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.cf, i64 %i.by), !dbg !48927
  %i.cg = add i64 %i.ce, %i.bo, !dbg !48928
  %.sroa.0.0.i8.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.cg, i64 %.sroa.0.0.i7.i.i.i), !dbg !48929
  store i64 %.sroa.0.0.i8.i.i.i, ptr %i.v, align 8, !dbg !48930, !alias.scope !48807, !noalias !48806
  %i.ch = sub i64 %i.bs, %i.cd, !dbg !48931
  store i64 %i.ch, ptr %i.br, align 8, !dbg !48931, !alias.scope !48802, !noalias !48804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !48932, !noalias !48809
  br label %_RNvXNtNtCsh8eZTKRCwoO_3std2io5implsQINtB4_4TakeQQINtNtB4_6cursor6CursorRShEENtB4_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.i, !dbg !48912

_RNvXNtNtCsh8eZTKRCwoO_3std2io5implsQINtB4_4TakeQQINtNtB4_6cursor6CursorRShEENtB4_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.i: ; preds = %bb.q, %bb.p, %bb.n
  %i.ci = phi i64 [ %i.bw, %bb.p ], [ %i.cf, %bb.q ], [ %i.bo, %bb.n ], !dbg !48933
  %.sroa.0.0.i.i.i = phi ptr [ %i.bv, %bb.p ], [ %i.cc, %bb.q ], [ null, %bb.n ], !dbg !48934
  %.neg.i = add i64 %i.bo, %i.bm, !dbg !48935
  %i.cj = sub i64 %.neg.i, %i.ci, !dbg !48936     ; 2 uses
  store i64 %i.cj, ptr %i.w, align 8, !dbg !48936, !alias.scope !48799, !noalias !48800
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtB5_6cursor6CursorRShEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit, !dbg !48937

bb.r:                                             ; preds = %.lr.ph
  %i.ck = load i64, ptr %i.v, align 8, !dbg !48938, !alias.scope !48800, !noalias !48799, !noundef !4270 ; 2 uses
  %i.cl = sub nuw i64 %i.ck, %i.bo, !dbg !48939
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cl, i64 %i.bm), !dbg !48940 ; 4 uses
  %i.cm = load ptr, ptr %i.d, align 8, !dbg !48941, !alias.scope !48800, !noalias !48799, !nonnull !4270, !noundef !4270
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.bo, !dbg !48942 ; 2 uses
end_hunk_1
begin_hunk_2_@_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQIBL_QQINtNtB2_6cursor6CursorRShEEEECseeLknQCOKOd_13polars_python:bb.a

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtB5_6cursor6CursorRShEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit: ; preds = %_RNvXNtNtCsh8eZTKRCwoO_3std2io5implsQINtB4_4TakeQQINtNtB4_6cursor6CursorRShEENtB4_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.i, %bb.v
  %i.de = phi i64 [ %i.cj, %_RNvXNtNtCsh8eZTKRCwoO_3std2io5implsQINtB4_4TakeQQINtNtB4_6cursor6CursorRShEENtB4_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.i ], [ %i.dd, %bb.v ] ; 3 uses
  %.sroa.0.0.i65 = phi ptr [ %.sroa.0.0.i.i.i, %_RNvXNtNtCsh8eZTKRCwoO_3std2io5implsQINtB4_4TakeQQINtNtB4_6cursor6CursorRShEENtB4_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.i ], [ %.sroa.0.0.i.i9.i, %bb.v ], !dbg !48979 ; 11 uses
  %.not60 = icmp eq ptr %.sroa.0.0.i65, null, !dbg !48980
  br i1 %.not60, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtB5_6cursor6CursorRShEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread, label %bb.w, !dbg !48981

bb.w:                                             ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtB5_6cursor6CursorRShEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit
  %i.df = ptrtoint ptr %.sroa.0.0.i65 to i64, !dbg !48982 ; 3 uses
  %i.dg = and i64 %i.df, 3, !dbg !48983
  switch i64 %i.dg, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.x
    i64 0, label %.split100
    i64 1, label %.split99
  ], !dbg !48984, !prof !4782

default.unreachable:                              ; preds = %bb.w
  unreachable

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtB5_6cursor6CursorRShEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread: ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtB5_6cursor6CursorRShEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit, %bb.x, %.split, %.split99, %.split100, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit
  %.not6081.ph = phi i1 [ true, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtB5_6cursor6CursorRShEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit ], [ false, %.split100 ], [ false, %.split99 ], [ false, %bb.x ], [ false, %.split ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit ]
  %.sroa.0.0.i6579.ph = phi ptr [ null, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtB5_6cursor6CursorRShEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit ], [ %.sroa.0.0.i65, %.split100 ], [ %.sroa.0.0.i65, %.split99 ], [ %.sroa.0.0.i65, %bb.x ], [ %.sroa.0.0.i65, %.split ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit ]
  %.pre133 = load i64, ptr %i.u, align 8, !dbg !48985 ; 5 uses
  %.pre134 = load i64, ptr %i.v, align 8, !dbg !48986 ; 2 uses
  %.pre135 = load i64, ptr %i.e, align 8, !dbg !48987 ; 2 uses
  %i.dh = sub nuw i64 %.pre134, %.pre133, !dbg !48988
  %i.di = icmp ne i64 %.pre134, %.sroa.0.0.i, !dbg !48989
  %i.dj = icmp sgt i64 %.pre135, -1, !dbg !48893
  call void @llvm.assume(i1 %i.dj), !dbg !48894
  %i.dk = add i64 %.pre135, %.pre133, !dbg !48990 ; 3 uses
  store i64 %i.dk, ptr %i.e, align 8, !dbg !48895
  br i1 %.not6081.ph, label %bb.ae, label %.loopexit152, !dbg !48991

.split:                                           ; preds = %bb.w
  %.mask103 = and i64 %i.df, -4294967296, !dbg !48992
  %i.dl = icmp eq i64 %.mask103, 17179869184, !dbg !48992
  br i1 %i.dl, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtB5_6cursor6CursorRShEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread, !dbg !48993

.split100:                                        ; preds = %bb.w
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i65, i64 16, !dbg !48994
  %i.dn = load i8, ptr %i.dm, align 8, !dbg !48994, !range !4789, !noundef !4270
  %i.do = icmp eq i8 %i.dn, 35, !dbg !48995
  br i1 %i.do, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtB5_6cursor6CursorRShEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread, !dbg !48993

.split99:                                         ; preds = %bb.w
  %i.dp = getelementptr i8, ptr %.sroa.0.0.i65, i64 -1, !dbg !48996 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dp) ]
  %i.dq = getelementptr i8, ptr %.sroa.0.0.i65, i64 15, !dbg !48997
  %i.dr = load i8, ptr %i.dq, align 8, !dbg !48997, !range !4789, !noundef !4270
  %i.ds = icmp eq i8 %i.dr, 35, !dbg !48998
  br i1 %i.ds, label %bb.y, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtB5_6cursor6CursorRShEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread, !dbg !48993

bb.x:                                             ; preds = %bb.w
  %i.dt = icmp ult ptr %.sroa.0.0.i65, inttoptr (i64 180388626432 to ptr), !dbg !48999
  call void @llvm.assume(i1 %i.dt), !dbg !49000
  %.mask = and i64 %i.df, -4294967296, !dbg !49001
  %i.du = icmp eq i64 %.mask, 150323855360, !dbg !49001
  br i1 %i.du, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtB5_6cursor6CursorRShEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread, !dbg !48993

bb.y:                                             ; preds = %.split99
  %.val.i.i.i.i.i = load ptr, ptr %i.dp, align 8, !dbg !49002 ; 5 uses
  %i.dv = getelementptr i8, ptr %.sroa.0.0.i65, i64 7, !dbg !49002
  %.val1.i.i.i.i.i = load ptr, ptr %i.dv, align 8, !dbg !49002, !nonnull !4270, !align !4488, !noundef !4270 ; 5 uses
  %i.dw = load ptr, ptr %.val1.i.i.i.i.i, align 8, !dbg !49003, !invariant.load !4270 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dw, null, !dbg !49003
  br i1 %.not.i.i.i.i.i.i.i, label %bb.aa, label %bb.z, !dbg !49003

bb.z:                                             ; preds = %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  invoke void %i.dw(ptr noundef nonnull %.val.i.i.i.i.i)
          to label %bb.aa unwind label %bb.ac, !dbg !49003

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dx = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !49004
  %i.dy = load i64, ptr %i.dx, align 8, !dbg !49004, !range !4635, !invariant.load !4270 ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 0, !dbg !49005
  br i1 %i.dz, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i, label %bb.ab, !dbg !49005

bb.ab:                                            ; preds = %bb.aa
  %i.ea = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16, !dbg !49004
  %i.eb = load i64, ptr %i.ea, align 8, !dbg !49006, !range !4615, !invariant.load !4270
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.dy, i64 noundef range(i64 1, 536870913) %i.eb) #53, !dbg !49007
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i, !dbg !49008

bb.ac:                                            ; preds = %bb.z
  %i.ec = landingpad { ptr, i32 }
          cleanup
  %i.ed = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !49009
  %i.ee = load i64, ptr %i.ed, align 8, !dbg !49009, !range !4635, !invariant.load !4270 ; 2 uses
  %i.ef = icmp eq i64 %i.ee, 0, !dbg !49010
  br i1 %i.ef, label %.body, label %bb.ad, !dbg !49010

bb.ad:                                            ; preds = %bb.ac
  %i.eg = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16, !dbg !49009
  %i.eh = load i64, ptr %i.eg, align 8, !dbg !49011, !range !4615, !invariant.load !4270
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.ee, i64 noundef range(i64 1, 536870913) %i.eh) #53, !dbg !49012
  br label %.body, !dbg !49013

.body:                                            ; preds = %bb.ad, %bb.ac
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dp, i64 noundef 24, i64 noundef 8) #53, !dbg !49014
  resume { ptr, i32 } %i.ec, !dbg !49015

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i: ; preds = %bb.ab, %bb.aa
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dp, i64 noundef 24, i64 noundef 8) #53, !dbg !49016
  %.pre132 = load i64, ptr %i.w, align 8, !dbg !48892, !alias.scope !48833, !noalias !48834
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, !dbg !49017

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.x, %.split, %.split100, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i
  %i.ei = phi i64 [ %i.de, %bb.x ], [ %i.de, %.split ], [ %i.de, %.split100 ], [ %.pre132, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i ], !dbg !48892 ; 2 uses
  %i.ej = icmp eq i64 %i.ei, 0, !dbg !48892
  br i1 %i.ej, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtB5_6cursor6CursorRShEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread, label %.lr.ph, !dbg !48892

bb.ae:                                            ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtB5_6cursor6CursorRShEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread
  %i.ek = icmp eq i64 %.pre133, 0, !dbg !48896
  br i1 %i.ek, label %.loopexit153, label %bb.af, !dbg !48896

.loopexit153:                                     ; preds = %bb.ae, %.thread
  %i.el = phi i64 [ %i.bf, %.thread ], [ %i.dk, %bb.ae ]
  %i.em = sub nsw i64 %i.el, %i.f, !dbg !49018
  br label %bb.ag, !dbg !49019

bb.af:                                            ; preds = %bb.ae
  %i.en = icmp ult i64 %.pre133, %.sroa.0.0.i, !dbg !49020
  %i.eo = add i32 %.sroa.019.0, 1, !dbg !49020
  %.sroa.019.1 = select i1 %i.en, i32 %i.eo, i32 0, !dbg !49020 ; 2 uses
  br i1 %.sroa.013.1, label %bb.ai, label %bb.ah, !dbg !49021

.loopexit152:                                     ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtB5_6cursor6CursorRShEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread
  %i.ep = ptrtoint ptr %.sroa.0.0.i6579.ph to i64
  br label %bb.ag, !dbg !49022

bb.ag:                                            ; preds = %.loopexit152, %.loopexit153
  %.sroa.8.0 = phi i64 [ %i.em, %.loopexit153 ], [ %i.ep, %.loopexit152 ], !dbg !49023
  %.sroa.010.0 = phi i64 [ 0, %.loopexit153 ], [ 1, %.loopexit152 ], !dbg !49023
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !49022
  br label %.loopexit, !dbg !48874

bb.ah:                                            ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.af
  %.sroa.050.4 = phi i64 [ -1, %bb.ak ], [ %i.et, %bb.aj ], [ %spec.select, %bb.ai ], [ %.sroa.050.3, %bb.af ], !dbg !48862
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !49022
  br label %bb.f, !dbg !48858

bb.ai:                                            ; preds = %bb.af
  %i.eq = icmp sgt i32 %.sroa.019.1, 1
  %or.cond7 = select i1 %i.di, i1 %i.eq, i1 false, !dbg !49024
  %spec.select = select i1 %or.cond7, i64 -1, i64 %.sroa.050.3, !dbg !49024 ; 4 uses
  %i.er = icmp uge i64 %.sroa.0.0.i, %spec.select, !dbg !49025
  %i.es = icmp eq i64 %.pre133, %.sroa.0.0.i
  %or.cond2 = and i1 %i.es, %i.er, !dbg !49025
  br i1 %or.cond2, label %bb.aj, label %bb.ah, !dbg !49025

bb.aj:                                            ; preds = %bb.ai
  %i.et = shl nuw i64 %spec.select, 1, !dbg !49026
  %i.eu = icmp slt i64 %spec.select, 0, !dbg !49026
  br i1 %i.eu, label %bb.ak, label %bb.ah, !dbg !49027, !prof !4282

bb.ak:                                            ; preds = %bb.aj
  br label %bb.ah, !dbg !49028

.loopexit:                                        ; preds = %bb.l, %bb.i, %bb.k, %bb.ag
  %.sroa.8.1 = phi i64 [ %i.ay, %bb.i ], [ %i.bb, %bb.k ], [ %.sroa.8.0, %bb.ag ], [ 163208757251, %bb.l ], !dbg !49029
  %.sroa.010.1 = phi i64 [ 1, %bb.i ], [ 0, %bb.k ], [ %.sroa.010.0, %bb.ag ], [ 1, %bb.l ], !dbg !49029
  %i.ev = inttoptr i64 %.sroa.8.1 to ptr, !dbg !49030
  br label %bb.al, !dbg !49031

bb.al:                                            ; preds = %bb.e, %bb.d, %.loopexit
  %.sroa.8.2 = phi ptr [ %i.ev, %.loopexit ], [ %i.ai, %bb.d ], [ null, %bb.e ], !dbg !48863
  %.sroa.010.2 = phi i64 [ %.sroa.010.1, %.loopexit ], [ 1, %bb.d ], [ 0, %bb.e ], !dbg !48863
  %i.ew = insertvalue { i64, ptr } poison, i64 %.sroa.010.2, 0, !dbg !49030
  %i.ex = insertvalue { i64, ptr } %i.ew, ptr %.sroa.8.2, 1, !dbg !49030
  ret { i64, ptr } %i.ex, !dbg !49030
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQIBL_QQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEEECseeLknQCOKOd_13polars_python(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !49032 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !49283 ; 7 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !49283, !noundef !4270 ; 7 uses
  %i.e = icmp sgt i64 %i.d, -1, !dbg !49284
  tail call void @llvm.assume(i1 %i.e), !dbg !49285
  %i.f = load i64, ptr %1, align 8, !dbg !49286, !range !4635, !noundef !4270 ; 2 uses
  %i.g = trunc nuw i64 %2 to i1, !dbg !49287      ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !49287

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %3, -1025, !dbg !49288
  br i1 %i.h, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEEE0CseeLknQCOKOd_13polars_python.exit.thread, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEEE0CseeLknQCOKOd_13polars_python.exit, !dbg !49289, !prof !4282

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEEE0CseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  %i.i = add nuw i64 %3, 1024, !dbg !49288        ; 3 uses
  %i.j = and i64 %i.i, 8191, !dbg !49290          ; 2 uses
  %i.k = icmp eq i64 %i.j, 0, !dbg !49291
  %i.l = sub i64 %3, %i.j, !dbg !49291
  %i.m = add i64 %i.l, 9216, !dbg !49291          ; 2 uses
  %.not102 = icmp ult i64 %i.m, %i.i, !dbg !49291
  %.sroa.5.1.i = select i1 %.not102, i64 8192, i64 %i.m, !dbg !49292
  %.sroa.050.1 = select i1 %i.k, i64 %i.i, i64 %.sroa.5.1.i, !dbg !49291 ; 2 uses
  %i.n = icmp eq i64 %3, 0
  br i1 %i.n, label %bb.c, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEEE0CseeLknQCOKOd_13polars_python.exit.thread, !dbg !49293

bb.c:                                             ; preds = %bb.a, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEEE0CseeLknQCOKOd_13polars_python.exit
  %.sroa.050.0 = phi i64 [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEEE0CseeLknQCOKOd_13polars_python.exit ], [ 8192, %bb.a ], !dbg !49294 ; 2 uses
  %.sroa.013.0 = xor i1 %i.g, true, !dbg !49295   ; 2 uses
  %i.o = sub nsw i64 %i.f, %i.d, !dbg !49296
  %i.p = icmp ult i64 %i.o, 32, !dbg !49296
  br i1 %i.p, label %bb.d, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEEE0CseeLknQCOKOd_13polars_python.exit.thread, !dbg !49296

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEEE0CseeLknQCOKOd_13polars_python.exit.thread: ; preds = %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEEE0CseeLknQCOKOd_13polars_python.exit
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge ], [ %i.d, %bb.c ], [ %i.d, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEEE0CseeLknQCOKOd_13polars_python.exit ], [ %i.d, %bb.b ], !dbg !49297
  %.sroa.050.2 = phi i64 [ %.sroa.050.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge ], [ %.sroa.050.0, %bb.c ], [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEEE0CseeLknQCOKOd_13polars_python.exit ], [ 8192, %bb.b ], !dbg !49298
  %.sroa.013.1 = phi i1 [ %.sroa.013.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge ], [ %.sroa.013.0, %bb.c ], [ false, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEEE0CseeLknQCOKOd_13polars_python.exit ], [ false, %bb.b ], !dbg !49299
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br label %bb.f, !dbg !49300

bb.d:                                             ; preds = %bb.c
  %i.y = tail call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQIB15_QQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !49227 ; 2 uses
  %i.z = extractvalue { i64, ptr } %i.y, 0, !dbg !49227
  %i.aa = extractvalue { i64, ptr } %i.y, 1, !dbg !49227 ; 2 uses
  %i.ab = trunc nuw i64 %i.z to i1, !dbg !49301
  br i1 %i.ab, label %bb.af, label %bb.e, !dbg !49301

bb.e:                                             ; preds = %bb.d
  %i.ac = icmp eq ptr %i.aa, null, !dbg !49302
  br i1 %i.ac, label %bb.af, label %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge, !dbg !49302

._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge: ; preds = %bb.e
  %.pre.pre = load i64, ptr %i.c, align 8, !dbg !49297
  br label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEEE0CseeLknQCOKOd_13polars_python.exit.thread, !dbg !49302

bb.f:                                             ; preds = %bb.ab, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEEE0CseeLknQCOKOd_13polars_python.exit.thread
  %i.ad = phi i64 [ %.pre, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEEE0CseeLknQCOKOd_13polars_python.exit.thread ], [ %i.cb, %bb.ab ], !dbg !49297 ; 3 uses
  %.sroa.048.2 = phi i64 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEEE0CseeLknQCOKOd_13polars_python.exit.thread ], [ %i.by, %bb.ab ], !dbg !49303
  %.sroa.050.3 = phi i64 [ %.sroa.050.2, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEEE0CseeLknQCOKOd_13polars_python.exit.thread ], [ %.sroa.050.4, %bb.ab ], !dbg !49304 ; 3 uses
  %.sroa.019.0 = phi i32 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEEE0CseeLknQCOKOd_13polars_python.exit.thread ], [ %.sroa.019.1, %bb.ab ], !dbg !49305
  %i.ae = icmp sgt i64 %i.ad, -1, !dbg !49306
  tail call void @llvm.assume(i1 %i.ae), !dbg !49307
  %i.af = load i64, ptr %1, align 8, !dbg !49308, !range !4635, !noundef !4270 ; 3 uses
  %i.ag = icmp eq i64 %i.ad, %i.af, !dbg !49309
  %i.ah = icmp eq i64 %i.af, %i.f
  %or.cond62 = and i1 %i.ag, %i.ah, !dbg !49309
  br i1 %or.cond62, label %bb.h, label %bb.g, !dbg !49309

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.ai = phi i64 [ %.pre127, %._crit_edge ], [ %i.af, %bb.f ], !dbg !49310 ; 3 uses
  %i.aj = phi i64 [ %.pre126, %._crit_edge ], [ %i.ad, %bb.f ], !dbg !49311 ; 3 uses
  %i.ak = icmp sgt i64 %i.aj, -1, !dbg !49312
  tail call void @llvm.assume(i1 %i.ak), !dbg !49313
  %i.al = icmp eq i64 %i.aj, %i.ai, !dbg !49314
  br i1 %i.al, label %bb.l, label %bb.m, !dbg !49314

bb.h:                                             ; preds = %bb.f
  %i.am = tail call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQIB15_QQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !49239 ; 2 uses
  %i.an = extractvalue { i64, ptr } %i.am, 0, !dbg !49239
  %i.ao = extractvalue { i64, ptr } %i.am, 1, !dbg !49239 ; 2 uses
  %i.ap = trunc nuw i64 %i.an to i1, !dbg !49315
  br i1 %i.ap, label %bb.i, label %bb.j, !dbg !49315

bb.i:                                             ; preds = %bb.h
  %i.aq = ptrtoint ptr %i.ao to i64, !dbg !49239
  br label %.loopexit, !dbg !49316

bb.j:                                             ; preds = %bb.h
  %i.ar = icmp eq ptr %i.ao, null, !dbg !49317
  %.pre126 = load i64, ptr %i.c, align 8, !dbg !49311 ; 3 uses
  br i1 %i.ar, label %bb.k, label %._crit_edge, !dbg !49317

._crit_edge:                                      ; preds = %bb.j
  %.pre127 = load i64, ptr %1, align 8, !dbg !49310, !range !4635
  br label %bb.g, !dbg !49317

bb.k:                                             ; preds = %bb.j
  %i.as = icmp sgt i64 %.pre126, -1, !dbg !49318
  tail call void @llvm.assume(i1 %i.as), !dbg !49319
  %i.at = sub nsw i64 %.pre126, %i.d, !dbg !49320
  br label %.loopexit, !dbg !49321

bb.l:                                             ; preds = %bb.g
  %i.au = tail call { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.ai, i64 noundef 32, i64 noundef 1, i64 noundef 1), !dbg !49322
  %i.av = extractvalue { i64, i64 } %i.au, 0, !dbg !49322
  %.not = icmp eq i64 %i.av, -9223372036854775807, !dbg !49323
  br i1 %.not, label %._crit_edge128, label %.loopexit, !dbg !49324

._crit_edge128:                                   ; preds = %bb.l
  %.pre129 = load i64, ptr %i.c, align 8, !dbg !49325
  %.pre130 = load i64, ptr %1, align 8, !dbg !49326, !range !4635
  br label %bb.m, !dbg !49324

bb.m:                                             ; preds = %._crit_edge128, %bb.g
  %i.aw = phi i64 [ %.pre130, %._crit_edge128 ], [ %i.ai, %bb.g ], !dbg !49326
  %i.ax = phi i64 [ %.pre129, %._crit_edge128 ], [ %i.aj, %bb.g ], !dbg !49325 ; 5 uses
  %i.ay = load ptr, ptr %i.q, align 8, !dbg !49327, !nonnull !4270, !noundef !4270
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax, !dbg !49328
  %i.ba = sub i64 %i.aw, %i.ax, !dbg !49329
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.050.3, i64 %i.ba), !dbg !49330 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !49331
  store ptr %i.az, ptr %i.b, align 8, !dbg !49332
  store i64 %.sroa.0.0.i, ptr %i.r, align 8, !dbg !49332
  store i64 0, ptr %i.s, align 8, !dbg !49332
  store i64 %.sroa.048.2, ptr %i.t, align 8, !dbg !49333
  %.promoted = load i64, ptr %i.u, align 8, !alias.scope !49260, !noalias !49261 ; 2 uses
  %i.bb = icmp eq i64 %.promoted, 0, !dbg !49334
  br i1 %i.bb, label %.thread, label %.lr.ph, !dbg !49334

.thread:                                          ; preds = %bb.m
  %i.bc = icmp sgt i64 %i.ax, -1, !dbg !49335
  tail call void @llvm.assume(i1 %i.bc), !dbg !49336
  store i64 %i.ax, ptr %i.c, align 8, !dbg !49337
  br label %.loopexit146, !dbg !49338

.lr.ph:                                           ; preds = %bb.m
  %.val4.i = load ptr, ptr %0, align 8, !nonnull !4270, !align !4488 ; 2 uses
  br label %bb.n, !dbg !49334

bb.n:                                             ; preds = %.lr.ph, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit
  %i.bd = phi i64 [ 0, %.lr.ph ], [ %i.bv, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit ], !dbg !49339 ; 6 uses
  %i.be = phi i64 [ %.promoted, %.lr.ph ], [ %.sink, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49260), !dbg !49340
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49261), !dbg !49340
  %i.bf = load i64, ptr %i.r, align 8, !dbg !49341, !alias.scope !49261, !noalias !49260, !noundef !4270
  %i.bg = sub i64 %i.bf, %i.bd, !dbg !49342
  %i.bh = icmp ult i64 %i.be, %i.bg, !dbg !49343
  br i1 %i.bh, label %bb.p, label %bb.o, !dbg !49343

bb.o:                                             ; preds = %bb.n
  %i.bi = call fastcc noalias noundef ptr @_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val4.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b), !dbg !49344, !noalias !49260
  %i.bj = load i64, ptr %i.s, align 8, !dbg !49345, !alias.scope !49261, !noalias !49260, !noundef !4270 ; 2 uses
  %.neg.i = add i64 %i.bd, %i.be, !dbg !49346
  %i.bk = sub i64 %.neg.i, %i.bj, !dbg !49347
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit, !dbg !49348

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %i.t, align 8, !dbg !49349, !alias.scope !49261, !noalias !49260, !noundef !4270 ; 2 uses
  %i.bm = sub nuw i64 %i.bl, %i.bd, !dbg !49350
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.bm, i64 %i.be), !dbg !49351
  %i.bn = load ptr, ptr %i.b, align 8, !dbg !49352, !alias.scope !49261, !noalias !49260, !nonnull !4270, !noundef !4270
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bd, !dbg !49353
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !49354, !noalias !49266
  store ptr %i.bo, ptr %i.a, align 8, !dbg !49355, !noalias !49266
  store i64 %i.be, ptr %i.v, align 8, !dbg !49355, !noalias !49266
  store i64 0, ptr %i.w, align 8, !dbg !49355, !noalias !49266
  store i64 %.sroa.0.0.i.i, ptr %i.x, align 8, !dbg !49356, !noalias !49266
  %i.bp = call fastcc noalias noundef ptr @_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val4.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a), !dbg !49357, !noalias !49266
  %i.bq = load i64, ptr %i.w, align 8, !dbg !49358, !noalias !49266, !noundef !4270 ; 2 uses
  %i.br = load i64, ptr %i.x, align 8, !dbg !49359, !noalias !49266, !noundef !4270
  %i.bs = add i64 %i.bq, %i.bd, !dbg !49360       ; 3 uses
  store i64 %i.bs, ptr %i.s, align 8, !dbg !49360, !alias.scope !49261, !noalias !49260
  %.sroa.0.0.i6.i = tail call noundef i64 @llvm.umax.i64(i64 %i.bs, i64 %i.bl), !dbg !49361
  %i.bt = add i64 %i.br, %i.bd, !dbg !49362
  %.sroa.0.0.i7.i = tail call noundef i64 @llvm.umax.i64(i64 %i.bt, i64 %.sroa.0.0.i6.i), !dbg !49363
  store i64 %.sroa.0.0.i7.i, ptr %i.t, align 8, !dbg !49364, !alias.scope !49261, !noalias !49260
  %i.bu = sub i64 %i.be, %i.bq, !dbg !49365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !49366, !noalias !49266
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit, !dbg !49348

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit: ; preds = %bb.o, %bb.p
  %i.bv = phi i64 [ %i.bs, %bb.p ], [ %i.bj, %bb.o ] ; 6 uses
  %.sink = phi i64 [ %i.bu, %bb.p ], [ %i.bk, %bb.o ], !dbg !49367 ; 3 uses
  %.sroa.0.0.i65 = phi ptr [ %i.bp, %bb.p ], [ %i.bi, %bb.o ], !dbg !49367 ; 11 uses
  store i64 %.sink, ptr %i.u, align 8, !dbg !49367, !alias.scope !49260, !noalias !49261
  %.not60 = icmp eq ptr %.sroa.0.0.i65, null, !dbg !49368
  br i1 %.not60, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread, label %bb.q, !dbg !49369

bb.q:                                             ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit
  %i.bw = ptrtoint ptr %.sroa.0.0.i65 to i64, !dbg !49370 ; 3 uses
  %i.bx = and i64 %i.bw, 3, !dbg !49371
  switch i64 %i.bx, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.r
    i64 0, label %.split100
    i64 1, label %.split99
  ], !dbg !49372, !prof !4782

default.unreachable:                              ; preds = %bb.q
  unreachable

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread: ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit, %bb.r, %.split, %.split99, %.split100, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit
  %.not6081.ph = phi i1 [ true, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit ], [ false, %.split100 ], [ false, %.split99 ], [ false, %bb.r ], [ false, %.split ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit ]
  %.sroa.0.0.i6579.ph = phi ptr [ null, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit ], [ %.sroa.0.0.i65, %.split100 ], [ %.sroa.0.0.i65, %.split99 ], [ %.sroa.0.0.i65, %bb.r ], [ %.sroa.0.0.i65, %.split ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit ]
  %.pre131 = load i64, ptr %i.t, align 8, !dbg !49373 ; 2 uses
  %.pre132 = load i64, ptr %i.c, align 8, !dbg !49374 ; 2 uses
  %i.by = sub nuw i64 %.pre131, %i.bv, !dbg !49375
  %i.bz = icmp ne i64 %.pre131, %.sroa.0.0.i, !dbg !49376
  %i.ca = icmp sgt i64 %.pre132, -1, !dbg !49335
  tail call void @llvm.assume(i1 %i.ca), !dbg !49336
  %i.cb = add i64 %.pre132, %i.bv, !dbg !49377    ; 3 uses
  store i64 %i.cb, ptr %i.c, align 8, !dbg !49337
  br i1 %.not6081.ph, label %bb.y, label %.loopexit145, !dbg !49378

.split:                                           ; preds = %bb.q
  %.mask103 = and i64 %i.bw, -4294967296, !dbg !49379
  %i.cc = icmp eq i64 %.mask103, 17179869184, !dbg !49379
  br i1 %i.cc, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread, !dbg !49380

.split100:                                        ; preds = %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i65, i64 16, !dbg !49381
  %i.ce = load i8, ptr %i.cd, align 8, !dbg !49381, !range !4789, !noundef !4270
  %i.cf = icmp eq i8 %i.ce, 35, !dbg !49382
  br i1 %i.cf, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread, !dbg !49380

.split99:                                         ; preds = %bb.q
  %i.cg = getelementptr i8, ptr %.sroa.0.0.i65, i64 -1, !dbg !49383 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cg) ]
  %i.ch = getelementptr i8, ptr %.sroa.0.0.i65, i64 15, !dbg !49384
  %i.ci = load i8, ptr %i.ch, align 8, !dbg !49384, !range !4789, !noundef !4270
  %i.cj = icmp eq i8 %i.ci, 35, !dbg !49385
  br i1 %i.cj, label %bb.s, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread, !dbg !49380

bb.r:                                             ; preds = %bb.q
  %i.ck = icmp ult ptr %.sroa.0.0.i65, inttoptr (i64 180388626432 to ptr), !dbg !49386
  tail call void @llvm.assume(i1 %i.ck), !dbg !49387
  %.mask = and i64 %i.bw, -4294967296, !dbg !49388
  %i.cl = icmp eq i64 %.mask, 150323855360, !dbg !49388
  br i1 %i.cl, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread, !dbg !49380

bb.s:                                             ; preds = %.split99
  %.val.i.i.i.i.i = load ptr, ptr %i.cg, align 8, !dbg !49389 ; 5 uses
  %i.cm = getelementptr i8, ptr %.sroa.0.0.i65, i64 7, !dbg !49389
  %.val1.i.i.i.i.i = load ptr, ptr %i.cm, align 8, !dbg !49389, !nonnull !4270, !align !4488, !noundef !4270 ; 5 uses
  %i.cn = load ptr, ptr %.val1.i.i.i.i.i, align 8, !dbg !49390, !invariant.load !4270 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cn, null, !dbg !49390
  br i1 %.not.i.i.i.i.i.i.i, label %bb.u, label %bb.t, !dbg !49390

bb.t:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  invoke void %i.cn(ptr noundef nonnull %.val.i.i.i.i.i)
          to label %bb.u unwind label %bb.w, !dbg !49390

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.co = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !49391
  %i.cp = load i64, ptr %i.co, align 8, !dbg !49391, !range !4635, !invariant.load !4270 ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 0, !dbg !49392
  br i1 %i.cq, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i, label %bb.v, !dbg !49392

bb.v:                                             ; preds = %bb.u
  %i.cr = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16, !dbg !49391
  %i.cs = load i64, ptr %i.cr, align 8, !dbg !49393, !range !4615, !invariant.load !4270
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.cp, i64 noundef range(i64 1, 536870913) %i.cs) #53, !dbg !49394
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i, !dbg !49395

bb.w:                                             ; preds = %bb.t
  %i.ct = landingpad { ptr, i32 }
          cleanup
  %i.cu = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !49396
  %i.cv = load i64, ptr %i.cu, align 8, !dbg !49396, !range !4635, !invariant.load !4270 ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 0, !dbg !49397
  br i1 %i.cw, label %.body, label %bb.x, !dbg !49397

bb.x:                                             ; preds = %bb.w
  %i.cx = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16, !dbg !49396
  %i.cy = load i64, ptr %i.cx, align 8, !dbg !49398, !range !4615, !invariant.load !4270
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.cv, i64 noundef range(i64 1, 536870913) %i.cy) #53, !dbg !49399
  br label %.body, !dbg !49400

.body:                                            ; preds = %bb.x, %bb.w
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cg, i64 noundef 24, i64 noundef 8) #53, !dbg !49401
  resume { ptr, i32 } %i.ct, !dbg !49402

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i: ; preds = %bb.v, %bb.u
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cg, i64 noundef 24, i64 noundef 8) #53, !dbg !49403
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, !dbg !49404

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.r, %.split, %.split100, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i
  %i.cz = icmp eq i64 %.sink, 0, !dbg !49334
  br i1 %i.cz, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread, label %bb.n, !dbg !49334

bb.y:                                             ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread
  %i.da = icmp eq i64 %i.bv, 0, !dbg !49338
  br i1 %i.da, label %.loopexit146, label %bb.z, !dbg !49338

.loopexit146:                                     ; preds = %bb.y, %.thread
  %i.db = phi i64 [ %i.ax, %.thread ], [ %i.cb, %bb.y ]
  %i.dc = sub nsw i64 %i.db, %i.d, !dbg !49405
  br label %bb.aa, !dbg !49406

bb.z:                                             ; preds = %bb.y
  %i.dd = icmp ult i64 %i.bv, %.sroa.0.0.i, !dbg !49407
  %i.de = add i32 %.sroa.019.0, 1, !dbg !49407
  %.sroa.019.1 = select i1 %i.dd, i32 %i.de, i32 0, !dbg !49407 ; 2 uses
  br i1 %.sroa.013.1, label %bb.ac, label %bb.ab, !dbg !49408

.loopexit145:                                     ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread
  %i.df = ptrtoint ptr %.sroa.0.0.i6579.ph to i64
  br label %bb.aa, !dbg !49409

bb.aa:                                            ; preds = %.loopexit145, %.loopexit146
  %.sroa.8.0 = phi i64 [ %i.dc, %.loopexit146 ], [ %i.df, %.loopexit145 ], !dbg !49410
  %.sroa.010.0 = phi i64 [ 0, %.loopexit146 ], [ 1, %.loopexit145 ], !dbg !49410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !49409
  br label %.loopexit, !dbg !49316

bb.ab:                                            ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.z
  %.sroa.050.4 = phi i64 [ -1, %bb.ae ], [ %i.dj, %bb.ad ], [ %spec.select, %bb.ac ], [ %.sroa.050.3, %bb.z ], !dbg !49304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !49409
  br label %bb.f, !dbg !49300

bb.ac:                                            ; preds = %bb.z
  %i.dg = icmp sgt i32 %.sroa.019.1, 1
  %or.cond7 = select i1 %i.bz, i1 %i.dg, i1 false, !dbg !49411
  %spec.select = select i1 %or.cond7, i64 -1, i64 %.sroa.050.3, !dbg !49411 ; 4 uses
  %i.dh = icmp uge i64 %.sroa.0.0.i, %spec.select, !dbg !49412
  %i.di = icmp eq i64 %i.bv, %.sroa.0.0.i
  %or.cond2 = and i1 %i.di, %i.dh, !dbg !49412
  br i1 %or.cond2, label %bb.ad, label %bb.ab, !dbg !49412

bb.ad:                                            ; preds = %bb.ac
  %i.dj = shl nuw i64 %spec.select, 1, !dbg !49413
  %i.dk = icmp slt i64 %spec.select, 0, !dbg !49413
  br i1 %i.dk, label %bb.ae, label %bb.ab, !dbg !49414, !prof !4282

bb.ae:                                            ; preds = %bb.ad
  br label %bb.ab, !dbg !49415

.loopexit:                                        ; preds = %bb.l, %bb.i, %bb.k, %bb.aa
  %.sroa.8.1 = phi i64 [ %i.aq, %bb.i ], [ %i.at, %bb.k ], [ %.sroa.8.0, %bb.aa ], [ 163208757251, %bb.l ], !dbg !49416
  %.sroa.010.1 = phi i64 [ 1, %bb.i ], [ 0, %bb.k ], [ %.sroa.010.0, %bb.aa ], [ 1, %bb.l ], !dbg !49416
  %i.dl = inttoptr i64 %.sroa.8.1 to ptr, !dbg !49417
  br label %bb.af, !dbg !49418

bb.af:                                            ; preds = %bb.e, %bb.d, %.loopexit
  %.sroa.8.2 = phi ptr [ %i.dl, %.loopexit ], [ %i.aa, %bb.d ], [ null, %bb.e ], !dbg !49305
  %.sroa.010.2 = phi i64 [ %.sroa.010.1, %.loopexit ], [ 1, %bb.d ], [ 0, %bb.e ], !dbg !49305
  %i.dm = insertvalue { i64, ptr } poison, i64 %.sroa.010.2, 0, !dbg !49417
  %i.dn = insertvalue { i64, ptr } %i.dm, ptr %.sroa.8.2, 1, !dbg !49417
  ret { i64, ptr } %i.dn, !dbg !49417
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQIBL_QQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEEECseeLknQCOKOd_13polars_python(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !49419 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !49800 ; 7 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !49800, !noundef !4270 ; 7 uses
  %i.g = icmp sgt i64 %i.f, -1, !dbg !49801
  tail call void @llvm.assume(i1 %i.g), !dbg !49802
  %i.h = load i64, ptr %1, align 8, !dbg !49803, !range !4635, !noundef !4270 ; 2 uses
  %i.i = trunc nuw i64 %2 to i1, !dbg !49804      ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c, !dbg !49804

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %3, -1025, !dbg !49805
  br i1 %i.j, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEEE0CseeLknQCOKOd_13polars_python.exit.thread, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEEE0CseeLknQCOKOd_13polars_python.exit, !dbg !49806, !prof !4282

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEEE0CseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  %i.k = add nuw i64 %3, 1024, !dbg !49805        ; 3 uses
  %i.l = and i64 %i.k, 8191, !dbg !49807          ; 2 uses
  %i.m = icmp eq i64 %i.l, 0, !dbg !49808
  %i.n = sub i64 %3, %i.l, !dbg !49808
  %i.o = add i64 %i.n, 9216, !dbg !49808          ; 2 uses
  %.not102 = icmp ult i64 %i.o, %i.k, !dbg !49808
  %.sroa.5.1.i = select i1 %.not102, i64 8192, i64 %i.o, !dbg !49809
  %.sroa.050.1 = select i1 %i.m, i64 %i.k, i64 %.sroa.5.1.i, !dbg !49808 ; 2 uses
  %i.p = icmp eq i64 %3, 0
  br i1 %i.p, label %bb.c, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEEE0CseeLknQCOKOd_13polars_python.exit.thread, !dbg !49810

bb.c:                                             ; preds = %bb.a, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEEE0CseeLknQCOKOd_13polars_python.exit
  %.sroa.050.0 = phi i64 [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEEE0CseeLknQCOKOd_13polars_python.exit ], [ 8192, %bb.a ], !dbg !49811 ; 2 uses
  %.sroa.013.0 = xor i1 %i.i, true, !dbg !49812   ; 2 uses
  %i.q = sub nsw i64 %i.h, %i.f, !dbg !49813
  %i.r = icmp ult i64 %i.q, 32, !dbg !49813
  br i1 %i.r, label %bb.d, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEEE0CseeLknQCOKOd_13polars_python.exit.thread, !dbg !49813

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEEE0CseeLknQCOKOd_13polars_python.exit.thread: ; preds = %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEEE0CseeLknQCOKOd_13polars_python.exit
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge ], [ %i.f, %bb.c ], [ %i.f, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEEE0CseeLknQCOKOd_13polars_python.exit ], [ %i.f, %bb.b ], !dbg !49814
  %.sroa.050.2 = phi i64 [ %.sroa.050.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge ], [ %.sroa.050.0, %bb.c ], [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEEE0CseeLknQCOKOd_13polars_python.exit ], [ 8192, %bb.b ], !dbg !49815
  %.sroa.013.1 = phi i1 [ %.sroa.013.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge ], [ %.sroa.013.0, %bb.c ], [ false, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEEE0CseeLknQCOKOd_13polars_python.exit ], [ false, %bb.b ], !dbg !49816
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br label %bb.f, !dbg !49817

bb.d:                                             ; preds = %bb.c
  %i.ag = tail call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQIB15_QQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !49705 ; 2 uses
  %i.ah = extractvalue { i64, ptr } %i.ag, 0, !dbg !49705
  %i.ai = extractvalue { i64, ptr } %i.ag, 1, !dbg !49705 ; 2 uses
  %i.aj = trunc nuw i64 %i.ah to i1, !dbg !49818
  br i1 %i.aj, label %bb.al, label %bb.e, !dbg !49818

bb.e:                                             ; preds = %bb.d
  %i.ak = icmp eq ptr %i.ai, null, !dbg !49819
  br i1 %i.ak, label %bb.al, label %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge, !dbg !49819

._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge: ; preds = %bb.e
  %.pre.pre = load i64, ptr %i.e, align 8, !dbg !49814
  br label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEEE0CseeLknQCOKOd_13polars_python.exit.thread, !dbg !49819

bb.f:                                             ; preds = %bb.ah, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEEE0CseeLknQCOKOd_13polars_python.exit.thread
  %i.al = phi i64 [ %.pre, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEEE0CseeLknQCOKOd_13polars_python.exit.thread ], [ %i.ee, %bb.ah ], !dbg !49814 ; 3 uses
  %.sroa.048.2 = phi i64 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEEE0CseeLknQCOKOd_13polars_python.exit.thread ], [ %i.eb, %bb.ah ], !dbg !49820
  %.sroa.050.3 = phi i64 [ %.sroa.050.2, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEEE0CseeLknQCOKOd_13polars_python.exit.thread ], [ %.sroa.050.4, %bb.ah ], !dbg !49821 ; 3 uses
  %.sroa.019.0 = phi i32 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEEE0CseeLknQCOKOd_13polars_python.exit.thread ], [ %.sroa.019.1, %bb.ah ], !dbg !49822
  %i.am = icmp sgt i64 %i.al, -1, !dbg !49823
  call void @llvm.assume(i1 %i.am), !dbg !49824
  %i.an = load i64, ptr %1, align 8, !dbg !49825, !range !4635, !noundef !4270 ; 3 uses
  %i.ao = icmp eq i64 %i.al, %i.an, !dbg !49826
  %i.ap = icmp eq i64 %i.an, %i.h
  %or.cond62 = and i1 %i.ao, %i.ap, !dbg !49826
  br i1 %or.cond62, label %bb.h, label %bb.g, !dbg !49826

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.aq = phi i64 [ %.pre128, %._crit_edge ], [ %i.an, %bb.f ], !dbg !49827 ; 3 uses
  %i.ar = phi i64 [ %.pre127, %._crit_edge ], [ %i.al, %bb.f ], !dbg !49828 ; 3 uses
  %i.as = icmp sgt i64 %i.ar, -1, !dbg !49829
  call void @llvm.assume(i1 %i.as), !dbg !49830
  %i.at = icmp eq i64 %i.ar, %i.aq, !dbg !49831
  br i1 %i.at, label %bb.l, label %bb.m, !dbg !49831

bb.h:                                             ; preds = %bb.f
  %i.au = call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQIB15_QQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !49717 ; 2 uses
  %i.av = extractvalue { i64, ptr } %i.au, 0, !dbg !49717
  %i.aw = extractvalue { i64, ptr } %i.au, 1, !dbg !49717 ; 2 uses
  %i.ax = trunc nuw i64 %i.av to i1, !dbg !49832
  br i1 %i.ax, label %bb.i, label %bb.j, !dbg !49832

bb.i:                                             ; preds = %bb.h
  %i.ay = ptrtoint ptr %i.aw to i64, !dbg !49717
  br label %.loopexit, !dbg !49833

bb.j:                                             ; preds = %bb.h
  %i.az = icmp eq ptr %i.aw, null, !dbg !49834
  %.pre127 = load i64, ptr %i.e, align 8, !dbg !49828 ; 3 uses
  br i1 %i.az, label %bb.k, label %._crit_edge, !dbg !49834

._crit_edge:                                      ; preds = %bb.j
  %.pre128 = load i64, ptr %1, align 8, !dbg !49827, !range !4635
  br label %bb.g, !dbg !49834

bb.k:                                             ; preds = %bb.j
  %i.ba = icmp sgt i64 %.pre127, -1, !dbg !49835
  call void @llvm.assume(i1 %i.ba), !dbg !49836
  %i.bb = sub nsw i64 %.pre127, %i.f, !dbg !49837
  br label %.loopexit, !dbg !49838

bb.l:                                             ; preds = %bb.g
  %i.bc = call { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.aq, i64 noundef 32, i64 noundef 1, i64 noundef 1), !dbg !49839
  %i.bd = extractvalue { i64, i64 } %i.bc, 0, !dbg !49839
  %.not = icmp eq i64 %i.bd, -9223372036854775807, !dbg !49840
  br i1 %.not, label %._crit_edge129, label %.loopexit, !dbg !49841

._crit_edge129:                                   ; preds = %bb.l
  %.pre130 = load i64, ptr %i.e, align 8, !dbg !49842
  %.pre131 = load i64, ptr %1, align 8, !dbg !49843, !range !4635
  br label %bb.m, !dbg !49841

bb.m:                                             ; preds = %._crit_edge129, %bb.g
  %i.be = phi i64 [ %.pre131, %._crit_edge129 ], [ %i.aq, %bb.g ], !dbg !49843
  %i.bf = phi i64 [ %.pre130, %._crit_edge129 ], [ %i.ar, %bb.g ], !dbg !49842 ; 5 uses
  %i.bg = load ptr, ptr %i.s, align 8, !dbg !49844, !nonnull !4270, !noundef !4270
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bf, !dbg !49845
  %i.bi = sub i64 %i.be, %i.bf, !dbg !49846
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.050.3, i64 %i.bi), !dbg !49847 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !49848
  store ptr %i.bh, ptr %i.d, align 8, !dbg !49849
  store i64 %.sroa.0.0.i, ptr %i.t, align 8, !dbg !49849
  store i64 0, ptr %i.u, align 8, !dbg !49849
  store i64 %.sroa.048.2, ptr %i.v, align 8, !dbg !49850
  %i.bj = load i64, ptr %i.w, align 8, !dbg !49851, !alias.scope !49738, !noalias !49739, !noundef !4270 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 0, !dbg !49851
  br i1 %i.bk, label %.thread, label %.lr.ph, !dbg !49851

.thread:                                          ; preds = %bb.m
  %i.bl = icmp sgt i64 %i.bf, -1, !dbg !49852
  call void @llvm.assume(i1 %i.bl), !dbg !49853
  store i64 %i.bf, ptr %i.e, align 8, !dbg !49854
  br label %.loopexit153, !dbg !49855

.lr.ph:                                           ; preds = %bb.m, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit
  %i.bm = phi i64 [ %i.fc, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit ], [ %i.bj, %bb.m ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !49742), !dbg !49856
  call void @llvm.experimental.noalias.scope.decl(metadata !49743), !dbg !49856
  %i.bn = load i64, ptr %i.t, align 8, !dbg !49857, !alias.scope !49743, !noalias !49742, !noundef !4270
  %i.bo = load i64, ptr %i.u, align 8, !dbg !49858, !alias.scope !49743, !noalias !49742, !noundef !4270 ; 12 uses
  %i.bp = sub i64 %i.bn, %i.bo, !dbg !49859       ; 2 uses
  %i.bq = icmp ult i64 %i.bm, %i.bp, !dbg !49860
  br i1 %i.bq, label %bb.r, label %bb.n, !dbg !49860

bb.n:                                             ; preds = %.lr.ph
  %.val4.i = load ptr, ptr %0, align 8, !dbg !49861, !alias.scope !49742, !noalias !49743, !nonnull !4270, !align !4488, !noundef !4270 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !49744), !dbg !49861
  call void @llvm.experimental.noalias.scope.decl(metadata !49745), !dbg !49862
  call void @llvm.experimental.noalias.scope.decl(metadata !49746), !dbg !49862
  %i.br = getelementptr inbounds nuw i8, ptr %.val4.i, i64 16, !dbg !49863 ; 3 uses
  %i.bs = load i64, ptr %i.br, align 8, !dbg !49863, !alias.scope !49745, !noalias !49747, !noundef !4270 ; 6 uses
  %i.bt = icmp eq i64 %i.bs, 0, !dbg !49863
  br i1 %i.bt, label %_RNvXNtNtCsh8eZTKRCwoO_3std2io5implsQINtB4_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB4_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.i, label %bb.o, !dbg !49863

bb.o:                                             ; preds = %bb.n
  %i.bu = icmp ult i64 %i.bs, %i.bp, !dbg !49864
  br i1 %i.bu, label %bb.q, label %bb.p, !dbg !49864

bb.p:                                             ; preds = %bb.o
  %.val4.i.i.i = load ptr, ptr %.val4.i, align 8, !dbg !49865, !alias.scope !49745, !noalias !49747, !nonnull !4270, !align !4488, !noundef !4270
  %.val.i.i.i.i = load ptr, ptr %.val4.i.i.i, align 8, !dbg !49866, !noalias !49748, !nonnull !4270, !align !4488, !noundef !4270 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !49749), !dbg !49867
  %i.bv = load ptr, ptr %.val.i.i.i.i, align 8, !dbg !49868, !alias.scope !49749, !noalias !49750, !nonnull !4270, !noundef !4270
  %i.bw = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 8, !dbg !49868
  %i.bx = load ptr, ptr %i.bw, align 8, !dbg !49868, !alias.scope !49749, !noalias !49750, !nonnull !4270, !align !4488, !noundef !4270
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 72, !dbg !49868
  %i.bz = load ptr, ptr %i.by, align 8, !dbg !49868, !invariant.load !4270, !noalias !49751, !nonnull !4270
  %i.ca = call noundef ptr %i.bz(ptr noundef nonnull %i.bv, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d) #56, !dbg !49869, !noalias !49752, !inline_history !49506
  %i.cb = load i64, ptr %i.u, align 8, !dbg !49870, !alias.scope !49753, !noalias !49754, !noundef !4270 ; 2 uses
  %.neg.i.i.i = add i64 %i.bs, %i.bo, !dbg !49871
  %i.cc = sub i64 %.neg.i.i.i, %i.cb, !dbg !49872
  store i64 %i.cc, ptr %i.br, align 8, !dbg !49872, !alias.scope !49745, !noalias !49755
  br label %_RNvXNtNtCsh8eZTKRCwoO_3std2io5implsQINtB4_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB4_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.i, !dbg !49873

bb.q:                                             ; preds = %bb.o
  %i.cd = load i64, ptr %i.v, align 8, !dbg !49874, !alias.scope !49753, !noalias !49754, !noundef !4270 ; 2 uses
  %i.ce = sub nuw i64 %i.cd, %i.bo, !dbg !49875
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ce, i64 %i.bs), !dbg !49876
  %i.cf = load ptr, ptr %i.d, align 8, !dbg !49877, !alias.scope !49753, !noalias !49754, !nonnull !4270, !noundef !4270
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.bo, !dbg !49878
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !49879, !noalias !49756
  store ptr %i.cg, ptr %i.b, align 8, !dbg !49880, !noalias !49756
  store i64 %i.bs, ptr %i.x, align 8, !dbg !49880, !noalias !49756
  store i64 0, ptr %i.y, align 8, !dbg !49880, !noalias !49756
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.z, align 8, !dbg !49881, !noalias !49756
  %.val3.i.i.i = load ptr, ptr %.val4.i, align 8, !dbg !49882, !alias.scope !49745, !noalias !49747, !nonnull !4270, !align !4488, !noundef !4270
  %.val.i6.i.i.i = load ptr, ptr %.val3.i.i.i, align 8, !dbg !49883, !noalias !49757, !nonnull !4270, !align !4488, !noundef !4270 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !49758), !dbg !49884
  %i.ch = load ptr, ptr %.val.i6.i.i.i, align 8, !dbg !49885, !alias.scope !49758, !noalias !49759, !nonnull !4270, !noundef !4270
  %i.ci = getelementptr inbounds nuw i8, ptr %.val.i6.i.i.i, i64 8, !dbg !49885
  %i.cj = load ptr, ptr %i.ci, align 8, !dbg !49885, !alias.scope !49758, !noalias !49759, !nonnull !4270, !align !4488, !noundef !4270
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 72, !dbg !49885
  %i.cl = load ptr, ptr %i.ck, align 8, !dbg !49885, !invariant.load !4270, !noalias !49760, !nonnull !4270
  %i.cm = call noundef ptr %i.cl(ptr noundef nonnull %i.ch, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b) #56, !dbg !49886, !noalias !49761, !inline_history !49506
  %i.cn = load i64, ptr %i.y, align 8, !dbg !49887, !noalias !49756, !noundef !4270 ; 2 uses
  %i.co = load i64, ptr %i.z, align 8, !dbg !49888, !noalias !49756, !noundef !4270
  %i.cp = add i64 %i.cn, %i.bo, !dbg !49889       ; 3 uses
  store i64 %i.cp, ptr %i.u, align 8, !dbg !49889, !alias.scope !49753, !noalias !49754
  %.sroa.0.0.i7.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.cp, i64 %i.cd), !dbg !49890
  %i.cq = add i64 %i.co, %i.bo, !dbg !49891
  %.sroa.0.0.i8.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.cq, i64 %.sroa.0.0.i7.i.i.i), !dbg !49892
  store i64 %.sroa.0.0.i8.i.i.i, ptr %i.v, align 8, !dbg !49893, !alias.scope !49753, !noalias !49754
  %i.cr = sub i64 %i.bs, %i.cn, !dbg !49894
  store i64 %i.cr, ptr %i.br, align 8, !dbg !49894, !alias.scope !49745, !noalias !49747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !49895, !noalias !49756
  br label %_RNvXNtNtCsh8eZTKRCwoO_3std2io5implsQINtB4_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB4_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.i, !dbg !49873

_RNvXNtNtCsh8eZTKRCwoO_3std2io5implsQINtB4_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB4_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.i: ; preds = %bb.q, %bb.p, %bb.n
  %i.cs = phi i64 [ %i.cb, %bb.p ], [ %i.cp, %bb.q ], [ %i.bo, %bb.n ], !dbg !49896
end_hunk_2
begin_hunk_3_@_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQIBL_QQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEEECseeLknQCOKOd_13polars_python:bb.a
  %i.dy = phi i64 [ %i.ct, %_RNvXNtNtCsh8eZTKRCwoO_3std2io5implsQINtB4_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB4_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.i ], [ %i.dx, %bb.v ] ; 3 uses
  %.sroa.0.0.i65 = phi ptr [ %.sroa.0.0.i.i.i, %_RNvXNtNtCsh8eZTKRCwoO_3std2io5implsQINtB4_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB4_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.i ], [ %.sroa.0.0.i.i9.i, %bb.v ], !dbg !49946 ; 11 uses
  %.not60 = icmp eq ptr %.sroa.0.0.i65, null, !dbg !49947
  br i1 %.not60, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread, label %bb.w, !dbg !49948

bb.w:                                             ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit
  %i.dz = ptrtoint ptr %.sroa.0.0.i65 to i64, !dbg !49949 ; 3 uses
  %i.ea = and i64 %i.dz, 3, !dbg !49950
  switch i64 %i.ea, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.x
    i64 0, label %.split100
    i64 1, label %.split99
  ], !dbg !49951, !prof !4782

default.unreachable:                              ; preds = %bb.w
  unreachable

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread: ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit, %bb.x, %.split, %.split99, %.split100, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit
  %.not6081.ph = phi i1 [ true, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit ], [ false, %.split100 ], [ false, %.split99 ], [ false, %bb.x ], [ false, %.split ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit ]
  %.sroa.0.0.i6579.ph = phi ptr [ null, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit ], [ %.sroa.0.0.i65, %.split100 ], [ %.sroa.0.0.i65, %.split99 ], [ %.sroa.0.0.i65, %bb.x ], [ %.sroa.0.0.i65, %.split ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit ]
  %.pre133 = load i64, ptr %i.u, align 8, !dbg !49952 ; 5 uses
  %.pre134 = load i64, ptr %i.v, align 8, !dbg !49953 ; 2 uses
  %.pre135 = load i64, ptr %i.e, align 8, !dbg !49954 ; 2 uses
  %i.eb = sub nuw i64 %.pre134, %.pre133, !dbg !49955
  %i.ec = icmp ne i64 %.pre134, %.sroa.0.0.i, !dbg !49956
  %i.ed = icmp sgt i64 %.pre135, -1, !dbg !49852
  call void @llvm.assume(i1 %i.ed), !dbg !49853
  %i.ee = add i64 %.pre135, %.pre133, !dbg !49957 ; 3 uses
  store i64 %i.ee, ptr %i.e, align 8, !dbg !49854
  br i1 %.not6081.ph, label %bb.ae, label %.loopexit152, !dbg !49958

.split:                                           ; preds = %bb.w
  %.mask103 = and i64 %i.dz, -4294967296, !dbg !49959
  %i.ef = icmp eq i64 %.mask103, 17179869184, !dbg !49959
  br i1 %i.ef, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread, !dbg !49960

.split100:                                        ; preds = %bb.w
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i65, i64 16, !dbg !49961
  %i.eh = load i8, ptr %i.eg, align 8, !dbg !49961, !range !4789, !noundef !4270
  %i.ei = icmp eq i8 %i.eh, 35, !dbg !49962
  br i1 %i.ei, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread, !dbg !49960

.split99:                                         ; preds = %bb.w
  %i.ej = getelementptr i8, ptr %.sroa.0.0.i65, i64 -1, !dbg !49963 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ej) ]
  %i.ek = getelementptr i8, ptr %.sroa.0.0.i65, i64 15, !dbg !49964
  %i.el = load i8, ptr %i.ek, align 8, !dbg !49964, !range !4789, !noundef !4270
  %i.em = icmp eq i8 %i.el, 35, !dbg !49965
  br i1 %i.em, label %bb.y, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread, !dbg !49960

bb.x:                                             ; preds = %bb.w
  %i.en = icmp ult ptr %.sroa.0.0.i65, inttoptr (i64 180388626432 to ptr), !dbg !49966
  call void @llvm.assume(i1 %i.en), !dbg !49967
  %.mask = and i64 %i.dz, -4294967296, !dbg !49968
  %i.eo = icmp eq i64 %.mask, 150323855360, !dbg !49968
  br i1 %i.eo, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread, !dbg !49960

bb.y:                                             ; preds = %.split99
  %.val.i.i.i.i.i = load ptr, ptr %i.ej, align 8, !dbg !49969 ; 5 uses
  %i.ep = getelementptr i8, ptr %.sroa.0.0.i65, i64 7, !dbg !49969
  %.val1.i.i.i.i.i = load ptr, ptr %i.ep, align 8, !dbg !49969, !nonnull !4270, !align !4488, !noundef !4270 ; 5 uses
  %i.eq = load ptr, ptr %.val1.i.i.i.i.i, align 8, !dbg !49970, !invariant.load !4270 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.eq, null, !dbg !49970
  br i1 %.not.i.i.i.i.i.i.i, label %bb.aa, label %bb.z, !dbg !49970

bb.z:                                             ; preds = %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  invoke void %i.eq(ptr noundef nonnull %.val.i.i.i.i.i)
          to label %bb.aa unwind label %bb.ac, !dbg !49970

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.er = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !49971
  %i.es = load i64, ptr %i.er, align 8, !dbg !49971, !range !4635, !invariant.load !4270 ; 2 uses
  %i.et = icmp eq i64 %i.es, 0, !dbg !49972
  br i1 %i.et, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i, label %bb.ab, !dbg !49972

bb.ab:                                            ; preds = %bb.aa
  %i.eu = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16, !dbg !49971
  %i.ev = load i64, ptr %i.eu, align 8, !dbg !49973, !range !4615, !invariant.load !4270
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.es, i64 noundef range(i64 1, 536870913) %i.ev) #53, !dbg !49974
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i, !dbg !49975

bb.ac:                                            ; preds = %bb.z
  %i.ew = landingpad { ptr, i32 }
          cleanup
  %i.ex = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !49976
  %i.ey = load i64, ptr %i.ex, align 8, !dbg !49976, !range !4635, !invariant.load !4270 ; 2 uses
  %i.ez = icmp eq i64 %i.ey, 0, !dbg !49977
  br i1 %i.ez, label %.body, label %bb.ad, !dbg !49977

bb.ad:                                            ; preds = %bb.ac
  %i.fa = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16, !dbg !49976
  %i.fb = load i64, ptr %i.fa, align 8, !dbg !49978, !range !4615, !invariant.load !4270
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.ey, i64 noundef range(i64 1, 536870913) %i.fb) #53, !dbg !49979
  br label %.body, !dbg !49980

.body:                                            ; preds = %bb.ad, %bb.ac
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ej, i64 noundef 24, i64 noundef 8) #53, !dbg !49981
  resume { ptr, i32 } %i.ew, !dbg !49982

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i: ; preds = %bb.ab, %bb.aa
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ej, i64 noundef 24, i64 noundef 8) #53, !dbg !49983
  %.pre132 = load i64, ptr %i.w, align 8, !dbg !49851, !alias.scope !49792, !noalias !49793
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, !dbg !49984

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.x, %.split, %.split100, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i
  %i.fc = phi i64 [ %i.dy, %bb.x ], [ %i.dy, %.split ], [ %i.dy, %.split100 ], [ %.pre132, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i ], !dbg !49851 ; 2 uses
  %i.fd = icmp eq i64 %i.fc, 0, !dbg !49851
  br i1 %i.fd, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread, label %.lr.ph, !dbg !49851

bb.ae:                                            ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread
  %i.fe = icmp eq i64 %.pre133, 0, !dbg !49855
  br i1 %i.fe, label %.loopexit153, label %bb.af, !dbg !49855

.loopexit153:                                     ; preds = %bb.ae, %.thread
  %i.ff = phi i64 [ %i.bf, %.thread ], [ %i.ee, %bb.ae ]
  %i.fg = sub nsw i64 %i.ff, %i.f, !dbg !49985
  br label %bb.ag, !dbg !49986

bb.af:                                            ; preds = %bb.ae
  %i.fh = icmp ult i64 %.pre133, %.sroa.0.0.i, !dbg !49987
  %i.fi = add i32 %.sroa.019.0, 1, !dbg !49987
  %.sroa.019.1 = select i1 %i.fh, i32 %i.fi, i32 0, !dbg !49987 ; 2 uses
  br i1 %.sroa.013.1, label %bb.ai, label %bb.ah, !dbg !49988

.loopexit152:                                     ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread
  %i.fj = ptrtoint ptr %.sroa.0.0.i6579.ph to i64
  br label %bb.ag, !dbg !49989

bb.ag:                                            ; preds = %.loopexit152, %.loopexit153
  %.sroa.8.0 = phi i64 [ %i.fg, %.loopexit153 ], [ %i.fj, %.loopexit152 ], !dbg !49990
  %.sroa.010.0 = phi i64 [ 0, %.loopexit153 ], [ 1, %.loopexit152 ], !dbg !49990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !49989
  br label %.loopexit, !dbg !49833

bb.ah:                                            ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.af
  %.sroa.050.4 = phi i64 [ -1, %bb.ak ], [ %i.fn, %bb.aj ], [ %spec.select, %bb.ai ], [ %.sroa.050.3, %bb.af ], !dbg !49821
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !49989
  br label %bb.f, !dbg !49817

bb.ai:                                            ; preds = %bb.af
  %i.fk = icmp sgt i32 %.sroa.019.1, 1
  %or.cond7 = select i1 %i.ec, i1 %i.fk, i1 false, !dbg !49991
  %spec.select = select i1 %or.cond7, i64 -1, i64 %.sroa.050.3, !dbg !49991 ; 4 uses
  %i.fl = icmp uge i64 %.sroa.0.0.i, %spec.select, !dbg !49992
  %i.fm = icmp eq i64 %.pre133, %.sroa.0.0.i
  %or.cond2 = and i1 %i.fm, %i.fl, !dbg !49992
  br i1 %or.cond2, label %bb.aj, label %bb.ah, !dbg !49992

bb.aj:                                            ; preds = %bb.ai
  %i.fn = shl nuw i64 %spec.select, 1, !dbg !49993
  %i.fo = icmp slt i64 %spec.select, 0, !dbg !49993
  br i1 %i.fo, label %bb.ak, label %bb.ah, !dbg !49994, !prof !4282

bb.ak:                                            ; preds = %bb.aj
  br label %bb.ah, !dbg !49995

.loopexit:                                        ; preds = %bb.l, %bb.i, %bb.k, %bb.ag
  %.sroa.8.1 = phi i64 [ %i.ay, %bb.i ], [ %i.bb, %bb.k ], [ %.sroa.8.0, %bb.ag ], [ 163208757251, %bb.l ], !dbg !49996
  %.sroa.010.1 = phi i64 [ 1, %bb.i ], [ 0, %bb.k ], [ %.sroa.010.0, %bb.ag ], [ 1, %bb.l ], !dbg !49996
  %i.fp = inttoptr i64 %.sroa.8.1 to ptr, !dbg !49997
  br label %bb.al, !dbg !49998

bb.al:                                            ; preds = %bb.e, %bb.d, %.loopexit
  %.sroa.8.2 = phi ptr [ %i.fp, %.loopexit ], [ %i.ai, %bb.d ], [ null, %bb.e ], !dbg !49822
  %.sroa.010.2 = phi i64 [ %.sroa.010.1, %.loopexit ], [ 1, %bb.d ], [ 0, %bb.e ], !dbg !49822
  %i.fq = insertvalue { i64, ptr } poison, i64 %.sroa.010.2, 0, !dbg !49997
  %i.fr = insertvalue { i64, ptr } %i.fq, ptr %.sroa.8.2, 1, !dbg !49997
  ret { i64, ptr } %i.fr, !dbg !49997
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQIBL_QQINtNtNtB2_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEEB2j_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !49999 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !50339 ; 7 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !50339, !noundef !4270 ; 7 uses
  %i.g = icmp sgt i64 %i.f, -1, !dbg !50340
  tail call void @llvm.assume(i1 %i.g), !dbg !50341
  %i.h = load i64, ptr %1, align 8, !dbg !50342, !range !4635, !noundef !4270 ; 2 uses
  %i.i = trunc nuw i64 %2 to i1, !dbg !50343      ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c, !dbg !50343

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %3, -1025, !dbg !50344
  br i1 %i.j, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEE0B2l_.exit.thread, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEE0B2l_.exit, !dbg !50345, !prof !4282

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEE0B2l_.exit: ; preds = %bb.b
  %i.k = add nuw i64 %3, 1024, !dbg !50344        ; 3 uses
  %i.l = and i64 %i.k, 8191, !dbg !50346          ; 2 uses
  %i.m = icmp eq i64 %i.l, 0, !dbg !50347
  %i.n = sub i64 %3, %i.l, !dbg !50347
  %i.o = add i64 %i.n, 9216, !dbg !50347          ; 2 uses
  %.not102 = icmp ult i64 %i.o, %i.k, !dbg !50347
  %.sroa.5.1.i = select i1 %.not102, i64 8192, i64 %i.o, !dbg !50348
  %.sroa.050.1 = select i1 %i.m, i64 %i.k, i64 %.sroa.5.1.i, !dbg !50347 ; 2 uses
  %i.p = icmp eq i64 %3, 0
  br i1 %i.p, label %bb.c, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEE0B2l_.exit.thread, !dbg !50349

bb.c:                                             ; preds = %bb.a, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEE0B2l_.exit
  %.sroa.050.0 = phi i64 [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEE0B2l_.exit ], [ 8192, %bb.a ], !dbg !50350 ; 2 uses
  %.sroa.013.0 = xor i1 %i.i, true, !dbg !50351   ; 2 uses
  %i.q = sub nsw i64 %i.h, %i.f, !dbg !50352
  %i.r = icmp ult i64 %i.q, 32, !dbg !50352
  br i1 %i.r, label %bb.d, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEE0B2l_.exit.thread, !dbg !50352

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEE0B2l_.exit.thread: ; preds = %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEE0B2l_.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEE0B2l_.exit
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEE0B2l_.exit.thread_crit_edge ], [ %i.f, %bb.c ], [ %i.f, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEE0B2l_.exit ], [ %i.f, %bb.b ], !dbg !50353
  %.sroa.050.2 = phi i64 [ %.sroa.050.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEE0B2l_.exit.thread_crit_edge ], [ %.sroa.050.0, %bb.c ], [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEE0B2l_.exit ], [ 8192, %bb.b ], !dbg !50354
  %.sroa.013.1 = phi i1 [ %.sroa.013.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEE0B2l_.exit.thread_crit_edge ], [ %.sroa.013.0, %bb.c ], [ false, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEE0B2l_.exit ], [ false, %bb.b ], !dbg !50355
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br label %bb.f, !dbg !50356

bb.d:                                             ; preds = %bb.c
  %i.ag = tail call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQIB15_QQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEEB2E_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !50260 ; 2 uses
  %i.ah = extractvalue { i64, ptr } %i.ag, 0, !dbg !50260
  %i.ai = extractvalue { i64, ptr } %i.ag, 1, !dbg !50260 ; 2 uses
  %i.aj = trunc nuw i64 %i.ah to i1, !dbg !50357
  br i1 %i.aj, label %bb.al, label %bb.e, !dbg !50357

bb.e:                                             ; preds = %bb.d
  %i.ak = icmp eq ptr %i.ai, null, !dbg !50358
  br i1 %i.ak, label %bb.al, label %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEE0B2l_.exit.thread_crit_edge, !dbg !50358

._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEE0B2l_.exit.thread_crit_edge: ; preds = %bb.e
  %.pre.pre = load i64, ptr %i.e, align 8, !dbg !50353
  br label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEE0B2l_.exit.thread, !dbg !50358

bb.f:                                             ; preds = %bb.ah, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEE0B2l_.exit.thread
  %i.al = phi i64 [ %.pre, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEE0B2l_.exit.thread ], [ %i.dk, %bb.ah ], !dbg !50353 ; 3 uses
  %.sroa.048.2 = phi i64 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEE0B2l_.exit.thread ], [ %i.dh, %bb.ah ], !dbg !50359
  %.sroa.050.3 = phi i64 [ %.sroa.050.2, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEE0B2l_.exit.thread ], [ %.sroa.050.4, %bb.ah ], !dbg !50360 ; 3 uses
  %.sroa.019.0 = phi i32 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQIBN_QQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEE0B2l_.exit.thread ], [ %.sroa.019.1, %bb.ah ], !dbg !50361
  %i.am = icmp sgt i64 %i.al, -1, !dbg !50362
  call void @llvm.assume(i1 %i.am), !dbg !50363
  %i.an = load i64, ptr %1, align 8, !dbg !50364, !range !4635, !noundef !4270 ; 3 uses
  %i.ao = icmp eq i64 %i.al, %i.an, !dbg !50365
  %i.ap = icmp eq i64 %i.an, %i.h
  %or.cond62 = and i1 %i.ao, %i.ap, !dbg !50365
  br i1 %or.cond62, label %bb.h, label %bb.g, !dbg !50365

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.aq = phi i64 [ %.pre128, %._crit_edge ], [ %i.an, %bb.f ], !dbg !50366 ; 3 uses
  %i.ar = phi i64 [ %.pre127, %._crit_edge ], [ %i.al, %bb.f ], !dbg !50367 ; 3 uses
  %i.as = icmp sgt i64 %i.ar, -1, !dbg !50368
  call void @llvm.assume(i1 %i.as), !dbg !50369
  %i.at = icmp eq i64 %i.ar, %i.aq, !dbg !50370
  br i1 %i.at, label %bb.l, label %bb.m, !dbg !50370

bb.h:                                             ; preds = %bb.f
  %i.au = call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQIB15_QQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEEB2E_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !50272 ; 2 uses
  %i.av = extractvalue { i64, ptr } %i.au, 0, !dbg !50272
  %i.aw = extractvalue { i64, ptr } %i.au, 1, !dbg !50272 ; 2 uses
  %i.ax = trunc nuw i64 %i.av to i1, !dbg !50371
  br i1 %i.ax, label %bb.i, label %bb.j, !dbg !50371

bb.i:                                             ; preds = %bb.h
  %i.ay = ptrtoint ptr %i.aw to i64, !dbg !50272
  br label %.loopexit, !dbg !50372

bb.j:                                             ; preds = %bb.h
  %i.az = icmp eq ptr %i.aw, null, !dbg !50373
  %.pre127 = load i64, ptr %i.e, align 8, !dbg !50367 ; 3 uses
  br i1 %i.az, label %bb.k, label %._crit_edge, !dbg !50373

._crit_edge:                                      ; preds = %bb.j
  %.pre128 = load i64, ptr %1, align 8, !dbg !50366, !range !4635
  br label %bb.g, !dbg !50373

bb.k:                                             ; preds = %bb.j
  %i.ba = icmp sgt i64 %.pre127, -1, !dbg !50374
  call void @llvm.assume(i1 %i.ba), !dbg !50375
  %i.bb = sub nsw i64 %.pre127, %i.f, !dbg !50376
  br label %.loopexit, !dbg !50377

bb.l:                                             ; preds = %bb.g
  %i.bc = call { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.aq, i64 noundef 32, i64 noundef 1, i64 noundef 1), !dbg !50378
  %i.bd = extractvalue { i64, i64 } %i.bc, 0, !dbg !50378
  %.not = icmp eq i64 %i.bd, -9223372036854775807, !dbg !50379
  br i1 %.not, label %._crit_edge129, label %.loopexit, !dbg !50380

._crit_edge129:                                   ; preds = %bb.l
  %.pre130 = load i64, ptr %i.e, align 8, !dbg !50381
  %.pre131 = load i64, ptr %1, align 8, !dbg !50382, !range !4635
  br label %bb.m, !dbg !50380

bb.m:                                             ; preds = %._crit_edge129, %bb.g
  %i.be = phi i64 [ %.pre131, %._crit_edge129 ], [ %i.aq, %bb.g ], !dbg !50382
  %i.bf = phi i64 [ %.pre130, %._crit_edge129 ], [ %i.ar, %bb.g ], !dbg !50381 ; 5 uses
  %i.bg = load ptr, ptr %i.s, align 8, !dbg !50383, !nonnull !4270, !noundef !4270
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bf, !dbg !50384
  %i.bi = sub i64 %i.be, %i.bf, !dbg !50385
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.050.3, i64 %i.bi), !dbg !50386 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !50387
  store ptr %i.bh, ptr %i.d, align 8, !dbg !50388
  store i64 %.sroa.0.0.i, ptr %i.t, align 8, !dbg !50388
  store i64 0, ptr %i.u, align 8, !dbg !50388
  store i64 %.sroa.048.2, ptr %i.v, align 8, !dbg !50389
  %i.bj = load i64, ptr %i.w, align 8, !dbg !50390, !alias.scope !50293, !noalias !50294, !noundef !4270 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 0, !dbg !50390
  br i1 %i.bk, label %.thread, label %.lr.ph, !dbg !50390

.thread:                                          ; preds = %bb.m
  %i.bl = icmp sgt i64 %i.bf, -1, !dbg !50391
  call void @llvm.assume(i1 %i.bl), !dbg !50392
  store i64 %i.bf, ptr %i.e, align 8, !dbg !50393
  br label %.loopexit153, !dbg !50394

.lr.ph:                                           ; preds = %bb.m, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit
  %i.bm = phi i64 [ %i.ei, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit ], [ %i.bj, %bb.m ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !50297), !dbg !50395
  call void @llvm.experimental.noalias.scope.decl(metadata !50298), !dbg !50395
  %i.bn = load i64, ptr %i.t, align 8, !dbg !50396, !alias.scope !50298, !noalias !50297, !noundef !4270
  %i.bo = load i64, ptr %i.u, align 8, !dbg !50397, !alias.scope !50298, !noalias !50297, !noundef !4270 ; 12 uses
  %i.bp = sub i64 %i.bn, %i.bo, !dbg !50398       ; 2 uses
  %i.bq = icmp ult i64 %i.bm, %i.bp, !dbg !50399
  br i1 %i.bq, label %bb.r, label %bb.n, !dbg !50399

bb.n:                                             ; preds = %.lr.ph
  %.val4.i = load ptr, ptr %0, align 8, !dbg !50400, !alias.scope !50297, !noalias !50298, !nonnull !4270, !align !4488, !noundef !4270 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !50299), !dbg !50400
  call void @llvm.experimental.noalias.scope.decl(metadata !50300), !dbg !50401
  call void @llvm.experimental.noalias.scope.decl(metadata !50301), !dbg !50401
  %i.br = getelementptr inbounds nuw i8, ptr %.val4.i, i64 16, !dbg !50402 ; 3 uses
  %i.bs = load i64, ptr %i.br, align 8, !dbg !50402, !alias.scope !50300, !noalias !50302, !noundef !4270 ; 6 uses
  %i.bt = icmp eq i64 %i.bs, 0, !dbg !50402
  br i1 %i.bt, label %_RNvXNtNtCsh8eZTKRCwoO_3std2io5implsQINtB4_4TakeQQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB4_4Read8read_bufB22_.exit.i, label %bb.o, !dbg !50402

bb.o:                                             ; preds = %bb.n
  %i.bu = icmp ult i64 %i.bs, %i.bp, !dbg !50403
  br i1 %i.bu, label %bb.q, label %bb.p, !dbg !50403

bb.p:                                             ; preds = %bb.o
  %.val4.i.i.i = load ptr, ptr %.val4.i, align 8, !dbg !50404, !alias.scope !50300, !noalias !50302, !nonnull !4270, !align !4488, !noundef !4270
  %.val.i.i.i.i = load ptr, ptr %.val4.i.i.i, align 8, !dbg !50405, !noalias !50303, !nonnull !4270, !align !4488, !noundef !4270
  %i.bv = call noundef ptr @_RNvXs3_NtNtNtCsh8eZTKRCwoO_3std2io8buffered9bufreaderINtB5_9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EENtB9_4Read8read_bufB1J_(ptr noalias noundef nonnull align 8 dereferenceable(56) %.val.i.i.i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d), !dbg !50406, !noalias !50304
  %i.bw = load i64, ptr %i.u, align 8, !dbg !50407, !alias.scope !50305, !noalias !50304, !noundef !4270 ; 2 uses
  %.neg.i.i.i = add i64 %i.bs, %i.bo, !dbg !50408
  %i.bx = sub i64 %.neg.i.i.i, %i.bw, !dbg !50409
  store i64 %i.bx, ptr %i.br, align 8, !dbg !50409, !alias.scope !50300, !noalias !50306
  br label %_RNvXNtNtCsh8eZTKRCwoO_3std2io5implsQINtB4_4TakeQQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB4_4Read8read_bufB22_.exit.i, !dbg !50410

bb.q:                                             ; preds = %bb.o
  %i.by = load i64, ptr %i.v, align 8, !dbg !50411, !alias.scope !50305, !noalias !50304, !noundef !4270 ; 2 uses
  %i.bz = sub nuw i64 %i.by, %i.bo, !dbg !50412
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bz, i64 %i.bs), !dbg !50413
  %i.ca = load ptr, ptr %i.d, align 8, !dbg !50414, !alias.scope !50305, !noalias !50304, !nonnull !4270, !noundef !4270
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bo, !dbg !50415
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !50416, !noalias !50307
  store ptr %i.cb, ptr %i.b, align 8, !dbg !50417, !noalias !50307
  store i64 %i.bs, ptr %i.x, align 8, !dbg !50417, !noalias !50307
  store i64 0, ptr %i.y, align 8, !dbg !50417, !noalias !50307
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.z, align 8, !dbg !50418, !noalias !50307
  %.val3.i.i.i = load ptr, ptr %.val4.i, align 8, !dbg !50419, !alias.scope !50300, !noalias !50302, !nonnull !4270, !align !4488, !noundef !4270
  %.val.i6.i.i.i = load ptr, ptr %.val3.i.i.i, align 8, !dbg !50420, !noalias !50308, !nonnull !4270, !align !4488, !noundef !4270
  %i.cc = call noundef ptr @_RNvXs3_NtNtNtCsh8eZTKRCwoO_3std2io8buffered9bufreaderINtB5_9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EENtB9_4Read8read_bufB1J_(ptr noalias noundef nonnull align 8 dereferenceable(56) %.val.i6.i.i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b), !dbg !50421, !noalias !50307
  %i.cd = load i64, ptr %i.y, align 8, !dbg !50422, !noalias !50307, !noundef !4270 ; 2 uses
  %i.ce = load i64, ptr %i.z, align 8, !dbg !50423, !noalias !50307, !noundef !4270
  %i.cf = add i64 %i.cd, %i.bo, !dbg !50424       ; 3 uses
  store i64 %i.cf, ptr %i.u, align 8, !dbg !50424, !alias.scope !50305, !noalias !50304
  %.sroa.0.0.i7.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.cf, i64 %i.by), !dbg !50425
  %i.cg = add i64 %i.ce, %i.bo, !dbg !50426
  %.sroa.0.0.i8.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.cg, i64 %.sroa.0.0.i7.i.i.i), !dbg !50427
  store i64 %.sroa.0.0.i8.i.i.i, ptr %i.v, align 8, !dbg !50428, !alias.scope !50305, !noalias !50304
  %i.ch = sub i64 %i.bs, %i.cd, !dbg !50429
  store i64 %i.ch, ptr %i.br, align 8, !dbg !50429, !alias.scope !50300, !noalias !50302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !50430, !noalias !50307
  br label %_RNvXNtNtCsh8eZTKRCwoO_3std2io5implsQINtB4_4TakeQQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB4_4Read8read_bufB22_.exit.i, !dbg !50410

_RNvXNtNtCsh8eZTKRCwoO_3std2io5implsQINtB4_4TakeQQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB4_4Read8read_bufB22_.exit.i: ; preds = %bb.q, %bb.p, %bb.n
  %i.ci = phi i64 [ %i.bw, %bb.p ], [ %i.cf, %bb.q ], [ %i.bo, %bb.n ], !dbg !50431
  %.sroa.0.0.i.i.i = phi ptr [ %i.bv, %bb.p ], [ %i.cc, %bb.q ], [ null, %bb.n ], !dbg !50432
  %.neg.i = add i64 %i.bo, %i.bm, !dbg !50433
  %i.cj = sub i64 %.neg.i, %i.ci, !dbg !50434     ; 2 uses
  store i64 %i.cj, ptr %i.w, align 8, !dbg !50434, !alias.scope !50297, !noalias !50298
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQIBt_QQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEENtB5_4Read8read_bufB21_.exit, !dbg !50435

bb.r:                                             ; preds = %.lr.ph
  %i.ck = load i64, ptr %i.v, align 8, !dbg !50436, !alias.scope !50298, !noalias !50297, !noundef !4270 ; 2 uses
  %i.cl = sub nuw i64 %i.ck, %i.bo, !dbg !50437
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cl, i64 %i.bm), !dbg !50438 ; 4 uses
  %i.cm = load ptr, ptr %i.d, align 8, !dbg !50439, !alias.scope !50298, !noalias !50297, !nonnull !4270, !noundef !4270
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.bo, !dbg !50440 ; 2 uses
end_hunk_3
begin_hunk_4_@_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQINtNtB2_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEECseeLknQCOKOd_13polars_python:bb.a
_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit: ; preds = %bb.n, %bb.o
  %.pre127133 = phi i64 [ %i.bk, %bb.o ], [ %i.bb, %bb.n ]
  %.sink = phi i64 [ %i.bm, %bb.o ], [ %i.bc, %bb.n ], !dbg !50830 ; 3 uses
  %.sroa.0.0.i65 = phi ptr [ %i.bh, %bb.o ], [ %i.ba, %bb.n ], !dbg !50830 ; 8 uses
  store i64 %.sink, ptr %i.m, align 8, !dbg !50830, !alias.scope !50734, !noalias !50735
  %.not60 = icmp eq ptr %.sroa.0.0.i65, null, !dbg !50831 ; 2 uses
  br i1 %.not60, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit, label %bb.p, !dbg !50832

bb.p:                                             ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit
  %i.bn = ptrtoint ptr %.sroa.0.0.i65 to i64, !dbg !50833 ; 3 uses
  %i.bo = and i64 %i.bn, 3, !dbg !50834
  switch i64 %i.bo, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.q
    i64 0, label %.split97
    i64 1, label %.split96
  ], !dbg !50835, !prof !4782

default.unreachable:                              ; preds = %bb.p
  unreachable

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit: ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit, %bb.q, %.split, %.split96, %.split97
  %i.bp = ptrtoint ptr %.sroa.0.0.i65 to i64, !dbg !50836
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread, !dbg !50837

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexit_crit_edge, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit
  %.pre127 = phi i64 [ %.pre127.pre, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexit_crit_edge ], [ %.pre127133, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit ], !dbg !50837 ; 5 uses
  %.not6078.ph = phi i1 [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexit_crit_edge ], [ %.not60, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit ]
  %.sroa.0.0.i6576.ph = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexit_crit_edge ], [ %i.bp, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit ]
  %.pre128 = load i64, ptr %i.l, align 8, !dbg !50838 ; 2 uses
  %.pre129 = load i64, ptr %i.c, align 8, !dbg !50839 ; 2 uses
  %i.bq = sub nuw i64 %.pre128, %.pre127, !dbg !50840
  %i.br = icmp ne i64 %.pre128, %.sroa.0.0.i, !dbg !50841
  %i.bs = icmp sgt i64 %.pre129, -1, !dbg !50798
  call void @llvm.assume(i1 %i.bs), !dbg !50799
  %i.bt = add i64 %.pre129, %.pre127, !dbg !50842 ; 3 uses
  store i64 %i.bt, ptr %i.c, align 8, !dbg !50800
  br i1 %.not6078.ph, label %bb.x, label %.loopexit144, !dbg !50843

.split:                                           ; preds = %bb.p
  %.mask99 = and i64 %i.bn, -4294967296, !dbg !50844
  %i.bu = icmp eq i64 %.mask99, 17179869184, !dbg !50844
  br i1 %i.bu, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit, !dbg !50845

.split97:                                         ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i65, i64 16, !dbg !50846
  %i.bw = load i8, ptr %i.bv, align 8, !dbg !50846, !range !4789, !noundef !4270
  %i.bx = icmp eq i8 %i.bw, 35, !dbg !50847
  br i1 %i.bx, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit, !dbg !50845

.split96:                                         ; preds = %bb.p
  %i.by = getelementptr i8, ptr %.sroa.0.0.i65, i64 -1, !dbg !50848 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.by) ]
  %i.bz = getelementptr i8, ptr %.sroa.0.0.i65, i64 15, !dbg !50849
  %i.ca = load i8, ptr %i.bz, align 8, !dbg !50849, !range !4789, !noundef !4270
  %i.cb = icmp eq i8 %i.ca, 35, !dbg !50850
  br i1 %i.cb, label %bb.r, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit, !dbg !50845

bb.q:                                             ; preds = %bb.p
  %i.cc = icmp ult ptr %.sroa.0.0.i65, inttoptr (i64 180388626432 to ptr), !dbg !50851
  call void @llvm.assume(i1 %i.cc), !dbg !50852
  %.mask = and i64 %i.bn, -4294967296, !dbg !50853
  %i.cd = icmp eq i64 %.mask, 150323855360, !dbg !50853
  br i1 %i.cd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit, !dbg !50845

bb.r:                                             ; preds = %.split96
  %.val.i.i.i.i.i = load ptr, ptr %i.by, align 8, !dbg !50854 ; 5 uses
  %i.ce = getelementptr i8, ptr %.sroa.0.0.i65, i64 7, !dbg !50854
  %.val1.i.i.i.i.i = load ptr, ptr %i.ce, align 8, !dbg !50854, !nonnull !4270, !align !4488, !noundef !4270 ; 5 uses
  %i.cf = load ptr, ptr %.val1.i.i.i.i.i, align 8, !dbg !50855, !invariant.load !4270 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cf, null, !dbg !50855
  br i1 %.not.i.i.i.i.i.i.i, label %bb.t, label %bb.s, !dbg !50855

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  invoke void %i.cf(ptr noundef nonnull %.val.i.i.i.i.i)
          to label %bb.t unwind label %bb.v, !dbg !50855

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cg = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !50856
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !50856, !range !4635, !invariant.load !4270 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0, !dbg !50857
  br i1 %i.ci, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i, label %bb.u, !dbg !50857

bb.u:                                             ; preds = %bb.t
  %i.cj = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16, !dbg !50856
  %i.ck = load i64, ptr %i.cj, align 8, !dbg !50858, !range !4615, !invariant.load !4270
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.ch, i64 noundef range(i64 1, 536870913) %i.ck) #53, !dbg !50859
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i, !dbg !50860

bb.v:                                             ; preds = %bb.s
  %i.cl = landingpad { ptr, i32 }
          cleanup
  %i.cm = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !50861
  %i.cn = load i64, ptr %i.cm, align 8, !dbg !50861, !range !4635, !invariant.load !4270 ; 2 uses
  %i.co = icmp eq i64 %i.cn, 0, !dbg !50862
  br i1 %i.co, label %.body, label %bb.w, !dbg !50862

bb.w:                                             ; preds = %bb.v
  %i.cp = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16, !dbg !50861
  %i.cq = load i64, ptr %i.cp, align 8, !dbg !50863, !range !4615, !invariant.load !4270
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.cn, i64 noundef range(i64 1, 536870913) %i.cq) #53, !dbg !50864
  br label %.body, !dbg !50865

.body:                                            ; preds = %bb.w, %bb.v
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.by, i64 noundef 24, i64 noundef 8) #53, !dbg !50866
  resume { ptr, i32 } %i.cl, !dbg !50867

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i: ; preds = %bb.u, %bb.t
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.by, i64 noundef 24, i64 noundef 8) #53, !dbg !50868
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, !dbg !50869

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.q, %.split, %.split97, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i
  %i.cr = icmp eq i64 %.sink, 0, !dbg !50797
  br i1 %i.cr, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexit_crit_edge, label %bb.m, !dbg !50797

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexit_crit_edge: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit
  %.pre127.pre = load i64, ptr %i.k, align 8, !dbg !50837
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread, !dbg !50797

bb.x:                                             ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread
  %i.cs = icmp eq i64 %.pre127, 0, !dbg !50801
  br i1 %i.cs, label %.loopexit145, label %bb.y, !dbg !50801

.loopexit145:                                     ; preds = %bb.x, %.thread
  %i.ct = phi i64 [ %i.ap, %.thread ], [ %i.bt, %bb.x ]
  %i.cu = sub nsw i64 %i.ct, %i.d, !dbg !50870
  br label %.loopexit144, !dbg !50871

bb.y:                                             ; preds = %bb.x
  %i.cv = icmp ult i64 %.pre127, %.sroa.0.0.i, !dbg !50872
  %i.cw = add i32 %.sroa.019.0, 1, !dbg !50872
  %.sroa.019.1 = select i1 %i.cv, i32 %i.cw, i32 0, !dbg !50872 ; 2 uses
  %i.cx = icmp sgt i32 %.sroa.019.1, 1
  %or.cond7 = select i1 %i.br, i1 %i.cx, i1 false, !dbg !50873
  %.sroa.050.5 = select i1 %or.cond7, i64 -1, i64 %.sroa.050.3, !dbg !50873 ; 4 uses
  %i.cy = icmp uge i64 %.sroa.0.0.i, %.sroa.050.5, !dbg !50874
  %i.cz = icmp eq i64 %.pre127, %.sroa.0.0.i
  %or.cond2 = and i1 %i.cz, %i.cy, !dbg !50874
  br i1 %or.cond2, label %bb.aa, label %bb.z, !dbg !50874

.loopexit144:                                     ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread, %.loopexit145
  %.sroa.8.0 = phi i64 [ %i.cu, %.loopexit145 ], [ %.sroa.0.0.i6576.ph, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread ], !dbg !50875
  %.sroa.010.0 = phi i64 [ 0, %.loopexit145 ], [ 1, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread ], !dbg !50875
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !50876
  br label %.loopexit, !dbg !50779

bb.z:                                             ; preds = %bb.ab, %bb.aa, %bb.y
  %.sroa.050.4 = phi i64 [ -1, %bb.ab ], [ %i.da, %bb.aa ], [ %.sroa.050.5, %bb.y ], !dbg !50767
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !50876
  br label %bb.e, !dbg !50763

bb.aa:                                            ; preds = %bb.y
  %i.da = shl nuw i64 %.sroa.050.5, 1, !dbg !50877
  %i.db = icmp slt i64 %.sroa.050.5, 0, !dbg !50877
  br i1 %i.db, label %bb.ab, label %bb.z, !dbg !50878, !prof !4282

bb.ab:                                            ; preds = %bb.aa
  br label %bb.z, !dbg !50879

.loopexit:                                        ; preds = %bb.k, %bb.h, %bb.j, %.loopexit144
  %.sroa.8.1 = phi i64 [ %i.ai, %bb.h ], [ %i.al, %bb.j ], [ %.sroa.8.0, %.loopexit144 ], [ 163208757251, %bb.k ], !dbg !50880
  %.sroa.010.1 = phi i64 [ 1, %bb.h ], [ 0, %bb.j ], [ %.sroa.010.0, %.loopexit144 ], [ 1, %bb.k ], !dbg !50880
  %i.dc = inttoptr i64 %.sroa.8.1 to ptr, !dbg !50881
  br label %bb.ac, !dbg !50882

bb.ac:                                            ; preds = %bb.d, %bb.c, %.loopexit
  %.sroa.8.2 = phi ptr [ %i.dc, %.loopexit ], [ %i.s, %bb.c ], [ null, %bb.d ], !dbg !50768
  %.sroa.010.2 = phi i64 [ %.sroa.010.1, %.loopexit ], [ 1, %bb.c ], [ 0, %bb.d ], !dbg !50768
  %i.dd = insertvalue { i64, ptr } poison, i64 %.sroa.010.2, 0, !dbg !50881
  %i.de = insertvalue { i64, ptr } %i.dd, ptr %.sroa.8.2, 1, !dbg !50881
  ret { i64, ptr } %i.de, !dbg !50881
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQINtNtB2_6cursor6CursorRShEEECseeLknQCOKOd_13polars_python(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !50883 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !51133 ; 7 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !51133, !noundef !4270 ; 7 uses
  %i.e = icmp sgt i64 %i.d, -1, !dbg !51134
  tail call void @llvm.assume(i1 %i.e), !dbg !51135
  %i.f = load i64, ptr %1, align 8, !dbg !51136, !range !4635, !noundef !4270 ; 2 uses
  %i.g = trunc nuw i64 %2 to i1, !dbg !51137      ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !51137

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %3, -1025, !dbg !51138
  br i1 %i.h, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0CseeLknQCOKOd_13polars_python.exit.thread, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0CseeLknQCOKOd_13polars_python.exit, !dbg !51139, !prof !4282

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0CseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  %i.i = add nuw i64 %3, 1024, !dbg !51138        ; 3 uses
  %i.j = and i64 %i.i, 8191, !dbg !51140          ; 2 uses
  %i.k = icmp eq i64 %i.j, 0, !dbg !51141
  %i.l = sub i64 %3, %i.j, !dbg !51141
  %i.m = add i64 %i.l, 9216, !dbg !51141          ; 2 uses
  %.not102 = icmp ult i64 %i.m, %i.i, !dbg !51141
  %.sroa.5.1.i = select i1 %.not102, i64 8192, i64 %i.m, !dbg !51142
  %.sroa.050.1 = select i1 %i.k, i64 %i.i, i64 %.sroa.5.1.i, !dbg !51141 ; 2 uses
  %i.n = icmp eq i64 %3, 0
  br i1 %i.n, label %bb.c, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0CseeLknQCOKOd_13polars_python.exit.thread, !dbg !51143

bb.c:                                             ; preds = %bb.a, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0CseeLknQCOKOd_13polars_python.exit
  %.sroa.050.0 = phi i64 [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0CseeLknQCOKOd_13polars_python.exit ], [ 8192, %bb.a ], !dbg !51144 ; 2 uses
  %.sroa.013.0 = xor i1 %i.g, true, !dbg !51145   ; 2 uses
  %i.o = sub nsw i64 %i.f, %i.d, !dbg !51146
  %i.p = icmp ult i64 %i.o, 32, !dbg !51146
  br i1 %i.p, label %bb.d, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0CseeLknQCOKOd_13polars_python.exit.thread, !dbg !51146

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0CseeLknQCOKOd_13polars_python.exit.thread: ; preds = %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0CseeLknQCOKOd_13polars_python.exit
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge ], [ %i.d, %bb.c ], [ %i.d, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0CseeLknQCOKOd_13polars_python.exit ], [ %i.d, %bb.b ], !dbg !51147
  %.sroa.050.2 = phi i64 [ %.sroa.050.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge ], [ %.sroa.050.0, %bb.c ], [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0CseeLknQCOKOd_13polars_python.exit ], [ 8192, %bb.b ], !dbg !51148
  %.sroa.013.1 = phi i1 [ %.sroa.013.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge ], [ %.sroa.013.0, %bb.c ], [ false, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0CseeLknQCOKOd_13polars_python.exit ], [ false, %bb.b ], !dbg !51149
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br label %bb.f, !dbg !51150

bb.d:                                             ; preds = %bb.c
  %i.y = tail call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorRShEEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !51077 ; 2 uses
  %i.z = extractvalue { i64, ptr } %i.y, 0, !dbg !51077
  %i.aa = extractvalue { i64, ptr } %i.y, 1, !dbg !51077 ; 2 uses
  %i.ab = trunc nuw i64 %i.z to i1, !dbg !51151
  br i1 %i.ab, label %bb.ae, label %bb.e, !dbg !51151

bb.e:                                             ; preds = %bb.d
  %i.ac = icmp eq ptr %i.aa, null, !dbg !51152
  br i1 %i.ac, label %bb.ae, label %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge, !dbg !51152

._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge: ; preds = %bb.e
  %.pre.pre = load i64, ptr %i.c, align 8, !dbg !51147
  br label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0CseeLknQCOKOd_13polars_python.exit.thread, !dbg !51152

bb.f:                                             ; preds = %bb.aa, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0CseeLknQCOKOd_13polars_python.exit.thread
  %i.ad = phi i64 [ %.pre, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0CseeLknQCOKOd_13polars_python.exit.thread ], [ %i.cb, %bb.aa ], !dbg !51147 ; 3 uses
  %.sroa.048.2 = phi i64 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0CseeLknQCOKOd_13polars_python.exit.thread ], [ %i.by, %bb.aa ], !dbg !51153
  %.sroa.050.3 = phi i64 [ %.sroa.050.2, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0CseeLknQCOKOd_13polars_python.exit.thread ], [ %.sroa.050.4, %bb.aa ], !dbg !51154 ; 3 uses
  %.sroa.019.0 = phi i32 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0CseeLknQCOKOd_13polars_python.exit.thread ], [ %.sroa.019.1, %bb.aa ], !dbg !51155
  %i.ae = icmp sgt i64 %i.ad, -1, !dbg !51156
  call void @llvm.assume(i1 %i.ae), !dbg !51157
  %i.af = load i64, ptr %1, align 8, !dbg !51158, !range !4635, !noundef !4270 ; 3 uses
  %i.ag = icmp eq i64 %i.ad, %i.af, !dbg !51159
  %i.ah = icmp eq i64 %i.af, %i.f
  %or.cond62 = and i1 %i.ag, %i.ah, !dbg !51159
  br i1 %or.cond62, label %bb.h, label %bb.g, !dbg !51159

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.ai = phi i64 [ %.pre127, %._crit_edge ], [ %i.af, %bb.f ], !dbg !51160 ; 3 uses
  %i.aj = phi i64 [ %.pre126, %._crit_edge ], [ %i.ad, %bb.f ], !dbg !51161 ; 3 uses
  %i.ak = icmp sgt i64 %i.aj, -1, !dbg !51162
  call void @llvm.assume(i1 %i.ak), !dbg !51163
  %i.al = icmp eq i64 %i.aj, %i.ai, !dbg !51164
  br i1 %i.al, label %bb.l, label %bb.m, !dbg !51164

bb.h:                                             ; preds = %bb.f
  %i.am = call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorRShEEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !51089 ; 2 uses
  %i.an = extractvalue { i64, ptr } %i.am, 0, !dbg !51089
  %i.ao = extractvalue { i64, ptr } %i.am, 1, !dbg !51089 ; 2 uses
  %i.ap = trunc nuw i64 %i.an to i1, !dbg !51165
  br i1 %i.ap, label %bb.i, label %bb.j, !dbg !51165

bb.i:                                             ; preds = %bb.h
  %i.aq = ptrtoint ptr %i.ao to i64, !dbg !51089
  br label %.loopexit, !dbg !51166

bb.j:                                             ; preds = %bb.h
  %i.ar = icmp eq ptr %i.ao, null, !dbg !51167
  %.pre126 = load i64, ptr %i.c, align 8, !dbg !51161 ; 3 uses
  br i1 %i.ar, label %bb.k, label %._crit_edge, !dbg !51167

._crit_edge:                                      ; preds = %bb.j
  %.pre127 = load i64, ptr %1, align 8, !dbg !51160, !range !4635
  br label %bb.g, !dbg !51167

bb.k:                                             ; preds = %bb.j
  %i.as = icmp sgt i64 %.pre126, -1, !dbg !51168
  call void @llvm.assume(i1 %i.as), !dbg !51169
  %i.at = sub nsw i64 %.pre126, %i.d, !dbg !51170
  br label %.loopexit, !dbg !51171

bb.l:                                             ; preds = %bb.g
  %i.au = call { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.ai, i64 noundef 32, i64 noundef 1, i64 noundef 1), !dbg !51172
  %i.av = extractvalue { i64, i64 } %i.au, 0, !dbg !51172
  %.not = icmp eq i64 %i.av, -9223372036854775807, !dbg !51173
  br i1 %.not, label %._crit_edge128, label %.loopexit, !dbg !51174

._crit_edge128:                                   ; preds = %bb.l
  %.pre129 = load i64, ptr %i.c, align 8, !dbg !51175
  %.pre130 = load i64, ptr %1, align 8, !dbg !51176, !range !4635
  br label %bb.m, !dbg !51174

bb.m:                                             ; preds = %._crit_edge128, %bb.g
  %i.aw = phi i64 [ %.pre130, %._crit_edge128 ], [ %i.ai, %bb.g ], !dbg !51176
  %i.ax = phi i64 [ %.pre129, %._crit_edge128 ], [ %i.aj, %bb.g ], !dbg !51175 ; 5 uses
  %i.ay = load ptr, ptr %i.q, align 8, !dbg !51177, !nonnull !4270, !noundef !4270
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax, !dbg !51178
  %i.ba = sub i64 %i.aw, %i.ax, !dbg !51179
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.050.3, i64 %i.ba), !dbg !51180 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !51181
  store ptr %i.az, ptr %i.b, align 8, !dbg !51182
  store i64 %.sroa.0.0.i, ptr %i.r, align 8, !dbg !51182
  store i64 0, ptr %i.s, align 8, !dbg !51182
  store i64 %.sroa.048.2, ptr %i.t, align 8, !dbg !51183
  %.promoted = load i64, ptr %i.u, align 8, !alias.scope !51110, !noalias !51111 ; 2 uses
  %i.bb = icmp eq i64 %.promoted, 0, !dbg !51184
  br i1 %i.bb, label %.thread, label %.lr.ph, !dbg !51184

.thread:                                          ; preds = %bb.m
  %i.bc = icmp sgt i64 %i.ax, -1, !dbg !51185
  call void @llvm.assume(i1 %i.bc), !dbg !51186
  store i64 %i.ax, ptr %i.c, align 8, !dbg !51187
  br label %.loopexit149, !dbg !51188

.lr.ph:                                           ; preds = %bb.m
  %.val4.i = load ptr, ptr %0, align 8, !nonnull !4270, !align !4488 ; 2 uses
  br label %bb.n, !dbg !51184

bb.n:                                             ; preds = %.lr.ph, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit
  %i.bd = phi i64 [ %.promoted, %.lr.ph ], [ %.sink, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !51110), !dbg !51189
  call void @llvm.experimental.noalias.scope.decl(metadata !51111), !dbg !51189
  %i.be = load i64, ptr %i.r, align 8, !dbg !51190, !alias.scope !51111, !noalias !51110, !noundef !4270
  %i.bf = load i64, ptr %i.s, align 8, !dbg !51191, !alias.scope !51111, !noalias !51110, !noundef !4270 ; 6 uses
  %i.bg = sub i64 %i.be, %i.bf, !dbg !51192
  %i.bh = icmp ult i64 %i.bd, %i.bg, !dbg !51193
  br i1 %i.bh, label %bb.p, label %bb.o, !dbg !51193

bb.o:                                             ; preds = %bb.n
  %i.bi = call noundef ptr @_RNvXs3_NtNtCsh8eZTKRCwoO_3std2io6cursorINtB5_6CursorRShENtB7_4Read8read_bufCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val4.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b), !dbg !51194, !noalias !51110
  %i.bj = load i64, ptr %i.s, align 8, !dbg !51195, !alias.scope !51111, !noalias !51110, !noundef !4270 ; 2 uses
  %.neg.i = add i64 %i.bf, %i.bd, !dbg !51196
  %i.bk = sub i64 %.neg.i, %i.bj, !dbg !51197
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit, !dbg !51198

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %i.t, align 8, !dbg !51199, !alias.scope !51111, !noalias !51110, !noundef !4270 ; 2 uses
  %i.bm = sub nuw i64 %i.bl, %i.bf, !dbg !51200
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bm, i64 %i.bd), !dbg !51201
  %i.bn = load ptr, ptr %i.b, align 8, !dbg !51202, !alias.scope !51111, !noalias !51110, !nonnull !4270, !noundef !4270
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bf, !dbg !51203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !51204, !noalias !51116
  store ptr %i.bo, ptr %i.a, align 8, !dbg !51205, !noalias !51116
  store i64 %i.bd, ptr %i.v, align 8, !dbg !51205, !noalias !51116
  store i64 0, ptr %i.w, align 8, !dbg !51205, !noalias !51116
  store i64 %.sroa.0.0.i.i, ptr %i.x, align 8, !dbg !51206, !noalias !51116
  %i.bp = call noundef ptr @_RNvXs3_NtNtCsh8eZTKRCwoO_3std2io6cursorINtB5_6CursorRShENtB7_4Read8read_bufCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val4.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a), !dbg !51207, !noalias !51116
  %i.bq = load i64, ptr %i.w, align 8, !dbg !51208, !noalias !51116, !noundef !4270 ; 2 uses
  %i.br = load i64, ptr %i.x, align 8, !dbg !51209, !noalias !51116, !noundef !4270
  %i.bs = add i64 %i.bq, %i.bf, !dbg !51210       ; 3 uses
  store i64 %i.bs, ptr %i.s, align 8, !dbg !51210, !alias.scope !51111, !noalias !51110
  %.sroa.0.0.i6.i = call noundef i64 @llvm.umax.i64(i64 %i.bs, i64 %i.bl), !dbg !51211
  %i.bt = add i64 %i.br, %i.bf, !dbg !51212
  %.sroa.0.0.i7.i = call noundef i64 @llvm.umax.i64(i64 %i.bt, i64 %.sroa.0.0.i6.i), !dbg !51213
  store i64 %.sroa.0.0.i7.i, ptr %i.t, align 8, !dbg !51214, !alias.scope !51111, !noalias !51110
  %i.bu = sub i64 %i.bd, %i.bq, !dbg !51215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !51216, !noalias !51116
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit, !dbg !51198

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit: ; preds = %bb.o, %bb.p
  %.pre131136 = phi i64 [ %i.bs, %bb.p ], [ %i.bj, %bb.o ]
  %.sink = phi i64 [ %i.bu, %bb.p ], [ %i.bk, %bb.o ], !dbg !51217 ; 3 uses
  %.sroa.0.0.i65 = phi ptr [ %i.bp, %bb.p ], [ %i.bi, %bb.o ], !dbg !51217 ; 8 uses
  store i64 %.sink, ptr %i.u, align 8, !dbg !51217, !alias.scope !51110, !noalias !51111
  %.not60 = icmp eq ptr %.sroa.0.0.i65, null, !dbg !51218 ; 2 uses
  br i1 %.not60, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit, label %bb.q, !dbg !51219

bb.q:                                             ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit
  %i.bv = ptrtoint ptr %.sroa.0.0.i65 to i64, !dbg !51220 ; 3 uses
  %i.bw = and i64 %i.bv, 3, !dbg !51221
  switch i64 %i.bw, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.r
    i64 0, label %.split100
    i64 1, label %.split99
  ], !dbg !51222, !prof !4782

default.unreachable:                              ; preds = %bb.q
  unreachable

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit: ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit, %bb.r, %.split, %.split99, %.split100
  %i.bx = ptrtoint ptr %.sroa.0.0.i65 to i64, !dbg !51223
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread, !dbg !51224

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexit_crit_edge, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit
  %.pre131 = phi i64 [ %.pre131.pre, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexit_crit_edge ], [ %.pre131136, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit ], !dbg !51224 ; 5 uses
  %.not6081.ph = phi i1 [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexit_crit_edge ], [ %.not60, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit ]
  %.sroa.0.0.i6579.ph = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexit_crit_edge ], [ %i.bx, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit ]
  %.pre132 = load i64, ptr %i.t, align 8, !dbg !51225 ; 2 uses
  %.pre133 = load i64, ptr %i.c, align 8, !dbg !51226 ; 2 uses
  %i.by = sub nuw i64 %.pre132, %.pre131, !dbg !51227
  %i.bz = icmp ne i64 %.pre132, %.sroa.0.0.i, !dbg !51228
  %i.ca = icmp sgt i64 %.pre133, -1, !dbg !51185
  call void @llvm.assume(i1 %i.ca), !dbg !51186
  %i.cb = add i64 %.pre133, %.pre131, !dbg !51229 ; 3 uses
  store i64 %i.cb, ptr %i.c, align 8, !dbg !51187
  br i1 %.not6081.ph, label %bb.y, label %.loopexit148, !dbg !51230

.split:                                           ; preds = %bb.q
  %.mask103 = and i64 %i.bv, -4294967296, !dbg !51231
  %i.cc = icmp eq i64 %.mask103, 17179869184, !dbg !51231
  br i1 %i.cc, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit, !dbg !51232

.split100:                                        ; preds = %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i65, i64 16, !dbg !51233
  %i.ce = load i8, ptr %i.cd, align 8, !dbg !51233, !range !4789, !noundef !4270
  %i.cf = icmp eq i8 %i.ce, 35, !dbg !51234
  br i1 %i.cf, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit, !dbg !51232

.split99:                                         ; preds = %bb.q
  %i.cg = getelementptr i8, ptr %.sroa.0.0.i65, i64 -1, !dbg !51235 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cg) ]
  %i.ch = getelementptr i8, ptr %.sroa.0.0.i65, i64 15, !dbg !51236
  %i.ci = load i8, ptr %i.ch, align 8, !dbg !51236, !range !4789, !noundef !4270
  %i.cj = icmp eq i8 %i.ci, 35, !dbg !51237
  br i1 %i.cj, label %bb.s, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit, !dbg !51232

bb.r:                                             ; preds = %bb.q
  %i.ck = icmp ult ptr %.sroa.0.0.i65, inttoptr (i64 180388626432 to ptr), !dbg !51238
  call void @llvm.assume(i1 %i.ck), !dbg !51239
  %.mask = and i64 %i.bv, -4294967296, !dbg !51240
  %i.cl = icmp eq i64 %.mask, 150323855360, !dbg !51240
  br i1 %i.cl, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit, !dbg !51232

bb.s:                                             ; preds = %.split99
  %.val.i.i.i.i.i = load ptr, ptr %i.cg, align 8, !dbg !51241 ; 5 uses
  %i.cm = getelementptr i8, ptr %.sroa.0.0.i65, i64 7, !dbg !51241
  %.val1.i.i.i.i.i = load ptr, ptr %i.cm, align 8, !dbg !51241, !nonnull !4270, !align !4488, !noundef !4270 ; 5 uses
  %i.cn = load ptr, ptr %.val1.i.i.i.i.i, align 8, !dbg !51242, !invariant.load !4270 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cn, null, !dbg !51242
  br i1 %.not.i.i.i.i.i.i.i, label %bb.u, label %bb.t, !dbg !51242

bb.t:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  invoke void %i.cn(ptr noundef nonnull %.val.i.i.i.i.i)
          to label %bb.u unwind label %bb.w, !dbg !51242

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.co = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !51243
  %i.cp = load i64, ptr %i.co, align 8, !dbg !51243, !range !4635, !invariant.load !4270 ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 0, !dbg !51244
  br i1 %i.cq, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i, label %bb.v, !dbg !51244

bb.v:                                             ; preds = %bb.u
  %i.cr = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16, !dbg !51243
  %i.cs = load i64, ptr %i.cr, align 8, !dbg !51245, !range !4615, !invariant.load !4270
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.cp, i64 noundef range(i64 1, 536870913) %i.cs) #53, !dbg !51246
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i, !dbg !51247

bb.w:                                             ; preds = %bb.t
  %i.ct = landingpad { ptr, i32 }
          cleanup
  %i.cu = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !51248
  %i.cv = load i64, ptr %i.cu, align 8, !dbg !51248, !range !4635, !invariant.load !4270 ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 0, !dbg !51249
  br i1 %i.cw, label %.body, label %bb.x, !dbg !51249

bb.x:                                             ; preds = %bb.w
  %i.cx = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16, !dbg !51248
  %i.cy = load i64, ptr %i.cx, align 8, !dbg !51250, !range !4615, !invariant.load !4270
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.cv, i64 noundef range(i64 1, 536870913) %i.cy) #53, !dbg !51251
  br label %.body, !dbg !51252

.body:                                            ; preds = %bb.x, %bb.w
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cg, i64 noundef 24, i64 noundef 8) #53, !dbg !51253
  resume { ptr, i32 } %i.ct, !dbg !51254

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i: ; preds = %bb.v, %bb.u
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cg, i64 noundef 24, i64 noundef 8) #53, !dbg !51255
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, !dbg !51256

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.r, %.split, %.split100, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i
  %i.cz = icmp eq i64 %.sink, 0, !dbg !51184
  br i1 %i.cz, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexit_crit_edge, label %bb.n, !dbg !51184

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexit_crit_edge: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit
  %.pre131.pre = load i64, ptr %i.s, align 8, !dbg !51224
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread, !dbg !51184

bb.y:                                             ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread
  %i.da = icmp eq i64 %.pre131, 0, !dbg !51188
  br i1 %i.da, label %.loopexit149, label %bb.z, !dbg !51188

.loopexit149:                                     ; preds = %bb.y, %.thread
  %i.db = phi i64 [ %i.ax, %.thread ], [ %i.cb, %bb.y ]
  %i.dc = sub nsw i64 %i.db, %i.d, !dbg !51257
  br label %.loopexit148, !dbg !51258

bb.z:                                             ; preds = %bb.y
  %i.dd = icmp ult i64 %.pre131, %.sroa.0.0.i, !dbg !51259
  %i.de = add i32 %.sroa.019.0, 1, !dbg !51259
  %.sroa.019.1 = select i1 %i.dd, i32 %i.de, i32 0, !dbg !51259 ; 2 uses
  br i1 %.sroa.013.1, label %bb.ab, label %bb.aa, !dbg !51260

.loopexit148:                                     ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread, %.loopexit149
  %.sroa.8.0 = phi i64 [ %i.dc, %.loopexit149 ], [ %.sroa.0.0.i6579.ph, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread ], !dbg !51261
  %.sroa.010.0 = phi i64 [ 0, %.loopexit149 ], [ 1, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread ], !dbg !51261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !51262
  br label %.loopexit, !dbg !51166

bb.aa:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.z
  %.sroa.050.4 = phi i64 [ -1, %bb.ad ], [ %i.di, %bb.ac ], [ %spec.select, %bb.ab ], [ %.sroa.050.3, %bb.z ], !dbg !51154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !51262
  br label %bb.f, !dbg !51150

bb.ab:                                            ; preds = %bb.z
  %i.df = icmp sgt i32 %.sroa.019.1, 1
  %or.cond7 = select i1 %i.bz, i1 %i.df, i1 false, !dbg !51263
  %spec.select = select i1 %or.cond7, i64 -1, i64 %.sroa.050.3, !dbg !51263 ; 4 uses
  %i.dg = icmp uge i64 %.sroa.0.0.i, %spec.select, !dbg !51264
  %i.dh = icmp eq i64 %.pre131, %.sroa.0.0.i
  %or.cond2 = and i1 %i.dh, %i.dg, !dbg !51264
  br i1 %or.cond2, label %bb.ac, label %bb.aa, !dbg !51264

bb.ac:                                            ; preds = %bb.ab
  %i.di = shl nuw i64 %spec.select, 1, !dbg !51265
  %i.dj = icmp slt i64 %spec.select, 0, !dbg !51265
  br i1 %i.dj, label %bb.ad, label %bb.aa, !dbg !51266, !prof !4282

bb.ad:                                            ; preds = %bb.ac
  br label %bb.aa, !dbg !51267

.loopexit:                                        ; preds = %bb.l, %bb.i, %bb.k, %.loopexit148
  %.sroa.8.1 = phi i64 [ %i.aq, %bb.i ], [ %i.at, %bb.k ], [ %.sroa.8.0, %.loopexit148 ], [ 163208757251, %bb.l ], !dbg !51268
  %.sroa.010.1 = phi i64 [ 1, %bb.i ], [ 0, %bb.k ], [ %.sroa.010.0, %.loopexit148 ], [ 1, %bb.l ], !dbg !51268
  %i.dk = inttoptr i64 %.sroa.8.1 to ptr, !dbg !51269
  br label %bb.ae, !dbg !51270

bb.ae:                                            ; preds = %bb.e, %bb.d, %.loopexit
  %.sroa.8.2 = phi ptr [ %i.dk, %.loopexit ], [ %i.aa, %bb.d ], [ null, %bb.e ], !dbg !51155
  %.sroa.010.2 = phi i64 [ %.sroa.010.1, %.loopexit ], [ 1, %bb.d ], [ 0, %bb.e ], !dbg !51155
  %i.dl = insertvalue { i64, ptr } poison, i64 %.sroa.010.2, 0, !dbg !51269
  %i.dm = insertvalue { i64, ptr } %i.dl, ptr %.sroa.8.2, 1, !dbg !51269
  ret { i64, ptr } %i.dm, !dbg !51269
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEB1A_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !51271 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !51536 ; 7 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !51536, !noundef !4270 ; 7 uses
  %i.e = icmp sgt i64 %i.d, -1, !dbg !51537
  tail call void @llvm.assume(i1 %i.e), !dbg !51538
  %i.f = load i64, ptr %1, align 8, !dbg !51539, !range !4635, !noundef !4270 ; 2 uses
  %i.g = trunc nuw i64 %2 to i1, !dbg !51540      ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !51540

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %3, -1025, !dbg !51541
  br i1 %i.h, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEE0B1C_.exit.thread, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEE0B1C_.exit, !dbg !51542, !prof !4282

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEE0B1C_.exit: ; preds = %bb.b
  %i.i = add nuw i64 %3, 1024, !dbg !51541        ; 3 uses
  %i.j = and i64 %i.i, 8191, !dbg !51543          ; 2 uses
  %i.k = icmp eq i64 %i.j, 0, !dbg !51544
  %i.l = sub i64 %3, %i.j, !dbg !51544
  %i.m = add i64 %i.l, 9216, !dbg !51544          ; 2 uses
  %.not102 = icmp ult i64 %i.m, %i.i, !dbg !51544
  %.sroa.5.1.i = select i1 %.not102, i64 8192, i64 %i.m, !dbg !51545
  %.sroa.050.1 = select i1 %i.k, i64 %i.i, i64 %.sroa.5.1.i, !dbg !51544 ; 2 uses
  %i.n = icmp eq i64 %3, 0
  br i1 %i.n, label %bb.c, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEE0B1C_.exit.thread, !dbg !51546

bb.c:                                             ; preds = %bb.a, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEE0B1C_.exit
  %.sroa.050.0 = phi i64 [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEE0B1C_.exit ], [ 8192, %bb.a ], !dbg !51547 ; 2 uses
  %.sroa.013.0 = xor i1 %i.g, true, !dbg !51548   ; 2 uses
  %i.o = sub nsw i64 %i.f, %i.d, !dbg !51549
  %i.p = icmp ult i64 %i.o, 32, !dbg !51549
  br i1 %i.p, label %bb.d, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEE0B1C_.exit.thread, !dbg !51549

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEE0B1C_.exit.thread: ; preds = %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEE0B1C_.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEE0B1C_.exit
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEE0B1C_.exit.thread_crit_edge ], [ %i.d, %bb.c ], [ %i.d, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEE0B1C_.exit ], [ %i.d, %bb.b ], !dbg !51550
  %.sroa.050.2 = phi i64 [ %.sroa.050.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEE0B1C_.exit.thread_crit_edge ], [ %.sroa.050.0, %bb.c ], [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEE0B1C_.exit ], [ 8192, %bb.b ], !dbg !51551
  %.sroa.013.1 = phi i1 [ %.sroa.013.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEE0B1C_.exit.thread_crit_edge ], [ %.sroa.013.0, %bb.c ], [ false, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEE0B1C_.exit ], [ false, %bb.b ], !dbg !51552
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br label %bb.f, !dbg !51553

bb.d:                                             ; preds = %bb.c
  %i.y = tail call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEB1U_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !51476 ; 2 uses
  %i.z = extractvalue { i64, ptr } %i.y, 0, !dbg !51476
  %i.aa = extractvalue { i64, ptr } %i.y, 1, !dbg !51476 ; 2 uses
  %i.ab = trunc nuw i64 %i.z to i1, !dbg !51554
  br i1 %i.ab, label %bb.ae, label %bb.e, !dbg !51554

bb.e:                                             ; preds = %bb.d
  %i.ac = icmp eq ptr %i.aa, null, !dbg !51555
  br i1 %i.ac, label %bb.ae, label %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEE0B1C_.exit.thread_crit_edge, !dbg !51555

._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEE0B1C_.exit.thread_crit_edge: ; preds = %bb.e
  %.pre.pre = load i64, ptr %i.c, align 8, !dbg !51550
  br label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEE0B1C_.exit.thread, !dbg !51555

bb.f:                                             ; preds = %bb.aa, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEE0B1C_.exit.thread
  %i.ad = phi i64 [ %.pre, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEE0B1C_.exit.thread ], [ %i.cg, %bb.aa ], !dbg !51550 ; 3 uses
  %.sroa.048.2 = phi i64 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEE0B1C_.exit.thread ], [ %i.cd, %bb.aa ], !dbg !51556
  %.sroa.050.3 = phi i64 [ %.sroa.050.2, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEE0B1C_.exit.thread ], [ %.sroa.050.4, %bb.aa ], !dbg !51557 ; 3 uses
  %.sroa.019.0 = phi i32 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEE0B1C_.exit.thread ], [ %.sroa.019.1, %bb.aa ], !dbg !51558
  %i.ae = icmp sgt i64 %i.ad, -1, !dbg !51559
  call void @llvm.assume(i1 %i.ae), !dbg !51560
  %i.af = load i64, ptr %1, align 8, !dbg !51561, !range !4635, !noundef !4270 ; 3 uses
  %i.ag = icmp eq i64 %i.ad, %i.af, !dbg !51562
  %i.ah = icmp eq i64 %i.af, %i.f
  %or.cond62 = and i1 %i.ag, %i.ah, !dbg !51562
  br i1 %or.cond62, label %bb.h, label %bb.g, !dbg !51562

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.ai = phi i64 [ %.pre127, %._crit_edge ], [ %i.af, %bb.f ], !dbg !51563 ; 3 uses
  %i.aj = phi i64 [ %.pre126, %._crit_edge ], [ %i.ad, %bb.f ], !dbg !51564 ; 3 uses
  %i.ak = icmp sgt i64 %i.aj, -1, !dbg !51565
  call void @llvm.assume(i1 %i.ak), !dbg !51566
  %i.al = icmp eq i64 %i.aj, %i.ai, !dbg !51567
  br i1 %i.al, label %bb.l, label %bb.m, !dbg !51567

bb.h:                                             ; preds = %bb.f
  %i.am = call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEB1U_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !51488 ; 2 uses
  %i.an = extractvalue { i64, ptr } %i.am, 0, !dbg !51488
  %i.ao = extractvalue { i64, ptr } %i.am, 1, !dbg !51488 ; 2 uses
  %i.ap = trunc nuw i64 %i.an to i1, !dbg !51568
  br i1 %i.ap, label %bb.i, label %bb.j, !dbg !51568

bb.i:                                             ; preds = %bb.h
  %i.aq = ptrtoint ptr %i.ao to i64, !dbg !51488
  br label %.loopexit, !dbg !51569

bb.j:                                             ; preds = %bb.h
  %i.ar = icmp eq ptr %i.ao, null, !dbg !51570
  %.pre126 = load i64, ptr %i.c, align 8, !dbg !51564 ; 3 uses
  br i1 %i.ar, label %bb.k, label %._crit_edge, !dbg !51570

._crit_edge:                                      ; preds = %bb.j
  %.pre127 = load i64, ptr %1, align 8, !dbg !51563, !range !4635
  br label %bb.g, !dbg !51570

bb.k:                                             ; preds = %bb.j
  %i.as = icmp sgt i64 %.pre126, -1, !dbg !51571
  call void @llvm.assume(i1 %i.as), !dbg !51572
  %i.at = sub nsw i64 %.pre126, %i.d, !dbg !51573
  br label %.loopexit, !dbg !51574

bb.l:                                             ; preds = %bb.g
  %i.au = call { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.ai, i64 noundef 32, i64 noundef 1, i64 noundef 1), !dbg !51575
  %i.av = extractvalue { i64, i64 } %i.au, 0, !dbg !51575
  %.not = icmp eq i64 %i.av, -9223372036854775807, !dbg !51576
  br i1 %.not, label %._crit_edge128, label %.loopexit, !dbg !51577

._crit_edge128:                                   ; preds = %bb.l
  %.pre129 = load i64, ptr %i.c, align 8, !dbg !51578
  %.pre130 = load i64, ptr %1, align 8, !dbg !51579, !range !4635
  br label %bb.m, !dbg !51577

bb.m:                                             ; preds = %._crit_edge128, %bb.g
  %i.aw = phi i64 [ %.pre130, %._crit_edge128 ], [ %i.ai, %bb.g ], !dbg !51579
  %i.ax = phi i64 [ %.pre129, %._crit_edge128 ], [ %i.aj, %bb.g ], !dbg !51578 ; 5 uses
  %i.ay = load ptr, ptr %i.q, align 8, !dbg !51580, !nonnull !4270, !noundef !4270
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax, !dbg !51581
  %i.ba = sub i64 %i.aw, %i.ax, !dbg !51582
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.050.3, i64 %i.ba), !dbg !51583 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !51584
  store ptr %i.az, ptr %i.b, align 8, !dbg !51585
  store i64 %.sroa.0.0.i, ptr %i.r, align 8, !dbg !51585
  store i64 0, ptr %i.s, align 8, !dbg !51585
  store i64 %.sroa.048.2, ptr %i.t, align 8, !dbg !51586
  %.promoted = load i64, ptr %i.u, align 8, !alias.scope !51509, !noalias !51510 ; 2 uses
  %i.bb = icmp eq i64 %.promoted, 0, !dbg !51587
  br i1 %i.bb, label %.thread, label %.lr.ph, !dbg !51587

.thread:                                          ; preds = %bb.m
  %i.bc = icmp sgt i64 %i.ax, -1, !dbg !51588
  call void @llvm.assume(i1 %i.bc), !dbg !51589
  store i64 %i.ax, ptr %i.c, align 8, !dbg !51590
  br label %.loopexit149, !dbg !51591

.lr.ph:                                           ; preds = %bb.m
  %.val4.i = load ptr, ptr %0, align 8, !nonnull !4270, !align !4488 ; 3 uses
  %i.bd = getelementptr i8, ptr %.val4.i, i64 8   ; 2 uses
  br label %bb.n, !dbg !51587

bb.n:                                             ; preds = %.lr.ph, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit
  %i.be = phi i64 [ %.promoted, %.lr.ph ], [ %.sink, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !51509), !dbg !51592
  call void @llvm.experimental.noalias.scope.decl(metadata !51510), !dbg !51592
  %i.bf = load i64, ptr %i.r, align 8, !dbg !51593, !alias.scope !51510, !noalias !51509, !noundef !4270
  %i.bg = load i64, ptr %i.s, align 8, !dbg !51594, !alias.scope !51510, !noalias !51509, !noundef !4270 ; 6 uses
  %i.bh = sub i64 %i.bf, %i.bg, !dbg !51595
  %i.bi = icmp ult i64 %i.be, %i.bh, !dbg !51596
  br i1 %i.bi, label %bb.p, label %bb.o, !dbg !51596

bb.o:                                             ; preds = %bb.n
  %.val.i.i = load ptr, ptr %.val4.i, align 8, !dbg !51597, !noalias !51513, !nonnull !4270, !noundef !4270
  %.val1.i.i = load ptr, ptr %i.bd, align 8, !dbg !51597, !noalias !51513, !nonnull !4270, !align !4488, !noundef !4270
  %i.bj = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 72, !dbg !51598
  %i.bk = load ptr, ptr %i.bj, align 8, !dbg !51598, !invariant.load !4270, !noalias !51514, !nonnull !4270
  %i.bl = call noundef ptr %i.bk(ptr noundef nonnull %.val.i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b) #56, !dbg !51599, !noalias !51509, !inline_history !51344
  %i.bm = load i64, ptr %i.s, align 8, !dbg !51600, !alias.scope !51510, !noalias !51509, !noundef !4270 ; 2 uses
  %.neg.i = add i64 %i.bg, %i.be, !dbg !51601
  %i.bn = sub i64 %.neg.i, %i.bm, !dbg !51602
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EENtB5_4Read8read_bufB1i_.exit, !dbg !51603

bb.p:                                             ; preds = %bb.n
  %i.bo = load i64, ptr %i.t, align 8, !dbg !51604, !alias.scope !51510, !noalias !51509, !noundef !4270 ; 2 uses
  %i.bp = sub nuw i64 %i.bo, %i.bg, !dbg !51605
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bp, i64 %i.be), !dbg !51606
  %i.bq = load ptr, ptr %i.b, align 8, !dbg !51607, !alias.scope !51510, !noalias !51509, !nonnull !4270, !noundef !4270
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bg, !dbg !51608
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !51609, !noalias !51517
  store ptr %i.br, ptr %i.a, align 8, !dbg !51610, !noalias !51517
  store i64 %i.be, ptr %i.v, align 8, !dbg !51610, !noalias !51517
  store i64 0, ptr %i.w, align 8, !dbg !51610, !noalias !51517
  store i64 %.sroa.0.0.i.i, ptr %i.x, align 8, !dbg !51611, !noalias !51517
  %.val.i6.i = load ptr, ptr %.val4.i, align 8, !dbg !51612, !noalias !51518, !nonnull !4270, !noundef !4270
  %.val1.i7.i = load ptr, ptr %i.bd, align 8, !dbg !51612, !noalias !51518, !nonnull !4270, !align !4488, !noundef !4270
  %i.bs = getelementptr inbounds nuw i8, ptr %.val1.i7.i, i64 72, !dbg !51613
  %i.bt = load ptr, ptr %i.bs, align 8, !dbg !51613, !invariant.load !4270, !noalias !51519, !nonnull !4270
  %i.bu = call noundef ptr %i.bt(ptr noundef nonnull %.val.i6.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a) #56, !dbg !51614, !noalias !51517, !inline_history !51344
  %i.bv = load i64, ptr %i.w, align 8, !dbg !51615, !noalias !51517, !noundef !4270 ; 2 uses
  %i.bw = load i64, ptr %i.x, align 8, !dbg !51616, !noalias !51517, !noundef !4270
  %i.bx = add i64 %i.bv, %i.bg, !dbg !51617       ; 3 uses
  store i64 %i.bx, ptr %i.s, align 8, !dbg !51617, !alias.scope !51510, !noalias !51509
  %.sroa.0.0.i8.i = call noundef i64 @llvm.umax.i64(i64 %i.bx, i64 %i.bo), !dbg !51618
  %i.by = add i64 %i.bw, %i.bg, !dbg !51619
  %.sroa.0.0.i9.i = call noundef i64 @llvm.umax.i64(i64 %i.by, i64 %.sroa.0.0.i8.i), !dbg !51620
  store i64 %.sroa.0.0.i9.i, ptr %i.t, align 8, !dbg !51621, !alias.scope !51510, !noalias !51509
  %i.bz = sub i64 %i.be, %i.bv, !dbg !51622
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !51623, !noalias !51517
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EENtB5_4Read8read_bufB1i_.exit, !dbg !51603

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EENtB5_4Read8read_bufB1i_.exit: ; preds = %bb.o, %bb.p
  %.pre131136 = phi i64 [ %i.bx, %bb.p ], [ %i.bm, %bb.o ]
  %.sink = phi i64 [ %i.bz, %bb.p ], [ %i.bn, %bb.o ], !dbg !51624 ; 3 uses
  %.sroa.0.0.i65 = phi ptr [ %i.bu, %bb.p ], [ %i.bl, %bb.o ], !dbg !51624 ; 8 uses
  store i64 %.sink, ptr %i.u, align 8, !dbg !51624, !alias.scope !51509, !noalias !51510
  %.not60 = icmp eq ptr %.sroa.0.0.i65, null, !dbg !51625 ; 2 uses
  br i1 %.not60, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EENtB5_4Read8read_bufB1i_.exit.thread.loopexitsplit, label %bb.q, !dbg !51626

bb.q:                                             ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EENtB5_4Read8read_bufB1i_.exit
  %i.ca = ptrtoint ptr %.sroa.0.0.i65 to i64, !dbg !51627 ; 3 uses
  %i.cb = and i64 %i.ca, 3, !dbg !51628
  switch i64 %i.cb, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.r
    i64 0, label %.split100
    i64 1, label %.split99
  ], !dbg !51629, !prof !4782

default.unreachable:                              ; preds = %bb.q
  unreachable

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EENtB5_4Read8read_bufB1i_.exit.thread.loopexitsplit: ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EENtB5_4Read8read_bufB1i_.exit, %bb.r, %.split, %.split99, %.split100
  %i.cc = ptrtoint ptr %.sroa.0.0.i65 to i64, !dbg !51630
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EENtB5_4Read8read_bufB1i_.exit.thread, !dbg !51631

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EENtB5_4Read8read_bufB1i_.exit.thread: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EENtB5_4Read8read_bufB1i_.exit.thread.loopexit_crit_edge, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EENtB5_4Read8read_bufB1i_.exit.thread.loopexitsplit
  %.pre131 = phi i64 [ %.pre131.pre, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EENtB5_4Read8read_bufB1i_.exit.thread.loopexit_crit_edge ], [ %.pre131136, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EENtB5_4Read8read_bufB1i_.exit.thread.loopexitsplit ], !dbg !51631 ; 5 uses
  %.not6081.ph = phi i1 [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EENtB5_4Read8read_bufB1i_.exit.thread.loopexit_crit_edge ], [ %.not60, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EENtB5_4Read8read_bufB1i_.exit.thread.loopexitsplit ]
  %.sroa.0.0.i6579.ph = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EENtB5_4Read8read_bufB1i_.exit.thread.loopexit_crit_edge ], [ %i.cc, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EENtB5_4Read8read_bufB1i_.exit.thread.loopexitsplit ]
  %.pre132 = load i64, ptr %i.t, align 8, !dbg !51632 ; 2 uses
  %.pre133 = load i64, ptr %i.c, align 8, !dbg !51633 ; 2 uses
  %i.cd = sub nuw i64 %.pre132, %.pre131, !dbg !51634
  %i.ce = icmp ne i64 %.pre132, %.sroa.0.0.i, !dbg !51635
  %i.cf = icmp sgt i64 %.pre133, -1, !dbg !51588
  call void @llvm.assume(i1 %i.cf), !dbg !51589
  %i.cg = add i64 %.pre133, %.pre131, !dbg !51636 ; 3 uses
  store i64 %i.cg, ptr %i.c, align 8, !dbg !51590
  br i1 %.not6081.ph, label %bb.y, label %.loopexit148, !dbg !51637

.split:                                           ; preds = %bb.q
  %.mask103 = and i64 %i.ca, -4294967296, !dbg !51638
  %i.ch = icmp eq i64 %.mask103, 17179869184, !dbg !51638
  br i1 %i.ch, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EENtB5_4Read8read_bufB1i_.exit.thread.loopexitsplit, !dbg !51639

.split100:                                        ; preds = %bb.q
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i65, i64 16, !dbg !51640
  %i.cj = load i8, ptr %i.ci, align 8, !dbg !51640, !range !4789, !noundef !4270
  %i.ck = icmp eq i8 %i.cj, 35, !dbg !51641
  br i1 %i.ck, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EENtB5_4Read8read_bufB1i_.exit.thread.loopexitsplit, !dbg !51639

.split99:                                         ; preds = %bb.q
  %i.cl = getelementptr i8, ptr %.sroa.0.0.i65, i64 -1, !dbg !51642 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cl) ]
  %i.cm = getelementptr i8, ptr %.sroa.0.0.i65, i64 15, !dbg !51643
  %i.cn = load i8, ptr %i.cm, align 8, !dbg !51643, !range !4789, !noundef !4270
  %i.co = icmp eq i8 %i.cn, 35, !dbg !51644
  br i1 %i.co, label %bb.s, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EENtB5_4Read8read_bufB1i_.exit.thread.loopexitsplit, !dbg !51639

bb.r:                                             ; preds = %bb.q
  %i.cp = icmp ult ptr %.sroa.0.0.i65, inttoptr (i64 180388626432 to ptr), !dbg !51645
  call void @llvm.assume(i1 %i.cp), !dbg !51646
  %.mask = and i64 %i.ca, -4294967296, !dbg !51647
  %i.cq = icmp eq i64 %.mask, 150323855360, !dbg !51647
  br i1 %i.cq, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EENtB5_4Read8read_bufB1i_.exit.thread.loopexitsplit, !dbg !51639

bb.s:                                             ; preds = %.split99
  %.val.i.i.i.i.i = load ptr, ptr %i.cl, align 8, !dbg !51648 ; 5 uses
  %i.cr = getelementptr i8, ptr %.sroa.0.0.i65, i64 7, !dbg !51648
  %.val1.i.i.i.i.i = load ptr, ptr %i.cr, align 8, !dbg !51648, !nonnull !4270, !align !4488, !noundef !4270 ; 5 uses
  %i.cs = load ptr, ptr %.val1.i.i.i.i.i, align 8, !dbg !51649, !invariant.load !4270 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cs, null, !dbg !51649
  br i1 %.not.i.i.i.i.i.i.i, label %bb.u, label %bb.t, !dbg !51649

bb.t:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  invoke void %i.cs(ptr noundef nonnull %.val.i.i.i.i.i)
          to label %bb.u unwind label %bb.w, !dbg !51649

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ct = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !51650
  %i.cu = load i64, ptr %i.ct, align 8, !dbg !51650, !range !4635, !invariant.load !4270 ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 0, !dbg !51651
  br i1 %i.cv, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i, label %bb.v, !dbg !51651

bb.v:                                             ; preds = %bb.u
  %i.cw = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16, !dbg !51650
  %i.cx = load i64, ptr %i.cw, align 8, !dbg !51652, !range !4615, !invariant.load !4270
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.cu, i64 noundef range(i64 1, 536870913) %i.cx) #53, !dbg !51653
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i, !dbg !51654

bb.w:                                             ; preds = %bb.t
  %i.cy = landingpad { ptr, i32 }
          cleanup
  %i.cz = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !51655
  %i.da = load i64, ptr %i.cz, align 8, !dbg !51655, !range !4635, !invariant.load !4270 ; 2 uses
  %i.db = icmp eq i64 %i.da, 0, !dbg !51656
  br i1 %i.db, label %.body, label %bb.x, !dbg !51656

bb.x:                                             ; preds = %bb.w
  %i.dc = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16, !dbg !51655
  %i.dd = load i64, ptr %i.dc, align 8, !dbg !51657, !range !4615, !invariant.load !4270
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.da, i64 noundef range(i64 1, 536870913) %i.dd) #53, !dbg !51658
  br label %.body, !dbg !51659

.body:                                            ; preds = %bb.x, %bb.w
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cl, i64 noundef 24, i64 noundef 8) #53, !dbg !51660
  resume { ptr, i32 } %i.cy, !dbg !51661

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i: ; preds = %bb.v, %bb.u
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cl, i64 noundef 24, i64 noundef 8) #53, !dbg !51662
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, !dbg !51663

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.r, %.split, %.split100, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i
  %i.de = icmp eq i64 %.sink, 0, !dbg !51587
  br i1 %i.de, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EENtB5_4Read8read_bufB1i_.exit.thread.loopexit_crit_edge, label %bb.n, !dbg !51587

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EENtB5_4Read8read_bufB1i_.exit.thread.loopexit_crit_edge: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit
  %.pre131.pre = load i64, ptr %i.s, align 8, !dbg !51631
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EENtB5_4Read8read_bufB1i_.exit.thread, !dbg !51587

bb.y:                                             ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EENtB5_4Read8read_bufB1i_.exit.thread
  %i.df = icmp eq i64 %.pre131, 0, !dbg !51591
  br i1 %i.df, label %.loopexit149, label %bb.z, !dbg !51591

.loopexit149:                                     ; preds = %bb.y, %.thread
  %i.dg = phi i64 [ %i.ax, %.thread ], [ %i.cg, %bb.y ]
  %i.dh = sub nsw i64 %i.dg, %i.d, !dbg !51664
  br label %.loopexit148, !dbg !51665

bb.z:                                             ; preds = %bb.y
  %i.di = icmp ult i64 %.pre131, %.sroa.0.0.i, !dbg !51666
  %i.dj = add i32 %.sroa.019.0, 1, !dbg !51666
  %.sroa.019.1 = select i1 %i.di, i32 %i.dj, i32 0, !dbg !51666 ; 2 uses
  br i1 %.sroa.013.1, label %bb.ab, label %bb.aa, !dbg !51667

.loopexit148:                                     ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EENtB5_4Read8read_bufB1i_.exit.thread, %.loopexit149
  %.sroa.8.0 = phi i64 [ %i.dh, %.loopexit149 ], [ %.sroa.0.0.i6579.ph, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EENtB5_4Read8read_bufB1i_.exit.thread ], !dbg !51668
  %.sroa.010.0 = phi i64 [ 0, %.loopexit149 ], [ 1, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EENtB5_4Read8read_bufB1i_.exit.thread ], !dbg !51668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !51669
  br label %.loopexit, !dbg !51569

bb.aa:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.z
  %.sroa.050.4 = phi i64 [ -1, %bb.ad ], [ %i.dn, %bb.ac ], [ %spec.select, %bb.ab ], [ %.sroa.050.3, %bb.z ], !dbg !51557
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !51669
  br label %bb.f, !dbg !51553

bb.ab:                                            ; preds = %bb.z
  %i.dk = icmp sgt i32 %.sroa.019.1, 1
  %or.cond7 = select i1 %i.ce, i1 %i.dk, i1 false, !dbg !51670
  %spec.select = select i1 %or.cond7, i64 -1, i64 %.sroa.050.3, !dbg !51670 ; 4 uses
  %i.dl = icmp uge i64 %.sroa.0.0.i, %spec.select, !dbg !51671
  %i.dm = icmp eq i64 %.pre131, %.sroa.0.0.i
  %or.cond2 = and i1 %i.dm, %i.dl, !dbg !51671
  br i1 %or.cond2, label %bb.ac, label %bb.aa, !dbg !51671

bb.ac:                                            ; preds = %bb.ab
  %i.dn = shl nuw i64 %spec.select, 1, !dbg !51672
  %i.do = icmp slt i64 %spec.select, 0, !dbg !51672
  br i1 %i.do, label %bb.ad, label %bb.aa, !dbg !51673, !prof !4282

bb.ad:                                            ; preds = %bb.ac
  br label %bb.aa, !dbg !51674

.loopexit:                                        ; preds = %bb.l, %bb.i, %bb.k, %.loopexit148
  %.sroa.8.1 = phi i64 [ %i.aq, %bb.i ], [ %i.at, %bb.k ], [ %.sroa.8.0, %.loopexit148 ], [ 163208757251, %bb.l ], !dbg !51675
  %.sroa.010.1 = phi i64 [ 1, %bb.i ], [ 0, %bb.k ], [ %.sroa.010.0, %.loopexit148 ], [ 1, %bb.l ], !dbg !51675
  %i.dp = inttoptr i64 %.sroa.8.1 to ptr, !dbg !51676
  br label %bb.ae, !dbg !51677

bb.ae:                                            ; preds = %bb.e, %bb.d, %.loopexit
  %.sroa.8.2 = phi ptr [ %i.dp, %.loopexit ], [ %i.aa, %bb.d ], [ null, %bb.e ], !dbg !51558
  %.sroa.010.2 = phi i64 [ %.sroa.010.1, %.loopexit ], [ 1, %bb.d ], [ 0, %bb.e ], !dbg !51558
  %i.dq = insertvalue { i64, ptr } poison, i64 %.sroa.010.2, 0, !dbg !51676
  %i.dr = insertvalue { i64, ptr } %i.dq, ptr %.sroa.8.2, 1, !dbg !51676
  ret { i64, ptr } %i.dr, !dbg !51676
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEECseeLknQCOKOd_13polars_python(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !51678 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !51949 ; 7 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !51949, !noundef !4270 ; 7 uses
  %i.e = icmp sgt i64 %i.d, -1, !dbg !51950
  tail call void @llvm.assume(i1 %i.e), !dbg !51951
  %i.f = load i64, ptr %1, align 8, !dbg !51952, !range !4635, !noundef !4270 ; 2 uses
  %i.g = trunc nuw i64 %2 to i1, !dbg !51953      ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !51953

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %3, -1025, !dbg !51954
  br i1 %i.h, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEE0CseeLknQCOKOd_13polars_python.exit.thread, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEE0CseeLknQCOKOd_13polars_python.exit, !dbg !51955, !prof !4282

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEE0CseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  %i.i = add nuw i64 %3, 1024, !dbg !51954        ; 3 uses
  %i.j = and i64 %i.i, 8191, !dbg !51956          ; 2 uses
  %i.k = icmp eq i64 %i.j, 0, !dbg !51957
  %i.l = sub i64 %3, %i.j, !dbg !51957
  %i.m = add i64 %i.l, 9216, !dbg !51957          ; 2 uses
  %.not102 = icmp ult i64 %i.m, %i.i, !dbg !51957
  %.sroa.5.1.i = select i1 %.not102, i64 8192, i64 %i.m, !dbg !51958
  %.sroa.050.1 = select i1 %i.k, i64 %i.i, i64 %.sroa.5.1.i, !dbg !51957 ; 2 uses
  %i.n = icmp eq i64 %3, 0
  br i1 %i.n, label %bb.c, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEE0CseeLknQCOKOd_13polars_python.exit.thread, !dbg !51959

bb.c:                                             ; preds = %bb.a, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEE0CseeLknQCOKOd_13polars_python.exit
  %.sroa.050.0 = phi i64 [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEE0CseeLknQCOKOd_13polars_python.exit ], [ 8192, %bb.a ], !dbg !51960 ; 2 uses
  %.sroa.013.0 = xor i1 %i.g, true, !dbg !51961   ; 2 uses
  %i.o = sub nsw i64 %i.f, %i.d, !dbg !51962
  %i.p = icmp ult i64 %i.o, 32, !dbg !51962
  br i1 %i.p, label %bb.d, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEE0CseeLknQCOKOd_13polars_python.exit.thread, !dbg !51962

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEE0CseeLknQCOKOd_13polars_python.exit.thread: ; preds = %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEE0CseeLknQCOKOd_13polars_python.exit
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge ], [ %i.d, %bb.c ], [ %i.d, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEE0CseeLknQCOKOd_13polars_python.exit ], [ %i.d, %bb.b ], !dbg !51963
  %.sroa.050.2 = phi i64 [ %.sroa.050.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge ], [ %.sroa.050.0, %bb.c ], [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEE0CseeLknQCOKOd_13polars_python.exit ], [ 8192, %bb.b ], !dbg !51964
  %.sroa.013.1 = phi i1 [ %.sroa.013.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge ], [ %.sroa.013.0, %bb.c ], [ false, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEE0CseeLknQCOKOd_13polars_python.exit ], [ false, %bb.b ], !dbg !51965
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br label %bb.f, !dbg !51966

bb.d:                                             ; preds = %bb.c
  %i.y = tail call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !51885 ; 2 uses
  %i.z = extractvalue { i64, ptr } %i.y, 0, !dbg !51885
  %i.aa = extractvalue { i64, ptr } %i.y, 1, !dbg !51885 ; 2 uses
  %i.ab = trunc nuw i64 %i.z to i1, !dbg !51967
  br i1 %i.ab, label %bb.ae, label %bb.e, !dbg !51967

bb.e:                                             ; preds = %bb.d
  %i.ac = icmp eq ptr %i.aa, null, !dbg !51968
  br i1 %i.ac, label %bb.ae, label %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge, !dbg !51968

._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge: ; preds = %bb.e
  %.pre.pre = load i64, ptr %i.c, align 8, !dbg !51963
  br label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEE0CseeLknQCOKOd_13polars_python.exit.thread, !dbg !51968

bb.f:                                             ; preds = %bb.aa, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEE0CseeLknQCOKOd_13polars_python.exit.thread
  %i.ad = phi i64 [ %.pre, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEE0CseeLknQCOKOd_13polars_python.exit.thread ], [ %i.ck, %bb.aa ], !dbg !51963 ; 3 uses
  %.sroa.048.2 = phi i64 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEE0CseeLknQCOKOd_13polars_python.exit.thread ], [ %i.ch, %bb.aa ], !dbg !51969
  %.sroa.050.3 = phi i64 [ %.sroa.050.2, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEE0CseeLknQCOKOd_13polars_python.exit.thread ], [ %.sroa.050.4, %bb.aa ], !dbg !51970 ; 3 uses
  %.sroa.019.0 = phi i32 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEE0CseeLknQCOKOd_13polars_python.exit.thread ], [ %.sroa.019.1, %bb.aa ], !dbg !51971
  %i.ae = icmp sgt i64 %i.ad, -1, !dbg !51972
  call void @llvm.assume(i1 %i.ae), !dbg !51973
  %i.af = load i64, ptr %1, align 8, !dbg !51974, !range !4635, !noundef !4270 ; 3 uses
  %i.ag = icmp eq i64 %i.ad, %i.af, !dbg !51975
  %i.ah = icmp eq i64 %i.af, %i.f
  %or.cond62 = and i1 %i.ag, %i.ah, !dbg !51975
  br i1 %or.cond62, label %bb.h, label %bb.g, !dbg !51975

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.ai = phi i64 [ %.pre127, %._crit_edge ], [ %i.af, %bb.f ], !dbg !51976 ; 3 uses
  %i.aj = phi i64 [ %.pre126, %._crit_edge ], [ %i.ad, %bb.f ], !dbg !51977 ; 3 uses
  %i.ak = icmp sgt i64 %i.aj, -1, !dbg !51978
  call void @llvm.assume(i1 %i.ak), !dbg !51979
  %i.al = icmp eq i64 %i.aj, %i.ai, !dbg !51980
  br i1 %i.al, label %bb.l, label %bb.m, !dbg !51980

bb.h:                                             ; preds = %bb.f
  %i.am = call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !51897 ; 2 uses
  %i.an = extractvalue { i64, ptr } %i.am, 0, !dbg !51897
  %i.ao = extractvalue { i64, ptr } %i.am, 1, !dbg !51897 ; 2 uses
  %i.ap = trunc nuw i64 %i.an to i1, !dbg !51981
  br i1 %i.ap, label %bb.i, label %bb.j, !dbg !51981

bb.i:                                             ; preds = %bb.h
  %i.aq = ptrtoint ptr %i.ao to i64, !dbg !51897
  br label %.loopexit, !dbg !51982

bb.j:                                             ; preds = %bb.h
  %i.ar = icmp eq ptr %i.ao, null, !dbg !51983
  %.pre126 = load i64, ptr %i.c, align 8, !dbg !51977 ; 3 uses
  br i1 %i.ar, label %bb.k, label %._crit_edge, !dbg !51983

._crit_edge:                                      ; preds = %bb.j
  %.pre127 = load i64, ptr %1, align 8, !dbg !51976, !range !4635
  br label %bb.g, !dbg !51983

bb.k:                                             ; preds = %bb.j
  %i.as = icmp sgt i64 %.pre126, -1, !dbg !51984
  call void @llvm.assume(i1 %i.as), !dbg !51985
  %i.at = sub nsw i64 %.pre126, %i.d, !dbg !51986
  br label %.loopexit, !dbg !51987

bb.l:                                             ; preds = %bb.g
  %i.au = call { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.ai, i64 noundef 32, i64 noundef 1, i64 noundef 1), !dbg !51988
  %i.av = extractvalue { i64, i64 } %i.au, 0, !dbg !51988
  %.not = icmp eq i64 %i.av, -9223372036854775807, !dbg !51989
  br i1 %.not, label %._crit_edge128, label %.loopexit, !dbg !51990

._crit_edge128:                                   ; preds = %bb.l
  %.pre129 = load i64, ptr %i.c, align 8, !dbg !51991
  %.pre130 = load i64, ptr %1, align 8, !dbg !51992, !range !4635
  br label %bb.m, !dbg !51990

bb.m:                                             ; preds = %._crit_edge128, %bb.g
  %i.aw = phi i64 [ %.pre130, %._crit_edge128 ], [ %i.ai, %bb.g ], !dbg !51992
  %i.ax = phi i64 [ %.pre129, %._crit_edge128 ], [ %i.aj, %bb.g ], !dbg !51991 ; 5 uses
  %i.ay = load ptr, ptr %i.q, align 8, !dbg !51993, !nonnull !4270, !noundef !4270
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax, !dbg !51994
  %i.ba = sub i64 %i.aw, %i.ax, !dbg !51995
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.050.3, i64 %i.ba), !dbg !51996 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !51997
  store ptr %i.az, ptr %i.b, align 8, !dbg !51998
  store i64 %.sroa.0.0.i, ptr %i.r, align 8, !dbg !51998
  store i64 0, ptr %i.s, align 8, !dbg !51998
  store i64 %.sroa.048.2, ptr %i.t, align 8, !dbg !51999
  %.promoted = load i64, ptr %i.u, align 8, !alias.scope !51918, !noalias !51919 ; 2 uses
  %i.bb = icmp eq i64 %.promoted, 0, !dbg !52000
  br i1 %i.bb, label %.thread, label %.lr.ph, !dbg !52000

.thread:                                          ; preds = %bb.m
  %i.bc = icmp sgt i64 %i.ax, -1, !dbg !52001
  call void @llvm.assume(i1 %i.bc), !dbg !52002
  store i64 %i.ax, ptr %i.c, align 8, !dbg !52003
  br label %.loopexit149, !dbg !52004

.lr.ph:                                           ; preds = %bb.m
  %.val4.i = load ptr, ptr %0, align 8, !nonnull !4270, !align !4488 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.val4.i, i64 8 ; 2 uses
  br label %bb.n, !dbg !52000

bb.n:                                             ; preds = %.lr.ph, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit
  %i.be = phi i64 [ %.promoted, %.lr.ph ], [ %.sink, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !51918), !dbg !52005
  call void @llvm.experimental.noalias.scope.decl(metadata !51919), !dbg !52005
  %i.bf = load i64, ptr %i.r, align 8, !dbg !52006, !alias.scope !51919, !noalias !51918, !noundef !4270
  %i.bg = load i64, ptr %i.s, align 8, !dbg !52007, !alias.scope !51919, !noalias !51918, !noundef !4270 ; 6 uses
  %i.bh = sub i64 %i.bf, %i.bg, !dbg !52008
  %i.bi = icmp ult i64 %i.be, %i.bh, !dbg !52009
  br i1 %i.bi, label %bb.p, label %bb.o, !dbg !52009

bb.o:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !51922), !dbg !52010
  %i.bj = load ptr, ptr %.val4.i, align 8, !dbg !52011, !alias.scope !51922, !noalias !51923, !nonnull !4270, !noundef !4270
  %i.bk = load ptr, ptr %i.bd, align 8, !dbg !52011, !alias.scope !51922, !noalias !51923, !nonnull !4270, !align !4488, !noundef !4270
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 72, !dbg !52011
  %i.bm = load ptr, ptr %i.bl, align 8, !dbg !52011, !invariant.load !4270, !noalias !51924, !nonnull !4270
  %i.bn = call noundef ptr %i.bm(ptr noundef nonnull %i.bj, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b) #56, !dbg !52012, !noalias !51925, !inline_history !51752
  %i.bo = load i64, ptr %i.s, align 8, !dbg !52013, !alias.scope !51919, !noalias !51918, !noundef !4270 ; 2 uses
  %.neg.i = add i64 %i.bg, %i.be, !dbg !52014
  %i.bp = sub i64 %.neg.i, %i.bo, !dbg !52015
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit, !dbg !52016

bb.p:                                             ; preds = %bb.n
  %i.bq = load i64, ptr %i.t, align 8, !dbg !52017, !alias.scope !51919, !noalias !51918, !noundef !4270 ; 2 uses
  %i.br = sub nuw i64 %i.bq, %i.bg, !dbg !52018
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.br, i64 %i.be), !dbg !52019
  %i.bs = load ptr, ptr %i.b, align 8, !dbg !52020, !alias.scope !51919, !noalias !51918, !nonnull !4270, !noundef !4270
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bg, !dbg !52021
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !52022, !noalias !51928
  store ptr %i.bt, ptr %i.a, align 8, !dbg !52023, !noalias !51928
  store i64 %i.be, ptr %i.v, align 8, !dbg !52023, !noalias !51928
  store i64 0, ptr %i.w, align 8, !dbg !52023, !noalias !51928
  store i64 %.sroa.0.0.i.i, ptr %i.x, align 8, !dbg !52024, !noalias !51928
  call void @llvm.experimental.noalias.scope.decl(metadata !51929), !dbg !52025
  %i.bu = load ptr, ptr %.val4.i, align 8, !dbg !52026, !alias.scope !51929, !noalias !51930, !nonnull !4270, !noundef !4270
  %i.bv = load ptr, ptr %i.bd, align 8, !dbg !52026, !alias.scope !51929, !noalias !51930, !nonnull !4270, !align !4488, !noundef !4270
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 72, !dbg !52026
  %i.bx = load ptr, ptr %i.bw, align 8, !dbg !52026, !invariant.load !4270, !noalias !51931, !nonnull !4270
  %i.by = call noundef ptr %i.bx(ptr noundef nonnull %i.bu, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a) #56, !dbg !52027, !noalias !51932, !inline_history !51752
  %i.bz = load i64, ptr %i.w, align 8, !dbg !52028, !noalias !51928, !noundef !4270 ; 2 uses
  %i.ca = load i64, ptr %i.x, align 8, !dbg !52029, !noalias !51928, !noundef !4270
  %i.cb = add i64 %i.bz, %i.bg, !dbg !52030       ; 3 uses
  store i64 %i.cb, ptr %i.s, align 8, !dbg !52030, !alias.scope !51919, !noalias !51918
  %.sroa.0.0.i6.i = call noundef i64 @llvm.umax.i64(i64 %i.cb, i64 %i.bq), !dbg !52031
  %i.cc = add i64 %i.ca, %i.bg, !dbg !52032
  %.sroa.0.0.i7.i = call noundef i64 @llvm.umax.i64(i64 %i.cc, i64 %.sroa.0.0.i6.i), !dbg !52033
  store i64 %.sroa.0.0.i7.i, ptr %i.t, align 8, !dbg !52034, !alias.scope !51919, !noalias !51918
  %i.cd = sub i64 %i.be, %i.bz, !dbg !52035
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !52036, !noalias !51928
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit, !dbg !52016

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit: ; preds = %bb.o, %bb.p
  %.pre131136 = phi i64 [ %i.cb, %bb.p ], [ %i.bo, %bb.o ]
  %.sink = phi i64 [ %i.cd, %bb.p ], [ %i.bp, %bb.o ], !dbg !52037 ; 3 uses
  %.sroa.0.0.i65 = phi ptr [ %i.by, %bb.p ], [ %i.bn, %bb.o ], !dbg !52037 ; 8 uses
  store i64 %.sink, ptr %i.u, align 8, !dbg !52037, !alias.scope !51918, !noalias !51919
  %.not60 = icmp eq ptr %.sroa.0.0.i65, null, !dbg !52038 ; 2 uses
  br i1 %.not60, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit, label %bb.q, !dbg !52039

bb.q:                                             ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit
  %i.ce = ptrtoint ptr %.sroa.0.0.i65 to i64, !dbg !52040 ; 3 uses
  %i.cf = and i64 %i.ce, 3, !dbg !52041
  switch i64 %i.cf, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.r
    i64 0, label %.split100
    i64 1, label %.split99
  ], !dbg !52042, !prof !4782

default.unreachable:                              ; preds = %bb.q
  unreachable

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit: ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit, %bb.r, %.split, %.split99, %.split100
  %i.cg = ptrtoint ptr %.sroa.0.0.i65 to i64, !dbg !52043
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread, !dbg !52044

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexit_crit_edge, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit
  %.pre131 = phi i64 [ %.pre131.pre, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexit_crit_edge ], [ %.pre131136, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit ], !dbg !52044 ; 5 uses
  %.not6081.ph = phi i1 [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexit_crit_edge ], [ %.not60, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit ]
  %.sroa.0.0.i6579.ph = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexit_crit_edge ], [ %i.cg, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit ]
  %.pre132 = load i64, ptr %i.t, align 8, !dbg !52045 ; 2 uses
  %.pre133 = load i64, ptr %i.c, align 8, !dbg !52046 ; 2 uses
  %i.ch = sub nuw i64 %.pre132, %.pre131, !dbg !52047
  %i.ci = icmp ne i64 %.pre132, %.sroa.0.0.i, !dbg !52048
  %i.cj = icmp sgt i64 %.pre133, -1, !dbg !52001
  call void @llvm.assume(i1 %i.cj), !dbg !52002
  %i.ck = add i64 %.pre133, %.pre131, !dbg !52049 ; 3 uses
  store i64 %i.ck, ptr %i.c, align 8, !dbg !52003
  br i1 %.not6081.ph, label %bb.y, label %.loopexit148, !dbg !52050

.split:                                           ; preds = %bb.q
  %.mask103 = and i64 %i.ce, -4294967296, !dbg !52051
  %i.cl = icmp eq i64 %.mask103, 17179869184, !dbg !52051
  br i1 %i.cl, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit, !dbg !52052

.split100:                                        ; preds = %bb.q
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i65, i64 16, !dbg !52053
  %i.cn = load i8, ptr %i.cm, align 8, !dbg !52053, !range !4789, !noundef !4270
  %i.co = icmp eq i8 %i.cn, 35, !dbg !52054
  br i1 %i.co, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit, !dbg !52052

.split99:                                         ; preds = %bb.q
  %i.cp = getelementptr i8, ptr %.sroa.0.0.i65, i64 -1, !dbg !52055 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cp) ]
  %i.cq = getelementptr i8, ptr %.sroa.0.0.i65, i64 15, !dbg !52056
  %i.cr = load i8, ptr %i.cq, align 8, !dbg !52056, !range !4789, !noundef !4270
  %i.cs = icmp eq i8 %i.cr, 35, !dbg !52057
  br i1 %i.cs, label %bb.s, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit, !dbg !52052

bb.r:                                             ; preds = %bb.q
  %i.ct = icmp ult ptr %.sroa.0.0.i65, inttoptr (i64 180388626432 to ptr), !dbg !52058
  call void @llvm.assume(i1 %i.ct), !dbg !52059
  %.mask = and i64 %i.ce, -4294967296, !dbg !52060
  %i.cu = icmp eq i64 %.mask, 150323855360, !dbg !52060
  br i1 %i.cu, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit, !dbg !52052

bb.s:                                             ; preds = %.split99
  %.val.i.i.i.i.i = load ptr, ptr %i.cp, align 8, !dbg !52061 ; 5 uses
  %i.cv = getelementptr i8, ptr %.sroa.0.0.i65, i64 7, !dbg !52061
  %.val1.i.i.i.i.i = load ptr, ptr %i.cv, align 8, !dbg !52061, !nonnull !4270, !align !4488, !noundef !4270 ; 5 uses
  %i.cw = load ptr, ptr %.val1.i.i.i.i.i, align 8, !dbg !52062, !invariant.load !4270 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cw, null, !dbg !52062
  br i1 %.not.i.i.i.i.i.i.i, label %bb.u, label %bb.t, !dbg !52062

bb.t:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  invoke void %i.cw(ptr noundef nonnull %.val.i.i.i.i.i)
          to label %bb.u unwind label %bb.w, !dbg !52062

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cx = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !52063
  %i.cy = load i64, ptr %i.cx, align 8, !dbg !52063, !range !4635, !invariant.load !4270 ; 2 uses
  %i.cz = icmp eq i64 %i.cy, 0, !dbg !52064
  br i1 %i.cz, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i, label %bb.v, !dbg !52064

bb.v:                                             ; preds = %bb.u
  %i.da = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16, !dbg !52063
  %i.db = load i64, ptr %i.da, align 8, !dbg !52065, !range !4615, !invariant.load !4270
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.cy, i64 noundef range(i64 1, 536870913) %i.db) #53, !dbg !52066
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i, !dbg !52067

bb.w:                                             ; preds = %bb.t
  %i.dc = landingpad { ptr, i32 }
          cleanup
  %i.dd = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !52068
  %i.de = load i64, ptr %i.dd, align 8, !dbg !52068, !range !4635, !invariant.load !4270 ; 2 uses
  %i.df = icmp eq i64 %i.de, 0, !dbg !52069
  br i1 %i.df, label %.body, label %bb.x, !dbg !52069

bb.x:                                             ; preds = %bb.w
  %i.dg = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16, !dbg !52068
  %i.dh = load i64, ptr %i.dg, align 8, !dbg !52070, !range !4615, !invariant.load !4270
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.de, i64 noundef range(i64 1, 536870913) %i.dh) #53, !dbg !52071
  br label %.body, !dbg !52072

.body:                                            ; preds = %bb.x, %bb.w
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cp, i64 noundef 24, i64 noundef 8) #53, !dbg !52073
  resume { ptr, i32 } %i.dc, !dbg !52074

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i: ; preds = %bb.v, %bb.u
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cp, i64 noundef 24, i64 noundef 8) #53, !dbg !52075
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, !dbg !52076

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.r, %.split, %.split100, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i
  %i.di = icmp eq i64 %.sink, 0, !dbg !52000
  br i1 %i.di, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexit_crit_edge, label %bb.n, !dbg !52000

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexit_crit_edge: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit
  %.pre131.pre = load i64, ptr %i.s, align 8, !dbg !52044
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread, !dbg !52000

bb.y:                                             ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread
  %i.dj = icmp eq i64 %.pre131, 0, !dbg !52004
  br i1 %i.dj, label %.loopexit149, label %bb.z, !dbg !52004

.loopexit149:                                     ; preds = %bb.y, %.thread
  %i.dk = phi i64 [ %i.ax, %.thread ], [ %i.ck, %bb.y ]
  %i.dl = sub nsw i64 %i.dk, %i.d, !dbg !52077
  br label %.loopexit148, !dbg !52078

bb.z:                                             ; preds = %bb.y
  %i.dm = icmp ult i64 %.pre131, %.sroa.0.0.i, !dbg !52079
  %i.dn = add i32 %.sroa.019.0, 1, !dbg !52079
  %.sroa.019.1 = select i1 %i.dm, i32 %i.dn, i32 0, !dbg !52079 ; 2 uses
  br i1 %.sroa.013.1, label %bb.ab, label %bb.aa, !dbg !52080

.loopexit148:                                     ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread, %.loopexit149
  %.sroa.8.0 = phi i64 [ %i.dl, %.loopexit149 ], [ %.sroa.0.0.i6579.ph, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread ], !dbg !52081
  %.sroa.010.0 = phi i64 [ 0, %.loopexit149 ], [ 1, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread ], !dbg !52081
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !52082
  br label %.loopexit, !dbg !51982

bb.aa:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.z
  %.sroa.050.4 = phi i64 [ -1, %bb.ad ], [ %i.dr, %bb.ac ], [ %spec.select, %bb.ab ], [ %.sroa.050.3, %bb.z ], !dbg !51970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !52082
  br label %bb.f, !dbg !51966

bb.ab:                                            ; preds = %bb.z
  %i.do = icmp sgt i32 %.sroa.019.1, 1
  %or.cond7 = select i1 %i.ci, i1 %i.do, i1 false, !dbg !52083
  %spec.select = select i1 %or.cond7, i64 -1, i64 %.sroa.050.3, !dbg !52083 ; 4 uses
  %i.dp = icmp uge i64 %.sroa.0.0.i, %spec.select, !dbg !52084
  %i.dq = icmp eq i64 %.pre131, %.sroa.0.0.i
  %or.cond2 = and i1 %i.dq, %i.dp, !dbg !52084
  br i1 %or.cond2, label %bb.ac, label %bb.aa, !dbg !52084

bb.ac:                                            ; preds = %bb.ab
  %i.dr = shl nuw i64 %spec.select, 1, !dbg !52085
  %i.ds = icmp slt i64 %spec.select, 0, !dbg !52085
  br i1 %i.ds, label %bb.ad, label %bb.aa, !dbg !52086, !prof !4282

bb.ad:                                            ; preds = %bb.ac
  br label %bb.aa, !dbg !52087

.loopexit:                                        ; preds = %bb.l, %bb.i, %bb.k, %.loopexit148
  %.sroa.8.1 = phi i64 [ %i.aq, %bb.i ], [ %i.at, %bb.k ], [ %.sroa.8.0, %.loopexit148 ], [ 163208757251, %bb.l ], !dbg !52088
  %.sroa.010.1 = phi i64 [ 1, %bb.i ], [ 0, %bb.k ], [ %.sroa.010.0, %.loopexit148 ], [ 1, %bb.l ], !dbg !52088
  %i.dt = inttoptr i64 %.sroa.8.1 to ptr, !dbg !52089
  br label %bb.ae, !dbg !52090

bb.ae:                                            ; preds = %bb.e, %bb.d, %.loopexit
  %.sroa.8.2 = phi ptr [ %i.dt, %.loopexit ], [ %i.aa, %bb.d ], [ null, %bb.e ], !dbg !51971
  %.sroa.010.2 = phi i64 [ %.sroa.010.1, %.loopexit ], [ 1, %bb.d ], [ 0, %bb.e ], !dbg !51971
  %i.du = insertvalue { i64, ptr } poison, i64 %.sroa.010.2, 0, !dbg !52089
  %i.dv = insertvalue { i64, ptr } %i.du, ptr %.sroa.8.2, 1, !dbg !52089
  ret { i64, ptr } %i.dv, !dbg !52089
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQINtNtNtB2_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEB2d_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !52091 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !52341 ; 7 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !52341, !noundef !4270 ; 7 uses
  %i.e = icmp sgt i64 %i.d, -1, !dbg !52342
  tail call void @llvm.assume(i1 %i.e), !dbg !52343
  %i.f = load i64, ptr %1, align 8, !dbg !52344, !range !4635, !noundef !4270 ; 2 uses
  %i.g = trunc nuw i64 %2 to i1, !dbg !52345      ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !52345

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %3, -1025, !dbg !52346
  br i1 %i.h, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEE0B2f_.exit.thread, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEE0B2f_.exit, !dbg !52347, !prof !4282

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEE0B2f_.exit: ; preds = %bb.b
  %i.i = add nuw i64 %3, 1024, !dbg !52346        ; 3 uses
  %i.j = and i64 %i.i, 8191, !dbg !52348          ; 2 uses
  %i.k = icmp eq i64 %i.j, 0, !dbg !52349
  %i.l = sub i64 %3, %i.j, !dbg !52349
  %i.m = add i64 %i.l, 9216, !dbg !52349          ; 2 uses
  %.not102 = icmp ult i64 %i.m, %i.i, !dbg !52349
  %.sroa.5.1.i = select i1 %.not102, i64 8192, i64 %i.m, !dbg !52350
  %.sroa.050.1 = select i1 %i.k, i64 %i.i, i64 %.sroa.5.1.i, !dbg !52349 ; 2 uses
  %i.n = icmp eq i64 %3, 0
  br i1 %i.n, label %bb.c, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEE0B2f_.exit.thread, !dbg !52351

bb.c:                                             ; preds = %bb.a, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEE0B2f_.exit
  %.sroa.050.0 = phi i64 [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEE0B2f_.exit ], [ 8192, %bb.a ], !dbg !52352 ; 2 uses
  %.sroa.013.0 = xor i1 %i.g, true, !dbg !52353   ; 2 uses
  %i.o = sub nsw i64 %i.f, %i.d, !dbg !52354
  %i.p = icmp ult i64 %i.o, 32, !dbg !52354
  br i1 %i.p, label %bb.d, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEE0B2f_.exit.thread, !dbg !52354

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEE0B2f_.exit.thread: ; preds = %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEE0B2f_.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEE0B2f_.exit
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEE0B2f_.exit.thread_crit_edge ], [ %i.d, %bb.c ], [ %i.d, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEE0B2f_.exit ], [ %i.d, %bb.b ], !dbg !52355
  %.sroa.050.2 = phi i64 [ %.sroa.050.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEE0B2f_.exit.thread_crit_edge ], [ %.sroa.050.0, %bb.c ], [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEE0B2f_.exit ], [ 8192, %bb.b ], !dbg !52356
  %.sroa.013.1 = phi i1 [ %.sroa.013.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEE0B2f_.exit.thread_crit_edge ], [ %.sroa.013.0, %bb.c ], [ false, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEE0B2f_.exit ], [ false, %bb.b ], !dbg !52357
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br label %bb.f, !dbg !52358

bb.d:                                             ; preds = %bb.c
  %i.y = tail call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEB2x_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !52285 ; 2 uses
  %i.z = extractvalue { i64, ptr } %i.y, 0, !dbg !52285
  %i.aa = extractvalue { i64, ptr } %i.y, 1, !dbg !52285 ; 2 uses
  %i.ab = trunc nuw i64 %i.z to i1, !dbg !52359
  br i1 %i.ab, label %bb.ae, label %bb.e, !dbg !52359

bb.e:                                             ; preds = %bb.d
  %i.ac = icmp eq ptr %i.aa, null, !dbg !52360
  br i1 %i.ac, label %bb.ae, label %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEE0B2f_.exit.thread_crit_edge, !dbg !52360

._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEE0B2f_.exit.thread_crit_edge: ; preds = %bb.e
  %.pre.pre = load i64, ptr %i.c, align 8, !dbg !52355
  br label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEE0B2f_.exit.thread, !dbg !52360

bb.f:                                             ; preds = %bb.aa, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEE0B2f_.exit.thread
  %i.ad = phi i64 [ %.pre, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEE0B2f_.exit.thread ], [ %i.cb, %bb.aa ], !dbg !52355 ; 3 uses
  %.sroa.048.2 = phi i64 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEE0B2f_.exit.thread ], [ %i.by, %bb.aa ], !dbg !52361
  %.sroa.050.3 = phi i64 [ %.sroa.050.2, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEE0B2f_.exit.thread ], [ %.sroa.050.4, %bb.aa ], !dbg !52362 ; 3 uses
  %.sroa.019.0 = phi i32 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEE0B2f_.exit.thread ], [ %.sroa.019.1, %bb.aa ], !dbg !52363
  %i.ae = icmp sgt i64 %i.ad, -1, !dbg !52364
  call void @llvm.assume(i1 %i.ae), !dbg !52365
  %i.af = load i64, ptr %1, align 8, !dbg !52366, !range !4635, !noundef !4270 ; 3 uses
  %i.ag = icmp eq i64 %i.ad, %i.af, !dbg !52367
  %i.ah = icmp eq i64 %i.af, %i.f
  %or.cond62 = and i1 %i.ag, %i.ah, !dbg !52367
  br i1 %or.cond62, label %bb.h, label %bb.g, !dbg !52367

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.ai = phi i64 [ %.pre127, %._crit_edge ], [ %i.af, %bb.f ], !dbg !52368 ; 3 uses
  %i.aj = phi i64 [ %.pre126, %._crit_edge ], [ %i.ad, %bb.f ], !dbg !52369 ; 3 uses
  %i.ak = icmp sgt i64 %i.aj, -1, !dbg !52370
  call void @llvm.assume(i1 %i.ak), !dbg !52371
  %i.al = icmp eq i64 %i.aj, %i.ai, !dbg !52372
  br i1 %i.al, label %bb.l, label %bb.m, !dbg !52372

bb.h:                                             ; preds = %bb.f
  %i.am = call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEB2x_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !52297 ; 2 uses
  %i.an = extractvalue { i64, ptr } %i.am, 0, !dbg !52297
  %i.ao = extractvalue { i64, ptr } %i.am, 1, !dbg !52297 ; 2 uses
  %i.ap = trunc nuw i64 %i.an to i1, !dbg !52373
  br i1 %i.ap, label %bb.i, label %bb.j, !dbg !52373

bb.i:                                             ; preds = %bb.h
  %i.aq = ptrtoint ptr %i.ao to i64, !dbg !52297
  br label %.loopexit, !dbg !52374

bb.j:                                             ; preds = %bb.h
  %i.ar = icmp eq ptr %i.ao, null, !dbg !52375
  %.pre126 = load i64, ptr %i.c, align 8, !dbg !52369 ; 3 uses
  br i1 %i.ar, label %bb.k, label %._crit_edge, !dbg !52375

._crit_edge:                                      ; preds = %bb.j
  %.pre127 = load i64, ptr %1, align 8, !dbg !52368, !range !4635
  br label %bb.g, !dbg !52375

bb.k:                                             ; preds = %bb.j
  %i.as = icmp sgt i64 %.pre126, -1, !dbg !52376
  call void @llvm.assume(i1 %i.as), !dbg !52377
  %i.at = sub nsw i64 %.pre126, %i.d, !dbg !52378
  br label %.loopexit, !dbg !52379

bb.l:                                             ; preds = %bb.g
  %i.au = call { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.ai, i64 noundef 32, i64 noundef 1, i64 noundef 1), !dbg !52380
  %i.av = extractvalue { i64, i64 } %i.au, 0, !dbg !52380
  %.not = icmp eq i64 %i.av, -9223372036854775807, !dbg !52381
  br i1 %.not, label %._crit_edge128, label %.loopexit, !dbg !52382

._crit_edge128:                                   ; preds = %bb.l
  %.pre129 = load i64, ptr %i.c, align 8, !dbg !52383
  %.pre130 = load i64, ptr %1, align 8, !dbg !52384, !range !4635
  br label %bb.m, !dbg !52382

bb.m:                                             ; preds = %._crit_edge128, %bb.g
  %i.aw = phi i64 [ %.pre130, %._crit_edge128 ], [ %i.ai, %bb.g ], !dbg !52384
  %i.ax = phi i64 [ %.pre129, %._crit_edge128 ], [ %i.aj, %bb.g ], !dbg !52383 ; 5 uses
  %i.ay = load ptr, ptr %i.q, align 8, !dbg !52385, !nonnull !4270, !noundef !4270
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax, !dbg !52386
  %i.ba = sub i64 %i.aw, %i.ax, !dbg !52387
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.050.3, i64 %i.ba), !dbg !52388 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !52389
  store ptr %i.az, ptr %i.b, align 8, !dbg !52390
  store i64 %.sroa.0.0.i, ptr %i.r, align 8, !dbg !52390
  store i64 0, ptr %i.s, align 8, !dbg !52390
  store i64 %.sroa.048.2, ptr %i.t, align 8, !dbg !52391
  %.promoted = load i64, ptr %i.u, align 8, !alias.scope !52318, !noalias !52319 ; 2 uses
  %i.bb = icmp eq i64 %.promoted, 0, !dbg !52392
  br i1 %i.bb, label %.thread, label %.lr.ph, !dbg !52392

.thread:                                          ; preds = %bb.m
  %i.bc = icmp sgt i64 %i.ax, -1, !dbg !52393
  call void @llvm.assume(i1 %i.bc), !dbg !52394
  store i64 %i.ax, ptr %i.c, align 8, !dbg !52395
  br label %.loopexit149, !dbg !52396

.lr.ph:                                           ; preds = %bb.m
  %.val4.i = load ptr, ptr %0, align 8, !nonnull !4270, !align !4488 ; 2 uses
  br label %bb.n, !dbg !52392

bb.n:                                             ; preds = %.lr.ph, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit
  %i.bd = phi i64 [ %.promoted, %.lr.ph ], [ %.sink, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !52318), !dbg !52397
  call void @llvm.experimental.noalias.scope.decl(metadata !52319), !dbg !52397
  %i.be = load i64, ptr %i.r, align 8, !dbg !52398, !alias.scope !52319, !noalias !52318, !noundef !4270
  %i.bf = load i64, ptr %i.s, align 8, !dbg !52399, !alias.scope !52319, !noalias !52318, !noundef !4270 ; 6 uses
  %i.bg = sub i64 %i.be, %i.bf, !dbg !52400
  %i.bh = icmp ult i64 %i.bd, %i.bg, !dbg !52401
  br i1 %i.bh, label %bb.p, label %bb.o, !dbg !52401

bb.o:                                             ; preds = %bb.n
  %i.bi = call noundef ptr @_RNvXs3_NtNtNtCsh8eZTKRCwoO_3std2io8buffered9bufreaderINtB5_9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EENtB9_4Read8read_bufB1J_(ptr noalias noundef nonnull align 8 dereferenceable(56) %.val4.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b), !dbg !52402, !noalias !52318
  %i.bj = load i64, ptr %i.s, align 8, !dbg !52403, !alias.scope !52319, !noalias !52318, !noundef !4270 ; 2 uses
  %.neg.i = add i64 %i.bf, %i.bd, !dbg !52404
  %i.bk = sub i64 %.neg.i, %i.bj, !dbg !52405
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1V_.exit, !dbg !52406

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %i.t, align 8, !dbg !52407, !alias.scope !52319, !noalias !52318, !noundef !4270 ; 2 uses
  %i.bm = sub nuw i64 %i.bl, %i.bf, !dbg !52408
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bm, i64 %i.bd), !dbg !52409
  %i.bn = load ptr, ptr %i.b, align 8, !dbg !52410, !alias.scope !52319, !noalias !52318, !nonnull !4270, !noundef !4270
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bf, !dbg !52411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !52412, !noalias !52324
  store ptr %i.bo, ptr %i.a, align 8, !dbg !52413, !noalias !52324
  store i64 %i.bd, ptr %i.v, align 8, !dbg !52413, !noalias !52324
  store i64 0, ptr %i.w, align 8, !dbg !52413, !noalias !52324
  store i64 %.sroa.0.0.i.i, ptr %i.x, align 8, !dbg !52414, !noalias !52324
  %i.bp = call noundef ptr @_RNvXs3_NtNtNtCsh8eZTKRCwoO_3std2io8buffered9bufreaderINtB5_9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EENtB9_4Read8read_bufB1J_(ptr noalias noundef nonnull align 8 dereferenceable(56) %.val4.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a), !dbg !52415, !noalias !52324
  %i.bq = load i64, ptr %i.w, align 8, !dbg !52416, !noalias !52324, !noundef !4270 ; 2 uses
  %i.br = load i64, ptr %i.x, align 8, !dbg !52417, !noalias !52324, !noundef !4270
  %i.bs = add i64 %i.bq, %i.bf, !dbg !52418       ; 3 uses
  store i64 %i.bs, ptr %i.s, align 8, !dbg !52418, !alias.scope !52319, !noalias !52318
  %.sroa.0.0.i6.i = call noundef i64 @llvm.umax.i64(i64 %i.bs, i64 %i.bl), !dbg !52419
  %i.bt = add i64 %i.br, %i.bf, !dbg !52420
  %.sroa.0.0.i7.i = call noundef i64 @llvm.umax.i64(i64 %i.bt, i64 %.sroa.0.0.i6.i), !dbg !52421
  store i64 %.sroa.0.0.i7.i, ptr %i.t, align 8, !dbg !52422, !alias.scope !52319, !noalias !52318
  %i.bu = sub i64 %i.bd, %i.bq, !dbg !52423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !52424, !noalias !52324
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1V_.exit, !dbg !52406

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1V_.exit: ; preds = %bb.o, %bb.p
  %.pre131136 = phi i64 [ %i.bs, %bb.p ], [ %i.bj, %bb.o ]
  %.sink = phi i64 [ %i.bu, %bb.p ], [ %i.bk, %bb.o ], !dbg !52425 ; 3 uses
  %.sroa.0.0.i65 = phi ptr [ %i.bp, %bb.p ], [ %i.bi, %bb.o ], !dbg !52425 ; 8 uses
  store i64 %.sink, ptr %i.u, align 8, !dbg !52425, !alias.scope !52318, !noalias !52319
  %.not60 = icmp eq ptr %.sroa.0.0.i65, null, !dbg !52426 ; 2 uses
  br i1 %.not60, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1V_.exit.thread.loopexitsplit, label %bb.q, !dbg !52427

bb.q:                                             ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1V_.exit
  %i.bv = ptrtoint ptr %.sroa.0.0.i65 to i64, !dbg !52428 ; 3 uses
  %i.bw = and i64 %i.bv, 3, !dbg !52429
  switch i64 %i.bw, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.r
    i64 0, label %.split100
    i64 1, label %.split99
  ], !dbg !52430, !prof !4782

default.unreachable:                              ; preds = %bb.q
  unreachable

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1V_.exit.thread.loopexitsplit: ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1V_.exit, %bb.r, %.split, %.split99, %.split100
  %i.bx = ptrtoint ptr %.sroa.0.0.i65 to i64, !dbg !52431
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1V_.exit.thread, !dbg !52432

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1V_.exit.thread: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1V_.exit.thread.loopexit_crit_edge, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1V_.exit.thread.loopexitsplit
  %.pre131 = phi i64 [ %.pre131.pre, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1V_.exit.thread.loopexit_crit_edge ], [ %.pre131136, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1V_.exit.thread.loopexitsplit ], !dbg !52432 ; 5 uses
  %.not6081.ph = phi i1 [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1V_.exit.thread.loopexit_crit_edge ], [ %.not60, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1V_.exit.thread.loopexitsplit ]
  %.sroa.0.0.i6579.ph = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1V_.exit.thread.loopexit_crit_edge ], [ %i.bx, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1V_.exit.thread.loopexitsplit ]
  %.pre132 = load i64, ptr %i.t, align 8, !dbg !52433 ; 2 uses
  %.pre133 = load i64, ptr %i.c, align 8, !dbg !52434 ; 2 uses
  %i.by = sub nuw i64 %.pre132, %.pre131, !dbg !52435
  %i.bz = icmp ne i64 %.pre132, %.sroa.0.0.i, !dbg !52436
  %i.ca = icmp sgt i64 %.pre133, -1, !dbg !52393
  call void @llvm.assume(i1 %i.ca), !dbg !52394
  %i.cb = add i64 %.pre133, %.pre131, !dbg !52437 ; 3 uses
  store i64 %i.cb, ptr %i.c, align 8, !dbg !52395
  br i1 %.not6081.ph, label %bb.y, label %.loopexit148, !dbg !52438

.split:                                           ; preds = %bb.q
  %.mask103 = and i64 %i.bv, -4294967296, !dbg !52439
  %i.cc = icmp eq i64 %.mask103, 17179869184, !dbg !52439
  br i1 %i.cc, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1V_.exit.thread.loopexitsplit, !dbg !52440

.split100:                                        ; preds = %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i65, i64 16, !dbg !52441
  %i.ce = load i8, ptr %i.cd, align 8, !dbg !52441, !range !4789, !noundef !4270
  %i.cf = icmp eq i8 %i.ce, 35, !dbg !52442
  br i1 %i.cf, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1V_.exit.thread.loopexitsplit, !dbg !52440

.split99:                                         ; preds = %bb.q
  %i.cg = getelementptr i8, ptr %.sroa.0.0.i65, i64 -1, !dbg !52443 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cg) ]
  %i.ch = getelementptr i8, ptr %.sroa.0.0.i65, i64 15, !dbg !52444
  %i.ci = load i8, ptr %i.ch, align 8, !dbg !52444, !range !4789, !noundef !4270
  %i.cj = icmp eq i8 %i.ci, 35, !dbg !52445
  br i1 %i.cj, label %bb.s, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1V_.exit.thread.loopexitsplit, !dbg !52440

bb.r:                                             ; preds = %bb.q
  %i.ck = icmp ult ptr %.sroa.0.0.i65, inttoptr (i64 180388626432 to ptr), !dbg !52446
  call void @llvm.assume(i1 %i.ck), !dbg !52447
  %.mask = and i64 %i.bv, -4294967296, !dbg !52448
  %i.cl = icmp eq i64 %.mask, 150323855360, !dbg !52448
  br i1 %i.cl, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1V_.exit.thread.loopexitsplit, !dbg !52440

bb.s:                                             ; preds = %.split99
  %.val.i.i.i.i.i = load ptr, ptr %i.cg, align 8, !dbg !52449 ; 5 uses
  %i.cm = getelementptr i8, ptr %.sroa.0.0.i65, i64 7, !dbg !52449
  %.val1.i.i.i.i.i = load ptr, ptr %i.cm, align 8, !dbg !52449, !nonnull !4270, !align !4488, !noundef !4270 ; 5 uses
  %i.cn = load ptr, ptr %.val1.i.i.i.i.i, align 8, !dbg !52450, !invariant.load !4270 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cn, null, !dbg !52450
  br i1 %.not.i.i.i.i.i.i.i, label %bb.u, label %bb.t, !dbg !52450

bb.t:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  invoke void %i.cn(ptr noundef nonnull %.val.i.i.i.i.i)
          to label %bb.u unwind label %bb.w, !dbg !52450

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.co = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !52451
  %i.cp = load i64, ptr %i.co, align 8, !dbg !52451, !range !4635, !invariant.load !4270 ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 0, !dbg !52452
  br i1 %i.cq, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i, label %bb.v, !dbg !52452

bb.v:                                             ; preds = %bb.u
  %i.cr = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16, !dbg !52451
  %i.cs = load i64, ptr %i.cr, align 8, !dbg !52453, !range !4615, !invariant.load !4270
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.cp, i64 noundef range(i64 1, 536870913) %i.cs) #53, !dbg !52454
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i, !dbg !52455

bb.w:                                             ; preds = %bb.t
  %i.ct = landingpad { ptr, i32 }
          cleanup
  %i.cu = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !52456
  %i.cv = load i64, ptr %i.cu, align 8, !dbg !52456, !range !4635, !invariant.load !4270 ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 0, !dbg !52457
  br i1 %i.cw, label %.body, label %bb.x, !dbg !52457

bb.x:                                             ; preds = %bb.w
  %i.cx = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16, !dbg !52456
  %i.cy = load i64, ptr %i.cx, align 8, !dbg !52458, !range !4615, !invariant.load !4270
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.cv, i64 noundef range(i64 1, 536870913) %i.cy) #53, !dbg !52459
  br label %.body, !dbg !52460

.body:                                            ; preds = %bb.x, %bb.w
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cg, i64 noundef 24, i64 noundef 8) #53, !dbg !52461
  resume { ptr, i32 } %i.ct, !dbg !52462

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i: ; preds = %bb.v, %bb.u
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cg, i64 noundef 24, i64 noundef 8) #53, !dbg !52463
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, !dbg !52464

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.r, %.split, %.split100, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i
  %i.cz = icmp eq i64 %.sink, 0, !dbg !52392
  br i1 %i.cz, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1V_.exit.thread.loopexit_crit_edge, label %bb.n, !dbg !52392

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1V_.exit.thread.loopexit_crit_edge: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit
  %.pre131.pre = load i64, ptr %i.s, align 8, !dbg !52432
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1V_.exit.thread, !dbg !52392

bb.y:                                             ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1V_.exit.thread
  %i.da = icmp eq i64 %.pre131, 0, !dbg !52396
  br i1 %i.da, label %.loopexit149, label %bb.z, !dbg !52396

.loopexit149:                                     ; preds = %bb.y, %.thread
  %i.db = phi i64 [ %i.ax, %.thread ], [ %i.cb, %bb.y ]
  %i.dc = sub nsw i64 %i.db, %i.d, !dbg !52465
  br label %.loopexit148, !dbg !52466

bb.z:                                             ; preds = %bb.y
  %i.dd = icmp ult i64 %.pre131, %.sroa.0.0.i, !dbg !52467
  %i.de = add i32 %.sroa.019.0, 1, !dbg !52467
  %.sroa.019.1 = select i1 %i.dd, i32 %i.de, i32 0, !dbg !52467 ; 2 uses
  br i1 %.sroa.013.1, label %bb.ab, label %bb.aa, !dbg !52468

.loopexit148:                                     ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1V_.exit.thread, %.loopexit149
  %.sroa.8.0 = phi i64 [ %i.dc, %.loopexit149 ], [ %.sroa.0.0.i6579.ph, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1V_.exit.thread ], !dbg !52469
  %.sroa.010.0 = phi i64 [ 0, %.loopexit149 ], [ 1, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1V_.exit.thread ], !dbg !52469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !52470
  br label %.loopexit, !dbg !52374

bb.aa:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.z
  %.sroa.050.4 = phi i64 [ -1, %bb.ad ], [ %i.di, %bb.ac ], [ %spec.select, %bb.ab ], [ %.sroa.050.3, %bb.z ], !dbg !52362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !52470
  br label %bb.f, !dbg !52358

bb.ab:                                            ; preds = %bb.z
  %i.df = icmp sgt i32 %.sroa.019.1, 1
  %or.cond7 = select i1 %i.bz, i1 %i.df, i1 false, !dbg !52471
  %spec.select = select i1 %or.cond7, i64 -1, i64 %.sroa.050.3, !dbg !52471 ; 4 uses
  %i.dg = icmp uge i64 %.sroa.0.0.i, %spec.select, !dbg !52472
  %i.dh = icmp eq i64 %.pre131, %.sroa.0.0.i
  %or.cond2 = and i1 %i.dh, %i.dg, !dbg !52472
  br i1 %or.cond2, label %bb.ac, label %bb.aa, !dbg !52472

bb.ac:                                            ; preds = %bb.ab
  %i.di = shl nuw i64 %spec.select, 1, !dbg !52473
  %i.dj = icmp slt i64 %spec.select, 0, !dbg !52473
  br i1 %i.dj, label %bb.ad, label %bb.aa, !dbg !52474, !prof !4282

bb.ad:                                            ; preds = %bb.ac
  br label %bb.aa, !dbg !52475

.loopexit:                                        ; preds = %bb.l, %bb.i, %bb.k, %.loopexit148
  %.sroa.8.1 = phi i64 [ %i.aq, %bb.i ], [ %i.at, %bb.k ], [ %.sroa.8.0, %.loopexit148 ], [ 163208757251, %bb.l ], !dbg !52476
  %.sroa.010.1 = phi i64 [ 1, %bb.i ], [ 0, %bb.k ], [ %.sroa.010.0, %.loopexit148 ], [ 1, %bb.l ], !dbg !52476
  %i.dk = inttoptr i64 %.sroa.8.1 to ptr, !dbg !52477
  br label %bb.ae, !dbg !52478

bb.ae:                                            ; preds = %bb.e, %bb.d, %.loopexit
  %.sroa.8.2 = phi ptr [ %i.dk, %.loopexit ], [ %i.aa, %bb.d ], [ null, %bb.e ], !dbg !52363
  %.sroa.010.2 = phi i64 [ %.sroa.010.1, %.loopexit ], [ 1, %bb.d ], [ 0, %bb.e ], !dbg !52363
  %i.dl = insertvalue { i64, ptr } poison, i64 %.sroa.010.2, 0, !dbg !52477
  %i.dm = insertvalue { i64, ptr } %i.dl, ptr %.sroa.8.2, 1, !dbg !52477
  ret { i64, ptr } %i.dm, !dbg !52477
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQINtNtNtB2_8buffered9bufreader9BufReaderNtNtB4_2fs4FileEEECseeLknQCOKOd_13polars_python(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !52479 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !52730 ; 7 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !52730, !noundef !4270 ; 7 uses
  %i.e = icmp sgt i64 %i.d, -1, !dbg !52731
  tail call void @llvm.assume(i1 %i.e), !dbg !52732
  %i.f = load i64, ptr %1, align 8, !dbg !52733, !range !4635, !noundef !4270 ; 2 uses
  %i.g = trunc nuw i64 %2 to i1, !dbg !52734      ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !52734

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %3, -1025, !dbg !52735
  br i1 %i.h, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderNtNtB6_2fs4FileEEE0CseeLknQCOKOd_13polars_python.exit.thread, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderNtNtB6_2fs4FileEEE0CseeLknQCOKOd_13polars_python.exit, !dbg !52736, !prof !4282

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderNtNtB6_2fs4FileEEE0CseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  %i.i = add nuw i64 %3, 1024, !dbg !52735        ; 3 uses
  %i.j = and i64 %i.i, 8191, !dbg !52737          ; 2 uses
  %i.k = icmp eq i64 %i.j, 0, !dbg !52738
  %i.l = sub i64 %3, %i.j, !dbg !52738
  %i.m = add i64 %i.l, 9216, !dbg !52738          ; 2 uses
  %.not102 = icmp ult i64 %i.m, %i.i, !dbg !52738
  %.sroa.5.1.i = select i1 %.not102, i64 8192, i64 %i.m, !dbg !52739
  %.sroa.050.1 = select i1 %i.k, i64 %i.i, i64 %.sroa.5.1.i, !dbg !52738 ; 2 uses
  %i.n = icmp eq i64 %3, 0
  br i1 %i.n, label %bb.c, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderNtNtB6_2fs4FileEEE0CseeLknQCOKOd_13polars_python.exit.thread, !dbg !52740

bb.c:                                             ; preds = %bb.a, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderNtNtB6_2fs4FileEEE0CseeLknQCOKOd_13polars_python.exit
  %.sroa.050.0 = phi i64 [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderNtNtB6_2fs4FileEEE0CseeLknQCOKOd_13polars_python.exit ], [ 8192, %bb.a ], !dbg !52741 ; 2 uses
  %.sroa.013.0 = xor i1 %i.g, true, !dbg !52742   ; 2 uses
  %i.o = sub nsw i64 %i.f, %i.d, !dbg !52743
  %i.p = icmp ult i64 %i.o, 32, !dbg !52743
  br i1 %i.p, label %bb.d, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderNtNtB6_2fs4FileEEE0CseeLknQCOKOd_13polars_python.exit.thread, !dbg !52743

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderNtNtB6_2fs4FileEEE0CseeLknQCOKOd_13polars_python.exit.thread: ; preds = %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderNtNtB6_2fs4FileEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderNtNtB6_2fs4FileEEE0CseeLknQCOKOd_13polars_python.exit
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderNtNtB6_2fs4FileEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge ], [ %i.d, %bb.c ], [ %i.d, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderNtNtB6_2fs4FileEEE0CseeLknQCOKOd_13polars_python.exit ], [ %i.d, %bb.b ], !dbg !52744
  %.sroa.050.2 = phi i64 [ %.sroa.050.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderNtNtB6_2fs4FileEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge ], [ %.sroa.050.0, %bb.c ], [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderNtNtB6_2fs4FileEEE0CseeLknQCOKOd_13polars_python.exit ], [ 8192, %bb.b ], !dbg !52745
  %.sroa.013.1 = phi i1 [ %.sroa.013.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderNtNtB6_2fs4FileEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge ], [ %.sroa.013.0, %bb.c ], [ false, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderNtNtB6_2fs4FileEEE0CseeLknQCOKOd_13polars_python.exit ], [ false, %bb.b ], !dbg !52746
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br label %bb.f, !dbg !52747

bb.d:                                             ; preds = %bb.c
  %i.y = tail call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderNtNtB6_2fs4FileEEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !52674 ; 2 uses
  %i.z = extractvalue { i64, ptr } %i.y, 0, !dbg !52674
  %i.aa = extractvalue { i64, ptr } %i.y, 1, !dbg !52674 ; 2 uses
  %i.ab = trunc nuw i64 %i.z to i1, !dbg !52748
  br i1 %i.ab, label %bb.ae, label %bb.e, !dbg !52748

bb.e:                                             ; preds = %bb.d
  %i.ac = icmp eq ptr %i.aa, null, !dbg !52749
  br i1 %i.ac, label %bb.ae, label %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderNtNtB6_2fs4FileEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge, !dbg !52749

._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderNtNtB6_2fs4FileEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge: ; preds = %bb.e
  %.pre.pre = load i64, ptr %i.c, align 8, !dbg !52744
  br label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderNtNtB6_2fs4FileEEE0CseeLknQCOKOd_13polars_python.exit.thread, !dbg !52749

bb.f:                                             ; preds = %bb.aa, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderNtNtB6_2fs4FileEEE0CseeLknQCOKOd_13polars_python.exit.thread
  %i.ad = phi i64 [ %.pre, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderNtNtB6_2fs4FileEEE0CseeLknQCOKOd_13polars_python.exit.thread ], [ %i.cb, %bb.aa ], !dbg !52744 ; 3 uses
  %.sroa.048.2 = phi i64 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderNtNtB6_2fs4FileEEE0CseeLknQCOKOd_13polars_python.exit.thread ], [ %i.by, %bb.aa ], !dbg !52750
  %.sroa.050.3 = phi i64 [ %.sroa.050.2, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderNtNtB6_2fs4FileEEE0CseeLknQCOKOd_13polars_python.exit.thread ], [ %.sroa.050.4, %bb.aa ], !dbg !52751 ; 3 uses
  %.sroa.019.0 = phi i32 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderNtNtB6_2fs4FileEEE0CseeLknQCOKOd_13polars_python.exit.thread ], [ %.sroa.019.1, %bb.aa ], !dbg !52752
  %i.ae = icmp sgt i64 %i.ad, -1, !dbg !52753
  call void @llvm.assume(i1 %i.ae), !dbg !52754
  %i.af = load i64, ptr %1, align 8, !dbg !52755, !range !4635, !noundef !4270 ; 3 uses
  %i.ag = icmp eq i64 %i.ad, %i.af, !dbg !52756
  %i.ah = icmp eq i64 %i.af, %i.f
  %or.cond62 = and i1 %i.ag, %i.ah, !dbg !52756
  br i1 %or.cond62, label %bb.h, label %bb.g, !dbg !52756

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.ai = phi i64 [ %.pre127, %._crit_edge ], [ %i.af, %bb.f ], !dbg !52757 ; 3 uses
  %i.aj = phi i64 [ %.pre126, %._crit_edge ], [ %i.ad, %bb.f ], !dbg !52758 ; 3 uses
  %i.ak = icmp sgt i64 %i.aj, -1, !dbg !52759
  call void @llvm.assume(i1 %i.ak), !dbg !52760
  %i.al = icmp eq i64 %i.aj, %i.ai, !dbg !52761
  br i1 %i.al, label %bb.l, label %bb.m, !dbg !52761

bb.h:                                             ; preds = %bb.f
  %i.am = call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderNtNtB6_2fs4FileEEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !52686 ; 2 uses
  %i.an = extractvalue { i64, ptr } %i.am, 0, !dbg !52686
  %i.ao = extractvalue { i64, ptr } %i.am, 1, !dbg !52686 ; 2 uses
  %i.ap = trunc nuw i64 %i.an to i1, !dbg !52762
  br i1 %i.ap, label %bb.i, label %bb.j, !dbg !52762

bb.i:                                             ; preds = %bb.h
  %i.aq = ptrtoint ptr %i.ao to i64, !dbg !52686
  br label %.loopexit, !dbg !52763

bb.j:                                             ; preds = %bb.h
  %i.ar = icmp eq ptr %i.ao, null, !dbg !52764
  %.pre126 = load i64, ptr %i.c, align 8, !dbg !52758 ; 3 uses
  br i1 %i.ar, label %bb.k, label %._crit_edge, !dbg !52764

._crit_edge:                                      ; preds = %bb.j
  %.pre127 = load i64, ptr %1, align 8, !dbg !52757, !range !4635
  br label %bb.g, !dbg !52764

bb.k:                                             ; preds = %bb.j
  %i.as = icmp sgt i64 %.pre126, -1, !dbg !52765
  call void @llvm.assume(i1 %i.as), !dbg !52766
  %i.at = sub nsw i64 %.pre126, %i.d, !dbg !52767
  br label %.loopexit, !dbg !52768

bb.l:                                             ; preds = %bb.g
  %i.au = call { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.ai, i64 noundef 32, i64 noundef 1, i64 noundef 1), !dbg !52769
  %i.av = extractvalue { i64, i64 } %i.au, 0, !dbg !52769
  %.not = icmp eq i64 %i.av, -9223372036854775807, !dbg !52770
  br i1 %.not, label %._crit_edge128, label %.loopexit, !dbg !52771

._crit_edge128:                                   ; preds = %bb.l
  %.pre129 = load i64, ptr %i.c, align 8, !dbg !52772
  %.pre130 = load i64, ptr %1, align 8, !dbg !52773, !range !4635
  br label %bb.m, !dbg !52771

bb.m:                                             ; preds = %._crit_edge128, %bb.g
  %i.aw = phi i64 [ %.pre130, %._crit_edge128 ], [ %i.ai, %bb.g ], !dbg !52773
  %i.ax = phi i64 [ %.pre129, %._crit_edge128 ], [ %i.aj, %bb.g ], !dbg !52772 ; 5 uses
  %i.ay = load ptr, ptr %i.q, align 8, !dbg !52774, !nonnull !4270, !noundef !4270
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax, !dbg !52775
  %i.ba = sub i64 %i.aw, %i.ax, !dbg !52776
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.050.3, i64 %i.ba), !dbg !52777 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !52778
  store ptr %i.az, ptr %i.b, align 8, !dbg !52779
  store i64 %.sroa.0.0.i, ptr %i.r, align 8, !dbg !52779
  store i64 0, ptr %i.s, align 8, !dbg !52779
  store i64 %.sroa.048.2, ptr %i.t, align 8, !dbg !52780
  %.promoted = load i64, ptr %i.u, align 8, !alias.scope !52707, !noalias !52708 ; 2 uses
  %i.bb = icmp eq i64 %.promoted, 0, !dbg !52781
  br i1 %i.bb, label %.thread, label %.lr.ph, !dbg !52781

.thread:                                          ; preds = %bb.m
  %i.bc = icmp sgt i64 %i.ax, -1, !dbg !52782
  call void @llvm.assume(i1 %i.bc), !dbg !52783
  store i64 %i.ax, ptr %i.c, align 8, !dbg !52784
  br label %.loopexit149, !dbg !52785

.lr.ph:                                           ; preds = %bb.m
  %.val4.i = load ptr, ptr %0, align 8, !nonnull !4270, !align !4488 ; 2 uses
  br label %bb.n, !dbg !52781

bb.n:                                             ; preds = %.lr.ph, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit
  %i.bd = phi i64 [ %.promoted, %.lr.ph ], [ %.sink, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !52707), !dbg !52786
  call void @llvm.experimental.noalias.scope.decl(metadata !52708), !dbg !52786
  %i.be = load i64, ptr %i.r, align 8, !dbg !52787, !alias.scope !52708, !noalias !52707, !noundef !4270
  %i.bf = load i64, ptr %i.s, align 8, !dbg !52788, !alias.scope !52708, !noalias !52707, !noundef !4270 ; 6 uses
  %i.bg = sub i64 %i.be, %i.bf, !dbg !52789
  %i.bh = icmp ult i64 %i.bd, %i.bg, !dbg !52790
  br i1 %i.bh, label %bb.p, label %bb.o, !dbg !52790

bb.o:                                             ; preds = %bb.n
  %i.bi = call noundef ptr @_RNvXs3_NtNtNtCsh8eZTKRCwoO_3std2io8buffered9bufreaderINtB5_9BufReaderNtNtBb_2fs4FileENtB9_4Read8read_bufCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(48) %.val4.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b), !dbg !52791, !noalias !52707
  %i.bj = load i64, ptr %i.s, align 8, !dbg !52792, !alias.scope !52708, !noalias !52707, !noundef !4270 ; 2 uses
  %.neg.i = add i64 %i.bf, %i.bd, !dbg !52793
  %i.bk = sub i64 %.neg.i, %i.bj, !dbg !52794
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderNtNtB7_2fs4FileEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit, !dbg !52795

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %i.t, align 8, !dbg !52796, !alias.scope !52708, !noalias !52707, !noundef !4270 ; 2 uses
  %i.bm = sub nuw i64 %i.bl, %i.bf, !dbg !52797
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bm, i64 %i.bd), !dbg !52798
  %i.bn = load ptr, ptr %i.b, align 8, !dbg !52799, !alias.scope !52708, !noalias !52707, !nonnull !4270, !noundef !4270
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bf, !dbg !52800
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !52801, !noalias !52713
  store ptr %i.bo, ptr %i.a, align 8, !dbg !52802, !noalias !52713
  store i64 %i.bd, ptr %i.v, align 8, !dbg !52802, !noalias !52713
  store i64 0, ptr %i.w, align 8, !dbg !52802, !noalias !52713
  store i64 %.sroa.0.0.i.i, ptr %i.x, align 8, !dbg !52803, !noalias !52713
  %i.bp = call noundef ptr @_RNvXs3_NtNtNtCsh8eZTKRCwoO_3std2io8buffered9bufreaderINtB5_9BufReaderNtNtBb_2fs4FileENtB9_4Read8read_bufCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(48) %.val4.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a), !dbg !52804, !noalias !52713
  %i.bq = load i64, ptr %i.w, align 8, !dbg !52805, !noalias !52713, !noundef !4270 ; 2 uses
  %i.br = load i64, ptr %i.x, align 8, !dbg !52806, !noalias !52713, !noundef !4270
  %i.bs = add i64 %i.bq, %i.bf, !dbg !52807       ; 3 uses
  store i64 %i.bs, ptr %i.s, align 8, !dbg !52807, !alias.scope !52708, !noalias !52707
  %.sroa.0.0.i6.i = call noundef i64 @llvm.umax.i64(i64 %i.bs, i64 %i.bl), !dbg !52808
  %i.bt = add i64 %i.br, %i.bf, !dbg !52809
  %.sroa.0.0.i7.i = call noundef i64 @llvm.umax.i64(i64 %i.bt, i64 %.sroa.0.0.i6.i), !dbg !52810
  store i64 %.sroa.0.0.i7.i, ptr %i.t, align 8, !dbg !52811, !alias.scope !52708, !noalias !52707
  %i.bu = sub i64 %i.bd, %i.bq, !dbg !52812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !52813, !noalias !52713
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderNtNtB7_2fs4FileEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit, !dbg !52795

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderNtNtB7_2fs4FileEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit: ; preds = %bb.o, %bb.p
  %.pre131136 = phi i64 [ %i.bs, %bb.p ], [ %i.bj, %bb.o ]
  %.sink = phi i64 [ %i.bu, %bb.p ], [ %i.bk, %bb.o ], !dbg !52814 ; 3 uses
  %.sroa.0.0.i65 = phi ptr [ %i.bp, %bb.p ], [ %i.bi, %bb.o ], !dbg !52814 ; 8 uses
  store i64 %.sink, ptr %i.u, align 8, !dbg !52814, !alias.scope !52707, !noalias !52708
  %.not60 = icmp eq ptr %.sroa.0.0.i65, null, !dbg !52815 ; 2 uses
  br i1 %.not60, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderNtNtB7_2fs4FileEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit, label %bb.q, !dbg !52816

bb.q:                                             ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderNtNtB7_2fs4FileEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit
  %i.bv = ptrtoint ptr %.sroa.0.0.i65 to i64, !dbg !52817 ; 3 uses
  %i.bw = and i64 %i.bv, 3, !dbg !52818
  switch i64 %i.bw, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.r
    i64 0, label %.split100
    i64 1, label %.split99
  ], !dbg !52819, !prof !4782

default.unreachable:                              ; preds = %bb.q
  unreachable

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderNtNtB7_2fs4FileEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit: ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderNtNtB7_2fs4FileEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit, %bb.r, %.split, %.split99, %.split100
  %i.bx = ptrtoint ptr %.sroa.0.0.i65 to i64, !dbg !52820
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderNtNtB7_2fs4FileEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread, !dbg !52821

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderNtNtB7_2fs4FileEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderNtNtB7_2fs4FileEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexit_crit_edge, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderNtNtB7_2fs4FileEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit
  %.pre131 = phi i64 [ %.pre131.pre, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderNtNtB7_2fs4FileEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexit_crit_edge ], [ %.pre131136, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderNtNtB7_2fs4FileEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit ], !dbg !52821 ; 5 uses
  %.not6081.ph = phi i1 [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderNtNtB7_2fs4FileEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexit_crit_edge ], [ %.not60, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderNtNtB7_2fs4FileEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit ]
  %.sroa.0.0.i6579.ph = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderNtNtB7_2fs4FileEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexit_crit_edge ], [ %i.bx, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderNtNtB7_2fs4FileEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit ]
  %.pre132 = load i64, ptr %i.t, align 8, !dbg !52822 ; 2 uses
  %.pre133 = load i64, ptr %i.c, align 8, !dbg !52823 ; 2 uses
  %i.by = sub nuw i64 %.pre132, %.pre131, !dbg !52824
  %i.bz = icmp ne i64 %.pre132, %.sroa.0.0.i, !dbg !52825
  %i.ca = icmp sgt i64 %.pre133, -1, !dbg !52782
  call void @llvm.assume(i1 %i.ca), !dbg !52783
  %i.cb = add i64 %.pre133, %.pre131, !dbg !52826 ; 3 uses
  store i64 %i.cb, ptr %i.c, align 8, !dbg !52784
  br i1 %.not6081.ph, label %bb.y, label %.loopexit148, !dbg !52827

.split:                                           ; preds = %bb.q
  %.mask103 = and i64 %i.bv, -4294967296, !dbg !52828
  %i.cc = icmp eq i64 %.mask103, 17179869184, !dbg !52828
  br i1 %i.cc, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderNtNtB7_2fs4FileEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit, !dbg !52829

.split100:                                        ; preds = %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i65, i64 16, !dbg !52830
  %i.ce = load i8, ptr %i.cd, align 8, !dbg !52830, !range !4789, !noundef !4270
  %i.cf = icmp eq i8 %i.ce, 35, !dbg !52831
  br i1 %i.cf, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderNtNtB7_2fs4FileEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit, !dbg !52829

.split99:                                         ; preds = %bb.q
  %i.cg = getelementptr i8, ptr %.sroa.0.0.i65, i64 -1, !dbg !52832 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cg) ]
  %i.ch = getelementptr i8, ptr %.sroa.0.0.i65, i64 15, !dbg !52833
  %i.ci = load i8, ptr %i.ch, align 8, !dbg !52833, !range !4789, !noundef !4270
  %i.cj = icmp eq i8 %i.ci, 35, !dbg !52834
  br i1 %i.cj, label %bb.s, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderNtNtB7_2fs4FileEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit, !dbg !52829

bb.r:                                             ; preds = %bb.q
  %i.ck = icmp ult ptr %.sroa.0.0.i65, inttoptr (i64 180388626432 to ptr), !dbg !52835
  call void @llvm.assume(i1 %i.ck), !dbg !52836
  %.mask = and i64 %i.bv, -4294967296, !dbg !52837
  %i.cl = icmp eq i64 %.mask, 150323855360, !dbg !52837
  br i1 %i.cl, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderNtNtB7_2fs4FileEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit, !dbg !52829

bb.s:                                             ; preds = %.split99
  %.val.i.i.i.i.i = load ptr, ptr %i.cg, align 8, !dbg !52838 ; 5 uses
  %i.cm = getelementptr i8, ptr %.sroa.0.0.i65, i64 7, !dbg !52838
  %.val1.i.i.i.i.i = load ptr, ptr %i.cm, align 8, !dbg !52838, !nonnull !4270, !align !4488, !noundef !4270 ; 5 uses
  %i.cn = load ptr, ptr %.val1.i.i.i.i.i, align 8, !dbg !52839, !invariant.load !4270 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cn, null, !dbg !52839
  br i1 %.not.i.i.i.i.i.i.i, label %bb.u, label %bb.t, !dbg !52839

bb.t:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  invoke void %i.cn(ptr noundef nonnull %.val.i.i.i.i.i)
          to label %bb.u unwind label %bb.w, !dbg !52839

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.co = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !52840
  %i.cp = load i64, ptr %i.co, align 8, !dbg !52840, !range !4635, !invariant.load !4270 ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 0, !dbg !52841
  br i1 %i.cq, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i, label %bb.v, !dbg !52841

bb.v:                                             ; preds = %bb.u
  %i.cr = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16, !dbg !52840
  %i.cs = load i64, ptr %i.cr, align 8, !dbg !52842, !range !4615, !invariant.load !4270
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.cp, i64 noundef range(i64 1, 536870913) %i.cs) #53, !dbg !52843
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i, !dbg !52844

bb.w:                                             ; preds = %bb.t
  %i.ct = landingpad { ptr, i32 }
          cleanup
  %i.cu = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !52845
  %i.cv = load i64, ptr %i.cu, align 8, !dbg !52845, !range !4635, !invariant.load !4270 ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 0, !dbg !52846
  br i1 %i.cw, label %.body, label %bb.x, !dbg !52846

bb.x:                                             ; preds = %bb.w
  %i.cx = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16, !dbg !52845
  %i.cy = load i64, ptr %i.cx, align 8, !dbg !52847, !range !4615, !invariant.load !4270
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.cv, i64 noundef range(i64 1, 536870913) %i.cy) #53, !dbg !52848
  br label %.body, !dbg !52849

.body:                                            ; preds = %bb.x, %bb.w
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cg, i64 noundef 24, i64 noundef 8) #53, !dbg !52850
  resume { ptr, i32 } %i.ct, !dbg !52851

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i: ; preds = %bb.v, %bb.u
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cg, i64 noundef 24, i64 noundef 8) #53, !dbg !52852
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, !dbg !52853

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.r, %.split, %.split100, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i
  %i.cz = icmp eq i64 %.sink, 0, !dbg !52781
  br i1 %i.cz, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderNtNtB7_2fs4FileEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexit_crit_edge, label %bb.n, !dbg !52781

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderNtNtB7_2fs4FileEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexit_crit_edge: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit
  %.pre131.pre = load i64, ptr %i.s, align 8, !dbg !52821
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderNtNtB7_2fs4FileEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread, !dbg !52781

bb.y:                                             ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderNtNtB7_2fs4FileEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread
  %i.da = icmp eq i64 %.pre131, 0, !dbg !52785
  br i1 %i.da, label %.loopexit149, label %bb.z, !dbg !52785

.loopexit149:                                     ; preds = %bb.y, %.thread
  %i.db = phi i64 [ %i.ax, %.thread ], [ %i.cb, %bb.y ]
  %i.dc = sub nsw i64 %i.db, %i.d, !dbg !52854
  br label %.loopexit148, !dbg !52855

bb.z:                                             ; preds = %bb.y
  %i.dd = icmp ult i64 %.pre131, %.sroa.0.0.i, !dbg !52856
  %i.de = add i32 %.sroa.019.0, 1, !dbg !52856
  %.sroa.019.1 = select i1 %i.dd, i32 %i.de, i32 0, !dbg !52856 ; 2 uses
  br i1 %.sroa.013.1, label %bb.ab, label %bb.aa, !dbg !52857

.loopexit148:                                     ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderNtNtB7_2fs4FileEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread, %.loopexit149
  %.sroa.8.0 = phi i64 [ %i.dc, %.loopexit149 ], [ %.sroa.0.0.i6579.ph, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderNtNtB7_2fs4FileEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread ], !dbg !52858
  %.sroa.010.0 = phi i64 [ 0, %.loopexit149 ], [ 1, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtB5_8buffered9bufreader9BufReaderNtNtB7_2fs4FileEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread ], !dbg !52858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !52859
  br label %.loopexit, !dbg !52763

bb.aa:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.z
  %.sroa.050.4 = phi i64 [ -1, %bb.ad ], [ %i.di, %bb.ac ], [ %spec.select, %bb.ab ], [ %.sroa.050.3, %bb.z ], !dbg !52751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !52859
  br label %bb.f, !dbg !52747

bb.ab:                                            ; preds = %bb.z
  %i.df = icmp sgt i32 %.sroa.019.1, 1
  %or.cond7 = select i1 %i.bz, i1 %i.df, i1 false, !dbg !52860
  %spec.select = select i1 %or.cond7, i64 -1, i64 %.sroa.050.3, !dbg !52860 ; 4 uses
  %i.dg = icmp uge i64 %.sroa.0.0.i, %spec.select, !dbg !52861
  %i.dh = icmp eq i64 %.pre131, %.sroa.0.0.i
  %or.cond2 = and i1 %i.dh, %i.dg, !dbg !52861
  br i1 %or.cond2, label %bb.ac, label %bb.aa, !dbg !52861

bb.ac:                                            ; preds = %bb.ab
  %i.di = shl nuw i64 %spec.select, 1, !dbg !52862
  %i.dj = icmp slt i64 %spec.select, 0, !dbg !52862
  br i1 %i.dj, label %bb.ad, label %bb.aa, !dbg !52863, !prof !4282

bb.ad:                                            ; preds = %bb.ac
  br label %bb.aa, !dbg !52864

.loopexit:                                        ; preds = %bb.l, %bb.i, %bb.k, %.loopexit148
  %.sroa.8.1 = phi i64 [ %i.aq, %bb.i ], [ %i.at, %bb.k ], [ %.sroa.8.0, %.loopexit148 ], [ 163208757251, %bb.l ], !dbg !52865
  %.sroa.010.1 = phi i64 [ 1, %bb.i ], [ 0, %bb.k ], [ %.sroa.010.0, %.loopexit148 ], [ 1, %bb.l ], !dbg !52865
  %i.dk = inttoptr i64 %.sroa.8.1 to ptr, !dbg !52866
  br label %bb.ae, !dbg !52867

bb.ae:                                            ; preds = %bb.e, %bb.d, %.loopexit
  %.sroa.8.2 = phi ptr [ %i.dk, %.loopexit ], [ %i.aa, %bb.d ], [ null, %bb.e ], !dbg !52752
  %.sroa.010.2 = phi i64 [ %.sroa.010.1, %.loopexit ], [ 1, %bb.d ], [ 0, %bb.e ], !dbg !52752
  %i.dl = insertvalue { i64, ptr } poison, i64 %.sroa.010.2, 0, !dbg !52866
  %i.dm = insertvalue { i64, ptr } %i.dl, ptr %.sroa.8.2, 1, !dbg !52866
  ret { i64, ptr } %i.dm, !dbg !52866
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderINtNtNtB2_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEEB32_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !52868 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !53169 ; 9 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !53169, !noundef !4270 ; 7 uses
  %i.c = icmp sgt i64 %i.b, -1, !dbg !53170
  tail call void @llvm.assume(i1 %i.c), !dbg !53171
  %i.d = load i64, ptr %1, align 8, !dbg !53172, !range !4635, !noundef !4270 ; 2 uses
  %i.e = trunc nuw i64 %2 to i1, !dbg !53173      ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c, !dbg !53173

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ugt i64 %3, -1025, !dbg !53174
  br i1 %i.f, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEE0B34_.exit.thread, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEE0B34_.exit, !dbg !53175, !prof !4282

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEE0B34_.exit: ; preds = %bb.b
  %i.g = add nuw i64 %3, 1024, !dbg !53174        ; 3 uses
  %i.h = and i64 %i.g, 8191, !dbg !53176          ; 2 uses
  %i.i = icmp eq i64 %i.h, 0, !dbg !53177
  %i.j = sub i64 %3, %i.h, !dbg !53177
  %i.k = add i64 %i.j, 9216, !dbg !53177          ; 2 uses
  %.not123 = icmp ult i64 %i.k, %i.g, !dbg !53177
  %.sroa.5.1.i = select i1 %.not123, i64 8192, i64 %i.k, !dbg !53178
  %.sroa.050.1 = select i1 %i.i, i64 %i.g, i64 %.sroa.5.1.i, !dbg !53177 ; 2 uses
  %i.l = icmp eq i64 %3, 0
  br i1 %i.l, label %bb.c, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEE0B34_.exit.thread, !dbg !53179

bb.c:                                             ; preds = %bb.a, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEE0B34_.exit
  %.sroa.050.0 = phi i64 [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEE0B34_.exit ], [ 8192, %bb.a ], !dbg !53180 ; 2 uses
  %.sroa.013.0 = xor i1 %i.e, true, !dbg !53181   ; 2 uses
  %i.m = sub nsw i64 %i.d, %i.b, !dbg !53182
  %i.n = icmp ult i64 %i.m, 32, !dbg !53182
  br i1 %i.n, label %bb.d, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEE0B34_.exit.thread, !dbg !53182

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEE0B34_.exit.thread: ; preds = %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEE0B34_.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEE0B34_.exit
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEE0B34_.exit.thread_crit_edge ], [ %i.b, %bb.c ], [ %i.b, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEE0B34_.exit ], [ %i.b, %bb.b ], !dbg !53183
  %.sroa.050.2 = phi i64 [ %.sroa.050.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEE0B34_.exit.thread_crit_edge ], [ %.sroa.050.0, %bb.c ], [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEE0B34_.exit ], [ 8192, %bb.b ], !dbg !53184
  %.sroa.013.1 = phi i1 [ %.sroa.013.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEE0B34_.exit.thread_crit_edge ], [ %.sroa.013.0, %bb.c ], [ false, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEE0B34_.exit ], [ false, %bb.b ], !dbg !53185
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %.outer, !dbg !53186

bb.d:                                             ; preds = %bb.c
  %i.q = tail call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEEB3m_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !53111 ; 2 uses
  %i.r = extractvalue { i64, ptr } %i.q, 0, !dbg !53111
  %i.s = extractvalue { i64, ptr } %i.q, 1, !dbg !53111 ; 2 uses
  %i.t = trunc nuw i64 %i.r to i1, !dbg !53187
  br i1 %i.t, label %bb.ai, label %bb.e, !dbg !53187

bb.e:                                             ; preds = %bb.d
  %i.u = icmp eq ptr %i.s, null, !dbg !53188
  br i1 %i.u, label %bb.ai, label %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEE0B34_.exit.thread_crit_edge, !dbg !53188

._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEE0B34_.exit.thread_crit_edge: ; preds = %bb.e
  %.pre.pre = load i64, ptr %i.a, align 8, !dbg !53183
  br label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEE0B34_.exit.thread, !dbg !53188

bb.f:                                             ; preds = %.outer, %bb.ae
  %i.v = phi i64 [ %i.da, %bb.ae ], [ %.ph, %.outer ], !dbg !53183 ; 3 uses
  %.sroa.048.2 = phi i64 [ %i.de, %bb.ae ], [ %.sroa.048.2.ph, %.outer ], !dbg !53189
  %.sroa.019.0 = phi i32 [ %.sroa.019.1, %bb.ae ], [ %.sroa.019.0.ph, %.outer ], !dbg !53190
  %i.w = icmp sgt i64 %i.v, -1, !dbg !53191
  tail call void @llvm.assume(i1 %i.w), !dbg !53192
  %i.x = load i64, ptr %1, align 8, !dbg !53193, !range !4635, !noundef !4270 ; 3 uses
  %i.y = icmp eq i64 %i.v, %i.x, !dbg !53194
  %i.z = icmp eq i64 %i.x, %i.d
  %or.cond62 = and i1 %i.y, %i.z, !dbg !53194
  br i1 %or.cond62, label %bb.h, label %bb.g, !dbg !53194

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.aa = phi i64 [ %.pre150, %._crit_edge ], [ %i.x, %bb.f ], !dbg !53195 ; 3 uses
  %i.ab = phi i64 [ %.pre149, %._crit_edge ], [ %i.v, %bb.f ], !dbg !53196 ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, -1, !dbg !53197
  tail call void @llvm.assume(i1 %i.ac), !dbg !53198
  %i.ad = icmp eq i64 %i.ab, %i.aa, !dbg !53199
  br i1 %i.ad, label %bb.l, label %bb.m, !dbg !53199

bb.h:                                             ; preds = %bb.f
  %i.ae = tail call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEEB3m_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !53123 ; 2 uses
  %i.af = extractvalue { i64, ptr } %i.ae, 0, !dbg !53123
  %i.ag = extractvalue { i64, ptr } %i.ae, 1, !dbg !53123 ; 2 uses
  %i.ah = trunc nuw i64 %i.af to i1, !dbg !53200
  br i1 %i.ah, label %bb.i, label %bb.j, !dbg !53200

bb.i:                                             ; preds = %bb.h
  %i.ai = ptrtoint ptr %i.ag to i64, !dbg !53123
  br label %.loopexit, !dbg !53201

bb.j:                                             ; preds = %bb.h
  %i.aj = icmp eq ptr %i.ag, null, !dbg !53202
  %.pre149 = load i64, ptr %i.a, align 8, !dbg !53196 ; 3 uses
  br i1 %i.aj, label %bb.k, label %._crit_edge, !dbg !53202

._crit_edge:                                      ; preds = %bb.j
  %.pre150 = load i64, ptr %1, align 8, !dbg !53195, !range !4635
  br label %bb.g, !dbg !53202

bb.k:                                             ; preds = %bb.j
  %i.ak = icmp sgt i64 %.pre149, -1, !dbg !53203
  tail call void @llvm.assume(i1 %i.ak), !dbg !53204
  %i.al = sub nsw i64 %.pre149, %i.b, !dbg !53205
  br label %.loopexit, !dbg !53206

bb.l:                                             ; preds = %bb.g
  %i.am = tail call { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.aa, i64 noundef 32, i64 noundef 1, i64 noundef 1), !dbg !53207
  %i.an = extractvalue { i64, i64 } %i.am, 0, !dbg !53207
  %.not = icmp eq i64 %i.an, -9223372036854775807, !dbg !53208
  br i1 %.not, label %._crit_edge151, label %.loopexit, !dbg !53209

._crit_edge151:                                   ; preds = %bb.l
  %.pre152 = load i64, ptr %i.a, align 8, !dbg !53210
  %.pre153 = load i64, ptr %1, align 8, !dbg !53211, !range !4635
  br label %bb.m, !dbg !53209

bb.m:                                             ; preds = %._crit_edge151, %bb.g
  %i.ao = phi i64 [ %.pre153, %._crit_edge151 ], [ %i.aa, %bb.g ], !dbg !53211
  %i.ap = phi i64 [ %.pre152, %._crit_edge151 ], [ %i.ab, %bb.g ], !dbg !53210 ; 5 uses
  %i.aq = load ptr, ptr %i.o, align 8, !dbg !53212, !nonnull !4270, !noundef !4270
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap, !dbg !53213 ; 3 uses
  %i.as = sub i64 %i.ao, %i.ap, !dbg !53214
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.050.3.ph, i64 %i.as), !dbg !53215 ; 7 uses
  %i.at = load i64, ptr %i.p, align 8, !dbg !53216, !alias.scope !53140, !noalias !53141, !noundef !4270 ; 2 uses
  %i.au = icmp eq i64 %i.at, 0, !dbg !53216
  br i1 %i.au, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEENtB5_4Read8read_bufB2K_.exit.thread.thread, label %.lr.ph, !dbg !53216

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEENtB5_4Read8read_bufB2K_.exit.thread.thread: ; preds = %bb.m
  %i.av = icmp sgt i64 %i.ap, -1, !dbg !53217
  tail call void @llvm.assume(i1 %i.av), !dbg !53218
  store i64 %i.ap, ptr %i.a, align 8, !dbg !53219
  br label %.loopexit171, !dbg !53220

.lr.ph:                                           ; preds = %bb.m, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit
  %i.aw = phi i64 [ %i.cu, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit ], [ %i.at, %bb.m ] ; 8 uses
  %.sroa.8.081133 = phi i64 [ %.sroa.8.283, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit ], [ 0, %bb.m ] ; 9 uses
  %.sroa.13.0132 = phi i64 [ %.sroa.13.1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit ], [ %.sroa.048.2, %bb.m ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53144), !dbg !53221
  %i.ax = sub i64 %.sroa.0.0.i, %.sroa.8.081133, !dbg !53222 ; 3 uses
  %i.ay = icmp ult i64 %i.aw, %i.ax, !dbg !53223
  br i1 %i.ay, label %bb.r, label %bb.n, !dbg !53223

bb.n:                                             ; preds = %.lr.ph
  %.val4.i = load ptr, ptr %0, align 8, !dbg !53224, !alias.scope !53144, !noalias !53141, !nonnull !4270, !align !4488, !noundef !4270
  %i.az = sub nuw i64 %.sroa.0.0.i, %.sroa.13.0132, !dbg !53225
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.13.0132, !dbg !53226
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ba, i8 0, i64 %i.az, i1 false), !dbg !53227, !noalias !53145
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.8.081133, !dbg !53228
  %i.bc = tail call fastcc { i64, ptr } @_RNvXs4_NtNtCs9VoZUfg37wD_6flate24zlib4readINtB5_11ZlibDecoderINtNtNtNtCsh8eZTKRCwoO_3std2io8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB14_4Read4readB2y_(ptr noalias noundef nonnull align 8 dereferenceable(232) %.val4.i, ptr noalias noundef nonnull %i.bb, i64 noundef range(i64 0, -9223372036854775808) %i.ax), !dbg !53229, !noalias !53146 ; 2 uses
  %i.bd = extractvalue { i64, ptr } %i.bc, 0, !dbg !53230
  %i.be = extractvalue { i64, ptr } %i.bc, 1, !dbg !53230 ; 2 uses
  %i.bf = ptrtoint ptr %i.be to i64, !dbg !53230  ; 2 uses
  %i.bg = trunc nuw i64 %i.bd to i1, !dbg !53231
  br i1 %i.bg, label %_RNvXNtNtCsh8eZTKRCwoO_3std2io5implsQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB4_4Read8read_bufB2E_.exit.i, label %bb.o, !dbg !53231

bb.o:                                             ; preds = %bb.n
  %.not.i.i.i.i = icmp ult i64 %i.ax, %i.bf, !dbg !53232
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.q, !dbg !53232, !prof !4282

bb.p:                                             ; preds = %bb.o
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #55, !dbg !53233, !noalias !53146
  unreachable, !dbg !53233

bb.q:                                             ; preds = %bb.o
  %i.bh = add i64 %.sroa.8.081133, %i.bf, !dbg !53234
  br label %_RNvXNtNtCsh8eZTKRCwoO_3std2io5implsQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB4_4Read8read_bufB2E_.exit.i, !dbg !53235

_RNvXNtNtCsh8eZTKRCwoO_3std2io5implsQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB4_4Read8read_bufB2E_.exit.i: ; preds = %bb.q, %bb.n
  %.sroa.8.182 = phi i64 [ %.sroa.8.081133, %bb.n ], [ %i.bh, %bb.q ], !dbg !53236 ; 2 uses
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.be, %bb.n ], [ null, %bb.q ], !dbg !53237
  %.neg.i = add i64 %i.aw, %.sroa.8.081133, !dbg !53238
  %i.bi = sub i64 %.neg.i, %.sroa.8.182, !dbg !53239
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEENtB5_4Read8read_bufB2K_.exit, !dbg !53240

bb.r:                                             ; preds = %.lr.ph
  %i.bj = sub nuw i64 %.sroa.13.0132, %.sroa.8.081133, !dbg !53241
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.bj, i64 %i.aw), !dbg !53242 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.8.081133, !dbg !53243 ; 2 uses
  %.val3.i = load ptr, ptr %0, align 8, !dbg !53244, !alias.scope !53144, !noalias !53141, !nonnull !4270, !align !4488, !noundef !4270
  %i.bl = sub nuw i64 %i.aw, %.sroa.0.0.i.i, !dbg !53245
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.sroa.0.0.i.i, !dbg !53246
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bm, i8 0, i64 %i.bl, i1 false), !dbg !53247, !noalias !53149
  %i.bn = tail call fastcc { i64, ptr } @_RNvXs4_NtNtCs9VoZUfg37wD_6flate24zlib4readINtB5_11ZlibDecoderINtNtNtNtCsh8eZTKRCwoO_3std2io8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB14_4Read4readB2y_(ptr noalias noundef nonnull align 8 dereferenceable(232) %.val3.i, ptr noalias noundef nonnull %i.bk, i64 noundef range(i64 0, -9223372036854775808) %i.aw), !dbg !53248, !noalias !53150 ; 2 uses
  %i.bo = extractvalue { i64, ptr } %i.bn, 0, !dbg !53249
  %i.bp = extractvalue { i64, ptr } %i.bn, 1, !dbg !53249 ; 2 uses
  %i.bq = trunc nuw i64 %i.bo to i1, !dbg !53250
  br i1 %i.bq, label %bb.u, label %bb.s, !dbg !53250

bb.s:                                             ; preds = %bb.r
  %i.br = ptrtoint ptr %i.bp to i64, !dbg !53249  ; 2 uses
  %.not.i.i.i6.i = icmp ult i64 %i.aw, %i.br, !dbg !53251
  br i1 %.not.i.i.i6.i, label %bb.t, label %bb.u, !dbg !53251, !prof !4282

bb.t:                                             ; preds = %bb.s
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #55, !dbg !53252, !noalias !53150
  unreachable, !dbg !53252

bb.u:                                             ; preds = %bb.s, %bb.r
  %.sroa.6.0.i = phi i64 [ 0, %bb.r ], [ %i.br, %bb.s ], !dbg !53253 ; 2 uses
  %.sroa.0.0.i.i.i7.i = phi ptr [ %i.bp, %bb.r ], [ null, %bb.s ], !dbg !53254
  %i.bs = add i64 %.sroa.6.0.i, %.sroa.8.081133, !dbg !53255 ; 2 uses
  %.sroa.0.0.i9.i = tail call noundef i64 @llvm.umax.i64(i64 %i.bs, i64 %.sroa.13.0132), !dbg !53256
  %i.bt = sub i64 %i.aw, %.sroa.6.0.i, !dbg !53257
  %i.bu = add i64 %i.aw, %.sroa.8.081133, !dbg !53258
  %.sroa.0.0.i10.i = tail call noundef i64 @llvm.umax.i64(i64 %i.bu, i64 %.sroa.0.0.i9.i), !dbg !53259
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEENtB5_4Read8read_bufB2K_.exit, !dbg !53240

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEENtB5_4Read8read_bufB2K_.exit: ; preds = %_RNvXNtNtCsh8eZTKRCwoO_3std2io5implsQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB4_4Read8read_bufB2E_.exit.i, %bb.u
  %.sroa.13.1 = phi i64 [ %.sroa.0.0.i10.i, %bb.u ], [ %.sroa.0.0.i, %_RNvXNtNtCsh8eZTKRCwoO_3std2io5implsQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB4_4Read8read_bufB2E_.exit.i ], !dbg !53260 ; 3 uses
  %.sroa.8.283 = phi i64 [ %i.bs, %bb.u ], [ %.sroa.8.182, %_RNvXNtNtCsh8eZTKRCwoO_3std2io5implsQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB4_4Read8read_bufB2E_.exit.i ], !dbg !53236 ; 7 uses
  %.sink.i = phi i64 [ %i.bt, %bb.u ], [ %i.bi, %_RNvXNtNtCsh8eZTKRCwoO_3std2io5implsQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB4_4Read8read_bufB2E_.exit.i ] ; 4 uses
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.0.0.i.i.i7.i, %bb.u ], [ %.sroa.0.0.i.i.i.i, %_RNvXNtNtCsh8eZTKRCwoO_3std2io5implsQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB4_4Read8read_bufB2E_.exit.i ] ; 7 uses
  store i64 %.sink.i, ptr %i.p, align 8, !dbg !53260, !alias.scope !53144, !noalias !53141
  %.not60 = icmp eq ptr %.sroa.0.0.ph.i, null, !dbg !53261
  br i1 %.not60, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEENtB5_4Read8read_bufB2K_.exit.thread, label %bb.v, !dbg !53262

bb.v:                                             ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEENtB5_4Read8read_bufB2K_.exit
  %i.bv = ptrtoint ptr %.sroa.0.0.ph.i to i64, !dbg !53263 ; 4 uses
  %i.bw = and i64 %i.bv, 3, !dbg !53264
  switch i64 %i.bw, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.w
    i64 0, label %.split119
    i64 1, label %.split118
  ], !dbg !53265, !prof !4782

default.unreachable:                              ; preds = %bb.v
  unreachable

.split:                                           ; preds = %bb.v
  %.mask124 = and i64 %i.bv, -4294967296, !dbg !53266
  %i.bx = icmp eq i64 %.mask124, 17179869184, !dbg !53266
  br i1 %i.bx, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %bb.ad, !dbg !53267

.split119:                                        ; preds = %bb.v
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 16, !dbg !53268
  %i.bz = load i8, ptr %i.by, align 8, !dbg !53268, !range !4789, !noundef !4270
  %i.ca = icmp eq i8 %i.bz, 35, !dbg !53269
  br i1 %i.ca, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %bb.ad, !dbg !53267

.split118:                                        ; preds = %bb.v
  %i.cb = getelementptr i8, ptr %.sroa.0.0.ph.i, i64 -1, !dbg !53270 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cb) ]
  %i.cc = getelementptr i8, ptr %.sroa.0.0.ph.i, i64 15, !dbg !53271
  %i.cd = load i8, ptr %i.cc, align 8, !dbg !53271, !range !4789, !noundef !4270
  %i.ce = icmp eq i8 %i.cd, 35, !dbg !53272
  br i1 %i.ce, label %bb.x, label %bb.ad, !dbg !53267

bb.w:                                             ; preds = %bb.v
  %i.cf = icmp ult ptr %.sroa.0.0.ph.i, inttoptr (i64 180388626432 to ptr), !dbg !53273
  tail call void @llvm.assume(i1 %i.cf), !dbg !53274
  %.mask = and i64 %i.bv, -4294967296, !dbg !53275
  %i.cg = icmp eq i64 %.mask, 150323855360, !dbg !53275
  br i1 %i.cg, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %bb.ad, !dbg !53267

bb.x:                                             ; preds = %.split118
  %.val.i.i.i.i.i = load ptr, ptr %i.cb, align 8, !dbg !53276 ; 5 uses
  %i.ch = getelementptr i8, ptr %.sroa.0.0.ph.i, i64 7, !dbg !53276
  %.val1.i.i.i.i.i = load ptr, ptr %i.ch, align 8, !dbg !53276, !nonnull !4270, !align !4488, !noundef !4270 ; 5 uses
  %i.ci = load ptr, ptr %.val1.i.i.i.i.i, align 8, !dbg !53277, !invariant.load !4270 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ci, null, !dbg !53277
  br i1 %.not.i.i.i.i.i.i.i, label %bb.z, label %bb.y, !dbg !53277

bb.y:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  invoke void %i.ci(ptr noundef nonnull %.val.i.i.i.i.i)
          to label %bb.z unwind label %bb.ab, !dbg !53277

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.cj = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !53278
  %i.ck = load i64, ptr %i.cj, align 8, !dbg !53278, !range !4635, !invariant.load !4270 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 0, !dbg !53279
  br i1 %i.cl, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i, label %bb.aa, !dbg !53279

bb.aa:                                            ; preds = %bb.z
  %i.cm = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16, !dbg !53278
  %i.cn = load i64, ptr %i.cm, align 8, !dbg !53280, !range !4615, !invariant.load !4270
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.ck, i64 noundef range(i64 1, 536870913) %i.cn) #53, !dbg !53281
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i, !dbg !53282

bb.ab:                                            ; preds = %bb.y
  %i.co = landingpad { ptr, i32 }
          cleanup
  %i.cp = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !53283
  %i.cq = load i64, ptr %i.cp, align 8, !dbg !53283, !range !4635, !invariant.load !4270 ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 0, !dbg !53284
  br i1 %i.cr, label %.body, label %bb.ac, !dbg !53284

bb.ac:                                            ; preds = %bb.ab
  %i.cs = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16, !dbg !53283
  %i.ct = load i64, ptr %i.cs, align 8, !dbg !53285, !range !4615, !invariant.load !4270
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.cq, i64 noundef range(i64 1, 536870913) %i.ct) #53, !dbg !53286
  br label %.body, !dbg !53287

.body:                                            ; preds = %bb.ac, %bb.ab
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cb, i64 noundef 24, i64 noundef 8) #53, !dbg !53288
  resume { ptr, i32 } %i.co, !dbg !53289

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i: ; preds = %bb.aa, %bb.z
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cb, i64 noundef 24, i64 noundef 8) #53, !dbg !53290
  %.pre154 = load i64, ptr %i.p, align 8, !dbg !53216, !alias.scope !53159, !noalias !53141
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, !dbg !53291

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.w, %.split, %.split119, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i
  %i.cu = phi i64 [ %.sink.i, %bb.w ], [ %.sink.i, %.split ], [ %.sink.i, %.split119 ], [ %.pre154, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i ], !dbg !53216 ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 0, !dbg !53216
  br i1 %i.cv, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEENtB5_4Read8read_bufB2K_.exit.thread, label %.lr.ph, !dbg !53216

bb.ad:                                            ; preds = %bb.w, %.split, %.split118, %.split119
  %i.cw = load i64, ptr %i.a, align 8, !dbg !53292, !noundef !4270 ; 2 uses
  %i.cx = icmp sgt i64 %i.cw, -1, !dbg !53217
  tail call void @llvm.assume(i1 %i.cx), !dbg !53218
  %i.cy = add i64 %i.cw, %.sroa.8.283, !dbg !53293
  store i64 %i.cy, ptr %i.a, align 8, !dbg !53219
  br label %.loopexit, !dbg !53294

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEENtB5_4Read8read_bufB2K_.exit.thread: ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEENtB5_4Read8read_bufB2K_.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit
  %.pre155 = load i64, ptr %i.a, align 8, !dbg !53292 ; 2 uses
  %i.cz = icmp sgt i64 %.pre155, -1, !dbg !53217
  tail call void @llvm.assume(i1 %i.cz), !dbg !53218
  %i.da = add i64 %.pre155, %.sroa.8.283, !dbg !53293 ; 4 uses
  store i64 %i.da, ptr %i.a, align 8, !dbg !53219
  %i.db = icmp eq i64 %.sroa.8.283, 0, !dbg !53220
  br i1 %i.db, label %.loopexit171, label %bb.ae, !dbg !53220

.loopexit171:                                     ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEENtB5_4Read8read_bufB2K_.exit.thread, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEENtB5_4Read8read_bufB2K_.exit.thread.thread
  %i.dc = phi i64 [ %i.ap, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEENtB5_4Read8read_bufB2K_.exit.thread.thread ], [ %i.da, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEENtB5_4Read8read_bufB2K_.exit.thread ]
  %i.dd = sub nsw i64 %i.dc, %i.b, !dbg !53295
  br label %.loopexit, !dbg !53294

bb.ae:                                            ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEENtB5_4Read8read_bufB2K_.exit.thread
  %i.de = sub nuw i64 %.sroa.13.1, %.sroa.8.283, !dbg !53296 ; 2 uses
  %i.df = icmp ult i64 %.sroa.8.283, %.sroa.0.0.i, !dbg !53297
  %i.dg = add i32 %.sroa.019.0, 1, !dbg !53297
  %.sroa.019.1 = select i1 %i.df, i32 %i.dg, i32 0, !dbg !53297 ; 3 uses
  br i1 %.sroa.013.1, label %bb.af, label %bb.f, !dbg !53298

bb.af:                                            ; preds = %bb.ae
  %i.dh = icmp ne i64 %.sroa.13.1, %.sroa.0.0.i, !dbg !53299
  %i.di = icmp sgt i32 %.sroa.019.1, 1
  %or.cond7 = select i1 %i.dh, i1 %i.di, i1 false, !dbg !53300
  %spec.select = select i1 %or.cond7, i64 -1, i64 %.sroa.050.3.ph, !dbg !53300 ; 4 uses
  %i.dj = icmp uge i64 %.sroa.0.0.i, %spec.select, !dbg !53301
  %i.dk = icmp eq i64 %.sroa.8.283, %.sroa.0.0.i
  %or.cond2 = and i1 %i.dk, %i.dj, !dbg !53301
  br i1 %or.cond2, label %bb.ag, label %.outer.backedge, !dbg !53301

bb.ag:                                            ; preds = %bb.af
  %i.dl = shl nuw i64 %spec.select, 1, !dbg !53302
  %i.dm = icmp slt i64 %spec.select, 0, !dbg !53302
  br i1 %i.dm, label %bb.ah, label %.outer.backedge, !dbg !53303, !prof !4282

.outer:                                           ; preds = %.outer.backedge, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEE0B34_.exit.thread
  %.ph = phi i64 [ %.pre, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEE0B34_.exit.thread ], [ %i.da, %.outer.backedge ]
  %.sroa.048.2.ph = phi i64 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEE0B34_.exit.thread ], [ %i.de, %.outer.backedge ]
  %.sroa.050.3.ph = phi i64 [ %.sroa.050.2, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEE0B34_.exit.thread ], [ %.sroa.050.3.ph.be, %.outer.backedge ] ; 2 uses
  %.sroa.019.0.ph = phi i32 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEE0B34_.exit.thread ], [ %.sroa.019.1, %.outer.backedge ]
  br label %bb.f, !dbg !53194

bb.ah:                                            ; preds = %bb.ag
  br label %.outer.backedge, !dbg !53304

.outer.backedge:                                  ; preds = %bb.ah, %bb.ag, %bb.af
  %.sroa.050.3.ph.be = phi i64 [ %spec.select, %bb.af ], [ %i.dl, %bb.ag ], [ -1, %bb.ah ]
  br label %.outer, !dbg !53194

.loopexit:                                        ; preds = %bb.l, %bb.ad, %.loopexit171, %bb.i, %bb.k
  %.sroa.8.1 = phi i64 [ %i.ai, %bb.i ], [ %i.al, %bb.k ], [ %i.dd, %.loopexit171 ], [ %i.bv, %bb.ad ], [ 163208757251, %bb.l ], !dbg !53305
  %.sroa.010.1 = phi i64 [ 1, %bb.i ], [ 0, %bb.k ], [ 0, %.loopexit171 ], [ 1, %bb.ad ], [ 1, %bb.l ], !dbg !53305
  %i.dn = inttoptr i64 %.sroa.8.1 to ptr, !dbg !53306
  br label %bb.ai, !dbg !53307

bb.ai:                                            ; preds = %bb.e, %bb.d, %.loopexit
  %.sroa.8.2 = phi ptr [ %i.dn, %.loopexit ], [ %i.s, %bb.d ], [ null, %bb.e ], !dbg !53190
  %.sroa.010.2 = phi i64 [ %.sroa.010.1, %.loopexit ], [ 1, %bb.d ], [ 0, %bb.e ], !dbg !53190
  %i.do = insertvalue { i64, ptr } poison, i64 %.sroa.010.2, 0, !dbg !53306
  %i.dp = insertvalue { i64, ptr } %i.do, ptr %.sroa.8.2, 1, !dbg !53306
  ret { i64, ptr } %i.dp, !dbg !53306
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectEEB10_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !53308 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !53559 ; 7 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !53559, !noundef !4270 ; 7 uses
  %i.e = icmp sgt i64 %i.d, -1, !dbg !53560
  tail call void @llvm.assume(i1 %i.e), !dbg !53561
  %i.f = load i64, ptr %1, align 8, !dbg !53562, !range !4635, !noundef !4270 ; 2 uses
  %i.g = trunc nuw i64 %2 to i1, !dbg !53563      ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !53563

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %3, -1025, !dbg !53564
  br i1 %i.h, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectEE0B12_.exit.thread, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectEE0B12_.exit, !dbg !53565, !prof !4282

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectEE0B12_.exit: ; preds = %bb.b
  %i.i = add nuw i64 %3, 1024, !dbg !53564        ; 3 uses
  %i.j = and i64 %i.i, 8191, !dbg !53566          ; 2 uses
  %i.k = icmp eq i64 %i.j, 0, !dbg !53567
  %i.l = sub i64 %3, %i.j, !dbg !53567
  %i.m = add i64 %i.l, 9216, !dbg !53567          ; 2 uses
  %.not102 = icmp ult i64 %i.m, %i.i, !dbg !53567
  %.sroa.5.1.i = select i1 %.not102, i64 8192, i64 %i.m, !dbg !53568
  %.sroa.050.1 = select i1 %i.k, i64 %i.i, i64 %.sroa.5.1.i, !dbg !53567 ; 2 uses
  %i.n = icmp eq i64 %3, 0
  br i1 %i.n, label %bb.c, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectEE0B12_.exit.thread, !dbg !53569

bb.c:                                             ; preds = %bb.a, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectEE0B12_.exit
  %.sroa.050.0 = phi i64 [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectEE0B12_.exit ], [ 8192, %bb.a ], !dbg !53570 ; 2 uses
  %.sroa.013.0 = xor i1 %i.g, true, !dbg !53571   ; 2 uses
  %i.o = sub nsw i64 %i.f, %i.d, !dbg !53572
  %i.p = icmp ult i64 %i.o, 32, !dbg !53572
  br i1 %i.p, label %bb.d, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectEE0B12_.exit.thread, !dbg !53572

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectEE0B12_.exit.thread: ; preds = %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectEE0B12_.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectEE0B12_.exit
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectEE0B12_.exit.thread_crit_edge ], [ %i.d, %bb.c ], [ %i.d, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectEE0B12_.exit ], [ %i.d, %bb.b ], !dbg !53573
  %.sroa.050.2 = phi i64 [ %.sroa.050.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectEE0B12_.exit.thread_crit_edge ], [ %.sroa.050.0, %bb.c ], [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectEE0B12_.exit ], [ 8192, %bb.b ], !dbg !53574
  %.sroa.013.1 = phi i1 [ %.sroa.013.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectEE0B12_.exit.thread_crit_edge ], [ %.sroa.013.0, %bb.c ], [ false, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectEE0B12_.exit ], [ false, %bb.b ], !dbg !53575
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br label %bb.f, !dbg !53576

bb.d:                                             ; preds = %bb.c
  %i.y = tail call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectEEB1k_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !53503 ; 2 uses
  %i.z = extractvalue { i64, ptr } %i.y, 0, !dbg !53503
  %i.aa = extractvalue { i64, ptr } %i.y, 1, !dbg !53503 ; 2 uses
  %i.ab = trunc nuw i64 %i.z to i1, !dbg !53577
  br i1 %i.ab, label %bb.ae, label %bb.e, !dbg !53577

bb.e:                                             ; preds = %bb.d
  %i.ac = icmp eq ptr %i.aa, null, !dbg !53578
  br i1 %i.ac, label %bb.ae, label %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectEE0B12_.exit.thread_crit_edge, !dbg !53578

._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectEE0B12_.exit.thread_crit_edge: ; preds = %bb.e
  %.pre.pre = load i64, ptr %i.c, align 8, !dbg !53573
  br label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectEE0B12_.exit.thread, !dbg !53578

bb.f:                                             ; preds = %bb.aa, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectEE0B12_.exit.thread
  %i.ad = phi i64 [ %.pre, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectEE0B12_.exit.thread ], [ %i.cb, %bb.aa ], !dbg !53573 ; 3 uses
  %.sroa.048.2 = phi i64 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectEE0B12_.exit.thread ], [ %i.by, %bb.aa ], !dbg !53579
  %.sroa.050.3 = phi i64 [ %.sroa.050.2, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectEE0B12_.exit.thread ], [ %.sroa.050.4, %bb.aa ], !dbg !53580 ; 3 uses
  %.sroa.019.0 = phi i32 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectEE0B12_.exit.thread ], [ %.sroa.019.1, %bb.aa ], !dbg !53581
  %i.ae = icmp sgt i64 %i.ad, -1, !dbg !53582
  call void @llvm.assume(i1 %i.ae), !dbg !53583
  %i.af = load i64, ptr %1, align 8, !dbg !53584, !range !4635, !noundef !4270 ; 3 uses
  %i.ag = icmp eq i64 %i.ad, %i.af, !dbg !53585
  %i.ah = icmp eq i64 %i.af, %i.f
  %or.cond62 = and i1 %i.ag, %i.ah, !dbg !53585
  br i1 %or.cond62, label %bb.h, label %bb.g, !dbg !53585

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.ai = phi i64 [ %.pre127, %._crit_edge ], [ %i.af, %bb.f ], !dbg !53586 ; 3 uses
  %i.aj = phi i64 [ %.pre126, %._crit_edge ], [ %i.ad, %bb.f ], !dbg !53587 ; 3 uses
  %i.ak = icmp sgt i64 %i.aj, -1, !dbg !53588
  call void @llvm.assume(i1 %i.ak), !dbg !53589
  %i.al = icmp eq i64 %i.aj, %i.ai, !dbg !53590
  br i1 %i.al, label %bb.l, label %bb.m, !dbg !53590

bb.h:                                             ; preds = %bb.f
  %i.am = call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectEEB1k_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !53515 ; 2 uses
  %i.an = extractvalue { i64, ptr } %i.am, 0, !dbg !53515
  %i.ao = extractvalue { i64, ptr } %i.am, 1, !dbg !53515 ; 2 uses
  %i.ap = trunc nuw i64 %i.an to i1, !dbg !53591
  br i1 %i.ap, label %bb.i, label %bb.j, !dbg !53591

bb.i:                                             ; preds = %bb.h
  %i.aq = ptrtoint ptr %i.ao to i64, !dbg !53515
  br label %.loopexit, !dbg !53592

bb.j:                                             ; preds = %bb.h
  %i.ar = icmp eq ptr %i.ao, null, !dbg !53593
  %.pre126 = load i64, ptr %i.c, align 8, !dbg !53587 ; 3 uses
  br i1 %i.ar, label %bb.k, label %._crit_edge, !dbg !53593

._crit_edge:                                      ; preds = %bb.j
  %.pre127 = load i64, ptr %1, align 8, !dbg !53586, !range !4635
  br label %bb.g, !dbg !53593

bb.k:                                             ; preds = %bb.j
  %i.as = icmp sgt i64 %.pre126, -1, !dbg !53594
  call void @llvm.assume(i1 %i.as), !dbg !53595
  %i.at = sub nsw i64 %.pre126, %i.d, !dbg !53596
  br label %.loopexit, !dbg !53597

bb.l:                                             ; preds = %bb.g
  %i.au = call { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.ai, i64 noundef 32, i64 noundef 1, i64 noundef 1), !dbg !53598
  %i.av = extractvalue { i64, i64 } %i.au, 0, !dbg !53598
  %.not = icmp eq i64 %i.av, -9223372036854775807, !dbg !53599
  br i1 %.not, label %._crit_edge128, label %.loopexit, !dbg !53600

._crit_edge128:                                   ; preds = %bb.l
  %.pre129 = load i64, ptr %i.c, align 8, !dbg !53601
  %.pre130 = load i64, ptr %1, align 8, !dbg !53602, !range !4635
  br label %bb.m, !dbg !53600

bb.m:                                             ; preds = %._crit_edge128, %bb.g
  %i.aw = phi i64 [ %.pre130, %._crit_edge128 ], [ %i.ai, %bb.g ], !dbg !53602
  %i.ax = phi i64 [ %.pre129, %._crit_edge128 ], [ %i.aj, %bb.g ], !dbg !53601 ; 5 uses
  %i.ay = load ptr, ptr %i.q, align 8, !dbg !53603, !nonnull !4270, !noundef !4270
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax, !dbg !53604
  %i.ba = sub i64 %i.aw, %i.ax, !dbg !53605
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.050.3, i64 %i.ba), !dbg !53606 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !53607
  store ptr %i.az, ptr %i.b, align 8, !dbg !53608
  store i64 %.sroa.0.0.i, ptr %i.r, align 8, !dbg !53608
  store i64 0, ptr %i.s, align 8, !dbg !53608
  store i64 %.sroa.048.2, ptr %i.t, align 8, !dbg !53609
  %.promoted = load i64, ptr %i.u, align 8, !alias.scope !53536, !noalias !53537 ; 2 uses
  %i.bb = icmp eq i64 %.promoted, 0, !dbg !53610
  br i1 %i.bb, label %.thread, label %.lr.ph, !dbg !53610

.thread:                                          ; preds = %bb.m
  %i.bc = icmp sgt i64 %i.ax, -1, !dbg !53611
  call void @llvm.assume(i1 %i.bc), !dbg !53612
  store i64 %i.ax, ptr %i.c, align 8, !dbg !53613
  br label %.loopexit149, !dbg !53614

.lr.ph:                                           ; preds = %bb.m
  %.val4.i = load ptr, ptr %0, align 8, !nonnull !4270, !align !4488 ; 2 uses
  br label %bb.n, !dbg !53610

bb.n:                                             ; preds = %.lr.ph, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit
  %i.bd = phi i64 [ %.promoted, %.lr.ph ], [ %.sink, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !53536), !dbg !53615
  call void @llvm.experimental.noalias.scope.decl(metadata !53537), !dbg !53615
  %i.be = load i64, ptr %i.r, align 8, !dbg !53616, !alias.scope !53537, !noalias !53536, !noundef !4270
  %i.bf = load i64, ptr %i.s, align 8, !dbg !53617, !alias.scope !53537, !noalias !53536, !noundef !4270 ; 6 uses
  %i.bg = sub i64 %i.be, %i.bf, !dbg !53618
  %i.bh = icmp ult i64 %i.bd, %i.bg, !dbg !53619
  br i1 %i.bh, label %bb.p, label %bb.o, !dbg !53619

bb.o:                                             ; preds = %bb.n
  %i.bi = call noundef ptr @_RNvYNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectNtNtCsh8eZTKRCwoO_3std2io4Read8read_bufB6_(ptr noalias noundef nonnull align 8 dereferenceable(16) %.val4.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b), !dbg !53620, !noalias !53536
  %i.bj = load i64, ptr %i.s, align 8, !dbg !53621, !alias.scope !53537, !noalias !53536, !noundef !4270 ; 2 uses
  %.neg.i = add i64 %i.bf, %i.bd, !dbg !53622
  %i.bk = sub i64 %.neg.i, %i.bj, !dbg !53623
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectENtB5_4Read8read_bufBI_.exit, !dbg !53624

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %i.t, align 8, !dbg !53625, !alias.scope !53537, !noalias !53536, !noundef !4270 ; 2 uses
  %i.bm = sub nuw i64 %i.bl, %i.bf, !dbg !53626
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bm, i64 %i.bd), !dbg !53627
  %i.bn = load ptr, ptr %i.b, align 8, !dbg !53628, !alias.scope !53537, !noalias !53536, !nonnull !4270, !noundef !4270
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bf, !dbg !53629
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !53630, !noalias !53542
  store ptr %i.bo, ptr %i.a, align 8, !dbg !53631, !noalias !53542
  store i64 %i.bd, ptr %i.v, align 8, !dbg !53631, !noalias !53542
  store i64 0, ptr %i.w, align 8, !dbg !53631, !noalias !53542
  store i64 %.sroa.0.0.i.i, ptr %i.x, align 8, !dbg !53632, !noalias !53542
  %i.bp = call noundef ptr @_RNvYNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectNtNtCsh8eZTKRCwoO_3std2io4Read8read_bufB6_(ptr noalias noundef nonnull align 8 dereferenceable(16) %.val4.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a), !dbg !53633, !noalias !53542
  %i.bq = load i64, ptr %i.w, align 8, !dbg !53634, !noalias !53542, !noundef !4270 ; 2 uses
  %i.br = load i64, ptr %i.x, align 8, !dbg !53635, !noalias !53542, !noundef !4270
  %i.bs = add i64 %i.bq, %i.bf, !dbg !53636       ; 3 uses
  store i64 %i.bs, ptr %i.s, align 8, !dbg !53636, !alias.scope !53537, !noalias !53536
  %.sroa.0.0.i6.i = call noundef i64 @llvm.umax.i64(i64 %i.bs, i64 %i.bl), !dbg !53637
  %i.bt = add i64 %i.br, %i.bf, !dbg !53638
  %.sroa.0.0.i7.i = call noundef i64 @llvm.umax.i64(i64 %i.bt, i64 %.sroa.0.0.i6.i), !dbg !53639
  store i64 %.sroa.0.0.i7.i, ptr %i.t, align 8, !dbg !53640, !alias.scope !53537, !noalias !53536
  %i.bu = sub i64 %i.bd, %i.bq, !dbg !53641
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !53642, !noalias !53542
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectENtB5_4Read8read_bufBI_.exit, !dbg !53624

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectENtB5_4Read8read_bufBI_.exit: ; preds = %bb.o, %bb.p
  %.pre131136 = phi i64 [ %i.bs, %bb.p ], [ %i.bj, %bb.o ]
  %.sink = phi i64 [ %i.bu, %bb.p ], [ %i.bk, %bb.o ], !dbg !53643 ; 3 uses
  %.sroa.0.0.i65 = phi ptr [ %i.bp, %bb.p ], [ %i.bi, %bb.o ], !dbg !53643 ; 8 uses
  store i64 %.sink, ptr %i.u, align 8, !dbg !53643, !alias.scope !53536, !noalias !53537
  %.not60 = icmp eq ptr %.sroa.0.0.i65, null, !dbg !53644 ; 2 uses
  br i1 %.not60, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectENtB5_4Read8read_bufBI_.exit.thread.loopexitsplit, label %bb.q, !dbg !53645

bb.q:                                             ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectENtB5_4Read8read_bufBI_.exit
  %i.bv = ptrtoint ptr %.sroa.0.0.i65 to i64, !dbg !53646 ; 3 uses
  %i.bw = and i64 %i.bv, 3, !dbg !53647
  switch i64 %i.bw, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.r
    i64 0, label %.split100
    i64 1, label %.split99
  ], !dbg !53648, !prof !4782

default.unreachable:                              ; preds = %bb.q
  unreachable

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectENtB5_4Read8read_bufBI_.exit.thread.loopexitsplit: ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectENtB5_4Read8read_bufBI_.exit, %bb.r, %.split, %.split99, %.split100
  %i.bx = ptrtoint ptr %.sroa.0.0.i65 to i64, !dbg !53649
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectENtB5_4Read8read_bufBI_.exit.thread, !dbg !53650

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectENtB5_4Read8read_bufBI_.exit.thread: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectENtB5_4Read8read_bufBI_.exit.thread.loopexit_crit_edge, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectENtB5_4Read8read_bufBI_.exit.thread.loopexitsplit
  %.pre131 = phi i64 [ %.pre131.pre, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectENtB5_4Read8read_bufBI_.exit.thread.loopexit_crit_edge ], [ %.pre131136, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectENtB5_4Read8read_bufBI_.exit.thread.loopexitsplit ], !dbg !53650 ; 5 uses
  %.not6081.ph = phi i1 [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectENtB5_4Read8read_bufBI_.exit.thread.loopexit_crit_edge ], [ %.not60, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectENtB5_4Read8read_bufBI_.exit.thread.loopexitsplit ]
  %.sroa.0.0.i6579.ph = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectENtB5_4Read8read_bufBI_.exit.thread.loopexit_crit_edge ], [ %i.bx, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectENtB5_4Read8read_bufBI_.exit.thread.loopexitsplit ]
  %.pre132 = load i64, ptr %i.t, align 8, !dbg !53651 ; 2 uses
  %.pre133 = load i64, ptr %i.c, align 8, !dbg !53652 ; 2 uses
  %i.by = sub nuw i64 %.pre132, %.pre131, !dbg !53653
  %i.bz = icmp ne i64 %.pre132, %.sroa.0.0.i, !dbg !53654
  %i.ca = icmp sgt i64 %.pre133, -1, !dbg !53611
  call void @llvm.assume(i1 %i.ca), !dbg !53612
  %i.cb = add i64 %.pre133, %.pre131, !dbg !53655 ; 3 uses
  store i64 %i.cb, ptr %i.c, align 8, !dbg !53613
  br i1 %.not6081.ph, label %bb.y, label %.loopexit148, !dbg !53656

.split:                                           ; preds = %bb.q
  %.mask103 = and i64 %i.bv, -4294967296, !dbg !53657
  %i.cc = icmp eq i64 %.mask103, 17179869184, !dbg !53657
  br i1 %i.cc, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectENtB5_4Read8read_bufBI_.exit.thread.loopexitsplit, !dbg !53658

.split100:                                        ; preds = %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i65, i64 16, !dbg !53659
  %i.ce = load i8, ptr %i.cd, align 8, !dbg !53659, !range !4789, !noundef !4270
  %i.cf = icmp eq i8 %i.ce, 35, !dbg !53660
  br i1 %i.cf, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectENtB5_4Read8read_bufBI_.exit.thread.loopexitsplit, !dbg !53658

.split99:                                         ; preds = %bb.q
  %i.cg = getelementptr i8, ptr %.sroa.0.0.i65, i64 -1, !dbg !53661 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cg) ]
  %i.ch = getelementptr i8, ptr %.sroa.0.0.i65, i64 15, !dbg !53662
  %i.ci = load i8, ptr %i.ch, align 8, !dbg !53662, !range !4789, !noundef !4270
  %i.cj = icmp eq i8 %i.ci, 35, !dbg !53663
  br i1 %i.cj, label %bb.s, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectENtB5_4Read8read_bufBI_.exit.thread.loopexitsplit, !dbg !53658

bb.r:                                             ; preds = %bb.q
  %i.ck = icmp ult ptr %.sroa.0.0.i65, inttoptr (i64 180388626432 to ptr), !dbg !53664
  call void @llvm.assume(i1 %i.ck), !dbg !53665
  %.mask = and i64 %i.bv, -4294967296, !dbg !53666
  %i.cl = icmp eq i64 %.mask, 150323855360, !dbg !53666
  br i1 %i.cl, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectENtB5_4Read8read_bufBI_.exit.thread.loopexitsplit, !dbg !53658

bb.s:                                             ; preds = %.split99
  %.val.i.i.i.i.i = load ptr, ptr %i.cg, align 8, !dbg !53667 ; 5 uses
  %i.cm = getelementptr i8, ptr %.sroa.0.0.i65, i64 7, !dbg !53667
  %.val1.i.i.i.i.i = load ptr, ptr %i.cm, align 8, !dbg !53667, !nonnull !4270, !align !4488, !noundef !4270 ; 5 uses
  %i.cn = load ptr, ptr %.val1.i.i.i.i.i, align 8, !dbg !53668, !invariant.load !4270 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cn, null, !dbg !53668
  br i1 %.not.i.i.i.i.i.i.i, label %bb.u, label %bb.t, !dbg !53668

bb.t:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  invoke void %i.cn(ptr noundef nonnull %.val.i.i.i.i.i)
          to label %bb.u unwind label %bb.w, !dbg !53668

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.co = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !53669
  %i.cp = load i64, ptr %i.co, align 8, !dbg !53669, !range !4635, !invariant.load !4270 ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 0, !dbg !53670
  br i1 %i.cq, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i, label %bb.v, !dbg !53670

bb.v:                                             ; preds = %bb.u
  %i.cr = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16, !dbg !53669
  %i.cs = load i64, ptr %i.cr, align 8, !dbg !53671, !range !4615, !invariant.load !4270
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.cp, i64 noundef range(i64 1, 536870913) %i.cs) #53, !dbg !53672
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i, !dbg !53673

bb.w:                                             ; preds = %bb.t
  %i.ct = landingpad { ptr, i32 }
          cleanup
  %i.cu = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !53674
  %i.cv = load i64, ptr %i.cu, align 8, !dbg !53674, !range !4635, !invariant.load !4270 ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 0, !dbg !53675
  br i1 %i.cw, label %.body, label %bb.x, !dbg !53675

bb.x:                                             ; preds = %bb.w
  %i.cx = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16, !dbg !53674
  %i.cy = load i64, ptr %i.cx, align 8, !dbg !53676, !range !4615, !invariant.load !4270
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.cv, i64 noundef range(i64 1, 536870913) %i.cy) #53, !dbg !53677
  br label %.body, !dbg !53678

.body:                                            ; preds = %bb.x, %bb.w
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cg, i64 noundef 24, i64 noundef 8) #53, !dbg !53679
  resume { ptr, i32 } %i.ct, !dbg !53680

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i: ; preds = %bb.v, %bb.u
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cg, i64 noundef 24, i64 noundef 8) #53, !dbg !53681
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, !dbg !53682

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.r, %.split, %.split100, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i
  %i.cz = icmp eq i64 %.sink, 0, !dbg !53610
  br i1 %i.cz, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectENtB5_4Read8read_bufBI_.exit.thread.loopexit_crit_edge, label %bb.n, !dbg !53610

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectENtB5_4Read8read_bufBI_.exit.thread.loopexit_crit_edge: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit
  %.pre131.pre = load i64, ptr %i.s, align 8, !dbg !53650
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectENtB5_4Read8read_bufBI_.exit.thread, !dbg !53610

bb.y:                                             ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectENtB5_4Read8read_bufBI_.exit.thread
  %i.da = icmp eq i64 %.pre131, 0, !dbg !53614
  br i1 %i.da, label %.loopexit149, label %bb.z, !dbg !53614

.loopexit149:                                     ; preds = %bb.y, %.thread
  %i.db = phi i64 [ %i.ax, %.thread ], [ %i.cb, %bb.y ]
  %i.dc = sub nsw i64 %i.db, %i.d, !dbg !53683
  br label %.loopexit148, !dbg !53684

bb.z:                                             ; preds = %bb.y
  %i.dd = icmp ult i64 %.pre131, %.sroa.0.0.i, !dbg !53685
  %i.de = add i32 %.sroa.019.0, 1, !dbg !53685
  %.sroa.019.1 = select i1 %i.dd, i32 %i.de, i32 0, !dbg !53685 ; 2 uses
  br i1 %.sroa.013.1, label %bb.ab, label %bb.aa, !dbg !53686

.loopexit148:                                     ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectENtB5_4Read8read_bufBI_.exit.thread, %.loopexit149
  %.sroa.8.0 = phi i64 [ %i.dc, %.loopexit149 ], [ %.sroa.0.0.i6579.ph, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectENtB5_4Read8read_bufBI_.exit.thread ], !dbg !53687
  %.sroa.010.0 = phi i64 [ 0, %.loopexit149 ], [ 1, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectENtB5_4Read8read_bufBI_.exit.thread ], !dbg !53687
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !53688
  br label %.loopexit, !dbg !53592

bb.aa:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.z
  %.sroa.050.4 = phi i64 [ -1, %bb.ad ], [ %i.di, %bb.ac ], [ %spec.select, %bb.ab ], [ %.sroa.050.3, %bb.z ], !dbg !53580
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !53688
  br label %bb.f, !dbg !53576

bb.ab:                                            ; preds = %bb.z
  %i.df = icmp sgt i32 %.sroa.019.1, 1
  %or.cond7 = select i1 %i.bz, i1 %i.df, i1 false, !dbg !53689
  %spec.select = select i1 %or.cond7, i64 -1, i64 %.sroa.050.3, !dbg !53689 ; 4 uses
  %i.dg = icmp uge i64 %.sroa.0.0.i, %spec.select, !dbg !53690
  %i.dh = icmp eq i64 %.pre131, %.sroa.0.0.i
  %or.cond2 = and i1 %i.dh, %i.dg, !dbg !53690
  br i1 %or.cond2, label %bb.ac, label %bb.aa, !dbg !53690

bb.ac:                                            ; preds = %bb.ab
  %i.di = shl nuw i64 %spec.select, 1, !dbg !53691
  %i.dj = icmp slt i64 %spec.select, 0, !dbg !53691
  br i1 %i.dj, label %bb.ad, label %bb.aa, !dbg !53692, !prof !4282

bb.ad:                                            ; preds = %bb.ac
  br label %bb.aa, !dbg !53693

.loopexit:                                        ; preds = %bb.l, %bb.i, %bb.k, %.loopexit148
  %.sroa.8.1 = phi i64 [ %i.aq, %bb.i ], [ %i.at, %bb.k ], [ %.sroa.8.0, %.loopexit148 ], [ 163208757251, %bb.l ], !dbg !53694
  %.sroa.010.1 = phi i64 [ 1, %bb.i ], [ 0, %bb.k ], [ %.sroa.010.0, %.loopexit148 ], [ 1, %bb.l ], !dbg !53694
  %i.dk = inttoptr i64 %.sroa.8.1 to ptr, !dbg !53695
  br label %bb.ae, !dbg !53696

bb.ae:                                            ; preds = %bb.e, %bb.d, %.loopexit
  %.sroa.8.2 = phi ptr [ %i.dk, %.loopexit ], [ %i.aa, %bb.d ], [ null, %bb.e ], !dbg !53581
  %.sroa.010.2 = phi i64 [ %.sroa.010.1, %.loopexit ], [ 1, %bb.d ], [ 0, %bb.e ], !dbg !53581
  %i.dl = insertvalue { i64, ptr } poison, i64 %.sroa.010.2, 0, !dbg !53695
  %i.dm = insertvalue { i64, ptr } %i.dl, ptr %.sroa.8.2, 1, !dbg !53695
  ret { i64, ptr } %i.dm, !dbg !53695
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQQINtNtB2_6cursor6CursorQRShEEECseeLknQCOKOd_13polars_python(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !53697 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !53925 ; 7 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !53925, !noundef !4270 ; 7 uses
  %i.e = icmp sgt i64 %i.d, -1, !dbg !53926
  tail call void @llvm.assume(i1 %i.e), !dbg !53927
  %i.f = load i64, ptr %1, align 8, !dbg !53928, !range !4635, !noundef !4270 ; 2 uses
  %i.g = trunc nuw i64 %2 to i1, !dbg !53929      ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !53929

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %3, -1025, !dbg !53930
  br i1 %i.h, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorQRShEEE0CseeLknQCOKOd_13polars_python.exit.thread, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorQRShEEE0CseeLknQCOKOd_13polars_python.exit, !dbg !53931, !prof !4282

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorQRShEEE0CseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  %i.i = add nuw i64 %3, 1024, !dbg !53930        ; 3 uses
  %i.j = and i64 %i.i, 8191, !dbg !53932          ; 2 uses
  %i.k = icmp eq i64 %i.j, 0, !dbg !53933
  %i.l = sub i64 %3, %i.j, !dbg !53933
  %i.m = add i64 %i.l, 9216, !dbg !53933          ; 2 uses
  %.not102 = icmp ult i64 %i.m, %i.i, !dbg !53933
  %.sroa.5.1.i = select i1 %.not102, i64 8192, i64 %i.m, !dbg !53934
  %.sroa.050.1 = select i1 %i.k, i64 %i.i, i64 %.sroa.5.1.i, !dbg !53933 ; 2 uses
  %i.n = icmp eq i64 %3, 0
  br i1 %i.n, label %bb.c, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorQRShEEE0CseeLknQCOKOd_13polars_python.exit.thread, !dbg !53935

bb.c:                                             ; preds = %bb.a, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorQRShEEE0CseeLknQCOKOd_13polars_python.exit
  %.sroa.050.0 = phi i64 [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorQRShEEE0CseeLknQCOKOd_13polars_python.exit ], [ 8192, %bb.a ], !dbg !53936 ; 2 uses
  %.sroa.013.0 = xor i1 %i.g, true, !dbg !53937   ; 2 uses
  %i.o = sub nsw i64 %i.f, %i.d, !dbg !53938
  %i.p = icmp ult i64 %i.o, 32, !dbg !53938
  br i1 %i.p, label %bb.d, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorQRShEEE0CseeLknQCOKOd_13polars_python.exit.thread, !dbg !53938

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorQRShEEE0CseeLknQCOKOd_13polars_python.exit.thread: ; preds = %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorQRShEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorQRShEEE0CseeLknQCOKOd_13polars_python.exit
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorQRShEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge ], [ %i.d, %bb.c ], [ %i.d, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorQRShEEE0CseeLknQCOKOd_13polars_python.exit ], [ %i.d, %bb.b ], !dbg !53939
  %.sroa.050.2 = phi i64 [ %.sroa.050.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorQRShEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge ], [ %.sroa.050.0, %bb.c ], [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorQRShEEE0CseeLknQCOKOd_13polars_python.exit ], [ 8192, %bb.b ], !dbg !53940
  %.sroa.013.1 = phi i1 [ %.sroa.013.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorQRShEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge ], [ %.sroa.013.0, %bb.c ], [ false, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorQRShEEE0CseeLknQCOKOd_13polars_python.exit ], [ false, %bb.b ], !dbg !53941
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br label %bb.f, !dbg !53942

bb.d:                                             ; preds = %bb.c
  %i.y = tail call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQQINtNtB4_6cursor6CursorQRShEEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !53869 ; 2 uses
  %i.z = extractvalue { i64, ptr } %i.y, 0, !dbg !53869
  %i.aa = extractvalue { i64, ptr } %i.y, 1, !dbg !53869 ; 2 uses
  %i.ab = trunc nuw i64 %i.z to i1, !dbg !53943
  br i1 %i.ab, label %bb.ae, label %bb.e, !dbg !53943

bb.e:                                             ; preds = %bb.d
  %i.ac = icmp eq ptr %i.aa, null, !dbg !53944
  br i1 %i.ac, label %bb.ae, label %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorQRShEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge, !dbg !53944

._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorQRShEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge: ; preds = %bb.e
  %.pre.pre = load i64, ptr %i.c, align 8, !dbg !53939
  br label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorQRShEEE0CseeLknQCOKOd_13polars_python.exit.thread, !dbg !53944

bb.f:                                             ; preds = %bb.aa, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorQRShEEE0CseeLknQCOKOd_13polars_python.exit.thread
  %i.ad = phi i64 [ %.pre, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorQRShEEE0CseeLknQCOKOd_13polars_python.exit.thread ], [ %i.cb, %bb.aa ], !dbg !53939 ; 3 uses
  %.sroa.048.2 = phi i64 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorQRShEEE0CseeLknQCOKOd_13polars_python.exit.thread ], [ %i.by, %bb.aa ], !dbg !53945
  %.sroa.050.3 = phi i64 [ %.sroa.050.2, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorQRShEEE0CseeLknQCOKOd_13polars_python.exit.thread ], [ %.sroa.050.4, %bb.aa ], !dbg !53946 ; 3 uses
  %.sroa.019.0 = phi i32 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorQRShEEE0CseeLknQCOKOd_13polars_python.exit.thread ], [ %.sroa.019.1, %bb.aa ], !dbg !53947
  %i.ae = icmp sgt i64 %i.ad, -1, !dbg !53948
  call void @llvm.assume(i1 %i.ae), !dbg !53949
  %i.af = load i64, ptr %1, align 8, !dbg !53950, !range !4635, !noundef !4270 ; 3 uses
  %i.ag = icmp eq i64 %i.ad, %i.af, !dbg !53951
  %i.ah = icmp eq i64 %i.af, %i.f
  %or.cond62 = and i1 %i.ag, %i.ah, !dbg !53951
  br i1 %or.cond62, label %bb.h, label %bb.g, !dbg !53951

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.ai = phi i64 [ %.pre127, %._crit_edge ], [ %i.af, %bb.f ], !dbg !53952 ; 3 uses
  %i.aj = phi i64 [ %.pre126, %._crit_edge ], [ %i.ad, %bb.f ], !dbg !53953 ; 3 uses
  %i.ak = icmp sgt i64 %i.aj, -1, !dbg !53954
  call void @llvm.assume(i1 %i.ak), !dbg !53955
  %i.al = icmp eq i64 %i.aj, %i.ai, !dbg !53956
  br i1 %i.al, label %bb.l, label %bb.m, !dbg !53956

bb.h:                                             ; preds = %bb.f
  %i.am = call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQQINtNtB4_6cursor6CursorQRShEEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !53881 ; 2 uses
  %i.an = extractvalue { i64, ptr } %i.am, 0, !dbg !53881
  %i.ao = extractvalue { i64, ptr } %i.am, 1, !dbg !53881 ; 2 uses
  %i.ap = trunc nuw i64 %i.an to i1, !dbg !53957
  br i1 %i.ap, label %bb.i, label %bb.j, !dbg !53957

bb.i:                                             ; preds = %bb.h
  %i.aq = ptrtoint ptr %i.ao to i64, !dbg !53881
  br label %.loopexit, !dbg !53958

bb.j:                                             ; preds = %bb.h
  %i.ar = icmp eq ptr %i.ao, null, !dbg !53959
  %.pre126 = load i64, ptr %i.c, align 8, !dbg !53953 ; 3 uses
  br i1 %i.ar, label %bb.k, label %._crit_edge, !dbg !53959

._crit_edge:                                      ; preds = %bb.j
  %.pre127 = load i64, ptr %1, align 8, !dbg !53952, !range !4635
  br label %bb.g, !dbg !53959

bb.k:                                             ; preds = %bb.j
  %i.as = icmp sgt i64 %.pre126, -1, !dbg !53960
  call void @llvm.assume(i1 %i.as), !dbg !53961
  %i.at = sub nsw i64 %.pre126, %i.d, !dbg !53962
  br label %.loopexit, !dbg !53963

bb.l:                                             ; preds = %bb.g
  %i.au = call { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.ai, i64 noundef 32, i64 noundef 1, i64 noundef 1), !dbg !53964
  %i.av = extractvalue { i64, i64 } %i.au, 0, !dbg !53964
  %.not = icmp eq i64 %i.av, -9223372036854775807, !dbg !53965
  br i1 %.not, label %._crit_edge128, label %.loopexit, !dbg !53966

._crit_edge128:                                   ; preds = %bb.l
  %.pre129 = load i64, ptr %i.c, align 8, !dbg !53967
  %.pre130 = load i64, ptr %1, align 8, !dbg !53968, !range !4635
  br label %bb.m, !dbg !53966

bb.m:                                             ; preds = %._crit_edge128, %bb.g
  %i.aw = phi i64 [ %.pre130, %._crit_edge128 ], [ %i.ai, %bb.g ], !dbg !53968
  %i.ax = phi i64 [ %.pre129, %._crit_edge128 ], [ %i.aj, %bb.g ], !dbg !53967 ; 5 uses
  %i.ay = load ptr, ptr %i.q, align 8, !dbg !53969, !nonnull !4270, !noundef !4270
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax, !dbg !53970
  %i.ba = sub i64 %i.aw, %i.ax, !dbg !53971
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.050.3, i64 %i.ba), !dbg !53972 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !53973
  store ptr %i.az, ptr %i.b, align 8, !dbg !53974
  store i64 %.sroa.0.0.i, ptr %i.r, align 8, !dbg !53974
  store i64 0, ptr %i.s, align 8, !dbg !53974
  store i64 %.sroa.048.2, ptr %i.t, align 8, !dbg !53975
  %.promoted = load i64, ptr %i.u, align 8, !alias.scope !53902, !noalias !53903 ; 2 uses
  %i.bb = icmp eq i64 %.promoted, 0, !dbg !53976
  br i1 %i.bb, label %.thread, label %.lr.ph, !dbg !53976

.thread:                                          ; preds = %bb.m
  %i.bc = icmp sgt i64 %i.ax, -1, !dbg !53977
  call void @llvm.assume(i1 %i.bc), !dbg !53978
  store i64 %i.ax, ptr %i.c, align 8, !dbg !53979
  br label %.loopexit149, !dbg !53980

.lr.ph:                                           ; preds = %bb.m
  %.val4.i = load ptr, ptr %0, align 8, !nonnull !4270, !align !4488 ; 2 uses
  br label %bb.n, !dbg !53976

bb.n:                                             ; preds = %.lr.ph, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit
  %i.bd = phi i64 [ %.promoted, %.lr.ph ], [ %.sink, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !53902), !dbg !53981
  call void @llvm.experimental.noalias.scope.decl(metadata !53903), !dbg !53981
  %i.be = load i64, ptr %i.r, align 8, !dbg !53982, !alias.scope !53903, !noalias !53902, !noundef !4270
  %i.bf = load i64, ptr %i.s, align 8, !dbg !53983, !alias.scope !53903, !noalias !53902, !noundef !4270 ; 6 uses
  %i.bg = sub i64 %i.be, %i.bf, !dbg !53984
  %i.bh = icmp ult i64 %i.bd, %i.bg, !dbg !53985
  br i1 %i.bh, label %bb.p, label %bb.o, !dbg !53985

bb.o:                                             ; preds = %bb.n
  %.val.i.i = load ptr, ptr %.val4.i, align 8, !dbg !53986, !noalias !53906, !nonnull !4270, !align !4488, !noundef !4270
  %i.bi = call noundef ptr @_RNvXs3_NtNtCsh8eZTKRCwoO_3std2io6cursorINtB5_6CursorQRShENtB7_4Read8read_bufCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(16) %.val.i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b), !dbg !53987, !noalias !53902
  %i.bj = load i64, ptr %i.s, align 8, !dbg !53988, !alias.scope !53903, !noalias !53902, !noundef !4270 ; 2 uses
  %.neg.i = add i64 %i.bf, %i.bd, !dbg !53989
  %i.bk = sub i64 %.neg.i, %i.bj, !dbg !53990
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorQRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit, !dbg !53991

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %i.t, align 8, !dbg !53992, !alias.scope !53903, !noalias !53902, !noundef !4270 ; 2 uses
  %i.bm = sub nuw i64 %i.bl, %i.bf, !dbg !53993
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bm, i64 %i.bd), !dbg !53994
  %i.bn = load ptr, ptr %i.b, align 8, !dbg !53995, !alias.scope !53903, !noalias !53902, !nonnull !4270, !noundef !4270
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bf, !dbg !53996
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !53997, !noalias !53907
  store ptr %i.bo, ptr %i.a, align 8, !dbg !53998, !noalias !53907
  store i64 %i.bd, ptr %i.v, align 8, !dbg !53998, !noalias !53907
  store i64 0, ptr %i.w, align 8, !dbg !53998, !noalias !53907
  store i64 %.sroa.0.0.i.i, ptr %i.x, align 8, !dbg !53999, !noalias !53907
  %.val.i6.i = load ptr, ptr %.val4.i, align 8, !dbg !54000, !noalias !53908, !nonnull !4270, !align !4488, !noundef !4270
  %i.bp = call noundef ptr @_RNvXs3_NtNtCsh8eZTKRCwoO_3std2io6cursorINtB5_6CursorQRShENtB7_4Read8read_bufCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(16) %.val.i6.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a), !dbg !54001, !noalias !53907
  %i.bq = load i64, ptr %i.w, align 8, !dbg !54002, !noalias !53907, !noundef !4270 ; 2 uses
  %i.br = load i64, ptr %i.x, align 8, !dbg !54003, !noalias !53907, !noundef !4270
  %i.bs = add i64 %i.bq, %i.bf, !dbg !54004       ; 3 uses
  store i64 %i.bs, ptr %i.s, align 8, !dbg !54004, !alias.scope !53903, !noalias !53902
  %.sroa.0.0.i7.i = call noundef i64 @llvm.umax.i64(i64 %i.bs, i64 %i.bl), !dbg !54005
  %i.bt = add i64 %i.br, %i.bf, !dbg !54006
  %.sroa.0.0.i8.i = call noundef i64 @llvm.umax.i64(i64 %i.bt, i64 %.sroa.0.0.i7.i), !dbg !54007
  store i64 %.sroa.0.0.i8.i, ptr %i.t, align 8, !dbg !54008, !alias.scope !53903, !noalias !53902
  %i.bu = sub i64 %i.bd, %i.bq, !dbg !54009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !54010, !noalias !53907
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorQRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit, !dbg !53991

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorQRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit: ; preds = %bb.o, %bb.p
  %.pre131136 = phi i64 [ %i.bs, %bb.p ], [ %i.bj, %bb.o ]
  %.sink = phi i64 [ %i.bu, %bb.p ], [ %i.bk, %bb.o ], !dbg !54011 ; 3 uses
  %.sroa.0.0.i65 = phi ptr [ %i.bp, %bb.p ], [ %i.bi, %bb.o ], !dbg !54011 ; 8 uses
  store i64 %.sink, ptr %i.u, align 8, !dbg !54011, !alias.scope !53902, !noalias !53903
  %.not60 = icmp eq ptr %.sroa.0.0.i65, null, !dbg !54012 ; 2 uses
  br i1 %.not60, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorQRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit, label %bb.q, !dbg !54013

bb.q:                                             ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorQRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit
  %i.bv = ptrtoint ptr %.sroa.0.0.i65 to i64, !dbg !54014 ; 3 uses
  %i.bw = and i64 %i.bv, 3, !dbg !54015
  switch i64 %i.bw, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.r
    i64 0, label %.split100
    i64 1, label %.split99
  ], !dbg !54016, !prof !4782

default.unreachable:                              ; preds = %bb.q
  unreachable

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorQRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit: ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorQRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit, %bb.r, %.split, %.split99, %.split100
  %i.bx = ptrtoint ptr %.sroa.0.0.i65 to i64, !dbg !54017
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorQRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread, !dbg !54018

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorQRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorQRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexit_crit_edge, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorQRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit
  %.pre131 = phi i64 [ %.pre131.pre, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorQRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexit_crit_edge ], [ %.pre131136, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorQRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit ], !dbg !54018 ; 5 uses
  %.not6081.ph = phi i1 [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorQRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexit_crit_edge ], [ %.not60, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorQRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit ]
  %.sroa.0.0.i6579.ph = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorQRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexit_crit_edge ], [ %i.bx, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorQRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit ]
  %.pre132 = load i64, ptr %i.t, align 8, !dbg !54019 ; 2 uses
  %.pre133 = load i64, ptr %i.c, align 8, !dbg !54020 ; 2 uses
  %i.by = sub nuw i64 %.pre132, %.pre131, !dbg !54021
  %i.bz = icmp ne i64 %.pre132, %.sroa.0.0.i, !dbg !54022
  %i.ca = icmp sgt i64 %.pre133, -1, !dbg !53977
  call void @llvm.assume(i1 %i.ca), !dbg !53978
  %i.cb = add i64 %.pre133, %.pre131, !dbg !54023 ; 3 uses
  store i64 %i.cb, ptr %i.c, align 8, !dbg !53979
  br i1 %.not6081.ph, label %bb.y, label %.loopexit148, !dbg !54024

.split:                                           ; preds = %bb.q
  %.mask103 = and i64 %i.bv, -4294967296, !dbg !54025
  %i.cc = icmp eq i64 %.mask103, 17179869184, !dbg !54025
  br i1 %i.cc, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorQRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit, !dbg !54026

.split100:                                        ; preds = %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i65, i64 16, !dbg !54027
  %i.ce = load i8, ptr %i.cd, align 8, !dbg !54027, !range !4789, !noundef !4270
  %i.cf = icmp eq i8 %i.ce, 35, !dbg !54028
  br i1 %i.cf, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorQRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit, !dbg !54026

.split99:                                         ; preds = %bb.q
  %i.cg = getelementptr i8, ptr %.sroa.0.0.i65, i64 -1, !dbg !54029 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cg) ]
  %i.ch = getelementptr i8, ptr %.sroa.0.0.i65, i64 15, !dbg !54030
  %i.ci = load i8, ptr %i.ch, align 8, !dbg !54030, !range !4789, !noundef !4270
  %i.cj = icmp eq i8 %i.ci, 35, !dbg !54031
  br i1 %i.cj, label %bb.s, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorQRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit, !dbg !54026

bb.r:                                             ; preds = %bb.q
  %i.ck = icmp ult ptr %.sroa.0.0.i65, inttoptr (i64 180388626432 to ptr), !dbg !54032
  call void @llvm.assume(i1 %i.ck), !dbg !54033
  %.mask = and i64 %i.bv, -4294967296, !dbg !54034
  %i.cl = icmp eq i64 %.mask, 150323855360, !dbg !54034
  br i1 %i.cl, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorQRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit, !dbg !54026

bb.s:                                             ; preds = %.split99
  %.val.i.i.i.i.i = load ptr, ptr %i.cg, align 8, !dbg !54035 ; 5 uses
  %i.cm = getelementptr i8, ptr %.sroa.0.0.i65, i64 7, !dbg !54035
  %.val1.i.i.i.i.i = load ptr, ptr %i.cm, align 8, !dbg !54035, !nonnull !4270, !align !4488, !noundef !4270 ; 5 uses
  %i.cn = load ptr, ptr %.val1.i.i.i.i.i, align 8, !dbg !54036, !invariant.load !4270 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cn, null, !dbg !54036
  br i1 %.not.i.i.i.i.i.i.i, label %bb.u, label %bb.t, !dbg !54036

bb.t:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  invoke void %i.cn(ptr noundef nonnull %.val.i.i.i.i.i)
          to label %bb.u unwind label %bb.w, !dbg !54036

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.co = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !54037
  %i.cp = load i64, ptr %i.co, align 8, !dbg !54037, !range !4635, !invariant.load !4270 ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 0, !dbg !54038
  br i1 %i.cq, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i, label %bb.v, !dbg !54038

bb.v:                                             ; preds = %bb.u
  %i.cr = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16, !dbg !54037
  %i.cs = load i64, ptr %i.cr, align 8, !dbg !54039, !range !4615, !invariant.load !4270
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.cp, i64 noundef range(i64 1, 536870913) %i.cs) #53, !dbg !54040
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i, !dbg !54041

bb.w:                                             ; preds = %bb.t
  %i.ct = landingpad { ptr, i32 }
          cleanup
  %i.cu = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !54042
  %i.cv = load i64, ptr %i.cu, align 8, !dbg !54042, !range !4635, !invariant.load !4270 ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 0, !dbg !54043
  br i1 %i.cw, label %.body, label %bb.x, !dbg !54043

bb.x:                                             ; preds = %bb.w
  %i.cx = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16, !dbg !54042
  %i.cy = load i64, ptr %i.cx, align 8, !dbg !54044, !range !4615, !invariant.load !4270
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.cv, i64 noundef range(i64 1, 536870913) %i.cy) #53, !dbg !54045
  br label %.body, !dbg !54046

.body:                                            ; preds = %bb.x, %bb.w
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cg, i64 noundef 24, i64 noundef 8) #53, !dbg !54047
  resume { ptr, i32 } %i.ct, !dbg !54048

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i: ; preds = %bb.v, %bb.u
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cg, i64 noundef 24, i64 noundef 8) #53, !dbg !54049
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, !dbg !54050

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.r, %.split, %.split100, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i
  %i.cz = icmp eq i64 %.sink, 0, !dbg !53976
  br i1 %i.cz, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorQRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexit_crit_edge, label %bb.n, !dbg !53976

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorQRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexit_crit_edge: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit
  %.pre131.pre = load i64, ptr %i.s, align 8, !dbg !54018
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorQRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread, !dbg !53976

bb.y:                                             ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorQRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread
  %i.da = icmp eq i64 %.pre131, 0, !dbg !53980
  br i1 %i.da, label %.loopexit149, label %bb.z, !dbg !53980

.loopexit149:                                     ; preds = %bb.y, %.thread
  %i.db = phi i64 [ %i.ax, %.thread ], [ %i.cb, %bb.y ]
  %i.dc = sub nsw i64 %i.db, %i.d, !dbg !54051
  br label %.loopexit148, !dbg !54052

bb.z:                                             ; preds = %bb.y
  %i.dd = icmp ult i64 %.pre131, %.sroa.0.0.i, !dbg !54053
  %i.de = add i32 %.sroa.019.0, 1, !dbg !54053
  %.sroa.019.1 = select i1 %i.dd, i32 %i.de, i32 0, !dbg !54053 ; 2 uses
  br i1 %.sroa.013.1, label %bb.ab, label %bb.aa, !dbg !54054

.loopexit148:                                     ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorQRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread, %.loopexit149
  %.sroa.8.0 = phi i64 [ %i.dc, %.loopexit149 ], [ %.sroa.0.0.i6579.ph, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorQRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread ], !dbg !54055
  %.sroa.010.0 = phi i64 [ 0, %.loopexit149 ], [ 1, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorQRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread ], !dbg !54055
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !54056
  br label %.loopexit, !dbg !53958

bb.aa:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.z
  %.sroa.050.4 = phi i64 [ -1, %bb.ad ], [ %i.di, %bb.ac ], [ %spec.select, %bb.ab ], [ %.sroa.050.3, %bb.z ], !dbg !53946
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !54056
  br label %bb.f, !dbg !53942

bb.ab:                                            ; preds = %bb.z
  %i.df = icmp sgt i32 %.sroa.019.1, 1
  %or.cond7 = select i1 %i.bz, i1 %i.df, i1 false, !dbg !54057
  %spec.select = select i1 %or.cond7, i64 -1, i64 %.sroa.050.3, !dbg !54057 ; 4 uses
  %i.dg = icmp uge i64 %.sroa.0.0.i, %spec.select, !dbg !54058
  %i.dh = icmp eq i64 %.pre131, %.sroa.0.0.i
  %or.cond2 = and i1 %i.dh, %i.dg, !dbg !54058
  br i1 %or.cond2, label %bb.ac, label %bb.aa, !dbg !54058

bb.ac:                                            ; preds = %bb.ab
  %i.di = shl nuw i64 %spec.select, 1, !dbg !54059
  %i.dj = icmp slt i64 %spec.select, 0, !dbg !54059
  br i1 %i.dj, label %bb.ad, label %bb.aa, !dbg !54060, !prof !4282

bb.ad:                                            ; preds = %bb.ac
  br label %bb.aa, !dbg !54061

.loopexit:                                        ; preds = %bb.l, %bb.i, %bb.k, %.loopexit148
  %.sroa.8.1 = phi i64 [ %i.aq, %bb.i ], [ %i.at, %bb.k ], [ %.sroa.8.0, %.loopexit148 ], [ 163208757251, %bb.l ], !dbg !54062
  %.sroa.010.1 = phi i64 [ 1, %bb.i ], [ 0, %bb.k ], [ %.sroa.010.0, %.loopexit148 ], [ 1, %bb.l ], !dbg !54062
  %i.dk = inttoptr i64 %.sroa.8.1 to ptr, !dbg !54063
  br label %bb.ae, !dbg !54064

bb.ae:                                            ; preds = %bb.e, %bb.d, %.loopexit
  %.sroa.8.2 = phi ptr [ %i.dk, %.loopexit ], [ %i.aa, %bb.d ], [ null, %bb.e ], !dbg !53947
  %.sroa.010.2 = phi i64 [ %.sroa.010.1, %.loopexit ], [ 1, %bb.d ], [ 0, %bb.e ], !dbg !53947
  %i.dl = insertvalue { i64, ptr } poison, i64 %.sroa.010.2, 0, !dbg !54063
  %i.dm = insertvalue { i64, ptr } %i.dl, ptr %.sroa.8.2, 1, !dbg !54063
  ret { i64, ptr } %i.dm, !dbg !54063
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQQINtNtB2_6cursor6CursorRShEEECseeLknQCOKOd_13polars_python(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !54065 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !54293 ; 7 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !54293, !noundef !4270 ; 7 uses
  %i.e = icmp sgt i64 %i.d, -1, !dbg !54294
  tail call void @llvm.assume(i1 %i.e), !dbg !54295
  %i.f = load i64, ptr %1, align 8, !dbg !54296, !range !4635, !noundef !4270 ; 2 uses
  %i.g = trunc nuw i64 %2 to i1, !dbg !54297      ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !54297

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %3, -1025, !dbg !54298
  br i1 %i.h, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorRShEEE0CseeLknQCOKOd_13polars_python.exit.thread, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorRShEEE0CseeLknQCOKOd_13polars_python.exit, !dbg !54299, !prof !4282

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorRShEEE0CseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  %i.i = add nuw i64 %3, 1024, !dbg !54298        ; 3 uses
  %i.j = and i64 %i.i, 8191, !dbg !54300          ; 2 uses
  %i.k = icmp eq i64 %i.j, 0, !dbg !54301
  %i.l = sub i64 %3, %i.j, !dbg !54301
  %i.m = add i64 %i.l, 9216, !dbg !54301          ; 2 uses
  %.not102 = icmp ult i64 %i.m, %i.i, !dbg !54301
  %.sroa.5.1.i = select i1 %.not102, i64 8192, i64 %i.m, !dbg !54302
  %.sroa.050.1 = select i1 %i.k, i64 %i.i, i64 %.sroa.5.1.i, !dbg !54301 ; 2 uses
  %i.n = icmp eq i64 %3, 0
  br i1 %i.n, label %bb.c, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorRShEEE0CseeLknQCOKOd_13polars_python.exit.thread, !dbg !54303

bb.c:                                             ; preds = %bb.a, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorRShEEE0CseeLknQCOKOd_13polars_python.exit
  %.sroa.050.0 = phi i64 [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorRShEEE0CseeLknQCOKOd_13polars_python.exit ], [ 8192, %bb.a ], !dbg !54304 ; 2 uses
  %.sroa.013.0 = xor i1 %i.g, true, !dbg !54305   ; 2 uses
  %i.o = sub nsw i64 %i.f, %i.d, !dbg !54306
  %i.p = icmp ult i64 %i.o, 32, !dbg !54306
  br i1 %i.p, label %bb.d, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorRShEEE0CseeLknQCOKOd_13polars_python.exit.thread, !dbg !54306

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorRShEEE0CseeLknQCOKOd_13polars_python.exit.thread: ; preds = %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorRShEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorRShEEE0CseeLknQCOKOd_13polars_python.exit
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorRShEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge ], [ %i.d, %bb.c ], [ %i.d, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorRShEEE0CseeLknQCOKOd_13polars_python.exit ], [ %i.d, %bb.b ], !dbg !54307
  %.sroa.050.2 = phi i64 [ %.sroa.050.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorRShEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge ], [ %.sroa.050.0, %bb.c ], [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorRShEEE0CseeLknQCOKOd_13polars_python.exit ], [ 8192, %bb.b ], !dbg !54308
  %.sroa.013.1 = phi i1 [ %.sroa.013.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorRShEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge ], [ %.sroa.013.0, %bb.c ], [ false, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorRShEEE0CseeLknQCOKOd_13polars_python.exit ], [ false, %bb.b ], !dbg !54309
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br label %bb.f, !dbg !54310

bb.d:                                             ; preds = %bb.c
  %i.y = tail call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQQINtNtB4_6cursor6CursorRShEEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !54237 ; 2 uses
  %i.z = extractvalue { i64, ptr } %i.y, 0, !dbg !54237
  %i.aa = extractvalue { i64, ptr } %i.y, 1, !dbg !54237 ; 2 uses
  %i.ab = trunc nuw i64 %i.z to i1, !dbg !54311
  br i1 %i.ab, label %bb.ae, label %bb.e, !dbg !54311

bb.e:                                             ; preds = %bb.d
  %i.ac = icmp eq ptr %i.aa, null, !dbg !54312
  br i1 %i.ac, label %bb.ae, label %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorRShEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge, !dbg !54312

._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorRShEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge: ; preds = %bb.e
  %.pre.pre = load i64, ptr %i.c, align 8, !dbg !54307
  br label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorRShEEE0CseeLknQCOKOd_13polars_python.exit.thread, !dbg !54312

bb.f:                                             ; preds = %bb.aa, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorRShEEE0CseeLknQCOKOd_13polars_python.exit.thread
  %i.ad = phi i64 [ %.pre, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorRShEEE0CseeLknQCOKOd_13polars_python.exit.thread ], [ %i.cb, %bb.aa ], !dbg !54307 ; 3 uses
  %.sroa.048.2 = phi i64 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorRShEEE0CseeLknQCOKOd_13polars_python.exit.thread ], [ %i.by, %bb.aa ], !dbg !54313
  %.sroa.050.3 = phi i64 [ %.sroa.050.2, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorRShEEE0CseeLknQCOKOd_13polars_python.exit.thread ], [ %.sroa.050.4, %bb.aa ], !dbg !54314 ; 3 uses
  %.sroa.019.0 = phi i32 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorRShEEE0CseeLknQCOKOd_13polars_python.exit.thread ], [ %.sroa.019.1, %bb.aa ], !dbg !54315
  %i.ae = icmp sgt i64 %i.ad, -1, !dbg !54316
  call void @llvm.assume(i1 %i.ae), !dbg !54317
  %i.af = load i64, ptr %1, align 8, !dbg !54318, !range !4635, !noundef !4270 ; 3 uses
  %i.ag = icmp eq i64 %i.ad, %i.af, !dbg !54319
  %i.ah = icmp eq i64 %i.af, %i.f
  %or.cond62 = and i1 %i.ag, %i.ah, !dbg !54319
  br i1 %or.cond62, label %bb.h, label %bb.g, !dbg !54319

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.ai = phi i64 [ %.pre127, %._crit_edge ], [ %i.af, %bb.f ], !dbg !54320 ; 3 uses
  %i.aj = phi i64 [ %.pre126, %._crit_edge ], [ %i.ad, %bb.f ], !dbg !54321 ; 3 uses
  %i.ak = icmp sgt i64 %i.aj, -1, !dbg !54322
  call void @llvm.assume(i1 %i.ak), !dbg !54323
  %i.al = icmp eq i64 %i.aj, %i.ai, !dbg !54324
  br i1 %i.al, label %bb.l, label %bb.m, !dbg !54324

bb.h:                                             ; preds = %bb.f
  %i.am = call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQQINtNtB4_6cursor6CursorRShEEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !54249 ; 2 uses
  %i.an = extractvalue { i64, ptr } %i.am, 0, !dbg !54249
  %i.ao = extractvalue { i64, ptr } %i.am, 1, !dbg !54249 ; 2 uses
  %i.ap = trunc nuw i64 %i.an to i1, !dbg !54325
  br i1 %i.ap, label %bb.i, label %bb.j, !dbg !54325

bb.i:                                             ; preds = %bb.h
  %i.aq = ptrtoint ptr %i.ao to i64, !dbg !54249
  br label %.loopexit, !dbg !54326

bb.j:                                             ; preds = %bb.h
  %i.ar = icmp eq ptr %i.ao, null, !dbg !54327
  %.pre126 = load i64, ptr %i.c, align 8, !dbg !54321 ; 3 uses
  br i1 %i.ar, label %bb.k, label %._crit_edge, !dbg !54327

._crit_edge:                                      ; preds = %bb.j
  %.pre127 = load i64, ptr %1, align 8, !dbg !54320, !range !4635
  br label %bb.g, !dbg !54327

bb.k:                                             ; preds = %bb.j
  %i.as = icmp sgt i64 %.pre126, -1, !dbg !54328
  call void @llvm.assume(i1 %i.as), !dbg !54329
  %i.at = sub nsw i64 %.pre126, %i.d, !dbg !54330
  br label %.loopexit, !dbg !54331

bb.l:                                             ; preds = %bb.g
  %i.au = call { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.ai, i64 noundef 32, i64 noundef 1, i64 noundef 1), !dbg !54332
  %i.av = extractvalue { i64, i64 } %i.au, 0, !dbg !54332
  %.not = icmp eq i64 %i.av, -9223372036854775807, !dbg !54333
  br i1 %.not, label %._crit_edge128, label %.loopexit, !dbg !54334

._crit_edge128:                                   ; preds = %bb.l
  %.pre129 = load i64, ptr %i.c, align 8, !dbg !54335
  %.pre130 = load i64, ptr %1, align 8, !dbg !54336, !range !4635
  br label %bb.m, !dbg !54334

bb.m:                                             ; preds = %._crit_edge128, %bb.g
  %i.aw = phi i64 [ %.pre130, %._crit_edge128 ], [ %i.ai, %bb.g ], !dbg !54336
  %i.ax = phi i64 [ %.pre129, %._crit_edge128 ], [ %i.aj, %bb.g ], !dbg !54335 ; 5 uses
  %i.ay = load ptr, ptr %i.q, align 8, !dbg !54337, !nonnull !4270, !noundef !4270
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax, !dbg !54338
  %i.ba = sub i64 %i.aw, %i.ax, !dbg !54339
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.050.3, i64 %i.ba), !dbg !54340 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !54341
  store ptr %i.az, ptr %i.b, align 8, !dbg !54342
  store i64 %.sroa.0.0.i, ptr %i.r, align 8, !dbg !54342
  store i64 0, ptr %i.s, align 8, !dbg !54342
  store i64 %.sroa.048.2, ptr %i.t, align 8, !dbg !54343
  %.promoted = load i64, ptr %i.u, align 8, !alias.scope !54270, !noalias !54271 ; 2 uses
  %i.bb = icmp eq i64 %.promoted, 0, !dbg !54344
  br i1 %i.bb, label %.thread, label %.lr.ph, !dbg !54344

.thread:                                          ; preds = %bb.m
  %i.bc = icmp sgt i64 %i.ax, -1, !dbg !54345
  call void @llvm.assume(i1 %i.bc), !dbg !54346
  store i64 %i.ax, ptr %i.c, align 8, !dbg !54347
  br label %.loopexit149, !dbg !54348

.lr.ph:                                           ; preds = %bb.m
  %.val4.i = load ptr, ptr %0, align 8, !nonnull !4270, !align !4488 ; 2 uses
  br label %bb.n, !dbg !54344

bb.n:                                             ; preds = %.lr.ph, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit
  %i.bd = phi i64 [ %.promoted, %.lr.ph ], [ %.sink, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !54270), !dbg !54349
  call void @llvm.experimental.noalias.scope.decl(metadata !54271), !dbg !54349
  %i.be = load i64, ptr %i.r, align 8, !dbg !54350, !alias.scope !54271, !noalias !54270, !noundef !4270
  %i.bf = load i64, ptr %i.s, align 8, !dbg !54351, !alias.scope !54271, !noalias !54270, !noundef !4270 ; 6 uses
  %i.bg = sub i64 %i.be, %i.bf, !dbg !54352
  %i.bh = icmp ult i64 %i.bd, %i.bg, !dbg !54353
  br i1 %i.bh, label %bb.p, label %bb.o, !dbg !54353

bb.o:                                             ; preds = %bb.n
  %.val.i.i = load ptr, ptr %.val4.i, align 8, !dbg !54354, !noalias !54274, !nonnull !4270, !align !4488, !noundef !4270
  %i.bi = call noundef ptr @_RNvXs3_NtNtCsh8eZTKRCwoO_3std2io6cursorINtB5_6CursorRShENtB7_4Read8read_bufCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b), !dbg !54355, !noalias !54270
  %i.bj = load i64, ptr %i.s, align 8, !dbg !54356, !alias.scope !54271, !noalias !54270, !noundef !4270 ; 2 uses
  %.neg.i = add i64 %i.bf, %i.bd, !dbg !54357
  %i.bk = sub i64 %.neg.i, %i.bj, !dbg !54358
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit, !dbg !54359

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %i.t, align 8, !dbg !54360, !alias.scope !54271, !noalias !54270, !noundef !4270 ; 2 uses
  %i.bm = sub nuw i64 %i.bl, %i.bf, !dbg !54361
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bm, i64 %i.bd), !dbg !54362
  %i.bn = load ptr, ptr %i.b, align 8, !dbg !54363, !alias.scope !54271, !noalias !54270, !nonnull !4270, !noundef !4270
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bf, !dbg !54364
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !54365, !noalias !54275
  store ptr %i.bo, ptr %i.a, align 8, !dbg !54366, !noalias !54275
  store i64 %i.bd, ptr %i.v, align 8, !dbg !54366, !noalias !54275
  store i64 0, ptr %i.w, align 8, !dbg !54366, !noalias !54275
  store i64 %.sroa.0.0.i.i, ptr %i.x, align 8, !dbg !54367, !noalias !54275
  %.val.i6.i = load ptr, ptr %.val4.i, align 8, !dbg !54368, !noalias !54276, !nonnull !4270, !align !4488, !noundef !4270
  %i.bp = call noundef ptr @_RNvXs3_NtNtCsh8eZTKRCwoO_3std2io6cursorINtB5_6CursorRShENtB7_4Read8read_bufCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i6.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a), !dbg !54369, !noalias !54275
  %i.bq = load i64, ptr %i.w, align 8, !dbg !54370, !noalias !54275, !noundef !4270 ; 2 uses
  %i.br = load i64, ptr %i.x, align 8, !dbg !54371, !noalias !54275, !noundef !4270
  %i.bs = add i64 %i.bq, %i.bf, !dbg !54372       ; 3 uses
  store i64 %i.bs, ptr %i.s, align 8, !dbg !54372, !alias.scope !54271, !noalias !54270
  %.sroa.0.0.i7.i = call noundef i64 @llvm.umax.i64(i64 %i.bs, i64 %i.bl), !dbg !54373
  %i.bt = add i64 %i.br, %i.bf, !dbg !54374
  %.sroa.0.0.i8.i = call noundef i64 @llvm.umax.i64(i64 %i.bt, i64 %.sroa.0.0.i7.i), !dbg !54375
  store i64 %.sroa.0.0.i8.i, ptr %i.t, align 8, !dbg !54376, !alias.scope !54271, !noalias !54270
  %i.bu = sub i64 %i.bd, %i.bq, !dbg !54377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !54378, !noalias !54275
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit, !dbg !54359

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit: ; preds = %bb.o, %bb.p
  %.pre131136 = phi i64 [ %i.bs, %bb.p ], [ %i.bj, %bb.o ]
  %.sink = phi i64 [ %i.bu, %bb.p ], [ %i.bk, %bb.o ], !dbg !54379 ; 3 uses
  %.sroa.0.0.i65 = phi ptr [ %i.bp, %bb.p ], [ %i.bi, %bb.o ], !dbg !54379 ; 8 uses
  store i64 %.sink, ptr %i.u, align 8, !dbg !54379, !alias.scope !54270, !noalias !54271
  %.not60 = icmp eq ptr %.sroa.0.0.i65, null, !dbg !54380 ; 2 uses
  br i1 %.not60, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit, label %bb.q, !dbg !54381

bb.q:                                             ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit
  %i.bv = ptrtoint ptr %.sroa.0.0.i65 to i64, !dbg !54382 ; 3 uses
  %i.bw = and i64 %i.bv, 3, !dbg !54383
  switch i64 %i.bw, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.r
    i64 0, label %.split100
    i64 1, label %.split99
  ], !dbg !54384, !prof !4782

default.unreachable:                              ; preds = %bb.q
  unreachable

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit: ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit, %bb.r, %.split, %.split99, %.split100
  %i.bx = ptrtoint ptr %.sroa.0.0.i65 to i64, !dbg !54385
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread, !dbg !54386

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexit_crit_edge, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit
  %.pre131 = phi i64 [ %.pre131.pre, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexit_crit_edge ], [ %.pre131136, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit ], !dbg !54386 ; 5 uses
  %.not6081.ph = phi i1 [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexit_crit_edge ], [ %.not60, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit ]
  %.sroa.0.0.i6579.ph = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexit_crit_edge ], [ %i.bx, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit ]
  %.pre132 = load i64, ptr %i.t, align 8, !dbg !54387 ; 2 uses
  %.pre133 = load i64, ptr %i.c, align 8, !dbg !54388 ; 2 uses
  %i.by = sub nuw i64 %.pre132, %.pre131, !dbg !54389
  %i.bz = icmp ne i64 %.pre132, %.sroa.0.0.i, !dbg !54390
  %i.ca = icmp sgt i64 %.pre133, -1, !dbg !54345
  call void @llvm.assume(i1 %i.ca), !dbg !54346
  %i.cb = add i64 %.pre133, %.pre131, !dbg !54391 ; 3 uses
  store i64 %i.cb, ptr %i.c, align 8, !dbg !54347
  br i1 %.not6081.ph, label %bb.y, label %.loopexit148, !dbg !54392

.split:                                           ; preds = %bb.q
  %.mask103 = and i64 %i.bv, -4294967296, !dbg !54393
  %i.cc = icmp eq i64 %.mask103, 17179869184, !dbg !54393
  br i1 %i.cc, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit, !dbg !54394

.split100:                                        ; preds = %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i65, i64 16, !dbg !54395
  %i.ce = load i8, ptr %i.cd, align 8, !dbg !54395, !range !4789, !noundef !4270
  %i.cf = icmp eq i8 %i.ce, 35, !dbg !54396
  br i1 %i.cf, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit, !dbg !54394

.split99:                                         ; preds = %bb.q
  %i.cg = getelementptr i8, ptr %.sroa.0.0.i65, i64 -1, !dbg !54397 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cg) ]
  %i.ch = getelementptr i8, ptr %.sroa.0.0.i65, i64 15, !dbg !54398
  %i.ci = load i8, ptr %i.ch, align 8, !dbg !54398, !range !4789, !noundef !4270
  %i.cj = icmp eq i8 %i.ci, 35, !dbg !54399
  br i1 %i.cj, label %bb.s, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit, !dbg !54394

bb.r:                                             ; preds = %bb.q
  %i.ck = icmp ult ptr %.sroa.0.0.i65, inttoptr (i64 180388626432 to ptr), !dbg !54400
  call void @llvm.assume(i1 %i.ck), !dbg !54401
  %.mask = and i64 %i.bv, -4294967296, !dbg !54402
  %i.cl = icmp eq i64 %.mask, 150323855360, !dbg !54402
  br i1 %i.cl, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit, !dbg !54394

bb.s:                                             ; preds = %.split99
  %.val.i.i.i.i.i = load ptr, ptr %i.cg, align 8, !dbg !54403 ; 5 uses
  %i.cm = getelementptr i8, ptr %.sroa.0.0.i65, i64 7, !dbg !54403
  %.val1.i.i.i.i.i = load ptr, ptr %i.cm, align 8, !dbg !54403, !nonnull !4270, !align !4488, !noundef !4270 ; 5 uses
  %i.cn = load ptr, ptr %.val1.i.i.i.i.i, align 8, !dbg !54404, !invariant.load !4270 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cn, null, !dbg !54404
  br i1 %.not.i.i.i.i.i.i.i, label %bb.u, label %bb.t, !dbg !54404

bb.t:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  invoke void %i.cn(ptr noundef nonnull %.val.i.i.i.i.i)
          to label %bb.u unwind label %bb.w, !dbg !54404

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.co = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !54405
  %i.cp = load i64, ptr %i.co, align 8, !dbg !54405, !range !4635, !invariant.load !4270 ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 0, !dbg !54406
  br i1 %i.cq, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i, label %bb.v, !dbg !54406

bb.v:                                             ; preds = %bb.u
  %i.cr = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16, !dbg !54405
  %i.cs = load i64, ptr %i.cr, align 8, !dbg !54407, !range !4615, !invariant.load !4270
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.cp, i64 noundef range(i64 1, 536870913) %i.cs) #53, !dbg !54408
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i, !dbg !54409

bb.w:                                             ; preds = %bb.t
  %i.ct = landingpad { ptr, i32 }
          cleanup
  %i.cu = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !54410
  %i.cv = load i64, ptr %i.cu, align 8, !dbg !54410, !range !4635, !invariant.load !4270 ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 0, !dbg !54411
  br i1 %i.cw, label %.body, label %bb.x, !dbg !54411

bb.x:                                             ; preds = %bb.w
  %i.cx = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16, !dbg !54410
  %i.cy = load i64, ptr %i.cx, align 8, !dbg !54412, !range !4615, !invariant.load !4270
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.cv, i64 noundef range(i64 1, 536870913) %i.cy) #53, !dbg !54413
  br label %.body, !dbg !54414

.body:                                            ; preds = %bb.x, %bb.w
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cg, i64 noundef 24, i64 noundef 8) #53, !dbg !54415
  resume { ptr, i32 } %i.ct, !dbg !54416

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i: ; preds = %bb.v, %bb.u
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cg, i64 noundef 24, i64 noundef 8) #53, !dbg !54417
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, !dbg !54418

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.r, %.split, %.split100, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i
  %i.cz = icmp eq i64 %.sink, 0, !dbg !54344
  br i1 %i.cz, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexit_crit_edge, label %bb.n, !dbg !54344

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexit_crit_edge: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit
  %.pre131.pre = load i64, ptr %i.s, align 8, !dbg !54386
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread, !dbg !54344

bb.y:                                             ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread
  %i.da = icmp eq i64 %.pre131, 0, !dbg !54348
  br i1 %i.da, label %.loopexit149, label %bb.z, !dbg !54348

.loopexit149:                                     ; preds = %bb.y, %.thread
  %i.db = phi i64 [ %i.ax, %.thread ], [ %i.cb, %bb.y ]
  %i.dc = sub nsw i64 %i.db, %i.d, !dbg !54419
  br label %.loopexit148, !dbg !54420

bb.z:                                             ; preds = %bb.y
  %i.dd = icmp ult i64 %.pre131, %.sroa.0.0.i, !dbg !54421
  %i.de = add i32 %.sroa.019.0, 1, !dbg !54421
  %.sroa.019.1 = select i1 %i.dd, i32 %i.de, i32 0, !dbg !54421 ; 2 uses
  br i1 %.sroa.013.1, label %bb.ab, label %bb.aa, !dbg !54422

.loopexit148:                                     ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread, %.loopexit149
  %.sroa.8.0 = phi i64 [ %i.dc, %.loopexit149 ], [ %.sroa.0.0.i6579.ph, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread ], !dbg !54423
  %.sroa.010.0 = phi i64 [ 0, %.loopexit149 ], [ 1, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread ], !dbg !54423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !54424
  br label %.loopexit, !dbg !54326

bb.aa:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.z
  %.sroa.050.4 = phi i64 [ -1, %bb.ad ], [ %i.di, %bb.ac ], [ %spec.select, %bb.ab ], [ %.sroa.050.3, %bb.z ], !dbg !54314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !54424
  br label %bb.f, !dbg !54310

bb.ab:                                            ; preds = %bb.z
  %i.df = icmp sgt i32 %.sroa.019.1, 1
  %or.cond7 = select i1 %i.bz, i1 %i.df, i1 false, !dbg !54425
  %spec.select = select i1 %or.cond7, i64 -1, i64 %.sroa.050.3, !dbg !54425 ; 4 uses
  %i.dg = icmp uge i64 %.sroa.0.0.i, %spec.select, !dbg !54426
  %i.dh = icmp eq i64 %.pre131, %.sroa.0.0.i
  %or.cond2 = and i1 %i.dh, %i.dg, !dbg !54426
  br i1 %or.cond2, label %bb.ac, label %bb.aa, !dbg !54426

bb.ac:                                            ; preds = %bb.ab
  %i.di = shl nuw i64 %spec.select, 1, !dbg !54427
  %i.dj = icmp slt i64 %spec.select, 0, !dbg !54427
  br i1 %i.dj, label %bb.ad, label %bb.aa, !dbg !54428, !prof !4282

bb.ad:                                            ; preds = %bb.ac
  br label %bb.aa, !dbg !54429

.loopexit:                                        ; preds = %bb.l, %bb.i, %bb.k, %.loopexit148
  %.sroa.8.1 = phi i64 [ %i.aq, %bb.i ], [ %i.at, %bb.k ], [ %.sroa.8.0, %.loopexit148 ], [ 163208757251, %bb.l ], !dbg !54430
  %.sroa.010.1 = phi i64 [ 1, %bb.i ], [ 0, %bb.k ], [ %.sroa.010.0, %.loopexit148 ], [ 1, %bb.l ], !dbg !54430
  %i.dk = inttoptr i64 %.sroa.8.1 to ptr, !dbg !54431
  br label %bb.ae, !dbg !54432

bb.ae:                                            ; preds = %bb.e, %bb.d, %.loopexit
  %.sroa.8.2 = phi ptr [ %i.dk, %.loopexit ], [ %i.aa, %bb.d ], [ null, %bb.e ], !dbg !54315
  %.sroa.010.2 = phi i64 [ %.sroa.010.1, %.loopexit ], [ 1, %bb.d ], [ 0, %bb.e ], !dbg !54315
  %i.dl = insertvalue { i64, ptr } poison, i64 %.sroa.010.2, 0, !dbg !54431
  %i.dm = insertvalue { i64, ptr } %i.dl, ptr %.sroa.8.2, 1, !dbg !54431
  ret { i64, ptr } %i.dm, !dbg !54431
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEECseeLknQCOKOd_13polars_python(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !54433 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !54618 ; 7 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !54618, !noundef !4270 ; 7 uses
  %i.c = icmp sgt i64 %i.b, -1, !dbg !54619
  tail call void @llvm.assume(i1 %i.c), !dbg !54620
  %i.d = load i64, ptr %1, align 8, !dbg !54621, !range !4635, !noundef !4270 ; 2 uses
  %i.e = trunc nuw i64 %2 to i1, !dbg !54622      ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c, !dbg !54622

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ugt i64 %3, -1025, !dbg !54623
  br i1 %i.f, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEE0CseeLknQCOKOd_13polars_python.exit.thread, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEE0CseeLknQCOKOd_13polars_python.exit, !dbg !54624, !prof !4282

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEE0CseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  %i.g = add nuw i64 %3, 1024, !dbg !54623        ; 3 uses
  %i.h = and i64 %i.g, 8191, !dbg !54625          ; 2 uses
  %i.i = icmp eq i64 %i.h, 0, !dbg !54626
  %i.j = sub i64 %3, %i.h, !dbg !54626
  %i.k = add i64 %i.j, 9216, !dbg !54626          ; 2 uses
  %.not86 = icmp ult i64 %i.k, %i.g, !dbg !54626
  %.sroa.5.1.i = select i1 %.not86, i64 8192, i64 %i.k, !dbg !54627
  %.sroa.050.1 = select i1 %i.i, i64 %i.g, i64 %.sroa.5.1.i, !dbg !54626 ; 2 uses
  %i.l = icmp eq i64 %3, 0
  br i1 %i.l, label %bb.c, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEE0CseeLknQCOKOd_13polars_python.exit.thread, !dbg !54628

bb.c:                                             ; preds = %bb.a, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEE0CseeLknQCOKOd_13polars_python.exit
  %.sroa.050.0 = phi i64 [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEE0CseeLknQCOKOd_13polars_python.exit ], [ 8192, %bb.a ], !dbg !54629 ; 2 uses
  %.sroa.013.0 = xor i1 %i.e, true, !dbg !54630   ; 2 uses
  %i.m = sub nsw i64 %i.d, %i.b, !dbg !54631
  %i.n = icmp ult i64 %i.m, 32, !dbg !54631
  br i1 %i.n, label %bb.d, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEE0CseeLknQCOKOd_13polars_python.exit.thread, !dbg !54631

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEE0CseeLknQCOKOd_13polars_python.exit.thread: ; preds = %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEE0CseeLknQCOKOd_13polars_python.exit
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge ], [ %i.b, %bb.c ], [ %i.b, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEE0CseeLknQCOKOd_13polars_python.exit ], [ %i.b, %bb.b ], !dbg !54632
  %.sroa.050.2 = phi i64 [ %.sroa.050.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge ], [ %.sroa.050.0, %bb.c ], [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEE0CseeLknQCOKOd_13polars_python.exit ], [ 8192, %bb.b ], !dbg !54633
  %.sroa.013.1 = phi i1 [ %.sroa.013.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge ], [ %.sroa.013.0, %bb.c ], [ false, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEE0CseeLknQCOKOd_13polars_python.exit ], [ false, %bb.b ], !dbg !54634
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %.outer, !dbg !54635

bb.d:                                             ; preds = %bb.c
  %i.q = tail call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !54569 ; 2 uses
  %i.r = extractvalue { i64, ptr } %i.q, 0, !dbg !54569
  %i.s = extractvalue { i64, ptr } %i.q, 1, !dbg !54569 ; 2 uses
  %i.t = trunc nuw i64 %i.r to i1, !dbg !54636
  br i1 %i.t, label %bb.y, label %bb.e, !dbg !54636

bb.e:                                             ; preds = %bb.d
  %i.u = icmp eq ptr %i.s, null, !dbg !54637
  br i1 %i.u, label %bb.y, label %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge, !dbg !54637

._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge: ; preds = %bb.e
  %.pre.pre = load i64, ptr %i.a, align 8, !dbg !54632
  br label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEE0CseeLknQCOKOd_13polars_python.exit.thread, !dbg !54637

bb.f:                                             ; preds = %.outer, %bb.u
  %i.v = phi i64 [ %i.bi, %bb.u ], [ %.ph, %.outer ], !dbg !54632 ; 3 uses
  %.sroa.048.2 = phi i64 [ %i.bk, %bb.u ], [ %.sroa.048.2.ph, %.outer ], !dbg !54638 ; 4 uses
  %.sroa.019.0 = phi i32 [ %.sroa.019.1, %bb.u ], [ %.sroa.019.0.ph, %.outer ], !dbg !54639
  %i.w = icmp sgt i64 %i.v, -1, !dbg !54640
  tail call void @llvm.assume(i1 %i.w), !dbg !54641
  %i.x = load i64, ptr %1, align 8, !dbg !54642, !range !4635, !noundef !4270 ; 3 uses
  %i.y = icmp eq i64 %i.v, %i.x, !dbg !54643
  %i.z = icmp eq i64 %i.x, %i.d
  %or.cond62 = and i1 %i.y, %i.z, !dbg !54643
  br i1 %or.cond62, label %bb.h, label %bb.g, !dbg !54643

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.aa = phi i64 [ %.pre92, %._crit_edge ], [ %i.x, %bb.f ], !dbg !54644 ; 3 uses
  %i.ab = phi i64 [ %.pre91, %._crit_edge ], [ %i.v, %bb.f ], !dbg !54645 ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, -1, !dbg !54646
  tail call void @llvm.assume(i1 %i.ac), !dbg !54647
  %i.ad = icmp eq i64 %i.ab, %i.aa, !dbg !54648
  br i1 %i.ad, label %bb.l, label %bb.m, !dbg !54648

bb.h:                                             ; preds = %bb.f
  %i.ae = tail call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !54581 ; 2 uses
  %i.af = extractvalue { i64, ptr } %i.ae, 0, !dbg !54581
  %i.ag = extractvalue { i64, ptr } %i.ae, 1, !dbg !54581 ; 2 uses
  %i.ah = trunc nuw i64 %i.af to i1, !dbg !54649
  br i1 %i.ah, label %bb.i, label %bb.j, !dbg !54649

bb.i:                                             ; preds = %bb.h
  %i.ai = ptrtoint ptr %i.ag to i64, !dbg !54581
  br label %.loopexit, !dbg !54650

bb.j:                                             ; preds = %bb.h
  %i.aj = icmp eq ptr %i.ag, null, !dbg !54651
  %.pre91 = load i64, ptr %i.a, align 8, !dbg !54645 ; 3 uses
  br i1 %i.aj, label %bb.k, label %._crit_edge, !dbg !54651

._crit_edge:                                      ; preds = %bb.j
  %.pre92 = load i64, ptr %1, align 8, !dbg !54644, !range !4635
  br label %bb.g, !dbg !54651

bb.k:                                             ; preds = %bb.j
  %i.ak = icmp sgt i64 %.pre91, -1, !dbg !54652
  tail call void @llvm.assume(i1 %i.ak), !dbg !54653
  %i.al = sub nsw i64 %.pre91, %i.b, !dbg !54654
  br label %.loopexit, !dbg !54655

bb.l:                                             ; preds = %bb.g
  %i.am = tail call { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.aa, i64 noundef 32, i64 noundef 1, i64 noundef 1), !dbg !54656
  %i.an = extractvalue { i64, i64 } %i.am, 0, !dbg !54656
  %.not = icmp eq i64 %i.an, -9223372036854775807, !dbg !54657
  br i1 %.not, label %._crit_edge93, label %.loopexit, !dbg !54658

._crit_edge93:                                    ; preds = %bb.l
  %.pre94 = load i64, ptr %i.a, align 8, !dbg !54659
  %.pre95 = load i64, ptr %1, align 8, !dbg !54660, !range !4635
  br label %bb.m, !dbg !54658

bb.m:                                             ; preds = %._crit_edge93, %bb.g
  %i.ao = phi i64 [ %.pre95, %._crit_edge93 ], [ %i.aa, %bb.g ], !dbg !54660
  %i.ap = phi i64 [ %.pre94, %._crit_edge93 ], [ %i.ab, %bb.g ], !dbg !54659 ; 5 uses
  %i.aq = load ptr, ptr %i.o, align 8, !dbg !54661, !nonnull !4270, !noundef !4270
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap, !dbg !54662 ; 4 uses
  %i.as = sub i64 %i.ao, %i.ap, !dbg !54663
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.050.3.ph, i64 %i.as), !dbg !54664 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54598), !dbg !54665
  %i.at = load i64, ptr %i.p, align 8, !dbg !54666, !alias.scope !54598, !noalias !54599, !noundef !4270 ; 8 uses
  %i.au = icmp eq i64 %i.at, 0, !dbg !54666
  br i1 %i.au, label %.thread, label %bb.n, !dbg !54666

.thread:                                          ; preds = %bb.m
  %i.av = icmp sgt i64 %i.ap, -1, !dbg !54667
  tail call void @llvm.assume(i1 %i.av), !dbg !54668
  store i64 %i.ap, ptr %i.a, align 8, !dbg !54669
  br label %.loopexit105, !dbg !54670

bb.n:                                             ; preds = %bb.m
  %i.aw = icmp ult i64 %i.at, %.sroa.0.0.i, !dbg !54671
  br i1 %i.aw, label %bb.q, label %bb.o, !dbg !54671

bb.o:                                             ; preds = %bb.n
  %.val4.i = load ptr, ptr %0, align 8, !dbg !54672, !alias.scope !54598, !noalias !54599, !nonnull !4270, !align !4488, !noundef !4270
  %.val.i.i = load ptr, ptr %.val4.i, align 8, !dbg !54673, !noalias !54602, !nonnull !4270, !align !4488, !noundef !4270
  %i.ax = sub nuw i64 %.sroa.0.0.i, %.sroa.048.2, !dbg !54674
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.048.2, !dbg !54675
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ay, i8 0, i64 %i.ax, i1 false), !dbg !54676, !noalias !54603
  %i.az = tail call { i64, ptr } @_RNvXs_NtCs2mZqlW55729_12polars_utils20chunked_bytes_cursorINtB4_27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCsh8eZTKRCwoO_3std2io4Read4readCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val.i.i, ptr noalias noundef nonnull %i.ar, i64 noundef range(i64 0, -9223372036854775808) %.sroa.0.0.i), !dbg !54677, !noalias !54604
  %i.ba = extractvalue { i64, ptr } %i.az, 1, !dbg !54678
  %i.bb = ptrtoint ptr %i.ba to i64, !dbg !54678  ; 2 uses
  %.not.i.i.i.i.i = icmp ult i64 %.sroa.0.0.i, %i.bb, !dbg !54679
  br i1 %.not.i.i.i.i.i, label %bb.p, label %bb.t, !dbg !54679, !prof !4282

bb.p:                                             ; preds = %bb.o
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #55, !dbg !54680, !noalias !54605
  unreachable, !dbg !54680

bb.q:                                             ; preds = %bb.n
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.048.2, i64 %i.at), !dbg !54681 ; 2 uses
  %.val3.i = load ptr, ptr %0, align 8, !dbg !54682, !alias.scope !54598, !noalias !54599, !nonnull !4270, !align !4488, !noundef !4270
  %.val.i6.i = load ptr, ptr %.val3.i, align 8, !dbg !54683, !noalias !54606, !nonnull !4270, !align !4488, !noundef !4270
  %i.bc = sub nuw i64 %i.at, %.sroa.0.0.i.i, !dbg !54684
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.0.0.i.i, !dbg !54685
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bd, i8 0, i64 %i.bc, i1 false), !dbg !54686, !noalias !54607
  %i.be = tail call { i64, ptr } @_RNvXs_NtCs2mZqlW55729_12polars_utils20chunked_bytes_cursorINtB4_27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCsh8eZTKRCwoO_3std2io4Read4readCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val.i6.i, ptr noalias noundef nonnull %i.ar, i64 noundef range(i64 0, -9223372036854775808) %i.at), !dbg !54687, !noalias !54608
  %i.bf = extractvalue { i64, ptr } %i.be, 1, !dbg !54688
  %i.bg = ptrtoint ptr %i.bf to i64, !dbg !54688  ; 3 uses
  %.not.i.i.i.i7.i = icmp ult i64 %i.at, %i.bg, !dbg !54689
  br i1 %.not.i.i.i.i7.i, label %bb.r, label %bb.s, !dbg !54689, !prof !4282

bb.r:                                             ; preds = %bb.q
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #55, !dbg !54690, !noalias !54609
  unreachable, !dbg !54690

bb.s:                                             ; preds = %bb.q
  %.sroa.0.0.i9.i = tail call noundef i64 @llvm.umax.i64(i64 %i.bg, i64 %.sroa.048.2), !dbg !54691
  %.sroa.0.0.i10.i = tail call noundef i64 @llvm.umax.i64(i64 %i.at, i64 %.sroa.0.0.i9.i), !dbg !54692
  br label %bb.t, !dbg !54693

bb.t:                                             ; preds = %bb.s, %bb.o
  %.sroa.13.1 = phi i64 [ %.sroa.0.0.i10.i, %bb.s ], [ %.sroa.0.0.i, %bb.o ], !dbg !54694 ; 2 uses
  %.sroa.8.181 = phi i64 [ %i.bg, %bb.s ], [ %i.bb, %bb.o ], !dbg !54694 ; 6 uses
  %.sink.i = sub nuw i64 %i.at, %.sroa.8.181, !dbg !54694
  store i64 %.sink.i, ptr %i.p, align 8, !dbg !54694, !alias.scope !54598, !noalias !54599
  %.pre96 = load i64, ptr %i.a, align 8, !dbg !54695 ; 2 uses
  %i.bh = icmp sgt i64 %.pre96, -1, !dbg !54667
  tail call void @llvm.assume(i1 %i.bh), !dbg !54668
  %i.bi = add i64 %.pre96, %.sroa.8.181, !dbg !54696 ; 4 uses
  store i64 %i.bi, ptr %i.a, align 8, !dbg !54669
  %i.bj = icmp eq i64 %.sroa.8.181, 0, !dbg !54670
  br i1 %i.bj, label %.loopexit105, label %bb.u, !dbg !54670

bb.u:                                             ; preds = %bb.t
  %i.bk = sub nuw i64 %.sroa.13.1, %.sroa.8.181, !dbg !54697 ; 2 uses
  %i.bl = icmp ult i64 %.sroa.8.181, %.sroa.0.0.i, !dbg !54698
  %i.bm = add i32 %.sroa.019.0, 1, !dbg !54698
  %.sroa.019.1 = select i1 %i.bl, i32 %i.bm, i32 0, !dbg !54698 ; 3 uses
  br i1 %.sroa.013.1, label %bb.v, label %bb.f, !dbg !54699

.loopexit105:                                     ; preds = %bb.t, %.thread
  %i.bn = phi i64 [ %i.ap, %.thread ], [ %i.bi, %bb.t ]
  %i.bo = sub nsw i64 %i.bn, %i.b, !dbg !54700
  br label %.loopexit, !dbg !54650

bb.v:                                             ; preds = %bb.u
  %i.bp = icmp ne i64 %.sroa.13.1, %.sroa.0.0.i, !dbg !54701
  %i.bq = icmp sgt i32 %.sroa.019.1, 1
  %or.cond7 = select i1 %i.bp, i1 %i.bq, i1 false, !dbg !54702
  %spec.select = select i1 %or.cond7, i64 -1, i64 %.sroa.050.3.ph, !dbg !54702 ; 4 uses
  %i.br = icmp uge i64 %.sroa.0.0.i, %spec.select, !dbg !54703
  %i.bs = icmp eq i64 %.sroa.8.181, %.sroa.0.0.i
  %or.cond2 = and i1 %i.bs, %i.br, !dbg !54703
  br i1 %or.cond2, label %bb.w, label %.outer.backedge, !dbg !54703

bb.w:                                             ; preds = %bb.v
  %i.bt = shl nuw i64 %spec.select, 1, !dbg !54704
  %i.bu = icmp slt i64 %spec.select, 0, !dbg !54704
  br i1 %i.bu, label %bb.x, label %.outer.backedge, !dbg !54705, !prof !4282

.outer:                                           ; preds = %.outer.backedge, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEE0CseeLknQCOKOd_13polars_python.exit.thread
  %.ph = phi i64 [ %.pre, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEE0CseeLknQCOKOd_13polars_python.exit.thread ], [ %i.bi, %.outer.backedge ]
  %.sroa.048.2.ph = phi i64 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEE0CseeLknQCOKOd_13polars_python.exit.thread ], [ %i.bk, %.outer.backedge ]
  %.sroa.050.3.ph = phi i64 [ %.sroa.050.2, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEE0CseeLknQCOKOd_13polars_python.exit.thread ], [ %.sroa.050.3.ph.be, %.outer.backedge ] ; 2 uses
  %.sroa.019.0.ph = phi i32 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEE0CseeLknQCOKOd_13polars_python.exit.thread ], [ %.sroa.019.1, %.outer.backedge ]
  br label %bb.f, !dbg !54643

bb.x:                                             ; preds = %bb.w
  br label %.outer.backedge, !dbg !54706

.outer.backedge:                                  ; preds = %bb.x, %bb.w, %bb.v
  %.sroa.050.3.ph.be = phi i64 [ %spec.select, %bb.v ], [ %i.bt, %bb.w ], [ -1, %bb.x ]
  br label %.outer, !dbg !54643

.loopexit:                                        ; preds = %bb.l, %bb.i, %bb.k, %.loopexit105
  %.sroa.8.1 = phi i64 [ %i.ai, %bb.i ], [ %i.al, %bb.k ], [ %i.bo, %.loopexit105 ], [ 163208757251, %bb.l ], !dbg !54707
  %.sroa.010.1 = phi i64 [ 1, %bb.i ], [ 0, %bb.k ], [ 0, %.loopexit105 ], [ 1, %bb.l ], !dbg !54707
  %i.bv = inttoptr i64 %.sroa.8.1 to ptr, !dbg !54708
  br label %bb.y, !dbg !54709

bb.y:                                             ; preds = %bb.e, %bb.d, %.loopexit
  %.sroa.8.2 = phi ptr [ %i.bv, %.loopexit ], [ %i.s, %bb.d ], [ null, %bb.e ], !dbg !54639
  %.sroa.010.2 = phi i64 [ %.sroa.010.1, %.loopexit ], [ 1, %bb.d ], [ 0, %bb.e ], !dbg !54639
  %i.bw = insertvalue { i64, ptr } poison, i64 %.sroa.010.2, 0, !dbg !54708
  %i.bx = insertvalue { i64, ptr } %i.bw, ptr %.sroa.8.2, 1, !dbg !54708
  ret { i64, ptr } %i.bx, !dbg !54708
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEECseeLknQCOKOd_13polars_python(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !54710 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !54959 ; 7 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !54959, !noundef !4270 ; 7 uses
  %i.e = icmp sgt i64 %i.d, -1, !dbg !54960
  tail call void @llvm.assume(i1 %i.e), !dbg !54961
  %i.f = load i64, ptr %1, align 8, !dbg !54962, !range !4635, !noundef !4270 ; 2 uses
  %i.g = trunc nuw i64 %2 to i1, !dbg !54963      ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !54963

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %3, -1025, !dbg !54964
  br i1 %i.h, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEE0CseeLknQCOKOd_13polars_python.exit.thread, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEE0CseeLknQCOKOd_13polars_python.exit, !dbg !54965, !prof !4282

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEE0CseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  %i.i = add nuw i64 %3, 1024, !dbg !54964        ; 3 uses
  %i.j = and i64 %i.i, 8191, !dbg !54966          ; 2 uses
  %i.k = icmp eq i64 %i.j, 0, !dbg !54967
  %i.l = sub i64 %3, %i.j, !dbg !54967
  %i.m = add i64 %i.l, 9216, !dbg !54967          ; 2 uses
  %.not102 = icmp ult i64 %i.m, %i.i, !dbg !54967
  %.sroa.5.1.i = select i1 %.not102, i64 8192, i64 %i.m, !dbg !54968
  %.sroa.050.1 = select i1 %i.k, i64 %i.i, i64 %.sroa.5.1.i, !dbg !54967 ; 2 uses
  %i.n = icmp eq i64 %3, 0
  br i1 %i.n, label %bb.c, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEE0CseeLknQCOKOd_13polars_python.exit.thread, !dbg !54969

bb.c:                                             ; preds = %bb.a, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEE0CseeLknQCOKOd_13polars_python.exit
  %.sroa.050.0 = phi i64 [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEE0CseeLknQCOKOd_13polars_python.exit ], [ 8192, %bb.a ], !dbg !54970 ; 2 uses
  %.sroa.013.0 = xor i1 %i.g, true, !dbg !54971   ; 2 uses
  %i.o = sub nsw i64 %i.f, %i.d, !dbg !54972
  %i.p = icmp ult i64 %i.o, 32, !dbg !54972
  br i1 %i.p, label %bb.d, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEE0CseeLknQCOKOd_13polars_python.exit.thread, !dbg !54972

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEE0CseeLknQCOKOd_13polars_python.exit.thread: ; preds = %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEE0CseeLknQCOKOd_13polars_python.exit
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge ], [ %i.d, %bb.c ], [ %i.d, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEE0CseeLknQCOKOd_13polars_python.exit ], [ %i.d, %bb.b ], !dbg !54973
  %.sroa.050.2 = phi i64 [ %.sroa.050.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge ], [ %.sroa.050.0, %bb.c ], [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEE0CseeLknQCOKOd_13polars_python.exit ], [ 8192, %bb.b ], !dbg !54974
  %.sroa.013.1 = phi i1 [ %.sroa.013.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge ], [ %.sroa.013.0, %bb.c ], [ false, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEE0CseeLknQCOKOd_13polars_python.exit ], [ false, %bb.b ], !dbg !54975
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br label %bb.f, !dbg !54976

bb.d:                                             ; preds = %bb.c
  %i.y = tail call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !54895 ; 2 uses
  %i.z = extractvalue { i64, ptr } %i.y, 0, !dbg !54895
  %i.aa = extractvalue { i64, ptr } %i.y, 1, !dbg !54895 ; 2 uses
  %i.ab = trunc nuw i64 %i.z to i1, !dbg !54977
  br i1 %i.ab, label %bb.ae, label %bb.e, !dbg !54977

bb.e:                                             ; preds = %bb.d
  %i.ac = icmp eq ptr %i.aa, null, !dbg !54978
  br i1 %i.ac, label %bb.ae, label %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge, !dbg !54978

._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEE0CseeLknQCOKOd_13polars_python.exit.thread_crit_edge: ; preds = %bb.e
  %.pre.pre = load i64, ptr %i.c, align 8, !dbg !54973
  br label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEE0CseeLknQCOKOd_13polars_python.exit.thread, !dbg !54978

bb.f:                                             ; preds = %bb.aa, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEE0CseeLknQCOKOd_13polars_python.exit.thread
  %i.ad = phi i64 [ %.pre, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEE0CseeLknQCOKOd_13polars_python.exit.thread ], [ %i.cl, %bb.aa ], !dbg !54973 ; 3 uses
  %.sroa.048.2 = phi i64 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEE0CseeLknQCOKOd_13polars_python.exit.thread ], [ %i.ci, %bb.aa ], !dbg !54979
  %.sroa.050.3 = phi i64 [ %.sroa.050.2, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEE0CseeLknQCOKOd_13polars_python.exit.thread ], [ %.sroa.050.4, %bb.aa ], !dbg !54980 ; 3 uses
  %.sroa.019.0 = phi i32 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEE0CseeLknQCOKOd_13polars_python.exit.thread ], [ %.sroa.019.1, %bb.aa ], !dbg !54981
  %i.ae = icmp sgt i64 %i.ad, -1, !dbg !54982
  call void @llvm.assume(i1 %i.ae), !dbg !54983
  %i.af = load i64, ptr %1, align 8, !dbg !54984, !range !4635, !noundef !4270 ; 3 uses
  %i.ag = icmp eq i64 %i.ad, %i.af, !dbg !54985
  %i.ah = icmp eq i64 %i.af, %i.f
  %or.cond62 = and i1 %i.ag, %i.ah, !dbg !54985
  br i1 %or.cond62, label %bb.h, label %bb.g, !dbg !54985

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.ai = phi i64 [ %.pre127, %._crit_edge ], [ %i.af, %bb.f ], !dbg !54986 ; 3 uses
  %i.aj = phi i64 [ %.pre126, %._crit_edge ], [ %i.ad, %bb.f ], !dbg !54987 ; 3 uses
  %i.ak = icmp sgt i64 %i.aj, -1, !dbg !54988
  call void @llvm.assume(i1 %i.ak), !dbg !54989
  %i.al = icmp eq i64 %i.aj, %i.ai, !dbg !54990
  br i1 %i.al, label %bb.l, label %bb.m, !dbg !54990

bb.h:                                             ; preds = %bb.f
  %i.am = call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !54907 ; 2 uses
  %i.an = extractvalue { i64, ptr } %i.am, 0, !dbg !54907
  %i.ao = extractvalue { i64, ptr } %i.am, 1, !dbg !54907 ; 2 uses
  %i.ap = trunc nuw i64 %i.an to i1, !dbg !54991
  br i1 %i.ap, label %bb.i, label %bb.j, !dbg !54991

bb.i:                                             ; preds = %bb.h
  %i.aq = ptrtoint ptr %i.ao to i64, !dbg !54907
  br label %.loopexit, !dbg !54992

bb.j:                                             ; preds = %bb.h
  %i.ar = icmp eq ptr %i.ao, null, !dbg !54993
  %.pre126 = load i64, ptr %i.c, align 8, !dbg !54987 ; 3 uses
  br i1 %i.ar, label %bb.k, label %._crit_edge, !dbg !54993

._crit_edge:                                      ; preds = %bb.j
  %.pre127 = load i64, ptr %1, align 8, !dbg !54986, !range !4635
  br label %bb.g, !dbg !54993

bb.k:                                             ; preds = %bb.j
  %i.as = icmp sgt i64 %.pre126, -1, !dbg !54994
  call void @llvm.assume(i1 %i.as), !dbg !54995
  %i.at = sub nsw i64 %.pre126, %i.d, !dbg !54996
  br label %.loopexit, !dbg !54997

bb.l:                                             ; preds = %bb.g
  %i.au = call { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.ai, i64 noundef 32, i64 noundef 1, i64 noundef 1), !dbg !54998
  %i.av = extractvalue { i64, i64 } %i.au, 0, !dbg !54998
  %.not = icmp eq i64 %i.av, -9223372036854775807, !dbg !54999
  br i1 %.not, label %._crit_edge128, label %.loopexit, !dbg !55000

._crit_edge128:                                   ; preds = %bb.l
  %.pre129 = load i64, ptr %i.c, align 8, !dbg !55001
  %.pre130 = load i64, ptr %1, align 8, !dbg !55002, !range !4635
  br label %bb.m, !dbg !55000

bb.m:                                             ; preds = %._crit_edge128, %bb.g
  %i.aw = phi i64 [ %.pre130, %._crit_edge128 ], [ %i.ai, %bb.g ], !dbg !55002
  %i.ax = phi i64 [ %.pre129, %._crit_edge128 ], [ %i.aj, %bb.g ], !dbg !55001 ; 5 uses
  %i.ay = load ptr, ptr %i.q, align 8, !dbg !55003, !nonnull !4270, !noundef !4270
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax, !dbg !55004
  %i.ba = sub i64 %i.aw, %i.ax, !dbg !55005
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.050.3, i64 %i.ba), !dbg !55006 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !55007
  store ptr %i.az, ptr %i.b, align 8, !dbg !55008
  store i64 %.sroa.0.0.i, ptr %i.r, align 8, !dbg !55008
  store i64 0, ptr %i.s, align 8, !dbg !55008
  store i64 %.sroa.048.2, ptr %i.t, align 8, !dbg !55009
  %.promoted = load i64, ptr %i.u, align 8, !alias.scope !54928, !noalias !54929 ; 2 uses
  %i.bb = icmp eq i64 %.promoted, 0, !dbg !55010
  br i1 %i.bb, label %.thread, label %.lr.ph, !dbg !55010

.thread:                                          ; preds = %bb.m
  %i.bc = icmp sgt i64 %i.ax, -1, !dbg !55011
  call void @llvm.assume(i1 %i.bc), !dbg !55012
  store i64 %i.ax, ptr %i.c, align 8, !dbg !55013
  br label %.loopexit149, !dbg !55014

.lr.ph:                                           ; preds = %bb.m
  %.val4.i = load ptr, ptr %0, align 8, !nonnull !4270, !align !4488 ; 2 uses
  br label %bb.n, !dbg !55010

bb.n:                                             ; preds = %.lr.ph, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit
  %i.bd = phi i64 [ %.promoted, %.lr.ph ], [ %.sink, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !54928), !dbg !55015
  call void @llvm.experimental.noalias.scope.decl(metadata !54929), !dbg !55015
  %i.be = load i64, ptr %i.r, align 8, !dbg !55016, !alias.scope !54929, !noalias !54928, !noundef !4270
  %i.bf = load i64, ptr %i.s, align 8, !dbg !55017, !alias.scope !54929, !noalias !54928, !noundef !4270 ; 6 uses
  %i.bg = sub i64 %i.be, %i.bf, !dbg !55018
  %i.bh = icmp ult i64 %i.bd, %i.bg, !dbg !55019
  br i1 %i.bh, label %bb.p, label %bb.o, !dbg !55019

bb.o:                                             ; preds = %bb.n
  %.val.i.i = load ptr, ptr %.val4.i, align 8, !dbg !55020, !noalias !54932, !nonnull !4270, !align !4488, !noundef !4270 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !54933), !dbg !55021
  %i.bi = load ptr, ptr %.val.i.i, align 8, !dbg !55022, !alias.scope !54933, !noalias !54934, !nonnull !4270, !noundef !4270
  %i.bj = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8, !dbg !55022
  %i.bk = load ptr, ptr %i.bj, align 8, !dbg !55022, !alias.scope !54933, !noalias !54934, !nonnull !4270, !align !4488, !noundef !4270
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 72, !dbg !55022
  %i.bm = load ptr, ptr %i.bl, align 8, !dbg !55022, !invariant.load !4270, !noalias !54935, !nonnull !4270
  %i.bn = call noundef ptr %i.bm(ptr noundef nonnull %i.bi, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b) #56, !dbg !55023, !noalias !54936, !inline_history !54785
  %i.bo = load i64, ptr %i.s, align 8, !dbg !55024, !alias.scope !54929, !noalias !54928, !noundef !4270 ; 2 uses
  %.neg.i = add i64 %i.bf, %i.bd, !dbg !55025
  %i.bp = sub i64 %.neg.i, %i.bo, !dbg !55026
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit, !dbg !55027

bb.p:                                             ; preds = %bb.n
  %i.bq = load i64, ptr %i.t, align 8, !dbg !55028, !alias.scope !54929, !noalias !54928, !noundef !4270 ; 2 uses
  %i.br = sub nuw i64 %i.bq, %i.bf, !dbg !55029
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.br, i64 %i.bd), !dbg !55030
  %i.bs = load ptr, ptr %i.b, align 8, !dbg !55031, !alias.scope !54929, !noalias !54928, !nonnull !4270, !noundef !4270
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bf, !dbg !55032
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !55033, !noalias !54937
  store ptr %i.bt, ptr %i.a, align 8, !dbg !55034, !noalias !54937
  store i64 %i.bd, ptr %i.v, align 8, !dbg !55034, !noalias !54937
  store i64 0, ptr %i.w, align 8, !dbg !55034, !noalias !54937
  store i64 %.sroa.0.0.i.i, ptr %i.x, align 8, !dbg !55035, !noalias !54937
  %.val.i6.i = load ptr, ptr %.val4.i, align 8, !dbg !55036, !noalias !54938, !nonnull !4270, !align !4488, !noundef !4270 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !54939), !dbg !55037
  %i.bu = load ptr, ptr %.val.i6.i, align 8, !dbg !55038, !alias.scope !54939, !noalias !54940, !nonnull !4270, !noundef !4270
  %i.bv = getelementptr inbounds nuw i8, ptr %.val.i6.i, i64 8, !dbg !55038
  %i.bw = load ptr, ptr %i.bv, align 8, !dbg !55038, !alias.scope !54939, !noalias !54940, !nonnull !4270, !align !4488, !noundef !4270
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 72, !dbg !55038
  %i.by = load ptr, ptr %i.bx, align 8, !dbg !55038, !invariant.load !4270, !noalias !54941, !nonnull !4270
  %i.bz = call noundef ptr %i.by(ptr noundef nonnull %i.bu, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a) #56, !dbg !55039, !noalias !54942, !inline_history !54785
  %i.ca = load i64, ptr %i.w, align 8, !dbg !55040, !noalias !54937, !noundef !4270 ; 2 uses
  %i.cb = load i64, ptr %i.x, align 8, !dbg !55041, !noalias !54937, !noundef !4270
  %i.cc = add i64 %i.ca, %i.bf, !dbg !55042       ; 3 uses
  store i64 %i.cc, ptr %i.s, align 8, !dbg !55042, !alias.scope !54929, !noalias !54928
  %.sroa.0.0.i7.i = call noundef i64 @llvm.umax.i64(i64 %i.cc, i64 %i.bq), !dbg !55043
  %i.cd = add i64 %i.cb, %i.bf, !dbg !55044
  %.sroa.0.0.i8.i = call noundef i64 @llvm.umax.i64(i64 %i.cd, i64 %.sroa.0.0.i7.i), !dbg !55045
  store i64 %.sroa.0.0.i8.i, ptr %i.t, align 8, !dbg !55046, !alias.scope !54929, !noalias !54928
  %i.ce = sub i64 %i.bd, %i.ca, !dbg !55047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !55048, !noalias !54937
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit, !dbg !55027

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit: ; preds = %bb.o, %bb.p
  %.pre131136 = phi i64 [ %i.cc, %bb.p ], [ %i.bo, %bb.o ]
  %.sink = phi i64 [ %i.ce, %bb.p ], [ %i.bp, %bb.o ], !dbg !55049 ; 3 uses
  %.sroa.0.0.i65 = phi ptr [ %i.bz, %bb.p ], [ %i.bn, %bb.o ], !dbg !55049 ; 8 uses
  store i64 %.sink, ptr %i.u, align 8, !dbg !55049, !alias.scope !54928, !noalias !54929
  %.not60 = icmp eq ptr %.sroa.0.0.i65, null, !dbg !55050 ; 2 uses
  br i1 %.not60, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit, label %bb.q, !dbg !55051

bb.q:                                             ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit
  %i.cf = ptrtoint ptr %.sroa.0.0.i65 to i64, !dbg !55052 ; 3 uses
  %i.cg = and i64 %i.cf, 3, !dbg !55053
  switch i64 %i.cg, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.r
    i64 0, label %.split100
    i64 1, label %.split99
  ], !dbg !55054, !prof !4782

default.unreachable:                              ; preds = %bb.q
  unreachable

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit: ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit, %bb.r, %.split, %.split99, %.split100
  %i.ch = ptrtoint ptr %.sroa.0.0.i65 to i64, !dbg !55055
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread, !dbg !55056

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexit_crit_edge, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit
  %.pre131 = phi i64 [ %.pre131.pre, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexit_crit_edge ], [ %.pre131136, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit ], !dbg !55056 ; 5 uses
  %.not6081.ph = phi i1 [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexit_crit_edge ], [ %.not60, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit ]
  %.sroa.0.0.i6579.ph = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexit_crit_edge ], [ %i.ch, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit ]
  %.pre132 = load i64, ptr %i.t, align 8, !dbg !55057 ; 2 uses
  %.pre133 = load i64, ptr %i.c, align 8, !dbg !55058 ; 2 uses
  %i.ci = sub nuw i64 %.pre132, %.pre131, !dbg !55059
  %i.cj = icmp ne i64 %.pre132, %.sroa.0.0.i, !dbg !55060
  %i.ck = icmp sgt i64 %.pre133, -1, !dbg !55011
  call void @llvm.assume(i1 %i.ck), !dbg !55012
  %i.cl = add i64 %.pre133, %.pre131, !dbg !55061 ; 3 uses
  store i64 %i.cl, ptr %i.c, align 8, !dbg !55013
  br i1 %.not6081.ph, label %bb.y, label %.loopexit148, !dbg !55062

.split:                                           ; preds = %bb.q
  %.mask103 = and i64 %i.cf, -4294967296, !dbg !55063
  %i.cm = icmp eq i64 %.mask103, 17179869184, !dbg !55063
  br i1 %i.cm, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit, !dbg !55064

.split100:                                        ; preds = %bb.q
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i65, i64 16, !dbg !55065
  %i.co = load i8, ptr %i.cn, align 8, !dbg !55065, !range !4789, !noundef !4270
  %i.cp = icmp eq i8 %i.co, 35, !dbg !55066
  br i1 %i.cp, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit, !dbg !55064

.split99:                                         ; preds = %bb.q
  %i.cq = getelementptr i8, ptr %.sroa.0.0.i65, i64 -1, !dbg !55067 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cq) ]
  %i.cr = getelementptr i8, ptr %.sroa.0.0.i65, i64 15, !dbg !55068
  %i.cs = load i8, ptr %i.cr, align 8, !dbg !55068, !range !4789, !noundef !4270
  %i.ct = icmp eq i8 %i.cs, 35, !dbg !55069
  br i1 %i.ct, label %bb.s, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit, !dbg !55064

bb.r:                                             ; preds = %bb.q
  %i.cu = icmp ult ptr %.sroa.0.0.i65, inttoptr (i64 180388626432 to ptr), !dbg !55070
  call void @llvm.assume(i1 %i.cu), !dbg !55071
  %.mask = and i64 %i.cf, -4294967296, !dbg !55072
  %i.cv = icmp eq i64 %.mask, 150323855360, !dbg !55072
  br i1 %i.cv, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexitsplit, !dbg !55064

bb.s:                                             ; preds = %.split99
  %.val.i.i.i.i.i = load ptr, ptr %i.cq, align 8, !dbg !55073 ; 5 uses
  %i.cw = getelementptr i8, ptr %.sroa.0.0.i65, i64 7, !dbg !55073
  %.val1.i.i.i.i.i = load ptr, ptr %i.cw, align 8, !dbg !55073, !nonnull !4270, !align !4488, !noundef !4270 ; 5 uses
  %i.cx = load ptr, ptr %.val1.i.i.i.i.i, align 8, !dbg !55074, !invariant.load !4270 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cx, null, !dbg !55074
  br i1 %.not.i.i.i.i.i.i.i, label %bb.u, label %bb.t, !dbg !55074

bb.t:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  invoke void %i.cx(ptr noundef nonnull %.val.i.i.i.i.i)
          to label %bb.u unwind label %bb.w, !dbg !55074

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cy = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !55075
  %i.cz = load i64, ptr %i.cy, align 8, !dbg !55075, !range !4635, !invariant.load !4270 ; 2 uses
  %i.da = icmp eq i64 %i.cz, 0, !dbg !55076
  br i1 %i.da, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i, label %bb.v, !dbg !55076

bb.v:                                             ; preds = %bb.u
  %i.db = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16, !dbg !55075
  %i.dc = load i64, ptr %i.db, align 8, !dbg !55077, !range !4615, !invariant.load !4270
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.cz, i64 noundef range(i64 1, 536870913) %i.dc) #53, !dbg !55078
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i, !dbg !55079

bb.w:                                             ; preds = %bb.t
  %i.dd = landingpad { ptr, i32 }
          cleanup
  %i.de = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !55080
  %i.df = load i64, ptr %i.de, align 8, !dbg !55080, !range !4635, !invariant.load !4270 ; 2 uses
  %i.dg = icmp eq i64 %i.df, 0, !dbg !55081
  br i1 %i.dg, label %.body, label %bb.x, !dbg !55081

bb.x:                                             ; preds = %bb.w
  %i.dh = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16, !dbg !55080
  %i.di = load i64, ptr %i.dh, align 8, !dbg !55082, !range !4615, !invariant.load !4270
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.df, i64 noundef range(i64 1, 536870913) %i.di) #53, !dbg !55083
  br label %.body, !dbg !55084

.body:                                            ; preds = %bb.x, %bb.w
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cq, i64 noundef 24, i64 noundef 8) #53, !dbg !55085
  resume { ptr, i32 } %i.dd, !dbg !55086

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i: ; preds = %bb.v, %bb.u
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cq, i64 noundef 24, i64 noundef 8) #53, !dbg !55087
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, !dbg !55088

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.r, %.split, %.split100, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i
  %i.dj = icmp eq i64 %.sink, 0, !dbg !55010
  br i1 %i.dj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexit_crit_edge, label %bb.n, !dbg !55010

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread.loopexit_crit_edge: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit
  %.pre131.pre = load i64, ptr %i.s, align 8, !dbg !55056
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread, !dbg !55010

bb.y:                                             ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread
  %i.dk = icmp eq i64 %.pre131, 0, !dbg !55014
  br i1 %i.dk, label %.loopexit149, label %bb.z, !dbg !55014

.loopexit149:                                     ; preds = %bb.y, %.thread
  %i.dl = phi i64 [ %i.ax, %.thread ], [ %i.cl, %bb.y ]
  %i.dm = sub nsw i64 %i.dl, %i.d, !dbg !55089
  br label %.loopexit148, !dbg !55090

bb.z:                                             ; preds = %bb.y
  %i.dn = icmp ult i64 %.pre131, %.sroa.0.0.i, !dbg !55091
  %i.do = add i32 %.sroa.019.0, 1, !dbg !55091
  %.sroa.019.1 = select i1 %i.dn, i32 %i.do, i32 0, !dbg !55091 ; 2 uses
  br i1 %.sroa.013.1, label %bb.ab, label %bb.aa, !dbg !55092

.loopexit148:                                     ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread, %.loopexit149
  %.sroa.8.0 = phi i64 [ %i.dm, %.loopexit149 ], [ %.sroa.0.0.i6579.ph, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread ], !dbg !55093
  %.sroa.010.0 = phi i64 [ 0, %.loopexit149 ], [ 1, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCslpwjCj2YNBy_9polars_io4mmap15MmapBytesReaderEL_EENtB5_4Read8read_bufCseeLknQCOKOd_13polars_python.exit.thread ], !dbg !55093
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !55094
  br label %.loopexit, !dbg !54992

bb.aa:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.z
  %.sroa.050.4 = phi i64 [ -1, %bb.ad ], [ %i.ds, %bb.ac ], [ %spec.select, %bb.ab ], [ %.sroa.050.3, %bb.z ], !dbg !54980
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !55094
  br label %bb.f, !dbg !54976

bb.ab:                                            ; preds = %bb.z
  %i.dp = icmp sgt i32 %.sroa.019.1, 1
  %or.cond7 = select i1 %i.cj, i1 %i.dp, i1 false, !dbg !55095
  %spec.select = select i1 %or.cond7, i64 -1, i64 %.sroa.050.3, !dbg !55095 ; 4 uses
  %i.dq = icmp uge i64 %.sroa.0.0.i, %spec.select, !dbg !55096
  %i.dr = icmp eq i64 %.pre131, %.sroa.0.0.i
  %or.cond2 = and i1 %i.dr, %i.dq, !dbg !55096
  br i1 %or.cond2, label %bb.ac, label %bb.aa, !dbg !55096

bb.ac:                                            ; preds = %bb.ab
  %i.ds = shl nuw i64 %spec.select, 1, !dbg !55097
  %i.dt = icmp slt i64 %spec.select, 0, !dbg !55097
  br i1 %i.dt, label %bb.ad, label %bb.aa, !dbg !55098, !prof !4282

bb.ad:                                            ; preds = %bb.ac
  br label %bb.aa, !dbg !55099

.loopexit:                                        ; preds = %bb.l, %bb.i, %bb.k, %.loopexit148
  %.sroa.8.1 = phi i64 [ %i.aq, %bb.i ], [ %i.at, %bb.k ], [ %.sroa.8.0, %.loopexit148 ], [ 163208757251, %bb.l ], !dbg !55100
  %.sroa.010.1 = phi i64 [ 1, %bb.i ], [ 0, %bb.k ], [ %.sroa.010.0, %.loopexit148 ], [ 1, %bb.l ], !dbg !55100
  %i.du = inttoptr i64 %.sroa.8.1 to ptr, !dbg !55101
  br label %bb.ae, !dbg !55102

bb.ae:                                            ; preds = %bb.e, %bb.d, %.loopexit
  %.sroa.8.2 = phi ptr [ %i.du, %.loopexit ], [ %i.aa, %bb.d ], [ null, %bb.e ], !dbg !54981
  %.sroa.010.2 = phi i64 [ %.sroa.010.1, %.loopexit ], [ 1, %bb.d ], [ 0, %bb.e ], !dbg !54981
  %i.dv = insertvalue { i64, ptr } poison, i64 %.sroa.010.2, 0, !dbg !55101
  %i.dw = insertvalue { i64, ptr } %i.dv, ptr %.sroa.8.2, 1, !dbg !55101
  ret { i64, ptr } %i.dw, !dbg !55101
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQQINtNtNtB2_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEB2e_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !55103 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !55331 ; 7 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !55331, !noundef !4270 ; 7 uses
  %i.e = icmp sgt i64 %i.d, -1, !dbg !55332
  tail call void @llvm.assume(i1 %i.e), !dbg !55333
  %i.f = load i64, ptr %1, align 8, !dbg !55334, !range !4635, !noundef !4270 ; 2 uses
  %i.g = trunc nuw i64 %2 to i1, !dbg !55335      ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !55335

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %3, -1025, !dbg !55336
  br i1 %i.h, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEE0B2g_.exit.thread, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEE0B2g_.exit, !dbg !55337, !prof !4282

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEE0B2g_.exit: ; preds = %bb.b
  %i.i = add nuw i64 %3, 1024, !dbg !55336        ; 3 uses
  %i.j = and i64 %i.i, 8191, !dbg !55338          ; 2 uses
  %i.k = icmp eq i64 %i.j, 0, !dbg !55339
  %i.l = sub i64 %3, %i.j, !dbg !55339
  %i.m = add i64 %i.l, 9216, !dbg !55339          ; 2 uses
  %.not102 = icmp ult i64 %i.m, %i.i, !dbg !55339
  %.sroa.5.1.i = select i1 %.not102, i64 8192, i64 %i.m, !dbg !55340
  %.sroa.050.1 = select i1 %i.k, i64 %i.i, i64 %.sroa.5.1.i, !dbg !55339 ; 2 uses
  %i.n = icmp eq i64 %3, 0
  br i1 %i.n, label %bb.c, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEE0B2g_.exit.thread, !dbg !55341

bb.c:                                             ; preds = %bb.a, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEE0B2g_.exit
  %.sroa.050.0 = phi i64 [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEE0B2g_.exit ], [ 8192, %bb.a ], !dbg !55342 ; 2 uses
  %.sroa.013.0 = xor i1 %i.g, true, !dbg !55343   ; 2 uses
  %i.o = sub nsw i64 %i.f, %i.d, !dbg !55344
  %i.p = icmp ult i64 %i.o, 32, !dbg !55344
  br i1 %i.p, label %bb.d, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEE0B2g_.exit.thread, !dbg !55344

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEE0B2g_.exit.thread: ; preds = %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEE0B2g_.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEE0B2g_.exit
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEE0B2g_.exit.thread_crit_edge ], [ %i.d, %bb.c ], [ %i.d, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEE0B2g_.exit ], [ %i.d, %bb.b ], !dbg !55345
  %.sroa.050.2 = phi i64 [ %.sroa.050.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEE0B2g_.exit.thread_crit_edge ], [ %.sroa.050.0, %bb.c ], [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEE0B2g_.exit ], [ 8192, %bb.b ], !dbg !55346
  %.sroa.013.1 = phi i1 [ %.sroa.013.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEE0B2g_.exit.thread_crit_edge ], [ %.sroa.013.0, %bb.c ], [ false, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEE0B2g_.exit ], [ false, %bb.b ], !dbg !55347
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br label %bb.f, !dbg !55348

bb.d:                                             ; preds = %bb.c
  %i.y = tail call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEB2y_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !55275 ; 2 uses
  %i.z = extractvalue { i64, ptr } %i.y, 0, !dbg !55275
  %i.aa = extractvalue { i64, ptr } %i.y, 1, !dbg !55275 ; 2 uses
  %i.ab = trunc nuw i64 %i.z to i1, !dbg !55349
  br i1 %i.ab, label %bb.ae, label %bb.e, !dbg !55349

bb.e:                                             ; preds = %bb.d
  %i.ac = icmp eq ptr %i.aa, null, !dbg !55350
  br i1 %i.ac, label %bb.ae, label %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEE0B2g_.exit.thread_crit_edge, !dbg !55350

._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEE0B2g_.exit.thread_crit_edge: ; preds = %bb.e
  %.pre.pre = load i64, ptr %i.c, align 8, !dbg !55345
  br label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEE0B2g_.exit.thread, !dbg !55350

bb.f:                                             ; preds = %bb.aa, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEE0B2g_.exit.thread
  %i.ad = phi i64 [ %.pre, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEE0B2g_.exit.thread ], [ %i.cb, %bb.aa ], !dbg !55345 ; 3 uses
  %.sroa.048.2 = phi i64 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEE0B2g_.exit.thread ], [ %i.by, %bb.aa ], !dbg !55351
  %.sroa.050.3 = phi i64 [ %.sroa.050.2, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEE0B2g_.exit.thread ], [ %.sroa.050.4, %bb.aa ], !dbg !55352 ; 3 uses
  %.sroa.019.0 = phi i32 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEE0B2g_.exit.thread ], [ %.sroa.019.1, %bb.aa ], !dbg !55353
  %i.ae = icmp sgt i64 %i.ad, -1, !dbg !55354
  call void @llvm.assume(i1 %i.ae), !dbg !55355
  %i.af = load i64, ptr %1, align 8, !dbg !55356, !range !4635, !noundef !4270 ; 3 uses
  %i.ag = icmp eq i64 %i.ad, %i.af, !dbg !55357
  %i.ah = icmp eq i64 %i.af, %i.f
  %or.cond62 = and i1 %i.ag, %i.ah, !dbg !55357
  br i1 %or.cond62, label %bb.h, label %bb.g, !dbg !55357

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.ai = phi i64 [ %.pre127, %._crit_edge ], [ %i.af, %bb.f ], !dbg !55358 ; 3 uses
  %i.aj = phi i64 [ %.pre126, %._crit_edge ], [ %i.ad, %bb.f ], !dbg !55359 ; 3 uses
  %i.ak = icmp sgt i64 %i.aj, -1, !dbg !55360
  call void @llvm.assume(i1 %i.ak), !dbg !55361
  %i.al = icmp eq i64 %i.aj, %i.ai, !dbg !55362
  br i1 %i.al, label %bb.l, label %bb.m, !dbg !55362

bb.h:                                             ; preds = %bb.f
  %i.am = call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQQINtNtNtB4_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEEB2y_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !55287 ; 2 uses
  %i.an = extractvalue { i64, ptr } %i.am, 0, !dbg !55287
  %i.ao = extractvalue { i64, ptr } %i.am, 1, !dbg !55287 ; 2 uses
  %i.ap = trunc nuw i64 %i.an to i1, !dbg !55363
  br i1 %i.ap, label %bb.i, label %bb.j, !dbg !55363

bb.i:                                             ; preds = %bb.h
  %i.aq = ptrtoint ptr %i.ao to i64, !dbg !55287
  br label %.loopexit, !dbg !55364

bb.j:                                             ; preds = %bb.h
  %i.ar = icmp eq ptr %i.ao, null, !dbg !55365
  %.pre126 = load i64, ptr %i.c, align 8, !dbg !55359 ; 3 uses
  br i1 %i.ar, label %bb.k, label %._crit_edge, !dbg !55365

._crit_edge:                                      ; preds = %bb.j
  %.pre127 = load i64, ptr %1, align 8, !dbg !55358, !range !4635
  br label %bb.g, !dbg !55365

bb.k:                                             ; preds = %bb.j
  %i.as = icmp sgt i64 %.pre126, -1, !dbg !55366
  call void @llvm.assume(i1 %i.as), !dbg !55367
  %i.at = sub nsw i64 %.pre126, %i.d, !dbg !55368
  br label %.loopexit, !dbg !55369

bb.l:                                             ; preds = %bb.g
  %i.au = call { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.ai, i64 noundef 32, i64 noundef 1, i64 noundef 1), !dbg !55370
  %i.av = extractvalue { i64, i64 } %i.au, 0, !dbg !55370
  %.not = icmp eq i64 %i.av, -9223372036854775807, !dbg !55371
  br i1 %.not, label %._crit_edge128, label %.loopexit, !dbg !55372

._crit_edge128:                                   ; preds = %bb.l
  %.pre129 = load i64, ptr %i.c, align 8, !dbg !55373
  %.pre130 = load i64, ptr %1, align 8, !dbg !55374, !range !4635
  br label %bb.m, !dbg !55372

bb.m:                                             ; preds = %._crit_edge128, %bb.g
  %i.aw = phi i64 [ %.pre130, %._crit_edge128 ], [ %i.ai, %bb.g ], !dbg !55374
  %i.ax = phi i64 [ %.pre129, %._crit_edge128 ], [ %i.aj, %bb.g ], !dbg !55373 ; 5 uses
  %i.ay = load ptr, ptr %i.q, align 8, !dbg !55375, !nonnull !4270, !noundef !4270
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax, !dbg !55376
  %i.ba = sub i64 %i.aw, %i.ax, !dbg !55377
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.050.3, i64 %i.ba), !dbg !55378 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !55379
  store ptr %i.az, ptr %i.b, align 8, !dbg !55380
  store i64 %.sroa.0.0.i, ptr %i.r, align 8, !dbg !55380
  store i64 0, ptr %i.s, align 8, !dbg !55380
  store i64 %.sroa.048.2, ptr %i.t, align 8, !dbg !55381
  %.promoted = load i64, ptr %i.u, align 8, !alias.scope !55308, !noalias !55309 ; 2 uses
  %i.bb = icmp eq i64 %.promoted, 0, !dbg !55382
  br i1 %i.bb, label %.thread, label %.lr.ph, !dbg !55382

.thread:                                          ; preds = %bb.m
  %i.bc = icmp sgt i64 %i.ax, -1, !dbg !55383
  call void @llvm.assume(i1 %i.bc), !dbg !55384
  store i64 %i.ax, ptr %i.c, align 8, !dbg !55385
  br label %.loopexit149, !dbg !55386

.lr.ph:                                           ; preds = %bb.m
  %.val4.i = load ptr, ptr %0, align 8, !nonnull !4270, !align !4488 ; 2 uses
  br label %bb.n, !dbg !55382

bb.n:                                             ; preds = %.lr.ph, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit
  %i.bd = phi i64 [ %.promoted, %.lr.ph ], [ %.sink, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !55308), !dbg !55387
  call void @llvm.experimental.noalias.scope.decl(metadata !55309), !dbg !55387
  %i.be = load i64, ptr %i.r, align 8, !dbg !55388, !alias.scope !55309, !noalias !55308, !noundef !4270
  %i.bf = load i64, ptr %i.s, align 8, !dbg !55389, !alias.scope !55309, !noalias !55308, !noundef !4270 ; 6 uses
  %i.bg = sub i64 %i.be, %i.bf, !dbg !55390
  %i.bh = icmp ult i64 %i.bd, %i.bg, !dbg !55391
  br i1 %i.bh, label %bb.p, label %bb.o, !dbg !55391

bb.o:                                             ; preds = %bb.n
  %.val.i.i = load ptr, ptr %.val4.i, align 8, !dbg !55392, !noalias !55312, !nonnull !4270, !align !4488, !noundef !4270
  %i.bi = call noundef ptr @_RNvXs3_NtNtNtCsh8eZTKRCwoO_3std2io8buffered9bufreaderINtB5_9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EENtB9_4Read8read_bufB1J_(ptr noalias noundef nonnull align 8 dereferenceable(56) %.val.i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b), !dbg !55393, !noalias !55308
  %i.bj = load i64, ptr %i.s, align 8, !dbg !55394, !alias.scope !55309, !noalias !55308, !noundef !4270 ; 2 uses
  %.neg.i = add i64 %i.bf, %i.bd, !dbg !55395
  %i.bk = sub i64 %.neg.i, %i.bj, !dbg !55396
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1W_.exit, !dbg !55397

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %i.t, align 8, !dbg !55398, !alias.scope !55309, !noalias !55308, !noundef !4270 ; 2 uses
  %i.bm = sub nuw i64 %i.bl, %i.bf, !dbg !55399
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bm, i64 %i.bd), !dbg !55400
  %i.bn = load ptr, ptr %i.b, align 8, !dbg !55401, !alias.scope !55309, !noalias !55308, !nonnull !4270, !noundef !4270
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bf, !dbg !55402
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !55403, !noalias !55313
  store ptr %i.bo, ptr %i.a, align 8, !dbg !55404, !noalias !55313
  store i64 %i.bd, ptr %i.v, align 8, !dbg !55404, !noalias !55313
  store i64 0, ptr %i.w, align 8, !dbg !55404, !noalias !55313
  store i64 %.sroa.0.0.i.i, ptr %i.x, align 8, !dbg !55405, !noalias !55313
  %.val.i6.i = load ptr, ptr %.val4.i, align 8, !dbg !55406, !noalias !55314, !nonnull !4270, !align !4488, !noundef !4270
  %i.bp = call noundef ptr @_RNvXs3_NtNtNtCsh8eZTKRCwoO_3std2io8buffered9bufreaderINtB5_9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EENtB9_4Read8read_bufB1J_(ptr noalias noundef nonnull align 8 dereferenceable(56) %.val.i6.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a), !dbg !55407, !noalias !55313
  %i.bq = load i64, ptr %i.w, align 8, !dbg !55408, !noalias !55313, !noundef !4270 ; 2 uses
  %i.br = load i64, ptr %i.x, align 8, !dbg !55409, !noalias !55313, !noundef !4270
  %i.bs = add i64 %i.bq, %i.bf, !dbg !55410       ; 3 uses
  store i64 %i.bs, ptr %i.s, align 8, !dbg !55410, !alias.scope !55309, !noalias !55308
  %.sroa.0.0.i7.i = call noundef i64 @llvm.umax.i64(i64 %i.bs, i64 %i.bl), !dbg !55411
  %i.bt = add i64 %i.br, %i.bf, !dbg !55412
  %.sroa.0.0.i8.i = call noundef i64 @llvm.umax.i64(i64 %i.bt, i64 %.sroa.0.0.i7.i), !dbg !55413
  store i64 %.sroa.0.0.i8.i, ptr %i.t, align 8, !dbg !55414, !alias.scope !55309, !noalias !55308
  %i.bu = sub i64 %i.bd, %i.bq, !dbg !55415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !55416, !noalias !55313
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1W_.exit, !dbg !55397

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1W_.exit: ; preds = %bb.o, %bb.p
  %.pre131136 = phi i64 [ %i.bs, %bb.p ], [ %i.bj, %bb.o ]
  %.sink = phi i64 [ %i.bu, %bb.p ], [ %i.bk, %bb.o ], !dbg !55417 ; 3 uses
  %.sroa.0.0.i65 = phi ptr [ %i.bp, %bb.p ], [ %i.bi, %bb.o ], !dbg !55417 ; 8 uses
  store i64 %.sink, ptr %i.u, align 8, !dbg !55417, !alias.scope !55308, !noalias !55309
  %.not60 = icmp eq ptr %.sroa.0.0.i65, null, !dbg !55418 ; 2 uses
  br i1 %.not60, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1W_.exit.thread.loopexitsplit, label %bb.q, !dbg !55419

bb.q:                                             ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1W_.exit
  %i.bv = ptrtoint ptr %.sroa.0.0.i65 to i64, !dbg !55420 ; 3 uses
  %i.bw = and i64 %i.bv, 3, !dbg !55421
  switch i64 %i.bw, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.r
    i64 0, label %.split100
    i64 1, label %.split99
  ], !dbg !55422, !prof !4782

default.unreachable:                              ; preds = %bb.q
  unreachable

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1W_.exit.thread.loopexitsplit: ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1W_.exit, %bb.r, %.split, %.split99, %.split100
  %i.bx = ptrtoint ptr %.sroa.0.0.i65 to i64, !dbg !55423
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1W_.exit.thread, !dbg !55424

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1W_.exit.thread: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1W_.exit.thread.loopexit_crit_edge, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1W_.exit.thread.loopexitsplit
  %.pre131 = phi i64 [ %.pre131.pre, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1W_.exit.thread.loopexit_crit_edge ], [ %.pre131136, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1W_.exit.thread.loopexitsplit ], !dbg !55424 ; 5 uses
  %.not6081.ph = phi i1 [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1W_.exit.thread.loopexit_crit_edge ], [ %.not60, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1W_.exit.thread.loopexitsplit ]
  %.sroa.0.0.i6579.ph = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1W_.exit.thread.loopexit_crit_edge ], [ %i.bx, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1W_.exit.thread.loopexitsplit ]
  %.pre132 = load i64, ptr %i.t, align 8, !dbg !55425 ; 2 uses
  %.pre133 = load i64, ptr %i.c, align 8, !dbg !55426 ; 2 uses
  %i.by = sub nuw i64 %.pre132, %.pre131, !dbg !55427
  %i.bz = icmp ne i64 %.pre132, %.sroa.0.0.i, !dbg !55428
  %i.ca = icmp sgt i64 %.pre133, -1, !dbg !55383
  call void @llvm.assume(i1 %i.ca), !dbg !55384
  %i.cb = add i64 %.pre133, %.pre131, !dbg !55429 ; 3 uses
  store i64 %i.cb, ptr %i.c, align 8, !dbg !55385
  br i1 %.not6081.ph, label %bb.y, label %.loopexit148, !dbg !55430

.split:                                           ; preds = %bb.q
  %.mask103 = and i64 %i.bv, -4294967296, !dbg !55431
  %i.cc = icmp eq i64 %.mask103, 17179869184, !dbg !55431
  br i1 %i.cc, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1W_.exit.thread.loopexitsplit, !dbg !55432

.split100:                                        ; preds = %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i65, i64 16, !dbg !55433
  %i.ce = load i8, ptr %i.cd, align 8, !dbg !55433, !range !4789, !noundef !4270
  %i.cf = icmp eq i8 %i.ce, 35, !dbg !55434
  br i1 %i.cf, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1W_.exit.thread.loopexitsplit, !dbg !55432

.split99:                                         ; preds = %bb.q
  %i.cg = getelementptr i8, ptr %.sroa.0.0.i65, i64 -1, !dbg !55435 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cg) ]
  %i.ch = getelementptr i8, ptr %.sroa.0.0.i65, i64 15, !dbg !55436
  %i.ci = load i8, ptr %i.ch, align 8, !dbg !55436, !range !4789, !noundef !4270
  %i.cj = icmp eq i8 %i.ci, 35, !dbg !55437
  br i1 %i.cj, label %bb.s, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1W_.exit.thread.loopexitsplit, !dbg !55432

bb.r:                                             ; preds = %bb.q
  %i.ck = icmp ult ptr %.sroa.0.0.i65, inttoptr (i64 180388626432 to ptr), !dbg !55438
  call void @llvm.assume(i1 %i.ck), !dbg !55439
  %.mask = and i64 %i.bv, -4294967296, !dbg !55440
  %i.cl = icmp eq i64 %.mask, 150323855360, !dbg !55440
  br i1 %i.cl, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1W_.exit.thread.loopexitsplit, !dbg !55432

bb.s:                                             ; preds = %.split99
  %.val.i.i.i.i.i = load ptr, ptr %i.cg, align 8, !dbg !55441 ; 5 uses
  %i.cm = getelementptr i8, ptr %.sroa.0.0.i65, i64 7, !dbg !55441
  %.val1.i.i.i.i.i = load ptr, ptr %i.cm, align 8, !dbg !55441, !nonnull !4270, !align !4488, !noundef !4270 ; 5 uses
  %i.cn = load ptr, ptr %.val1.i.i.i.i.i, align 8, !dbg !55442, !invariant.load !4270 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cn, null, !dbg !55442
  br i1 %.not.i.i.i.i.i.i.i, label %bb.u, label %bb.t, !dbg !55442

bb.t:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  invoke void %i.cn(ptr noundef nonnull %.val.i.i.i.i.i)
          to label %bb.u unwind label %bb.w, !dbg !55442

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.co = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !55443
  %i.cp = load i64, ptr %i.co, align 8, !dbg !55443, !range !4635, !invariant.load !4270 ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 0, !dbg !55444
  br i1 %i.cq, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i, label %bb.v, !dbg !55444

bb.v:                                             ; preds = %bb.u
  %i.cr = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16, !dbg !55443
  %i.cs = load i64, ptr %i.cr, align 8, !dbg !55445, !range !4615, !invariant.load !4270
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.cp, i64 noundef range(i64 1, 536870913) %i.cs) #53, !dbg !55446
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i, !dbg !55447

bb.w:                                             ; preds = %bb.t
  %i.ct = landingpad { ptr, i32 }
          cleanup
  %i.cu = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !55448
  %i.cv = load i64, ptr %i.cu, align 8, !dbg !55448, !range !4635, !invariant.load !4270 ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 0, !dbg !55449
  br i1 %i.cw, label %.body, label %bb.x, !dbg !55449

bb.x:                                             ; preds = %bb.w
  %i.cx = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16, !dbg !55448
  %i.cy = load i64, ptr %i.cx, align 8, !dbg !55450, !range !4615, !invariant.load !4270
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.cv, i64 noundef range(i64 1, 536870913) %i.cy) #53, !dbg !55451
  br label %.body, !dbg !55452

.body:                                            ; preds = %bb.x, %bb.w
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cg, i64 noundef 24, i64 noundef 8) #53, !dbg !55453
  resume { ptr, i32 } %i.ct, !dbg !55454

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i: ; preds = %bb.v, %bb.u
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cg, i64 noundef 24, i64 noundef 8) #53, !dbg !55455
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, !dbg !55456

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.r, %.split, %.split100, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i
  %i.cz = icmp eq i64 %.sink, 0, !dbg !55382
  br i1 %i.cz, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1W_.exit.thread.loopexit_crit_edge, label %bb.n, !dbg !55382

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1W_.exit.thread.loopexit_crit_edge: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit
  %.pre131.pre = load i64, ptr %i.s, align 8, !dbg !55424
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1W_.exit.thread, !dbg !55382

bb.y:                                             ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1W_.exit.thread
  %i.da = icmp eq i64 %.pre131, 0, !dbg !55386
  br i1 %i.da, label %.loopexit149, label %bb.z, !dbg !55386

.loopexit149:                                     ; preds = %bb.y, %.thread
  %i.db = phi i64 [ %i.ax, %.thread ], [ %i.cb, %bb.y ]
  %i.dc = sub nsw i64 %i.db, %i.d, !dbg !55457
  br label %.loopexit148, !dbg !55458

bb.z:                                             ; preds = %bb.y
  %i.dd = icmp ult i64 %.pre131, %.sroa.0.0.i, !dbg !55459
  %i.de = add i32 %.sroa.019.0, 1, !dbg !55459
  %.sroa.019.1 = select i1 %i.dd, i32 %i.de, i32 0, !dbg !55459 ; 2 uses
  br i1 %.sroa.013.1, label %bb.ab, label %bb.aa, !dbg !55460

.loopexit148:                                     ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1W_.exit.thread, %.loopexit149
  %.sroa.8.0 = phi i64 [ %i.dc, %.loopexit149 ], [ %.sroa.0.0.i6579.ph, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1W_.exit.thread ], !dbg !55461
  %.sroa.010.0 = phi i64 [ 0, %.loopexit149 ], [ 1, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQQINtNtNtB5_8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtB5_4Read8read_bufB1W_.exit.thread ], !dbg !55461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !55462
  br label %.loopexit, !dbg !55364

bb.aa:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.z
  %.sroa.050.4 = phi i64 [ -1, %bb.ad ], [ %i.di, %bb.ac ], [ %spec.select, %bb.ab ], [ %.sroa.050.3, %bb.z ], !dbg !55352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !55462
  br label %bb.f, !dbg !55348

bb.ab:                                            ; preds = %bb.z
  %i.df = icmp sgt i32 %.sroa.019.1, 1
  %or.cond7 = select i1 %i.bz, i1 %i.df, i1 false, !dbg !55463
  %spec.select = select i1 %or.cond7, i64 -1, i64 %.sroa.050.3, !dbg !55463 ; 4 uses
  %i.dg = icmp uge i64 %.sroa.0.0.i, %spec.select, !dbg !55464
  %i.dh = icmp eq i64 %.pre131, %.sroa.0.0.i
  %or.cond2 = and i1 %i.dh, %i.dg, !dbg !55464
  br i1 %or.cond2, label %bb.ac, label %bb.aa, !dbg !55464

bb.ac:                                            ; preds = %bb.ab
  %i.di = shl nuw i64 %spec.select, 1, !dbg !55465
  %i.dj = icmp slt i64 %spec.select, 0, !dbg !55465
  br i1 %i.dj, label %bb.ad, label %bb.aa, !dbg !55466, !prof !4282

bb.ad:                                            ; preds = %bb.ac
  br label %bb.aa, !dbg !55467

.loopexit:                                        ; preds = %bb.l, %bb.i, %bb.k, %.loopexit148
  %.sroa.8.1 = phi i64 [ %i.aq, %bb.i ], [ %i.at, %bb.k ], [ %.sroa.8.0, %.loopexit148 ], [ 163208757251, %bb.l ], !dbg !55468
  %.sroa.010.1 = phi i64 [ 1, %bb.i ], [ 0, %bb.k ], [ %.sroa.010.0, %.loopexit148 ], [ 1, %bb.l ], !dbg !55468
  %i.dk = inttoptr i64 %.sroa.8.1 to ptr, !dbg !55469
  br label %bb.ae, !dbg !55470

bb.ae:                                            ; preds = %bb.e, %bb.d, %.loopexit
  %.sroa.8.2 = phi ptr [ %i.dk, %.loopexit ], [ %i.aa, %bb.d ], [ null, %bb.e ], !dbg !55353
  %.sroa.010.2 = phi i64 [ %.sroa.010.1, %.loopexit ], [ 1, %bb.d ], [ 0, %bb.e ], !dbg !55353
  %i.dl = insertvalue { i64, ptr } poison, i64 %.sroa.010.2, 0, !dbg !55469
  %i.dm = insertvalue { i64, ptr } %i.dl, ptr %.sroa.8.2, 1, !dbg !55469
  ret { i64, ptr } %i.dm, !dbg !55469
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECseeLknQCOKOd_13polars_python(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !55471 {
bb.a:
  %i.a = alloca [32 x i8], align 1                ; 6 uses
  %i.b = alloca [32 x i8], align 1                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !55663 ; 10 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !55663, !noundef !4270 ; 7 uses
  %i.e = icmp sgt i64 %i.d, -1, !dbg !55664
  tail call void @llvm.assume(i1 %i.e), !dbg !55665
  %i.f = load i64, ptr %1, align 8, !dbg !55666, !range !4635, !noundef !4270 ; 2 uses
  %i.g = trunc nuw i64 %2 to i1, !dbg !55667      ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !55667

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %3, -1025, !dbg !55668
  br i1 %i.h, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEE0CseeLknQCOKOd_13polars_python.exit.thread, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEE0CseeLknQCOKOd_13polars_python.exit, !dbg !55669, !prof !4282

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEE0CseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  %i.i = add nuw i64 %3, 1024, !dbg !55668        ; 3 uses
  %i.j = and i64 %i.i, 8191, !dbg !55670          ; 2 uses
  %i.k = icmp eq i64 %i.j, 0, !dbg !55671
  %i.l = sub i64 %3, %i.j, !dbg !55671
  %i.m = add i64 %i.l, 9216, !dbg !55671          ; 2 uses
  %.not75 = icmp ult i64 %i.m, %i.i, !dbg !55671
  %.sroa.5.1.i = select i1 %.not75, i64 8192, i64 %i.m, !dbg !55672
  %.sroa.050.1 = select i1 %i.k, i64 %i.i, i64 %.sroa.5.1.i, !dbg !55671 ; 2 uses
  %i.n = icmp eq i64 %3, 0
  br i1 %i.n, label %bb.c, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEE0CseeLknQCOKOd_13polars_python.exit.thread, !dbg !55673

bb.c:                                             ; preds = %bb.a, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEE0CseeLknQCOKOd_13polars_python.exit
  %.sroa.050.0 = phi i64 [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEE0CseeLknQCOKOd_13polars_python.exit ], [ 8192, %bb.a ], !dbg !55674 ; 2 uses
  %.sroa.013.0 = xor i1 %i.g, true, !dbg !55675   ; 2 uses
  %i.o = sub nsw i64 %i.f, %i.d, !dbg !55676
  %i.p = icmp ult i64 %i.o, 32, !dbg !55676
  br i1 %i.p, label %bb.d, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEE0CseeLknQCOKOd_13polars_python.exit.thread, !dbg !55676

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEE0CseeLknQCOKOd_13polars_python.exit.thread: ; preds = %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECseeLknQCOKOd_13polars_python.exit.thread, %bb.b, %bb.c, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEE0CseeLknQCOKOd_13polars_python.exit
  %i.q = phi i64 [ %i.d, %bb.b ], [ %i.d, %bb.c ], [ %i.d, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEE0CseeLknQCOKOd_13polars_python.exit ], [ %i.ab, %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECseeLknQCOKOd_13polars_python.exit.thread ]
  %.sroa.050.2 = phi i64 [ 8192, %bb.b ], [ %.sroa.050.0, %bb.c ], [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEE0CseeLknQCOKOd_13polars_python.exit ], [ %.sroa.050.0, %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECseeLknQCOKOd_13polars_python.exit.thread ], !dbg !55677
  %.sroa.013.1 = phi i1 [ false, %bb.b ], [ %.sroa.013.0, %bb.c ], [ false, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEE0CseeLknQCOKOd_13polars_python.exit ], [ %.sroa.013.0, %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECseeLknQCOKOd_13polars_python.exit.thread ], !dbg !55678
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %.outer, !dbg !55679

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55614), !dbg !55618
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !55680, !noalias !55615
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.b, i8 0, i64 32, i1 false), !dbg !55681, !noalias !55615
  %i.s = call { i64, ptr } @_RNvXs_NtCs2mZqlW55729_12polars_utils20chunked_bytes_cursorINtB4_27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCsh8eZTKRCwoO_3std2io4Read4readCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, ptr noalias noundef nonnull %i.b, i64 noundef 32), !dbg !55682, !noalias !55614
  %i.t = extractvalue { i64, ptr } %i.s, 1, !dbg !55682 ; 3 uses
  %i.u = ptrtoint ptr %i.t to i64, !dbg !55682    ; 4 uses
  %i.v = icmp ult ptr %i.t, inttoptr (i64 33 to ptr)
  br i1 %i.v, label %.noexc.i, label %bb.e, !dbg !55683, !prof !4833

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.u, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #51, !dbg !55684, !noalias !55615
  unreachable

.noexc.i:                                         ; preds = %bb.d
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.u), !dbg !55685, !noalias !55616
  %i.w = load i64, ptr %i.c, align 8, !dbg !55686, !alias.scope !55617, !noalias !55616, !noundef !4270 ; 2 uses
  %i.x = icmp sgt i64 %i.w, -1, !dbg !55687
  call void @llvm.assume(i1 %i.x), !dbg !55688
  %.not.i.i = icmp eq ptr %i.t, null, !dbg !55689
  br i1 %.not.i.i, label %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECseeLknQCOKOd_13polars_python.exit, label %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECseeLknQCOKOd_13polars_python.exit.thread, !dbg !55689

_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECseeLknQCOKOd_13polars_python.exit: ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !55690, !noalias !55615
  br label %bb.q, !dbg !55691

_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECseeLknQCOKOd_13polars_python.exit.thread: ; preds = %.noexc.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !55692
  %i.z = load ptr, ptr %i.y, align 8, !dbg !55692, !alias.scope !55617, !noalias !55616, !nonnull !4270, !noundef !4270
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w, !dbg !55693
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr nonnull readonly align 1 %i.b, i64 %i.u, i1 false), !dbg !55694, !noalias !55616
  %.pre.i.i = load i64, ptr %i.c, align 8, !dbg !55695, !alias.scope !55617, !noalias !55616
  %i.ab = add i64 %.pre.i.i, %i.u, !dbg !55695    ; 2 uses
  store i64 %i.ab, ptr %i.c, align 8, !dbg !55695, !alias.scope !55617, !noalias !55616
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !55690, !noalias !55615
  br label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEE0CseeLknQCOKOd_13polars_python.exit.thread, !dbg !55691

bb.f:                                             ; preds = %.backedge, %.outer
  %i.ac = phi i64 [ %.ph, %.outer ], [ %i.bk, %.backedge ], !dbg !55696 ; 3 uses
  %.sroa.048.2 = phi i64 [ %.sroa.048.2.ph, %.outer ], [ %i.bh, %.backedge ], !dbg !55697 ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, -1, !dbg !55698
  call void @llvm.assume(i1 %i.ad), !dbg !55699
  %i.ae = load i64, ptr %1, align 8, !dbg !55700, !range !4635, !noundef !4270 ; 3 uses
  %i.af = icmp eq i64 %i.ac, %i.ae, !dbg !55701
  %i.ag = icmp eq i64 %i.ae, %i.f
  %or.cond = and i1 %i.af, %i.ag, !dbg !55701
  br i1 %or.cond, label %bb.g, label %.thread71, !dbg !55701

.thread71:                                        ; preds = %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECseeLknQCOKOd_13polars_python.exit63.thread, %bb.f
  %i.ah = phi i64 [ %.pre, %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECseeLknQCOKOd_13polars_python.exit63.thread ], [ %i.ae, %bb.f ], !dbg !55702 ; 3 uses
  %i.ai = phi i64 [ %i.au, %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECseeLknQCOKOd_13polars_python.exit63.thread ], [ %i.ac, %bb.f ], !dbg !55703 ; 3 uses
  %i.aj = icmp sgt i64 %i.ai, -1, !dbg !55704
  call void @llvm.assume(i1 %i.aj), !dbg !55705
  %i.ak = icmp eq i64 %i.ai, %i.ah, !dbg !55706
  br i1 %i.ak, label %bb.i, label %bb.j, !dbg !55706

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !55631), !dbg !55635
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !55707, !noalias !55632
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !dbg !55708, !noalias !55632
  %i.al = call { i64, ptr } @_RNvXs_NtCs2mZqlW55729_12polars_utils20chunked_bytes_cursorINtB4_27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCsh8eZTKRCwoO_3std2io4Read4readCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, ptr noalias noundef nonnull %i.a, i64 noundef 32), !dbg !55709, !noalias !55631
  %i.am = extractvalue { i64, ptr } %i.al, 1, !dbg !55709 ; 3 uses
  %i.an = ptrtoint ptr %i.am to i64, !dbg !55709  ; 4 uses
  %i.ao = icmp ult ptr %i.am, inttoptr (i64 33 to ptr)
  br i1 %i.ao, label %.noexc.i60, label %bb.h, !dbg !55710, !prof !4833

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.an, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #51, !dbg !55711, !noalias !55632
  unreachable

.noexc.i60:                                       ; preds = %bb.g
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.an), !dbg !55712, !noalias !55633
  %i.ap = load i64, ptr %i.c, align 8, !dbg !55713, !alias.scope !55634, !noalias !55633, !noundef !4270 ; 3 uses
  %i.aq = icmp sgt i64 %i.ap, -1, !dbg !55714
  call void @llvm.assume(i1 %i.aq), !dbg !55715
  %.not.i.i61 = icmp eq ptr %i.am, null, !dbg !55716
  br i1 %.not.i.i61, label %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECseeLknQCOKOd_13polars_python.exit63, label %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECseeLknQCOKOd_13polars_python.exit63.thread, !dbg !55716

_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECseeLknQCOKOd_13polars_python.exit63: ; preds = %.noexc.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !55717, !noalias !55632
  %i.ar = sub nsw i64 %i.ap, %i.d
  br label %.loopexit, !dbg !55718

_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECseeLknQCOKOd_13polars_python.exit63.thread: ; preds = %.noexc.i60
  %i.as = load ptr, ptr %i.r, align 8, !dbg !55719, !alias.scope !55634, !noalias !55633, !nonnull !4270, !noundef !4270
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ap, !dbg !55720
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.at, ptr nonnull readonly align 1 %i.a, i64 %i.an, i1 false), !dbg !55721, !noalias !55633
  %.pre.i.i62 = load i64, ptr %i.c, align 8, !dbg !55722, !alias.scope !55634, !noalias !55633
  %i.au = add i64 %.pre.i.i62, %i.an, !dbg !55722 ; 2 uses
  store i64 %i.au, ptr %i.c, align 8, !dbg !55722, !alias.scope !55634, !noalias !55633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !55717, !noalias !55632
  %.pre = load i64, ptr %1, align 8, !dbg !55702, !range !4635
  br label %.thread71, !dbg !55718

bb.i:                                             ; preds = %.thread71
  %i.av = call { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.ah, i64 noundef 32, i64 noundef 1, i64 noundef 1), !dbg !55723
  %i.aw = extractvalue { i64, i64 } %i.av, 0, !dbg !55723
  %.not = icmp eq i64 %i.aw, -9223372036854775807, !dbg !55724
  br i1 %.not, label %._crit_edge, label %.loopexit, !dbg !55725

._crit_edge:                                      ; preds = %bb.i
  %.pre82 = load i64, ptr %i.c, align 8, !dbg !55726
  %.pre83 = load i64, ptr %1, align 8, !dbg !55727, !range !4635
  br label %bb.j, !dbg !55725

bb.j:                                             ; preds = %._crit_edge, %.thread71
  %i.ax = phi i64 [ %.pre83, %._crit_edge ], [ %i.ah, %.thread71 ], !dbg !55727
  %i.ay = phi i64 [ %.pre82, %._crit_edge ], [ %i.ai, %.thread71 ], !dbg !55726 ; 2 uses
  %i.az = load ptr, ptr %i.r, align 8, !dbg !55728, !nonnull !4270, !noundef !4270
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ay, !dbg !55729 ; 2 uses
  %i.bb = sub i64 %i.ax, %i.ay, !dbg !55730       ; 2 uses
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.050.3.ph, i64 %i.bb), !dbg !55731 ; 5 uses
  %i.bc = sub nuw i64 %.sroa.0.0.i, %.sroa.048.2, !dbg !55732
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.sroa.048.2, !dbg !55733
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bd, i8 0, i64 %i.bc, i1 false), !dbg !55734, !noalias !55649
  %i.be = call { i64, ptr } @_RNvXs_NtCs2mZqlW55729_12polars_utils20chunked_bytes_cursorINtB4_27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCsh8eZTKRCwoO_3std2io4Read4readCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, ptr noalias noundef nonnull %i.ba, i64 noundef range(i64 0, -9223372036854775808) %.sroa.0.0.i), !dbg !55735, !noalias !55650
  %i.bf = extractvalue { i64, ptr } %i.be, 1, !dbg !55736 ; 2 uses
  %i.bg = ptrtoint ptr %i.bf to i64, !dbg !55736  ; 4 uses
  %.not.i.i65 = icmp ult i64 %.sroa.0.0.i, %i.bg, !dbg !55737
  br i1 %.not.i.i65, label %bb.k, label %_RNvYINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCsh8eZTKRCwoO_3std2io4Read8read_bufCseeLknQCOKOd_13polars_python.exit, !dbg !55737, !prof !4282

bb.k:                                             ; preds = %bb.j
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #55, !dbg !55738, !noalias !55651
  unreachable, !dbg !55738

_RNvYINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCsh8eZTKRCwoO_3std2io4Read8read_bufCseeLknQCOKOd_13polars_python.exit: ; preds = %bb.j
  %i.bh = sub nuw i64 %.sroa.0.0.i, %i.bg, !dbg !55739 ; 2 uses
  %i.bi = load i64, ptr %i.c, align 8, !dbg !55740, !noundef !4270 ; 2 uses
  %i.bj = icmp sgt i64 %i.bi, -1, !dbg !55741
  call void @llvm.assume(i1 %i.bj), !dbg !55742
  %i.bk = add i64 %i.bi, %i.bg, !dbg !55743       ; 4 uses
  store i64 %i.bk, ptr %i.c, align 8, !dbg !55744
  %i.bl = icmp eq ptr %i.bf, null, !dbg !55745
  br i1 %i.bl, label %bb.l, label %bb.m, !dbg !55745

bb.l:                                             ; preds = %_RNvYINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCsh8eZTKRCwoO_3std2io4Read8read_bufCseeLknQCOKOd_13polars_python.exit
  %i.bm = sub nsw i64 %i.bk, %i.d, !dbg !55746
  br label %.loopexit, !dbg !55747

bb.m:                                             ; preds = %_RNvYINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCsh8eZTKRCwoO_3std2io4Read8read_bufCseeLknQCOKOd_13polars_python.exit
  br i1 %.sroa.013.1, label %bb.n, label %.backedge, !dbg !55748

bb.n:                                             ; preds = %bb.m
  %i.bn = icmp uge i64 %i.bb, %.sroa.050.3.ph, !dbg !55749
  %i.bo = icmp eq i64 %.sroa.0.0.i, %i.bg
  %or.cond2 = and i1 %i.bn, %i.bo, !dbg !55749
  br i1 %or.cond2, label %bb.o, label %.backedge, !dbg !55749

.backedge:                                        ; preds = %bb.n, %bb.m
  br label %bb.f, !dbg !55698

bb.o:                                             ; preds = %bb.n
  %i.bp = shl nuw i64 %.sroa.050.3.ph, 1, !dbg !55750
  %i.bq = icmp slt i64 %.sroa.050.3.ph, 0, !dbg !55750
  br i1 %i.bq, label %bb.p, label %.outer.backedge, !dbg !55751, !prof !4282

.outer:                                           ; preds = %.outer.backedge, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEE0CseeLknQCOKOd_13polars_python.exit.thread
  %.ph = phi i64 [ %i.q, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEE0CseeLknQCOKOd_13polars_python.exit.thread ], [ %i.bk, %.outer.backedge ]
  %.sroa.048.2.ph = phi i64 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEE0CseeLknQCOKOd_13polars_python.exit.thread ], [ %i.bh, %.outer.backedge ]
  %.sroa.050.3.ph = phi i64 [ %.sroa.050.2, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEE0CseeLknQCOKOd_13polars_python.exit.thread ], [ %.sroa.050.3.ph.be, %.outer.backedge ] ; 4 uses
  br label %bb.f, !dbg !55701

bb.p:                                             ; preds = %bb.o
  br label %.outer.backedge, !dbg !55752

.outer.backedge:                                  ; preds = %bb.p, %bb.o
  %.sroa.050.3.ph.be = phi i64 [ %i.bp, %bb.o ], [ -1, %bb.p ]
  br label %.outer, !dbg !55701

.loopexit:                                        ; preds = %bb.i, %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECseeLknQCOKOd_13polars_python.exit63, %bb.l
  %.sroa.8.1 = phi i64 [ %i.bm, %bb.l ], [ %i.ar, %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECseeLknQCOKOd_13polars_python.exit63 ], [ 163208757251, %bb.i ], !dbg !55753
  %.sroa.010.1 = phi i64 [ 0, %bb.l ], [ 0, %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECseeLknQCOKOd_13polars_python.exit63 ], [ 1, %bb.i ], !dbg !55753
  %i.br = inttoptr i64 %.sroa.8.1 to ptr, !dbg !55754
  br label %bb.q, !dbg !55755

bb.q:                                             ; preds = %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECseeLknQCOKOd_13polars_python.exit, %.loopexit
  %.sroa.8.2 = phi ptr [ %i.br, %.loopexit ], [ null, %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECseeLknQCOKOd_13polars_python.exit ], !dbg !55756
  %.sroa.010.2 = phi i64 [ %.sroa.010.1, %.loopexit ], [ 0, %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtNtCs2mZqlW55729_12polars_utils20chunked_bytes_cursor27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECseeLknQCOKOd_13polars_python.exit ], !dbg !55756
  %i.bs = insertvalue { i64, ptr } poison, i64 %.sroa.010.2, 0, !dbg !55754
  %i.bt = insertvalue { i64, ptr } %i.bs, ptr %.sroa.8.2, 1, !dbg !55754
  ret { i64, ptr } %i.bt, !dbg !55754
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectEBO_(ptr noalias noundef align 8 dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !55757 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !55943 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !55943, !noundef !4270 ; 7 uses
  %i.d = icmp sgt i64 %i.c, -1, !dbg !55944
  tail call void @llvm.assume(i1 %i.d), !dbg !55945
  %i.e = load i64, ptr %1, align 8, !dbg !55946, !range !4635, !noundef !4270 ; 2 uses
  %i.f = trunc nuw i64 %2 to i1, !dbg !55947      ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c, !dbg !55947

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %3, -1025, !dbg !55948
  br i1 %i.g, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectE0BQ_.exit.thread, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectE0BQ_.exit, !dbg !55949, !prof !4282

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectE0BQ_.exit: ; preds = %bb.b
  %i.h = add nuw i64 %3, 1024, !dbg !55948        ; 3 uses
  %i.i = and i64 %i.h, 8191, !dbg !55950          ; 2 uses
  %i.j = icmp eq i64 %i.i, 0, !dbg !55951
  %i.k = sub i64 %3, %i.i, !dbg !55951
  %i.l = add i64 %i.k, 9216, !dbg !55951          ; 2 uses
  %.not96 = icmp ult i64 %i.l, %i.h, !dbg !55951
  %.sroa.5.1.i = select i1 %.not96, i64 8192, i64 %i.l, !dbg !55952
  %.sroa.050.1 = select i1 %i.j, i64 %i.h, i64 %.sroa.5.1.i, !dbg !55951 ; 2 uses
  %i.m = icmp eq i64 %3, 0
  br i1 %i.m, label %bb.c, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectE0BQ_.exit.thread, !dbg !55953

bb.c:                                             ; preds = %bb.a, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectE0BQ_.exit
  %.sroa.050.0 = phi i64 [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectE0BQ_.exit ], [ 8192, %bb.a ], !dbg !55954 ; 2 uses
  %.sroa.013.0 = xor i1 %i.f, true, !dbg !55955   ; 2 uses
  %i.n = sub nsw i64 %i.e, %i.c, !dbg !55956
  %i.o = icmp ult i64 %i.n, 32, !dbg !55956
  br i1 %i.o, label %bb.d, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectE0BQ_.exit.thread, !dbg !55956

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectE0BQ_.exit.thread: ; preds = %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectE0BQ_.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectE0BQ_.exit
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectE0BQ_.exit.thread_crit_edge ], [ %i.c, %bb.c ], [ %i.c, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectE0BQ_.exit ], [ %i.c, %bb.b ], !dbg !55957
  %.sroa.050.2 = phi i64 [ %.sroa.050.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectE0BQ_.exit.thread_crit_edge ], [ %.sroa.050.0, %bb.c ], [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectE0BQ_.exit ], [ 8192, %bb.b ], !dbg !55958
  %.sroa.013.1 = phi i1 [ %.sroa.013.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectE0BQ_.exit.thread_crit_edge ], [ %.sroa.013.0, %bb.c ], [ false, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectE0BQ_.exit ], [ false, %bb.b ], !dbg !55959
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br label %bb.f, !dbg !55960

bb.d:                                             ; preds = %bb.c
  %i.t = tail call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectEB18_(ptr noalias noundef align 8 dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !55892 ; 2 uses
  %i.u = extractvalue { i64, ptr } %i.t, 0, !dbg !55892
  %i.v = extractvalue { i64, ptr } %i.t, 1, !dbg !55892 ; 2 uses
  %i.w = trunc nuw i64 %i.u to i1, !dbg !55961
  br i1 %i.w, label %bb.ab, label %bb.e, !dbg !55961

bb.e:                                             ; preds = %bb.d
  %i.x = icmp eq ptr %i.v, null, !dbg !55962
  br i1 %i.x, label %bb.ab, label %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectE0BQ_.exit.thread_crit_edge, !dbg !55962

._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectE0BQ_.exit.thread_crit_edge: ; preds = %bb.e
  %.pre.pre = load i64, ptr %i.b, align 8, !dbg !55957
  br label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectE0BQ_.exit.thread, !dbg !55962

bb.f:                                             ; preds = %bb.x, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectE0BQ_.exit.thread
  %i.y = phi i64 [ %.pre, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectE0BQ_.exit.thread ], [ %i.bh, %bb.x ], !dbg !55957 ; 3 uses
  %.sroa.048.2 = phi i64 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectE0BQ_.exit.thread ], [ %i.bd, %bb.x ], !dbg !55963
  %.sroa.050.3 = phi i64 [ %.sroa.050.2, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectE0BQ_.exit.thread ], [ %.sroa.050.4, %bb.x ], !dbg !55964 ; 3 uses
  %.sroa.019.0 = phi i32 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectE0BQ_.exit.thread ], [ %.sroa.019.1, %bb.x ], !dbg !55965
  %i.z = icmp sgt i64 %i.y, -1, !dbg !55966
  call void @llvm.assume(i1 %i.z), !dbg !55967
  %i.aa = load i64, ptr %1, align 8, !dbg !55968, !range !4635, !noundef !4270 ; 3 uses
  %i.ab = icmp eq i64 %i.y, %i.aa, !dbg !55969
  %i.ac = icmp eq i64 %i.aa, %i.e
  %or.cond62 = and i1 %i.ab, %i.ac, !dbg !55969
  br i1 %or.cond62, label %bb.h, label %bb.g, !dbg !55969

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.ad = phi i64 [ %.pre126, %._crit_edge ], [ %i.aa, %bb.f ], !dbg !55970 ; 3 uses
  %i.ae = phi i64 [ %.pre125, %._crit_edge ], [ %i.y, %bb.f ], !dbg !55971 ; 3 uses
  %i.af = icmp sgt i64 %i.ae, -1, !dbg !55972
  call void @llvm.assume(i1 %i.af), !dbg !55973
  %i.ag = icmp eq i64 %i.ae, %i.ad, !dbg !55974
  br i1 %i.ag, label %bb.l, label %bb.m, !dbg !55974

bb.h:                                             ; preds = %bb.f
  %i.ah = call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectEB18_(ptr noalias noundef align 8 dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !55904 ; 2 uses
  %i.ai = extractvalue { i64, ptr } %i.ah, 0, !dbg !55904
  %i.aj = extractvalue { i64, ptr } %i.ah, 1, !dbg !55904 ; 2 uses
  %i.ak = trunc nuw i64 %i.ai to i1, !dbg !55975
  br i1 %i.ak, label %bb.i, label %bb.j, !dbg !55975

bb.i:                                             ; preds = %bb.h
  %i.al = ptrtoint ptr %i.aj to i64, !dbg !55904
  br label %.loopexit, !dbg !55976

bb.j:                                             ; preds = %bb.h
  %i.am = icmp eq ptr %i.aj, null, !dbg !55977
  %.pre125 = load i64, ptr %i.b, align 8, !dbg !55971 ; 3 uses
  br i1 %i.am, label %bb.k, label %._crit_edge, !dbg !55977

._crit_edge:                                      ; preds = %bb.j
  %.pre126 = load i64, ptr %1, align 8, !dbg !55970, !range !4635
  br label %bb.g, !dbg !55977

bb.k:                                             ; preds = %bb.j
  %i.an = icmp sgt i64 %.pre125, -1, !dbg !55978
  call void @llvm.assume(i1 %i.an), !dbg !55979
  %i.ao = sub nsw i64 %.pre125, %i.c, !dbg !55980
  br label %.loopexit, !dbg !55981

bb.l:                                             ; preds = %bb.g
  %i.ap = call { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.ad, i64 noundef 32, i64 noundef 1, i64 noundef 1), !dbg !55982
  %i.aq = extractvalue { i64, i64 } %i.ap, 0, !dbg !55982
  %.not = icmp eq i64 %i.aq, -9223372036854775807, !dbg !55983
  br i1 %.not, label %._crit_edge127, label %.loopexit, !dbg !55984

._crit_edge127:                                   ; preds = %bb.l
  %.pre128 = load i64, ptr %i.b, align 8, !dbg !55985
  %.pre129 = load i64, ptr %1, align 8, !dbg !55986, !range !4635
  br label %bb.m, !dbg !55984

bb.m:                                             ; preds = %._crit_edge127, %bb.g
  %i.ar = phi i64 [ %.pre129, %._crit_edge127 ], [ %i.ad, %bb.g ], !dbg !55986
  %i.as = phi i64 [ %.pre128, %._crit_edge127 ], [ %i.ae, %bb.g ], !dbg !55985 ; 2 uses
  %i.at = load ptr, ptr %i.p, align 8, !dbg !55987, !nonnull !4270, !noundef !4270
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.as, !dbg !55988
  %i.av = sub i64 %i.ar, %i.as, !dbg !55989
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.050.3, i64 %i.av), !dbg !55990 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !55991
  store ptr %i.au, ptr %i.a, align 8, !dbg !55992
  store i64 %.sroa.0.0.i, ptr %i.q, align 8, !dbg !55992
  store i64 0, ptr %i.r, align 8, !dbg !55992
  store i64 %.sroa.048.2, ptr %i.s, align 8, !dbg !55993
  %i.aw = call noundef ptr @_RNvYNtNtCseeLknQCOKOd_13polars_python4file16PyFileLikeObjectNtNtCsh8eZTKRCwoO_3std2io4Read8read_bufB6_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a), !dbg !55994 ; 2 uses
  %.not60108 = icmp eq ptr %i.aw, null, !dbg !55995
  br i1 %.not60108, label %.split94._crit_edge, label %.lr.ph, !dbg !55996

.lr.ph:                                           ; preds = %bb.m, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit
  %i.ax = phi ptr [ %i.cf, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit ], [ %i.aw, %bb.m ] ; 10 uses
  %i.ay = ptrtoint ptr %i.ax to i64, !dbg !55997  ; 3 uses
  %i.az = and i64 %i.ay, 3, !dbg !55998
  switch i64 %i.az, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.n
    i64 0, label %.split94
    i64 1, label %.split93
  ], !dbg !55999, !prof !4782

default.unreachable:                              ; preds = %.lr.ph
  unreachable

.split94._crit_edge.loopexit:                     ; preds = %.split94, %.split93, %.split, %bb.n, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit
  %.lcssa100.ph = phi ptr [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit ], [ %i.ax, %bb.n ], [ %i.ax, %.split ], [ %i.ax, %.split93 ], [ %i.ax, %.split94 ]
  %.not60.lcssa.ph = phi i1 [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit ], [ false, %bb.n ], [ false, %.split ], [ false, %.split93 ], [ false, %.split94 ]
  %i.ba = ptrtoint ptr %.lcssa100.ph to i64, !dbg !56000
  br label %.split94._crit_edge, !dbg !56001

.split94._crit_edge:                              ; preds = %.split94._crit_edge.loopexit, %bb.m
  %.lcssa100 = phi i64 [ 0, %bb.m ], [ %i.ba, %.split94._crit_edge.loopexit ], !dbg !55994
  %.not60.lcssa = phi i1 [ true, %bb.m ], [ %.not60.lcssa.ph, %.split94._crit_edge.loopexit ], !dbg !55995
  %i.bb = load i64, ptr %i.r, align 8, !dbg !56001, !noundef !4270 ; 5 uses
  %i.bc = load i64, ptr %i.s, align 8, !dbg !56002, !noundef !4270 ; 2 uses
  %i.bd = sub nuw i64 %i.bc, %i.bb, !dbg !56003
  %i.be = icmp ne i64 %i.bc, %.sroa.0.0.i, !dbg !56004
  %i.bf = load i64, ptr %i.b, align 8, !dbg !56005, !noundef !4270 ; 2 uses
  %i.bg = icmp sgt i64 %i.bf, -1, !dbg !56006
  call void @llvm.assume(i1 %i.bg), !dbg !56007
  %i.bh = add i64 %i.bf, %i.bb, !dbg !56008       ; 3 uses
  store i64 %i.bh, ptr %i.b, align 8, !dbg !56009
  br i1 %.not60.lcssa, label %bb.u, label %.loopexit139, !dbg !56010

.split:                                           ; preds = %.lr.ph
  %.mask97 = and i64 %i.ay, -4294967296, !dbg !56011
  %i.bi = icmp eq i64 %.mask97, 17179869184, !dbg !56011
  br i1 %i.bi, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %.split94._crit_edge.loopexit, !dbg !56012

.split94:                                         ; preds = %.lr.ph
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ax, i64 16, !dbg !56013
  %i.bk = load i8, ptr %i.bj, align 8, !dbg !56013, !range !4789, !noundef !4270
  %i.bl = icmp eq i8 %i.bk, 35, !dbg !56014
  br i1 %i.bl, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %.split94._crit_edge.loopexit, !dbg !56012

.split93:                                         ; preds = %.lr.ph
  %i.bm = getelementptr i8, ptr %i.ax, i64 -1, !dbg !56015 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bm) ]
  %i.bn = getelementptr i8, ptr %i.ax, i64 15, !dbg !56016
  %i.bo = load i8, ptr %i.bn, align 8, !dbg !56016, !range !4789, !noundef !4270
  %i.bp = icmp eq i8 %i.bo, 35, !dbg !56017
  br i1 %i.bp, label %bb.o, label %.split94._crit_edge.loopexit, !dbg !56012

bb.n:                                             ; preds = %.lr.ph
  %i.bq = icmp ult ptr %i.ax, inttoptr (i64 180388626432 to ptr), !dbg !56018
  call void @llvm.assume(i1 %i.bq), !dbg !56019
  %.mask = and i64 %i.ay, -4294967296, !dbg !56020
  %i.br = icmp eq i64 %.mask, 150323855360, !dbg !56020
  br i1 %i.br, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %.split94._crit_edge.loopexit, !dbg !56012

bb.o:                                             ; preds = %.split93
  %.val.i.i.i.i.i = load ptr, ptr %i.bm, align 8, !dbg !56021 ; 5 uses
  %i.bs = getelementptr i8, ptr %i.ax, i64 7, !dbg !56021
  %.val1.i.i.i.i.i = load ptr, ptr %i.bs, align 8, !dbg !56021, !nonnull !4270, !align !4488, !noundef !4270 ; 5 uses
  %i.bt = load ptr, ptr %.val1.i.i.i.i.i, align 8, !dbg !56022, !invariant.load !4270 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bt, null, !dbg !56022
  br i1 %.not.i.i.i.i.i.i.i, label %bb.q, label %bb.p, !dbg !56022

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  invoke void %i.bt(ptr noundef nonnull %.val.i.i.i.i.i)
          to label %bb.q unwind label %bb.s, !dbg !56022

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !56023
  %i.bv = load i64, ptr %i.bu, align 8, !dbg !56023, !range !4635, !invariant.load !4270 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 0, !dbg !56024
  br i1 %i.bw, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i, label %bb.r, !dbg !56024

bb.r:                                             ; preds = %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16, !dbg !56023
  %i.by = load i64, ptr %i.bx, align 8, !dbg !56025, !range !4615, !invariant.load !4270
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.bv, i64 noundef range(i64 1, 536870913) %i.by) #53, !dbg !56026
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECseeLknQCOKOd_13polars_python.exit.i.i.i.i, !dbg !56027

bb.s:                                             ; preds = %bb.p
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !56028
  %i.cb = load i64, ptr %i.ca, align 8, !dbg !56028, !range !4635, !invariant.load !4270 ; 2 uses
end_hunk_4
begin_hunk_5_@_RNvMNtNtCseeLknQCOKOd_13polars_python9dataframe3mapNtB4_11PyDataFrame8map_rows:.noexc
  %.not215 = icmp eq i64 %i.ei, 18, !dbg !188936
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bu, i64 8, !dbg !188937
  %i.ek = load ptr, ptr %i.ej, align 8, !dbg !188937 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.bu, i64 16, !dbg !188937
  %i.em = load ptr, ptr %i.el, align 8, !dbg !188937 ; 2 uses
  br i1 %.not215, label %bb.ad, label %bb.al, !dbg !188938

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !dbg !188939
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !dbg !188940
  store i64 0, ptr %i.bs, align 8, !dbg !188941, !alias.scope !188581, !noalias !188582
  %.sroa.4.0..sroa_idx.i243 = getelementptr inbounds nuw i8, ptr %i.bs, i64 8, !dbg !188941
  store ptr %i.ek, ptr %.sroa.4.0..sroa_idx.i243, align 8, !dbg !188941, !alias.scope !188581, !noalias !188582
  %.sroa.5.0..sroa_idx.i244 = getelementptr inbounds nuw i8, ptr %i.bs, i64 16, !dbg !188941
  store ptr %i.em, ptr %.sroa.5.0..sroa_idx.i244, align 8, !dbg !188941, !alias.scope !188581, !noalias !188582
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !dbg !188942, !noalias !188583
  invoke void @_RNvXs7_NtCseeLknQCOKOd_13polars_python6seriesNtB5_8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion12IntoPyObject13into_pyobject(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.ao, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bs)
          to label %.noexc246 unwind label %bb.aa, !dbg !188943

.noexc246:                                        ; preds = %bb.ad
  %i.en = load i64, ptr %i.ao, align 8, !dbg !188942, !range !4437, !noalias !188583, !noundef !4270
  %i.eo = trunc nuw i64 %i.en to i1, !dbg !188944
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ao, i64 8, !dbg !188945
  %.sroa.5304.8.copyload = load ptr, ptr %i.ep, align 8, !dbg !188945, !noalias !188584
  %.sroa.2158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !188946 ; 2 uses
  br i1 %i.eo, label %bb.ae, label %bb.af, !dbg !188944

bb.ae:                                            ; preds = %.noexc246
  %.sroa.9305.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16, !dbg !188947
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.2158.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.9305.8..sroa_idx, i64 56, i1 false), !dbg !188947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !dbg !188948, !noalias !188583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !dbg !188949
  br label %bb.ag, !dbg !188950

bb.af:                                            ; preds = %.noexc246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !dbg !188948, !noalias !188583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !dbg !188949
  store i8 0, ptr %.sroa.2158.0..sroa_idx, align 8, !dbg !188951
  br label %bb.ag, !dbg !188952

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %storemerge = phi i64 [ 1, %bb.ae ], [ 0, %bb.af ], !dbg !188946
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !188946
  store ptr %.sroa.5304.8.copyload, ptr %i.eq, align 8, !dbg !188946
  store i64 %storemerge, ptr %0, align 8, !dbg !188946
  br label %bb.ah, !dbg !188953

bb.ah:                                            ; preds = %bb.am, %bb.ag
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %bb.aj unwind label %bb.ai, !dbg !188954

bb.ai:                                            ; preds = %bb.ah
  %i.er = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %.thread365 unwind label %bb.ak, !dbg !188955

bb.aj:                                            ; preds = %bb.ah
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEECseeLknQCOKOd_13polars_python.exit unwind label %.thread369, !dbg !188956

bb.ak:                                            ; preds = %bb.ai
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #52, !dbg !188954
  unreachable, !dbg !188954

bb.al:                                            ; preds = %bb.ac
  %.sroa.4335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 24, !dbg !188957
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 24, !dbg !188958
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !dbg !188959
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.443.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4335.0..sroa_idx, i64 48, i1 false), !dbg !188957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !dbg !188939
  store i64 %i.ei, ptr %i.bc, align 8, !dbg !188958
  %.sroa.242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8, !dbg !188958
  store ptr %i.ek, ptr %.sroa.242.0..sroa_idx, align 8, !dbg !188958
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 16, !dbg !188958
  store ptr %i.em, ptr %.sroa.3.0..sroa_idx, align 8, !dbg !188958
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !dbg !188960
  invoke void @_RNvXs2_NtCseeLknQCOKOd_13polars_python5errorNtNtCsbm5zPlkZccl_4pyo33err5PyErrINtNtCscgRAwXFJnXP_4core7convert4FromNtB5_11PyPolarsErrE4from(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.bb, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.bc)
          to label %bb.am unwind label %bb.aa, !dbg !188960

bb.am:                                            ; preds = %bb.al
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !188961
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.et, ptr noundef nonnull align 8 dereferenceable(64) %i.bb, i64 64, i1 false), !dbg !188961
  store i64 1, ptr %0, align 8, !dbg !188961
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !dbg !188962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !dbg !188959
  br label %bb.ah, !dbg !188963

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.aj, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !dbg !188925
  br label %bb.u, !dbg !188924

bb.an:                                            ; preds = %bb.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB1t_5types3any5PyAnyENtNtB1t_3err5PyErrEEECseeLknQCOKOd_13polars_python.exit
  %.sroa.051.0 = phi i64 [ %i.fc, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB1t_5types3any5PyAnyENtNtB1t_3err5PyErrEEECseeLknQCOKOd_13polars_python.exit ], [ 0, %bb.i ], !dbg !188964 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188589), !dbg !188965
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !188966
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188591), !dbg !188967
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188594), !dbg !188967
  %i.eu = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !188968, !alias.scope !188595, !noalias !188596, !noundef !4270 ; 2 uses
  %i.ev = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !188969, !alias.scope !188597, !noalias !188598, !noundef !4270
  %i.ew = icmp ult i64 %i.eu, %i.ev, !dbg !188968
  br i1 %i.ew, label %bb.ao, label %bb.ap, !dbg !188967

bb.ao:                                            ; preds = %bb.an
  %i.ex = add nuw i64 %i.eu, 1, !dbg !188970
  store i64 %i.ex, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !188971, !alias.scope !188599, !noalias !188600
  invoke fastcc void @_RNCNvMNtNtCseeLknQCOKOd_13polars_python9dataframe3mapNtB6_11PyDataFrame8map_rowss0_0B8_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.an, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.dj) #56
          to label %bb.ar unwind label %.body289.thread388.loopexit, !dbg !188972

bb.ap:                                            ; preds = %bb.an
  store i64 2, ptr %i.an, align 8, !dbg !188973, !noalias !188601
  br label %bb.ar, !dbg !188974

.thread435:                                       ; preds = %bb.fg, %bb.fc, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEECseeLknQCOKOd_13polars_python.exit.i162.i
  %lpad.thr_comm433 = landingpad { ptr, i32 }
          cleanup
  br label %.thread365, !dbg !188975

bb.aq:                                            ; preds = %bb.bb
  %lpad.thr_comm.split-lp434 = landingpad { ptr, i32 }
          cleanup
  br label %.body289.thread388, !dbg !188975

.body289.thread388.loopexit:                      ; preds = %bb.ao
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body289.thread388

.body289.thread388.loopexit.split-lp:             ; preds = %bb.at, %bb.au, %bb.ay, %bb.az, %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit, %bb.gt
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body289.thread388

.body289:                                         ; preds = %bb.fi, %bb.ge, %bb.gm
  %lpad.thr_comm.split-lp387 = landingpad { ptr, i32 }
          cleanup
  br label %.thread365, !dbg !188975

bb.ar:                                            ; preds = %bb.ao, %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.br, ptr noundef nonnull align 8 dereferenceable(72) %i.an, i64 72, i1 false), !dbg !188976, !noalias !188589
  %i.ey = load i64, ptr %i.br, align 8, !dbg !188977, !range !4814, !noundef !4270 ; 3 uses
  %i.ez = icmp ne i64 %i.ey, 3, !dbg !188977
  tail call void @llvm.assume(i1 %i.ez), !dbg !188978
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !188979
  %cond = icmp eq i64 %i.ey, 0, !dbg !188980
  %i.fa = load ptr, ptr %.sroa.3161.0..sroa_idx, align 8 ; 3 uses
  %i.fb = icmp eq ptr %i.fa, @_Py_NoneStruct
  %or.cond = select i1 %cond, i1 %i.fb, i1 false, !dbg !188980
  br i1 %or.cond, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB1t_5types3any5PyAnyENtNtB1t_3err5PyErrEEECseeLknQCOKOd_13polars_python.exit, label %bb.as, !dbg !188980

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB1t_5types3any5PyAnyENtNtB1t_3err5PyErrEEECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.ar
  %i.fc = add i64 %.sroa.051.0, 1, !dbg !188981
  store i64 3, ptr %i.br, align 8, !dbg !188982
  tail call void @_Py_DecRef(ptr noundef nonnull %i.fa) #53, !dbg !188983, !noalias !188607
  br label %bb.an, !dbg !188878

bb.as:                                            ; preds = %bb.ar
  switch i64 %i.ey, label %bb.aw [
    i64 2, label %bb.at
    i64 0, label %bb.ba
  ], !dbg !188984

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !dbg !188985
  invoke void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromReE4fromCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bq, ptr noalias noundef nonnull readonly captures(address, read_provenance) @515, i64 noundef 131, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @516)
          to label %bb.au unwind label %.body289.thread388.loopexit.split-lp, !dbg !188986

bb.au:                                            ; preds = %bb.at
  %.sroa.2307.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 8, !dbg !188987
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2307.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 24, i1 false), !dbg !188988
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !dbg !188989
  store i64 2, ptr %i.ay, align 8, !dbg !188987, !alias.scope !188616
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !dbg !188990
  invoke void @_RNvXs2_NtCseeLknQCOKOd_13polars_python5errorNtNtCsbm5zPlkZccl_4pyo33err5PyErrINtNtCscgRAwXFJnXP_4core7convert4FromNtB5_11PyPolarsErrE4from(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ax, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.ay)
          to label %bb.av unwind label %.body289.thread388.loopexit.split-lp, !dbg !188990

bb.av:                                            ; preds = %bb.au
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !188991
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fd, ptr noundef nonnull align 8 dereferenceable(64) %i.ax, i64 64, i1 false), !dbg !188991
  store i64 1, ptr %0, align 8, !dbg !188991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !dbg !188992
  br label %bb.gv, !dbg !188993

bb.aw:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !dbg !188994
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !dbg !188995
  %i.fe = getelementptr inbounds nuw i8, ptr %i.br, i64 64, !dbg !188996
  %i.ff = load atomic i32, ptr %i.fe acquire, align 8, !dbg !188997
  %i.fg = icmp eq i32 %i.ff, 0, !dbg !188998
  br i1 %i.fg, label %bb.ax, label %bb.ay, !dbg !188998, !prof !4383

bb.ax:                                            ; preds = %bb.aw
  %i.fh = getelementptr inbounds nuw i8, ptr %i.br, i64 24, !dbg !188999
  %i.fi = load i64, ptr %i.fh, align 8, !dbg !189000, !range !4437, !noundef !4270
  %i.fj = trunc nuw i64 %i.fi to i1, !dbg !189001
  %i.fk = getelementptr inbounds nuw i8, ptr %i.br, i64 32 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8
  %.not.i258 = icmp ne ptr %i.fl, null
  %or.cond440.not = select i1 %i.fj, i1 %.not.i258, i1 false, !dbg !189001, !prof !4833
  br i1 %or.cond440.not, label %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit, label %bb.az, !dbg !189001, !prof !4833

bb.ay:                                            ; preds = %bb.aw
  %i.fm = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState15make_normalized(ptr noundef nonnull align 8 %.sroa.3161.0..sroa_idx)
          to label %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit unwind label %.body289.thread388.loopexit.split-lp, !dbg !189002

bb.az:                                            ; preds = %bb.ax
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @547) #55
          to label %.noexc260 unwind label %.body289.thread388.loopexit.split-lp, !dbg !189003

.noexc260:                                        ; preds = %bb.az
  unreachable, !dbg !189003

bb.ba:                                            ; preds = %bb.as
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fa, i64 8, !dbg !189004
  %i.fo = load ptr, ptr %i.fn, align 8, !dbg !189004, !noalias !188625, !noundef !4270
  %i.fp = tail call noundef i64 @PyType_GetFlags(ptr noundef %i.fo) #53, !dbg !189005, !noalias !188625
  %i.fq = and i64 %i.fp, 67108864, !dbg !189006
  %.not.i261 = icmp eq i64 %i.fq, 0, !dbg !189007
  br i1 %.not.i261, label %bb.fi, label %bb.bb, !dbg !189008

bb.bb:                                            ; preds = %bb.ba
  %i.fr = invoke noundef i64 @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types5tupleINtNtB8_8instance5BoundNtB4_7PyTupleENtB4_14PyTupleMethods3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.3161.0..sroa_idx)
          to label %bb.bc unwind label %bb.aq, !dbg !189009

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.661), !dbg !188773
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.667), !dbg !188773
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !dbg !188773
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !dbg !189010
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.bo, ptr noundef nonnull align 8 dereferenceable(120) %i.br, i64 120, i1 false), !dbg !189010
  call void @llvm.experimental.noalias.scope.decl(metadata !188626), !dbg !188773
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !189011
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !189011
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !189011
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !dbg !189011
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !dbg !189011, !noalias !188627
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !dbg !189012, !noalias !188627
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !189013, !noalias !188627
  store i8 0, ptr %i.ak, align 16, !dbg !189013, !noalias !188627
  invoke void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.al, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(48) %i.ak, i64 noundef %i.fr)
          to label %bb.be unwind label %bb.fa, !dbg !189014, !noalias !188627

.body134.thread196.i:                             ; preds = %.body134.thread.i, %bb.ea, %.body134.i, %bb.bf, %bb.bd
  %.pn48.pn.i = phi { ptr, i32 } [ %i.md, %bb.ea ], [ %.pn.i, %bb.bf ], [ %i.fs, %bb.bd ], [ %lpad.thr_comm.split-lp200.i, %.body134.i ], [ %.pn48193.i, %.body134.thread.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame3row3RowECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.aj) #50
          to label %.body136.i unwind label %bb.ei, !dbg !189015, !noalias !188627

bb.bd:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame3row3RowEECseeLknQCOKOd_13polars_python.exit150.i
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %.body134.thread196.i

bb.be:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !189012, !noalias !188627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !dbg !189016, !noalias !188627
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !189017, !noalias !188627
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !189018, !noalias !188627
  store i64 0, ptr %i.aj, align 8, !dbg !189019, !noalias !188627
  %.sroa.427.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !189019
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.427.0..sroa_idx.i, align 8, !dbg !189019, !noalias !188627
  %.sroa.5.0..sroa_idx.i264 = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !189019
  store i64 0, ptr %.sroa.5.0..sroa_idx.i264, align 8, !dbg !189019, !noalias !188627
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !189020, !noalias !188627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ai, ptr noundef nonnull align 8 dereferenceable(120) %i.bo, i64 120, i1 false), !dbg !189021, !noalias !188626
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ai, i64 120, !dbg !189022 ; 2 uses
  store ptr %i.am, ptr %i.ft, align 8, !dbg !189022, !alias.scope !188632, !noalias !188633
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ai, i64 128, !dbg !189022 ; 2 uses
  store ptr %i.aj, ptr %i.fu, align 8, !dbg !189022, !alias.scope !188632, !noalias !188633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !dbg !189023, !noalias !188627
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !189024, !noalias !188627
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, i64 noundef %4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %bb.bg unwind label %.body134.thread201.i, !dbg !189024, !noalias !188627

bb.bf:                                            ; preds = %.body59.i
  br i1 %.sroa.024.2.i, label %.body134.thread.i, label %.body134.thread196.i, !dbg !189025

.body134.thread201.i:                             ; preds = %bb.el, %bb.bh, %bb.be
  %lpad.thr_comm199.i = landingpad { ptr, i32 }
          cleanup
  br label %.body134.thread.i, !dbg !189025

.body134.i:                                       ; preds = %bb.eb
  %lpad.thr_comm.split-lp200.i = landingpad { ptr, i32 }
          cleanup
  br label %.body134.thread196.i, !dbg !189025

bb.bg:                                            ; preds = %bb.be
  %i.fv = load i64, ptr %i.ab, align 8, !dbg !189024, !range !4437, !noalias !188627, !noundef !4270
  %i.fw = trunc nuw i64 %i.fv to i1, !dbg !189026
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8, !dbg !189027
  %i.fy = load i64, ptr %i.fx, align 8, !dbg !189027, !range !4483, !noalias !188627, !noundef !4270 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ab, i64 16, !dbg !189027 ; 2 uses
  br i1 %i.fw, label %bb.bh, label %bb.bi, !dbg !189026, !prof !4282

bb.bh:                                            ; preds = %bb.bg
  %i.ga = load i64, ptr %i.fz, align 8, !dbg !189028, !noalias !188627
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.fy, i64 %i.ga) #51
          to label %bb.ez unwind label %.body134.thread201.i, !dbg !189029, !noalias !188627

bb.bi:                                            ; preds = %bb.bg
  %i.gb = load ptr, ptr %i.fz, align 8, !dbg !189030, !noalias !188627, !nonnull !4270, !noundef !4270
  %i.gc = icmp ule i64 %4, %i.fy, !dbg !189031
  call void @llvm.assume(i1 %i.gc), !dbg !189032
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !189033, !noalias !188627
  store i64 %i.fy, ptr %i.ah, align 8, !dbg !189034, !noalias !188627
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ah, i64 8, !dbg !189034 ; 4 uses
  store ptr %i.gb, ptr %i.gd, align 8, !dbg !189034, !noalias !188627
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ah, i64 16, !dbg !189034 ; 5 uses
  store i64 0, ptr %i.ge, align 8, !dbg !189034, !noalias !188627
  %i.gf = icmp eq i64 %4, 0, !dbg !189035
  br i1 %i.gf, label %.loopexit.i, label %.lr.ph.i, !dbg !189035

.lr.ph.i:                                         ; preds = %bb.bi
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ai, i64 104 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ai, i64 112
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  br label %bb.bj, !dbg !189035

bb.bj:                                            ; preds = %bb.eu, %.lr.ph.i
  %.pre221.i = phi i64 [ 0, %.lr.ph.i ], [ %i.mu, %bb.eu ]
  %.sroa.0.0212.i = phi i64 [ %4, %.lr.ph.i ], [ %i.gj, %bb.eu ]
  %i.gj = add nsw i64 %.sroa.0.0212.i, -1, !dbg !189036 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ai, align 8, !dbg !189037, !alias.scope !188635, !noalias !188636 ; 3 uses
  store i64 3, ptr %i.ai, align 8, !dbg !189038, !alias.scope !188635, !noalias !188636
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 3, !dbg !189039
  br i1 %.not.i.i, label %bb.bl, label %bb.bk, !dbg !189040

bb.bk:                                            ; preds = %bb.bj
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.z, align 8, !dbg !189041, !noalias !188627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx2.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx.i.i, i64 64, i1 false), !dbg !189041, !noalias !188627
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCseeLknQCOKOd_13polars_python9dataframe3mapNtB1U_11PyDataFrame8map_rowss0_0EENtNtNtB8_6traits8iterator8Iterator4nextB1W_.exit.i, !dbg !189042

bb.bl:                                            ; preds = %bb.bj
  call void @llvm.experimental.noalias.scope.decl(metadata !188637), !dbg !189043
  call void @llvm.experimental.noalias.scope.decl(metadata !188638), !dbg !189043
  %i.gk = load i64, ptr %i.gg, align 8, !dbg !189044, !alias.scope !188639, !noalias !188640, !noundef !4270 ; 2 uses
  %i.gl = load i64, ptr %i.gh, align 8, !dbg !189045, !alias.scope !188641, !noalias !188642, !noundef !4270
  %i.gm = icmp ult i64 %i.gk, %i.gl, !dbg !189044
  br i1 %i.gm, label %bb.bm, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCseeLknQCOKOd_13polars_python9dataframe3mapNtB1U_11PyDataFrame8map_rowss0_0EENtNtNtB8_6traits8iterator8Iterator4nextB1W_.exit.thread.i, !dbg !189043

bb.bm:                                            ; preds = %bb.bl
  %i.gn = add nuw i64 %i.gk, 1, !dbg !189046
  store i64 %i.gn, ptr %i.gg, align 8, !dbg !189047, !alias.scope !188643, !noalias !188644
  invoke fastcc void @_RNCNvMNtNtCseeLknQCOKOd_13polars_python9dataframe3mapNtB6_11PyDataFrame8map_rowss0_0B8_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.gi) #56
          to label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCseeLknQCOKOd_13polars_python9dataframe3mapNtB1U_11PyDataFrame8map_rowss0_0EENtNtNtB8_6traits8iterator8Iterator4nextB1W_.exitthread-pre-split.i unwind label %.loopexit205.i, !dbg !189048

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCseeLknQCOKOd_13polars_python9dataframe3mapNtB1U_11PyDataFrame8map_rowss0_0EENtNtNtB8_6traits8iterator8Iterator4nextB1W_.exit.thread.i: ; preds = %bb.bl
  store i64 2, ptr %i.z, align 8, !dbg !189049, !noalias !188627
  br label %.loopexit.i, !dbg !189050

.loopexit.i:                                      ; preds = %bb.eu, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCseeLknQCOKOd_13polars_python9dataframe3mapNtB1U_11PyDataFrame8map_rowss0_0EENtNtNtB8_6traits8iterator8Iterator4nextB1W_.exit.thread.i, %.loopexit206.loopexit.i, %bb.bi
  %i.go = phi i64 [ %.pre221.i, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCseeLknQCOKOd_13polars_python9dataframe3mapNtB1U_11PyDataFrame8map_rowss0_0EENtNtNtB8_6traits8iterator8Iterator4nextB1W_.exit.thread.i ], [ 0, %bb.bi ], [ %.pre.pre.i, %.loopexit206.loopexit.i ], [ %i.mu, %bb.eu ], !dbg !189051
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !189052, !noalias !188627
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.620.i), !dbg !189053
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !dbg !189053, !noalias !188627
  %i.gp = load ptr, ptr %i.gd, align 8, !dbg !189054, !noalias !188627, !nonnull !4270, !noundef !4270
  invoke void @_RNvNtNtCs1LHh8CLbVkQ_11polars_core5frame3row29rows_to_schema_first_non_null(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.gp, i64 noundef %i.go, i64 noundef 1, i64 50)
          to label %bb.bo unwind label %.loopexit.split-lp.i, !dbg !189053, !noalias !188627

.body59.i:                                        ; preds = %bb.es, %bb.ct, %bb.cs, %.body.i, %.loopexit.split-lp.i, %.loopexit205.i
  %.sroa.024.2.i = phi i1 [ false, %.body.i ], [ false, %bb.cs ], [ true, %bb.es ], [ false, %bb.ct ], [ true, %.loopexit205.i ], [ %.sroa.024.3.ph.i, %.loopexit.split-lp.i ], !dbg !189055
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.jf, %bb.cs ], [ %i.mq, %bb.es ], [ %i.jg, %bb.ct ], [ %lpad.loopexit.i, %.loopexit205.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame3row3RowEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.ah) #50
          to label %bb.bf unwind label %bb.ei, !dbg !189056, !noalias !188627

.loopexit205.i:                                   ; preds = %bb.bm, %bb.ep, %bb.bn
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body59.i

.loopexit.split-lp.i:                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECseeLknQCOKOd_13polars_python.exit.i.i, %.loopexit.i
  %.sroa.024.3.ph.i = phi i1 [ true, %.loopexit.i ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECseeLknQCOKOd_13polars_python.exit.i.i ]
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body59.i

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCseeLknQCOKOd_13polars_python9dataframe3mapNtB1U_11PyDataFrame8map_rowss0_0EENtNtNtB8_6traits8iterator8Iterator4nextB1W_.exitthread-pre-split.i: ; preds = %bb.bm
  %.pr.i = load i64, ptr %i.z, align 8, !dbg !189057, !noalias !188627
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCseeLknQCOKOd_13polars_python9dataframe3mapNtB1U_11PyDataFrame8map_rowss0_0EENtNtNtB8_6traits8iterator8Iterator4nextB1W_.exit.i, !dbg !189058

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCseeLknQCOKOd_13polars_python9dataframe3mapNtB1U_11PyDataFrame8map_rowss0_0EENtNtNtB8_6traits8iterator8Iterator4nextB1W_.exit.i: ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCseeLknQCOKOd_13polars_python9dataframe3mapNtB1U_11PyDataFrame8map_rowss0_0EENtNtNtB8_6traits8iterator8Iterator4nextB1W_.exitthread-pre-split.i, %bb.bk
  %i.gq = phi i64 [ %.pr.i, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCseeLknQCOKOd_13polars_python9dataframe3mapNtB1U_11PyDataFrame8map_rowss0_0EENtNtNtB8_6traits8iterator8Iterator4nextB1W_.exitthread-pre-split.i ], [ %.sroa.0.0.copyload.i.i, %bb.bk ], !dbg !189057
  %.not.i265 = icmp eq i64 %i.gq, 2, !dbg !189057
  br i1 %.not.i265, label %.loopexit206.loopexit.i, label %bb.bn, !dbg !189050

bb.bn:                                            ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCseeLknQCOKOd_13polars_python9dataframe3mapNtB1U_11PyDataFrame8map_rowss0_0EENtNtNtB8_6traits8iterator8Iterator4nextB1W_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !189059, !noalias !188627
  %.val.i266 = load ptr, ptr %i.ft, align 8, !dbg !189060, !noalias !188627
  %.val53.i = load ptr, ptr %i.fu, align 8, !dbg !189060, !noalias !188627
  invoke fastcc void @_RNCINvNtNtCseeLknQCOKOd_13polars_python9dataframe3map35collect_lambda_ret_with_rows_outputINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters8peekable8PeekableINtNtB1v_3map3MapINtNtNtB1z_3ops5range5RangejENCNvMB4_NtB6_11PyDataFrame8map_rowss0_0EEE0B8_(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.aa, ptr %.val.i266, ptr %.val53.i, ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %i.z)
          to label %bb.en unwind label %.loopexit205.i, !dbg !189060, !noalias !188627

.loopexit206.loopexit.i:                          ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCseeLknQCOKOd_13polars_python9dataframe3mapNtB1U_11PyDataFrame8map_rowss0_0EENtNtNtB8_6traits8iterator8Iterator4nextB1W_.exit.i
  %.pre.pre.i = load i64, ptr %i.ge, align 8, !dbg !189051, !noalias !188627
  br label %.loopexit.i, !dbg !189058
end_hunk_5
