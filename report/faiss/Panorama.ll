Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/Panorama?download=true
inline.NumInlined: 82
inline.NumDeleted: 44
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm:bb.a
}

declare i32 @__gxx_personality_v0(...)

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) unnamed_addr #3

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss14FaissExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5faiss14FaissExceptionE, i64 16), ptr %0, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !20
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #16
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19   ; 4 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !tbaa !20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ] ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
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
  br i1 %i.r, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !32

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #17
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.f
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #20 ; 5 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %cond32 = icmp eq i64 %1, 1
  br i1 %cond32, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = load i8, ptr %i.t, align 1, !tbaa !20
  store i8 %i.u, ptr %i.s, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.t, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.j, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.v = icmp ne ptr %3, null
  %i.w = icmp ne i64 %4, 0
  %or.cond = and i1 %i.v, %i.w
  br i1 %or.cond, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.y = load i8, ptr %3, align 1, !tbaa !20
  store i8 %i.y, ptr %i.x, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  %.pre = load ptr, ptr %0, align 8, !tbaa !21    ; 3 uses
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre, i64 %1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %2 ; 2 uses
  %cond31 = icmp eq i64 %i.d, 1
  br i1 %cond31, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !20
  store i8 %i.ad, ptr %i.aa, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %i.ac, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.ae = icmp eq ptr %.pre, %i.h
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.af = load i64, ptr %i.h, align 8, !tbaa !20
  %i.ag = add i64 %i.af, 1
  tail call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ag) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
  store ptr %i.s, ptr %0, align 8, !tbaa !21
  store i64 %.0, ptr %i.h, align 8, !tbaa !20
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5faiss8Panorama26copy_codes_to_level_layoutEPhmmPKh(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #11 align 2 {
bb.a:
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge30, label %.lr.ph29

.lr.ph29:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.c, align 8, !tbaa !13
  %.not31 = icmp eq i64 %i.e, 0
  br i1 %.not31, label %._crit_edge30, label %.lr.ph29.split.preheader

.lr.ph29.split.preheader:                         ; preds = %.lr.ph29
  %.pre34 = load i64, ptr %i.a, align 8, !tbaa !14
  br label %.lr.ph29.split

._crit_edge30:                                    ; preds = %._crit_edge, %.lr.ph29, %bb.a
  ret void

.lr.ph29.split:                                   ; preds = %.lr.ph29.split.preheader, %._crit_edge
  %i.f = phi i64 [ %6, %._crit_edge ], [ 1, %.lr.ph29.split.preheader ]
  %.027.a = phi i64 [ %i.l, %._crit_edge ], [ %.pre34, %.lr.ph29.split.preheader ] ; 2 uses
  %.027 = phi i64 [ %i.m, %._crit_edge ], [ 0, %.lr.ph29.split.preheader ] ; 3 uses
  %5 = add i64 %.027, %2                          ; 2 uses
  %i.g = urem i64 %5, %.027.a                     ; 2 uses
  %.not32 = icmp eq i64 %i.f, 0
  br i1 %.not32, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph29.split
  %i.h = sub nuw i64 %5, %i.g
  %i.i = load i64, ptr %i.b, align 8, !tbaa !12
  %i.j = mul i64 %i.h, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.b
  %.pre = load i64, ptr %i.a, align 8, !tbaa !14
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph29.split
  %6 = phi i64 [ %i.aa, %._crit_edge.loopexit ], [ 0, %.lr.ph29.split ]
  %i.l = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %.027.a, %.lr.ph29.split ]
  %i.m = add nuw i64 %.027, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.m, %3
  br i1 %exitcond.not, label %._crit_edge30, label %.lr.ph29.split, !llvm.loop !33

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.02426 = phi i64 [ 0, %.lr.ph ], [ %i.z, %bb.b ] ; 2 uses
  %i.n = load i64, ptr %i.d, align 8, !tbaa !23   ; 2 uses
  %i.o = mul i64 %i.n, %.02426                    ; 3 uses
  %i.p = load i64, ptr %i.a, align 8, !tbaa !14
  %i.q = mul i64 %i.o, %i.p
  %i.r = load i64, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %i.s = sub i64 %i.r, %i.o
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.n) ; 2 uses
  %i.t = mul i64 %i.r, %.027
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.o
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.q
  %i.x = mul i64 %.sroa.speculated, %i.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.v, i64 %.sroa.speculated, i1 false)
  %i.z = add nuw i64 %.02426, 1                   ; 2 uses
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !13  ; 2 uses
  %i.ab = icmp ult i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !34
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define void @_ZNK5faiss8Panorama23compute_cumulative_sumsEPfmmPKf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #12 align 2 {
bb.a:
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !14   ; 6 uses
  %i.c = load i64, ptr %0, align 8, !tbaa !11     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13   ; 4 uses
  %i.f = add i64 %i.e, 1                          ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !22   ; 2 uses
  %i.i = trunc i64 %i.e to i32
  %.02330.i = add i32 %i.i, -1                    ; 2 uses
  %i.j = icmp sgt i32 %.02330.i, -1
  %i.k = zext nneg i32 %.02330.i to i64
  %i.l = and i64 %i.e, 4294967295
  %i.m = mul i64 %i.e, %i.b
  %i.n = getelementptr [4 x i8], ptr %1, i64 %i.m ; 4 uses
  br i1 %i.j, label %.lr.ph35.i.us, label %"_ZN5faiss12_GLOBAL__N_121compute_cum_sums_implIRZNKS_8Panorama23compute_cumulative_sumsEPfmmPKfE3$_0EEvS5_S3_mmmOT_.exit.preheader"

"_ZN5faiss12_GLOBAL__N_121compute_cum_sums_implIRZNKS_8Panorama23compute_cumulative_sumsEPfmmPKfE3$_0EEvS5_S3_mmmOT_.exit.preheader": ; preds = %.lr.ph
  %xtraiter = and i64 %3, 1
  %i.o = icmp eq i64 %3, 1
  br i1 %i.o, label %"_ZN5faiss12_GLOBAL__N_121compute_cum_sums_implIRZNKS_8Panorama23compute_cumulative_sumsEPfmmPKfE3$_0EEvS5_S3_mmmOT_.exit.epil.preheader", label %"_ZN5faiss12_GLOBAL__N_121compute_cum_sums_implIRZNKS_8Panorama23compute_cumulative_sumsEPfmmPKfE3$_0EEvS5_S3_mmmOT_.exit.preheader.new"

"_ZN5faiss12_GLOBAL__N_121compute_cum_sums_implIRZNKS_8Panorama23compute_cumulative_sumsEPfmmPKfE3$_0EEvS5_S3_mmmOT_.exit.preheader.new": ; preds = %"_ZN5faiss12_GLOBAL__N_121compute_cum_sums_implIRZNKS_8Panorama23compute_cumulative_sumsEPfmmPKfE3$_0EEvS5_S3_mmmOT_.exit.preheader"
  %unroll_iter = and i64 %3, -2
  br label %"_ZN5faiss12_GLOBAL__N_121compute_cum_sums_implIRZNKS_8Panorama23compute_cumulative_sumsEPfmmPKfE3$_0EEvS5_S3_mmmOT_.exit"

.lr.ph35.i.us:                                    ; preds = %.lr.ph, %"_ZN5faiss12_GLOBAL__N_121compute_cum_sums_implIRZNKS_8Panorama23compute_cumulative_sumsEPfmmPKfE3$_0EEvS5_S3_mmmOT_.exit.loopexit.us"
  %.013.us = phi i64 [ %i.ai, %"_ZN5faiss12_GLOBAL__N_121compute_cum_sums_implIRZNKS_8Panorama23compute_cumulative_sumsEPfmmPKfE3$_0EEvS5_S3_mmmOT_.exit.loopexit.us" ], [ 0, %.lr.ph ] ; 3 uses
  %i.p = add i64 %.013.us, %2                     ; 2 uses
  %i.q = urem i64 %i.p, %i.b                      ; 3 uses
  %i.r = mul i64 %i.c, %.013.us
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.r
  %i.t = sub nuw i64 %i.p, %i.q
  %i.u = mul i64 %i.f, %i.t                       ; 2 uses
  %invariant.gep.i.us = getelementptr [4 x i8], ptr %1, i64 %i.u
  %invariant.gep37.i.us = getelementptr [4 x i8], ptr %invariant.gep.i.us, i64 %i.q
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.us, %.lr.ph35.i.us
  %indvars.iv39.i.us = phi i64 [ %i.l, %.lr.ph35.i.us ], [ %indvars.iv.next40.i.us, %._crit_edge.i.us ] ; 2 uses
  %indvars.iv.i.us = phi i64 [ %i.k, %.lr.ph35.i.us ], [ %indvars.iv.next.i.us, %._crit_edge.i.us ] ; 4 uses
  %.02431.i.us = phi float [ 0.000000e+00, %.lr.ph35.i.us ], [ %.1.lcssa.i.us, %._crit_edge.i.us ] ; 2 uses
  %i.v = mul i64 %indvars.iv.i.us, %i.h           ; 2 uses
  %i.w = mul i64 %indvars.iv39.i.us, %i.h
  %.sroa.speculated.i.us = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %i.w) ; 2 uses
  %i.x = icmp ult i64 %i.v, %.sroa.speculated.i.us
  br i1 %i.x, label %.lr.ph.i.us, label %._crit_edge.i.us

.lr.ph.i.us:                                      ; preds = %bb.b, %.lr.ph.i.us
  %.029.i.us = phi i64 [ %i.ab, %.lr.ph.i.us ], [ %i.v, %bb.b ] ; 2 uses
  %.128.i.us = phi float [ %i.aa, %.lr.ph.i.us ], [ %.02431.i.us, %bb.b ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.029.i.us
  %i.z = load float, ptr %i.y, align 4, !tbaa !26 ; 2 uses
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.z, float %i.z, float %.128.i.us) ; 2 uses
  %i.ab = add nuw i64 %.029.i.us, 1               ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %.sroa.speculated.i.us
  br i1 %i.ac, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !36

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us, %bb.b
  %.1.lcssa.i.us = phi float [ %.02431.i.us, %bb.b ], [ %i.aa, %.lr.ph.i.us ] ; 2 uses
  %i.ad = tail call noundef float @sqrtf(float noundef %.1.lcssa.i.us) #16
  %i.ae = mul i64 %indvars.iv.i.us, %i.b
  %gep38.i.us = getelementptr [4 x i8], ptr %invariant.gep37.i.us, i64 %i.ae
  store float %i.ad, ptr %gep38.i.us, align 4, !tbaa !26
  %indvars.iv.next.i.us = add nsw i64 %indvars.iv.i.us, -1
  %i.af = icmp sgt i64 %indvars.iv.i.us, 0
  %indvars.iv.next40.i.us = add nsw i64 %indvars.iv39.i.us, -1
  br i1 %i.af, label %bb.b, label %"_ZN5faiss12_GLOBAL__N_121compute_cum_sums_implIRZNKS_8Panorama23compute_cumulative_sumsEPfmmPKfE3$_0EEvS5_S3_mmmOT_.exit.loopexit.us", !llvm.loop !37

"_ZN5faiss12_GLOBAL__N_121compute_cum_sums_implIRZNKS_8Panorama23compute_cumulative_sumsEPfmmPKfE3$_0EEvS5_S3_mmmOT_.exit.loopexit.us": ; preds = %._crit_edge.i.us
  %i.ag = getelementptr [4 x i8], ptr %i.n, i64 %i.u
  %i.ah = getelementptr [4 x i8], ptr %i.ag, i64 %i.q
  store float 0.000000e+00, ptr %i.ah, align 4, !tbaa !26
  %i.ai = add nuw i64 %.013.us, 1                 ; 2 uses
  %exitcond15.not = icmp eq i64 %i.ai, %3
  br i1 %exitcond15.not, label %._crit_edge, label %.lr.ph35.i.us, !llvm.loop !38

._crit_edge.loopexit20.unr-lcssa:                 ; preds = %"_ZN5faiss12_GLOBAL__N_121compute_cum_sums_implIRZNKS_8Panorama23compute_cumulative_sumsEPfmmPKfE3$_0EEvS5_S3_mmmOT_.exit"
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %"_ZN5faiss12_GLOBAL__N_121compute_cum_sums_implIRZNKS_8Panorama23compute_cumulative_sumsEPfmmPKfE3$_0EEvS5_S3_mmmOT_.exit.epil.preheader"

"_ZN5faiss12_GLOBAL__N_121compute_cum_sums_implIRZNKS_8Panorama23compute_cumulative_sumsEPfmmPKfE3$_0EEvS5_S3_mmmOT_.exit.epil.preheader": ; preds = %._crit_edge.loopexit20.unr-lcssa, %"_ZN5faiss12_GLOBAL__N_121compute_cum_sums_implIRZNKS_8Panorama23compute_cumulative_sumsEPfmmPKfE3$_0EEvS5_S3_mmmOT_.exit.preheader"
  %.013.epil.init = phi i64 [ 0, %"_ZN5faiss12_GLOBAL__N_121compute_cum_sums_implIRZNKS_8Panorama23compute_cumulative_sumsEPfmmPKfE3$_0EEvS5_S3_mmmOT_.exit.preheader" ], [ %i.bc, %._crit_edge.loopexit20.unr-lcssa ]
  %lcmp.mod21 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod21)
  %i.aj = add i64 %.013.epil.init, %2             ; 2 uses
  %i.ak = urem i64 %i.aj, %i.b                    ; 2 uses
  %i.al = sub nuw i64 %i.aj, %i.ak
  %i.am = mul i64 %i.f, %i.al
  %i.an = getelementptr [4 x i8], ptr %i.n, i64 %i.am
  %i.ao = getelementptr [4 x i8], ptr %i.an, i64 %i.ak
  store float 0.000000e+00, ptr %i.ao, align 4, !tbaa !26
  br label %._crit_edge

._crit_edge:                                      ; preds = %"_ZN5faiss12_GLOBAL__N_121compute_cum_sums_implIRZNKS_8Panorama23compute_cumulative_sumsEPfmmPKfE3$_0EEvS5_S3_mmmOT_.exit.epil.preheader", %._crit_edge.loopexit20.unr-lcssa, %"_ZN5faiss12_GLOBAL__N_121compute_cum_sums_implIRZNKS_8Panorama23compute_cumulative_sumsEPfmmPKfE3$_0EEvS5_S3_mmmOT_.exit.loopexit.us", %bb.a
  ret void

"_ZN5faiss12_GLOBAL__N_121compute_cum_sums_implIRZNKS_8Panorama23compute_cumulative_sumsEPfmmPKfE3$_0EEvS5_S3_mmmOT_.exit": ; preds = %"_ZN5faiss12_GLOBAL__N_121compute_cum_sums_implIRZNKS_8Panorama23compute_cumulative_sumsEPfmmPKfE3$_0EEvS5_S3_mmmOT_.exit", %"_ZN5faiss12_GLOBAL__N_121compute_cum_sums_implIRZNKS_8Panorama23compute_cumulative_sumsEPfmmPKfE3$_0EEvS5_S3_mmmOT_.exit.preheader.new"
  %.013 = phi i64 [ 0, %"_ZN5faiss12_GLOBAL__N_121compute_cum_sums_implIRZNKS_8Panorama23compute_cumulative_sumsEPfmmPKfE3$_0EEvS5_S3_mmmOT_.exit.preheader.new" ], [ %i.bc, %"_ZN5faiss12_GLOBAL__N_121compute_cum_sums_implIRZNKS_8Panorama23compute_cumulative_sumsEPfmmPKfE3$_0EEvS5_S3_mmmOT_.exit" ] ; 3 uses
  %niter = phi i64 [ 0, %"_ZN5faiss12_GLOBAL__N_121compute_cum_sums_implIRZNKS_8Panorama23compute_cumulative_sumsEPfmmPKfE3$_0EEvS5_S3_mmmOT_.exit.preheader.new" ], [ %niter.next.1, %"_ZN5faiss12_GLOBAL__N_121compute_cum_sums_implIRZNKS_8Panorama23compute_cumulative_sumsEPfmmPKfE3$_0EEvS5_S3_mmmOT_.exit" ]
  %i.ap = add i64 %.013, %2                       ; 2 uses
  %i.aq = urem i64 %i.ap, %i.b                    ; 2 uses
  %i.ar = sub nuw i64 %i.ap, %i.aq
  %i.as = mul i64 %i.f, %i.ar
  %i.at = getelementptr [4 x i8], ptr %i.n, i64 %i.as
  %i.au = getelementptr [4 x i8], ptr %i.at, i64 %i.aq
  store float 0.000000e+00, ptr %i.au, align 4, !tbaa !26
  %i.av = or disjoint i64 %.013, 1
  %i.aw = add i64 %i.av, %2                       ; 2 uses
  %i.ax = urem i64 %i.aw, %i.b                    ; 2 uses
  %i.ay = sub nuw i64 %i.aw, %i.ax
  %i.az = mul i64 %i.f, %i.ay
  %i.ba = getelementptr [4 x i8], ptr %i.n, i64 %i.az
  %i.bb = getelementptr [4 x i8], ptr %i.ba, i64 %i.ax
  store float 0.000000e+00, ptr %i.bb, align 4, !tbaa !26
  %i.bc = add nuw i64 %.013, 2                    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit20.unr-lcssa, label %"_ZN5faiss12_GLOBAL__N_121compute_cum_sums_implIRZNKS_8Panorama23compute_cumulative_sumsEPfmmPKfE3$_0EEvS5_S3_mmmOT_.exit", !llvm.loop !38
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define void @_ZNK5faiss8Panorama22compute_query_cum_sumsEPKfPf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !13   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !22   ; 2 uses
  %i.f = trunc i64 %i.c to i32
  %.0236.i = add i32 %i.f, -1                     ; 2 uses
  %i.g = icmp sgt i32 %.0236.i, -1
  br i1 %i.g, label %.lr.ph11.preheader.i, label %"_ZN5faiss12_GLOBAL__N_121compute_cum_sums_implIRZNKS_8Panorama22compute_query_cum_sumsEPKfPfE3$_0EEvS4_S5_mmmOT_.exit"

.lr.ph11.preheader.i:                             ; preds = %bb.a
  %i.h = zext nneg i32 %.0236.i to i64
  %i.i = and i64 %i.c, 4294967295
  br label %.lr.ph11.i

.lr.ph11.i:                                       ; preds = %._crit_edge.i, %.lr.ph11.preheader.i
  %indvars.iv13.i = phi i64 [ %i.i, %.lr.ph11.preheader.i ], [ %indvars.iv.next14.i, %._crit_edge.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ %i.h, %.lr.ph11.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 4 uses
  %.0247.i = phi float [ 0.000000e+00, %.lr.ph11.preheader.i ], [ %.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.j = mul i64 %indvars.iv.i, %i.e              ; 2 uses
  %i.k = mul i64 %indvars.iv13.i, %i.e
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.a, i64 %i.k) ; 2 uses
  %i.l = icmp ult i64 %i.j, %.sroa.speculated.i
  br i1 %i.l, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph11.i
  %.1.lcssa.i = phi float [ %.0247.i, %.lr.ph11.i ], [ %i.r, %.lr.ph.i ] ; 2 uses
  %i.m = tail call noundef float @sqrtf(float noundef %.1.lcssa.i) #16
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  store float %i.m, ptr %i.n, align 4, !tbaa !26
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.o = icmp sgt i64 %indvars.iv.i, 0
  %indvars.iv.next14.i = add nsw i64 %indvars.iv13.i, -1
  br i1 %i.o, label %.lr.ph11.i, label %"_ZN5faiss12_GLOBAL__N_121compute_cum_sums_implIRZNKS_8Panorama22compute_query_cum_sumsEPKfPfE3$_0EEvS4_S5_mmmOT_.exit", !llvm.loop !39

.lr.ph.i:                                         ; preds = %.lr.ph11.i, %.lr.ph.i
  %.05.i = phi i64 [ %i.s, %.lr.ph.i ], [ %i.j, %.lr.ph11.i ] ; 2 uses
  %.14.i = phi float [ %i.r, %.lr.ph.i ], [ %.0247.i, %.lr.ph11.i ]
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.05.i
  %i.q = load float, ptr %i.p, align 4, !tbaa !26 ; 2 uses
  %i.r = tail call float @llvm.fmuladd.f32(float %i.q, float %i.q, float %.14.i) ; 2 uses
  %i.s = add nuw i64 %.05.i, 1                    ; 2 uses
  %i.t = icmp ult i64 %i.s, %.sroa.speculated.i
  br i1 %i.t, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !40

"_ZN5faiss12_GLOBAL__N_121compute_cum_sums_implIRZNKS_8Panorama22compute_query_cum_sumsEPKfPfE3$_0EEvS4_S5_mmmOT_.exit": ; preds = %._crit_edge.i, %bb.a
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.c
  store float 0.000000e+00, ptr %i.u, align 4, !tbaa !26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZNK5faiss8Panorama11reconstructElPfPKh(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !14
  %i.c = urem i64 %1, %i.b                        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13
  %.not = icmp eq i64 %i.f, 0
end_hunk_0
