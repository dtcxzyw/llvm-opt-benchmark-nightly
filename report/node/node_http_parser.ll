inline.NumInlined: 2487
inline.NumDeleted: 973
begin_hunk_0

$_ZN4node14StreamListener15OnStreamDestroyEv = comdat any

$_ZN4node11http_parser6Parser7ExecuteEPKcm = comdat any

$_ZN4node11http_parser6Parser4SaveEv = comdat any
end_hunk_0
begin_hunk_1
@.str.118 = private unnamed_addr constant [25 x i8] c"../../src/util-inl.h:300\00", align 1
@.str.119 = private unnamed_addr constant [29 x i8] c"!(n > 0) || (ret != nullptr)\00", align 1
@.str.120 = private unnamed_addr constant [35 x i8] c"T *node::Malloc(size_t) [T = char]\00", align 1
@_ZZN4node14StreamListener31PassReadErrorToPreviousListenerElE20error_and_abort_args = linkonce_odr dso_local constant %"struct.node::AssertionInfo" { ptr @.str.125, ptr @.str.126, ptr @.str.127 }, comdat, align 8
@.str.125 = private unnamed_addr constant [31 x i8] c"../../src/stream_base-inl.h:56\00", align 1
@.str.126 = private unnamed_addr constant [32 x i8] c"(previous_listener_) != nullptr\00", align 1
end_hunk_1
begin_hunk_2_@_ZN4node11http_parser6Parser13OnStreamAllocEm:bb.a

bb.e:                                             ; preds = %bb.a
  store i8 1, ptr %i.c, align 8
  %i.j = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %2, label %bb.g

2:                                                ; preds = %bb.e
  %3 = ptrtoint ptr %i.l to i64
  %4 = getelementptr inbounds nuw i8, ptr %i.j, i64 64 ; 2 uses
  %5 = load ptr, ptr %4, align 8
  %6 = ptrtoint ptr %5 to i64
  %7 = sub i64 %6, %3                             ; 3 uses
  %8 = icmp sgt i64 %7, -1
  tail call void @llvm.assume(i1 %8)
  %.not23.i.i = icmp samesign ult i64 %7, 65536
  br i1 %.not23.i.i, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i.i, label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit.i.i

_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit.i.i: ; preds = %2
  %9 = getelementptr i8, ptr %i.n, i64 65536
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(65536) %i.n, i8 0, i64 65536, i1 false)
  store ptr %9, ptr %i.m, align 8
  br label %bb.g

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i.i: ; preds = %2
  %10 = tail call noalias noundef nonnull dereferenceable(65536) ptr @_Znwm(i64 noundef 65536) #27 ; 3 uses
  %.not.i27.i.i = icmp eq ptr %i.l, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(65536) %10, i8 0, i64 65536, i1 false)
  br i1 %.not.i27.i.i, label %bb.f, label %11

11:                                               ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %7) #28
  br label %bb.f

bb.f:                                             ; preds = %11, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i.i
  store ptr %10, ptr %i.k, align 8
  %12 = getelementptr inbounds nuw i8, ptr %10, i64 65536 ; 2 uses
  store ptr %12, ptr %i.m, align 8
  store ptr %12, ptr %4, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit.i.i, %bb.e
  %13 = load ptr, ptr %i.a, align 8
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 48
  %15 = load ptr, ptr %14, align 8
  %i.p = tail call { ptr, i64 } @uv_buf_init(ptr noundef %15, i32 noundef 65536) #25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN4node6MallocEm.exit
end_hunk_2
begin_hunk_3_@_ZN4node10BaseObject17decrease_refcountEv

declare { ptr, i64 } @uv_buf_init(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #17

end_hunk_3
