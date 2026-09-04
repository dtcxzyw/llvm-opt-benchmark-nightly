Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/static?download=true
inline.NumInlined: 1572
inline.NumDeleted: 309
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 40
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@mi_heap_alloc_new_n:bb.a
  %i.f = lshr i64 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !77   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !72   ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %mi_heap_malloc.exit.i, label %mi_heap_malloc.exit.thread.i, !prof !61

mi_heap_malloc.exit.thread.i:                     ; preds = %bb.d
  %.val.i.i.i.i.i.i = load i64, ptr %i.k, align 8, !tbaa !65
  %i.m = inttoptr i64 %.val.i.i.i.i.i.i to ptr
  store ptr %i.m, ptr %i.j, align 8, !tbaa !72
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.o = load i16, ptr %i.n, align 8, !tbaa !66
  %i.p = add i16 %i.o, 1
  store i16 %i.p, ptr %i.n, align 8, !tbaa !66
  br label %mi_heap_alloc_new.exit

mi_heap_malloc.exit.i:                            ; preds = %bb.d, %bb.c
  %i.q = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef %0, i64 noundef %storemerge.i.ph, i1 noundef zeroext false, i64 noundef 0) #55 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.e, label %mi_heap_alloc_new.exit, !prof !90

bb.e:                                             ; preds = %mi_heap_malloc.exit.i
  %i.s = tail call noundef ptr @_Z15mi_heap_try_newP9mi_heap_smb(ptr noundef %0, i64 noundef %storemerge.i.ph, i1 noundef zeroext false)
  br label %mi_heap_alloc_new.exit

mi_heap_alloc_new.exit:                           ; preds = %bb.e, %mi_heap_malloc.exit.i, %mi_heap_malloc.exit.thread.i, %_ZL22mi_count_size_overflowmmPm.exit
  %.0 = phi ptr [ null, %_ZL22mi_count_size_overflowmmPm.exit ], [ %i.s, %bb.e ], [ %i.q, %mi_heap_malloc.exit.i ], [ %i.k, %mi_heap_malloc.exit.thread.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define noalias ptr @mi_new_n(i64 noundef %0, i64 noundef %1) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 3 uses
  %.not.i = icmp eq i64 %0, 1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  %i.e = extractvalue { i64, i1 } %i.c, 0
  br i1 %i.d, label %_ZL22mi_count_size_overflowmmPm.exit.i, label %bb.c, !prof !61

_ZL22mi_count_size_overflowmmPm.exit.i:           ; preds = %bb.b
  tail call fastcc void @_ZL18mi_try_new_handlerb(i1 noundef zeroext false)
  br label %mi_heap_alloc_new_n.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph.i = phi i64 [ %1, %bb.a ], [ %i.e, %bb.b ] ; 4 uses
  %i.f = icmp ult i64 %storemerge.i.ph.i, 1025
  br i1 %i.f, label %bb.d, label %mi_heap_malloc.exit.i.i, !prof !68

bb.d:                                             ; preds = %bb.c
  %i.g = add nuw nsw i64 %storemerge.i.ph.i, 7
  %i.h = lshr i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.h
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !77   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !72   ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %mi_heap_malloc.exit.i.i, label %mi_heap_malloc.exit.thread.i.i, !prof !61

mi_heap_malloc.exit.thread.i.i:                   ; preds = %bb.d
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.m, align 8, !tbaa !65
  %i.o = inttoptr i64 %.val.i.i.i.i.i.i.i to ptr
  store ptr %i.o, ptr %i.l, align 8, !tbaa !72
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.q = load i16, ptr %i.p, align 8, !tbaa !66
  %i.r = add i16 %i.q, 1
  store i16 %i.r, ptr %i.p, align 8, !tbaa !66
  br label %mi_heap_alloc_new_n.exit

mi_heap_malloc.exit.i.i:                          ; preds = %bb.d, %bb.c
  %i.s = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef %i.b, i64 noundef %storemerge.i.ph.i, i1 noundef zeroext false, i64 noundef 0) #55 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.e, label %mi_heap_alloc_new_n.exit, !prof !90

bb.e:                                             ; preds = %mi_heap_malloc.exit.i.i
  %i.u = tail call noundef ptr @_Z15mi_heap_try_newP9mi_heap_smb(ptr noundef %i.b, i64 noundef %storemerge.i.ph.i, i1 noundef zeroext false)
  br label %mi_heap_alloc_new_n.exit

mi_heap_alloc_new_n.exit:                         ; preds = %_ZL22mi_count_size_overflowmmPm.exit.i, %mi_heap_malloc.exit.thread.i.i, %mi_heap_malloc.exit.i.i, %bb.e
  %.0.i = phi ptr [ null, %_ZL22mi_count_size_overflowmmPm.exit.i ], [ %i.u, %bb.e ], [ %i.s, %mi_heap_malloc.exit.i.i ], [ %i.m, %mi_heap_malloc.exit.thread.i.i ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define noalias ptr @mi_new_nothrow(i64 noundef %0) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %i.c = icmp ult i64 %0, 1025
  br i1 %i.c, label %bb.b, label %mi_malloc.exit, !prof !68

bb.b:                                             ; preds = %bb.a
  %i.d = add nuw nsw i64 %0, 7
  %i.e = lshr i64 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.e
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !77   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !72   ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %mi_malloc.exit, label %mi_malloc.exit.thread, !prof !61

mi_malloc.exit.thread:                            ; preds = %bb.b
  %.val.i.i.i.i.i.i = load i64, ptr %i.j, align 8, !tbaa !65
  %i.l = inttoptr i64 %.val.i.i.i.i.i.i to ptr
  store ptr %i.l, ptr %i.i, align 8, !tbaa !72
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.n = load i16, ptr %i.m, align 8, !tbaa !66
  %i.o = add i16 %i.n, 1
  store i16 %i.o, ptr %i.m, align 8, !tbaa !66
  br label %bb.d

mi_malloc.exit:                                   ; preds = %bb.a, %bb.b
  %i.p = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef %i.b, i64 noundef %0, i1 noundef zeroext false, i64 noundef 0) #55 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.c, label %bb.d, !prof !90

bb.c:                                             ; preds = %mi_malloc.exit
  %i.r = invoke fastcc noundef ptr @_ZL10mi_try_newmb(i64 noundef %0)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %mi_malloc.exit.thread, %mi_malloc.exit
  %.0 = phi ptr [ %i.r, %bb.c ], [ %i.p, %mi_malloc.exit ], [ %i.j, %mi_malloc.exit.thread ]
  ret ptr %.0

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #56
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noalias ptr @mi_malloc(i64 noundef %0) #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 3 uses
  %i.c = icmp ult i64 %0, 1025
  br i1 %i.c, label %bb.b, label %bb.e, !prof !68

bb.b:                                             ; preds = %bb.a
  %i.d = add nuw nsw i64 %0, 7
  %i.e = lshr i64 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.e
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !77   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !72   ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %bb.d, !prof !61

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef nonnull %i.b, i64 noundef %0, i1 noundef zeroext false, i64 noundef 0) #55, !inline_history !74
  br label %mi_heap_malloc.exit

bb.d:                                             ; preds = %bb.b
  %.val.i.i.i.i.i = load i64, ptr %i.j, align 8, !tbaa !65
  %i.m = inttoptr i64 %.val.i.i.i.i.i to ptr
  store ptr %i.m, ptr %i.i, align 8, !tbaa !72
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.o = load i16, ptr %i.n, align 8, !tbaa !66
  %i.p = add i16 %i.o, 1
  store i16 %i.p, ptr %i.n, align 8, !tbaa !66
  br label %mi_heap_malloc.exit

bb.e:                                             ; preds = %bb.a
  %i.q = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef %i.b, i64 noundef %0, i1 noundef zeroext false, i64 noundef 0) #55
  br label %mi_heap_malloc.exit

mi_heap_malloc.exit:                              ; preds = %bb.c, %bb.d, %bb.e
  %.0.i.i.i = phi ptr [ %i.q, %bb.e ], [ %i.l, %bb.c ], [ %i.j, %bb.d ]
  ret ptr %.0.i.i.i
}

; Function Attrs: mustprogress noinline uwtable
define internal fastcc noundef ptr @_ZL10mi_try_newmb(i64 noundef %0) unnamed_addr #11 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.c = tail call noundef ptr @_Z15mi_heap_try_newP9mi_heap_smb(ptr noundef %i.b, i64 noundef %0, i1 noundef zeroext true)
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define noalias nonnull ptr @mi_new_aligned(i64 noundef %0, i64 noundef %1) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default) ; 3 uses
  %i.b = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %1)
  %or.cond.not.i.i.i.i = icmp eq i64 %i.b, 1
  %i.c = add nuw nsw i64 %0, 7
  %i.d = lshr i64 %i.c, 3                         ; 2 uses
  %i.e = add nsw i64 %1, -1                       ; 2 uses
  br i1 %or.cond.not.i.i.i.i, label %.split.us, label %.split, !prof !91

.split.us:                                        ; preds = %bb.a
  %i.f = icmp ult i64 %0, 1025
  %i.g = icmp ule i64 %1, %0
  %i.h = and i1 %i.f, %i.g
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !76   ; 3 uses
  br i1 %i.h, label %.split.us.split.us.preheader, label %.split.us.split, !prof !68

.split.us.split.us.preheader:                     ; preds = %.split.us
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 248
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.d
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !77   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !72   ; 3 uses
  %.not.i.i.i.i.us.us67 = icmp ne ptr %i.n, null
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = and i64 %i.e, %i.o
  %.not36.i.i.i.i.us.us68 = icmp eq i64 %i.p, 0
  %or.cond69 = select i1 %.not.i.i.i.i.us.us67, i1 %.not36.i.i.i.i.us.us68, i1 false, !prof !91
  br i1 %or.cond69, label %mi_malloc_aligned.exit.thread6, label %mi_malloc_aligned.exit.us.us, !prof !253

mi_malloc_aligned.exit.us.us:                     ; preds = %.split.us.split.us.preheader, %_ZL18mi_try_new_handlerb.exit.us.us
  %i.q = phi ptr [ %i.u, %_ZL18mi_try_new_handlerb.exit.us.us ], [ %i.i, %.split.us.split.us.preheader ]
  %i.r = tail call fastcc noundef ptr @_ZL38mi_heap_malloc_zero_aligned_at_genericP9mi_heap_smmmb(ptr noundef nonnull %i.q, i64 noundef %0, i64 noundef %1, i64 noundef 0, i1 noundef zeroext false) #55 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %mi_malloc_aligned.exit.thread.us.us, label %.critedge

mi_malloc_aligned.exit.thread.us.us:              ; preds = %mi_malloc_aligned.exit.us.us
  %i.t = tail call noundef ptr @_ZSt15get_new_handlerv() #55 ; 2 uses
  %.not.us.us = icmp eq ptr %i.t, null
  br i1 %.not.us.us, label %.split16.us, label %_ZL18mi_try_new_handlerb.exit.us.us

_ZL18mi_try_new_handlerb.exit.us.us:              ; preds = %mi_malloc_aligned.exit.thread.us.us
  tail call void %i.t(), !inline_history !6
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 248
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.d
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !77   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !72   ; 3 uses
  %.not.i.i.i.i.us.us = icmp ne ptr %i.z, null
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = and i64 %i.e, %i.aa
  %.not36.i.i.i.i.us.us = icmp eq i64 %i.ab, 0
  %or.cond = select i1 %.not.i.i.i.i.us.us, i1 %.not36.i.i.i.i.us.us, i1 false, !prof !91
  br i1 %or.cond, label %mi_malloc_aligned.exit.thread6, label %mi_malloc_aligned.exit.us.us, !prof !254, !llvm.loop !252

.split.us.split:                                  ; preds = %.split.us
  %i.ac = tail call fastcc noundef ptr @_ZL38mi_heap_malloc_zero_aligned_at_genericP9mi_heap_smmmb(ptr noundef %i.i, i64 noundef %0, i64 noundef %1, i64 noundef 0, i1 noundef zeroext false) #55 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %mi_malloc_aligned.exit.thread.us, label %.critedge

mi_malloc_aligned.exit.thread.us:                 ; preds = %.split.us.split, %_ZL18mi_try_new_handlerb.exit.us
  %i.ae = tail call noundef ptr @_ZSt15get_new_handlerv() #55 ; 2 uses
  %.not.us = icmp eq ptr %i.ae, null
  br i1 %.not.us, label %.split16.us, label %_ZL18mi_try_new_handlerb.exit.us

_ZL18mi_try_new_handlerb.exit.us:                 ; preds = %mi_malloc_aligned.exit.thread.us
  tail call void %i.ae(), !inline_history !6
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.ag = tail call fastcc noundef ptr @_ZL38mi_heap_malloc_zero_aligned_at_genericP9mi_heap_smmmb(ptr noundef %i.af, i64 noundef %0, i64 noundef %1, i64 noundef 0, i1 noundef zeroext false) #55 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %mi_malloc_aligned.exit.thread.us, label %.critedge, !llvm.loop !252

.split:                                           ; preds = %bb.a
  %i.ai = tail call noundef ptr @_ZSt15get_new_handlerv() #55 ; 2 uses
  %.not17 = icmp eq ptr %i.ai, null
  br i1 %.not17, label %.split16.us, label %_ZL18mi_try_new_handlerb.exit

mi_malloc_aligned.exit.thread6:                   ; preds = %_ZL18mi_try_new_handlerb.exit.us.us, %.split.us.split.us.preheader
  %.lcssa61 = phi ptr [ %i.l, %.split.us.split.us.preheader ], [ %i.x, %_ZL18mi_try_new_handlerb.exit.us.us ] ; 2 uses
  %.lcssa = phi ptr [ %i.n, %.split.us.split.us.preheader ], [ %i.z, %_ZL18mi_try_new_handlerb.exit.us.us ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.lcssa61, i64 16
  %.val.i.i.i.i.i.i = load i64, ptr %.lcssa, align 8, !tbaa !65
  %i.ak = inttoptr i64 %.val.i.i.i.i.i.i to ptr
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !72
  %i.al = getelementptr inbounds nuw i8, ptr %.lcssa61, i64 32 ; 2 uses
  %i.am = load i16, ptr %i.al, align 8, !tbaa !66
  %i.an = add i16 %i.am, 1
  store i16 %i.an, ptr %i.al, align 8, !tbaa !66
  br label %.critedge

.split16.us:                                      ; preds = %_ZL18mi_try_new_handlerb.exit, %mi_malloc_aligned.exit.thread.us, %mi_malloc_aligned.exit.thread.us.us, %.split
  tail call void (i32, ptr, ...) @_Z17_mi_error_messageiPKcz(i32 noundef 12, ptr noundef nonnull @.str.98)
  %i.ao = tail call ptr @__cxa_allocate_exception(i64 8) #55 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ao, align 8, !tbaa !89
  tail call void @__cxa_throw(ptr nonnull %i.ao, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #58
  unreachable

_ZL18mi_try_new_handlerb.exit:                    ; preds = %.split, %_ZL18mi_try_new_handlerb.exit
  %i.ap = phi ptr [ %i.aq, %_ZL18mi_try_new_handlerb.exit ], [ %i.ai, %.split ]
  tail call void %i.ap(), !inline_history !6
  %i.aq = tail call noundef ptr @_ZSt15get_new_handlerv() #55 ; 2 uses
  %.not = icmp eq ptr %i.aq, null
  br i1 %.not, label %.split16.us, label %_ZL18mi_try_new_handlerb.exit, !llvm.loop !252

.critedge:                                        ; preds = %_ZL18mi_try_new_handlerb.exit.us, %mi_malloc_aligned.exit.us.us, %.split.us.split, %mi_malloc_aligned.exit.thread6
  %.3.i.i.i.i4 = phi ptr [ %.lcssa, %mi_malloc_aligned.exit.thread6 ], [ %i.r, %mi_malloc_aligned.exit.us.us ], [ %i.ac, %.split.us.split ], [ %i.ag, %_ZL18mi_try_new_handlerb.exit.us ]
  ret ptr %.3.i.i.i.i4
}

; Function Attrs: mustprogress nounwind uwtable
define noalias ptr @mi_malloc_aligned(i64 noundef %0, i64 noundef %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %1)
  %or.cond.not.i.i.i = icmp eq i64 %i.c, 1
  br i1 %or.cond.not.i.i.i, label %bb.b, label %mi_heap_malloc_aligned.exit, !prof !91

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %0, 1025
  %i.e = icmp ule i64 %1, %0
  %i.f = and i1 %i.d, %i.e
  br i1 %i.f, label %bb.c, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i, !prof !68

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw nsw i64 %0, 7
  %i.h = lshr i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.h
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !77   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !72   ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i, label %bb.d, !prof !61

bb.d:                                             ; preds = %bb.c
  %i.n = add nsw i64 %1, -1
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = and i64 %i.n, %i.o
  %.not36.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not36.i.i.i, label %bb.e, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i, !prof !68

bb.e:                                             ; preds = %bb.d
  %.val.i.i.i.i.i = load i64, ptr %i.m, align 8, !tbaa !65
  %i.q = inttoptr i64 %.val.i.i.i.i.i to ptr
  store ptr %i.q, ptr %i.l, align 8, !tbaa !72
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.s = load i16, ptr %i.r, align 8, !tbaa !66
  %i.t = add i16 %i.s, 1
  store i16 %i.t, ptr %i.r, align 8, !tbaa !66
  br label %mi_heap_malloc_aligned.exit

_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.u = tail call fastcc noundef ptr @_ZL38mi_heap_malloc_zero_aligned_at_genericP9mi_heap_smmmb(ptr noundef %i.b, i64 noundef %0, i64 noundef %1, i64 noundef 0, i1 noundef zeroext false) #55
  br label %mi_heap_malloc_aligned.exit

mi_heap_malloc_aligned.exit:                      ; preds = %bb.a, %bb.e, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i
  %.3.i.i.i = phi ptr [ null, %bb.a ], [ %i.u, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i ], [ %i.m, %bb.e ]
  ret ptr %.3.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define noalias ptr @mi_new_aligned_nothrow(i64 noundef %0, i64 noundef %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default) ; 2 uses
  %i.b = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %1)
  %or.cond.not.i.i.i.i = icmp eq i64 %i.b, 1
  %i.c = add nuw nsw i64 %0, 7
  %i.d = lshr i64 %i.c, 3
  %i.e = add nsw i64 %1, -1
  br i1 %or.cond.not.i.i.i.i, label %.split.us, label %_ZL18mi_try_new_handlerb.exit, !prof !91

.split.us:                                        ; preds = %bb.a
  %i.f = icmp ult i64 %0, 1025
  %i.g = icmp ule i64 %1, %0
  %i.h = and i1 %i.f, %i.g
  br i1 %i.h, label %_ZL18mi_try_new_handlerb.exit.us.us, label %_ZL18mi_try_new_handlerb.exit.us, !prof !68

_ZL18mi_try_new_handlerb.exit.us.us:              ; preds = %.split.us, %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 248
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.d
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !77   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !72   ; 4 uses
  %.not.i.i.i.i.us.us = icmp ne ptr %i.n, null
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = and i64 %i.e, %i.o
  %.not36.i.i.i.i.us.us = icmp eq i64 %i.p, 0
  %or.cond = select i1 %.not.i.i.i.i.us.us, i1 %.not36.i.i.i.i.us.us, i1 false, !prof !91
  br i1 %or.cond, label %mi_malloc_aligned.exit.thread7, label %mi_malloc_aligned.exit.us.us, !prof !91

mi_malloc_aligned.exit.us.us:                     ; preds = %_ZL18mi_try_new_handlerb.exit.us.us
  %i.q = tail call fastcc noundef ptr @_ZL38mi_heap_malloc_zero_aligned_at_genericP9mi_heap_smmmb(ptr noundef nonnull %i.i, i64 noundef %0, i64 noundef %1, i64 noundef 0, i1 noundef zeroext false) #55 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %mi_malloc_aligned.exit.thread.us.us, label %.critedge

mi_malloc_aligned.exit.thread.us.us:              ; preds = %mi_malloc_aligned.exit.us.us
  %i.s = tail call noundef ptr @_ZSt15get_new_handlerv() #55 ; 2 uses
  %.not.us.us = icmp eq ptr %i.s, null
  br i1 %.not.us.us, label %.split17.us, label %bb.b

bb.b:                                             ; preds = %mi_malloc_aligned.exit.thread.us.us
  invoke void %i.s()
          to label %_ZL18mi_try_new_handlerb.exit.us.us unwind label %.loopexit.split.us.split.us, !llvm.loop !255, !inline_history !6

.loopexit.split.us.split.us:                      ; preds = %bb.b
  %lpad.loopexit.us.us = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit

_ZL18mi_try_new_handlerb.exit.us:                 ; preds = %.split.us, %bb.c
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.u = tail call fastcc noundef ptr @_ZL38mi_heap_malloc_zero_aligned_at_genericP9mi_heap_smmmb(ptr noundef %i.t, i64 noundef %0, i64 noundef %1, i64 noundef 0, i1 noundef zeroext false) #55 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %mi_malloc_aligned.exit.thread.us, label %.critedge

mi_malloc_aligned.exit.thread.us:                 ; preds = %_ZL18mi_try_new_handlerb.exit.us
  %i.w = tail call noundef ptr @_ZSt15get_new_handlerv() #55 ; 2 uses
  %.not.us = icmp eq ptr %i.w, null
  br i1 %.not.us, label %.split17.us, label %bb.c

bb.c:                                             ; preds = %mi_malloc_aligned.exit.thread.us
  invoke void %i.w()
          to label %_ZL18mi_try_new_handlerb.exit.us unwind label %.loopexit.split.us.split, !llvm.loop !255, !inline_history !6

.loopexit.split.us.split:                         ; preds = %bb.c
  %lpad.loopexit.us = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit

_ZL18mi_try_new_handlerb.exit:                    ; preds = %bb.a, %bb.d
  %i.x = tail call noundef ptr @_ZSt15get_new_handlerv() #55 ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %.split17.us, label %bb.d

mi_malloc_aligned.exit.thread7:                   ; preds = %_ZL18mi_try_new_handlerb.exit.us.us
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.val.i.i.i.i.i.i = load i64, ptr %i.n, align 8, !tbaa !65
  %i.z = inttoptr i64 %.val.i.i.i.i.i.i to ptr
  store ptr %i.z, ptr %i.y, align 8, !tbaa !72
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 8, !tbaa !66
  %i.ac = add i16 %i.ab, 1
  store i16 %i.ac, ptr %i.aa, align 8, !tbaa !66
  br label %.critedge

.split17.us:                                      ; preds = %_ZL18mi_try_new_handlerb.exit, %mi_malloc_aligned.exit.thread.us, %mi_malloc_aligned.exit.thread.us.us
  invoke void (i32, ptr, ...) @_Z17_mi_error_messageiPKcz(i32 noundef 12, ptr noundef nonnull @.str.98)
          to label %.critedge unwind label %.loopexit.split-lp

bb.d:                                             ; preds = %_ZL18mi_try_new_handlerb.exit
  invoke void %i.x()
          to label %_ZL18mi_try_new_handlerb.exit unwind label %.loopexit.split, !llvm.loop !255, !inline_history !6

.critedge:                                        ; preds = %_ZL18mi_try_new_handlerb.exit.us, %mi_malloc_aligned.exit.us.us, %.split17.us, %mi_malloc_aligned.exit.thread7
  %.3.i.i.i.i5 = phi ptr [ null, %.split17.us ], [ %i.n, %mi_malloc_aligned.exit.thread7 ], [ %i.q, %mi_malloc_aligned.exit.us.us ], [ %i.u, %_ZL18mi_try_new_handlerb.exit.us ]
  ret ptr %.3.i.i.i.i5

.loopexit.split:                                  ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %.split17.us
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.split, %.loopexit.split.us.split.us, %.loopexit.split.us.split, %.loopexit.split-lp
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit.split ], [ %lpad.loopexit.us, %.loopexit.split.us.split ], [ %lpad.loopexit.us.us, %.loopexit.split.us.split.us ]
  %i.ad = extractvalue { ptr, i32 } %lpad.phi, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #56
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @mi_new_realloc(ptr noundef %0, i64 noundef %1) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default) ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.c = tail call noundef ptr @_Z21_mi_heap_realloc_zeroP9mi_heap_sPvmb(ptr noundef %i.b, ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #55 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %_ZL18mi_try_new_handlerb.exit
  %i.e = tail call noundef ptr @_ZSt15get_new_handlerv() #55 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %_ZL18mi_try_new_handlerb.exit

bb.b:                                             ; preds = %.lr.ph
  tail call void (i32, ptr, ...) @_Z17_mi_error_messageiPKcz(i32 noundef 12, ptr noundef nonnull @.str.98)
  %i.f = tail call ptr @__cxa_allocate_exception(i64 8) #55 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.f, align 8, !tbaa !89
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #58
  unreachable

_ZL18mi_try_new_handlerb.exit:                    ; preds = %.lr.ph
  tail call void %i.e(), !inline_history !6
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.h = tail call noundef ptr @_Z21_mi_heap_realloc_zeroP9mi_heap_sPvmb(ptr noundef %i.g, ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #55 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.lr.ph, label %.critedge, !llvm.loop !256

.critedge:                                        ; preds = %_ZL18mi_try_new_handlerb.exit, %bb.a
  %.lcssa = phi ptr [ %i.c, %bb.a ], [ %i.h, %_ZL18mi_try_new_handlerb.exit ]
  ret ptr %.lcssa
}

; Function Attrs: mustprogress uwtable
define noundef ptr @mi_new_reallocn(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq i64 %1, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0
  br i1 %i.b, label %_ZL22mi_count_size_overflowmmPm.exit, label %bb.c, !prof !61

_ZL22mi_count_size_overflowmmPm.exit:             ; preds = %bb.b
  tail call fastcc void @_ZL18mi_try_new_handlerb(i1 noundef zeroext false)
  br label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph = phi i64 [ %2, %bb.a ], [ %i.c, %bb.b ]
  %i.d = tail call ptr @mi_new_realloc(ptr noundef %0, i64 noundef %storemerge.i.ph)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZL22mi_count_size_overflowmmPm.exit
  %.0 = phi ptr [ null, %_ZL22mi_count_size_overflowmmPm.exit ], [ %i.d, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_Z20_mi_heap_malloc_zeroP9mi_heap_smb(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2) #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i64 %1, 1025
  br i1 %i.a, label %bb.b, label %bb.h, !prof !68

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 7
  %i.c = lshr i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.c
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !77   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !72   ; 8 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %bb.d, !prof !61

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef nonnull %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef 0) #55, !inline_history !74
  br label %_Z23_mi_heap_malloc_zero_exP9mi_heap_smbm.exit

bb.d:                                             ; preds = %bb.b
  %.val.i.i.i = load i64, ptr %i.h, align 8, !tbaa !65
  %i.k = inttoptr i64 %.val.i.i.i to ptr
  store ptr %i.k, ptr %i.g, align 8, !tbaa !72
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.m = load i16, ptr %i.l, align 8, !tbaa !66
  %i.n = add i16 %i.m, 1
  store i16 %i.n, ptr %i.l, align 8, !tbaa !66
  br i1 %2, label %bb.e, label %_Z23_mi_heap_malloc_zero_exP9mi_heap_smbm.exit, !prof !61

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 15
  %i.p = load i8, ptr %i.o, align 1
  %i.q = and i8 %i.p, 1
  %.not.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %i.h, align 8, !tbaa !65
  br label %_Z23_mi_heap_malloc_zero_exP9mi_heap_smbm.exit

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !62
  call void @llvm.assume(i1 true) [ "align"(ptr %i.h, i64 8) ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.h, i8 0, i64 %i.s, i1 false)
  br label %_Z23_mi_heap_malloc_zero_exP9mi_heap_smbm.exit

bb.h:                                             ; preds = %bb.a
  %i.t = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef 0) #55
  br label %_Z23_mi_heap_malloc_zero_exP9mi_heap_smbm.exit

_Z23_mi_heap_malloc_zero_exP9mi_heap_smbm.exit:   ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %.0.i = phi ptr [ %i.t, %bb.h ], [ %i.j, %bb.c ], [ %i.h, %bb.f ], [ %i.h, %bb.g ], [ %i.h, %bb.d ]
  ret ptr %.0.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_Z23_mi_heap_malloc_zero_exP9mi_heap_smbm(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef %3) #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i64 %1, 1025
  br i1 %i.a, label %bb.b, label %bb.h, !prof !68

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 7
  %i.c = lshr i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.c
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !77   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !72   ; 8 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %bb.d, !prof !61

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef nonnull %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef 0) #55, !inline_history !74
  br label %_ZL25mi_heap_malloc_small_zeroP9mi_heap_smb.exit

bb.d:                                             ; preds = %bb.b
  %.val.i.i = load i64, ptr %i.h, align 8, !tbaa !65
  %i.k = inttoptr i64 %.val.i.i to ptr
  store ptr %i.k, ptr %i.g, align 8, !tbaa !72
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.m = load i16, ptr %i.l, align 8, !tbaa !66
  %i.n = add i16 %i.m, 1
  store i16 %i.n, ptr %i.l, align 8, !tbaa !66
  br i1 %2, label %bb.e, label %_ZL25mi_heap_malloc_small_zeroP9mi_heap_smb.exit, !prof !61

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 15
  %i.p = load i8, ptr %i.o, align 1
  %i.q = and i8 %i.p, 1
  %.not.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %i.h, align 8, !tbaa !65
  br label %_ZL25mi_heap_malloc_small_zeroP9mi_heap_smb.exit

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !62
  call void @llvm.assume(i1 true) [ "align"(ptr %i.h, i64 8) ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.h, i8 0, i64 %i.s, i1 false)
  br label %_ZL25mi_heap_malloc_small_zeroP9mi_heap_smb.exit

bb.h:                                             ; preds = %bb.a
  %i.t = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef %3) #55
  br label %_ZL25mi_heap_malloc_small_zeroP9mi_heap_smb.exit

_ZL25mi_heap_malloc_small_zeroP9mi_heap_smb.exit: ; preds = %bb.g, %bb.f, %bb.d, %bb.c, %bb.h
  %.0 = phi ptr [ %i.t, %bb.h ], [ %i.j, %bb.c ], [ %i.h, %bb.f ], [ %i.h, %bb.g ], [ %i.h, %bb.d ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noalias ptr @mi_malloc_small(i64 noundef %0) #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %i.c = add i64 %0, 7
  %i.d = lshr i64 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.d
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !77   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !72   ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %bb.c, !prof !61

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef nonnull %i.b, i64 noundef %0, i1 noundef zeroext false, i64 noundef 0) #55, !inline_history !74
  br label %mi_heap_malloc_small.exit

bb.c:                                             ; preds = %bb.a
  %.val.i.i.i = load i64, ptr %i.i, align 8, !tbaa !65
  %i.l = inttoptr i64 %.val.i.i.i to ptr
  store ptr %i.l, ptr %i.h, align 8, !tbaa !72
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.n = load i16, ptr %i.m, align 8, !tbaa !66
  %i.o = add i16 %i.n, 1
  store i16 %i.o, ptr %i.m, align 8, !tbaa !66
  br label %mi_heap_malloc_small.exit

mi_heap_malloc_small.exit:                        ; preds = %bb.b, %bb.c
  %.0.i.i.i = phi ptr [ %i.k, %bb.b ], [ %i.i, %bb.c ]
  ret ptr %.0.i.i.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noalias ptr @mi_heap_malloc_small(ptr noundef %0, i64 noundef %1) #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 7
  %i.b = lshr i64 %i.a, 3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !77   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !72   ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %bb.c, !prof !61

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef nonnull %0, i64 noundef %1, i1 noundef zeroext false, i64 noundef 0) #55, !inline_history !74
  br label %_ZL25mi_heap_malloc_small_zeroP9mi_heap_smb.exit

bb.c:                                             ; preds = %bb.a
  %.val.i.i = load i64, ptr %i.g, align 8, !tbaa !65
  %i.j = inttoptr i64 %.val.i.i to ptr
  store ptr %i.j, ptr %i.f, align 8, !tbaa !72
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.l = load i16, ptr %i.k, align 8, !tbaa !66
  %i.m = add i16 %i.l, 1
  store i16 %i.m, ptr %i.k, align 8, !tbaa !66
  br label %_ZL25mi_heap_malloc_small_zeroP9mi_heap_smb.exit

_ZL25mi_heap_malloc_small_zeroP9mi_heap_smb.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.i, %bb.b ], [ %i.g, %bb.c ]
  ret ptr %.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define noalias ptr @mi_heap_malloc_aligned_at(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %2)
  %or.cond.not.i = icmp eq i64 %i.a, 1
  br i1 %or.cond.not.i, label %bb.b, label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit, !prof !91

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %1, 1025
  %i.c = icmp ule i64 %2, %1
  %i.d = and i1 %i.b, %i.c
  br i1 %i.d, label %bb.c, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i, !prof !68

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw nsw i64 %1, 7
  %i.f = lshr i64 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !77   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !72   ; 4 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i, label %bb.d, !prof !61

bb.d:                                             ; preds = %bb.c
  %i.l = add nsw i64 %2, -1
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = add i64 %3, %i.m
  %i.o = and i64 %i.n, %i.l
  %.not36.i = icmp eq i64 %i.o, 0
  br i1 %.not36.i, label %bb.e, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i, !prof !68

bb.e:                                             ; preds = %bb.d
  %.val.i.i.i = load i64, ptr %i.k, align 8, !tbaa !65
  %i.p = inttoptr i64 %.val.i.i.i to ptr
  store ptr %i.p, ptr %i.j, align 8, !tbaa !72
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.r = load i16, ptr %i.q, align 8, !tbaa !66
  %i.s = add i16 %i.r, 1
  store i16 %i.s, ptr %i.q, align 8, !tbaa !66
  br label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit

_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.t = tail call fastcc noundef ptr @_ZL38mi_heap_malloc_zero_aligned_at_genericP9mi_heap_smmmb(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext false) #55
  br label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit

_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit: ; preds = %bb.a, %bb.e, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i
  %.3.i = phi ptr [ null, %bb.a ], [ %i.t, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i ], [ %i.k, %bb.e ]
  ret ptr %.3.i
}

; Function Attrs: mustprogress nounwind uwtable
define noalias ptr @mi_heap_malloc_aligned(ptr noundef %0, i64 noundef %1, i64 noundef %2) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %2)
  %or.cond.not.i.i = icmp eq i64 %i.a, 1
  br i1 %or.cond.not.i.i, label %bb.b, label %mi_heap_malloc_aligned_at.exit, !prof !91

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %1, 1025
  %i.c = icmp ule i64 %2, %1
  %i.d = and i1 %i.b, %i.c
  br i1 %i.d, label %bb.c, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i, !prof !68

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw nsw i64 %1, 7
  %i.f = lshr i64 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !77   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !72   ; 4 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i, label %bb.d, !prof !61

bb.d:                                             ; preds = %bb.c
  %i.l = add nsw i64 %2, -1
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = and i64 %i.l, %i.m
  %.not36.i.i = icmp eq i64 %i.n, 0
  br i1 %.not36.i.i, label %bb.e, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i, !prof !68

bb.e:                                             ; preds = %bb.d
  %.val.i.i.i.i = load i64, ptr %i.k, align 8, !tbaa !65
  %i.o = inttoptr i64 %.val.i.i.i.i to ptr
  store ptr %i.o, ptr %i.j, align 8, !tbaa !72
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.q = load i16, ptr %i.p, align 8, !tbaa !66
  %i.r = add i16 %i.q, 1
  store i16 %i.r, ptr %i.p, align 8, !tbaa !66
  br label %mi_heap_malloc_aligned_at.exit

_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.s = tail call fastcc noundef ptr @_ZL38mi_heap_malloc_zero_aligned_at_genericP9mi_heap_smmmb(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef 0, i1 noundef zeroext false) #55
  br label %mi_heap_malloc_aligned_at.exit

mi_heap_malloc_aligned_at.exit:                   ; preds = %bb.a, %bb.e, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i
  %.3.i.i = phi ptr [ null, %bb.a ], [ %i.s, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i ], [ %i.k, %bb.e ]
  ret ptr %.3.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define noalias ptr @mi_heap_zalloc_aligned_at(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %2)
  %or.cond.not.i = icmp eq i64 %i.a, 1
  br i1 %or.cond.not.i, label %bb.b, label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit, !prof !91

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %1, 1025
  %i.c = icmp ule i64 %2, %1
  %i.d = and i1 %i.b, %i.c
  br i1 %i.d, label %bb.c, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i, !prof !68

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw nsw i64 %1, 7
  %i.f = lshr i64 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !77   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !72   ; 8 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i, label %bb.d, !prof !61

bb.d:                                             ; preds = %bb.c
  %i.l = add nsw i64 %2, -1
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = add i64 %3, %i.m
  %i.o = and i64 %i.n, %i.l
  %.not36.i = icmp eq i64 %i.o, 0
  br i1 %.not36.i, label %bb.e, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i, !prof !68

bb.e:                                             ; preds = %bb.d
  %.val.i.i.i = load i64, ptr %i.k, align 8, !tbaa !65
  %i.p = inttoptr i64 %.val.i.i.i to ptr
  store ptr %i.p, ptr %i.j, align 8, !tbaa !72
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.r = load i16, ptr %i.q, align 8, !tbaa !66
  %i.s = add i16 %i.r, 1
  store i16 %i.s, ptr %i.q, align 8, !tbaa !66
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 15
  %i.u = load i8, ptr %i.t, align 1
  %i.v = and i8 %i.u, 1
  %.not.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %i.k, align 8, !tbaa !65
  br label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit

bb.g:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !62
  call void @llvm.assume(i1 true) [ "align"(ptr %i.k, i64 8) ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.x, i1 false)
  br label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit

_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.y = tail call fastcc noundef ptr @_ZL38mi_heap_malloc_zero_aligned_at_genericP9mi_heap_smmmb(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext true) #55
  br label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit

_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit: ; preds = %bb.a, %bb.f, %bb.g, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i
  %.3.i = phi ptr [ null, %bb.a ], [ %i.y, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i ], [ %i.k, %bb.f ], [ %i.k, %bb.g ]
  ret ptr %.3.i
}

; Function Attrs: mustprogress nounwind uwtable
define noalias ptr @mi_heap_zalloc_aligned(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %2)
  %or.cond.not.i.i = icmp eq i64 %i.a, 1
  br i1 %or.cond.not.i.i, label %bb.b, label %mi_heap_zalloc_aligned_at.exit, !prof !91

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %1, 1025
  %i.c = icmp ule i64 %2, %1
  %i.d = and i1 %i.b, %i.c
  br i1 %i.d, label %bb.c, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i, !prof !68

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw nsw i64 %1, 7
  %i.f = lshr i64 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !77   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !72   ; 8 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i, label %bb.d, !prof !61

bb.d:                                             ; preds = %bb.c
  %i.l = add nsw i64 %2, -1
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = and i64 %i.l, %i.m
  %.not36.i.i = icmp eq i64 %i.n, 0
  br i1 %.not36.i.i, label %bb.e, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i, !prof !68

bb.e:                                             ; preds = %bb.d
  %.val.i.i.i.i = load i64, ptr %i.k, align 8, !tbaa !65
  %i.o = inttoptr i64 %.val.i.i.i.i to ptr
  store ptr %i.o, ptr %i.j, align 8, !tbaa !72
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.q = load i16, ptr %i.p, align 8, !tbaa !66
  %i.r = add i16 %i.q, 1
  store i16 %i.r, ptr %i.p, align 8, !tbaa !66
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 15
  %i.t = load i8, ptr %i.s, align 1
  %i.u = and i8 %i.t, 1
  %.not.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %i.k, align 8, !tbaa !65
  br label %mi_heap_zalloc_aligned_at.exit

bb.g:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.w = load i64, ptr %i.v, align 8, !tbaa !62
  call void @llvm.assume(i1 true) [ "align"(ptr %i.k, i64 8) ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.w, i1 false)
  br label %mi_heap_zalloc_aligned_at.exit

_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.x = tail call fastcc noundef ptr @_ZL38mi_heap_malloc_zero_aligned_at_genericP9mi_heap_smmmb(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef 0, i1 noundef zeroext true) #55
  br label %mi_heap_zalloc_aligned_at.exit

mi_heap_zalloc_aligned_at.exit:                   ; preds = %bb.a, %bb.f, %bb.g, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i
  %.3.i.i = phi ptr [ null, %bb.a ], [ %i.x, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i ], [ %i.k, %bb.f ], [ %i.k, %bb.g ]
  ret ptr %.3.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define noalias ptr @mi_heap_calloc_aligned_at(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0
  br i1 %i.b, label %_ZL22mi_count_size_overflowmmPm.exit, label %bb.c, !prof !61

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph = phi i64 [ %2, %bb.a ], [ %i.c, %bb.b ] ; 4 uses
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %3)
  %or.cond.not.i.i = icmp eq i64 %i.d, 1
  br i1 %or.cond.not.i.i, label %bb.d, label %_ZL22mi_count_size_overflowmmPm.exit, !prof !91

bb.d:                                             ; preds = %bb.c
  %i.e = icmp ult i64 %storemerge.i.ph, 1025
  %i.f = icmp ule i64 %3, %storemerge.i.ph
  %i.g = and i1 %i.e, %i.f
  br i1 %i.g, label %bb.e, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i, !prof !68

bb.e:                                             ; preds = %bb.d
  %i.h = add nuw nsw i64 %storemerge.i.ph, 7
  %i.i = lshr i64 %i.h, 3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !77   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !72   ; 8 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i, label %bb.f, !prof !61

bb.f:                                             ; preds = %bb.e
  %i.o = add nsw i64 %3, -1
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = add i64 %4, %i.p
  %i.r = and i64 %i.q, %i.o
  %.not36.i.i = icmp eq i64 %i.r, 0
  br i1 %.not36.i.i, label %bb.g, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i, !prof !68

bb.g:                                             ; preds = %bb.f
  %.val.i.i.i.i = load i64, ptr %i.n, align 8, !tbaa !65
  %i.s = inttoptr i64 %.val.i.i.i.i to ptr
  store ptr %i.s, ptr %i.m, align 8, !tbaa !72
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.u = load i16, ptr %i.t, align 8, !tbaa !66
  %i.v = add i16 %i.u, 1
  store i16 %i.v, ptr %i.t, align 8, !tbaa !66
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 15
  %i.x = load i8, ptr %i.w, align 1
  %i.y = and i8 %i.x, 1
  %.not.i.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 0, ptr %i.n, align 8, !tbaa !65
  br label %_ZL22mi_count_size_overflowmmPm.exit

bb.i:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !62
  call void @llvm.assume(i1 true) [ "align"(ptr %i.n, i64 8) ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.n, i8 0, i64 %i.aa, i1 false)
  br label %_ZL22mi_count_size_overflowmmPm.exit

_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.ab = tail call fastcc noundef ptr @_ZL38mi_heap_malloc_zero_aligned_at_genericP9mi_heap_smmmb(ptr noundef %0, i64 noundef %storemerge.i.ph, i64 noundef %3, i64 noundef %4, i1 noundef zeroext true) #55
  br label %_ZL22mi_count_size_overflowmmPm.exit

_ZL22mi_count_size_overflowmmPm.exit:             ; preds = %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i, %bb.i, %bb.h, %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.ab, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i ], [ %i.n, %bb.h ], [ %i.n, %bb.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define noalias ptr @mi_heap_calloc_aligned(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq i64 %1, 1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0
  br i1 %i.b, label %mi_heap_calloc_aligned_at.exit, label %bb.c, !prof !61

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph.i = phi i64 [ %2, %bb.a ], [ %i.c, %bb.b ] ; 4 uses
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %3)
  %or.cond.not.i.i.i = icmp eq i64 %i.d, 1
  br i1 %or.cond.not.i.i.i, label %bb.d, label %mi_heap_calloc_aligned_at.exit, !prof !91

bb.d:                                             ; preds = %bb.c
  %i.e = icmp ult i64 %storemerge.i.ph.i, 1025
  %i.f = icmp ule i64 %3, %storemerge.i.ph.i
  %i.g = and i1 %i.e, %i.f
  br i1 %i.g, label %bb.e, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i, !prof !68

bb.e:                                             ; preds = %bb.d
  %i.h = add nuw nsw i64 %storemerge.i.ph.i, 7
  %i.i = lshr i64 %i.h, 3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !77   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !72   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i, label %bb.f, !prof !61

bb.f:                                             ; preds = %bb.e
  %i.o = add nsw i64 %3, -1
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = and i64 %i.o, %i.p
  %.not36.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not36.i.i.i, label %bb.g, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i, !prof !68

bb.g:                                             ; preds = %bb.f
  %.val.i.i.i.i.i = load i64, ptr %i.n, align 8, !tbaa !65
  %i.r = inttoptr i64 %.val.i.i.i.i.i to ptr
  store ptr %i.r, ptr %i.m, align 8, !tbaa !72
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.t = load i16, ptr %i.s, align 8, !tbaa !66
  %i.u = add i16 %i.t, 1
  store i16 %i.u, ptr %i.s, align 8, !tbaa !66
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 15
  %i.w = load i8, ptr %i.v, align 1
  %i.x = and i8 %i.w, 1
  %.not.i.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 0, ptr %i.n, align 8, !tbaa !65
  br label %mi_heap_calloc_aligned_at.exit

bb.i:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !62
  call void @llvm.assume(i1 true) [ "align"(ptr %i.n, i64 8) ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.n, i8 0, i64 %i.z, i1 false)
  br label %mi_heap_calloc_aligned_at.exit

_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.aa = tail call fastcc noundef ptr @_ZL38mi_heap_malloc_zero_aligned_at_genericP9mi_heap_smmmb(ptr noundef %0, i64 noundef %storemerge.i.ph.i, i64 noundef %3, i64 noundef 0, i1 noundef zeroext true) #55
  br label %mi_heap_calloc_aligned_at.exit

mi_heap_calloc_aligned_at.exit:                   ; preds = %bb.b, %bb.c, %bb.h, %bb.i, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i
  %.0.i = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.aa, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i ], [ %i.n, %bb.h ], [ %i.n, %bb.i ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define noalias ptr @mi_malloc_aligned_at(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %1)
  %or.cond.not.i.i = icmp eq i64 %i.c, 1
  br i1 %or.cond.not.i.i, label %bb.b, label %mi_heap_malloc_aligned_at.exit, !prof !91

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %0, 1025
  %i.e = icmp ule i64 %1, %0
  %i.f = and i1 %i.d, %i.e
  br i1 %i.f, label %bb.c, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i, !prof !68

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw nsw i64 %0, 7
  %i.h = lshr i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.h
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !77   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !72   ; 4 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i, label %bb.d, !prof !61

bb.d:                                             ; preds = %bb.c
  %i.n = add nsw i64 %1, -1
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = add i64 %2, %i.o
  %i.q = and i64 %i.p, %i.n
  %.not36.i.i = icmp eq i64 %i.q, 0
  br i1 %.not36.i.i, label %bb.e, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i, !prof !68

bb.e:                                             ; preds = %bb.d
  %.val.i.i.i.i = load i64, ptr %i.m, align 8, !tbaa !65
  %i.r = inttoptr i64 %.val.i.i.i.i to ptr
  store ptr %i.r, ptr %i.l, align 8, !tbaa !72
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.t = load i16, ptr %i.s, align 8, !tbaa !66
  %i.u = add i16 %i.t, 1
  store i16 %i.u, ptr %i.s, align 8, !tbaa !66
  br label %mi_heap_malloc_aligned_at.exit

_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.v = tail call fastcc noundef ptr @_ZL38mi_heap_malloc_zero_aligned_at_genericP9mi_heap_smmmb(ptr noundef %i.b, i64 noundef %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext false) #55
  br label %mi_heap_malloc_aligned_at.exit

mi_heap_malloc_aligned_at.exit:                   ; preds = %bb.a, %bb.e, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i
  %.3.i.i = phi ptr [ null, %bb.a ], [ %i.v, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i ], [ %i.m, %bb.e ]
  ret ptr %.3.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define noalias ptr @mi_zalloc_aligned_at(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %1)
  %or.cond.not.i.i = icmp eq i64 %i.c, 1
  br i1 %or.cond.not.i.i, label %bb.b, label %mi_heap_zalloc_aligned_at.exit, !prof !91

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %0, 1025
  %i.e = icmp ule i64 %1, %0
  %i.f = and i1 %i.d, %i.e
  br i1 %i.f, label %bb.c, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i, !prof !68

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw nsw i64 %0, 7
  %i.h = lshr i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.h
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !77   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !72   ; 8 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i, label %bb.d, !prof !61

bb.d:                                             ; preds = %bb.c
  %i.n = add nsw i64 %1, -1
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = add i64 %2, %i.o
  %i.q = and i64 %i.p, %i.n
  %.not36.i.i = icmp eq i64 %i.q, 0
  br i1 %.not36.i.i, label %bb.e, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i, !prof !68

bb.e:                                             ; preds = %bb.d
  %.val.i.i.i.i = load i64, ptr %i.m, align 8, !tbaa !65
  %i.r = inttoptr i64 %.val.i.i.i.i to ptr
  store ptr %i.r, ptr %i.l, align 8, !tbaa !72
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.t = load i16, ptr %i.s, align 8, !tbaa !66
  %i.u = add i16 %i.t, 1
  store i16 %i.u, ptr %i.s, align 8, !tbaa !66
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 15
  %i.w = load i8, ptr %i.v, align 1
  %i.x = and i8 %i.w, 1
  %.not.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %i.m, align 8, !tbaa !65
  br label %mi_heap_zalloc_aligned_at.exit

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !62
  call void @llvm.assume(i1 true) [ "align"(ptr %i.m, i64 8) ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.m, i8 0, i64 %i.z, i1 false)
  br label %mi_heap_zalloc_aligned_at.exit

_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.aa = tail call fastcc noundef ptr @_ZL38mi_heap_malloc_zero_aligned_at_genericP9mi_heap_smmmb(ptr noundef %i.b, i64 noundef %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext true) #55
  br label %mi_heap_zalloc_aligned_at.exit

mi_heap_zalloc_aligned_at.exit:                   ; preds = %bb.a, %bb.f, %bb.g, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i
  %.3.i.i = phi ptr [ null, %bb.a ], [ %i.aa, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i ], [ %i.m, %bb.f ], [ %i.m, %bb.g ]
  ret ptr %.3.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define noalias ptr @mi_zalloc_aligned(i64 noundef %0, i64 noundef %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %1)
  %or.cond.not.i.i.i = icmp eq i64 %i.c, 1
  br i1 %or.cond.not.i.i.i, label %bb.b, label %mi_heap_zalloc_aligned.exit, !prof !91

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %0, 1025
  %i.e = icmp ule i64 %1, %0
  %i.f = and i1 %i.d, %i.e
  br i1 %i.f, label %bb.c, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i, !prof !68

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw nsw i64 %0, 7
  %i.h = lshr i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.h
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !77   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !72   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i, label %bb.d, !prof !61

bb.d:                                             ; preds = %bb.c
  %i.n = add nsw i64 %1, -1
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = and i64 %i.n, %i.o
  %.not36.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not36.i.i.i, label %bb.e, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i, !prof !68

bb.e:                                             ; preds = %bb.d
  %.val.i.i.i.i.i = load i64, ptr %i.m, align 8, !tbaa !65
  %i.q = inttoptr i64 %.val.i.i.i.i.i to ptr
  store ptr %i.q, ptr %i.l, align 8, !tbaa !72
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.s = load i16, ptr %i.r, align 8, !tbaa !66
  %i.t = add i16 %i.s, 1
  store i16 %i.t, ptr %i.r, align 8, !tbaa !66
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 15
  %i.v = load i8, ptr %i.u, align 1
  %i.w = and i8 %i.v, 1
  %.not.i.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %i.m, align 8, !tbaa !65
  br label %mi_heap_zalloc_aligned.exit

bb.g:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !62
  call void @llvm.assume(i1 true) [ "align"(ptr %i.m, i64 8) ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.m, i8 0, i64 %i.y, i1 false)
  br label %mi_heap_zalloc_aligned.exit

_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.z = tail call fastcc noundef ptr @_ZL38mi_heap_malloc_zero_aligned_at_genericP9mi_heap_smmmb(ptr noundef %i.b, i64 noundef %0, i64 noundef %1, i64 noundef 0, i1 noundef zeroext true) #55
  br label %mi_heap_zalloc_aligned.exit

mi_heap_zalloc_aligned.exit:                      ; preds = %bb.a, %bb.f, %bb.g, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i
  %.3.i.i.i = phi ptr [ null, %bb.a ], [ %i.z, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i ], [ %i.m, %bb.f ], [ %i.m, %bb.g ]
  ret ptr %.3.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define noalias ptr @mi_calloc_aligned_at(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %.not.i = icmp eq i64 %0, 1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  %i.e = extractvalue { i64, i1 } %i.c, 0
  br i1 %i.d, label %mi_heap_calloc_aligned_at.exit, label %bb.c, !prof !61

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph.i = phi i64 [ %1, %bb.a ], [ %i.e, %bb.b ] ; 4 uses
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %2)
  %or.cond.not.i.i.i = icmp eq i64 %i.f, 1
  br i1 %or.cond.not.i.i.i, label %bb.d, label %mi_heap_calloc_aligned_at.exit, !prof !91

bb.d:                                             ; preds = %bb.c
  %i.g = icmp ult i64 %storemerge.i.ph.i, 1025
  %i.h = icmp ule i64 %2, %storemerge.i.ph.i
  %i.i = and i1 %i.g, %i.h
  br i1 %i.i, label %bb.e, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i, !prof !68

bb.e:                                             ; preds = %bb.d
  %i.j = add nuw nsw i64 %storemerge.i.ph.i, 7
  %i.k = lshr i64 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !77   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !72   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i, label %bb.f, !prof !61

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i64 %2, -1
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = add i64 %3, %i.r
  %i.t = and i64 %i.s, %i.q
  %.not36.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not36.i.i.i, label %bb.g, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i, !prof !68

bb.g:                                             ; preds = %bb.f
  %.val.i.i.i.i.i = load i64, ptr %i.p, align 8, !tbaa !65
  %i.u = inttoptr i64 %.val.i.i.i.i.i to ptr
  store ptr %i.u, ptr %i.o, align 8, !tbaa !72
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  %i.w = load i16, ptr %i.v, align 8, !tbaa !66
  %i.x = add i16 %i.w, 1
  store i16 %i.x, ptr %i.v, align 8, !tbaa !66
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 15
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = and i8 %i.z, 1
  %.not.i.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 0, ptr %i.p, align 8, !tbaa !65
  br label %mi_heap_calloc_aligned_at.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !62
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %.not.i.i = icmp eq i64 %0, 1
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  %i.e = extractvalue { i64, i1 } %i.c, 0
  br i1 %i.d, label %mi_heap_calloc_aligned.exit, label %bb.c, !prof !61

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph.i.i = phi i64 [ %1, %bb.a ], [ %i.e, %bb.b ] ; 4 uses
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %2)
  %or.cond.not.i.i.i.i = icmp eq i64 %i.f, 1
  br i1 %or.cond.not.i.i.i.i, label %bb.d, label %mi_heap_calloc_aligned.exit, !prof !91

bb.d:                                             ; preds = %bb.c
  %i.g = icmp ult i64 %storemerge.i.ph.i.i, 1025
  %i.h = icmp ule i64 %2, %storemerge.i.ph.i.i
  %i.i = and i1 %i.g, %i.h
  br i1 %i.i, label %bb.e, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i.i, !prof !68

bb.e:                                             ; preds = %bb.d
  %i.j = add nuw nsw i64 %storemerge.i.ph.i.i, 7
  %i.k = lshr i64 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !77   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !72   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i.i, label %bb.f, !prof !61

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i64 %2, -1
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = and i64 %i.q, %i.r
  %.not36.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not36.i.i.i.i, label %bb.g, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i.i, !prof !68

bb.g:                                             ; preds = %bb.f
  %.val.i.i.i.i.i.i = load i64, ptr %i.p, align 8, !tbaa !65
  %i.t = inttoptr i64 %.val.i.i.i.i.i.i to ptr
  store ptr %i.t, ptr %i.o, align 8, !tbaa !72
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  %i.v = load i16, ptr %i.u, align 8, !tbaa !66
  %i.w = add i16 %i.v, 1
  store i16 %i.w, ptr %i.u, align 8, !tbaa !66
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 15
  %i.y = load i8, ptr %i.x, align 1
  %i.z = and i8 %i.y, 1
  %.not.i.i.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 0, ptr %i.p, align 8, !tbaa !65
  br label %mi_heap_calloc_aligned.exit

bb.i:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !62
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
  br i1 %or.cond.not.i, label %bb.e, label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit, !prof !91

bb.e:                                             ; preds = %bb.d
  %i.e = icmp ult i64 %2, 1025
  %i.f = icmp ule i64 %3, %2
  %i.g = and i1 %i.e, %i.f
  br i1 %i.g, label %bb.f, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i, !prof !68

bb.f:                                             ; preds = %bb.e
  %i.h = add nuw nsw i64 %2, 7
  %i.i = lshr i64 %i.h, 3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !77   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !72   ; 9 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i, label %bb.g, !prof !61

bb.g:                                             ; preds = %bb.f
  %i.o = add nsw i64 %3, -1
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = add i64 %4, %i.p
  %i.r = and i64 %i.q, %i.o
  %.not36.i = icmp eq i64 %i.r, 0
  br i1 %.not36.i, label %bb.h, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i, !prof !68

bb.h:                                             ; preds = %bb.g
  %.val.i.i.i = load i64, ptr %i.n, align 8, !tbaa !65
  %i.s = inttoptr i64 %.val.i.i.i to ptr
  store ptr %i.s, ptr %i.m, align 8, !tbaa !72
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.u = load i16, ptr %i.t, align 8, !tbaa !66
  %i.v = add i16 %i.u, 1
  store i16 %i.v, ptr %i.t, align 8, !tbaa !66
  br i1 %5, label %bb.i, label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 15
  %i.x = load i8, ptr %i.w, align 1
  %i.y = and i8 %i.x, 1
  %.not.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 0, ptr %i.n, align 8, !tbaa !65
  br label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit

bb.k:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !62
  call void @llvm.assume(i1 true) [ "align"(ptr %i.n, i64 8) ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.n, i8 0, i64 %i.aa, i1 false)
  br label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit

_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.ab = tail call fastcc noundef ptr @_ZL38mi_heap_malloc_zero_aligned_at_genericP9mi_heap_smmmb(ptr noundef %0, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5) #55
  br label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit

bb.l:                                             ; preds = %bb.c
  %i.ac = ptrtoint ptr %1 to i64                  ; 4 uses
  %i.ad = add i64 %i.ac, -1                       ; 2 uses
  %i.ae = and i64 %i.ad, -33554432                ; 5 uses
  %i.af = icmp slt i64 %i.ad, 33554432
  %i.ag = icmp eq i64 %i.ae, 0
  %i.ah = or i1 %i.af, %i.ag                      ; 2 uses
  br i1 %i.ah, label %mi_usable_size.exit, label %bb.m, !prof !61

bb.m:                                             ; preds = %bb.l
  %i.ai = inttoptr i64 %i.ae to ptr
  %i.aj = sub i64 %i.ac, %i.ae
  %i.ak = lshr i64 %i.aj, 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 288
  %i.am = getelementptr inbounds nuw [96 x i8], ptr %i.al, i64 %i.ak ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !67
  %i.ap = zext i32 %i.ao to i64
  %i.aq = sub nsw i64 0, %i.ap
  %i.ar = getelementptr inbounds i8, ptr %i.am, i64 %i.aq ; 3 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 14
  %.val.i.i = load i8, ptr %i.as, align 2
  %i.at = and i8 %.val.i.i, 2
  %.not.i.i = icmp eq i8 %i.at, 0
  br i1 %.not.i.i, label %bb.n, label %bb.o, !prof !68

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr i8, ptr %i.ar, i64 40
  %.val12.i.i = load i64, ptr %i.au, align 8, !tbaa !62
  br label %mi_usable_size.exit

bb.o:                                             ; preds = %bb.m
  %i.av = tail call fastcc noundef i64 @_ZL30mi_page_usable_aligned_size_ofPK9mi_page_sPKv(ptr noundef nonnull %i.ar, ptr noundef nonnull %1) #55
  br label %mi_usable_size.exit

mi_usable_size.exit:                              ; preds = %bb.l, %bb.n, %bb.o
  %.1.i.i = phi i64 [ 0, %bb.l ], [ %i.av, %bb.o ], [ %.val12.i.i, %bb.n ] ; 5 uses
  %.not = icmp ugt i64 %2, %.1.i.i                ; 2 uses
  br i1 %.not, label %bb.r, label %bb.p

bb.p:                                             ; preds = %mi_usable_size.exit
  %i.aw = lshr i64 %.1.i.i, 1
  %i.ax = sub nuw i64 %.1.i.i, %i.aw
  %.not50 = icmp ult i64 %2, %i.ax
  br i1 %.not50, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = add i64 %4, %i.ac
  %i.az = urem i64 %i.ay, %3
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %mi_usable_size.exit
  %i.bb = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %3)
  %or.cond.not.i.i = icmp eq i64 %i.bb, 1
  br i1 %or.cond.not.i.i, label %bb.s, label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit, !prof !91

bb.s:                                             ; preds = %bb.r
  %i.bc = icmp ult i64 %2, 1025
  %i.bd = icmp ule i64 %3, %2
  %i.be = and i1 %i.bc, %i.bd
  br i1 %i.be, label %bb.t, label %mi_heap_malloc_aligned_at.exit, !prof !68

bb.t:                                             ; preds = %bb.s
  %i.bf = add nuw nsw i64 %2, 7
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bg
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !77 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !72 ; 4 uses
  %.not.i.i52 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i52, label %mi_heap_malloc_aligned_at.exit, label %bb.u, !prof !61

bb.u:                                             ; preds = %bb.t
  %i.bm = add nsw i64 %3, -1
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = add i64 %4, %i.bn
  %i.bp = and i64 %i.bo, %i.bm
  %.not36.i.i = icmp eq i64 %i.bp, 0
  br i1 %.not36.i.i, label %mi_heap_malloc_aligned_at.exit.thread55, label %mi_heap_malloc_aligned_at.exit, !prof !68

mi_heap_malloc_aligned_at.exit.thread55:          ; preds = %bb.u
  %.val.i.i.i.i = load i64, ptr %i.bl, align 8, !tbaa !65
  %i.bq = inttoptr i64 %.val.i.i.i.i to ptr
  store ptr %i.bq, ptr %i.bk, align 8, !tbaa !72
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 32 ; 2 uses
  %i.bs = load i16, ptr %i.br, align 8, !tbaa !66
  %i.bt = add i16 %i.bs, 1
  store i16 %i.bt, ptr %i.br, align 8, !tbaa !66
  br label %bb.v

mi_heap_malloc_aligned_at.exit:                   ; preds = %bb.s, %bb.t, %bb.u
  %i.bu = tail call fastcc noundef ptr @_ZL38mi_heap_malloc_zero_aligned_at_genericP9mi_heap_smmmb(ptr noundef %0, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext false) #55 ; 2 uses
  %.not51 = icmp eq ptr %i.bu, null
  br i1 %.not51, label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit, label %bb.v

bb.v:                                             ; preds = %mi_heap_malloc_aligned_at.exit.thread55, %mi_heap_malloc_aligned_at.exit
  %.3.i.i58 = phi ptr [ %i.bl, %mi_heap_malloc_aligned_at.exit.thread55 ], [ %i.bu, %mi_heap_malloc_aligned_at.exit ] ; 8 uses
  %or.cond = and i1 %5, %.not
  br i1 %or.cond, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bv = tail call i64 @llvm.usub.sat.i64(i64 %.1.i.i, i64 8) ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.3.i.i58, i64 %i.bv
  %i.bx = sub nuw i64 %2, %i.bv
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bw, i8 0, i64 %i.bx, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.by = tail call i64 @llvm.umin.i64(i64 %2, i64 %.1.i.i)
  call void @llvm.assume(i1 true) [ "align"(ptr %.3.i.i58, i64 8) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %1, i64 8) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.3.i.i58, ptr nonnull readonly align 8 %1, i64 %i.by, i1 false)
  %i.bz = inttoptr i64 %i.ae to ptr               ; 3 uses
  br i1 %i.ah, label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit, label %bb.y, !prof !61

bb.y:                                             ; preds = %bb.x
  %i.ca = tail call ptr @llvm.thread.pointer.p0()
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 280
  %i.cd = load atomic i64, ptr %i.cc monotonic, align 8
  %i.ce = sub i64 %i.ac, %i.ae
  %i.cf = lshr i64 %i.ce, 16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 288
  %i.ch = getelementptr inbounds nuw [96 x i8], ptr %i.cg, i64 %i.cf ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !67
  %i.ck = zext i32 %i.cj to i64
  %i.cl = sub nsw i64 0, %i.ck
  %i.cm = getelementptr inbounds i8, ptr %i.ch, i64 %i.cl ; 6 uses
  %i.cn = icmp eq i64 %i.cd, %i.cb
  br i1 %i.cn, label %bb.z, label %bb.ad, !prof !68

bb.z:                                             ; preds = %bb.y
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 14
  %i.cp = load i8, ptr %i.co, align 2, !tbaa !69
  %i.cq = icmp eq i8 %i.cp, 0
  br i1 %i.cq, label %bb.aa, label %bb.ac, !prof !68

bb.aa:                                            ; preds = %bb.z
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 24 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !63
  %i.ct = ptrtoint ptr %i.cs to i64
  store i64 %i.ct, ptr %1, align 8, !tbaa !65
  store ptr %1, ptr %i.cr, align 8, !tbaa !63
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cm, i64 32 ; 2 uses
  %i.cv = load i16, ptr %i.cu, align 8, !tbaa !66
  %i.cw = add i16 %i.cv, -1                       ; 2 uses
  store i16 %i.cw, ptr %i.cu, align 8, !tbaa !66
  %i.cx = icmp eq i16 %i.cw, 0
  br i1 %i.cx, label %bb.ab, label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit, !prof !61

bb.ab:                                            ; preds = %bb.aa
  tail call void @_Z15_mi_page_retireP9mi_page_s(ptr noundef nonnull %i.cm) #55, !inline_history !73
  br label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit

bb.ac:                                            ; preds = %bb.z
  tail call fastcc void @_ZL21mi_free_generic_localP9mi_page_sP12mi_segment_sPv(ptr noundef nonnull %i.cm, ptr noundef nonnull %1) #55, !inline_history !73
  br label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit

bb.ad:                                            ; preds = %bb.y
  tail call fastcc void @_ZL18mi_free_generic_mtP9mi_page_sP12mi_segment_sPv(ptr noundef nonnull %i.cm, ptr noundef nonnull %i.bz, ptr noundef nonnull %1) #57, !inline_history !73
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
  br i1 %i.b, label %_ZL22mi_count_size_overflowmmPm.exit, label %bb.c, !prof !61

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
  br i1 %i.b, label %_ZL22mi_count_size_overflowmmPm.exit, label %bb.c, !prof !61

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
end_hunk_0
begin_hunk_1_@mi_malloc_good_size:bb.a
_ZL6mi_binm.exit.i:                               ; preds = %bb.d, %bb.c
  %.0.i.i = phi i64 [ %i.g, %bb.c ], [ %i.n, %bb.d ]
  %i.o = getelementptr inbounds nuw [24 x i8], ptr getelementptr inbounds nuw (i8, ptr @_mi_heap_empty, i64 1280), i64 %.0.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !93
  br label %mi_good_size.exit

bb.e:                                             ; preds = %bb.a
  %i.r = load i64, ptr @_ZL16mi_os_mem_config, align 8, !tbaa !95 ; 4 uses
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
  br i1 %i.d, label %bb.c, label %bb.d, !prof !68

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
  %i.q = load i64, ptr %i.p, align 8, !tbaa !93
  br label %_ZL12_mi_align_upmm.exit

bb.e:                                             ; preds = %bb.a
  %i.r = load i64, ptr @_ZL16mi_os_mem_config, align 8, !tbaa !95 ; 4 uses
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
  %i.h = load i64, ptr %i.g, align 8, !tbaa !87
  %i.i = shl i64 %i.h, 25
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  %i.k = icmp ugt ptr %i.j, %0
  br i1 %i.k, label %_ZL19mi_is_valid_pointerPKv.exit, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.c, %bb.b, %.lr.ph.i.i
  %i.l = add nuw i64 %.01323.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.l, %i.a
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !5

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
  %i.v = udiv i64 %i.t, 2164663517184
  %i.w = urem i64 %i.t, 2164663517184             ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr @_ZL14mi_segment_map, i64 %i.v
  %i.y = load atomic ptr, ptr %i.x monotonic, align 8 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZL19mi_is_valid_pointerPKv.exit, label %bb.f, !prof !61

bb.f:                                             ; preds = %bb.e
  %i.aa = lshr exact i64 %i.w, 25
  %i.ab = lshr i64 %i.w, 31
  %i.ac = and i64 %i.aa, 63
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ab
  %i.af = load atomic i64, ptr %i.ae monotonic, align 8
  %i.ag = shl nuw i64 1, %i.ac
  %i.ah = and i64 %i.af, %i.ag
  %.not.i2.i = icmp ne i64 %i.ah, 0
  %i.ai = icmp ne ptr %i.s, null
  %i.aj = and i1 %i.ai, %.not.i2.i
  br label %_ZL19mi_is_valid_pointerPKv.exit

_ZL19mi_is_valid_pointerPKv.exit:                 ; preds = %bb.c, %bb.f, %bb.e, %bb.d, %.loopexit.i
  %i.ak = phi i1 [ false, %bb.d ], [ false, %.loopexit.i ], [ %i.aj, %bb.f ], [ false, %bb.e ], [ true, %bb.c ]
  ret i1 %i.ak
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 23) i32 @mi_posix_memalign(ptr nofree noundef writeonly captures(address_is_null) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = and i64 %1, 7
  %.not = icmp eq i64 %i.b, 0
  %or.cond13.not21.not25 = and i1 %i.a, %.not
  %i.c = icmp ne i64 %1, 0
  %or.cond14.not23 = and i1 %i.c, %or.cond13.not21.not25
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %1)
  %i.e = icmp samesign ult i64 %i.d, 2
  %or.cond19 = select i1 %or.cond14.not23, i1 %i.e, i1 false
  br i1 %or.cond19, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !76   ; 2 uses
  %i.h = icmp ult i64 %2, 1025
  %i.i = icmp ule i64 %1, %2
  %i.j = and i1 %i.h, %i.i
  br i1 %i.j, label %bb.c, label %mi_malloc_aligned.exit, !prof !68

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw nsw i64 %2, 7
  %i.l = lshr i64 %i.k, 3
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 248
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !77   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !72   ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %mi_malloc_aligned.exit, label %bb.d, !prof !61

bb.d:                                             ; preds = %bb.c
  %i.r = add nsw i64 %1, -1
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = and i64 %i.r, %i.s
  %.not36.i.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not36.i.i.i.i, label %mi_malloc_aligned.exit.thread, label %mi_malloc_aligned.exit, !prof !68

mi_malloc_aligned.exit.thread:                    ; preds = %bb.d
  %.val.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !tbaa !65
  %i.u = inttoptr i64 %.val.i.i.i.i.i.i to ptr
  store ptr %i.u, ptr %i.p, align 8, !tbaa !72
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  %i.w = load i16, ptr %i.v, align 8, !tbaa !66
  %i.x = add i16 %i.w, 1
  store i16 %i.x, ptr %i.v, align 8, !tbaa !66
  br label %bb.e

mi_malloc_aligned.exit:                           ; preds = %bb.b, %bb.c, %bb.d
  %i.y = tail call fastcc noundef ptr @_ZL38mi_heap_malloc_zero_aligned_at_genericP9mi_heap_smmmb(ptr noundef %i.g, i64 noundef %2, i64 noundef %1, i64 noundef 0, i1 noundef zeroext false) #55 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  %i.aa = icmp ne i64 %2, 0
  %or.cond = and i1 %i.aa, %i.z
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %mi_malloc_aligned.exit.thread, %mi_malloc_aligned.exit
  %.3.i.i.i.i17 = phi ptr [ %i.q, %mi_malloc_aligned.exit.thread ], [ %i.y, %mi_malloc_aligned.exit ]
  store ptr %.3.i.i.i.i17, ptr %0, align 8, !tbaa !96
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %mi_malloc_aligned.exit, %bb.a
  %.1 = phi i32 [ 0, %bb.e ], [ 22, %bb.a ], [ 12, %mi_malloc_aligned.exit ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define noalias ptr @mi_memalign(i64 noundef %0, i64 noundef %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %0)
  %or.cond.not.i.i.i.i = icmp eq i64 %i.c, 1
  br i1 %or.cond.not.i.i.i.i, label %bb.b, label %mi_malloc_aligned.exit, !prof !91

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %1, 1025
  %i.e = icmp ule i64 %0, %1
  %i.f = and i1 %i.d, %i.e
  br i1 %i.f, label %bb.c, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i.i, !prof !68

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw nsw i64 %1, 7
  %i.h = lshr i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.h
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !77   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !72   ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i.i, label %bb.d, !prof !61

bb.d:                                             ; preds = %bb.c
  %i.n = add nsw i64 %0, -1
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = and i64 %i.n, %i.o
  %.not36.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not36.i.i.i.i, label %bb.e, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i.i, !prof !68

bb.e:                                             ; preds = %bb.d
  %.val.i.i.i.i.i.i = load i64, ptr %i.m, align 8, !tbaa !65
  %i.q = inttoptr i64 %.val.i.i.i.i.i.i to ptr
  store ptr %i.q, ptr %i.l, align 8, !tbaa !72
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.s = load i16, ptr %i.r, align 8, !tbaa !66
  %i.t = add i16 %i.s, 1
  store i16 %i.t, ptr %i.r, align 8, !tbaa !66
  br label %mi_malloc_aligned.exit

_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.u = tail call fastcc noundef ptr @_ZL38mi_heap_malloc_zero_aligned_at_genericP9mi_heap_smmmb(ptr noundef %i.b, i64 noundef %1, i64 noundef %0, i64 noundef 0, i1 noundef zeroext false) #55
  br label %mi_malloc_aligned.exit

mi_malloc_aligned.exit:                           ; preds = %bb.a, %bb.e, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i.i
  %.3.i.i.i.i = phi ptr [ null, %bb.a ], [ %i.u, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i.i ], [ %i.m, %bb.e ]
  ret ptr %.3.i.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define noalias ptr @mi_valloc(i64 noundef %0) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr @_ZL16mi_os_mem_config, align 8, !tbaa !95 ; 4 uses
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !76   ; 2 uses
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.a)
  %or.cond.not.i.i.i.i.i = icmp eq i64 %i.d, 1
  br i1 %or.cond.not.i.i.i.i.i, label %bb.b, label %mi_memalign.exit, !prof !91

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult i64 %0, 1025
  %i.f = icmp ule i64 %i.a, %0
  %i.g = and i1 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i.i.i, !prof !68

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw nsw i64 %0, 7
  %i.i = lshr i64 %i.h, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !77   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !72   ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i.i.i, label %bb.d, !prof !61

bb.d:                                             ; preds = %bb.c
  %i.o = add nsw i64 %i.a, -1
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = and i64 %i.o, %i.p
  %.not36.i.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not36.i.i.i.i.i, label %bb.e, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i.i.i, !prof !68

bb.e:                                             ; preds = %bb.d
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.n, align 8, !tbaa !65
  %i.r = inttoptr i64 %.val.i.i.i.i.i.i.i to ptr
  store ptr %i.r, ptr %i.m, align 8, !tbaa !72
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.t = load i16, ptr %i.s, align 8, !tbaa !66
  %i.u = add i16 %i.t, 1
  store i16 %i.u, ptr %i.s, align 8, !tbaa !66
  br label %mi_memalign.exit

_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.v = tail call fastcc noundef ptr @_ZL38mi_heap_malloc_zero_aligned_at_genericP9mi_heap_smmmb(ptr noundef %i.c, i64 noundef %0, i64 noundef %i.a, i64 noundef 0, i1 noundef zeroext false) #55
  br label %mi_memalign.exit

mi_memalign.exit:                                 ; preds = %bb.a, %bb.e, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i.i.i
  %.3.i.i.i.i.i = phi ptr [ null, %bb.a ], [ %i.v, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i.i.i ], [ %i.n, %bb.e ]
  ret ptr %.3.i.i.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_Z16_mi_os_page_sizev() local_unnamed_addr #12 {
bb.a:
  %i.a = load i64, ptr @_ZL16mi_os_mem_config, align 8, !tbaa !95
  ret i64 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define noalias ptr @mi_pvalloc(i64 noundef %0) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr @_ZL16mi_os_mem_config, align 8, !tbaa !95 ; 6 uses
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
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !76   ; 2 uses
  %or.cond.not.i.i.i.i = icmp eq i64 %i.d, 1
  br i1 %or.cond.not.i.i.i.i, label %bb.c, label %mi_malloc_aligned.exit, !prof !257

bb.c:                                             ; preds = %_ZL12_mi_align_upmm.exit
  %i.k = icmp ult i64 %i.h, 1025
  %i.l = icmp ule i64 %i.a, %i.h
  %i.m = and i1 %i.k, %i.l
  br i1 %i.m, label %bb.d, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i.i, !prof !68

bb.d:                                             ; preds = %bb.c
  %i.n = add nuw nsw i64 %i.h, 7
  %i.o = lshr i64 %i.n, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 248
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !77   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !72   ; 4 uses
  %.not.i.i.i.i = icmp ne ptr %i.t, null
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = and i64 %i.c, %i.u
  %.not36.i.i.i.i = icmp eq i64 %i.v, 0
  %or.cond = and i1 %.not.i.i.i.i, %.not36.i.i.i.i
  br i1 %or.cond, label %bb.e, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i.i, !prof !91

bb.e:                                             ; preds = %bb.d
  %.val.i.i.i.i.i.i = load i64, ptr %i.t, align 8, !tbaa !65
  %i.w = inttoptr i64 %.val.i.i.i.i.i.i to ptr
  store ptr %i.w, ptr %i.s, align 8, !tbaa !72
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %i.y = load i16, ptr %i.x, align 8, !tbaa !66
  %i.z = add i16 %i.y, 1
  store i16 %i.z, ptr %i.x, align 8, !tbaa !66
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %0)
  %or.cond.not.i.i.i.i = icmp eq i64 %i.c, 1
  br i1 %or.cond.not.i.i.i.i, label %bb.b, label %mi_malloc_aligned.exit, !prof !91

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %1, 1025
  %i.e = icmp ule i64 %0, %1
  %i.f = and i1 %i.d, %i.e
  br i1 %i.f, label %bb.c, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i.i, !prof !68

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw nsw i64 %1, 7
  %i.h = lshr i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.h
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !77   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !72   ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i.i, label %bb.d, !prof !61

bb.d:                                             ; preds = %bb.c
  %i.n = add nsw i64 %0, -1
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = and i64 %i.n, %i.o
  %.not36.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not36.i.i.i.i, label %bb.e, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i.i, !prof !68

bb.e:                                             ; preds = %bb.d
  %.val.i.i.i.i.i.i = load i64, ptr %i.m, align 8, !tbaa !65
  %i.q = inttoptr i64 %.val.i.i.i.i.i.i to ptr
  store ptr %i.q, ptr %i.l, align 8, !tbaa !72
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.s = load i16, ptr %i.r, align 8, !tbaa !66
  %i.t = add i16 %i.s, 1
  store i16 %i.t, ptr %i.r, align 8, !tbaa !66
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76
  %.not.i.i = icmp eq i64 %1, 1
  br i1 %.not.i.i, label %mi_reallocn.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  %i.e = extractvalue { i64, i1 } %i.c, 0
  br i1 %i.d, label %mi_reallocn.exit.thread, label %mi_reallocn.exit, !prof !61

mi_reallocn.exit:                                 ; preds = %bb.a, %bb.b
  %storemerge.i.ph.i.i = phi i64 [ %2, %bb.a ], [ %i.e, %bb.b ]
  %i.f = tail call noundef ptr @_Z21_mi_heap_realloc_zeroP9mi_heap_sPvmb(ptr noundef %i.b, ptr noundef %0, i64 noundef %storemerge.i.ph.i.i, i1 noundef zeroext false) #55 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %mi_reallocn.exit.thread, label %bb.c

mi_reallocn.exit.thread:                          ; preds = %bb.b, %mi_reallocn.exit
  %i.h = tail call ptr @__errno_location() #59
  store i32 12, ptr %i.h, align 4, !tbaa !97
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
  store i32 22, ptr %i.b, align 4, !tbaa !97
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !96
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !76
  %.not.i.i.i = icmp eq i64 %1, 1
  br i1 %.not.i.i.i, label %mi_reallocn.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2) ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  %i.h = extractvalue { i64, i1 } %i.f, 0
  br i1 %i.g, label %bb.e, label %mi_reallocn.exit.i, !prof !61

mi_reallocn.exit.i:                               ; preds = %bb.d, %bb.c
  %storemerge.i.ph.i.i.i = phi i64 [ %2, %bb.c ], [ %i.h, %bb.d ]
  %i.i = tail call noundef ptr @_Z21_mi_heap_realloc_zeroP9mi_heap_sPvmb(ptr noundef %i.e, ptr noundef %i.c, i64 noundef %storemerge.i.ph.i.i.i, i1 noundef zeroext false) #55 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %mi_reallocarray.exit

bb.e:                                             ; preds = %bb.d, %mi_reallocn.exit.i
  %i.k = tail call ptr @__errno_location() #59
  store i32 12, ptr %i.k, align 4, !tbaa !97
  br label %bb.f

mi_reallocarray.exit:                             ; preds = %mi_reallocn.exit.i
  store ptr %i.i, ptr %0, align 8, !tbaa !96
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
  %i.d = and i64 %i.c, -33554432                  ; 3 uses
  %i.e = icmp slt i64 %i.c, 33554432
  %i.f = icmp eq i64 %i.d, 0
  %i.g = or i1 %i.e, %i.f
  br i1 %i.g, label %_ZL15_mi_usable_sizePKvPKc.exit.i, label %bb.c, !prof !61

bb.c:                                             ; preds = %bb.b
  %i.h = inttoptr i64 %i.d to ptr
  %i.i = sub i64 %i.b, %i.d
  %i.j = lshr i64 %i.i, 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  %i.l = getelementptr inbounds nuw [96 x i8], ptr %i.k, i64 %i.j ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !67
  %i.o = zext i32 %i.n to i64
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr inbounds i8, ptr %i.l, i64 %i.p ; 3 uses
  %i.r = getelementptr i8, ptr %i.q, i64 14
  %.val.i.i = load i8, ptr %i.r, align 2
  %i.s = and i8 %.val.i.i, 2
  %.not.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i, label %bb.d, label %bb.e, !prof !68

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr i8, ptr %i.q, i64 40
  %.val12.i.i = load i64, ptr %i.t, align 8, !tbaa !62
  br label %_ZL15_mi_usable_sizePKvPKc.exit.i

bb.e:                                             ; preds = %bb.c
  %i.u = tail call fastcc noundef i64 @_ZL30mi_page_usable_aligned_size_ofPK9mi_page_sPKv(ptr noundef nonnull %i.q, ptr noundef nonnull %0) #55
  br label %_ZL15_mi_usable_sizePKvPKc.exit.i

_ZL15_mi_usable_sizePKvPKc.exit.i:                ; preds = %bb.e, %bb.d, %bb.b
  %.1.i.i = phi i64 [ 0, %bb.b ], [ %i.u, %bb.e ], [ %.val12.i.i, %bb.d ]
  %i.v = icmp ugt i64 %1, %.1.i.i
  br i1 %i.v, label %select.unfold, label %mi_expand.exit

select.unfold:                                    ; preds = %_ZL15_mi_usable_sizePKvPKc.exit.i, %bb.a
  %i.w = tail call ptr @__errno_location() #59
  store i32 12, ptr %i.w, align 4, !tbaa !97
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
  %i.c = load i16, ptr %i.b, align 2, !tbaa !259
  %.not = icmp eq i16 %i.c, 0
  %i.d = add i64 %.0, 1
  br i1 %.not, label %bb.b, label %.preheader, !llvm.loop !258

bb.b:                                             ; preds = %.preheader
  %i.e = shl i64 %.0, 1                           ; 2 uses
  %i.f = add i64 %i.e, 2                          ; 3 uses
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !76   ; 2 uses
  %i.i = icmp ult i64 %i.f, 1025
  br i1 %i.i, label %bb.c, label %mi_malloc.exit, !prof !68

bb.c:                                             ; preds = %bb.b
  %i.j = add nsw i64 %i.e, 8
  %i.k = lshr i64 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 248
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !77   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !72   ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %mi_malloc.exit, label %mi_malloc.exit.thread, !prof !61

mi_malloc.exit.thread:                            ; preds = %bb.c
  %.val.i.i.i.i.i.i = load i64, ptr %i.p, align 8, !tbaa !65
  %i.r = inttoptr i64 %.val.i.i.i.i.i.i to ptr
  store ptr %i.r, ptr %i.o, align 8, !tbaa !72
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  %i.t = load i16, ptr %i.s, align 8, !tbaa !66
  %i.u = add i16 %i.t, 1
  store i16 %i.u, ptr %i.s, align 8, !tbaa !66
  br label %bb.d

end_hunk_1
