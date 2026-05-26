inline.NumInlined: 1359
inline.NumDeleted: 295
begin_hunk_0_@mi_good_size:bb.a
  %i.c = lshr i64 %i.b, 3                         ; 2 uses
  %i.d = icmp samesign ult i64 %0, 9
  br i1 %i.d, label %mi_bin.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp samesign ult i64 %0, 65
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = add nuw nsw i64 %i.c, 1
  %i.g = and i64 %i.f, 30
  br label %mi_bin.exit

bb.e:                                             ; preds = %bb.c
  %i.h = add nsw i64 %i.c, -1                     ; 2 uses
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.h, i1 false) ; 2 uses
  %i.j = sub nsw i64 61, %i.i
  %i.k = and i64 %i.j, 4294967295
  %i.l = lshr i64 %i.h, %i.k
  %i.m = and i64 %i.l, 3
  %i.n = shl nuw nsw i64 %i.i, 2
  %reass.sub = sub nsw i64 %i.m, %i.n
  %i.o = add nsw i64 %reass.sub, 249
  %i.p = and i64 %i.o, 255
  br label %mi_bin.exit

mi_bin.exit:                                      ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi i64 [ %i.p, %bb.e ], [ %i.g, %bb.d ], [ 1, %bb.b ]
  %i.q = getelementptr [24 x i8], ptr getelementptr inbounds nuw (i8, ptr @_mi_heap_empty, i64 1040), i64 %.0.i
  %i.r = getelementptr i8, ptr %i.q, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !61
  br label %_mi_align_up.exit

bb.f:                                             ; preds = %bb.a
  %i.t = load i64, ptr @mi_os_mem_config.0, align 8, !tbaa !91 ; 4 uses
  %i.u = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.t)
  %i.v = icmp samesign ult i64 %i.u, 2
  %i.w = add i64 %0, -1
  %i.x = add i64 %i.w, %i.t                       ; 3 uses
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = sub i64 0, %i.t
  %i.z = and i64 %i.x, %i.y
  br label %_mi_align_up.exit

bb.h:                                             ; preds = %bb.f
  %i.aa = urem i64 %i.x, %i.t
  %i.ab = sub nuw i64 %i.x, %i.aa
  br label %_mi_align_up.exit

_mi_align_up.exit:                                ; preds = %bb.h, %bb.g, %mi_bin.exit
  %.0 = phi i64 [ %i.s, %mi_bin.exit ], [ %i.z, %bb.g ], [ %i.ab, %bb.h ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @mi_cfree(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call zeroext i1 @mi_is_in_heap_region(ptr noundef %0)
  %i.b = icmp ne ptr %0, null
  %or.cond.not = and i1 %i.b, %i.a
  br i1 %or.cond.not, label %bb.b, label %mi_free.exit, !prof !93

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.d = add i64 %i.c, -1
  %i.e = and i64 %i.d, -33554432                  ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr                 ; 4 uses
  %i.g = tail call ptr asm "movq %fs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) null) #60, !srcloc !58
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = getelementptr i8, ptr %i.f, i64 256
  %i.j = load atomic i64, ptr %i.i monotonic, align 256
  %i.k = icmp eq i64 %i.j, %i.h
  %i.l = sub i64 %i.c, %i.e
  %i.m = lshr i64 %i.l, 16
  %i.n = getelementptr i8, ptr %i.f, i64 264
  %i.o = getelementptr [80 x i8], ptr %i.n, i64 %i.m ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !59
  %i.r = zext i32 %i.q to i64
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr i8, ptr %i.o, i64 %i.s     ; 6 uses
  br i1 %i.k, label %bb.c, label %bb.g, !prof !55

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr i8, ptr %i.t, i64 14
  %i.v = load i8, ptr %i.u, align 2, !tbaa !60
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.d, label %bb.f, !prof !55

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr i8, ptr %i.t, i64 32       ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !57
  %i.z = ptrtoint ptr %i.y to i64
  store atomic i64 %i.z, ptr %0 monotonic, align 8
  store ptr %0, ptr %i.x, align 8, !tbaa !57
  %i.aa = getelementptr i8, ptr %i.t, i64 24      ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !18
  %i.ac = add i32 %i.ab, -1                       ; 2 uses
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !18
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.e, label %mi_free.exit, !prof !17

bb.e:                                             ; preds = %bb.d
  tail call void @_mi_page_retire(ptr noundef %i.t)
  br label %mi_free.exit

bb.f:                                             ; preds = %bb.c
  tail call void @_mi_free_generic(ptr noundef nonnull %i.f, ptr noundef %i.t, i1 noundef zeroext true, ptr noundef nonnull %0)
  br label %mi_free.exit

bb.g:                                             ; preds = %bb.b
  tail call void @_mi_free_generic(ptr noundef nonnull %i.f, ptr noundef %i.t, i1 noundef zeroext false, ptr noundef nonnull %0)
  br label %mi_free.exit

mi_free.exit:                                     ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @mi_is_in_heap_region(ptr noundef %0) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_mi_segment_of.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64
  %i.c = add i64 %i.b, -1                         ; 4 uses
  %i.d = and i64 %i.c, -33554432                  ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = icmp ugt i64 %i.c, 43980465111039
  %i.g = lshr i64 %i.c, 25
  %i.h = and i64 %i.g, 63
  %.sink.i.i.i = select i1 %i.f, i64 0, i64 %i.h  ; 2 uses
  %i.i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 43980465111040)
  %.0.i.i.i = lshr i64 %i.i, 31                   ; 6 uses
  %i.j = getelementptr [8 x i8], ptr @mi_segment_map, i64 %.0.i.i.i
  %i.k = load atomic i64, ptr %i.j monotonic, align 8 ; 2 uses
  %i.l = shl nuw i64 1, %.sink.i.i.i              ; 2 uses
  %i.m = and i64 %i.k, %i.l
  %.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i, label %bb.c, label %_mi_segment_of.exit.i, !prof !17

bb.c:                                             ; preds = %bb.b
  %i.n = icmp eq i64 %.0.i.i.i, 20480
  br i1 %i.n, label %_mi_segment_of.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = add i64 %i.l, -1
  %i.p = and i64 %i.k, %i.o                       ; 2 uses
  %.not45.i.i = icmp eq i64 %i.p, 0
  br i1 %.not45.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.q = icmp eq i64 %.0.i.i.i, 0
  br i1 %i.q, label %_mi_segment_of.exit.thread.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.e, %.preheader.i.i
  %.039.i.i = phi i64 [ %i.r, %.preheader.i.i ], [ %.0.i.i.i, %bb.e ]
  %i.r = add nsw i64 %.039.i.i, -1                ; 4 uses
  %i.s = getelementptr [8 x i8], ptr @mi_segment_map, i64 %i.r
  %i.t = load atomic i64, ptr %i.s monotonic, align 8 ; 3 uses
  %i.u = icmp ne i64 %i.t, 0
  %i.v = icmp ne i64 %i.r, 0
  %i.w = and i1 %i.u, %i.v
  br i1 %i.w, label %.preheader.i.i, label %bb.f, !llvm.loop !94

bb.f:                                             ; preds = %.preheader.i.i
  %.not46.i.i = icmp eq i64 %i.t, 0
  br i1 %.not46.i.i, label %_mi_segment_of.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.lcssa.sink.i.i = phi i64 [ %i.p, %bb.d ], [ %i.t, %bb.f ]
  %.140.i.i = phi i64 [ %.0.i.i.i, %bb.d ], [ %i.r, %bb.f ]
  %i.x = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.lcssa.sink.i.i, i1 true)
  %.138.i.i = xor i64 %i.x, 63
  %.neg58.i.i = sub i64 %.140.i.i, %.0.i.i.i
  %.neg56.i.i = sub nsw i64 %.138.i.i, %.sink.i.i.i
  %i.y = shl i64 %.neg58.i.i, 31
  %i.z = shl nsw i64 %.neg56.i.i, 25
  %i.aa = getelementptr i8, ptr %i.e, i64 %i.y
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.z   ; 5 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_mi_segment_of.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = load i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_heap_main, i64 2864), align 8, !tbaa !95
  %i.af = xor i64 %i.ae, %i.ad
  %i.ag = getelementptr i8, ptr %i.ab, i64 216
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !96
  %.not50.i.i = icmp eq i64 %i.af, %i.ah
  br i1 %.not50.i.i, label %bb.i, label %_mi_segment_of.exit.thread.i, !prof !55

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr i8, ptr %i.ab, i64 224
  %.val.i.i = load i64, ptr %i.ai, align 32, !tbaa !97
  %i.aj = shl i64 %.val.i.i, 16
  %i.ak = getelementptr i8, ptr %i.ab, i64 %i.aj
  %.not51.i.i = icmp ugt ptr %i.ak, %0
  br i1 %.not51.i.i, label %mi_is_valid_pointer.exit, label %_mi_segment_of.exit.thread.i

_mi_segment_of.exit.i:                            ; preds = %bb.b
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %_mi_segment_of.exit.thread.i, label %mi_is_valid_pointer.exit

_mi_segment_of.exit.thread.i:                     ; preds = %_mi_segment_of.exit.i, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %bb.a
  %i.al = load atomic i64, ptr @mi_arena_count monotonic, align 64 ; 2 uses
  %.not2124.not.i.i = icmp eq i64 %i.al, 0
  br i1 %.not2124.not.i.i, label %mi_is_valid_pointer.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_mi_segment_of.exit.thread.i, %.critedge.i.i
  %.01525.i.i = phi i64 [ %i.aw, %.critedge.i.i ], [ 0, %_mi_segment_of.exit.thread.i ] ; 2 uses
  %i.am = getelementptr [8 x i8], ptr @mi_arenas, i64 %.01525.i.i
  %i.an = load atomic ptr, ptr %i.am acquire, align 8 ; 3 uses
  %.not.i2.i = icmp eq ptr %i.an, null
  br i1 %.not.i2.i, label %.critedge.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.ao = getelementptr i8, ptr %i.an, i64 32     ; 2 uses
  %i.ap = load atomic ptr, ptr %i.ao seq_cst, align 8, !tbaa !98
  %.not20.i.i = icmp ugt ptr %i.ap, %0
  br i1 %.not20.i.i, label %.critedge.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = load atomic ptr, ptr %i.ao seq_cst, align 8, !tbaa !98
  %i.ar = getelementptr i8, ptr %i.an, i64 40
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !100
  %i.at = shl i64 %i.as, 25
  %i.au = getelementptr i8, ptr %i.aq, i64 %i.at
  %i.av = icmp ugt ptr %i.au, %0
  br i1 %i.av, label %mi_is_valid_pointer.exit, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.k, %bb.j, %.lr.ph.i.i
  %i.aw = add nuw i64 %.01525.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.aw, %i.al
  br i1 %exitcond.not.i.i, label %mi_is_valid_pointer.exit, label %.lr.ph.i.i, !llvm.loop !101

mi_is_valid_pointer.exit:                         ; preds = %bb.k, %.critedge.i.i, %bb.i, %_mi_segment_of.exit.i, %_mi_segment_of.exit.thread.i
  %i.ax = phi i1 [ true, %_mi_segment_of.exit.i ], [ true, %bb.i ], [ false, %_mi_segment_of.exit.thread.i ], [ true, %bb.k ], [ false, %.critedge.i.i ]
  ret i1 %i.ax
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 23) i32 @mi_posix_memalign(ptr noundef writeonly captures(address_is_null) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
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
  br i1 %or.cond19, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !54   ; 3 uses
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %2)
  %i.i = icmp samesign ult i64 %i.h, 2
  %.not.i.i = icmp uge i64 %2, %1
  %or.cond.not.i.i = and i1 %.not.i.i, %i.i
  %i.j = icmp ult i64 %2, 1025
  %i.k = and i1 %i.j, %or.cond.not.i.i
  br i1 %i.k, label %bb.c, label %bb.e, !prof !55

bb.c:                                             ; preds = %bb.b
  %i.l = add nuw nsw i64 %2, 7
  %i.m = lshr i64 %i.l, 3
  %i.n = getelementptr i8, ptr %i.g, i64 8
  %i.o = getelementptr [8 x i8], ptr %i.n, i64 %i.m
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !53   ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 16       ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !11   ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %mi_malloc_aligned.exit.thread, !prof !17

bb.d:                                             ; preds = %bb.c
  %i.t = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %i.g, i64 noundef %2, i1 noundef zeroext false, i64 noundef 0), !inline_history !50
  br label %mi_malloc_aligned.exit

mi_malloc_aligned.exit.thread:                    ; preds = %bb.c
  %i.u = getelementptr i8, ptr %i.p, i64 24       ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !18
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.u, align 8, !tbaa !18
  %i.x = load atomic i64, ptr %i.r monotonic, align 8
  %i.y = inttoptr i64 %i.x to ptr
  store ptr %i.y, ptr %i.q, align 8, !tbaa !11
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.z = tail call noalias ptr @mi_heap_malloc_aligned_at(ptr noundef %i.g, i64 noundef %2, i64 noundef %1, i64 noundef 0)
  br label %mi_malloc_aligned.exit

mi_malloc_aligned.exit:                           ; preds = %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.z, %bb.e ], [ %i.t, %bb.d ] ; 2 uses
  %i.aa = icmp eq ptr %.0.i.i, null
  %i.ab = icmp ne i64 %2, 0
  %or.cond = and i1 %i.ab, %i.aa
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %mi_malloc_aligned.exit.thread, %mi_malloc_aligned.exit
  %.0.i.i17 = phi ptr [ %i.r, %mi_malloc_aligned.exit.thread ], [ %.0.i.i, %mi_malloc_aligned.exit ]
  store ptr %.0.i.i17, ptr %0, align 8, !tbaa !40
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %mi_malloc_aligned.exit, %bb.a
  %.1 = phi i32 [ 0, %bb.f ], [ 22, %bb.a ], [ 12, %mi_malloc_aligned.exit ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define hidden noalias ptr @mi_memalign(i64 noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %0)
  %or.cond.not16.i.i = icmp eq i64 %i.c, 1
  br i1 %or.cond.not16.i.i, label %bb.b, label %mi_malloc_aligned.exit, !prof !83

bb.b:                                             ; preds = %bb.a
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %1)
  %i.e = icmp samesign ult i64 %i.d, 2
  %.not.i.i = icmp uge i64 %1, %0
  %or.cond.not.i.i = and i1 %.not.i.i, %i.e
  %i.f = icmp ult i64 %1, 1025
  %i.g = and i1 %i.f, %or.cond.not.i.i
  br i1 %i.g, label %bb.c, label %bb.f, !prof !55

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw nsw i64 %1, 7
  %i.i = lshr i64 %i.h, 3
  %i.j = getelementptr i8, ptr %i.b, i64 8
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !53   ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 16       ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !11   ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.d, label %bb.e, !prof !17

bb.d:                                             ; preds = %bb.c
  %i.p = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %i.b, i64 noundef %1, i1 noundef zeroext false, i64 noundef 0), !inline_history !50
  br label %mi_malloc_aligned.exit

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.l, i64 24       ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !18
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 8, !tbaa !18
  %i.t = load atomic i64, ptr %i.n monotonic, align 8
  %i.u = inttoptr i64 %i.t to ptr
  store ptr %i.u, ptr %i.m, align 8, !tbaa !11
  br label %mi_malloc_aligned.exit

bb.f:                                             ; preds = %bb.b
  %i.v = tail call noalias ptr @mi_heap_malloc_aligned_at(ptr noundef %i.b, i64 noundef %1, i64 noundef %0, i64 noundef 0)
  br label %mi_malloc_aligned.exit

mi_malloc_aligned.exit:                           ; preds = %bb.a, %bb.d, %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.v, %bb.f ], [ null, %bb.a ], [ %i.n, %bb.e ], [ %i.p, %bb.d ]
  ret ptr %.0.i.i
}

; Function Attrs: nounwind uwtable
define hidden noalias ptr @mi_valloc(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr @mi_os_mem_config.0, align 8, !tbaa !91 ; 3 uses
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54   ; 3 uses
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.a)
  %or.cond.not16.i.i.i = icmp eq i64 %i.d, 1
  br i1 %or.cond.not16.i.i.i, label %bb.b, label %mi_memalign.exit, !prof !83

bb.b:                                             ; preds = %bb.a
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %0)
  %i.f = icmp samesign ult i64 %i.e, 2
  %.not.i.i.i = icmp uge i64 %0, %i.a
  %or.cond.not.i.i.i = and i1 %i.f, %.not.i.i.i
  %i.g = icmp ult i64 %0, 1025
  %i.h = and i1 %i.g, %or.cond.not.i.i.i
  br i1 %i.h, label %bb.c, label %bb.f, !prof !55

bb.c:                                             ; preds = %bb.b
  %i.i = add nuw nsw i64 %0, 7
  %i.j = lshr i64 %i.i, 3
  %i.k = getelementptr i8, ptr %i.c, i64 8
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %i.j
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !53   ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 16       ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !11   ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.d, label %bb.e, !prof !17

bb.d:                                             ; preds = %bb.c
  %i.q = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %i.c, i64 noundef %0, i1 noundef zeroext false, i64 noundef 0), !inline_history !50
  br label %mi_memalign.exit

end_hunk_0
begin_hunk_1_@mi_pvalloc:bb.a
bb.e:                                             ; preds = %bb.d
  %i.w = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %i.j, i64 noundef %i.h, i1 noundef zeroext false, i64 noundef 0), !inline_history !50
  br label %mi_malloc_aligned.exit

bb.f:                                             ; preds = %bb.d
  %i.x = getelementptr i8, ptr %i.s, i64 24       ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !18
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.x, align 8, !tbaa !18
  %i.aa = load atomic i64, ptr %i.u monotonic, align 8
  %i.ab = inttoptr i64 %i.aa to ptr
  store ptr %i.ab, ptr %i.t, align 8, !tbaa !11
  br label %mi_malloc_aligned.exit

bb.g:                                             ; preds = %bb.c
  %i.ac = tail call noalias ptr @mi_heap_malloc_aligned_at(ptr noundef %i.j, i64 noundef %i.h, i64 noundef %i.a, i64 noundef 0)
  br label %mi_malloc_aligned.exit

mi_malloc_aligned.exit:                           ; preds = %bb.b, %bb.g, %bb.f, %bb.e, %_mi_align_up.exit, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.ac, %bb.g ], [ null, %_mi_align_up.exit ], [ %i.u, %bb.f ], [ %i.w, %bb.e ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden noalias ptr @mi_aligned_alloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %0)
  %or.cond.not16.i.i = icmp eq i64 %i.c, 1
  br i1 %or.cond.not16.i.i, label %bb.b, label %mi_malloc_aligned.exit, !prof !83

bb.b:                                             ; preds = %bb.a
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %1)
  %i.e = icmp samesign ult i64 %i.d, 2
  %.not.i.i = icmp uge i64 %1, %0
  %or.cond.not.i.i = and i1 %.not.i.i, %i.e
  %i.f = icmp ult i64 %1, 1025
  %i.g = and i1 %i.f, %or.cond.not.i.i
  br i1 %i.g, label %bb.c, label %bb.f, !prof !55

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw nsw i64 %1, 7
  %i.i = lshr i64 %i.h, 3
  %i.j = getelementptr i8, ptr %i.b, i64 8
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !53   ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 16       ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !11   ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.d, label %bb.e, !prof !17

bb.d:                                             ; preds = %bb.c
  %i.p = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %i.b, i64 noundef %1, i1 noundef zeroext false, i64 noundef 0), !inline_history !50
  br label %mi_malloc_aligned.exit

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.l, i64 24       ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !18
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 8, !tbaa !18
  %i.t = load atomic i64, ptr %i.n monotonic, align 8
  %i.u = inttoptr i64 %i.t to ptr
  store ptr %i.u, ptr %i.m, align 8, !tbaa !11
  br label %mi_malloc_aligned.exit

bb.f:                                             ; preds = %bb.b
  %i.v = tail call noalias ptr @mi_heap_malloc_aligned_at(ptr noundef %i.b, i64 noundef %1, i64 noundef %0, i64 noundef 0)
  br label %mi_malloc_aligned.exit

mi_malloc_aligned.exit:                           ; preds = %bb.a, %bb.d, %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.v, %bb.f ], [ null, %bb.a ], [ %i.n, %bb.e ], [ %i.p, %bb.d ]
  ret ptr %.0.i.i
}

; Function Attrs: nounwind uwtable
define hidden ptr @mi_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %.not.i.i = icmp eq i64 %1, 1
  br i1 %.not.i.i, label %mi_reallocn.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 2, 1) %1, i64 %2) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  %i.e = extractvalue { i64, i1 } %i.c, 0
  br i1 %i.d, label %mi_reallocn.exit.thread, label %mi_reallocn.exit, !prof !17

mi_reallocn.exit:                                 ; preds = %bb.a, %bb.b
  %storemerge.i.ph.i.i = phi i64 [ %2, %bb.a ], [ %i.e, %bb.b ]
  %i.f = tail call ptr @_mi_heap_realloc_zero(ptr noundef %i.b, ptr noundef %0, i64 noundef %storemerge.i.ph.i.i, i1 noundef zeroext false) ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %mi_reallocn.exit.thread, label %bb.c

mi_reallocn.exit.thread:                          ; preds = %bb.b, %mi_reallocn.exit
  %i.h = tail call ptr @__errno_location() #63
  store i32 12, ptr %i.h, align 4, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %mi_reallocn.exit.thread, %mi_reallocn.exit
  %.0.i.i5 = phi ptr [ null, %mi_reallocn.exit.thread ], [ %i.f, %mi_reallocn.exit ]
  ret ptr %.0.i.i5
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 23) i32 @mi_reallocarr(ptr noundef captures(address_is_null) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__errno_location() #63
  store i32 22, ptr %i.b, align 4, !tbaa !7
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !40
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !54
  %.not.i.i.i = icmp eq i64 %1, 1
  br i1 %.not.i.i.i, label %mi_reallocn.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 2, 1) %1, i64 %2) ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  %i.h = extractvalue { i64, i1 } %i.f, 0
  br i1 %i.g, label %bb.e, label %mi_reallocn.exit.i, !prof !17

mi_reallocn.exit.i:                               ; preds = %bb.d, %bb.c
  %storemerge.i.ph.i.i.i = phi i64 [ %2, %bb.c ], [ %i.h, %bb.d ]
  %i.i = tail call ptr @_mi_heap_realloc_zero(ptr noundef %i.e, ptr noundef %i.c, i64 noundef %storemerge.i.ph.i.i.i, i1 noundef zeroext false) ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %mi_reallocarray.exit

bb.e:                                             ; preds = %bb.d, %mi_reallocn.exit.i
  %i.k = tail call ptr @__errno_location() #63
  store i32 12, ptr %i.k, align 4, !tbaa !7
  br label %bb.f

mi_reallocarray.exit:                             ; preds = %mi_reallocn.exit.i
  store ptr %i.i, ptr %0, align 8, !tbaa !40
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %mi_reallocarray.exit, %bb.b
  %.1 = phi i32 [ 22, %bb.b ], [ 12, %bb.e ], [ 0, %mi_reallocarray.exit ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @mi__expand(ptr noundef %0, i64 noundef %1) local_unnamed_addr #13 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = add i64 %i.b, -1
  %i.d = and i64 %i.c, -33554432                  ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = sub i64 %i.b, %i.d
  %i.g = lshr i64 %i.f, 16
  %i.h = getelementptr i8, ptr %i.e, i64 264
  %i.i = getelementptr [80 x i8], ptr %i.h, i64 %i.g ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !59
  %i.l = zext i32 %i.k to i64
  %i.m = sub nsw i64 0, %i.l
  %i.n = getelementptr i8, ptr %i.i, i64 %i.m     ; 4 uses
  %i.o = getelementptr i8, ptr %i.n, i64 14
  %.val.i.i = load i8, ptr %i.o, align 2
  %i.p = and i8 %.val.i.i, 2
  %.not.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i, label %bb.c, label %bb.e, !prof !55

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr i8, ptr %i.n, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !21   ; 2 uses
  %i.s = icmp sgt i32 %i.r, -1
  br i1 %i.s, label %bb.d, label %_mi_segment_page_start.exit.i.i.i.i.i, !prof !55

bb.d:                                             ; preds = %bb.c
  %i.t = zext nneg i32 %i.r to i64
  br label %_mi_usable_size.exit.i

_mi_segment_page_start.exit.i.i.i.i.i:            ; preds = %bb.c
  %i.u = load i32, ptr %i.n, align 8, !tbaa !52
  %i.v = zext i32 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 16
  br label %_mi_usable_size.exit.i

bb.e:                                             ; preds = %bb.b
  %i.x = tail call fastcc i64 @mi_page_usable_aligned_size_of(ptr noundef nonnull %i.e, ptr noundef %i.n, ptr noundef nonnull %0)
  br label %_mi_usable_size.exit.i

_mi_usable_size.exit.i:                           ; preds = %bb.e, %_mi_segment_page_start.exit.i.i.i.i.i, %bb.d
  %.1.i.i = phi i64 [ %i.w, %_mi_segment_page_start.exit.i.i.i.i.i ], [ %i.x, %bb.e ], [ %i.t, %bb.d ]
  %i.y = icmp ugt i64 %1, %.1.i.i
  br i1 %i.y, label %select.unfold, label %mi_expand.exit

select.unfold:                                    ; preds = %_mi_usable_size.exit.i, %bb.a
  %i.z = tail call ptr @__errno_location() #63
  store i32 12, ptr %i.z, align 4, !tbaa !7
  br label %mi_expand.exit

mi_expand.exit:                                   ; preds = %_mi_usable_size.exit.i, %select.unfold
  %.1.i4 = phi ptr [ null, %select.unfold ], [ %0, %_mi_usable_size.exit.i ]
  ret ptr %.1.i4
}

; Function Attrs: nounwind uwtable
define hidden noalias ptr @mi_wcsdup(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %.011 = phi i64 [ %i.d, %.preheader ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr [2 x i8], ptr %0, i64 %.011
  %i.c = load i16, ptr %i.b, align 2, !tbaa !103
  %.not = icmp eq i16 %i.c, 0
  %i.d = add i64 %.011, 1
  br i1 %.not, label %bb.b, label %.preheader, !llvm.loop !104

bb.b:                                             ; preds = %.preheader
  %i.e = shl i64 %.011, 1                         ; 2 uses
  %i.f = add i64 %i.e, 2                          ; 3 uses
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54   ; 2 uses
  %i.i = icmp ult i64 %i.f, 1025
  br i1 %i.i, label %bb.c, label %mi_malloc.exit, !prof !55

bb.c:                                             ; preds = %bb.b
  %i.j = add nsw i64 %i.e, 8
  %i.k = lshr i64 %i.j, 3
  %i.l = getelementptr i8, ptr %i.h, i64 8
  %i.m = getelementptr [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !53   ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 16       ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !11   ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %mi_malloc.exit, label %mi_malloc.exit.thread, !prof !17

mi_malloc.exit.thread:                            ; preds = %bb.c
  %i.r = getelementptr i8, ptr %i.n, i64 24       ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !18
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 8, !tbaa !18
  %i.u = load atomic i64, ptr %i.p monotonic, align 8
  %i.v = inttoptr i64 %i.u to ptr
  store ptr %i.v, ptr %i.o, align 8, !tbaa !11
  br label %bb.d

mi_malloc.exit:                                   ; preds = %bb.b, %bb.c
  %i.w = tail call noalias ptr @_mi_malloc_generic(ptr noundef %i.h, i64 noundef %i.f, i1 noundef zeroext false, i64 noundef 0) ; 2 uses
  %.not14 = icmp eq ptr %i.w, null
  br i1 %.not14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %mi_malloc.exit.thread, %mi_malloc.exit
  %.0.i.i.i.i17 = phi ptr [ %i.p, %mi_malloc.exit.thread ], [ %i.w, %mi_malloc.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i.i.i.i17, ptr nonnull readonly align 1 %0, i64 %i.f, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %mi_malloc.exit, %bb.d, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %.0.i.i.i.i17, %bb.d ], [ null, %mi_malloc.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden noalias ptr @mi_mbsdup(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %mi_strdup.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #61 ; 4 uses
  %i.e = add i64 %i.d, 1                          ; 2 uses
  %i.f = icmp ult i64 %i.e, 1025
  br i1 %i.f, label %bb.c, label %mi_heap_malloc.exit.i.i, !prof !55

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i64 %i.d, 8
  %i.h = lshr i64 %i.g, 3
  %i.i = getelementptr i8, ptr %i.b, i64 8
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %i.h
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !53   ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 16       ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !11   ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %mi_heap_malloc.exit.i.i, label %mi_heap_malloc.exit.thread.i.i, !prof !17

mi_heap_malloc.exit.thread.i.i:                   ; preds = %bb.c
  %i.o = getelementptr i8, ptr %i.k, i64 24       ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !18
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 8, !tbaa !18
  %i.r = load atomic i64, ptr %i.m monotonic, align 8
  %i.s = inttoptr i64 %i.r to ptr
  store ptr %i.s, ptr %i.l, align 8, !tbaa !11
  br label %bb.d

mi_heap_malloc.exit.i.i:                          ; preds = %bb.c, %bb.b
  %i.t = tail call noalias ptr @_mi_malloc_generic(ptr noundef %i.b, i64 noundef %i.e, i1 noundef zeroext false, i64 noundef 0) ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %mi_strdup.exit, label %bb.d

bb.d:                                             ; preds = %mi_heap_malloc.exit.i.i, %mi_heap_malloc.exit.thread.i.i
  %.0.i.i.i14.i.i = phi ptr [ %i.m, %mi_heap_malloc.exit.thread.i.i ], [ %i.t, %mi_heap_malloc.exit.i.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i.i.i14.i.i, ptr nonnull readonly align 1 %0, i64 %i.d, i1 false)
  %i.v = getelementptr i8, ptr %.0.i.i.i14.i.i, i64 %i.d
  store i8 0, ptr %i.v, align 1, !tbaa !60
  br label %mi_strdup.exit

mi_strdup.exit:                                   ; preds = %bb.a, %mi_heap_malloc.exit.i.i, %bb.d
  %.1.i.i = phi ptr [ null, %bb.a ], [ %.0.i.i.i14.i.i, %bb.d ], [ null, %mi_heap_malloc.exit.i.i ]
  ret ptr %.1.i.i
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 23) i32 @mi_dupenv_s(ptr noundef writeonly captures(address_is_null) %0, ptr noundef writeonly captures(address_is_null) %1, ptr noundef readonly captures(address_is_null) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %1, align 8, !tbaa !105
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = tail call ptr @getenv(ptr noundef nonnull %2) #55 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %0, align 8, !tbaa !106
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !54   ; 2 uses
  %i.g = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.c) #61 ; 4 uses
  %i.h = add i64 %i.g, 1                          ; 2 uses
  %i.i = icmp ult i64 %i.h, 1025
  br i1 %i.i, label %bb.g, label %mi_heap_malloc.exit.i.i, !prof !55

bb.g:                                             ; preds = %bb.f
  %i.j = add nsw i64 %i.g, 8
  %i.k = lshr i64 %i.j, 3
  %i.l = getelementptr i8, ptr %i.f, i64 8
  %i.m = getelementptr [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !53   ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 16       ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !11   ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %mi_heap_malloc.exit.i.i, label %mi_heap_malloc.exit.thread.i.i, !prof !17

mi_heap_malloc.exit.thread.i.i:                   ; preds = %bb.g
  %i.r = getelementptr i8, ptr %i.n, i64 24       ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !18
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 8, !tbaa !18
  %i.u = load atomic i64, ptr %i.p monotonic, align 8
  %i.v = inttoptr i64 %i.u to ptr
  store ptr %i.v, ptr %i.o, align 8, !tbaa !11
  br label %mi_strdup.exit

mi_heap_malloc.exit.i.i:                          ; preds = %bb.g, %bb.f
  %i.w = tail call noalias ptr @_mi_malloc_generic(ptr noundef %i.f, i64 noundef %i.h, i1 noundef zeroext false, i64 noundef 0) ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %mi_strdup.exit.thread, label %mi_strdup.exit

mi_strdup.exit.thread:                            ; preds = %mi_heap_malloc.exit.i.i
  store ptr null, ptr %0, align 8, !tbaa !106
  br label %bb.h

mi_strdup.exit:                                   ; preds = %mi_heap_malloc.exit.thread.i.i, %mi_heap_malloc.exit.i.i
  %.0.i.i.i14.i.i = phi ptr [ %i.p, %mi_heap_malloc.exit.thread.i.i ], [ %i.w, %mi_heap_malloc.exit.i.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i.i.i14.i.i, ptr nonnull readonly align 1 %i.c, i64 %i.g, i1 false)
  %i.y = getelementptr i8, ptr %.0.i.i.i14.i.i, i64 %i.g
  store i8 0, ptr %i.y, align 1, !tbaa !60
  store ptr %.0.i.i.i14.i.i, ptr %0, align 8, !tbaa !106
  br i1 %.not, label %bb.h, label %_mi_strlen.exit

_mi_strlen.exit:                                  ; preds = %mi_strdup.exit
  %strlen.i = tail call i64 @strlen(ptr nonnull readonly dereferenceable(1) %i.c)
  store i64 %strlen.i, ptr %1, align 8, !tbaa !105
  br label %bb.h

bb.h:                                             ; preds = %mi_strdup.exit.thread, %mi_strdup.exit, %_mi_strlen.exit, %bb.e, %bb.a
  %.1 = phi i32 [ 22, %bb.a ], [ 0, %mi_strdup.exit ], [ 0, %bb.e ], [ 0, %_mi_strlen.exit ], [ 12, %mi_strdup.exit.thread ]
end_hunk_1
begin_hunk_2_@mi_segments_page_alloc:bb.a
bb.f:                                             ; preds = %.lr.ph.i
  %i.ao = ptrtoint ptr %.03657.i to i64           ; 2 uses
  %i.ap = add i64 %i.ao, -1
  %i.aq = and i64 %i.ap, -33554432                ; 2 uses
  %i.ar = inttoptr i64 %i.aq to ptr               ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 20
  %i.at = load i32, ptr %i.as, align 4, !tbaa !110
  %i.au = icmp eq i32 %i.at, 6
  br i1 %i.au, label %bb.g, label %_mi_arena_memid_is_suitable.exit.i

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !60
  %i.ax = icmp eq i32 %i.aw, %i.h
  br i1 %i.ax, label %.split.us.i, label %_mi_arena_memid_is_suitable.exit.i

.split.us.i:                                      ; preds = %bb.g, %bb.d, %bb.c
  %i.ay = phi i32 [ %i.w, %bb.d ], [ %i.w, %bb.c ], [ %i.am, %bb.g ]
  %i.az = phi ptr [ %.03655.us.i, %bb.d ], [ %.03655.us.i, %bb.c ], [ %.03655.i, %bb.g ]
  %.us-phi.i = phi i64 [ %i.aa, %bb.d ], [ %i.aa, %bb.c ], [ %i.aq, %bb.g ]
  %.us-phi58.i = phi ptr [ %.03778.us.i, %bb.d ], [ %.03778.us.i, %bb.c ], [ %.03778.i, %bb.g ] ; 2 uses
  %.us-phi59.i = phi i64 [ %i.y, %bb.d ], [ %i.y, %bb.c ], [ %i.ao, %bb.g ]
  %.us-phi60.i = phi ptr [ %i.ab, %bb.d ], [ %i.ab, %bb.c ], [ %i.ar, %bb.g ] ; 4 uses
  %.us-phi61.i = phi i64 [ %i.x, %bb.d ], [ %i.x, %bb.c ], [ %i.an, %bb.g ] ; 3 uses
  %.us-phi62.i = phi ptr [ %.03657.us.us.i, %bb.d ], [ %.03657.us.us.i, %bb.c ], [ %.03657.i, %bb.g ] ; 7 uses
  %i.ba = getelementptr i8, ptr %.us-phi62.i, i64 64 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !264 ; 3 uses
  %.not.i.i = icmp eq ptr %i.bb, null
  %.phi.trans.insert.i = getelementptr i8, ptr %.us-phi62.i, i64 56 ; 2 uses
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !197 ; 4 uses
  br i1 %.not.i.i, label %.split.us._crit_edge.i, label %bb.h

bb.h:                                             ; preds = %.split.us.i
  %i.bc = getelementptr i8, ptr %i.bb, i64 56
  store ptr %.pre.i, ptr %i.bc, align 8, !tbaa !197
  br label %.split.us._crit_edge.i

.split.us._crit_edge.i:                           ; preds = %bb.h, %.split.us.i
  %i.bd = icmp eq ptr %.us-phi62.i, %i.az
  br i1 %i.bd, label %bb.i, label %._crit_edge.i.i

bb.i:                                             ; preds = %.split.us._crit_edge.i
  store ptr %.pre.i, ptr %.us-phi58.i, align 8, !tbaa !287
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.i, %.split.us._crit_edge.i
  %.not19.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not19.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.be = getelementptr i8, ptr %.pre.i, i64 64
  store ptr %i.bb, ptr %i.be, align 8, !tbaa !264
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i
  %i.bf = getelementptr i8, ptr %.us-phi58.i, i64 8 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !289
  %i.bh = icmp eq ptr %.us-phi62.i, %i.bg
  br i1 %i.bh, label %bb.l, label %mi_span_queue_delete.exit.i

bb.l:                                             ; preds = %bb.k
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !264
  store ptr %i.bi, ptr %i.bf, align 8, !tbaa !289
  br label %mi_span_queue_delete.exit.i

mi_span_queue_delete.exit.i:                      ; preds = %bb.l, %bb.k
  %i.bj = getelementptr i8, ptr %.us-phi62.i, i64 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.phi.trans.insert.i, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.bj, align 4, !tbaa !21
  %i.bk = icmp samesign ult i64 %spec.store.select.i, %.us-phi61.i
  %reass.sub = sub i64 %.us-phi59.i, %.us-phi.i   ; 2 uses
  %i.bl = add i64 %reass.sub, -264
  br i1 %i.bk, label %bb.m, label %mi_span_queue_delete.exit._crit_edge.i

bb.m:                                             ; preds = %mi_span_queue_delete.exit.i
  %i.bm = sub nuw nsw i64 %.us-phi61.i, %spec.store.select.i ; 5 uses
  %i.bn = getelementptr i8, ptr %.us-phi60.i, i64 240
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !286
  %i.bp = icmp eq i32 %i.bo, 1
  br i1 %i.bp, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = getelementptr i8, ptr %.us-phi60.i, i64 256
  %i.br = load atomic i64, ptr %i.bq seq_cst, align 8, !tbaa !292
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bt = icmp samesign ult i64 %i.bm, 9
  br i1 %i.bt, label %mi_span_queue_for.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bu = add nsw i64 %i.bm, -1                   ; 2 uses
  %i.bv = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bu, i1 true) ; 2 uses
  %i.bw = shl nuw nsw i64 %i.bv, 2
  %i.bx = sub nuw nsw i64 61, %i.bv
  %i.by = lshr i64 %i.bu, %i.bx
  %i.bz = and i64 %i.by, 3
  %i.ca = or disjoint i64 %i.bz, %i.bw
  %i.cb = xor i64 %i.ca, 252
  %i.cc = add nsw i64 %i.cb, -4
  br label %mi_span_queue_for.exit.i.i.i

mi_span_queue_for.exit.i.i.i:                     ; preds = %bb.p, %bb.o
  %.1.i.i.i.i.i.i = phi i64 [ %i.bm, %bb.o ], [ %i.cc, %bb.p ]
  %i.cd = getelementptr [24 x i8], ptr %3, i64 %.1.i.i.i.i.i.i
  br label %bb.q

bb.q:                                             ; preds = %mi_span_queue_for.exit.i.i.i, %bb.n, %bb.m
  %i.ce = phi ptr [ %i.cd, %mi_span_queue_for.exit.i.i.i ], [ null, %bb.n ], [ null, %bb.m ] ; 4 uses
  %i.cf = getelementptr i8, ptr %.us-phi60.i, i64 %reass.sub ; 2 uses
  %i.cg = getelementptr [80 x i8], ptr %i.cf, i64 %spec.store.select.i ; 8 uses
  %i.ch = trunc nuw i64 %i.bm to i32              ; 2 uses
  store i32 %i.ch, ptr %i.cg, align 8, !tbaa !52
  %i.ci = getelementptr i8, ptr %i.cg, i64 4
  store i32 0, ptr %i.ci, align 4, !tbaa !59
  %i.cj = icmp samesign ugt i64 %i.bm, 1
  br i1 %i.cj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ck = getelementptr [80 x i8], ptr %i.cf, i64 %.us-phi61.i ; 3 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 -80
  store i32 0, ptr %i.cl, align 8, !tbaa !52
  %i.cm = mul i32 %i.ch, 80
  %i.cn = add i32 %i.cm, -80
  %i.co = getelementptr i8, ptr %i.ck, i64 -76
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !59
  %i.cp = getelementptr i8, ptr %i.ck, i64 -52
  store i32 0, ptr %i.cp, align 4, !tbaa !21
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.not.i.i42.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i42.i, label %mi_segment_slice_split.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cq = getelementptr i8, ptr %i.cg, i64 64
  store ptr null, ptr %i.cq, align 8, !tbaa !264
  %i.cr = load ptr, ptr %i.ce, align 8, !tbaa !287 ; 3 uses
  %i.cs = getelementptr i8, ptr %i.cg, i64 56
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !197
  store ptr %i.cg, ptr %i.ce, align 8, !tbaa !287
  %.not.i26.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i26.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ct = getelementptr i8, ptr %i.cr, i64 64
  store ptr %i.cg, ptr %i.ct, align 8, !tbaa !264
  br label %mi_segment_slice_split.exit.i

bb.v:                                             ; preds = %bb.t
  %i.cu = getelementptr i8, ptr %i.ce, i64 8
  store ptr %i.cg, ptr %i.cu, align 8, !tbaa !289
  br label %mi_segment_slice_split.exit.i

mi_segment_slice_split.exit.i:                    ; preds = %bb.v, %bb.u, %bb.s
  %i.cv = getelementptr i8, ptr %i.cg, i64 28
  store i32 0, ptr %i.cv, align 4, !tbaa !21
  %i.cw = trunc nuw nsw i64 %spec.store.select.i to i32 ; 2 uses
  store i32 %i.cw, ptr %.us-phi62.i, align 8, !tbaa !52
  br label %mi_span_queue_delete.exit._crit_edge.i

mi_span_queue_delete.exit._crit_edge.i:           ; preds = %mi_segment_slice_split.exit.i, %mi_span_queue_delete.exit.i
  %i.cx = phi i32 [ %i.cw, %mi_segment_slice_split.exit.i ], [ %i.ay, %mi_span_queue_delete.exit.i ]
  %i.cy = sdiv exact i64 %i.bl, 80
  %i.cz = zext i32 %i.cx to i64
  %i.da = getelementptr i8, ptr %3, i64 896       ; 2 uses
  %.val.i = load ptr, ptr %i.da, align 8, !tbaa !201
  %i.db = tail call fastcc ptr @mi_segment_span_allocate(ptr noundef nonnull %.us-phi60.i, i64 noundef %i.cy, i64 noundef %i.cz, ptr %.val.i) ; 3 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %bb.w, label %mi_segments_page_find_and_allocate.exit

bb.w:                                             ; preds = %mi_span_queue_delete.exit._crit_edge.i
  %i.dd = tail call fastcc ptr @mi_segment_span_free_coalesce(ptr noundef nonnull %.us-phi62.i, ptr noundef nonnull %3) ; 0 uses
  br label %.loopexit

_mi_arena_memid_is_suitable.exit.i:               ; preds = %bb.g, %bb.f, %.lr.ph.i
  %i.de = getelementptr i8, ptr %.03657.i, i64 56
  %.036.i = load ptr, ptr %i.de, align 8, !tbaa !53 ; 2 uses
  %.not39.i = icmp eq ptr %.036.i, null
  br i1 %.not39.i, label %._crit_edge.split.i, label %.lr.ph.i, !llvm.loop !314

._crit_edge.split.i:                              ; preds = %_mi_arena_memid_is_suitable.exit.i, %.preheader.i
  %i.df = getelementptr i8, ptr %.03778.i, i64 24 ; 2 uses
  %.not.i = icmp ugt ptr %i.df, %i.t
  br i1 %.not.i, label %.loopexit, label %.preheader.i, !llvm.loop !313

.loopexit:                                        ; preds = %._crit_edge.split.i, %._crit_edge.split.us.us.i, %bb.w, %mi_span_queue_for.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store i8 0, ptr %i.a, align 1, !tbaa !125
  %i.dg = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 680), align 8, !tbaa !111
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.x, label %mi_option_get_clamp.exit.i.i, !prof !17

bb.x:                                             ; preds = %.loopexit
  tail call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 672)), !inline_history !113
  br label %mi_option_get_clamp.exit.i.i

mi_option_get_clamp.exit.i.i:                     ; preds = %bb.x, %.loopexit
  %i.di = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 672), align 16, !tbaa !114
  %i.dj = tail call i64 @llvm.smax.i64(i64 %i.di, i64 8)
  %i.dk = tail call i64 @llvm.umin.i64(i64 %i.dj, i64 1024)
  %i.dl = getelementptr i8, ptr %3, i64 912       ; 2 uses
  %i.dm = getelementptr i8, ptr %3, i64 896
  br label %bb.y

bb.y:                                             ; preds = %select.unfold.i.i, %mi_option_get_clamp.exit.i.i
  %.in.i.i = phi i64 [ %i.dk, %mi_option_get_clamp.exit.i.i ], [ %i.dn, %select.unfold.i.i ] ; 2 uses
  %i.dn = add nsw i64 %.in.i.i, -1
  %i.do = load ptr, ptr %i.dl, align 8, !tbaa !294 ; 9 uses
  %i.dp = getelementptr i8, ptr %i.do, i64 64     ; 7 uses
  %i.dq = load atomic i64, ptr %i.dp monotonic, align 64
  %i.dr = icmp ult i64 %i.dq, 33554432
  br i1 %i.dr, label %bb.z, label %mi_abandoned_visited_revisit.exit.thread.i.i.i, !prof !55

bb.z:                                             ; preds = %bb.y
  %i.ds = load atomic ptr, ptr %i.do monotonic, align 64
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %mi_segment_try_reclaim.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.du = atomicrmw xchg ptr %i.do, ptr null acq_rel, align 64 ; 4 uses
  %.not54.i.i.i.i = icmp eq ptr %i.du, null
  br i1 %.not54.i.i.i.i, label %mi_segment_try_reclaim.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dv = load atomic i64, ptr %i.dp monotonic, align 64 ; 3 uses
  %i.dw = icmp ult i64 %i.dv, 33554432
  br i1 %i.dw, label %bb.ac, label %.critedge.i.i.i.i.preheader

.critedge.i.i.i.i.preheader:                      ; preds = %bb.ac, %bb.ab
  br label %.critedge.i.i.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.dx = getelementptr i8, ptr %i.do, i64 192    ; 2 uses
  %i.dy = load atomic i64, ptr %i.dx monotonic, align 64 ; 2 uses
  %i.dz = add nuw nsw i64 %i.dv, 1
  %i.ea = and i64 %i.dz, 33554431
  %i.eb = ptrtoint ptr %i.du to i64
  %i.ec = or i64 %i.ea, %i.eb
  %i.ed = cmpxchg ptr %i.dp, i64 %i.dv, i64 %i.ec acq_rel acquire, align 64
  %i.ee = extractvalue { i64, i1 } %i.ed, 1
  br i1 %i.ee, label %bb.ad, label %.critedge.i.i.i.i.preheader, !prof !299

bb.ad:                                            ; preds = %bb.ac
  %i.ef = getelementptr i8, ptr %i.do, i64 128
  %i.eg = atomicrmw add ptr %i.ef, i64 %i.dy monotonic, align 64 ; 0 uses
  %i.eh = atomicrmw sub ptr %i.dx, i64 %i.dy monotonic, align 64 ; 0 uses
  br label %mi_abandoned_visited_revisit.exit.thread.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.i.i.i.i.preheader, %.critedge.i.i.i.i
  %.050.i.i.i.i = phi ptr [ %i.ej, %.critedge.i.i.i.i ], [ %i.du, %.critedge.i.i.i.i.preheader ] ; 2 uses
  %i.ei = getelementptr i8, ptr %.050.i.i.i.i, i64 176
  %i.ej = load atomic ptr, ptr %i.ei monotonic, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i.i, label %bb.ae, label %.critedge.i.i.i.i, !llvm.loop !300

bb.ae:                                            ; preds = %.critedge.i.i.i.i
  %i.ek = getelementptr i8, ptr %.050.i.i.i.i, i64 176
  %i.el = load atomic i64, ptr %i.dp monotonic, align 64
  %i.em = getelementptr i8, ptr %i.do, i64 192    ; 2 uses
  %i.en = ptrtoint ptr %i.du to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %bb.ae
  %.051.i.i.i.i = phi i64 [ %i.el, %bb.ae ], [ %i.ew, %bb.af ] ; 3 uses
  %i.eo = load atomic i64, ptr %i.em monotonic, align 64 ; 2 uses
  %i.ep = and i64 %.051.i.i.i.i, -33554432
  %i.eq = inttoptr i64 %i.ep to ptr
  store atomic ptr %i.eq, ptr %i.ek release, align 8
  %i.er = add i64 %.051.i.i.i.i, 1
  %i.es = and i64 %i.er, 33554431
  %i.et = or i64 %i.es, %i.en
  %i.eu = cmpxchg weak ptr %i.dp, i64 %.051.i.i.i.i, i64 %i.et release monotonic, align 64 ; 2 uses
  %i.ev = extractvalue { i64, i1 } %i.eu, 1
  %i.ew = extractvalue { i64, i1 } %i.eu, 0
  br i1 %i.ev, label %bb.ag, label %bb.af, !prof !299, !llvm.loop !301

bb.ag:                                            ; preds = %bb.af
  %i.ex = getelementptr i8, ptr %i.do, i64 128
  %i.ey = atomicrmw add ptr %i.ex, i64 %i.eo monotonic, align 64 ; 0 uses
  %i.ez = atomicrmw sub ptr %i.em, i64 %i.eo monotonic, align 64 ; 0 uses
  br label %mi_abandoned_visited_revisit.exit.thread.i.i.i

mi_abandoned_visited_revisit.exit.thread.i.i.i:   ; preds = %bb.ag, %bb.ad, %bb.y
  %i.fa = getelementptr i8, ptr %i.do, i64 256    ; 3 uses
  %i.fb = atomicrmw add ptr %i.fa, i64 1 monotonic, align 64 ; 0 uses
  %i.fc = load atomic i64, ptr %i.dp acquire, align 64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ai, %mi_abandoned_visited_revisit.exit.thread.i.i.i
  %.029.i.i.i = phi i64 [ %i.fc, %mi_abandoned_visited_revisit.exit.thread.i.i.i ], [ %i.fo, %bb.ai ] ; 3 uses
  %i.fd = and i64 %.029.i.i.i, -33554432          ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.fd, 0
  br i1 %.not.i.i.i, label %mi_abandoned_pop.exit.thread42.i.i, label %bb.ai

mi_abandoned_pop.exit.thread42.i.i:               ; preds = %bb.ah
  %i.fe = atomicrmw sub ptr %i.fa, i64 1 monotonic, align 64 ; 0 uses
  br label %mi_segment_try_reclaim.exit.i

bb.ai:                                            ; preds = %bb.ah
  %i.ff = inttoptr i64 %i.fd to ptr               ; 13 uses
  %i.fg = getelementptr i8, ptr %i.ff, i64 176
  %i.fh = load atomic ptr, ptr %i.fg monotonic, align 16
  %i.fi = add i64 %.029.i.i.i, 1
  %i.fj = and i64 %i.fi, 33554431
  %i.fk = ptrtoint ptr %i.fh to i64
  %i.fl = or i64 %i.fj, %i.fk
  %i.fm = cmpxchg weak ptr %i.dp, i64 %.029.i.i.i, i64 %i.fl acq_rel acquire, align 64 ; 2 uses
  %i.fn = extractvalue { i64, i1 } %i.fm, 1
  %i.fo = extractvalue { i64, i1 } %i.fm, 0
  br i1 %i.fn, label %bb.aj, label %bb.ah, !llvm.loop !302

bb.aj:                                            ; preds = %bb.ai
  %i.fp = getelementptr i8, ptr %i.ff, i64 176    ; 2 uses
  %i.fq = atomicrmw sub ptr %i.fa, i64 1 monotonic, align 64 ; 0 uses
  store atomic ptr null, ptr %i.fp release, align 8
  %i.fr = getelementptr i8, ptr %i.do, i64 128
  %i.fs = atomicrmw sub ptr %i.fr, i64 1 monotonic, align 64 ; 0 uses
  %i.ft = getelementptr i8, ptr %i.ff, i64 200    ; 3 uses
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !297
  %i.fv = add i64 %i.fu, 1
  store i64 %i.fv, ptr %i.ft, align 8, !tbaa !297
  %.0.i37.sroa.539.0..0.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ff, i64 20
  %.0.i37.sroa.539.0.copyload.i.i = load i32, ptr %.0.i37.sroa.539.0..0.i.sroa_idx.i.i, align 4
  %i.fw = load i32, ptr %i.g, align 8, !tbaa !204 ; 3 uses
  %i.fx = icmp eq i32 %.0.i37.sroa.539.0.copyload.i.i, 6
  br i1 %i.fx, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %.0.i37.sroa.4.0..0.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ff, i64 12
  %.0.i37.sroa.4.0.copyload.i.i = load i8, ptr %.0.i37.sroa.4.0..0.i.sroa_idx.i.i, align 4
  %.0.i37.sroa.3.0..0.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %.0.i37.sroa.3.0.copyload.i.i = load i32, ptr %.0.i37.sroa.3.0..0.i.sroa_idx.i.i, align 8
  %i.fy = trunc nuw i8 %.0.i37.sroa.4.0.copyload.i.i to i1
  %.not.i.i.i.i.i = xor i1 %i.fy, true
  %i.fz = icmp eq i32 %i.fw, 0
  %or.cond.i.i.i.i.i = and i1 %i.fz, %.not.i.i.i.i.i
  %i.ga = icmp eq i32 %.0.i37.sroa.3.0.copyload.i.i, %i.fw
  %spec.select.i.i.i.i.i = or i1 %i.ga, %or.cond.i.i.i.i.i
  br label %_mi_heap_memid_is_suitable.exit.i.i

bb.al:                                            ; preds = %bb.aj
  %i.gb = icmp eq i32 %i.fw, 0
  br label %_mi_heap_memid_is_suitable.exit.i.i

_mi_heap_memid_is_suitable.exit.i.i:              ; preds = %bb.al, %bb.ak
  %.0.i.i.i.i = phi i1 [ %spec.select.i.i.i.i.i, %bb.ak ], [ %i.gb, %bb.al ] ; 2 uses
  %i.gc = tail call fastcc zeroext i1 @mi_segment_check_free(ptr noundef %i.ff, i64 noundef range(i64 0, 281474976710656) %i.f, i64 noundef range(i64 0, 16777217) %2, ptr noundef %3)
  %i.gd = getelementptr i8, ptr %i.ff, i64 208
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !67
  %i.gf = icmp eq i64 %i.ge, 0
  br i1 %i.gf, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_mi_heap_memid_is_suitable.exit.i.i
  %i.gg = tail call fastcc ptr @mi_segment_reclaim(ptr noundef %i.ff, ptr noundef nonnull %0, i64 noundef 0, ptr noundef null, ptr noundef %3) ; 0 uses
  br label %select.unfold.i.i

bb.an:                                            ; preds = %_mi_heap_memid_is_suitable.exit.i.i
  %or.cond.i.i = select i1 %i.gc, i1 %.0.i.i.i.i, i1 false
  br i1 %or.cond.i.i, label %.thread.i.i, label %bb.ao

.thread.i.i:                                      ; preds = %bb.an
  %i.gh = call fastcc ptr @mi_segment_reclaim(ptr noundef %i.ff, ptr noundef nonnull %0, i64 noundef range(i64 0, 16777217) %2, ptr noundef nonnull %i.a, ptr noundef %3)
  %i.gi = icmp eq ptr %i.gh, null
  br label %mi_segment_try_reclaim.exit.i

bb.ao:                                            ; preds = %bb.an
  %i.gj = load i64, ptr %i.ft, align 8, !tbaa !297
  %i.gk = icmp ugt i64 %i.gj, 3
  %or.cond3.i.i = select i1 %i.gk, i1 %.0.i.i.i.i, i1 false
  br i1 %or.cond3.i.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.gl = tail call fastcc ptr @mi_segment_reclaim(ptr noundef %i.ff, ptr noundef nonnull %0, i64 noundef 0, ptr noundef null, ptr noundef %3) ; 0 uses
  br label %select.unfold.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.gm = load ptr, ptr %i.dm, align 8, !tbaa !201
  tail call fastcc void @mi_segment_try_purge(ptr noundef nonnull %i.ff, i1 noundef zeroext true, ptr noundef %i.gm)
  %i.gn = load ptr, ptr %i.dl, align 8, !tbaa !294 ; 3 uses
  %i.go = load atomic ptr, ptr %i.gn monotonic, align 64
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %bb.aq
  %.0.i38.i.i = phi ptr [ %i.go, %bb.aq ], [ %i.gr, %bb.ar ] ; 2 uses
  store atomic ptr %.0.i38.i.i, ptr %i.fp release, align 8
  %i.gp = cmpxchg weak ptr %i.gn, ptr %.0.i38.i.i, ptr %i.ff release monotonic, align 64 ; 2 uses
  %i.gq = extractvalue { ptr, i1 } %i.gp, 1
  %i.gr = extractvalue { ptr, i1 } %i.gp, 0
  br i1 %i.gq, label %mi_abandoned_visited_push.exit.i.i, label %bb.ar, !llvm.loop !306

mi_abandoned_visited_push.exit.i.i:               ; preds = %bb.ar
  %i.gs = getelementptr i8, ptr %i.gn, i64 192
  %i.gt = atomicrmw add ptr %i.gs, i64 1 monotonic, align 64 ; 0 uses
  br label %select.unfold.i.i

select.unfold.i.i:                                ; preds = %mi_abandoned_visited_push.exit.i.i, %bb.ap, %bb.am
  %i.gu = icmp sgt i64 %.in.i.i, 1
  br i1 %i.gu, label %bb.y, label %mi_segment_try_reclaim.exit.i, !llvm.loop !315

end_hunk_2
