begin_hunk_0
inline.NumInlined: 1995
inline.NumDeleted: 840
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1
bb.a:
  %5 = alloca %"class.llvh::StringRef", align 8   ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %9 = alloca %"class.llvh::SmallVector", align 8 ; 10 uses
  %10 = alloca %"class.llvh::Regex", align 8      ; 5 uses
end_hunk_1
begin_hunk_2
  br i1 %.not96, label %.critedge54.a, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %.04598 = phi i32 [ 0, %.lr.ph ], [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ] ; 2 uses
  %.sroa.084.097 = phi ptr [ %i.u, %.lr.ph ], [ %16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store ptr %i.w, ptr %7, align 8, !tbaa !78
  store i64 0, ptr %i.x, align 8, !tbaa !67
end_hunk_2
begin_hunk_3

bb.h:                                             ; preds = %bb.g
  %i.ae = call noundef zeroext i1 @_ZNK4llvh16FileCheckPattern18EvaluateExpressionENS_9StringRefERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr nonnull %i.ab, i64 %.sroa.221.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %7)
  br i1 %i.ae, label %bb.l, label %.critedge52

bb.i:                                             ; preds = %bb.g
  %i.af = call noundef i32 @_ZNK4llvh13StringMapImpl7FindKeyENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(25) %4, ptr nonnull %i.ab, i64 %.sroa.221.0.copyload) #19 ; 2 uses
end_hunk_3
begin_hunk_4
  %i.aj = sext i32 %i.af to i64                   ; 2 uses
  %i.ak = icmp eq i64 %i.aj, %i.ai
  %i.al = select i1 %i.ag, i1 true, i1 %i.ak
  br i1 %i.al, label %.critedge52, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = load ptr, ptr %4, align 8
end_hunk_4
begin_hunk_5
  %i.bg = load ptr, ptr %7, align 8, !tbaa !69
  %i.bh = load i64, ptr %i.x, align 8, !tbaa !67
  %i.bi = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.bd, i64 noundef 0, ptr noundef %i.bg, i64 noundef %i.bh) #19 ; 0 uses
  %i.bj = load i64, ptr %i.x, align 8, !tbaa !67  ; 2 uses
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = add i32 %.04598, %i.bk
  %11 = load ptr, ptr %7, align 8, !tbaa !69      ; 2 uses
  %12 = icmp eq ptr %11, %i.w
  br i1 %12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i60: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertIN9__gnu_cxx17__normal_iteratorIPcS4_EEvEES9_NS7_IPKcS4_EET_SD_.exit
  %13 = icmp ult i64 %i.bj, 16
  call void @llvm.assume(i1 %13)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertIN9__gnu_cxx17__normal_iteratorIPcS4_EEvEES9_NS7_IPKcS4_EET_SD_.exit
  %14 = load i64, ptr %i.w, align 8, !tbaa !43
  %15 = add i64 %14, 1
  call void @_ZdlPvm(ptr noundef %11, i64 noundef %15) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %16 = getelementptr inbounds nuw i8, ptr %.sroa.084.097, i64 24 ; 2 uses
  %.not.a = icmp eq ptr %16, %i.v
  br i1 %.not.a, label %.critedge54.a, label %bb.g

.critedge52:                                      ; preds = %bb.i, %bb.h
  %17 = load ptr, ptr %7, align 8, !tbaa !69      ; 2 uses
  %18 = icmp eq ptr %17, %i.w
  br i1 %18, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %.critedge52
  %i.bm = load i64, ptr %i.w, align 8, !tbaa !43
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %17, i64 noundef %i.bn) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %.critedge52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %.critedge56

.critedge54.a:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %bb.f
  %i.bo = load ptr, ptr %6, align 8, !tbaa !69
  %i.bp = load i64, ptr %i.o, align 8, !tbaa !67
  br label %bb.n
end_hunk_5
