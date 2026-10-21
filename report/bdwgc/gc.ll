Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bdwgc/original/gc?download=true
inline.NumInlined: 840
inline.NumDeleted: 204
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 23
begin_hunk_0_@GC_normal_finalize_mark_proc:bb.a

GC_signal_mark_stack_overflow.exit.i:             ; preds = %bb.g, %bb.f
  %i.x = getelementptr inbounds i8, ptr %i.p, i64 -8176
  br label %bb.h

bb.h:                                             ; preds = %GC_signal_mark_stack_overflow.exit.i, %bb.c
  %.0.i2 = phi ptr [ %i.x, %GC_signal_mark_stack_overflow.exit.i ], [ %i.u, %bb.c ] ; 3 uses
  store ptr %0, ptr %.0.i2, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i2, i64 8
  store i64 %.val, ptr %i.y, align 8
  br label %GC_push_obj.exit

GC_push_obj.exit:                                 ; preds = %GC_find_header.exit, %bb.h
  %.1.i = phi ptr [ %.0.i2, %bb.h ], [ %i.p, %GC_find_header.exit ]
  store volatile ptr %.1.i, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @GC_ignore_self_finalize_mark_proc(ptr noundef %0) #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = lshr i64 %i.a, 22                        ; 2 uses
  %i.c = and i64 %i.b, 2047
  %i.d = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.in.i = phi ptr [ %i.d, %bb.a ], [ %i.k, %bb.b ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i, i64 8208
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp ne i64 %i.g, %i.b
  %i.i = icmp ne ptr %.0.i, %i.e
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 8216
  br i1 %i.j, label %bb.b, label %GC_find_header.exit, !llvm.loop !2

GC_find_header.exit:                              ; preds = %bb.b
  %i.l = lshr i64 %i.a, 12
  %i.m = and i64 %i.l, 1023
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = and i64 %i.q, 3
  %i.u = icmp eq i64 %i.t, 0
  %. = select i1 %i.u, i64 %i.q, i64 %i.s         ; 2 uses
  %i.v = getelementptr i8, ptr %0, i64 %.
  %.0 = getelementptr i8, ptr %i.v, i64 -8
  %.not36 = icmp slt i64 %., 8
  br i1 %.not36, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %GC_find_header.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.s
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -1
  %i.y = ptrtoint ptr %i.x to i64
  %.pre38 = load ptr, ptr @GC_least_plausible_heap_addr, align 8
  %.pre40 = load ptr, ptr @GC_greatest_plausible_heap_addr, align 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %i.z = phi ptr [ %.pre40, %.lr.ph ], [ %i.al, %bb.e ] ; 2 uses
  %i.aa = phi ptr [ %.pre38, %.lr.ph ], [ %i.am, %bb.e ] ; 2 uses
  %.02037 = phi ptr [ %0, %.lr.ph ], [ %i.an, %bb.e ] ; 2 uses
  %i.ab = load i64, ptr %.02037, align 8          ; 5 uses
  %i.ac = icmp ult i64 %i.ab, %i.a
  %i.ad = icmp ugt i64 %i.ab, %i.y
  %or.cond.not31.not35 = select i1 %i.ac, i1 true, i1 %i.ad
  %i.ae = ptrtoint ptr %i.aa to i64
  %.not22 = icmp uge i64 %i.ab, %i.ae
  %or.cond25.not32 = select i1 %or.cond.not31.not35, i1 %.not22, i1 false
  %i.af = ptrtoint ptr %i.z to i64
  %i.ag = icmp ult i64 %i.ab, %i.af
  %or.cond28 = select i1 %or.cond25.not32, i1 %i.ag, i1 false
  br i1 %or.cond28, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ah = inttoptr i64 %i.ab to ptr
  %i.ai = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 152), align 8
  %i.ak = tail call ptr @GC_mark_and_push(ptr noundef %i.ah, ptr noundef %i.ai, ptr noundef %i.aj, ptr nonnull poison)
  store volatile ptr %i.ak, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %.pre = load ptr, ptr @GC_least_plausible_heap_addr, align 8
  %.pre39 = load ptr, ptr @GC_greatest_plausible_heap_addr, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.al = phi ptr [ %i.z, %bb.c ], [ %.pre39, %bb.d ]
  %i.am = phi ptr [ %i.aa, %bb.c ], [ %.pre, %bb.d ]
  %i.an = getelementptr inbounds nuw i8, ptr %.02037, i64 8 ; 2 uses
  %.not = icmp ugt ptr %i.an, %.0
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !104

._crit_edge:                                      ; preds = %bb.e, %GC_find_header.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @GC_null_finalize_mark_proc(ptr nofree readnone captures(none) %0) #11 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @GC_unreachable_finalize_mark_proc(ptr noundef %0) #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.j, label %bb.b, !prof !48

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = lshr i64 %i.b, 22                        ; 2 uses
  %i.d = and i64 %i.c, 2047
  %i.e = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0.in.i.i = phi ptr [ %i.e, %bb.b ], [ %i.l, %bb.c ]
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8     ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8208
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp ne i64 %i.h, %i.c
  %i.j = icmp ne ptr %.0.i.i, %i.f
  %i.k = select i1 %i.i, i1 %i.j, i1 false
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8216
  br i1 %i.k, label %bb.c, label %GC_find_header.exit.i, !llvm.loop !2

GC_find_header.exit.i:                            ; preds = %bb.c
  %i.m = lshr i64 %i.b, 12
  %i.n = and i64 %i.m, 1023
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8 ; 3 uses
  %i.r = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 224), align 8 ; 2 uses
  %i.s = getelementptr i8, ptr %i.p, i64 40
  %.val.i = load i64, ptr %i.s, align 8           ; 2 uses
  %.not.i.i = icmp eq i64 %.val.i, 0
  br i1 %.not.i.i, label %GC_normal_finalize_mark_proc.exit, label %bb.d

bb.d:                                             ; preds = %GC_find_header.exit.i
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 144), align 8
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %.not11.i.i = icmp ult ptr %i.v, %i.u
  br i1 %.not11.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 232), align 8
  %i.w = load i32, ptr @GC_parallel, align 4
  %.not.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 236), align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = load i32, ptr @GC_print_stats, align 4
  %.not1.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not1.i.i.i, label %GC_signal_mark_stack_overflow.exit.i.i, label %bb.h, !prof !47

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.141, i64 noundef %i.r)
  br label %GC_signal_mark_stack_overflow.exit.i.i

GC_signal_mark_stack_overflow.exit.i.i:           ; preds = %bb.h, %bb.g
  %i.y = getelementptr inbounds i8, ptr %i.q, i64 -8176
  br label %bb.i

bb.i:                                             ; preds = %GC_signal_mark_stack_overflow.exit.i.i, %bb.d
  %.0.i2.i = phi ptr [ %i.y, %GC_signal_mark_stack_overflow.exit.i.i ], [ %i.v, %bb.d ] ; 3 uses
  store ptr %0, ptr %.0.i2.i, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i2.i, i64 8
  store i64 %.val.i, ptr %i.z, align 8
  br label %GC_normal_finalize_mark_proc.exit

GC_normal_finalize_mark_proc.exit:                ; preds = %GC_find_header.exit.i, %bb.i
  %.1.i.i = phi ptr [ %.0.i2.i, %bb.i ], [ %i.q, %GC_find_header.exit.i ]
  store volatile ptr %.1.i.i, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %GC_normal_finalize_mark_proc.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @GC_dump_finalization() local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 336), align 8
  %.not25 = icmp eq ptr %i.a, null
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 352), align 8
  %i.c = zext nneg i32 %i.b to i64
  tail call void (ptr, ...) @GC_printf(ptr noundef nonnull @.str.58)
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 328), align 8
  %i.e = zext nneg i32 %i.d to i64
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 312), align 8
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %GC_dump_finalization_links.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %._crit_edge.i
  %.016.i = phi i64 [ %i.q, %._crit_edge.i ], [ 0, %bb.a ] ; 2 uses
  %0 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 312), align 8
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i
  %.01213.i = load ptr, ptr %i.h, align 8         ; 2 uses
  %.not14.i = icmp eq ptr %.01213.i, null
  br i1 %.not14.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.01215.i = phi ptr [ %.012.i, %.lr.ph.i ], [ %.01213.i, %.preheader.i ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.01215.i, i64 16
  %i.j = load i64, ptr %i.i, align 8
  %i.k = xor i64 %i.j, -1
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load i64, ptr %.01215.i, align 8
  %i.n = xor i64 %i.m, -1
  %i.o = inttoptr i64 %i.n to ptr
  tail call void (ptr, ...) @GC_printf(ptr noundef nonnull @.str.210, ptr noundef %i.l, ptr noundef %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %.01215.i, i64 8
  %.012.i = load ptr, ptr %i.p, align 8           ; 2 uses
  %.not.i = icmp eq ptr %.012.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !105

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %i.q = add i64 %.016.i, 1                       ; 2 uses
  %.0.highbits.i = lshr i64 %i.q, %i.e
  %i.r = icmp eq i64 %.0.highbits.i, 0
  br i1 %i.r, label %.preheader.i, label %GC_dump_finalization_links.exit, !llvm.loop !106

GC_dump_finalization_links.exit:                  ; preds = %._crit_edge.i, %bb.a
  tail call void (ptr, ...) @GC_printf(ptr noundef nonnull @.str.59)
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 304), align 8
  %i.t = zext nneg i32 %i.s to i64
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 288), align 8
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %GC_dump_finalization_links.exit18, label %.preheader.i8

.preheader.i8:                                    ; preds = %GC_dump_finalization_links.exit, %._crit_edge.i16
  %.016.i9 = phi i64 [ %i.af, %._crit_edge.i16 ], [ 0, %GC_dump_finalization_links.exit ] ; 2 uses
  %1 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 288), align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.016.i9
  %.01213.i10 = load ptr, ptr %i.w, align 8       ; 2 uses
  %.not14.i11 = icmp eq ptr %.01213.i10, null
  br i1 %.not14.i11, label %._crit_edge.i16, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %.preheader.i8, %.lr.ph.i12
  %.01215.i13 = phi ptr [ %.012.i14, %.lr.ph.i12 ], [ %.01213.i10, %.preheader.i8 ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01215.i13, i64 16
  %i.y = load i64, ptr %i.x, align 8
  %i.z = xor i64 %i.y, -1
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load i64, ptr %.01215.i13, align 8
  %i.ac = xor i64 %i.ab, -1
  %i.ad = inttoptr i64 %i.ac to ptr
  tail call void (ptr, ...) @GC_printf(ptr noundef nonnull @.str.210, ptr noundef %i.aa, ptr noundef %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %.01215.i13, i64 8
  %.012.i14 = load ptr, ptr %i.ae, align 8        ; 2 uses
  %.not.i15 = icmp eq ptr %.012.i14, null
  br i1 %.not.i15, label %._crit_edge.i16, label %.lr.ph.i12, !llvm.loop !105

._crit_edge.i16:                                  ; preds = %.lr.ph.i12, %.preheader.i8
  %i.af = add i64 %.016.i9, 1                     ; 2 uses
  %.0.highbits.i17 = lshr i64 %i.af, %i.t
  %i.ag = icmp eq i64 %.0.highbits.i17, 0
  br i1 %i.ag, label %.preheader.i8, label %GC_dump_finalization_links.exit18, !llvm.loop !106

GC_dump_finalization_links.exit18:                ; preds = %._crit_edge.i16, %GC_dump_finalization_links.exit
  tail call void (ptr, ...) @GC_printf(ptr noundef nonnull @.str.60)
  br i1 %.not25, label %._crit_edge24, label %.lr.ph23.split

.lr.ph23.split:                                   ; preds = %GC_dump_finalization_links.exit18, %._crit_edge
  %.0722 = phi i64 [ %i.am, %._crit_edge ], [ 0, %GC_dump_finalization_links.exit18 ] ; 2 uses
  %2 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 336), align 8
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.0722
  %.019 = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not20 = icmp eq ptr %.019, null
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph23.split, %.lr.ph
  %.021 = phi ptr [ %.0, %.lr.ph ], [ %.019, %.lr.ph23.split ] ; 2 uses
  %i.ai = load i64, ptr %.021, align 8
  %i.aj = xor i64 %i.ai, -1
  %i.ak = inttoptr i64 %i.aj to ptr
  tail call void (ptr, ...) @GC_printf(ptr noundef nonnull @.str.61, ptr noundef %i.ak)
  %i.al = getelementptr inbounds nuw i8, ptr %.021, i64 8
  %.0 = load ptr, ptr %i.al, align 8              ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !107

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph23.split
  %i.am = add i64 %.0722, 1                       ; 2 uses
  %.07.highbits = lshr i64 %i.am, %i.c
  %i.an = icmp eq i64 %.07.highbits, 0
  br i1 %i.an, label %.lr.ph23.split, label %._crit_edge24, !llvm.loop !108

._crit_edge24:                                    ; preds = %._crit_edge, %GC_dump_finalization_links.exit18
  ret void
}

; Function Attrs: nounwind uwtable
define void @GC_finalize_all() local_unnamed_addr #2 {
bb.a:
  %.b3 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b3, label %bb.b, label %GC_lock.exit

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull @GC_allocate_ml) #43
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %GC_lock.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load i32, ptr @GC_nprocs, align 4
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load atomic i8, ptr @GC_collecting monotonic, align 4
  %.not.i = icmp eq i8 %i.d, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @GC_allocate_ml) #43 ; 0 uses
  br label %GC_lock.exit

bb.f:                                             ; preds = %bb.d
  tail call fastcc void @GC_generic_lock(ptr noundef nonnull @GC_allocate_ml)
  br label %GC_lock.exit

GC_lock.exit:                                     ; preds = %bb.f, %bb.e, %bb.a, %bb.b
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 280), align 8
  %.not49 = icmp eq i64 %i.f, 0
  br i1 %.not49, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %GC_lock.exit, %GC_lock.exit8
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 336), align 8
  %.not40.i = icmp eq ptr %i.g, null
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 352), align 8
  %i.i = zext nneg i32 %i.h to i64
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 80), align 8
  br i1 %.not40.i, label %GC_enqueue_all_finalizers.exit, label %.lr.ph38.i

.lr.ph38.i:                                       ; preds = %.lr.ph, %._crit_edge35.i
  %.01836.i = phi i64 [ %i.cx, %._crit_edge35.i ], [ 0, %.lr.ph ] ; 2 uses
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 336), align 8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.01836.i ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  store ptr null, ptr %i.k, align 8
  %.not31.i = icmp eq ptr %i.l, null
  br i1 %.not31.i, label %._crit_edge35.i, label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %.lr.ph38.i, %GC_set_mark_bit.exit29._crit_edge.i
  %.032.i = phi ptr [ %i.cg, %GC_set_mark_bit.exit29._crit_edge.i ], [ %i.l, %.lr.ph38.i ] ; 6 uses
  %i.m = load i64, ptr %.032.i, align 8
  %i.n = xor i64 %i.m, -1                         ; 5 uses
  %i.o = lshr i64 %i.n, 22                        ; 4 uses
  %i.p = and i64 %i.o, 2047
  %i.q = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.p ; 3 uses
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph34.i
  %.0.in.i.i.i = phi ptr [ %i.q, %.lr.ph34.i ], [ %i.x, %bb.g ]
  %.0.i.i.i = load ptr, ptr %.0.in.i.i.i, align 8 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8208
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp ne i64 %i.t, %i.o
  %i.v = icmp ne ptr %.0.i.i.i, %i.r
  %i.w = select i1 %i.u, i1 %i.v, i1 false
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8216
  br i1 %i.w, label %bb.g, label %GC_find_header.exit.i.i, !llvm.loop !2

GC_find_header.exit.i.i:                          ; preds = %bb.g
  %i.y = inttoptr i64 %i.n to ptr
  %i.z = lshr i64 %i.n, 12
  %i.aa = and i64 %i.z, 1023                      ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8 ; 3 uses
  %i.ae = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 224), align 8 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ac, i64 40
  %.val.i.i = load i64, ptr %i.af, align 8        ; 2 uses
  %.not.i.i.i = icmp eq i64 %.val.i.i, 0
  br i1 %.not.i.i.i, label %GC_normal_finalize_mark_proc.exit.i, label %bb.h

bb.h:                                             ; preds = %GC_find_header.exit.i.i
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 144), align 8
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.ae
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %.not11.i.i.i = icmp ult ptr %i.ai, %i.ah
  br i1 %.not11.i.i.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 232), align 8
  %i.aj = load i32, ptr @GC_parallel, align 4
  %.not.i.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 236), align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ak = load i32, ptr @GC_print_stats, align 4
  %.not1.i.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not1.i.i.i.i, label %GC_signal_mark_stack_overflow.exit.i.i.i, label %bb.l, !prof !47

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.141, i64 noundef %i.ae)
  br label %GC_signal_mark_stack_overflow.exit.i.i.i

GC_signal_mark_stack_overflow.exit.i.i.i:         ; preds = %bb.l, %bb.k
  %i.al = getelementptr inbounds i8, ptr %i.ad, i64 -8176
  br label %bb.m

bb.m:                                             ; preds = %GC_signal_mark_stack_overflow.exit.i.i.i, %bb.h
  %.0.i2.i.i = phi ptr [ %i.al, %GC_signal_mark_stack_overflow.exit.i.i.i ], [ %i.ai, %bb.h ] ; 3 uses
  store ptr %i.y, ptr %.0.i2.i.i, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 8
  store i64 %.val.i.i, ptr %i.am, align 8
  br label %GC_normal_finalize_mark_proc.exit.i

GC_normal_finalize_mark_proc.exit.i:              ; preds = %bb.m, %GC_find_header.exit.i.i
  %.1.i.i.i = phi ptr [ %.0.i2.i.i, %bb.m ], [ %i.ad, %GC_find_header.exit.i.i ]
  store volatile ptr %.1.i.i.i, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.an = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 144), align 8 ; 2 uses
  %.not1930.i = icmp ult ptr %i.an, %i.ao
  br i1 %.not1930.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %GC_normal_finalize_mark_proc.exit.i, %.lr.ph.i
  %i.ap = phi ptr [ %i.av, %.lr.ph.i ], [ %i.ao, %GC_normal_finalize_mark_proc.exit.i ] ; 2 uses
  %i.aq = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.ar = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 224), align 8
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.ar
  %i.at = tail call fastcc ptr @GC_mark_from(ptr noundef %i.aq, ptr noundef %i.ap, ptr noundef %i.as)
  store volatile ptr %i.at, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.au = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 144), align 8 ; 2 uses
  %.not19.i = icmp ult ptr %i.au, %i.av
  br i1 %.not19.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !109

._crit_edge.i:                                    ; preds = %.lr.ph.i, %GC_normal_finalize_mark_proc.exit.i
  %i.aw = load i32, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 232), align 8
  %.not20.i = icmp eq i32 %i.aw, 0
  %.pre41.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8 ; 2 uses
  br i1 %.not20.i, label %.loopexit.i, label %.preheader

.preheader:                                       ; preds = %._crit_edge.i, %.preheader
  %.0.in.i.i22.i = phi ptr [ %i.bc, %.preheader ], [ %i.q, %._crit_edge.i ]
  %.0.i.i23.i = load ptr, ptr %.0.in.i.i22.i, align 8 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i.i23.i, i64 8208
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = icmp ne i64 %i.ay, %i.o
  %i.ba = icmp ne ptr %.0.i.i23.i, %.pre41.i
  %i.bb = select i1 %i.az, i1 %i.ba, i1 false
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i23.i, i64 8216
  br i1 %i.bb, label %.preheader, label %GC_find_header.exit.i24.i, !llvm.loop !2

GC_find_header.exit.i24.i:                        ; preds = %.preheader
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i23.i, i64 %i.aa
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bf = lshr i64 %i.n, 4
  %i.bg = and i64 %i.bf, 255
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bg ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1
  %.not.i.i = icmp eq i8 %i.bj, 0
  br i1 %.not.i.i, label %bb.n, label %GC_set_mark_bit.exit.i.preheader

bb.n:                                             ; preds = %GC_find_header.exit.i24.i
  store i8 1, ptr %i.bi, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 56 ; 2 uses
  %i.bl = load volatile i64, ptr %i.bk, align 8
  %i.bm = add i64 %i.bl, 1
  store volatile i64 %i.bm, ptr %i.bk, align 8
  br label %GC_set_mark_bit.exit.i.preheader

GC_set_mark_bit.exit.i.preheader:                 ; preds = %bb.n, %GC_find_header.exit.i24.i
  br label %GC_set_mark_bit.exit.i

GC_set_mark_bit.exit.i:                           ; preds = %GC_set_mark_bit.exit.i.preheader, %GC_set_mark_bit.exit.i
  %i.bn = tail call fastcc i32 @GC_mark_some(ptr noundef null)
  %.not21.i = icmp eq i32 %i.bn, 0
  br i1 %.not21.i, label %GC_set_mark_bit.exit.i, label %.loopexit.loopexit.i, !llvm.loop !110

.loopexit.loopexit.i:                             ; preds = %GC_set_mark_bit.exit.i
  %.pre.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %._crit_edge.i
end_hunk_0
begin_hunk_1_@GC_finish_collection:bb.a
GC_find_header.exit.i6.i.i.i:                     ; preds = %bb.ai
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i5.i.i.i, i64 %i.di
  %i.el = load ptr, ptr %i.ek, align 8            ; 2 uses
  %i.em = lshr i64 %i.cu, 4
  %i.en = and i64 %i.em, 255
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.en ; 2 uses
  %i.eq = load i8, ptr %i.ep, align 1
  %.not.i.i.i.i = icmp eq i8 %i.eq, 0
  br i1 %.not.i.i.i.i, label %bb.aj, label %GC_set_mark_bit.exit.i.i.i

bb.aj:                                            ; preds = %GC_find_header.exit.i6.i.i.i
  store i8 1, ptr %i.ep, align 1
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 56 ; 2 uses
  %i.es = load volatile i64, ptr %i.er, align 8
  %i.et = add i64 %i.es, 1
  store volatile i64 %i.et, ptr %i.er, align 8
  br label %GC_set_mark_bit.exit.i.i.i

GC_set_mark_bit.exit.i.i.i:                       ; preds = %bb.aj, %GC_find_header.exit.i6.i.i.i
  %i.eu = load i32, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 232), align 8
  %.not2.i.i.i = icmp eq i32 %i.eu, 0
  br i1 %.not2.i.i.i, label %push_and_mark_object.exit.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %GC_set_mark_bit.exit.i.i.i, %.preheader.i.i.i
  %i.ev = call fastcc i32 @GC_mark_some(ptr noundef null), !inline_history !255
  %.not3.i.i.i = icmp eq i32 %i.ev, 0
  br i1 %.not3.i.i.i, label %.preheader.i.i.i, label %push_and_mark_object.exit.i.i, !llvm.loop !257

push_and_mark_object.exit.i.i:                    ; preds = %.preheader.i.i.i, %GC_set_mark_bit.exit.i.i.i, %.lr.ph.i.i
  %i.ew = add nuw i64 %.010.i.i, 1                ; 2 uses
  %i.ex = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 368), align 8
  %i.ey = icmp ult i64 %i.ew, %i.ex
  br i1 %i.ey, label %.lr.ph.i.i, label %GC_mark_togglerefs.exit.i, !llvm.loop !258

GC_mark_togglerefs.exit.i:                        ; preds = %push_and_mark_object.exit.i.i, %GC_set_mark_bit.exit.i.i, %bb.w
  call fastcc void @GC_make_disappearing_links_disappear(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 312), i32 noundef 0), !inline_history !259
  br i1 %i.bl, label %._crit_edge187.thread.i, label %.lr.ph186.i

._crit_edge187.thread.i:                          ; preds = %GC_mark_togglerefs.exit.i
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 80), align 8
  br label %._crit_edge201.i

.lr.ph186.i:                                      ; preds = %GC_mark_togglerefs.exit.i, %._crit_edge184.i
  %.084185.i = phi i64 [ %i.ho, %._crit_edge184.i ], [ 0, %GC_mark_togglerefs.exit.i ] ; 2 uses
  %i.ez = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 336), align 8
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %.084185.i
  %.0179.i = load ptr, ptr %i.fa, align 8         ; 2 uses
  %.not108180.i = icmp eq ptr %.0179.i, null
  br i1 %.not108180.i, label %._crit_edge184.i, label %.lr.ph183.preheader.i

.lr.ph183.preheader.i:                            ; preds = %.lr.ph186.i
  %.pre222.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %.lr.ph183.i

.lr.ph183.i:                                      ; preds = %bb.ar, %.lr.ph183.preheader.i
  %i.fb = phi ptr [ %i.hm, %bb.ar ], [ %.pre222.i, %.lr.ph183.preheader.i ] ; 2 uses
  %.0181.i = phi ptr [ %.0.i, %bb.ar ], [ %.0179.i, %.lr.ph183.preheader.i ] ; 3 uses
  %i.fc = load i64, ptr %.0181.i, align 8
  %i.fd = xor i64 %i.fc, -1                       ; 5 uses
  %i.fe = lshr i64 %i.fd, 22                      ; 4 uses
  %i.ff = and i64 %i.fe, 2047
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.ff ; 3 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.lr.ph183.i
  %.0.in.i.i.i = phi ptr [ %i.fg, %.lr.ph183.i ], [ %i.fm, %bb.ak ]
  %.0.i.i.i = load ptr, ptr %.0.in.i.i.i, align 8 ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8208
  %i.fi = load i64, ptr %i.fh, align 8
  %i.fj = icmp ne i64 %i.fi, %i.fe
  %i.fk = icmp ne ptr %.0.i.i.i, %i.fb
  %i.fl = select i1 %i.fj, i1 %i.fk, i1 false
  %i.fm = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8216
  br i1 %i.fl, label %bb.ak, label %GC_is_marked.exit.i, !llvm.loop !2

GC_is_marked.exit.i:                              ; preds = %bb.ak
  %i.fn = lshr i64 %i.fd, 12
  %i.fo = and i64 %i.fn, 1023                     ; 3 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %i.fo
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = lshr i64 %i.fd, 4
  %i.fs = and i64 %i.fr, 255                      ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 64
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fs
  %i.fv = load i8, ptr %i.fu, align 1
  %.not109.i = icmp eq i8 %i.fv, 0
  br i1 %.not109.i, label %bb.al, label %bb.ar

bb.al:                                            ; preds = %GC_is_marked.exit.i
  %i.fw = inttoptr i64 %i.fd to ptr
  %i.fx = getelementptr inbounds nuw i8, ptr %.0181.i, i64 40
  %i.fy = load ptr, ptr %i.fx, align 8
  call void %i.fy(ptr noundef nonnull %i.fw) #43, !inline_history !259
  %i.fz = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.ga = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 144), align 8 ; 2 uses
  %.not110178.i = icmp ult ptr %i.fz, %i.ga
  br i1 %.not110178.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.al, %.lr.ph.i
  %i.gb = phi ptr [ %i.gh, %.lr.ph.i ], [ %i.ga, %bb.al ] ; 2 uses
  %i.gc = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.gd = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 224), align 8
  %i.ge = getelementptr inbounds nuw [16 x i8], ptr %i.gb, i64 %i.gd
  %i.gf = call fastcc ptr @GC_mark_from(ptr noundef %i.gc, ptr noundef %i.gb, ptr noundef %i.ge), !inline_history !259
  store volatile ptr %i.gf, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.gg = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.gh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 144), align 8 ; 2 uses
  %.not110.i = icmp ult ptr %i.gg, %i.gh
  br i1 %.not110.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !260

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.al
  %i.gi = load i32, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 232), align 8
  %.not111.i = icmp eq i32 %i.gi, 0
  br i1 %.not111.i, label %.loopexit177.i, label %bb.am

bb.am:                                            ; preds = %._crit_edge.i
  %i.gj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %bb.am
  %.0.in.i.i114.i = phi ptr [ %i.fg, %bb.am ], [ %i.gp, %bb.an ]
  %.0.i.i115.i = load ptr, ptr %.0.in.i.i114.i, align 8 ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.0.i.i115.i, i64 8208
  %i.gl = load i64, ptr %i.gk, align 8
  %i.gm = icmp ne i64 %i.gl, %i.fe
  %i.gn = icmp ne ptr %.0.i.i115.i, %i.gj
  %i.go = select i1 %i.gm, i1 %i.gn, i1 false
  %i.gp = getelementptr inbounds nuw i8, ptr %.0.i.i115.i, i64 8216
  br i1 %i.go, label %bb.an, label %GC_find_header.exit.i.i, !llvm.loop !2

GC_find_header.exit.i.i:                          ; preds = %bb.an
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i115.i, i64 %i.fo
  %i.gr = load ptr, ptr %i.gq, align 8            ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 64
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.fs ; 2 uses
  %i.gu = load i8, ptr %i.gt, align 1
  %.not.i116.i = icmp eq i8 %i.gu, 0
  br i1 %.not.i116.i, label %bb.ao, label %GC_set_mark_bit.exit.i.preheader

bb.ao:                                            ; preds = %GC_find_header.exit.i.i
  store i8 1, ptr %i.gt, align 1
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 56 ; 2 uses
  %i.gw = load volatile i64, ptr %i.gv, align 8
  %i.gx = add i64 %i.gw, 1
  store volatile i64 %i.gx, ptr %i.gv, align 8
  br label %GC_set_mark_bit.exit.i.preheader

GC_set_mark_bit.exit.i.preheader:                 ; preds = %bb.ao, %GC_find_header.exit.i.i
  br label %GC_set_mark_bit.exit.i

GC_set_mark_bit.exit.i:                           ; preds = %GC_set_mark_bit.exit.i.preheader, %GC_set_mark_bit.exit.i
  %i.gy = call fastcc i32 @GC_mark_some(ptr noundef null), !inline_history !259
  %.not112.i = icmp eq i32 %i.gy, 0
  br i1 %.not112.i, label %GC_set_mark_bit.exit.i, label %.loopexit177.i, !llvm.loop !261

.loopexit177.i:                                   ; preds = %GC_set_mark_bit.exit.i, %._crit_edge.i
  %i.gz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8 ; 2 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %.loopexit177.i
  %.0.in.i.i117.i = phi ptr [ %i.fg, %.loopexit177.i ], [ %i.hf, %bb.ap ]
  %.0.i.i118.i = load ptr, ptr %.0.in.i.i117.i, align 8 ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.0.i.i118.i, i64 8208
  %i.hb = load i64, ptr %i.ha, align 8
  %i.hc = icmp ne i64 %i.hb, %i.fe
  %i.hd = icmp ne ptr %.0.i.i118.i, %i.gz
  %i.he = select i1 %i.hc, i1 %i.hd, i1 false
  %i.hf = getelementptr inbounds nuw i8, ptr %.0.i.i118.i, i64 8216
  br i1 %i.he, label %bb.ap, label %GC_is_marked.exit120.i, !llvm.loop !2

GC_is_marked.exit120.i:                           ; preds = %bb.ap
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i118.i, i64 %i.fo
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 64
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.fs
  %i.hk = load i8, ptr %i.hj, align 1
  %.not113.i = icmp eq i8 %i.hk, 0
  br i1 %.not113.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %GC_is_marked.exit120.i
  %i.hl = load ptr, ptr @GC_current_warn_proc, align 8
  call void %i.hl(ptr noundef nonnull @.str.179, i64 noundef %i.fd) #43, !inline_history !259
  %.pre.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %GC_is_marked.exit120.i, %GC_is_marked.exit.i
  %i.hm = phi ptr [ %i.fb, %GC_is_marked.exit.i ], [ %.pre.i, %bb.aq ], [ %i.gz, %GC_is_marked.exit120.i ]
  %i.hn = getelementptr inbounds nuw i8, ptr %.0181.i, i64 8
  %.0.i = load ptr, ptr %i.hn, align 8            ; 2 uses
  %.not108.i = icmp eq ptr %.0.i, null
  br i1 %.not108.i, label %._crit_edge184.i, label %.lr.ph183.i, !llvm.loop !262

._crit_edge184.i:                                 ; preds = %bb.ar, %.lr.ph186.i
  %i.ho = add nuw i64 %.084185.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ho, %i.bo
  br i1 %exitcond.not.i, label %._crit_edge187.i, label %.lr.ph186.i, !llvm.loop !263

._crit_edge187.i:                                 ; preds = %._crit_edge184.i
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 80), align 8
  br label %.lr.ph200.i

.lr.ph200.i:                                      ; preds = %._crit_edge196.i, %._crit_edge187.i
  %.078198.i = phi i32 [ %.179.lcssa.i, %._crit_edge196.i ], [ 0, %._crit_edge187.i ] ; 2 uses
  %.185197.i = phi i64 [ %i.kt, %._crit_edge196.i ], [ 0, %._crit_edge187.i ] ; 4 uses
  %3 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 336), align 8
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.185197.i
  %i.hq = load ptr, ptr %i.hp, align 8            ; 2 uses
  %.not103188.i = icmp eq ptr %i.hq, null
  br i1 %.not103188.i, label %._crit_edge196.i, label %.lr.ph195.preheader.i

.lr.ph195.preheader.i:                            ; preds = %.lr.ph200.i
  %.pre224.i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %.lr.ph195.i

.lr.ph195.i:                                      ; preds = %bb.be, %.lr.ph195.preheader.i
  %i.hr = phi ptr [ %i.ks, %bb.be ], [ %.pre224.i.a, %.lr.ph195.preheader.i ] ; 3 uses
  %.1193.i = phi ptr [ %.2.i37, %bb.be ], [ %i.hq, %.lr.ph195.preheader.i ] ; 8 uses
  %.075190.i = phi ptr [ %.176.i, %bb.be ], [ null, %.lr.ph195.preheader.i ] ; 4 uses
  %.179189.i = phi i32 [ %.381.i, %bb.be ], [ %.078198.i, %.lr.ph195.preheader.i ] ; 3 uses
  %i.hs = load i64, ptr %.1193.i, align 8
  %i.ht = xor i64 %i.hs, -1                       ; 4 uses
  %i.hu = lshr i64 %i.ht, 22                      ; 3 uses
  %i.hv = and i64 %i.hu, 2047
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.hv ; 2 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %.lr.ph195.i
  %.0.in.i.i121.i = phi ptr [ %i.hw, %.lr.ph195.i ], [ %i.ic, %bb.as ]
  %.0.i.i122.i = load ptr, ptr %.0.in.i.i121.i, align 8 ; 4 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.0.i.i122.i, i64 8208
  %i.hy = load i64, ptr %i.hx, align 8
  %i.hz = icmp ne i64 %i.hy, %i.hu
  %i.ia = icmp ne ptr %.0.i.i122.i, %i.hr
  %i.ib = select i1 %i.hz, i1 %i.ia, i1 false
  %i.ic = getelementptr inbounds nuw i8, ptr %.0.i.i122.i, i64 8216
  br i1 %i.ib, label %bb.as, label %GC_is_marked.exit124.i, !llvm.loop !2

GC_is_marked.exit124.i:                           ; preds = %bb.as
  %i.id = inttoptr i64 %i.ht to ptr
  %i.ie = lshr i64 %i.ht, 12
  %i.if = and i64 %i.ie, 1023                     ; 2 uses
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i122.i, i64 %i.if
  %i.ih = load ptr, ptr %i.ig, align 8
  %i.ii = lshr i64 %i.ht, 4
  %i.ij = and i64 %i.ii, 255                      ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 64
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.ij
  %i.im = load i8, ptr %i.il, align 1
  %.not104.i = icmp eq i8 %i.im, 0
  br i1 %.not104.i, label %bb.at, label %bb.bd

bb.at:                                            ; preds = %GC_is_marked.exit124.i
  %i.in = load i32, ptr @GC_java_finalization, align 4
  %.not105.i = icmp eq i32 %i.in, 0
  br i1 %.not105.i, label %.preheader176.i, label %GC_set_mark_bit.exit129.i

.preheader176.i:                                  ; preds = %bb.at, %.preheader176.i
  %.0.in.i.i125.i = phi ptr [ %i.it, %.preheader176.i ], [ %i.hw, %bb.at ]
  %.0.i.i126.i = load ptr, ptr %.0.in.i.i125.i, align 8 ; 4 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.0.i.i126.i, i64 8208
  %i.ip = load i64, ptr %i.io, align 8
  %i.iq = icmp ne i64 %i.ip, %i.hu
  %i.ir = icmp ne ptr %.0.i.i126.i, %i.hr
  %i.is = select i1 %i.iq, i1 %i.ir, i1 false
  %i.it = getelementptr inbounds nuw i8, ptr %.0.i.i126.i, i64 8216
  br i1 %i.is, label %.preheader176.i, label %GC_find_header.exit.i127.i, !llvm.loop !2

GC_find_header.exit.i127.i:                       ; preds = %.preheader176.i
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i126.i, i64 %i.if
  %i.iv = load ptr, ptr %i.iu, align 8            ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 64
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.ij ; 2 uses
  %i.iy = load i8, ptr %i.ix, align 1
  %.not.i128.i = icmp eq i8 %i.iy, 0
  br i1 %.not.i128.i, label %bb.au, label %GC_set_mark_bit.exit129.i

bb.au:                                            ; preds = %GC_find_header.exit.i127.i
  store i8 1, ptr %i.ix, align 1
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iv, i64 56 ; 2 uses
  %i.ja = load volatile i64, ptr %i.iz, align 8
  %i.jb = add i64 %i.ja, 1
  store volatile i64 %i.jb, ptr %i.iz, align 8
  br label %GC_set_mark_bit.exit129.i

GC_set_mark_bit.exit129.i:                        ; preds = %bb.au, %GC_find_header.exit.i127.i, %bb.at
  %i.jc = getelementptr inbounds nuw i8, ptr %.1193.i, i64 8 ; 2 uses
  %i.jd = load ptr, ptr %i.jc, align 8            ; 3 uses
  %i.je = icmp eq ptr %.075190.i, null
  br i1 %i.je, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %GC_set_mark_bit.exit129.i
  %i.jf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 336), align 8
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %.185197.i
  store ptr %i.jd, ptr %i.jg, align 8
  %i.jh = load ptr, ptr @GC_object_finalized_proc, align 8 ; 2 uses
  %.not106.i = icmp eq ptr %i.jh, null
  br i1 %.not106.i, label %.thread.i, label %bb.aw

.thread.i:                                        ; preds = %bb.av
  %i.ji = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 280), align 8
  %i.jj = add i64 %i.ji, -1
  store i64 %i.jj, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 280), align 8
  br label %bb.bb

bb.aw:                                            ; preds = %bb.av
  %.b92.i = load i1, ptr @GC_manual_vdb, align 4
  br i1 %.b92.i, label %bb.ax, label %.thread167.i

.thread167.i:                                     ; preds = %bb.aw
  %i.jk = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 280), align 8
  %i.jl = add i64 %i.jk, -1
  store i64 %i.jl, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 280), align 8
  br label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.jm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 336), align 8
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %.185197.i
  br label %.sink.split.i

bb.ay:                                            ; preds = %GC_set_mark_bit.exit129.i
  %i.jo = getelementptr inbounds nuw i8, ptr %.075190.i, i64 8
  store ptr %i.jd, ptr %i.jo, align 8
  %.b91.i = load i1, ptr @GC_manual_vdb, align 4
  br i1 %.b91.i, label %.sink.split.i, label %bb.az

.sink.split.i:                                    ; preds = %bb.ay, %bb.ax
  %.075190.sink.i = phi ptr [ %i.jn, %bb.ax ], [ %.075190.i, %bb.ay ]
  %i.jp = ptrtoint ptr %.075190.sink.i to i64     ; 2 uses
  %i.jq = lshr i64 %i.jp, 12
  %i.jr = lshr i64 %i.jp, 18
  %i.js = and i64 %i.jr, 4095
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 59896), i64 %i.js
  %i.ju = and i64 %i.jq, 63
  %i.jv = shl nuw i64 1, %i.ju
  %i.jw = atomicrmw volatile or ptr %i.jt, i64 %i.jv monotonic, align 8 ; 0 uses
  br label %bb.az

bb.az:                                            ; preds = %.sink.split.i, %bb.ay
  %.pr.i = load ptr, ptr @GC_object_finalized_proc, align 8 ; 2 uses
  %i.jx = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 280), align 8
  %i.jy = add i64 %i.jx, -1
  store i64 %i.jy, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 280), align 8
  %.not107.i = icmp eq ptr %.pr.i, null
  br i1 %.not107.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.thread167.i
  %i.jz = phi ptr [ %i.jh, %.thread167.i ], [ %.pr.i, %bb.az ]
  call void %i.jz(ptr noundef nonnull %i.id) #43, !inline_history !259
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %.thread.i
  %.280166.i = phi i32 [ 1, %.thread.i ], [ %.179189.i, %bb.ba ], [ %.179189.i, %bb.az ]
  %i.ka = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 344), align 8
  store ptr %i.ka, ptr %i.jc, align 8
  %.b90.i = load i1, ptr @GC_manual_vdb, align 4
  %i.kb = ptrtoint ptr %.1193.i to i64            ; 3 uses
  br i1 %.b90.i, label %bb.bc, label %._crit_edge227.i

bb.bc:                                            ; preds = %bb.bb
  %i.kc = lshr i64 %i.kb, 12
  %i.kd = lshr i64 %i.kb, 18
  %i.ke = and i64 %i.kd, 4095
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 59896), i64 %i.ke
  %i.kg = and i64 %i.kc, 63
  %i.kh = shl nuw i64 1, %i.kg
  %i.ki = atomicrmw volatile or ptr %i.kf, i64 %i.kh monotonic, align 8 ; 0 uses
  br label %._crit_edge227.i

._crit_edge227.i:                                 ; preds = %bb.bc, %bb.bb
  store atomic volatile i64 %i.kb, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 344) monotonic, align 8
  %i.kj = load i64, ptr %.1193.i, align 8
  %i.kk = xor i64 %i.kj, -1
  store i64 %i.kk, ptr %.1193.i, align 8
  %i.kl = getelementptr inbounds nuw i8, ptr %.1193.i, i64 32
  %i.km = load i64, ptr %i.kl, align 8
  %i.kn = add i64 %i.km, 48
  %i.ko = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 80), align 8
  %i.kp = add i64 %i.kn, %i.ko
  store i64 %i.kp, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 80), align 8
  %.pre223.i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.be

bb.bd:                                            ; preds = %GC_is_marked.exit124.i
  %i.kq = getelementptr inbounds nuw i8, ptr %.1193.i, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %._crit_edge227.i
  %i.ks = phi ptr [ %i.hr, %bb.bd ], [ %.pre223.i.a, %._crit_edge227.i ]
  %.381.i = phi i32 [ %.179189.i, %bb.bd ], [ %.280166.i, %._crit_edge227.i ] ; 2 uses
  %.176.i = phi ptr [ %.1193.i, %bb.bd ], [ %.075190.i, %._crit_edge227.i ]
  %.2.i37 = phi ptr [ %i.kr, %bb.bd ], [ %i.jd, %._crit_edge227.i ] ; 2 uses
  %.not103.i = icmp eq ptr %.2.i37, null
  br i1 %.not103.i, label %._crit_edge196.i, label %.lr.ph195.i, !llvm.loop !264

._crit_edge196.i:                                 ; preds = %bb.be, %.lr.ph200.i
  %.179.lcssa.i = phi i32 [ %.078198.i, %.lr.ph200.i ], [ %.381.i, %bb.be ] ; 2 uses
  %i.kt = add nuw i64 %.185197.i, 1               ; 2 uses
  %exitcond221.not.i = icmp eq i64 %i.kt, %i.bo
  br i1 %exitcond221.not.i, label %._crit_edge201.i, label %.lr.ph200.i, !llvm.loop !265

._crit_edge201.i:                                 ; preds = %._crit_edge196.i, %._crit_edge187.thread.i
  %.078.lcssa.i = phi i32 [ 0, %._crit_edge187.thread.i ], [ %.179.lcssa.i, %._crit_edge196.i ] ; 4 uses
  %i.ku = load i32, ptr @GC_java_finalization, align 4
  %.not.i38 = icmp eq i32 %i.ku, 0
  br i1 %.not.i38, label %.loopexit.i, label %.preheader175.i

.preheader175.i:                                  ; preds = %._crit_edge201.i
  %.3206.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 344), align 8 ; 2 uses
  %.not94207.i = icmp eq ptr %.3206.i, null
  br i1 %.not94207.i, label %._crit_edge210.i, label %.lr.ph209.i

.lr.ph209.i:                                      ; preds = %.preheader175.i, %GC_set_mark_bit.exit148.i
  %.3208.i = phi ptr [ %.3.i, %GC_set_mark_bit.exit148.i ], [ %.3206.i, %.preheader175.i ] ; 3 uses
  %i.kv = load i64, ptr %.3208.i, align 8         ; 4 uses
  %i.kw = lshr i64 %i.kv, 22                      ; 5 uses
  %i.kx = and i64 %i.kw, 2047
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.kx ; 4 uses
  %i.kz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8 ; 2 uses
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %.lr.ph209.i
  %.0.in.i.i130.i = phi ptr [ %i.ky, %.lr.ph209.i ], [ %i.lf, %bb.bf ]
  %.0.i.i131.i = load ptr, ptr %.0.in.i.i130.i, align 8 ; 4 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.0.i.i131.i, i64 8208
  %i.lb = load i64, ptr %i.la, align 8
  %i.lc = icmp ne i64 %i.lb, %i.kw
  %i.ld = icmp ne ptr %.0.i.i131.i, %i.kz
  %i.le = select i1 %i.lc, i1 %i.ld, i1 false
  %i.lf = getelementptr inbounds nuw i8, ptr %.0.i.i131.i, i64 8216
  br i1 %i.le, label %bb.bf, label %GC_is_marked.exit133.i, !llvm.loop !2

GC_is_marked.exit133.i:                           ; preds = %bb.bf
  %i.lg = inttoptr i64 %i.kv to ptr
  %i.lh = lshr i64 %i.kv, 12
  %i.li = and i64 %i.lh, 1023                     ; 4 uses
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i131.i, i64 %i.li
  %i.lk = load ptr, ptr %i.lj, align 8
  %i.ll = lshr i64 %i.kv, 4
  %i.lm = and i64 %i.ll, 255                      ; 3 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lk, i64 64
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.lm
  %i.lp = load i8, ptr %i.lo, align 1
  %.not98.i = icmp eq i8 %i.lp, 0
  br i1 %.not98.i, label %bb.bg, label %GC_set_mark_bit.exit148.i

bb.bg:                                            ; preds = %GC_is_marked.exit133.i
  %i.lq = getelementptr inbounds nuw i8, ptr %.3208.i, i64 40 ; 2 uses
  %i.lr = load ptr, ptr %i.lq, align 8            ; 2 uses
  %i.ls = icmp eq ptr %i.lr, @GC_null_finalize_mark_proc
  br i1 %i.ls, label %.preheader174.i, label %bb.bq

.preheader174.i:                                  ; preds = %bb.bg, %.preheader174.i
  %.0.in.i.i134.i = phi ptr [ %i.ly, %.preheader174.i ], [ %i.ky, %bb.bg ]
  %.0.i.i135.i = load ptr, ptr %.0.in.i.i134.i, align 8 ; 4 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.0.i.i135.i, i64 8208
  %i.lu = load i64, ptr %i.lt, align 8
  %i.lv = icmp ne i64 %i.lu, %i.kw
  %i.lw = icmp ne ptr %.0.i.i135.i, %i.kz
  %i.lx = select i1 %i.lv, i1 %i.lw, i1 false
  %i.ly = getelementptr inbounds nuw i8, ptr %.0.i.i135.i, i64 8216
  br i1 %i.lx, label %.preheader174.i, label %GC_find_header.exit.i136.i, !llvm.loop !2

GC_find_header.exit.i136.i:                       ; preds = %.preheader174.i
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i135.i, i64 %i.li
  %i.ma = load ptr, ptr %i.lz, align 8
  %i.mb = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8 ; 3 uses
  %i.mc = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 224), align 8 ; 2 uses
  %i.md = getelementptr i8, ptr %i.ma, i64 40
  %.val.i.i = load i64, ptr %i.md, align 8        ; 2 uses
  %.not.i.i137.i = icmp eq i64 %.val.i.i, 0
  %.pre226.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 144), align 8 ; 2 uses
  br i1 %.not.i.i137.i, label %GC_normal_finalize_mark_proc.exit.i, label %bb.bh

bb.bh:                                            ; preds = %GC_find_header.exit.i136.i
  %i.me = getelementptr inbounds nuw [16 x i8], ptr %.pre226.i, i64 %i.mc
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mb, i64 16 ; 2 uses
  %.not11.i.i.i = icmp ult ptr %i.mf, %i.me
  br i1 %.not11.i.i.i, label %bb.bm, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 232), align 8
  %i.mg = load i32, ptr @GC_parallel, align 4
  %.not.i.i.i138.i = icmp eq i32 %i.mg, 0
  br i1 %.not.i.i.i138.i, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 236), align 4
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.mh = load i32, ptr @GC_print_stats, align 4
  %.not1.i.i.i.i = icmp eq i32 %i.mh, 0
  br i1 %.not1.i.i.i.i, label %GC_signal_mark_stack_overflow.exit.i.i.i, label %bb.bl, !prof !47

bb.bl:                                            ; preds = %bb.bk
  call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.141, i64 noundef %i.mc), !inline_history !259
  br label %GC_signal_mark_stack_overflow.exit.i.i.i

GC_signal_mark_stack_overflow.exit.i.i.i:         ; preds = %bb.bl, %bb.bk
  %i.mi = getelementptr inbounds i8, ptr %i.mb, i64 -8176
  br label %bb.bm

bb.bm:                                            ; preds = %GC_signal_mark_stack_overflow.exit.i.i.i, %bb.bh
  %.0.i2.i.i = phi ptr [ %i.mi, %GC_signal_mark_stack_overflow.exit.i.i.i ], [ %i.mf, %bb.bh ] ; 3 uses
  store ptr %i.lg, ptr %.0.i2.i.i, align 8
  %i.mj = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 8
  store i64 %.val.i.i, ptr %i.mj, align 8
  %.pre225.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 144), align 8
  br label %GC_normal_finalize_mark_proc.exit.i

GC_normal_finalize_mark_proc.exit.i:              ; preds = %bb.bm, %GC_find_header.exit.i136.i
  %i.mk = phi ptr [ %.pre225.i, %bb.bm ], [ %.pre226.i, %GC_find_header.exit.i136.i ] ; 2 uses
  %.1.i.i.i = phi ptr [ %.0.i2.i.i, %bb.bm ], [ %i.mb, %GC_find_header.exit.i136.i ]
  store volatile ptr %.1.i.i.i, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.ml = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %.not99203.i = icmp ult ptr %i.ml, %i.mk
  br i1 %.not99203.i, label %._crit_edge205.i, label %.lr.ph204.i

.lr.ph204.i:                                      ; preds = %GC_normal_finalize_mark_proc.exit.i, %.lr.ph204.i
  %i.mm = phi ptr [ %i.ms, %.lr.ph204.i ], [ %i.mk, %GC_normal_finalize_mark_proc.exit.i ] ; 2 uses
  %i.mn = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.mo = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 224), align 8
  %i.mp = getelementptr inbounds nuw [16 x i8], ptr %i.mm, i64 %i.mo
  %i.mq = call fastcc ptr @GC_mark_from(ptr noundef %i.mn, ptr noundef %i.mm, ptr noundef %i.mp), !inline_history !259
  store volatile ptr %i.mq, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.mr = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.ms = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 144), align 8 ; 2 uses
  %.not99.i = icmp ult ptr %i.mr, %i.ms
  br i1 %.not99.i, label %._crit_edge205.i, label %.lr.ph204.i, !llvm.loop !266

._crit_edge205.i:                                 ; preds = %.lr.ph204.i, %GC_normal_finalize_mark_proc.exit.i
  %i.mt = load i32, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 232), align 8
  %.not100.i = icmp eq i32 %i.mt, 0
  br i1 %.not100.i, label %thread-pre-split171.i, label %bb.bn

bb.bn:                                            ; preds = %._crit_edge205.i
  %i.mu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bo, %bb.bn
  %.0.in.i.i139.i = phi ptr [ %i.ky, %bb.bn ], [ %i.na, %bb.bo ]
  %.0.i.i140.i = load ptr, ptr %.0.in.i.i139.i, align 8 ; 4 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.0.i.i140.i, i64 8208
  %i.mw = load i64, ptr %i.mv, align 8
  %i.mx = icmp ne i64 %i.mw, %i.kw
  %i.my = icmp ne ptr %.0.i.i140.i, %i.mu
  %i.mz = select i1 %i.mx, i1 %i.my, i1 false
  %i.na = getelementptr inbounds nuw i8, ptr %.0.i.i140.i, i64 8216
  br i1 %i.mz, label %bb.bo, label %GC_find_header.exit.i141.i, !llvm.loop !2

GC_find_header.exit.i141.i:                       ; preds = %bb.bo
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i140.i, i64 %i.li
  %i.nc = load ptr, ptr %i.nb, align 8            ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 64
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 %i.lm ; 2 uses
  %i.nf = load i8, ptr %i.ne, align 1
  %.not.i142.i = icmp eq i8 %i.nf, 0
  br i1 %.not.i142.i, label %bb.bp, label %GC_set_mark_bit.exit143.i.preheader

bb.bp:                                            ; preds = %GC_find_header.exit.i141.i
  store i8 1, ptr %i.ne, align 1
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nc, i64 56 ; 2 uses
  %i.nh = load volatile i64, ptr %i.ng, align 8
  %i.ni = add i64 %i.nh, 1
  store volatile i64 %i.ni, ptr %i.ng, align 8
  br label %GC_set_mark_bit.exit143.i.preheader

GC_set_mark_bit.exit143.i.preheader:              ; preds = %bb.bp, %GC_find_header.exit.i141.i
  br label %GC_set_mark_bit.exit143.i

GC_set_mark_bit.exit143.i:                        ; preds = %GC_set_mark_bit.exit143.i.preheader, %GC_set_mark_bit.exit143.i
  %i.nj = call fastcc i32 @GC_mark_some(ptr noundef null), !inline_history !259
  %.not101.i = icmp eq i32 %i.nj, 0
  br i1 %.not101.i, label %GC_set_mark_bit.exit143.i, label %thread-pre-split171.i, !llvm.loop !267

thread-pre-split171.i:                            ; preds = %GC_set_mark_bit.exit143.i, %._crit_edge205.i
  %.pr172.i = load ptr, ptr %i.lq, align 8
  br label %bb.bq

bb.bq:                                            ; preds = %thread-pre-split171.i, %bb.bg
  %i.nk = phi ptr [ %.pr172.i, %thread-pre-split171.i ], [ %i.lr, %bb.bg ]
  %.not102.i = icmp eq ptr %i.nk, @GC_unreachable_finalize_mark_proc
  br i1 %.not102.i, label %GC_set_mark_bit.exit148.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.nl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bs, %bb.br
  %.0.in.i.i144.i = phi ptr [ %i.ky, %bb.br ], [ %i.nr, %bb.bs ]
  %.0.i.i145.i = load ptr, ptr %.0.in.i.i144.i, align 8 ; 4 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %.0.i.i145.i, i64 8208
  %i.nn = load i64, ptr %i.nm, align 8
  %i.no = icmp ne i64 %i.nn, %i.kw
  %i.np = icmp ne ptr %.0.i.i145.i, %i.nl
  %i.nq = select i1 %i.no, i1 %i.np, i1 false
end_hunk_1
begin_hunk_2_@GC_default_print_heap_obj_proc:bb.a
  %i.r = icmp ult ptr %i.n, inttoptr (i64 4096 to ptr)
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %GC_find_header.exit.i
  %.03646.i = phi ptr [ %i.ai, %GC_find_header.exit.i ], [ %i.n, %.preheader.i ]
  %.03745.i = phi ptr [ %i.u, %GC_find_header.exit.i ], [ %i.q, %.preheader.i ]
  %i.s = ptrtoint ptr %.03646.i to i64
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [4096 x i8], ptr %.03745.i, i64 %i.t ; 4 uses
  %i.v = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.w = lshr i64 %i.v, 22                        ; 2 uses
  %i.x = and i64 %i.w, 2047
  %i.y = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.x
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.0.in.i.i = phi ptr [ %i.y, %.lr.ph.i ], [ %i.ae, %bb.e ]
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8     ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8208
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = icmp ne i64 %i.aa, %i.w
  %i.ac = icmp ne ptr %.0.i.i, %.pre
  %i.ad = select i1 %i.ab, i1 %i.ac, i1 false
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8216
  br i1 %i.ad, label %bb.e, label %GC_find_header.exit.i, !llvm.loop !2

GC_find_header.exit.i:                            ; preds = %bb.e
  %i.af = lshr i64 %i.v, 12
  %i.ag = and i64 %i.af, 1023
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8            ; 3 uses
  %i.aj = icmp ult ptr %i.ai, inttoptr (i64 4096 to ptr)
  br i1 %i.aj, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !7

._crit_edge.i:                                    ; preds = %GC_find_header.exit.i, %.preheader.i
  %.038.lcssa.i = phi ptr [ %0, %.preheader.i ], [ %i.u, %GC_find_header.exit.i ]
  %.037.lcssa.i = phi ptr [ %i.q, %.preheader.i ], [ %i.u, %GC_find_header.exit.i ]
  %.036.lcssa.i = phi ptr [ %i.n, %.preheader.i ], [ %i.ai, %GC_find_header.exit.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.036.lcssa.i, i64 25
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = and i8 %i.al, 4
  %.not.i = icmp eq i8 %i.am, 0
  br i1 %.not.i, label %bb.f, label %GC_base.exit

bb.f:                                             ; preds = %._crit_edge.i
  %i.an = ptrtoint ptr %.038.lcssa.i to i64       ; 2 uses
  %i.ao = and i64 %i.an, -8
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = and i64 %i.an, 4088
  %i.ar = getelementptr inbounds nuw i8, ptr %.036.lcssa.i, i64 32
  %i.as = load i64, ptr %i.ar, align 8            ; 3 uses
  %i.at = urem i64 %i.aq, %i.as
  %i.au = sub nsw i64 0, %i.at
  %i.av = getelementptr inbounds i8, ptr %i.ap, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.as ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.037.lcssa.i, i64 4096
  %i.ay = icmp ule ptr %i.aw, %i.ax
  %i.az = icmp ugt i64 %i.as, 4096
  %or.cond.not.i = or i1 %i.az, %i.ay
  %.not42.i = icmp ult ptr %0, %i.aw
  %cond.i = and i1 %.not42.i, %or.cond.not.i
  %spec.select.i = select i1 %cond.i, ptr %i.av, ptr null
  br label %GC_base.exit

GC_base.exit:                                     ; preds = %bb.a, %bb.d, %._crit_edge.i, %bb.f
  %.1.i = phi ptr [ null, %bb.a ], [ null, %bb.d ], [ null, %._crit_edge.i ], [ %spec.select.i, %bb.f ] ; 3 uses
  %i.ba = ptrtoint ptr %.1.i to i64               ; 2 uses
  %i.bb = lshr i64 %i.ba, 22                      ; 3 uses
  %i.bc = and i64 %i.bb, 2047
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.bc ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %GC_base.exit
  %.0.in.i5 = phi ptr [ %i.bd, %GC_base.exit ], [ %i.bj, %bb.g ]
  %.0.i6 = load ptr, ptr %.0.in.i5, align 8       ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i6, i64 8208
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = icmp ne i64 %i.bf, %i.bb
  %i.bh = icmp ne ptr %.0.i6, %.pre
  %i.bi = select i1 %i.bg, i1 %i.bh, i1 false
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i6, i64 8216
  br i1 %i.bi, label %bb.g, label %GC_find_header.exit, !llvm.loop !2

GC_find_header.exit:                              ; preds = %bb.g
  %i.bk = lshr i64 %i.ba, 12
  %i.bl = and i64 %i.bk, 1023                     ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.0.i6, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load i8, ptr %i.bo, align 8             ; 2 uses
  %i.bq = icmp eq ptr %.1.i, null
  br i1 %i.bq, label %GC_size.exit, label %.preheader, !prof !48

.preheader:                                       ; preds = %GC_find_header.exit, %.preheader
  %.0.in.i.i7 = phi ptr [ %i.bw, %.preheader ], [ %i.bd, %GC_find_header.exit ]
  %.0.i.i8 = load ptr, ptr %.0.in.i.i7, align 8   ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i.i8, i64 8208
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = icmp ne i64 %i.bs, %i.bb
  %i.bu = icmp ne ptr %.0.i.i8, %.pre
  %i.bv = select i1 %i.bt, i1 %i.bu, i1 false
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i.i8, i64 8216
  br i1 %i.bv, label %.preheader, label %GC_find_header.exit.i9, !llvm.loop !2

GC_find_header.exit.i9:                           ; preds = %.preheader
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i8, i64 %i.bl
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = load i64, ptr %i.bz, align 8
  br label %GC_size.exit

GC_size.exit:                                     ; preds = %GC_find_header.exit, %GC_find_header.exit.i9
  %.0.i10 = phi i64 [ %i.ca, %GC_find_header.exit.i9 ], [ 0, %GC_find_header.exit ]
  %i.cb = icmp eq i8 %i.bp, 0
  %i.cc = and i8 %i.bp, -2
  %i.cd = icmp eq i8 %i.cc, 2
  %i.ce = select i1 %i.cd, ptr @.str.198, ptr @.str.199
  %i.cf = select i1 %i.cb, ptr @.str.197, ptr %i.ce
  tail call void (ptr, ...) @GC_err_printf(ptr noundef nonnull @.str.196, ptr noundef %.1.i, i64 noundef %.0.i10, ptr noundef nonnull %i.cf)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @GC_grow_table(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load i32, ptr %1, align 4                ; 4 uses
  %i.c = add i32 %i.b, 1                          ; 2 uses
  %i.d = load ptr, ptr %0, align 8
  %.not53 = icmp eq ptr %i.d, null
  %i.e = zext nneg i32 %i.b to i64
  %i.f = shl nuw i64 1, %i.e                      ; 3 uses
  %i.g = zext nneg i32 %i.c to i64                ; 2 uses
  %i.h = icmp ult i32 %i.b, 12
  %i.i = load i32, ptr @GC_incremental, align 4
  %i.j = icmp ne i32 %i.i, 0
  %or.cond = select i1 %i.h, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  %i.k = call i32 @pthread_setcancelstate(i32 noundef 1, ptr noundef nonnull %i.a) #43 ; 0 uses
  %i.l = call fastcc i32 @GC_try_to_collect_inner(ptr noundef nonnull @GC_never_stop_func) ; 0 uses
  %i.m = load i32, ptr %i.a, align 4
  %i.n = call i32 @pthread_setcancelstate(i32 noundef %i.m, ptr noundef null) #43 ; 0 uses
  %i.o = load i64, ptr %2, align 8                ; 2 uses
  %i.p = lshr i64 %i.o, 2
  %i.q = sub i64 %i.f, %i.p
  %.not = icmp ult i64 %i.o, %i.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.r = shl i64 8, %i.g                          ; 3 uses
  %i.s = icmp ult i64 %i.r, 4097
  br i1 %i.s, label %GC_generic_malloc_inner_ignore_off_page.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load i32, ptr @GC_all_interior_pointers, align 4
  %i.u = sext i32 %i.t to i64
  %i.v = call i64 @llvm.uadd.sat.i64(i64 %i.u, i64 %i.r) ; 3 uses
  %i.w = call fastcc ptr @GC_alloc_large(i64 noundef %i.v, i32 noundef 1, i32 noundef 1) #50, !inline_history !51 ; 3 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %GC_generic_malloc_inner_ignore_off_page.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.b.i.i = load i1, ptr @GC_debugging_started, align 4
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @GC_obj_kinds, i64 76), align 4
  %.not8.i.i = icmp ne i32 %i.x, 0
  %or.cond44.not = select i1 %.b.i.i, i1 true, i1 %.not8.i.i
  br i1 %or.cond44.not, label %bb.f, label %GC_generic_malloc_inner_ignore_off_page.exit.thread63

bb.f:                                             ; preds = %bb.e
  %i.y = add i64 %i.v, 4095
  %i.z = and i64 %i.y, -4096
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.w, i8 0, i64 %i.z, i1 false)
  br label %GC_generic_malloc_inner_ignore_off_page.exit.thread63

GC_generic_malloc_inner_ignore_off_page.exit.thread63: ; preds = %bb.f, %bb.e
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 64), align 8
  %i.ab = add i64 %i.aa, %i.v
  store i64 %i.ab, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 64), align 8
  br label %.preheader

GC_generic_malloc_inner_ignore_off_page.exit:     ; preds = %bb.c
  %i.ac = call fastcc ptr @GC_generic_malloc_inner(i64 noundef %i.r, i32 noundef 1) ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %GC_generic_malloc_inner_ignore_off_page.exit.thread, label %.preheader

.preheader:                                       ; preds = %GC_generic_malloc_inner_ignore_off_page.exit.thread63, %GC_generic_malloc_inner_ignore_off_page.exit
  %.0.i65 = phi ptr [ %i.w, %GC_generic_malloc_inner_ignore_off_page.exit.thread63 ], [ %i.ac, %GC_generic_malloc_inner_ignore_off_page.exit ] ; 4 uses
  %.b.pre = load i1, ptr @GC_manual_vdb, align 4
  %.b41.fr = freeze i1 %.b.pre                    ; 2 uses
  br i1 %.not53, label %._crit_edge49, label %.lr.ph48

.lr.ph48:                                         ; preds = %.preheader
  %i.ae = add i32 %i.b, 4
  %i.af = zext nneg i32 %i.ae to i64              ; 2 uses
  %notmask = shl nsw i64 -1, %i.g
  %i.ag = xor i64 %notmask, -1                    ; 2 uses
  br i1 %.b41.fr, label %.lr.ph48.split.us.split, label %.lr.ph48.split.split

.lr.ph48.split.us.split:                          ; preds = %.lr.ph48, %._crit_edge.split.us.us
  %.03947.us = phi i64 [ %i.bb, %._crit_edge.split.us.us ], [ 0, %.lr.ph48 ] ; 2 uses
  %3 = load ptr, ptr %0, align 8
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.03947.us
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not4245.us = icmp eq ptr %i.ai, null
  br i1 %.not4245.us, label %._crit_edge.split.us.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph48.split.us.split, %.lr.ph.us
  %.03846.us.us = phi ptr [ %i.am, %.lr.ph.us ], [ %i.ai, %.lr.ph48.split.us.split ] ; 4 uses
  %i.aj = load i64, ptr %.03846.us.us, align 8
  %i.ak = xor i64 %i.aj, -1                       ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.03846.us.us, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.an = lshr i64 %i.ak, 3
  %i.ao = lshr i64 %i.ak, %i.af
  %i.ap = xor i64 %i.an, %i.ao
  %i.aq = and i64 %i.ap, %i.ag
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.0.i65, i64 %i.aq ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8
  store ptr %i.as, ptr %i.al, align 8
  %i.at = ptrtoint ptr %.03846.us.us to i64       ; 2 uses
  %i.au = lshr i64 %i.at, 12
  %i.av = lshr i64 %i.at, 18
  %i.aw = and i64 %i.av, 4095
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 59896), i64 %i.aw
  %i.ay = and i64 %i.au, 63
  %i.az = shl nuw i64 1, %i.ay
  %i.ba = atomicrmw volatile or ptr %i.ax, i64 %i.az monotonic, align 8 ; 0 uses
  store ptr %.03846.us.us, ptr %i.ar, align 8
  %.not42.us.us = icmp eq ptr %i.am, null
  br i1 %.not42.us.us, label %._crit_edge.split.us.us, label %.lr.ph.us, !llvm.loop !325

._crit_edge.split.us.us:                          ; preds = %.lr.ph.us, %.lr.ph48.split.us.split
  %i.bb = add nuw i64 %.03947.us, 1               ; 2 uses
  %exitcond57.not = icmp eq i64 %i.bb, %i.f
  br i1 %exitcond57.not, label %._crit_edge49, label %.lr.ph48.split.us.split, !llvm.loop !326

GC_generic_malloc_inner_ignore_off_page.exit.thread: ; preds = %bb.d, %GC_generic_malloc_inner_ignore_off_page.exit
  %i.bc = load ptr, ptr %0, align 8
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.g, label %bb.i

bb.g:                                             ; preds = %GC_generic_malloc_inner_ignore_off_page.exit.thread
  %i.be = load ptr, ptr @GC_on_abort, align 8
  call void %i.be(ptr noundef nonnull @.str.208) #43
  call void @abort() #46
  unreachable

.lr.ph48.split.split:                             ; preds = %.lr.ph48, %._crit_edge.split
  %.03947 = phi i64 [ %i.br, %._crit_edge.split ], [ 0, %.lr.ph48 ] ; 2 uses
  %4 = load ptr, ptr %0, align 8
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.03947
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %.not4245 = icmp eq ptr %i.bg, null
  br i1 %.not4245, label %._crit_edge.split, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph48.split.split, %.lr.ph
  %.03846 = phi ptr [ %i.bk, %.lr.ph ], [ %i.bg, %.lr.ph48.split.split ] ; 3 uses
  %i.bh = load i64, ptr %.03846, align 8
  %i.bi = xor i64 %i.bh, -1                       ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.03846, i64 8 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %i.bl = lshr i64 %i.bi, 3
  %i.bm = lshr i64 %i.bi, %i.af
  %i.bn = xor i64 %i.bl, %i.bm
  %i.bo = and i64 %i.bn, %i.ag
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.0.i65, i64 %i.bo ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8
  store ptr %i.bq, ptr %i.bj, align 8
  store ptr %.03846, ptr %i.bp, align 8
  %.not42 = icmp eq ptr %i.bk, null
  br i1 %.not42, label %._crit_edge.split, label %.lr.ph, !llvm.loop !325

._crit_edge.split:                                ; preds = %.lr.ph, %.lr.ph48.split.split
  %i.br = add nuw i64 %.03947, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.br, %i.f
  br i1 %exitcond.not, label %._crit_edge49, label %.lr.ph48.split.split, !llvm.loop !326

._crit_edge49:                                    ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %.preheader
  store i32 %i.c, ptr %1, align 4
  store ptr %.0.i65, ptr %0, align 8
  br i1 %.b41.fr, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge49
  %i.bs = ptrtoint ptr %.0.i65 to i64             ; 2 uses
  %i.bt = lshr i64 %i.bs, 12
  %i.bu = lshr i64 %i.bs, 18
  %i.bv = and i64 %i.bu, 4095
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 59896), i64 %i.bv
  %i.bx = and i64 %i.bt, 63
  %i.by = shl nuw i64 1, %i.bx
  %i.bz = atomicrmw volatile or ptr %i.bw, i64 %i.by monotonic, align 8 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge49, %GC_generic_malloc_inner_ignore_off_page.exit.thread, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @GC_free_inner(ptr noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = lshr i64 %i.a, 22                        ; 2 uses
  %i.c = and i64 %i.b, 2047
  %i.d = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.in.i = phi ptr [ %i.d, %bb.a ], [ %i.k, %bb.b ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i, i64 8208
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp ne i64 %i.g, %i.b
  %i.i = icmp ne ptr %.0.i, %i.e
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 8216
  br i1 %i.j, label %bb.b, label %GC_find_header.exit, !llvm.loop !2

GC_find_header.exit:                              ; preds = %bb.b
  %i.l = and i64 %i.a, -4096
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = lshr i64 %i.a, 12
  %i.o = and i64 %i.n, 1023
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load i8, ptr %i.r, align 8               ; 2 uses
  %i.t = zext i8 %i.s to i32                      ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.v = load i64, ptr %i.u, align 8              ; 9 uses
  %i.w = lshr i64 %i.v, 4
  %i.x = zext i8 %i.s to i64
  %i.y = getelementptr inbounds nuw [48 x i8], ptr @GC_obj_kinds, i64 %i.x ; 2 uses
  %i.z = icmp ult i64 %i.v, 2064
  br i1 %i.z, label %bb.c, label %bb.h

bb.c:                                             ; preds = %GC_find_header.exit
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 88), align 8
  %i.ab = add i64 %i.aa, %i.v
  store i64 %i.ab, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 88), align 8
  %i.ac = and i32 %i.t, 254
  %i.ad = icmp eq i32 %i.ac, 2
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = load i64, ptr @GC_non_gc_bytes, align 8
  %i.af = sub i64 %i.ae, %i.v
  store i64 %i.af, ptr @GC_non_gc_bytes, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 28
  %i.ah = load i32, ptr %i.ag, align 4
  %.not = icmp ne i32 %i.ah, 0
  %i.ai = icmp samesign ugt i64 %i.v, 8
  %or.cond = and i1 %i.ai, %.not
  br i1 %or.cond, label %bb.f, label %bb.g, !prof !50

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = add nsw i64 %i.v, -8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aj, i8 0, i64 %i.ak, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.al = load ptr, ptr %i.y, align 16
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.w ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8
  store ptr %i.an, ptr %0, align 8
  store ptr %0, ptr %i.am, align 8
  br label %bb.m

bb.h:                                             ; preds = %GC_find_header.exit
  %i.ao = add i64 %i.v, 4095                      ; 2 uses
  %i.ap = and i64 %i.ao, -4096
  %i.aq = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 88), align 8
  %i.ar = add i64 %i.aq, %i.v
  store i64 %i.ar, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 88), align 8
  %i.as = and i32 %i.t, 254
  %i.at = icmp eq i32 %i.as, 2
  br i1 %i.at, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.au = load i64, ptr @GC_non_gc_bytes, align 8
  %i.av = sub i64 %i.au, %i.v
  store i64 %i.av, ptr @GC_non_gc_bytes, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aw = icmp ugt i64 %i.ao, 8191
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ax = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 32), align 8
  %i.ay = sub i64 %i.ax, %i.ap
  store i64 %i.ay, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 32), align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call fastcc void @GC_freehblk(ptr noundef %i.m)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.g
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @GC_extend_size_map(i64 noundef %0) unnamed_addr #25 {
bb.a:
  %i.a = load i32, ptr @GC_all_interior_pointers, align 4
  %i.b = sext i32 %i.a to i64                     ; 4 uses
  %i.c = add nsw i64 %i.b, 15                     ; 2 uses
  %i.d = sub nsw i64 -16, %i.b                    ; 2 uses
  %i.e = icmp ult i64 %0, %i.d
  %i.f = add i64 %i.c, %0
  %i.g = lshr i64 %i.f, 4
  %i.h = select i1 %i.e, i64 %i.g, i64 1152921504606846975, !prof !47 ; 4 uses
  %i.i = mul nuw i64 %i.h, 14                     ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 5608), i64 %i.i
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.m = mul nuw i64 %i.h, 12
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.m, %bb.b ], [ %i.p, %bb.c ]  ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 5608), i64 %.0
  %i.o = load i64, ptr %i.n, align 8
  %.not34 = icmp eq i64 %i.o, 0
  %i.p = add i64 %.0, 1
  br i1 %.not34, label %.loopexit, label %bb.c, !llvm.loop !327

bb.d:                                             ; preds = %bb.a
  %i.q = or disjoint i64 %i.i, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.1 = phi i64 [ %i.q, %bb.d ], [ %i.t, %bb.e ]  ; 5 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 5608), i64 %.1
  %i.s = load i64, ptr %i.r, align 8
  %.not = icmp eq i64 %i.s, 0
  %i.t = add i64 %.1, 1
  br i1 %.not, label %bb.f, label %bb.e, !llvm.loop !328

bb.f:                                             ; preds = %bb.e
  %i.u = icmp ult i64 %.1, %i.d
  %i.v = add i64 %.1, %i.c
  %i.w = lshr i64 %i.v, 4
  %i.x = select i1 %i.u, i64 %i.w, i64 1152921504606846975, !prof !47 ; 2 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, %i.x
  %spec.select = tail call i64 @llvm.umax.i64(i64 %i.z, i64 %i.h)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.f
  %.031 = phi i64 [ %spec.select, %bb.f ], [ %i.h, %bb.c ]
  %.2 = phi i64 [ %.1, %bb.f ], [ %.0, %bb.c ]    ; 6 uses
  %i.aa = add nuw nsw i64 %.031, 1
  %i.ab = and i64 %i.aa, -2
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 128)
  %.rhs.trunc = trunc nuw nsw i64 %spec.store.select to i16
  %i.ac = udiv i16 256, %.rhs.trunc
  %i.ad = udiv i16 256, %i.ac
  %i.ae = and i16 %i.ad, 510
  %i.af = zext nneg i16 %i.ae to i64              ; 3 uses
  %i.ag = shl nuw nsw i64 %i.af, 4                ; 2 uses
  %i.ah = sub nsw i64 %i.ag, %i.b                 ; 2 uses
  %.not3538 = icmp ugt i64 %.2, %i.ah
  br i1 %.not3538, label %._crit_edge, label %.lr.ph.preheader

end_hunk_2
