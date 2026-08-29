Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/static?download=true
inline.NumInlined: 1572
inline.NumDeleted: 309
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 39
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0
@.str.218 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.219 = private unnamed_addr constant [12 x i8] c"%lld   %-3s\00", align 1
@.str.220 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.221 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.222 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.223 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.224 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.225 = private unnamed_addr constant [13 x i8] c"%ld.%ld %-3s\00", align 1
@.str.226 = private unnamed_addr constant [15 x i8] c"  \22%s\22: %lld,\0A\00", align 1
@.str.227 = private unnamed_addr constant [17 x i8] c"    \22%s\22: %zu%s\0A\00", align 1
@.str.228 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.229 = private unnamed_addr constant [9 x i8] c"  \22%s\22: \00", align 1
@.str.230 = private unnamed_addr constant [54 x i8] c"%s{ \22total\22: %lld, \22peak\22: %lld, \22current\22: %lld }%s\0A\00", align 1
@.str.231 = private unnamed_addr constant [91 x i8] c"%s{ \22total\22: %lld, \22peak\22: %lld, \22current\22: %lld, \22block_size\22: %zu, \22page_size\22: %zu }%s\0A\00", align 1
@.str.232 = private unnamed_addr constant [31 x i8] c"/proc/sys/vm/overcommit_memory\00", align 1
@_ZZL9unix_mmapPvmmibbPbE17large_page_try_ok = internal global { i64 } zeroinitializer, align 8
@_ZZL9unix_mmapPvmmibbPbE23mi_huge_pages_available = internal unnamed_addr global i1 false, align 1
@.str.233 = private unnamed_addr constant [84 x i8] c"unable to allocate huge (1GiB) page, trying large (2MiB) pages instead (errno: %i)\0A\00", align 1
@.str.234 = private unnamed_addr constant [127 x i8] c"unable to directly request hinted aligned OS memory (error: %d (0x%x), size: 0x%zx bytes, alignment: 0x%zx, hint address: %p)\0A\00", align 1
@.str.235 = private unnamed_addr constant [9 x i8] c"mimalloc\00", align 1
@environ = external local_unnamed_addr global ptr, align 8
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 101, ptr @_ZL17mi_process_attachv, ptr null }, { i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_static.c, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 101, ptr @_ZL17mi_process_detachv, ptr null }]
@switch.table._ZL28mi_bitmap_is_claimedx_acrossPSt6atomicImEmmmPbPm = private unnamed_addr constant [3 x i8] c"@\00\01", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef ptr @_Z20_mi_page_ptr_unalignPK9mi_page_sPKv(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.g = load i8, ptr %i.f, align 2, !tbaa !18    ; 2 uses
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.h = zext nneg i8 %i.g to i64
  %notmask = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask, -1
  %i.j = and i64 %i.e, %i.i
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %0, i64 40
  %.val = load i64, ptr %i.k, align 8, !tbaa !20
  %i.l = urem i64 %i.e, %.val
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.j, %bb.b ], [ %i.l, %bb.c ]
  %i.m = sub i64 %i.c, %.0
  %i.n = inttoptr i64 %i.m to ptr
  ret ptr %i.n
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress noinline nounwind uwtable
define hidden void @_Z16_mi_free_genericP12mi_segment_sP9mi_page_sbPv(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZL21mi_free_generic_localP9mi_page_sP12mi_segment_sPv(ptr noundef %1, ptr noundef %3) #55
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_ZL18mi_free_generic_mtP9mi_page_sP12mi_segment_sPv(ptr noundef %1, ptr noundef %0, ptr noundef %3) #55
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZL21mi_free_generic_localP9mi_page_sP12mi_segment_sPv(ptr noundef %0, ptr noundef %1) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 14         ; 2 uses
  %.val = load i8, ptr %i.a, align 2
  %i.b = and i8 %.val, 2
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.e = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.i = load i8, ptr %i.h, align 2, !tbaa !18    ; 2 uses
  %.not.i = icmp eq i8 %i.i, 0
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !19

bb.c:                                             ; preds = %bb.b
  %i.j = zext nneg i8 %i.i to i64
  %notmask.i = shl nsw i64 -1, %i.j
  %i.k = xor i64 %notmask.i, -1
  %i.l = and i64 %i.g, %i.k
  br label %_Z20_mi_page_ptr_unalignPK9mi_page_sPKv.exit

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %0, i64 40
  %.val.i = load i64, ptr %i.m, align 8, !tbaa !20
  %i.n = urem i64 %i.g, %.val.i
  br label %_Z20_mi_page_ptr_unalignPK9mi_page_sPKv.exit

_Z20_mi_page_ptr_unalignPK9mi_page_sPKv.exit:     ; preds = %bb.c, %bb.d
  %.0.i = phi i64 [ %i.l, %bb.c ], [ %i.n, %bb.d ]
  %i.o = sub i64 %i.e, %.0.i
  %i.p = inttoptr i64 %i.o to ptr
  br label %bb.e

bb.e:                                             ; preds = %_Z20_mi_page_ptr_unalignPK9mi_page_sPKv.exit, %bb.a
  %i.q = phi ptr [ %i.p, %_Z20_mi_page_ptr_unalignPK9mi_page_sPKv.exit ], [ %1, %bb.a ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21
  %i.t = ptrtoint ptr %i.s to i64
  store i64 %i.t, ptr %i.q, align 8, !tbaa !22
  store ptr %i.q, ptr %i.r, align 8, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.v = load i16, ptr %i.u, align 8, !tbaa !24
  %i.w = add i16 %i.v, -1                         ; 2 uses
  store i16 %i.w, ptr %i.u, align 8, !tbaa !24
  %i.x = icmp eq i16 %i.w, 0
  br i1 %i.x, label %bb.f, label %bb.g, !prof !19

bb.f:                                             ; preds = %bb.e
  tail call void @_Z15_mi_page_retireP9mi_page_s(ptr noundef nonnull %0) #55
  br label %_ZL19mi_free_block_localP9mi_page_sP10mi_block_sbb.exit

bb.g:                                             ; preds = %bb.e
  %.val.i9 = load i8, ptr %i.a, align 2
  %i.y = trunc i8 %.val.i9 to i1
  br i1 %i.y, label %bb.h, label %_ZL19mi_free_block_localP9mi_page_sP10mi_block_sbb.exit, !prof !19

bb.h:                                             ; preds = %bb.g
  tail call void @_Z15_mi_page_unfullP9mi_page_s(ptr noundef nonnull %0)
  br label %_ZL19mi_free_block_localP9mi_page_sP10mi_block_sbb.exit

_ZL19mi_free_block_localP9mi_page_sP10mi_block_sbb.exit: ; preds = %bb.h, %bb.g, %bb.f
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZL18mi_free_generic_mtP9mi_page_sP12mi_segment_sPv(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.g = load i8, ptr %i.f, align 2, !tbaa !18    ; 2 uses
  %.not.i = icmp eq i8 %i.g, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.h = zext nneg i8 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = and i64 %i.e, %i.i
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %0, i64 40
  %.val.i = load i64, ptr %i.k, align 8, !tbaa !20
  %i.l = urem i64 %i.e, %.val.i
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i64 [ %i.j, %bb.b ], [ %i.l, %bb.c ]
  %i.m = sub i64 %i.c, %.0.i
  %i.n = inttoptr i64 %i.m to ptr
  invoke fastcc void @_ZL16mi_free_block_mtP9mi_page_sP12mi_segment_sP10mi_block_s(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.n)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  ret void

bb.f:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #56
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define void @mi_free(ptr noundef %0) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = add i64 %i.a, -1                         ; 2 uses
  %i.c = and i64 %i.b, -33554432                  ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.e = icmp slt i64 %i.b, 33554432
  br i1 %i.e, label %_ZL19mi_free_block_localP9mi_page_sP10mi_block_sbb.exit, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @llvm.thread.pointer.p0()
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 280
  %i.i = load atomic i64, ptr %i.h monotonic, align 8
  %i.j = sub i64 %i.a, %i.c
  %i.k = lshr i64 %i.j, 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %i.m = getelementptr inbounds nuw [96 x i8], ptr %i.l, i64 %i.k ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !25
  %i.p = zext i32 %i.o to i64
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds i8, ptr %i.m, i64 %i.q ; 6 uses
  %i.s = icmp eq i64 %i.i, %i.g
  br i1 %i.s, label %bb.c, label %bb.g, !prof !26

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 14
  %i.u = load i8, ptr %i.t, align 2, !tbaa !27
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.d, label %bb.f, !prof !26

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !21
  %i.y = ptrtoint ptr %i.x to i64
  store i64 %i.y, ptr %0, align 8, !tbaa !22
  store ptr %0, ptr %i.w, align 8, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %i.aa = load i16, ptr %i.z, align 8, !tbaa !24
  %i.ab = add i16 %i.aa, -1                       ; 2 uses
  store i16 %i.ab, ptr %i.z, align 8, !tbaa !24
  %i.ac = icmp eq i16 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %_ZL19mi_free_block_localP9mi_page_sP10mi_block_sbb.exit, !prof !19

bb.e:                                             ; preds = %bb.d
  tail call void @_Z15_mi_page_retireP9mi_page_s(ptr noundef nonnull %i.r) #55
  br label %_ZL19mi_free_block_localP9mi_page_sP10mi_block_sbb.exit

bb.f:                                             ; preds = %bb.c
  tail call fastcc void @_ZL21mi_free_generic_localP9mi_page_sP12mi_segment_sPv(ptr noundef nonnull %i.r, ptr noundef %0) #55
  br label %_ZL19mi_free_block_localP9mi_page_sP10mi_block_sbb.exit

bb.g:                                             ; preds = %bb.b
  tail call fastcc void @_ZL18mi_free_generic_mtP9mi_page_sP12mi_segment_sPv(ptr noundef nonnull %i.r, ptr noundef nonnull %i.d, ptr noundef %0) #55
  br label %_ZL19mi_free_block_localP9mi_page_sP10mi_block_sbb.exit

_ZL19mi_free_block_localP9mi_page_sP10mi_block_sbb.exit: ; preds = %bb.e, %bb.d, %bb.g, %bb.f, %bb.a
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #55 ; 0 uses
  tail call void @_ZSt9terminatev() #56
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_Z22_mi_free_delayed_blockP10mi_block_s(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = add i64 %i.a, -1                         ; 2 uses
  %i.c = and i64 %i.b, -33554432
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = icmp slt i64 %i.b, 33554432
  %i.f = select i1 %i.e, ptr null, ptr %i.d       ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = sub i64 %i.a, %i.g
  %i.i = lshr i64 %i.h, 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 288
  %i.k = getelementptr inbounds nuw [96 x i8], ptr %i.j, i64 %i.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !25
  %i.n = zext i32 %i.m to i64
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds i8, ptr %i.k, i64 %i.o ; 12 uses
  %i.q = tail call noundef zeroext i1 @_Z29_mi_page_try_use_delayed_freeP9mi_page_s12mi_delayed_eb(ptr noundef nonnull %i.p, i32 noundef 0, i1 noundef zeroext false) ; 2 uses
  br i1 %i.q, label %bb.b, label %_ZL19mi_free_block_localP9mi_page_sP10mi_block_sbb.exit

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 56 ; 4 uses
  %i.s = load atomic i64, ptr %i.r monotonic, align 8
  %.not.i = icmp ult i64 %i.s, 4
  br i1 %.not.i, label %_ZL28_mi_page_thread_free_collectP9mi_page_s.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load atomic i64, ptr %i.r monotonic, align 8 ; 3 uses
  %i.u = and i64 %i.t, 3
  %i.v = cmpxchg weak ptr %i.r, i64 %i.t, i64 %i.u acq_rel acquire, align 8 ; 2 uses
  %i.w = extractvalue { i64, i1 } %i.v, 1
  br i1 %i.w, label %._crit_edge.i.i, label %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i

_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i: ; preds = %bb.c, %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i
  %i.x = phi { i64, i1 } [ %i.aa, %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i ], [ %i.v, %bb.c ]
  %i.y = extractvalue { i64, i1 } %i.x, 0         ; 3 uses
  %i.z = and i64 %i.y, 3
  %i.aa = cmpxchg weak ptr %i.r, i64 %i.y, i64 %i.z acq_rel acquire, align 8 ; 2 uses
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  br i1 %i.ab, label %._crit_edge.i.i, label %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i, !llvm.loop !28

._crit_edge.i.i:                                  ; preds = %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i, %bb.c
  %.025.lcssa.i.i = phi i64 [ %i.t, %bb.c ], [ %i.y, %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i ]
  %i.ac = and i64 %.025.lcssa.i.i, -4             ; 2 uses
  %i.ad = inttoptr i64 %i.ac to ptr               ; 3 uses
  %i.ae = icmp eq i64 %i.ac, 0
  br i1 %i.ae, label %_ZL28_mi_page_thread_free_collectP9mi_page_s.exit.i, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 10
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !30 ; 2 uses
  %i.ah = zext i16 %i.ag to i64                   ; 2 uses
  %.0.val30.i.i = load i64, ptr %i.ad, align 8, !tbaa !22 ; 2 uses
  %i.ai = icmp ne i64 %.0.val30.i.i, 0
  %i.aj = icmp ne i16 %i.ag, 0
  %i.ak = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %i.ak, label %.lr.ph.i.i, label %._crit_edge34.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.0.val32.i.i = phi i64 [ %.0.val.i.i, %.lr.ph.i.i ], [ %.0.val30.i.i, %bb.d ]
  %.02031.i.i = phi i64 [ %i.am, %.lr.ph.i.i ], [ 1, %bb.d ] ; 2 uses
  %i.al = inttoptr i64 %.0.val32.i.i to ptr       ; 2 uses
  %i.am = add nuw nsw i64 %.02031.i.i, 1          ; 2 uses
  %.0.val.i.i = load i64, ptr %i.al, align 8, !tbaa !22 ; 2 uses
  %i.an = icmp ne i64 %.0.val.i.i, 0
  %i.ao = icmp samesign ult i64 %.02031.i.i, %i.ah
  %i.ap = select i1 %i.an, i1 %i.ao, i1 false
  br i1 %i.ap, label %.lr.ph.i.i, label %._crit_edge34.i.i, !llvm.loop !31

._crit_edge34.i.i:                                ; preds = %.lr.ph.i.i, %bb.d
  %.020.lcssa.i.i = phi i64 [ 1, %bb.d ], [ %i.am, %.lr.ph.i.i ] ; 2 uses
  %.0.lcssa.i.i = phi ptr [ %i.ad, %bb.d ], [ %i.al, %.lr.ph.i.i ]
  %i.aq = icmp samesign ugt i64 %.020.lcssa.i.i, %i.ah
  br i1 %i.aq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge34.i.i
  tail call void (i32, ptr, ...) @_Z17_mi_error_messageiPKcz(i32 noundef 14, ptr noundef nonnull @.str.175)
  br label %_ZL28_mi_page_thread_free_collectP9mi_page_s.exit.i

bb.f:                                             ; preds = %._crit_edge34.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !21
  %i.at = ptrtoint ptr %i.as to i64
  store i64 %i.at, ptr %.0.lcssa.i.i, align 8, !tbaa !22
  store ptr %i.ad, ptr %i.ar, align 8, !tbaa !21
  %i.au = trunc nuw i64 %.020.lcssa.i.i to i16
  %i.av = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  %i.aw = load i16, ptr %i.av, align 8, !tbaa !24
  %i.ax = sub i16 %i.aw, %i.au
  store i16 %i.ax, ptr %i.av, align 8, !tbaa !24
  br label %_ZL28_mi_page_thread_free_collectP9mi_page_s.exit.i

_ZL28_mi_page_thread_free_collectP9mi_page_s.exit.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i, %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !21 ; 3 uses
  %.not22.i = icmp eq ptr %i.az, null
  br i1 %.not22.i, label %_Z21_mi_page_free_collectP9mi_page_sb.exit, label %bb.g

bb.g:                                             ; preds = %_ZL28_mi_page_thread_free_collectP9mi_page_s.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !32
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %.sink.split.i, label %_Z21_mi_page_free_collectP9mi_page_sb.exit, !prof !26

.sink.split.i:                                    ; preds = %bb.g
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.p, i64 15 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = and i8 %i.be, -2
  store i8 %i.bf, ptr %i.bd, align 1
  br label %_Z21_mi_page_free_collectP9mi_page_sb.exit

_Z21_mi_page_free_collectP9mi_page_sb.exit:       ; preds = %bb.g, %_ZL28_mi_page_thread_free_collectP9mi_page_s.exit.i, %.sink.split.i
  %i.bg = phi ptr [ %i.az, %bb.g ], [ null, %_ZL28_mi_page_thread_free_collectP9mi_page_s.exit.i ], [ null, %.sink.split.i ]
  %i.bh = ptrtoint ptr %i.bg to i64
  store i64 %i.bh, ptr %0, align 8, !tbaa !22
  store ptr %0, ptr %i.ay, align 8, !tbaa !21
  %i.bi = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  %i.bj = load i16, ptr %i.bi, align 8, !tbaa !24
  %i.bk = add i16 %i.bj, -1                       ; 2 uses
  store i16 %i.bk, ptr %i.bi, align 8, !tbaa !24
  %i.bl = icmp eq i16 %i.bk, 0
  br i1 %i.bl, label %bb.h, label %bb.i, !prof !19

bb.h:                                             ; preds = %_Z21_mi_page_free_collectP9mi_page_sb.exit
  tail call void @_Z15_mi_page_retireP9mi_page_s(ptr noundef nonnull %i.p) #55
  br label %_ZL19mi_free_block_localP9mi_page_sP10mi_block_sbb.exit

bb.i:                                             ; preds = %_Z21_mi_page_free_collectP9mi_page_sb.exit
  %i.bm = getelementptr i8, ptr %i.p, i64 14
end_hunk_0
begin_hunk_1_@_Z29_mi_page_try_use_delayed_freeP9mi_page_s12mi_delayed_eb:.critedge.outer
  %i.x = trunc i64 %i.u to i32
  %i.y = and i32 %i.x, 3                          ; 3 uses
  %.not.2.not = icmp eq i32 %i.y, 1
  br i1 %.not.2.not, label %.critedge.outer.3, label %bb.d, !prof !19

.critedge.outer.3:                                ; preds = %.critedge.2
  %i.z = tail call noundef i32 @sched_yield() #55 ; 0 uses
  br label %.critedge.3

bb.d:                                             ; preds = %.critedge.2
  %i.aa = icmp ne i32 %1, %i.y
  %i.ab = icmp ne i32 %i.y, 3
  %or.cond.not.2 = or i1 %2, %i.ab
  %or.cond.2 = and i1 %i.aa, %or.cond.not.2
  br i1 %or.cond.2, label %bb.e, label %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ac = cmpxchg weak ptr %i.a, i64 %i.u, i64 %i.w release monotonic, align 8
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  br i1 %i.ad, label %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.thread, label %.critedge.2, !llvm.loop !33

.critedge.3:                                      ; preds = %bb.g, %.critedge.outer.3
  %i.ae = load atomic i64, ptr %i.a acquire, align 8 ; 3 uses
  %i.af = and i64 %i.ae, -4
  %i.ag = or i64 %i.af, %i.b
  %i.ah = trunc i64 %i.ae to i32
  %i.ai = and i32 %i.ah, 3                        ; 3 uses
  %.not.3.not = icmp eq i32 %i.ai, 1
  br i1 %.not.3.not, label %.critedge.outer.4, label %bb.f, !prof !19

.critedge.outer.4:                                ; preds = %.critedge.3
  %i.aj = tail call noundef i32 @sched_yield() #55 ; 0 uses
  br label %.critedge.4

bb.f:                                             ; preds = %.critedge.3
  %i.ak = icmp ne i32 %1, %i.ai
  %i.al = icmp ne i32 %i.ai, 3
  %or.cond.not.3 = or i1 %2, %i.al
  %or.cond.3 = and i1 %i.ak, %or.cond.not.3
  br i1 %or.cond.3, label %bb.g, label %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.am = cmpxchg weak ptr %i.a, i64 %i.ae, i64 %i.ag release monotonic, align 8
  %i.an = extractvalue { i64, i1 } %i.am, 1
  br i1 %i.an, label %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.thread, label %.critedge.3, !llvm.loop !33

.critedge.4:                                      ; preds = %bb.i, %.critedge.outer.4
  %i.ao = load atomic i64, ptr %i.a acquire, align 8 ; 3 uses
  %i.ap = and i64 %i.ao, -4
  %i.aq = or i64 %i.ap, %i.b
  %i.ar = trunc i64 %i.ao to i32
  %i.as = and i32 %i.ar, 3                        ; 3 uses
  %.not.4.not.not = icmp ne i32 %i.as, 1          ; 4 uses
  br i1 %.not.4.not.not, label %bb.h, label %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.thread, !prof !26

bb.h:                                             ; preds = %.critedge.4
  %i.at = icmp ne i32 %1, %i.as
  %i.au = icmp ne i32 %i.as, 3
  %or.cond.not.4 = or i1 %2, %i.au
  %or.cond.4 = and i1 %i.at, %or.cond.not.4
  br i1 %or.cond.4, label %bb.i, label %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.av = cmpxchg weak ptr %i.a, i64 %i.ao, i64 %i.aq release monotonic, align 8
  %i.aw = extractvalue { i64, i1 } %i.av, 1
  br i1 %i.aw, label %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.thread, label %.critedge.4, !llvm.loop !33

bb.j:                                             ; preds = %bb.a
  %i.ax = cmpxchg weak ptr %i.a, i64 %i.c, i64 %i.e release monotonic, align 8
  %i.ay = extractvalue { i64, i1 } %i.ax, 1
  br i1 %i.ay, label %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.thread, label %.critedge, !llvm.loop !33

_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.thread: ; preds = %bb.j, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %.critedge.4, %bb.h, %bb.i
  %.not24 = phi i1 [ true, %bb.b ], [ %.not.4.not.not, %.critedge.4 ], [ true, %bb.d ], [ true, %bb.f ], [ %.not.4.not.not, %bb.i ], [ %.not.4.not.not, %bb.h ], [ true, %bb.g ], [ true, %bb.e ], [ true, %bb.c ], [ true, %bb.a ], [ true, %bb.j ]
  ret i1 %.not24
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z21_mi_page_free_collectP9mi_page_sb(ptr nofree noundef captures(none) %0, i1 noundef zeroext %1) local_unnamed_addr #6 {
bb.a:
  br i1 %1, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  %.not = icmp ult i64 %i.b, 4
  br i1 %.not, label %_ZL28_mi_page_thread_free_collectP9mi_page_s.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.d = load atomic i64, ptr %i.c monotonic, align 8 ; 3 uses
  %i.e = and i64 %i.d, 3
  %i.f = cmpxchg weak ptr %i.c, i64 %i.d, i64 %i.e acq_rel acquire, align 8 ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  br i1 %i.g, label %._crit_edge.i, label %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i

_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i: ; preds = %bb.c, %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i
  %i.h = phi { i64, i1 } [ %i.k, %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i ], [ %i.f, %bb.c ]
  %i.i = extractvalue { i64, i1 } %i.h, 0         ; 3 uses
  %i.j = and i64 %i.i, 3
  %i.k = cmpxchg weak ptr %i.c, i64 %i.i, i64 %i.j acq_rel acquire, align 8 ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  br i1 %i.l, label %._crit_edge.i, label %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i, !llvm.loop !28

._crit_edge.i:                                    ; preds = %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i, %bb.c
  %.025.lcssa.i = phi i64 [ %i.d, %bb.c ], [ %i.i, %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i ]
  %i.m = and i64 %.025.lcssa.i, -4                ; 2 uses
  %i.n = inttoptr i64 %i.m to ptr                 ; 3 uses
  %i.o = icmp eq i64 %i.m, 0
  br i1 %i.o, label %_ZL28_mi_page_thread_free_collectP9mi_page_s.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.q = load i16, ptr %i.p, align 2, !tbaa !30   ; 2 uses
  %i.r = zext i16 %i.q to i64                     ; 2 uses
  %.0.val30.i = load i64, ptr %i.n, align 8, !tbaa !22 ; 2 uses
  %i.s = icmp ne i64 %.0.val30.i, 0
  %i.t = icmp ne i16 %i.q, 0
  %i.u = select i1 %i.s, i1 %i.t, i1 false
  br i1 %i.u, label %.lr.ph.i, label %._crit_edge34.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.0.val32.i = phi i64 [ %.0.val.i, %.lr.ph.i ], [ %.0.val30.i, %bb.d ]
  %.02031.i = phi i64 [ %i.w, %.lr.ph.i ], [ 1, %bb.d ] ; 2 uses
  %i.v = inttoptr i64 %.0.val32.i to ptr          ; 2 uses
  %i.w = add nuw nsw i64 %.02031.i, 1             ; 2 uses
  %.0.val.i = load i64, ptr %i.v, align 8, !tbaa !22 ; 2 uses
  %i.x = icmp ne i64 %.0.val.i, 0
  %i.y = icmp samesign ult i64 %.02031.i, %i.r
  %i.z = select i1 %i.x, i1 %i.y, i1 false
  br i1 %i.z, label %.lr.ph.i, label %._crit_edge34.i, !llvm.loop !31

._crit_edge34.i:                                  ; preds = %.lr.ph.i, %bb.d
  %.020.lcssa.i = phi i64 [ 1, %bb.d ], [ %i.w, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %i.n, %bb.d ], [ %i.v, %.lr.ph.i ]
  %i.aa = icmp samesign ugt i64 %.020.lcssa.i, %i.r
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge34.i
  tail call void (i32, ptr, ...) @_Z17_mi_error_messageiPKcz(i32 noundef 14, ptr noundef nonnull @.str.175)
  br label %_ZL28_mi_page_thread_free_collectP9mi_page_s.exit

bb.f:                                             ; preds = %._crit_edge34.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !21
  %i.ad = ptrtoint ptr %i.ac to i64
  store i64 %i.ad, ptr %.0.lcssa.i, align 8, !tbaa !22
  store ptr %i.n, ptr %i.ab, align 8, !tbaa !21
  %i.ae = trunc nuw i64 %.020.lcssa.i to i16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ag = load i16, ptr %i.af, align 8, !tbaa !24
  %i.ah = sub i16 %i.ag, %i.ae
  store i16 %i.ah, ptr %i.af, align 8, !tbaa !24
  br label %_ZL28_mi_page_thread_free_collectP9mi_page_s.exit

_ZL28_mi_page_thread_free_collectP9mi_page_s.exit: ; preds = %bb.f, %bb.e, %._crit_edge.i, %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !21 ; 3 uses
  %.not22 = icmp eq ptr %i.aj, null
  br i1 %.not22, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZL28_mi_page_thread_free_collectP9mi_page_s.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !32 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %.sink.split, label %bb.h, !prof !26

bb.h:                                             ; preds = %bb.g
  br i1 %1, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.h, %.preheader
  %.0 = phi ptr [ %i.an, %.preheader ], [ %i.aj, %bb.h ] ; 2 uses
  %.0.val = load i64, ptr %.0, align 8, !tbaa !22 ; 2 uses
  %i.an = inttoptr i64 %.0.val to ptr
  %.not23 = icmp eq i64 %.0.val, 0
  br i1 %.not23, label %bb.i, label %.preheader, !llvm.loop !34

bb.i:                                             ; preds = %.preheader
  %i.ao = ptrtoint ptr %i.al to i64
  store i64 %i.ao, ptr %.0, align 8, !tbaa !22
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.i
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !32
  store ptr null, ptr %i.ai, align 8, !tbaa !21
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 15 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = and i8 %i.aq, -2
  store i8 %i.ar, ptr %i.ap, align 1
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.h, %_ZL28_mi_page_thread_free_collectP9mi_page_s.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i64 @mi_usable_size(ptr noundef %0) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = add i64 %i.a, -1                         ; 2 uses
  %i.c = icmp slt i64 %i.b, 33554432
  br i1 %i.c, label %_ZL15_mi_usable_sizePKvPKc.exit, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %1 = and i64 %i.b, 9223372036821221376          ; 2 uses
  %i.d = inttoptr i64 %1 to ptr
  %i.e = sub i64 %i.a, %1
  %i.f = lshr i64 %i.e, 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %i.h = getelementptr inbounds nuw [96 x i8], ptr %i.g, i64 %i.f ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !25
  %i.k = zext i32 %i.j to i64
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 %i.l ; 3 uses
  %i.n = getelementptr i8, ptr %i.m, i64 14
  %.val.i = load i8, ptr %i.n, align 2
  %i.o = and i8 %.val.i, 2
  %.not.i = icmp eq i8 %i.o, 0
  br i1 %.not.i, label %bb.c, label %bb.d, !prof !26

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr i8, ptr %i.m, i64 40
  %.val12.i = load i64, ptr %i.p, align 8, !tbaa !20
  br label %_ZL15_mi_usable_sizePKvPKc.exit

bb.d:                                             ; preds = %bb.b
  %i.q = tail call fastcc noundef i64 @_ZL30mi_page_usable_aligned_size_ofPK9mi_page_sPKv(ptr noundef nonnull %i.m, ptr noundef %0) #55
  br label %_ZL15_mi_usable_sizePKvPKc.exit

_ZL15_mi_usable_sizePKvPKc.exit:                  ; preds = %bb.a, %bb.c, %bb.d
  %.1.i = phi i64 [ 0, %bb.a ], [ %i.q, %bb.d ], [ %.val12.i, %bb.c ]
  ret i64 %.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define void @mi_free_size(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = add i64 %i.a, -1                         ; 2 uses
  %i.c = and i64 %i.b, -33554432                  ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.e = icmp slt i64 %i.b, 33554432
  br i1 %i.e, label %mi_free.exit, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @llvm.thread.pointer.p0()
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 280
  %i.i = load atomic i64, ptr %i.h monotonic, align 8
  %i.j = sub i64 %i.a, %i.c
  %i.k = lshr i64 %i.j, 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %i.m = getelementptr inbounds nuw [96 x i8], ptr %i.l, i64 %i.k ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !25
  %i.p = zext i32 %i.o to i64
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds i8, ptr %i.m, i64 %i.q ; 6 uses
  %i.s = icmp eq i64 %i.i, %i.g
  br i1 %i.s, label %bb.c, label %bb.g, !prof !26

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 14
  %i.u = load i8, ptr %i.t, align 2, !tbaa !27
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.d, label %bb.f, !prof !26

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !21
  %i.y = ptrtoint ptr %i.x to i64
  store i64 %i.y, ptr %0, align 8, !tbaa !22
  store ptr %0, ptr %i.w, align 8, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %i.aa = load i16, ptr %i.z, align 8, !tbaa !24
  %i.ab = add i16 %i.aa, -1                       ; 2 uses
  store i16 %i.ab, ptr %i.z, align 8, !tbaa !24
  %i.ac = icmp eq i16 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %mi_free.exit, !prof !19

bb.e:                                             ; preds = %bb.d
  tail call void @_Z15_mi_page_retireP9mi_page_s(ptr noundef nonnull %i.r) #55, !inline_history !35
  br label %mi_free.exit

bb.f:                                             ; preds = %bb.c
  tail call fastcc void @_ZL21mi_free_generic_localP9mi_page_sP12mi_segment_sPv(ptr noundef nonnull %i.r, ptr noundef %0) #55, !inline_history !35
  br label %mi_free.exit

bb.g:                                             ; preds = %bb.b
  tail call fastcc void @_ZL18mi_free_generic_mtP9mi_page_sP12mi_segment_sPv(ptr noundef nonnull %i.r, ptr noundef nonnull %i.d, ptr noundef %0) #57, !inline_history !35
  br label %mi_free.exit

mi_free.exit:                                     ; preds = %bb.a, %bb.d, %bb.e, %bb.f, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @mi_free_size_aligned(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = add i64 %i.a, -1                         ; 2 uses
  %i.c = and i64 %i.b, -33554432                  ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.e = icmp slt i64 %i.b, 33554432
  br i1 %i.e, label %mi_free_size.exit, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @llvm.thread.pointer.p0()
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 280
  %i.i = load atomic i64, ptr %i.h monotonic, align 8
  %i.j = sub i64 %i.a, %i.c
  %i.k = lshr i64 %i.j, 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %i.m = getelementptr inbounds nuw [96 x i8], ptr %i.l, i64 %i.k ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !25
  %i.p = zext i32 %i.o to i64
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds i8, ptr %i.m, i64 %i.q ; 6 uses
  %i.s = icmp eq i64 %i.i, %i.g
  br i1 %i.s, label %bb.c, label %bb.g, !prof !26

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 14
  %i.u = load i8, ptr %i.t, align 2, !tbaa !27
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.d, label %bb.f, !prof !26

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !21
  %i.y = ptrtoint ptr %i.x to i64
  store i64 %i.y, ptr %0, align 8, !tbaa !22
  store ptr %0, ptr %i.w, align 8, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %i.aa = load i16, ptr %i.z, align 8, !tbaa !24
  %i.ab = add i16 %i.aa, -1                       ; 2 uses
  store i16 %i.ab, ptr %i.z, align 8, !tbaa !24
  %i.ac = icmp eq i16 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %mi_free_size.exit, !prof !19

bb.e:                                             ; preds = %bb.d
  tail call void @_Z15_mi_page_retireP9mi_page_s(ptr noundef nonnull %i.r) #55, !inline_history !35
  br label %mi_free_size.exit

bb.f:                                             ; preds = %bb.c
  tail call fastcc void @_ZL21mi_free_generic_localP9mi_page_sP12mi_segment_sPv(ptr noundef nonnull %i.r, ptr noundef %0) #55, !inline_history !35
  br label %mi_free_size.exit

bb.g:                                             ; preds = %bb.b
  tail call fastcc void @_ZL18mi_free_generic_mtP9mi_page_sP12mi_segment_sPv(ptr noundef nonnull %i.r, ptr noundef nonnull %i.d, ptr noundef %0) #57, !inline_history !35
  br label %mi_free_size.exit

mi_free_size.exit:                                ; preds = %bb.a, %bb.d, %bb.e, %bb.f, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @mi_free_aligned(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = add i64 %i.a, -1                         ; 2 uses
  %i.c = and i64 %i.b, -33554432                  ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.e = icmp slt i64 %i.b, 33554432
  br i1 %i.e, label %mi_free.exit, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @llvm.thread.pointer.p0()
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 280
  %i.i = load atomic i64, ptr %i.h monotonic, align 8
  %i.j = sub i64 %i.a, %i.c
  %i.k = lshr i64 %i.j, 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %i.m = getelementptr inbounds nuw [96 x i8], ptr %i.l, i64 %i.k ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !25
  %i.p = zext i32 %i.o to i64
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds i8, ptr %i.m, i64 %i.q ; 6 uses
  %i.s = icmp eq i64 %i.i, %i.g
  br i1 %i.s, label %bb.c, label %bb.g, !prof !26

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 14
  %i.u = load i8, ptr %i.t, align 2, !tbaa !27
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.d, label %bb.f, !prof !26

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !21
  %i.y = ptrtoint ptr %i.x to i64
  store i64 %i.y, ptr %0, align 8, !tbaa !22
  store ptr %0, ptr %i.w, align 8, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %i.aa = load i16, ptr %i.z, align 8, !tbaa !24
  %i.ab = add i16 %i.aa, -1                       ; 2 uses
  store i16 %i.ab, ptr %i.z, align 8, !tbaa !24
  %i.ac = icmp eq i16 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %mi_free.exit, !prof !19

bb.e:                                             ; preds = %bb.d
  tail call void @_Z15_mi_page_retireP9mi_page_s(ptr noundef nonnull %i.r) #55, !inline_history !35
  br label %mi_free.exit

bb.f:                                             ; preds = %bb.c
  tail call fastcc void @_ZL21mi_free_generic_localP9mi_page_sP12mi_segment_sPv(ptr noundef nonnull %i.r, ptr noundef %0) #55, !inline_history !35
  br label %mi_free.exit

bb.g:                                             ; preds = %bb.b
  tail call fastcc void @_ZL18mi_free_generic_mtP9mi_page_sP12mi_segment_sPv(ptr noundef nonnull %i.r, ptr noundef nonnull %i.d, ptr noundef %0) #57, !inline_history !35
  br label %mi_free.exit

mi_free.exit:                                     ; preds = %bb.a, %bb.d, %bb.e, %bb.f, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_Z18_mi_padding_shrinkPK9mi_page_sPK10mi_block_sm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, i64 noundef %2) local_unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_Z15_mi_page_mallocP9mi_heap_sP9mi_page_sm(ptr noundef %0, ptr nofree noundef captures(none) %1, i64 noundef %2) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef %0, i64 noundef %2, i1 noundef zeroext false, i64 noundef 0) #55, !inline_history !36
  br label %_Z20_mi_page_malloc_zeroP9mi_heap_sP9mi_page_smb.exit

bb.c:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.b, align 8, !tbaa !22
  %i.e = inttoptr i64 %.val.i to ptr
  store ptr %i.e, ptr %i.a, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.g = load i16, ptr %i.f, align 8, !tbaa !24
  %i.h = add i16 %i.g, 1
  store i16 %i.h, ptr %i.f, align 8, !tbaa !24
  br label %_Z20_mi_page_malloc_zeroP9mi_heap_sP9mi_page_smb.exit

_Z20_mi_page_malloc_zeroP9mi_heap_sP9mi_page_smb.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.d, %bb.b ], [ %i.b, %bb.c ]
  ret ptr %.0.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_Z20_mi_page_malloc_zeroP9mi_heap_sP9mi_page_smb(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 8 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef %0, i64 noundef %2, i1 noundef zeroext %3, i64 noundef 0) #55
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %.val = load i64, ptr %i.b, align 8, !tbaa !22
  %i.e = inttoptr i64 %.val to ptr
  store ptr %i.e, ptr %i.a, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.g = load i16, ptr %i.f, align 8, !tbaa !24
  %i.h = add i16 %i.g, 1
  store i16 %i.h, ptr %i.f, align 8, !tbaa !24
  br i1 %3, label %bb.d, label %bb.g, !prof !19

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.j = load i8, ptr %i.i, align 1
  %i.k = and i8 %i.j, 1
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 0, ptr %i.b, align 8, !tbaa !22
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !20
  call void @llvm.assume(i1 true) [ "align"(ptr %i.b, i64 8) ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.b, i8 0, i64 %i.m, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ %i.b, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm(ptr noundef %0, ptr nofree noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef %0, i64 noundef %2, i1 noundef zeroext true, i64 noundef 0) #55, !inline_history !36
  br label %_Z20_mi_page_malloc_zeroP9mi_heap_sP9mi_page_smb.exit

bb.c:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.b, align 8, !tbaa !22
  %i.e = inttoptr i64 %.val.i to ptr
  store ptr %i.e, ptr %i.a, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.g = load i16, ptr %i.f, align 8, !tbaa !24
  %i.h = add i16 %i.g, 1
  store i16 %i.h, ptr %i.f, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.j = load i8, ptr %i.i, align 1
  %i.k = and i8 %i.j, 1
  %.not.i = icmp eq i8 %i.k, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %i.b, align 8, !tbaa !22
  br label %_Z20_mi_page_malloc_zeroP9mi_heap_sP9mi_page_smb.exit

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !20
  call void @llvm.assume(i1 true) [ "align"(ptr %i.b, i64 8) ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.b, i8 0, i64 %i.m, i1 false)
  br label %_Z20_mi_page_malloc_zeroP9mi_heap_sP9mi_page_smb.exit

_Z20_mi_page_malloc_zeroP9mi_heap_sP9mi_page_smb.exit: ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi ptr [ %i.d, %bb.b ], [ %i.b, %bb.d ], [ %i.b, %bb.e ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define noalias ptr @mi_zalloc_small(i64 noundef %0) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = add i64 %0, 7
  %i.d = lshr i64 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.d
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !39   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !32   ; 7 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %bb.c, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef nonnull %i.b, i64 noundef %0, i1 noundef zeroext true, i64 noundef 0) #55, !inline_history !36
  br label %_ZL25mi_heap_malloc_small_zeroP9mi_heap_smb.exit

bb.c:                                             ; preds = %bb.a
  %.val.i.i = load i64, ptr %i.i, align 8, !tbaa !22
  %i.l = inttoptr i64 %.val.i.i to ptr
  store ptr %i.l, ptr %i.h, align 8, !tbaa !32
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.n = load i16, ptr %i.m, align 8, !tbaa !24
  %i.o = add i16 %i.n, 1
  store i16 %i.o, ptr %i.m, align 8, !tbaa !24
end_hunk_1
begin_hunk_2_@mi_calloc:bb.a
  %i.h = lshr i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.h
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !32   ; 7 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %bb.f, !prof !19

bb.e:                                             ; preds = %bb.d
  %i.o = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef nonnull %i.b, i64 noundef %storemerge.i.ph.i, i1 noundef zeroext true, i64 noundef 0) #55, !inline_history !36
  br label %mi_heap_calloc.exit

bb.f:                                             ; preds = %bb.d
  %.val.i.i.i.i.i.i = load i64, ptr %i.m, align 8, !tbaa !22
  %i.p = inttoptr i64 %.val.i.i.i.i.i.i to ptr
  store ptr %i.p, ptr %i.l, align 8, !tbaa !32
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.r = load i16, ptr %i.q, align 8, !tbaa !24
  %i.s = add i16 %i.r, 1
  store i16 %i.s, ptr %i.q, align 8, !tbaa !24
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 15
  %i.u = load i8, ptr %i.t, align 1
  %i.v = and i8 %i.u, 1
  %.not.i.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 0, ptr %i.m, align 8, !tbaa !22
  br label %mi_heap_calloc.exit

bb.h:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !20
  call void @llvm.assume(i1 true) [ "align"(ptr %i.m, i64 8) ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.m, i8 0, i64 %i.x, i1 false)
  br label %mi_heap_calloc.exit

bb.i:                                             ; preds = %bb.c
  %i.y = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef %i.b, i64 noundef %storemerge.i.ph.i, i1 noundef zeroext true, i64 noundef 0) #55
  br label %mi_heap_calloc.exit

mi_heap_calloc.exit:                              ; preds = %bb.b, %bb.e, %bb.g, %bb.h, %bb.i
  %.0.i = phi ptr [ null, %bb.b ], [ %i.y, %bb.i ], [ %i.o, %bb.e ], [ %i.m, %bb.g ], [ %i.m, %bb.h ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define noalias ptr @mi_heap_mallocn(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0
  br i1 %i.b, label %_ZL22mi_count_size_overflowmmPm.exit, label %bb.c, !prof !19

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph = phi i64 [ %2, %bb.a ], [ %i.c, %bb.b ] ; 4 uses
  %i.d = icmp ult i64 %storemerge.i.ph, 1025
  br i1 %i.d, label %bb.d, label %bb.g, !prof !26

bb.d:                                             ; preds = %bb.c
  %i.e = add nuw nsw i64 %storemerge.i.ph, 7
  %i.f = lshr i64 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !39   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !32   ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %bb.f, !prof !19

bb.e:                                             ; preds = %bb.d
  %i.m = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef nonnull %0, i64 noundef %storemerge.i.ph, i1 noundef zeroext false, i64 noundef 0) #55, !inline_history !36
  br label %_ZL22mi_count_size_overflowmmPm.exit

bb.f:                                             ; preds = %bb.d
  %.val.i.i.i.i.i = load i64, ptr %i.k, align 8, !tbaa !22
  %i.n = inttoptr i64 %.val.i.i.i.i.i to ptr
  store ptr %i.n, ptr %i.j, align 8, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.p = load i16, ptr %i.o, align 8, !tbaa !24
  %i.q = add i16 %i.p, 1
  store i16 %i.q, ptr %i.o, align 8, !tbaa !24
  br label %_ZL22mi_count_size_overflowmmPm.exit

bb.g:                                             ; preds = %bb.c
  %i.r = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef %0, i64 noundef %storemerge.i.ph, i1 noundef zeroext false, i64 noundef 0) #55
  br label %_ZL22mi_count_size_overflowmmPm.exit

_ZL22mi_count_size_overflowmmPm.exit:             ; preds = %bb.g, %bb.f, %bb.e, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.r, %bb.g ], [ %i.m, %bb.e ], [ %i.k, %bb.f ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noalias ptr @mi_heap_malloc(ptr noundef %0, i64 noundef %1) #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i64 %1, 1025
  br i1 %i.a, label %bb.b, label %bb.e, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 7
  %i.c = lshr i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.c
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !39   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32   ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %bb.d, !prof !19

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef nonnull %0, i64 noundef %1, i1 noundef zeroext false, i64 noundef 0) #55, !inline_history !36
  br label %_Z20_mi_heap_malloc_zeroP9mi_heap_smb.exit

bb.d:                                             ; preds = %bb.b
  %.val.i.i.i.i = load i64, ptr %i.h, align 8, !tbaa !22
  %i.k = inttoptr i64 %.val.i.i.i.i to ptr
  store ptr %i.k, ptr %i.g, align 8, !tbaa !32
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.m = load i16, ptr %i.l, align 8, !tbaa !24
  %i.n = add i16 %i.m, 1
  store i16 %i.n, ptr %i.l, align 8, !tbaa !24
  br label %_Z20_mi_heap_malloc_zeroP9mi_heap_smb.exit

bb.e:                                             ; preds = %bb.a
  %i.o = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false, i64 noundef 0) #55
  br label %_Z20_mi_heap_malloc_zeroP9mi_heap_smb.exit

_Z20_mi_heap_malloc_zeroP9mi_heap_smb.exit:       ; preds = %bb.c, %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.o, %bb.e ], [ %i.j, %bb.c ], [ %i.h, %bb.d ]
  ret ptr %.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define noalias ptr @mi_mallocn(i64 noundef %0, i64 noundef %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 3 uses
  %.not.i = icmp eq i64 %0, 1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  %i.e = extractvalue { i64, i1 } %i.c, 0
  br i1 %i.d, label %mi_heap_mallocn.exit, label %bb.c, !prof !19

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph.i = phi i64 [ %1, %bb.a ], [ %i.e, %bb.b ] ; 4 uses
  %i.f = icmp ult i64 %storemerge.i.ph.i, 1025
  br i1 %i.f, label %bb.d, label %bb.g, !prof !26

bb.d:                                             ; preds = %bb.c
  %i.g = add nuw nsw i64 %storemerge.i.ph.i, 7
  %i.h = lshr i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.h
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !32   ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %bb.f, !prof !19

bb.e:                                             ; preds = %bb.d
  %i.o = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef nonnull %i.b, i64 noundef %storemerge.i.ph.i, i1 noundef zeroext false, i64 noundef 0) #55, !inline_history !36
  br label %mi_heap_mallocn.exit

bb.f:                                             ; preds = %bb.d
  %.val.i.i.i.i.i.i = load i64, ptr %i.m, align 8, !tbaa !22
  %i.p = inttoptr i64 %.val.i.i.i.i.i.i to ptr
  store ptr %i.p, ptr %i.l, align 8, !tbaa !32
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.r = load i16, ptr %i.q, align 8, !tbaa !24
  %i.s = add i16 %i.r, 1
  store i16 %i.s, ptr %i.q, align 8, !tbaa !24
  br label %mi_heap_mallocn.exit

bb.g:                                             ; preds = %bb.c
  %i.t = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef %i.b, i64 noundef %storemerge.i.ph.i, i1 noundef zeroext false, i64 noundef 0) #55
  br label %mi_heap_mallocn.exit

mi_heap_mallocn.exit:                             ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  %.0.i = phi ptr [ null, %bb.b ], [ %i.t, %bb.g ], [ %i.o, %bb.e ], [ %i.m, %bb.f ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @mi_expand(ptr noundef %0, i64 noundef %1) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = add i64 %i.b, -1                         ; 2 uses
  %i.d = icmp slt i64 %i.c, 33554432
  br i1 %i.d, label %_ZL15_mi_usable_sizePKvPKc.exit, label %bb.c, !prof !19

bb.c:                                             ; preds = %bb.b
  %2 = and i64 %i.c, 9223372036821221376          ; 2 uses
  %i.e = inttoptr i64 %2 to ptr
  %i.f = sub i64 %i.b, %2
  %i.g = lshr i64 %i.f, 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 288
  %i.i = getelementptr inbounds nuw [96 x i8], ptr %i.h, i64 %i.g ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !25
  %i.l = zext i32 %i.k to i64
  %i.m = sub nsw i64 0, %i.l
  %i.n = getelementptr inbounds i8, ptr %i.i, i64 %i.m ; 3 uses
  %i.o = getelementptr i8, ptr %i.n, i64 14
  %.val.i = load i8, ptr %i.o, align 2
  %i.p = and i8 %.val.i, 2
  %.not.i = icmp eq i8 %i.p, 0
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !26

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.n, i64 40
  %.val12.i = load i64, ptr %i.q, align 8, !tbaa !20
  br label %_ZL15_mi_usable_sizePKvPKc.exit

bb.e:                                             ; preds = %bb.c
  %i.r = tail call fastcc noundef i64 @_ZL30mi_page_usable_aligned_size_ofPK9mi_page_sPKv(ptr noundef nonnull %i.n, ptr noundef nonnull %0) #55
  br label %_ZL15_mi_usable_sizePKvPKc.exit

_ZL15_mi_usable_sizePKvPKc.exit:                  ; preds = %bb.b, %bb.d, %bb.e
  %.1.i = phi i64 [ 0, %bb.b ], [ %i.r, %bb.e ], [ %.val12.i, %bb.d ]
  %i.s = icmp ugt i64 %1, %.1.i
  %. = select i1 %i.s, ptr null, ptr %0
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZL15_mi_usable_sizePKvPKc.exit
  %.1 = phi ptr [ %., %_ZL15_mi_usable_sizePKvPKc.exit ], [ null, %bb.a ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_Z21_mi_heap_realloc_zeroP9mi_heap_sPvmb(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = add i64 %i.a, -1                         ; 3 uses
  %i.c = icmp slt i64 %i.b, 33554432              ; 2 uses
  br i1 %i.c, label %_ZL15_mi_usable_sizePKvPKc.exit.thread, label %bb.b, !prof !19

_ZL15_mi_usable_sizePKvPKc.exit.thread:           ; preds = %bb.a
  %.not50 = icmp ne i64 %2, 0
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %4 = and i64 %i.b, 9223372036821221376          ; 2 uses
  %i.d = inttoptr i64 %4 to ptr
  %i.e = sub i64 %i.a, %4
  %i.f = lshr i64 %i.e, 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %i.h = getelementptr inbounds nuw [96 x i8], ptr %i.g, i64 %i.f ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !25
  %i.k = zext i32 %i.j to i64
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 %i.l ; 3 uses
  %i.n = getelementptr i8, ptr %i.m, i64 14
  %.val.i = load i8, ptr %i.n, align 2
  %i.o = and i8 %.val.i, 2
  %.not.i = icmp eq i8 %i.o, 0
  br i1 %.not.i, label %bb.c, label %bb.d, !prof !26

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr i8, ptr %i.m, i64 40
  %.val12.i = load i64, ptr %i.p, align 8, !tbaa !20
  br label %_ZL15_mi_usable_sizePKvPKc.exit

bb.d:                                             ; preds = %bb.b
  %i.q = tail call fastcc noundef i64 @_ZL30mi_page_usable_aligned_size_ofPK9mi_page_sPKv(ptr noundef nonnull %i.m, ptr noundef %1) #55
  br label %_ZL15_mi_usable_sizePKvPKc.exit

_ZL15_mi_usable_sizePKvPKc.exit:                  ; preds = %bb.c, %bb.d
  %.1.i = phi i64 [ %.val12.i, %bb.c ], [ %i.q, %bb.d ] ; 4 uses
  %.not = icmp ugt i64 %2, %.1.i
  %i.r = lshr i64 %.1.i, 1
  %.not35 = icmp ult i64 %2, %i.r
  %i.s = add i64 %2, -1
  %i.t = icmp uge i64 %i.s, %.1.i
  %.not43 = or i1 %i.t, %.not35
  br i1 %.not43, label %bb.e, label %mi_free.exit, !prof !40

bb.e:                                             ; preds = %_ZL15_mi_usable_sizePKvPKc.exit.thread, %_ZL15_mi_usable_sizePKvPKc.exit
  %.not54 = phi i1 [ %.not50, %_ZL15_mi_usable_sizePKvPKc.exit.thread ], [ %.not, %_ZL15_mi_usable_sizePKvPKc.exit ]
  %.1.i53 = phi i64 [ 0, %_ZL15_mi_usable_sizePKvPKc.exit.thread ], [ %.1.i, %_ZL15_mi_usable_sizePKvPKc.exit ] ; 2 uses
  %i.u = icmp ult i64 %2, 1025
  br i1 %i.u, label %bb.f, label %mi_heap_malloc.exit, !prof !26

bb.f:                                             ; preds = %bb.e
  %i.v = add nuw nsw i64 %2, 7
  %i.w = lshr i64 %i.v, 3
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.w
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !39   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !32 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %mi_heap_malloc.exit, label %mi_heap_malloc.exit.thread, !prof !19

mi_heap_malloc.exit.thread:                       ; preds = %bb.f
  %.val.i.i.i.i.i = load i64, ptr %i.ab, align 8, !tbaa !22
  %i.ad = inttoptr i64 %.val.i.i.i.i.i to ptr
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 2 uses
  %i.af = load i16, ptr %i.ae, align 8, !tbaa !24
  %i.ag = add i16 %i.af, 1
  store i16 %i.ag, ptr %i.ae, align 8, !tbaa !24
  br label %bb.g

mi_heap_malloc.exit:                              ; preds = %bb.e, %bb.f
  %i.ah = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef %0, i64 noundef %2, i1 noundef zeroext false, i64 noundef 0) #55 ; 2 uses
  %.not36 = icmp eq ptr %i.ah, null
  br i1 %.not36, label %mi_free.exit, label %bb.g, !prof !41

bb.g:                                             ; preds = %mi_heap_malloc.exit.thread, %mi_heap_malloc.exit
  %.0.i.i.i41 = phi ptr [ %i.ab, %mi_heap_malloc.exit.thread ], [ %i.ah, %mi_heap_malloc.exit ] ; 9 uses
  %or.cond38 = and i1 %3, %.not54
  br i1 %or.cond38, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = tail call i64 @llvm.usub.sat.i64(i64 %.1.i53, i64 8) ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i.i41, i64 %i.ai
  %i.ak = sub nuw i64 %2, %i.ai
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aj, i8 0, i64 %i.ak, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.al = icmp eq i64 %2, 0
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr %.0.i.i.i41, align 1, !tbaa !27
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %.not37 = icmp eq ptr %1, null
  br i1 %.not37, label %mi_free.exit, label %bb.l, !prof !19

bb.l:                                             ; preds = %bb.k
  %i.am = tail call i64 @llvm.umin.i64(i64 %2, i64 %.1.i53)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i.i.i41, ptr nonnull readonly align 1 %1, i64 %i.am, i1 false)
  %5 = and i64 %i.b, -33554432                    ; 2 uses
  %i.an = inttoptr i64 %5 to ptr                  ; 3 uses
  br i1 %i.c, label %mi_free.exit, label %bb.m, !prof !19

bb.m:                                             ; preds = %bb.l
  %i.ao = tail call ptr @llvm.thread.pointer.p0()
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 280
  %i.ar = load atomic i64, ptr %i.aq monotonic, align 8
  %i.as = sub i64 %i.a, %5
  %i.at = lshr i64 %i.as, 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 288
  %i.av = getelementptr inbounds nuw [96 x i8], ptr %i.au, i64 %i.at ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !25
  %i.ay = zext i32 %i.ax to i64
  %i.az = sub nsw i64 0, %i.ay
  %i.ba = getelementptr inbounds i8, ptr %i.av, i64 %i.az ; 6 uses
  %i.bb = icmp eq i64 %i.ar, %i.ap
  br i1 %i.bb, label %bb.n, label %bb.r, !prof !26

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 14
  %i.bd = load i8, ptr %i.bc, align 2, !tbaa !27
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %bb.o, label %bb.q, !prof !26

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !21
  %i.bh = ptrtoint ptr %i.bg to i64
  store i64 %i.bh, ptr %1, align 8, !tbaa !22
  store ptr %1, ptr %i.bf, align 8, !tbaa !21
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 32 ; 2 uses
  %i.bj = load i16, ptr %i.bi, align 8, !tbaa !24
  %i.bk = add i16 %i.bj, -1                       ; 2 uses
  store i16 %i.bk, ptr %i.bi, align 8, !tbaa !24
  %i.bl = icmp eq i16 %i.bk, 0
  br i1 %i.bl, label %bb.p, label %mi_free.exit, !prof !19

bb.p:                                             ; preds = %bb.o
  tail call void @_Z15_mi_page_retireP9mi_page_s(ptr noundef nonnull %i.ba) #55, !inline_history !35
  br label %mi_free.exit

bb.q:                                             ; preds = %bb.n
  tail call fastcc void @_ZL21mi_free_generic_localP9mi_page_sP12mi_segment_sPv(ptr noundef nonnull %i.ba, ptr noundef nonnull %1) #55, !inline_history !35
  br label %mi_free.exit

bb.r:                                             ; preds = %bb.m
  tail call fastcc void @_ZL18mi_free_generic_mtP9mi_page_sP12mi_segment_sPv(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.an, ptr noundef nonnull %1) #57, !inline_history !35
  br label %mi_free.exit

mi_free.exit:                                     ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.l, %mi_heap_malloc.exit, %bb.k, %_ZL15_mi_usable_sizePKvPKc.exit
  %.0 = phi ptr [ %1, %_ZL15_mi_usable_sizePKvPKc.exit ], [ %.0.i.i.i41, %bb.k ], [ null, %mi_heap_malloc.exit ], [ %.0.i.i.i41, %bb.l ], [ %.0.i.i.i41, %bb.o ], [ %.0.i.i.i41, %bb.p ], [ %.0.i.i.i41, %bb.q ], [ %.0.i.i.i41, %bb.r ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @mi_heap_realloc(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef ptr @_Z21_mi_heap_realloc_zeroP9mi_heap_sPvmb(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext false) #55
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @mi_heap_reallocn(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %3) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0
  br i1 %i.b, label %_ZL22mi_count_size_overflowmmPm.exit, label %bb.c, !prof !19

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph = phi i64 [ %3, %bb.a ], [ %i.c, %bb.b ]
  %i.d = tail call noundef ptr @_Z21_mi_heap_realloc_zeroP9mi_heap_sPvmb(ptr noundef %0, ptr noundef %1, i64 noundef %storemerge.i.ph, i1 noundef zeroext false) #55
  br label %_ZL22mi_count_size_overflowmmPm.exit

_ZL22mi_count_size_overflowmmPm.exit:             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ %i.d, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @mi_heap_reallocf(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_Z21_mi_heap_realloc_zeroP9mi_heap_sPvmb(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext false) #55 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  %i.c = icmp ne ptr %1, null
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %mi_free.exit

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.e = add i64 %i.d, -1                         ; 2 uses
  %i.f = and i64 %i.e, -33554432                  ; 2 uses
  %i.g = inttoptr i64 %i.f to ptr                 ; 3 uses
  %i.h = icmp slt i64 %i.e, 33554432
  br i1 %i.h, label %mi_free.exit, label %bb.c, !prof !19

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @llvm.thread.pointer.p0()
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.l = load atomic i64, ptr %i.k monotonic, align 8
  %i.m = sub i64 %i.d, %i.f
  %i.n = lshr i64 %i.m, 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.p = getelementptr inbounds nuw [96 x i8], ptr %i.o, i64 %i.n ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !25
  %i.s = zext i32 %i.r to i64
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds i8, ptr %i.p, i64 %i.t ; 6 uses
  %i.v = icmp eq i64 %i.l, %i.j
  br i1 %i.v, label %bb.d, label %bb.h, !prof !26

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 14
  %i.x = load i8, ptr %i.w, align 2, !tbaa !27
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.e, label %bb.g, !prof !26

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !21
  %i.ab = ptrtoint ptr %i.aa to i64
  store i64 %i.ab, ptr %1, align 8, !tbaa !22
  store ptr %1, ptr %i.z, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 8, !tbaa !24
  %i.ae = add i16 %i.ad, -1                       ; 2 uses
  store i16 %i.ae, ptr %i.ac, align 8, !tbaa !24
  %i.af = icmp eq i16 %i.ae, 0
  br i1 %i.af, label %bb.f, label %mi_free.exit, !prof !19

bb.f:                                             ; preds = %bb.e
  tail call void @_Z15_mi_page_retireP9mi_page_s(ptr noundef nonnull %i.u) #55, !inline_history !35
  br label %mi_free.exit

bb.g:                                             ; preds = %bb.d
  tail call fastcc void @_ZL21mi_free_generic_localP9mi_page_sP12mi_segment_sPv(ptr noundef nonnull %i.u, ptr noundef nonnull %1) #55, !inline_history !35
  br label %mi_free.exit

bb.h:                                             ; preds = %bb.c
  tail call fastcc void @_ZL18mi_free_generic_mtP9mi_page_sP12mi_segment_sPv(ptr noundef nonnull %i.u, ptr noundef nonnull %i.g, ptr noundef nonnull %1) #57, !inline_history !35
  br label %mi_free.exit

mi_free.exit:                                     ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @mi_heap_rezalloc(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef ptr @_Z21_mi_heap_realloc_zeroP9mi_heap_sPvmb(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext true) #55
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @mi_heap_recalloc(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %3) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0
  br i1 %i.b, label %_ZL22mi_count_size_overflowmmPm.exit, label %bb.c, !prof !19

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph = phi i64 [ %3, %bb.a ], [ %i.c, %bb.b ]
  %i.d = tail call noundef ptr @_Z21_mi_heap_realloc_zeroP9mi_heap_sPvmb(ptr noundef %0, ptr noundef %1, i64 noundef %storemerge.i.ph, i1 noundef zeroext true) #55
  br label %_ZL22mi_count_size_overflowmmPm.exit

_ZL22mi_count_size_overflowmmPm.exit:             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ %i.d, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @mi_realloc(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.c = tail call noundef ptr @_Z21_mi_heap_realloc_zeroP9mi_heap_sPvmb(ptr noundef %i.b, ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #55
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @mi_reallocn(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37
  %.not.i = icmp eq i64 %1, 1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  %i.e = extractvalue { i64, i1 } %i.c, 0
  br i1 %i.d, label %mi_heap_reallocn.exit, label %bb.c, !prof !19

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph.i = phi i64 [ %2, %bb.a ], [ %i.e, %bb.b ]
  %i.f = tail call noundef ptr @_Z21_mi_heap_realloc_zeroP9mi_heap_sPvmb(ptr noundef %i.b, ptr noundef %0, i64 noundef %storemerge.i.ph.i, i1 noundef zeroext false) #55
  br label %mi_heap_reallocn.exit

mi_heap_reallocn.exit:                            ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.f, %bb.c ], [ null, %bb.b ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @mi_reallocf(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.c = tail call ptr @mi_heap_reallocf(ptr noundef %i.b, ptr noundef %0, i64 noundef %1) #55
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @mi_rezalloc(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.c = tail call noundef ptr @_Z21_mi_heap_realloc_zeroP9mi_heap_sPvmb(ptr noundef %i.b, ptr noundef %0, i64 noundef %1, i1 noundef zeroext true) #55
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @mi_recalloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37
  %.not.i = icmp eq i64 %1, 1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  %i.e = extractvalue { i64, i1 } %i.c, 0
  br i1 %i.d, label %mi_heap_recalloc.exit, label %bb.c, !prof !19

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph.i = phi i64 [ %2, %bb.a ], [ %i.e, %bb.b ]
  %i.f = tail call noundef ptr @_Z21_mi_heap_realloc_zeroP9mi_heap_sPvmb(ptr noundef %i.b, ptr noundef %0, i64 noundef %storemerge.i.ph.i, i1 noundef zeroext true) #55
  br label %mi_heap_recalloc.exit

mi_heap_recalloc.exit:                            ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.f, %bb.c ], [ null, %bb.b ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define noalias ptr @mi_heap_strdup(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.d, label %_Z10_mi_strlenPKc.exit

_Z10_mi_strlenPKc.exit:                           ; preds = %bb.a
  %strlen.i = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) ; 4 uses
  %i.b = add i64 %strlen.i, 1                     ; 2 uses
  %i.c = icmp ult i64 %i.b, 1025
  br i1 %i.c, label %bb.b, label %mi_heap_malloc.exit, !prof !26

bb.b:                                             ; preds = %_Z10_mi_strlenPKc.exit
  %i.d = add nsw i64 %strlen.i, 8
  %i.e = lshr i64 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.e
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !32   ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %mi_heap_malloc.exit, label %mi_heap_malloc.exit.thread, !prof !19

mi_heap_malloc.exit.thread:                       ; preds = %bb.b
  %.val.i.i.i.i.i = load i64, ptr %i.j, align 8, !tbaa !22
  %i.l = inttoptr i64 %.val.i.i.i.i.i to ptr
  store ptr %i.l, ptr %i.i, align 8, !tbaa !32
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.n = load i16, ptr %i.m, align 8, !tbaa !24
  %i.o = add i16 %i.n, 1
  store i16 %i.o, ptr %i.m, align 8, !tbaa !24
  br label %bb.c

mi_heap_malloc.exit:                              ; preds = %_Z10_mi_strlenPKc.exit, %bb.b
  %i.p = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef %0, i64 noundef %i.b, i1 noundef zeroext false, i64 noundef 0) #55 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.d, label %bb.c

bb.c:                                             ; preds = %mi_heap_malloc.exit.thread, %mi_heap_malloc.exit
  %.0.i.i.i14 = phi ptr [ %i.j, %mi_heap_malloc.exit.thread ], [ %i.p, %mi_heap_malloc.exit ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i.i.i14, ptr nonnull readonly align 1 %1, i64 %strlen.i, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i.i14, i64 %strlen.i
  store i8 0, ptr %i.r, align 1, !tbaa !27
end_hunk_2
begin_hunk_3_@mi_strndup:bb.a

.preheader.i.i:                                   ; preds = %bb.a, %.preheader.i.i
  %.0.i.i = phi i64 [ %i.i, %.preheader.i.i ], [ 0, %bb.a ] ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i.i
  %i.e = load i8, ptr %i.d, align 1, !tbaa !27
  %i.f = icmp ne i8 %i.e, 0
  %i.g = icmp ult i64 %.0.i.i, %1
  %i.h = and i1 %i.g, %i.f
  %i.i = add i64 %.0.i.i, 1                       ; 3 uses
  br i1 %i.h, label %.preheader.i.i, label %_Z11_mi_strnlenPKcm.exit.i, !llvm.loop !42

_Z11_mi_strnlenPKcm.exit.i:                       ; preds = %.preheader.i.i
  %i.j = icmp ult i64 %i.i, 1025
  br i1 %i.j, label %bb.b, label %mi_heap_malloc.exit.i, !prof !26

bb.b:                                             ; preds = %_Z11_mi_strnlenPKcm.exit.i
  %i.k = add nsw i64 %.0.i.i, 8
  %i.l = lshr i64 %i.k, 3
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !39   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !32   ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %mi_heap_malloc.exit.i, label %mi_heap_malloc.exit.thread.i, !prof !19

mi_heap_malloc.exit.thread.i:                     ; preds = %bb.b
  %.val.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !tbaa !22
  %i.s = inttoptr i64 %.val.i.i.i.i.i.i to ptr
  store ptr %i.s, ptr %i.p, align 8, !tbaa !32
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  %i.u = load i16, ptr %i.t, align 8, !tbaa !24
  %i.v = add i16 %i.u, 1
  store i16 %i.v, ptr %i.t, align 8, !tbaa !24
  br label %bb.c

mi_heap_malloc.exit.i:                            ; preds = %bb.b, %_Z11_mi_strnlenPKcm.exit.i
  %i.w = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef %i.b, i64 noundef %i.i, i1 noundef zeroext false, i64 noundef 0) #55 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %mi_heap_strndup.exit, label %bb.c

bb.c:                                             ; preds = %mi_heap_malloc.exit.i, %mi_heap_malloc.exit.thread.i
  %.0.i.i.i15.i = phi ptr [ %i.q, %mi_heap_malloc.exit.thread.i ], [ %i.w, %mi_heap_malloc.exit.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i.i.i15.i, ptr nonnull readonly align 1 %0, i64 %.0.i.i, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i.i15.i, i64 %.0.i.i
  store i8 0, ptr %i.y, align 1, !tbaa !27
  br label %mi_heap_strndup.exit

mi_heap_strndup.exit:                             ; preds = %bb.a, %mi_heap_malloc.exit.i, %bb.c
  %.1.i = phi ptr [ null, %bb.a ], [ %.0.i.i.i15.i, %bb.c ], [ null, %mi_heap_malloc.exit.i ]
  ret ptr %.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define noalias ptr @mi_heap_realpath(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @realpath(ptr noundef %1, ptr noundef nonnull %2) #55
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr @realpath(ptr noundef %1, ptr noundef null) #55 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.f, label %_Z10_mi_strlenPKc.exit.i

_Z10_mi_strlenPKc.exit.i:                         ; preds = %bb.c
  %strlen.i.i = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.b) ; 4 uses
  %i.d = add i64 %strlen.i.i, 1                   ; 2 uses
  %i.e = icmp ult i64 %i.d, 1025
  br i1 %i.e, label %bb.d, label %mi_heap_malloc.exit.i, !prof !26

bb.d:                                             ; preds = %_Z10_mi_strlenPKc.exit.i
  %i.f = add nsw i64 %strlen.i.i, 8
  %i.g = lshr i64 %i.f, 3
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !32   ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %mi_heap_malloc.exit.i, label %mi_heap_malloc.exit.thread.i, !prof !19

mi_heap_malloc.exit.thread.i:                     ; preds = %bb.d
  %.val.i.i.i.i.i.i = load i64, ptr %i.l, align 8, !tbaa !22
  %i.n = inttoptr i64 %.val.i.i.i.i.i.i to ptr
  store ptr %i.n, ptr %i.k, align 8, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %i.p = load i16, ptr %i.o, align 8, !tbaa !24
  %i.q = add i16 %i.p, 1
  store i16 %i.q, ptr %i.o, align 8, !tbaa !24
  br label %bb.e

mi_heap_malloc.exit.i:                            ; preds = %bb.d, %_Z10_mi_strlenPKc.exit.i
  %i.r = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef %0, i64 noundef %i.d, i1 noundef zeroext false, i64 noundef 0) #55 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %mi_heap_strdup.exit, label %bb.e

bb.e:                                             ; preds = %mi_heap_malloc.exit.i, %mi_heap_malloc.exit.thread.i
  %.0.i.i.i14.i = phi ptr [ %i.l, %mi_heap_malloc.exit.thread.i ], [ %i.r, %mi_heap_malloc.exit.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i.i.i14.i, ptr nonnull readonly align 1 %i.b, i64 %strlen.i.i, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i.i14.i, i64 %strlen.i.i
  store i8 0, ptr %i.t, align 1, !tbaa !27
  br label %mi_heap_strdup.exit

mi_heap_strdup.exit:                              ; preds = %mi_heap_malloc.exit.i, %bb.e
  %.1.i = phi ptr [ null, %mi_heap_malloc.exit.i ], [ %.0.i.i.i14.i, %bb.e ]
  tail call void @mi_cfree(ptr noundef nonnull %i.b) #55
  br label %bb.f

bb.f:                                             ; preds = %mi_heap_strdup.exit, %bb.c, %bb.b
  %.1 = phi ptr [ %i.a, %bb.b ], [ %.1.i, %mi_heap_strdup.exit ], [ null, %bb.c ]
  ret ptr %.1
}

; Function Attrs: nofree nounwind
declare noundef ptr @realpath(ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define void @mi_cfree(ptr noundef %0) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i64, ptr @_ZL14mi_arena_count monotonic, align 64 ; 2 uses
  %.not1922.not.i.i.i = icmp eq i64 %i.a, 0
  br i1 %.not1922.not.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.critedge.i.i.i
  %.01323.i.i.i = phi i64 [ %i.l, %.critedge.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @_ZL9mi_arenas, i64 %.01323.i.i.i
  %i.c = load atomic ptr, ptr %i.b monotonic, align 8 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.e = load atomic ptr, ptr %i.d seq_cst, align 8
  %.not18.i.i.i = icmp ugt ptr %i.e, %0
  br i1 %.not18.i.i.i, label %.critedge.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load atomic ptr, ptr %i.d seq_cst, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !43
  %i.i = shl i64 %i.h, 25
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  %i.k = icmp ugt ptr %i.j, %0
  br i1 %i.k, label %mi_is_in_heap_region.exit.thread2.loopexit, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.c, %bb.b, %.lr.ph.i.i.i
  %i.l = add nuw i64 %.01323.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.l, %i.a
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !53

.loopexit.i.i:                                    ; preds = %.critedge.i.i.i, %bb.a
  %i.m = icmp eq ptr %0, null
  br i1 %i.m, label %mi_free.exit, label %bb.d

bb.d:                                             ; preds = %.loopexit.i.i
  %i.n = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.o = add i64 %i.n, -1                         ; 3 uses
  %i.p = and i64 %i.o, -33554432                  ; 2 uses
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  %i.r = icmp slt i64 %i.o, 33554432
  %i.s = select i1 %i.r, ptr null, ptr %i.q       ; 3 uses
  %i.t = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.u = icmp ugt ptr %i.s, inttoptr (i64 52776558133247 to ptr)
  br i1 %i.u, label %mi_free.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = udiv i64 %i.t, 2164663517184
  %i.w = urem i64 %i.t, 2164663517184             ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr @_ZL14mi_segment_map, i64 %i.v
  %i.y = load atomic ptr, ptr %i.x monotonic, align 8 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %mi_free.exit, label %mi_is_in_heap_region.exit, !prof !19

mi_is_in_heap_region.exit:                        ; preds = %bb.e
  %i.aa = lshr exact i64 %i.w, 25
  %i.ab = lshr i64 %i.w, 31
  %i.ac = and i64 %i.aa, 63
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ab
  %i.af = load atomic i64, ptr %i.ae monotonic, align 8
  %i.ag = shl nuw i64 1, %i.ac
  %i.ah = and i64 %i.af, %i.ag
  %.not.i2.i.i = icmp ne i64 %i.ah, 0
  %i.ai = icmp ne ptr %i.s, null
  %i.aj = and i1 %i.ai, %.not.i2.i.i
  br i1 %i.aj, label %mi_is_in_heap_region.exit.thread2, label %mi_free.exit

mi_is_in_heap_region.exit.thread2.loopexit:       ; preds = %bb.c
  %.pre = ptrtoint ptr %0 to i64                  ; 2 uses
  %.pre3 = add i64 %.pre, -1                      ; 2 uses
  %.pre5 = and i64 %.pre3, -33554432              ; 2 uses
  %.pre7 = inttoptr i64 %.pre5 to ptr
  br label %mi_is_in_heap_region.exit.thread2

mi_is_in_heap_region.exit.thread2:                ; preds = %mi_is_in_heap_region.exit.thread2.loopexit, %mi_is_in_heap_region.exit
  %.pre-phi8 = phi ptr [ %.pre7, %mi_is_in_heap_region.exit.thread2.loopexit ], [ %i.q, %mi_is_in_heap_region.exit ] ; 3 uses
  %.pre-phi6 = phi i64 [ %.pre5, %mi_is_in_heap_region.exit.thread2.loopexit ], [ %i.p, %mi_is_in_heap_region.exit ]
  %.pre-phi4 = phi i64 [ %.pre3, %mi_is_in_heap_region.exit.thread2.loopexit ], [ %i.o, %mi_is_in_heap_region.exit ]
  %.pre-phi = phi i64 [ %.pre, %mi_is_in_heap_region.exit.thread2.loopexit ], [ %i.n, %mi_is_in_heap_region.exit ]
  %i.ak = icmp slt i64 %.pre-phi4, 33554432
  br i1 %i.ak, label %mi_free.exit, label %bb.f, !prof !19

bb.f:                                             ; preds = %mi_is_in_heap_region.exit.thread2
  %i.al = tail call ptr @llvm.thread.pointer.p0()
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %.pre-phi8, i64 280
  %i.ao = load atomic i64, ptr %i.an monotonic, align 8
  %i.ap = sub i64 %.pre-phi, %.pre-phi6
  %i.aq = lshr i64 %i.ap, 16
  %i.ar = getelementptr inbounds nuw i8, ptr %.pre-phi8, i64 288
  %i.as = getelementptr inbounds nuw [96 x i8], ptr %i.ar, i64 %i.aq ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !25
  %i.av = zext i32 %i.au to i64
  %i.aw = sub nsw i64 0, %i.av
  %i.ax = getelementptr inbounds i8, ptr %i.as, i64 %i.aw ; 6 uses
  %i.ay = icmp eq i64 %i.ao, %i.am
  br i1 %i.ay, label %bb.g, label %bb.k, !prof !26

bb.g:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 14
  %i.ba = load i8, ptr %i.az, align 2, !tbaa !27
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.h, label %bb.j, !prof !26

bb.h:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 24 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !21
  %i.be = ptrtoint ptr %i.bd to i64
  store i64 %i.be, ptr %0, align 8, !tbaa !22
  store ptr %0, ptr %i.bc, align 8, !tbaa !21
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 32 ; 2 uses
  %i.bg = load i16, ptr %i.bf, align 8, !tbaa !24
  %i.bh = add i16 %i.bg, -1                       ; 2 uses
  store i16 %i.bh, ptr %i.bf, align 8, !tbaa !24
  %i.bi = icmp eq i16 %i.bh, 0
  br i1 %i.bi, label %bb.i, label %mi_free.exit, !prof !19

bb.i:                                             ; preds = %bb.h
  tail call void @_Z15_mi_page_retireP9mi_page_s(ptr noundef nonnull %i.ax) #55, !inline_history !35
  br label %mi_free.exit

bb.j:                                             ; preds = %bb.g
  tail call fastcc void @_ZL21mi_free_generic_localP9mi_page_sP12mi_segment_sPv(ptr noundef nonnull %i.ax, ptr noundef %0) #55, !inline_history !35
  br label %mi_free.exit

bb.k:                                             ; preds = %bb.f
  tail call fastcc void @_ZL18mi_free_generic_mtP9mi_page_sP12mi_segment_sPv(ptr noundef nonnull %i.ax, ptr noundef nonnull %.pre-phi8, ptr noundef %0) #57, !inline_history !35
  br label %mi_free.exit

mi_free.exit:                                     ; preds = %bb.e, %.loopexit.i.i, %bb.d, %bb.k, %bb.j, %bb.i, %bb.h, %mi_is_in_heap_region.exit.thread2, %mi_is_in_heap_region.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noalias ptr @mi_realpath(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.c = tail call noalias ptr @mi_heap_realpath(ptr noundef %i.b, ptr noundef %0, ptr noundef %1) #55
  ret ptr %i.c
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_Z15mi_heap_try_newP9mi_heap_smb(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i64 %1, 1025
  %i.b = add nuw nsw i64 %1, 7
  %i.c = lshr i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.c
  %i.f = tail call noundef ptr @_ZSt15get_new_handlerv() #55 ; 3 uses
  %.not.us11 = icmp eq ptr %i.f, null             ; 2 uses
  br i1 %i.a, label %.split.us, label %.split, !prof !26

.split.us:                                        ; preds = %bb.a
  br i1 %.not.us11, label %.split8.us, label %.lr.ph

bb.b:                                             ; preds = %mi_heap_malloc.exit.us
  %i.g = tail call noundef ptr @_ZSt15get_new_handlerv() #55 ; 2 uses
  %.not.us = icmp eq ptr %i.g, null
  br i1 %.not.us, label %.split8.us, label %.lr.ph, !llvm.loop !54

.lr.ph:                                           ; preds = %.split.us, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.f, %.split.us ]
  tail call void %i.h(), !inline_history !55
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !39   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !32   ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %mi_heap_malloc.exit.us, label %mi_heap_malloc.exit.us.thread, !prof !19

mi_heap_malloc.exit.us.thread:                    ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.val.i.i.i.i.i.us = load i64, ptr %i.k, align 8, !tbaa !22
  %i.n = inttoptr i64 %.val.i.i.i.i.i.us to ptr
  store ptr %i.n, ptr %i.m, align 8, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.p = load i16, ptr %i.o, align 8, !tbaa !24
  %i.q = add i16 %i.p, 1
  store i16 %i.q, ptr %i.o, align 8, !tbaa !24
  br label %.critedge

mi_heap_malloc.exit.us:                           ; preds = %.lr.ph
  %i.r = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef nonnull %0, i64 noundef %1, i1 noundef zeroext false, i64 noundef 0) #55, !inline_history !36 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.b, label %.critedge, !llvm.loop !54

.split:                                           ; preds = %bb.a
  br i1 %.not.us11, label %.split8.us, label %mi_heap_malloc.exit

bb.c:                                             ; preds = %mi_heap_malloc.exit
  %i.t = tail call noundef ptr @_ZSt15get_new_handlerv() #55 ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %.split8.us, label %mi_heap_malloc.exit, !llvm.loop !54

.split8.us:                                       ; preds = %bb.c, %bb.b, %.split, %.split.us
  tail call void (i32, ptr, ...) @_Z17_mi_error_messageiPKcz(i32 noundef 12, ptr noundef nonnull @.str.98)
  br i1 %2, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.split8.us
  %i.u = tail call ptr @__cxa_allocate_exception(i64 8) #55 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.u, align 8, !tbaa !56
  tail call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #58
  unreachable

mi_heap_malloc.exit:                              ; preds = %.split, %bb.c
  %i.v = phi ptr [ %i.t, %bb.c ], [ %i.f, %.split ]
  tail call void %i.v(), !inline_history !55
  %i.w = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false, i64 noundef 0) #55 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.c, label %.critedge, !llvm.loop !54

.critedge:                                        ; preds = %mi_heap_malloc.exit, %mi_heap_malloc.exit.us, %mi_heap_malloc.exit.us.thread, %.split8.us
  %.05 = phi ptr [ null, %.split8.us ], [ %i.r, %mi_heap_malloc.exit.us ], [ %i.k, %mi_heap_malloc.exit.us.thread ], [ %i.w, %mi_heap_malloc.exit ]
  ret ptr %.05
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL18mi_try_new_handlerb(i1 noundef zeroext %0) unnamed_addr #6 {
bb.a:
  %i.a = tail call noundef ptr @_ZSt15get_new_handlerv() #55 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @_Z17_mi_error_messageiPKcz(i32 noundef 12, ptr noundef nonnull @.str.98)
  br i1 %0, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call ptr @__cxa_allocate_exception(i64 8) #55 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.b, align 8, !tbaa !56
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #58
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void %i.a()
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define noalias ptr @mi_heap_alloc_new(ptr noundef %0, i64 noundef %1) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i64 %1, 1025
  br i1 %i.a, label %bb.b, label %mi_heap_malloc.exit, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 7
  %i.c = lshr i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.c
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !39   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32   ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %mi_heap_malloc.exit, label %mi_heap_malloc.exit.thread, !prof !19

mi_heap_malloc.exit.thread:                       ; preds = %bb.b
  %.val.i.i.i.i.i = load i64, ptr %i.h, align 8, !tbaa !22
  %i.j = inttoptr i64 %.val.i.i.i.i.i to ptr
  store ptr %i.j, ptr %i.g, align 8, !tbaa !32
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.l = load i16, ptr %i.k, align 8, !tbaa !24
  %i.m = add i16 %i.l, 1
  store i16 %i.m, ptr %i.k, align 8, !tbaa !24
  br label %bb.d

mi_heap_malloc.exit:                              ; preds = %bb.a, %bb.b
  %i.n = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false, i64 noundef 0) #55 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.c, label %bb.d, !prof !58

bb.c:                                             ; preds = %mi_heap_malloc.exit
  %i.p = tail call noundef ptr @_Z15mi_heap_try_newP9mi_heap_smb(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false)
  br label %bb.d

bb.d:                                             ; preds = %mi_heap_malloc.exit.thread, %mi_heap_malloc.exit, %bb.c
  %.0 = phi ptr [ %i.p, %bb.c ], [ %i.n, %mi_heap_malloc.exit ], [ %i.h, %mi_heap_malloc.exit.thread ]
end_hunk_3
begin_hunk_4_@mi_calloc_aligned_at:bb.a
  %.not36.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not36.i.i.i, label %bb.g, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i, !prof !26

bb.g:                                             ; preds = %bb.f
  %.val.i.i.i.i.i = load i64, ptr %i.p, align 8, !tbaa !22
  %i.u = inttoptr i64 %.val.i.i.i.i.i to ptr
  store ptr %i.u, ptr %i.o, align 8, !tbaa !32
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  %i.w = load i16, ptr %i.v, align 8, !tbaa !24
  %i.x = add i16 %i.w, 1
  store i16 %i.x, ptr %i.v, align 8, !tbaa !24
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 15
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = and i8 %i.z, 1
  %.not.i.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 0, ptr %i.p, align 8, !tbaa !22
  br label %mi_heap_calloc_aligned_at.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !20
  call void @llvm.assume(i1 true) [ "align"(ptr %i.p, i64 8) ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.p, i8 0, i64 %i.ac, i1 false)
  br label %mi_heap_calloc_aligned_at.exit

_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.ad = tail call fastcc noundef ptr @_ZL38mi_heap_malloc_zero_aligned_at_genericP9mi_heap_smmmb(ptr noundef %i.b, i64 noundef %storemerge.i.ph.i, i64 noundef %2, i64 noundef %3, i1 noundef zeroext true) #55
  br label %mi_heap_calloc_aligned_at.exit

mi_heap_calloc_aligned_at.exit:                   ; preds = %bb.b, %bb.c, %bb.h, %bb.i, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i
  %.0.i = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.ad, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i ], [ %i.p, %bb.h ], [ %i.p, %bb.i ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define noalias ptr @mi_calloc_aligned(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %.not.i.i = icmp eq i64 %0, 1
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  %i.e = extractvalue { i64, i1 } %i.c, 0
  br i1 %i.d, label %mi_heap_calloc_aligned.exit, label %bb.c, !prof !19

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph.i.i = phi i64 [ %1, %bb.a ], [ %i.e, %bb.b ] ; 4 uses
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %2)
  %or.cond.not.i.i.i.i = icmp eq i64 %i.f, 1
  br i1 %or.cond.not.i.i.i.i, label %bb.d, label %mi_heap_calloc_aligned.exit, !prof !59

bb.d:                                             ; preds = %bb.c
  %i.g = icmp ult i64 %storemerge.i.ph.i.i, 1025
  %i.h = icmp ule i64 %2, %storemerge.i.ph.i.i
  %i.i = and i1 %i.g, %i.h
  br i1 %i.i, label %bb.e, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i.i, !prof !26

bb.e:                                             ; preds = %bb.d
  %i.j = add nuw nsw i64 %storemerge.i.ph.i.i, 7
  %i.k = lshr i64 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !39   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !32   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i.i, label %bb.f, !prof !19

bb.f:                                             ; preds = %bb.e
  %i.q = add i64 %2, -1
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = and i64 %i.q, %i.r
  %.not36.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not36.i.i.i.i, label %bb.g, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i.i, !prof !26

bb.g:                                             ; preds = %bb.f
  %.val.i.i.i.i.i.i = load i64, ptr %i.p, align 8, !tbaa !22
  %i.t = inttoptr i64 %.val.i.i.i.i.i.i to ptr
  store ptr %i.t, ptr %i.o, align 8, !tbaa !32
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  %i.v = load i16, ptr %i.u, align 8, !tbaa !24
  %i.w = add i16 %i.v, 1
  store i16 %i.w, ptr %i.u, align 8, !tbaa !24
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 15
  %i.y = load i8, ptr %i.x, align 1
  %i.z = and i8 %i.y, 1
  %.not.i.i.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 0, ptr %i.p, align 8, !tbaa !22
  br label %mi_heap_calloc_aligned.exit

bb.i:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !20
  call void @llvm.assume(i1 true) [ "align"(ptr %i.p, i64 8) ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.p, i8 0, i64 %i.ab, i1 false)
  br label %mi_heap_calloc_aligned.exit

_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.ac = tail call fastcc noundef ptr @_ZL38mi_heap_malloc_zero_aligned_at_genericP9mi_heap_smmmb(ptr noundef %i.b, i64 noundef %storemerge.i.ph.i.i, i64 noundef %2, i64 noundef 0, i1 noundef zeroext true) #55
  br label %mi_heap_calloc_aligned.exit

mi_heap_calloc_aligned.exit:                      ; preds = %bb.b, %bb.c, %bb.h, %bb.i, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i.i
  %.0.i.i = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.ac, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i.i ], [ %i.p, %bb.h ], [ %i.p, %bb.i ]
  ret ptr %.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @mi_heap_realloc_aligned_at(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call fastcc noundef ptr @_ZL31mi_heap_realloc_zero_aligned_atP9mi_heap_sPvmmmb(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext false) #55
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZL31mi_heap_realloc_zero_aligned_atP9mi_heap_sPvmmmb(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i64 %3, 9
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_Z21_mi_heap_realloc_zeroP9mi_heap_sPvmb(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %5) #55
  br label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.d = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %3)
  %or.cond.not.i = icmp eq i64 %i.d, 1
  br i1 %or.cond.not.i, label %bb.e, label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit, !prof !59

bb.e:                                             ; preds = %bb.d
  %i.e = icmp ult i64 %2, 1025
  %i.f = icmp ule i64 %3, %2
  %i.g = and i1 %i.e, %i.f
  br i1 %i.g, label %bb.f, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i, !prof !26

bb.f:                                             ; preds = %bb.e
  %i.h = add nuw nsw i64 %2, 7
  %i.i = lshr i64 %i.h, 3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !39   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !32   ; 9 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i, label %bb.g, !prof !19

bb.g:                                             ; preds = %bb.f
  %i.o = add i64 %3, -1
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = add i64 %4, %i.p
  %i.r = and i64 %i.q, %i.o
  %.not36.i = icmp eq i64 %i.r, 0
  br i1 %.not36.i, label %bb.h, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i, !prof !26

bb.h:                                             ; preds = %bb.g
  %.val.i.i.i = load i64, ptr %i.n, align 8, !tbaa !22
  %i.s = inttoptr i64 %.val.i.i.i to ptr
  store ptr %i.s, ptr %i.m, align 8, !tbaa !32
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.u = load i16, ptr %i.t, align 8, !tbaa !24
  %i.v = add i16 %i.u, 1
  store i16 %i.v, ptr %i.t, align 8, !tbaa !24
  br i1 %5, label %bb.i, label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 15
  %i.x = load i8, ptr %i.w, align 1
  %i.y = and i8 %i.x, 1
  %.not.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 0, ptr %i.n, align 8, !tbaa !22
  br label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit

bb.k:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !20
  call void @llvm.assume(i1 true) [ "align"(ptr %i.n, i64 8) ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.n, i8 0, i64 %i.aa, i1 false)
  br label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit

_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.ab = tail call fastcc noundef ptr @_ZL38mi_heap_malloc_zero_aligned_at_genericP9mi_heap_smmmb(ptr noundef %0, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5) #55
  br label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit

bb.l:                                             ; preds = %bb.c
  %i.ac = ptrtoint ptr %1 to i64                  ; 4 uses
  %i.ad = add i64 %i.ac, -1                       ; 3 uses
  %i.ae = icmp slt i64 %i.ad, 33554432            ; 2 uses
  br i1 %i.ae, label %mi_usable_size.exit, label %bb.m, !prof !19

bb.m:                                             ; preds = %bb.l
  %6 = and i64 %i.ad, 9223372036821221376         ; 2 uses
  %i.af = inttoptr i64 %6 to ptr
  %i.ag = sub i64 %i.ac, %6
  %i.ah = lshr i64 %i.ag, 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 288
  %i.aj = getelementptr inbounds nuw [96 x i8], ptr %i.ai, i64 %i.ah ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !25
  %i.am = zext i32 %i.al to i64
  %i.an = sub nsw i64 0, %i.am
  %i.ao = getelementptr inbounds i8, ptr %i.aj, i64 %i.an ; 3 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 14
  %.val.i.i = load i8, ptr %i.ap, align 2
  %i.aq = and i8 %.val.i.i, 2
  %.not.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i, label %bb.n, label %bb.o, !prof !26

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr i8, ptr %i.ao, i64 40
  %.val12.i.i = load i64, ptr %i.ar, align 8, !tbaa !20
  br label %mi_usable_size.exit

bb.o:                                             ; preds = %bb.m
  %i.as = tail call fastcc noundef i64 @_ZL30mi_page_usable_aligned_size_ofPK9mi_page_sPKv(ptr noundef nonnull %i.ao, ptr noundef nonnull %1) #55
  br label %mi_usable_size.exit

mi_usable_size.exit:                              ; preds = %bb.l, %bb.n, %bb.o
  %.1.i.i = phi i64 [ 0, %bb.l ], [ %i.as, %bb.o ], [ %.val12.i.i, %bb.n ] ; 5 uses
  %.not = icmp ugt i64 %2, %.1.i.i                ; 2 uses
  br i1 %.not, label %bb.r, label %bb.p

bb.p:                                             ; preds = %mi_usable_size.exit
  %i.at = lshr i64 %.1.i.i, 1
  %i.au = sub nuw i64 %.1.i.i, %i.at
  %.not50 = icmp ult i64 %2, %i.au
  br i1 %.not50, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = add i64 %4, %i.ac
  %i.aw = urem i64 %i.av, %3
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %mi_usable_size.exit
  %i.ay = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %3)
  %or.cond.not.i.i = icmp eq i64 %i.ay, 1
  br i1 %or.cond.not.i.i, label %bb.s, label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit, !prof !59

bb.s:                                             ; preds = %bb.r
  %i.az = icmp ult i64 %2, 1025
  %i.ba = icmp ule i64 %3, %2
  %i.bb = and i1 %i.az, %i.ba
  br i1 %i.bb, label %bb.t, label %mi_heap_malloc_aligned_at.exit, !prof !26

bb.t:                                             ; preds = %bb.s
  %i.bc = add nuw nsw i64 %2, 7
  %i.bd = lshr i64 %i.bc, 3
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bd
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !39 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !32 ; 4 uses
  %.not.i.i52 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i52, label %mi_heap_malloc_aligned_at.exit, label %bb.u, !prof !19

bb.u:                                             ; preds = %bb.t
  %i.bj = add i64 %3, -1
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = add i64 %4, %i.bk
  %i.bm = and i64 %i.bl, %i.bj
  %.not36.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not36.i.i, label %mi_heap_malloc_aligned_at.exit.thread55, label %mi_heap_malloc_aligned_at.exit, !prof !26

mi_heap_malloc_aligned_at.exit.thread55:          ; preds = %bb.u
  %.val.i.i.i.i = load i64, ptr %i.bi, align 8, !tbaa !22
  %i.bn = inttoptr i64 %.val.i.i.i.i to ptr
  store ptr %i.bn, ptr %i.bh, align 8, !tbaa !32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 32 ; 2 uses
  %i.bp = load i16, ptr %i.bo, align 8, !tbaa !24
  %i.bq = add i16 %i.bp, 1
  store i16 %i.bq, ptr %i.bo, align 8, !tbaa !24
  br label %bb.v

mi_heap_malloc_aligned_at.exit:                   ; preds = %bb.s, %bb.t, %bb.u
  %i.br = tail call fastcc noundef ptr @_ZL38mi_heap_malloc_zero_aligned_at_genericP9mi_heap_smmmb(ptr noundef %0, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext false) #55 ; 2 uses
  %.not51 = icmp eq ptr %i.br, null
  br i1 %.not51, label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit, label %bb.v

bb.v:                                             ; preds = %mi_heap_malloc_aligned_at.exit.thread55, %mi_heap_malloc_aligned_at.exit
  %.3.i.i58 = phi ptr [ %i.bi, %mi_heap_malloc_aligned_at.exit.thread55 ], [ %i.br, %mi_heap_malloc_aligned_at.exit ] ; 8 uses
  %or.cond = and i1 %5, %.not
  br i1 %or.cond, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bs = tail call i64 @llvm.usub.sat.i64(i64 %.1.i.i, i64 8) ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.3.i.i58, i64 %i.bs
  %i.bu = sub nuw i64 %2, %i.bs
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bt, i8 0, i64 %i.bu, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bv = tail call i64 @llvm.umin.i64(i64 %2, i64 %.1.i.i)
  call void @llvm.assume(i1 true) [ "align"(ptr %.3.i.i58, i64 8) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %1, i64 8) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.3.i.i58, ptr nonnull readonly align 8 %1, i64 %i.bv, i1 false)
  %7 = and i64 %i.ad, -33554432                   ; 2 uses
  %i.bw = inttoptr i64 %7 to ptr                  ; 3 uses
  br i1 %i.ae, label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit, label %bb.y, !prof !19

bb.y:                                             ; preds = %bb.x
  %i.bx = tail call ptr @llvm.thread.pointer.p0()
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 280
  %i.ca = load atomic i64, ptr %i.bz monotonic, align 8
  %i.cb = sub i64 %i.ac, %7
  %i.cc = lshr i64 %i.cb, 16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 288
  %i.ce = getelementptr inbounds nuw [96 x i8], ptr %i.cd, i64 %i.cc ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !25
  %i.ch = zext i32 %i.cg to i64
  %i.ci = sub nsw i64 0, %i.ch
  %i.cj = getelementptr inbounds i8, ptr %i.ce, i64 %i.ci ; 6 uses
  %i.ck = icmp eq i64 %i.ca, %i.by
  br i1 %i.ck, label %bb.z, label %bb.ad, !prof !26

bb.z:                                             ; preds = %bb.y
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 14
  %i.cm = load i8, ptr %i.cl, align 2, !tbaa !27
  %i.cn = icmp eq i8 %i.cm, 0
  br i1 %i.cn, label %bb.aa, label %bb.ac, !prof !26

bb.aa:                                            ; preds = %bb.z
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 24 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !21
  %i.cq = ptrtoint ptr %i.cp to i64
  store i64 %i.cq, ptr %1, align 8, !tbaa !22
  store ptr %1, ptr %i.co, align 8, !tbaa !21
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cj, i64 32 ; 2 uses
  %i.cs = load i16, ptr %i.cr, align 8, !tbaa !24
  %i.ct = add i16 %i.cs, -1                       ; 2 uses
  store i16 %i.ct, ptr %i.cr, align 8, !tbaa !24
  %i.cu = icmp eq i16 %i.ct, 0
  br i1 %i.cu, label %bb.ab, label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit, !prof !19

bb.ab:                                            ; preds = %bb.aa
  tail call void @_Z15_mi_page_retireP9mi_page_s(ptr noundef nonnull %i.cj) #55, !inline_history !35
  br label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit

bb.ac:                                            ; preds = %bb.z
  tail call fastcc void @_ZL21mi_free_generic_localP9mi_page_sP12mi_segment_sPv(ptr noundef nonnull %i.cj, ptr noundef nonnull %1) #55, !inline_history !35
  br label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit

bb.ad:                                            ; preds = %bb.y
  tail call fastcc void @_ZL18mi_free_generic_mtP9mi_page_sP12mi_segment_sPv(ptr noundef nonnull %i.cj, ptr noundef nonnull %i.bw, ptr noundef nonnull %1) #57, !inline_history !35
  br label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit

_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit: ; preds = %bb.r, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.x, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i, %bb.k, %bb.j, %bb.h, %bb.d, %bb.q, %mi_heap_malloc_aligned_at.exit, %bb.b
  %.1 = phi ptr [ %i.b, %bb.b ], [ null, %mi_heap_malloc_aligned_at.exit ], [ %1, %bb.q ], [ %.3.i.i58, %bb.ad ], [ null, %bb.d ], [ %i.ab, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i ], [ %i.n, %bb.j ], [ %i.n, %bb.k ], [ %i.n, %bb.h ], [ %.3.i.i58, %bb.x ], [ %.3.i.i58, %bb.aa ], [ %.3.i.i58, %bb.ab ], [ %.3.i.i58, %bb.ac ], [ null, %bb.r ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @mi_heap_realloc_aligned(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ult i64 %3, 9
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_Z21_mi_heap_realloc_zeroP9mi_heap_sPvmb(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext false) #55
  br label %_ZL28mi_heap_realloc_zero_alignedP9mi_heap_sPvmmb.exit

bb.c:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = urem i64 %i.c, %3
  %i.e = tail call fastcc noundef ptr @_ZL31mi_heap_realloc_zero_aligned_atP9mi_heap_sPvmmmb(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %i.d, i1 noundef zeroext false) #55
  br label %_ZL28mi_heap_realloc_zero_alignedP9mi_heap_sPvmmb.exit

_ZL28mi_heap_realloc_zero_alignedP9mi_heap_sPvmmb.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.e, %bb.c ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @mi_heap_rezalloc_aligned_at(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call fastcc noundef ptr @_ZL31mi_heap_realloc_zero_aligned_atP9mi_heap_sPvmmmb(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext true) #55
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @mi_heap_rezalloc_aligned(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ult i64 %3, 9
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_Z21_mi_heap_realloc_zeroP9mi_heap_sPvmb(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext true) #55
  br label %_ZL28mi_heap_realloc_zero_alignedP9mi_heap_sPvmmb.exit

bb.c:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = urem i64 %i.c, %3
  %i.e = tail call fastcc noundef ptr @_ZL31mi_heap_realloc_zero_aligned_atP9mi_heap_sPvmmmb(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %i.d, i1 noundef zeroext true) #55
  br label %_ZL28mi_heap_realloc_zero_alignedP9mi_heap_sPvmmb.exit

_ZL28mi_heap_realloc_zero_alignedP9mi_heap_sPvmmb.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.e, %bb.c ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @mi_heap_recalloc_aligned_at(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %3) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0
  br i1 %i.b, label %_ZL22mi_count_size_overflowmmPm.exit, label %bb.c, !prof !19

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph = phi i64 [ %3, %bb.a ], [ %i.c, %bb.b ]
  %i.d = tail call fastcc noundef ptr @_ZL31mi_heap_realloc_zero_aligned_atP9mi_heap_sPvmmmb(ptr noundef %0, ptr noundef %1, i64 noundef %storemerge.i.ph, i64 noundef %4, i64 noundef %5, i1 noundef zeroext true) #55
  br label %_ZL22mi_count_size_overflowmmPm.exit

_ZL22mi_count_size_overflowmmPm.exit:             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ %i.d, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @mi_heap_recalloc_aligned(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %3) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0
  br i1 %i.b, label %_ZL22mi_count_size_overflowmmPm.exit, label %bb.c, !prof !19

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph = phi i64 [ %3, %bb.a ], [ %i.c, %bb.b ] ; 2 uses
  %i.d = icmp ult i64 %4, 9
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call noundef ptr @_Z21_mi_heap_realloc_zeroP9mi_heap_sPvmb(ptr noundef %0, ptr noundef %1, i64 noundef %storemerge.i.ph, i1 noundef zeroext true) #55
  br label %_ZL22mi_count_size_overflowmmPm.exit

bb.e:                                             ; preds = %bb.c
  %i.f = ptrtoint ptr %1 to i64
  %i.g = urem i64 %i.f, %4
  %i.h = tail call fastcc noundef ptr @_ZL31mi_heap_realloc_zero_aligned_atP9mi_heap_sPvmmmb(ptr noundef %0, ptr noundef %1, i64 noundef %storemerge.i.ph, i64 noundef %4, i64 noundef %i.g, i1 noundef zeroext true) #55
  br label %_ZL22mi_count_size_overflowmmPm.exit

_ZL22mi_count_size_overflowmmPm.exit:             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.e, %bb.d ], [ %i.h, %bb.e ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @mi_realloc_aligned_at(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.c = tail call fastcc noundef ptr @_ZL31mi_heap_realloc_zero_aligned_atP9mi_heap_sPvmmmb(ptr noundef %i.b, ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext false) #55
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @mi_realloc_aligned(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = icmp ult i64 %2, 9
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_Z21_mi_heap_realloc_zeroP9mi_heap_sPvmb(ptr noundef %i.b, ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #55
  br label %mi_heap_realloc_aligned.exit

bb.c:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %0 to i64
  %i.f = urem i64 %i.e, %2
  %i.g = tail call fastcc noundef ptr @_ZL31mi_heap_realloc_zero_aligned_atP9mi_heap_sPvmmmb(ptr noundef %i.b, ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %i.f, i1 noundef zeroext false) #55
  br label %mi_heap_realloc_aligned.exit

mi_heap_realloc_aligned.exit:                     ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.d, %bb.b ], [ %i.g, %bb.c ]
  ret ptr %.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @mi_rezalloc_aligned_at(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.c = tail call fastcc noundef ptr @_ZL31mi_heap_realloc_zero_aligned_atP9mi_heap_sPvmmmb(ptr noundef %i.b, ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext true) #55
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @mi_rezalloc_aligned(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = icmp ult i64 %2, 9
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_Z21_mi_heap_realloc_zeroP9mi_heap_sPvmb(ptr noundef %i.b, ptr noundef %0, i64 noundef %1, i1 noundef zeroext true) #55
  br label %mi_heap_rezalloc_aligned.exit

bb.c:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %0 to i64
  %i.f = urem i64 %i.e, %2
  %i.g = tail call fastcc noundef ptr @_ZL31mi_heap_realloc_zero_aligned_atP9mi_heap_sPvmmmb(ptr noundef %i.b, ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %i.f, i1 noundef zeroext true) #55
  br label %mi_heap_rezalloc_aligned.exit

mi_heap_rezalloc_aligned.exit:                    ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.d, %bb.b ], [ %i.g, %bb.c ]
  ret ptr %.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @mi_recalloc_aligned_at(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37
  %.not.i = icmp eq i64 %1, 1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  %i.e = extractvalue { i64, i1 } %i.c, 0
  br i1 %i.d, label %mi_heap_recalloc_aligned_at.exit, label %bb.c, !prof !19

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph.i = phi i64 [ %2, %bb.a ], [ %i.e, %bb.b ]
  %i.f = tail call fastcc noundef ptr @_ZL31mi_heap_realloc_zero_aligned_atP9mi_heap_sPvmmmb(ptr noundef %i.b, ptr noundef %0, i64 noundef %storemerge.i.ph.i, i64 noundef %3, i64 noundef %4, i1 noundef zeroext true) #55
  br label %mi_heap_recalloc_aligned_at.exit

mi_heap_recalloc_aligned_at.exit:                 ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.f, %bb.c ], [ null, %bb.b ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @mi_recalloc_aligned(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %.not.i = icmp eq i64 %1, 1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  %i.e = extractvalue { i64, i1 } %i.c, 0
  br i1 %i.d, label %mi_heap_recalloc_aligned.exit, label %bb.c, !prof !19

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph.i = phi i64 [ %2, %bb.a ], [ %i.e, %bb.b ] ; 2 uses
  %i.f = icmp ult i64 %3, 9
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef ptr @_Z21_mi_heap_realloc_zeroP9mi_heap_sPvmb(ptr noundef %i.b, ptr noundef %0, i64 noundef %storemerge.i.ph.i, i1 noundef zeroext true) #55
  br label %mi_heap_recalloc_aligned.exit

bb.e:                                             ; preds = %bb.c
  %i.h = ptrtoint ptr %0 to i64
  %i.i = urem i64 %i.h, %3
  %i.j = tail call fastcc noundef ptr @_ZL31mi_heap_realloc_zero_aligned_atP9mi_heap_sPvmmmb(ptr noundef %i.b, ptr noundef %0, i64 noundef %storemerge.i.ph.i, i64 noundef %3, i64 noundef %i.i, i1 noundef zeroext true) #55
  br label %mi_heap_recalloc_aligned.exit

mi_heap_recalloc_aligned.exit:                    ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi ptr [ null, %bb.b ], [ %i.g, %bb.d ], [ %i.j, %bb.e ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i64 @mi_malloc_size(ptr noundef %0) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = add i64 %i.a, -1                         ; 2 uses
  %i.c = icmp slt i64 %i.b, 33554432
  br i1 %i.c, label %mi_usable_size.exit, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %1 = and i64 %i.b, 9223372036821221376          ; 2 uses
  %i.d = inttoptr i64 %1 to ptr
  %i.e = sub i64 %i.a, %1
  %i.f = lshr i64 %i.e, 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %i.h = getelementptr inbounds nuw [96 x i8], ptr %i.g, i64 %i.f ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !25
  %i.k = zext i32 %i.j to i64
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 %i.l ; 3 uses
  %i.n = getelementptr i8, ptr %i.m, i64 14
  %.val.i.i = load i8, ptr %i.n, align 2
  %i.o = and i8 %.val.i.i, 2
  %.not.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d, !prof !26

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr i8, ptr %i.m, i64 40
  %.val12.i.i = load i64, ptr %i.p, align 8, !tbaa !20
  br label %mi_usable_size.exit

bb.d:                                             ; preds = %bb.b
  %i.q = tail call fastcc noundef i64 @_ZL30mi_page_usable_aligned_size_ofPK9mi_page_sPKv(ptr noundef nonnull %i.m, ptr noundef %0) #55
  br label %mi_usable_size.exit

mi_usable_size.exit:                              ; preds = %bb.a, %bb.c, %bb.d
  %.1.i.i = phi i64 [ 0, %bb.a ], [ %i.q, %bb.d ], [ %.val12.i.i, %bb.c ]
  ret i64 %.1.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i64 @mi_malloc_usable_size(ptr noundef %0) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = add i64 %i.a, -1                         ; 2 uses
  %i.c = icmp slt i64 %i.b, 33554432
  br i1 %i.c, label %mi_usable_size.exit, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %1 = and i64 %i.b, 9223372036821221376          ; 2 uses
  %i.d = inttoptr i64 %1 to ptr
  %i.e = sub i64 %i.a, %1
  %i.f = lshr i64 %i.e, 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %i.h = getelementptr inbounds nuw [96 x i8], ptr %i.g, i64 %i.f ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !25
  %i.k = zext i32 %i.j to i64
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 %i.l ; 3 uses
  %i.n = getelementptr i8, ptr %i.m, i64 14
  %.val.i.i = load i8, ptr %i.n, align 2
  %i.o = and i8 %.val.i.i, 2
  %.not.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d, !prof !26

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr i8, ptr %i.m, i64 40
  %.val12.i.i = load i64, ptr %i.p, align 8, !tbaa !20
  br label %mi_usable_size.exit

bb.d:                                             ; preds = %bb.b
  %i.q = tail call fastcc noundef i64 @_ZL30mi_page_usable_aligned_size_ofPK9mi_page_sPKv(ptr noundef nonnull %i.m, ptr noundef %0) #55
  br label %mi_usable_size.exit

mi_usable_size.exit:                              ; preds = %bb.a, %bb.c, %bb.d
  %.1.i.i = phi i64 [ 0, %bb.a ], [ %i.q, %bb.d ], [ %.val12.i.i, %bb.c ]
  ret i64 %.1.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define i64 @mi_malloc_good_size(i64 noundef %0) local_unnamed_addr #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i64 %0, 65537
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %0, 7
  %i.c = lshr i64 %i.b, 3                         ; 2 uses
  %i.d = icmp samesign ult i64 %0, 65
  br i1 %i.d, label %bb.c, label %bb.d, !prof !26

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw nsw i64 %i.c, 1
  %i.f = and i64 %i.e, 30
  %.inv.i.i = icmp samesign ugt i64 %0, 8
  %i.g = select i1 %.inv.i.i, i64 %i.f, i64 1
  br label %_ZL6mi_binm.exit.i

bb.d:                                             ; preds = %bb.b
  %i.h = add nsw i64 %i.c, -1                     ; 2 uses
  %i.i = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.h, i1 false) ; 2 uses
  %i.j = sub nuw nsw i64 61, %i.i
  %i.k = lshr i64 %i.h, %i.j
  %i.l = and i64 %i.k, 3
  %i.m = shl nuw nsw i64 %i.i, 2
  %reass.sub = sub nsw i64 %i.l, %i.m
  %i.n = add nsw i64 %reass.sub, 249
  br label %_ZL6mi_binm.exit.i

_ZL6mi_binm.exit.i:                               ; preds = %bb.d, %bb.c
  %.0.i.i = phi i64 [ %i.g, %bb.c ], [ %i.n, %bb.d ]
  %i.o = getelementptr inbounds nuw [24 x i8], ptr getelementptr inbounds nuw (i8, ptr @_mi_heap_empty, i64 1280), i64 %.0.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !65
  br label %mi_good_size.exit

bb.e:                                             ; preds = %bb.a
  %i.r = load i64, ptr @_ZL16mi_os_mem_config, align 8, !tbaa !67 ; 4 uses
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.r)
  %i.t = icmp samesign ult i64 %i.s, 2
  %i.u = add i64 %0, -1
  %i.v = add i64 %i.u, %i.r                       ; 3 uses
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = sub i64 0, %i.r
  %i.x = and i64 %i.v, %i.w
  br label %mi_good_size.exit

bb.g:                                             ; preds = %bb.e
  %i.y = urem i64 %i.v, %i.r
  %i.z = sub nuw i64 %i.v, %i.y
  br label %mi_good_size.exit

mi_good_size.exit:                                ; preds = %_ZL6mi_binm.exit.i, %bb.f, %bb.g
  %.0.i = phi i64 [ %i.q, %_ZL6mi_binm.exit.i ], [ %i.x, %bb.f ], [ %i.z, %bb.g ]
  ret i64 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define i64 @mi_good_size(i64 noundef %0) local_unnamed_addr #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i64 %0, 65537
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %0, 7
  %i.c = lshr i64 %i.b, 3                         ; 2 uses
  %i.d = icmp samesign ult i64 %0, 65
  br i1 %i.d, label %bb.c, label %bb.d, !prof !26

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw nsw i64 %i.c, 1
  %i.f = and i64 %i.e, 30
  %.inv.i = icmp samesign ugt i64 %0, 8
  %i.g = select i1 %.inv.i, i64 %i.f, i64 1
  br label %_ZL6mi_binm.exit

bb.d:                                             ; preds = %bb.b
  %i.h = add nsw i64 %i.c, -1                     ; 2 uses
  %i.i = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.h, i1 false) ; 2 uses
  %i.j = sub nuw nsw i64 61, %i.i
  %i.k = lshr i64 %i.h, %i.j
  %i.l = and i64 %i.k, 3
  %i.m = shl nuw nsw i64 %i.i, 2
  %reass.sub = sub nsw i64 %i.l, %i.m
  %i.n = add nsw i64 %reass.sub, 249
  br label %_ZL6mi_binm.exit

_ZL6mi_binm.exit:                                 ; preds = %bb.c, %bb.d
  %.0.i = phi i64 [ %i.g, %bb.c ], [ %i.n, %bb.d ]
  %i.o = getelementptr inbounds nuw [24 x i8], ptr getelementptr inbounds nuw (i8, ptr @_mi_heap_empty, i64 1280), i64 %.0.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !65
  br label %_ZL12_mi_align_upmm.exit

bb.e:                                             ; preds = %bb.a
  %i.r = load i64, ptr @_ZL16mi_os_mem_config, align 8, !tbaa !67 ; 4 uses
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.r)
  %i.t = icmp samesign ult i64 %i.s, 2
  %i.u = add i64 %0, -1
  %i.v = add i64 %i.u, %i.r                       ; 3 uses
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = sub i64 0, %i.r
  %i.x = and i64 %i.v, %i.w
  br label %_ZL12_mi_align_upmm.exit

bb.g:                                             ; preds = %bb.e
  %i.y = urem i64 %i.v, %i.r
  %i.z = sub nuw i64 %i.v, %i.y
  br label %_ZL12_mi_align_upmm.exit

_ZL12_mi_align_upmm.exit:                         ; preds = %bb.g, %bb.f, %_ZL6mi_binm.exit
  %.0 = phi i64 [ %i.q, %_ZL6mi_binm.exit ], [ %i.x, %bb.f ], [ %i.z, %bb.g ]
  ret i64 %.0
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define zeroext i1 @mi_is_in_heap_region(ptr noundef %0) local_unnamed_addr #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i64, ptr @_ZL14mi_arena_count monotonic, align 64 ; 2 uses
  %.not1922.not.i.i = icmp eq i64 %i.a, 0
  br i1 %.not1922.not.i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.critedge.i.i
  %.01323.i.i = phi i64 [ %i.l, %.critedge.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @_ZL9mi_arenas, i64 %.01323.i.i
  %i.c = load atomic ptr, ptr %i.b monotonic, align 8 ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.e = load atomic ptr, ptr %i.d seq_cst, align 8
  %.not18.i.i = icmp ugt ptr %i.e, %0
  br i1 %.not18.i.i, label %.critedge.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load atomic ptr, ptr %i.d seq_cst, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !43
  %i.i = shl i64 %i.h, 25
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  %i.k = icmp ugt ptr %i.j, %0
  br i1 %i.k, label %_ZL19mi_is_valid_pointerPKv.exit, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.c, %bb.b, %.lr.ph.i.i
  %i.l = add nuw i64 %.01323.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.l, %i.a
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !53

.loopexit.i:                                      ; preds = %.critedge.i.i, %bb.a
  %i.m = icmp eq ptr %0, null
  br i1 %i.m, label %_ZL19mi_is_valid_pointerPKv.exit, label %bb.d

bb.d:                                             ; preds = %.loopexit.i
  %i.n = ptrtoint ptr %0 to i64
  %i.o = add i64 %i.n, -1                         ; 2 uses
  %i.p = and i64 %i.o, -33554432
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = icmp slt i64 %i.o, 33554432
  %i.s = select i1 %i.r, ptr null, ptr %i.q       ; 3 uses
  %i.t = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.u = icmp ugt ptr %i.s, inttoptr (i64 52776558133247 to ptr)
  br i1 %i.u, label %_ZL19mi_is_valid_pointerPKv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
end_hunk_4
begin_hunk_5_@mi_pvalloc
define noalias ptr @mi_pvalloc(i64 noundef %0) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr @_ZL16mi_os_mem_config, align 8, !tbaa !67 ; 6 uses
  %i.b = xor i64 %i.a, -1
  %.not = icmp ult i64 %0, %i.b
  br i1 %.not, label %bb.b, label %mi_malloc_aligned.exit

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %i.a, -1                         ; 2 uses
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.a) ; 2 uses
  %i.e = icmp samesign ult i64 %i.d, 2
  br i1 %i.e, label %_ZL12_mi_align_upmm.exit, label %mi_malloc_aligned.exit

_ZL12_mi_align_upmm.exit:                         ; preds = %bb.b
  %i.f = add i64 %i.c, %0
  %i.g = sub i64 0, %i.a
  %i.h = and i64 %i.f, %i.g                       ; 4 uses
  %i.i = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !37   ; 2 uses
  %or.cond.not.i.i.i.i = icmp eq i64 %i.d, 1
  br i1 %or.cond.not.i.i.i.i, label %bb.c, label %mi_malloc_aligned.exit, !prof !70

bb.c:                                             ; preds = %_ZL12_mi_align_upmm.exit
  %i.k = icmp ult i64 %i.h, 1025
  %i.l = icmp ule i64 %i.a, %i.h
  %i.m = and i1 %i.k, %i.l
  br i1 %i.m, label %bb.d, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i.i, !prof !26

bb.d:                                             ; preds = %bb.c
  %i.n = add nuw nsw i64 %i.h, 7
  %i.o = lshr i64 %i.n, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 248
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !39   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32   ; 4 uses
  %.not.i.i.i.i = icmp ne ptr %i.t, null
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = and i64 %i.c, %i.u
  %.not36.i.i.i.i = icmp eq i64 %i.v, 0
  %or.cond = and i1 %.not.i.i.i.i, %.not36.i.i.i.i
  br i1 %or.cond, label %bb.e, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i.i, !prof !59

bb.e:                                             ; preds = %bb.d
  %.val.i.i.i.i.i.i = load i64, ptr %i.t, align 8, !tbaa !22
  %i.w = inttoptr i64 %.val.i.i.i.i.i.i to ptr
  store ptr %i.w, ptr %i.s, align 8, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %i.y = load i16, ptr %i.x, align 8, !tbaa !24
  %i.z = add i16 %i.y, 1
  store i16 %i.z, ptr %i.x, align 8, !tbaa !24
  br label %mi_malloc_aligned.exit

_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.aa = tail call fastcc noundef ptr @_ZL38mi_heap_malloc_zero_aligned_at_genericP9mi_heap_smmmb(ptr noundef %i.j, i64 noundef %i.h, i64 noundef %i.a, i64 noundef 0, i1 noundef zeroext false) #55
  br label %mi_malloc_aligned.exit

mi_malloc_aligned.exit:                           ; preds = %bb.b, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i.i, %bb.e, %_ZL12_mi_align_upmm.exit, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %_ZL12_mi_align_upmm.exit ], [ %i.aa, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i.i ], [ %i.t, %bb.e ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define noalias ptr @mi_aligned_alloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %0)
  %or.cond.not.i.i.i.i = icmp eq i64 %i.c, 1
  br i1 %or.cond.not.i.i.i.i, label %bb.b, label %mi_malloc_aligned.exit, !prof !59

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %1, 1025
  %i.e = icmp ule i64 %0, %1
  %i.f = and i1 %i.d, %i.e
  br i1 %i.f, label %bb.c, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i.i, !prof !26

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw nsw i64 %1, 7
  %i.h = lshr i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.h
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !32   ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i.i, label %bb.d, !prof !19

bb.d:                                             ; preds = %bb.c
  %i.n = add i64 %0, -1
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = and i64 %i.n, %i.o
  %.not36.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not36.i.i.i.i, label %bb.e, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i.i, !prof !26

bb.e:                                             ; preds = %bb.d
  %.val.i.i.i.i.i.i = load i64, ptr %i.m, align 8, !tbaa !22
  %i.q = inttoptr i64 %.val.i.i.i.i.i.i to ptr
  store ptr %i.q, ptr %i.l, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.s = load i16, ptr %i.r, align 8, !tbaa !24
  %i.t = add i16 %i.s, 1
  store i16 %i.t, ptr %i.r, align 8, !tbaa !24
  br label %mi_malloc_aligned.exit

_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.u = tail call fastcc noundef ptr @_ZL38mi_heap_malloc_zero_aligned_at_genericP9mi_heap_smmmb(ptr noundef %i.b, i64 noundef %1, i64 noundef %0, i64 noundef 0, i1 noundef zeroext false) #55
  br label %mi_malloc_aligned.exit

mi_malloc_aligned.exit:                           ; preds = %bb.a, %bb.e, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i.i
  %.3.i.i.i.i = phi ptr [ null, %bb.a ], [ %i.u, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i.i ], [ %i.m, %bb.e ]
  ret ptr %.3.i.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @mi_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37
  %.not.i.i = icmp eq i64 %1, 1
  br i1 %.not.i.i, label %mi_reallocn.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  %i.e = extractvalue { i64, i1 } %i.c, 0
  br i1 %i.d, label %mi_reallocn.exit.thread, label %mi_reallocn.exit, !prof !19

mi_reallocn.exit:                                 ; preds = %bb.a, %bb.b
  %storemerge.i.ph.i.i = phi i64 [ %2, %bb.a ], [ %i.e, %bb.b ]
  %i.f = tail call noundef ptr @_Z21_mi_heap_realloc_zeroP9mi_heap_sPvmb(ptr noundef %i.b, ptr noundef %0, i64 noundef %storemerge.i.ph.i.i, i1 noundef zeroext false) #55 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %mi_reallocn.exit.thread, label %bb.c

mi_reallocn.exit.thread:                          ; preds = %bb.b, %mi_reallocn.exit
  %i.h = tail call ptr @__errno_location() #59
  store i32 12, ptr %i.h, align 4, !tbaa !71
  br label %bb.c

bb.c:                                             ; preds = %mi_reallocn.exit.thread, %mi_reallocn.exit
  %.0.i.i5 = phi ptr [ null, %mi_reallocn.exit.thread ], [ %i.f, %mi_reallocn.exit ]
  ret ptr %.0.i.i5
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 23) i32 @mi_reallocarr(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__errno_location() #59
  store i32 22, ptr %i.b, align 4, !tbaa !71
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !69
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37
  %.not.i.i.i = icmp eq i64 %1, 1
  br i1 %.not.i.i.i, label %mi_reallocn.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2) ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  %i.h = extractvalue { i64, i1 } %i.f, 0
  br i1 %i.g, label %bb.e, label %mi_reallocn.exit.i, !prof !19

mi_reallocn.exit.i:                               ; preds = %bb.d, %bb.c
  %storemerge.i.ph.i.i.i = phi i64 [ %2, %bb.c ], [ %i.h, %bb.d ]
  %i.i = tail call noundef ptr @_Z21_mi_heap_realloc_zeroP9mi_heap_sPvmb(ptr noundef %i.e, ptr noundef %i.c, i64 noundef %storemerge.i.ph.i.i.i, i1 noundef zeroext false) #55 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %mi_reallocarray.exit

bb.e:                                             ; preds = %bb.d, %mi_reallocn.exit.i
  %i.k = tail call ptr @__errno_location() #59
  store i32 12, ptr %i.k, align 4, !tbaa !71
  br label %bb.f

mi_reallocarray.exit:                             ; preds = %mi_reallocn.exit.i
  store ptr %i.i, ptr %0, align 8, !tbaa !69
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %mi_reallocarray.exit, %bb.b
  %.1 = phi i32 [ 22, %bb.b ], [ 12, %bb.e ], [ 0, %mi_reallocarray.exit ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @mi__expand(ptr noundef %0, i64 noundef %1) local_unnamed_addr #15 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = add i64 %i.b, -1                         ; 2 uses
  %i.d = icmp slt i64 %i.c, 33554432
  br i1 %i.d, label %_ZL15_mi_usable_sizePKvPKc.exit.i, label %bb.c, !prof !19

bb.c:                                             ; preds = %bb.b
  %2 = and i64 %i.c, 9223372036821221376          ; 2 uses
  %i.e = inttoptr i64 %2 to ptr
  %i.f = sub i64 %i.b, %2
  %i.g = lshr i64 %i.f, 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 288
  %i.i = getelementptr inbounds nuw [96 x i8], ptr %i.h, i64 %i.g ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !25
  %i.l = zext i32 %i.k to i64
  %i.m = sub nsw i64 0, %i.l
  %i.n = getelementptr inbounds i8, ptr %i.i, i64 %i.m ; 3 uses
  %i.o = getelementptr i8, ptr %i.n, i64 14
  %.val.i.i = load i8, ptr %i.o, align 2
  %i.p = and i8 %.val.i.i, 2
  %.not.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i, label %bb.d, label %bb.e, !prof !26

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.n, i64 40
  %.val12.i.i = load i64, ptr %i.q, align 8, !tbaa !20
  br label %_ZL15_mi_usable_sizePKvPKc.exit.i

bb.e:                                             ; preds = %bb.c
  %i.r = tail call fastcc noundef i64 @_ZL30mi_page_usable_aligned_size_ofPK9mi_page_sPKv(ptr noundef nonnull %i.n, ptr noundef nonnull %0) #55
  br label %_ZL15_mi_usable_sizePKvPKc.exit.i

_ZL15_mi_usable_sizePKvPKc.exit.i:                ; preds = %bb.e, %bb.d, %bb.b
  %.1.i.i = phi i64 [ 0, %bb.b ], [ %i.r, %bb.e ], [ %.val12.i.i, %bb.d ]
  %i.s = icmp ugt i64 %1, %.1.i.i
  br i1 %i.s, label %select.unfold, label %mi_expand.exit

select.unfold:                                    ; preds = %_ZL15_mi_usable_sizePKvPKc.exit.i, %bb.a
  %i.t = tail call ptr @__errno_location() #59
  store i32 12, ptr %i.t, align 4, !tbaa !71
  br label %mi_expand.exit

mi_expand.exit:                                   ; preds = %_ZL15_mi_usable_sizePKvPKc.exit.i, %select.unfold
  %.1.i4 = phi ptr [ null, %select.unfold ], [ %0, %_ZL15_mi_usable_sizePKvPKc.exit.i ]
  ret ptr %.1.i4
}

; Function Attrs: mustprogress nounwind uwtable
define noalias ptr @mi_wcsdup(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %.0 = phi i64 [ %i.d, %.preheader ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.0
  %i.c = load i16, ptr %i.b, align 2, !tbaa !72
  %.not = icmp eq i16 %i.c, 0
  %i.d = add i64 %.0, 1
  br i1 %.not, label %bb.b, label %.preheader, !llvm.loop !73

bb.b:                                             ; preds = %.preheader
  %i.e = shl i64 %.0, 1                           ; 2 uses
  %i.f = add i64 %i.e, 2                          ; 3 uses
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !37   ; 2 uses
  %i.i = icmp ult i64 %i.f, 1025
  br i1 %i.i, label %bb.c, label %mi_malloc.exit, !prof !26

bb.c:                                             ; preds = %bb.b
  %i.j = add nsw i64 %i.e, 8
  %i.k = lshr i64 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 248
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !39   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !32   ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %mi_malloc.exit, label %mi_malloc.exit.thread, !prof !19

mi_malloc.exit.thread:                            ; preds = %bb.c
  %.val.i.i.i.i.i.i = load i64, ptr %i.p, align 8, !tbaa !22
  %i.r = inttoptr i64 %.val.i.i.i.i.i.i to ptr
  store ptr %i.r, ptr %i.o, align 8, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  %i.t = load i16, ptr %i.s, align 8, !tbaa !24
  %i.u = add i16 %i.t, 1
  store i16 %i.u, ptr %i.s, align 8, !tbaa !24
  br label %bb.d

mi_malloc.exit:                                   ; preds = %bb.b, %bb.c
  %i.v = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef %i.h, i64 noundef %i.f, i1 noundef zeroext false, i64 noundef 0) #55 ; 2 uses
  %.not14 = icmp eq ptr %i.v, null
  br i1 %.not14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %mi_malloc.exit.thread, %mi_malloc.exit
  %.0.i.i.i.i17 = phi ptr [ %i.p, %mi_malloc.exit.thread ], [ %i.v, %mi_malloc.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i.i.i.i17, ptr nonnull readonly align 1 %0, i64 %i.f, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %mi_malloc.exit, %bb.d, %bb.a
  %.011 = phi ptr [ null, %bb.a ], [ %.0.i.i.i.i17, %bb.d ], [ null, %mi_malloc.exit ]
  ret ptr %.011
}

; Function Attrs: mustprogress nounwind uwtable
define noalias ptr @mi_mbsdup(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %mi_strdup.exit, label %_Z10_mi_strlenPKc.exit.i.i

_Z10_mi_strlenPKc.exit.i.i:                       ; preds = %bb.a
  %strlen.i.i.i = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) ; 4 uses
  %i.d = add i64 %strlen.i.i.i, 1                 ; 2 uses
  %i.e = icmp ult i64 %i.d, 1025
  br i1 %i.e, label %bb.b, label %mi_heap_malloc.exit.i.i, !prof !26

bb.b:                                             ; preds = %_Z10_mi_strlenPKc.exit.i.i
  %i.f = add nsw i64 %strlen.i.i.i, 8
  %i.g = lshr i64 %i.f, 3
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !32   ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %mi_heap_malloc.exit.i.i, label %mi_heap_malloc.exit.thread.i.i, !prof !19

mi_heap_malloc.exit.thread.i.i:                   ; preds = %bb.b
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.l, align 8, !tbaa !22
  %i.n = inttoptr i64 %.val.i.i.i.i.i.i.i to ptr
  store ptr %i.n, ptr %i.k, align 8, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %i.p = load i16, ptr %i.o, align 8, !tbaa !24
  %i.q = add i16 %i.p, 1
  store i16 %i.q, ptr %i.o, align 8, !tbaa !24
  br label %bb.c

mi_heap_malloc.exit.i.i:                          ; preds = %bb.b, %_Z10_mi_strlenPKc.exit.i.i
  %i.r = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef %i.b, i64 noundef %i.d, i1 noundef zeroext false, i64 noundef 0) #55 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %mi_strdup.exit, label %bb.c

bb.c:                                             ; preds = %mi_heap_malloc.exit.i.i, %mi_heap_malloc.exit.thread.i.i
  %.0.i.i.i14.i.i = phi ptr [ %i.l, %mi_heap_malloc.exit.thread.i.i ], [ %i.r, %mi_heap_malloc.exit.i.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i.i.i14.i.i, ptr nonnull readonly align 1 %0, i64 %strlen.i.i.i, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i.i14.i.i, i64 %strlen.i.i.i
  store i8 0, ptr %i.t, align 1, !tbaa !27
  br label %mi_strdup.exit

mi_strdup.exit:                                   ; preds = %bb.a, %mi_heap_malloc.exit.i.i, %bb.c
  %.1.i.i = phi ptr [ null, %bb.a ], [ %.0.i.i.i14.i.i, %bb.c ], [ null, %mi_heap_malloc.exit.i.i ]
  ret ptr %.1.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 23) i32 @mi_dupenv_s(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %1, align 8, !tbaa !74
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = tail call ptr @getenv(ptr noundef nonnull %2) #55 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.e, label %_Z10_mi_strlenPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %0, align 8, !tbaa !75
  br label %bb.g

_Z10_mi_strlenPKc.exit.i.i:                       ; preds = %bb.d
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !37   ; 2 uses
  %strlen.i.i.i = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.c) ; 4 uses
  %i.g = add i64 %strlen.i.i.i, 1                 ; 2 uses
  %i.h = icmp ult i64 %i.g, 1025
  br i1 %i.h, label %bb.f, label %mi_heap_malloc.exit.i.i, !prof !26

bb.f:                                             ; preds = %_Z10_mi_strlenPKc.exit.i.i
  %i.i = add nsw i64 %strlen.i.i.i, 8
  %i.j = lshr i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 248
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.j
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !39   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !32   ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %mi_heap_malloc.exit.i.i, label %mi_heap_malloc.exit.thread.i.i, !prof !19

mi_heap_malloc.exit.thread.i.i:                   ; preds = %bb.f
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.o, align 8, !tbaa !22
  %i.q = inttoptr i64 %.val.i.i.i.i.i.i.i to ptr
  store ptr %i.q, ptr %i.n, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  %i.s = load i16, ptr %i.r, align 8, !tbaa !24
end_hunk_5
begin_hunk_6_@mi_heap_destroy:bb.a
  tail call void @_Z22_mi_heap_destroy_pagesP9mi_heap_s(ptr noundef nonnull %0)
  tail call fastcc void @_ZL12mi_heap_freeP9mi_heap_s(ptr noundef %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @mi_heap_delete(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %0, @_mi_heap_empty
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !204
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !215  ; 6 uses
  %.not = icmp eq ptr %i.e, %0
  br i1 %.not, label %_ZL23mi_heaps_are_compatibleP9mi_heap_sS0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 241
  %i.g = load i8, ptr %i.f, align 1, !tbaa !233
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 241
  %i.i = load i8, ptr %i.h, align 1, !tbaa !233
  %i.j = icmp eq i8 %i.g, %i.i
  br i1 %i.j, label %_ZL23mi_heaps_are_compatibleP9mi_heap_sS0_.exit, label %_ZL23mi_heaps_are_compatibleP9mi_heap_sS0_.exit.thread

_ZL23mi_heaps_are_compatibleP9mi_heap_sS0_.exit:  ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !99
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !99
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %bb.d, label %_ZL23mi_heaps_are_compatibleP9mi_heap_sS0_.exit.thread

bb.d:                                             ; preds = %_ZL23mi_heaps_are_compatibleP9mi_heap_sS0_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !219
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZL14mi_heap_absorbP9mi_heap_sS0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.t = load atomic ptr, ptr %i.s monotonic, align 8 ; 2 uses
  %.old1.not.i.i = icmp eq ptr %i.t, null
  br i1 %.old1.not.i.i, label %_Z29_mi_heap_delayed_free_partialP9mi_heap_s.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.e, %_ZNSt6atomicIP10mi_block_sE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit.i.i
  %.023.i.i = phi ptr [ %i.w, %_ZNSt6atomicIP10mi_block_sE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit.i.i ], [ %i.t, %bb.e ] ; 2 uses
  %i.u = cmpxchg weak ptr %i.s, ptr %.023.i.i, ptr null acq_rel acquire, align 8 ; 2 uses
  %i.v = extractvalue { ptr, i1 } %i.u, 1
  br i1 %i.v, label %.lr.ph.i.i, label %_ZNSt6atomicIP10mi_block_sE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit.i.i

_ZNSt6atomicIP10mi_block_sE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit.i.i: ; preds = %.preheader.i.i
  %i.w = extractvalue { ptr, i1 } %i.u, 0         ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_Z29_mi_heap_delayed_free_partialP9mi_heap_s.exit.i, label %.preheader.i.i, !llvm.loop !239

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.loopexit.i.i
  %.231.i.i = phi ptr [ %i.y, %.loopexit.i.i ], [ %.023.i.i, %.preheader.i.i ] ; 6 uses
  %.val.i.i = load i64, ptr %.231.i.i, align 8, !tbaa !22 ; 2 uses
  %i.y = inttoptr i64 %.val.i.i to ptr
  %i.z = tail call noundef zeroext i1 @_Z22_mi_free_delayed_blockP10mi_block_s(ptr noundef nonnull %.231.i.i)
  br i1 %i.z, label %.loopexit.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.aa = load atomic ptr, ptr %i.s monotonic, align 8 ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  store i64 %i.ab, ptr %.231.i.i, align 8, !tbaa !22
  %i.ac = cmpxchg weak ptr %i.s, ptr %i.aa, ptr %.231.i.i release monotonic, align 8 ; 2 uses
  %i.ad = extractvalue { ptr, i1 } %i.ac, 1
  br i1 %i.ad, label %.loopexit.i.i, label %_ZNSt6atomicIP10mi_block_sE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit13.i.i

_ZNSt6atomicIP10mi_block_sE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit13.i.i: ; preds = %bb.f, %_ZNSt6atomicIP10mi_block_sE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit13.i.i
  %i.ae = phi { ptr, i1 } [ %i.ah, %_ZNSt6atomicIP10mi_block_sE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit13.i.i ], [ %i.ac, %bb.f ]
  %i.af = extractvalue { ptr, i1 } %i.ae, 0       ; 2 uses
  %i.ag = ptrtoint ptr %i.af to i64
  store i64 %i.ag, ptr %.231.i.i, align 8, !tbaa !22
  %i.ah = cmpxchg weak ptr %i.s, ptr %i.af, ptr %.231.i.i release monotonic, align 8 ; 2 uses
  %i.ai = extractvalue { ptr, i1 } %i.ah, 1
  br i1 %i.ai, label %.loopexit.i.i, label %_ZNSt6atomicIP10mi_block_sE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit13.i.i, !llvm.loop !240

.loopexit.i.i:                                    ; preds = %_ZNSt6atomicIP10mi_block_sE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit13.i.i, %bb.f, %.lr.ph.i.i
  %.not.i.i = icmp eq i64 %.val.i.i, 0
  br i1 %.not.i.i, label %_Z29_mi_heap_delayed_free_partialP9mi_heap_s.exit.i, label %.lr.ph.i.i, !llvm.loop !241

_Z29_mi_heap_delayed_free_partialP9mi_heap_s.exit.i: ; preds = %_ZNSt6atomicIP10mi_block_sE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit.i.i, %.loopexit.i.i, %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 1280
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1280 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 192 ; 2 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  tail call void @_Z25_mi_heap_delayed_free_allP9mi_heap_s(ptr noundef nonnull %0)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.am, i8 0, i64 1032, i1 false)
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 8) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %i.ak, ptr noundef nonnull readonly align 64 dereferenceable(1800) getelementptr inbounds nuw (i8, ptr @_mi_heap_empty, i64 1280), i64 1800, i1 false)
  store atomic ptr null, ptr %i.s seq_cst, align 8
  store i64 0, ptr %i.p, align 8, !tbaa !219
  br label %_ZL14mi_heap_absorbP9mi_heap_sS0_.exit

bb.h:                                             ; preds = %bb.h, %_Z29_mi_heap_delayed_free_partialP9mi_heap_s.exit.i
  %.020.i = phi i64 [ 0, %_Z29_mi_heap_delayed_free_partialP9mi_heap_s.exit.i ], [ %i.au, %bb.h ] ; 3 uses
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %.020.i
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %.020.i
  %i.ap = tail call noundef i64 @_Z21_mi_page_queue_appendP9mi_heap_sP15mi_page_queue_sS2_(ptr noundef %i.e, ptr noundef nonnull %i.an, ptr noundef nonnull %i.ao) ; 2 uses
  %i.aq = load i64, ptr %i.al, align 8, !tbaa !219
  %i.ar = add i64 %i.aq, %i.ap
  store i64 %i.ar, ptr %i.al, align 8, !tbaa !219
  %i.as = load i64, ptr %i.p, align 8, !tbaa !219
  %i.at = sub i64 %i.as, %i.ap
  store i64 %i.at, ptr %i.p, align 8, !tbaa !219
  %i.au = add nuw nsw i64 %.020.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.au, 75
  br i1 %exitcond.not.i, label %bb.g, label %bb.h, !llvm.loop !242

_ZL23mi_heaps_are_compatibleP9mi_heap_sS0_.exit.thread: ; preds = %bb.c, %_ZL23mi_heaps_are_compatibleP9mi_heap_sS0_.exit, %bb.b
  tail call fastcc void @_ZL18mi_heap_collect_exP9mi_heap_s12mi_collect_e(ptr noundef nonnull %0, i32 noundef 2), !inline_history !243
  br label %_ZL14mi_heap_absorbP9mi_heap_sS0_.exit

_ZL14mi_heap_absorbP9mi_heap_sS0_.exit:           ; preds = %bb.g, %bb.d, %_ZL23mi_heaps_are_compatibleP9mi_heap_sS0_.exit.thread
  tail call fastcc void @_ZL12mi_heap_freeP9mi_heap_s(ptr noundef %0)
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZL14mi_heap_absorbP9mi_heap_sS0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL12mi_heap_freeP9mi_heap_s(ptr noundef nonnull %0) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not21 = icmp eq ptr %0, @_mi_heap_empty
  br i1 %.not21, label %mi_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !204    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !215  ; 3 uses
  %i.d = icmp eq ptr %i.c, %0
  br i1 %i.d, label %mi_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default) ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.g = icmp eq ptr %0, %i.f
  br i1 %i.g, label %bb.d, label %_Z27_mi_heap_set_default_directP9mi_heap_s.exit

bb.d:                                             ; preds = %bb.c
  store ptr %i.c, ptr %i.e, align 8, !tbaa !37
  %i.h = load i32, ptr @_mi_heap_default_key, align 4, !tbaa !71 ; 2 uses
  %.not.i.i = icmp eq i32 %i.h, -1
  br i1 %.not.i.i, label %_Z27_mi_heap_set_default_directP9mi_heap_s.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @pthread_setspecific(i32 noundef %i.h, ptr noundef %i.c) #55 ; 0 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !204
  br label %_Z27_mi_heap_set_default_directP9mi_heap_s.exit

_Z27_mi_heap_set_default_directP9mi_heap_s.exit:  ; preds = %bb.e, %bb.d, %bb.c
  %i.j = phi ptr [ %.pre, %bb.e ], [ %i.a, %bb.d ], [ %i.a, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_Z27_mi_heap_set_default_directP9mi_heap_s.exit
  %.019 = phi ptr [ null, %_Z27_mi_heap_set_default_directP9mi_heap_s.exit ], [ %.0, %bb.f ] ; 2 uses
  %.0.in = phi ptr [ %i.k, %_Z27_mi_heap_set_default_directP9mi_heap_s.exit ], [ %i.o, %bb.f ]
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !37  ; 5 uses
  %i.l = icmp ne ptr %.0, %0
  %i.m = icmp ne ptr %.0, null
  %i.n = and i1 %i.l, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %.0, i64 232
  br i1 %i.n, label %bb.f, label %bb.g, !llvm.loop !244

bb.g:                                             ; preds = %bb.f
  %i.p = icmp eq ptr %.0, %0
  br i1 %i.p, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %.not = icmp eq ptr %.019, null
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !236  ; 2 uses
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %.019, i64 232
  store ptr %i.r, ptr %i.s, align 8, !tbaa !236
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store ptr %i.r, ptr %i.k, align 8, !tbaa !235
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.g
  %i.t = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.u = add i64 %i.t, -1                         ; 2 uses
  %i.v = and i64 %i.u, -33554432                  ; 2 uses
  %i.w = inttoptr i64 %i.v to ptr                 ; 3 uses
  %i.x = icmp slt i64 %i.u, 33554432
  br i1 %i.x, label %mi_free.exit, label %bb.l, !prof !19

bb.l:                                             ; preds = %bb.k
  %i.y = tail call ptr @llvm.thread.pointer.p0()
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 280
  %i.ab = load atomic i64, ptr %i.aa monotonic, align 8
  %i.ac = sub i64 %i.t, %i.v
  %i.ad = lshr i64 %i.ac, 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 288
  %i.af = getelementptr inbounds nuw [96 x i8], ptr %i.ae, i64 %i.ad ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !25
  %i.ai = zext i32 %i.ah to i64
  %i.aj = sub nsw i64 0, %i.ai
  %i.ak = getelementptr inbounds i8, ptr %i.af, i64 %i.aj ; 6 uses
  %i.al = icmp eq i64 %i.ab, %i.z
  br i1 %i.al, label %bb.m, label %bb.q, !prof !26

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 14
  %i.an = load i8, ptr %i.am, align 2, !tbaa !27
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %bb.n, label %bb.p, !prof !26

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !21
  %i.ar = ptrtoint ptr %i.aq to i64
  store i64 %i.ar, ptr %0, align 8, !tbaa !22
  store ptr %0, ptr %i.ap, align 8, !tbaa !21
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 32 ; 2 uses
  %i.at = load i16, ptr %i.as, align 8, !tbaa !24
  %i.au = add i16 %i.at, -1                       ; 2 uses
  store i16 %i.au, ptr %i.as, align 8, !tbaa !24
  %i.av = icmp eq i16 %i.au, 0
  br i1 %i.av, label %bb.o, label %mi_free.exit, !prof !19

bb.o:                                             ; preds = %bb.n
  tail call void @_Z15_mi_page_retireP9mi_page_s(ptr noundef nonnull %i.ak) #55, !inline_history !35
  br label %mi_free.exit

bb.p:                                             ; preds = %bb.m
  tail call fastcc void @_ZL21mi_free_generic_localP9mi_page_sP12mi_segment_sPv(ptr noundef nonnull %i.ak, ptr noundef nonnull %0) #55, !inline_history !35
  br label %mi_free.exit

bb.q:                                             ; preds = %bb.l
  tail call fastcc void @_ZL18mi_free_generic_mtP9mi_page_sP12mi_segment_sPv(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.w, ptr noundef nonnull %0) #57, !inline_history !35
  br label %mi_free.exit

mi_free.exit:                                     ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.k, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z27_mi_heap_unsafe_destroy_allP9mi_heap_s(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !204
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !235  ; 2 uses
  %.not10 = icmp eq ptr %i.d, null
  br i1 %.not10, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %mi_heap_destroy.exit
  %.011 = phi ptr [ %i.f, %mi_heap_destroy.exit ], [ %i.d, %bb.b ] ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.011, i64 232
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !236  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.011, i64 240
  %i.h = load i8, ptr %i.g, align 8, !tbaa !216, !range !91, !noundef !92
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %.not9 = icmp eq ptr %.011, @_mi_heap_empty
  br i1 %.not9, label %mi_heap_destroy.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_Z22_mi_heap_destroy_pagesP9mi_heap_s(ptr noundef nonnull %.011)
  tail call fastcc void @_ZL12mi_heap_freeP9mi_heap_s(ptr noundef nonnull %.011)
  br label %mi_heap_destroy.exit

bb.e:                                             ; preds = %.lr.ph
  tail call void @_Z22_mi_heap_destroy_pagesP9mi_heap_s(ptr noundef nonnull %.011)
  br label %mi_heap_destroy.exit

mi_heap_destroy.exit:                             ; preds = %bb.d, %bb.c, %bb.e
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !245

.loopexit:                                        ; preds = %mi_heap_destroy.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @mi_heap_set_default(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %0, @_mi_heap_empty
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %_Z27_mi_heap_set_default_directP9mi_heap_s.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default) ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  store ptr %0, ptr %i.c, align 8, !tbaa !37
  %i.e = load i32, ptr @_mi_heap_default_key, align 4, !tbaa !71 ; 2 uses
  %.not.i.i = icmp eq i32 %i.e, -1
  br i1 %.not.i.i, label %_Z27_mi_heap_set_default_directP9mi_heap_s.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @pthread_setspecific(i32 noundef %i.e, ptr noundef nonnull %0) #55 ; 0 uses
  br label %_Z27_mi_heap_set_default_directP9mi_heap_s.exit

_Z27_mi_heap_set_default_directP9mi_heap_s.exit:  ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.d, %bb.c ], [ %i.d, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_Z27_mi_heap_set_default_directP9mi_heap_s(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  store ptr %0, ptr %i.a, align 8, !tbaa !37
  %i.b = load i32, ptr @_mi_heap_default_key, align 4, !tbaa !71 ; 2 uses
  %.not.i = icmp eq i32 %i.b, -1
  br i1 %.not.i, label %_Z38_mi_prim_thread_associate_default_heapP9mi_heap_s.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @pthread_setspecific(i32 noundef %i.b, ptr noundef %0) #55 ; 0 uses
  br label %_Z38_mi_prim_thread_associate_default_heapP9mi_heap_s.exit

_Z38_mi_prim_thread_associate_default_heapP9mi_heap_s.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @mi_heap_contains_block(ptr nofree noundef readnone captures(address) %0, ptr noundef %1) local_unnamed_addr #25 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %0, @_mi_heap_empty
  %or.cond.not8 = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %1, null
  %or.cond6 = or i1 %or.cond.not8, %i.c
  br i1 %or.cond6, label %_ZL16mi_heap_of_blockPKv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.e = add i64 %i.d, -1                         ; 2 uses
  %i.f = and i64 %i.e, -33554432
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = icmp slt i64 %i.e, 33554432
  %i.i = select i1 %i.h, ptr null, ptr %i.g       ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_heap_main, i64 32), align 32, !tbaa !234
  %i.l = xor i64 %i.k, %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  %i.n = load i64, ptr %i.m, align 32, !tbaa !246
  %.not.i = icmp eq i64 %i.l, %i.n
  br i1 %.not.i, label %bb.c, label %_ZL16mi_heap_of_blockPKv.exit, !prof !26

bb.c:                                             ; preds = %bb.b
  %i.o = sub i64 %i.d, %i.j
  %i.p = lshr i64 %i.o, 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 288
  %i.r = getelementptr inbounds nuw [96 x i8], ptr %i.q, i64 %i.p ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !25
  %i.u = zext i32 %i.t to i64
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr inbounds i8, ptr %i.r, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.y = load atomic i64, ptr %i.x monotonic, align 8
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = icmp eq ptr %0, %i.z
  br label %_ZL16mi_heap_of_blockPKv.exit

_ZL16mi_heap_of_blockPKv.exit:                    ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.aa, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @mi_heap_check_owned(ptr nofree noundef readonly captures(address) %0, ptr noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_ZL19mi_heap_visit_pagesP9mi_heap_sPFbS0_P15mi_page_queue_sP9mi_page_sPvS5_ES5_S5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne ptr %0, @_mi_heap_empty
  %i.c = ptrtoint ptr %1 to i64
  %i.d = and i64 %i.c, 7
  %.not = icmp eq i64 %i.d, 0
  %or.cond = and i1 %i.b, %.not
  br i1 %or.cond, label %bb.c, label %_ZL19mi_heap_visit_pagesP9mi_heap_sPFbS0_P15mi_page_queue_sP9mi_page_sPvS5_ES5_S5_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
end_hunk_6
begin_hunk_7_@_ZL33mi_segments_try_abandon_to_targetP9mi_heap_smP17mi_segments_tld_s:bb.a
  %.031 = phi ptr [ %.0, %bb.e ], [ %.029, %bb.d ] ; 3 uses
  %i.i = getelementptr i8, ptr %.031, i64 40
  %.0.val = load i64, ptr %i.i, align 8, !tbaa !20
  %i.j = icmp ugt i64 %.0.val, 16777216
  br i1 %i.j, label %bb.e, label %.critedge2

bb.e:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.031, i64 72
  %.0 = load ptr, ptr %i.k, align 8, !tbaa !39    ; 2 uses
  %cond = icmp eq ptr %.0, null
  br i1 %cond, label %.critedge, label %.lr.ph, !llvm.loop !348

.critedge2:                                       ; preds = %.lr.ph
  %magicptr.le = ptrtoint ptr %.031 to i64
  %i.l = add i64 %magicptr.le, -1                 ; 2 uses
  %i.m = and i64 %i.l, -33554432
  %i.n = inttoptr i64 %i.m to ptr                 ; 7 uses
  %i.o = icmp slt i64 %i.l, 33554432
  %i.p = select i1 %i.o, ptr null, ptr %i.n       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 193 ; 3 uses
  store i8 1, ptr %i.q, align 1, !tbaa !330
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 288 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 272
  %i.t = load i64, ptr %i.s, align 16, !tbaa !122 ; 2 uses
  %i.u = getelementptr inbounds nuw [96 x i8], ptr %i.r, i64 %i.t
  %i.v = load i32, ptr %i.r, align 32, !tbaa !123
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = icmp samesign ugt i64 %i.t, %i.w
  br i1 %i.x, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.critedge2
  %i.y = getelementptr inbounds nuw [96 x i8], ptr %i.r, i64 %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 216
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  br label %bb.f

bb.f:                                             ; preds = %bb.n, %.lr.ph.i
  %.01925.i = phi ptr [ %i.y, %.lr.ph.i ], [ %i.cb, %bb.n ] ; 13 uses
  %i.ab = getelementptr i8, ptr %.01925.i, i64 40
  %.019.val.i = load i64, ptr %i.ab, align 8, !tbaa !20
  %.not21.i = icmp eq i64 %.019.val.i, 0
  br i1 %.not21.i, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %.01925.i, i64 56 ; 4 uses
  %i.ad = load atomic i64, ptr %i.ac monotonic, align 8
  %.not.i.i = icmp ult i64 %i.ad, 4
  br i1 %.not.i.i, label %_ZL28_mi_page_thread_free_collectP9mi_page_s.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = load atomic i64, ptr %i.ac monotonic, align 8 ; 3 uses
  %i.af = and i64 %i.ae, 3
  %i.ag = cmpxchg weak ptr %i.ac, i64 %i.ae, i64 %i.af acq_rel acquire, align 8 ; 2 uses
  %i.ah = extractvalue { i64, i1 } %i.ag, 1
  br i1 %i.ah, label %._crit_edge.i.i.i, label %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i.i

_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i.i: ; preds = %bb.h, %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i.i
  %i.ai = phi { i64, i1 } [ %i.al, %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i.i ], [ %i.ag, %bb.h ]
  %i.aj = extractvalue { i64, i1 } %i.ai, 0       ; 3 uses
  %i.ak = and i64 %i.aj, 3
  %i.al = cmpxchg weak ptr %i.ac, i64 %i.aj, i64 %i.ak acq_rel acquire, align 8 ; 2 uses
  %i.am = extractvalue { i64, i1 } %i.al, 1
  br i1 %i.am, label %._crit_edge.i.i.i, label %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i.i, !llvm.loop !28

._crit_edge.i.i.i:                                ; preds = %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i.i, %bb.h
  %.025.lcssa.i.i.i = phi i64 [ %i.ae, %bb.h ], [ %i.aj, %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i.i ]
  %i.an = and i64 %.025.lcssa.i.i.i, -4           ; 2 uses
  %i.ao = inttoptr i64 %i.an to ptr               ; 3 uses
  %i.ap = icmp eq i64 %i.an, 0
  br i1 %i.ap, label %_ZL28_mi_page_thread_free_collectP9mi_page_s.exit.i.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.01925.i, i64 10
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !30 ; 2 uses
  %i.as = zext i16 %i.ar to i64                   ; 2 uses
  %.0.val30.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !22 ; 2 uses
  %i.at = icmp ne i64 %.0.val30.i.i.i, 0
  %i.au = icmp ne i16 %i.ar, 0
  %i.av = select i1 %i.at, i1 %i.au, i1 false
  br i1 %i.av, label %.lr.ph.i.i.i, label %._crit_edge34.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i, %.lr.ph.i.i.i
  %.0.val32.i.i.i = phi i64 [ %.0.val.i.i.i, %.lr.ph.i.i.i ], [ %.0.val30.i.i.i, %bb.i ]
  %.02031.i.i.i = phi i64 [ %i.ax, %.lr.ph.i.i.i ], [ 1, %bb.i ] ; 2 uses
  %i.aw = inttoptr i64 %.0.val32.i.i.i to ptr     ; 2 uses
  %i.ax = add nuw nsw i64 %.02031.i.i.i, 1        ; 2 uses
  %.0.val.i.i.i = load i64, ptr %i.aw, align 8, !tbaa !22 ; 2 uses
  %i.ay = icmp ne i64 %.0.val.i.i.i, 0
  %i.az = icmp samesign ult i64 %.02031.i.i.i, %i.as
  %i.ba = select i1 %i.ay, i1 %i.az, i1 false
  br i1 %i.ba, label %.lr.ph.i.i.i, label %._crit_edge34.i.i.i, !llvm.loop !31

._crit_edge34.i.i.i:                              ; preds = %.lr.ph.i.i.i, %bb.i
  %.020.lcssa.i.i.i = phi i64 [ 1, %bb.i ], [ %i.ax, %.lr.ph.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i = phi ptr [ %i.ao, %bb.i ], [ %i.aw, %.lr.ph.i.i.i ]
  %i.bb = icmp samesign ugt i64 %.020.lcssa.i.i.i, %i.as
  br i1 %i.bb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge34.i.i.i
  tail call void (i32, ptr, ...) @_Z17_mi_error_messageiPKcz(i32 noundef 14, ptr noundef nonnull @.str.175)
  br label %_ZL28_mi_page_thread_free_collectP9mi_page_s.exit.i.i

bb.k:                                             ; preds = %._crit_edge34.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.01925.i, i64 24 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !21
  %i.be = ptrtoint ptr %i.bd to i64
  store i64 %i.be, ptr %.0.lcssa.i.i.i, align 8, !tbaa !22
  store ptr %i.ao, ptr %i.bc, align 8, !tbaa !21
  %i.bf = trunc nuw i64 %.020.lcssa.i.i.i to i16
  %i.bg = getelementptr inbounds nuw i8, ptr %.01925.i, i64 32 ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 8, !tbaa !24
  %i.bi = sub i16 %i.bh, %i.bf
  store i16 %i.bi, ptr %i.bg, align 8, !tbaa !24
  br label %_ZL28_mi_page_thread_free_collectP9mi_page_s.exit.i.i

_ZL28_mi_page_thread_free_collectP9mi_page_s.exit.i.i: ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i, %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %.01925.i, i64 24 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !21 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.bk, null
  br i1 %.not22.i.i, label %_Z21_mi_page_free_collectP9mi_page_sb.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZL28_mi_page_thread_free_collectP9mi_page_s.exit.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.01925.i, i64 16 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !32
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %.sink.split.i.i, label %_Z21_mi_page_free_collectP9mi_page_sb.exit.i, !prof !26

.sink.split.i.i:                                  ; preds = %bb.l
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !32
  store ptr null, ptr %i.bj, align 8, !tbaa !21
  %i.bo = getelementptr inbounds nuw i8, ptr %.01925.i, i64 15 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = and i8 %i.bp, -2
  store i8 %i.bq, ptr %i.bo, align 1
  br label %_Z21_mi_page_free_collectP9mi_page_sb.exit.i

_Z21_mi_page_free_collectP9mi_page_sb.exit.i:     ; preds = %.sink.split.i.i, %bb.l, %_ZL28_mi_page_thread_free_collectP9mi_page_s.exit.i.i
  %i.br = load i64, ptr %i.z, align 8, !tbaa !225
  %i.bs = load i64, ptr %i.aa, align 8, !tbaa !226
  %i.bt = add i64 %i.bs, 1
  %.not.i = icmp eq i64 %i.br, %i.bt
  br i1 %.not.i, label %.thread.i, label %bb.m

.thread.i:                                        ; preds = %_Z21_mi_page_free_collectP9mi_page_sb.exit.i
  store i8 0, ptr %i.q, align 1, !tbaa !330
  tail call void @_Z22_mi_page_force_abandonP9mi_page_s(ptr noundef nonnull %.01925.i)
  br label %_ZL24mi_segment_force_abandonP12mi_segment_sP17mi_segments_tld_s.exit

bb.m:                                             ; preds = %_Z21_mi_page_free_collectP9mi_page_sb.exit.i
  tail call void @_Z22_mi_page_force_abandonP9mi_page_s(ptr noundef nonnull %.01925.i)
  %i.bu = getelementptr inbounds nuw i8, ptr %.01925.i, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !25
  %i.bw = zext i32 %i.bv to i64
  %i.bx = sub nsw i64 0, %i.bw
  %i.by = getelementptr inbounds i8, ptr %.01925.i, i64 %i.bx
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.f
  %.2.i = phi ptr [ %i.by, %bb.m ], [ %.01925.i, %bb.f ] ; 2 uses
  %i.bz = load i32, ptr %.2.i, align 8, !tbaa !123
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [96 x i8], ptr %.2.i, i64 %i.ca ; 2 uses
  %i.cc = icmp ult ptr %i.cb, %i.u
  br i1 %i.cc, label %bb.f, label %._crit_edge.i, !llvm.loop !349

._crit_edge.i:                                    ; preds = %bb.n, %.critedge2
  store i8 0, ptr %i.q, align 1, !tbaa !330
  %i.cd = getelementptr inbounds nuw i8, ptr %i.n, i64 216
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !225
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge.i
  tail call fastcc void @_ZL15mi_segment_freeP12mi_segment_sbP17mi_segments_tld_s(ptr noundef nonnull %i.n, ptr noundef %2)
  br label %_ZL24mi_segment_force_abandonP12mi_segment_sP17mi_segments_tld_s.exit

bb.p:                                             ; preds = %._crit_edge.i
  tail call fastcc void @_ZL20mi_segment_try_purgeP12mi_segment_sb(ptr noundef nonnull %i.n, i1 noundef zeroext false)
  br label %_ZL24mi_segment_force_abandonP12mi_segment_sP17mi_segments_tld_s.exit

_ZL24mi_segment_force_abandonP12mi_segment_sP17mi_segments_tld_s.exit: ; preds = %.thread.i, %bb.o, %bb.p
  %i.cg = add nuw nsw i32 %.01933, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.cg, 64
  br i1 %exitcond.not, label %.critedge, label %bb.c, !llvm.loop !350

.critedge:                                        ; preds = %_ZL24mi_segment_force_abandonP12mi_segment_sP17mi_segments_tld_s.exit, %bb.c, %bb.d, %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z27_mi_segment_huge_page_resetP12mi_segment_sP9mi_page_sP10mi_block_s(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !329, !range !91, !noundef !92
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %mi_usable_size.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.e = add i64 %i.d, -1                         ; 2 uses
  %i.f = icmp slt i64 %i.e, 33554432
  br i1 %i.f, label %mi_usable_size.exit.thread, label %bb.c, !prof !19

bb.c:                                             ; preds = %bb.b
  %3 = and i64 %i.e, 9223372036821221376          ; 2 uses
  %i.g = inttoptr i64 %3 to ptr
  %i.h = sub i64 %i.d, %3
  %i.i = lshr i64 %i.h, 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.k = getelementptr inbounds nuw [96 x i8], ptr %i.j, i64 %i.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !25
  %i.n = zext i32 %i.m to i64
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds i8, ptr %i.k, i64 %i.o ; 3 uses
  %i.q = getelementptr i8, ptr %i.p, i64 14
  %.val.i.i = load i8, ptr %i.q, align 2
  %i.r = and i8 %.val.i.i, 2
  %.not.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i, label %bb.d, label %bb.e, !prof !26

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.p, i64 40
  %.val12.i.i = load i64, ptr %i.s, align 8, !tbaa !20
  br label %mi_usable_size.exit

bb.e:                                             ; preds = %bb.c
  %i.t = tail call fastcc noundef i64 @_ZL30mi_page_usable_aligned_size_ofPK9mi_page_sPKv(ptr noundef nonnull %i.p, ptr noundef %2) #55
  br label %mi_usable_size.exit

mi_usable_size.exit:                              ; preds = %bb.d, %bb.e
  %.1.i.i = phi i64 [ %.val12.i.i, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %i.u = icmp ugt i64 %.1.i.i, 8
  br i1 %i.u, label %bb.f, label %mi_usable_size.exit.thread

bb.f:                                             ; preds = %mi_usable_size.exit
  %i.v = add i64 %.1.i.i, -8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = tail call noundef zeroext i1 @_Z12_mi_os_resetPvm(ptr noundef nonnull %i.w, i64 noundef %i.v) ; 0 uses
  br label %mi_usable_size.exit.thread

mi_usable_size.exit.thread:                       ; preds = %bb.b, %mi_usable_size.exit, %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_Z22_mi_segment_page_allocP9mi_heap_smmP17mi_segments_tld_s(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef captures(address) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp ugt i64 %2, 16777216
  br i1 %i.a, label %bb.b, label %bb.c, !prof !19

bb.b:                                             ; preds = %bb.a
  %spec.store.select = tail call i64 @llvm.umax.i64(i64 %2, i64 33554432)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !99
  %i.d = tail call fastcc noundef ptr @_ZL26mi_segment_huge_page_allocmmiP17mi_segments_tld_s(i64 noundef %1, i64 noundef %spec.store.select, i32 noundef %i.c, ptr noundef %3)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.e = icmp ult i64 %1, 8193
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call fastcc noundef ptr @_ZL22mi_segments_page_allocP9mi_heap_s14mi_page_kind_emmP17mi_segments_tld_s(ptr noundef %0, i64 noundef %1, i64 noundef %1, ptr noundef %3)
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.g = icmp ult i64 %1, 65537
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = tail call fastcc noundef ptr @_ZL22mi_segments_page_allocP9mi_heap_s14mi_page_kind_emmP17mi_segments_tld_s(ptr noundef %0, i64 noundef 524288, i64 noundef %1, ptr noundef %3)
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.i = icmp ult i64 %1, 16777217
  br i1 %i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.j = tail call fastcc noundef ptr @_ZL22mi_segments_page_allocP9mi_heap_s14mi_page_kind_emmP17mi_segments_tld_s(ptr noundef %0, i64 noundef %1, i64 noundef %1, ptr noundef %3)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !99
  %i.m = tail call fastcc noundef ptr @_ZL26mi_segment_huge_page_allocmmiP17mi_segments_tld_s(i64 noundef %1, i64 noundef %2, i32 noundef %i.l, ptr noundef %3)
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.h, %bb.i, %bb.f, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ %i.f, %bb.d ], [ %i.h, %bb.f ], [ %i.j, %bb.h ], [ %i.m, %bb.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL26mi_segment_huge_page_allocmmiP17mi_segments_tld_s(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef captures(address) %3) unnamed_addr #6 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store ptr null, ptr %i.a, align 8, !tbaa !39
  %i.b = call fastcc noundef ptr @_ZL16mi_segment_allocmmiP17mi_segments_tld_sPP9mi_page_s(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %i.a) ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = load ptr, ptr %i.a, align 8              ; 7 uses
  %i.e = icmp eq ptr %i.d, null
  %or.cond = select i1 %i.c, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.d, i64 40       ; 2 uses
  %.val.i = load i64, ptr %i.f, align 8, !tbaa !20 ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 96
  %i.l = load i32, ptr %i.d, align 8, !tbaa !123
  %i.m = zext i32 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 16                 ; 2 uses
  %i.o = shl i64 %i.k, 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.o ; 2 uses
  %i.q = add i64 %.val.i, -1
  %or.cond.i.i = icmp ult i64 %i.q, 65536
  br i1 %or.cond.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = urem i64 %i.r, %.val.i
  %i.t = sub nsw i64 %.val.i, %i.s                ; 3 uses
  %i.u = icmp uge i64 %i.t, %.val.i
  %i.v = add nuw nsw i64 %i.t, %.val.i
  %.not.i.i = icmp ult i64 %i.n, %i.v
  %or.cond35.i.i = select i1 %i.u, i1 true, i1 %.not.i.i
  %.0.i.i = select i1 %or.cond35.i.i, i64 0, i64 %i.t
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1.i.i = phi i64 [ %.0.i.i, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.w = icmp ugt i64 %.val.i, 7
  br i1 %i.w, label %bb.e, label %_Z22_mi_segment_page_startPK12mi_segment_sPK9mi_page_sPm.exit

bb.e:                                             ; preds = %bb.d
  %i.x = icmp ult i64 %.val.i, 65
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = mul nuw nsw i64 %.val.i, 3
  %i.z = add nuw nsw i64 %.1.i.i, %i.y
  br label %_Z22_mi_segment_page_startPK12mi_segment_sPK9mi_page_sPm.exit

bb.g:                                             ; preds = %bb.e
  %i.aa = icmp ult i64 %.val.i, 513
  %i.ab = select i1 %i.aa, i64 %.val.i, i64 0
  %spec.select.i.i = add nuw nsw i64 %.1.i.i, %i.ab
  br label %_Z22_mi_segment_page_startPK12mi_segment_sPK9mi_page_sPm.exit

_Z22_mi_segment_page_startPK12mi_segment_sPK9mi_page_sPm.exit: ; preds = %bb.d, %bb.f, %bb.g
  %.2.i.i = phi i64 [ %i.z, %bb.f ], [ %.1.i.i, %bb.d ], [ %spec.select.i.i, %bb.g ]
  %i.ac = add nsw i64 %.2.i.i, 15
  %i.ad = and i64 %i.ac, -16                      ; 2 uses
  %i.ae = sub i64 %i.n, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ad ; 2 uses
  store i64 %i.ae, ptr %i.f, align 8, !tbaa !20
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_Z22_mi_segment_page_startPK12mi_segment_sPK9mi_page_sPm.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !329, !range !91, !noundef !92
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = add i64 %1, -1
  %i.al = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %1)
  %i.am = icmp samesign ult i64 %i.al, 2
  %i.an = add i64 %i.ak, %i.aj                    ; 3 uses
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = sub i64 0, %1
  %i.ap = and i64 %i.an, %i.ao
  br label %_ZL12_mi_align_upmm.exit

bb.k:                                             ; preds = %bb.i
  %i.aq = urem i64 %i.an, %1
  %i.ar = sub nuw i64 %i.an, %i.aq
  br label %_ZL12_mi_align_upmm.exit

_ZL12_mi_align_upmm.exit:                         ; preds = %bb.j, %bb.k
  %.0.i = phi i64 [ %i.ap, %bb.j ], [ %i.ar, %bb.k ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %.0.i, %i.at
  %i.av = tail call noundef zeroext i1 @_Z12_mi_os_resetPvm(ptr noundef nonnull %i.as, i64 noundef %i.au) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %_Z22_mi_segment_page_startPK12mi_segment_sPK9mi_page_sPm.exit, %bb.h, %_ZL12_mi_align_upmm.exit, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.d, %_ZL12_mi_align_upmm.exit ], [ %i.d, %bb.h ], [ %i.d, %_Z22_mi_segment_page_startPK12mi_segment_sPK9mi_page_sPm.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL22mi_segments_page_allocP9mi_heap_s14mi_page_kind_emmP17mi_segments_tld_s(ptr noundef %0, i64 noundef range(i64 0, 16777217) %1, i64 noundef range(i64 0, 16777217) %2, ptr nofree noundef captures(address) %3) unnamed_addr #6 {
bb.a:
end_hunk_7
begin_hunk_8_@_Z19_mi_prim_random_bufPvm:bb.a
  %i.i = trunc i64 %i.h to i32                    ; 3 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.f
  %.not43 = icmp eq i64 %1, 0
  br i1 %.not43, label %.thread37, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.i
  %.040 = phi i64 [ %.2, %bb.i ], [ 0, %.preheader ] ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.040
  %i.l = sub nuw i64 %1, %.040
  %i.m = tail call noundef i64 (i64, ...) @syscall(i64 noundef 0, i32 noundef range(i32 0, -2147483648) %i.i, ptr noundef %i.k, i64 noundef %i.l) #55 ; 2 uses
  %i.n = icmp slt i64 %i.m, 1
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.o = tail call ptr @__errno_location() #59
  %i.p = load i32, ptr %i.o, align 4, !tbaa !71
  switch i32 %i.p, label %.thread37.loopexit [
    i32 11, label %bb.i
    i32 4, label %bb.i
  ]

bb.h:                                             ; preds = %.lr.ph
  %i.q = add i64 %i.m, %.040
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.g, %bb.h
  %.2 = phi i64 [ %i.q, %bb.h ], [ %.040, %bb.g ], [ %.040, %bb.g ] ; 3 uses
  %i.r = icmp ult i64 %.2, %1
  br i1 %i.r, label %.lr.ph, label %.thread37.loopexit

.thread37.loopexit:                               ; preds = %bb.g, %bb.i
  %.0.lcssa.ph = phi i64 [ %.2, %bb.i ], [ %.040, %bb.g ]
  %i.s = icmp eq i64 %.0.lcssa.ph, %1
  br label %.thread37

.thread37:                                        ; preds = %.thread37.loopexit, %.preheader
  %.0.lcssa = phi i1 [ true, %.preheader ], [ %i.s, %.thread37.loopexit ]
  %i.t = tail call i64 (i64, ...) @syscall(i64 noundef 3, i32 noundef range(i32 0, -2147483648) %i.i) #55 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.c, %.thread37, %bb.f
  %.227 = phi i1 [ false, %bb.f ], [ %.0.lcssa, %.thread37 ], [ false, %bb.d ], [ %i.e, %bb.c ]
  ret i1 %.227
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_Z30_mi_prim_thread_init_auto_donev() local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @pthread_key_create(ptr noundef nonnull @_mi_heap_default_key, ptr noundef nonnull @_ZL15mi_pthread_donePv) #55 ; 0 uses
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_key_create(ptr noundef, ptr noundef) local_unnamed_addr #41

; Function Attrs: mustprogress uwtable
define internal void @_ZL15mi_pthread_donePv(ptr nofree noundef readonly captures(address) %0) #6 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_Z15_mi_thread_doneP9mi_heap_s(ptr noundef nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_key_delete(i32 noundef) local_unnamed_addr #41

; Function Attrs: nounwind
declare i32 @pthread_setspecific(i32 noundef, ptr noundef) local_unnamed_addr #41

; Function Attrs: mustprogress uwtable
define internal void @_ZL17mi_process_attachv() #6 {
bb.a:
  tail call fastcc void @_ZL17mi_heap_main_initv()
  store i1 true, ptr @_ZL13os_preloading, align 1
  tail call void @_Z16_mi_options_initv()
  %.b.i.i = load i1, ptr @_ZZL33mi_process_setup_auto_thread_donevE15tls_initialized, align 1
  br i1 %.b.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i1 true, ptr @_ZZL33mi_process_setup_auto_thread_donevE15tls_initialized, align 1
  %i.a = tail call i32 @pthread_key_create(ptr noundef nonnull @_mi_heap_default_key, ptr noundef nonnull @_ZL15mi_pthread_donePv) #55, !inline_history !257 ; 0 uses
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  store ptr @_mi_heap_main, ptr %i.b, align 8, !tbaa !37
  %i.c = load i32, ptr @_mi_heap_default_key, align 4, !tbaa !71 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.c, -1
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @pthread_setspecific(i32 noundef %i.c, ptr noundef nonnull @_mi_heap_main) #55, !inline_history !258 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  tail call void @mi_process_init() #55
  %i.e = load i8, ptr getelementptr inbounds nuw (i8, ptr @_mi_heap_main, i64 188), align 4, !tbaa !264, !range !91, !noundef !92
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.e, label %_Z16_mi_process_loadv.exit

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_ZL17mi_random_init_exP15mi_random_cxt_sb(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_mi_heap_main, i64 56), i1 noundef zeroext false)
  br label %_Z16_mi_process_loadv.exit

_Z16_mi_process_loadv.exit:                       ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL17mi_process_detachv() #6 {
bb.a:
  tail call void @_Z16_mi_process_donev()
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define internal fastcc void @_ZL16mi_free_block_mtP9mi_page_sP12mi_segment_sP10mi_block_s(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 832), align 16, !tbaa !116
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.c = load atomic i64, ptr %i.b monotonic, align 8
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default) ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !37
  %.not15 = icmp eq ptr %i.f, @_mi_heap_empty
  br i1 %.not15, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @mi_process_init() #55, !inline_history !232
  %i.g = invoke fastcc noundef zeroext i1 @_ZL20_mi_thread_heap_initv()
          to label %bb.e unwind label %bb.g, !inline_history !232

bb.e:                                             ; preds = %bb.d
  br i1 %i.g, label %mi_heap_get_default.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 192), i64 1 monotonic, align 8 ; 3 uses
  %i.i = add nsw i64 %i.h, 1
  %i.j = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 184) monotonic, align 8 ; 2 uses
  %.old3.i.i.i.not.i = icmp sgt i64 %i.j, %i.h
  br i1 %.old3.i.i.i.not.i, label %.loopexit.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.f, %.preheader.i.i.i.i
  %.0.i.i.i.i = phi i64 [ %i.m, %.preheader.i.i.i.i ], [ %i.j, %bb.f ]
  %i.k = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 184), i64 %.0.i.i.i.i, i64 %i.i release monotonic, align 8 ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  %i.m = extractvalue { i64, i1 } %i.k, 0         ; 2 uses
  %i.n = icmp sgt i64 %i.m, %i.h
  %or.cond.not.i.i.i.i = select i1 %i.l, i1 true, i1 %i.n
  br i1 %or.cond.not.i.i.i.i, label %.loopexit.i, label %.preheader.i.i.i.i, !llvm.loop !147

.loopexit.i:                                      ; preds = %.preheader.i.i.i.i, %bb.f
  %i.o = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 176), i64 1 monotonic, align 8 ; 0 uses
  %i.p = atomicrmw add ptr @_ZL12thread_count, i64 1 monotonic, align 8 ; 0 uses
  br label %mi_heap_get_default.exit

bb.g:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #56, !inline_history !232
  unreachable

mi_heap_get_default.exit:                         ; preds = %bb.e, %.loopexit.i
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.t = tail call noundef zeroext i1 @_Z27_mi_segment_attempt_reclaimP9mi_heap_sP12mi_segment_s(ptr noundef %i.s, ptr noundef nonnull %1)
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %mi_heap_get_default.exit
  tail call void @mi_free(ptr noundef %2) #55
  br label %bb.p

bb.i:                                             ; preds = %mi_heap_get_default.exit, %bb.c, %bb.b, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.v = load i32, ptr %i.u, align 8, !tbaa !331
  %i.w = icmp eq i32 %i.v, 1
  br i1 %i.w, label %bb.j, label %_Z27_mi_segment_huge_page_resetP12mi_segment_sP9mi_page_sP10mi_block_s.exit

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load i8, ptr %i.x, align 8, !tbaa !329, !range !91, !noundef !92
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.k, label %_Z27_mi_segment_huge_page_resetP12mi_segment_sP9mi_page_sP10mi_block_s.exit

bb.k:                                             ; preds = %bb.j
  %i.aa = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.ab = add i64 %i.aa, -1                       ; 2 uses
  %i.ac = icmp slt i64 %i.ab, 33554432
  br i1 %i.ac, label %_Z27_mi_segment_huge_page_resetP12mi_segment_sP9mi_page_sP10mi_block_s.exit, label %bb.l, !prof !19

bb.l:                                             ; preds = %bb.k
  %3 = and i64 %i.ab, 9223372036821221376         ; 2 uses
  %i.ad = inttoptr i64 %3 to ptr
  %i.ae = sub i64 %i.aa, %3
  %i.af = lshr i64 %i.ae, 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 288
  %i.ah = getelementptr inbounds nuw [96 x i8], ptr %i.ag, i64 %i.af ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !25
  %i.ak = zext i32 %i.aj to i64
  %i.al = sub nsw i64 0, %i.ak
  %i.am = getelementptr inbounds i8, ptr %i.ah, i64 %i.al ; 3 uses
  %i.an = getelementptr i8, ptr %i.am, i64 14
  %.val.i.i.i = load i8, ptr %i.an, align 2
  %i.ao = and i8 %.val.i.i.i, 2
  %.not.i.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i, label %bb.m, label %bb.n, !prof !26

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr i8, ptr %i.am, i64 40
  %.val12.i.i.i = load i64, ptr %i.ap, align 8, !tbaa !20
  br label %mi_usable_size.exit.i

bb.n:                                             ; preds = %bb.l
  %i.aq = tail call fastcc noundef i64 @_ZL30mi_page_usable_aligned_size_ofPK9mi_page_sPKv(ptr noundef nonnull %i.am, ptr noundef %2) #55
  br label %mi_usable_size.exit.i

mi_usable_size.exit.i:                            ; preds = %bb.n, %bb.m
  %.1.i.i.i = phi i64 [ %.val12.i.i.i, %bb.m ], [ %i.aq, %bb.n ] ; 2 uses
  %i.ar = icmp ugt i64 %.1.i.i.i, 8
  br i1 %i.ar, label %bb.o, label %_Z27_mi_segment_huge_page_resetP12mi_segment_sP9mi_page_sP10mi_block_s.exit

bb.o:                                             ; preds = %mi_usable_size.exit.i
  %i.as = add i64 %.1.i.i.i, -8
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = tail call noundef zeroext i1 @_Z12_mi_os_resetPvm(ptr noundef nonnull %i.at, i64 noundef %i.as) ; 0 uses
  br label %_Z27_mi_segment_huge_page_resetP12mi_segment_sP9mi_page_sP10mi_block_s.exit

_Z27_mi_segment_huge_page_resetP12mi_segment_sP9mi_page_sP10mi_block_s.exit: ; preds = %bb.o, %mi_usable_size.exit.i, %bb.k, %bb.j, %bb.i
  tail call fastcc void @_ZL24mi_free_block_delayed_mtP9mi_page_sP10mi_block_s(ptr noundef %0, ptr noundef %2)
  br label %bb.p

bb.p:                                             ; preds = %_Z27_mi_segment_huge_page_resetP12mi_segment_sP9mi_page_sP10mi_block_s.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress noinline norecurse nounwind uwtable
define internal fastcc void @_ZL24mi_free_block_delayed_mtP9mi_page_sP10mi_block_s(ptr nofree noundef captures(none) %0, ptr noundef %1) unnamed_addr #43 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  %i.c = ptrtoint ptr %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit, %bb.a
  %.031 = phi i64 [ %i.b, %bb.a ], [ %i.n, %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit ] ; 5 uses
  %i.d = and i64 %.031, 3                         ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %.thread, !prof !19

bb.c:                                             ; preds = %bb.b
  %i.f = or disjoint i64 %.031, 1
  %i.g = cmpxchg weak ptr %i.a, i64 %.031, i64 %i.f release monotonic, align 8 ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %bb.d, label %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit

.thread:                                          ; preds = %bb.b
  %i.i = and i64 %.031, -4
  store i64 %i.i, ptr %1, align 8, !tbaa !22
  %i.j = or i64 %i.d, %i.c
  %i.k = cmpxchg weak ptr %i.a, i64 %.031, i64 %i.j release monotonic, align 8 ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  br i1 %i.l, label %.thread36, label %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit

_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit: ; preds = %.thread, %bb.c
  %i.m = phi { i64, i1 } [ %i.k, %.thread ], [ %i.g, %bb.c ]
  %i.n = extractvalue { i64, i1 } %i.m, 0
  br label %bb.b, !llvm.loop !377

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load atomic i64, ptr %i.o acquire, align 8 ; 2 uses
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.s = load atomic ptr, ptr %i.r monotonic, align 8 ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  store i64 %i.t, ptr %1, align 8, !tbaa !22
  %i.u = cmpxchg weak ptr %i.r, ptr %i.s, ptr %1 release monotonic, align 8 ; 2 uses
  %i.v = extractvalue { ptr, i1 } %i.u, 1
  br i1 %i.v, label %.loopexit, label %_ZNSt6atomicIP10mi_block_sE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit

_ZNSt6atomicIP10mi_block_sE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit: ; preds = %bb.e, %_ZNSt6atomicIP10mi_block_sE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit
  %i.w = phi { ptr, i1 } [ %i.z, %_ZNSt6atomicIP10mi_block_sE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit ], [ %i.u, %bb.e ]
  %i.x = extractvalue { ptr, i1 } %i.w, 0         ; 2 uses
  %i.y = ptrtoint ptr %i.x to i64
  store i64 %i.y, ptr %1, align 8, !tbaa !22
  %i.z = cmpxchg weak ptr %i.r, ptr %i.x, ptr %1 release monotonic, align 8 ; 2 uses
  %i.aa = extractvalue { ptr, i1 } %i.z, 1
  br i1 %i.aa, label %.loopexit, label %_ZNSt6atomicIP10mi_block_sE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit, !llvm.loop !378

.loopexit:                                        ; preds = %_ZNSt6atomicIP10mi_block_sE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit, %bb.e, %bb.d
  %i.ab = load atomic i64, ptr %i.a monotonic, align 8 ; 2 uses
  %i.ac = and i64 %i.ab, -4
  %i.ad = or disjoint i64 %i.ac, 2
  %i.ae = cmpxchg weak ptr %i.a, i64 %i.ab, i64 %i.ad release monotonic, align 8 ; 2 uses
  %i.af = extractvalue { i64, i1 } %i.ae, 1
  br i1 %i.af, label %.thread36, label %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit21

_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit21: ; preds = %.loopexit, %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit21
  %i.ag = phi { i64, i1 } [ %i.ak, %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit21 ], [ %i.ae, %.loopexit ]
  %i.ah = extractvalue { i64, i1 } %i.ag, 0       ; 2 uses
  %i.ai = and i64 %i.ah, -4
  %i.aj = or disjoint i64 %i.ai, 2
  %i.ak = cmpxchg weak ptr %i.a, i64 %i.ah, i64 %i.aj release monotonic, align 8 ; 2 uses
  %i.al = extractvalue { i64, i1 } %i.ak, 1
  br i1 %i.al, label %.thread36, label %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit21, !llvm.loop !379

.thread36:                                        ; preds = %.thread, %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit21, %.loopexit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.thread.pointer.p0() #44

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef i64 @_ZL30mi_page_usable_aligned_size_ofPK9mi_page_sPKv(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #45 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.g = load i8, ptr %i.f, align 2, !tbaa !18    ; 2 uses
  %.not.i = icmp eq i8 %i.g, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.h = zext nneg i8 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = and i64 %i.e, %i.i
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 40
  %.val.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !20
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %0, i64 40
  %.val.i = load i64, ptr %i.k, align 8, !tbaa !20 ; 2 uses
  %i.l = urem i64 %i.e, %.val.i
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.val = phi i64 [ %.val.pre, %bb.b ], [ %.val.i, %bb.c ]
  %.0.i = phi i64 [ %i.j, %bb.b ], [ %i.l, %bb.c ]
  %i.m = sub i64 %.val, %.0.i
  ret i64 %i.m
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #46

; Function Attrs: nounwind
declare noundef ptr @_ZSt15get_new_handlerv() local_unnamed_addr #41

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #41

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #47

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZL38mi_heap_malloc_zero_aligned_at_genericP9mi_heap_smmmb(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 281474976579584
  br i1 %i.a, label %bb.r, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne i64 %3, 0
  %i.c = icmp ugt i64 %2, %1
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %_ZL30mi_malloc_is_naturally_alignedmm.exit.thread22, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp samesign ult i64 %2, 17
  br i1 %i.d, label %_ZL30mi_malloc_is_naturally_alignedmm.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = icmp samesign ult i64 %1, 65537
  br i1 %i.e, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw nsw i64 %1, 7
  %i.g = lshr i64 %i.f, 3                         ; 2 uses
  %i.h = icmp samesign ult i64 %1, 65
  br i1 %i.h, label %bb.f, label %bb.g, !prof !26
end_hunk_8
begin_hunk_9_@_ZL38mi_heap_malloc_zero_aligned_at_genericP9mi_heap_smmmb:bb.a
bb.i:                                             ; preds = %bb.h
  %i.z = sub i64 0, %i.u
  %i.aa = and i64 %i.y, %i.z
  br label %_ZL30mi_malloc_is_naturally_alignedmm.exit

bb.j:                                             ; preds = %bb.h
  %i.ab = urem i64 %i.y, %i.u
  %i.ac = sub nuw i64 %i.y, %i.ab
  br label %_ZL30mi_malloc_is_naturally_alignedmm.exit

_ZL30mi_malloc_is_naturally_alignedmm.exit:       ; preds = %_ZL6mi_binm.exit.i.i, %bb.i, %bb.j
  %.0.i.i = phi i64 [ %i.t, %_ZL6mi_binm.exit.i.i ], [ %i.aa, %bb.i ], [ %i.ac, %bb.j ] ; 2 uses
  %i.ad = icmp ult i64 %.0.i.i, 65537
  %i.ae = add nsw i64 %2, -1
  %i.af = and i64 %.0.i.i, %i.ae
  %i.ag = icmp eq i64 %i.af, 0
  %i.ah = select i1 %i.ad, i1 %i.ag, i1 false
  br i1 %i.ah, label %_ZL30mi_malloc_is_naturally_alignedmm.exit.thread, label %_ZL30mi_malloc_is_naturally_alignedmm.exit.thread22

_ZL30mi_malloc_is_naturally_alignedmm.exit.thread: ; preds = %bb.c, %_ZL30mi_malloc_is_naturally_alignedmm.exit
  %i.ai = icmp samesign ult i64 %1, 1025
  br i1 %i.ai, label %bb.k, label %bb.q, !prof !26

bb.k:                                             ; preds = %_ZL30mi_malloc_is_naturally_alignedmm.exit.thread
  %i.aj = add nuw nsw i64 %1, 7
  %i.ak = lshr i64 %i.aj, 3
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ak
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !39 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !32 ; 8 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.l, label %bb.m, !prof !19

bb.l:                                             ; preds = %bb.k
  %i.ar = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef nonnull %0, i64 noundef range(i64 -1, 281474993356800) %1, i1 noundef zeroext %4, i64 noundef 0) #55, !inline_history !36
  br label %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit

bb.m:                                             ; preds = %bb.k
  %.val.i.i.i.i.i = load i64, ptr %i.ap, align 8, !tbaa !22
  %i.as = inttoptr i64 %.val.i.i.i.i.i to ptr
  store ptr %i.as, ptr %i.ao, align 8, !tbaa !32
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  %i.au = load i16, ptr %i.at, align 8, !tbaa !24
  %i.av = add i16 %i.au, 1
  store i16 %i.av, ptr %i.at, align 8, !tbaa !24
  br i1 %4, label %bb.n, label %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit, !prof !19

bb.n:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 15
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = and i8 %i.ax, 1
  %.not.i.i.i.i.i = icmp eq i8 %i.ay, 0
  br i1 %.not.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i64 0, ptr %i.ap, align 8, !tbaa !22
  br label %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit

bb.p:                                             ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !20
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ap, i64 8) ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ap, i8 0, i64 %i.ba, i1 false)
  br label %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit

bb.q:                                             ; preds = %_ZL30mi_malloc_is_naturally_alignedmm.exit.thread
  %i.bb = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef %0, i64 noundef range(i64 -1, 281474993356800) %1, i1 noundef zeroext %4, i64 noundef 0) #55
  br label %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit

_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit: ; preds = %bb.l, %bb.m, %bb.o, %bb.p, %bb.q
  %.0.i.i.i20 = phi ptr [ %i.bb, %bb.q ], [ %i.ar, %bb.l ], [ %i.ap, %bb.o ], [ %i.ap, %bb.p ], [ %i.ap, %bb.m ] ; 3 uses
  %i.bc = ptrtoint ptr %.0.i.i.i20 to i64
  %i.bd = add nsw i64 %2, -1
  %i.be = and i64 %i.bd, %i.bc
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.r, label %.thread, !prof !26

.thread:                                          ; preds = %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit
  tail call void @mi_free(ptr noundef %.0.i.i.i20) #55
  br label %_ZL30mi_malloc_is_naturally_alignedmm.exit.thread22

_ZL30mi_malloc_is_naturally_alignedmm.exit.thread22: ; preds = %.thread, %_ZL30mi_malloc_is_naturally_alignedmm.exit, %bb.b
  %i.bg = tail call fastcc noundef ptr @_ZL40mi_heap_malloc_zero_aligned_at_overallocP9mi_heap_smmmb(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4) #55
  br label %bb.r

bb.r:                                             ; preds = %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit, %bb.a, %_ZL30mi_malloc_is_naturally_alignedmm.exit.thread22
  %.1 = phi ptr [ null, %bb.a ], [ %i.bg, %_ZL30mi_malloc_is_naturally_alignedmm.exit.thread22 ], [ %.0.i.i.i20, %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZL40mi_heap_malloc_zero_aligned_at_overallocP9mi_heap_smmmb(ptr noundef %0, i64 noundef range(i64 0, 281474976579585) %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %2, 16777216                ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.d, !prof !19

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.c, label %bb.p, !prof !26

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i64 @llvm.umax.i64(i64 %1, i64 1025)
  %i.c = tail call noundef ptr @_Z23_mi_heap_malloc_zero_exP9mi_heap_smbm(ptr noundef %0, i64 noundef %i.b, i1 noundef zeroext false, i64 noundef %2) #55 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.p, label %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit.thread

bb.d:                                             ; preds = %bb.a
  %i.e = tail call i64 @llvm.umax.i64(i64 %1, i64 16)
  %i.f = add nuw nsw i64 %i.e, %2                 ; 3 uses
  %i.g = add nsw i64 %i.f, -1
  %i.h = icmp samesign ult i64 %i.f, 1026
  br i1 %i.h, label %bb.e, label %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit, !prof !26

bb.e:                                             ; preds = %bb.d
  %i.i = add nuw nsw i64 %i.f, 6
  %i.j = lshr i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.j
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !39   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !32   ; 8 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit, label %bb.f, !prof !19

bb.f:                                             ; preds = %bb.e
  %.val.i.i.i.i.i = load i64, ptr %i.o, align 8, !tbaa !22
  %i.q = inttoptr i64 %.val.i.i.i.i.i to ptr
  store ptr %i.q, ptr %i.n, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  %i.s = load i16, ptr %i.r, align 8, !tbaa !24
  %i.t = add i16 %i.s, 1
  store i16 %i.t, ptr %i.r, align 8, !tbaa !24
  br i1 %4, label %bb.g, label %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit.thread, !prof !19

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 15
  %i.v = load i8, ptr %i.u, align 1
  %i.w = and i8 %i.v, 1
  %.not.i.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 0, ptr %i.o, align 8, !tbaa !22
  br label %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !20
  call void @llvm.assume(i1 true) [ "align"(ptr %i.o, i64 8) ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.o, i8 0, i64 %i.y, i1 false)
  br label %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit.thread

_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit: ; preds = %bb.d, %bb.e
  %i.z = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef %0, i64 noundef range(i64 -1, 281474993356800) %i.g, i1 noundef zeroext %4, i64 noundef 0) #55 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.p, label %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit.thread

_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit.thread: ; preds = %bb.f, %bb.i, %bb.h, %bb.c, %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit
  %.0 = phi ptr [ %i.c, %bb.c ], [ %i.z, %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit ], [ %i.o, %bb.h ], [ %i.o, %bb.i ], [ %i.o, %bb.f ] ; 2 uses
  %i.ab = ptrtoint ptr %.0 to i64                 ; 4 uses
  %i.ac = add i64 %2, -1
  %i.ad = add i64 %3, %i.ab
  %i.ae = and i64 %i.ad, %i.ac                    ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  %i.ag = sub i64 %2, %i.ae
  %i.ah = select i1 %i.af, i64 0, i64 %i.ag
  %i.ai = add i64 %i.ah, %i.ab                    ; 3 uses
  %i.aj = inttoptr i64 %i.ai to ptr               ; 6 uses
  %.not44 = icmp eq ptr %.0, %i.aj
  br i1 %.not44, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit.thread
  %i.ak = add i64 %i.ab, -1                       ; 2 uses
  %i.al = icmp slt i64 %i.ak, 33554432
  %i.am = and i64 %i.ak, -33554432
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = select i1 %i.al, ptr null, ptr %i.an    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 288
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ab, %i.aq
  %i.as = lshr i64 %i.ar, 16
  %i.at = getelementptr inbounds nuw [96 x i8], ptr %i.ap, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !25
  %i.aw = zext i32 %i.av to i64
  %i.ax = sub nsw i64 0, %i.aw
  %i.ay = getelementptr inbounds i8, ptr %i.at, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 14 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 2
  %i.bb = or i8 %i.ba, 2
  store i8 %i.bb, ptr %i.az, align 2
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit.thread
  %or.cond = and i1 %i.a, %4
  br i1 %or.cond, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.bc = add i64 %i.ai, -1                       ; 2 uses
  %i.bd = icmp slt i64 %i.bc, 33554432
  br i1 %i.bd, label %mi_usable_size.exit, label %bb.m, !prof !19

bb.m:                                             ; preds = %bb.l
  %5 = and i64 %i.bc, 9223372036821221376         ; 2 uses
  %i.be = inttoptr i64 %5 to ptr
  %i.bf = sub i64 %i.ai, %5
  %i.bg = lshr i64 %i.bf, 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 288
  %i.bi = getelementptr inbounds nuw [96 x i8], ptr %i.bh, i64 %i.bg ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !25
  %i.bl = zext i32 %i.bk to i64
  %i.bm = sub nsw i64 0, %i.bl
  %i.bn = getelementptr inbounds i8, ptr %i.bi, i64 %i.bm ; 3 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 14
  %.val.i.i = load i8, ptr %i.bo, align 2
  %i.bp = and i8 %.val.i.i, 2
  %.not.i.i = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i, label %bb.n, label %bb.o, !prof !26

bb.n:                                             ; preds = %bb.m
  %i.bq = getelementptr i8, ptr %i.bn, i64 40
  %.val12.i.i = load i64, ptr %i.bq, align 8, !tbaa !20
  br label %mi_usable_size.exit

bb.o:                                             ; preds = %bb.m
  %i.br = tail call fastcc noundef i64 @_ZL30mi_page_usable_aligned_size_ofPK9mi_page_sPKv(ptr noundef nonnull %i.bn, ptr noundef %i.aj) #55
  br label %mi_usable_size.exit

mi_usable_size.exit:                              ; preds = %bb.l, %bb.n, %bb.o
  %.1.i.i = phi i64 [ 0, %bb.l ], [ %i.br, %bb.o ], [ %.val12.i.i, %bb.n ]
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aj, i64 8) ]
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aj, i8 0, i64 %.1.i.i, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.k, %mi_usable_size.exit, %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit, %bb.c, %bb.b
  %.040 = phi ptr [ null, %bb.c ], [ null, %bb.b ], [ null, %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit ], [ %i.aj, %mi_usable_size.exit ], [ %i.aj, %bb.k ]
  ret ptr %.040
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_trylock(ptr noundef) local_unnamed_addr #41

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #41

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #48

; Function Attrs: mustprogress noinline uwtable
define internal fastcc noundef ptr @_ZL21mi_arena_try_alloc_atP10mi_arena_smmbP10mi_memid_s(ptr nofree noundef nonnull captures(address) %0, i64 noundef range(i64 0, 288230376151711744) %1, i1 noundef zeroext %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #11 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i64, ptr %i.g, align 8, !tbaa !110
  %i.i = call noundef zeroext i1 @_Z37_mi_bitmap_try_find_from_claim_acrossPSt6atomicImEmmmPm(ptr noundef nonnull %i.f, i64 noundef %i.h, i64 noundef 0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noundef nonnull %i.a)
  br i1 %i.i, label %bb.b, label %_ZL18mi_arena_try_claimP10mi_arena_smPm.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = load i64, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %i.l = lshr i64 %i.k, 6
  store atomic i64 %i.l, ptr %i.j monotonic, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load atomic ptr, ptr %i.m seq_cst, align 8
  %i.o = shl i64 %i.k, 25
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o ; 4 uses
  %i.q = load i32, ptr %0, align 8, !tbaa !144
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.s = load i8, ptr %i.r, align 4, !tbaa !145, !range !91, !noundef !92
  %i.t = load i64, ptr %i.a, align 8, !tbaa !74   ; 8 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx, i8 0, i64 7, i1 false)
  store i64 %i.t, ptr %3, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.q, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 %i.s, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.775.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 6, ptr %.sroa.775.0..sroa_idx, align 4, !tbaa !137
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load i8, ptr %i.u, align 8, !tbaa !149, !range !91, !noundef !92
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 %i.v, ptr %i.w, align 8, !tbaa !181
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !162  ; 3 uses
  %.not45 = icmp eq ptr %i.y, null
  br i1 %.not45, label %_Z25_mi_bitmap_unclaim_acrossPSt6atomicImEmmm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = lshr i64 %i.t, 6                         ; 2 uses
  %i.aa = and i64 %i.t, 63                        ; 5 uses
  %i.ab = add nuw nsw i64 %i.aa, %1
  %i.ac = icmp samesign ult i64 %i.ab, 65
  br i1 %i.ac, label %bb.d, label %_ZL15mi_bitmap_mask_mm.exit24.i.i, !prof !26

bb.d:                                             ; preds = %bb.c
  %i.ad = icmp samesign ugt i64 %1, 63
  br i1 %i.ad, label %._crit_edge.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = icmp eq i64 %1, 0
  br i1 %i.ae, label %._crit_edge.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %notmask.i.i.i = shl nsw i64 -1, %1
  %i.af = xor i64 %notmask.i.i.i, -1
  %i.ag = shl i64 %i.af, %i.aa
  %i.ah = xor i64 %i.ag, -1
  br label %._crit_edge.thread.i

_ZL15mi_bitmap_mask_mm.exit24.i.i:                ; preds = %bb.c
  %i.ai = sub nuw nsw i64 64, %i.aa               ; 2 uses
  %i.aj = icmp eq i64 %i.aa, 0
  %notmask.i22.i.i = shl nsw i64 -1, %i.ai
  %i.ak = xor i64 %notmask.i22.i.i, -1
  %i.al = shl i64 %i.ak, %i.aa
  %i.am = sub nuw nsw i64 %1, %i.ai               ; 3 uses
  %i.an = lshr i64 %i.am, 6                       ; 4 uses
  %i.ao = and i64 %i.am, 63                       ; 2 uses
  %notmask.i25.i.i = shl nsw i64 -1, %i.ao
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.z ; 2 uses
  %i.aq = xor i64 %i.al, -1
  %i.ar = select i1 %i.aj, i64 0, i64 %i.aq
  %i.as = atomicrmw and ptr %i.ap, i64 %i.ar acq_rel, align 8 ; 0 uses
  %.032.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  %.not1633.i = icmp eq i64 %i.an, 0
  br i1 %.not1633.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZL15mi_bitmap_mask_mm.exit24.i.i
  %xtraiter = and i64 %i.an, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.036.i.prol = phi ptr [ %.0.i.prol, %.lr.ph.i.prol ], [ %.032.i, %.lr.ph.i.preheader ] ; 2 uses
  %.01434.i.prol = phi i64 [ %i.at, %.lr.ph.i.prol ], [ %i.an, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.at = add nsw i64 %.01434.i.prol, -1          ; 2 uses
  %i.au = atomicrmw xchg ptr %.036.i.prol, i64 0 acq_rel, align 8 ; 0 uses
  %.0.i.prol = getelementptr inbounds nuw i8, ptr %.036.i.prol, i64 8 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !380

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.0.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.0.i.prol, %.lr.ph.i.prol ]
  %.036.i.unr = phi ptr [ %.032.i, %.lr.ph.i.preheader ], [ %.0.i.prol, %.lr.ph.i.prol ]
  %.01434.i.unr = phi i64 [ %i.an, %.lr.ph.i.preheader ], [ %i.at, %.lr.ph.i.prol ]
  %i.av = icmp samesign ult i64 %i.am, 512
  br i1 %i.av, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %bb.f, %bb.e, %bb.d
  %.031.ph.i = phi i64 [ -1, %bb.e ], [ 0, %bb.d ], [ %i.ah, %bb.f ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.z
  %i.ax = atomicrmw and ptr %i.aw, i64 %.031.ph.i acq_rel, align 8 ; 0 uses
  br label %_Z25_mi_bitmap_unclaim_acrossPSt6atomicImEmmm.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.036.i = phi ptr [ %.0.i.7, %.lr.ph.i ], [ %.036.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.01434.i = phi i64 [ %i.bf, %.lr.ph.i ], [ %.01434.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.ay = atomicrmw xchg ptr %.036.i, i64 0 acq_rel, align 8 ; 0 uses
  %.0.i = getelementptr inbounds nuw i8, ptr %.036.i, i64 8
  %i.az = atomicrmw xchg ptr %.0.i, i64 0 acq_rel, align 8 ; 0 uses
  %.0.i.1 = getelementptr inbounds nuw i8, ptr %.036.i, i64 16
  %i.ba = atomicrmw xchg ptr %.0.i.1, i64 0 acq_rel, align 8 ; 0 uses
  %.0.i.2 = getelementptr inbounds nuw i8, ptr %.036.i, i64 24
  %i.bb = atomicrmw xchg ptr %.0.i.2, i64 0 acq_rel, align 8 ; 0 uses
  %.0.i.3 = getelementptr inbounds nuw i8, ptr %.036.i, i64 32
  %i.bc = atomicrmw xchg ptr %.0.i.3, i64 0 acq_rel, align 8 ; 0 uses
  %.0.i.4 = getelementptr inbounds nuw i8, ptr %.036.i, i64 40
  %i.bd = atomicrmw xchg ptr %.0.i.4, i64 0 acq_rel, align 8 ; 0 uses
  %.0.i.5 = getelementptr inbounds nuw i8, ptr %.036.i, i64 48
  %i.be = atomicrmw xchg ptr %.0.i.5, i64 0 acq_rel, align 8 ; 0 uses
  %.0.i.6 = getelementptr inbounds nuw i8, ptr %.036.i, i64 56
  %i.bf = add nsw i64 %.01434.i, -8               ; 2 uses
  %i.bg = atomicrmw xchg ptr %.0.i.6, i64 0 acq_rel, align 8 ; 0 uses
  %.0.i.7 = getelementptr inbounds nuw i8, ptr %.036.i, i64 64 ; 2 uses
  %.not16.i.7 = icmp eq i64 %i.bf, 0
  br i1 %.not16.i.7, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !153

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %_ZL15mi_bitmap_mask_mm.exit24.i.i
  %.0.lcssa.i = phi ptr [ %.032.i, %_ZL15mi_bitmap_mask_mm.exit24.i.i ], [ %.0.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.0.i.7, %.lr.ph.i ]
  %.not17.i = icmp eq i64 %i.ao, 0
  br i1 %.not17.i, label %_Z25_mi_bitmap_unclaim_acrossPSt6atomicImEmmm.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i
  %i.bh = atomicrmw and ptr %.0.lcssa.i, i64 %notmask.i25.i.i acq_rel, align 8 ; 0 uses
  br label %_Z25_mi_bitmap_unclaim_acrossPSt6atomicImEmmm.exit

_Z25_mi_bitmap_unclaim_acrossPSt6atomicImEmmm.exit: ; preds = %bb.g, %._crit_edge.i, %._crit_edge.thread.i, %bb.b
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.bj = load i8, ptr %i.bi, align 2, !tbaa !381, !range !91, !noundef !92
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_Z25_mi_bitmap_unclaim_acrossPSt6atomicImEmmm.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 152
end_hunk_9
