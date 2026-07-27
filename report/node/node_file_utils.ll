inline.NumInlined: 185
inline.NumDeleted: 125
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.node::AssertionInfo" = type { ptr, ptr, ptr }
%struct.uv_buf_t = type { ptr, i64 }
%struct.uv_fs_s = type { ptr, i32, [6 x ptr], i32, ptr, ptr, i64, ptr, ptr, %struct.uv_stat_t, ptr, i32, i32, i32, i32, ptr, i64, i32, i32, double, double, %struct.uv__work, [4 x %struct.uv_buf_t] }
%struct.uv_stat_t = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.uv_timespec_t, %struct.uv_timespec_t, %struct.uv_timespec_t, %struct.uv_timespec_t }
%struct.uv_timespec_t = type { i64, i64 }
%struct.uv__work = type { ptr, ptr, ptr, %struct.uv__queue }
%struct.uv__queue = type { ptr, ptr }
%"class.node::Utf8Value" = type { %"class.node::MaybeStackBuffer" }
%"class.node::MaybeStackBuffer" = type { i64, i64, ptr, [1024 x i8] }
%"class.std::vector.3" = type { %"struct.std::_Vector_base.4" }
%"struct.std::_Vector_base.4" = type { %"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl" }
%"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl" = type { %"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data" }
%"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZNSt6vectorIhSaIhEE6resizeEm = comdat any

@_ZZN4node12ReadFileSyncEP8_IO_FILEE20error_and_abort_args = internal constant %"struct.node::AssertionInfo" { ptr @.str, ptr @.str.1, ptr @.str.2 }, align 8
@.str = private unnamed_addr constant [33 x i8] c"../../src/node_file_utils.cc:234\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"(ftell(fp)) == (0)\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"std::vector<char> node::ReadFileSync(FILE *)\00", align 1
@_ZZN4node12ReadFileSyncEP8_IO_FILEE20error_and_abort_args_0 = internal constant %"struct.node::AssertionInfo" { ptr @.str.3, ptr @.str.4, ptr @.str.2 }, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"../../src/node_file_utils.cc:236\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"(err) == (0)\00", align 1
@_ZZN4node12ReadFileSyncEP8_IO_FILEE20error_and_abort_args_1 = internal constant %"struct.node::AssertionInfo" { ptr @.str.5, ptr @.str.6, ptr @.str.2 }, align 8
@.str.5 = private unnamed_addr constant [33 x i8] c"../../src/node_file_utils.cc:238\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"(size) != (static_cast<size_t>(-1L))\00", align 1
@_ZZN4node12ReadFileSyncEP8_IO_FILEE20error_and_abort_args_2 = internal constant %"struct.node::AssertionInfo" { ptr @.str.7, ptr @.str.4, ptr @.str.2 }, align 8
@.str.7 = private unnamed_addr constant [33 x i8] c"../../src/node_file_utils.cc:240\00", align 1
@_ZZN4node12ReadFileSyncEP8_IO_FILEE20error_and_abort_args_3 = internal constant %"struct.node::AssertionInfo" { ptr @.str.8, ptr @.str.9, ptr @.str.2 }, align 8
@.str.8 = private unnamed_addr constant [33 x i8] c"../../src/node_file_utils.cc:244\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"(num_read) == (1)\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"basic_string::_M_replace_aux\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN4node13WriteFileSyncEPKc8uv_buf_t(ptr noundef %0, ptr %1, i64 %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.uv_buf_t, align 8           ; 3 uses
  store ptr %1, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %2, ptr %i.a, align 8
  %i.b = call noundef i32 @_ZN4node13WriteFileSyncEPKcP8uv_buf_tm(ptr noundef %0, ptr noundef nonnull %3, i64 noundef 1)
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN4node13WriteFileSyncEPKcP8uv_buf_tm(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.uv_fs_s, align 8            ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.a = call i32 @uv_fs_open(ptr noundef null, ptr noundef nonnull %3, ptr noundef %0, i32 noundef 577, i32 noundef 384, ptr noundef null) #12 ; 5 uses
  call void @uv_fs_req_cleanup(ptr noundef nonnull %3) #12
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %_ZNSt6vectorI8uv_buf_tSaIS0_EED2Ev.exit, label %_ZNSt6vectorI8uv_buf_tSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i

_ZNSt6vectorI8uv_buf_tSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i, label %.critedge._crit_edge, label %_ZNSt6vectorI8uv_buf_tSaIS0_EEC2IPS0_vEET_S5_RKS1_.exit

_ZNSt6vectorI8uv_buf_tSaIS0_EEC2IPS0_vEET_S5_RKS1_.exit: ; preds = %_ZNSt6vectorI8uv_buf_tSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i
  %.idx = shl i64 %2, 4                           ; 6 uses
  %4 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx) #13 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %4, ptr align 8 %1, i64 %.idx, i1 false)
  %i.c = ashr exact i64 %.idx, 4                  ; 3 uses
  %.not63 = icmp samesign eq i64 %.idx, 0
  br i1 %.not63, label %.critedge._crit_edge, label %.lr.ph61

.lr.ph61:                                         ; preds = %_ZNSt6vectorI8uv_buf_tSaIS0_EEC2IPS0_vEET_S5_RKS1_.exit
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 88
  br label %bb.b

..critedge.loopexit_crit_edge:                    ; preds = %bb.g, %.thread71
  %.276 = phi i64 [ %.13058, %.thread71 ], [ %i.ab, %bb.g ]
  br label %.critedge.backedge, !llvm.loop !5

bb.b:                                             ; preds = %.lr.ph61, %.critedge.backedge
  %.02960 = phi i64 [ 0, %.lr.ph61 ], [ %.029.be, %.critedge.backedge ] ; 6 uses
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.02960 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = add nuw i64 %.02960, 1
  br label %.critedge.backedge

.critedge.backedge:                               ; preds = %bb.e, %..critedge.loopexit_crit_edge, %bb.c
  %.029.be = phi i64 [ %i.i, %bb.c ], [ %.276, %..critedge.loopexit_crit_edge ], [ %.02960, %bb.e ] ; 2 uses
  %i.j = icmp ult i64 %.029.be, %i.c
  br i1 %i.j, label %bb.b, label %.critedge._crit_edge, !llvm.loop !5

bb.d:                                             ; preds = %bb.b
  %i.k = sub i64 %2, %.02960
  %i.l = trunc i64 %i.k to i32
  %i.m = call i32 @uv_fs_write(ptr noundef null, ptr noundef nonnull %3, i32 noundef %i.a, ptr noundef nonnull %i.e, i32 noundef %i.l, i64 noundef -1, ptr noundef null) #12 ; 0 uses
  %i.n = load i64, ptr %i.d, align 8              ; 4 uses
  %i.o = icmp slt i64 %i.n, 1
  br i1 %i.o, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %.not36 = icmp eq i64 %i.n, 0
  %i.p = trunc i64 %i.n to i32
  %i.q = select i1 %.not36, i32 -5, i32 %i.p
  call void @uv_fs_req_cleanup(ptr noundef nonnull %3) #12
  %i.r = call i32 @uv_fs_close(ptr noundef null, ptr noundef nonnull %3, i32 noundef %i.a, ptr noundef null) #12 ; 0 uses
  call void @uv_fs_req_cleanup(ptr noundef nonnull %3) #12
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @uv_fs_req_cleanup(ptr noundef nonnull %3) #12
  %i.s = icmp ult i64 %.02960, %i.c
  br i1 %i.s, label %.lr.ph, label %.critedge.backedge, !llvm.loop !5

.lr.ph:                                           ; preds = %bb.e
  br label %bb.f, !llvm.loop !5

bb.f:                                             ; preds = %.lr.ph, %bb.g
  %.02759 = phi i64 [ %i.n, %.lr.ph ], [ %i.aa, %bb.g ] ; 4 uses
  %.13058 = phi i64 [ %.02960, %.lr.ph ], [ %i.ab, %bb.g ] ; 3 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.13058 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8              ; 3 uses
  %.not35 = icmp ult i64 %.02759, %i.v
  br i1 %.not35, label %.thread71, label %bb.g

.thread71:                                        ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load ptr, ptr %i.t, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %.02759
  store ptr %i.y, ptr %i.t, align 8
  %i.z = sub nuw i64 %i.v, %.02759
  store i64 %i.z, ptr %i.w, align 8
  br label %..critedge.loopexit_crit_edge

bb.g:                                             ; preds = %bb.f
  %i.aa = sub nuw nsw i64 %.02759, %i.v           ; 2 uses
  %i.ab = add nuw i64 %.13058, 1                  ; 3 uses
  %.not = icmp ne i64 %i.aa, 0
  %i.ac = icmp ult i64 %i.ab, %i.c
  %or.cond = select i1 %.not, i1 %i.ac, i1 false
  br i1 %or.cond, label %bb.f, label %..critedge.loopexit_crit_edge, !llvm.loop !7

.critedge._crit_edge:                             ; preds = %.critedge.backedge, %_ZNSt6vectorI8uv_buf_tSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i, %_ZNSt6vectorI8uv_buf_tSaIS0_EEC2IPS0_vEET_S5_RKS1_.exit
  %5 = phi i64 [ 0, %_ZNSt6vectorI8uv_buf_tSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i ], [ 0, %_ZNSt6vectorI8uv_buf_tSaIS0_EEC2IPS0_vEET_S5_RKS1_.exit ], [ %.idx, %.critedge.backedge ]
  %.sroa.038.075 = phi ptr [ null, %_ZNSt6vectorI8uv_buf_tSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i ], [ %4, %_ZNSt6vectorI8uv_buf_tSaIS0_EEC2IPS0_vEET_S5_RKS1_.exit ], [ %4, %.critedge.backedge ] ; 2 uses
  %i.ad = call i32 @uv_fs_close(ptr noundef null, ptr noundef nonnull %3, i32 noundef %i.a, ptr noundef null) #12 ; 2 uses
  call void @uv_fs_req_cleanup(ptr noundef nonnull %3) #12
  %.not.i.i.i37 = icmp eq ptr %.sroa.038.075, null
  br i1 %.not.i.i.i37, label %_ZNSt6vectorI8uv_buf_tSaIS0_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.thread, %.critedge._crit_edge
  %6 = phi i64 [ %.idx, %.thread ], [ %5, %.critedge._crit_edge ]
  %.sroa.038.074 = phi ptr [ %4, %.thread ], [ %.sroa.038.075, %.critedge._crit_edge ]
  %.052 = phi i32 [ %i.q, %.thread ], [ %i.ad, %.critedge._crit_edge ]
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.038.074, i64 noundef %6) #14
  br label %_ZNSt6vectorI8uv_buf_tSaIS0_EED2Ev.exit

_ZNSt6vectorI8uv_buf_tSaIS0_EED2Ev.exit:          ; preds = %bb.h, %.critedge._crit_edge, %bb.a
  %.1 = phi i32 [ %i.a, %bb.a ], [ %i.ad, %.critedge._crit_edge ], [ %.052, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @uv_fs_open(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @uv_fs_req_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @uv_fs_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @uv_fs_close(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN4node13WriteFileSyncEPN2v87IsolateEPKcNS0_5LocalINS0_6StringEEE(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.uv_buf_t, align 8           ; 5 uses
  %4 = alloca %"class.node::Utf8Value", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @_ZN4node9Utf8ValueC1EPN2v87IsolateENS1_5LocalINS1_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(1048) %4, ptr noundef %0, ptr %2) #12
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load i64, ptr %4, align 8
  %i.d = trunc i64 %i.c to i32
  %i.e = call { ptr, i64 } @uv_buf_init(ptr noundef %i.b, i32 noundef %i.d) #12 ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0
  %i.g = extractvalue { ptr, i64 } %i.e, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %i.f, ptr %3, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.g, ptr %i.h, align 8
  %i.i = call noundef i32 @_ZN4node13WriteFileSyncEPKcP8uv_buf_tm(ptr noundef %1, ptr noundef nonnull %3, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.j = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.k = icmp ne ptr %i.j, null
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.m = icmp ne ptr %i.j, %i.l
  %i.n = select i1 %i.k, i1 %i.m, i1 false
  br i1 %i.n, label %bb.b, label %_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  call void @free(ptr noundef nonnull %i.j) #12
  br label %_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit

_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit:    ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret i32 %i.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN4node9Utf8ValueC1EPN2v87IsolateENS1_5LocalINS1_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(1048), ptr noundef, ptr) unnamed_addr #2

declare { ptr, i64 } @uv_buf_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN4node12ReadFileSyncEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.uv_fs_s, align 8            ; 24 uses
  %3 = alloca %struct.uv_buf_t, align 8           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.a = call i32 @uv_fs_open(ptr noundef null, ptr noundef nonnull %2, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef null) #12 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = trunc i64 %i.c to i32
  call void @uv_fs_req_cleanup(ptr noundef nonnull %2) #12
  br label %"_ZN4node16ReadFileSyncImplIZNS_12ReadFileSyncEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEiS2_T_.exit"

bb.c:                                             ; preds = %bb.a
  call void @uv_fs_req_cleanup(ptr noundef nonnull %2) #12
  %i.f = call i32 @uv_fs_fstat(ptr noundef null, ptr noundef nonnull %2, i32 noundef %i.a, ptr noundef null) #12 ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @uv_fs_req_cleanup(ptr noundef nonnull %2) #12
  %i.h = call i32 @uv_fs_close(ptr noundef null, ptr noundef nonnull %2, i32 noundef %i.a, ptr noundef null) #12 ; 0 uses
  call void @uv_fs_req_cleanup(ptr noundef nonnull %2) #12
  br label %"_ZN4node16ReadFileSyncImplIZNS_12ReadFileSyncEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEiS2_T_.exit"

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  call void @uv_fs_req_cleanup(ptr noundef nonnull %2) #12
  %i.k = icmp eq i64 %i.j, 0
  %spec.store.select.i = select i1 %i.k, i64 8192, i64 %i.j ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.m = load i64, ptr %i.l, align 8              ; 7 uses
  %i.n = icmp ult i64 %i.m, %spec.store.select.i
  br i1 %i.n, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.o = sub nuw i64 %spec.store.select.i, %i.m   ; 4 uses
  %i.p = sub i64 9223372036854775807, %i.m
  %i.q = icmp ult i64 %i.p, %i.o
  br i1 %i.q, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #15
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.r = load ptr, ptr %1, align 8                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i
  %i.u = icmp ult i64 %i.m, 16
  call void @llvm.assume(i1 %i.u)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i
  %i.v = load i64, ptr %i.s, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.w = phi i64 [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i ]
  %.not.i.i.i.i.i.i = icmp ugt i64 %spec.store.select.i, %i.w
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.m, i64 noundef 0, ptr noundef null, i64 noundef %i.o)
  %.pre.i.i.i.i = load ptr, ptr %1, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  %i.x = phi ptr [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i ], [ %.pre.i.i.i.i, %bb.h ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.m ; 2 uses
  %cond.i.i.i.i.i.i = icmp eq i64 %i.o, 1
  br i1 %cond.i.i.i.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i
  store i8 0, ptr %i.y, align 1
  br label %.sink.split.i.i.i.i

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.y, i8 0, i64 %i.o, i1 false)
  br label %.sink.split.i.i.i.i

bb.k:                                             ; preds = %bb.e
  %i.z = icmp ult i64 %spec.store.select.i, %i.m
  br i1 %i.z, label %.sink.split.i.i.i.i, label %"_ZZN4node12ReadFileSyncEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clEm.exit.i"

.sink.split.i.i.i.i:                              ; preds = %bb.k, %bb.j, %bb.i
  store i64 %spec.store.select.i, ptr %i.l, align 8
  %i.aa = load ptr, ptr %1, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %spec.store.select.i
  store i8 0, ptr %i.ab, align 1
  br label %"_ZZN4node12ReadFileSyncEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clEm.exit.i"

"_ZZN4node12ReadFileSyncEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clEm.exit.i": ; preds = %.sink.split.i.i.i.i, %bb.k
  %i.ac = load ptr, ptr %1, align 8               ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.l, label %.preheader.i

.preheader.i:                                     ; preds = %"_ZZN4node12ReadFileSyncEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clEm.exit.i"
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  br label %bb.m

bb.l:                                             ; preds = %"_ZZN4node12ReadFileSyncEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clEm.exit.i"
  %i.ag = call i32 @uv_fs_close(ptr noundef null, ptr noundef nonnull %2, i32 noundef %i.a, ptr noundef null) #12 ; 0 uses
  call void @uv_fs_req_cleanup(ptr noundef nonnull %2) #12
  br label %"_ZN4node16ReadFileSyncImplIZNS_12ReadFileSyncEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEiS2_T_.exit"

bb.m:                                             ; preds = %bb.aa, %.preheader.i
  %.051.i = phi ptr [ %.253.i, %bb.aa ], [ %i.ac, %.preheader.i ] ; 2 uses
  %.049.i = phi i64 [ %i.at, %bb.aa ], [ 0, %.preheader.i ] ; 11 uses
  %.045.i = phi i64 [ %.348.i, %bb.aa ], [ %spec.store.select.i, %.preheader.i ] ; 7 uses
  %i.ah = sub i64 %.045.i, %.049.i
  %spec.store.select2.i = call i64 @llvm.umin.i64(i64 %i.ah, i64 2147483647)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.ai = getelementptr inbounds nuw i8, ptr %.051.i, i64 %.049.i
  %i.aj = trunc nuw nsw i64 %spec.store.select2.i to i32
  %i.ak = call { ptr, i64 } @uv_buf_init(ptr noundef %i.ai, i32 noundef %i.aj) #12 ; 2 uses
  %i.al = extractvalue { ptr, i64 } %i.ak, 0
  store ptr %i.al, ptr %3, align 8
  %i.am = extractvalue { ptr, i64 } %i.ak, 1
  store i64 %i.am, ptr %i.ae, align 8
  %i.an = call i32 @uv_fs_read(ptr noundef null, ptr noundef nonnull %2, i32 noundef %i.a, ptr noundef nonnull %3, i32 noundef 1, i64 noundef -1, ptr noundef null) #12 ; 0 uses
  %i.ao = load i64, ptr %i.b, align 8             ; 4 uses
  call void @uv_fs_req_cleanup(ptr noundef nonnull %2) #12
  %i.ap = icmp slt i64 %i.ao, 0
  br i1 %i.ap, label %bb.n, label %bb.o

end_hunk_0
begin_hunk_1_@_ZN4node12ReadFileSyncEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i80.i: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i78.i
  %i.cc = phi ptr [ %i.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i78.i ], [ %.pre.i.i.i82.i, %bb.ag ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.bs ; 2 uses
  %cond.i.i.i.i.i81.i = icmp eq i64 %i.bu, 1
  br i1 %cond.i.i.i.i.i81.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i80.i
  store i8 0, ptr %i.cd, align 1
  br label %.sink.split.i.i.i75.i

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i80.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.cd, i8 0, i64 %i.bu, i1 false)
  br label %.sink.split.i.i.i75.i

bb.aj:                                            ; preds = %bb.ad
  %i.ce = icmp ult i64 %.049.i, %i.bs
  br i1 %i.ce, label %.sink.split.i.i.i75.i, label %"_ZZN4node12ReadFileSyncEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clEm.exit84.i"

.sink.split.i.i.i75.i:                            ; preds = %bb.aj, %bb.ai, %bb.ah
  store i64 %.049.i, ptr %i.l, align 8
  %i.cf = load ptr, ptr %1, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.049.i
  store i8 0, ptr %i.cg, align 1
  br label %"_ZZN4node12ReadFileSyncEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clEm.exit84.i"

"_ZZN4node12ReadFileSyncEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clEm.exit84.i": ; preds = %.sink.split.i.i.i75.i, %bb.aj
  %i.ch = load ptr, ptr %1, align 8
  %i.ci = icmp eq ptr %i.ch, null
  %i.cj = icmp ne i64 %.049.i, 0
  %or.cond.i = and i1 %i.cj, %i.ci
  br i1 %or.cond.i, label %"_ZN4node16ReadFileSyncImplIZNS_12ReadFileSyncEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEiS2_T_.exit", label %bb.ak

bb.ak:                                            ; preds = %"_ZZN4node12ReadFileSyncEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clEm.exit84.i", %bb.ac
  br label %"_ZN4node16ReadFileSyncImplIZNS_12ReadFileSyncEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEiS2_T_.exit"

"_ZN4node16ReadFileSyncImplIZNS_12ReadFileSyncEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEiS2_T_.exit": ; preds = %bb.b, %bb.d, %bb.l, %.thread.i, %bb.ab, %"_ZZN4node12ReadFileSyncEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clEm.exit84.i", %bb.ak
  %.6.i = phi i32 [ %i.e, %bb.b ], [ %i.f, %bb.d ], [ -12, %bb.l ], [ %.1.ph.i, %.thread.i ], [ 0, %bb.ak ], [ %i.bq, %bb.ab ], [ -12, %"_ZZN4node12ReadFileSyncEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clEm.exit84.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret i32 %.6.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN4node12ReadFileSyncEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4node12ReadFileSyncEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %1, ptr noundef %0)
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN4node12ReadFileSyncEPKcPSt6vectorIhSaIhEE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.uv_fs_s, align 8            ; 24 uses
  %3 = alloca %struct.uv_buf_t, align 8           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.a = call i32 @uv_fs_open(ptr noundef null, ptr noundef nonnull %2, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef null) #12 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = trunc i64 %i.c to i32
  call void @uv_fs_req_cleanup(ptr noundef nonnull %2) #12
  br label %"_ZN4node16ReadFileSyncImplIZNS_12ReadFileSyncEPKcPSt6vectorIhSaIhEEE3$_0EEiS2_T_.exit"

bb.c:                                             ; preds = %bb.a
  call void @uv_fs_req_cleanup(ptr noundef nonnull %2) #12
  %i.f = call i32 @uv_fs_fstat(ptr noundef null, ptr noundef nonnull %2, i32 noundef %i.a, ptr noundef null) #12 ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @uv_fs_req_cleanup(ptr noundef nonnull %2) #12
  %i.h = call i32 @uv_fs_close(ptr noundef null, ptr noundef nonnull %2, i32 noundef %i.a, ptr noundef null) #12 ; 0 uses
  call void @uv_fs_req_cleanup(ptr noundef nonnull %2) #12
  br label %"_ZN4node16ReadFileSyncImplIZNS_12ReadFileSyncEPKcPSt6vectorIhSaIhEEE3$_0EEiS2_T_.exit"

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  call void @uv_fs_req_cleanup(ptr noundef nonnull %2) #12
  %i.k = icmp eq i64 %i.j, 0
  %spec.store.select.i = select i1 %i.k, i64 8192, i64 %i.j ; 2 uses
  call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %spec.store.select.i)
  %i.l = load ptr, ptr %1, align 8                ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.f, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = call i32 @uv_fs_close(ptr noundef null, ptr noundef nonnull %2, i32 noundef %i.a, ptr noundef null) #12 ; 0 uses
  call void @uv_fs_req_cleanup(ptr noundef nonnull %2) #12
  br label %"_ZN4node16ReadFileSyncImplIZNS_12ReadFileSyncEPKcPSt6vectorIhSaIhEEE3$_0EEiS2_T_.exit"

bb.g:                                             ; preds = %bb.o, %.preheader.i
  %.051.i = phi ptr [ %.253.i, %bb.o ], [ %i.l, %.preheader.i ] ; 2 uses
  %.049.i = phi i64 [ %i.ab, %bb.o ], [ 0, %.preheader.i ] ; 6 uses
  %.045.i = phi i64 [ %.348.i, %bb.o ], [ %spec.store.select.i, %.preheader.i ] ; 7 uses
  %i.p = sub i64 %.045.i, %.049.i
  %spec.store.select2.i = call i64 @llvm.umin.i64(i64 %i.p, i64 2147483647)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.q = getelementptr inbounds nuw i8, ptr %.051.i, i64 %.049.i
  %i.r = trunc nuw nsw i64 %spec.store.select2.i to i32
  %i.s = call { ptr, i64 } @uv_buf_init(ptr noundef %i.q, i32 noundef %i.r) #12 ; 2 uses
  %i.t = extractvalue { ptr, i64 } %i.s, 0
  store ptr %i.t, ptr %3, align 8
  %i.u = extractvalue { ptr, i64 } %i.s, 1
  store i64 %i.u, ptr %i.n, align 8
  %i.v = call i32 @uv_fs_read(ptr noundef null, ptr noundef nonnull %2, i32 noundef %i.a, ptr noundef nonnull %3, i32 noundef 1, i64 noundef -1, ptr noundef null) #12 ; 0 uses
  %i.w = load i64, ptr %i.b, align 8              ; 4 uses
  call void @uv_fs_req_cleanup(ptr noundef nonnull %2) #12
  %i.x = icmp slt i64 %i.w, 0
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = call i32 @uv_fs_close(ptr noundef null, ptr noundef nonnull %2, i32 noundef %i.a, ptr noundef null) #12 ; 0 uses
  call void @uv_fs_req_cleanup(ptr noundef nonnull %2) #12
  %i.z = trunc i64 %i.w to i32
  br label %.thread.i

bb.i:                                             ; preds = %bb.g
  %i.aa = icmp eq i64 %i.w, 0
  br i1 %i.aa, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = add i64 %i.w, %.049.i                   ; 2 uses
  %i.ac = icmp eq i64 %i.ab, %.045.i
  br i1 %i.ac, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.ad = icmp eq i64 %.045.i, -1
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ae = call i32 @uv_fs_close(ptr noundef null, ptr noundef nonnull %2, i32 noundef %i.a, ptr noundef null) #12 ; 0 uses
  call void @uv_fs_req_cleanup(ptr noundef nonnull %2) #12
  br label %.thread.i

bb.m:                                             ; preds = %bb.k
  %i.af = shl nuw i64 %.045.i, 1
  %.inv.i = icmp sgt i64 %.045.i, -1
  %.146.i = select i1 %.inv.i, i64 %i.af, i64 -1  ; 2 uses
  call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.146.i)
  %i.ag = load ptr, ptr %1, align 8               ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ai = call i32 @uv_fs_close(ptr noundef null, ptr noundef nonnull %2, i32 noundef %i.a, ptr noundef null) #12 ; 0 uses
  call void @uv_fs_req_cleanup(ptr noundef nonnull %2) #12
  br label %.thread.i

.thread.i:                                        ; preds = %bb.n, %bb.l, %bb.h
  %.1.ph.i = phi i32 [ -12, %bb.n ], [ -27, %bb.l ], [ %i.z, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %"_ZN4node16ReadFileSyncImplIZNS_12ReadFileSyncEPKcPSt6vectorIhSaIhEEE3$_0EEiS2_T_.exit"

bb.o:                                             ; preds = %bb.m, %bb.j
  %.253.i = phi ptr [ %.051.i, %bb.j ], [ %i.ag, %bb.m ]
  %.348.i = phi i64 [ %.045.i, %bb.j ], [ %.146.i, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.g

bb.p:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.aj = call i32 @uv_fs_close(ptr noundef null, ptr noundef nonnull %2, i32 noundef %i.a, ptr noundef null) #12 ; 2 uses
  call void @uv_fs_req_cleanup(ptr noundef nonnull %2) #12
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %"_ZN4node16ReadFileSyncImplIZNS_12ReadFileSyncEPKcPSt6vectorIhSaIhEEE3$_0EEiS2_T_.exit", label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not.i = icmp eq i64 %.049.i, %.045.i
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.049.i)
  %i.al = load ptr, ptr %1, align 8
  %i.am = icmp eq ptr %i.al, null
  %i.an = icmp ne i64 %.049.i, 0
  %or.cond.i = and i1 %i.an, %i.am
  br i1 %or.cond.i, label %"_ZN4node16ReadFileSyncImplIZNS_12ReadFileSyncEPKcPSt6vectorIhSaIhEEE3$_0EEiS2_T_.exit", label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  br label %"_ZN4node16ReadFileSyncImplIZNS_12ReadFileSyncEPKcPSt6vectorIhSaIhEEE3$_0EEiS2_T_.exit"

"_ZN4node16ReadFileSyncImplIZNS_12ReadFileSyncEPKcPSt6vectorIhSaIhEEE3$_0EEiS2_T_.exit": ; preds = %bb.b, %bb.d, %bb.f, %.thread.i, %bb.p, %bb.r, %bb.s
  %.6.i = phi i32 [ %i.e, %bb.b ], [ %i.f, %bb.d ], [ -12, %bb.f ], [ %.1.ph.i, %.thread.i ], [ 0, %bb.s ], [ %i.aj, %bb.p ], [ -12, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret i32 %.6.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node12ReadFileSyncEP8_IO_FILE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.3") align 8 captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @ftell(ptr noundef %1)
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node12ReadFileSyncEP8_IO_FILEE20error_and_abort_args) #12
  tail call void @abort() #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i32 @fseek(ptr noundef %1, i64 noundef 0, i32 noundef 2)
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.e, label %bb.d, !prof !8

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node12ReadFileSyncEP8_IO_FILEE20error_and_abort_args_0) #12
  tail call void @abort() #15
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = tail call i64 @ftell(ptr noundef %1)     ; 7 uses
  %.not = icmp eq i64 %i.e, -1
  br i1 %.not, label %bb.f, label %bb.g, !prof !9

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node12ReadFileSyncEP8_IO_FILEE20error_and_abort_args_1) #12
  tail call void @abort() #15
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.f = tail call i32 @fseek(ptr noundef %1, i64 noundef 0, i32 noundef 0)
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.i, label %bb.h, !prof !8

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node12ReadFileSyncEP8_IO_FILEE20error_and_abort_args_2) #12
  tail call void @abort() #15
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.h = icmp slt i64 %i.e, 0
  br i1 %i.h, label %bb.j, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #15
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIcSaIcEEC2EmRKS0_.exit.thread.i, label %bb.k

_ZNSt12_Vector_baseIcSaIcEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit

bb.k:                                             ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #13 ; 6 uses
  store ptr %i.j, ptr %0, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 %i.e     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %i.l, align 8
  store i8 0, ptr %i.j, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  %i.n = add nsw i64 %i.e, -1                     ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.m, i8 0, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit

_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit:               ; preds = %_ZNSt12_Vector_baseIcSaIcEEC2EmRKS0_.exit.thread.i, %bb.k, %bb.l
  %i.p = phi ptr [ null, %_ZNSt12_Vector_baseIcSaIcEEC2EmRKS0_.exit.thread.i ], [ %i.j, %bb.k ], [ %i.j, %bb.l ]
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIcSaIcEEC2EmRKS0_.exit.thread.i ], [ %i.m, %bb.k ], [ %i.k, %bb.l ]
  store ptr %.0.i.i.i.i.i, ptr %i.i, align 8
  %i.q = tail call i64 @fread(ptr noundef %i.p, i64 noundef %i.e, i64 noundef 1, ptr noundef %1)
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.n, label %bb.m, !prof !8

bb.m:                                             ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node12ReadFileSyncEP8_IO_FILEE20error_and_abort_args_3) #12
  tail call void @abort() #15
  unreachable

bb.n:                                             ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr noundef captures(none)) local_unnamed_addr #3

declare void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare i32 @uv_fs_fstat(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @uv_fs_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 5 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8                ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ] ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #15
  unreachable

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i64 [ %spec.store.select.i, %bb.e ], [ %i.f, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !9

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #15
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.f
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #13 ; 5 uses
  switch i64 %1, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load i8, ptr %i.g, align 1
  store i8 %i.t, ptr %i.s, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.g, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.i, %bb.h
  %i.u = icmp ne ptr %3, null
  %i.v = icmp ne i64 %4, 0
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = load i8, ptr %3, align 1
  store i8 %i.x, ptr %i.w, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.l, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2 ; 2 uses
  %cond31 = icmp eq i64 %i.d, 1
  br i1 %cond31, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ac = load i8, ptr %i.ab, align 1
  store i8 %i.ac, ptr %i.z, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ab, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.o, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ad = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ad)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ae = load i64, ptr %i.h, align 8
  %i.af = add i64 %i.ae, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.af) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
  store ptr %i.s, ptr %0, align 8
  store i64 %.0, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = load ptr, ptr %0, align 8                ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = icmp ugt i64 %1, %i.f
  br i1 %i.g, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %1, %i.f                     ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = sub i64 %i.k, %i.d                       ; 2 uses
  %i.m = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.f, 9223372036854775807        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not23.i = icmp ult i64 %i.l, %i.h
  br i1 %.not23.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.q = add nsw i64 %i.h, -1                     ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.b, i64 %i.h
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.p, i8 0, i64 %i.q, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.s, %bb.d ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i.i, ptr %i.a, align 8
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

bb.e:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %i.h
  br i1 %i.t, label %bb.f, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #15
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.e
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.h)
  %i.u = add nuw i64 %.sroa.speculated.i.i, %i.f
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 9223372036854775807) ; 2 uses
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #13 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  store i8 0, ptr %i.x, align 1
  %i.y = add nsw i64 %i.h, -1                     ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aa, i8 0, i64 %i.y, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i: ; preds = %bb.g, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i
  %.not28.i = icmp eq ptr %i.b, %i.c
  br i1 %.not28.i, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i: ; preds = %bb.h, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i
  %.not.i27.i = icmp eq ptr %i.c, null
  br i1 %.not.i27.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  %i.ab = sub i64 %i.k, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #14
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i: ; preds = %bb.i, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  store ptr %i.w, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 %1
  store ptr %i.ac, ptr %i.a, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  store ptr %i.ad, ptr %i.i, align 8
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

bb.j:                                             ; preds = %bb.a
  %i.ae = icmp ult i64 %1, %i.f
  br i1 %i.ae, label %bb.k, label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.af
  br i1 %.not.i4, label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.af, ptr %i.a, align 8
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit:   ; preds = %bb.l, %bb.k, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i, %bb.j
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind allocsize(0) }
attributes #14 = { builtin nounwind }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!9 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_1
