inline.NumInlined: 1359
inline.NumDeleted: 295
begin_hunk_0_@mi_malloc_usable_size:bb.a
  %i.x = tail call fastcc i64 @mi_page_usable_aligned_size_of(ptr noundef nonnull %i.e, ptr noundef %i.n, ptr noundef %0)
  br label %mi_usable_size.exit

mi_usable_size.exit:                              ; preds = %bb.a, %bb.d, %_mi_segment_page_start.exit.i.i.i.i.i, %bb.e
  %.1.i.i = phi i64 [ 0, %bb.a ], [ %i.x, %bb.e ], [ %i.t, %bb.d ], [ %i.w, %_mi_segment_page_start.exit.i.i.i.i.i ]
  ret i64 %.1.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @mi_malloc_good_size(i64 noundef %0) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp ult i64 %0, 131073
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %0, 7
  %i.c = lshr i64 %i.b, 3                         ; 2 uses
  %i.d = icmp samesign ult i64 %0, 9
  br i1 %i.d, label %mi_bin.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp samesign ult i64 %0, 65
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = add nuw nsw i64 %i.c, 1
  %i.g = and i64 %i.f, 30
  br label %mi_bin.exit.i

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
  br label %mi_bin.exit.i

mi_bin.exit.i:                                    ; preds = %bb.e, %bb.d, %bb.b
  %.0.i.i = phi i64 [ %i.p, %bb.e ], [ %i.g, %bb.d ], [ 1, %bb.b ]
  %i.q = getelementptr [24 x i8], ptr getelementptr inbounds nuw (i8, ptr @_mi_heap_empty, i64 1040), i64 %.0.i.i
  %i.r = getelementptr i8, ptr %i.q, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !61
  br label %mi_good_size.exit

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
  br label %mi_good_size.exit

bb.h:                                             ; preds = %bb.f
  %i.aa = urem i64 %i.x, %i.t
  %i.ab = sub nuw i64 %i.x, %i.aa
  br label %mi_good_size.exit

mi_good_size.exit:                                ; preds = %mi_bin.exit.i, %bb.g, %bb.h
  %.0.i = phi i64 [ %i.s, %mi_bin.exit.i ], [ %i.z, %bb.g ], [ %i.ab, %bb.h ]
  ret i64 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @mi_good_size(i64 noundef %0) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp ult i64 %0, 131073
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %0, 7
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
end_hunk_0
begin_hunk_1_@_mi_os_alloc_aligned:bb.a
  br label %mi_os_prim_free.exit.i

bb.an:                                            ; preds = %mi_atomic_maxi64_relaxed.exit.i.i17.i.i
  %i.ci = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 72), i64 %.0.i.i monotonic, align 8 ; 0 uses
  br label %mi_os_prim_free.exit.i

mi_os_prim_free.exit.i:                           ; preds = %bb.an, %bb.am
  %i.cj = xor i64 %.0.i16, -1
  %.not81.i = icmp ult i64 %.0.i.i, %i.cj
  br i1 %.not81.i, label %bb.ao, label %mi_os_prim_alloc_aligned.exit.thread

bb.ao:                                            ; preds = %mi_os_prim_free.exit.i
  %i.ck = add i64 %.0.i.i, %.0.i16                ; 14 uses
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %mi_os_prim_alloc_aligned.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i8 1, ptr %i.c, align 1, !tbaa !125
  %i.cm = select i1 %2, i32 3, i32 0
  %i.cn = load i8, ptr @mi_os_mem_config.3, align 8, !tbaa !115, !range !42, !noundef !43
  %i.co = trunc nuw i8 %i.cn to i1
  %spec.select.i.i112.i = select i1 %i.co, i32 16418, i32 34
  %.b41 = load i1, ptr @mi_os_mem_config.1, align 8
  %i.cp = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 200), align 8
  %i.cq = icmp eq i32 %i.cp, 0
  %or.cond17.i = select i1 %.b41, i1 %i.cq, i1 false, !prof !126
  br i1 %or.cond17.i, label %bb.aq, label %unix_mmap_prim.exit125.i, !prof !126

bb.aq:                                            ; preds = %bb.ap
  tail call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 192)), !inline_history !120
  br label %unix_mmap_prim.exit125.i

unix_mmap_prim.exit125.i:                         ; preds = %bb.aq, %bb.ap
  store i8 0, ptr %i.b, align 1, !tbaa !125
  %i.cr = tail call ptr @mmap64(ptr noundef null, i64 noundef %i.ck, i32 noundef range(i32 0, 4) %i.cm, i32 noundef range(i32 34, 2013528099) %spec.select.i.i112.i, i32 noundef -1, i64 noundef 0) #55 ; 4 uses
  %magicptr12.i = ptrtoint ptr %i.cr to i64       ; 3 uses
  %magicptr12.off.i = add i64 %magicptr12.i, -1
  %switch13.i = icmp ult i64 %magicptr12.off.i, -2
  br i1 %switch13.i, label %bb.as, label %_mi_prim_alloc.exit118.i

_mi_prim_alloc.exit118.i:                         ; preds = %unix_mmap_prim.exit125.i
  %i.cs = tail call ptr @__errno_location() #63
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !7  ; 3 uses
  %.not.i97.i = icmp eq i32 %i.ct, 0
  br i1 %.not.i97.i, label %mi_os_prim_alloc_aligned.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %_mi_prim_alloc.exit118.i
  %i.cu = zext i1 %2 to i32
  tail call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.95, i32 noundef %i.ct, i32 noundef %i.ct, i64 noundef %i.ck, i64 noundef 1, i32 noundef %i.cu, i32 noundef 0)
  br label %mi_os_prim_alloc_aligned.exit.thread

bb.as:                                            ; preds = %unix_mmap_prim.exit125.i
  %i.cv = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 88), i64 %i.ck monotonic, align 8
  %i.cw = add i64 %i.cv, %i.ck                    ; 2 uses
  %i.cx = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 80) monotonic, align 16
  br label %bb.at

bb.at:                                            ; preds = %bb.au, %bb.as
  %.0.i.i.i.i99.i = phi i64 [ %i.cx, %bb.as ], [ %i.db, %bb.au ] ; 2 uses
  %i.cy = icmp slt i64 %.0.i.i.i.i99.i, %i.cw
  br i1 %i.cy, label %bb.au, label %mi_atomic_maxi64_relaxed.exit.i.i.i100.i

bb.au:                                            ; preds = %bb.at
  %i.cz = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 80), i64 %.0.i.i.i.i99.i, i64 %i.cw release monotonic, align 8 ; 2 uses
  %i.da = extractvalue { i64, i1 } %i.cz, 1
  %i.db = extractvalue { i64, i1 } %i.cz, 0
  br i1 %i.da, label %mi_atomic_maxi64_relaxed.exit.i.i.i100.i, label %bb.at, !llvm.loop !124

mi_atomic_maxi64_relaxed.exit.i.i.i100.i:         ; preds = %bb.au, %bb.at
  %i.dc = icmp sgt i64 %i.ck, 0                   ; 2 uses
  br i1 %i.dc, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %mi_atomic_maxi64_relaxed.exit.i.i.i100.i
  %i.dd = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 64), i64 %i.ck monotonic, align 8 ; 0 uses
  br label %_mi_stat_increase.exit.i101.i

bb.aw:                                            ; preds = %mi_atomic_maxi64_relaxed.exit.i.i.i100.i
  %i.de = atomicrmw sub ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 72), i64 %i.ck monotonic, align 8 ; 0 uses
  br label %_mi_stat_increase.exit.i101.i

_mi_stat_increase.exit.i101.i:                    ; preds = %bb.aw, %bb.av
  br i1 %2, label %bb.ax, label %mi_os_prim_alloc.exit106.i

bb.ax:                                            ; preds = %_mi_stat_increase.exit.i101.i
  %i.df = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 120), i64 %i.ck monotonic, align 8
  %i.dg = add i64 %i.df, %i.ck                    ; 2 uses
  %i.dh = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 112) monotonic, align 16
  br label %bb.ay

bb.ay:                                            ; preds = %bb.az, %bb.ax
  %.0.i.i.i26.i104.i = phi i64 [ %i.dh, %bb.ax ], [ %i.dl, %bb.az ] ; 2 uses
  %i.di = icmp slt i64 %.0.i.i.i26.i104.i, %i.dg
  br i1 %i.di, label %bb.az, label %mi_atomic_maxi64_relaxed.exit.i.i27.i105.i

bb.az:                                            ; preds = %bb.ay
  %i.dj = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 112), i64 %.0.i.i.i26.i104.i, i64 %i.dg release monotonic, align 8 ; 2 uses
  %i.dk = extractvalue { i64, i1 } %i.dj, 1
  %i.dl = extractvalue { i64, i1 } %i.dj, 0
  br i1 %i.dk, label %mi_atomic_maxi64_relaxed.exit.i.i27.i105.i, label %bb.ay, !llvm.loop !124

mi_atomic_maxi64_relaxed.exit.i.i27.i105.i:       ; preds = %bb.az, %bb.ay
  br i1 %i.dc, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %mi_atomic_maxi64_relaxed.exit.i.i27.i105.i
  %i.dm = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 96), i64 %i.ck monotonic, align 8 ; 0 uses
  br label %mi_os_prim_alloc.exit106.i

bb.bb:                                            ; preds = %mi_atomic_maxi64_relaxed.exit.i.i27.i105.i
  %i.dn = atomicrmw sub ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 104), i64 %i.ck monotonic, align 8 ; 0 uses
  br label %mi_os_prim_alloc.exit106.i

mi_os_prim_alloc.exit106.i:                       ; preds = %bb.bb, %bb.ba, %_mi_stat_increase.exit.i101.i
  %i.do = icmp eq ptr %i.cr, null
  br i1 %i.do, label %mi_os_prim_alloc_aligned.exit.thread, label %mi_align_up_ptr.exit108.i

mi_align_up_ptr.exit108.i:                        ; preds = %mi_os_prim_alloc.exit106.i
  %i.dp = add i64 %i.bi, %magicptr12.i
  %i.dq = sub i64 0, %.0.i16
  %i.dr = and i64 %i.dp, %i.dq                    ; 2 uses
  %i.ds = inttoptr i64 %i.dr to ptr               ; 4 uses
  %i.dt = sub i64 %i.dr, %magicptr12.i            ; 2 uses
  %i.du = load i64, ptr @mi_os_mem_config.0, align 8, !tbaa !91 ; 4 uses
  %i.dv = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.du)
  %i.dw = icmp samesign ult i64 %i.dv, 2
  %i.dx = add i64 %.0.i.i, -1
  %i.dy = add i64 %i.dx, %i.du                    ; 3 uses
  br i1 %i.dw, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %mi_align_up_ptr.exit108.i
  %i.dz = sub i64 0, %i.du
  %i.ea = and i64 %i.dy, %i.dz
  br label %_mi_align_up.exit110.i

bb.bd:                                            ; preds = %mi_align_up_ptr.exit108.i
  %i.eb = urem i64 %i.dy, %i.du
  %i.ec = sub nuw i64 %i.dy, %i.eb
  br label %_mi_align_up.exit110.i

_mi_align_up.exit110.i:                           ; preds = %bb.bd, %bb.bc
  %.0.i109.i = phi i64 [ %i.ea, %bb.bc ], [ %i.ec, %bb.bd ] ; 2 uses
  %i.ed = add i64 %.0.i109.i, %i.dt               ; 2 uses
  %i.ee = sub i64 %i.ck, %i.ed
  %.not82.i = icmp eq ptr %i.cr, %i.ds
  br i1 %.not82.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %_mi_align_up.exit110.i
  tail call fastcc void @mi_os_prim_free(ptr noundef nonnull %i.cr, i64 noundef %i.dt, i1 noundef zeroext %2)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %_mi_align_up.exit110.i
  %.not83.i = icmp eq i64 %i.ck, %i.ed
  br i1 %.not83.i, label %mi_os_prim_alloc_aligned.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ef = getelementptr i8, ptr %i.ds, i64 %.0.i109.i
  tail call fastcc void @mi_os_prim_free(ptr noundef %i.ef, i64 noundef %i.ee, i1 noundef zeroext %2)
  br label %mi_os_prim_alloc_aligned.exit

mi_os_prim_alloc_aligned.exit:                    ; preds = %bb.bf, %bb.bg, %mi_os_prim_alloc.exit.i
  %.2.i = phi ptr [ %i.an, %mi_os_prim_alloc.exit.i ], [ %i.ds, %bb.bf ], [ %i.ds, %bb.bg ] ; 3 uses
  %.not = icmp eq ptr %.2.i, null
  br i1 %.not, label %mi_os_prim_alloc_aligned.exit.thread, label %bb.bh

bb.bh:                                            ; preds = %mi_os_prim_alloc_aligned.exit
  %i.eg = load i8, ptr %i.c, align 1, !tbaa !125, !range !42, !noundef !43
  %i.eh = load i8, ptr %i.b, align 1, !tbaa !125, !range !42, !noundef !43
  %i.ei = zext i1 %2 to i8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 %i.eh, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !125
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 %i.ei, ptr %.sroa.5.0..sroa_idx, align 1, !tbaa !125
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 18
  store i8 %i.eg, ptr %.sroa.6.0..sroa_idx, align 2, !tbaa !125
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 19
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 3, ptr %.sroa.718.0..sroa_idx, align 4, !tbaa !7
  store ptr %.2.i, ptr %4, align 8, !tbaa !60
  %i.ej = getelementptr i8, ptr %4, i64 8
  store i64 %.0.i16, ptr %i.ej, align 8, !tbaa !60
  br label %mi_os_prim_alloc_aligned.exit.thread

mi_os_prim_alloc_aligned.exit.thread:             ; preds = %bb.ao, %_mi_align_up.exit.i, %mi_os_prim_alloc.exit.thread3.i, %mi_os_prim_alloc.exit106.i, %bb.ar, %_mi_prim_alloc.exit118.i, %mi_os_prim_free.exit.i, %_mi_align_up.exit, %bb.bh, %mi_os_prim_alloc_aligned.exit
  %.2.i23 = phi ptr [ null, %mi_os_prim_alloc_aligned.exit ], [ %.2.i, %bb.bh ], [ null, %_mi_align_up.exit ], [ null, %mi_os_prim_free.exit.i ], [ null, %_mi_prim_alloc.exit118.i ], [ null, %bb.ar ], [ null, %mi_os_prim_alloc.exit106.i ], [ null, %_mi_align_up.exit.i ], [ null, %bb.ao ], [ null, %mi_os_prim_alloc.exit.thread3.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  br label %bb.bi

bb.bi:                                            ; preds = %bb.a, %mi_os_prim_alloc_aligned.exit.thread
  %.0 = phi ptr [ %.2.i23, %mi_os_prim_alloc_aligned.exit.thread ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @_mi_arena_alloc(i64 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i32 noundef %3, ptr noundef writeonly captures(none) initializes((0, 24)) %4, ptr noundef readonly captures(none) %5) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @_mi_arena_alloc_aligned(i64 noundef %0, i64 noundef 33554432, i64 noundef 0, i1 noundef zeroext %1, i1 noundef zeroext %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @mi_arena_area(i32 noundef %0, ptr noundef writeonly captures(address_is_null) %1) local_unnamed_addr #16 {
bb.a:
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %1, align 8, !tbaa !105
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = icmp slt i32 %0, 1
  %i.b = add nsw i32 %0, -1
  %i.c = select i1 %i.a, i32 112, i32 %i.b        ; 2 uses
  %i.d = icmp samesign ugt i32 %i.c, 111
  br i1 %i.d, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = zext nneg i32 %i.c to i64
  %i.f = getelementptr [8 x i8], ptr @mi_arenas, i64 %i.e
  %i.g = load atomic ptr, ptr %i.f acquire, align 8 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr i8, ptr %i.g, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !100
  %i.k = shl i64 %i.j, 25
  store i64 %i.k, ptr %1, align 8, !tbaa !105
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = getelementptr i8, ptr %i.g, i64 32
  %i.m = load atomic ptr, ptr %i.l seq_cst, align 8, !tbaa !98
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d, %bb.c
  %.1 = phi ptr [ null, %bb.c ], [ %i.m, %bb.g ], [ null, %bb.d ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_arena_free(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef readonly byval(%struct.mi_memid_s) align 8 captures(none) %3, ptr noundef captures(address) %4) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq i64 %1, 0
  %or.cond3 = or i1 %i.a, %i.b
  br i1 %or.cond3, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne i64 %2, %1                       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !110  ; 2 uses
  %i.f = add i32 %i.e, -3
  %i.g = icmp ult i32 %i.f, 3
  br i1 %i.g, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ne i64 %2, 0
  %or.cond = and i1 %i.c, %i.h
  br i1 %or.cond, label %bb.d, label %_mi_stat_decrease.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %4, i64 96         ; 5 uses
  %i.j = sub i64 0, %2                            ; 2 uses
  %i.k = icmp uge ptr %i.i, @_mi_stats_main
  %i.l = icmp ult ptr %i.i, getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 640)
  %i.m = select i1 %i.k, i1 %i.l, i1 false
  %i.n = getelementptr i8, ptr %4, i64 120        ; 3 uses
  br i1 %i.m, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.o = atomicrmw sub ptr %i.n, i64 %2 monotonic, align 8
  %i.p = getelementptr i8, ptr %4, i64 112        ; 2 uses
  %i.q = sub i64 %i.o, %2                         ; 2 uses
  %i.r = load atomic i64, ptr %i.p monotonic, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.0.i.i.i = phi i64 [ %i.r, %bb.e ], [ %i.v, %bb.g ] ; 2 uses
  %i.s = icmp slt i64 %.0.i.i.i, %i.q
  br i1 %i.s, label %bb.g, label %mi_atomic_maxi64_relaxed.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.t = cmpxchg weak ptr %i.p, i64 %.0.i.i.i, i64 %i.q release monotonic, align 8 ; 2 uses
  %i.u = extractvalue { i64, i1 } %i.t, 1
  %i.v = extractvalue { i64, i1 } %i.t, 0
  br i1 %i.u, label %mi_atomic_maxi64_relaxed.exit.i.i, label %bb.f, !llvm.loop !124

mi_atomic_maxi64_relaxed.exit.i.i:                ; preds = %bb.g, %bb.f
  %i.w = icmp sgt i64 %i.j, 0
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %mi_atomic_maxi64_relaxed.exit.i.i
  %i.x = atomicrmw sub ptr %i.i, i64 %2 monotonic, align 8 ; 0 uses
  br label %_mi_stat_decrease.exit

bb.i:                                             ; preds = %mi_atomic_maxi64_relaxed.exit.i.i
  %i.y = getelementptr i8, ptr %4, i64 104
  %i.z = atomicrmw add ptr %i.y, i64 %2 monotonic, align 8 ; 0 uses
  br label %_mi_stat_decrease.exit

bb.j:                                             ; preds = %bb.d
  %i.aa = load i64, ptr %i.n, align 8, !tbaa !127
  %i.ab = sub i64 %i.aa, %2                       ; 3 uses
  store i64 %i.ab, ptr %i.n, align 8, !tbaa !127
  %i.ac = getelementptr i8, ptr %4, i64 112       ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !128
  %i.ae = icmp sgt i64 %i.ab, %i.ad
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !128
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.af = icmp sgt i64 %i.j, 0
  br i1 %i.af, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ag = load i64, ptr %i.i, align 8, !tbaa !129
  %i.ah = sub i64 %i.ag, %2
  store i64 %i.ah, ptr %i.i, align 8, !tbaa !129
  br label %_mi_stat_decrease.exit

bb.n:                                             ; preds = %bb.l
  %i.ai = getelementptr i8, ptr %4, i64 104       ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !130
  %i.ak = add i64 %i.aj, %2
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !130
  br label %_mi_stat_decrease.exit

_mi_stat_decrease.exit:                           ; preds = %bb.n, %bb.m, %bb.i, %bb.h, %bb.c
  tail call void @_mi_os_free_ex(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %3, ptr readnone poison)
  br label %.critedge50

bb.o:                                             ; preds = %bb.b
  %i.al = icmp eq i32 %i.e, 6
  br i1 %i.al, label %bb.p, label %.critedge50

bb.p:                                             ; preds = %bb.o
  %.sroa.0.0.copyload = load i64, ptr %3, align 8 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %i.am = icmp slt i32 %.sroa.4.0.copyload, 1
  %i.an = add nsw i32 %.sroa.4.0.copyload, -1
  %i.ao = select i1 %i.am, i32 112, i32 %i.an
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr [8 x i8], ptr @mi_arenas, i64 %i.ap
  %i.ar = load atomic ptr, ptr %i.aq acquire, align 8 ; 6 uses
  %i.as = add i64 %1, 33554431                    ; 2 uses
  %i.at = lshr i64 %i.as, 25                      ; 6 uses
  %i.au = icmp eq ptr %i.ar, null
  br i1 %i.au, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 22, ptr noundef nonnull @.str.4, ptr noundef nonnull %0, i64 noundef %1, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %3)
  br label %.critedge

bb.r:                                             ; preds = %bb.p
  %i.av = getelementptr i8, ptr %i.ar, i64 48
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !131
  %i.ax = lshr i64 %.sroa.0.0.copyload, 6         ; 3 uses
  %.not47 = icmp ugt i64 %i.aw, %i.ax
  br i1 %.not47, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 22, ptr noundef nonnull @.str.5, ptr noundef nonnull %0, i64 noundef %1, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %3)
  br label %.critedge

bb.t:                                             ; preds = %bb.r
  %i.ay = getelementptr i8, ptr %i.ar, i64 24
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !132, !range !42, !noundef !43
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bb = getelementptr i8, ptr %i.ar, i64 120
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !133 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %i.c, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.be = tail call zeroext i1 @_mi_bitmap_unclaim_across(ptr noundef nonnull %i.bc, i64 poison, i64 noundef %i.at, i64 noundef %.sroa.0.0.copyload) ; 0 uses
  %.not48 = icmp eq i64 %2, 0
  br i1 %.not48, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bf = getelementptr i8, ptr %4, i64 96
  tail call void @_mi_stat_decrease(ptr noundef %i.bf, i64 noundef %2)
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %bb.v
  tail call fastcc void @mi_arena_schedule_purge(ptr noundef %i.ar, i64 noundef %.sroa.0.0.copyload, i64 noundef %i.at, ptr noundef %4)
  br label %bb.z

bb.z:                                             ; preds = %bb.t, %bb.u, %bb.y
  %i.bg = getelementptr i8, ptr %i.ar, i64 136    ; 2 uses
  %i.bh = and i64 %.sroa.0.0.copyload, 63         ; 5 uses
  %i.bi = add nuw nsw i64 %i.bh, %i.at
  %i.bj = icmp samesign ult i64 %i.bi, 65
  br i1 %i.bj, label %bb.aa, label %mi_bitmap_mask_.exit24.i.i, !prof !55

bb.aa:                                            ; preds = %bb.z
  %i.bk = icmp ugt i64 %i.as, 2147483647
  br i1 %i.bk, label %._crit_edge.thread.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bl = icmp eq i64 %i.at, 0
  br i1 %i.bl, label %._crit_edge.thread.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %notmask.i.i.i = shl nsw i64 -1, %i.at
  %i.bm = xor i64 %notmask.i.i.i, -1
  %i.bn = shl i64 %i.bm, %i.bh
  br label %._crit_edge.thread.i

mi_bitmap_mask_.exit24.i.i:                       ; preds = %bb.z
  %i.bo = sub nuw nsw i64 64, %i.bh               ; 2 uses
  %i.bp = icmp eq i64 %i.bh, 0
  %notmask.i22.i.i = shl nsw i64 -1, %i.bo
  %i.bq = xor i64 %notmask.i22.i.i, -1
  %i.br = shl i64 %i.bq, %i.bh
  %.0.i23.i.i = select i1 %i.bp, i64 -1, i64 %i.br ; 3 uses
  %i.bs = sub nsw i64 %i.at, %i.bo                ; 3 uses
  %i.bt = lshr i64 %i.bs, 6                       ; 4 uses
  %i.bu = and i64 %i.bs, 63                       ; 2 uses
  %notmask.i25.i.i = shl nsw i64 -1, %i.bu        ; 2 uses
  %i.bv = getelementptr [8 x i8], ptr %i.bg, i64 %i.ax ; 2 uses
  %i.bw = xor i64 %.0.i23.i.i, -1
  %i.bx = atomicrmw and ptr %i.bv, i64 %i.bw acq_rel, align 8
  %i.by = and i64 %i.bx, %.0.i23.i.i
  %.not.i = icmp eq i64 %i.by, %.0.i23.i.i        ; 3 uses
  %.02035.i = getelementptr i8, ptr %i.bv, i64 8  ; 3 uses
  %.not2236.i = icmp eq i64 %i.bt, 0
  br i1 %.not2236.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %mi_bitmap_mask_.exit24.i.i
  %xtraiter = and i64 %i.bt, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.02039.i.prol = phi ptr [ %.020.i.prol, %.lr.ph.i.prol ], [ %.02035.i, %.lr.ph.i.preheader ] ; 2 uses
  %.038.i.prol = phi i64 [ %i.bz, %.lr.ph.i.prol ], [ %i.bt, %.lr.ph.i.preheader ]
  %.137.i.prol = phi i1 [ %spec.select26.i.prol, %.lr.ph.i.prol ], [ %.not.i, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.bz = add nsw i64 %.038.i.prol, -1            ; 2 uses
  %i.ca = atomicrmw xchg ptr %.02039.i.prol, i64 0 acq_rel, align 8
  %.not25.i.prol = icmp eq i64 %i.ca, -1
  %spec.select26.i.prol = select i1 %.not25.i.prol, i1 %.137.i.prol, i1 false ; 3 uses
  %.020.i.prol = getelementptr i8, ptr %.02039.i.prol, i64 8 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !134

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %spec.select26.i.lcssa.unr = phi i1 [ poison, %.lr.ph.i.preheader ], [ %spec.select26.i.prol, %.lr.ph.i.prol ]
  %.020.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.020.i.prol, %.lr.ph.i.prol ]
  %.02039.i.unr = phi ptr [ %.02035.i, %.lr.ph.i.preheader ], [ %.020.i.prol, %.lr.ph.i.prol ]
  %.038.i.unr = phi i64 [ %i.bt, %.lr.ph.i.preheader ], [ %i.bz, %.lr.ph.i.prol ]
  %.137.i.unr = phi i1 [ %.not.i, %.lr.ph.i.preheader ], [ %spec.select26.i.prol, %.lr.ph.i.prol ]
  %i.cb = icmp ult i64 %i.bs, 256
  br i1 %i.cb, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %bb.ac, %bb.ab, %bb.aa
  %.033.ph.i = phi i64 [ -1, %bb.aa ], [ 0, %bb.ab ], [ %i.bn, %bb.ac ] ; 3 uses
  %i.cc = getelementptr [8 x i8], ptr %i.bg, i64 %i.ax
  %i.cd = xor i64 %.033.ph.i, -1
  %i.ce = atomicrmw and ptr %i.cc, i64 %i.cd acq_rel, align 8
  %i.cf = and i64 %i.ce, %.033.ph.i
  %.not47.i = icmp eq i64 %i.cf, %.033.ph.i
  br i1 %.not47.i, label %.critedge50, label %bb.ae

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.02039.i = phi ptr [ %.020.i.3, %.lr.ph.i ], [ %.02039.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.038.i = phi i64 [ %i.cj, %.lr.ph.i ], [ %.038.i.unr, %.lr.ph.i.prol.loopexit ]
  %.137.i = phi i1 [ %spec.select26.i.3, %.lr.ph.i ], [ %.137.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.cg = atomicrmw xchg ptr %.02039.i, i64 0 acq_rel, align 8
  %.not25.i = icmp eq i64 %i.cg, -1
  %.020.i = getelementptr i8, ptr %.02039.i, i64 8
  %i.ch = atomicrmw xchg ptr %.020.i, i64 0 acq_rel, align 8
  %.not25.i.1 = icmp eq i64 %i.ch, -1
  %.020.i.1 = getelementptr i8, ptr %.02039.i, i64 16
  %i.ci = atomicrmw xchg ptr %.020.i.1, i64 0 acq_rel, align 8
  %.not25.i.2 = icmp eq i64 %i.ci, -1
  %.020.i.2 = getelementptr i8, ptr %.02039.i, i64 24
  %i.cj = add nsw i64 %.038.i, -4                 ; 2 uses
  %i.ck = atomicrmw xchg ptr %.020.i.2, i64 0 acq_rel, align 8
  %.not25.i.3 = icmp eq i64 %i.ck, -1
  %i.cl = select i1 %.not25.i.3, i1 %.not25.i.2, i1 false
  %i.cm = select i1 %i.cl, i1 %.not25.i.1, i1 false
  %i.cn = select i1 %i.cm, i1 %.not25.i, i1 false
  %spec.select26.i.3 = select i1 %i.cn, i1 %.137.i, i1 false ; 2 uses
  %.020.i.3 = getelementptr i8, ptr %.02039.i, i64 32 ; 2 uses
  %.not22.i.3 = icmp eq i64 %i.cj, 0
  br i1 %.not22.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !136

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %mi_bitmap_mask_.exit24.i.i
  %.1.lcssa.i = phi i1 [ %.not.i, %mi_bitmap_mask_.exit24.i.i ], [ %spec.select26.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %spec.select26.i.3, %.lr.ph.i ] ; 2 uses
  %.020.lcssa.i = phi ptr [ %.02035.i, %mi_bitmap_mask_.exit24.i.i ], [ %.020.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.020.i.3, %.lr.ph.i ]
  %.not23.i = icmp eq i64 %i.bu, 0
  br i1 %.not23.i, label %_mi_bitmap_unclaim_across.exit, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge.i
  %i.co = atomicrmw and ptr %.020.lcssa.i, i64 %notmask.i25.i.i acq_rel, align 8
  %i.cp = or i64 %i.co, %notmask.i25.i.i
  %.not24.i = icmp eq i64 %i.cp, -1
  %spec.select27.i = select i1 %.not24.i, i1 %.1.lcssa.i, i1 false
  br i1 %spec.select27.i, label %.critedge50, label %bb.ae

_mi_bitmap_unclaim_across.exit:                   ; preds = %._crit_edge.i
  br i1 %.1.lcssa.i, label %.critedge50, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge.thread.i, %bb.ad, %_mi_bitmap_unclaim_across.exit
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 11, ptr noundef nonnull @.str.6, ptr noundef nonnull %0, i64 noundef %1)
  br label %.critedge

.critedge50:                                      ; preds = %_mi_bitmap_unclaim_across.exit, %bb.ad, %._crit_edge.thread.i, %bb.o, %_mi_stat_decrease.exit
  tail call fastcc void @mi_arenas_try_purge(i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef %4)
  br label %.critedge

.critedge:                                        ; preds = %bb.q, %bb.s, %bb.ae, %.critedge50, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nounwind memory(argmem: readwrite) uwtable
define hidden void @_mi_stat_decrease(ptr noundef captures(address) %0, i64 noundef %1) local_unnamed_addr #17 {
bb.a:
  %i.a = sub i64 0, %1                            ; 2 uses
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %mi_stat_update.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp uge ptr %0, @_mi_stats_main
  %i.d = icmp ult ptr %0, getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 640)
  %i.e = select i1 %i.c, i1 %i.d, i1 false
  %i.f = getelementptr i8, ptr %0, i64 24         ; 3 uses
  br i1 %i.e, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = atomicrmw sub ptr %i.f, i64 %1 monotonic, align 8
  %i.h = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.i = sub i64 %i.g, %1                         ; 2 uses
  %i.j = load atomic i64, ptr %i.h monotonic, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.0.i.i = phi i64 [ %i.j, %bb.c ], [ %i.n, %bb.e ] ; 2 uses
  %i.k = icmp slt i64 %.0.i.i, %i.i
  br i1 %i.k, label %bb.e, label %mi_atomic_maxi64_relaxed.exit.i

bb.e:                                             ; preds = %bb.d
  %i.l = cmpxchg weak ptr %i.h, i64 %.0.i.i, i64 %i.i release monotonic, align 8 ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  %i.n = extractvalue { i64, i1 } %i.l, 0
  br i1 %i.m, label %mi_atomic_maxi64_relaxed.exit.i, label %bb.d, !llvm.loop !124

mi_atomic_maxi64_relaxed.exit.i:                  ; preds = %bb.e, %bb.d
  %i.o = icmp sgt i64 %i.a, 0
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %mi_atomic_maxi64_relaxed.exit.i
  %i.p = atomicrmw sub ptr %0, i64 %1 monotonic, align 8 ; 0 uses
  br label %mi_stat_update.exit

bb.g:                                             ; preds = %mi_atomic_maxi64_relaxed.exit.i
  %i.q = getelementptr i8, ptr %0, i64 8
  %i.r = atomicrmw add ptr %i.q, i64 %1 monotonic, align 8 ; 0 uses
  br label %mi_stat_update.exit

bb.h:                                             ; preds = %bb.b
  %i.s = load i64, ptr %i.f, align 8, !tbaa !127
  %i.t = sub i64 %i.s, %1                         ; 3 uses
  store i64 %i.t, ptr %i.f, align 8, !tbaa !127
  %i.u = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !128
  %i.w = icmp sgt i64 %i.t, %i.v
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i64 %i.t, ptr %i.u, align 8, !tbaa !128
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = icmp sgt i64 %i.a, 0
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.y = load i64, ptr %0, align 8, !tbaa !129
  %i.z = sub i64 %i.y, %1
  store i64 %i.z, ptr %0, align 8, !tbaa !129
  br label %mi_stat_update.exit

bb.l:                                             ; preds = %bb.j
  %i.aa = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !130
  %i.ac = add i64 %i.ab, %1
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !130
  br label %mi_stat_update.exit

mi_stat_update.exit:                              ; preds = %bb.a, %bb.f, %bb.g, %bb.k, %bb.l
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_os_free(ptr noundef %0, i64 noundef %1, ptr noundef readonly byval(%struct.mi_memid_s) align 8 captures(none) %2, ptr noundef readnone captures(none) %3) local_unnamed_addr #2 {
bb.a:
  tail call void @_mi_os_free_ex(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %2, ptr poison)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_error_message(i32 noundef %0, ptr noundef readonly captures(address_is_null) %1, ...) local_unnamed_addr #2 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 72), align 8, !tbaa !111
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %mi_option_is_enabled.exit.i, !prof !17

bb.b:                                             ; preds = %bb.a
  call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 64)), !inline_history !120
  br label %mi_option_is_enabled.exit.i

mi_option_is_enabled.exit.i:                      ; preds = %bb.b, %bb.a
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 64), align 16, !tbaa !114
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %mi_option_is_enabled.exit.i
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 8), align 8, !tbaa !111
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %mi_option_is_enabled.exit3.i, !prof !17

bb.d:                                             ; preds = %bb.c
  call fastcc void @mi_option_init(ptr noundef nonnull @options), !inline_history !120
  br label %mi_option_is_enabled.exit3.i

mi_option_is_enabled.exit3.i:                     ; preds = %bb.d, %bb.c
  %i.f = load i64, ptr @options, align 16, !tbaa !114
  %.not4.i = icmp eq i64 %i.f, 0
  br i1 %.not4.i, label %mi_show_error_message.exit, label %bb.e

bb.e:                                             ; preds = %mi_option_is_enabled.exit3.i
  %i.g = load i64, ptr @mi_max_error_count, align 8, !tbaa !105
  %i.h = icmp sgt i64 %i.g, -1
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = atomicrmw add ptr @error_count, i64 1 acq_rel, align 8
  %i.j = load i64, ptr @mi_max_error_count, align 8, !tbaa !105
  %i.k = icmp sgt i64 %i.i, %i.j
  br i1 %i.k, label %mi_show_error_message.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %mi_option_is_enabled.exit.i
  call fastcc void @mi_vfprintf_thread(ptr noundef nonnull @.str.87, ptr noundef readonly %1, ptr noundef nonnull %2)
  br label %mi_show_error_message.exit

mi_show_error_message.exit:                       ; preds = %mi_option_is_enabled.exit3.i, %bb.f, %bb.g
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.l = load volatile ptr, ptr @mi_error_handler, align 8, !tbaa !40
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %mi_show_error_message.exit
  %i.m = load volatile ptr, ptr @mi_error_handler, align 8, !tbaa !40
  %i.n = load atomic ptr, ptr @mi_error_arg acquire, align 8
  call void %i.m(i32 noundef %0, ptr noundef %i.n) #55
  br label %bb.i

bb.i:                                             ; preds = %mi_show_error_message.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  ret void
}

; Function Attrs: nofree norecurse nounwind memory(argmem: readwrite) uwtable
define hidden zeroext i1 @_mi_bitmap_unclaim_across(ptr noundef captures(none) %0, i64 %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #17 {
bb.a:
  %i.a = lshr i64 %3, 6                           ; 2 uses
  %i.b = and i64 %3, 63                           ; 5 uses
  %i.c = add i64 %i.b, %2
  %i.d = icmp ult i64 %i.c, 65
  br i1 %i.d, label %bb.b, label %mi_bitmap_mask_.exit24.i, !prof !55

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %2, 63
  br i1 %i.e, label %._crit_edge.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %notmask.i.i = shl nsw i64 -1, %2
  %i.g = xor i64 %notmask.i.i, -1
  %i.h = shl i64 %i.g, %i.b
  br label %._crit_edge.thread

mi_bitmap_mask_.exit24.i:                         ; preds = %bb.a
  %i.i = sub nuw nsw i64 64, %i.b                 ; 2 uses
  %i.j = icmp eq i64 %i.b, 0
  %notmask.i22.i = shl nsw i64 -1, %i.i
  %i.k = xor i64 %notmask.i22.i, -1
  %i.l = shl i64 %i.k, %i.b
  %.0.i23.i = select i1 %i.j, i64 -1, i64 %i.l    ; 3 uses
  %i.m = sub i64 %2, %i.i                         ; 3 uses
  %i.n = lshr i64 %i.m, 6                         ; 4 uses
  %i.o = and i64 %i.m, 63                         ; 2 uses
  %notmask.i25.i = shl nsw i64 -1, %i.o           ; 2 uses
  %i.p = getelementptr [8 x i8], ptr %0, i64 %i.a ; 2 uses
  %i.q = xor i64 %.0.i23.i, -1
  %i.r = atomicrmw and ptr %i.p, i64 %i.q acq_rel, align 8
  %i.s = and i64 %i.r, %.0.i23.i
  %.not = icmp eq i64 %i.s, %.0.i23.i             ; 3 uses
  %.02035 = getelementptr i8, ptr %i.p, i64 8     ; 3 uses
  %.not2236 = icmp eq i64 %i.n, 0
  br i1 %.not2236, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %mi_bitmap_mask_.exit24.i
  %xtraiter = and i64 %i.n, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.02039.prol = phi ptr [ %.020.prol, %.lr.ph.prol ], [ %.02035, %.lr.ph.preheader ] ; 2 uses
  %.038.prol = phi i64 [ %i.t, %.lr.ph.prol ], [ %i.n, %.lr.ph.preheader ]
  %.137.prol = phi i1 [ %spec.select26.prol, %.lr.ph.prol ], [ %.not, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.t = add nsw i64 %.038.prol, -1               ; 2 uses
  %i.u = atomicrmw xchg ptr %.02039.prol, i64 0 acq_rel, align 8
  %.not25.prol = icmp eq i64 %i.u, -1
  %spec.select26.prol = select i1 %.not25.prol, i1 %.137.prol, i1 false ; 3 uses
  %.020.prol = getelementptr i8, ptr %.02039.prol, i64 8 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !137

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %spec.select26.lcssa.unr = phi i1 [ poison, %.lr.ph.preheader ], [ %spec.select26.prol, %.lr.ph.prol ]
  %.020.lcssa57.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %.020.prol, %.lr.ph.prol ]
  %.02039.unr = phi ptr [ %.02035, %.lr.ph.preheader ], [ %.020.prol, %.lr.ph.prol ]
  %.038.unr = phi i64 [ %i.n, %.lr.ph.preheader ], [ %i.t, %.lr.ph.prol ]
  %.137.unr = phi i1 [ %.not, %.lr.ph.preheader ], [ %spec.select26.prol, %.lr.ph.prol ]
  %i.v = icmp ult i64 %i.m, 256
  br i1 %i.v, label %._crit_edge, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.b, %bb.c, %bb.d
  %.033.ph = phi i64 [ -1, %bb.b ], [ 0, %bb.c ], [ %i.h, %bb.d ] ; 3 uses
  %i.w = getelementptr [8 x i8], ptr %0, i64 %i.a
  %i.x = xor i64 %.033.ph, -1
  %i.y = atomicrmw and ptr %i.w, i64 %i.x acq_rel, align 8
  %i.z = and i64 %i.y, %.033.ph
  %.not47 = icmp eq i64 %i.z, %.033.ph
  br label %bb.f

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.02039 = phi ptr [ %.020.3, %.lr.ph ], [ %.02039.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.038 = phi i64 [ %i.ad, %.lr.ph ], [ %.038.unr, %.lr.ph.prol.loopexit ]
  %.137 = phi i1 [ %spec.select26.3, %.lr.ph ], [ %.137.unr, %.lr.ph.prol.loopexit ]
  %i.aa = atomicrmw xchg ptr %.02039, i64 0 acq_rel, align 8
  %.not25 = icmp eq i64 %i.aa, -1
  %.020 = getelementptr i8, ptr %.02039, i64 8
  %i.ab = atomicrmw xchg ptr %.020, i64 0 acq_rel, align 8
  %.not25.1 = icmp eq i64 %i.ab, -1
  %.020.1 = getelementptr i8, ptr %.02039, i64 16
  %i.ac = atomicrmw xchg ptr %.020.1, i64 0 acq_rel, align 8
  %.not25.2 = icmp eq i64 %i.ac, -1
  %.020.2 = getelementptr i8, ptr %.02039, i64 24
  %i.ad = add nsw i64 %.038, -4                   ; 2 uses
  %i.ae = atomicrmw xchg ptr %.020.2, i64 0 acq_rel, align 8
  %.not25.3 = icmp eq i64 %i.ae, -1
  %i.af = select i1 %.not25.3, i1 %.not25.2, i1 false
  %i.ag = select i1 %i.af, i1 %.not25.1, i1 false
  %i.ah = select i1 %i.ag, i1 %.not25, i1 false
  %spec.select26.3 = select i1 %i.ah, i1 %.137, i1 false ; 2 uses
  %.020.3 = getelementptr i8, ptr %.02039, i64 32 ; 2 uses
  %.not22.3 = icmp eq i64 %i.ad, 0
  br i1 %.not22.3, label %._crit_edge, label %.lr.ph, !llvm.loop !136

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %mi_bitmap_mask_.exit24.i
  %.1.lcssa = phi i1 [ %.not, %mi_bitmap_mask_.exit24.i ], [ %spec.select26.lcssa.unr, %.lr.ph.prol.loopexit ], [ %spec.select26.3, %.lr.ph ] ; 2 uses
  %.020.lcssa = phi ptr [ %.02035, %mi_bitmap_mask_.exit24.i ], [ %.020.lcssa57.unr, %.lr.ph.prol.loopexit ], [ %.020.3, %.lr.ph ]
  %.not23 = icmp eq i64 %i.o, 0
  br i1 %.not23, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.ai = atomicrmw and ptr %.020.lcssa, i64 %notmask.i25.i acq_rel, align 8
  %i.aj = or i64 %i.ai, %notmask.i25.i
  %.not24 = icmp eq i64 %i.aj, -1
  %spec.select27 = select i1 %.not24, i1 %.1.lcssa, i1 false
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread, %bb.e, %._crit_edge
  %.3 = phi i1 [ %.1.lcssa, %._crit_edge ], [ %spec.select27, %bb.e ], [ %.not47, %._crit_edge.thread ]
  ret i1 %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mi_arena_schedule_purge(ptr noundef nonnull captures(none) %0, i64 noundef %1, i64 noundef range(i64 0, 288230376151711744) %2, ptr noundef captures(address) %3) unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 488), align 8, !tbaa !111
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %mi_option_get.exit.i, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 480)), !inline_history !113
  br label %mi_option_get.exit.i

mi_option_get.exit.i:                             ; preds = %bb.b, %bb.a
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 480), align 16, !tbaa !114
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 776), align 8, !tbaa !111
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %mi_arena_purge_delay.exit, !prof !17

bb.c:                                             ; preds = %mi_option_get.exit.i
  tail call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 768)), !inline_history !113
  br label %mi_arena_purge_delay.exit

mi_arena_purge_delay.exit:                        ; preds = %mi_option_get.exit.i, %bb.c
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 768), align 16, !tbaa !114
  %i.g = mul i64 %i.f, %i.c                       ; 4 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %_mi_bitmap_claim_across.exit, label %bb.d

bb.d:                                             ; preds = %mi_arena_purge_delay.exit
  %i.i = tail call zeroext i1 @_mi_preloading()
  %i.j = icmp eq i64 %i.g, 0
  %or.cond = or i1 %i.j, %i.i
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @mi_arena_purge(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3)
  br label %_mi_bitmap_claim_across.exit

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %0, i64 104        ; 3 uses
  %i.l = load atomic i64, ptr %i.k monotonic, align 8
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = udiv i64 %i.g, 10
  %i.n = atomicrmw add ptr %i.k, i64 %i.m acq_rel, align 8 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  %i.o = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #55 ; 0 uses
  %i.p = load i64, ptr %4, align 8, !tbaa !138
  %i.q = mul i64 %i.p, 1000
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !140
  %i.t = sdiv i64 %i.s, 1000000
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  %i.u = add i64 %i.q, %i.g
  %i.v = add i64 %i.u, %i.t
  store atomic i64 %i.v, ptr %i.k release, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.w = getelementptr i8, ptr %0, i64 128
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !141  ; 2 uses
  %i.y = lshr i64 %1, 6                           ; 2 uses
  %i.z = and i64 %1, 63                           ; 5 uses
  %i.aa = add nuw nsw i64 %i.z, %2
  %i.ab = icmp samesign ult i64 %i.aa, 65
  br i1 %i.ab, label %bb.j, label %mi_bitmap_mask_.exit24.i.i, !prof !55

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp samesign ugt i64 %2, 63
  br i1 %i.ac, label %._crit_edge.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = icmp eq i64 %2, 0
  br i1 %i.ad, label %._crit_edge.thread.i, label %bb.l

end_hunk_1
begin_hunk_2_@mi_arenas_try_purge:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread
  %.02340 = phi i64 [ 0, %bb.f ], [ %i.dj, %.thread ] ; 2 uses
  %.02439 = phi i64 [ %i.o, %bb.f ], [ %.233, %.thread ] ; 9 uses
  %i.w = getelementptr [8 x i8], ptr @mi_arenas, i64 %.02340
  %i.x = load atomic ptr, ptr %i.w acquire, align 8 ; 7 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr i8, ptr %i.x, i64 24
  %i.z = load i8, ptr %i.y, align 8, !tbaa !132, !range !42, !noundef !43
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr i8, ptr %i.x, i64 128     ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !141
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr i8, ptr %i.x, i64 104     ; 3 uses
  %i.af = load atomic i64, ptr %i.ae monotonic, align 8 ; 3 uses
  %i.ag = icmp ne i64 %i.af, 0
  %i.ah = icmp sle i64 %i.af, %i.v
  %or.cond.not.i = or i1 %0, %i.ah
  %or.cond.i = and i1 %i.ag, %or.cond.not.i
  br i1 %or.cond.i, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.ai = cmpxchg ptr %i.ae, i64 %i.af, i64 0 acq_rel acquire, align 8 ; 0 uses
  %i.aj = getelementptr i8, ptr %i.x, i64 48      ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !131 ; 2 uses
  %.not99.i = icmp eq i64 %i.ak, 0
  br i1 %.not99.i, label %.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.al = getelementptr i8, ptr %i.x, i64 136
  br label %bb.l

._crit_edge.i:                                    ; preds = %.loopexit.i
  br i1 %.4.i, label %mi_arena_try_purge.exit, label %bb.u

bb.l:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %i.am = phi i64 [ %i.ak, %.lr.ph.i ], [ %i.cq, %.loopexit.i ]
  %.05596.i = phi i1 [ false, %.lr.ph.i ], [ %.3.i, %.loopexit.i ] ; 2 uses
  %.05795.i = phi i1 [ true, %.lr.ph.i ], [ %.4.i, %.loopexit.i ] ; 2 uses
  %.06494.i = phi i64 [ 0, %.lr.ph.i ], [ %i.cr, %.loopexit.i ] ; 5 uses
  %i.an = load ptr, ptr %i.ab, align 8, !tbaa !141
  %i.ao = getelementptr [8 x i8], ptr %i.an, i64 %.06494.i
  %i.ap = load atomic i64, ptr %i.ao monotonic, align 8 ; 2 uses
  %.not.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i, label %.loopexit.i, label %.preheader82.i

.preheader82.i:                                   ; preds = %bb.l
  %i.aq = shl i64 %.06494.i, 6
  %i.ar = and i64 %.06494.i, 288230376151711743
  %i.as = getelementptr [8 x i8], ptr %i.al, i64 %i.ar ; 3 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %.critedge74.i, %.preheader82.i
  %.15693.i = phi i1 [ %.05596.i, %.preheader82.i ], [ %.2.i, %.critedge74.i ] ; 2 uses
  %.15892.i = phi i1 [ %.05795.i, %.preheader82.i ], [ %.360.i, %.critedge74.i ] ; 3 uses
  %.06390.i = phi i64 [ 0, %.preheader82.i ], [ %i.co, %.critedge74.i ] ; 7 uses
  %.06589.i = phi i64 [ %i.ap, %.preheader82.i ], [ %.166.i, %.critedge74.i ] ; 3 uses
  %i.at = sub nuw nsw i64 64, %.06390.i           ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.preheader.i
  %.06186.i = phi i64 [ 0, %.preheader.i ], [ %i.ax, %bb.n ] ; 4 uses
  %i.au = add nuw nsw i64 %.06186.i, %.06390.i
  %i.av = shl nuw i64 1, %i.au
  %i.aw = and i64 %i.av, %.06589.i
  %.not70.i = icmp eq i64 %i.aw, 0
  br i1 %.not70.i, label %.critedge.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = add nuw nsw i64 %.06186.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ax, %i.at
  br i1 %exitcond.not.i, label %mi_bitmap_mask_.exit.i.i.preheader, label %bb.m, !llvm.loop !144

.critedge.i:                                      ; preds = %bb.m
  %.not7187.i = icmp eq i64 %.06186.i, 0
  br i1 %.not7187.i, label %.critedge74.i, label %mi_bitmap_mask_.exit.i.i.preheader

mi_bitmap_mask_.exit.i.i.preheader:               ; preds = %bb.n, %.critedge.i
  %.16288.i.ph = phi i64 [ %.06186.i, %.critedge.i ], [ %i.at, %bb.n ]
  br label %mi_bitmap_mask_.exit.i.i

mi_bitmap_mask_.exit.i.i:                         ; preds = %mi_bitmap_mask_.exit.i.i.preheader, %_mi_bitmap_try_claim.exit.i
  %.16288.i = phi i64 [ %i.bh, %_mi_bitmap_try_claim.exit.i ], [ %.16288.i.ph, %mi_bitmap_mask_.exit.i.i.preheader ] ; 6 uses
  %i.ay = icmp ugt i64 %.16288.i, 63              ; 2 uses
  %notmask.i.i.i = shl nsw i64 -1, %.16288.i
  %i.az = xor i64 %notmask.i.i.i, -1
  %i.ba = shl i64 %i.az, %.06390.i                ; 2 uses
  %.0.i.i.i = select i1 %i.ay, i64 -1, i64 %i.ba  ; 2 uses
  %i.bb = load atomic i64, ptr %i.as monotonic, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %mi_bitmap_mask_.exit.i.i
  %.016.i.i = phi i64 [ %i.bb, %mi_bitmap_mask_.exit.i.i ], [ %i.bg, %bb.p ] ; 3 uses
  %i.bc = and i64 %.016.i.i, %.0.i.i.i
  %.not.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i, label %bb.p, label %_mi_bitmap_try_claim.exit.i

bb.p:                                             ; preds = %bb.o
  %i.bd = or i64 %.016.i.i, %.0.i.i.i
  %i.be = cmpxchg ptr %i.as, i64 %.016.i.i, i64 %i.bd acq_rel acquire, align 8 ; 2 uses
  %i.bf = extractvalue { i64, i1 } %i.be, 1
  %i.bg = extractvalue { i64, i1 } %i.be, 0
  br i1 %i.bf, label %bb.q, label %bb.o, !llvm.loop !145

_mi_bitmap_try_claim.exit.i:                      ; preds = %bb.o
  %i.bh = add nsw i64 %.16288.i, -1               ; 2 uses
  %.not71.i = icmp eq i64 %i.bh, 0
  br i1 %.not71.i, label %.critedge74.i, label %mi_bitmap_mask_.exit.i.i, !llvm.loop !146

bb.q:                                             ; preds = %bb.p
  %i.bi = load ptr, ptr %i.ab, align 8, !tbaa !141
  %i.bj = getelementptr [8 x i8], ptr %i.bi, i64 %.06494.i
  %i.bk = load atomic i64, ptr %i.bj acquire, align 8 ; 3 uses
  %i.bl = add i64 %.16288.i, %.06390.i            ; 4 uses
  %i.bm = icmp ult i64 %.06390.i, %i.bl
  br i1 %i.bm, label %.preheader.i.i.preheader, label %mi_arena_purge_range.exit.thread.i

.preheader.i.i.preheader:                         ; preds = %bb.q
  %broadcast.splatinsert70 = insertelement <16 x i64> poison, i64 %i.bk, i64 0
  %broadcast.splat71 = shufflevector <16 x i64> %broadcast.splatinsert70, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %bb.t
  %.030.i.i = phi i64 [ %i.ch, %bb.t ], [ %.06390.i, %.preheader.i.i.preheader ] ; 7 uses
  %.02429.i.i = phi i1 [ %.2.i.i, %bb.t ], [ false, %.preheader.i.i.preheader ] ; 2 uses
  %i.bn = add i64 %.030.i.i, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.bl, i64 %i.bn)
  %i.bo = sub i64 %umax, %.030.i.i                ; 3 uses
  %min.iters.check = icmp ult i64 %i.bo, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.i
  %n.vec = and i64 %i.bo, -16                     ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %.030.i.i, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ] ; 2 uses
  %vec.ind = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.bp = add <16 x i64> %vec.ind, %broadcast.splat
  %i.bq = shl nuw <16 x i64> splat (i64 1), %i.bp
  %i.br = and <16 x i64> %i.bq, %broadcast.splat71
  %.fr = freeze <16 x i64> %i.br
  %i.bs = icmp eq <16 x i64> %.fr, zeroinitializer ; 2 uses
  %i.bt = bitcast <16 x i1> %i.bs to i16
  %.not72 = icmp eq i16 %i.bt, 0
  br i1 %.not72, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add <16 x i64> %vec.ind, splat (i64 16)
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !147

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.bo, %n.vec
  br i1 %cmp.n, label %.critedge.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i.i, %middle.block
  %.02328.i.i.ph = phi i64 [ 0, %.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

vector.early.exit:                                ; preds = %vector.body
  %i.bv = call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.bs, i1 false)
  %i.bw = add i64 %index, %i.bv
  br label %.critedge.i.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.r
  %.02328.i.i = phi i64 [ %i.ca, %bb.r ], [ %.02328.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bx = add i64 %.02328.i.i, %.030.i.i
  %i.by = shl nuw i64 1, %i.bx
  %i.bz = and i64 %i.by, %i.bk
  %.not.i75.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i75.i, label %.critedge.i.i, label %bb.r

bb.r:                                             ; preds = %scalar.ph
  %i.ca = add i64 %.02328.i.i, 1                  ; 3 uses
  %i.cb = add i64 %i.ca, %.030.i.i
  %i.cc = icmp ult i64 %i.cb, %i.bl
  br i1 %i.cc, label %scalar.ph, label %.critedge.i.i, !llvm.loop !150

.critedge.i.i:                                    ; preds = %bb.r, %scalar.ph, %vector.early.exit, %middle.block
  %.023.lcssa.i.i = phi i64 [ %n.vec, %middle.block ], [ %i.bw, %vector.early.exit ], [ %i.ca, %bb.r ], [ %.02328.i.i, %scalar.ph ] ; 4 uses
  %.not27.i.i = icmp eq i64 %.023.lcssa.i.i, 0
  br i1 %.not27.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.critedge.i.i
  %i.cd = add i64 %.030.i.i, %i.aq
  call fastcc void @mi_arena_purge(ptr noundef nonnull readonly %i.x, i64 noundef %i.cd, i64 noundef %.023.lcssa.i.i, ptr noundef %2)
  %i.ce = icmp eq i64 %.023.lcssa.i.i, %.16288.i
  %spec.select.i.i = select i1 %i.ce, i1 true, i1 %.02429.i.i
  %i.cf = freeze i1 %spec.select.i.i
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.critedge.i.i
  %.2.i.i = phi i1 [ %i.cf, %bb.s ], [ %.02429.i.i, %.critedge.i.i ] ; 2 uses
  %i.cg = add i64 %.030.i.i, 1
  %i.ch = add i64 %i.cg, %.023.lcssa.i.i          ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %i.bl
  br i1 %i.ci, label %.preheader.i.i, label %mi_arena_purge_range.exit.i, !llvm.loop !151

mi_arena_purge_range.exit.i:                      ; preds = %bb.t
  %spec.select.i = select i1 %.2.i.i, i1 %.15892.i, i1 false
  br label %mi_arena_purge_range.exit.thread.i

mi_arena_purge_range.exit.thread.i:               ; preds = %mi_arena_purge_range.exit.i, %bb.q
  %i.cj = phi i1 [ false, %bb.q ], [ %spec.select.i, %mi_arena_purge_range.exit.i ]
  %i.ck = xor i64 %i.ba, -1
  %i.cl = select i1 %i.ay, i64 0, i64 %i.ck
  %i.cm = atomicrmw and ptr %i.as, i64 %i.cl acq_rel, align 8 ; 0 uses
  br label %.critedge74.i

.critedge74.i:                                    ; preds = %_mi_bitmap_try_claim.exit.i, %mi_arena_purge_range.exit.thread.i, %.critedge.i
  %.16284.i = phi i64 [ %.16288.i, %mi_arena_purge_range.exit.thread.i ], [ 0, %.critedge.i ], [ 0, %_mi_bitmap_try_claim.exit.i ]
  %.166.i = phi i64 [ %i.bk, %mi_arena_purge_range.exit.thread.i ], [ %.06589.i, %.critedge.i ], [ %.06589.i, %_mi_bitmap_try_claim.exit.i ]
  %.360.i = phi i1 [ %i.cj, %mi_arena_purge_range.exit.thread.i ], [ %.15892.i, %.critedge.i ], [ %.15892.i, %_mi_bitmap_try_claim.exit.i ] ; 2 uses
  %.2.i = phi i1 [ true, %mi_arena_purge_range.exit.thread.i ], [ %.15693.i, %.critedge.i ], [ %.15693.i, %_mi_bitmap_try_claim.exit.i ] ; 2 uses
  %i.cn = add nuw nsw i64 %.06390.i, 1
  %i.co = add i64 %i.cn, %.16284.i                ; 2 uses
  %i.cp = icmp ult i64 %i.co, 64
  br i1 %i.cp, label %.preheader.i, label %.loopexit.loopexit.i, !llvm.loop !152

.loopexit.loopexit.i:                             ; preds = %.critedge74.i
  %.pre.i = load i64, ptr %i.aj, align 8, !tbaa !131
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %bb.l
  %i.cq = phi i64 [ %i.am, %bb.l ], [ %.pre.i, %.loopexit.loopexit.i ] ; 2 uses
  %.4.i = phi i1 [ %.05795.i, %bb.l ], [ %.360.i, %.loopexit.loopexit.i ] ; 2 uses
  %.3.i = phi i1 [ %.05596.i, %bb.l ], [ %.2.i, %.loopexit.loopexit.i ] ; 3 uses
  %i.cr = add nuw i64 %.06494.i, 1                ; 2 uses
  %i.cs = icmp ult i64 %i.cr, %i.cq
  br i1 %i.cs, label %bb.l, label %._crit_edge.i, !llvm.loop !153

bb.u:                                             ; preds = %._crit_edge.i
  %i.ct = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 488), align 8, !tbaa !111
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %bb.v, label %mi_option_get.exit.i.i, !prof !17

bb.v:                                             ; preds = %bb.u
  call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 480)), !inline_history !113
  br label %mi_option_get.exit.i.i

mi_option_get.exit.i.i:                           ; preds = %bb.v, %bb.u
  %i.cv = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 480), align 16, !tbaa !114
  %i.cw = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 776), align 8, !tbaa !111
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %bb.w, label %mi_arena_purge_delay.exit.i, !prof !17

bb.w:                                             ; preds = %mi_option_get.exit.i.i
  call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 768)), !inline_history !113
  br label %mi_arena_purge_delay.exit.i

mi_arena_purge_delay.exit.i:                      ; preds = %bb.w, %mi_option_get.exit.i.i
  %i.cy = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 768), align 16, !tbaa !114
  %i.cz = mul i64 %i.cy, %i.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  %i.da = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #55 ; 0 uses
  %i.db = load i64, ptr %3, align 8, !tbaa !138
  %i.dc = mul i64 %i.db, 1000
  %i.dd = load i64, ptr %i.l, align 8, !tbaa !140
  %i.de = sdiv i64 %i.dd, 1000000
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  %i.df = add i64 %i.dc, %i.cz
  %i.dg = add i64 %i.df, %i.de
  %i.dh = cmpxchg ptr %i.ae, i64 0, i64 %i.dg acq_rel acquire, align 8 ; 0 uses
  br i1 %.3.i, label %bb.x, label %.thread

mi_arena_try_purge.exit:                          ; preds = %._crit_edge.i
  br i1 %.3.i, label %bb.x, label %.thread

bb.x:                                             ; preds = %mi_arena_try_purge.exit, %mi_arena_purge_delay.exit.i
  %i.di = icmp ugt i64 %.02439, 1
  %spec.select28 = add i64 %.02439, -1
  br i1 %i.di, label %.thread, label %bb.y

.thread:                                          ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %mi_arena_purge_delay.exit.i, %bb.g, %mi_arena_try_purge.exit, %bb.x
  %.233 = phi i64 [ %spec.select28, %bb.x ], [ %.02439, %mi_arena_try_purge.exit ], [ %.02439, %bb.g ], [ %.02439, %mi_arena_purge_delay.exit.i ], [ %.02439, %bb.h ], [ %.02439, %bb.i ], [ %.02439, %bb.j ], [ %.02439, %bb.k ]
  %i.dj = add nuw i64 %.02340, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.dj, %i.j
  br i1 %exitcond.not, label %bb.y, label %bb.g, !llvm.loop !154

bb.y:                                             ; preds = %.thread, %bb.x
  store atomic i64 0, ptr @mi_arenas_try_purge.purge_guard release, align 8
  br label %.critedge, !llvm.loop !155

.critedge:                                        ; preds = %.preheader, %bb.y, %bb.e, %bb.a, %mi_arena_purge_delay.exit
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_arena_collect(i1 noundef zeroext %0, ptr noundef captures(address) %1) local_unnamed_addr #2 {
bb.a:
  tail call fastcc void @mi_arenas_try_purge(i1 noundef zeroext %0, i1 noundef zeroext true, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_arena_unsafe_destroy_all(ptr noundef captures(address) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load atomic i64, ptr @mi_arena_count monotonic, align 64 ; 3 uses
  %.not28.i = icmp eq i64 %i.a, 0
  br i1 %.not28.i, label %mi_arenas_unsafe_destroy.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %mi_arena_meta_free.exit.i
  %.027.i = phi i64 [ %.2.i, %mi_arena_meta_free.exit.i ], [ 0, %bb.a ] ; 2 uses
  %.02125.i = phi i64 [ %i.s, %mi_arena_meta_free.exit.i ], [ 0, %bb.a ] ; 4 uses
  %i.b = getelementptr [8 x i8], ptr @mi_arenas, i64 %.02125.i ; 2 uses
  %i.c = load atomic ptr, ptr %i.b acquire, align 8 ; 9 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %mi_arena_meta_free.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.d = getelementptr i8, ptr %i.c, i64 32       ; 2 uses
  %i.e = load atomic ptr, ptr %i.d seq_cst, align 8, !tbaa !98
  %.not24.i = icmp eq ptr %i.e, null
  br i1 %.not24.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.c, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !156
  %i.h = add i32 %i.g, -3
  %i.i = icmp ult i32 %i.h, 3
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.c, i64 8
  store atomic ptr null, ptr %i.b release, align 8
  %i.k = load atomic ptr, ptr %i.d seq_cst, align 8, !tbaa !98
  %i.l = getelementptr i8, ptr %i.c, i64 40
  %.val.i = load i64, ptr %i.l, align 8, !tbaa !100
  %i.m = shl i64 %.val.i, 25
  tail call void @_mi_os_free_ex(ptr noundef %i.k, i64 noundef %i.m, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %i.j, ptr nonnull poison)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.1.i = phi i64 [ %.027.i, %bb.d ], [ %.02125.i, %bb.c ], [ %.02125.i, %bb.b ] ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr i8, ptr %i.c, i64 84
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 4
  %i.n = add i32 %.sroa.3.0.copyload, -3
  %i.o = icmp ult i32 %i.n, 3
  br i1 %i.o, label %bb.f, label %mi_arena_meta_free.exit.i

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr i8, ptr %i.c, i64 64
  %i.q = getelementptr i8, ptr %i.c, i64 56
  %i.r = load i64, ptr %i.q, align 8, !tbaa !157
  tail call void @_mi_os_free_ex(ptr noundef nonnull %i.c, i64 noundef %i.r, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %i.p, ptr nonnull poison)
  br label %mi_arena_meta_free.exit.i

mi_arena_meta_free.exit.i:                        ; preds = %bb.e, %bb.f, %.lr.ph.i
  %.2.i = phi i64 [ %.027.i, %.lr.ph.i ], [ %.1.i, %bb.f ], [ %.1.i, %bb.e ] ; 2 uses
  %i.s = add nuw i64 %.02125.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.s, %i.a
  br i1 %exitcond.not.i, label %mi_arenas_unsafe_destroy.exit, label %.lr.ph.i, !llvm.loop !158

mi_arenas_unsafe_destroy.exit:                    ; preds = %mi_arena_meta_free.exit.i, %bb.a
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %.2.i, %mi_arena_meta_free.exit.i ]
  %i.t = cmpxchg ptr @mi_arena_count, i64 %i.a, i64 %.0.lcssa.i acq_rel acquire, align 64 ; 0 uses
  tail call fastcc void @mi_arenas_try_purge(i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %0)
  ret void
}

; Function Attrs: nofree norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_mi_arena_contains(ptr noundef readnone captures(address) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = load atomic i64, ptr @mi_arena_count monotonic, align 64 ; 2 uses
  %.not2124.not = icmp eq i64 %i.a, 0
  br i1 %.not2124.not, label %.critedge23, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.critedge
  %.01525 = phi i64 [ %i.l, %.critedge ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr [8 x i8], ptr @mi_arenas, i64 %.01525
  %i.c = load atomic ptr, ptr %i.b acquire, align 8 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr i8, ptr %i.c, i64 32       ; 2 uses
  %i.e = load atomic ptr, ptr %i.d seq_cst, align 8, !tbaa !98
  %.not20 = icmp ugt ptr %i.e, %0
  br i1 %.not20, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load atomic ptr, ptr %i.d seq_cst, align 8, !tbaa !98
  %i.g = getelementptr i8, ptr %i.c, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !100
  %i.i = shl i64 %i.h, 25
  %i.j = getelementptr i8, ptr %i.f, i64 %i.i
  %i.k = icmp ugt ptr %i.j, %0
  br i1 %i.k, label %.critedge23, label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.b, %.lr.ph
  %i.l = add nuw i64 %.01525, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.l, %i.a
  br i1 %exitcond.not, label %.critedge23, label %.lr.ph, !llvm.loop !101

.critedge23:                                      ; preds = %bb.c, %.critedge, %bb.a
  %.not21.lcssa = phi i1 [ false, %bb.a ], [ false, %.critedge ], [ true, %bb.c ]
  ret i1 %.not21.lcssa
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @mi_manage_os_memory_ex(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i32 noundef %5, i1 noundef zeroext %6, ptr noundef writeonly captures(address_is_null) %7) local_unnamed_addr #2 {
bb.a:
  %8 = alloca %struct.mi_memid_s, align 8         ; 8 uses
  %i.a = zext i1 %2 to i8
  %i.b = zext i1 %3 to i8
  %i.c = zext i1 %4 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false), !alias.scope !159
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 1, ptr %i.d, align 4, !tbaa !110, !alias.scope !159
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 %i.a, ptr %i.e, align 1, !tbaa !162
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 18
  store i8 %i.c, ptr %i.f, align 2, !tbaa !163
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i8 %i.b, ptr %i.g, align 8, !tbaa !164
  %i.h = tail call fastcc zeroext i1 @mi_manage_os_memory_ex2(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %3, i32 noundef %5, i1 noundef zeroext %6, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %8, ptr noundef %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #55
  ret i1 %i.h
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @mi_manage_os_memory_ex2(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2, i32 noundef %3, i1 noundef zeroext %4, ptr noundef readonly byval(%struct.mi_memid_s) align 8 captures(none) %5, ptr noundef writeonly captures(address_is_null) %6) unnamed_addr #2 {
bb.a:
  %7 = alloca %struct.mi_memid_s, align 8         ; 4 uses
  %i.a = zext i1 %2 to i8
  %i.b = zext i1 %4 to i8
  %.not = icmp eq ptr %6, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %6, align 4, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = icmp ult i64 %1, 33554432
  br i1 %i.c, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = lshr i64 %1, 25                          ; 4 uses
  %i.e = add nuw nsw i64 %i.d, 63                 ; 2 uses
  %i.f = lshr i64 %i.e, 6                         ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.h = load i8, ptr %i.g, align 8, !tbaa !164, !range !42, !noundef !43
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = select i1 %i.i, i64 1, i64 2
  %i.k = shl nuw nsw i64 %i.f, %i.j
  %i.l = shl nuw nsw i64 %i.k, 3
  %i.m = add nuw nsw i64 %i.l, 144                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #55
  %i.n = call ptr @_mi_os_alloc(i64 noundef range(i64 144, -9223372036854775695) %i.m, ptr noundef nonnull %7, ptr nonnull poison) ; 23 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %mi_arena_add.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.n, align 8, !tbaa !117
  %i.p = getelementptr i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !165
  %i.q = getelementptr i8, ptr %i.n, i64 92
  store i8 %i.b, ptr %i.q, align 4, !tbaa !118
  %i.r = getelementptr i8, ptr %i.n, i64 56
  store i64 %i.m, ptr %i.r, align 8, !tbaa !157
  %i.s = getelementptr i8, ptr %i.n, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !165
  %i.t = getelementptr i8, ptr %i.n, i64 40
  store i64 %i.d, ptr %i.t, align 8, !tbaa !100
  %i.u = getelementptr i8, ptr %i.n, i64 48
  store i64 %i.f, ptr %i.u, align 8, !tbaa !131
  %i.v = getelementptr i8, ptr %i.n, i64 32
  store atomic ptr %0, ptr %i.v seq_cst, align 8, !tbaa !98
  %i.w = getelementptr i8, ptr %i.n, i64 88
  store i32 %3, ptr %i.w, align 8, !tbaa !119
  %i.x = getelementptr i8, ptr %i.n, i64 93
  store i8 %i.a, ptr %i.x, align 1, !tbaa !116
  %i.y = getelementptr i8, ptr %i.n, i64 104
  store atomic i64 0, ptr %i.y seq_cst, align 8, !tbaa !166
  %i.z = getelementptr i8, ptr %i.n, i64 96
  store atomic i64 0, ptr %i.z seq_cst, align 8, !tbaa !167
  %i.aa = getelementptr i8, ptr %i.n, i64 136     ; 4 uses
  %i.ab = getelementptr [8 x i8], ptr %i.aa, i64 %i.f
  %i.ac = getelementptr i8, ptr %i.n, i64 112
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !168
  %i.ad = getelementptr i8, ptr %i.n, i64 24
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !132, !range !42, !noundef !43
  %i.af = trunc nuw i8 %i.ae to i1                ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 4
  %i.ag = getelementptr i8, ptr %i.aa, i64 %.idx  ; 2 uses
  %i.ah = select i1 %i.af, ptr null, ptr %i.ag    ; 2 uses
  %i.ai = getelementptr i8, ptr %i.n, i64 120
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !133
  %.idx60 = mul nuw nsw i64 %i.f, 24
  %i.aj = getelementptr i8, ptr %i.aa, i64 %.idx60
  %i.ak = select i1 %i.af, ptr null, ptr %i.aj
  %i.al = getelementptr i8, ptr %i.n, i64 128
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !141
  %.not61 = icmp eq ptr %i.ah, null
  br i1 %.not61, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr i8, ptr %i.n, i64 25
  %i.an = load i8, ptr %i.am, align 1, !tbaa !169, !range !42, !noundef !43
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ap = shl nuw nsw i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ag, i8 -1, i64 %i.ap, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.aq = and i64 %i.e, 1099511627712
  %i.ar = sub nsw i64 %i.aq, %i.d                 ; 3 uses
  %i.as = icmp sgt i64 %i.ar, 0
  br i1 %i.as, label %_mi_bitmap_claim.exit, label %bb.i

_mi_bitmap_claim.exit:                            ; preds = %bb.h
  %i.at = lshr i64 %1, 31
  %i.au = and i64 %i.d, 63
  %i.av = icmp samesign ugt i64 %i.ar, 63
  %notmask.i.i = shl nsw i64 -1, %i.ar
  %i.aw = xor i64 %notmask.i.i, -1
  %i.ax = shl i64 %i.aw, %i.au
  %.0.i.i = select i1 %i.av, i64 -1, i64 %i.ax
  %i.ay = getelementptr [8 x i8], ptr %i.aa, i64 %i.at
  %i.az = atomicrmw or ptr %i.ay, i64 %.0.i.i acq_rel, align 8 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %_mi_bitmap_claim.exit, %bb.h
  br i1 %.not, label %bb.j, label %.thread.i

bb.j:                                             ; preds = %bb.i
  %i.ba = atomicrmw add ptr @mi_arena_count, i64 1 acq_rel, align 64 ; 3 uses
  %i.bb = icmp ult i64 %i.ba, 112
  br i1 %i.bb, label %bb.l, label %bb.k

.thread.i:                                        ; preds = %bb.i
  store i32 -1, ptr %6, align 4, !tbaa !7
  %i.bc = atomicrmw add ptr @mi_arena_count, i64 1 acq_rel, align 64 ; 3 uses
  %i.bd = icmp ult i64 %i.bc, 112
  br i1 %i.bd, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.thread.i, %bb.j
  %i.be = atomicrmw sub ptr @mi_arena_count, i64 1 acq_rel, align 64 ; 0 uses
  br label %mi_arena_add.exit

bb.l:                                             ; preds = %bb.j
  %i.bf = trunc nuw nsw i64 %i.ba to i32
  %i.bg = add nuw nsw i32 %i.bf, 1
  store i32 %i.bg, ptr %i.n, align 8, !tbaa !117
  %i.bh = getelementptr [8 x i8], ptr @mi_arenas, i64 %i.ba
  store atomic ptr %i.n, ptr %i.bh release, align 8
  br label %mi_arena_add.exit

bb.m:                                             ; preds = %.thread.i
  %i.bi = trunc nuw nsw i64 %i.bc to i32
  %i.bj = add nuw nsw i32 %i.bi, 1                ; 2 uses
  store i32 %i.bj, ptr %i.n, align 8, !tbaa !117
  %i.bk = getelementptr [8 x i8], ptr @mi_arenas, i64 %i.bc
  store atomic ptr %i.n, ptr %i.bk release, align 8
  store i32 %i.bj, ptr %6, align 4, !tbaa !7
  br label %mi_arena_add.exit
end_hunk_2
begin_hunk_3_@_mi_os_alloc_huge_os_pages:bb.a
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.dh = phi ptr [ null, %bb.ah ], [ %i.ai, %bb.ai ]
  ret ptr %i.dh
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_warning_message(ptr noundef readonly captures(address_is_null) %0, ...) local_unnamed_addr #2 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 72), align 8, !tbaa !111
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %mi_option_get.exit, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 64)), !inline_history !177
  br label %mi_option_get.exit

mi_option_get.exit:                               ; preds = %bb.a, %bb.b
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 64), align 16, !tbaa !114
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %mi_option_get.exit
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 8), align 8, !tbaa !111
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %mi_option_get.exit2, !prof !17

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @mi_option_init(ptr noundef nonnull @options), !inline_history !177
  br label %mi_option_get.exit2

mi_option_get.exit2:                              ; preds = %bb.c, %bb.d
  %i.f = load i64, ptr @options, align 16, !tbaa !114
  %.not3 = icmp eq i64 %i.f, 0
  br i1 %.not3, label %bb.h, label %bb.e

bb.e:                                             ; preds = %mi_option_get.exit2
  %i.g = load i64, ptr @mi_max_warning_count, align 8, !tbaa !105
  %i.h = icmp sgt i64 %i.g, -1
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = atomicrmw add ptr @warning_count, i64 1 acq_rel, align 8
  %i.j = load i64, ptr @mi_max_warning_count, align 8, !tbaa !105
  %i.k = icmp sgt i64 %i.i, %i.j
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %mi_option_get.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #55
  call void @llvm.va_start.p0(ptr nonnull %1)
  call fastcc void @mi_vfprintf_thread(ptr noundef nonnull @.str.24, ptr noundef %0, ptr noundef %1)
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #55
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %mi_option_get.exit2, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 13) i32 @mi_reserve_huge_os_pages_at(i64 noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @mi_reserve_huge_os_pages_at_ex(i64 noundef %0, i32 noundef %1, i64 noundef %2, i1 noundef zeroext false, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 13) i32 @mi_reserve_huge_os_pages_interleave(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.c, label %_mi_os_numa_node_count.exit

bb.c:                                             ; preds = %bb.b
  %i.b = load atomic i64, ptr @_mi_numa_node_count monotonic, align 8 ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.d, label %_mi_os_numa_node_count.exit, !prof !17

bb.d:                                             ; preds = %bb.c
  %i.c = tail call i64 @_mi_os_numa_node_count_get()
  br label %_mi_os_numa_node_count.exit

_mi_os_numa_node_count.exit:                      ; preds = %bb.d, %bb.c, %bb.b
  %i.d = phi i64 [ %1, %bb.b ], [ %i.c, %bb.d ], [ %i.b, %bb.c ] ; 4 uses
  %i.e = udiv i64 %0, %i.d
  %i.f = urem i64 %0, %i.d
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_mi_os_numa_node_count.exit
  %i.h = udiv i64 %2, %i.d
  %i.i = add i64 %i.h, 50
  br label %bb.f

bb.f:                                             ; preds = %_mi_os_numa_node_count.exit, %bb.e
  %i.j = phi i64 [ %i.i, %bb.e ], [ 0, %_mi_os_numa_node_count.exit ]
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.h
  %.03549 = phi i64 [ 0, %bb.f ], [ %i.o, %bb.h ] ; 3 uses
  %.03648 = phi i64 [ %0, %bb.f ], [ %.137, %bb.h ] ; 2 uses
  %i.k = icmp ult i64 %.03549, %i.f
  %i.l = zext i1 %i.k to i64
  %spec.select = add i64 %i.e, %i.l               ; 3 uses
  %i.m = trunc i64 %.03549 to i32
  %i.n = tail call range(i32 0, 13) i32 @mi_reserve_huge_os_pages_at_ex(i64 noundef %spec.select, i32 noundef %i.m, i64 noundef %i.j, i1 noundef zeroext false, ptr noundef null) ; 2 uses
  %.not43 = icmp eq i32 %i.n, 0
  br i1 %.not43, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %.137 = tail call i64 @llvm.usub.sat.i64(i64 %.03648, i64 %spec.select)
  %i.o = add nuw i64 %.03549, 1                   ; 2 uses
  %i.p = icmp uge i64 %i.o, %i.d
  %i.q = icmp ule i64 %.03648, %spec.select
  %.not46 = select i1 %i.p, i1 true, i1 %i.q
  br i1 %.not46, label %.loopexit, label %bb.g, !llvm.loop !178

.loopexit:                                        ; preds = %bb.g, %bb.h, %bb.a
  %.4 = phi i32 [ 0, %bb.a ], [ 0, %bb.h ], [ %i.n, %bb.g ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 13) i32 @mi_reserve_huge_os_pages(i64 noundef %0, double noundef %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #2 {
bb.a:
  tail call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.16)
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %2, align 8, !tbaa !105
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = fmul double %1, 1.000000e+03
  %i.b = fptoui double %i.a to i64                ; 2 uses
  %i.c = icmp eq i64 %0, 0
  br i1 %i.c, label %mi_reserve_huge_os_pages_interleave.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load atomic i64, ptr @_mi_numa_node_count monotonic, align 8 ; 2 uses
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %bb.e, label %_mi_os_numa_node_count.exit.i, !prof !17

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i64 @_mi_os_numa_node_count_get()
  br label %_mi_os_numa_node_count.exit.i

_mi_os_numa_node_count.exit.i:                    ; preds = %bb.e, %bb.d
  %i.f = phi i64 [ %i.d, %bb.d ], [ %i.e, %bb.e ] ; 4 uses
  %i.g = udiv i64 %0, %i.f
  %i.h = urem i64 %0, %i.f
  %i.i = icmp eq i64 %i.b, 0
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_mi_os_numa_node_count.exit.i
  %i.j = udiv i64 %i.b, %i.f
  %i.k = add i64 %i.j, 50
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_mi_os_numa_node_count.exit.i
  %i.l = phi i64 [ %i.k, %bb.f ], [ 0, %_mi_os_numa_node_count.exit.i ]
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.03549.i = phi i64 [ 0, %bb.g ], [ %i.q, %bb.i ] ; 3 uses
  %.03648.i = phi i64 [ %0, %bb.g ], [ %.137.i, %bb.i ] ; 2 uses
  %i.m = icmp ult i64 %.03549.i, %i.h
  %i.n = zext i1 %i.m to i64
  %spec.select.i = add i64 %i.g, %i.n             ; 3 uses
  %i.o = trunc i64 %.03549.i to i32
  %i.p = tail call range(i32 0, 13) i32 @mi_reserve_huge_os_pages_at_ex(i64 noundef %spec.select.i, i32 noundef %i.o, i64 noundef %i.l, i1 noundef zeroext false, ptr noundef null) ; 2 uses
  %.not43.i = icmp eq i32 %i.p, 0
  br i1 %.not43.i, label %bb.i, label %mi_reserve_huge_os_pages_interleave.exit.thread

bb.i:                                             ; preds = %bb.h
  %.137.i = tail call i64 @llvm.usub.sat.i64(i64 %.03648.i, i64 %spec.select.i)
  %i.q = add nuw i64 %.03549.i, 1                 ; 2 uses
  %i.r = icmp uge i64 %i.q, %i.f
  %i.s = icmp ule i64 %.03648.i, %spec.select.i
  %.not46.i = select i1 %i.r, i1 true, i1 %i.s
  br i1 %.not46.i, label %mi_reserve_huge_os_pages_interleave.exit, label %bb.h, !llvm.loop !178

mi_reserve_huge_os_pages_interleave.exit:         ; preds = %bb.i, %bb.c
  br i1 %.not, label %mi_reserve_huge_os_pages_interleave.exit.thread, label %bb.j

bb.j:                                             ; preds = %mi_reserve_huge_os_pages_interleave.exit
  store i64 %0, ptr %2, align 8, !tbaa !105
  br label %mi_reserve_huge_os_pages_interleave.exit.thread

mi_reserve_huge_os_pages_interleave.exit.thread:  ; preds = %bb.h, %bb.j, %mi_reserve_huge_os_pages_interleave.exit
  %.4.i11 = phi i32 [ 0, %mi_reserve_huge_os_pages_interleave.exit ], [ 0, %bb.j ], [ %i.p, %bb.h ]
  ret i32 %.4.i11
}

; Function Attrs: inlinehint nofree norecurse nounwind memory(argmem: readwrite) uwtable
define hidden noundef zeroext i1 @_mi_bitmap_try_find_claim_field(ptr noundef captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noundef writeonly captures(none) %3) local_unnamed_addr #18 {
bb.a:
  %i.a = getelementptr [8 x i8], ptr %0, i64 %1   ; 3 uses
  %i.b = load atomic i64, ptr %i.a monotonic, align 8 ; 4 uses
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %2, 63
  br i1 %i.d, label %mi_bitmap_mask_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %mi_bitmap_mask_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %notmask.i = shl nsw i64 -1, %2
  %i.f = xor i64 %notmask.i, -1
  br label %mi_bitmap_mask_.exit

mi_bitmap_mask_.exit:                             ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i64 [ %i.f, %bb.d ], [ -1, %bb.b ], [ 0, %bb.c ]
  %i.g = sub i64 64, %2                           ; 3 uses
  %i.h = xor i64 %i.b, -1
  %i.i = tail call range(i64 0, 64) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.h, i1 true) ; 4 uses
  %.not.not50 = icmp ugt i64 %i.i, %i.g
  br i1 %.not.not50, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %mi_bitmap_mask_.exit
  %i.j = shl i64 %.0.i, %i.i                      ; 2 uses
  %i.k = icmp eq i64 %2, 1
  br i1 %i.k, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.g
  %.03353.us = phi i64 [ %.235.us, %bb.g ], [ %i.b, %.lr.ph ] ; 4 uses
  %.03852.us = phi i64 [ %.139.us, %bb.g ], [ %i.i, %.lr.ph ] ; 3 uses
  %.04051.us = phi i64 [ %.141.us, %bb.g ], [ %i.j, %.lr.ph ] ; 4 uses
  %i.l = and i64 %.03353.us, %.04051.us
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.us
  %i.n = add i64 %.03852.us, 1
  %i.o = shl i64 %.04051.us, 1
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.split.us
  %i.p = or i64 %.03353.us, %.04051.us
  %i.q = cmpxchg ptr %i.a, i64 %.03353.us, i64 %i.p acq_rel acquire, align 8 ; 2 uses
  %i.r = extractvalue { i64, i1 } %i.q, 1
  %i.s = extractvalue { i64, i1 } %i.q, 0
  br i1 %i.r, label %.thread, label %bb.g, !llvm.loop !179

bb.g:                                             ; preds = %bb.e, %bb.f
  %.141.us = phi i64 [ %i.o, %bb.e ], [ %.04051.us, %bb.f ]
  %.139.us = phi i64 [ %i.n, %bb.e ], [ %.03852.us, %bb.f ] ; 2 uses
  %.235.us = phi i64 [ %.03353.us, %bb.e ], [ %i.s, %bb.f ]
  %.not.not.us = icmp ugt i64 %.139.us, %i.g
  br i1 %.not.not.us, label %.loopexit, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.j
  %.03353 = phi i64 [ %.235, %bb.j ], [ %i.b, %.lr.ph ] ; 4 uses
  %.03852 = phi i64 [ %.139, %bb.j ], [ %i.i, %.lr.ph ] ; 4 uses
  %.04051 = phi i64 [ %.141, %bb.j ], [ %i.j, %.lr.ph ] ; 4 uses
  %i.t = and i64 %.03353, %.04051                 ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.split
  %i.v = or i64 %.03353, %.04051
  %i.w = cmpxchg ptr %i.a, i64 %.03353, i64 %i.v acq_rel acquire, align 8 ; 2 uses
  %i.x = extractvalue { i64, i1 } %i.w, 1
  %i.y = extractvalue { i64, i1 } %i.w, 0
  br i1 %i.x, label %.thread, label %bb.j, !llvm.loop !179

.thread:                                          ; preds = %bb.h, %bb.f
  %.us-phi = phi i64 [ %.03852.us, %bb.f ], [ %.03852, %bb.h ]
  %i.z = shl i64 %1, 6
  %i.aa = add i64 %.us-phi, %i.z
  store i64 %i.aa, ptr %3, align 8, !tbaa !105
  br label %.loopexit

bb.i:                                             ; preds = %.lr.ph.split
  %i.ab = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.t, i1 true)
  %i.ac = add i64 %.03852, %i.ab
  %i.ad = sub i64 64, %i.ac                       ; 2 uses
  %i.ae = add i64 %i.ad, %.03852
  %i.af = shl i64 %.04051, %i.ad
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.141 = phi i64 [ %i.af, %bb.i ], [ %.04051, %bb.h ]
  %.139 = phi i64 [ %i.ae, %bb.i ], [ %.03852, %bb.h ] ; 2 uses
  %.235 = phi i64 [ %.03353, %bb.i ], [ %i.y, %bb.h ]
  %.not.not = icmp ugt i64 %.139, %i.g
  br i1 %.not.not, label %.loopexit, label %.lr.ph.split

.loopexit:                                        ; preds = %bb.j, %bb.g, %mi_bitmap_mask_.exit, %.thread, %bb.a
  %.4 = phi i1 [ false, %bb.a ], [ true, %.thread ], [ false, %mi_bitmap_mask_.exit ], [ false, %bb.g ], [ false, %bb.j ]
  ret i1 %.4
}

; Function Attrs: nofree norecurse nounwind memory(argmem: readwrite) uwtable
define hidden noundef zeroext i1 @_mi_bitmap_try_find_from_claim(ptr noundef captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef writeonly captures(none) %4) local_unnamed_addr #17 {
bb.a:
  %.not1629.not = icmp eq i64 %1, 0
  br i1 %.not1629.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = icmp eq i64 %3, 0
  %notmask.i.i = shl nsw i64 -1, %3
  %i.b = xor i64 %notmask.i.i, -1
  %i.c = sub i64 64, %3                           ; 7 uses
  %i.d = icmp eq i64 %3, 1
  br i1 %i.d, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.loopexit.us
  %.01231.us = phi i64 [ %i.s, %.loopexit.us ], [ 0, %.lr.ph ]
  %.01330.us = phi i64 [ %i.t, %.loopexit.us ], [ %2, %.lr.ph ] ; 2 uses
  %.not.us = icmp ult i64 %.01330.us, %1
  %spec.store.select.us = select i1 %.not.us, i64 %.01330.us, i64 0 ; 3 uses
  %i.e = getelementptr [8 x i8], ptr %0, i64 %spec.store.select.us ; 2 uses
  %i.f = load atomic i64, ptr %i.e monotonic, align 8 ; 3 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %.loopexit.us, label %mi_bitmap_mask_.exit.i.us

mi_bitmap_mask_.exit.i.us:                        ; preds = %.lr.ph.split.us
  %i.h = xor i64 %i.f, -1
  %i.i = tail call range(i64 0, 64) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.h, i1 true) ; 3 uses
  %.not.not50.i.us = icmp ugt i64 %i.i, %i.c
  br i1 %.not.not50.i.us, label %.loopexit.us, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %mi_bitmap_mask_.exit.i.us
  %i.j = shl nuw i64 1, %i.i
  br label %.lr.ph.split.us.i.us

.lr.ph.split.us.i.us:                             ; preds = %.lr.ph.i.us, %bb.d
  %.03353.us.i.us = phi i64 [ %.235.us.i.us, %bb.d ], [ %i.f, %.lr.ph.i.us ] ; 4 uses
  %.03852.us.i.us = phi i64 [ %.139.us.i.us, %bb.d ], [ %i.i, %.lr.ph.i.us ] ; 3 uses
  %.04051.us.i.us = phi i64 [ %.141.us.i.us, %bb.d ], [ %i.j, %.lr.ph.i.us ] ; 4 uses
  %i.k = and i64 %.04051.us.i.us, %.03353.us.i.us
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us.i.us
  %i.m = add i64 %.03852.us.i.us, 1
  %i.n = shl i64 %.04051.us.i.us, 1
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.split.us.i.us
  %i.o = or i64 %.04051.us.i.us, %.03353.us.i.us
  %i.p = cmpxchg ptr %i.e, i64 %.03353.us.i.us, i64 %i.o acq_rel acquire, align 8 ; 2 uses
  %i.q = extractvalue { i64, i1 } %i.p, 1
  %i.r = extractvalue { i64, i1 } %i.p, 0
  br i1 %i.q, label %_mi_bitmap_try_find_claim_field.exit, label %bb.d, !llvm.loop !179

bb.d:                                             ; preds = %bb.c, %bb.b
  %.141.us.i.us = phi i64 [ %i.n, %bb.b ], [ %.04051.us.i.us, %bb.c ]
  %.139.us.i.us = phi i64 [ %i.m, %bb.b ], [ %.03852.us.i.us, %bb.c ] ; 2 uses
  %.235.us.i.us = phi i64 [ %.03353.us.i.us, %bb.b ], [ %i.r, %bb.c ]
  %.not.not.us.i.us = icmp ugt i64 %.139.us.i.us, %i.c
  br i1 %.not.not.us.i.us, label %.loopexit.us, label %.lr.ph.split.us.i.us

.loopexit.us:                                     ; preds = %bb.d, %mi_bitmap_mask_.exit.i.us, %.lr.ph.split.us
  %i.s = add nuw i64 %.01231.us, 1                ; 2 uses
  %i.t = add i64 %spec.store.select.us, 1
  %exitcond96.not = icmp eq i64 %i.s, %1
  br i1 %exitcond96.not, label %.critedge, label %.lr.ph.split.us, !llvm.loop !180

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.u = icmp ugt i64 %3, 63
  br i1 %i.u, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %.loopexit20.us
  %.01231.us37 = phi i64 [ %i.am, %.loopexit20.us ], [ 0, %.lr.ph.split ]
  %.01330.us38 = phi i64 [ %i.an, %.loopexit20.us ], [ %2, %.lr.ph.split ] ; 2 uses
  %.not.us39 = icmp ult i64 %.01330.us38, %1
  %spec.store.select.us40 = select i1 %.not.us39, i64 %.01330.us38, i64 0 ; 3 uses
  %i.v = getelementptr [8 x i8], ptr %0, i64 %spec.store.select.us40 ; 2 uses
  %i.w = load atomic i64, ptr %i.v monotonic, align 8 ; 3 uses
  %i.x = icmp eq i64 %i.w, -1
  br i1 %i.x, label %.loopexit20.us, label %mi_bitmap_mask_.exit.i.us41

mi_bitmap_mask_.exit.i.us41:                      ; preds = %.lr.ph.split.split.us
  %i.y = xor i64 %i.w, -1
  %i.z = tail call range(i64 0, 64) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.y, i1 true) ; 3 uses
  %.not.not50.i.us43 = icmp ugt i64 %i.z, %i.c
  br i1 %.not.not50.i.us43, label %.loopexit20.us, label %.lr.ph.i.us44

.lr.ph.i.us44:                                    ; preds = %mi_bitmap_mask_.exit.i.us41
  %i.aa = shl nsw i64 -1, %i.z
  br label %.lr.ph.split.i.us

.lr.ph.split.i.us:                                ; preds = %bb.g, %.lr.ph.i.us44
  %.03353.i.us = phi i64 [ %.235.i.us, %bb.g ], [ %i.w, %.lr.ph.i.us44 ] ; 4 uses
  %.03852.i.us = phi i64 [ %.139.i.us, %bb.g ], [ %i.z, %.lr.ph.i.us44 ] ; 4 uses
  %.04051.i.us = phi i64 [ %.141.i.us, %bb.g ], [ %i.aa, %.lr.ph.i.us44 ] ; 4 uses
  %i.ab = and i64 %.04051.i.us, %.03353.i.us      ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.i.us
  %i.ad = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ab, i1 true)
  %i.ae = add i64 %.03852.i.us, %i.ad
  %i.af = sub i64 64, %i.ae                       ; 2 uses
  %i.ag = add i64 %i.af, %.03852.i.us
  %i.ah = shl i64 %.04051.i.us, %i.af
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.split.i.us
  %i.ai = or i64 %.04051.i.us, %.03353.i.us
  %i.aj = cmpxchg ptr %i.v, i64 %.03353.i.us, i64 %i.ai acq_rel acquire, align 8 ; 2 uses
  %i.ak = extractvalue { i64, i1 } %i.aj, 1
  %i.al = extractvalue { i64, i1 } %i.aj, 0
  br i1 %i.ak, label %_mi_bitmap_try_find_claim_field.exit, label %bb.g, !llvm.loop !179

bb.g:                                             ; preds = %bb.f, %bb.e
  %.141.i.us = phi i64 [ %i.ah, %bb.e ], [ %.04051.i.us, %bb.f ]
  %.139.i.us = phi i64 [ %i.ag, %bb.e ], [ %.03852.i.us, %bb.f ] ; 2 uses
  %.235.i.us = phi i64 [ %.03353.i.us, %bb.e ], [ %i.al, %bb.f ]
  %.not.not.i.us = icmp ugt i64 %.139.i.us, %i.c
  br i1 %.not.not.i.us, label %.loopexit20.us, label %.lr.ph.split.i.us

.loopexit20.us:                                   ; preds = %bb.g, %mi_bitmap_mask_.exit.i.us41, %.lr.ph.split.split.us
  %i.am = add nuw i64 %.01231.us37, 1             ; 2 uses
  %i.an = add i64 %spec.store.select.us40, 1
  %exitcond95.not = icmp eq i64 %i.am, %1
  br i1 %exitcond95.not, label %.critedge, label %.lr.ph.split.split.us, !llvm.loop !180

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  br i1 %i.a, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split, %.loopexit20.us71
  %.01231.us51 = phi i64 [ %i.ba, %.loopexit20.us71 ], [ 0, %.lr.ph.split.split ]
  %.01330.us52 = phi i64 [ %i.bb, %.loopexit20.us71 ], [ %2, %.lr.ph.split.split ] ; 2 uses
  %.not.us53 = icmp ult i64 %.01330.us52, %1
  %spec.store.select.us54 = select i1 %.not.us53, i64 %.01330.us52, i64 0 ; 5 uses
  %i.ao = getelementptr [8 x i8], ptr %0, i64 %spec.store.select.us54
  %i.ap = load atomic i64, ptr %i.ao monotonic, align 8 ; 4 uses
  %i.aq = icmp eq i64 %i.ap, -1
  br i1 %i.aq, label %.loopexit20.us71, label %mi_bitmap_mask_.exit.i.us55

mi_bitmap_mask_.exit.i.us55:                      ; preds = %.lr.ph.split.split.split.us
  %i.ar = xor i64 %i.ap, -1
  %i.as = tail call range(i64 0, 64) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ar, i1 true) ; 3 uses
  %.not.not50.i.us57 = icmp ugt i64 %i.as, %i.c
  br i1 %.not.not50.i.us57, label %.loopexit20.us71, label %.lr.ph.split.i.us59.preheader

.lr.ph.split.i.us59.preheader:                    ; preds = %mi_bitmap_mask_.exit.i.us55
  %i.at = getelementptr [8 x i8], ptr %0, i64 %spec.store.select.us54 ; 2 uses
  %i.au = cmpxchg ptr %i.at, i64 %i.ap, i64 %i.ap acq_rel acquire, align 8 ; 2 uses
  %i.av = extractvalue { i64, i1 } %i.au, 1
  br i1 %i.av, label %_mi_bitmap_try_find_claim_field.exit, label %.lr.ph143, !llvm.loop !179

.lr.ph143:                                        ; preds = %.lr.ph.split.i.us59.preheader
  br label %bb.h, !llvm.loop !179

bb.h:                                             ; preds = %.lr.ph143, %bb.h
  %i.aw = phi { i64, i1 } [ %i.au, %.lr.ph143 ], [ %i.ay, %bb.h ]
  %i.ax = extractvalue { i64, i1 } %i.aw, 0       ; 2 uses
  %i.ay = cmpxchg ptr %i.at, i64 %i.ax, i64 %i.ax acq_rel acquire, align 8 ; 2 uses
  %i.az = extractvalue { i64, i1 } %i.ay, 1
  br i1 %i.az, label %._mi_bitmap_try_find_claim_field.exit.loopexit128_crit_edge, label %bb.h, !llvm.loop !179

.loopexit20.us71:                                 ; preds = %mi_bitmap_mask_.exit.i.us55, %.lr.ph.split.split.split.us
  %i.ba = add nuw i64 %.01231.us51, 1             ; 2 uses
  %i.bb = add i64 %spec.store.select.us54, 1
  %exitcond94.not = icmp eq i64 %i.ba, %1
  br i1 %exitcond94.not, label %.critedge, label %.lr.ph.split.split.split.us, !llvm.loop !180

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split, %.loopexit20
  %.01231 = phi i64 [ %i.bv, %.loopexit20 ], [ 0, %.lr.ph.split.split ]
  %.01330 = phi i64 [ %i.bw, %.loopexit20 ], [ %2, %.lr.ph.split.split ] ; 2 uses
  %.not = icmp ult i64 %.01330, %1
  %spec.store.select = select i1 %.not, i64 %.01330, i64 0 ; 3 uses
  %i.bc = getelementptr [8 x i8], ptr %0, i64 %spec.store.select ; 2 uses
  %i.bd = load atomic i64, ptr %i.bc monotonic, align 8 ; 3 uses
  %i.be = icmp eq i64 %i.bd, -1
  br i1 %i.be, label %.loopexit20, label %mi_bitmap_mask_.exit.i

mi_bitmap_mask_.exit.i:                           ; preds = %.lr.ph.split.split.split
  %i.bf = xor i64 %i.bd, -1
  %i.bg = tail call range(i64 0, 64) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.bf, i1 true) ; 3 uses
  %.not.not50.i = icmp ugt i64 %i.bg, %i.c
  br i1 %.not.not50.i, label %.loopexit20, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %mi_bitmap_mask_.exit.i
  %i.bh = shl i64 %i.b, %i.bg
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.k
  %.03353.i = phi i64 [ %.235.i, %bb.k ], [ %i.bd, %.lr.ph.i ] ; 4 uses
  %.03852.i = phi i64 [ %.139.i, %bb.k ], [ %i.bg, %.lr.ph.i ] ; 4 uses
  %.04051.i = phi i64 [ %.141.i, %bb.k ], [ %i.bh, %.lr.ph.i ] ; 4 uses
  %i.bi = and i64 %.04051.i, %.03353.i            ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.split.i
  %i.bk = or i64 %.04051.i, %.03353.i
  %i.bl = cmpxchg ptr %i.bc, i64 %.03353.i, i64 %i.bk acq_rel acquire, align 8 ; 2 uses
  %i.bm = extractvalue { i64, i1 } %i.bl, 1
  %i.bn = extractvalue { i64, i1 } %i.bl, 0
  br i1 %i.bm, label %_mi_bitmap_try_find_claim_field.exit, label %bb.k, !llvm.loop !179
end_hunk_3
begin_hunk_4_@_mi_bitmap_try_find_from_claim_pred:bb.a

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us, %_mi_bitmap_try_find_claim_field.exit.thread.us54.us
  %.02037.us46.us = phi i64 [ %i.ay, %_mi_bitmap_try_find_claim_field.exit.thread.us54.us ], [ 0, %.lr.ph.split.split.us ]
  %.02136.us47.us = phi i64 [ %i.az, %_mi_bitmap_try_find_claim_field.exit.thread.us54.us ], [ %2, %.lr.ph.split.split.us ] ; 2 uses
  %.not.us48.us = icmp ult i64 %.02136.us47.us, %1
  %spec.store.select.us49.us = select i1 %.not.us48.us, i64 %.02136.us47.us, i64 0 ; 3 uses
  %i.ah = getelementptr [8 x i8], ptr %0, i64 %spec.store.select.us49.us ; 2 uses
  %i.ai = load atomic i64, ptr %i.ah monotonic, align 8 ; 3 uses
  %i.aj = icmp eq i64 %i.ai, -1
  br i1 %i.aj, label %_mi_bitmap_try_find_claim_field.exit.thread.us54.us, label %mi_bitmap_mask_.exit.i.us50.us

mi_bitmap_mask_.exit.i.us50.us:                   ; preds = %.lr.ph.split.split.us.split.us
  %i.ak = xor i64 %i.ai, -1
  %i.al = tail call range(i64 0, 64) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ak, i1 true) ; 3 uses
  %.not.not50.i.us52.us = icmp ugt i64 %i.al, %i.c
  br i1 %.not.not50.i.us52.us, label %_mi_bitmap_try_find_claim_field.exit.thread.us54.us, label %.lr.ph.i.us53.us

.lr.ph.i.us53.us:                                 ; preds = %mi_bitmap_mask_.exit.i.us50.us
  %i.am = shl nsw i64 -1, %i.al
  br label %.lr.ph.split.i.us.us

.lr.ph.split.i.us.us:                             ; preds = %bb.h, %.lr.ph.i.us53.us
  %.03353.i.us.us = phi i64 [ %.235.i.us.us, %bb.h ], [ %i.ai, %.lr.ph.i.us53.us ] ; 4 uses
  %.03852.i.us.us = phi i64 [ %.139.i.us.us, %bb.h ], [ %i.al, %.lr.ph.i.us53.us ] ; 4 uses
  %.04051.i.us.us = phi i64 [ %.141.i.us.us, %bb.h ], [ %i.am, %.lr.ph.i.us53.us ] ; 4 uses
  %i.an = and i64 %.04051.i.us.us, %.03353.i.us.us ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.i.us.us
  %i.ap = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.an, i1 true)
  %i.aq = add i64 %.03852.i.us.us, %i.ap
  %i.ar = sub i64 64, %i.aq                       ; 2 uses
  %i.as = add i64 %i.ar, %.03852.i.us.us
  %i.at = shl i64 %.04051.i.us.us, %i.ar
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.split.i.us.us
  %i.au = or i64 %.04051.i.us.us, %.03353.i.us.us
  %i.av = cmpxchg ptr %i.ah, i64 %.03353.i.us.us, i64 %i.au acq_rel acquire, align 8 ; 2 uses
  %i.aw = extractvalue { i64, i1 } %i.av, 1
  %i.ax = extractvalue { i64, i1 } %i.av, 0
  br i1 %i.aw, label %.loopexit31.us, label %bb.h, !llvm.loop !179

bb.h:                                             ; preds = %bb.g, %bb.f
  %.141.i.us.us = phi i64 [ %i.at, %bb.f ], [ %.04051.i.us.us, %bb.g ]
  %.139.i.us.us = phi i64 [ %i.as, %bb.f ], [ %.03852.i.us.us, %bb.g ] ; 2 uses
  %.235.i.us.us = phi i64 [ %.03353.i.us.us, %bb.f ], [ %i.ax, %bb.g ]
  %.not.not.i.us.us = icmp ugt i64 %.139.i.us.us, %i.c
  br i1 %.not.not.i.us.us, label %_mi_bitmap_try_find_claim_field.exit.thread.us54.us, label %.lr.ph.split.i.us.us

_mi_bitmap_try_find_claim_field.exit.thread.us54.us: ; preds = %bb.h, %mi_bitmap_mask_.exit.i.us50.us, %.lr.ph.split.split.us.split.us
  %i.ay = add nuw i64 %.02037.us46.us, 1          ; 2 uses
  %i.az = add i64 %spec.store.select.us49.us, 1
  %exitcond83.not = icmp eq i64 %i.ay, %1
  br i1 %exitcond83.not, label %.critedge, label %.lr.ph.split.split.us.split.us, !llvm.loop !181

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us, %_mi_bitmap_try_find_claim_field.exit.thread.us54
  %.02037.us46 = phi i64 [ %i.br, %_mi_bitmap_try_find_claim_field.exit.thread.us54 ], [ 0, %.lr.ph.split.split.us ]
  %.02136.us47 = phi i64 [ %i.bs, %_mi_bitmap_try_find_claim_field.exit.thread.us54 ], [ %2, %.lr.ph.split.split.us ] ; 2 uses
  %.not.us48 = icmp ult i64 %.02136.us47, %1
  %spec.store.select.us49 = select i1 %.not.us48, i64 %.02136.us47, i64 0 ; 3 uses
  %i.ba = getelementptr [8 x i8], ptr %0, i64 %spec.store.select.us49 ; 2 uses
  %i.bb = load atomic i64, ptr %i.ba monotonic, align 8 ; 3 uses
  %i.bc = icmp eq i64 %i.bb, -1
  br i1 %i.bc, label %_mi_bitmap_try_find_claim_field.exit.thread.us54, label %mi_bitmap_mask_.exit.i.us50

mi_bitmap_mask_.exit.i.us50:                      ; preds = %.lr.ph.split.split.us.split
  %i.bd = xor i64 %i.bb, -1
  %i.be = tail call range(i64 0, 64) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.bd, i1 true) ; 3 uses
  %.not.not50.i.us52 = icmp ugt i64 %i.be, %i.c
  br i1 %.not.not50.i.us52, label %_mi_bitmap_try_find_claim_field.exit.thread.us54, label %.lr.ph.i.us53

.lr.ph.i.us53:                                    ; preds = %mi_bitmap_mask_.exit.i.us50
  %i.bf = shl i64 %i.b, %i.be
  br label %.lr.ph.split.i.us

.lr.ph.split.i.us:                                ; preds = %bb.k, %.lr.ph.i.us53
  %.03353.i.us = phi i64 [ %.235.i.us, %bb.k ], [ %i.bb, %.lr.ph.i.us53 ] ; 4 uses
  %.03852.i.us = phi i64 [ %.139.i.us, %bb.k ], [ %i.be, %.lr.ph.i.us53 ] ; 4 uses
  %.04051.i.us = phi i64 [ %.141.i.us, %bb.k ], [ %i.bf, %.lr.ph.i.us53 ] ; 4 uses
  %i.bg = and i64 %.04051.i.us, %.03353.i.us      ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.i.us
  %i.bi = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bg, i1 true)
  %i.bj = add i64 %.03852.i.us, %i.bi
  %i.bk = sub i64 64, %i.bj                       ; 2 uses
  %i.bl = add i64 %i.bk, %.03852.i.us
  %i.bm = shl i64 %.04051.i.us, %i.bk
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph.split.i.us
  %i.bn = or i64 %.04051.i.us, %.03353.i.us
  %i.bo = cmpxchg ptr %i.ba, i64 %.03353.i.us, i64 %i.bn acq_rel acquire, align 8 ; 2 uses
  %i.bp = extractvalue { i64, i1 } %i.bo, 1
  %i.bq = extractvalue { i64, i1 } %i.bo, 0
  br i1 %i.bp, label %.loopexit31.us, label %bb.k, !llvm.loop !179

bb.k:                                             ; preds = %bb.j, %bb.i
  %.141.i.us = phi i64 [ %i.bm, %bb.i ], [ %.04051.i.us, %bb.j ]
  %.139.i.us = phi i64 [ %i.bl, %bb.i ], [ %.03852.i.us, %bb.j ] ; 2 uses
  %.235.i.us = phi i64 [ %.03353.i.us, %bb.i ], [ %i.bq, %bb.j ]
  %.not.not.i.us = icmp ugt i64 %.139.i.us, %i.c
  br i1 %.not.not.i.us, label %_mi_bitmap_try_find_claim_field.exit.thread.us54, label %.lr.ph.split.i.us

_mi_bitmap_try_find_claim_field.exit.thread.us54: ; preds = %bb.k, %mi_bitmap_mask_.exit.i.us50, %.lr.ph.split.split.us.split
  %i.br = add nuw i64 %.02037.us46, 1             ; 2 uses
  %i.bs = add i64 %spec.store.select.us49, 1
  %exitcond82.not = icmp eq i64 %i.br, %1
  br i1 %exitcond82.not, label %.critedge, label %.lr.ph.split.split.us.split, !llvm.loop !181

.loopexit31.us:                                   ; preds = %bb.j, %bb.g
  %.us-phi63 = phi i64 [ %spec.store.select.us49.us, %bb.g ], [ %spec.store.select.us49, %bb.j ]
  %.us-phi64 = phi i64 [ %.03852.i.us.us, %bb.g ], [ %.03852.i.us, %bb.j ]
  %i.bt = shl i64 %.us-phi63, 6
  %i.bu = add i64 %.us-phi64, %i.bt
  store i64 %i.bu, ptr %6, align 8, !tbaa !105
  br label %.critedge

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %_mi_bitmap_try_find_claim_field.exit.thread
  %.02037 = phi i64 [ %i.cw, %_mi_bitmap_try_find_claim_field.exit.thread ], [ 0, %.lr.ph.split.split.preheader ]
  %.02136 = phi i64 [ %i.cx, %_mi_bitmap_try_find_claim_field.exit.thread ], [ %2, %.lr.ph.split.split.preheader ] ; 2 uses
  %.not = icmp ult i64 %.02136, %1
  %spec.store.select = select i1 %.not, i64 %.02136, i64 0 ; 3 uses
  %i.bv = getelementptr [8 x i8], ptr %0, i64 %spec.store.select ; 2 uses
  %i.bw = load atomic i64, ptr %i.bv monotonic, align 8 ; 3 uses
  %i.bx = icmp eq i64 %i.bw, -1
  br i1 %i.bx, label %_mi_bitmap_try_find_claim_field.exit.thread, label %mi_bitmap_mask_.exit.i

mi_bitmap_mask_.exit.i:                           ; preds = %.lr.ph.split.split
  %i.by = xor i64 %i.bw, -1
  %i.bz = tail call range(i64 0, 64) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.by, i1 true) ; 3 uses
  %.not.not50.i = icmp ugt i64 %i.bz, %i.c
  br i1 %.not.not50.i, label %_mi_bitmap_try_find_claim_field.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %mi_bitmap_mask_.exit.i
  %i.ca = shl i64 %.0.i.i, %i.bz
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.n
  %.03353.i = phi i64 [ %.235.i, %bb.n ], [ %i.bw, %.lr.ph.i ] ; 4 uses
  %.03852.i = phi i64 [ %.139.i, %bb.n ], [ %i.bz, %.lr.ph.i ] ; 4 uses
  %.04051.i = phi i64 [ %.141.i, %bb.n ], [ %i.ca, %.lr.ph.i ] ; 4 uses
  %i.cb = and i64 %.04051.i, %.03353.i            ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.split.i
  %i.cd = or i64 %.04051.i, %.03353.i
  %i.ce = cmpxchg ptr %i.bv, i64 %.03353.i, i64 %i.cd acq_rel acquire, align 8 ; 2 uses
  %i.cf = extractvalue { i64, i1 } %i.ce, 1
  %i.cg = extractvalue { i64, i1 } %i.ce, 0
  br i1 %i.cf, label %.loopexit31, label %bb.n, !llvm.loop !179

bb.m:                                             ; preds = %.lr.ph.split.i
  %i.ch = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cb, i1 true)
  %i.ci = add i64 %.03852.i, %i.ch
  %i.cj = sub i64 64, %i.ci                       ; 2 uses
  %i.ck = add i64 %i.cj, %.03852.i
  %i.cl = shl i64 %.04051.i, %i.cj
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.141.i = phi i64 [ %i.cl, %bb.m ], [ %.04051.i, %bb.l ]
  %.139.i = phi i64 [ %i.ck, %bb.m ], [ %.03852.i, %bb.l ] ; 2 uses
  %.235.i = phi i64 [ %.03353.i, %bb.m ], [ %i.cg, %bb.l ]
  %.not.not.i = icmp ugt i64 %.139.i, %i.c
  br i1 %.not.not.i, label %_mi_bitmap_try_find_claim_field.exit.thread, label %.lr.ph.split.i

.loopexit31:                                      ; preds = %bb.l
  %i.cm = shl i64 %spec.store.select, 6
  %i.cn = add i64 %.03852.i, %i.cm                ; 2 uses
  store i64 %i.cn, ptr %6, align 8, !tbaa !105
  %i.co = tail call zeroext i1 %4(i64 noundef %i.cn, ptr noundef %5) #55
  br i1 %i.co, label %.critedge, label %_mi_bitmap_unclaim.exit

_mi_bitmap_unclaim.exit:                          ; preds = %.loopexit31
  %i.cp = load i64, ptr %6, align 8, !tbaa !105   ; 2 uses
  %i.cq = and i64 %i.cp, 63
  %i.cr = shl i64 %i.b, %i.cq
  %i.cs = xor i64 %i.cr, -1
  %.0.i.i28 = select i1 %brmerge68, i64 %.mux69, i64 %i.cs
  %i.ct = lshr i64 %i.cp, 6
  %i.cu = getelementptr [8 x i8], ptr %0, i64 %i.ct
  %i.cv = atomicrmw and ptr %i.cu, i64 %.0.i.i28 acq_rel, align 8 ; 0 uses
  br label %_mi_bitmap_try_find_claim_field.exit.thread

_mi_bitmap_try_find_claim_field.exit.thread:      ; preds = %bb.n, %mi_bitmap_mask_.exit.i, %.lr.ph.split.split, %_mi_bitmap_unclaim.exit
  %i.cw = add nuw i64 %.02037, 1                  ; 2 uses
  %i.cx = add i64 %spec.store.select, 1
  %exitcond.not = icmp eq i64 %i.cw, %1
  br i1 %exitcond.not, label %.critedge, label %.lr.ph.split.split, !llvm.loop !181

.critedge:                                        ; preds = %.loopexit31, %_mi_bitmap_try_find_claim_field.exit.thread, %_mi_bitmap_try_find_claim_field.exit.thread.us54, %_mi_bitmap_try_find_claim_field.exit.thread.us54.us, %.loopexit.us, %bb.e, %_mi_bitmap_try_find_claim_field.exit.thread.us, %.loopexit31.us, %bb.a
  %.not25.lcssa = phi i1 [ false, %bb.a ], [ false, %_mi_bitmap_try_find_claim_field.exit.thread.us54 ], [ false, %_mi_bitmap_try_find_claim_field.exit.thread.us54.us ], [ true, %.loopexit31.us ], [ false, %_mi_bitmap_try_find_claim_field.exit.thread.us ], [ true, %bb.e ], [ true, %.loopexit.us ], [ true, %.loopexit31 ], [ false, %_mi_bitmap_try_find_claim_field.exit.thread ]
  ret i1 %.not25.lcssa
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define hidden zeroext i1 @_mi_bitmap_unclaim(ptr noundef captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #19 {
bb.a:
  %i.a = and i64 %3, 63
  %i.b = icmp ugt i64 %2, 63
  br i1 %i.b, label %mi_bitmap_mask_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %mi_bitmap_mask_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %notmask.i = shl nsw i64 -1, %2
  %i.d = xor i64 %notmask.i, -1
  %i.e = shl i64 %i.d, %i.a
  br label %mi_bitmap_mask_.exit

mi_bitmap_mask_.exit:                             ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i64 [ %i.e, %bb.c ], [ -1, %bb.a ], [ 0, %bb.b ] ; 3 uses
  %i.f = lshr i64 %3, 6
  %i.g = getelementptr [8 x i8], ptr %0, i64 %i.f
  %i.h = xor i64 %.0.i, -1
  %i.i = atomicrmw and ptr %i.g, i64 %i.h acq_rel, align 8
  %i.j = and i64 %i.i, %.0.i
  %i.k = icmp eq i64 %i.j, %.0.i
  ret i1 %i.k
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define hidden zeroext i1 @_mi_bitmap_claim(ptr noundef captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef writeonly captures(address_is_null) %4) local_unnamed_addr #19 {
bb.a:
  %i.a = lshr i64 %3, 6
  %i.b = and i64 %3, 63
  %i.c = icmp ugt i64 %2, 63
  br i1 %i.c, label %mi_bitmap_mask_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %mi_bitmap_mask_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %notmask.i = shl nsw i64 -1, %2
  %i.e = xor i64 %notmask.i, -1
  %i.f = shl i64 %i.e, %i.b
  br label %mi_bitmap_mask_.exit

mi_bitmap_mask_.exit:                             ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i64 [ %i.f, %bb.c ], [ -1, %bb.a ], [ 0, %bb.b ] ; 3 uses
  %i.g = getelementptr [8 x i8], ptr %0, i64 %i.a
  %i.h = atomicrmw or ptr %i.g, i64 %.0.i acq_rel, align 8
  %.not = icmp eq ptr %4, null
  %.pre = and i64 %i.h, %.0.i                     ; 2 uses
  br i1 %.not, label %mi_bitmap_mask_.exit._crit_edge, label %bb.d

bb.d:                                             ; preds = %mi_bitmap_mask_.exit
  %i.i = icmp ne i64 %.pre, %.0.i
  %i.j = zext i1 %i.i to i8
  store i8 %i.j, ptr %4, align 1, !tbaa !125
  br label %mi_bitmap_mask_.exit._crit_edge

mi_bitmap_mask_.exit._crit_edge:                  ; preds = %mi_bitmap_mask_.exit, %bb.d
  %i.k = icmp eq i64 %.pre, 0
  ret i1 %i.k
}

; Function Attrs: nofree norecurse nounwind memory(argmem: readwrite) uwtable
define hidden noundef zeroext i1 @_mi_bitmap_try_claim(ptr noundef captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #17 {
bb.a:
  %i.a = lshr i64 %3, 6
  %i.b = and i64 %3, 63
  %i.c = icmp ugt i64 %2, 63
  br i1 %i.c, label %mi_bitmap_mask_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %mi_bitmap_mask_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %notmask.i = shl nsw i64 -1, %2
  %i.e = xor i64 %notmask.i, -1
  %i.f = shl i64 %i.e, %i.b
  br label %mi_bitmap_mask_.exit

mi_bitmap_mask_.exit:                             ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i64 [ %i.f, %bb.c ], [ -1, %bb.a ], [ 0, %bb.b ] ; 2 uses
  %i.g = getelementptr [8 x i8], ptr %0, i64 %i.a ; 2 uses
  %i.h = load atomic i64, ptr %i.g monotonic, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %mi_bitmap_mask_.exit
  %.016 = phi i64 [ %i.h, %mi_bitmap_mask_.exit ], [ %i.m, %bb.e ] ; 3 uses
  %i.i = and i64 %.016, %.0.i
  %.not = icmp eq i64 %i.i, 0                     ; 2 uses
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = or i64 %.016, %.0.i
  %i.k = cmpxchg ptr %i.g, i64 %.016, i64 %i.j acq_rel acquire, align 8 ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  %i.m = extractvalue { i64, i1 } %i.k, 0
  br i1 %i.l, label %bb.f, label %bb.d, !llvm.loop !145

bb.f:                                             ; preds = %bb.e, %bb.d
  ret i1 %.not
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define hidden zeroext i1 @_mi_bitmap_is_claimed(ptr noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #19 {
bb.a:
  %i.a = and i64 %3, 63
  %i.b = icmp ugt i64 %2, 63
  br i1 %i.b, label %mi_bitmap_is_claimedx.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %mi_bitmap_is_claimedx.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %notmask.i.i = shl nsw i64 -1, %2
  %i.d = xor i64 %notmask.i.i, -1
  %i.e = shl i64 %i.d, %i.a
  br label %mi_bitmap_is_claimedx.exit

mi_bitmap_is_claimedx.exit:                       ; preds = %bb.a, %bb.b, %bb.c
  %.0.i.i = phi i64 [ %i.e, %bb.c ], [ -1, %bb.a ], [ 0, %bb.b ] ; 2 uses
  %i.f = lshr i64 %3, 6
  %i.g = getelementptr [8 x i8], ptr %0, i64 %i.f
  %i.h = load atomic i64, ptr %i.g monotonic, align 8
  %.pre.i = and i64 %i.h, %.0.i.i
  %i.i = icmp eq i64 %.pre.i, %.0.i.i
  ret i1 %i.i
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define hidden zeroext i1 @_mi_bitmap_is_any_claimed(ptr noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #19 {
bb.a:
  %i.a = and i64 %3, 63
  %i.b = icmp ugt i64 %2, 63
  br i1 %i.b, label %mi_bitmap_is_claimedx.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %mi_bitmap_is_claimedx.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %notmask.i.i = shl nsw i64 -1, %2
  %i.d = xor i64 %notmask.i.i, -1
  %i.e = shl i64 %i.d, %i.a
  br label %mi_bitmap_is_claimedx.exit

mi_bitmap_is_claimedx.exit:                       ; preds = %bb.a, %bb.b, %bb.c
  %.0.i.i = phi i64 [ %i.e, %bb.c ], [ -1, %bb.a ], [ 0, %bb.b ]
  %i.f = lshr i64 %3, 6
  %i.g = getelementptr [8 x i8], ptr %0, i64 %i.f
  %i.h = load atomic i64, ptr %i.g monotonic, align 8
  %.pre.i = and i64 %i.h, %.0.i.i
  %i.i = icmp ne i64 %.pre.i, 0
  ret i1 %i.i
}

; Function Attrs: nofree norecurse nounwind memory(argmem: readwrite) uwtable
define hidden noundef zeroext i1 @_mi_bitmap_try_find_from_claim_across(ptr noundef captures(address) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef writeonly captures(none) %4) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp ult i64 %3, 3
  br i1 %i.a, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not3057.not = icmp eq i64 %1, 0
  br i1 %.not3057.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = icmp ult i64 %3, 65
  %i.c = sub nuw nsw i64 64, %3                   ; 4 uses
  %i.d = icmp eq i64 %3, 64
  %notmask.i.i = shl nsw i64 -1, %3
  %i.e = xor i64 %notmask.i.i, -1                 ; 2 uses
  %.0.i.i = select i1 %i.d, i64 -1, i64 %i.e
  %i.f = add i64 %3, 63
  %i.g = icmp samesign ugt i64 %3, 63
  %.0.i.i.i = select i1 %i.g, i64 -1, i64 %i.e
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call zeroext i1 @_mi_bitmap_try_find_from_claim(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4)
  br label %.critedge

bb.c:                                             ; preds = %.lr.ph, %.loopexit
  %.02459 = phi i64 [ 0, %.lr.ph ], [ %i.cx, %.loopexit ]
  %.02558 = phi i64 [ %2, %.lr.ph ], [ %i.cy, %.loopexit ] ; 2 uses
  %.not = icmp ult i64 %.02558, %1
  %spec.store.select = select i1 %.not, i64 %.02558, i64 0 ; 6 uses
  br i1 %i.b, label %bb.d, label %_mi_bitmap_try_find_claim_field.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr [8 x i8], ptr %0, i64 %spec.store.select ; 2 uses
  %i.j = load atomic i64, ptr %i.i monotonic, align 8 ; 3 uses
  %i.k = icmp eq i64 %i.j, -1
  br i1 %i.k, label %_mi_bitmap_try_find_claim_field.exit.thread, label %mi_bitmap_mask_.exit.i

mi_bitmap_mask_.exit.i:                           ; preds = %bb.d
  %i.l = xor i64 %i.j, -1
  %i.m = tail call range(i64 0, 64) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.l, i1 true) ; 3 uses
  %.not.not50.i = icmp samesign ugt i64 %i.m, %i.c
  br i1 %.not.not50.i, label %_mi_bitmap_try_find_claim_field.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %mi_bitmap_mask_.exit.i
  %i.n = shl i64 %.0.i.i, %i.m
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.g
  %.03353.i = phi i64 [ %.235.i, %bb.g ], [ %i.j, %.lr.ph.i ] ; 4 uses
  %.03852.i = phi i64 [ %.139.i, %bb.g ], [ %i.m, %.lr.ph.i ] ; 4 uses
  %.04051.i = phi i64 [ %.141.i, %bb.g ], [ %i.n, %.lr.ph.i ] ; 4 uses
  %i.o = and i64 %.04051.i, %.03353.i             ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.split.i
  %i.q = or i64 %.04051.i, %.03353.i
  %i.r = cmpxchg ptr %i.i, i64 %.03353.i, i64 %i.q acq_rel acquire, align 8 ; 2 uses
  %i.s = extractvalue { i64, i1 } %i.r, 1
  %i.t = extractvalue { i64, i1 } %i.r, 0
  br i1 %i.s, label %_mi_bitmap_try_find_claim_field.exit, label %bb.g, !llvm.loop !179

bb.f:                                             ; preds = %.lr.ph.split.i
  %i.u = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.o, i1 true)
  %i.v = add nuw nsw i64 %.03852.i, %i.u
  %i.w = sub nsw i64 64, %i.v                     ; 2 uses
  %i.x = add nsw i64 %i.w, %.03852.i
  %i.y = shl i64 %.04051.i, %i.w
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.141.i = phi i64 [ %i.y, %bb.f ], [ %.04051.i, %bb.e ]
  %.139.i = phi i64 [ %i.x, %bb.f ], [ %.03852.i, %bb.e ] ; 2 uses
  %.235.i = phi i64 [ %.03353.i, %bb.f ], [ %i.t, %bb.e ]
  %.not.not.i = icmp ugt i64 %.139.i, %i.c
  br i1 %.not.not.i, label %_mi_bitmap_try_find_claim_field.exit.thread, label %.lr.ph.split.i

_mi_bitmap_try_find_claim_field.exit:             ; preds = %bb.e
  %i.z = shl i64 %spec.store.select, 6
  %i.aa = add nuw i64 %.03852.i, %i.z
  store i64 %i.aa, ptr %4, align 8, !tbaa !105
  br label %.critedge

_mi_bitmap_try_find_claim_field.exit.thread:      ; preds = %bb.g, %mi_bitmap_mask_.exit.i, %bb.d, %bb.c
  %i.ab = getelementptr [8 x i8], ptr %0, i64 %spec.store.select ; 14 uses
  %i.ac = load atomic i64, ptr %i.ab monotonic, align 8 ; 2 uses
  %i.ad = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ac, i1 false) ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.loopexit, label %.lr.ph158.i

.lr.ph158.i:                                      ; preds = %_mi_bitmap_try_find_claim_field.exit.thread
  %i.af = sub i64 %1, %spec.store.select
  br label %bb.h

tailrecurse.i:                                    ; preds = %.loopexit.i
  %i.ag = add nuw nsw i64 %.tr131156.i, 1
  %i.ah = load atomic i64, ptr %i.ab monotonic, align 8 ; 2 uses
  %i.ai = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ah, i1 false) ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %tailrecurse.i, %.lr.ph158.i
  %i.ak = phi i64 [ %i.ad, %.lr.ph158.i ], [ %i.ai, %tailrecurse.i ] ; 5 uses
  %i.al = phi i64 [ %i.ac, %.lr.ph158.i ], [ %i.ah, %tailrecurse.i ]
  %.tr131156.i = phi i64 [ 0, %.lr.ph158.i ], [ %i.ag, %tailrecurse.i ] ; 2 uses
  %.not.i = icmp ult i64 %i.ak, %3
  br i1 %.not.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = load atomic i64, ptr %i.ab monotonic, align 8 ; 3 uses
  %i.an = icmp eq i64 %i.am, -1
  br i1 %i.an, label %.loopexit, label %mi_bitmap_mask_.exit.i.i

mi_bitmap_mask_.exit.i.i:                         ; preds = %bb.i
  %i.ao = xor i64 %i.am, -1
  %i.ap = tail call range(i64 0, 64) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ao, i1 true) ; 3 uses
  %.not.not50.i.i = icmp samesign ugt i64 %i.ap, %i.c
  br i1 %.not.not50.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %mi_bitmap_mask_.exit.i.i
  %i.aq = shl i64 %.0.i.i.i, %i.ap
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.l, %.lr.ph.i.i
  %.03353.i.i = phi i64 [ %.235.i.i, %bb.l ], [ %i.am, %.lr.ph.i.i ] ; 4 uses
  %.03852.i.i = phi i64 [ %.139.i.i, %bb.l ], [ %i.ap, %.lr.ph.i.i ] ; 4 uses
  %.04051.i.i = phi i64 [ %.141.i.i, %bb.l ], [ %i.aq, %.lr.ph.i.i ] ; 4 uses
  %i.ar = and i64 %.04051.i.i, %.03353.i.i        ; 2 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.split.i.i
  %i.at = or i64 %.04051.i.i, %.03353.i.i
  %i.au = cmpxchg ptr %i.ab, i64 %.03353.i.i, i64 %i.at acq_rel acquire, align 8 ; 2 uses
  %i.av = extractvalue { i64, i1 } %i.au, 1
  %i.aw = extractvalue { i64, i1 } %i.au, 0
  br i1 %i.av, label %mi_bitmap_try_find_claim_field_across.exit, label %bb.l, !llvm.loop !179

bb.k:                                             ; preds = %.lr.ph.split.i.i
  %i.ax = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ar, i1 true)
  %i.ay = add nuw nsw i64 %.03852.i.i, %i.ax
  %i.az = sub nsw i64 64, %i.ay                   ; 2 uses
  %i.ba = add nsw i64 %i.az, %.03852.i.i
  %i.bb = shl i64 %.04051.i.i, %i.az
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.141.i.i = phi i64 [ %i.bb, %bb.k ], [ %.04051.i.i, %bb.j ]
  %.139.i.i = phi i64 [ %i.ba, %bb.k ], [ %.03852.i.i, %bb.j ] ; 2 uses
  %.235.i.i = phi i64 [ %.03353.i.i, %bb.k ], [ %i.aw, %bb.j ]
  %.not.not.i.i = icmp ugt i64 %.139.i.i, %i.c
  br i1 %.not.not.i.i, label %.loopexit, label %.lr.ph.split.i.i

bb.m:                                             ; preds = %bb.h
  %i.bc = sub i64 %i.f, %i.ak
  %i.bd = lshr i64 %i.bc, 6
  %.not117.i = icmp ult i64 %i.bd, %i.af
  br i1 %.not117.i, label %.lr.ph.i32, label %.loopexit

bb.n:                                             ; preds = %mi_bitmap_mask_.exit.i34
  %i.be = add i64 %i.bk, %.0105151.i              ; 2 uses
  %i.bf = icmp ult i64 %i.be, %3
  br i1 %i.bf, label %.lr.ph.i32, label %mi_bitmap_mask_.exit127.i, !llvm.loop !182

.lr.ph.i32:                                       ; preds = %bb.m, %bb.n
  %.095152.i = phi ptr [ %i.bg, %bb.n ], [ %i.ab, %bb.m ]
  %.0105151.i = phi i64 [ %i.be, %bb.n ], [ %i.ak, %bb.m ] ; 3 uses
  %i.bg = getelementptr i8, ptr %.095152.i, i64 8 ; 3 uses
  %i.bh = load atomic i64, ptr %i.bg monotonic, align 8
  %i.bi = add i64 %.0105151.i, 64
  %.not121.i = icmp ugt i64 %i.bi, %3
  %i.bj = sub nuw i64 %3, %.0105151.i
  %i.bk = select i1 %.not121.i, i64 %i.bj, i64 64 ; 4 uses
  %i.bl = icmp ugt i64 %i.bk, 63
  br i1 %i.bl, label %mi_bitmap_mask_.exit.i34, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i32
  %i.bm = icmp eq i64 %i.bk, 0
  br i1 %i.bm, label %mi_bitmap_mask_.exit.i34, label %bb.p

bb.p:                                             ; preds = %bb.o
  %notmask.i.i33 = shl nsw i64 -1, %i.bk
  %i.bn = xor i64 %notmask.i.i33, -1
  br label %mi_bitmap_mask_.exit.i34

mi_bitmap_mask_.exit.i34:                         ; preds = %bb.p, %bb.o, %.lr.ph.i32
  %.0.i.i35 = phi i64 [ %i.bn, %bb.p ], [ -1, %.lr.ph.i32 ], [ 0, %bb.o ] ; 3 uses
  %i.bo = and i64 %.0.i.i35, %i.bh
  %.not122.i = icmp eq i64 %i.bo, 0
  br i1 %.not122.i, label %bb.n, label %.loopexit, !llvm.loop !182

mi_bitmap_mask_.exit127.i:                        ; preds = %bb.n
  %i.bp = sub nuw nsw i64 64, %i.ak               ; 2 uses
  %i.bq = icmp eq i64 %i.al, 0
  %notmask.i125.i = shl nsw i64 -1, %i.ak
  %i.br = xor i64 %notmask.i125.i, -1
  %i.bs = shl i64 %i.br, %i.bp
  %.0.i126.i = select i1 %i.bq, i64 -1, i64 %i.bs ; 3 uses
  %i.bt = load atomic i64, ptr %i.ab monotonic, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %mi_bitmap_mask_.exit127.i
  %.099.i = phi i64 [ %i.bt, %mi_bitmap_mask_.exit127.i ], [ %i.by, %bb.r ] ; 3 uses
  %i.bu = and i64 %.099.i, %.0.i126.i
  %.not118.i = icmp eq i64 %i.bu, 0
  br i1 %.not118.i, label %bb.r, label %.loopexit135.i

bb.r:                                             ; preds = %bb.q
  %i.bv = or i64 %.099.i, %.0.i126.i
  %i.bw = cmpxchg ptr %i.ab, i64 %.099.i, i64 %i.bv acq_rel acquire, align 8 ; 2 uses
  %i.bx = extractvalue { i64, i1 } %i.bw, 1
  %i.by = extractvalue { i64, i1 } %i.bw, 0
  br i1 %i.bx, label %.preheader.i, label %bb.q, !llvm.loop !183

.preheader.i:                                     ; preds = %bb.r, %bb.s
  %.196.i = phi ptr [ %i.bz, %bb.s ], [ %i.ab, %bb.r ]
  %i.bz = getelementptr i8, ptr %.196.i, i64 8    ; 7 uses
  %i.ca = icmp ult ptr %i.bz, %i.bg
  br i1 %i.ca, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.preheader.i
  %i.cb = cmpxchg ptr %i.bz, i64 0, i64 -1 acq_rel acquire, align 8
  %i.cc = extractvalue { i64, i1 } %i.cb, 1
  br i1 %i.cc, label %.preheader.i, label %.loopexit135.i, !llvm.loop !184

bb.t:                                             ; preds = %.preheader.i
  %i.cd = load atomic i64, ptr %i.bz monotonic, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t
  %.2101.i = phi i64 [ %i.cd, %bb.t ], [ %i.ci, %bb.v ] ; 3 uses
  %i.ce = and i64 %.2101.i, %.0.i.i35
  %.not119.i = icmp eq i64 %i.ce, 0
  br i1 %.not119.i, label %bb.v, label %.loopexit135.i

bb.v:                                             ; preds = %bb.u
  %i.cf = or i64 %.2101.i, %.0.i.i35
  %i.cg = cmpxchg ptr %i.bz, i64 %.2101.i, i64 %i.cf acq_rel acquire, align 8 ; 2 uses
  %i.ch = extractvalue { i64, i1 } %i.cg, 1
  %i.ci = extractvalue { i64, i1 } %i.cg, 0
  br i1 %i.ch, label %mi_bitmap_try_find_claim_field_across.exit, label %bb.u, !llvm.loop !185

.loopexit135.i:                                   ; preds = %bb.q, %bb.s, %bb.u
  %.297.i = phi ptr [ %i.bz, %bb.u ], [ %i.bz, %bb.s ], [ %i.ab, %bb.q ]
  %i.cj = getelementptr i8, ptr %.297.i, i64 -8   ; 3 uses
  %i.ck = icmp ugt ptr %i.cj, %i.ab
  br i1 %i.ck, label %.lr.ph154.i, label %._crit_edge.i

.lr.ph154.i:                                      ; preds = %.loopexit135.i, %.lr.ph154.i
  %i.cl = phi ptr [ %i.cm, %.lr.ph154.i ], [ %i.cj, %.loopexit135.i ] ; 2 uses
  store atomic i64 0, ptr %i.cl release, align 8
  %i.cm = getelementptr i8, ptr %i.cl, i64 -8     ; 3 uses
  %i.cn = icmp ugt ptr %i.cm, %i.ab
  br i1 %i.cn, label %.lr.ph154.i, label %._crit_edge.i, !llvm.loop !186

._crit_edge.i:                                    ; preds = %.lr.ph154.i, %.loopexit135.i
  %.lcssa145.i = phi ptr [ %i.cj, %.loopexit135.i ], [ %i.cm, %.lr.ph154.i ]
  %i.co = icmp eq ptr %.lcssa145.i, %i.ab
  br i1 %i.co, label %bb.w, label %.loopexit.i

bb.w:                                             ; preds = %._crit_edge.i
  %i.cp = load atomic i64, ptr %i.ab monotonic, align 8
  %i.cq = xor i64 %.0.i126.i, -1
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %bb.w
  %.4103.i = phi i64 [ %i.cp, %bb.w ], [ %i.cu, %bb.x ] ; 2 uses
  %i.cr = and i64 %.4103.i, %i.cq
  %i.cs = cmpxchg ptr %i.ab, i64 %.4103.i, i64 %i.cr acq_rel acquire, align 8 ; 2 uses
  %i.ct = extractvalue { i64, i1 } %i.cs, 1
  %i.cu = extractvalue { i64, i1 } %i.cs, 0
  br i1 %i.ct, label %.loopexit.i, label %bb.x, !llvm.loop !187

.loopexit.i:                                      ; preds = %bb.x, %._crit_edge.i
  %.not120.i = icmp eq i64 %.tr131156.i, 3
  br i1 %.not120.i, label %.loopexit, label %tailrecurse.i

mi_bitmap_try_find_claim_field_across.exit:       ; preds = %bb.j, %bb.v
  %.03852.i.lcssa.sink.i = phi i64 [ %i.bp, %bb.v ], [ %.03852.i.i, %bb.j ]
  %i.cv = shl i64 %spec.store.select, 6
  %i.cw = add nuw i64 %.03852.i.lcssa.sink.i, %i.cv
  store i64 %i.cw, ptr %4, align 8, !tbaa !105
  br label %.critedge

.loopexit:                                        ; preds = %bb.m, %tailrecurse.i, %.loopexit.i, %bb.l, %mi_bitmap_mask_.exit.i34, %bb.i, %_mi_bitmap_try_find_claim_field.exit.thread, %mi_bitmap_mask_.exit.i.i
  %i.cx = add nuw i64 %.02459, 1                  ; 2 uses
  %i.cy = add i64 %spec.store.select, 1
  %exitcond.not = icmp eq i64 %i.cx, %1
  br i1 %exitcond.not, label %.critedge, label %bb.c, !llvm.loop !188

.critedge:                                        ; preds = %.loopexit, %.preheader, %mi_bitmap_try_find_claim_field_across.exit, %_mi_bitmap_try_find_claim_field.exit, %bb.b
  %.2 = phi i1 [ %i.h, %bb.b ], [ true, %_mi_bitmap_try_find_claim_field.exit ], [ true, %mi_bitmap_try_find_claim_field_across.exit ], [ false, %.preheader ], [ false, %.loopexit ]
  ret i1 %.2
}

; Function Attrs: nofree norecurse nounwind memory(argmem: readwrite) uwtable
define hidden zeroext i1 @_mi_bitmap_claim_across(ptr noundef captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef writeonly captures(address_is_null) %4) local_unnamed_addr #17 {
bb.a:
  %i.a = lshr i64 %3, 6                           ; 2 uses
  %i.b = and i64 %3, 63                           ; 5 uses
  %i.c = add i64 %i.b, %2
  %i.d = icmp ult i64 %i.c, 65
  br i1 %i.d, label %bb.b, label %mi_bitmap_mask_.exit24.i, !prof !55

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %2, 63
  br i1 %i.e, label %._crit_edge.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %notmask.i.i = shl nsw i64 -1, %2
  %i.g = xor i64 %notmask.i.i, -1
  %i.h = shl i64 %i.g, %i.b
  br label %._crit_edge.thread

mi_bitmap_mask_.exit24.i:                         ; preds = %bb.a
  %i.i = sub nuw nsw i64 64, %i.b                 ; 2 uses
  %i.j = icmp eq i64 %i.b, 0
  %notmask.i22.i = shl nsw i64 -1, %i.i
  %i.k = xor i64 %notmask.i22.i, -1
  %i.l = shl i64 %i.k, %i.b
  %.0.i23.i = select i1 %i.j, i64 -1, i64 %i.l    ; 3 uses
  %i.m = sub i64 %2, %i.i                         ; 3 uses
  %i.n = lshr i64 %i.m, 6                         ; 4 uses
  %i.o = and i64 %i.m, 63                         ; 2 uses
  %notmask.i25.i = shl nsw i64 -1, %i.o
  %i.p = xor i64 %notmask.i25.i, -1               ; 3 uses
  %i.q = getelementptr [8 x i8], ptr %0, i64 %i.a ; 2 uses
  %i.r = atomicrmw or ptr %i.q, i64 %.0.i23.i acq_rel, align 8
  %i.s = and i64 %i.r, %.0.i23.i                  ; 2 uses
  %.not = icmp eq i64 %i.s, 0                     ; 3 uses
  %.not33 = icmp ne i64 %i.s, %.0.i23.i
  %.026 = zext i1 %.not33 to i8                   ; 3 uses
  %.03054 = getelementptr i8, ptr %i.q, i64 8     ; 3 uses
  %.not3455 = icmp eq i64 %i.n, 0
  br i1 %.not3455, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %mi_bitmap_mask_.exit24.i
  %xtraiter = and i64 %i.n, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.03059.prol = phi ptr [ %.030.prol, %.lr.ph.prol ], [ %.03054, %.lr.ph.preheader ] ; 2 uses
  %.058.prol = phi i64 [ %i.t, %.lr.ph.prol ], [ %i.n, %.lr.ph.preheader ]
  %.157.prol = phi i1 [ %spec.select41.prol, %.lr.ph.prol ], [ %.not, %.lr.ph.preheader ]
  %.12756.prol = phi i8 [ %.228.prol, %.lr.ph.prol ], [ %.026, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.t = add nsw i64 %.058.prol, -1               ; 2 uses
  %i.u = atomicrmw xchg ptr %.03059.prol, i64 -1 acq_rel, align 8 ; 2 uses
  %.not39.prol = icmp eq i64 %i.u, 0
  %spec.select41.prol = select i1 %.not39.prol, i1 %.157.prol, i1 false ; 3 uses
  %.not40.prol = icmp eq i64 %i.u, -1
  %.228.prol = select i1 %.not40.prol, i8 %.12756.prol, i8 1 ; 3 uses
  %.030.prol = getelementptr i8, ptr %.03059.prol, i64 8 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !189

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %spec.select41.lcssa.unr = phi i1 [ poison, %.lr.ph.preheader ], [ %spec.select41.prol, %.lr.ph.prol ]
  %.228.lcssa.unr = phi i8 [ poison, %.lr.ph.preheader ], [ %.228.prol, %.lr.ph.prol ]
  %.030.lcssa82.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %.030.prol, %.lr.ph.prol ]
  %.03059.unr = phi ptr [ %.03054, %.lr.ph.preheader ], [ %.030.prol, %.lr.ph.prol ]
  %.058.unr = phi i64 [ %i.n, %.lr.ph.preheader ], [ %i.t, %.lr.ph.prol ]
  %.157.unr = phi i1 [ %.not, %.lr.ph.preheader ], [ %spec.select41.prol, %.lr.ph.prol ]
  %.12756.unr = phi i8 [ %.026, %.lr.ph.preheader ], [ %.228.prol, %.lr.ph.prol ]
  %i.v = icmp ult i64 %i.m, 256
  br i1 %i.v, label %._crit_edge, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.b, %bb.c, %bb.d
  %.052.ph = phi i64 [ -1, %bb.b ], [ 0, %bb.c ], [ %i.h, %bb.d ] ; 3 uses
  %i.w = getelementptr [8 x i8], ptr %0, i64 %i.a
  %i.x = atomicrmw or ptr %i.w, i64 %.052.ph acq_rel, align 8
  %i.y = and i64 %i.x, %.052.ph                   ; 2 uses
  %.not69 = icmp eq i64 %i.y, 0
  %.not3370 = icmp ne i64 %i.y, %.052.ph
  %.02671 = zext i1 %.not3370 to i8
  br label %bb.f

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.03059 = phi ptr [ %.030.3, %.lr.ph ], [ %.03059.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.058 = phi i64 [ %i.ac, %.lr.ph ], [ %.058.unr, %.lr.ph.prol.loopexit ]
  %.157 = phi i1 [ %spec.select41.3, %.lr.ph ], [ %.157.unr, %.lr.ph.prol.loopexit ]
  %.12756 = phi i8 [ %.228.3, %.lr.ph ], [ %.12756.unr, %.lr.ph.prol.loopexit ]
  %i.z = atomicrmw xchg ptr %.03059, i64 -1 acq_rel, align 8 ; 2 uses
  %.not39 = icmp eq i64 %i.z, 0
  %.not40 = icmp eq i64 %i.z, -1
  %.030 = getelementptr i8, ptr %.03059, i64 8
  %i.aa = atomicrmw xchg ptr %.030, i64 -1 acq_rel, align 8 ; 2 uses
  %.not39.1 = icmp eq i64 %i.aa, 0
  %.not40.1 = icmp eq i64 %i.aa, -1
  %.030.1 = getelementptr i8, ptr %.03059, i64 16
  %i.ab = atomicrmw xchg ptr %.030.1, i64 -1 acq_rel, align 8 ; 2 uses
  %.not39.2 = icmp eq i64 %i.ab, 0
  %.not40.2 = icmp eq i64 %i.ab, -1
  %.030.2 = getelementptr i8, ptr %.03059, i64 24
  %i.ac = add nsw i64 %.058, -4                   ; 2 uses
  %i.ad = atomicrmw xchg ptr %.030.2, i64 -1 acq_rel, align 8 ; 2 uses
  %.not39.3 = icmp eq i64 %i.ad, 0
  %i.ae = select i1 %.not39.3, i1 %.not39.2, i1 false
  %i.af = select i1 %i.ae, i1 %.not39.1, i1 false
  %i.ag = select i1 %i.af, i1 %.not39, i1 false
  %spec.select41.3 = select i1 %i.ag, i1 %.157, i1 false ; 2 uses
  %.not40.3 = icmp eq i64 %i.ad, -1
  %i.ah = select i1 %.not40.3, i1 %.not40.2, i1 false
  %i.ai = select i1 %i.ah, i1 %.not40.1, i1 false
  %i.aj = select i1 %i.ai, i1 %.not40, i1 false
  %.228.3 = select i1 %i.aj, i8 %.12756, i8 1     ; 2 uses
  %.030.3 = getelementptr i8, ptr %.03059, i64 32 ; 2 uses
  %.not34.3 = icmp eq i64 %i.ac, 0
  br i1 %.not34.3, label %._crit_edge, label %.lr.ph, !llvm.loop !143

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %mi_bitmap_mask_.exit24.i
  %.127.lcssa = phi i8 [ %.026, %mi_bitmap_mask_.exit24.i ], [ %.228.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.228.3, %.lr.ph ] ; 2 uses
  %.1.lcssa = phi i1 [ %.not, %mi_bitmap_mask_.exit24.i ], [ %spec.select41.lcssa.unr, %.lr.ph.prol.loopexit ], [ %spec.select41.3, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %.03054, %mi_bitmap_mask_.exit24.i ], [ %.030.lcssa82.unr, %.lr.ph.prol.loopexit ], [ %.030.3, %.lr.ph ]
  %.not35 = icmp eq i64 %i.o, 0
  br i1 %.not35, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.ak = atomicrmw or ptr %.030.lcssa, i64 %i.p acq_rel, align 8
  %i.al = and i64 %i.ak, %i.p                     ; 2 uses
  %.not36 = icmp eq i64 %i.al, 0
  %spec.select42 = select i1 %.not36, i1 %.1.lcssa, i1 false
  %.not37 = icmp eq i64 %i.al, %i.p
  %spec.select43 = select i1 %.not37, i8 %.127.lcssa, i8 1
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread, %bb.e, %._crit_edge
  %.329 = phi i8 [ %.127.lcssa, %._crit_edge ], [ %spec.select43, %bb.e ], [ %.02671, %._crit_edge.thread ]
  %.4 = phi i1 [ %.1.lcssa, %._crit_edge ], [ %spec.select42, %bb.e ], [ %.not69, %._crit_edge.thread ]
  %.not38 = icmp eq ptr %4, null
  br i1 %.not38, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 %.329, ptr %4, align 1, !tbaa !125
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret i1 %.4
}

; Function Attrs: nofree norecurse nounwind memory(argmem: readwrite) uwtable
define hidden zeroext i1 @_mi_bitmap_is_claimed_across(ptr noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #17 {
bb.a:
  %i.a = lshr i64 %3, 6                           ; 2 uses
  %i.b = and i64 %3, 63                           ; 5 uses
  %i.c = add i64 %i.b, %2
  %i.d = icmp ult i64 %i.c, 65
  br i1 %i.d, label %bb.b, label %mi_bitmap_mask_.exit24.i.i, !prof !55

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %2, 63
  br i1 %i.e, label %._crit_edge.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %notmask.i.i.i = shl nsw i64 -1, %2
  %i.g = xor i64 %notmask.i.i.i, -1
  %i.h = shl i64 %i.g, %i.b
  br label %._crit_edge.thread.i

mi_bitmap_mask_.exit24.i.i:                       ; preds = %bb.a
  %i.i = sub nuw nsw i64 64, %i.b                 ; 2 uses
  %i.j = icmp eq i64 %i.b, 0
  %notmask.i22.i.i = shl nsw i64 -1, %i.i
  %i.k = xor i64 %notmask.i22.i.i, -1
  %i.l = shl i64 %i.k, %i.b
  %.0.i23.i.i = select i1 %i.j, i64 -1, i64 %i.l  ; 2 uses
  %i.m = sub i64 %2, %i.i                         ; 3 uses
  %i.n = lshr i64 %i.m, 6                         ; 4 uses
  %i.o = and i64 %i.m, 63                         ; 2 uses
  %notmask.i25.i.i = shl nsw i64 -1, %i.o
  %i.p = getelementptr [8 x i8], ptr %0, i64 %i.a ; 2 uses
  %i.q = load atomic i64, ptr %i.p monotonic, align 8
  %i.r = and i64 %i.q, %.0.i23.i.i
  %.not.i = icmp eq i64 %i.r, %.0.i23.i.i         ; 3 uses
  %.02748.i = getelementptr i8, ptr %i.p, i64 8   ; 3 uses
  %.not3049.i = icmp eq i64 %i.n, 0
  br i1 %.not3049.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %mi_bitmap_mask_.exit24.i.i
  %xtraiter = and i64 %i.n, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.02753.i.prol = phi ptr [ %.027.i.prol, %.lr.ph.i.prol ], [ %.02748.i, %.lr.ph.i.preheader ] ; 2 uses
  %.052.i.prol = phi i64 [ %i.s, %.lr.ph.i.prol ], [ %i.n, %.lr.ph.i.preheader ]
  %.151.i.prol = phi i1 [ %spec.select37.i.prol, %.lr.ph.i.prol ], [ %.not.i, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.s = add nsw i64 %.052.i.prol, -1             ; 2 uses
  %i.t = load atomic i64, ptr %.02753.i.prol monotonic, align 8
  %.not35.i.prol = icmp eq i64 %i.t, -1
  %spec.select37.i.prol = select i1 %.not35.i.prol, i1 %.151.i.prol, i1 false ; 3 uses
  %.027.i.prol = getelementptr i8, ptr %.02753.i.prol, i64 8 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !190

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %spec.select37.i.lcssa.unr = phi i1 [ poison, %.lr.ph.i.preheader ], [ %spec.select37.i.prol, %.lr.ph.i.prol ]
  %.027.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.027.i.prol, %.lr.ph.i.prol ]
  %.02753.i.unr = phi ptr [ %.02748.i, %.lr.ph.i.preheader ], [ %.027.i.prol, %.lr.ph.i.prol ]
  %.052.i.unr = phi i64 [ %i.n, %.lr.ph.i.preheader ], [ %i.s, %.lr.ph.i.prol ]
  %.151.i.unr = phi i1 [ %.not.i, %.lr.ph.i.preheader ], [ %spec.select37.i.prol, %.lr.ph.i.prol ]
  %i.u = icmp ult i64 %i.m, 256
  br i1 %i.u, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %bb.d, %bb.c, %bb.b
  %.046.ph.i = phi i64 [ -1, %bb.b ], [ 0, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.v = getelementptr [8 x i8], ptr %0, i64 %i.a
  %i.w = load atomic i64, ptr %i.v monotonic, align 8
  %i.x = and i64 %i.w, %.046.ph.i
  %.not63.i = icmp eq i64 %i.x, %.046.ph.i
  br label %mi_bitmap_is_claimedx_across.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.02753.i = phi ptr [ %.027.i.3, %.lr.ph.i ], [ %.02753.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.052.i = phi i64 [ %i.ab, %.lr.ph.i ], [ %.052.i.unr, %.lr.ph.i.prol.loopexit ]
  %.151.i = phi i1 [ %spec.select37.i.3, %.lr.ph.i ], [ %.151.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.y = load atomic i64, ptr %.02753.i monotonic, align 8
  %.not35.i = icmp eq i64 %i.y, -1
  %.027.i = getelementptr i8, ptr %.02753.i, i64 8
  %i.z = load atomic i64, ptr %.027.i monotonic, align 8
  %.not35.i.1 = icmp eq i64 %i.z, -1
  %.027.i.1 = getelementptr i8, ptr %.02753.i, i64 16
  %i.aa = load atomic i64, ptr %.027.i.1 monotonic, align 8
  %.not35.i.2 = icmp eq i64 %i.aa, -1
  %.027.i.2 = getelementptr i8, ptr %.02753.i, i64 24
  %i.ab = add nsw i64 %.052.i, -4                 ; 2 uses
  %i.ac = load atomic i64, ptr %.027.i.2 monotonic, align 8
  %.not35.i.3 = icmp eq i64 %i.ac, -1
  %i.ad = select i1 %.not35.i.3, i1 %.not35.i.2, i1 false
  %i.ae = select i1 %i.ad, i1 %.not35.i.1, i1 false
  %i.af = select i1 %i.ae, i1 %.not35.i, i1 false
  %spec.select37.i.3 = select i1 %i.af, i1 %.151.i, i1 false ; 2 uses
  %.027.i.3 = getelementptr i8, ptr %.02753.i, i64 32 ; 2 uses
  %.not30.i.3 = icmp eq i64 %i.ab, 0
  br i1 %.not30.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !191

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %mi_bitmap_mask_.exit24.i.i
  %.1.lcssa.i = phi i1 [ %.not.i, %mi_bitmap_mask_.exit24.i.i ], [ %spec.select37.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %spec.select37.i.3, %.lr.ph.i ] ; 2 uses
  %.027.lcssa.i = phi ptr [ %.02748.i, %mi_bitmap_mask_.exit24.i.i ], [ %.027.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.027.i.3, %.lr.ph.i ]
  %.not31.i = icmp eq i64 %i.o, 0
  br i1 %.not31.i, label %mi_bitmap_is_claimedx_across.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  %i.ag = load atomic i64, ptr %.027.lcssa.i monotonic, align 8
  %i.ah = or i64 %i.ag, %notmask.i25.i.i
  %.not32.i = icmp eq i64 %i.ah, -1
  %spec.select38.i = select i1 %.not32.i, i1 %.1.lcssa.i, i1 false
  br label %mi_bitmap_is_claimedx_across.exit

mi_bitmap_is_claimedx_across.exit:                ; preds = %._crit_edge.thread.i, %._crit_edge.i, %bb.e
  %.4.i = phi i1 [ %.1.lcssa.i, %._crit_edge.i ], [ %spec.select38.i, %bb.e ], [ %.not63.i, %._crit_edge.thread.i ]
  ret i1 %.4.i
}

; Function Attrs: nofree norecurse nounwind memory(argmem: readwrite) uwtable
define hidden zeroext i1 @_mi_bitmap_is_any_claimed_across(ptr noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #17 {
bb.a:
  %i.a = lshr i64 %3, 6                           ; 2 uses
  %i.b = and i64 %3, 63                           ; 5 uses
  %i.c = add i64 %i.b, %2
  %i.d = icmp ult i64 %i.c, 65
  br i1 %i.d, label %bb.b, label %mi_bitmap_mask_.exit24.i.i, !prof !55

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %2, 63
  br i1 %i.e, label %._crit_edge.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %notmask.i.i.i = shl nsw i64 -1, %2
  %i.g = xor i64 %notmask.i.i.i, -1
  %i.h = shl i64 %i.g, %i.b
  br label %._crit_edge.thread.i

mi_bitmap_mask_.exit24.i.i:                       ; preds = %bb.a
  %i.i = sub nuw nsw i64 64, %i.b                 ; 2 uses
  %i.j = icmp eq i64 %i.b, 0
  %notmask.i22.i.i = shl nsw i64 -1, %i.i
  %i.k = xor i64 %notmask.i22.i.i, -1
  %i.l = shl i64 %i.k, %i.b
  %.0.i23.i.i = select i1 %i.j, i64 -1, i64 %i.l
  %i.m = sub i64 %2, %i.i                         ; 3 uses
  %i.n = lshr i64 %i.m, 6                         ; 4 uses
  %i.o = and i64 %i.m, 63                         ; 2 uses
  %notmask.i25.i.i = shl nsw i64 -1, %i.o
  %i.p = xor i64 %notmask.i25.i.i, -1
  %i.q = getelementptr [8 x i8], ptr %0, i64 %i.a ; 2 uses
  %i.r = load atomic i64, ptr %i.q monotonic, align 8
  %i.s = and i64 %i.r, %.0.i23.i.i
  %.not29.i = icmp ne i64 %i.s, 0                 ; 3 uses
  %.02748.i = getelementptr i8, ptr %i.q, i64 8   ; 3 uses
  %.not3049.i = icmp eq i64 %i.n, 0
  br i1 %.not3049.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %mi_bitmap_mask_.exit24.i.i
  %xtraiter = and i64 %i.n, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.02753.i.prol = phi ptr [ %.027.i.prol, %.lr.ph.i.prol ], [ %.02748.i, %.lr.ph.i.preheader ] ; 2 uses
  %.052.i.prol = phi i64 [ %i.t, %.lr.ph.i.prol ], [ %i.n, %.lr.ph.i.preheader ]
  %.12450.i.prol = phi i1 [ %.225.i.prol, %.lr.ph.i.prol ], [ %.not29.i, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.t = add nsw i64 %.052.i.prol, -1             ; 2 uses
  %i.u = load atomic i64, ptr %.02753.i.prol monotonic, align 8
  %.not36.i.prol = icmp ne i64 %i.u, 0
  %.225.i.prol = select i1 %.not36.i.prol, i1 true, i1 %.12450.i.prol ; 3 uses
  %.027.i.prol = getelementptr i8, ptr %.02753.i.prol, i64 8 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !192

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.225.i.lcssa.unr = phi i1 [ poison, %.lr.ph.i.preheader ], [ %.225.i.prol, %.lr.ph.i.prol ]
  %.027.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.027.i.prol, %.lr.ph.i.prol ]
  %.02753.i.unr = phi ptr [ %.02748.i, %.lr.ph.i.preheader ], [ %.027.i.prol, %.lr.ph.i.prol ]
  %.052.i.unr = phi i64 [ %i.n, %.lr.ph.i.preheader ], [ %i.t, %.lr.ph.i.prol ]
  %.12450.i.unr = phi i1 [ %.not29.i, %.lr.ph.i.preheader ], [ %.225.i.prol, %.lr.ph.i.prol ]
  %i.v = icmp ult i64 %i.m, 256
  br i1 %i.v, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %bb.d, %bb.c, %bb.b
  %.046.ph.i = phi i64 [ -1, %bb.b ], [ 0, %bb.c ], [ %i.h, %bb.d ]
  %i.w = getelementptr [8 x i8], ptr %0, i64 %i.a
  %i.x = load atomic i64, ptr %i.w monotonic, align 8
  %i.y = and i64 %i.x, %.046.ph.i
  %.not2964.i = icmp ne i64 %i.y, 0
  br label %mi_bitmap_is_claimedx_across.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.02753.i = phi ptr [ %.027.i.3, %.lr.ph.i ], [ %.02753.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.052.i = phi i64 [ %i.ac, %.lr.ph.i ], [ %.052.i.unr, %.lr.ph.i.prol.loopexit ]
  %.12450.i = phi i1 [ %.225.i.3, %.lr.ph.i ], [ %.12450.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.z = load atomic i64, ptr %.02753.i monotonic, align 8
  %.not36.i = icmp ne i64 %i.z, 0
  %.027.i = getelementptr i8, ptr %.02753.i, i64 8
  %i.aa = load atomic i64, ptr %.027.i monotonic, align 8
  %.not36.i.1 = icmp ne i64 %i.aa, 0
  %.027.i.1 = getelementptr i8, ptr %.02753.i, i64 16
  %i.ab = load atomic i64, ptr %.027.i.1 monotonic, align 8
  %.not36.i.2 = icmp ne i64 %i.ab, 0
  %.027.i.2 = getelementptr i8, ptr %.02753.i, i64 24
  %i.ac = add nsw i64 %.052.i, -4                 ; 2 uses
  %i.ad = load atomic i64, ptr %.027.i.2 monotonic, align 8
  %.not36.i.3 = icmp ne i64 %i.ad, 0
  %i.ae = select i1 %.not36.i.3, i1 true, i1 %.not36.i.2
  %i.af = select i1 %i.ae, i1 true, i1 %.not36.i.1
  %i.ag = select i1 %i.af, i1 true, i1 %.not36.i
  %.225.i.3 = select i1 %i.ag, i1 true, i1 %.12450.i ; 2 uses
  %.027.i.3 = getelementptr i8, ptr %.02753.i, i64 32 ; 2 uses
  %.not30.i.3 = icmp eq i64 %i.ac, 0
  br i1 %.not30.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !191

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %mi_bitmap_mask_.exit24.i.i
  %.124.lcssa.i = phi i1 [ %.not29.i, %mi_bitmap_mask_.exit24.i.i ], [ %.225.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.225.i.3, %.lr.ph.i ] ; 2 uses
  %.027.lcssa.i = phi ptr [ %.02748.i, %mi_bitmap_mask_.exit24.i.i ], [ %.027.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.027.i.3, %.lr.ph.i ]
  %.not31.i = icmp eq i64 %i.o, 0
  br i1 %.not31.i, label %mi_bitmap_is_claimedx_across.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  %i.ah = load atomic i64, ptr %.027.lcssa.i monotonic, align 8
  %i.ai = and i64 %i.ah, %i.p
  %.not33.i = icmp ne i64 %i.ai, 0
  %spec.select39.i = select i1 %.not33.i, i1 true, i1 %.124.lcssa.i
  br label %mi_bitmap_is_claimedx_across.exit

mi_bitmap_is_claimedx_across.exit:                ; preds = %._crit_edge.thread.i, %._crit_edge.i, %bb.e
  %.326.i = phi i1 [ %.124.lcssa.i, %._crit_edge.i ], [ %spec.select39.i, %bb.e ], [ %.not2964.i, %._crit_edge.thread.i ]
  ret i1 %.326.i
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_heap_collect_abandon(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  tail call fastcc void @mi_heap_collect_ex(ptr noundef %0, i32 noundef 2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mi_heap_collect_ex(ptr noundef %0, i32 noundef range(i32 0, 3) %1) unnamed_addr #2 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %0, @_mi_heap_empty
  %or.cond43 = and i1 %i.a, %i.b
  br i1 %or.cond43, label %bb.b, label %.critedge28

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne i32 %1, 0                        ; 5 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !22     ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !29
  %i.f = add i64 %i.e, 1                          ; 2 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !29
  %i.g = load volatile ptr, ptr @deferred_free, align 8, !tbaa !40
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_mi_deferred_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.d, i64 8        ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !41, !range !42, !noundef !43
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_mi_deferred_free.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.h, align 8, !tbaa !41
  %i.k = load volatile ptr, ptr @deferred_free, align 8, !tbaa !40
  %i.l = load atomic ptr, ptr @deferred_arg monotonic, align 8
  tail call void %i.k(i1 noundef zeroext %i.c, i64 noundef %i.f, ptr noundef %i.l) #55, !inline_history !44
  %i.m = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 8
  store i8 0, ptr %i.n, align 8, !tbaa !41
  br label %_mi_deferred_free.exit

_mi_deferred_free.exit:                           ; preds = %bb.b, %bb.c, %bb.d
  %i.o = phi ptr [ %i.d, %bb.b ], [ %i.d, %bb.c ], [ %i.m, %bb.d ] ; 2 uses
  %i.p = load i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_heap_main, i64 2848), align 8, !tbaa !193 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_mi_is_main_thread.exit.thread, label %_mi_is_main_thread.exit

_mi_is_main_thread.exit:                          ; preds = %_mi_deferred_free.exit
  %i.r = tail call ptr asm "movq %fs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) null) #60, !srcloc !58
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = icmp eq i64 %i.p, %i.s
  br i1 %i.t, label %_mi_is_main_thread.exit.thread, label %.thread

.thread:                                          ; preds = %_mi_is_main_thread.exit
  %i.u = icmp eq i32 %1, 1
  br label %.critedge

_mi_is_main_thread.exit.thread:                   ; preds = %_mi_deferred_free.exit, %_mi_is_main_thread.exit
  %i.v = getelementptr i8, ptr %0, i64 2848
  %i.w = load i64, ptr %i.v, align 8, !tbaa !193
  %i.x = tail call ptr asm "movq %fs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) null) #60, !srcloc !58
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = icmp eq i64 %i.w, %i.y                   ; 2 uses
  %i.aa = icmp eq i32 %1, 1                       ; 2 uses
  %or.cond = select i1 %i.aa, i1 %i.z, i1 false
  br i1 %or.cond, label %bb.e, label %.critedge

bb.e:                                             ; preds = %_mi_is_main_thread.exit.thread
  %i.ab = getelementptr i8, ptr %i.o, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !194
  %i.ad = icmp eq ptr %i.ac, %0
  br i1 %i.ad, label %bb.f, label %.critedge.thread

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr i8, ptr %0, i64 3056
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !195, !range !42, !noundef !43
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %.critedge.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr i8, ptr %i.o, i64 32
end_hunk_4
begin_hunk_5_@mi_heap_free:bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_mi_heap_set_default_direct.exit
  %.019 = phi ptr [ null, %_mi_heap_set_default_direct.exit ], [ %.0, %bb.f ] ; 2 uses
  %.0.in = phi ptr [ %i.k, %_mi_heap_set_default_direct.exit ], [ %i.o, %bb.f ]
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !54  ; 5 uses
  %i.l = icmp ne ptr %.0, %0
  %i.m = icmp ne ptr %.0, null
  %i.n = and i1 %i.l, %i.m
  %i.o = getelementptr i8, ptr %.0, i64 3048
  br i1 %i.n, label %bb.f, label %bb.g, !llvm.loop !211

bb.g:                                             ; preds = %bb.f
  %i.p = icmp eq ptr %.0, %0
  br i1 %i.p, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %.not = icmp eq ptr %.019, null
  %i.q = getelementptr i8, ptr %0, i64 3048
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !207  ; 2 uses
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr i8, ptr %.019, i64 3048
  store ptr %i.r, ptr %i.s, align 8, !tbaa !207
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store ptr %i.r, ptr %i.k, align 8, !tbaa !206
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.g
  %i.t = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.u = add i64 %i.t, -1
  %i.v = and i64 %i.u, -33554432                  ; 2 uses
  %i.w = inttoptr i64 %i.v to ptr                 ; 4 uses
  %i.x = tail call ptr asm "movq %fs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) null) #60, !srcloc !58
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = getelementptr i8, ptr %i.w, i64 256
  %i.aa = load atomic i64, ptr %i.z monotonic, align 256
  %i.ab = icmp eq i64 %i.aa, %i.y
  %i.ac = sub i64 %i.t, %i.v
  %i.ad = lshr i64 %i.ac, 16
  %i.ae = getelementptr i8, ptr %i.w, i64 264
  %i.af = getelementptr [80 x i8], ptr %i.ae, i64 %i.ad ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !59
  %i.ai = zext i32 %i.ah to i64
  %i.aj = sub nsw i64 0, %i.ai
  %i.ak = getelementptr i8, ptr %i.af, i64 %i.aj  ; 6 uses
  br i1 %i.ab, label %bb.l, label %bb.p, !prof !55

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr i8, ptr %i.ak, i64 14
  %i.am = load i8, ptr %i.al, align 2, !tbaa !60
  %i.an = icmp eq i8 %i.am, 0
  br i1 %i.an, label %bb.m, label %bb.o, !prof !55

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr i8, ptr %i.ak, i64 32     ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !57
  %i.aq = ptrtoint ptr %i.ap to i64
  store atomic i64 %i.aq, ptr %0 monotonic, align 8
  store ptr %0, ptr %i.ao, align 8, !tbaa !57
  %i.ar = getelementptr i8, ptr %i.ak, i64 24     ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !18
  %i.at = add i32 %i.as, -1                       ; 2 uses
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !18
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.n, label %mi_free.exit, !prof !17

bb.n:                                             ; preds = %bb.m
  tail call void @_mi_page_retire(ptr noundef %i.ak)
  br label %mi_free.exit

bb.o:                                             ; preds = %bb.l
  tail call void @_mi_free_generic(ptr noundef nonnull %i.w, ptr noundef %i.ak, i1 noundef zeroext true, ptr noundef nonnull %0)
  br label %mi_free.exit

bb.p:                                             ; preds = %bb.k
  tail call void @_mi_free_generic(ptr noundef nonnull %i.w, ptr noundef %i.ak, i1 noundef zeroext false, ptr noundef nonnull %0)
  br label %mi_free.exit

mi_free.exit:                                     ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_heap_unsafe_destroy_all() local_unnamed_addr #2 {
bb.a:
  tail call void @mi_process_init(), !inline_history !203
  %i.a = tail call fastcc zeroext i1 @_mi_heap_init(), !inline_history !203
  br i1 %i.a, label %mi_heap_get_backing.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 312), i64 1 monotonic, align 8
  %i.c = add i64 %i.b, 1                          ; 2 uses
  %i.d = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 304) monotonic, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.0.i.i.i.i.i = phi i64 [ %i.d, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.e = icmp slt i64 %.0.i.i.i.i.i, %i.c
  br i1 %i.e, label %bb.d, label %_mi_stat_increase.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.f = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 304), i64 %.0.i.i.i.i.i, i64 %i.c release monotonic, align 8 ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  %i.h = extractvalue { i64, i1 } %i.f, 0
  br i1 %i.g, label %_mi_stat_increase.exit.i.i, label %bb.c, !llvm.loop !124

_mi_stat_increase.exit.i.i:                       ; preds = %bb.d, %bb.c
  %i.i = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 288), i64 1 monotonic, align 8 ; 0 uses
  %i.j = atomicrmw add ptr @thread_count, i64 1 monotonic, align 8 ; 0 uses
  br label %mi_heap_get_backing.exit

mi_heap_get_backing.exit:                         ; preds = %bb.a, %_mi_stat_increase.exit.i.i
  %i.k = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !54
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.n = getelementptr i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !194
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !22
  %i.q = getelementptr i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !206  ; 2 uses
  %.not8 = icmp eq ptr %i.r, null
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %mi_heap_get_backing.exit, %mi_heap_destroy.exit
  %.09 = phi ptr [ %i.t, %mi_heap_destroy.exit ], [ %i.r, %mi_heap_get_backing.exit ] ; 6 uses
  %i.s = getelementptr i8, ptr %.09, i64 3048
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !207  ; 2 uses
  %i.u = getelementptr i8, ptr %.09, i64 3056
  %i.v = load i8, ptr %i.u, align 8, !tbaa !195, !range !42, !noundef !43
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %.not7 = icmp eq ptr %.09, @_mi_heap_empty
  br i1 %.not7, label %mi_heap_destroy.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_mi_heap_destroy_pages(ptr noundef nonnull %.09)
  tail call fastcc void @mi_heap_free(ptr noundef nonnull %.09)
  br label %mi_heap_destroy.exit

bb.g:                                             ; preds = %.lr.ph
  tail call void @_mi_heap_destroy_pages(ptr noundef nonnull %.09)
  br label %mi_heap_destroy.exit

mi_heap_destroy.exit:                             ; preds = %bb.f, %bb.e, %bb.g
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !212

._crit_edge:                                      ; preds = %mi_heap_destroy.exit, %mi_heap_get_backing.exit
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @mi_heap_set_default(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %0, @_mi_heap_empty
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %_mi_heap_set_default_direct.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default) ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !54   ; 2 uses
  store ptr %0, ptr %i.c, align 8, !tbaa !54
  %i.e = load i32, ptr @_mi_heap_default_key, align 4, !tbaa !7 ; 2 uses
  %.not.i.i = icmp eq i32 %i.e, -1
  br i1 %.not.i.i, label %_mi_heap_set_default_direct.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @pthread_setspecific(i32 noundef %i.e, ptr noundef nonnull %0) #55 ; 0 uses
  br label %_mi_heap_set_default_direct.exit

_mi_heap_set_default_direct.exit:                 ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.d, %bb.c ], [ %i.d, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_heap_set_default_direct(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  store ptr %0, ptr %i.a, align 8, !tbaa !54
  %i.b = load i32, ptr @_mi_heap_default_key, align 4, !tbaa !7 ; 2 uses
  %.not.i = icmp eq i32 %i.b, -1
  br i1 %.not.i, label %_mi_prim_thread_associate_default_heap.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @pthread_setspecific(i32 noundef %i.b, ptr noundef %0) #55 ; 0 uses
  br label %_mi_prim_thread_associate_default_heap.exit

_mi_prim_thread_associate_default_heap.exit:      ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @mi_heap_contains_block(ptr noundef readnone captures(address) %0, ptr noundef %1) local_unnamed_addr #16 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %0, @_mi_heap_empty
  %or.cond.not8 = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %1, null
  %or.cond6 = or i1 %or.cond.not8, %i.c
  br i1 %or.cond6, label %mi_heap_of_block.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.e = add i64 %i.d, -1
  %i.f = and i64 %i.e, -33554432                  ; 3 uses
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_heap_main, i64 2864), align 8, !tbaa !95
  %i.i = xor i64 %i.h, %i.f
  %i.j = getelementptr i8, ptr %i.g, i64 216
  %i.k = load i64, ptr %i.j, align 8, !tbaa !96
  %.not.i = icmp eq i64 %i.i, %i.k
  br i1 %.not.i, label %bb.c, label %mi_heap_of_block.exit, !prof !55

bb.c:                                             ; preds = %bb.b
  %i.l = sub i64 %i.d, %i.f
  %i.m = lshr i64 %i.l, 16
  %i.n = getelementptr i8, ptr %i.g, i64 264
  %i.o = getelementptr [80 x i8], ptr %i.n, i64 %i.m ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !59
  %i.r = zext i32 %i.q to i64
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr i8, ptr %i.o, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 48
  %i.v = load atomic i64, ptr %i.u monotonic, align 8
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = icmp eq ptr %0, %i.w
  br label %mi_heap_of_block.exit

mi_heap_of_block.exit:                            ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.x, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @mi_heap_check_owned(ptr noundef readonly captures(address) %0, ptr noundef %1) local_unnamed_addr #22 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %mi_heap_visit_pages.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne ptr %0, @_mi_heap_empty
  %i.c = ptrtoint ptr %1 to i64
  %i.d = and i64 %i.c, 7
  %.not = icmp eq i64 %i.d, 0
  %or.cond = and i1 %i.b, %.not
  br i1 %or.cond, label %bb.c, label %mi_heap_visit_pages.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 3024
  %i.f = load i64, ptr %i.e, align 8, !tbaa !196
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %mi_heap_visit_pages.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 1040
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i, %.preheader.i
  %.02229.i = phi i64 [ 0, %.preheader.i ], [ %i.ba, %.critedge.i ] ; 2 uses
  %i.i = getelementptr [24 x i8], ptr %i.h, i64 %.02229.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !64   ; 2 uses
  %.not.i11 = icmp eq ptr %i.j, null
  br i1 %.not.i11, label %.critedge.i, label %.lr.ph

bb.e:                                             ; preds = %mi_heap_page_check_owned.exit
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %.critedge.i, label %.lr.ph, !llvm.loop !199

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.020.i12 = phi ptr [ %i.l, %bb.e ], [ %i.j, %bb.d ] ; 6 uses
  %i.k = getelementptr i8, ptr %.020.i12, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !197  ; 2 uses
  %i.m = ptrtoint ptr %.020.i12 to i64            ; 3 uses
  %i.n = add i64 %i.m, -1
  %i.o = and i64 %i.n, -33554432
  %i.p = inttoptr i64 %i.o to ptr                 ; 4 uses
  %i.q = getelementptr i8, ptr %.020.i12, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !21   ; 5 uses
  %i.s = zext i32 %i.r to i64                     ; 4 uses
  %i.t = load i32, ptr %.020.i12, align 8, !tbaa !52
  %i.u = zext i32 %i.t to i64
  %i.v = icmp ugt i32 %i.r, 7
  br i1 %i.v, label %bb.f, label %_mi_page_start.exit.thread.i

bb.f:                                             ; preds = %.lr.ph
  %i.w = icmp ult i32 %i.r, 65
  br i1 %i.w, label %bb.g, label %_mi_page_start.exit.i

bb.g:                                             ; preds = %bb.f
  %i.x = mul nuw nsw i64 %i.s, 3
  br label %_mi_page_start.exit.thread.i

_mi_page_start.exit.thread.i:                     ; preds = %bb.g, %.lr.ph
  %.0.i.i.i.ph.i = phi i64 [ 0, %.lr.ph ], [ %i.x, %bb.g ]
  %i.y = getelementptr i8, ptr %i.p, i64 264
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.m, %i.z
  %i.ab = sdiv exact i64 %i.aa, 80
  %i.ac = shl i64 %i.ab, 16
  %i.ad = getelementptr i8, ptr %i.p, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 %.0.i.i.i.ph.i
  %i.af = getelementptr i8, ptr %.020.i12, i64 10
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !74
  br label %mi_heap_page_check_owned.exit

_mi_page_start.exit.i:                            ; preds = %bb.f
  %i.ah = icmp ult i32 %i.r, 513
  %spec.select.i.i.i.i = select i1 %i.ah, i64 %i.s, i64 0
  %i.ai = getelementptr i8, ptr %i.p, i64 264
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.m, %i.aj
  %i.al = sdiv exact i64 %i.ak, 80
  %i.am = shl i64 %i.al, 16
  %i.an = getelementptr i8, ptr %i.p, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.an, i64 %spec.select.i.i.i.i ; 2 uses
  %i.ap = getelementptr i8, ptr %.020.i12, i64 10
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !74 ; 2 uses
  %i.ar = icmp sgt i32 %i.r, -1
  br i1 %i.ar, label %mi_heap_page_check_owned.exit, label %_mi_segment_page_start.exit.i.i, !prof !56

_mi_segment_page_start.exit.i.i:                  ; preds = %_mi_page_start.exit.i
  %i.as = shl nuw nsw i64 %i.u, 16
  br label %mi_heap_page_check_owned.exit

mi_heap_page_check_owned.exit:                    ; preds = %_mi_page_start.exit.thread.i, %_mi_page_start.exit.i, %_mi_segment_page_start.exit.i.i
  %.in.i = phi i16 [ %i.aq, %_mi_segment_page_start.exit.i.i ], [ %i.ag, %_mi_page_start.exit.thread.i ], [ %i.aq, %_mi_page_start.exit.i ]
  %i.at = phi ptr [ %i.ao, %_mi_segment_page_start.exit.i.i ], [ %i.ae, %_mi_page_start.exit.thread.i ], [ %i.ao, %_mi_page_start.exit.i ] ; 2 uses
  %.0.i.i = phi i64 [ %i.as, %_mi_segment_page_start.exit.i.i ], [ %i.s, %_mi_page_start.exit.thread.i ], [ %i.s, %_mi_page_start.exit.i ]
  %i.au = zext i16 %.in.i to i64
  %i.av = mul nuw i64 %.0.i.i, %i.au
  %i.aw = getelementptr i8, ptr %i.at, i64 %i.av
  %i.ax = icmp uge ptr %1, %i.at
  %i.ay = icmp ult ptr %1, %i.aw
  %i.az = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %i.az, label %mi_heap_visit_pages.exit, label %bb.e, !llvm.loop !199

.critedge.i:                                      ; preds = %bb.e, %bb.d
  %i.ba = add nuw nsw i64 %.02229.i, 1            ; 2 uses
  %exitcond.i = icmp eq i64 %i.ba, 75
  br i1 %exitcond.i, label %mi_heap_visit_pages.exit, label %bb.d, !llvm.loop !200

mi_heap_visit_pages.exit:                         ; preds = %.critedge.i, %mi_heap_page_check_owned.exit, %bb.c, %bb.a, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ true, %mi_heap_page_check_owned.exit ], [ false, %bb.c ], [ false, %.critedge.i ]
  ret i1 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @mi_check_owned(ptr noundef %0) local_unnamed_addr #22 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %mi_heap_check_owned.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ne ptr %i.b, @_mi_heap_empty
  %i.e = ptrtoint ptr %0 to i64
  %i.f = and i64 %i.e, 7
  %.not.i = icmp eq i64 %i.f, 0
  %or.cond.i = and i1 %.not.i, %i.d
  br i1 %or.cond.i, label %bb.c, label %mi_heap_check_owned.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.b, i64 3024
  %i.h = load i64, ptr %i.g, align 8, !tbaa !196
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %mi_heap_check_owned.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.b, i64 1040
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i.i, %.preheader.i.i
  %.02229.i.i = phi i64 [ 0, %.preheader.i.i ], [ %i.bc, %.critedge.i.i ] ; 2 uses
  %i.k = getelementptr [24 x i8], ptr %i.j, i64 %.02229.i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !64   ; 2 uses
  %.not.i11.i = icmp eq ptr %i.l, null
  br i1 %.not.i11.i, label %.critedge.i.i, label %.lr.ph.i

bb.e:                                             ; preds = %mi_heap_page_check_owned.exit.i
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %.critedge.i.i, label %.lr.ph.i, !llvm.loop !199

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.020.i12.i = phi ptr [ %i.n, %bb.e ], [ %i.l, %bb.d ] ; 6 uses
  %i.m = getelementptr i8, ptr %.020.i12.i, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !197  ; 2 uses
  %i.o = ptrtoint ptr %.020.i12.i to i64          ; 3 uses
  %i.p = add i64 %i.o, -1
  %i.q = and i64 %i.p, -33554432
  %i.r = inttoptr i64 %i.q to ptr                 ; 4 uses
  %i.s = getelementptr i8, ptr %.020.i12.i, i64 28
  %i.t = load i32, ptr %i.s, align 4, !tbaa !21   ; 5 uses
  %i.u = zext i32 %i.t to i64                     ; 4 uses
  %i.v = load i32, ptr %.020.i12.i, align 8, !tbaa !52
  %i.w = zext i32 %i.v to i64
  %i.x = icmp ugt i32 %i.t, 7
  br i1 %i.x, label %bb.f, label %_mi_page_start.exit.thread.i.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.y = icmp ult i32 %i.t, 65
  br i1 %i.y, label %bb.g, label %_mi_page_start.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.z = mul nuw nsw i64 %i.u, 3
  br label %_mi_page_start.exit.thread.i.i

_mi_page_start.exit.thread.i.i:                   ; preds = %bb.g, %.lr.ph.i
  %.0.i.i.i.ph.i.i = phi i64 [ 0, %.lr.ph.i ], [ %i.z, %bb.g ]
  %i.aa = getelementptr i8, ptr %i.r, i64 264
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.o, %i.ab
  %i.ad = sdiv exact i64 %i.ac, 80
  %i.ae = shl i64 %i.ad, 16
  %i.af = getelementptr i8, ptr %i.r, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 %.0.i.i.i.ph.i.i
  %i.ah = getelementptr i8, ptr %.020.i12.i, i64 10
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !74
  br label %mi_heap_page_check_owned.exit.i

_mi_page_start.exit.i.i:                          ; preds = %bb.f
  %i.aj = icmp ult i32 %i.t, 513
  %spec.select.i.i.i.i.i = select i1 %i.aj, i64 %i.u, i64 0
  %i.ak = getelementptr i8, ptr %i.r, i64 264
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.o, %i.al
  %i.an = sdiv exact i64 %i.am, 80
  %i.ao = shl i64 %i.an, 16
  %i.ap = getelementptr i8, ptr %i.r, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 %spec.select.i.i.i.i.i ; 2 uses
  %i.ar = getelementptr i8, ptr %.020.i12.i, i64 10
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !74 ; 2 uses
  %i.at = icmp sgt i32 %i.t, -1
  br i1 %i.at, label %mi_heap_page_check_owned.exit.i, label %_mi_segment_page_start.exit.i.i.i, !prof !56

_mi_segment_page_start.exit.i.i.i:                ; preds = %_mi_page_start.exit.i.i
  %i.au = shl nuw nsw i64 %i.w, 16
  br label %mi_heap_page_check_owned.exit.i

mi_heap_page_check_owned.exit.i:                  ; preds = %_mi_segment_page_start.exit.i.i.i, %_mi_page_start.exit.i.i, %_mi_page_start.exit.thread.i.i
  %.in.i.i = phi i16 [ %i.as, %_mi_segment_page_start.exit.i.i.i ], [ %i.ai, %_mi_page_start.exit.thread.i.i ], [ %i.as, %_mi_page_start.exit.i.i ]
  %i.av = phi ptr [ %i.aq, %_mi_segment_page_start.exit.i.i.i ], [ %i.ag, %_mi_page_start.exit.thread.i.i ], [ %i.aq, %_mi_page_start.exit.i.i ] ; 2 uses
  %.0.i.i.i = phi i64 [ %i.au, %_mi_segment_page_start.exit.i.i.i ], [ %i.u, %_mi_page_start.exit.thread.i.i ], [ %i.u, %_mi_page_start.exit.i.i ]
  %i.aw = zext i16 %.in.i.i to i64
  %i.ax = mul nuw i64 %.0.i.i.i, %i.aw
  %i.ay = getelementptr i8, ptr %i.av, i64 %i.ax
  %i.az = icmp uge ptr %0, %i.av
  %i.ba = icmp ult ptr %0, %i.ay
  %i.bb = select i1 %i.az, i1 %i.ba, i1 false
  br i1 %i.bb, label %mi_heap_check_owned.exit, label %bb.e, !llvm.loop !199

.critedge.i.i:                                    ; preds = %bb.e, %bb.d
  %i.bc = add nuw nsw i64 %.02229.i.i, 1          ; 2 uses
  %exitcond.i.i = icmp eq i64 %i.bc, 75
  br i1 %exitcond.i.i, label %mi_heap_check_owned.exit, label %bb.d, !llvm.loop !200

mi_heap_check_owned.exit:                         ; preds = %.critedge.i.i, %mi_heap_page_check_owned.exit.i, %bb.a, %bb.b, %bb.c
  %.0.i = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ true, %mi_heap_page_check_owned.exit.i ], [ false, %bb.c ], [ false, %.critedge.i.i ]
  ret i1 %.0.i
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @_mi_heap_area_visit_blocks(ptr noundef %0, ptr noundef %1, ptr noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [128 x i64], align 16             ; 6 uses
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %1, null
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %1, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !21   ; 6 uses
  %i.i = icmp sgt i32 %i.h, -1
  br i1 %i.i, label %mi_page_usable_block_size.exit, label %.thread, !prof !55

.thread:                                          ; preds = %bb.c
  %i.j = load i32, ptr %1, align 8, !tbaa !52
  %i.k = zext i32 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 16
  %i.m = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.n = add i64 %i.m, -1
  %i.o = and i64 %i.n, -33554432
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = zext i32 %i.h to i64
  br label %bb.f

mi_page_usable_block_size.exit:                   ; preds = %bb.c
  %i.r = zext nneg i32 %i.h to i64                ; 5 uses
  %i.s = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.t = add i64 %i.s, -1
  %i.u = and i64 %i.t, -33554432
  %i.v = inttoptr i64 %i.u to ptr                 ; 3 uses
  %i.w = icmp samesign ugt i32 %i.h, 7
  br i1 %i.w, label %bb.d, label %_mi_page_start.exit

bb.d:                                             ; preds = %mi_page_usable_block_size.exit
  %i.x = icmp samesign ult i32 %i.h, 65
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = mul nuw nsw i64 %i.r, 3
  br label %_mi_page_start.exit

bb.f:                                             ; preds = %.thread, %bb.d
  %.0.i119124130 = phi i64 [ %i.l, %.thread ], [ %i.r, %bb.d ]
  %i.z = phi i64 [ %i.m, %.thread ], [ %i.s, %bb.d ]
  %i.aa = phi ptr [ %i.p, %.thread ], [ %i.v, %bb.d ]
  %i.ab = phi i64 [ %i.q, %.thread ], [ %i.r, %bb.d ]
  %i.ac = icmp ult i32 %i.h, 513
  %spec.select.i.i.i = select i1 %i.ac, i64 %i.ab, i64 0
  br label %_mi_page_start.exit

_mi_page_start.exit:                              ; preds = %mi_page_usable_block_size.exit, %bb.e, %bb.f
  %i.ad = phi ptr [ %i.v, %bb.e ], [ %i.v, %mi_page_usable_block_size.exit ], [ %i.aa, %bb.f ] ; 2 uses
  %i.ae = phi i64 [ %i.s, %bb.e ], [ %i.s, %mi_page_usable_block_size.exit ], [ %i.z, %bb.f ]
  %.0.i.i125 = phi i64 [ %i.r, %bb.e ], [ %i.r, %mi_page_usable_block_size.exit ], [ %.0.i119124130, %bb.f ] ; 11 uses
  %.0.i.i.i = phi i64 [ %i.y, %bb.e ], [ 0, %mi_page_usable_block_size.exit ], [ %spec.select.i.i.i, %bb.f ]
  %i.af = getelementptr i8, ptr %i.ad, i64 264
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ae, %i.ag
  %i.ai = sdiv exact i64 %i.ah, 80
  %i.aj = shl i64 %i.ai, 16
  %i.ak = getelementptr i8, ptr %i.ad, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 %.0.i.i.i ; 4 uses
  %i.am = getelementptr i8, ptr %1, i64 48
  %i.an = load atomic i64, ptr %i.am monotonic, align 8
  %i.ao = inttoptr i64 %i.an to ptr               ; 4 uses
  %i.ap = getelementptr i8, ptr %1, i64 10        ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !74 ; 5 uses
  %i.ar = icmp eq i16 %i.aq, 1
  br i1 %i.ar, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_mi_page_start.exit
  %i.as = tail call zeroext i1 %2(ptr noundef %i.ao, ptr noundef nonnull %0, ptr noundef %i.al, i64 noundef %.0.i.i125, ptr noundef %3) #55
  br label %.critedge

bb.h:                                             ; preds = %_mi_page_start.exit
  %i.at = zext i16 %i.aq to i32
  %i.au = icmp eq i32 %i.e, %i.at
  br i1 %i.au, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.h
  %.not111.not150.not = icmp eq i16 %i.aq, 0
  br i1 %.not111.not150.not, label %.critedge, label %.lr.ph153

.lr.ph153:                                        ; preds = %.preheader, %bb.i
  %.0101152 = phi ptr [ %i.aw, %bb.i ], [ %i.al, %.preheader ] ; 2 uses
  %.0102151 = phi i64 [ %i.ax, %bb.i ], [ 0, %.preheader ]
  %i.av = tail call zeroext i1 %2(ptr noundef %i.ao, ptr noundef nonnull %0, ptr noundef %.0101152, i64 noundef %.0.i.i125, ptr noundef %3) #55 ; 3 uses
  br i1 %i.av, label %bb.i, label %.critedge

bb.i:                                             ; preds = %.lr.ph153
  %i.aw = getelementptr i8, ptr %.0101152, i64 %.0.i.i125
  %i.ax = add nuw nsw i64 %.0102151, 1            ; 2 uses
  %i.ay = load i16, ptr %i.ap, align 2, !tbaa !74
  %i.az = zext i16 %i.ay to i64
  %.not111.not = icmp samesign ult i64 %i.ax, %i.az
  br i1 %.not111.not, label %.lr.ph153, label %.critedge, !llvm.loop !213

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.ba = zext i16 %i.aq to i64
  %i.bb = add nuw nsw i64 %i.ba, 63
  %i.bc = lshr i64 %i.bb, 6                       ; 4 uses
  %i.bd = shl nuw nsw i64 %i.bc, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.bd, i1 false)
  %i.be = and i16 %i.aq, 63                       ; 2 uses
  %.not = icmp eq i16 %i.be, 0
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = zext nneg i16 %i.be to i64
  %i.bg = shl nsw i64 -1, %i.bf
  %i.bh = getelementptr [8 x i8], ptr %i.a, i64 %i.bc
  %i.bi = getelementptr i8, ptr %i.bh, i64 -8
  store i64 %i.bg, ptr %i.bi, align 8, !tbaa !105
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bj = add nsw i64 %.0.i.i125, -1
  %i.bk = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bj, i1 false)
  %i.bl = sub nuw nsw i64 64, %i.bk               ; 2 uses
  %i.bm = shl nuw i64 1, %i.bl
  %i.bn = sub i64 %i.bm, %.0.i.i125
  %i.bo = shl i64 %i.bn, 32
  %i.bp = udiv i64 %i.bo, %.0.i.i125
  %i.bq = add nuw i64 %i.bp, 1
  %i.br = getelementptr i8, ptr %1, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !11 ; 2 uses
  %.not108141 = icmp eq ptr %i.bs, null
  br i1 %.not108141, label %.preheader135, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.bt = ptrtoint ptr %i.al to i64
  br label %bb.m

.preheader135:                                    ; preds = %bb.m, %bb.l
  %.not110145 = icmp eq i64 %i.bc, 0
  br i1 %.not110145, label %.critedge115, label %.lr.ph149

.lr.ph149:                                        ; preds = %.preheader135
  %i.bu = shl nuw nsw i64 %.0.i.i125, 6
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph, %bb.m
  %.0103142 = phi ptr [ %i.bs, %.lr.ph ], [ %i.ci, %bb.m ] ; 2 uses
  %i.bv = ptrtoint ptr %.0103142 to i64
  %i.bw = sub i64 %i.bv, %i.bt                    ; 2 uses
  %i.bx = mul i64 %i.bw, %i.bq
  %i.by = lshr i64 %i.bx, 32
  %i.bz = add i64 %i.by, %i.bw
  %i.ca = lshr i64 %i.bz, %i.bl                   ; 2 uses
  %i.cb = lshr i64 %i.ca, 6
  %i.cc = and i64 %i.ca, 63
  %i.cd = shl nuw i64 1, %i.cc
  %i.ce = getelementptr [8 x i8], ptr %i.a, i64 %i.cb ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !105
  %i.cg = or i64 %i.cf, %i.cd
  store i64 %i.cg, ptr %i.ce, align 8, !tbaa !105
  %i.ch = load atomic i64, ptr %.0103142 monotonic, align 8 ; 2 uses
  %i.ci = inttoptr i64 %i.ch to ptr
  %.not108 = icmp eq i64 %i.ch, 0
  br i1 %.not108, label %.preheader135, label %bb.m, !llvm.loop !214

bb.n:                                             ; preds = %.lr.ph149, %.critedge113
  %.091147 = phi i64 [ 0, %.lr.ph149 ], [ %i.cx, %.critedge113 ] ; 2 uses
  %.092146 = phi ptr [ %i.al, %.lr.ph149 ], [ %.395, %.critedge113 ] ; 3 uses
  %i.cj = getelementptr [8 x i8], ptr %i.a, i64 %.091147
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !105 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %.preheader133, label %bb.p

.preheader133:                                    ; preds = %bb.n, %bb.o
  %.090144 = phi i64 [ %i.co, %bb.o ], [ 0, %bb.n ]
  %.193143 = phi ptr [ %i.cn, %bb.o ], [ %.092146, %bb.n ] ; 2 uses
  %i.cm = tail call zeroext i1 %2(ptr noundef %i.ao, ptr noundef nonnull %0, ptr noundef %.193143, i64 noundef %.0.i.i125, ptr noundef %3) #55
  br i1 %i.cm, label %bb.o, label %.critedge115

bb.o:                                             ; preds = %.preheader133
  %i.cn = getelementptr i8, ptr %.193143, i64 %.0.i.i125 ; 2 uses
  %i.co = add nuw nsw i64 %.090144, 1             ; 2 uses
  %exitcond = icmp eq i64 %i.co, 64
  br i1 %exitcond, label %.critedge113, label %.preheader133, !llvm.loop !215

bb.p:                                             ; preds = %bb.n
  %i.cp = xor i64 %i.ck, -1
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %bb.p
  %.088 = phi i64 [ %i.cp, %bb.p ], [ %i.cv, %bb.r ] ; 4 uses
  %.not109 = icmp eq i64 %.088, 0
  br i1 %.not109, label %.thread131, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cq = tail call range(i64 0, 64) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.088, i1 true)
  %i.cr = mul nuw nsw i64 %i.cq, %.0.i.i125
  %i.cs = getelementptr i8, ptr %.092146, i64 %i.cr
  %i.ct = tail call zeroext i1 %2(ptr noundef %i.ao, ptr noundef nonnull %0, ptr noundef %i.cs, i64 noundef %.0.i.i125, ptr noundef %3) #55
  %i.cu = add i64 %.088, -1
  %i.cv = and i64 %i.cu, %.088
  br i1 %i.ct, label %bb.q, label %.critedge115, !llvm.loop !216

.thread131:                                       ; preds = %bb.q
  %i.cw = getelementptr i8, ptr %.092146, i64 %i.bu
  br label %.critedge113

.critedge113:                                     ; preds = %bb.o, %.thread131
  %.395 = phi ptr [ %i.cw, %.thread131 ], [ %i.cn, %bb.o ]
  %i.cx = add nuw nsw i64 %.091147, 1             ; 2 uses
  %exitcond159.not = icmp eq i64 %i.cx, %i.bc
  br i1 %exitcond159.not, label %.critedge115, label %bb.n, !llvm.loop !217

.critedge115:                                     ; preds = %.critedge113, %bb.r, %.preheader133, %.preheader135
  %.not110140 = phi i1 [ false, %bb.r ], [ false, %.preheader133 ], [ true, %.preheader135 ], [ true, %.critedge113 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %.lr.ph153, %.preheader, %bb.g, %.critedge115, %bb.b, %bb.a
  %.11 = phi i1 [ true, %bb.b ], [ true, %bb.a ], [ %i.as, %bb.g ], [ %.not110140, %.critedge115 ], [ true, %.preheader ], [ %i.av, %.lr.ph153 ], [ %i.av, %bb.i ]
  ret i1 %.11
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #23

; Function Attrs: nounwind uwtable
define hidden void @_mi_heap_area_init(ptr noundef writeonly captures(none) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 40         ; 2 uses
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.i.i = phi i64 [ %i.b, %bb.a ], [ %i.f, %bb.b ] ; 3 uses
  %i.c = and i64 %.0.i.i, 3
  %i.d = cmpxchg weak ptr %i.a, i64 %.0.i.i, i64 %i.c acq_rel acquire, align 8 ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.d, 1
  %i.f = extractvalue { i64, i1 } %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b, !llvm.loop !73

bb.c:                                             ; preds = %bb.b
  %i.g = and i64 %.0.i.i, -4                      ; 2 uses
  %i.h = inttoptr i64 %i.g to ptr                 ; 3 uses
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %_mi_page_thread_free_collect.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %1, i64 10
  %i.k = load i16, ptr %i.j, align 2, !tbaa !74   ; 2 uses
  %i.l = zext i16 %i.k to i32                     ; 2 uses
  %i.m = load atomic i64, ptr %i.h monotonic, align 8 ; 2 uses
  %i.n = icmp ne i64 %i.m, 0
  %i.o = icmp ne i16 %i.k, 0
  %i.p = select i1 %i.n, i1 %i.o, i1 false
  br i1 %i.p, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %i.q = phi i64 [ %i.t, %.lr.ph.i.i ], [ %i.m, %bb.d ]
  %.02934.i.i = phi i32 [ %i.s, %.lr.ph.i.i ], [ 1, %bb.d ] ; 2 uses
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  %i.s = add nuw nsw i32 %.02934.i.i, 1           ; 2 uses
  %i.t = load atomic i64, ptr %i.r monotonic, align 8 ; 2 uses
  %i.u = icmp ne i64 %i.t, 0
  %i.v = icmp samesign ult i32 %.02934.i.i, %i.l
  %i.w = select i1 %i.u, i1 %i.v, i1 false
  br i1 %i.w, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !75

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.d
  %.029.lcssa.i.i = phi i32 [ 1, %bb.d ], [ %i.s, %.lr.ph.i.i ] ; 2 uses
  %.028.lcssa.i.i = phi ptr [ %i.h, %bb.d ], [ %i.r, %.lr.ph.i.i ]
  %i.x = icmp samesign ugt i32 %.029.lcssa.i.i, %i.l
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 14, ptr noundef nonnull @.str.100)
  br label %_mi_page_thread_free_collect.exit.i

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.y = getelementptr i8, ptr %1, i64 32         ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !57
  %i.aa = ptrtoint ptr %i.z to i64
  store atomic i64 %i.aa, ptr %.028.lcssa.i.i monotonic, align 8
  store ptr %i.h, ptr %i.y, align 8, !tbaa !57
  %i.ab = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !18
  %i.ad = sub i32 %i.ac, %.029.lcssa.i.i
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !18
  br label %_mi_page_thread_free_collect.exit.i

_mi_page_thread_free_collect.exit.i:              ; preds = %bb.f, %bb.e, %bb.c
  %i.ae = getelementptr i8, ptr %1, i64 32        ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !57 ; 3 uses
  %.not22.i = icmp eq ptr %i.af, null
  br i1 %.not22.i, label %_mi_page_free_collect.exit, label %bb.g

bb.g:                                             ; preds = %_mi_page_thread_free_collect.exit.i
  %i.ag = getelementptr i8, ptr %1, i64 16        ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !11 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %.sink.split.i, label %.preheader.i, !prof !55

.preheader.i:                                     ; preds = %bb.g, %.preheader.i
  %.0.i = phi ptr [ %i.ak, %.preheader.i ], [ %i.af, %bb.g ] ; 2 uses
  %i.aj = load atomic i64, ptr %.0.i monotonic, align 8 ; 2 uses
  %i.ak = inttoptr i64 %i.aj to ptr
  %.not23.i = icmp eq i64 %i.aj, 0
  br i1 %.not23.i, label %bb.h, label %.preheader.i, !llvm.loop !77

bb.h:                                             ; preds = %.preheader.i
  %i.al = ptrtoint ptr %i.ah to i64
  store atomic i64 %i.al, ptr %.0.i monotonic, align 8
  %i.am = load ptr, ptr %i.ae, align 8, !tbaa !57
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.h, %bb.g
  %.sink.i = phi ptr [ %i.am, %bb.h ], [ %i.af, %bb.g ]
  store ptr %.sink.i, ptr %i.ag, align 8, !tbaa !11
  store ptr null, ptr %i.ae, align 8, !tbaa !57
  %i.an = getelementptr i8, ptr %1, i64 15        ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = and i8 %i.ao, -2
  store i8 %i.ap, ptr %i.an, align 1
  br label %_mi_page_free_collect.exit

_mi_page_free_collect.exit:                       ; preds = %_mi_page_thread_free_collect.exit.i, %.sink.split.i
  %i.aq = getelementptr i8, ptr %1, i64 28
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !21 ; 6 uses
  %i.as = icmp sgt i32 %i.ar, -1
  br i1 %i.as, label %bb.i, label %_mi_segment_page_start.exit.i.i, !prof !55

bb.i:                                             ; preds = %_mi_page_free_collect.exit
  %i.at = zext nneg i32 %i.ar to i64              ; 2 uses
  br label %mi_page_usable_block_size.exit

_mi_segment_page_start.exit.i.i:                  ; preds = %_mi_page_free_collect.exit
  %i.au = load i32, ptr %1, align 8, !tbaa !52
  %i.av = zext i32 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 16
  %.pre = zext i32 %i.ar to i64
  br label %mi_page_usable_block_size.exit

mi_page_usable_block_size.exit:                   ; preds = %bb.i, %_mi_segment_page_start.exit.i.i
  %.pre-phi = phi i64 [ %i.at, %bb.i ], [ %.pre, %_mi_segment_page_start.exit.i.i ] ; 2 uses
  %.0.i1721 = phi i64 [ %i.at, %bb.i ], [ %i.aw, %_mi_segment_page_start.exit.i.i ] ; 4 uses
  %i.ax = getelementptr i8, ptr %1, i64 12
  %i.ay = load i16, ptr %i.ax, align 4, !tbaa !218
  %i.az = zext i16 %i.ay to i64
  %i.ba = mul nuw i64 %.0.i1721, %i.az
  %i.bb = getelementptr i8, ptr %0, i64 8
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !219
  %i.bc = getelementptr i8, ptr %1, i64 10
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !74
  %i.be = zext i16 %i.bd to i64
  %i.bf = mul nuw i64 %.0.i1721, %i.be
  %i.bg = getelementptr i8, ptr %0, i64 16
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !221
  %i.bh = icmp ugt i32 %i.ar, 7
  br i1 %i.bh, label %bb.j, label %_mi_page_start.exit

bb.j:                                             ; preds = %mi_page_usable_block_size.exit
  %i.bi = icmp ult i32 %i.ar, 65
  br i1 %i.bi, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bj = mul nuw nsw i64 %.pre-phi, 3
  br label %_mi_page_start.exit

bb.l:                                             ; preds = %bb.j
  %i.bk = icmp ult i32 %i.ar, 513
  %spec.select.i.i.i = select i1 %i.bk, i64 %.pre-phi, i64 0
  br label %_mi_page_start.exit

_mi_page_start.exit:                              ; preds = %mi_page_usable_block_size.exit, %bb.k, %bb.l
  %.0.i.i.i = phi i64 [ %i.bj, %bb.k ], [ 0, %mi_page_usable_block_size.exit ], [ %spec.select.i.i.i, %bb.l ]
  %i.bl = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bm = add i64 %i.bl, -1
  %i.bn = and i64 %i.bm, -33554432
  %i.bo = inttoptr i64 %i.bn to ptr               ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 264
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub i64 %i.bl, %i.bq
  %i.bs = sdiv exact i64 %i.br, 80
  %i.bt = shl i64 %i.bs, 16
  %i.bu = getelementptr i8, ptr %i.bo, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.bu, i64 %.0.i.i.i
  store ptr %i.bv, ptr %0, align 8, !tbaa !222
  %i.bw = getelementptr i8, ptr %1, i64 24
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !18
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr i8, ptr %0, i64 24
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !223
  %i.ca = getelementptr i8, ptr %0, i64 32
  store i64 %.0.i1721, ptr %i.ca, align 8, !tbaa !224
  %i.cb = getelementptr i8, ptr %0, i64 40
  store i64 %.0.i1721, ptr %i.cb, align 8, !tbaa !225
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @mi_heap_visit_blocks(ptr noundef %0, i1 noundef zeroext %1, ptr noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.mi_heap_area_ex_s, align 8  ; 12 uses
  %i.a = getelementptr i8, ptr %0, i64 2840       ; 4 uses
  %i.b = load atomic ptr, ptr %i.a monotonic, align 8 ; 2 uses
  %.old1.not.i = icmp eq ptr %i.b, null
  br i1 %.old1.not.i, label %_mi_heap_delayed_free_partial.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  %.0.i = phi ptr [ %i.e, %.preheader.i ], [ %i.b, %bb.a ]
  %i.c = cmpxchg weak ptr %i.a, ptr %.0.i, ptr null acq_rel acquire, align 8 ; 2 uses
  %i.d = extractvalue { ptr, i1 } %i.c, 1
  %i.e = extractvalue { ptr, i1 } %i.c, 0         ; 3 uses
  %i.f = icmp eq ptr %i.e, null                   ; 2 uses
  %or.cond.not.i = select i1 %i.d, i1 true, i1 %i.f
  br i1 %or.cond.not.i, label %.critedge.i, label %.preheader.i, !llvm.loop !45

.critedge.i:                                      ; preds = %.preheader.i
  br i1 %i.f, label %_mi_heap_delayed_free_partial.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge.i, %.loopexit.i
  %.334.i = phi ptr [ %i.h, %.loopexit.i ], [ %i.e, %.critedge.i ] ; 4 uses
  %i.g = load atomic i64, ptr %.334.i monotonic, align 8 ; 2 uses
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = tail call zeroext i1 @_mi_free_delayed_block(ptr noundef nonnull %.334.i)
end_hunk_5
begin_hunk_6_@_mi_thread_data_collect:bb.a
bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.j = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 24) monotonic, align 8
  %.not.3 = icmp eq ptr %i.j, null
  br i1 %.not.3, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.k = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 24), ptr null acq_rel, align 8 ; 3 uses
  %.not11.3 = icmp eq ptr %i.k, null
  br i1 %.not11.3, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.l = getelementptr i8, ptr %i.k, i64 4672
  tail call void @_mi_os_free_ex(ptr noundef nonnull %i.k, i64 noundef 4696, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %i.l, ptr nonnull poison)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.m = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 32) monotonic, align 16
  %.not.4 = icmp eq ptr %i.m, null
  br i1 %.not.4, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.n = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 32), ptr null acq_rel, align 8 ; 3 uses
  %.not11.4 = icmp eq ptr %i.n, null
  br i1 %.not11.4, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.o = getelementptr i8, ptr %i.n, i64 4672
  tail call void @_mi_os_free_ex(ptr noundef nonnull %i.n, i64 noundef 4696, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %i.o, ptr nonnull poison)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.p = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 40) monotonic, align 8
  %.not.5 = icmp eq ptr %i.p, null
  br i1 %.not.5, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.q = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 40), ptr null acq_rel, align 8 ; 3 uses
  %.not11.5 = icmp eq ptr %i.q, null
  br i1 %.not11.5, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.r = getelementptr i8, ptr %i.q, i64 4672
  tail call void @_mi_os_free_ex(ptr noundef nonnull %i.q, i64 noundef 4696, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %i.r, ptr nonnull poison)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %i.s = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 48) monotonic, align 16
  %.not.6 = icmp eq ptr %i.s, null
  br i1 %.not.6, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.t = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 48), ptr null acq_rel, align 8 ; 3 uses
  %.not11.6 = icmp eq ptr %i.t, null
  br i1 %.not11.6, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.u = getelementptr i8, ptr %i.t, i64 4672
  tail call void @_mi_os_free_ex(ptr noundef nonnull %i.t, i64 noundef 4696, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %i.u, ptr nonnull poison)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %i.v = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 56) monotonic, align 8
  %.not.7 = icmp eq ptr %i.v, null
  br i1 %.not.7, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.w = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 56), ptr null acq_rel, align 8 ; 3 uses
  %.not11.7 = icmp eq ptr %i.w, null
  br i1 %.not11.7, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.x = getelementptr i8, ptr %i.w, i64 4672
  tail call void @_mi_os_free_ex(ptr noundef nonnull %i.w, i64 noundef 4696, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %i.x, ptr nonnull poison)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %i.y = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 64) monotonic, align 16
  %.not.8 = icmp eq ptr %i.y, null
  br i1 %.not.8, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.z = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 64), ptr null acq_rel, align 8 ; 3 uses
  %.not11.8 = icmp eq ptr %i.z, null
  br i1 %.not11.8, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.aa = getelementptr i8, ptr %i.z, i64 4672
  tail call void @_mi_os_free_ex(ptr noundef nonnull %i.z, i64 noundef 4696, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %i.aa, ptr nonnull poison)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %i.ab = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 72) monotonic, align 8
  %.not.9 = icmp eq ptr %i.ab, null
  br i1 %.not.9, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ac = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 72), ptr null acq_rel, align 8 ; 3 uses
  %.not11.9 = icmp eq ptr %i.ac, null
  br i1 %.not11.9, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ad = getelementptr i8, ptr %i.ac, i64 4672
  tail call void @_mi_os_free_ex(ptr noundef nonnull %i.ac, i64 noundef 4696, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %i.ad, ptr nonnull poison)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.ae = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 80) monotonic, align 16
  %.not.10 = icmp eq ptr %i.ae, null
  br i1 %.not.10, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.af = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 80), ptr null acq_rel, align 8 ; 3 uses
  %.not11.10 = icmp eq ptr %i.af, null
  br i1 %.not11.10, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ag = getelementptr i8, ptr %i.af, i64 4672
  tail call void @_mi_os_free_ex(ptr noundef nonnull %i.af, i64 noundef 4696, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %i.ag, ptr nonnull poison)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %i.ah = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 88) monotonic, align 8
  %.not.11 = icmp eq ptr %i.ah, null
  br i1 %.not.11, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ai = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 88), ptr null acq_rel, align 8 ; 3 uses
  %.not11.11 = icmp eq ptr %i.ai, null
  br i1 %.not11.11, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.aj = getelementptr i8, ptr %i.ai, i64 4672
  tail call void @_mi_os_free_ex(ptr noundef nonnull %i.ai, i64 noundef 4696, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %i.aj, ptr nonnull poison)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.ak = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 96) monotonic, align 16
  %.not.12 = icmp eq ptr %i.ak, null
  br i1 %.not.12, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.al = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 96), ptr null acq_rel, align 8 ; 3 uses
  %.not11.12 = icmp eq ptr %i.al, null
  br i1 %.not11.12, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.am = getelementptr i8, ptr %i.al, i64 4672
  tail call void @_mi_os_free_ex(ptr noundef nonnull %i.al, i64 noundef 4696, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %i.am, ptr nonnull poison)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak
  %i.an = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 104) monotonic, align 8
  %.not.13 = icmp eq ptr %i.an, null
  br i1 %.not.13, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ao = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 104), ptr null acq_rel, align 8 ; 3 uses
  %.not11.13 = icmp eq ptr %i.ao, null
  br i1 %.not11.13, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ap = getelementptr i8, ptr %i.ao, i64 4672
  tail call void @_mi_os_free_ex(ptr noundef nonnull %i.ao, i64 noundef 4696, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %i.ap, ptr nonnull poison)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an
  %i.aq = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 112) monotonic, align 16
  %.not.14 = icmp eq ptr %i.aq, null
  br i1 %.not.14, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ar = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 112), ptr null acq_rel, align 8 ; 3 uses
  %.not11.14 = icmp eq ptr %i.ar, null
  br i1 %.not11.14, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.as = getelementptr i8, ptr %i.ar, i64 4672
  tail call void @_mi_os_free_ex(ptr noundef nonnull %i.ar, i64 noundef 4696, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %i.as, ptr nonnull poison)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq
  %i.at = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 120) monotonic, align 8
  %.not.15 = icmp eq ptr %i.at, null
  br i1 %.not.15, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.au = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 120), ptr null acq_rel, align 8 ; 3 uses
  %.not11.15 = icmp eq ptr %i.au, null
  br i1 %.not11.15, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.av = getelementptr i8, ptr %i.au, i64 4672
  tail call void @_mi_os_free_ex(ptr noundef nonnull %i.au, i64 noundef 4696, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %i.av, ptr nonnull poison)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_mi_tld_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #24 {
bb.a:
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 8) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1608) %0, ptr noundef nonnull readonly align 64 dereferenceable(1608) @tld_empty, i64 1608, i1 false)
  %i.a = getelementptr i8, ptr %0, i64 968        ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 928
  store ptr %i.a, ptr %i.b, align 8, !tbaa !230
  %i.c = getelementptr i8, ptr %0, i64 952
  %i.d = getelementptr i8, ptr %0, i64 936
  store ptr %i.c, ptr %i.d, align 8, !tbaa !231
  %i.e = getelementptr i8, ptr %0, i64 944
  store ptr @_mi_abandoned_default, ptr %i.e, align 8, !tbaa !232
  %i.f = getelementptr i8, ptr %0, i64 960
  store ptr %i.a, ptr %i.f, align 8, !tbaa !233
  %i.g = getelementptr i8, ptr %0, i64 16
  store ptr %1, ptr %i.g, align 8, !tbaa !194
  ret void
}

; Function Attrs: nofree nounwind memory(read) uwtable
define hidden zeroext i1 @_mi_is_main_thread() local_unnamed_addr #20 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_heap_main, i64 2848), align 8, !tbaa !193 ; 2 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr asm "movq %fs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) null) #60, !srcloc !58
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = icmp eq i64 %i.a, %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i1 [ true, %bb.a ], [ %i.e, %bb.b ]
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @_mi_current_thread_count() local_unnamed_addr #25 {
bb.a:
  %i.a = load atomic i64, ptr @thread_count monotonic, align 8
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define hidden void @mi_process_init() local_unnamed_addr #2 {
bb.a:
  %0 = alloca %struct.timespec, align 8           ; 5 uses
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  tail call fastcc void @mi_heap_main_init()
  %i.b = load atomic i64, ptr @mi_process_init.process_init monotonic, align 8
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %mi_atomic_once.exit, label %mi_atomic_once.exit.thread

mi_atomic_once.exit:                              ; preds = %bb.a
  %i.c = cmpxchg ptr @mi_process_init.process_init, i64 0, i64 1 acq_rel acquire, align 8
  %i.d = extractvalue { i64, i1 } %i.c, 1
  br i1 %i.d, label %bb.b, label %mi_atomic_once.exit.thread

bb.b:                                             ; preds = %mi_atomic_once.exit
  store i8 1, ptr @_mi_process_is_initialized, align 1, !tbaa !125
  %i.e = tail call ptr asm "movq %fs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) null) #60, !srcloc !58
  %i.f = ptrtoint ptr %i.e to i64
  tail call void (ptr, ...) @_mi_verbose_message(ptr noundef nonnull @.str.18, i64 noundef %i.f)
  %.b.i = load i1, ptr @mi_process_setup_auto_thread_done.tls_initialized, align 1
  br i1 %.b.i, label %mi_process_setup_auto_thread_done.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i1 true, ptr @mi_process_setup_auto_thread_done.tls_initialized, align 1
  %i.g = tail call i32 @pthread_key_create(ptr noundef nonnull @_mi_heap_default_key, ptr noundef nonnull @mi_pthread_done) #55 ; 0 uses
  %i.h = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  store ptr @_mi_heap_main, ptr %i.h, align 8, !tbaa !54
  %i.i = load i32, ptr @_mi_heap_default_key, align 4, !tbaa !7 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.i, -1
  br i1 %.not.i.i.i, label %mi_process_setup_auto_thread_done.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 @pthread_setspecific(i32 noundef %i.i, ptr noundef nonnull @_mi_heap_main) #55 ; 0 uses
  br label %mi_process_setup_auto_thread_done.exit

mi_process_setup_auto_thread_done.exit:           ; preds = %bb.b, %bb.c, %bb.d
  %i.k = tail call i64 @sysconf(i32 noundef 30) #55 ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %mi_process_setup_auto_thread_done.exit
  store i64 %i.k, ptr @mi_os_mem_config.0, align 8, !tbaa !91
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %mi_process_setup_auto_thread_done.exit
  store i1 true, ptr @mi_os_mem_config.1, align 8
  %i.m = tail call i64 (i64, ...) @syscall(i64 noundef 2, ptr noundef nonnull @.str.156, i32 noundef 0, i32 noundef 0) #55
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = icmp sgt i32 %i.n, -1
  br i1 %i.o, label %bb.g, label %_mi_os_init.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.p = call i64 (i64, ...) @syscall(i64 noundef 0, i32 noundef range(i32 0, -2147483648) %i.n, ptr noundef nonnull %i.a, i64 noundef 32) #55
  %i.q = call i64 (i64, ...) @syscall(i64 noundef 3, i32 noundef range(i32 0, -2147483648) %i.n) #55 ; 0 uses
  %i.r = icmp slt i64 %i.p, 1
  %i.s = load i8, ptr %i.a, align 16
  %i.t = and i8 %i.s, -2
  %i.u = icmp eq i8 %i.t, 48
  %.0.i.i.i = select i1 %i.r, i1 true, i1 %i.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.v = zext i1 %.0.i.i.i to i8
  br label %_mi_os_init.exit

_mi_os_init.exit:                                 ; preds = %bb.f, %bb.g
  %.1.i.i.i = phi i8 [ %i.v, %bb.g ], [ 1, %bb.f ]
  store i8 %.1.i.i.i, ptr @mi_os_mem_config.3, align 8, !tbaa !115
  call fastcc void @mi_heap_main_init()
  call void (ptr, ...) @_mi_verbose_message(ptr noundef nonnull @.str.19, i32 noundef 0)
  call void (ptr, ...) @_mi_verbose_message(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21)
  call void @mi_process_init(), !inline_history !202
  %i.w = call fastcc zeroext i1 @_mi_heap_init(), !inline_history !202
  br i1 %i.w, label %mi_thread_init.exit, label %bb.h

bb.h:                                             ; preds = %_mi_os_init.exit
  %i.x = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 312), i64 1 monotonic, align 8
  %i.y = add i64 %i.x, 1                          ; 2 uses
  %i.z = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 304) monotonic, align 16
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %.0.i.i.i.i = phi i64 [ %i.z, %bb.h ], [ %i.ad, %bb.j ] ; 2 uses
  %i.aa = icmp slt i64 %.0.i.i.i.i, %i.y
  br i1 %i.aa, label %bb.j, label %_mi_stat_increase.exit.i

bb.j:                                             ; preds = %bb.i
  %i.ab = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 304), i64 %.0.i.i.i.i, i64 %i.y release monotonic, align 8 ; 2 uses
  %i.ac = extractvalue { i64, i1 } %i.ab, 1
  %i.ad = extractvalue { i64, i1 } %i.ab, 0
  br i1 %i.ac, label %_mi_stat_increase.exit.i, label %bb.i, !llvm.loop !124

_mi_stat_increase.exit.i:                         ; preds = %bb.j, %bb.i
  %i.ae = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 288), i64 1 monotonic, align 8 ; 0 uses
  %i.af = atomicrmw add ptr @thread_count, i64 1 monotonic, align 8 ; 0 uses
  br label %mi_thread_init.exit

mi_thread_init.exit:                              ; preds = %_mi_os_init.exit, %_mi_stat_increase.exit.i
  call void @mi_process_init(), !inline_history !234
  %i.ag = call fastcc zeroext i1 @_mi_heap_init(), !inline_history !234
  br i1 %i.ag, label %mi_stats_get_default.exit, label %bb.k

bb.k:                                             ; preds = %mi_thread_init.exit
  %i.ah = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 312), i64 1 monotonic, align 8
  %i.ai = add i64 %i.ah, 1                        ; 2 uses
  %i.aj = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 304) monotonic, align 16
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %.0.i.i.i14 = phi i64 [ %i.aj, %bb.k ], [ %i.an, %bb.m ] ; 2 uses
  %i.ak = icmp slt i64 %.0.i.i.i14, %i.ai
  br i1 %i.ak, label %bb.m, label %_mi_stat_increase.exit

bb.m:                                             ; preds = %bb.l
  %i.al = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 304), i64 %.0.i.i.i14, i64 %i.ai release monotonic, align 8 ; 2 uses
  %i.am = extractvalue { i64, i1 } %i.al, 1
  %i.an = extractvalue { i64, i1 } %i.al, 0
  br i1 %i.am, label %_mi_stat_increase.exit, label %bb.l, !llvm.loop !124

_mi_stat_increase.exit:                           ; preds = %bb.l, %bb.m
  %i.ao = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 288), i64 1 monotonic, align 8 ; 0 uses
  %i.ap = atomicrmw add ptr @thread_count, i64 1 monotonic, align 8 ; 0 uses
  br label %mi_stats_get_default.exit

mi_stats_get_default.exit:                        ; preds = %mi_thread_init.exit, %_mi_stat_increase.exit
  %i.aq = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !54
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !22
  %i.at = getelementptr i8, ptr %i.as, i64 968    ; 2 uses
  %.not.i9 = icmp eq ptr %i.at, @_mi_stats_main
  br i1 %.not.i9, label %bb.o, label %bb.n

bb.n:                                             ; preds = %mi_stats_get_default.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %i.at, i8 0, i64 640, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %mi_stats_get_default.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(640) @_mi_stats_main, i8 0, i64 640, i1 false)
  %i.au = load i64, ptr @mi_process_start, align 8, !tbaa !105
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.p, label %mi_stats_reset.exit

bb.p:                                             ; preds = %bb.o
  %i.aw = load i64, ptr @mi_clock_diff, align 8, !tbaa !105
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.q, label %_mi_clock_start.exit

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  %i.ay = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #55 ; 0 uses
  %i.az = load i64, ptr %2, align 8, !tbaa !138
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !140
  %.neg.i = sdiv i64 %i.bb, -1000000
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #55
  %i.bc = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #55 ; 0 uses
  %i.bd = load i64, ptr %1, align 8, !tbaa !138
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !140
  %i.bg = sdiv i64 %i.bf, 1000000
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #55
  %reass.add.i = sub i64 %i.bd, %i.az
  %reass.mul.i = mul i64 %reass.add.i, 1000
  %.neg2.i = add nsw i64 %i.bg, %.neg.i
  %i.bh = add i64 %.neg2.i, %reass.mul.i
  store i64 %i.bh, ptr @mi_clock_diff, align 8, !tbaa !105
  br label %_mi_clock_start.exit

_mi_clock_start.exit:                             ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #55
  %i.bi = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %0) #55 ; 0 uses
  %i.bj = load i64, ptr %0, align 8, !tbaa !138
  %i.bk = mul i64 %i.bj, 1000
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !140
  %i.bn = sdiv i64 %i.bm, 1000000
  %i.bo = add i64 %i.bn, %i.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #55
  store i64 %i.bo, ptr @mi_process_start, align 8, !tbaa !105
  br label %mi_stats_reset.exit

mi_stats_reset.exit:                              ; preds = %bb.o, %_mi_clock_start.exit
  %i.bp = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 232), align 8, !tbaa !111
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.r, label %mi_option_is_enabled.exit, !prof !17

bb.r:                                             ; preds = %mi_stats_reset.exit
  call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 224)), !inline_history !120
  br label %mi_option_is_enabled.exit

mi_option_is_enabled.exit:                        ; preds = %mi_stats_reset.exit, %bb.r
end_hunk_6
begin_hunk_7_@_mi_heap_init:bb.a
bb.k:                                             ; preds = %bb.j
  %i.r = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 24), ptr null acq_rel, align 8 ; 2 uses
  %.not27.3.i = icmp eq ptr %i.r, null
  br i1 %.not27.3.i, label %bb.l, label %.loopexit.i

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.s = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 32) monotonic, align 16
  %.not.4.i = icmp eq ptr %i.s, null
  br i1 %.not.4.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 32), ptr null acq_rel, align 8 ; 2 uses
  %.not27.4.i = icmp eq ptr %i.t, null
  br i1 %.not27.4.i, label %bb.n, label %.loopexit.i

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.u = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 40) monotonic, align 8
  %.not.5.i = icmp eq ptr %i.u, null
  br i1 %.not.5.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.v = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 40), ptr null acq_rel, align 8 ; 2 uses
  %.not27.5.i = icmp eq ptr %i.v, null
  br i1 %.not27.5.i, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.w = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 48) monotonic, align 16
  %.not.6.i = icmp eq ptr %i.w, null
  br i1 %.not.6.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.x = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 48), ptr null acq_rel, align 8 ; 2 uses
  %.not27.6.i = icmp eq ptr %i.x, null
  br i1 %.not27.6.i, label %bb.r, label %.loopexit.i

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.y = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 56) monotonic, align 8
  %.not.7.i = icmp eq ptr %i.y, null
  br i1 %.not.7.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.z = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 56), ptr null acq_rel, align 8 ; 2 uses
  %.not27.7.i = icmp eq ptr %i.z, null
  br i1 %.not27.7.i, label %bb.t, label %.loopexit.i

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.aa = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 64) monotonic, align 16
  %.not.8.i = icmp eq ptr %i.aa, null
  br i1 %.not.8.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ab = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 64), ptr null acq_rel, align 8 ; 2 uses
  %.not27.8.i = icmp eq ptr %i.ab, null
  br i1 %.not27.8.i, label %bb.v, label %.loopexit.i

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ac = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 72) monotonic, align 8
  %.not.9.i = icmp eq ptr %i.ac, null
  br i1 %.not.9.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ad = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 72), ptr null acq_rel, align 8 ; 2 uses
  %.not27.9.i = icmp eq ptr %i.ad, null
  br i1 %.not27.9.i, label %bb.x, label %.loopexit.i

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ae = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 80) monotonic, align 16
  %.not.10.i = icmp eq ptr %i.ae, null
  br i1 %.not.10.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.af = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 80), ptr null acq_rel, align 8 ; 2 uses
  %.not27.10.i = icmp eq ptr %i.af, null
  br i1 %.not27.10.i, label %bb.z, label %.loopexit.i

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ag = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 88) monotonic, align 8
  %.not.11.i = icmp eq ptr %i.ag, null
  br i1 %.not.11.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ah = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 88), ptr null acq_rel, align 8 ; 2 uses
  %.not27.11.i = icmp eq ptr %i.ah, null
  br i1 %.not27.11.i, label %bb.ab, label %.loopexit.i

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ai = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 96) monotonic, align 16
  %.not.12.i = icmp eq ptr %i.ai, null
  br i1 %.not.12.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.aj = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 96), ptr null acq_rel, align 8 ; 2 uses
  %.not27.12.i = icmp eq ptr %i.aj, null
  br i1 %.not27.12.i, label %bb.ad, label %.loopexit.i

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ak = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 104) monotonic, align 8
  %.not.13.i = icmp eq ptr %i.ak, null
  br i1 %.not.13.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.al = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 104), ptr null acq_rel, align 8 ; 2 uses
  %.not27.13.i = icmp eq ptr %i.al, null
  br i1 %.not27.13.i, label %bb.af, label %.loopexit.i

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.am = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 112) monotonic, align 16
  %.not.14.i = icmp eq ptr %i.am, null
  br i1 %.not.14.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.an = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 112), ptr null acq_rel, align 8 ; 2 uses
  %.not27.14.i = icmp eq ptr %i.an, null
  br i1 %.not27.14.i, label %bb.ah, label %.loopexit.i

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ao = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 120) monotonic, align 8
  %.not.15.i = icmp eq ptr %i.ao, null
  br i1 %.not.15.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ap = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 120), ptr null acq_rel, align 8 ; 2 uses
  %.not27.15.i = icmp eq ptr %i.ap, null
  br i1 %.not27.15.i, label %bb.aj, label %.loopexit.i

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #55
  %i.aq = call ptr @_mi_os_alloc(i64 noundef 4696, ptr noundef nonnull %0, ptr nonnull poison) ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.as = call ptr @_mi_os_alloc(i64 noundef 4696, ptr noundef nonnull %0, ptr nonnull poison) ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 12, ptr noundef nonnull @.str.51, i64 noundef 4696)
  br label %bb.an

bb.am:                                            ; preds = %bb.ak, %bb.aj
  %.3.ph.i = phi ptr [ %i.aq, %bb.aj ], [ %i.as, %bb.ak ] ; 2 uses
  %i.au = getelementptr i8, ptr %.3.ph.i, i64 4672
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !165
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.aw = load i8, ptr %i.av, align 2, !tbaa !163, !range !42, !noundef !43
  %i.ax = trunc nuw i8 %i.aw to i1
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.334.i = phi ptr [ %.3.ph.i, %bb.am ], [ null, %bb.al ]
  %.0.i = phi i1 [ %i.ax, %bb.am ], [ false, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #55
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.an, %bb.ai, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e
  %.4.i = phi ptr [ %.334.i, %bb.an ], [ %i.l, %bb.e ], [ %i.n, %bb.g ], [ %i.p, %bb.i ], [ %i.r, %bb.k ], [ %i.t, %bb.m ], [ %i.v, %bb.o ], [ %i.x, %bb.q ], [ %i.z, %bb.s ], [ %i.ab, %bb.u ], [ %i.ad, %bb.w ], [ %i.af, %bb.y ], [ %i.ah, %bb.aa ], [ %i.aj, %bb.ac ], [ %i.al, %bb.ae ], [ %i.an, %bb.ag ], [ %i.ap, %bb.ai ] ; 15 uses
  %.1.i = phi i1 [ %.0.i, %bb.an ], [ false, %bb.e ], [ false, %bb.g ], [ false, %bb.i ], [ false, %bb.k ], [ false, %bb.m ], [ false, %bb.o ], [ false, %bb.q ], [ false, %bb.s ], [ false, %bb.u ], [ false, %bb.w ], [ false, %bb.y ], [ false, %bb.aa ], [ false, %bb.ac ], [ false, %bb.ae ], [ false, %bb.ag ], [ false, %bb.ai ]
  %i.ay = icmp eq ptr %.4.i, null                 ; 2 uses
  %or.cond.i = select i1 %i.ay, i1 true, i1 %.1.i
  br i1 %or.cond.i, label %mi_thread_data_zalloc.exit, label %mi_thread_data_zalloc.exit.thread

mi_thread_data_zalloc.exit.thread:                ; preds = %.loopexit.i
  call void @llvm.assume(i1 true) [ "align"(ptr %.4.i, i64 8) ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4696) %.4.i, i8 0, i64 4696, i1 false)
  br label %bb.ao

mi_thread_data_zalloc.exit:                       ; preds = %.loopexit.i
  br i1 %i.ay, label %_mi_heap_set_default_direct.exit, label %bb.ao

bb.ao:                                            ; preds = %mi_thread_data_zalloc.exit.thread, %mi_thread_data_zalloc.exit
  %i.az = getelementptr i8, ptr %.4.i, i64 3064   ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.az, i64 8) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1608) %i.az, ptr noundef nonnull readonly align 64 dereferenceable(1608) @tld_empty, i64 1608, i1 false)
  %i.ba = getelementptr i8, ptr %.4.i, i64 4032   ; 2 uses
  %i.bb = getelementptr i8, ptr %.4.i, i64 3992
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !230
  %i.bc = getelementptr i8, ptr %.4.i, i64 4016
  %i.bd = getelementptr i8, ptr %.4.i, i64 4000
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !231
  %i.be = getelementptr i8, ptr %.4.i, i64 4008
  store ptr @_mi_abandoned_default, ptr %i.be, align 8, !tbaa !232
  %i.bf = getelementptr i8, ptr %.4.i, i64 4024
  store ptr %i.ba, ptr %i.bf, align 8, !tbaa !233
  %i.bg = getelementptr i8, ptr %.4.i, i64 3080
  store ptr %.4.i, ptr %i.bg, align 8, !tbaa !194
  tail call void @_mi_heap_init_ex(ptr noundef nonnull %.4.i, ptr noundef nonnull %i.az, i32 noundef 0, i1 noundef zeroext false, i8 noundef zeroext 0)
  store ptr %.4.i, ptr %i.a, align 8, !tbaa !54
  %i.bh = load i32, ptr @_mi_heap_default_key, align 4, !tbaa !7 ; 2 uses
  %.not.i.i9 = icmp eq i32 %i.bh, -1
  br i1 %.not.i.i9, label %_mi_heap_set_default_direct.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bi = tail call i32 @pthread_setspecific(i32 noundef %i.bh, ptr noundef nonnull %.4.i) #55 ; 0 uses
  br label %_mi_heap_set_default_direct.exit

_mi_heap_set_default_direct.exit:                 ; preds = %bb.ap, %bb.ao, %bb.c, %_mi_is_main_thread.exit.thread, %mi_thread_data_zalloc.exit, %bb.a
  ret i1 %i.c
}

; Function Attrs: nofree norecurse nounwind memory(argmem: readwrite) uwtable
define hidden void @_mi_stat_increase(ptr noundef captures(address) %0, i64 noundef %1) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %mi_stat_update.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp uge ptr %0, @_mi_stats_main
  %i.c = icmp ult ptr %0, getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 640)
  %i.d = select i1 %i.b, i1 %i.c, i1 false
  %i.e = getelementptr i8, ptr %0, i64 24         ; 3 uses
  br i1 %i.d, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.f = atomicrmw add ptr %i.e, i64 %1 monotonic, align 8
  %i.g = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.h = add i64 %i.f, %1                         ; 2 uses
  %i.i = load atomic i64, ptr %i.g monotonic, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.0.i.i = phi i64 [ %i.i, %bb.c ], [ %i.m, %bb.e ] ; 2 uses
  %i.j = icmp slt i64 %.0.i.i, %i.h
  br i1 %i.j, label %bb.e, label %mi_atomic_maxi64_relaxed.exit.i

bb.e:                                             ; preds = %bb.d
  %i.k = cmpxchg weak ptr %i.g, i64 %.0.i.i, i64 %i.h release monotonic, align 8 ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  %i.m = extractvalue { i64, i1 } %i.k, 0
  br i1 %i.l, label %mi_atomic_maxi64_relaxed.exit.i, label %bb.d, !llvm.loop !124

mi_atomic_maxi64_relaxed.exit.i:                  ; preds = %bb.e, %bb.d
  %i.n = icmp sgt i64 %1, 0
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %mi_atomic_maxi64_relaxed.exit.i
  %i.o = atomicrmw add ptr %0, i64 %1 monotonic, align 8 ; 0 uses
  br label %mi_stat_update.exit

bb.g:                                             ; preds = %mi_atomic_maxi64_relaxed.exit.i
  %i.p = getelementptr i8, ptr %0, i64 8
  %i.q = atomicrmw sub ptr %i.p, i64 %1 monotonic, align 8 ; 0 uses
  br label %mi_stat_update.exit

bb.h:                                             ; preds = %bb.b
  %i.r = load i64, ptr %i.e, align 8, !tbaa !127
  %i.s = add i64 %i.r, %1                         ; 3 uses
  store i64 %i.s, ptr %i.e, align 8, !tbaa !127
  %i.t = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !128
  %i.v = icmp sgt i64 %i.s, %i.u
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i64 %i.s, ptr %i.t, align 8, !tbaa !128
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.w = icmp sgt i64 %1, 0
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = load i64, ptr %0, align 8, !tbaa !129
  %i.y = add i64 %i.x, %1
  store i64 %i.y, ptr %0, align 8, !tbaa !129
  br label %mi_stat_update.exit

bb.l:                                             ; preds = %bb.j
  %i.z = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !130
  %i.ab = sub i64 %i.aa, %1
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !130
  br label %mi_stat_update.exit

mi_stat_update.exit:                              ; preds = %bb.a, %bb.f, %bb.g, %bb.k, %bb.l
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @mi_thread_done() local_unnamed_addr #2 {
bb.a:
  tail call void @_mi_thread_done(ptr noundef null)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_thread_done(ptr noundef readonly captures(address) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_mi_heap_done.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.c, %bb.b ], [ %0, %bb.a ]    ; 3 uses
  %.not7 = icmp eq ptr %.0, @_mi_heap_empty
  br i1 %.not7, label %_mi_heap_done.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = atomicrmw sub ptr @thread_count, i64 1 monotonic, align 8 ; 0 uses
  %i.f = atomicrmw sub ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 312), i64 1 monotonic, align 8
  %i.g = add i64 %i.f, -1                         ; 2 uses
  %i.h = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 304) monotonic, align 16
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.0.i.i.i = phi i64 [ %i.h, %bb.d ], [ %i.l, %bb.f ] ; 2 uses
  %i.i = icmp slt i64 %.0.i.i.i, %i.g
  br i1 %i.i, label %bb.f, label %_mi_stat_decrease.exit

bb.f:                                             ; preds = %bb.e
  %i.j = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 304), i64 %.0.i.i.i, i64 %i.g release monotonic, align 8 ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  %i.l = extractvalue { i64, i1 } %i.j, 0
  br i1 %i.k, label %_mi_stat_decrease.exit, label %bb.e, !llvm.loop !124

_mi_stat_decrease.exit:                           ; preds = %bb.e, %bb.f
  %i.m = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 296), i64 1 monotonic, align 8 ; 0 uses
  %i.n = getelementptr i8, ptr %.0, i64 2848
  %i.o = load i64, ptr %i.n, align 8, !tbaa !193  ; 2 uses
  %i.p = tail call ptr asm "movq %fs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) null) #60, !srcloc !58
  %i.q = ptrtoint ptr %i.p to i64
  %.not.not = icmp eq i64 %i.o, %i.q
  br i1 %.not.not, label %bb.g, label %_mi_heap_done.exit

bb.g:                                             ; preds = %_mi_stat_decrease.exit
  %i.r = load i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_heap_main, i64 2848), align 8, !tbaa !193 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_mi_is_main_thread.exit.thread.i, label %_mi_is_main_thread.exit.i

_mi_is_main_thread.exit.i:                        ; preds = %bb.g
  %i.t = icmp eq i64 %i.r, %i.o
  %cond.fr.i = freeze i1 %i.t
  br i1 %cond.fr.i, label %_mi_is_main_thread.exit.thread.i, label %bb.h

_mi_is_main_thread.exit.thread.i:                 ; preds = %_mi_is_main_thread.exit.i, %bb.g
  br label %bb.h

bb.h:                                             ; preds = %_mi_is_main_thread.exit.thread.i, %_mi_is_main_thread.exit.i
  %i.u = phi ptr [ @_mi_heap_main, %_mi_is_main_thread.exit.thread.i ], [ @_mi_heap_empty, %_mi_is_main_thread.exit.i ] ; 2 uses
  %i.v = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  store ptr %i.u, ptr %i.v, align 8, !tbaa !54
  %i.w = load i32, ptr @_mi_heap_default_key, align 4, !tbaa !7 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.w, -1
  br i1 %.not.i.i.i, label %_mi_heap_set_default_direct.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = tail call i32 @pthread_setspecific(i32 noundef %i.w, ptr noundef nonnull %i.u) #55 ; 0 uses
  br label %_mi_heap_set_default_direct.exit.i

_mi_heap_set_default_direct.exit.i:               ; preds = %bb.i, %bb.h
  %i.y = load ptr, ptr %.0, align 8, !tbaa !22
  %i.z = getelementptr i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !194 ; 24 uses
  %.not22.i = icmp eq ptr %i.aa, @_mi_heap_empty
  br i1 %.not22.i, label %_mi_heap_done.exit, label %bb.j

bb.j:                                             ; preds = %_mi_heap_set_default_direct.exit.i
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !22
  %i.ac = getelementptr i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !206 ; 2 uses
  %.not23.i = icmp eq ptr %i.ad, null
  br i1 %.not23.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.l
  %.01624.i = phi ptr [ %i.af, %bb.l ], [ %i.ad, %bb.j ] ; 3 uses
  %i.ae = getelementptr i8, ptr %.01624.i, i64 3048
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !207 ; 2 uses
  %.not19.i = icmp eq ptr %.01624.i, %i.aa
  br i1 %.not19.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  tail call void @mi_heap_delete(ptr noundef nonnull %.01624.i)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !235

._crit_edge.i:                                    ; preds = %bb.l, %bb.j
  %.not18.i = icmp eq ptr %i.aa, @_mi_heap_main
  br i1 %.not18.i, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %._crit_edge.i
  tail call fastcc void @mi_heap_collect_ex(ptr noundef nonnull %i.aa, i32 noundef 2)
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !22
  %i.ah = getelementptr i8, ptr %i.ag, i64 968
  tail call fastcc void @mi_stats_merge_from(ptr noundef %i.ah)
  %i.ai = load atomic ptr, ptr @td_cache monotonic, align 16
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.n, label %.critedge.i.i

bb.n:                                             ; preds = %bb.m
  %i.ak = cmpxchg weak ptr @td_cache, ptr null, ptr %i.aa acq_rel acquire, align 8
  %i.al = extractvalue { ptr, i1 } %i.ak, 1
  br i1 %i.al, label %_mi_heap_done.exit, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.n, %bb.m
  %i.am = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 8) monotonic, align 8
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.o, label %.critedge.1.i.i

bb.o:                                             ; preds = %.critedge.i.i
  %i.ao = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 8), ptr null, ptr %i.aa acq_rel acquire, align 8
  %i.ap = extractvalue { ptr, i1 } %i.ao, 1
  br i1 %i.ap, label %_mi_heap_done.exit, label %.critedge.1.i.i

.critedge.1.i.i:                                  ; preds = %bb.o, %.critedge.i.i
  %i.aq = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 16) monotonic, align 16
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.p, label %.critedge.2.i.i

bb.p:                                             ; preds = %.critedge.1.i.i
  %i.as = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 16), ptr null, ptr %i.aa acq_rel acquire, align 8
  %i.at = extractvalue { ptr, i1 } %i.as, 1
  br i1 %i.at, label %_mi_heap_done.exit, label %.critedge.2.i.i

.critedge.2.i.i:                                  ; preds = %bb.p, %.critedge.1.i.i
  %i.au = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 24) monotonic, align 8
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.q, label %.critedge.3.i.i

bb.q:                                             ; preds = %.critedge.2.i.i
  %i.aw = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 24), ptr null, ptr %i.aa acq_rel acquire, align 8
  %i.ax = extractvalue { ptr, i1 } %i.aw, 1
  br i1 %i.ax, label %_mi_heap_done.exit, label %.critedge.3.i.i

.critedge.3.i.i:                                  ; preds = %bb.q, %.critedge.2.i.i
  %i.ay = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 32) monotonic, align 16
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.r, label %.critedge.4.i.i

bb.r:                                             ; preds = %.critedge.3.i.i
  %i.ba = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 32), ptr null, ptr %i.aa acq_rel acquire, align 8
  %i.bb = extractvalue { ptr, i1 } %i.ba, 1
  br i1 %i.bb, label %_mi_heap_done.exit, label %.critedge.4.i.i

.critedge.4.i.i:                                  ; preds = %bb.r, %.critedge.3.i.i
  %i.bc = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 40) monotonic, align 8
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.s, label %.critedge.5.i.i

bb.s:                                             ; preds = %.critedge.4.i.i
  %i.be = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 40), ptr null, ptr %i.aa acq_rel acquire, align 8
  %i.bf = extractvalue { ptr, i1 } %i.be, 1
  br i1 %i.bf, label %_mi_heap_done.exit, label %.critedge.5.i.i

.critedge.5.i.i:                                  ; preds = %bb.s, %.critedge.4.i.i
  %i.bg = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 48) monotonic, align 16
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.t, label %.critedge.6.i.i

bb.t:                                             ; preds = %.critedge.5.i.i
  %i.bi = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 48), ptr null, ptr %i.aa acq_rel acquire, align 8
  %i.bj = extractvalue { ptr, i1 } %i.bi, 1
  br i1 %i.bj, label %_mi_heap_done.exit, label %.critedge.6.i.i

.critedge.6.i.i:                                  ; preds = %bb.t, %.critedge.5.i.i
  %i.bk = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 56) monotonic, align 8
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.u, label %.critedge.7.i.i

bb.u:                                             ; preds = %.critedge.6.i.i
  %i.bm = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 56), ptr null, ptr %i.aa acq_rel acquire, align 8
  %i.bn = extractvalue { ptr, i1 } %i.bm, 1
  br i1 %i.bn, label %_mi_heap_done.exit, label %.critedge.7.i.i

.critedge.7.i.i:                                  ; preds = %bb.u, %.critedge.6.i.i
  %i.bo = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 64) monotonic, align 16
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.v, label %.critedge.8.i.i

bb.v:                                             ; preds = %.critedge.7.i.i
  %i.bq = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 64), ptr null, ptr %i.aa acq_rel acquire, align 8
  %i.br = extractvalue { ptr, i1 } %i.bq, 1
  br i1 %i.br, label %_mi_heap_done.exit, label %.critedge.8.i.i

.critedge.8.i.i:                                  ; preds = %bb.v, %.critedge.7.i.i
  %i.bs = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 72) monotonic, align 8
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.w, label %.critedge.9.i.i

bb.w:                                             ; preds = %.critedge.8.i.i
  %i.bu = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 72), ptr null, ptr %i.aa acq_rel acquire, align 8
  %i.bv = extractvalue { ptr, i1 } %i.bu, 1
  br i1 %i.bv, label %_mi_heap_done.exit, label %.critedge.9.i.i

.critedge.9.i.i:                                  ; preds = %bb.w, %.critedge.8.i.i
  %i.bw = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 80) monotonic, align 16
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.x, label %.critedge.10.i.i

bb.x:                                             ; preds = %.critedge.9.i.i
  %i.by = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 80), ptr null, ptr %i.aa acq_rel acquire, align 8
  %i.bz = extractvalue { ptr, i1 } %i.by, 1
  br i1 %i.bz, label %_mi_heap_done.exit, label %.critedge.10.i.i

.critedge.10.i.i:                                 ; preds = %bb.x, %.critedge.9.i.i
  %i.ca = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 88) monotonic, align 8
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.y, label %.critedge.11.i.i

bb.y:                                             ; preds = %.critedge.10.i.i
  %i.cc = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 88), ptr null, ptr %i.aa acq_rel acquire, align 8
  %i.cd = extractvalue { ptr, i1 } %i.cc, 1
  br i1 %i.cd, label %_mi_heap_done.exit, label %.critedge.11.i.i

.critedge.11.i.i:                                 ; preds = %bb.y, %.critedge.10.i.i
  %i.ce = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 96) monotonic, align 16
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.z, label %.critedge.12.i.i

bb.z:                                             ; preds = %.critedge.11.i.i
  %i.cg = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 96), ptr null, ptr %i.aa acq_rel acquire, align 8
  %i.ch = extractvalue { ptr, i1 } %i.cg, 1
  br i1 %i.ch, label %_mi_heap_done.exit, label %.critedge.12.i.i

.critedge.12.i.i:                                 ; preds = %bb.z, %.critedge.11.i.i
  %i.ci = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 104) monotonic, align 8
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.aa, label %.critedge.13.i.i

bb.aa:                                            ; preds = %.critedge.12.i.i
  %i.ck = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 104), ptr null, ptr %i.aa acq_rel acquire, align 8
  %i.cl = extractvalue { ptr, i1 } %i.ck, 1
  br i1 %i.cl, label %_mi_heap_done.exit, label %.critedge.13.i.i

.critedge.13.i.i:                                 ; preds = %bb.aa, %.critedge.12.i.i
  %i.cm = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 112) monotonic, align 16
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.ab, label %.critedge.14.i.i

bb.ab:                                            ; preds = %.critedge.13.i.i
  %i.co = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 112), ptr null, ptr %i.aa acq_rel acquire, align 8
  %i.cp = extractvalue { ptr, i1 } %i.co, 1
  br i1 %i.cp, label %_mi_heap_done.exit, label %.critedge.14.i.i

.critedge.14.i.i:                                 ; preds = %bb.ab, %.critedge.13.i.i
  %i.cq = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 120) monotonic, align 8
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.ac, label %.critedge.15.i.i

bb.ac:                                            ; preds = %.critedge.14.i.i
  %i.cs = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 120), ptr null, ptr %i.aa acq_rel acquire, align 8
  %i.ct = extractvalue { ptr, i1 } %i.cs, 1
  br i1 %i.ct, label %_mi_heap_done.exit, label %.critedge.15.i.i

.critedge.15.i.i:                                 ; preds = %bb.ac, %.critedge.14.i.i
  %i.cu = getelementptr i8, ptr %i.aa, i64 4672
  tail call void @_mi_os_free_ex(ptr noundef nonnull %i.aa, i64 noundef 4696, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %i.cu, ptr nonnull poison)
  br label %_mi_heap_done.exit

.critedge.i:                                      ; preds = %._crit_edge.i
  %i.cv = load ptr, ptr @_mi_heap_main, align 8, !tbaa !22
  %i.cw = getelementptr i8, ptr %i.cv, i64 968
  tail call fastcc void @mi_stats_merge_from(ptr noundef %i.cw)
  br label %_mi_heap_done.exit

_mi_heap_done.exit:                               ; preds = %.critedge.i, %.critedge.15.i.i, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %_mi_heap_set_default_direct.exit.i, %_mi_stat_decrease.exit, %bb.c, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #26

; Function Attrs: nounwind uwtable
define hidden void @_mi_prim_thread_associate_default_heap(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @_mi_heap_default_key, align 4, !tbaa !7 ; 2 uses
  %.not = icmp eq i32 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @pthread_setspecific(i32 noundef %i.a, ptr noundef %0) #55 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @_mi_preloading() local_unnamed_addr #27 {
bb.a:
  %.b = load i1, ptr @os_preloading, align 1
  %not..b = xor i1 %.b, true
  ret i1 %not..b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @mi_is_redirected() local_unnamed_addr #3 {
bb.a:
  ret i1 false
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_os_init() local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = tail call i64 @sysconf(i32 noundef 30) #55 ; 2 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %i.b, ptr @mi_os_mem_config.0, align 8, !tbaa !91
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i1 true, ptr @mi_os_mem_config.1, align 8
  %i.d = tail call i64 (i64, ...) @syscall(i64 noundef 2, ptr noundef nonnull @.str.156, i32 noundef 0, i32 noundef 0) #55
  %i.e = trunc i64 %i.d to i32                    ; 3 uses
  %i.f = icmp sgt i32 %i.e, -1
  br i1 %i.f, label %bb.d, label %_mi_prim_mem_init.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.g = call i64 (i64, ...) @syscall(i64 noundef 0, i32 noundef range(i32 0, -2147483648) %i.e, ptr noundef nonnull %i.a, i64 noundef 32) #55
  %i.h = call i64 (i64, ...) @syscall(i64 noundef 3, i32 noundef range(i32 0, -2147483648) %i.e) #55 ; 0 uses
  %i.i = icmp slt i64 %i.g, 1
  %i.j = load i8, ptr %i.a, align 16
  %i.k = and i8 %i.j, -2
  %i.l = icmp eq i8 %i.k, 48
  %.0.i.i = select i1 %i.i, i1 true, i1 %i.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.m = zext i1 %.0.i.i to i8
  br label %_mi_prim_mem_init.exit

_mi_prim_mem_init.exit:                           ; preds = %bb.c, %bb.d
  %.1.i.i = phi i8 [ %i.m, %bb.d ], [ 1, %bb.c ]
  store i8 %.1.i.i, ptr @mi_os_mem_config.3, align 8, !tbaa !115
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @mi_stats_reset() local_unnamed_addr #2 {
bb.a:
  %0 = alloca %struct.timespec, align 8           ; 5 uses
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  tail call void @mi_process_init(), !inline_history !236
  %i.a = tail call fastcc zeroext i1 @_mi_heap_init(), !inline_history !236
  br i1 %i.a, label %mi_stats_get_default.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 312), i64 1 monotonic, align 8
  %i.c = add i64 %i.b, 1                          ; 2 uses
  %i.d = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 304) monotonic, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.0.i.i.i.i = phi i64 [ %i.d, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.e = icmp slt i64 %.0.i.i.i.i, %i.c
  br i1 %i.e, label %bb.d, label %_mi_stat_increase.exit.i

bb.d:                                             ; preds = %bb.c
  %i.f = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 304), i64 %.0.i.i.i.i, i64 %i.c release monotonic, align 8 ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  %i.h = extractvalue { i64, i1 } %i.f, 0
  br i1 %i.g, label %_mi_stat_increase.exit.i, label %bb.c, !llvm.loop !124

_mi_stat_increase.exit.i:                         ; preds = %bb.d, %bb.c
  %i.i = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 288), i64 1 monotonic, align 8 ; 0 uses
  %i.j = atomicrmw add ptr @thread_count, i64 1 monotonic, align 8 ; 0 uses
  br label %mi_stats_get_default.exit

mi_stats_get_default.exit:                        ; preds = %bb.a, %_mi_stat_increase.exit.i
  %i.k = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !54
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.n = getelementptr i8, ptr %i.m, i64 968      ; 2 uses
  %.not = icmp eq ptr %i.n, @_mi_stats_main
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %mi_stats_get_default.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %i.n, i8 0, i64 640, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %mi_stats_get_default.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(640) @_mi_stats_main, i8 0, i64 640, i1 false)
  %i.o = load i64, ptr @mi_process_start, align 8, !tbaa !105
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.q = load i64, ptr @mi_clock_diff, align 8, !tbaa !105
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.h, label %_mi_clock_start.exit

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  %i.s = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #55 ; 0 uses
  %i.t = load i64, ptr %2, align 8, !tbaa !138
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !140
  %.neg.i = sdiv i64 %i.v, -1000000
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #55
  %i.w = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #55 ; 0 uses
  %i.x = load i64, ptr %1, align 8, !tbaa !138
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !140
  %i.aa = sdiv i64 %i.z, 1000000
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #55
  %reass.add.i = sub i64 %i.x, %i.t
  %reass.mul.i = mul i64 %reass.add.i, 1000
  %.neg2.i = add nsw i64 %i.aa, %.neg.i
  %i.ab = add i64 %.neg2.i, %reass.mul.i
  store i64 %i.ab, ptr @mi_clock_diff, align 8, !tbaa !105
  br label %_mi_clock_start.exit

_mi_clock_start.exit:                             ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #55
  %i.ac = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %0) #55 ; 0 uses
  %i.ad = load i64, ptr %0, align 8, !tbaa !138
  %i.ae = mul i64 %i.ad, 1000
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !140
  %i.ah = sdiv i64 %i.ag, 1000000
  %i.ai = add i64 %i.ah, %i.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #55
  store i64 %i.ai, ptr @mi_process_start, align 8, !tbaa !105
  br label %bb.i

bb.i:                                             ; preds = %_mi_clock_start.exit, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i64 @mi_option_get_clamp(i32 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ugt i32 %0, 25
  br i1 %i.a, label %mi_option_get.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr [32 x i8], ptr @options, i64 %i.b ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !111
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d, !prof !17

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @mi_option_init(ptr noundef %i.c), !inline_history !113
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = load i64, ptr %i.c, align 16, !tbaa !114
  br label %mi_option_get.exit

mi_option_get.exit:                               ; preds = %bb.a, %bb.d
  %.0.i = phi i64 [ %i.g, %bb.d ], [ 0, %bb.a ]   ; 2 uses
  %i.h = icmp slt i64 %.0.i, %1
  %i.i = tail call i64 @llvm.smin.i64(i64 %.0.i, i64 %2)
  %i.j = select i1 %i.h, i64 %1, i64 %i.i
  ret i64 %i.j
}

; Function Attrs: nounwind uwtable
define hidden i64 @mi_option_get(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ugt i32 %0, 25
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr [32 x i8], ptr @options, i64 %i.b ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !111
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d, !prof !17

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @mi_option_init(ptr noundef %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = load i64, ptr %i.c, align 16, !tbaa !114
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i64 [ %i.g, %bb.d ], [ 0, %bb.a ]
  ret i64 %.0
end_hunk_7
begin_hunk_8_@mi_option_init:.lr.ph.i
  %i.bv = icmp eq i64 %index.next118, %n.vec115
  br i1 %i.bv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !248

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n119 = icmp eq i64 %.0.i, %n.vec115
  br i1 %cmp.n119, label %_mi_strnlen.exit._crit_edge, label %_mi_strnlen.exit.preheader120

_mi_strnlen.exit.preheader120:                    ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.03379.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec115, %vec.epilog.middle.block ]
  br label %_mi_strnlen.exit

_mi_strnlen.exit._crit_edge:                      ; preds = %_mi_strnlen.exit, %middle.block, %vec.epilog.middle.block, %_mi_strnlen.exit.preheader
  %i.bw = getelementptr i8, ptr %i.b, i64 %.0.i
  store i8 0, ptr %i.bw, align 1, !tbaa !60
  %i.bx = load i8, ptr %i.b, align 16, !tbaa !60
  %i.by = icmp eq i8 %i.bx, 0
  br i1 %i.by, label %bb.d, label %bb.c

_mi_strnlen.exit:                                 ; preds = %_mi_strnlen.exit.preheader120, %_mi_strnlen.exit
  %.03379 = phi i64 [ %i.ce, %_mi_strnlen.exit ], [ %.03379.ph, %_mi_strnlen.exit.preheader120 ] ; 3 uses
  %i.bz = getelementptr i8, ptr %i.a, i64 %.03379
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !60  ; 3 uses
  %i.cb = add i8 %i.ca, -97
  %or.cond.i = icmp ult i8 %i.cb, 26
  %i.cc = add nsw i8 %i.ca, -32
  %.0.i65 = select i1 %or.cond.i, i8 %i.cc, i8 %i.ca
  %i.cd = getelementptr i8, ptr %i.b, i64 %.03379
  store i8 %.0.i65, ptr %i.cd, align 1, !tbaa !60
  %i.ce = add nuw nsw i64 %.03379, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ce, %.0.i
  br i1 %exitcond.not, label %_mi_strnlen.exit._crit_edge, label %_mi_strnlen.exit, !llvm.loop !249

bb.c:                                             ; preds = %_mi_strnlen.exit._crit_edge
  %i.cf = call ptr @strstr(ptr noundef nonnull dereferenceable(1) @.str.90, ptr noundef nonnull dereferenceable(1) %i.b) #61
  %.not38 = icmp eq ptr %i.cf, null
  br i1 %.not38, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %_mi_strnlen.exit._crit_edge
  store i64 1, ptr %0, align 8, !tbaa !114
  %i.cg = getelementptr i8, ptr %0, i64 8
  store i32 2, ptr %i.cg, align 8, !tbaa !111
  br label %bb.v

bb.e:                                             ; preds = %bb.c
  %i.ch = call ptr @strstr(ptr noundef nonnull dereferenceable(1) @.str.91, ptr noundef nonnull dereferenceable(1) %i.b) #61
  %.not39 = icmp eq ptr %i.ch, null
  br i1 %.not39, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %0, align 8, !tbaa !114
  %i.ci = getelementptr i8, ptr %0, i64 8
  store i32 2, ptr %i.ci, align 8, !tbaa !111
  br label %bb.v

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #55
  store ptr %i.b, ptr %i.c, align 8, !tbaa !106
  %i.cj = call i64 @__isoc23_strtol(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 10) #55 ; 5 uses
  %i.ck = getelementptr i8, ptr %0, i64 12
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !250 ; 2 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !106 ; 4 uses
  switch i32 %i.cl, label %.thread67 [
    i32 9, label %bb.h
    i32 23, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.cm = load i8, ptr %.pre, align 1, !tbaa !60  ; 2 uses
  switch i8 %i.cm, label %bb.k [
    i8 75, label %thread-pre-split
    i8 77, label %bb.i
    i8 71, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.cn = shl i64 %i.cj, 10
  br label %thread-pre-split

bb.j:                                             ; preds = %bb.h
  %i.co = shl i64 %i.cj, 20
  br label %thread-pre-split

bb.k:                                             ; preds = %bb.h
  %i.cp = add i64 %i.cj, 1023
  %i.cq = lshr i64 %i.cp, 10
  br label %bb.l

thread-pre-split:                                 ; preds = %bb.h, %bb.j, %bb.i
  %.0.ph = phi i64 [ %i.co, %bb.j ], [ %i.cn, %bb.i ], [ %i.cj, %bb.h ]
  %i.cr = getelementptr i8, ptr %.pre, i64 1      ; 3 uses
  store ptr %i.cr, ptr %i.c, align 8, !tbaa !106
  %.pr = load i8, ptr %i.cr, align 1, !tbaa !60
  br label %bb.l

bb.l:                                             ; preds = %thread-pre-split, %bb.k
  %i.cs = phi i8 [ %.pr, %thread-pre-split ], [ %i.cm, %bb.k ]
  %i.ct = phi ptr [ %i.cr, %thread-pre-split ], [ %.pre, %bb.k ] ; 4 uses
  %.0 = phi i64 [ %.0.ph, %thread-pre-split ], [ %i.cq, %bb.k ] ; 3 uses
  switch i8 %i.cs, label %.thread67 [
    i8 73, label %bb.m
    i8 66, label %.thread67.sink.split
  ]

bb.m:                                             ; preds = %bb.l
  %i.cu = getelementptr i8, ptr %i.ct, i64 1
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !60
  %i.cw = icmp eq i8 %i.cv, 66
  br i1 %i.cw, label %.thread67.sink.split, label %.thread67

.thread67.sink.split:                             ; preds = %bb.l, %bb.m
  %.sink103 = phi i64 [ 2, %bb.m ], [ 1, %bb.l ]
  %i.cx = getelementptr i8, ptr %i.ct, i64 %.sink103 ; 2 uses
  store ptr %i.cx, ptr %i.c, align 8, !tbaa !106
  br label %.thread67

.thread67:                                        ; preds = %.thread67.sink.split, %bb.g, %bb.l, %bb.m
  %i.cy = phi ptr [ %i.ct, %bb.m ], [ %.pre, %bb.g ], [ %i.ct, %bb.l ], [ %i.cx, %.thread67.sink.split ]
  %.1 = phi i64 [ %.0, %bb.m ], [ %i.cj, %bb.g ], [ %.0, %bb.l ], [ %.0, %.thread67.sink.split ]
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !60
  %i.da = icmp eq i8 %i.cz, 0
  br i1 %i.da, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.thread67
  store i64 %.1, ptr %0, align 8, !tbaa !114
  %i.db = getelementptr i8, ptr %0, i64 8
  store i32 2, ptr %i.db, align 8, !tbaa !111
  br label %bb.s

bb.o:                                             ; preds = %.thread67
  %i.dc = getelementptr i8, ptr %0, i64 8
  store i32 1, ptr %i.dc, align 8, !tbaa !111
  %i.dd = icmp eq i32 %i.cl, 2
  br i1 %i.dd, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.de = load i64, ptr %0, align 8, !tbaa !114
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i64 1, ptr %0, align 8, !tbaa !114
  %i.dg = load ptr, ptr %i.f, align 8, !tbaa !240
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.92, ptr noundef %i.dg)
  store i64 0, ptr %0, align 8, !tbaa !114
  br label %bb.s

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.dh = load ptr, ptr %i.f, align 8, !tbaa !240
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.92, ptr noundef %i.dh)
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  br label %bb.v

bb.t:                                             ; preds = %bb.a, %_mi_strlcat.exit63
  %i.di = call zeroext i1 @_mi_preloading()
  br i1 %i.di, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dj = getelementptr i8, ptr %0, i64 8
  store i32 1, ptr %i.dj, align 8, !tbaa !111
  br label %bb.v

bb.v:                                             ; preds = %bb.d, %bb.s, %bb.f, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i64 0, -1023) i64 @mi_option_get_size(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ugt i32 %0, 25
  br i1 %i.a, label %mi_option_get.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr [32 x i8], ptr @options, i64 %i.b ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !111
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d, !prof !17

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @mi_option_init(ptr noundef %i.c), !inline_history !113
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = load i64, ptr %i.c, align 16, !tbaa !114
  %i.h = tail call i64 @llvm.smax.i64(i64 %i.g, i64 0)
  %i.i = shl i64 %i.h, 10
  br label %mi_option_get.exit

mi_option_get.exit:                               ; preds = %bb.a, %bb.d
  %.0.i = phi i64 [ %i.i, %bb.d ], [ 0, %bb.a ]
  ret i64 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @mi_option_set(i32 noundef %0, i64 noundef %1) local_unnamed_addr #28 {
bb.a:
  %i.a = icmp ugt i32 %0, 25
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr [32 x i8], ptr @options, i64 %i.b ; 2 uses
  store i64 %1, ptr %i.c, align 16, !tbaa !114
  %i.d = getelementptr i8, ptr %i.c, i64 8
  store i32 2, ptr %i.d, align 8, !tbaa !111
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @mi_option_set_default(i32 noundef %0, i64 noundef %1) local_unnamed_addr #29 {
bb.a:
  %i.a = icmp ugt i32 %0, 25
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr [32 x i8], ptr @options, i64 %i.b ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !111
  %.not = icmp eq i32 %i.e, 2
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %1, ptr %i.c, align 16, !tbaa !114
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @mi_option_set_enabled(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #28 {
bb.a:
  %i.a = icmp ugt i32 %0, 25
  br i1 %i.a, label %mi_option_set.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext i1 %1 to i64
  %i.c = zext nneg i32 %0 to i64
  %i.d = getelementptr [32 x i8], ptr @options, i64 %i.c ; 2 uses
  store i64 %i.b, ptr %i.d, align 16, !tbaa !114
  %i.e = getelementptr i8, ptr %i.d, i64 8
  store i32 2, ptr %i.e, align 8, !tbaa !111
  br label %mi_option_set.exit

mi_option_set.exit:                               ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @mi_option_set_enabled_default(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #29 {
bb.a:
  %i.a = zext i1 %1 to i64
  %i.b = icmp ugt i32 %0, 25
  br i1 %i.b, label %mi_option_set_default.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %0 to i64
  %i.d = getelementptr [32 x i8], ptr @options, i64 %i.c ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !111
  %.not.i = icmp eq i32 %i.f, 2
  br i1 %.not.i, label %mi_option_set_default.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.a, ptr %i.d, align 16, !tbaa !114
  br label %mi_option_set_default.exit

mi_option_set_default.exit:                       ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @mi_option_enable(i32 noundef %0) local_unnamed_addr #28 {
bb.a:
  %i.a = icmp ugt i32 %0, 25
  br i1 %i.a, label %mi_option_set_enabled.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr [32 x i8], ptr @options, i64 %i.b ; 2 uses
  store i64 1, ptr %i.c, align 16, !tbaa !114
  %i.d = getelementptr i8, ptr %i.c, i64 8
  store i32 2, ptr %i.d, align 8, !tbaa !111
  br label %mi_option_set_enabled.exit

mi_option_set_enabled.exit:                       ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @mi_option_disable(i32 noundef %0) local_unnamed_addr #28 {
bb.a:
  %i.a = icmp ugt i32 %0, 25
  br i1 %i.a, label %mi_option_set_enabled.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr [32 x i8], ptr @options, i64 %i.b ; 2 uses
  store i64 0, ptr %i.c, align 16, !tbaa !114
  %i.d = getelementptr i8, ptr %i.c, i64 8
  store i32 2, ptr %i.d, align 8, !tbaa !111
  br label %mi_option_set_enabled.exit

mi_option_set_enabled.exit:                       ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @mi_register_output(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null                     ; 2 uses
  %i.b = select i1 %i.a, ptr @mi_out_stderr, ptr %0
  store volatile ptr %i.b, ptr @mi_out_default, align 8, !tbaa !40
  store atomic ptr %1, ptr @mi_out_arg release, align 8
  br i1 %i.a, label %bb.b, label %mi_out_buf_flush.exit

mi_out_buf_flush.exit:                            ; preds = %bb.a
  %i.c = atomicrmw add ptr @out_len, i64 32768 acq_rel, align 8
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 32768)
  %i.d = getelementptr i8, ptr @out_buf, i64 %spec.store.select.i
  store i8 0, ptr %i.d, align 1, !tbaa !60
  tail call void %0(ptr noundef nonnull @out_buf, ptr noundef %1) #55, !inline_history !251
  br label %bb.b

bb.b:                                             ; preds = %mi_out_buf_flush.exit, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @mi_out_stderr(ptr noundef readonly captures(address_is_null) %0, ptr readnone captures(none) %1) #30 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !60
  %.not3 = icmp eq i8 %i.a, 0
  br i1 %.not3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !238
  %i.c = tail call i32 @fputs(ptr noundef nonnull readonly %0, ptr noundef %i.b) #64 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_fputs(ptr noundef readonly captures(address) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = load ptr, ptr @stdout, align 8
  %i.c = icmp eq ptr %0, %i.b
  %or.cond = select i1 %i.a, i1 true, i1 %i.c
  %i.d = load ptr, ptr @stderr, align 8
  %i.e = icmp eq ptr %0, %i.d
  %or.cond17 = select i1 %or.cond, i1 true, i1 %i.e
  br i1 %or.cond17, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = tail call fastcc noundef zeroext i1 @mi_recurse_enter_prim()
  br i1 %i.f, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.g = load atomic ptr, ptr @mi_out_arg acquire, align 8 ; 2 uses
  %i.h = load volatile ptr, ptr @mi_out_default, align 8, !tbaa !40 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  %i.j = select i1 %i.i, ptr @mi_out_buf, ptr %i.h ; 2 uses
  %.not14 = icmp eq ptr %2, null
  br i1 %.not14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void %i.j(ptr noundef nonnull %2, ptr noundef %i.g) #55
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void %i.j(ptr noundef %3, ptr noundef %i.g) #55
  tail call fastcc void @mi_recurse_exit_prim()
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void %0(ptr noundef nonnull %2, ptr noundef %1) #55
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void %0(ptr noundef %3, ptr noundef %1) #55
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_fprintf(ptr noundef readonly captures(address) %0, ptr noundef %1, ptr noundef readonly captures(address_is_null) %2, ...) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 5 uses
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  call void @llvm.va_start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.b = icmp eq ptr %2, null
  br i1 %i.b, label %mi_vfprintf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call fastcc noundef zeroext i1 @mi_recurse_enter_prim()
  br i1 %i.c, label %bb.c, label %mi_vfprintf.exit

bb.c:                                             ; preds = %bb.b
  %i.d = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 511, ptr noundef nonnull readonly %2, ptr noundef nonnull %3) #55 ; 0 uses
  call fastcc void @mi_recurse_exit_prim()
  %i.e = icmp eq ptr %0, null
  %i.f = load ptr, ptr @stdout, align 8
  %i.g = icmp eq ptr %0, %i.f
  %or.cond.i.i = select i1 %i.e, i1 true, i1 %i.g
  %i.h = load ptr, ptr @stderr, align 8
  %i.i = icmp eq ptr %0, %i.h
  %or.cond17.i.i = select i1 %or.cond.i.i, i1 true, i1 %i.i
  br i1 %or.cond17.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = call fastcc noundef zeroext i1 @mi_recurse_enter_prim()
  br i1 %i.j, label %bb.e, label %mi_vfprintf.exit

bb.e:                                             ; preds = %bb.d
  %i.k = load atomic ptr, ptr @mi_out_arg acquire, align 8
  %i.l = load volatile ptr, ptr @mi_out_default, align 8, !tbaa !40 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  %i.n = select i1 %i.m, ptr @mi_out_buf, ptr %i.l
  call void %i.n(ptr noundef nonnull %i.a, ptr noundef %i.k) #55, !inline_history !171
  call fastcc void @mi_recurse_exit_prim()
  br label %mi_vfprintf.exit

bb.f:                                             ; preds = %bb.c
  call void %0(ptr noundef nonnull %i.a, ptr noundef %1) #55, !inline_history !171
  br label %mi_vfprintf.exit

mi_vfprintf.exit:                                 ; preds = %bb.a, %bb.b, %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #31

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #31

; Function Attrs: nounwind uwtable
define hidden void @_mi_trace_message(ptr noundef readonly captures(address_is_null) %0, ...) local_unnamed_addr #2 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 72), align 8, !tbaa !111
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %mi_option_get.exit, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 64)), !inline_history !113
  br label %mi_option_get.exit

mi_option_get.exit:                               ; preds = %bb.a, %bb.b
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 64), align 16, !tbaa !114
  %i.d = icmp slt i64 %i.c, 2
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %mi_option_get.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #55
  call void @llvm.va_start.p0(ptr nonnull %1)
  call fastcc void @mi_vfprintf_thread(ptr noundef nonnull @.str.23, ptr noundef %0, ptr noundef %1)
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #55
  br label %bb.d

bb.d:                                             ; preds = %mi_option_get.exit, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mi_vfprintf_thread(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1, ptr noundef nonnull %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 4 uses
  %i.b = alloca [512 x i8], align 16              ; 4 uses
  %i.c = alloca [64 x i8], align 16               ; 4 uses
  %.not = icmp eq ptr %0, null                    ; 2 uses
  br i1 %.not, label %_mi_is_main_thread.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  %.0.i = phi i64 [ %i.i, %.preheader.i ], [ 0, %bb.a ] ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 %.0.i
  %i.e = load i8, ptr %i.d, align 1, !tbaa !60
  %i.f = icmp ne i8 %i.e, 0
  %i.g = icmp samesign ult i64 %.0.i, 33          ; 2 uses
  %i.h = and i1 %i.g, %i.f
  %i.i = add nuw nsw i64 %.0.i, 1
  br i1 %i.h, label %.preheader.i, label %_mi_strnlen.exit, !llvm.loop !245

_mi_strnlen.exit:                                 ; preds = %.preheader.i
  br i1 %i.g, label %bb.b, label %_mi_is_main_thread.exit.thread

bb.b:                                             ; preds = %_mi_strnlen.exit
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_heap_main, i64 2848), align 8, !tbaa !193 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_mi_is_main_thread.exit.thread, label %_mi_is_main_thread.exit

_mi_is_main_thread.exit:                          ; preds = %bb.b
  %i.l = tail call ptr asm "movq %fs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) null) #60
  %i.m = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.n = icmp eq i64 %i.j, %i.m
  br i1 %i.n, label %_mi_is_main_thread.exit.thread, label %bb.c

bb.c:                                             ; preds = %_mi_is_main_thread.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #55
  %i.o = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 64, ptr noundef nonnull @.str.86, ptr noundef nonnull %0, i64 noundef %i.m) #55 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  %i.p = icmp eq ptr %1, null
  br i1 %i.p, label %mi_vfprintf.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = tail call fastcc noundef zeroext i1 @mi_recurse_enter_prim()
  br i1 %i.q, label %bb.e, label %mi_vfprintf.exit

bb.e:                                             ; preds = %bb.d
  %i.r = call i32 @vsnprintf(ptr noundef nonnull %i.b, i64 noundef 511, ptr noundef nonnull readonly %1, ptr noundef nonnull %2) #55 ; 0 uses
  tail call fastcc void @mi_recurse_exit_prim()
  %i.s = tail call fastcc noundef zeroext i1 @mi_recurse_enter_prim()
  br i1 %i.s, label %bb.f, label %mi_vfprintf.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load atomic ptr, ptr @mi_out_arg acquire, align 8 ; 2 uses
  %i.u = load volatile ptr, ptr @mi_out_default, align 8, !tbaa !40 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  %i.w = select i1 %i.v, ptr @mi_out_buf, ptr %i.u ; 2 uses
  call void %i.w(ptr noundef nonnull %i.c, ptr noundef %i.t) #55, !inline_history !171
  call void %i.w(ptr noundef nonnull %i.b, ptr noundef %i.t) #55, !inline_history !171
  call fastcc void @mi_recurse_exit_prim()
  br label %mi_vfprintf.exit

mi_vfprintf.exit:                                 ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  br label %bb.l

_mi_is_main_thread.exit.thread:                   ; preds = %bb.b, %_mi_is_main_thread.exit, %_mi_strnlen.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.x = icmp eq ptr %1, null
  br i1 %i.x, label %mi_vfprintf.exit12, label %bb.g

bb.g:                                             ; preds = %_mi_is_main_thread.exit.thread
  %i.y = tail call fastcc noundef zeroext i1 @mi_recurse_enter_prim()
  br i1 %i.y, label %bb.h, label %mi_vfprintf.exit12

bb.h:                                             ; preds = %bb.g
  %i.z = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 511, ptr noundef nonnull readonly %1, ptr noundef nonnull %2) #55 ; 0 uses
  tail call fastcc void @mi_recurse_exit_prim()
  %i.aa = tail call fastcc noundef zeroext i1 @mi_recurse_enter_prim()
  br i1 %i.aa, label %bb.i, label %mi_vfprintf.exit12

bb.i:                                             ; preds = %bb.h
  %i.ab = load atomic ptr, ptr @mi_out_arg acquire, align 8 ; 2 uses
  %i.ac = load volatile ptr, ptr @mi_out_default, align 8, !tbaa !40 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  %i.ae = select i1 %i.ad, ptr @mi_out_buf, ptr %i.ac ; 2 uses
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void %i.ae(ptr noundef nonnull %0, ptr noundef %i.ab) #55, !inline_history !171
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void %i.ae(ptr noundef nonnull %i.a, ptr noundef %i.ab) #55, !inline_history !171
  call fastcc void @mi_recurse_exit_prim()
  br label %mi_vfprintf.exit12

mi_vfprintf.exit12:                               ; preds = %_mi_is_main_thread.exit.thread, %bb.g, %bb.h, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %bb.l

bb.l:                                             ; preds = %mi_vfprintf.exit12, %mi_vfprintf.exit
  ret void
}

; Function Attrs: nofree norecurse nounwind memory(readwrite, argmem: none, target_mem: none) uwtable
define hidden void @mi_register_error(ptr noundef %0, ptr noundef %1) local_unnamed_addr #32 {
bb.a:
  store volatile ptr %0, ptr @mi_error_handler, align 8, !tbaa !40
  store atomic ptr %1, ptr @mi_error_arg release, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden signext range(i8 123, 97) i8 @_mi_toupper(i8 noundef signext %0) local_unnamed_addr #3 {
bb.a:
  %i.a = add i8 %0, -97
  %or.cond = icmp ult i8 %i.a, 26
  %i.b = add nsw i8 %0, -32
  %.0 = select i1 %or.cond, i8 %i.b, i8 %0
  ret i8 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define hidden range(i32 -255, 256) i32 @_mi_strnicmp(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #33 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !60      ; 2 uses
  %.not24 = icmp eq i8 %i.b, 0
  br i1 %.not24, label %.critedge..critedge.thread_crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %i.c = phi i8 [ %i.n, %bb.c ], [ %i.b, %.preheader ] ; 5 uses
  %.027 = phi i64 [ %i.m, %bb.c ], [ %2, %.preheader ] ; 3 uses
  %.01326 = phi ptr [ %i.l, %bb.c ], [ %1, %.preheader ] ; 3 uses
  %.01425 = phi ptr [ %i.k, %bb.c ], [ %0, %.preheader ]
  %i.d = load i8, ptr %.01326, align 1, !tbaa !60 ; 5 uses
  %i.e = icmp ne i8 %i.d, 0
  %i.f = icmp ne i64 %.027, 0
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.g = add i8 %i.c, -97
  %or.cond.i = icmp ult i8 %i.g, 26
  %i.h = add nsw i8 %i.c, -32
  %.0.i = select i1 %or.cond.i, i8 %i.h, i8 %i.c
  %i.i = add i8 %i.d, -97
  %or.cond.i18 = icmp ult i8 %i.i, 26
  %i.j = add nsw i8 %i.d, -32
  %.0.i19 = select i1 %or.cond.i18, i8 %i.j, i8 %i.d
  %.not17 = icmp eq i8 %.0.i, %.0.i19
  br i1 %.not17, label %bb.c, label %.critedge.thread

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %.01425, i64 1     ; 2 uses
  %i.l = getelementptr i8, ptr %.01326, i64 1     ; 2 uses
  %i.m = add i64 %.027, -1                        ; 2 uses
  %i.n = load i8, ptr %i.k, align 1, !tbaa !60    ; 2 uses
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !252

.critedge:                                        ; preds = %bb.c, %.lr.ph
  %.013.lcssa.ph = phi ptr [ %i.l, %bb.c ], [ %.01326, %.lr.ph ]
  %.0.lcssa.ph = phi i64 [ %i.m, %bb.c ], [ %.027, %.lr.ph ]
  %.lcssa.ph = phi i8 [ 0, %bb.c ], [ %i.c, %.lr.ph ]
  %i.o = icmp eq i64 %.0.lcssa.ph, 0
  br i1 %i.o, label %bb.d, label %.critedge..critedge.thread_crit_edge

.critedge..critedge.thread_crit_edge:             ; preds = %.preheader, %.critedge
  %.lcssa45 = phi i8 [ %.lcssa.ph, %.critedge ], [ 0, %.preheader ]
  %.013.lcssa44 = phi ptr [ %.013.lcssa.ph, %.critedge ], [ %1, %.preheader ]
  %.pre = load i8, ptr %.013.lcssa44, align 1, !tbaa !60
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.b, %.critedge..critedge.thread_crit_edge
  %i.p = phi i8 [ %.pre, %.critedge..critedge.thread_crit_edge ], [ %i.d, %bb.b ]
  %i.q = phi i8 [ %.lcssa45, %.critedge..critedge.thread_crit_edge ], [ %i.c, %bb.b ]
  %i.r = sext i8 %i.q to i32
  %i.s = sext i8 %i.p to i32
  %i.t = sub nsw i32 %i.r, %i.s
  br label %bb.d

bb.d:                                             ; preds = %.critedge.thread, %.critedge, %bb.a
  %.015 = phi i32 [ 0, %bb.a ], [ %i.t, %.critedge.thread ], [ 0, %.critedge ]
  ret i32 %.015
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_mi_strlcpy(ptr noundef writeonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #21 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp eq i64 %2, 0
  %or.cond3 = or i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = load i8, ptr %1, align 1, !tbaa !60      ; 2 uses
  %i.e = icmp ne i8 %i.d, 0
  %i.f = icmp ugt i64 %2, 1
  %i.g = and i1 %i.e, %i.f
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.h = phi i8 [ %i.l, %.lr.ph ], [ %i.d, %.preheader ]
  %.018 = phi i64 [ %i.k, %.lr.ph ], [ %2, %.preheader ]
  %.01117 = phi ptr [ %i.i, %.lr.ph ], [ %1, %.preheader ]
  %.01216 = phi ptr [ %i.j, %.lr.ph ], [ %0, %.preheader ] ; 2 uses
  %i.i = getelementptr i8, ptr %.01117, i64 1     ; 2 uses
  %i.j = getelementptr i8, ptr %.01216, i64 1     ; 2 uses
  store i8 %i.h, ptr %.01216, align 1, !tbaa !60
  %i.k = add i64 %.018, -1                        ; 2 uses
  %i.l = load i8, ptr %i.i, align 1, !tbaa !60    ; 2 uses
  %i.m = icmp ne i8 %i.l, 0
  %i.n = icmp ugt i64 %i.k, 1
  %i.o = select i1 %i.m, i1 %i.n, i1 false
  br i1 %i.o, label %.lr.ph, label %._crit_edge, !llvm.loop !243

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.012.lcssa = phi ptr [ %0, %.preheader ], [ %i.j, %.lr.ph ]
  store i8 0, ptr %.012.lcssa, align 1, !tbaa !60
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_mi_strlcat(ptr noundef captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #21 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %i.c = icmp eq i64 %2, 0
  %i.d = or i1 %i.a, %i.c
  %or.cond3 = or i1 %i.b, %i.d
  br i1 %or.cond3, label %_mi_strlcpy.exit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = load i8, ptr %0, align 1, !tbaa !60
  %i.f = icmp ne i8 %i.e, 0
  %i.g = icmp ugt i64 %2, 1                       ; 2 uses
  %i.h = and i1 %i.f, %i.g
  br i1 %i.h, label %.lr.ph, label %.preheader.i

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.017 = phi i64 [ %i.j, %.lr.ph ], [ %2, %.preheader ]
  %.01216 = phi ptr [ %i.i, %.lr.ph ], [ %0, %.preheader ]
  %i.i = getelementptr i8, ptr %.01216, i64 1     ; 3 uses
  %i.j = add i64 %.017, -1                        ; 3 uses
  %i.k = load i8, ptr %i.i, align 1, !tbaa !60
  %i.l = icmp ne i8 %i.k, 0
  %i.m = icmp ugt i64 %i.j, 1                     ; 2 uses
  %i.n = select i1 %i.l, i1 %i.m, i1 false
  br i1 %i.n, label %.lr.ph, label %.preheader.i, !llvm.loop !242

.preheader.i:                                     ; preds = %.lr.ph, %.preheader
  %.012.lcssa = phi ptr [ %0, %.preheader ], [ %i.i, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i64 [ %2, %.preheader ], [ %i.j, %.lr.ph ]
  %.lcssa15 = phi i1 [ %i.g, %.preheader ], [ %i.m, %.lr.ph ]
  %i.o = load i8, ptr %1, align 1, !tbaa !60      ; 2 uses
  %i.p = icmp ne i8 %i.o, 0
  %i.q = and i1 %.lcssa15, %i.p
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %i.r = phi i8 [ %i.v, %.lr.ph.i ], [ %i.o, %.preheader.i ]
  %.018.i = phi i64 [ %i.u, %.lr.ph.i ], [ %.0.lcssa, %.preheader.i ]
  %.01117.i = phi ptr [ %i.s, %.lr.ph.i ], [ %1, %.preheader.i ]
  %.01216.i = phi ptr [ %i.t, %.lr.ph.i ], [ %.012.lcssa, %.preheader.i ] ; 2 uses
  %i.s = getelementptr i8, ptr %.01117.i, i64 1   ; 2 uses
  %i.t = getelementptr i8, ptr %.01216.i, i64 1   ; 2 uses
  store i8 %i.r, ptr %.01216.i, align 1, !tbaa !60
  %i.u = add i64 %.018.i, -1                      ; 2 uses
  %i.v = load i8, ptr %i.s, align 1, !tbaa !60    ; 2 uses
  %i.w = icmp ne i8 %i.v, 0
  %i.x = icmp ugt i64 %i.u, 1
  %i.y = select i1 %i.w, i1 %i.x, i1 false
  br i1 %i.y, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !243

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.012.lcssa.i = phi ptr [ %.012.lcssa, %.preheader.i ], [ %i.t, %.lr.ph.i ]
  store i8 0, ptr %.012.lcssa.i, align 1, !tbaa !60
  br label %_mi_strlcpy.exit

_mi_strlcpy.exit:                                 ; preds = %._crit_edge.i, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define hidden i64 @_mi_strnlen(ptr noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #33 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %.0 = phi i64 [ %i.g, %.preheader ], [ 0, %bb.a ] ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 %.0
  %i.c = load i8, ptr %i.b, align 1, !tbaa !60
  %i.d = icmp ne i8 %i.c, 0
  %i.e = icmp ult i64 %.0, %1
  %i.f = and i1 %i.e, %i.d
  %i.g = add nuw i64 %.0, 1
  br i1 %i.f, label %.preheader, label %.loopexit, !llvm.loop !245

.loopexit:                                        ; preds = %.preheader, %bb.a
  %.07 = phi i64 [ 0, %bb.a ], [ %.0, %.preheader ]
  ret i64 %.07
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @_mi_os_has_overcommit() local_unnamed_addr #10 {
bb.a:
  %i.a = load i8, ptr @mi_os_mem_config.3, align 8, !tbaa !115, !range !42, !noundef !43
  %i.b = trunc nuw i8 %i.a to i1
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @_mi_os_has_virtual_reserve() local_unnamed_addr #10 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @_mi_os_large_page_size() local_unnamed_addr #10 {
bb.a:
  %.b = load i1, ptr @mi_os_mem_config.1, align 8
  %i.a = load i64, ptr @mi_os_mem_config.0, align 8
  %spec.select = select i1 %.b, i64 2097152, i64 %i.a
  ret i64 %spec.select
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @_mi_os_use_large_page(i64 noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %.b2 = load i1, ptr @mi_os_mem_config.1, align 8
  br i1 %.b2, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 200), align 8, !tbaa !111
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %mi_option_is_enabled.exit, !prof !17

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 192)), !inline_history !120
  br label %mi_option_is_enabled.exit

mi_option_is_enabled.exit:                        ; preds = %bb.b, %bb.c
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 192), align 16, !tbaa !114
  %.not = icmp ne i64 %i.c, 0
  %i.d = and i64 %0, 2097151
  %i.e = icmp eq i64 %i.d, 0
  %or.cond = and i1 %.not, %i.e
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %mi_option_is_enabled.exit
  %i.f = and i64 %1, 2097151
  %i.g = icmp eq i64 %i.f, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a, %mi_option_is_enabled.exit
  %.0 = phi i1 [ false, %bb.a ], [ false, %mi_option_is_enabled.exit ], [ %i.g, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @_mi_os_good_alloc_size(i64 noundef %0) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp ult i64 %0, 524288
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @mi_os_mem_config.0, align 8, !tbaa !91
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %0, 2097152
  br i1 %i.c, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ult i64 %0, 8388608
  br i1 %i.d, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = icmp ult i64 %0, 33554432
  %. = select i1 %i.e, i64 1048576, i64 4194304
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i64 [ %i.b, %bb.b ], [ 262144, %bb.d ], [ 65536, %bb.c ], [ %., %bb.e ] ; 5 uses
  %i.f = xor i64 %.0, -1
  %.not = icmp ult i64 %0, %i.f
  br i1 %.not, label %bb.g, label %_mi_align_up.exit, !prof !55

bb.g:                                             ; preds = %bb.f
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.0)
  %i.h = icmp samesign ult i64 %i.g, 2
  %i.i = add i64 %0, -1
  %i.j = add i64 %i.i, %.0                        ; 3 uses
  br i1 %i.h, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.k = sub i64 0, %.0
  %i.l = and i64 %i.j, %i.k
  br label %_mi_align_up.exit

bb.i:                                             ; preds = %bb.g
  %i.m = urem i64 %i.j, %.0
  %i.n = sub nuw i64 %i.j, %i.m
  br label %_mi_align_up.exit

_mi_align_up.exit:                                ; preds = %bb.i, %bb.h, %bb.f
  %.010 = phi i64 [ %0, %bb.f ], [ %i.l, %bb.h ], [ %i.n, %bb.i ]
  ret i64 %.010
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_prim_mem_init(ptr noundef writeonly captures(none) initializes((8, 16), (24, 27)) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = tail call i64 @sysconf(i32 noundef 30) #55 ; 3 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %i.b, ptr %0, align 8, !tbaa !91
  %i.d = getelementptr i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.d, align 8, !tbaa !253
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr i8, ptr %0, i64 8
  store i64 2097152, ptr %i.e, align 8, !tbaa !254
  %i.f = tail call i64 (i64, ...) @syscall(i64 noundef 2, ptr noundef nonnull @.str.156, i32 noundef 0, i32 noundef 0) #55
  %i.g = trunc i64 %i.f to i32                    ; 3 uses
  %i.h = icmp sgt i32 %i.g, -1
  br i1 %i.h, label %bb.d, label %unix_detect_overcommit.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.i = call i64 (i64, ...) @syscall(i64 noundef 0, i32 noundef range(i32 0, -2147483648) %i.g, ptr noundef nonnull %i.a, i64 noundef 32) #55
  %i.j = call i64 (i64, ...) @syscall(i64 noundef 3, i32 noundef range(i32 0, -2147483648) %i.g) #55 ; 0 uses
  %i.k = icmp slt i64 %i.i, 1
  %i.l = load i8, ptr %i.a, align 16
  %i.m = and i8 %i.l, -2
  %i.n = icmp eq i8 %i.m, 48
  %.0.i = select i1 %i.k, i1 true, i1 %i.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.o = zext i1 %.0.i to i8
  br label %unix_detect_overcommit.exit

unix_detect_overcommit.exit:                      ; preds = %bb.c, %bb.d
  %.1.i = phi i8 [ %i.o, %bb.d ], [ 1, %bb.c ]
  %i.p = getelementptr i8, ptr %0, i64 24
  store i8 %.1.i, ptr %i.p, align 8, !tbaa !115
  %i.q = getelementptr i8, ptr %0, i64 25
  store i8 0, ptr %i.q, align 1, !tbaa !255
  %i.r = getelementptr i8, ptr %0, i64 26
  store i8 1, ptr %i.r, align 2, !tbaa !256
  ret void
}

; Function Attrs: nofree norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @_mi_os_get_aligned_hint(i64 noundef %0, i64 noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = add i64 %0, -33554433
  %or.cond = icmp ult i64 %i.a, -33554431
  br i1 %or.cond, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %1, 33554431
  %i.c = and i64 %i.b, -33554432                  ; 4 uses
  %i.d = icmp ugt i64 %i.c, 1073741824
  br i1 %i.d, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = atomicrmw add ptr @aligned_base, i64 %i.c acq_rel, align 64 ; 3 uses
  %i.f = add i64 %i.e, -32985348833281
  %or.cond3 = icmp ult i64 %i.f, -32985348833280
  br i1 %or.cond3, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54   ; 4 uses
  %.not32 = icmp eq ptr %i.h, @_mi_heap_empty
  br i1 %.not32, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %i.h, i64 2888     ; 2 uses
  %i.j = getelementptr i8, ptr %i.h, i64 3016     ; 7 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !175  ; 2 uses
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %bb.f, label %chacha_next32.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @chacha_block(ptr noundef nonnull %i.i)
  store i32 16, ptr %i.j, align 4, !tbaa !175
  br label %chacha_next32.exit.i.i

chacha_next32.exit.i.i:                           ; preds = %bb.f, %bb.e
  %i.m = phi i32 [ 16, %bb.f ], [ %i.k, %bb.e ]
  %i.n = getelementptr i8, ptr %i.h, i64 2952     ; 2 uses
  %i.o = sub nsw i32 16, %i.m
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr [4 x i8], ptr %i.n, i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !7
  store i32 0, ptr %i.q, align 4, !tbaa !7
  %i.s = load i32, ptr %i.j, align 4, !tbaa !175
  %i.t = add i32 %i.s, -1                         ; 3 uses
  store i32 %i.t, ptr %i.j, align 4, !tbaa !175
  %i.u = icmp slt i32 %i.t, 1
  br i1 %i.u, label %bb.g, label %_mi_heap_random_next.exit

bb.g:                                             ; preds = %chacha_next32.exit.i.i
  tail call fastcc void @chacha_block(ptr noundef nonnull %i.i)
  store i32 16, ptr %i.j, align 4, !tbaa !175
  br label %_mi_heap_random_next.exit

_mi_heap_random_next.exit:                        ; preds = %chacha_next32.exit.i.i, %bb.g
  %i.v = phi i32 [ 16, %bb.g ], [ %i.t, %chacha_next32.exit.i.i ]
  %i.w = zext i32 %i.r to i64
  %i.x = sub nsw i32 16, %i.v
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr [4 x i8], ptr %i.n, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !7
  store i32 0, ptr %i.z, align 4, !tbaa !7
  %i.ab = load i32, ptr %i.j, align 4, !tbaa !175
  %i.ac = add i32 %i.ab, -1
  store i32 %i.ac, ptr %i.j, align 4, !tbaa !175
  %i.ad = zext i32 %i.aa to i64
  %i.ae = shl i64 %i.w, 40
  %i.af = shl nuw nsw i64 %i.ad, 8
  %i.ag = or disjoint i64 %i.af, %i.ae
  %i.ah = and i64 %i.ag, 4398012956672
  %i.ai = add nuw nsw i64 %i.ah, 2199023255552
  br label %bb.h

bb.h:                                             ; preds = %_mi_heap_random_next.exit, %bb.d
  %.028 = phi i64 [ %i.ai, %_mi_heap_random_next.exit ], [ 2199023255552, %bb.d ]
  %i.aj = add i64 %i.e, %i.c
  %i.ak = cmpxchg ptr @aligned_base, i64 %i.aj, i64 %.028 acq_rel acquire, align 64 ; 0 uses
  %i.al = atomicrmw add ptr @aligned_base, i64 %i.c acq_rel, align 64
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.h
  %.027 = phi i64 [ %i.al, %bb.h ], [ %i.e, %bb.c ] ; 2 uses
  %i.am = urem i64 %.027, %0
  %.not = icmp eq i64 %i.am, 0
  %i.an = inttoptr i64 %.027 to ptr
  %.0 = select i1 %.not, ptr %i.an, ptr null
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.a, %bb.i
  %.1 = phi ptr [ %.0, %bb.i ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mi_os_prim_free(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq i64 %1, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %_mi_stat_decrease.exit18, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @munmap(ptr noundef nonnull %0, i64 noundef %1) #55
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %_mi_prim_free.exit, label %_mi_prim_free.exit.thread

_mi_prim_free.exit:                               ; preds = %bb.b
  %i.e = tail call ptr @__errno_location() #63
  %i.f = load i32, ptr %i.e, align 4, !tbaa !7    ; 3 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %_mi_prim_free.exit.thread, label %bb.c

bb.c:                                             ; preds = %_mi_prim_free.exit
  tail call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.94, i32 noundef %i.f, i32 noundef %i.f, i64 noundef %1, ptr noundef nonnull %0)
  br label %_mi_prim_free.exit.thread

_mi_prim_free.exit.thread:                        ; preds = %bb.b, %bb.c, %_mi_prim_free.exit
  br i1 %2, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_mi_prim_free.exit.thread
  %i.g = atomicrmw sub ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 120), i64 %1 monotonic, align 8
  %i.h = sub i64 %i.g, %1                         ; 2 uses
  %i.i = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 112) monotonic, align 16
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.0.i.i.i = phi i64 [ %i.i, %bb.d ], [ %i.m, %bb.f ] ; 2 uses
  %i.j = icmp slt i64 %.0.i.i.i, %i.h
  br i1 %i.j, label %bb.f, label %mi_atomic_maxi64_relaxed.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.k = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 112), i64 %.0.i.i.i, i64 %i.h release monotonic, align 8 ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  %i.m = extractvalue { i64, i1 } %i.k, 0
  br i1 %i.l, label %mi_atomic_maxi64_relaxed.exit.i.i, label %bb.e, !llvm.loop !124

mi_atomic_maxi64_relaxed.exit.i.i:                ; preds = %bb.f, %bb.e
  %i.n = icmp ugt i64 %1, -9223372036854775808
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %mi_atomic_maxi64_relaxed.exit.i.i
  %i.o = atomicrmw sub ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 96), i64 %1 monotonic, align 8 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %mi_atomic_maxi64_relaxed.exit.i.i
  %i.p = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 104), i64 %1 monotonic, align 8 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %_mi_prim_free.exit.thread, %bb.g, %bb.h
  %i.q = atomicrmw sub ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 88), i64 %1 monotonic, align 8
  %i.r = sub i64 %i.q, %1                         ; 2 uses
  %i.s = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 80) monotonic, align 16
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.0.i.i.i16 = phi i64 [ %i.s, %bb.i ], [ %i.w, %bb.k ] ; 2 uses
  %i.t = icmp slt i64 %.0.i.i.i16, %i.r
  br i1 %i.t, label %bb.k, label %mi_atomic_maxi64_relaxed.exit.i.i17

bb.k:                                             ; preds = %bb.j
  %i.u = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 80), i64 %.0.i.i.i16, i64 %i.r release monotonic, align 8 ; 2 uses
  %i.v = extractvalue { i64, i1 } %i.u, 1
  %i.w = extractvalue { i64, i1 } %i.u, 0
  br i1 %i.v, label %mi_atomic_maxi64_relaxed.exit.i.i17, label %bb.j, !llvm.loop !124

mi_atomic_maxi64_relaxed.exit.i.i17:              ; preds = %bb.k, %bb.j
  %i.x = icmp ugt i64 %1, -9223372036854775808
  br i1 %i.x, label %bb.l, label %bb.m

bb.l:                                             ; preds = %mi_atomic_maxi64_relaxed.exit.i.i17
  %i.y = atomicrmw sub ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 64), i64 %1 monotonic, align 8 ; 0 uses
  br label %_mi_stat_decrease.exit18

bb.m:                                             ; preds = %mi_atomic_maxi64_relaxed.exit.i.i17
  %i.z = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 72), i64 %1 monotonic, align 8 ; 0 uses
  br label %_mi_stat_decrease.exit18

_mi_stat_decrease.exit18:                         ; preds = %bb.m, %bb.l, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @_mi_os_alloc(i64 noundef %0, ptr noundef writeonly captures(none) initializes((0, 24)) %1, ptr readnone captures(none) %2) local_unnamed_addr #2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %mi_os_prim_alloc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %0, 524288
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = load i64, ptr @mi_os_mem_config.0, align 8, !tbaa !91
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.d = icmp ult i64 %0, 2097152
  br i1 %i.d, label %bb.g, label %bb.e
end_hunk_8
begin_hunk_9_@_mi_os_alloc:bb.a
  %.sroa.715.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 3, ptr %.sroa.715.0..sroa_idx, align 4, !tbaa !7
  br label %mi_os_prim_alloc.exit.thread

mi_os_prim_alloc.exit.thread:                     ; preds = %_mi_prim_alloc.exit, %bb.l, %_mi_os_good_alloc_size.exit, %mi_os_prim_alloc.exit, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %_mi_prim_alloc.exit ], [ %..i13, %mi_os_prim_alloc.exit ], [ null, %_mi_os_good_alloc_size.exit ], [ null, %bb.l ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @_mi_os_decommit(ptr noundef %0, i64 noundef %1, ptr noundef readnone captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %mi_os_decommit_ex.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = atomicrmw sub ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 120), i64 %1 monotonic, align 8
  %i.c = sub i64 %i.b, %1                         ; 2 uses
  %i.d = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 112) monotonic, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.0.i.i.i.i = phi i64 [ %i.d, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.e = icmp slt i64 %.0.i.i.i.i, %i.c
  br i1 %i.e, label %bb.d, label %mi_atomic_maxi64_relaxed.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.f = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 112), i64 %.0.i.i.i.i, i64 %i.c release monotonic, align 8 ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  %i.h = extractvalue { i64, i1 } %i.f, 0
  br i1 %i.g, label %mi_atomic_maxi64_relaxed.exit.i.i.i, label %bb.c, !llvm.loop !124

mi_atomic_maxi64_relaxed.exit.i.i.i:              ; preds = %bb.d, %bb.c
  %i.i = icmp ugt i64 %1, -9223372036854775808
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %mi_atomic_maxi64_relaxed.exit.i.i.i
  %i.j = atomicrmw sub ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 96), i64 %1 monotonic, align 8 ; 0 uses
  br label %_mi_stat_decrease.exit.i

bb.f:                                             ; preds = %mi_atomic_maxi64_relaxed.exit.i.i.i
  %i.k = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 104), i64 %1 monotonic, align 8 ; 0 uses
  br label %_mi_stat_decrease.exit.i

_mi_stat_decrease.exit.i:                         ; preds = %bb.f, %bb.e
  %i.l = icmp eq ptr %0, null
  br i1 %i.l, label %mi_os_decommit_ex.exit, label %bb.g

bb.g:                                             ; preds = %_mi_stat_decrease.exit.i
  %i.m = load i64, ptr @mi_os_mem_config.0, align 8, !tbaa !91 ; 5 uses
  %i.n = ptrtoint ptr %0 to i64
  %i.o = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.m)
  %i.p = icmp samesign ult i64 %i.o, 2
  %i.q = add i64 %i.n, -1
  %i.r = add i64 %i.q, %i.m                       ; 3 uses
  %i.s = getelementptr i8, ptr %0, i64 %1
  %i.t = ptrtoint ptr %i.s to i64                 ; 3 uses
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = sub i64 0, %i.m                          ; 2 uses
  %i.v = and i64 %i.r, %i.u
  %i.w = and i64 %i.u, %i.t
  br label %mi_align_down_ptr.exit27.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.x = urem i64 %i.r, %i.m
  %i.y = sub nuw i64 %i.r, %i.x
  %i.z = urem i64 %i.t, %i.m
  %i.aa = sub nuw i64 %i.t, %i.z
  br label %mi_align_down_ptr.exit27.i.i.i

mi_align_down_ptr.exit27.i.i.i:                   ; preds = %bb.i, %bb.h
  %.in.i.i.i = phi i64 [ %i.y, %bb.i ], [ %i.v, %bb.h ] ; 2 uses
  %.in30.i.i.i = phi i64 [ %i.aa, %bb.i ], [ %i.w, %bb.h ]
  %i.ab = sub i64 %.in30.i.i.i, %.in.i.i.i        ; 3 uses
  %i.ac = icmp slt i64 %i.ab, 1
  br i1 %i.ac, label %mi_os_decommit_ex.exit, label %bb.j

bb.j:                                             ; preds = %mi_align_down_ptr.exit27.i.i.i
  %i.ad = inttoptr i64 %.in.i.i.i to ptr          ; 2 uses
  %i.ae = tail call i32 @madvise(ptr noundef %i.ad, i64 noundef %i.ab, i32 noundef 4) #55 ; 3 uses
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %mi_os_decommit_ex.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.96, i32 noundef %i.ae, i32 noundef %i.ae, ptr noundef %i.ad, i64 noundef %i.ab)
  br label %mi_os_decommit_ex.exit

mi_os_decommit_ex.exit:                           ; preds = %bb.a, %_mi_stat_decrease.exit.i, %mi_align_down_ptr.exit27.i.i.i, %bb.j, %bb.k
  %.0.i = phi i1 [ true, %bb.j ], [ false, %bb.k ], [ true, %_mi_stat_decrease.exit.i ], [ true, %mi_align_down_ptr.exit27.i.i.i ], [ true, %bb.a ]
  ret i1 %.0.i
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @_mi_os_commit(ptr noundef %0, i64 noundef %1, ptr noundef writeonly captures(address_is_null) %2, ptr readnone captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %.not28 = icmp eq ptr %2, null
  br i1 %.not28, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %2, align 1, !tbaa !125
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_mi_stat_increase.exit.thread, label %bb.d

_mi_stat_increase.exit.thread:                    ; preds = %bb.c
  %i.b = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 520), i64 1 monotonic, align 8 ; 0 uses
  %i.c = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 512), i64 1 monotonic, align 8 ; 0 uses
  br label %mi_os_page_align_areax.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.d = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 120), i64 %1 monotonic, align 8
  %i.e = add i64 %i.d, %1                         ; 2 uses
  %i.f = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 112) monotonic, align 16
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.0.i.i.i = phi i64 [ %i.f, %bb.d ], [ %i.j, %bb.f ] ; 2 uses
  %i.g = icmp slt i64 %.0.i.i.i, %i.e
  br i1 %i.g, label %bb.f, label %mi_atomic_maxi64_relaxed.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.h = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 112), i64 %.0.i.i.i, i64 %i.e release monotonic, align 8 ; 2 uses
  %i.i = extractvalue { i64, i1 } %i.h, 1
  %i.j = extractvalue { i64, i1 } %i.h, 0
  br i1 %i.i, label %mi_atomic_maxi64_relaxed.exit.i.i, label %bb.e, !llvm.loop !124

mi_atomic_maxi64_relaxed.exit.i.i:                ; preds = %bb.f, %bb.e
  %i.k = icmp sgt i64 %1, 0
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %mi_atomic_maxi64_relaxed.exit.i.i
  %i.l = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 96), i64 %1 monotonic, align 8 ; 0 uses
  br label %_mi_stat_increase.exit

bb.h:                                             ; preds = %mi_atomic_maxi64_relaxed.exit.i.i
  %i.m = atomicrmw sub ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 104), i64 %1 monotonic, align 8 ; 0 uses
  br label %_mi_stat_increase.exit

_mi_stat_increase.exit:                           ; preds = %bb.g, %bb.h
  %i.n = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 520), i64 1 monotonic, align 8 ; 0 uses
  %i.o = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 512), i64 1 monotonic, align 8 ; 0 uses
  %i.p = icmp eq ptr %0, null
  br i1 %i.p, label %mi_os_page_align_areax.exit.thread, label %bb.i

bb.i:                                             ; preds = %_mi_stat_increase.exit
  %i.q = load i64, ptr @mi_os_mem_config.0, align 8, !tbaa !91 ; 5 uses
  %i.r = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.q)
  %i.t = icmp samesign ult i64 %i.s, 2
  %i.u = getelementptr i8, ptr %0, i64 %1
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = add i64 %i.v, -1
  %i.x = add i64 %i.w, %i.q                       ; 3 uses
  br i1 %i.t, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = sub i64 0, %i.q                          ; 2 uses
  %i.z = and i64 %i.y, %i.r
  %i.aa = and i64 %i.x, %i.y
  br label %mi_align_down_ptr.exit27.i

bb.k:                                             ; preds = %bb.i
  %i.ab = urem i64 %i.r, %i.q
  %i.ac = sub nuw i64 %i.r, %i.ab
  %i.ad = urem i64 %i.x, %i.q
  %i.ae = sub nuw i64 %i.x, %i.ad
  br label %mi_align_down_ptr.exit27.i

mi_align_down_ptr.exit27.i:                       ; preds = %bb.k, %bb.j
  %.in.i = phi i64 [ %i.z, %bb.j ], [ %i.ac, %bb.k ] ; 2 uses
  %.in30.i = phi i64 [ %i.aa, %bb.j ], [ %i.ae, %bb.k ]
  %i.af = sub i64 %.in30.i, %.in.i                ; 3 uses
  %i.ag = icmp slt i64 %i.af, 1
  br i1 %i.ag, label %mi_os_page_align_areax.exit.thread, label %bb.l

bb.l:                                             ; preds = %mi_align_down_ptr.exit27.i
  %i.ah = inttoptr i64 %.in.i to ptr              ; 2 uses
  %i.ai = tail call i32 @mprotect(ptr noundef %i.ah, i64 noundef %i.af, i32 noundef 3) #55
  %.not.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i, label %mi_os_page_align_areax.exit.thread, label %_mi_prim_commit.exit

_mi_prim_commit.exit:                             ; preds = %bb.l
  %i.aj = tail call ptr @__errno_location() #63
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !7  ; 3 uses
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %mi_os_page_align_areax.exit.thread, label %bb.m

bb.m:                                             ; preds = %_mi_prim_commit.exit
  tail call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.25, i32 noundef %i.ak, i32 noundef %i.ak, ptr noundef %i.ah, i64 noundef %i.af)
  br label %mi_os_page_align_areax.exit.thread

mi_os_page_align_areax.exit.thread:               ; preds = %_mi_prim_commit.exit, %bb.l, %_mi_stat_increase.exit.thread, %mi_align_down_ptr.exit27.i, %_mi_stat_increase.exit, %bb.m
  %.1 = phi i1 [ false, %bb.m ], [ true, %_mi_stat_increase.exit.thread ], [ true, %_mi_stat_increase.exit ], [ true, %mi_align_down_ptr.exit27.i ], [ true, %_mi_prim_commit.exit ], [ true, %bb.l ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_mi_stat_counter_increase(ptr noundef captures(address) %0, i64 noundef %1) local_unnamed_addr #19 {
bb.a:
  %i.a = icmp uge ptr %0, @_mi_stats_main
  %i.b = icmp ult ptr %0, getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 640)
  %i.c = select i1 %i.a, i1 %i.b, i1 false
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = atomicrmw add ptr %i.d, i64 1 monotonic, align 8 ; 0 uses
  %i.f = atomicrmw add ptr %0, i64 %1 monotonic, align 8 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = load <2 x i64>, ptr %0, align 8, !tbaa !105
  %i.h = insertelement <2 x i64> <i64 poison, i64 1>, i64 %1, i64 0
  %i.i = add <2 x i64> %i.g, %i.h
  store <2 x i64> %i.i, ptr %0, align 8, !tbaa !105
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @_mi_prim_commit(ptr noundef %0, i64 noundef %1, ptr noundef writeonly captures(none) initializes((0, 1)) %2) local_unnamed_addr #2 {
bb.a:
  store i8 0, ptr %2, align 1, !tbaa !125
  %i.a = tail call i32 @mprotect(ptr noundef %0, i64 noundef %1, i32 noundef 3) #55
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__errno_location() #63
  %i.c = load i32, ptr %i.b, align 4, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @_mi_os_reset(ptr noundef %0, i64 noundef %1, ptr noundef captures(address) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq ptr %0, null
  %or.cond.i.i = or i1 %i.b, %i.a
  br i1 %or.cond.i.i, label %mi_os_page_align_area_conservative.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @mi_os_mem_config.0, align 8, !tbaa !91 ; 5 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.c)
  %i.f = icmp samesign ult i64 %i.e, 2
  %i.g = add i64 %i.d, -1
  %i.h = add i64 %i.g, %i.c                       ; 3 uses
  %i.i = getelementptr i8, ptr %0, i64 %1
  %i.j = ptrtoint ptr %i.i to i64                 ; 3 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = sub i64 0, %i.c                          ; 2 uses
  %i.l = and i64 %i.h, %i.k
  %i.m = and i64 %i.k, %i.j
  br label %mi_align_down_ptr.exit27.i.i

bb.d:                                             ; preds = %bb.b
  %i.n = urem i64 %i.h, %i.c
  %i.o = sub nuw i64 %i.h, %i.n
  %i.p = urem i64 %i.j, %i.c
  %i.q = sub nuw i64 %i.j, %i.p
  br label %mi_align_down_ptr.exit27.i.i

mi_align_down_ptr.exit27.i.i:                     ; preds = %bb.d, %bb.c
  %.in.i.i = phi i64 [ %i.o, %bb.d ], [ %i.l, %bb.c ] ; 2 uses
  %.in30.i.i = phi i64 [ %i.q, %bb.d ], [ %i.m, %bb.c ]
  %i.r = sub i64 %.in30.i.i, %.in.i.i             ; 10 uses
  %i.s = icmp slt i64 %i.r, 1
  br i1 %i.s, label %mi_os_page_align_area_conservative.exit.thread, label %bb.e

bb.e:                                             ; preds = %mi_align_down_ptr.exit27.i.i
  %i.t = inttoptr i64 %.in.i.i to ptr             ; 4 uses
  %i.u = getelementptr i8, ptr %2, i64 128        ; 5 uses
  %i.v = icmp uge ptr %i.u, @_mi_stats_main
  %i.w = icmp ult ptr %i.u, getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 640)
  %i.x = select i1 %i.v, i1 %i.w, i1 false
  %i.y = getelementptr i8, ptr %2, i64 152        ; 3 uses
  br i1 %i.x, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.z = atomicrmw add ptr %i.y, i64 %i.r monotonic, align 8
  %i.aa = getelementptr i8, ptr %2, i64 144       ; 2 uses
  %i.ab = add i64 %i.z, %i.r                      ; 2 uses
  %i.ac = load atomic i64, ptr %i.aa monotonic, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.0.i.i.i = phi i64 [ %i.ac, %bb.f ], [ %i.ag, %bb.h ] ; 2 uses
  %i.ad = icmp slt i64 %.0.i.i.i, %i.ab
  br i1 %i.ad, label %bb.h, label %mi_atomic_maxi64_relaxed.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.ae = cmpxchg weak ptr %i.aa, i64 %.0.i.i.i, i64 %i.ab release monotonic, align 8 ; 2 uses
  %i.af = extractvalue { i64, i1 } %i.ae, 1
  %i.ag = extractvalue { i64, i1 } %i.ae, 0
  br i1 %i.af, label %mi_atomic_maxi64_relaxed.exit.i.i, label %bb.g, !llvm.loop !124

mi_atomic_maxi64_relaxed.exit.i.i:                ; preds = %bb.g, %bb.h
  %i.ah = atomicrmw add ptr %i.u, i64 %i.r monotonic, align 8 ; 0 uses
  br label %_mi_stat_increase.exit

bb.i:                                             ; preds = %bb.e
  %i.ai = load i64, ptr %i.y, align 8, !tbaa !127
  %i.aj = add i64 %i.ai, %i.r                     ; 3 uses
  store i64 %i.aj, ptr %i.y, align 8, !tbaa !127
  %i.ak = getelementptr i8, ptr %2, i64 144       ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !128
  %i.am = icmp sgt i64 %i.aj, %i.al
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !128
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.an = load i64, ptr %i.u, align 8, !tbaa !129
  %i.ao = add i64 %i.an, %i.r
  store i64 %i.ao, ptr %i.u, align 8, !tbaa !129
  br label %_mi_stat_increase.exit

_mi_stat_increase.exit:                           ; preds = %mi_atomic_maxi64_relaxed.exit.i.i, %bb.k
  %i.ap = getelementptr i8, ptr %2, i64 528       ; 5 uses
  %i.aq = icmp uge ptr %i.ap, @_mi_stats_main
  %i.ar = icmp ult ptr %i.ap, getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 640)
  %i.as = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %i.as, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_mi_stat_increase.exit
  %i.at = getelementptr i8, ptr %2, i64 536
  %i.au = atomicrmw add ptr %i.at, i64 1 monotonic, align 8 ; 0 uses
  %i.av = atomicrmw add ptr %i.ap, i64 1 monotonic, align 8 ; 0 uses
  br label %_mi_stat_counter_increase.exit

bb.m:                                             ; preds = %_mi_stat_increase.exit
  %i.aw = load <2 x i64>, ptr %i.ap, align 8, !tbaa !105
  %i.ax = add <2 x i64> %i.aw, splat (i64 1)
  store <2 x i64> %i.ax, ptr %i.ap, align 8, !tbaa !105
  br label %_mi_stat_counter_increase.exit

_mi_stat_counter_increase.exit:                   ; preds = %bb.l, %bb.m
  %i.ay = load atomic i64, ptr @_mi_prim_reset.advice monotonic, align 8 ; 2 uses
  %i.az = trunc nuw nsw i64 %i.ay to i32          ; 2 uses
  %i.ba = tail call i32 @madvise(ptr noundef %i.t, i64 noundef %i.r, i32 noundef range(i32 4, 15) %i.az) #55 ; 2 uses
  %.not14.i = icmp eq i32 %i.ba, 0
  br i1 %.not14.i, label %mi_os_page_align_area_conservative.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_mi_stat_counter_increase.exit
  %i.bb = tail call ptr @__errno_location() #63   ; 3 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !7  ; 2 uses
  %i.bd = icmp eq i32 %i.bc, 11
  br i1 %i.bd, label %.lr.ph, label %.critedge.i

bb.n:                                             ; preds = %.lr.ph
  %i.be = load i32, ptr %i.bb, align 4, !tbaa !7  ; 2 uses
  %i.bf = icmp eq i32 %i.be, 11
  br i1 %i.bf, label %.lr.ph, label %.critedge.i, !llvm.loop !257

.lr.ph:                                           ; preds = %.lr.ph.i, %bb.n
  store i32 0, ptr %i.bb, align 4, !tbaa !7
  %i.bg = tail call i32 @madvise(ptr noundef %i.t, i64 noundef %i.r, i32 noundef range(i32 4, 15) %i.az) #55 ; 2 uses
  %.not.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i, label %mi_os_page_align_area_conservative.exit.thread, label %bb.n, !llvm.loop !257

.critedge.i:                                      ; preds = %bb.n, %.lr.ph.i
  %.lcssa26 = phi i32 [ %i.ba, %.lr.ph.i ], [ %i.bg, %bb.n ]
  %.lcssa = phi i32 [ %i.bc, %.lr.ph.i ], [ %i.be, %bb.n ]
  %i.bh = icmp eq i32 %.lcssa, 22
  %i.bi = icmp eq i64 %i.ay, 8
  %or.cond.i = and i1 %i.bi, %i.bh
  br i1 %or.cond.i, label %_mi_prim_reset.exit, label %_mi_prim_reset.exit.thread20

_mi_prim_reset.exit:                              ; preds = %.critedge.i
  store atomic i64 4, ptr @_mi_prim_reset.advice release, align 8
  %i.bj = tail call i32 @madvise(ptr noundef %i.t, i64 noundef %i.r, i32 noundef 4) #55 ; 2 uses
  %.not = icmp eq i32 %i.bj, 0
  br i1 %.not, label %mi_os_page_align_area_conservative.exit.thread, label %_mi_prim_reset.exit.thread20

_mi_prim_reset.exit.thread20:                     ; preds = %.critedge.i, %_mi_prim_reset.exit
  %.0.i23 = phi i32 [ %i.bj, %_mi_prim_reset.exit ], [ %.lcssa26, %.critedge.i ] ; 2 uses
  tail call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.26, i32 noundef %.0.i23, i32 noundef %.0.i23, ptr noundef %i.t, i64 noundef %i.r)
  br label %mi_os_page_align_area_conservative.exit.thread

mi_os_page_align_area_conservative.exit.thread:   ; preds = %.lr.ph, %_mi_stat_counter_increase.exit, %mi_align_down_ptr.exit27.i.i, %bb.a, %_mi_prim_reset.exit, %_mi_prim_reset.exit.thread20
  %.0 = phi i1 [ true, %_mi_prim_reset.exit ], [ true, %mi_align_down_ptr.exit27.i.i ], [ false, %_mi_prim_reset.exit.thread20 ], [ true, %bb.a ], [ true, %_mi_stat_counter_increase.exit ], [ true, %.lr.ph ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @_mi_prim_reset(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
end_hunk_9
begin_hunk_10_@_mi_heap_delayed_free_all:bb.a
  unreachable

.critedge.i1.unreachabledefault:                  ; preds = %.critedge.i1
  unreachable

bb.f:                                             ; preds = %.critedge.i1
  %i.ax = and i64 %i.w, -4
  %i.ay = cmpxchg weak ptr %i.v, i64 %i.w, i64 %i.ax release monotonic, align 8
  %i.az = extractvalue { i64, i1 } %i.ay, 1
  br i1 %i.az, label %.loopexit, label %.critedge.i1, !llvm.loop !76

.loopexit:                                        ; preds = %.critedge.i1, %.critedge.i1, %bb.f, %.critedge.1.i, %.critedge.1.i, %bb.b, %.critedge.2.i, %.critedge.2.i, %bb.c, %.critedge.3.i, %.critedge.3.i, %bb.d, %.critedge.4.i, %.critedge.4.i, %bb.e
  %i.ba = load atomic i64, ptr %i.v monotonic, align 8
  %.not.i.i = icmp ult i64 %i.ba, 4
  br i1 %.not.i.i, label %_mi_page_thread_free_collect.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.bb = load atomic i64, ptr %i.v monotonic, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi i64 [ %i.bb, %bb.g ], [ %i.bf, %bb.h ] ; 3 uses
  %i.bc = and i64 %.0.i.i.i, 3
  %i.bd = cmpxchg weak ptr %i.v, i64 %.0.i.i.i, i64 %i.bc acq_rel acquire, align 8 ; 2 uses
  %i.be = extractvalue { i64, i1 } %i.bd, 1
  %i.bf = extractvalue { i64, i1 } %i.bd, 0
  br i1 %i.be, label %bb.i, label %bb.h, !llvm.loop !73

bb.i:                                             ; preds = %bb.h
  %i.bg = and i64 %.0.i.i.i, -4                   ; 2 uses
  %i.bh = inttoptr i64 %i.bg to ptr               ; 3 uses
  %i.bi = icmp eq i64 %i.bg, 0
  br i1 %i.bi, label %_mi_page_thread_free_collect.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr i8, ptr %i.u, i64 10
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !74 ; 2 uses
  %i.bl = zext i16 %i.bk to i32                   ; 2 uses
  %i.bm = load atomic i64, ptr %i.bh monotonic, align 8 ; 2 uses
  %i.bn = icmp ne i64 %i.bm, 0
  %i.bo = icmp ne i16 %i.bk, 0
  %i.bp = select i1 %i.bn, i1 %i.bo, i1 false
  br i1 %i.bp, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.bq = phi i64 [ %i.bt, %.lr.ph.i.i.i ], [ %i.bm, %bb.j ]
  %.02934.i.i.i = phi i32 [ %i.bs, %.lr.ph.i.i.i ], [ 1, %bb.j ] ; 2 uses
  %i.br = inttoptr i64 %i.bq to ptr               ; 2 uses
  %i.bs = add nuw nsw i32 %.02934.i.i.i, 1        ; 2 uses
  %i.bt = load atomic i64, ptr %i.br monotonic, align 8 ; 2 uses
  %i.bu = icmp ne i64 %i.bt, 0
  %i.bv = icmp samesign ult i32 %.02934.i.i.i, %i.bl
  %i.bw = select i1 %i.bu, i1 %i.bv, i1 false
  br i1 %i.bw, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !75

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.j
  %.029.lcssa.i.i.i = phi i32 [ 1, %bb.j ], [ %i.bs, %.lr.ph.i.i.i ] ; 2 uses
  %.028.lcssa.i.i.i = phi ptr [ %i.bh, %bb.j ], [ %i.br, %.lr.ph.i.i.i ]
  %i.bx = icmp samesign ugt i32 %.029.lcssa.i.i.i, %i.bl
  br i1 %i.bx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i.i
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 14, ptr noundef nonnull @.str.100)
  br label %_mi_page_thread_free_collect.exit.i.i

bb.l:                                             ; preds = %._crit_edge.i.i.i
  %i.by = getelementptr i8, ptr %i.u, i64 32      ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !57
  %i.ca = ptrtoint ptr %i.bz to i64
  store atomic i64 %i.ca, ptr %.028.lcssa.i.i.i monotonic, align 8
  store ptr %i.bh, ptr %i.by, align 8, !tbaa !57
  %i.cb = getelementptr i8, ptr %i.u, i64 24      ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !18
  %i.cd = sub i32 %i.cc, %.029.lcssa.i.i.i
  store i32 %i.cd, ptr %i.cb, align 8, !tbaa !18
  br label %_mi_page_thread_free_collect.exit.i.i

_mi_page_thread_free_collect.exit.i.i:            ; preds = %bb.l, %bb.k, %bb.i, %.loopexit
  %i.ce = getelementptr i8, ptr %i.u, i64 32      ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !57 ; 3 uses
  %.not22.i.i = icmp eq ptr %i.cf, null
  br i1 %.not22.i.i, label %_mi_page_free_collect.exit.i, label %bb.m

bb.m:                                             ; preds = %_mi_page_thread_free_collect.exit.i.i
  %i.cg = getelementptr i8, ptr %i.u, i64 16      ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !11
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %.sink.split.i.i, label %_mi_page_free_collect.exit.i, !prof !55

.sink.split.i.i:                                  ; preds = %bb.m
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !11
  %i.cj = getelementptr i8, ptr %i.u, i64 15      ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1
  %i.cl = and i8 %i.ck, -2
  store i8 %i.cl, ptr %i.cj, align 1
  br label %_mi_page_free_collect.exit.i

_mi_page_free_collect.exit.i:                     ; preds = %.sink.split.i.i, %bb.m, %_mi_page_thread_free_collect.exit.i.i
  %i.cm = phi ptr [ %i.cf, %bb.m ], [ null, %_mi_page_thread_free_collect.exit.i.i ], [ null, %.sink.split.i.i ]
  %i.cn = ptrtoint ptr %i.cm to i64
  store atomic i64 %i.cn, ptr %.334.i monotonic, align 8
  store ptr %.334.i, ptr %i.ce, align 8, !tbaa !57
  %i.co = getelementptr i8, ptr %i.u, i64 24      ; 2 uses
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !18
  %i.cq = add i32 %i.cp, -1                       ; 2 uses
  store i32 %i.cq, ptr %i.co, align 8, !tbaa !18
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %bb.n, label %bb.o, !prof !17

bb.n:                                             ; preds = %_mi_page_free_collect.exit.i
  tail call void @_mi_page_retire(ptr noundef nonnull %i.u)
  br label %.loopexit.i

bb.o:                                             ; preds = %_mi_page_free_collect.exit.i
  %i.cs = getelementptr i8, ptr %i.u, i64 14      ; 2 uses
  %.val16.i.i = load i8, ptr %i.cs, align 2       ; 2 uses
  %i.ct = trunc i8 %.val16.i.i to i1
  br i1 %i.ct, label %bb.p, label %.loopexit.i, !prof !17

bb.p:                                             ; preds = %bb.o
  %i.cu = getelementptr i8, ptr %i.u, i64 48
  %i.cv = load atomic i64, ptr %i.cu monotonic, align 8
  %i.cw = inttoptr i64 %i.cv to ptr               ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 2816
  %i.cy = getelementptr i8, ptr %i.u, i64 28
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !21 ; 4 uses
  %i.da = zext i32 %i.cz to i64
  %i.db = add nuw nsw i64 %i.da, 7
  %i.dc = lshr i64 %i.db, 3                       ; 2 uses
  %i.dd = icmp ult i32 %i.cz, 9
  br i1 %i.dd, label %_mi_page_unfull.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.de = icmp ult i32 %i.cz, 65
  br i1 %i.de, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.df = add nuw nsw i64 %i.dc, 1
  %i.dg = and i64 %i.df, 30
  br label %_mi_page_unfull.exit

bb.s:                                             ; preds = %bb.q
  %i.dh = icmp ugt i32 %i.cz, 131072
  br i1 %i.dh, label %_mi_page_unfull.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.di = add nsw i64 %i.dc, -1                   ; 2 uses
  %i.dj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.di, i1 false) ; 2 uses
  %i.dk = sub nsw i64 61, %i.dj
  %i.dl = and i64 %i.dk, 4294967295
  %i.dm = lshr i64 %i.di, %i.dl
  %i.dn = and i64 %i.dm, 3
  %i.do = shl nuw nsw i64 %i.dj, 2
  %reass.sub = sub nsw i64 %i.dn, %i.do
  %i.dp = add nsw i64 %reass.sub, 249
  %i.dq = and i64 %i.dp, 255
  br label %_mi_page_unfull.exit

_mi_page_unfull.exit:                             ; preds = %bb.p, %bb.r, %bb.s, %bb.t
  %i.dr = phi i64 [ 73, %bb.s ], [ %i.dq, %bb.t ], [ %i.dg, %bb.r ], [ 1, %bb.p ]
  %i.ds = getelementptr i8, ptr %i.cw, i64 1040
  %i.dt = getelementptr [24 x i8], ptr %i.ds, i64 %i.dr
  store i8 %.val16.i.i, ptr %i.cs, align 2
  tail call fastcc void @mi_page_queue_enqueue_from(ptr noundef %i.dt, ptr noundef %i.cx, ptr noundef nonnull %i.u)
  br label %.loopexit.i

_mi_free_delayed_block.exit:                      ; preds = %.critedge.4.i
  %i.du = load atomic ptr, ptr %i.a monotonic, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %_mi_free_delayed_block.exit
  %.027.i = phi ptr [ %i.du, %_mi_free_delayed_block.exit ], [ %i.dy, %bb.u ] ; 2 uses
  %i.dv = ptrtoint ptr %.027.i to i64
  store atomic i64 %i.dv, ptr %.334.i monotonic, align 8
  %i.dw = cmpxchg weak ptr %i.a, ptr %.027.i, ptr %.334.i release monotonic, align 8 ; 2 uses
  %i.dx = extractvalue { ptr, i1 } %i.dw, 1
  %i.dy = extractvalue { ptr, i1 } %i.dw, 0
  br i1 %i.dx, label %.loopexit.i.thread, label %bb.u, !llvm.loop !47

.loopexit.i:                                      ; preds = %bb.o, %bb.n, %_mi_page_unfull.exit
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %_mi_heap_delayed_free_partial.exit, label %.lr.ph.i, !llvm.loop !48

.loopexit.i.thread:                               ; preds = %bb.u
  %.not.i31 = icmp eq i64 %i.g, 0
  br i1 %.not.i31, label %_mi_heap_delayed_free_partial.exit.thread33, label %.lr.ph.i.outer, !llvm.loop !48

_mi_heap_delayed_free_partial.exit:               ; preds = %.loopexit.i
  br i1 %.02533.i.ph, label %_mi_heap_delayed_free_partial.exit.thread, label %_mi_heap_delayed_free_partial.exit.thread33

_mi_heap_delayed_free_partial.exit.thread33:      ; preds = %.loopexit.i.thread, %_mi_heap_delayed_free_partial.exit
  tail call void @llvm.x86.sse2.pause()
  %i.dz = load atomic ptr, ptr %i.a monotonic, align 8 ; 2 uses
  %.old1.not.i = icmp eq ptr %i.dz, null
  br i1 %.old1.not.i, label %_mi_heap_delayed_free_partial.exit.thread, label %.preheader.i.backedge

_mi_heap_delayed_free_partial.exit.thread:        ; preds = %_mi_heap_delayed_free_partial.exit, %.critedge.i, %_mi_heap_delayed_free_partial.exit.thread33, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_mi_page_unfull(ptr noundef %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 14         ; 2 uses
  %.val = load i8, ptr %i.a, align 2              ; 2 uses
  %i.b = trunc i8 %.val to i1
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 48
  %i.d = load atomic i64, ptr %i.c monotonic, align 8
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 2816
  %i.g = getelementptr i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !21   ; 4 uses
  %i.i = zext i32 %i.h to i64
  %i.j = add nuw nsw i64 %i.i, 7
  %i.k = lshr i64 %i.j, 3                         ; 2 uses
  %i.l = icmp ult i32 %i.h, 9
  br i1 %i.l, label %mi_heap_page_queue_of.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ult i32 %i.h, 65
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = add nuw nsw i64 %i.k, 1
  %i.o = and i64 %i.n, 30
  br label %mi_heap_page_queue_of.exit

bb.e:                                             ; preds = %bb.c
  %i.p = icmp ugt i32 %i.h, 131072
  br i1 %i.p, label %mi_heap_page_queue_of.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i64 %i.k, -1                     ; 2 uses
  %i.r = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.q, i1 false) ; 2 uses
  %i.s = sub nsw i64 61, %i.r
  %i.t = and i64 %i.s, 4294967295
  %i.u = lshr i64 %i.q, %i.t
  %i.v = and i64 %i.u, 3
  %i.w = shl nuw nsw i64 %i.r, 2
  %reass.sub = sub nsw i64 %i.v, %i.w
  %i.x = add nsw i64 %reass.sub, 249
  %i.y = and i64 %i.x, 255
  br label %mi_heap_page_queue_of.exit

mi_heap_page_queue_of.exit:                       ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  %i.z = phi i64 [ 73, %bb.e ], [ %i.y, %bb.f ], [ %i.o, %bb.d ], [ 1, %bb.b ]
  %i.aa = getelementptr i8, ptr %i.e, i64 1040
  %i.ab = getelementptr [24 x i8], ptr %i.aa, i64 %i.z
  store i8 %.val, ptr %i.a, align 2
  tail call fastcc void @mi_page_queue_enqueue_from(ptr noundef %i.ab, ptr noundef %i.f, ptr noundef nonnull %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %mi_heap_page_queue_of.exit
  ret void
}

; Function Attrs: nofree norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @mi_page_queue_enqueue_from(ptr noundef captures(address) %0, ptr noundef captures(address) %1, ptr noundef %2) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 48
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 4 uses
  %i.d = getelementptr i8, ptr %2, i64 64         ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !264  ; 3 uses
  %.not = icmp eq ptr %i.e, null
  %.phi.trans.insert = getelementptr i8, ptr %2, i64 56
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !197 ; 5 uses
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.e, i64 56
  store ptr %.pre, ptr %i.f, align 8, !tbaa !197
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %i.g = getelementptr i8, ptr %2, i64 56
  %.not35 = icmp eq ptr %.pre, null               ; 2 uses
  br i1 %.not35, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.h = getelementptr i8, ptr %.pre, i64 64
  store ptr %i.e, ptr %i.h, align 8, !tbaa !264
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.i = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !63
  %i.k = icmp eq ptr %2, %i.j
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !264
  store ptr %i.l, ptr %i.i, align 8, !tbaa !63
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = load ptr, ptr %1, align 8, !tbaa !64
  %i.n = icmp eq ptr %2, %i.m
  br i1 %i.n, label %bb.g, label %mi_heap_queue_first_update.exit

bb.g:                                             ; preds = %bb.f
  store ptr %.pre, ptr %1, align 8, !tbaa !64
  %i.o = getelementptr i8, ptr %1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !61   ; 4 uses
  %i.q = icmp ugt i64 %i.p, 1024
  br i1 %i.q, label %mi_heap_queue_first_update.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %spec.store.select.i = select i1 %.not35, ptr @_mi_page_empty, ptr %.pre ; 3 uses
  %i.r = add nuw nsw i64 %i.p, 7
  %i.s = lshr i64 %i.r, 3                         ; 8 uses
  %i.t = getelementptr i8, ptr %i.c, i64 8        ; 3 uses
  %i.u = getelementptr [8 x i8], ptr %i.t, i64 %i.s
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !53
  %i.w = icmp eq ptr %i.v, %spec.store.select.i
  br i1 %i.w, label %mi_heap_queue_first_update.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = icmp samesign ult i64 %i.p, 9
  br i1 %i.x, label %.lr.ph.preheader.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = icmp samesign ult i64 %i.p, 65
  br i1 %i.y, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.z = trunc nuw nsw i64 %i.s to i8
  %i.aa = add nuw nsw i8 %i.z, 1
  %i.ab = and i8 %i.aa, 30
  br label %mi_bin.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ac = add nsw i64 %i.s, -1                    ; 2 uses
  %i.ad = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ac, i1 false) ; 2 uses
  %i.ae = trunc nuw nsw i64 %i.ad to i8
  %i.af = sub nsw i64 61, %i.ad
  %i.ag = and i64 %i.af, 4294967295
  %i.ah = lshr i64 %i.ac, %i.ag
  %i.ai = trunc nuw nsw i64 %i.ah to i8
  %i.aj = and i8 %i.ai, 3
  %i.ak = shl i8 %i.ae, 2
  %reass.sub = sub i8 %i.aj, %i.ak
  %i.al = add i8 %reass.sub, -7
  br label %mi_bin.exit.i

mi_bin.exit.i:                                    ; preds = %bb.l, %bb.k
  %.0.i.i = phi i8 [ %i.al, %bb.l ], [ %i.ab, %bb.k ]
  %i.am = getelementptr i8, ptr %i.c, i64 1040
  br label %bb.m

bb.m:                                             ; preds = %mi_bin.exit35.i, %mi_bin.exit.i
  %.pn.i = phi ptr [ %1, %mi_bin.exit.i ], [ %.027.i, %mi_bin.exit35.i ] ; 2 uses
  %.027.i = getelementptr i8, ptr %.pn.i, i64 -24 ; 2 uses
  %i.an = getelementptr i8, ptr %.pn.i, i64 -8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !61
  %i.ap = add i64 %i.ao, 7                        ; 4 uses
  %i.aq = lshr i64 %i.ap, 3                       ; 4 uses
  %i.ar = icmp ult i64 %i.ap, 16
  br i1 %i.ar, label %mi_bin.exit35.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = icmp ult i64 %i.ap, 72
  br i1 %i.as, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.at = trunc nuw nsw i64 %i.aq to i8
  %i.au = add nuw nsw i8 %i.at, 1
  %i.av = and i8 %i.au, 30
  br label %mi_bin.exit35.i

bb.p:                                             ; preds = %bb.n
  %i.aw = icmp ugt i64 %i.ap, 131079
  br i1 %i.aw, label %mi_bin.exit35.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = add nsw i64 %i.aq, -1                   ; 2 uses
  %i.ay = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ax, i1 false) ; 2 uses
  %i.az = trunc nuw nsw i64 %i.ay to i8
  %i.ba = sub nsw i64 61, %i.ay
  %i.bb = and i64 %i.ba, 4294967295
  %i.bc = lshr i64 %i.ax, %i.bb
  %i.bd = trunc i64 %i.bc to i8
  %i.be = and i8 %i.bd, 3
  %i.bf = shl i8 %i.az, 2
  %reass.sub60 = sub i8 %i.be, %i.bf
  %i.bg = add i8 %reass.sub60, -7
  br label %mi_bin.exit35.i

mi_bin.exit35.i:                                  ; preds = %bb.q, %bb.p, %bb.o, %bb.m
  %.0.i34.i = phi i8 [ %i.bg, %bb.q ], [ %i.av, %bb.o ], [ 1, %bb.m ], [ 73, %bb.p ]
  %i.bh = icmp eq i8 %.0.i.i, %.0.i34.i
  %i.bi = icmp ugt ptr %.027.i, %i.am
  %i.bj = and i1 %i.bi, %i.bh
  br i1 %i.bj, label %bb.m, label %bb.r, !llvm.loop !261

bb.r:                                             ; preds = %mi_bin.exit35.i
  %i.bk = add nuw nsw i64 %i.aq, 1
  %.not.i = icmp samesign ult i64 %i.aq, %i.s
  %spec.select.i = select i1 %.not.i, i64 %i.bk, i64 %i.s ; 2 uses
  %.not3237.i = icmp samesign ugt i64 %spec.select.i, %i.s
  br i1 %.not3237.i, label %mi_heap_queue_first_update.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.r, %bb.i
  %.145.i = phi i64 [ %spec.select.i, %bb.r ], [ 0, %bb.i ] ; 4 uses
  %i.bl = add nuw nsw i64 %i.s, 1
  %i.bm = sub nsw i64 %i.bl, %.145.i              ; 3 uses
  %min.iters.check = icmp ult i64 %i.bm, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.bm, -4                      ; 3 uses
  %i.bn = add i64 %.145.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %spec.store.select.i, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.t, i64 %.145.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bp = getelementptr [8 x i8], ptr %i.bo, i64 %index ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.bp, align 8, !tbaa !53
  store <2 x ptr> %broadcast.splat, ptr %i.bq, align 8, !tbaa !53
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !268

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bm, %n.vec
  br i1 %cmp.n, label %mi_heap_queue_first_update.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.038.i.ph = phi i64 [ %.145.i, %.lr.ph.preheader.i ], [ %i.bn, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.038.i = phi i64 [ %i.bt, %.lr.ph.i ], [ %.038.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.bs = getelementptr [8 x i8], ptr %i.t, i64 %.038.i
  store ptr %spec.store.select.i, ptr %i.bs, align 8, !tbaa !53
  %i.bt = add nuw nsw i64 %.038.i, 1
  %exitcond.not.i = icmp eq i64 %.038.i, %i.s
  br i1 %exitcond.not.i, label %mi_heap_queue_first_update.exit, label %.lr.ph.i, !llvm.loop !269

mi_heap_queue_first_update.exit:                  ; preds = %.lr.ph.i, %middle.block, %bb.r, %bb.h, %bb.g, %bb.f
  %i.bu = getelementptr i8, ptr %0, i64 8         ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !63 ; 3 uses
  store ptr %i.bv, ptr %i.d, align 8, !tbaa !264
  store ptr null, ptr %i.g, align 8, !tbaa !197
  %.not36 = icmp eq ptr %i.bv, null
  br i1 %.not36, label %bb.t, label %bb.s

bb.s:                                             ; preds = %mi_heap_queue_first_update.exit
  %i.bw = getelementptr i8, ptr %i.bv, i64 56
  store ptr %2, ptr %i.bw, align 8, !tbaa !197
  store ptr %2, ptr %i.bu, align 8, !tbaa !63
  %.phi.trans.insert64 = getelementptr i8, ptr %0, i64 16
  %.val.pre = load i64, ptr %.phi.trans.insert64, align 8, !tbaa !61
  br label %mi_heap_queue_first_update.exit54
end_hunk_10
begin_hunk_11_@mi_page_queue_enqueue_from:bb.a
  %i.cs = and i8 %i.cr, 3
  %i.ct = shl i8 %i.cn, 2
  %reass.sub61 = sub i8 %i.cs, %i.ct
  %i.cu = add i8 %reass.sub61, -7
  br label %mi_bin.exit.i39

mi_bin.exit.i39:                                  ; preds = %bb.y, %bb.x
  %.0.i.i40 = phi i8 [ %i.cu, %bb.y ], [ %i.ck, %bb.x ]
  %i.cv = getelementptr i8, ptr %i.c, i64 1040
  br label %bb.z

bb.z:                                             ; preds = %mi_bin.exit35.i44, %mi_bin.exit.i39
  %.pn.i41 = phi ptr [ %0, %mi_bin.exit.i39 ], [ %.027.i42, %mi_bin.exit35.i44 ] ; 2 uses
  %.027.i42 = getelementptr i8, ptr %.pn.i41, i64 -24 ; 2 uses
  %i.cw = getelementptr i8, ptr %.pn.i41, i64 -8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !61
  %i.cy = add i64 %i.cx, 7                        ; 4 uses
  %i.cz = lshr i64 %i.cy, 3                       ; 4 uses
  %i.da = icmp ult i64 %i.cy, 16
  br i1 %i.da, label %mi_bin.exit35.i44, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.db = icmp ult i64 %i.cy, 72
  br i1 %i.db, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dc = trunc nuw nsw i64 %i.cz to i8
  %i.dd = add nuw nsw i8 %i.dc, 1
  %i.de = and i8 %i.dd, 30
  br label %mi_bin.exit35.i44

bb.ac:                                            ; preds = %bb.aa
  %i.df = icmp ugt i64 %i.cy, 131079
  br i1 %i.df, label %mi_bin.exit35.i44, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dg = add nsw i64 %i.cz, -1                   ; 2 uses
  %i.dh = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dg, i1 false) ; 2 uses
  %i.di = trunc nuw nsw i64 %i.dh to i8
  %i.dj = sub nsw i64 61, %i.dh
  %i.dk = and i64 %i.dj, 4294967295
  %i.dl = lshr i64 %i.dg, %i.dk
  %i.dm = trunc i64 %i.dl to i8
  %i.dn = and i8 %i.dm, 3
  %i.do = shl i8 %i.di, 2
  %reass.sub62 = sub i8 %i.dn, %i.do
  %i.dp = add i8 %reass.sub62, -7
  br label %mi_bin.exit35.i44

mi_bin.exit35.i44:                                ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.z
  %.0.i34.i45 = phi i8 [ %i.dp, %bb.ad ], [ %i.de, %bb.ab ], [ 1, %bb.z ], [ 73, %bb.ac ]
  %i.dq = icmp eq i8 %.0.i.i40, %.0.i34.i45
  %i.dr = icmp ugt ptr %.027.i42, %i.cv
  %i.ds = and i1 %i.dr, %i.dq
  br i1 %i.ds, label %bb.z, label %bb.ae, !llvm.loop !261

bb.ae:                                            ; preds = %mi_bin.exit35.i44
  %i.dt = add nuw nsw i64 %i.cz, 1
  %.not.i46 = icmp samesign ult i64 %i.cz, %i.cb
  %spec.select.i47 = select i1 %.not.i46, i64 %i.dt, i64 %i.cb ; 2 uses
  %.not3237.i48 = icmp samesign ugt i64 %spec.select.i47, %i.cb
  br i1 %.not3237.i48, label %mi_heap_queue_first_update.exit54, label %.lr.ph.preheader.i49

.lr.ph.preheader.i49:                             ; preds = %bb.ae, %bb.v
  %.145.i50 = phi i64 [ %spec.select.i47, %bb.ae ], [ 0, %bb.v ] ; 4 uses
  %i.du = add nuw nsw i64 %i.cb, 1
  %i.dv = sub nsw i64 %i.du, %.145.i50            ; 3 uses
  %min.iters.check76 = icmp ult i64 %i.dv, 4
  br i1 %min.iters.check76, label %.lr.ph.i51.preheader, label %vector.ph77

vector.ph77:                                      ; preds = %.lr.ph.preheader.i49
  %n.vec79 = and i64 %i.dv, -4                    ; 3 uses
  %i.dw = add i64 %.145.i50, %n.vec79
  %broadcast.splatinsert80 = insertelement <2 x ptr> poison, ptr %2, i64 0
  %broadcast.splat81 = shufflevector <2 x ptr> %broadcast.splatinsert80, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dx = getelementptr [8 x i8], ptr %i.cc, i64 %.145.i50
  br label %vector.body82

vector.body82:                                    ; preds = %vector.body82, %vector.ph77
  %index83 = phi i64 [ 0, %vector.ph77 ], [ %index.next84, %vector.body82 ] ; 2 uses
  %i.dy = getelementptr [8 x i8], ptr %i.dx, i64 %index83 ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dy, i64 16
  store <2 x ptr> %broadcast.splat81, ptr %i.dy, align 8, !tbaa !53
  store <2 x ptr> %broadcast.splat81, ptr %i.dz, align 8, !tbaa !53
  %index.next84 = add nuw i64 %index83, 4         ; 2 uses
  %i.ea = icmp eq i64 %index.next84, %n.vec79
  br i1 %i.ea, label %middle.block85, label %vector.body82, !llvm.loop !270

middle.block85:                                   ; preds = %vector.body82
  %cmp.n86 = icmp eq i64 %i.dv, %n.vec79
  br i1 %cmp.n86, label %mi_heap_queue_first_update.exit54, label %.lr.ph.i51.preheader

.lr.ph.i51.preheader:                             ; preds = %.lr.ph.preheader.i49, %middle.block85
  %.038.i52.ph = phi i64 [ %.145.i50, %.lr.ph.preheader.i49 ], [ %i.dw, %middle.block85 ]
  br label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %.lr.ph.i51.preheader, %.lr.ph.i51
  %.038.i52 = phi i64 [ %i.ec, %.lr.ph.i51 ], [ %.038.i52.ph, %.lr.ph.i51.preheader ] ; 3 uses
  %i.eb = getelementptr [8 x i8], ptr %i.cc, i64 %.038.i52
  store ptr %2, ptr %i.eb, align 8, !tbaa !53
  %i.ec = add nuw nsw i64 %.038.i52, 1
  %exitcond.not.i53 = icmp eq i64 %.038.i52, %i.cb
  br i1 %exitcond.not.i53, label %mi_heap_queue_first_update.exit54, label %.lr.ph.i51, !llvm.loop !271

mi_heap_queue_first_update.exit54:                ; preds = %.lr.ph.i51, %middle.block85, %bb.ae, %bb.u, %bb.t, %bb.s
  %.val = phi i64 [ %.val.pre, %bb.s ], [ %i.by, %bb.ae ], [ %i.by, %bb.u ], [ %i.by, %bb.t ], [ %i.by, %middle.block85 ], [ %i.by, %.lr.ph.i51 ]
  %i.ed = icmp eq i64 %.val, 131088
  %i.ee = zext i1 %i.ed to i8
  %i.ef = getelementptr i8, ptr %2, i64 14        ; 2 uses
  %i.eg = load i8, ptr %i.ef, align 2
  %i.eh = and i8 %i.eg, -2
  %i.ei = or disjoint i8 %i.eh, %i.ee
  store i8 %i.ei, ptr %i.ef, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_page_abandon(ptr noundef %0, ptr noundef captures(address) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 32
  tail call fastcc void @mi_page_queue_remove(ptr noundef %1, ptr noundef %0)
  store atomic i64 0, ptr %i.a release, align 8
  %i.f = ptrtoint ptr %0 to i64
  %i.g = add i64 %i.f, -1
  %i.h = and i64 %i.g, -33554432
  %i.i = inttoptr i64 %i.h to ptr                 ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 192      ; 3 uses
  %i.k = load i64, ptr %i.j, align 64, !tbaa !72
  %i.l = add i64 %i.k, 1                          ; 2 uses
  store i64 %i.l, ptr %i.j, align 64, !tbaa !72
  %i.m = getelementptr i8, ptr %i.d, i64 928
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !201  ; 4 uses
  %i.o = getelementptr i8, ptr %i.n, i64 256      ; 5 uses
  %i.p = icmp uge ptr %i.o, @_mi_stats_main
  %i.q = icmp ult ptr %i.o, getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 640)
  %i.r = select i1 %i.p, i1 %i.q, i1 false
  %i.s = getelementptr i8, ptr %i.n, i64 280      ; 3 uses
  br i1 %i.r, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.t = atomicrmw add ptr %i.s, i64 1 monotonic, align 8
  %i.u = getelementptr i8, ptr %i.n, i64 272      ; 2 uses
  %i.v = add i64 %i.t, 1                          ; 2 uses
  %i.w = load atomic i64, ptr %i.u monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.0.i.i.i.i = phi i64 [ %i.w, %bb.b ], [ %i.aa, %bb.d ] ; 2 uses
  %i.x = icmp slt i64 %.0.i.i.i.i, %i.v
  br i1 %i.x, label %bb.d, label %mi_atomic_maxi64_relaxed.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.y = cmpxchg weak ptr %i.u, i64 %.0.i.i.i.i, i64 %i.v release monotonic, align 8 ; 2 uses
  %i.z = extractvalue { i64, i1 } %i.y, 1
  %i.aa = extractvalue { i64, i1 } %i.y, 0
  br i1 %i.z, label %mi_atomic_maxi64_relaxed.exit.i.i.i, label %bb.c, !llvm.loop !124

mi_atomic_maxi64_relaxed.exit.i.i.i:              ; preds = %bb.d, %bb.c
  %i.ab = atomicrmw add ptr %i.o, i64 1 monotonic, align 8 ; 0 uses
  %.pre.i = load i64, ptr %i.j, align 64, !tbaa !72
  br label %_mi_stat_increase.exit.i

bb.e:                                             ; preds = %bb.a
  %i.ac = load i64, ptr %i.s, align 8, !tbaa !127
  %i.ad = add i64 %i.ac, 1                        ; 3 uses
  store i64 %i.ad, ptr %i.s, align 8, !tbaa !127
  %i.ae = getelementptr i8, ptr %i.n, i64 272     ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !128
  %i.ag = icmp sgt i64 %i.ad, %i.af
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !128
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ah = load i64, ptr %i.o, align 8, !tbaa !129
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.o, align 8, !tbaa !129
  br label %_mi_stat_increase.exit.i

_mi_stat_increase.exit.i:                         ; preds = %bb.g, %mi_atomic_maxi64_relaxed.exit.i.i.i
  %i.aj = phi i64 [ %.pre.i, %mi_atomic_maxi64_relaxed.exit.i.i.i ], [ %i.l, %bb.g ]
  %i.ak = getelementptr i8, ptr %i.i, i64 208
  %i.al = load i64, ptr %i.ak, align 16, !tbaa !67
  %i.am = icmp eq i64 %i.al, %i.aj
  br i1 %i.am, label %bb.h, label %_mi_segment_page_abandon.exit

bb.h:                                             ; preds = %_mi_stat_increase.exit.i
  tail call fastcc void @mi_segment_abandon(ptr noundef nonnull %i.i, ptr noundef %i.e)
  br label %_mi_segment_page_abandon.exit

_mi_segment_page_abandon.exit:                    ; preds = %_mi_stat_increase.exit.i, %bb.h
  ret void
}

; Function Attrs: nofree norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @mi_page_queue_remove(ptr noundef captures(address) %0, ptr noundef captures(address) %1) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 48
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = getelementptr i8, ptr %1, i64 64         ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !264  ; 3 uses
  %.not = icmp eq ptr %i.e, null
  %.phi.trans.insert = getelementptr i8, ptr %1, i64 56
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !197 ; 5 uses
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.e, i64 56
  store ptr %.pre, ptr %i.f, align 8, !tbaa !197
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %.not22 = icmp eq ptr %.pre, null               ; 2 uses
  br i1 %.not22, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.g = getelementptr i8, ptr %.pre, i64 64
  store ptr %i.e, ptr %i.g, align 8, !tbaa !264
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.h = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !63
  %i.j = icmp eq ptr %1, %i.i
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !264
  store ptr %i.k, ptr %i.h, align 8, !tbaa !63
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = load ptr, ptr %0, align 8, !tbaa !64
  %i.m = icmp eq ptr %1, %i.l
  br i1 %i.m, label %bb.g, label %mi_heap_queue_first_update.exit

bb.g:                                             ; preds = %bb.f
  store ptr %.pre, ptr %0, align 8, !tbaa !64
  %i.n = getelementptr i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !61   ; 4 uses
  %i.p = icmp ugt i64 %i.o, 1024
  br i1 %i.p, label %mi_heap_queue_first_update.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %spec.store.select.i = select i1 %.not22, ptr @_mi_page_empty, ptr %.pre ; 3 uses
  %i.q = add nuw nsw i64 %i.o, 7
  %i.r = lshr i64 %i.q, 3                         ; 8 uses
  %i.s = getelementptr i8, ptr %i.c, i64 8        ; 3 uses
  %i.t = getelementptr [8 x i8], ptr %i.s, i64 %i.r
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !53
  %i.v = icmp eq ptr %i.u, %spec.store.select.i
  br i1 %i.v, label %mi_heap_queue_first_update.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = icmp samesign ult i64 %i.o, 9
  br i1 %i.w, label %.lr.ph.preheader.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = icmp samesign ult i64 %i.o, 65
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.y = trunc nuw nsw i64 %i.r to i8
  %i.z = add nuw nsw i8 %i.y, 1
  %i.aa = and i8 %i.z, 30
  br label %mi_bin.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ab = add nsw i64 %i.r, -1                    ; 2 uses
  %i.ac = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ab, i1 false) ; 2 uses
  %i.ad = trunc nuw nsw i64 %i.ac to i8
  %i.ae = sub nsw i64 61, %i.ac
  %i.af = and i64 %i.ae, 4294967295
  %i.ag = lshr i64 %i.ab, %i.af
  %i.ah = trunc nuw nsw i64 %i.ag to i8
  %i.ai = and i8 %i.ah, 3
  %i.aj = shl i8 %i.ad, 2
  %reass.sub = sub i8 %i.ai, %i.aj
  %i.ak = add i8 %reass.sub, -7
  br label %mi_bin.exit.i

mi_bin.exit.i:                                    ; preds = %bb.l, %bb.k
  %.0.i.i = phi i8 [ %i.ak, %bb.l ], [ %i.aa, %bb.k ]
  %i.al = getelementptr i8, ptr %i.c, i64 1040
  br label %bb.m

bb.m:                                             ; preds = %mi_bin.exit35.i, %mi_bin.exit.i
  %.pn.i = phi ptr [ %0, %mi_bin.exit.i ], [ %.027.i, %mi_bin.exit35.i ] ; 2 uses
  %.027.i = getelementptr i8, ptr %.pn.i, i64 -24 ; 2 uses
  %i.am = getelementptr i8, ptr %.pn.i, i64 -8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !61
  %i.ao = add i64 %i.an, 7                        ; 4 uses
  %i.ap = lshr i64 %i.ao, 3                       ; 4 uses
  %i.aq = icmp ult i64 %i.ao, 16
  br i1 %i.aq, label %mi_bin.exit35.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = icmp ult i64 %i.ao, 72
  br i1 %i.ar, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.as = trunc nuw nsw i64 %i.ap to i8
  %i.at = add nuw nsw i8 %i.as, 1
  %i.au = and i8 %i.at, 30
  br label %mi_bin.exit35.i

bb.p:                                             ; preds = %bb.n
  %i.av = icmp ugt i64 %i.ao, 131079
  br i1 %i.av, label %mi_bin.exit35.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = add nsw i64 %i.ap, -1                   ; 2 uses
  %i.ax = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aw, i1 false) ; 2 uses
  %i.ay = trunc nuw nsw i64 %i.ax to i8
  %i.az = sub nsw i64 61, %i.ax
  %i.ba = and i64 %i.az, 4294967295
  %i.bb = lshr i64 %i.aw, %i.ba
  %i.bc = trunc i64 %i.bb to i8
  %i.bd = and i8 %i.bc, 3
  %i.be = shl i8 %i.ay, 2
  %reass.sub25 = sub i8 %i.bd, %i.be
  %i.bf = add i8 %reass.sub25, -7
  br label %mi_bin.exit35.i

mi_bin.exit35.i:                                  ; preds = %bb.q, %bb.p, %bb.o, %bb.m
  %.0.i34.i = phi i8 [ %i.bf, %bb.q ], [ %i.au, %bb.o ], [ 1, %bb.m ], [ 73, %bb.p ]
  %i.bg = icmp eq i8 %.0.i.i, %.0.i34.i
  %i.bh = icmp ugt ptr %.027.i, %i.al
  %i.bi = and i1 %i.bh, %i.bg
  br i1 %i.bi, label %bb.m, label %bb.r, !llvm.loop !261

bb.r:                                             ; preds = %mi_bin.exit35.i
  %i.bj = add nuw nsw i64 %i.ap, 1
  %.not.i = icmp samesign ult i64 %i.ap, %i.r
  %spec.select.i = select i1 %.not.i, i64 %i.bj, i64 %i.r ; 2 uses
  %.not3237.i = icmp samesign ugt i64 %spec.select.i, %i.r
  br i1 %.not3237.i, label %mi_heap_queue_first_update.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.r, %bb.i
  %.145.i = phi i64 [ %spec.select.i, %bb.r ], [ 0, %bb.i ] ; 4 uses
  %i.bk = add nuw nsw i64 %i.r, 1
  %i.bl = sub nsw i64 %i.bk, %.145.i              ; 3 uses
  %min.iters.check = icmp ult i64 %i.bl, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.bl, -4                      ; 3 uses
  %i.bm = add i64 %.145.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %spec.store.select.i, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bn = getelementptr [8 x i8], ptr %i.s, i64 %.145.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bn, i64 %index ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.bo, align 8, !tbaa !53
  store <2 x ptr> %broadcast.splat, ptr %i.bp, align 8, !tbaa !53
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !272

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %mi_heap_queue_first_update.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.038.i.ph = phi i64 [ %.145.i, %.lr.ph.preheader.i ], [ %i.bm, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.038.i = phi i64 [ %i.bs, %.lr.ph.i ], [ %.038.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.br = getelementptr [8 x i8], ptr %i.s, i64 %.038.i
  store ptr %spec.store.select.i, ptr %i.br, align 8, !tbaa !53
  %i.bs = add nuw nsw i64 %.038.i, 1
  %exitcond.not.i = icmp eq i64 %.038.i, %i.r
  br i1 %exitcond.not.i, label %mi_heap_queue_first_update.exit, label %.lr.ph.i, !llvm.loop !273

mi_heap_queue_first_update.exit:                  ; preds = %.lr.ph.i, %middle.block, %bb.r, %bb.h, %bb.g, %bb.f
  %i.bt = getelementptr i8, ptr %1, i64 56
  %i.bu = getelementptr i8, ptr %i.c, i64 3024    ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !196
  %i.bw = add i64 %i.bv, -1
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !196
  %i.bx = getelementptr i8, ptr %1, i64 14        ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i8 0, i64 16, i1 false)
  %i.by = load i8, ptr %i.bx, align 2
  %i.bz = and i8 %i.by, -2
  store i8 %i.bz, ptr %i.bx, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_segment_page_abandon(ptr noundef %0, ptr noundef captures(none) %1) local_unnamed_addr #2 {
end_hunk_11
begin_hunk_12_@_mi_page_free:bb.a
  %i.e = load atomic i64, ptr %i.d monotonic, align 8
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.h = getelementptr i8, ptr %i.g, i64 32       ; 3 uses
  tail call fastcc void @mi_page_queue_remove(ptr noundef %1, ptr noundef %0)
  store atomic i64 0, ptr %i.d release, align 8
  %i.i = ptrtoint ptr %0 to i64
  %i.j = add i64 %i.i, -1
  %i.k = and i64 %i.j, -33554432
  %i.l = inttoptr i64 %i.k to ptr                 ; 4 uses
  %i.m = tail call fastcc ptr @mi_segment_page_clear(ptr noundef %0, ptr noundef %i.h) ; 0 uses
  %i.n = getelementptr i8, ptr %i.l, i64 208
  %i.o = load i64, ptr %i.n, align 16, !tbaa !67  ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @mi_segment_free(ptr noundef nonnull %i.l, ptr noundef %i.h)
  br label %_mi_segment_page_free.exit

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr i8, ptr %i.l, i64 192
  %i.r = load i64, ptr %i.q, align 64, !tbaa !72
  %i.s = icmp eq i64 %i.o, %i.r
  br i1 %i.s, label %bb.d, label %_mi_segment_page_free.exit

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @mi_segment_abandon(ptr noundef nonnull %i.l, ptr noundef %i.h)
  br label %_mi_segment_page_free.exit

_mi_segment_page_free.exit:                       ; preds = %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_segment_page_free(ptr noundef %0, i1 noundef zeroext %1, ptr noundef captures(address) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = add i64 %i.a, -1
  %i.c = and i64 %i.b, -33554432
  %i.d = inttoptr i64 %i.c to ptr                 ; 4 uses
  %i.e = tail call fastcc ptr @mi_segment_page_clear(ptr noundef %0, ptr noundef %2) ; 0 uses
  %i.f = getelementptr i8, ptr %i.d, i64 208
  %i.g = load i64, ptr %i.f, align 16, !tbaa !67  ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @mi_segment_free(ptr noundef nonnull %i.d, ptr noundef %2)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.d, i64 192
  %i.j = load i64, ptr %i.i, align 64, !tbaa !72
  %i.k = icmp eq i64 %i.g, %i.j
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @mi_segment_abandon(ptr noundef nonnull %i.d, ptr noundef %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_heap_collect_retired(ptr noundef captures(address) %0, i1 noundef zeroext %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 3032       ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !65   ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 3040       ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !66
  %.not33 = icmp ugt i64 %i.b, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 1040
  br label %bb.b

._crit_edge:                                      ; preds = %_PyMem_mi_page_maybe_free.exit, %bb.a
  %.026.lcssa = phi i64 [ 0, %bb.a ], [ %.127, %_PyMem_mi_page_maybe_free.exit ]
  %.0.lcssa = phi i64 [ 74, %bb.a ], [ %.2, %_PyMem_mi_page_maybe_free.exit ]
  store i64 %.0.lcssa, ptr %i.a, align 8, !tbaa !65
  store i64 %.026.lcssa, ptr %i.c, align 8, !tbaa !66
  ret void

bb.b:                                             ; preds = %.lr.ph, %_PyMem_mi_page_maybe_free.exit
  %.036 = phi i64 [ 74, %.lr.ph ], [ %.2, %_PyMem_mi_page_maybe_free.exit ] ; 7 uses
  %.02635 = phi i64 [ 0, %.lr.ph ], [ %.127, %_PyMem_mi_page_maybe_free.exit ] ; 7 uses
  %.02834 = phi i64 [ %i.b, %.lr.ph ], [ %i.ah, %_PyMem_mi_page_maybe_free.exit ] ; 4 uses
  %i.f = getelementptr [24 x i8], ptr %i.e, i64 %.02834 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !64   ; 8 uses
  %.not30 = icmp eq ptr %i.g, null
  br i1 %.not30, label %_PyMem_mi_page_maybe_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 15       ; 3 uses
  %i.i = load i8, ptr %i.h, align 1               ; 3 uses
  %.not31 = icmp ult i8 %i.i, 2
  br i1 %.not31, label %_PyMem_mi_page_maybe_free.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.g, i64 24
  %.val = load i32, ptr %i.j, align 8, !tbaa !18
  %i.k = icmp eq i32 %.val, 0
  br i1 %i.k, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.l = add i8 %i.i, -2                          ; 2 uses
  store i8 %i.l, ptr %i.h, align 1
  %i.m = icmp ult i8 %i.l, 2
  %or.cond = or i1 %1, %i.m
  br i1 %or.cond, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %i.g, i64 14       ; 2 uses
  %i.o = load i8, ptr %i.n, align 2
  %i.p = and i8 %i.o, -3
  store i8 %i.p, ptr %i.n, align 2
  %i.q = getelementptr i8, ptr %i.g, i64 48       ; 2 uses
  %i.r = load atomic i64, ptr %i.q monotonic, align 8
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !22
  %i.u = getelementptr i8, ptr %i.t, i64 32       ; 3 uses
  tail call fastcc void @mi_page_queue_remove(ptr noundef nonnull %i.f, ptr noundef nonnull %i.g)
  store atomic i64 0, ptr %i.q release, align 8
  %i.v = ptrtoint ptr %i.g to i64
  %i.w = add i64 %i.v, -1
  %i.x = and i64 %i.w, -33554432
  %i.y = inttoptr i64 %i.x to ptr                 ; 4 uses
  %i.z = tail call fastcc ptr @mi_segment_page_clear(ptr noundef nonnull %i.g, ptr noundef %i.u) ; 0 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 208
  %i.ab = load i64, ptr %i.aa, align 16, !tbaa !67 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @mi_segment_free(ptr noundef nonnull %i.y, ptr noundef %i.u)
  br label %_PyMem_mi_page_maybe_free.exit

bb.h:                                             ; preds = %bb.f
  %i.ad = getelementptr i8, ptr %i.y, i64 192
  %i.ae = load i64, ptr %i.ad, align 64, !tbaa !72
  %i.af = icmp eq i64 %i.ab, %i.ae
  br i1 %i.af, label %bb.i, label %_PyMem_mi_page_maybe_free.exit

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @mi_segment_abandon(ptr noundef nonnull %i.y, ptr noundef %i.u)
  br label %_PyMem_mi_page_maybe_free.exit

bb.j:                                             ; preds = %bb.e
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.02834, i64 %.036)
  %spec.select32 = tail call i64 @llvm.umax.i64(i64 %.02834, i64 %.02635)
  br label %_PyMem_mi_page_maybe_free.exit

bb.k:                                             ; preds = %bb.d
  %i.ag = and i8 %i.i, 1
  store i8 %i.ag, ptr %i.h, align 1
  br label %_PyMem_mi_page_maybe_free.exit

_PyMem_mi_page_maybe_free.exit:                   ; preds = %bb.i, %bb.h, %bb.g, %bb.j, %bb.k, %bb.c, %bb.b
  %.127 = phi i64 [ %.02635, %bb.c ], [ %.02635, %bb.b ], [ %spec.select32, %bb.j ], [ %.02635, %bb.k ], [ %.02635, %bb.g ], [ %.02635, %bb.h ], [ %.02635, %bb.i ] ; 2 uses
  %.2 = phi i64 [ %.036, %bb.c ], [ %.036, %bb.b ], [ %spec.select, %bb.j ], [ %.036, %bb.k ], [ %.036, %bb.g ], [ %.036, %bb.h ], [ %.036, %bb.i ] ; 2 uses
  %i.ah = add i64 %.02834, 1                      ; 2 uses
  %i.ai = load i64, ptr %i.c, align 8, !tbaa !66
  %.not = icmp ugt i64 %i.ah, %i.ai
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !274
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_deferred_free(ptr noundef readonly captures(none) %0, i1 noundef zeroext %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22     ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !29
  %i.c = add i64 %i.b, 1                          ; 2 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !29
  %i.d = load volatile ptr, ptr @deferred_free, align 8, !tbaa !40
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.a, i64 8        ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !41, !range !42, !noundef !43
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.e, align 8, !tbaa !41
  %i.h = load volatile ptr, ptr @deferred_free, align 8, !tbaa !40
  %i.i = load atomic ptr, ptr @deferred_arg monotonic, align 8
  tail call void %i.h(i1 noundef zeroext %1, i64 noundef %i.c, ptr noundef %i.i) #55
  %i.j = load ptr, ptr %0, align 8, !tbaa !22
  %i.k = getelementptr i8, ptr %i.j, i64 8
  store i8 0, ptr %i.k, align 8, !tbaa !41
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nounwind memory(readwrite, argmem: none, target_mem: none) uwtable
define hidden void @mi_register_deferred_free(ptr noundef %0, ptr noundef %1) local_unnamed_addr #32 {
bb.a:
  store volatile ptr %0, ptr @deferred_free, align 8, !tbaa !40
  store atomic ptr %1, ptr @deferred_arg release, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @mi_find_page(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = icmp ugt i64 %1, 131072
  %i.b = icmp ne i64 %2, 0
  %i.c = or i1 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.e, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i64 %1, 0
  br i1 %i.d, label %bb.c, label %bb.d, !prof !17

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 75, ptr noundef nonnull @.str.101, i64 noundef %1)
  br label %mi_find_free_page.exit

bb.d:                                             ; preds = %bb.b
  %i.e = tail call fastcc ptr @mi_large_huge_page_alloc(ptr noundef %0, i64 noundef %1, i64 noundef %2)
  br label %mi_find_free_page.exit

bb.e:                                             ; preds = %bb.a
  %i.f = add nuw nsw i64 %1, 7
  %i.g = lshr i64 %i.f, 3                         ; 2 uses
  %i.h = icmp samesign ult i64 %1, 9
  br i1 %i.h, label %mi_page_queue.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = icmp samesign ult i64 %1, 65
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = add nuw nsw i64 %i.g, 1
  %i.k = and i64 %i.j, 30
  br label %mi_page_queue.exit.i

bb.h:                                             ; preds = %bb.f
  %i.l = add nsw i64 %i.g, -1                     ; 2 uses
  %i.m = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.l, i1 false) ; 2 uses
  %i.n = sub nsw i64 61, %i.m
  %i.o = and i64 %i.n, 4294967295
  %i.p = lshr i64 %i.l, %i.o
  %i.q = and i64 %i.p, 3
  %i.r = shl nuw nsw i64 %i.m, 2
  %reass.sub = sub nsw i64 %i.q, %i.r
  %i.s = add nsw i64 %reass.sub, 249
  %i.t = and i64 %i.s, 255
  br label %mi_page_queue.exit.i

mi_page_queue.exit.i:                             ; preds = %bb.h, %bb.g, %bb.e
  %.0.i.i.i.i = phi i64 [ %i.t, %bb.h ], [ %i.k, %bb.g ], [ 1, %bb.e ]
  %i.u = getelementptr i8, ptr %0, i64 1040
  %i.v = getelementptr [24 x i8], ptr %i.u, i64 %.0.i.i.i.i ; 5 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !64   ; 11 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.q, label %bb.i

bb.i:                                             ; preds = %mi_page_queue.exit.i
  %i.x = getelementptr i8, ptr %i.w, i64 40       ; 3 uses
  %i.y = load atomic i64, ptr %i.x monotonic, align 8
  %.not.i.i = icmp ult i64 %i.y, 4
  br i1 %.not.i.i, label %_mi_page_thread_free_collect.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = load atomic i64, ptr %i.x monotonic, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.0.i.i.i = phi i64 [ %i.z, %bb.j ], [ %i.ad, %bb.k ] ; 3 uses
  %i.aa = and i64 %.0.i.i.i, 3
  %i.ab = cmpxchg weak ptr %i.x, i64 %.0.i.i.i, i64 %i.aa acq_rel acquire, align 8 ; 2 uses
  %i.ac = extractvalue { i64, i1 } %i.ab, 1
  %i.ad = extractvalue { i64, i1 } %i.ab, 0
  br i1 %i.ac, label %bb.l, label %bb.k, !llvm.loop !73

bb.l:                                             ; preds = %bb.k
  %i.ae = and i64 %.0.i.i.i, -4                   ; 2 uses
  %i.af = inttoptr i64 %i.ae to ptr               ; 3 uses
  %i.ag = icmp eq i64 %i.ae, 0
  br i1 %i.ag, label %_mi_page_thread_free_collect.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr i8, ptr %i.w, i64 10
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !74 ; 2 uses
  %i.aj = zext i16 %i.ai to i32                   ; 2 uses
  %i.ak = load atomic i64, ptr %i.af monotonic, align 8 ; 2 uses
  %i.al = icmp ne i64 %i.ak, 0
  %i.am = icmp ne i16 %i.ai, 0
  %i.an = select i1 %i.al, i1 %i.am, i1 false
  br i1 %i.an, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.m, %.lr.ph.i.i.i
  %i.ao = phi i64 [ %i.ar, %.lr.ph.i.i.i ], [ %i.ak, %bb.m ]
  %.02934.i.i.i = phi i32 [ %i.aq, %.lr.ph.i.i.i ], [ 1, %bb.m ] ; 2 uses
  %i.ap = inttoptr i64 %i.ao to ptr               ; 2 uses
  %i.aq = add nuw nsw i32 %.02934.i.i.i, 1        ; 2 uses
  %i.ar = load atomic i64, ptr %i.ap monotonic, align 8 ; 2 uses
  %i.as = icmp ne i64 %i.ar, 0
  %i.at = icmp samesign ult i32 %.02934.i.i.i, %i.aj
  %i.au = select i1 %i.as, i1 %i.at, i1 false
  br i1 %i.au, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !75

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.m
  %.029.lcssa.i.i.i = phi i32 [ 1, %bb.m ], [ %i.aq, %.lr.ph.i.i.i ] ; 2 uses
  %.028.lcssa.i.i.i = phi ptr [ %i.af, %bb.m ], [ %i.ap, %.lr.ph.i.i.i ]
  %i.av = icmp samesign ugt i32 %.029.lcssa.i.i.i, %i.aj
  br i1 %i.av, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i.i
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 14, ptr noundef nonnull @.str.100)
  br label %_mi_page_thread_free_collect.exit.i.i

bb.o:                                             ; preds = %._crit_edge.i.i.i
  %i.aw = getelementptr i8, ptr %i.w, i64 32      ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !57
  %i.ay = ptrtoint ptr %i.ax to i64
  store atomic i64 %i.ay, ptr %.028.lcssa.i.i.i monotonic, align 8
  store ptr %i.af, ptr %i.aw, align 8, !tbaa !57
  %i.az = getelementptr i8, ptr %i.w, i64 24      ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !18
  %i.bb = sub i32 %i.ba, %.029.lcssa.i.i.i
  store i32 %i.bb, ptr %i.az, align 8, !tbaa !18
  br label %_mi_page_thread_free_collect.exit.i.i

_mi_page_thread_free_collect.exit.i.i:            ; preds = %bb.o, %bb.n, %bb.l, %bb.i
  %i.bc = getelementptr i8, ptr %i.w, i64 32      ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !57 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.bd, null
  %.phi.trans.insert.i = getelementptr i8, ptr %i.w, i64 16 ; 2 uses
  %.val.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !11
  %i.be = icmp eq ptr %.val.pre.i, null           ; 2 uses
  br i1 %.not22.i.i, label %_mi_page_free_collect.exit.i, label %bb.p

bb.p:                                             ; preds = %_mi_page_thread_free_collect.exit.i.i
  br i1 %i.be, label %.sink.split.i.i, label %mi_page_queue_find_free_ex.exit.sink.split.i, !prof !55

.sink.split.i.i:                                  ; preds = %bb.p
  store ptr %i.bd, ptr %.phi.trans.insert.i, align 8, !tbaa !11
  store ptr null, ptr %i.bc, align 8, !tbaa !57
  %i.bf = getelementptr i8, ptr %i.w, i64 15      ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = and i8 %i.bg, -2
  store i8 %i.bh, ptr %i.bf, align 1
  br label %mi_page_queue_find_free_ex.exit.sink.split.i

_mi_page_free_collect.exit.i:                     ; preds = %_mi_page_thread_free_collect.exit.i.i
  br i1 %i.be, label %bb.q, label %mi_page_queue_find_free_ex.exit.sink.split.i

bb.q:                                             ; preds = %_mi_page_free_collect.exit.i, %mi_page_queue.exit.i
  %i.bi = getelementptr i8, ptr %i.v, i64 16
  br label %tailrecurse.i.i

tailrecurse.i.i:                                  ; preds = %._crit_edge.i.i, %bb.q
  %.tr34.i.i = phi i1 [ true, %bb.q ], [ false, %._crit_edge.i.i ]
  %i.bj = load ptr, ptr %i.v, align 8, !tbaa !64  ; 2 uses
  %.not46.i.i = icmp eq ptr %i.bj, null
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %tailrecurse.i.i, %mi_page_to_full.exit.i.i
  %.02647.i.i = phi ptr [ %i.bl, %mi_page_to_full.exit.i.i ], [ %i.bj, %tailrecurse.i.i ] ; 22 uses
  %i.bk = getelementptr i8, ptr %.02647.i.i, i64 56
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !197 ; 2 uses
  %i.bm = getelementptr i8, ptr %.02647.i.i, i64 40 ; 6 uses
  %i.bn = load atomic i64, ptr %i.bm monotonic, align 8
  %.not.i.i.i = icmp ult i64 %i.bn, 4
  br i1 %.not.i.i.i, label %_mi_page_thread_free_collect.exit.i.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i
  %i.bo = load atomic i64, ptr %i.bm monotonic, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %bb.r
  %.0.i.i.i12.i = phi i64 [ %i.bo, %bb.r ], [ %i.bs, %bb.s ] ; 3 uses
  %i.bp = and i64 %.0.i.i.i12.i, 3
  %i.bq = cmpxchg weak ptr %i.bm, i64 %.0.i.i.i12.i, i64 %i.bp acq_rel acquire, align 8 ; 2 uses
  %i.br = extractvalue { i64, i1 } %i.bq, 1
  %i.bs = extractvalue { i64, i1 } %i.bq, 0
  br i1 %i.br, label %bb.t, label %bb.s, !llvm.loop !73

bb.t:                                             ; preds = %bb.s
  %i.bt = and i64 %.0.i.i.i12.i, -4               ; 2 uses
  %i.bu = inttoptr i64 %i.bt to ptr               ; 3 uses
  %i.bv = icmp eq i64 %i.bt, 0
  br i1 %i.bv, label %_mi_page_thread_free_collect.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bw = getelementptr i8, ptr %.02647.i.i, i64 10
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !74 ; 2 uses
  %i.by = zext i16 %i.bx to i32                   ; 2 uses
  %i.bz = load atomic i64, ptr %i.bu monotonic, align 8 ; 2 uses
  %i.ca = icmp ne i64 %i.bz, 0
  %i.cb = icmp ne i16 %i.bx, 0
  %i.cc = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %i.cc, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

end_hunk_12
begin_hunk_13_@_mi_commit_mask_committed_size:bb.a
  %.3.3 = phi i64 [ %i.p, %bb.e ], [ %.3.2, %.loopexit.2 ], [ %spec.select.3, %.lr.ph.3 ] ; 3 uses
  %i.s = getelementptr i8, ptr %0, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !105  ; 2 uses
  switch i64 %i.t, label %.lr.ph.4 [
    i64 -1, label %bb.f
    i64 0, label %.loopexit.4
  ]

bb.f:                                             ; preds = %.loopexit.3
  %i.u = add i64 %.3.3, 64
  br label %.loopexit.4

.lr.ph.4:                                         ; preds = %.loopexit.3, %.lr.ph.4
  %.016.4 = phi i64 [ %i.w, %.lr.ph.4 ], [ %i.t, %.loopexit.3 ] ; 2 uses
  %.115.4 = phi i64 [ %spec.select.4, %.lr.ph.4 ], [ %.3.3, %.loopexit.3 ]
  %i.v = and i64 %.016.4, 1
  %spec.select.4 = add i64 %i.v, %.115.4          ; 2 uses
  %i.w = lshr i64 %.016.4, 1                      ; 2 uses
  %.not.4 = icmp eq i64 %i.w, 0
  br i1 %.not.4, label %.loopexit.4, label %.lr.ph.4, !llvm.loop !278

.loopexit.4:                                      ; preds = %.lr.ph.4, %bb.f, %.loopexit.3
  %.3.4 = phi i64 [ %i.u, %bb.f ], [ %.3.3, %.loopexit.3 ], [ %spec.select.4, %.lr.ph.4 ] ; 3 uses
  %i.x = getelementptr i8, ptr %0, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !105  ; 2 uses
  switch i64 %i.y, label %.lr.ph.5 [
    i64 -1, label %bb.g
    i64 0, label %.loopexit.5
  ]

bb.g:                                             ; preds = %.loopexit.4
  %i.z = add i64 %.3.4, 64
  br label %.loopexit.5

.lr.ph.5:                                         ; preds = %.loopexit.4, %.lr.ph.5
  %.016.5 = phi i64 [ %i.ab, %.lr.ph.5 ], [ %i.y, %.loopexit.4 ] ; 2 uses
  %.115.5 = phi i64 [ %spec.select.5, %.lr.ph.5 ], [ %.3.4, %.loopexit.4 ]
  %i.aa = and i64 %.016.5, 1
  %spec.select.5 = add i64 %i.aa, %.115.5         ; 2 uses
  %i.ab = lshr i64 %.016.5, 1                     ; 2 uses
  %.not.5 = icmp eq i64 %i.ab, 0
  br i1 %.not.5, label %.loopexit.5, label %.lr.ph.5, !llvm.loop !278

.loopexit.5:                                      ; preds = %.lr.ph.5, %bb.g, %.loopexit.4
  %.3.5 = phi i64 [ %i.z, %bb.g ], [ %.3.4, %.loopexit.4 ], [ %spec.select.5, %.lr.ph.5 ] ; 3 uses
  %i.ac = getelementptr i8, ptr %0, i64 48
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !105 ; 2 uses
  switch i64 %i.ad, label %.lr.ph.6 [
    i64 -1, label %bb.h
    i64 0, label %.loopexit.6
  ]

bb.h:                                             ; preds = %.loopexit.5
  %i.ae = add i64 %.3.5, 64
  br label %.loopexit.6

.lr.ph.6:                                         ; preds = %.loopexit.5, %.lr.ph.6
  %.016.6 = phi i64 [ %i.ag, %.lr.ph.6 ], [ %i.ad, %.loopexit.5 ] ; 2 uses
  %.115.6 = phi i64 [ %spec.select.6, %.lr.ph.6 ], [ %.3.5, %.loopexit.5 ]
  %i.af = and i64 %.016.6, 1
  %spec.select.6 = add i64 %i.af, %.115.6         ; 2 uses
  %i.ag = lshr i64 %.016.6, 1                     ; 2 uses
  %.not.6 = icmp eq i64 %i.ag, 0
  br i1 %.not.6, label %.loopexit.6, label %.lr.ph.6, !llvm.loop !278

.loopexit.6:                                      ; preds = %.lr.ph.6, %bb.h, %.loopexit.5
  %.3.6 = phi i64 [ %i.ae, %bb.h ], [ %.3.5, %.loopexit.5 ], [ %spec.select.6, %.lr.ph.6 ] ; 3 uses
  %i.ah = getelementptr i8, ptr %0, i64 56
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !105 ; 2 uses
  switch i64 %i.ai, label %.lr.ph.7 [
    i64 -1, label %bb.i
    i64 0, label %.loopexit.7
  ]

bb.i:                                             ; preds = %.loopexit.6
  %i.aj = add i64 %.3.6, 64
  br label %.loopexit.7

.lr.ph.7:                                         ; preds = %.loopexit.6, %.lr.ph.7
  %.016.7 = phi i64 [ %i.al, %.lr.ph.7 ], [ %i.ai, %.loopexit.6 ] ; 2 uses
  %.115.7 = phi i64 [ %spec.select.7, %.lr.ph.7 ], [ %.3.6, %.loopexit.6 ]
  %i.ak = and i64 %.016.7, 1
  %spec.select.7 = add i64 %i.ak, %.115.7         ; 2 uses
  %i.al = lshr i64 %.016.7, 1                     ; 2 uses
  %.not.7 = icmp eq i64 %i.al, 0
  br i1 %.not.7, label %.loopexit.7, label %.lr.ph.7, !llvm.loop !278

.loopexit.7:                                      ; preds = %.lr.ph.7, %bb.i, %.loopexit.6
  %.3.7 = phi i64 [ %i.aj, %bb.i ], [ %.3.6, %.loopexit.6 ], [ %spec.select.7, %.lr.ph.7 ]
  %i.am = lshr i64 %1, 9
  %i.an = mul i64 %.3.7, %i.am
  ret i64 %i.an
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden i64 @_mi_commit_mask_next_run(ptr noundef readonly captures(none) %0, ptr noundef captures(none) %1) local_unnamed_addr #21 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !105    ; 3 uses
  %i.b = lshr i64 %i.a, 6                         ; 3 uses
  %i.c = icmp ult i64 %i.a, 512
  br i1 %i.c, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = and i64 %i.a, 63                         ; 2 uses
  %i.e = getelementptr [8 x i8], ptr %0, i64 %i.b
  %i.f = load i64, ptr %i.e, align 8, !tbaa !105
  %i.g = lshr i64 %i.f, %i.d                      ; 2 uses
  %.not.peel = icmp eq i64 %i.g, 0
  br i1 %.not.peel, label %bb.b, label %.preheader

bb.b:                                             ; preds = %.lr.ph.preheader
  %i.h = add nuw nsw i64 %i.b, 1                  ; 2 uses
  %exitcond.peel.not = icmp eq i64 %i.h, 8
  br i1 %exitcond.peel.not, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.03348 = phi i64 [ %i.q, %bb.c ], [ %i.h, %bb.b ] ; 3 uses
  %i.i = getelementptr [8 x i8], ptr %0, i64 %.03348
  %i.j = load i64, ptr %i.i, align 8, !tbaa !105  ; 2 uses
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.c, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.lr.ph.preheader
  %.03049.lcssa = phi i64 [ %i.d, %.lr.ph.preheader ], [ 0, %.lr.ph ] ; 2 uses
  %.03348.lcssa = phi i64 [ %i.b, %.lr.ph.preheader ], [ %.03348, %.lr.ph ] ; 2 uses
  %.lcssa57 = phi i64 [ %i.g, %.lr.ph.preheader ], [ %i.j, %.lr.ph ] ; 3 uses
  %i.k = and i64 %.lcssa57, 1
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.lr.ph52, label %._crit_edge

.lr.ph52:                                         ; preds = %.preheader, %.lr.ph52
  %.12951 = phi i64 [ %i.m, %.lr.ph52 ], [ %.lcssa57, %.preheader ] ; 2 uses
  %.13150 = phi i64 [ %i.n, %.lr.ph52 ], [ %.03049.lcssa, %.preheader ]
  %i.m = lshr exact i64 %.12951, 1                ; 2 uses
  %i.n = add i64 %.13150, 1                       ; 2 uses
  %i.o = and i64 %.12951, 2
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.lr.ph52, label %._crit_edge, !llvm.loop !279

bb.c:                                             ; preds = %.lr.ph
  %i.q = add nuw nsw i64 %.03348, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.q, 8
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !280

.thread:                                          ; preds = %bb.c, %bb.b, %bb.a
  store i64 512, ptr %1, align 8, !tbaa !105
  br label %.loopexit

._crit_edge:                                      ; preds = %.lr.ph52, %.preheader
  %.131.lcssa = phi i64 [ %.03049.lcssa, %.preheader ], [ %i.n, %.lr.ph52 ] ; 2 uses
  %.129.lcssa = phi i64 [ %.lcssa57, %.preheader ], [ %i.m, %.lr.ph52 ]
  %i.r = shl nuw nsw i64 %.03348.lcssa, 6
  %i.s = add i64 %.131.lcssa, %i.r
  store i64 %i.s, ptr %1, align 8, !tbaa !105
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %._crit_edge
  %.134 = phi i64 [ %.03348.lcssa, %._crit_edge ], [ %.235, %bb.i ] ; 3 uses
  %.3 = phi i64 [ %.129.lcssa, %._crit_edge ], [ %.5, %bb.i ]
  %.0 = phi i64 [ 0, %._crit_edge ], [ %i.t, %bb.i ]
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.4 = phi i64 [ %.3, %bb.d ], [ %i.u, %bb.e ]   ; 2 uses
  %.1 = phi i64 [ %.0, %bb.d ], [ %i.t, %bb.e ]
  %i.t = add i64 %.1, 1                           ; 5 uses
  %i.u = lshr i64 %.4, 1                          ; 2 uses
  %i.v = and i64 %.4, 2
  %.not40 = icmp eq i64 %i.v, 0
  br i1 %.not40, label %bb.f, label %bb.e, !llvm.loop !282

bb.f:                                             ; preds = %bb.e
  %i.w = add i64 %i.t, %.131.lcssa
  %i.x = and i64 %i.w, 63
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.z = icmp ugt i64 %.134, 6
  br i1 %i.z, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = add nuw nsw i64 %.134, 1                ; 2 uses
  %i.ab = getelementptr [8 x i8], ptr %0, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !105
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h
  %.235 = phi i64 [ %i.aa, %bb.h ], [ %.134, %bb.f ]
  %.5 = phi i64 [ %i.ac, %bb.h ], [ %i.u, %bb.f ] ; 2 uses
  %i.ad = and i64 %.5, 1
  %.not41 = icmp eq i64 %i.ad, 0
  br i1 %.not41, label %.loopexit, label %bb.d, !llvm.loop !283

.loopexit:                                        ; preds = %bb.i, %bb.g, %.thread
  %.036 = phi i64 [ 0, %.thread ], [ %i.t, %bb.g ], [ %i.t, %bb.i ]
  ret i64 %.036
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden ptr @_mi_segment_page_start(ptr noundef %0, ptr noundef %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #35 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !21   ; 4 uses
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = load i32, ptr %1, align 8, !tbaa !52
  %i.e = zext i32 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 16
  %i.g = icmp ugt i32 %i.b, 7
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ult i32 %i.b, 65
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = mul nuw nsw i64 %i.c, 3
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = icmp ult i32 %i.b, 513
  %spec.select.i = select i1 %i.j, i64 %i.c, i64 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a
  %.0.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.a ], [ %spec.select.i, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %_mi_segment_page_start_from_slice.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = sub nsw i64 %i.f, %.0.i
  store i64 %i.k, ptr %2, align 8, !tbaa !105
  br label %_mi_segment_page_start_from_slice.exit

_mi_segment_page_start_from_slice.exit:           ; preds = %bb.e, %bb.f
  %i.l = ptrtoint ptr %1 to i64
  %i.m = getelementptr i8, ptr %0, i64 264
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.l, %i.n
  %i.p = sdiv exact i64 %i.o, 80
  %i.q = shl i64 %i.p, 16
  %i.r = getelementptr i8, ptr %0, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 %.0.i
  ret ptr %i.s
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_mi_segment_thread_collect(ptr noundef readnone captures(none) %0) local_unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @mi_segment_page_clear(ptr noundef %0, ptr noundef captures(address) %1) unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = add i64 %i.a, -1
  %i.c = and i64 %i.b, -33554432
  %i.d = inttoptr i64 %i.c to ptr                 ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 10         ; 2 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !74
  %i.g = zext i16 %i.f to i64
  %i.h = getelementptr i8, ptr %0, i64 28         ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !21   ; 2 uses
  %i.j = icmp sgt i32 %i.i, -1
  br i1 %i.j, label %bb.b, label %_mi_segment_page_start.exit.i, !prof !55

bb.b:                                             ; preds = %bb.a
  %i.k = zext nneg i32 %i.i to i64
  br label %mi_page_block_size.exit

_mi_segment_page_start.exit.i:                    ; preds = %bb.a
  %i.l = load i32, ptr %0, align 8, !tbaa !52
  %i.m = zext i32 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 16
  br label %mi_page_block_size.exit

mi_page_block_size.exit:                          ; preds = %bb.b, %_mi_segment_page_start.exit.i
  %.0.i = phi i64 [ %i.k, %bb.b ], [ %i.n, %_mi_segment_page_start.exit.i ]
  %i.o = mul nuw i64 %.0.i, %i.g                  ; 9 uses
  %i.p = getelementptr i8, ptr %1, i64 896        ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !201  ; 6 uses
  %i.r = getelementptr i8, ptr %i.q, i64 192      ; 5 uses
  %i.s = sub i64 0, %i.o                          ; 2 uses
  %i.t = icmp eq i64 %i.o, 0
  br i1 %i.t, label %_mi_stat_decrease.exit, label %bb.c

bb.c:                                             ; preds = %mi_page_block_size.exit
  %i.u = icmp uge ptr %i.r, @_mi_stats_main
  %i.v = icmp ult ptr %i.r, getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 640)
  %i.w = select i1 %i.u, i1 %i.v, i1 false
  %i.x = getelementptr i8, ptr %i.q, i64 216      ; 3 uses
  br i1 %i.w, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.y = atomicrmw sub ptr %i.x, i64 %i.o monotonic, align 8
  %i.z = getelementptr i8, ptr %i.q, i64 208      ; 2 uses
  %i.aa = sub i64 %i.y, %i.o                      ; 2 uses
  %i.ab = load atomic i64, ptr %i.z monotonic, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.0.i.i.i = phi i64 [ %i.ab, %bb.d ], [ %i.af, %bb.f ] ; 2 uses
  %i.ac = icmp slt i64 %.0.i.i.i, %i.aa
  br i1 %i.ac, label %bb.f, label %mi_atomic_maxi64_relaxed.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ad = cmpxchg weak ptr %i.z, i64 %.0.i.i.i, i64 %i.aa release monotonic, align 8 ; 2 uses
  %i.ae = extractvalue { i64, i1 } %i.ad, 1
  %i.af = extractvalue { i64, i1 } %i.ad, 0
  br i1 %i.ae, label %mi_atomic_maxi64_relaxed.exit.i.i, label %bb.e, !llvm.loop !124

mi_atomic_maxi64_relaxed.exit.i.i:                ; preds = %bb.f, %bb.e
  %i.ag = icmp sgt i64 %i.s, 0
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %mi_atomic_maxi64_relaxed.exit.i.i
  %i.ah = atomicrmw sub ptr %i.r, i64 %i.o monotonic, align 8 ; 0 uses
  br label %_mi_stat_decrease.exit

bb.h:                                             ; preds = %mi_atomic_maxi64_relaxed.exit.i.i
  %i.ai = getelementptr i8, ptr %i.q, i64 200
  %i.aj = atomicrmw add ptr %i.ai, i64 %i.o monotonic, align 8 ; 0 uses
  br label %_mi_stat_decrease.exit

bb.i:                                             ; preds = %bb.c
  %i.ak = load i64, ptr %i.x, align 8, !tbaa !127
  %i.al = sub i64 %i.ak, %i.o                     ; 3 uses
  store i64 %i.al, ptr %i.x, align 8, !tbaa !127
  %i.am = getelementptr i8, ptr %i.q, i64 208     ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !128
  %i.ao = icmp sgt i64 %i.al, %i.an
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i64 %i.al, ptr %i.am, align 8, !tbaa !128
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ap = icmp sgt i64 %i.s, 0
  br i1 %i.ap, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aq = load i64, ptr %i.r, align 8, !tbaa !129
  %i.ar = sub i64 %i.aq, %i.o
  store i64 %i.ar, ptr %i.r, align 8, !tbaa !129
  br label %_mi_stat_decrease.exit

bb.m:                                             ; preds = %bb.k
  %i.as = getelementptr i8, ptr %i.q, i64 200     ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !130
  %i.au = add i64 %i.at, %i.o
  store i64 %i.au, ptr %i.as, align 8, !tbaa !130
  br label %_mi_stat_decrease.exit

_mi_stat_decrease.exit:                           ; preds = %mi_page_block_size.exit, %bb.g, %bb.h, %bb.l, %bb.m
  %i.av = load ptr, ptr %i.p, align 8, !tbaa !201 ; 6 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 32     ; 2 uses
  %i.ax = icmp uge ptr %i.aw, @_mi_stats_main
  %i.ay = icmp ult ptr %i.aw, getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 640)
  %i.az = select i1 %i.ax, i1 %i.ay, i1 false
  %i.ba = getelementptr i8, ptr %i.av, i64 56     ; 3 uses
  br i1 %i.az, label %bb.n, label %bb.q

bb.n:                                             ; preds = %_mi_stat_decrease.exit
  %i.bb = atomicrmw sub ptr %i.ba, i64 1 monotonic, align 8
  %i.bc = getelementptr i8, ptr %i.av, i64 48     ; 2 uses
  %i.bd = add i64 %i.bb, -1                       ; 2 uses
  %i.be = load atomic i64, ptr %i.bc monotonic, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %.0.i.i.i19 = phi i64 [ %i.be, %bb.n ], [ %i.bi, %bb.p ] ; 2 uses
  %i.bf = icmp slt i64 %.0.i.i.i19, %i.bd
  br i1 %i.bf, label %bb.p, label %mi_atomic_maxi64_relaxed.exit.i.i20

bb.p:                                             ; preds = %bb.o
  %i.bg = cmpxchg weak ptr %i.bc, i64 %.0.i.i.i19, i64 %i.bd release monotonic, align 8 ; 2 uses
  %i.bh = extractvalue { i64, i1 } %i.bg, 1
  %i.bi = extractvalue { i64, i1 } %i.bg, 0
  br i1 %i.bh, label %mi_atomic_maxi64_relaxed.exit.i.i20, label %bb.o, !llvm.loop !124

mi_atomic_maxi64_relaxed.exit.i.i20:              ; preds = %bb.p, %bb.o
  %i.bj = getelementptr i8, ptr %i.av, i64 40
  %i.bk = atomicrmw add ptr %i.bj, i64 1 monotonic, align 8 ; 0 uses
  br label %_mi_stat_decrease.exit21

bb.q:                                             ; preds = %_mi_stat_decrease.exit
  %i.bl = load i64, ptr %i.ba, align 8, !tbaa !127
  %i.bm = add i64 %i.bl, -1                       ; 3 uses
  store i64 %i.bm, ptr %i.ba, align 8, !tbaa !127
  %i.bn = getelementptr i8, ptr %i.av, i64 48     ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !128
  %i.bp = icmp sgt i64 %i.bm, %i.bo
  br i1 %i.bp, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !128
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
end_hunk_13
begin_hunk_14_@mi_segment_free:bb.a
  br i1 %.not.i.i14, label %mi_segment_os_free.exit, label %.lr.ph.i.i, !llvm.loop !295

mi_segment_os_free.exit:                          ; preds = %.lr.ph.i.i, %_mi_segment_map_freed_at.exit.i
  %.val.i = load i64, ptr %i.ci, align 8, !tbaa !97
  %i.cr = shl i64 %.val.i, 16
  %i.cs = load ptr, ptr %i.ak, align 8, !tbaa !201
  tail call void @_mi_arena_free(ptr noundef nonnull %0, i64 noundef %i.cr, i64 noundef %i.cl, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %0, ptr noundef %i.cs)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mi_segment_abandon(ptr noundef %0, ptr noundef captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 264        ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 248
  %i.c = load i64, ptr %i.b, align 8, !tbaa !285
  %i.d = getelementptr [80 x i8], ptr %i.a, i64 %i.c ; 2 uses
  %i.e = icmp ult ptr %i.a, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph._crit_edge
  %.021 = phi ptr [ %i.ae, %.lr.ph._crit_edge ], [ %i.a, %bb.a ] ; 7 uses
  %i.f = getelementptr i8, ptr %.021, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !21
  %i.h = icmp eq i32 %i.g, 0
  %.pre = load i32, ptr %.021, align 8, !tbaa !52 ; 2 uses
  %i.i = zext i32 %.pre to i64                    ; 3 uses
  br i1 %i.h, label %bb.b, label %.lr.ph._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %i.j = icmp ult i32 %.pre, 9
  br i1 %i.j, label %mi_span_queue_for.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i64 %i.i, -1                     ; 2 uses
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true) ; 2 uses
  %i.m = shl nuw nsw i64 %i.l, 2
  %i.n = sub nuw nsw i64 61, %i.l
  %i.o = lshr i64 %i.k, %i.n
  %i.p = and i64 %i.o, 3
  %i.q = or disjoint i64 %i.p, %i.m
  %i.r = xor i64 %i.q, 252
  %i.s = add nsw i64 %i.r, -4
  br label %mi_span_queue_for.exit.i

mi_span_queue_for.exit.i:                         ; preds = %bb.c, %bb.b
  %.1.i.i.i.i = phi i64 [ %i.i, %bb.b ], [ %i.s, %bb.c ]
  %i.t = getelementptr [24 x i8], ptr %1, i64 %.1.i.i.i.i ; 3 uses
  %i.u = getelementptr i8, ptr %.021, i64 64      ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !264  ; 3 uses
  %.not.i.i = icmp eq ptr %i.v, null
  %.phi.trans.insert.i = getelementptr i8, ptr %.021, i64 56 ; 2 uses
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !197 ; 4 uses
  br i1 %.not.i.i, label %mi_span_queue_for.exit._crit_edge.i, label %bb.d

bb.d:                                             ; preds = %mi_span_queue_for.exit.i
  %i.w = getelementptr i8, ptr %i.v, i64 56
  store ptr %.pre.i, ptr %i.w, align 8, !tbaa !197
  br label %mi_span_queue_for.exit._crit_edge.i

mi_span_queue_for.exit._crit_edge.i:              ; preds = %bb.d, %mi_span_queue_for.exit.i
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !287
  %i.y = icmp eq ptr %.021, %i.x
  br i1 %i.y, label %bb.e, label %._crit_edge.i.i

bb.e:                                             ; preds = %mi_span_queue_for.exit._crit_edge.i
  store ptr %.pre.i, ptr %i.t, align 8, !tbaa !287
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.e, %mi_span_queue_for.exit._crit_edge.i
  %.not19.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not19.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.z = getelementptr i8, ptr %.pre.i, i64 64
  store ptr %i.v, ptr %i.z, align 8, !tbaa !264
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i
  %i.aa = getelementptr i8, ptr %i.t, i64 8       ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !289
  %i.ac = icmp eq ptr %.021, %i.ab
  br i1 %i.ac, label %bb.h, label %mi_segment_span_remove_from_queue.exit

bb.h:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !264
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !289
  br label %mi_segment_span_remove_from_queue.exit

mi_segment_span_remove_from_queue.exit:           ; preds = %bb.g, %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.phi.trans.insert.i, i8 0, i64 16, i1 false)
  br label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %mi_segment_span_remove_from_queue.exit
  %i.ae = getelementptr [80 x i8], ptr %.021, i64 %i.i ; 2 uses
  %i.af = icmp ult ptr %i.ae, %i.d
  br i1 %i.af, label %.lr.ph, label %._crit_edge, !llvm.loop !296

._crit_edge:                                      ; preds = %.lr.ph._crit_edge, %bb.a
  %i.ag = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 392), align 8, !tbaa !111
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.i, label %mi_option_is_enabled.exit, !prof !17

bb.i:                                             ; preds = %._crit_edge
  tail call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 384)), !inline_history !120
  br label %mi_option_is_enabled.exit

mi_option_is_enabled.exit:                        ; preds = %._crit_edge, %bb.i
  %i.ai = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 384), align 16, !tbaa !114
  %i.aj = icmp ne i64 %i.ai, 0
  %i.ak = getelementptr i8, ptr %1, i64 896       ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !201
  tail call fastcc void @mi_segment_try_purge(ptr noundef %0, i1 noundef zeroext %i.aj, ptr noundef %i.al)
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !201 ; 4 uses
  %i.an = getelementptr i8, ptr %i.am, i64 224    ; 5 uses
  %i.ao = icmp uge ptr %i.an, @_mi_stats_main
  %i.ap = icmp ult ptr %i.an, getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 640)
  %i.aq = select i1 %i.ao, i1 %i.ap, i1 false
  %i.ar = getelementptr i8, ptr %i.am, i64 248    ; 3 uses
  br i1 %i.aq, label %bb.j, label %bb.m

bb.j:                                             ; preds = %mi_option_is_enabled.exit
  %i.as = atomicrmw add ptr %i.ar, i64 1 monotonic, align 8
  %i.at = getelementptr i8, ptr %i.am, i64 240    ; 2 uses
  %i.au = add i64 %i.as, 1                        ; 2 uses
  %i.av = load atomic i64, ptr %i.at monotonic, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %.0.i.i.i = phi i64 [ %i.av, %bb.j ], [ %i.az, %bb.l ] ; 2 uses
  %i.aw = icmp slt i64 %.0.i.i.i, %i.au
  br i1 %i.aw, label %bb.l, label %mi_atomic_maxi64_relaxed.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.ax = cmpxchg weak ptr %i.at, i64 %.0.i.i.i, i64 %i.au release monotonic, align 8 ; 2 uses
  %i.ay = extractvalue { i64, i1 } %i.ax, 1
  %i.az = extractvalue { i64, i1 } %i.ax, 0
  br i1 %i.ay, label %mi_atomic_maxi64_relaxed.exit.i.i, label %bb.k, !llvm.loop !124

mi_atomic_maxi64_relaxed.exit.i.i:                ; preds = %bb.l, %bb.k
  %i.ba = atomicrmw add ptr %i.an, i64 1 monotonic, align 8 ; 0 uses
  br label %_mi_stat_increase.exit

bb.m:                                             ; preds = %mi_option_is_enabled.exit
  %i.bb = load i64, ptr %i.ar, align 8, !tbaa !127
  %i.bc = add i64 %i.bb, 1                        ; 3 uses
  store i64 %i.bc, ptr %i.ar, align 8, !tbaa !127
  %i.bd = getelementptr i8, ptr %i.am, i64 240    ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !128
  %i.bf = icmp sgt i64 %i.bc, %i.be
  br i1 %i.bf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !128
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bg = load i64, ptr %i.an, align 8, !tbaa !129
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr %i.an, align 8, !tbaa !129
  br label %_mi_stat_increase.exit

_mi_stat_increase.exit:                           ; preds = %mi_atomic_maxi64_relaxed.exit.i.i, %bb.o
  %i.bi = getelementptr i8, ptr %0, i64 224
  %.val = load i64, ptr %i.bi, align 8, !tbaa !97
  %.neg = mul i64 %.val, -65536
  tail call fastcc void @mi_segments_track_size(i64 noundef %.neg, ptr noundef %1)
  %i.bj = getelementptr i8, ptr %0, i64 256
  store atomic i64 0, ptr %i.bj seq_cst, align 8, !tbaa !292
  %i.bk = getelementptr i8, ptr %0, i64 176       ; 2 uses
  store atomic ptr null, ptr %i.bk release, align 8
  %i.bl = getelementptr i8, ptr %0, i64 200
  store i64 1, ptr %i.bl, align 8, !tbaa !297
  %i.bm = getelementptr i8, ptr %1, i64 912
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !294 ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 64     ; 2 uses
  %i.bp = load atomic i64, ptr %i.bo monotonic, align 64
  %i.bq = ptrtoint ptr %0 to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_mi_stat_increase.exit
  %.0.i = phi i64 [ %i.bp, %_mi_stat_increase.exit ], [ %i.by, %bb.p ] ; 3 uses
  %i.br = and i64 %.0.i, -33554432
  %i.bs = inttoptr i64 %i.br to ptr
  store atomic ptr %i.bs, ptr %i.bk release, align 8
  %i.bt = add i64 %.0.i, 1
  %i.bu = and i64 %i.bt, 33554431
  %i.bv = or i64 %i.bu, %i.bq
  %i.bw = cmpxchg weak ptr %i.bo, i64 %.0.i, i64 %i.bv release monotonic, align 64 ; 2 uses
  %i.bx = extractvalue { i64, i1 } %i.bw, 1
  %i.by = extractvalue { i64, i1 } %i.bw, 0
  br i1 %i.bx, label %mi_abandoned_push.exit, label %bb.p, !llvm.loop !298

mi_abandoned_push.exit:                           ; preds = %bb.p
  %i.bz = getelementptr i8, ptr %i.bn, i64 128
  %i.ca = atomicrmw add ptr %i.bz, i64 1 monotonic, align 64 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_abandoned_await_readers(ptr noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 256        ; 2 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 64
  %.not3 = icmp eq i64 %i.b, 0
  br i1 %.not3, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  tail call void @llvm.x86.sse2.pause()
  %i.c = load atomic i64, ptr %i.a acquire, align 64
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !295

.critedge:                                        ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_abandoned_reclaim_all(ptr noundef %0, ptr noundef captures(address) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 912
  br label %bb.b

bb.b:                                             ; preds = %bb.m, %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !294  ; 9 uses
  %i.c = getelementptr i8, ptr %i.b, i64 64       ; 7 uses
  %i.d = load atomic i64, ptr %i.c monotonic, align 64
  %i.e = icmp ult i64 %i.d, 33554432
  br i1 %i.e, label %bb.c, label %mi_abandoned_visited_revisit.exit.thread.i, !prof !55

bb.c:                                             ; preds = %bb.b
  %i.f = load atomic ptr, ptr %i.b monotonic, align 64
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %mi_abandoned_pop.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = atomicrmw xchg ptr %i.b, ptr null acq_rel, align 64 ; 4 uses
  %.not54.i.i = icmp eq ptr %i.h, null
  br i1 %.not54.i.i, label %mi_abandoned_pop.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load atomic i64, ptr %i.c monotonic, align 64 ; 3 uses
  %i.j = icmp ult i64 %i.i, 33554432
  br i1 %i.j, label %bb.f, label %.critedge.i.i.preheader

.critedge.i.i.preheader:                          ; preds = %bb.f, %bb.e
  br label %.critedge.i.i

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %i.b, i64 192      ; 2 uses
  %i.l = load atomic i64, ptr %i.k monotonic, align 64 ; 2 uses
  %i.m = add nuw nsw i64 %i.i, 1
  %i.n = and i64 %i.m, 33554431
  %i.o = ptrtoint ptr %i.h to i64
  %i.p = or i64 %i.n, %i.o
  %i.q = cmpxchg ptr %i.c, i64 %i.i, i64 %i.p acq_rel acquire, align 64
  %i.r = extractvalue { i64, i1 } %i.q, 1
  br i1 %i.r, label %bb.g, label %.critedge.i.i.preheader, !prof !299

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr i8, ptr %i.b, i64 128
  %i.t = atomicrmw add ptr %i.s, i64 %i.l monotonic, align 64 ; 0 uses
  %i.u = atomicrmw sub ptr %i.k, i64 %i.l monotonic, align 64 ; 0 uses
  br label %mi_abandoned_visited_revisit.exit.thread.i

.critedge.i.i:                                    ; preds = %.critedge.i.i.preheader, %.critedge.i.i
  %.050.i.i = phi ptr [ %i.w, %.critedge.i.i ], [ %i.h, %.critedge.i.i.preheader ] ; 2 uses
  %i.v = getelementptr i8, ptr %.050.i.i, i64 176
  %i.w = load atomic ptr, ptr %i.v monotonic, align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %bb.h, label %.critedge.i.i, !llvm.loop !300

bb.h:                                             ; preds = %.critedge.i.i
  %i.x = getelementptr i8, ptr %.050.i.i, i64 176
  %i.y = load atomic i64, ptr %i.c monotonic, align 64
  %i.z = getelementptr i8, ptr %i.b, i64 192      ; 2 uses
  %i.aa = ptrtoint ptr %i.h to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.051.i.i = phi i64 [ %i.y, %bb.h ], [ %i.aj, %bb.i ] ; 3 uses
  %i.ab = load atomic i64, ptr %i.z monotonic, align 64 ; 2 uses
  %i.ac = and i64 %.051.i.i, -33554432
  %i.ad = inttoptr i64 %i.ac to ptr
  store atomic ptr %i.ad, ptr %i.x release, align 8
  %i.ae = add i64 %.051.i.i, 1
  %i.af = and i64 %i.ae, 33554431
  %i.ag = or i64 %i.af, %i.aa
  %i.ah = cmpxchg weak ptr %i.c, i64 %.051.i.i, i64 %i.ag release monotonic, align 64 ; 2 uses
  %i.ai = extractvalue { i64, i1 } %i.ah, 1
  %i.aj = extractvalue { i64, i1 } %i.ah, 0
  br i1 %i.ai, label %bb.j, label %bb.i, !prof !299, !llvm.loop !301

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr i8, ptr %i.b, i64 128
  %i.al = atomicrmw add ptr %i.ak, i64 %i.ab monotonic, align 64 ; 0 uses
  %i.am = atomicrmw sub ptr %i.z, i64 %i.ab monotonic, align 64 ; 0 uses
  br label %mi_abandoned_visited_revisit.exit.thread.i

mi_abandoned_visited_revisit.exit.thread.i:       ; preds = %bb.j, %bb.g, %bb.b
  %i.an = getelementptr i8, ptr %i.b, i64 256     ; 3 uses
  %i.ao = atomicrmw add ptr %i.an, i64 1 monotonic, align 64 ; 0 uses
  %i.ap = load atomic i64, ptr %i.c acquire, align 64
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %mi_abandoned_visited_revisit.exit.thread.i
  %.029.i = phi i64 [ %i.ap, %mi_abandoned_visited_revisit.exit.thread.i ], [ %i.bb, %bb.l ] ; 3 uses
  %i.aq = and i64 %.029.i, -33554432              ; 2 uses
  %.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i, label %mi_abandoned_pop.exit.thread6, label %bb.l

mi_abandoned_pop.exit.thread6:                    ; preds = %bb.k
  %i.ar = atomicrmw sub ptr %i.an, i64 1 monotonic, align 64 ; 0 uses
  br label %mi_abandoned_pop.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.as = inttoptr i64 %i.aq to ptr               ; 3 uses
  %i.at = getelementptr i8, ptr %i.as, i64 176
  %i.au = load atomic ptr, ptr %i.at monotonic, align 16
  %i.av = add i64 %.029.i, 1
  %i.aw = and i64 %i.av, 33554431
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = or i64 %i.aw, %i.ax
  %i.az = cmpxchg weak ptr %i.c, i64 %.029.i, i64 %i.ay acq_rel acquire, align 64 ; 2 uses
  %i.ba = extractvalue { i64, i1 } %i.az, 1
  %i.bb = extractvalue { i64, i1 } %i.az, 0
  br i1 %i.ba, label %bb.m, label %bb.k, !llvm.loop !302

bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr i8, ptr %i.as, i64 176
  %i.bd = atomicrmw sub ptr %i.an, i64 1 monotonic, align 64 ; 0 uses
  store atomic ptr null, ptr %i.bc release, align 8
  %i.be = getelementptr i8, ptr %i.b, i64 128
  %i.bf = atomicrmw sub ptr %i.be, i64 1 monotonic, align 64 ; 0 uses
  %i.bg = tail call fastcc ptr @mi_segment_reclaim(ptr noundef %i.as, ptr noundef %0, i64 noundef 0, ptr noundef null, ptr noundef %1) ; 0 uses
  br label %bb.b, !llvm.loop !303

mi_abandoned_pop.exit.thread:                     ; preds = %bb.c, %bb.d, %mi_abandoned_pop.exit.thread6
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @mi_segment_reclaim(ptr noundef nonnull %0, ptr noundef %1, i64 noundef range(i64 0, 16777217) %2, ptr noundef writeonly captures(address_is_null) %3, ptr noundef captures(address) %4) unnamed_addr #2 {
bb.a:
  %i.a = icmp ne ptr %3, null                     ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %3, align 1, !tbaa !125
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = tail call ptr asm "movq %fs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) null) #60, !srcloc !58
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = getelementptr i8, ptr %0, i64 256
  store atomic i64 %i.c, ptr %i.d seq_cst, align 8, !tbaa !292
  %i.e = getelementptr i8, ptr %0, i64 200
  store i64 0, ptr %i.e, align 8, !tbaa !297
  %i.f = getelementptr i8, ptr %0, i64 224
  %.val49 = load i64, ptr %i.f, align 8, !tbaa !97
  %i.g = shl i64 %.val49, 16
  tail call fastcc void @mi_segments_track_size(i64 noundef %i.g, ptr noundef %4)
  %i.h = getelementptr i8, ptr %4, i64 896        ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !201  ; 6 uses
  %i.j = getelementptr i8, ptr %i.i, i64 224      ; 2 uses
  %i.k = icmp uge ptr %i.j, @_mi_stats_main
  %i.l = icmp ult ptr %i.j, getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 640)
  %i.m = select i1 %i.k, i1 %i.l, i1 false
  %i.n = getelementptr i8, ptr %i.i, i64 248      ; 3 uses
  br i1 %i.m, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.o = atomicrmw sub ptr %i.n, i64 1 monotonic, align 8
  %i.p = getelementptr i8, ptr %i.i, i64 240      ; 2 uses
  %i.q = add i64 %i.o, -1                         ; 2 uses
  %i.r = load atomic i64, ptr %i.p monotonic, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.0.i.i.i = phi i64 [ %i.r, %bb.d ], [ %i.v, %bb.f ] ; 2 uses
  %i.s = icmp slt i64 %.0.i.i.i, %i.q
  br i1 %i.s, label %bb.f, label %mi_atomic_maxi64_relaxed.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.t = cmpxchg weak ptr %i.p, i64 %.0.i.i.i, i64 %i.q release monotonic, align 8 ; 2 uses
  %i.u = extractvalue { i64, i1 } %i.t, 1
  %i.v = extractvalue { i64, i1 } %i.t, 0
  br i1 %i.u, label %mi_atomic_maxi64_relaxed.exit.i.i, label %bb.e, !llvm.loop !124

mi_atomic_maxi64_relaxed.exit.i.i:                ; preds = %bb.f, %bb.e
  %i.w = getelementptr i8, ptr %i.i, i64 232
  %i.x = atomicrmw add ptr %i.w, i64 1 monotonic, align 8 ; 0 uses
  br label %_mi_stat_decrease.exit

bb.g:                                             ; preds = %bb.c
  %i.y = load i64, ptr %i.n, align 8, !tbaa !127
  %i.z = add i64 %i.y, -1                         ; 3 uses
  store i64 %i.z, ptr %i.n, align 8, !tbaa !127
  %i.aa = getelementptr i8, ptr %i.i, i64 240     ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !128
  %i.ac = icmp sgt i64 %i.z, %i.ab
end_hunk_14
begin_hunk_15_@mi_segments_page_alloc:bb.a
bb.ad:                                            ; preds = %bb.ac
  %i.ee = getelementptr i8, ptr %i.dn, i64 128
  %i.ef = atomicrmw add ptr %i.ee, i64 %i.dx monotonic, align 64 ; 0 uses
  %i.eg = atomicrmw sub ptr %i.dw, i64 %i.dx monotonic, align 64 ; 0 uses
  br label %mi_abandoned_visited_revisit.exit.thread.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.i.i.i.i.preheader, %.critedge.i.i.i.i
  %.050.i.i.i.i = phi ptr [ %i.ei, %.critedge.i.i.i.i ], [ %i.dt, %.critedge.i.i.i.i.preheader ] ; 2 uses
  %i.eh = getelementptr i8, ptr %.050.i.i.i.i, i64 176
  %i.ei = load atomic ptr, ptr %i.eh monotonic, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i.i, label %bb.ae, label %.critedge.i.i.i.i, !llvm.loop !300

bb.ae:                                            ; preds = %.critedge.i.i.i.i
  %i.ej = getelementptr i8, ptr %.050.i.i.i.i, i64 176
  %i.ek = load atomic i64, ptr %i.do monotonic, align 64
  %i.el = getelementptr i8, ptr %i.dn, i64 192    ; 2 uses
  %i.em = ptrtoint ptr %i.dt to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %bb.ae
  %.051.i.i.i.i = phi i64 [ %i.ek, %bb.ae ], [ %i.ev, %bb.af ] ; 3 uses
  %i.en = load atomic i64, ptr %i.el monotonic, align 64 ; 2 uses
  %i.eo = and i64 %.051.i.i.i.i, -33554432
  %i.ep = inttoptr i64 %i.eo to ptr
  store atomic ptr %i.ep, ptr %i.ej release, align 8
  %i.eq = add i64 %.051.i.i.i.i, 1
  %i.er = and i64 %i.eq, 33554431
  %i.es = or i64 %i.er, %i.em
  %i.et = cmpxchg weak ptr %i.do, i64 %.051.i.i.i.i, i64 %i.es release monotonic, align 64 ; 2 uses
  %i.eu = extractvalue { i64, i1 } %i.et, 1
  %i.ev = extractvalue { i64, i1 } %i.et, 0
  br i1 %i.eu, label %bb.ag, label %bb.af, !prof !299, !llvm.loop !301

bb.ag:                                            ; preds = %bb.af
  %i.ew = getelementptr i8, ptr %i.dn, i64 128
  %i.ex = atomicrmw add ptr %i.ew, i64 %i.en monotonic, align 64 ; 0 uses
  %i.ey = atomicrmw sub ptr %i.el, i64 %i.en monotonic, align 64 ; 0 uses
  br label %mi_abandoned_visited_revisit.exit.thread.i.i.i

mi_abandoned_visited_revisit.exit.thread.i.i.i:   ; preds = %bb.ag, %bb.ad, %bb.y
  %i.ez = getelementptr i8, ptr %i.dn, i64 256    ; 3 uses
  %i.fa = atomicrmw add ptr %i.ez, i64 1 monotonic, align 64 ; 0 uses
  %i.fb = load atomic i64, ptr %i.do acquire, align 64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ai, %mi_abandoned_visited_revisit.exit.thread.i.i.i
  %.029.i.i.i = phi i64 [ %i.fb, %mi_abandoned_visited_revisit.exit.thread.i.i.i ], [ %i.fn, %bb.ai ] ; 3 uses
  %i.fc = and i64 %.029.i.i.i, -33554432          ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.fc, 0
  br i1 %.not.i.i.i, label %mi_abandoned_pop.exit.thread42.i.i, label %bb.ai

mi_abandoned_pop.exit.thread42.i.i:               ; preds = %bb.ah
  %i.fd = atomicrmw sub ptr %i.ez, i64 1 monotonic, align 64 ; 0 uses
  br label %mi_segment_try_reclaim.exit.i

bb.ai:                                            ; preds = %bb.ah
  %i.fe = inttoptr i64 %i.fc to ptr               ; 13 uses
  %i.ff = getelementptr i8, ptr %i.fe, i64 176
  %i.fg = load atomic ptr, ptr %i.ff monotonic, align 16
  %i.fh = add i64 %.029.i.i.i, 1
  %i.fi = and i64 %i.fh, 33554431
  %i.fj = ptrtoint ptr %i.fg to i64
  %i.fk = or i64 %i.fi, %i.fj
  %i.fl = cmpxchg weak ptr %i.do, i64 %.029.i.i.i, i64 %i.fk acq_rel acquire, align 64 ; 2 uses
  %i.fm = extractvalue { i64, i1 } %i.fl, 1
  %i.fn = extractvalue { i64, i1 } %i.fl, 0
  br i1 %i.fm, label %bb.aj, label %bb.ah, !llvm.loop !302

bb.aj:                                            ; preds = %bb.ai
  %i.fo = getelementptr i8, ptr %i.fe, i64 176    ; 2 uses
  %i.fp = atomicrmw sub ptr %i.ez, i64 1 monotonic, align 64 ; 0 uses
  store atomic ptr null, ptr %i.fo release, align 8
  %i.fq = getelementptr i8, ptr %i.dn, i64 128
  %i.fr = atomicrmw sub ptr %i.fq, i64 1 monotonic, align 64 ; 0 uses
  %i.fs = getelementptr i8, ptr %i.fe, i64 200    ; 3 uses
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !297
  %i.fu = add i64 %i.ft, 1
  store i64 %i.fu, ptr %i.fs, align 8, !tbaa !297
  %.0.i37.sroa.539.0..0.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fe, i64 20
  %.0.i37.sroa.539.0.copyload.i.i = load i32, ptr %.0.i37.sroa.539.0..0.i.sroa_idx.i.i, align 4
  %i.fv = load i32, ptr %i.g, align 8, !tbaa !204 ; 3 uses
  %i.fw = icmp eq i32 %.0.i37.sroa.539.0.copyload.i.i, 6
  br i1 %i.fw, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %.0.i37.sroa.4.0..0.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fe, i64 12
  %.0.i37.sroa.4.0.copyload.i.i = load i8, ptr %.0.i37.sroa.4.0..0.i.sroa_idx.i.i, align 4
  %.0.i37.sroa.3.0..0.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %.0.i37.sroa.3.0.copyload.i.i = load i32, ptr %.0.i37.sroa.3.0..0.i.sroa_idx.i.i, align 8
  %i.fx = trunc nuw i8 %.0.i37.sroa.4.0.copyload.i.i to i1
  %.not.i.i.i.i.i = xor i1 %i.fx, true
  %i.fy = icmp eq i32 %i.fv, 0
  %or.cond.i.i.i.i.i = and i1 %i.fy, %.not.i.i.i.i.i
  %i.fz = icmp eq i32 %.0.i37.sroa.3.0.copyload.i.i, %i.fv
  %spec.select.i.i.i.i.i = or i1 %i.fz, %or.cond.i.i.i.i.i
  br label %_mi_heap_memid_is_suitable.exit.i.i

bb.al:                                            ; preds = %bb.aj
  %i.ga = icmp eq i32 %i.fv, 0
  br label %_mi_heap_memid_is_suitable.exit.i.i

_mi_heap_memid_is_suitable.exit.i.i:              ; preds = %bb.al, %bb.ak
  %.0.i.i.i.i = phi i1 [ %spec.select.i.i.i.i.i, %bb.ak ], [ %i.ga, %bb.al ] ; 2 uses
  %i.gb = tail call fastcc zeroext i1 @mi_segment_check_free(ptr noundef %i.fe, i64 noundef range(i64 0, 281474976710656) %i.f, i64 noundef range(i64 0, 16777217) %2, ptr noundef %3)
  %i.gc = getelementptr i8, ptr %i.fe, i64 208
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !67
  %i.ge = icmp eq i64 %i.gd, 0
  br i1 %i.ge, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_mi_heap_memid_is_suitable.exit.i.i
  %i.gf = tail call fastcc ptr @mi_segment_reclaim(ptr noundef %i.fe, ptr noundef nonnull %0, i64 noundef 0, ptr noundef null, ptr noundef %3) ; 0 uses
  br label %select.unfold.i.i

bb.an:                                            ; preds = %_mi_heap_memid_is_suitable.exit.i.i
  %or.cond.i.i = select i1 %i.gb, i1 %.0.i.i.i.i, i1 false
  br i1 %or.cond.i.i, label %.thread.i.i, label %bb.ao

.thread.i.i:                                      ; preds = %bb.an
  %i.gg = call fastcc ptr @mi_segment_reclaim(ptr noundef %i.fe, ptr noundef nonnull %0, i64 noundef range(i64 0, 16777217) %2, ptr noundef nonnull %i.a, ptr noundef %3)
  %i.gh = icmp eq ptr %i.gg, null
  br label %mi_segment_try_reclaim.exit.i

bb.ao:                                            ; preds = %bb.an
  %i.gi = load i64, ptr %i.fs, align 8, !tbaa !297
  %i.gj = icmp ugt i64 %i.gi, 3
  %or.cond3.i.i = select i1 %i.gj, i1 %.0.i.i.i.i, i1 false
  br i1 %or.cond3.i.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.gk = tail call fastcc ptr @mi_segment_reclaim(ptr noundef %i.fe, ptr noundef nonnull %0, i64 noundef 0, ptr noundef null, ptr noundef %3) ; 0 uses
  br label %select.unfold.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.gl = load ptr, ptr %i.dl, align 8, !tbaa !201
  tail call fastcc void @mi_segment_try_purge(ptr noundef nonnull %i.fe, i1 noundef zeroext true, ptr noundef %i.gl)
  %i.gm = load ptr, ptr %i.dk, align 8, !tbaa !294 ; 3 uses
  %i.gn = load atomic ptr, ptr %i.gm monotonic, align 64
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %bb.aq
  %.0.i38.i.i = phi ptr [ %i.gn, %bb.aq ], [ %i.gq, %bb.ar ] ; 2 uses
  store atomic ptr %.0.i38.i.i, ptr %i.fo release, align 8
  %i.go = cmpxchg weak ptr %i.gm, ptr %.0.i38.i.i, ptr %i.fe release monotonic, align 64 ; 2 uses
  %i.gp = extractvalue { ptr, i1 } %i.go, 1
  %i.gq = extractvalue { ptr, i1 } %i.go, 0
  br i1 %i.gp, label %mi_abandoned_visited_push.exit.i.i, label %bb.ar, !llvm.loop !306

mi_abandoned_visited_push.exit.i.i:               ; preds = %bb.ar
  %i.gr = getelementptr i8, ptr %i.gm, i64 192
  %i.gs = atomicrmw add ptr %i.gr, i64 1 monotonic, align 64 ; 0 uses
  br label %select.unfold.i.i

select.unfold.i.i:                                ; preds = %mi_abandoned_visited_push.exit.i.i, %bb.ap, %bb.am
  %i.gt = icmp sgt i64 %.in.i.i, 1
  br i1 %i.gt, label %bb.y, label %mi_segment_try_reclaim.exit.i, !llvm.loop !315

mi_segment_try_reclaim.exit.i:                    ; preds = %select.unfold.i.i, %bb.aa, %bb.z, %.thread.i.i, %mi_abandoned_pop.exit.thread42.i.i
  %.2.i.i = phi i1 [ %i.gh, %.thread.i.i ], [ true, %mi_abandoned_pop.exit.thread42.i.i ], [ true, %bb.z ], [ true, %bb.aa ], [ true, %select.unfold.i.i ]
  %i.gu = load i8, ptr %i.a, align 1, !tbaa !125, !range !42, !noundef !43
  %i.gv = trunc nuw i8 %i.gu to i1
  br i1 %i.gv, label %mi_segment_reclaim_or_alloc.exit.thread, label %bb.as

mi_segment_reclaim_or_alloc.exit.thread:          ; preds = %mi_segment_try_reclaim.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %bb.au

bb.as:                                            ; preds = %mi_segment_try_reclaim.exit.i
  br i1 %.2.i.i, label %mi_segment_reclaim_or_alloc.exit, label %mi_segment_reclaim_or_alloc.exit.thread25

mi_segment_reclaim_or_alloc.exit.thread25:        ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %bb.at

mi_segment_reclaim_or_alloc.exit:                 ; preds = %bb.as
  %i.gw = load i32, ptr %i.g, align 8, !tbaa !204
  %i.gx = call fastcc ptr @mi_segment_alloc(i64 noundef 0, i64 noundef 0, i32 noundef %i.gw, ptr noundef %3, ptr noundef readonly %4, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.gy = icmp eq ptr %i.gx, null
  br i1 %i.gy, label %bb.au, label %bb.at

bb.at:                                            ; preds = %mi_segment_reclaim_or_alloc.exit.thread25, %mi_segment_reclaim_or_alloc.exit
  %i.gz = call fastcc ptr @mi_segments_page_alloc(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4)
  br label %bb.au

mi_segments_page_find_and_allocate.exit:          ; preds = %mi_span_queue_delete.exit._crit_edge.i
  %i.ha = ptrtoint ptr %i.db to i64
  %i.hb = add i64 %i.ha, -1
  %i.hc = and i64 %i.hb, -33554432
  %i.hd = inttoptr i64 %i.hc to ptr
  %i.he = load ptr, ptr %i.da, align 8, !tbaa !201
  tail call fastcc void @mi_segment_try_purge(ptr noundef %i.hd, i1 noundef zeroext false, ptr noundef %i.he)
  br label %bb.au

bb.au:                                            ; preds = %mi_segment_reclaim_or_alloc.exit.thread, %mi_segment_reclaim_or_alloc.exit, %mi_segments_page_find_and_allocate.exit, %bb.at
  %.0 = phi ptr [ %i.db, %mi_segments_page_find_and_allocate.exit ], [ %i.gz, %bb.at ], [ null, %mi_segment_reclaim_or_alloc.exit ], [ null, %mi_segment_reclaim_or_alloc.exit.thread ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @_mi_abandoned_pool_visit_blocks(ptr noundef readonly captures(none) %0, i8 noundef zeroext %1, i1 noundef zeroext %2, ptr noundef readonly captures(none) %3, ptr noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %i.b = load atomic i64, ptr %i.a seq_cst, align 8, !tbaa !316
  %i.c = and i64 %i.b, -33554432                  ; 2 uses
  %.not19 = icmp eq i64 %i.c, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = inttoptr i64 %i.c to ptr
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.020 = phi ptr [ %i.g, %bb.b ], [ %i.d, %.lr.ph.preheader ] ; 2 uses
  %i.e = tail call fastcc zeroext i1 @mi_segment_visit_pages(ptr noundef %.020, i8 noundef zeroext %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef %4)
  br i1 %i.e, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr i8, ptr %.020, i64 176
  %i.g = load atomic ptr, ptr %i.f seq_cst, align 8, !tbaa !318 ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !319

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.h = load atomic ptr, ptr %0 seq_cst, align 8, !tbaa !320 ; 2 uses
  %.not1721 = icmp eq ptr %i.h, null
  br i1 %.not1721, label %.loopexit, label %.lr.ph24

.lr.ph24:                                         ; preds = %._crit_edge, %bb.c
  %.122 = phi ptr [ %i.k, %bb.c ], [ %i.h, %._crit_edge ] ; 2 uses
  %i.i = tail call fastcc zeroext i1 @mi_segment_visit_pages(ptr noundef %.122, i8 noundef zeroext %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef %4) ; 3 uses
  br i1 %i.i, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph24
  %i.j = getelementptr i8, ptr %.122, i64 176
  %i.k = load atomic ptr, ptr %i.j seq_cst, align 8, !tbaa !318 ; 2 uses
  %.not17 = icmp eq ptr %i.k, null
  br i1 %.not17, label %.loopexit, label %.lr.ph24, !llvm.loop !321

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph24, %bb.c, %._crit_edge
  %.016 = phi i1 [ true, %._crit_edge ], [ %i.i, %.lr.ph24 ], [ %i.i, %bb.c ], [ false, %.lr.ph ]
  ret i1 %.016
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @mi_segment_visit_pages(ptr noundef nonnull %0, i8 noundef zeroext %1, i1 noundef zeroext %2, ptr noundef readonly captures(none) %3, ptr noundef %4) unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.mi_heap_area_s, align 8     ; 11 uses
  %i.a = getelementptr i8, ptr %0, i64 264        ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 248
  %i.c = load i64, ptr %i.b, align 8, !tbaa !285
  %i.d = getelementptr [80 x i8], ptr %i.a, i64 %i.c ; 3 uses
  %i.e = load i32, ptr %i.a, align 8, !tbaa !52
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr [80 x i8], ptr %i.a, i64 %i.f ; 3 uses
  %.not21 = icmp ult ptr %i.g, %i.d
  br i1 %.not21, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  br i1 %2, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.critedge.us
  %.01516.us = phi ptr [ %i.s, %.critedge.us ], [ %i.g, %.lr.ph ] ; 5 uses
  %i.i = getelementptr i8, ptr %.01516.us, i64 28
  %.015.val.us = load i32, ptr %i.i, align 4, !tbaa !21
  %.not.us = icmp eq i32 %.015.val.us, 0
  br i1 %.not.us, label %.critedge.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.j = getelementptr i8, ptr %.01516.us, i64 8
  %i.k = load i8, ptr %i.j, align 8
  %i.l = lshr i8 %i.k, 3
  %i.m = and i8 %i.l, 15
  %i.n = icmp eq i8 %i.m, %1
  br i1 %i.n, label %mi_segment_visit_page.exit.us, label %.critedge.us

mi_segment_visit_page.exit.us:                    ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  call void @_mi_heap_area_init(ptr noundef nonnull %5, ptr noundef nonnull %.01516.us)
  %i.o = load i64, ptr %i.h, align 8, !tbaa !224
  %i.p = call zeroext i1 %3(ptr noundef null, ptr noundef nonnull %5, ptr noundef null, i64 noundef %i.o, ptr noundef %4) #55, !inline_history !322
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  br i1 %i.p, label %.critedge.us, label %._crit_edge

.critedge.us:                                     ; preds = %mi_segment_visit_page.exit.us, %bb.b, %.lr.ph.split.us
  %i.q = load i32, ptr %.01516.us, align 8, !tbaa !52
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr [80 x i8], ptr %.01516.us, i64 %i.r ; 2 uses
  %.not22 = icmp ult ptr %i.s, %i.d
  br i1 %.not22, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !323

.lr.ph.split:                                     ; preds = %.lr.ph, %.critedge
  %.01516 = phi ptr [ %i.ae, %.critedge ], [ %i.g, %.lr.ph ] ; 6 uses
  %i.t = getelementptr i8, ptr %.01516, i64 28
  %.015.val = load i32, ptr %i.t, align 4, !tbaa !21
  %.not = icmp eq i32 %.015.val, 0
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split
  %i.u = getelementptr i8, ptr %.01516, i64 8
  %i.v = load i8, ptr %i.u, align 8
  %i.w = lshr i8 %i.v, 3
  %i.x = and i8 %i.w, 15
  %i.y = icmp eq i8 %i.x, %1
  br i1 %i.y, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  call void @_mi_heap_area_init(ptr noundef nonnull %5, ptr noundef nonnull %.01516)
  %i.z = load i64, ptr %i.h, align 8, !tbaa !224
  %i.aa = call zeroext i1 %3(ptr noundef null, ptr noundef nonnull %5, ptr noundef null, i64 noundef %i.z, ptr noundef %4) #55, !inline_history !322
  br i1 %i.aa, label %bb.e, label %mi_segment_visit_page.exit

bb.e:                                             ; preds = %bb.d
  %i.ab = call zeroext i1 @_mi_heap_area_visit_blocks(ptr noundef nonnull %5, ptr noundef nonnull %.01516, ptr noundef readonly %3, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  br i1 %i.ab, label %.critedge, label %._crit_edge

mi_segment_visit_page.exit:                       ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  br label %._crit_edge

.critedge:                                        ; preds = %bb.e, %bb.c, %.lr.ph.split
  %i.ac = load i32, ptr %.01516, align 8, !tbaa !52
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr [80 x i8], ptr %.01516, i64 %i.ad ; 2 uses
  %.not23 = icmp ult ptr %i.ae, %i.d
  br i1 %.not23, label %.lr.ph.split, label %._crit_edge, !llvm.loop !323

._crit_edge:                                      ; preds = %mi_segment_visit_page.exit.us, %.critedge.us, %.critedge, %bb.e, %mi_segment_visit_page.exit, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %mi_segment_visit_page.exit ], [ false, %bb.e ], [ true, %.critedge ], [ false, %mi_segment_visit_page.exit.us ], [ true, %.critedge.us ]
  ret i1 %.lcssa
}

; Function Attrs: nofree norecurse nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_mi_segment_map_allocated_at(ptr noundef %0) local_unnamed_addr #36 {
bb.a:
  %i.a = icmp ugt ptr %0, inttoptr (i64 43980465111039 to ptr)
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = lshr i64 %i.b, 31                        ; 2 uses
  %i.d = icmp eq i64 %i.c, 20480
  %i.e = or i1 %i.a, %i.d
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.b, 25
  %i.g = and i64 %i.f, 63
  %i.h = getelementptr [8 x i8], ptr @mi_segment_map, i64 %i.c ; 2 uses
  %i.i = load atomic i64, ptr %i.h monotonic, align 8
  %i.j = shl nuw i64 1, %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.i, %bb.b ], [ %i.n, %bb.c ]  ; 2 uses
  %i.k = or i64 %.0, %i.j
  %i.l = cmpxchg weak ptr %i.h, i64 %.0, i64 %i.k release monotonic, align 8 ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  %i.n = extractvalue { i64, i1 } %i.l, 0
  br i1 %i.m, label %.loopexit, label %bb.c, !llvm.loop !324

.loopexit:                                        ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_mi_segment_map_freed_at(ptr noundef %0) local_unnamed_addr #36 {
bb.a:
  %i.a = icmp ugt ptr %0, inttoptr (i64 43980465111039 to ptr)
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = lshr i64 %i.b, 31                        ; 2 uses
  %i.d = icmp eq i64 %i.c, 20480
  %i.e = or i1 %i.a, %i.d
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.b, 25
  %i.g = and i64 %i.f, 63
  %i.h = getelementptr [8 x i8], ptr @mi_segment_map, i64 %i.c ; 2 uses
  %i.i = load atomic i64, ptr %i.h monotonic, align 8
  %i.j = shl nuw i64 1, %i.g
  %i.k = xor i64 %i.j, -1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.i, %bb.b ], [ %i.o, %bb.c ]  ; 2 uses
  %i.l = and i64 %.0, %i.k
  %i.m = cmpxchg weak ptr %i.h, i64 %.0, i64 %i.l release monotonic, align 8 ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 1
  %i.o = extractvalue { i64, i1 } %i.m, 0
  br i1 %i.n, label %.loopexit, label %bb.c, !llvm.loop !293

.loopexit:                                        ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @mi_stats_merge() local_unnamed_addr #2 {
bb.a:
  tail call void @mi_process_init(), !inline_history !236
  %i.a = tail call fastcc zeroext i1 @_mi_heap_init(), !inline_history !236
  br i1 %i.a, label %mi_stats_get_default.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 312), i64 1 monotonic, align 8
  %i.c = add i64 %i.b, 1                          ; 2 uses
  %i.d = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 304) monotonic, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.0.i.i.i.i = phi i64 [ %i.d, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.e = icmp slt i64 %.0.i.i.i.i, %i.c
  br i1 %i.e, label %bb.d, label %_mi_stat_increase.exit.i

bb.d:                                             ; preds = %bb.c
  %i.f = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 304), i64 %.0.i.i.i.i, i64 %i.c release monotonic, align 8 ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  %i.h = extractvalue { i64, i1 } %i.f, 0
  br i1 %i.g, label %_mi_stat_increase.exit.i, label %bb.c, !llvm.loop !124

_mi_stat_increase.exit.i:                         ; preds = %bb.d, %bb.c
  %i.i = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 288), i64 1 monotonic, align 8 ; 0 uses
  %i.j = atomicrmw add ptr @thread_count, i64 1 monotonic, align 8 ; 0 uses
  br label %mi_stats_get_default.exit

mi_stats_get_default.exit:                        ; preds = %bb.a, %_mi_stat_increase.exit.i
  %i.k = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !54
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.n = getelementptr i8, ptr %i.m, i64 968
  tail call fastcc void @mi_stats_merge_from(ptr noundef %i.n)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @mi_stats_merge_from(ptr noundef %0) unnamed_addr #16 {
bb.a:
  %.not = icmp eq ptr %0, @_mi_stats_main
  br i1 %.not, label %bb.au, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %0, align 8, !tbaa !129    ; 2 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !130
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = atomicrmw add ptr @_mi_stats_main, i64 %i.a monotonic, align 8 ; 0 uses
  %i.g = getelementptr i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !127
  %i.i = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 24), i64 %i.h monotonic, align 8 ; 0 uses
  %i.j = getelementptr i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !130
  %i.l = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 8), i64 %i.k monotonic, align 8 ; 0 uses
  %i.m = getelementptr i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !128
  %i.o = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 16), i64 %i.n monotonic, align 8 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = getelementptr i8, ptr %0, i64 32
  %i.q = load i64, ptr %i.p, align 8, !tbaa !129  ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr i8, ptr %0, i64 40
  %i.t = load i64, ptr %i.s, align 8, !tbaa !130
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 32), i64 %i.q monotonic, align 8 ; 0 uses
  %i.w = getelementptr i8, ptr %0, i64 56
  %i.x = load i64, ptr %i.w, align 8, !tbaa !127
  %i.y = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 56), i64 %i.x monotonic, align 8 ; 0 uses
  %i.z = getelementptr i8, ptr %0, i64 40
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !130
  %i.ab = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 40), i64 %i.aa monotonic, align 8 ; 0 uses
  %i.ac = getelementptr i8, ptr %0, i64 48
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !128
  %i.ae = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 48), i64 %i.ad monotonic, align 8 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.af = getelementptr i8, ptr %0, i64 64
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !129 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr i8, ptr %0, i64 72
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !130
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.al = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 64), i64 %i.ag monotonic, align 8 ; 0 uses
  %i.am = getelementptr i8, ptr %0, i64 88
  %i.an = load i64, ptr %i.am, align 8, !tbaa !127
  %i.ao = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 88), i64 %i.an monotonic, align 8 ; 0 uses
  %i.ap = getelementptr i8, ptr %0, i64 72
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !130
  %i.ar = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 72), i64 %i.aq monotonic, align 8 ; 0 uses
  %i.as = getelementptr i8, ptr %0, i64 80
  %i.at = load i64, ptr %i.as, align 8, !tbaa !128
  %i.au = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 80), i64 %i.at monotonic, align 8 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.av = getelementptr i8, ptr %0, i64 96
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !129 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr i8, ptr %0, i64 104
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !130
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bb = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 96), i64 %i.aw monotonic, align 8 ; 0 uses
  %i.bc = getelementptr i8, ptr %0, i64 120
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !127
  %i.be = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 120), i64 %i.bd monotonic, align 8 ; 0 uses
  %i.bf = getelementptr i8, ptr %0, i64 104
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !130
  %i.bh = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 104), i64 %i.bg monotonic, align 8 ; 0 uses
  %i.bi = getelementptr i8, ptr %0, i64 112
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !128
  %i.bk = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 112), i64 %i.bj monotonic, align 8 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bl = getelementptr i8, ptr %0, i64 128
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !129 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bo = getelementptr i8, ptr %0, i64 136
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !130
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.br = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 128), i64 %i.bm monotonic, align 8 ; 0 uses
  %i.bs = getelementptr i8, ptr %0, i64 152
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !127
  %i.bu = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 152), i64 %i.bt monotonic, align 8 ; 0 uses
  %i.bv = getelementptr i8, ptr %0, i64 136
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !130
  %i.bx = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 136), i64 %i.bw monotonic, align 8 ; 0 uses
  %i.by = getelementptr i8, ptr %0, i64 144
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !128
  %i.ca = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 144), i64 %i.bz monotonic, align 8 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cb = getelementptr i8, ptr %0, i64 160
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !129 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ce = getelementptr i8, ptr %0, i64 168
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !130
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ch = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 160), i64 %i.cc monotonic, align 8 ; 0 uses
  %i.ci = getelementptr i8, ptr %0, i64 184
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !127
  %i.ck = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 184), i64 %i.cj monotonic, align 8 ; 0 uses
  %i.cl = getelementptr i8, ptr %0, i64 168
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !130
  %i.cn = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 168), i64 %i.cm monotonic, align 8 ; 0 uses
  %i.co = getelementptr i8, ptr %0, i64 176
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !128
  %i.cq = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 176), i64 %i.cp monotonic, align 8 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cr = getelementptr i8, ptr %0, i64 192
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !129 ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cu = getelementptr i8, ptr %0, i64 200
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !130
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cx = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 192), i64 %i.cs monotonic, align 8 ; 0 uses
  %i.cy = getelementptr i8, ptr %0, i64 216
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !127
  %i.da = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 216), i64 %i.cz monotonic, align 8 ; 0 uses
  %i.db = getelementptr i8, ptr %0, i64 200
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !130
  %i.dd = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 200), i64 %i.dc monotonic, align 8 ; 0 uses
  %i.de = getelementptr i8, ptr %0, i64 208
  %i.df = load i64, ptr %i.de, align 8, !tbaa !128
  %i.dg = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 208), i64 %i.df monotonic, align 8 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dh = getelementptr i8, ptr %0, i64 256
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !129 ; 2 uses
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dk = getelementptr i8, ptr %0, i64 264
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !130
  %i.dm = icmp eq i64 %i.dl, 0
  br i1 %i.dm, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dn = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 256), i64 %i.di monotonic, align 8 ; 0 uses
  %i.do = getelementptr i8, ptr %0, i64 280
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !127
  %i.dq = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 280), i64 %i.dp monotonic, align 8 ; 0 uses
  %i.dr = getelementptr i8, ptr %0, i64 264
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !130
  %i.dt = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 264), i64 %i.ds monotonic, align 8 ; 0 uses
  %i.du = getelementptr i8, ptr %0, i64 272
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !128
end_hunk_15
begin_hunk_16_@mi_stats_merge_from:bb.a
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !130
  %i.ez = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 296), i64 %i.ey monotonic, align 8 ; 0 uses
  %i.fa = getelementptr i8, ptr %0, i64 304
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !128
  %i.fc = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 304), i64 %i.fb monotonic, align 8 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.fd = getelementptr i8, ptr %0, i64 416
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !129 ; 2 uses
  %i.ff = icmp eq i64 %i.fe, 0
  br i1 %i.ff, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fg = getelementptr i8, ptr %0, i64 424
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !130
  %i.fi = icmp eq i64 %i.fh, 0
  br i1 %i.fi, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.fj = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 416), i64 %i.fe monotonic, align 8 ; 0 uses
  %i.fk = getelementptr i8, ptr %0, i64 440
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !127
  %i.fm = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 440), i64 %i.fl monotonic, align 8 ; 0 uses
  %i.fn = getelementptr i8, ptr %0, i64 424
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !130
  %i.fp = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 424), i64 %i.fo monotonic, align 8 ; 0 uses
  %i.fq = getelementptr i8, ptr %0, i64 432
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !128
  %i.fs = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 432), i64 %i.fr monotonic, align 8 ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ft = getelementptr i8, ptr %0, i64 448
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !129 ; 2 uses
  %i.fv = icmp eq i64 %i.fu, 0
  br i1 %i.fv, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fw = getelementptr i8, ptr %0, i64 456
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !130
  %i.fy = icmp eq i64 %i.fx, 0
  br i1 %i.fy, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.fz = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 448), i64 %i.fu monotonic, align 8 ; 0 uses
  %i.ga = getelementptr i8, ptr %0, i64 472
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !127
  %i.gc = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 472), i64 %i.gb monotonic, align 8 ; 0 uses
  %i.gd = getelementptr i8, ptr %0, i64 456
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !130
  %i.gf = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 456), i64 %i.ge monotonic, align 8 ; 0 uses
  %i.gg = getelementptr i8, ptr %0, i64 464
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !128
  %i.gi = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 464), i64 %i.gh monotonic, align 8 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.gj = getelementptr i8, ptr %0, i64 320
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !129 ; 2 uses
  %i.gl = icmp eq i64 %i.gk, 0
  br i1 %i.gl, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.gm = getelementptr i8, ptr %0, i64 328
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !130
  %i.go = icmp eq i64 %i.gn, 0
  br i1 %i.go, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.gp = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 320), i64 %i.gk monotonic, align 8 ; 0 uses
  %i.gq = getelementptr i8, ptr %0, i64 344
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !127
  %i.gs = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 344), i64 %i.gr monotonic, align 8 ; 0 uses
  %i.gt = getelementptr i8, ptr %0, i64 328
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !130
  %i.gv = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 328), i64 %i.gu monotonic, align 8 ; 0 uses
  %i.gw = getelementptr i8, ptr %0, i64 336
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !128
  %i.gy = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 336), i64 %i.gx monotonic, align 8 ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.gz = getelementptr i8, ptr %0, i64 352
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !129 ; 2 uses
  %i.hb = icmp eq i64 %i.ha, 0
  br i1 %i.hb, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.hc = getelementptr i8, ptr %0, i64 360
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !130
  %i.he = icmp eq i64 %i.hd, 0
  br i1 %i.he, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.hf = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 352), i64 %i.ha monotonic, align 8 ; 0 uses
  %i.hg = getelementptr i8, ptr %0, i64 376
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !127
  %i.hi = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 376), i64 %i.hh monotonic, align 8 ; 0 uses
  %i.hj = getelementptr i8, ptr %0, i64 360
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !130
  %i.hl = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 360), i64 %i.hk monotonic, align 8 ; 0 uses
  %i.hm = getelementptr i8, ptr %0, i64 368
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !128
  %i.ho = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 368), i64 %i.hn monotonic, align 8 ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.hp = getelementptr i8, ptr %0, i64 384
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !129 ; 2 uses
  %i.hr = icmp eq i64 %i.hq, 0
  br i1 %i.hr, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.hs = getelementptr i8, ptr %0, i64 392
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !130
  %i.hu = icmp eq i64 %i.ht, 0
  br i1 %i.hu, label %mi_stats_add.exit, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.hv = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 384), i64 %i.hq monotonic, align 8 ; 0 uses
  %i.hw = getelementptr i8, ptr %0, i64 408
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !127
  %i.hy = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 408), i64 %i.hx monotonic, align 8 ; 0 uses
  %i.hz = getelementptr i8, ptr %0, i64 392
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !130
  %i.ib = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 392), i64 %i.ia monotonic, align 8 ; 0 uses
  %i.ic = getelementptr i8, ptr %0, i64 400
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !128
  %i.ie = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 400), i64 %i.id monotonic, align 8 ; 0 uses
  br label %mi_stats_add.exit

mi_stats_add.exit:                                ; preds = %bb.as, %bb.at
  %i.if = getelementptr i8, ptr %0, i64 480
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !325
  %i.ih = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 480), i64 %i.ig monotonic, align 8 ; 0 uses
  %i.ii = getelementptr i8, ptr %0, i64 488
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !326
  %i.ik = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 488), i64 %i.ij monotonic, align 8 ; 0 uses
  %i.il = getelementptr i8, ptr %0, i64 496
  %i.im = load i64, ptr %i.il, align 8, !tbaa !325
  %i.in = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 496), i64 %i.im monotonic, align 8 ; 0 uses
  %i.io = getelementptr i8, ptr %0, i64 504
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !326
  %i.iq = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 504), i64 %i.ip monotonic, align 8 ; 0 uses
  %i.ir = getelementptr i8, ptr %0, i64 512
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !325
  %i.it = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 512), i64 %i.is monotonic, align 8 ; 0 uses
  %i.iu = getelementptr i8, ptr %0, i64 520
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !326
  %i.iw = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 520), i64 %i.iv monotonic, align 8 ; 0 uses
  %i.ix = getelementptr i8, ptr %0, i64 528
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !325
  %i.iz = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 528), i64 %i.iy monotonic, align 8 ; 0 uses
  %i.ja = getelementptr i8, ptr %0, i64 536
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !326
  %i.jc = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 536), i64 %i.jb monotonic, align 8 ; 0 uses
  %i.jd = getelementptr i8, ptr %0, i64 544
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !325
  %i.jf = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 544), i64 %i.je monotonic, align 8 ; 0 uses
  %i.jg = getelementptr i8, ptr %0, i64 552
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !326
  %i.ji = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 552), i64 %i.jh monotonic, align 8 ; 0 uses
  %i.jj = getelementptr i8, ptr %0, i64 560
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !325
  %i.jl = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 560), i64 %i.jk monotonic, align 8 ; 0 uses
  %i.jm = getelementptr i8, ptr %0, i64 568
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !326
  %i.jo = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 568), i64 %i.jn monotonic, align 8 ; 0 uses
  %i.jp = getelementptr i8, ptr %0, i64 576
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !325
  %i.jr = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 576), i64 %i.jq monotonic, align 8 ; 0 uses
  %i.js = getelementptr i8, ptr %0, i64 584
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !326
  %i.ju = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 584), i64 %i.jt monotonic, align 8 ; 0 uses
  %i.jv = getelementptr i8, ptr %0, i64 592
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !325
  %i.jx = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 592), i64 %i.jw monotonic, align 8 ; 0 uses
  %i.jy = getelementptr i8, ptr %0, i64 600
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !326
  %i.ka = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 600), i64 %i.jz monotonic, align 8 ; 0 uses
  %i.kb = getelementptr i8, ptr %0, i64 608
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !325
  %i.kd = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 608), i64 %i.kc monotonic, align 8 ; 0 uses
  %i.ke = getelementptr i8, ptr %0, i64 616
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !326
  %i.kg = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 616), i64 %i.kf monotonic, align 8 ; 0 uses
  %i.kh = getelementptr i8, ptr %0, i64 624
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !325
  %i.kj = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 624), i64 %i.ki monotonic, align 8 ; 0 uses
  %i.kk = getelementptr i8, ptr %0, i64 632
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !326
  %i.km = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 632), i64 %i.kl monotonic, align 8 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %0, i8 0, i64 640, i1 false)
  br label %bb.au

bb.au:                                            ; preds = %mi_stats_add.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_mi_stats_done(ptr noundef %0) local_unnamed_addr #16 {
bb.a:
  tail call fastcc void @mi_stats_merge_from(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @mi_stats_print_out(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  tail call void @mi_process_init(), !inline_history !236
  %i.a = tail call fastcc zeroext i1 @_mi_heap_init(), !inline_history !236
  br i1 %i.a, label %mi_stats_get_default.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 312), i64 1 monotonic, align 8
  %i.c = add i64 %i.b, 1                          ; 2 uses
  %i.d = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 304) monotonic, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.0.i.i.i.i = phi i64 [ %i.d, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.e = icmp slt i64 %.0.i.i.i.i, %i.c
  br i1 %i.e, label %bb.d, label %_mi_stat_increase.exit.i

bb.d:                                             ; preds = %bb.c
  %i.f = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 304), i64 %.0.i.i.i.i, i64 %i.c release monotonic, align 8 ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  %i.h = extractvalue { i64, i1 } %i.f, 0
  br i1 %i.g, label %_mi_stat_increase.exit.i, label %bb.c, !llvm.loop !124

_mi_stat_increase.exit.i:                         ; preds = %bb.d, %bb.c
  %i.i = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 288), i64 1 monotonic, align 8 ; 0 uses
  %i.j = atomicrmw add ptr @thread_count, i64 1 monotonic, align 8 ; 0 uses
  br label %mi_stats_get_default.exit

mi_stats_get_default.exit:                        ; preds = %bb.a, %_mi_stat_increase.exit.i
  %i.k = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !54
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.n = getelementptr i8, ptr %i.m, i64 968
  tail call fastcc void @mi_stats_merge_from(ptr noundef %i.n)
  tail call fastcc void @_mi_stats_print(ptr noundef nonnull @_mi_stats_main, ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_mi_stats_print(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.rusage, align 8             ; 9 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca [256 x i8], align 16              ; 3 uses
  %5 = alloca %struct.buffered_s, align 8         ; 49 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  store ptr %1, ptr %5, align 8, !tbaa !327
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %2, ptr %i.b, align 8, !tbaa !329
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 0, ptr %i.e, align 8
  store i64 255, ptr %i.d, align 8, !tbaa !330
  store ptr %i.a, ptr %i.c, align 8, !tbaa !331
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.138)
  %i.f = getelementptr i8, ptr %0, i64 64
  call fastcc void @mi_stat_print_ex(ptr noundef %i.f, ptr noundef nonnull @.str.105, i64 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.10)
  %i.g = getelementptr i8, ptr %0, i64 96
  call fastcc void @mi_stat_print_ex(ptr noundef %i.g, ptr noundef nonnull @.str.106, i64 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.10)
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.107)
  %i.h = getelementptr i8, ptr %0, i64 144
  %i.i = load i64, ptr %i.h, align 8, !tbaa !128
  call fastcc void @mi_printf_amount(i64 noundef %i.i, i64 noundef 1, ptr noundef nonnull %5, ptr noundef null)
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.130)
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.108)
  %i.j = getelementptr i8, ptr %0, i64 176
  %i.k = load i64, ptr %i.j, align 8, !tbaa !128
  call fastcc void @mi_printf_amount(i64 noundef %i.k, i64 noundef 1, ptr noundef nonnull %5, ptr noundef null)
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.130)
  %i.l = getelementptr i8, ptr %0, i64 192
  call fastcc void @mi_stat_print_ex(ptr noundef readonly %i.l, ptr noundef nonnull @.str.109, i64 noundef 1, ptr noundef nonnull %5, ptr noundef null)
  call fastcc void @mi_stat_print_ex(ptr noundef readonly %0, ptr noundef nonnull @.str.110, i64 noundef -1, ptr noundef nonnull %5, ptr noundef null)
  %i.m = getelementptr i8, ptr %0, i64 224
  call fastcc void @mi_stat_print_ex(ptr noundef readonly %i.m, ptr noundef nonnull @.str.111, i64 noundef -1, ptr noundef nonnull %5, ptr noundef null)
  %i.n = getelementptr i8, ptr %0, i64 448
  call fastcc void @mi_stat_print_ex(ptr noundef readonly %i.n, ptr noundef nonnull @.str.112, i64 noundef -1, ptr noundef nonnull %5, ptr noundef null)
  %i.o = getelementptr i8, ptr %0, i64 32
  call fastcc void @mi_stat_print_ex(ptr noundef readonly %i.o, ptr noundef nonnull @.str.113, i64 noundef -1, ptr noundef nonnull %5, ptr noundef null)
  %i.p = getelementptr i8, ptr %0, i64 256
  call fastcc void @mi_stat_print_ex(ptr noundef readonly %i.p, ptr noundef nonnull @.str.111, i64 noundef -1, ptr noundef nonnull %5, ptr noundef null)
  %i.q = getelementptr i8, ptr %0, i64 480
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.114)
  %i.r = load i64, ptr %i.q, align 8, !tbaa !325
  call fastcc void @mi_printf_amount(i64 noundef %i.r, i64 noundef -1, ptr noundef nonnull %5, ptr noundef null)
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.130)
  %i.s = getelementptr i8, ptr %0, i64 560
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.115)
  %i.t = load i64, ptr %i.s, align 8, !tbaa !325
  call fastcc void @mi_printf_amount(i64 noundef %i.t, i64 noundef -1, ptr noundef nonnull %5, ptr noundef null)
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.130)
  %i.u = getelementptr i8, ptr %0, i64 496
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.116)
  %i.v = load i64, ptr %i.u, align 8, !tbaa !325
  call fastcc void @mi_printf_amount(i64 noundef %i.v, i64 noundef -1, ptr noundef nonnull %5, ptr noundef null)
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.130)
  %i.w = getelementptr i8, ptr %0, i64 512
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.117)
  %i.x = load i64, ptr %i.w, align 8, !tbaa !325
  call fastcc void @mi_printf_amount(i64 noundef %i.x, i64 noundef -1, ptr noundef nonnull %5, ptr noundef null)
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.130)
  %i.y = getelementptr i8, ptr %0, i64 528
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.118)
  %i.z = load i64, ptr %i.y, align 8, !tbaa !325
  call fastcc void @mi_printf_amount(i64 noundef %i.z, i64 noundef -1, ptr noundef nonnull %5, ptr noundef null)
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.130)
  %i.aa = getelementptr i8, ptr %0, i64 544
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.119)
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !325
  call fastcc void @mi_printf_amount(i64 noundef %i.ab, i64 noundef -1, ptr noundef nonnull %5, ptr noundef null)
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.130)
  %i.ac = getelementptr i8, ptr %0, i64 288
  call fastcc void @mi_stat_print_ex(ptr noundef readonly %i.ac, ptr noundef nonnull @.str.120, i64 noundef -1, ptr noundef nonnull %5, ptr noundef null)
  %i.ad = getelementptr i8, ptr %0, i64 584
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !326 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %mi_stat_counter_print_avg.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = getelementptr i8, ptr %0, i64 576
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !325
  %i.ai = mul i64 %i.ah, 10
  %i.aj = sdiv i64 %i.ai, %i.ae
  br label %mi_stat_counter_print_avg.exit

mi_stat_counter_print_avg.exit:                   ; preds = %bb.a, %bb.b
  %i.ak = phi i64 [ %i.aj, %bb.b ], [ 0, %bb.a ]  ; 2 uses
  %i.al = sdiv i64 %i.ak, 10
  %i.am = srem i64 %i.ak, 10
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.121, i64 noundef %i.al, i64 noundef %i.am)
  %i.an = load atomic i64, ptr @_mi_numa_node_count monotonic, align 8 ; 2 uses
  %.not.i = icmp eq i64 %i.an, 0
  br i1 %.not.i, label %bb.c, label %_mi_os_numa_node_count.exit, !prof !17

bb.c:                                             ; preds = %mi_stat_counter_print_avg.exit
  %i.ao = call i64 @_mi_os_numa_node_count_get()
  br label %_mi_os_numa_node_count.exit

_mi_os_numa_node_count.exit:                      ; preds = %mi_stat_counter_print_avg.exit, %bb.c
  %.0.i = phi i64 [ %i.ao, %bb.c ], [ %i.an, %mi_stat_counter_print_avg.exit ]
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.123, i64 noundef %.0.i)
  %i.ap = load i64, ptr @mi_process_start, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  %i.aq = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #55 ; 0 uses
  %i.ar = load i64, ptr %4, align 8, !tbaa !138
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  %i.au = load i64, ptr @mi_clock_diff, align 8, !tbaa !105
  %i.av = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 120) monotonic, align 8 ; 0 uses
  %i.aw = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 112) monotonic, align 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  %i.ax = call i32 @getrusage(i32 noundef 0, ptr noundef nonnull %3) #55 ; 0 uses
  %.val5.i.i = load i64, ptr %3, align 8, !tbaa !332
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val6.i.i = load i64, ptr %i.ay, align 8, !tbaa !334
  %i.az = mul i64 %.val5.i.i, 1000
  %i.ba = sdiv i64 %.val6.i.i, 1000
  %i.bb = add i64 %i.ba, %i.az
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val.i.i = load i64, ptr %i.bc, align 8, !tbaa !332
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val4.i.i = load i64, ptr %i.bd, align 8, !tbaa !334
  %i.be = mul i64 %.val.i.i, 1000
  %i.bf = sdiv i64 %.val4.i.i, 1000
  %i.bg = add i64 %i.bf, %i.be
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !60
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !60
  %i.bl = shl i64 %i.bk, 10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  %i.bm = mul i64 %i.ar, 1000
  %i.bn = sdiv i64 %i.at, 1000000
  %i.bo = add i64 %i.bm, %i.bn
  %i.bp = add i64 %i.ap, %i.au
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = call i64 @llvm.smax.i64(i64 %i.bq, i64 0) ; 2 uses
  %i.bs = call i64 @llvm.smax.i64(i64 %i.bb, i64 0) ; 2 uses
  %i.bt = call i64 @llvm.smax.i64(i64 %i.bg, i64 0) ; 2 uses
  %i.bu = udiv i64 %i.br, 1000
  %i.bv = urem i64 %i.br, 1000
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.125, i64 noundef %i.bu, i64 noundef %i.bv)
  %i.bw = udiv i64 %i.bs, 1000
  %i.bx = urem i64 %i.bs, 1000
  %i.by = udiv i64 %i.bt, 1000
  %i.bz = urem i64 %i.bt, 1000
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.127, i64 noundef %i.bw, i64 noundef %i.bx, i64 noundef %i.by, i64 noundef %i.bz, i64 noundef %i.bi)
  call fastcc void @mi_printf_amount(i64 noundef %i.bl, i64 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.128)
  %.not = icmp eq i64 %i.aw, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_mi_os_numa_node_count.exit
end_hunk_16
begin_hunk_17_@_PyMem_MiRawCalloc:bb.a
  %i.v = load i8, ptr %i.u, align 1
  %i.w = and i8 %i.v, 1
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store atomic i64 0, ptr %i.m seq_cst, align 8, !tbaa !19
  br label %mi_calloc.exit

bb.h:                                             ; preds = %bb.f
  %i.x = getelementptr i8, ptr %i.k, i64 28
  %i.y = load i32, ptr %i.x, align 4, !tbaa !21
  %i.z = zext i32 %i.y to i64
  call void @llvm.assume(i1 true) [ "align"(ptr %i.m, i64 8) ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.m, i8 0, i64 %i.z, i1 false)
  br label %mi_calloc.exit

bb.i:                                             ; preds = %bb.c
  %i.aa = tail call noalias ptr @_mi_malloc_generic(ptr noundef %i.b, i64 noundef %storemerge.i.ph.i.i, i1 noundef zeroext true, i64 noundef 0)
  br label %mi_calloc.exit

mi_calloc.exit:                                   ; preds = %bb.b, %bb.e, %bb.g, %bb.h, %bb.i
  %.0.i.i = phi ptr [ null, %bb.b ], [ %i.aa, %bb.i ], [ %i.o, %bb.e ], [ %i.m, %bb.g ], [ %i.m, %bb.h ]
  ret ptr %.0.i.i
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyMem_MiRawRealloc(ptr readnone captures(none) %0, ptr noundef %1, i64 noundef %2) #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = tail call ptr @_mi_heap_realloc_zero(ptr noundef %i.b, ptr noundef %1, i64 noundef %2, i1 noundef zeroext false)
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define hidden void @_PyMem_MiRawFree(ptr readnone captures(none) %0, ptr noundef %1) #2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %mi_free.exit, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = add i64 %i.b, -1
  %i.d = and i64 %i.c, -33554432                  ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 4 uses
  %i.f = tail call ptr asm "movq %fs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) null) #60, !srcloc !58
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = getelementptr i8, ptr %i.e, i64 256
  %i.i = load atomic i64, ptr %i.h monotonic, align 256
  %i.j = icmp eq i64 %i.i, %i.g
  %i.k = sub i64 %i.b, %i.d
  %i.l = lshr i64 %i.k, 16
  %i.m = getelementptr i8, ptr %i.e, i64 264
  %i.n = getelementptr [80 x i8], ptr %i.m, i64 %i.l ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !59
  %i.q = zext i32 %i.p to i64
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr i8, ptr %i.n, i64 %i.r     ; 6 uses
  br i1 %i.j, label %bb.c, label %bb.g, !prof !55

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr i8, ptr %i.s, i64 14
  %i.u = load i8, ptr %i.t, align 2, !tbaa !60
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.d, label %bb.f, !prof !55

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr i8, ptr %i.s, i64 32       ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !57
  %i.y = ptrtoint ptr %i.x to i64
  store atomic i64 %i.y, ptr %1 monotonic, align 8
  store ptr %1, ptr %i.w, align 8, !tbaa !57
  %i.z = getelementptr i8, ptr %i.s, i64 24       ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !18
  %i.ab = add i32 %i.aa, -1                       ; 2 uses
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !18
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %mi_free.exit, !prof !17

bb.e:                                             ; preds = %bb.d
  tail call void @_mi_page_retire(ptr noundef %i.s)
  br label %mi_free.exit

bb.f:                                             ; preds = %bb.c
  tail call void @_mi_free_generic(ptr noundef nonnull %i.e, ptr noundef %i.s, i1 noundef zeroext true, ptr noundef nonnull %1)
  br label %mi_free.exit

bb.g:                                             ; preds = %bb.b
  tail call void @_mi_free_generic(ptr noundef nonnull %i.e, ptr noundef %i.s, i1 noundef zeroext false, ptr noundef nonnull %1)
  br label %mi_free.exit

mi_free.exit:                                     ; preds = %bb.a, %bb.d, %bb.e, %bb.f, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define hidden noalias noundef ptr @_PyMem_DefaultRawMalloc(i64 noundef %0) local_unnamed_addr #40 {
bb.a:
  %spec.store.select.i = tail call i64 @llvm.umax.i64(i64 %0, i64 1)
  %i.a = tail call noalias noundef ptr @malloc(i64 noundef %spec.store.select.i) #65
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define hidden noalias noundef ptr @_PyMem_DefaultRawCalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #40 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = icmp eq i64 %1, 0
  %or.cond.i = or i1 %i.a, %i.b                   ; 2 uses
  %spec.select.i = select i1 %or.cond.i, i64 1, i64 %0
  %spec.select8.i = select i1 %or.cond.i, i64 1, i64 %1
  %i.c = tail call noalias noundef ptr @calloc(i64 noundef %spec.select.i, i64 noundef %spec.select8.i) #66
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable
define hidden noalias noundef ptr @_PyMem_DefaultRawRealloc(ptr noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #43 {
bb.a:
  %spec.store.select.i = tail call i64 @llvm.umax.i64(i64 %1, i64 1)
  %i.a = tail call noalias noundef ptr @realloc(ptr noundef %0, i64 noundef %spec.store.select.i) #67
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_PyMem_DefaultRawFree(ptr noundef captures(none) %0) local_unnamed_addr #45 {
bb.a:
  tail call void @free(ptr noundef %0) #55
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noalias noundef ptr @_PyMem_DefaultRawWcsdup(ptr noundef readonly captures(none) %0) local_unnamed_addr #46 {
bb.a:
  %i.a = tail call i64 @wcslen(ptr noundef %0) #61 ; 2 uses
  %i.b = icmp ugt i64 %i.a, 2305843009213693950
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl nuw nsw i64 %i.a, 2
  %i.d = add nuw nsw i64 %i.c, 4                  ; 2 uses
  %i.e = tail call noalias noundef ptr @malloc(i64 noundef %i.d) #65 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.e, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.d, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.e, %bb.c ], [ null, %bb.b ]
  ret ptr %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define hidden ptr @_PyMem_ArenaAlloc(ptr noundef readnone captures(none) %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @mmap64(ptr noundef null, i64 noundef %1, i32 noundef 3, i32 noundef 34, i32 noundef -1, i64 noundef 0) #55 ; 4 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %_PyAnnotateMemoryMap.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @_Py_GetConfig() #55
  %i.d = getelementptr i8, ptr %i.c, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !344
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_PyAnnotateMemoryMap.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = tail call i32 (i32, ...) @prctl(i32 noundef 1398164801, i32 noundef 0, i64 noundef %i.f, i64 noundef %1, ptr noundef nonnull @.str.35) #55 ; 0 uses
  br label %_PyAnnotateMemoryMap.exit

_PyAnnotateMemoryMap.exit:                        ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.a, %bb.b ], [ %i.a, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind
declare ptr @mmap64(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #37

; Function Attrs: nounwind uwtable
define hidden void @_PyMem_ArenaFree(ptr noundef readnone captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @munmap(ptr noundef nonnull %1, i64 noundef %2) #55 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden range(i32 -1, 1) i32 @_PyMem_GetAllocatorName(ptr noundef readonly captures(address_is_null) %0, ptr noundef writeonly captures(none) %1) local_unnamed_addr #35 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !60
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.36) #61
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.37) #61
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.38) #61
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(15) @.str.39) #61
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.40) #61
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(15) @.str.41) #61
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.42) #61
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(13) @.str.43) #61
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.sink.split, label %bb.k

.sink.split:                                      ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a, %bb.b
  %.sink = phi i32 [ 1, %bb.a ], [ 1, %bb.c ], [ 5, %bb.e ], [ 7, %bb.g ], [ 3, %bb.i ], [ 8, %bb.h ], [ 6, %bb.f ], [ 2, %bb.d ], [ 1, %bb.b ], [ 4, %bb.j ]
  store i32 %.sink, ptr %1, align 4, !tbaa !7
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.j
  %.0 = phi i32 [ -1, %bb.j ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @_PyMem_SetupAllocators(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 936), i8 0, i8 1 seq_cst seq_cst, align 1
  %i.b = extractvalue { i8, i1 } %i.a, 1
  br i1 %i.b, label %_PyMutex_Lock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @PyMutex_Lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 936)) #55
  br label %_PyMutex_Lock.exit

_PyMutex_Lock.exit:                               ; preds = %bb.a, %bb.b
  switch i32 %0, label %set_up_allocators_unlocked.exit [
    i32 0, label %bb.g
    i32 1, label %bb.c
    i32 2, label %set_default_allocator_unlocked.exit12.i
    i32 5, label %bb.d
    i32 6, label %bb.d
    i32 7, label %bb.e
    i32 8, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.f
  ]

bb.c:                                             ; preds = %_PyMutex_Lock.exit
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 944), align 8, !tbaa !40
  store ptr @_PyMem_RawMalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 952), align 8, !tbaa !40
  store ptr @_PyMem_RawCalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 960), align 8, !tbaa !40
  store ptr @_PyMem_RawRealloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 968), align 8, !tbaa !40
  store ptr @_PyMem_RawFree, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 976), align 8, !tbaa !40
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 984), align 8, !tbaa !40
  store ptr @_PyObject_Malloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 992), align 8, !tbaa !40
  store ptr @_PyObject_Calloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1000), align 8, !tbaa !40
  store ptr @_PyObject_Realloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1008), align 8, !tbaa !40
  store ptr @_PyObject_Free, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1016), align 8, !tbaa !40
  br label %.sink.split.i

set_default_allocator_unlocked.exit12.i:          ; preds = %_PyMutex_Lock.exit
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 944), align 8, !tbaa !40
  store ptr @_PyMem_RawMalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 952), align 8, !tbaa !40
  store ptr @_PyMem_RawCalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 960), align 8, !tbaa !40
  store ptr @_PyMem_RawRealloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 968), align 8, !tbaa !40
  store ptr @_PyMem_RawFree, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 976), align 8, !tbaa !40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1072), ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 944), i64 40, i1 false), !tbaa.struct !349
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1064), ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 944), align 8, !tbaa !40
  store ptr @_PyMem_DebugRawMalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 952), align 8, !tbaa !40
  store ptr @_PyMem_DebugRawCalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 960), align 8, !tbaa !40
  store ptr @_PyMem_DebugRawRealloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 968), align 8, !tbaa !40
  store ptr @_PyMem_DebugRawFree, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 976), align 8, !tbaa !40
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 984), align 8, !tbaa !40
  store ptr @_PyObject_Malloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 992), align 8, !tbaa !40
  store ptr @_PyObject_Calloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1000), align 8, !tbaa !40
  store ptr @_PyObject_Realloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1008), align 8, !tbaa !40
  store ptr @_PyObject_Free, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1016), align 8, !tbaa !40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1120), ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 984), i64 40, i1 false), !tbaa.struct !349
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1112), ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 984), align 8, !tbaa !40
  store ptr @_PyMem_DebugMalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 992), align 8, !tbaa !40
  store ptr @_PyMem_DebugCalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1000), align 8, !tbaa !40
  store ptr @_PyMem_DebugRealloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1008), align 8, !tbaa !40
  store ptr @_PyMem_DebugFree, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1016), align 8, !tbaa !40
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1024), align 8, !tbaa !40
  store ptr @_PyObject_Malloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1032), align 8, !tbaa !40
  store ptr @_PyObject_Calloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1040), align 8, !tbaa !40
  store ptr @_PyObject_Realloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1048), align 8, !tbaa !40
  store ptr @_PyObject_Free, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1056), align 8, !tbaa !40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1168), ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1024), i64 40, i1 false), !tbaa.struct !349
  br label %.sink.split.i

bb.d:                                             ; preds = %_PyMutex_Lock.exit, %_PyMutex_Lock.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 944), ptr noundef nonnull readonly align 8 dereferenceable(40) @__const.get_current_allocator_name_unlocked.malloc_alloc, i64 40, i1 false), !tbaa.struct !349
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 984), ptr noundef nonnull readonly align 8 dereferenceable(40) @__const.get_current_allocator_name_unlocked.pymalloc, i64 40, i1 false), !tbaa.struct !349
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1024), ptr noundef nonnull readonly align 8 dereferenceable(40) @__const.get_current_allocator_name_unlocked.pymalloc, i64 40, i1 false), !tbaa.struct !349
  %i.c = icmp eq i32 %0, 6                        ; 2 uses
  %i.d = zext i1 %i.c to i32
  store i32 %i.d, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1208), align 8, !tbaa !350
  br i1 %i.c, label %set_up_debug_hooks_unlocked.exit.i, label %bb.g

set_up_debug_hooks_unlocked.exit.i:               ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1072), ptr noundef nonnull align 8 dereferenceable(40) @__const.get_current_allocator_name_unlocked.malloc_alloc, i64 40, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1064), ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 944), align 8, !tbaa !40
  store ptr @_PyMem_DebugRawMalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 952), align 8, !tbaa !40
  store ptr @_PyMem_DebugRawCalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 960), align 8, !tbaa !40
  store ptr @_PyMem_DebugRawRealloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 968), align 8, !tbaa !40
  store ptr @_PyMem_DebugRawFree, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 976), align 8, !tbaa !40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1120), ptr noundef nonnull align 8 dereferenceable(40) @__const.get_current_allocator_name_unlocked.pymalloc, i64 40, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1112), ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 984), align 8, !tbaa !40
  store ptr @_PyMem_DebugMalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 992), align 8, !tbaa !40
  store ptr @_PyMem_DebugCalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1000), align 8, !tbaa !40
  store ptr @_PyMem_DebugRealloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1008), align 8, !tbaa !40
  store ptr @_PyMem_DebugFree, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1016), align 8, !tbaa !40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1168), ptr noundef nonnull align 8 dereferenceable(40) @__const.get_current_allocator_name_unlocked.pymalloc, i64 40, i1 false)
  br label %.sink.split.i

bb.e:                                             ; preds = %_PyMutex_Lock.exit, %_PyMutex_Lock.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 944), ptr noundef nonnull readonly align 8 dereferenceable(40) @__const.get_current_allocator_name_unlocked.mimalloc_raw, i64 40, i1 false), !tbaa.struct !349
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 984), ptr noundef nonnull readonly align 8 dereferenceable(40) @__const.get_current_allocator_name_unlocked.mimalloc, i64 40, i1 false), !tbaa.struct !349
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1024), ptr noundef nonnull readonly align 8 dereferenceable(40) @__const.get_current_allocator_name_unlocked.mimalloc_obj, i64 40, i1 false), !tbaa.struct !349
  %i.e = icmp eq i32 %0, 8                        ; 2 uses
  %i.f = zext i1 %i.e to i32
  store i32 %i.f, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1208), align 8, !tbaa !350
  br i1 %i.e, label %set_up_debug_hooks_unlocked.exit15.i, label %bb.g

set_up_debug_hooks_unlocked.exit15.i:             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1072), ptr noundef nonnull align 8 dereferenceable(40) @__const.get_current_allocator_name_unlocked.mimalloc_raw, i64 40, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1064), ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 944), align 8, !tbaa !40
  store ptr @_PyMem_DebugRawMalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 952), align 8, !tbaa !40
  store ptr @_PyMem_DebugRawCalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 960), align 8, !tbaa !40
  store ptr @_PyMem_DebugRawRealloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 968), align 8, !tbaa !40
  store ptr @_PyMem_DebugRawFree, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 976), align 8, !tbaa !40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1120), ptr noundef nonnull align 8 dereferenceable(40) @__const.get_current_allocator_name_unlocked.mimalloc, i64 40, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1112), ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 984), align 8, !tbaa !40
  store ptr @_PyMem_DebugMalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 992), align 8, !tbaa !40
  store ptr @_PyMem_DebugCalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1000), align 8, !tbaa !40
  store ptr @_PyMem_DebugRealloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1008), align 8, !tbaa !40
  store ptr @_PyMem_DebugFree, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1016), align 8, !tbaa !40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1168), ptr noundef nonnull align 8 dereferenceable(40) @__const.get_current_allocator_name_unlocked.mimalloc_obj, i64 40, i1 false)
  br label %.sink.split.i

bb.f:                                             ; preds = %_PyMutex_Lock.exit, %_PyMutex_Lock.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 944), ptr noundef nonnull readonly align 8 dereferenceable(40) @__const.get_current_allocator_name_unlocked.malloc_alloc, i64 40, i1 false), !tbaa.struct !349
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 984), ptr noundef nonnull readonly align 8 dereferenceable(40) @__const.get_current_allocator_name_unlocked.malloc_alloc, i64 40, i1 false), !tbaa.struct !349
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1024), ptr noundef nonnull readonly align 8 dereferenceable(40) @__const.get_current_allocator_name_unlocked.malloc_alloc, i64 40, i1 false), !tbaa.struct !349
  %i.g = icmp eq i32 %0, 4                        ; 2 uses
  %i.h = zext i1 %i.g to i32
  store i32 %i.h, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1208), align 8, !tbaa !350
  br i1 %i.g, label %set_up_debug_hooks_unlocked.exit18.i, label %bb.g

set_up_debug_hooks_unlocked.exit18.i:             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1072), ptr noundef nonnull align 8 dereferenceable(40) @__const.get_current_allocator_name_unlocked.malloc_alloc, i64 40, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1064), ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 944), align 8, !tbaa !40
  store ptr @_PyMem_DebugRawMalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 952), align 8, !tbaa !40
  store ptr @_PyMem_DebugRawCalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 960), align 8, !tbaa !40
  store ptr @_PyMem_DebugRawRealloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 968), align 8, !tbaa !40
  store ptr @_PyMem_DebugRawFree, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 976), align 8, !tbaa !40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1120), ptr noundef nonnull align 8 dereferenceable(40) @__const.get_current_allocator_name_unlocked.malloc_alloc, i64 40, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1112), ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 984), align 8, !tbaa !40
  store ptr @_PyMem_DebugMalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 992), align 8, !tbaa !40
  store ptr @_PyMem_DebugCalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1000), align 8, !tbaa !40
end_hunk_17
begin_hunk_18_@_PyMem_DebugMalloc:bb.a
  %i.ak = getelementptr i8, ptr %i.j, i64 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ak, i8 -3, i64 7, i1 false)
  %i.al = icmp eq i64 %1, 0
  br i1 %i.al, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.l, i8 -51, i64 %1, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.am = getelementptr i8, ptr %i.l, i64 %1
  store i64 -144680345676153347, ptr %i.am, align 1
  br label %_PyMem_DebugRawMalloc.exit

_PyMem_DebugRawMalloc.exit:                       ; preds = %_PyMem_DebugCheckGIL.exit, %bb.c, %bb.f
  %.0.i.i = phi ptr [ %i.l, %bb.f ], [ null, %_PyMem_DebugCheckGIL.exit ], [ null, %bb.c ]
  ret ptr %.0.i.i
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyMem_DebugCalloc(ptr noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !548
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_PyMem_DebugCheckGIL.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__._PyMem_DebugCalloc, ptr noundef nonnull @.str.163) #62
  unreachable

_PyMem_DebugCheckGIL.exit:                        ; preds = %bb.a
  %i.d = mul i64 %2, %1                           ; 11 uses
  %i.e = icmp ugt i64 %i.d, 9223372036854775783
  br i1 %i.e, label %_PyMem_DebugRawCalloc.exit, label %bb.c

bb.c:                                             ; preds = %_PyMem_DebugCheckGIL.exit
  %i.f = add nuw nsw i64 %i.d, 24
  %i.g = getelementptr i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !601
  %i.i = getelementptr i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !605
  %i.k = tail call ptr %i.j(ptr noundef %i.h, i64 noundef 1, i64 noundef %i.f) #55, !inline_history !609 ; 12 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_PyMem_DebugRawCalloc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.k, i64 16       ; 2 uses
  %i.n = getelementptr i8, ptr %i.k, i64 7
  %i.o = trunc i64 %i.d to i8
  store i8 %i.o, ptr %i.n, align 1, !tbaa !60
  %i.p = lshr i64 %i.d, 8
  %i.q = getelementptr i8, ptr %i.k, i64 6
  %i.r = trunc i64 %i.p to i8
  store i8 %i.r, ptr %i.q, align 1, !tbaa !60
  %i.s = lshr i64 %i.d, 16
  %i.t = getelementptr i8, ptr %i.k, i64 5
  %i.u = trunc i64 %i.s to i8
  store i8 %i.u, ptr %i.t, align 1, !tbaa !60
  %i.v = lshr i64 %i.d, 24
  %i.w = getelementptr i8, ptr %i.k, i64 4
  %i.x = trunc i64 %i.v to i8
  store i8 %i.x, ptr %i.w, align 1, !tbaa !60
  %i.y = lshr i64 %i.d, 32
  %i.z = getelementptr i8, ptr %i.k, i64 3
  %i.aa = trunc i64 %i.y to i8
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !60
  %i.ab = lshr i64 %i.d, 40
  %i.ac = getelementptr i8, ptr %i.k, i64 2
  %i.ad = trunc i64 %i.ab to i8
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !60
  %i.ae = lshr i64 %i.d, 48
  %i.af = getelementptr i8, ptr %i.k, i64 1
  %i.ag = trunc i64 %i.ae to i8
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !60
  %i.ah = lshr i64 %i.d, 56
  %i.ai = trunc nuw nsw i64 %i.ah to i8
  store i8 %i.ai, ptr %i.k, align 1, !tbaa !60
  %i.aj = load i8, ptr %0, align 8, !tbaa !604
  %i.ak = getelementptr i8, ptr %i.k, i64 8
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !60
  %i.al = getelementptr i8, ptr %i.k, i64 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.al, i8 -3, i64 7, i1 false)
  %i.am = getelementptr i8, ptr %i.m, i64 %i.d
  store i64 -144680345676153347, ptr %i.am, align 1
  br label %_PyMem_DebugRawCalloc.exit

_PyMem_DebugRawCalloc.exit:                       ; preds = %_PyMem_DebugCheckGIL.exit, %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.m, %bb.d ], [ null, %_PyMem_DebugCheckGIL.exit ], [ null, %bb.c ]
  ret ptr %.0.i.i
}

; Function Attrs: nounwind uwtable
define hidden void @_PyMem_DebugFree(ptr noundef readonly captures(none) %0, ptr noundef %1) #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !548
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_PyMem_DebugCheckGIL.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__._PyMem_DebugFree, ptr noundef nonnull @.str.163) #62
  unreachable

_PyMem_DebugCheckGIL.exit:                        ; preds = %bb.a
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %_PyMem_DebugRawFree.exit, label %bb.c

bb.c:                                             ; preds = %_PyMem_DebugCheckGIL.exit
  %i.e = getelementptr i8, ptr %1, i64 -16        ; 3 uses
  %i.f = load i8, ptr %0, align 8, !tbaa !604
  tail call fastcc void @_PyMem_DebugCheckAddress(ptr noundef nonnull @__func__._PyMem_DebugRawFree, i8 noundef signext %i.f, ptr noundef %1)
  %i.g = load i8, ptr %i.e, align 1, !tbaa !60
  %i.h = zext i8 %i.g to i64
  %.07.i.i = getelementptr i8, ptr %1, i64 -15
  %i.i = load i8, ptr %.07.i.i, align 1, !tbaa !60
  %i.j = zext i8 %i.i to i64
  %.07.1.i.i = getelementptr i8, ptr %1, i64 -14
  %i.k = shl nuw nsw i64 %i.h, 16
  %i.l = shl nuw nsw i64 %i.j, 8
  %i.m = or disjoint i64 %i.l, %i.k
  %i.n = load i8, ptr %.07.1.i.i, align 1, !tbaa !60
  %i.o = zext i8 %i.n to i64
  %i.p = or disjoint i64 %i.m, %i.o
  %.07.2.i.i = getelementptr i8, ptr %1, i64 -13
  %i.q = load i8, ptr %.07.2.i.i, align 1, !tbaa !60
  %i.r = zext i8 %i.q to i64
  %.07.3.i.i = getelementptr i8, ptr %1, i64 -12
  %i.s = load i8, ptr %.07.3.i.i, align 1, !tbaa !60
  %i.t = zext i8 %i.s to i64
  %.07.4.i.i = getelementptr i8, ptr %1, i64 -11
  %i.u = load i8, ptr %.07.4.i.i, align 1, !tbaa !60
  %i.v = zext i8 %i.u to i64
  %.07.5.i.i = getelementptr i8, ptr %1, i64 -10
  %i.w = shl nuw nsw i64 %i.p, 32
  %i.x = shl nuw nsw i64 %i.r, 24
  %i.y = shl nuw nsw i64 %i.t, 16
  %i.z = or disjoint i64 %i.y, %i.x
  %i.aa = or disjoint i64 %i.z, %i.w
  %i.ab = load i8, ptr %.07.5.i.i, align 1, !tbaa !60
  %i.ac = zext i8 %i.ab to i64
  %i.ad = or disjoint i64 %i.aa, %i.ac
  %.07.6.i.i = getelementptr i8, ptr %1, i64 -9
  %i.ae = shl nuw nsw i64 %i.v, 16
  %i.af = shl nuw i64 %i.ad, 8
  %i.ag = or disjoint i64 %i.ae, %i.af
  %i.ah = load i8, ptr %.07.6.i.i, align 1, !tbaa !60
  %i.ai = zext i8 %i.ah to i64
  %i.aj = or disjoint i64 %i.ag, %i.ai
  %i.ak = add i64 %i.aj, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.e, i8 -35, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %1, i8 -35, i64 %i.ak, i1 false)
  %i.al = getelementptr i8, ptr %0, i64 8
  %i.am = getelementptr i8, ptr %0, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !606
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !601
  tail call void %i.an(ptr noundef %i.ao, ptr noundef nonnull %i.e) #55, !inline_history !610
  br label %_PyMem_DebugRawFree.exit

_PyMem_DebugRawFree.exit:                         ; preds = %_PyMem_DebugCheckGIL.exit, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyMem_DebugRealloc(ptr noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !548
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_PyMem_DebugCheckGIL.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__._PyMem_DebugRealloc, ptr noundef nonnull @.str.163) #62
  unreachable

_PyMem_DebugCheckGIL.exit:                        ; preds = %bb.a
  %i.d = tail call ptr @_PyMem_DebugRawRealloc(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define hidden void @_PyDebugAllocatorStats(ptr noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  %i.b = alloca [128 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  %i.c = call i32 (ptr, i64, ptr, ...) @PyOS_snprintf(ptr noundef nonnull %i.a, i64 noundef 128, ptr noundef nonnull @.str.45, i32 noundef %2, ptr noundef %1, i64 noundef %3) #55 ; 0 uses
  %i.d = call i32 (ptr, i64, ptr, ...) @PyOS_snprintf(ptr noundef nonnull %i.b, i64 noundef 128, ptr noundef nonnull @.str.46, ptr noundef nonnull %i.a) #55 ; 0 uses
  %i.e = sext i32 %2 to i64
  %i.f = mul i64 %3, %i.e
  %i.g = call fastcc i64 @printone(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef %i.f) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  ret void
}

declare i32 @PyOS_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #48

; Function Attrs: nofree nounwind uwtable
define internal fastcc noundef i64 @printone(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef returned %2) unnamed_addr #30 {
bb.a:
  %i.a = alloca [100 x i8], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.b = tail call i32 @fputs(ptr noundef %1, ptr noundef %0) ; 0 uses
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #61
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = icmp slt i32 %i.d, 35
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.02934 = phi i32 [ %i.g, %.lr.ph ], [ %i.d, %bb.a ]
  %i.f = tail call i32 @fputc(i32 noundef 32, ptr noundef %0) ; 0 uses
  %i.g = add i32 %.02934, 1                       ; 2 uses
  %exitcond.not = icmp eq i32 %i.g, 35
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !611

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.h = tail call i32 @fputc(i32 noundef 61, ptr noundef %0) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  store i8 0, ptr %i.i, align 2, !tbaa !60
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 21
  store i8 10, ptr %i.j, align 1, !tbaa !60
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %._crit_edge
  %.030 = phi i32 [ 3, %._crit_edge ], [ %.131, %bb.d ]
  %.1 = phi i32 [ 20, %._crit_edge ], [ %.2, %bb.d ] ; 4 uses
  %.0 = phi i64 [ %2, %._crit_edge ], [ %i.k, %bb.d ] ; 3 uses
  %i.k = udiv i64 %.0, 10                         ; 2 uses
  %.neg = mul i64 %i.k, 246
  %i.l = add i64 %.neg, %.0
  %i.m = trunc i64 %i.l to i8
  %i.n = add i8 %i.m, 48
  %i.o = add nsw i32 %.1, -1                      ; 2 uses
  %i.p = zext nneg i32 %.1 to i64
  %i.q = getelementptr i8, ptr %i.a, i64 %i.p
  store i8 %i.n, ptr %i.q, align 1, !tbaa !60
  %i.r = add i32 %.030, -1                        ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  %i.t = icmp ugt i64 %.0, 9                      ; 2 uses
  %or.cond = select i1 %i.s, i1 %i.t, i1 false
  %i.u = icmp ne i32 %.1, 0
  %or.cond3 = and i1 %i.u, %or.cond
  br i1 %or.cond3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = add nsw i32 %.1, -2
  %i.w = zext nneg i32 %i.o to i64
  %i.x = getelementptr i8, ptr %i.a, i64 %i.w
  store i8 44, ptr %i.x, align 1, !tbaa !60
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.131 = phi i32 [ 3, %bb.c ], [ %i.r, %bb.b ]
  %.2 = phi i32 [ %i.v, %bb.c ], [ %i.o, %bb.b ]  ; 3 uses
  %i.y = icmp sgt i32 %.2, -1                     ; 2 uses
  %i.z = and i1 %i.t, %i.y
  br i1 %i.z, label %bb.b, label %.preheader, !llvm.loop !612

.preheader:                                       ; preds = %bb.d
  br i1 %i.y, label %.lr.ph36.preheader, label %._crit_edge37

.lr.ph36.preheader:                               ; preds = %.preheader
  %i.aa = add nuw i32 %.2, 1
  %i.ab = zext i32 %i.aa to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, i8 32, i64 %i.ab, i1 false), !tbaa !60
  br label %._crit_edge37

._crit_edge37:                                    ; preds = %.lr.ph36.preheader, %.preheader
  %i.ac = call i32 @fputs(ptr noundef nonnull %i.a, ptr noundef %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @_PyMem_init_obmalloc(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @_PyInterpreterState_Main() #55
  %.not = icmp eq ptr %0, %i.a
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @_PyInterpreterState_HasFeature(ptr noundef %0, i64 noundef 32) #55
  %.not7 = icmp eq i32 %i.b, 0
  br i1 %.not7, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr i8, ptr %0, i64 10952
  store ptr @obmalloc_state_main, ptr %i.c, align 8, !tbaa !554
  %.b = load i1, ptr @obmalloc_state_initialized, align 1
  br i1 %.b, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr (i8, ptr @obmalloc_state_main, i64 -16), ptr @obmalloc_state_main, align 8
  store ptr getelementptr (i8, ptr @obmalloc_state_main, i64 -16), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 8), align 8
  store ptr @obmalloc_state_main, ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 16), align 8
  store ptr @obmalloc_state_main, ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 24), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 16), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 32), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 16), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 40), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 32), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 48), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 32), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 56), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 48), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 64), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 48), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 72), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 64), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 80), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 64), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 88), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 80), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 96), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 80), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 104), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 96), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 112), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 96), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 120), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 112), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 128), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 112), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 136), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 128), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 144), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 128), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 152), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 144), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 160), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 144), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 168), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 160), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 176), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 160), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 184), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 176), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 192), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 176), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 200), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 192), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 208), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 192), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 216), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 208), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 224), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 208), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 232), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 224), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 240), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 224), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 248), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 240), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 256), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 240), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 264), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 256), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 272), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 256), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 280), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 272), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 288), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 272), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 296), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 288), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 304), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 288), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 312), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 304), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 320), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 304), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 328), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 320), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 336), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 320), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 344), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 336), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 352), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 336), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 360), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 352), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 368), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 352), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 376), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 368), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 384), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 368), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 392), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 384), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 400), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 384), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 408), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 400), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 416), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 400), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 424), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 416), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 432), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 416), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 440), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 432), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 448), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 432), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 456), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 448), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 464), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 448), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 472), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 464), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 480), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 464), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 488), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 480), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 496), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 480), ptr getelementptr inbounds nuw (i8, ptr @obmalloc_state_main, i64 504), align 8
  store i1 true, ptr @obmalloc_state_initialized, align 1
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 960), align 8, !tbaa !522
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 944), align 8, !tbaa !521
  %i.f = tail call ptr %i.d(ptr noundef %i.e, i64 noundef 1, i64 noundef 263248) #55, !inline_history !591 ; 69 uses
  %i.g = getelementptr i8, ptr %0, i64 10952
  store ptr %i.f, ptr %i.g, align 8, !tbaa !554
  %i.h = icmp eq ptr %i.f, null
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr i8, ptr %i.f, i64 -16      ; 2 uses
  %i.j = getelementptr i8, ptr %i.f, i64 16       ; 3 uses
  %i.k = getelementptr i8, ptr %i.f, i64 32       ; 3 uses
  %i.l = getelementptr i8, ptr %i.f, i64 48       ; 3 uses
  %i.m = getelementptr i8, ptr %i.f, i64 64       ; 3 uses
  %i.n = getelementptr i8, ptr %i.f, i64 80       ; 3 uses
  %i.o = getelementptr i8, ptr %i.f, i64 96       ; 3 uses
  %i.p = getelementptr i8, ptr %i.f, i64 112      ; 3 uses
  %i.q = getelementptr i8, ptr %i.f, i64 128      ; 3 uses
  %i.r = getelementptr i8, ptr %i.f, i64 144      ; 3 uses
  %i.s = getelementptr i8, ptr %i.f, i64 160      ; 3 uses
  %i.t = getelementptr i8, ptr %i.f, i64 176      ; 3 uses
  %i.u = getelementptr i8, ptr %i.f, i64 192      ; 3 uses
  %i.v = getelementptr i8, ptr %i.f, i64 208      ; 3 uses
  %i.w = getelementptr i8, ptr %i.f, i64 224      ; 3 uses
  %i.x = getelementptr i8, ptr %i.f, i64 240      ; 3 uses
  %i.y = getelementptr i8, ptr %i.f, i64 256      ; 3 uses
  %i.z = getelementptr i8, ptr %i.f, i64 272      ; 3 uses
  %i.aa = getelementptr i8, ptr %i.f, i64 288     ; 3 uses
  %i.ab = getelementptr i8, ptr %i.f, i64 304     ; 3 uses
  %i.ac = getelementptr i8, ptr %i.f, i64 320     ; 3 uses
  %i.ad = getelementptr i8, ptr %i.f, i64 336     ; 3 uses
  %i.ae = getelementptr i8, ptr %i.f, i64 352     ; 3 uses
  %i.af = getelementptr i8, ptr %i.f, i64 368     ; 3 uses
  %i.ag = getelementptr i8, ptr %i.f, i64 384     ; 3 uses
  %i.ah = getelementptr i8, ptr %i.f, i64 400     ; 3 uses
  %i.ai = getelementptr i8, ptr %i.f, i64 416     ; 3 uses
  %i.aj = getelementptr i8, ptr %i.f, i64 432     ; 3 uses
  %i.ak = getelementptr i8, ptr %i.f, i64 448     ; 3 uses
  %i.al = getelementptr i8, ptr %i.f, i64 464     ; 3 uses
end_hunk_18
begin_hunk_19_@mi_arena_try_alloc_at:bb.a
._crit_edge.thread.i81:                           ; preds = %bb.t, %bb.s, %bb.r
  %.052.ph.i82 = phi i64 [ -1, %bb.r ], [ 0, %bb.s ], [ %i.dh, %bb.t ] ; 3 uses
  %i.dw = getelementptr [8 x i8], ptr %i.cw, i64 %i.da
  %i.dx = atomicrmw or ptr %i.dw, i64 %.052.ph.i82 acq_rel, align 8
  %i.dy = and i64 %i.dx, %.052.ph.i82
  %.not3370.i84.not = icmp eq i64 %i.dy, %.052.ph.i82
  br i1 %.not3370.i84.not, label %mi_arena_try_claim.exit, label %bb.v

.lr.ph.i58:                                       ; preds = %.lr.ph.i58.prol.loopexit, %.lr.ph.i58
  %.03059.i59 = phi ptr [ %.030.i67.3, %.lr.ph.i58 ], [ %.03059.i59.unr, %.lr.ph.i58.prol.loopexit ] ; 5 uses
  %.058.i60 = phi i64 [ %i.ec, %.lr.ph.i58 ], [ %.058.i60.unr, %.lr.ph.i58.prol.loopexit ]
  %.12756.i62 = phi i1 [ %.228.i66.3, %.lr.ph.i58 ], [ %.12756.i62.unr, %.lr.ph.i58.prol.loopexit ]
  %i.dz = atomicrmw xchg ptr %.03059.i59, i64 -1 acq_rel, align 8
  %.not40.i65 = icmp ne i64 %i.dz, -1
  %.030.i67 = getelementptr i8, ptr %.03059.i59, i64 8
  %i.ea = atomicrmw xchg ptr %.030.i67, i64 -1 acq_rel, align 8
  %.not40.i65.1 = icmp ne i64 %i.ea, -1
  %.030.i67.1 = getelementptr i8, ptr %.03059.i59, i64 16
  %i.eb = atomicrmw xchg ptr %.030.i67.1, i64 -1 acq_rel, align 8
  %.not40.i65.2 = icmp ne i64 %i.eb, -1
  %.030.i67.2 = getelementptr i8, ptr %.03059.i59, i64 24
  %i.ec = add nsw i64 %.058.i60, -4               ; 2 uses
  %i.ed = atomicrmw xchg ptr %.030.i67.2, i64 -1 acq_rel, align 8
  %.not40.i65.3 = icmp ne i64 %i.ed, -1
  %i.ee = select i1 %.not40.i65.3, i1 true, i1 %.not40.i65.2
  %i.ef = select i1 %i.ee, i1 true, i1 %.not40.i65.1
  %i.eg = select i1 %i.ef, i1 true, i1 %.not40.i65
  %.228.i66.3 = select i1 %i.eg, i1 true, i1 %.12756.i62 ; 2 uses
  %.030.i67.3 = getelementptr i8, ptr %.03059.i59, i64 32 ; 2 uses
  %.not34.i68.3 = icmp eq i64 %i.ec, 0
  br i1 %.not34.i68.3, label %._crit_edge.i69, label %.lr.ph.i58, !llvm.loop !143

._crit_edge.i69:                                  ; preds = %.lr.ph.i58.prol.loopexit, %.lr.ph.i58, %mi_bitmap_mask_.exit24.i.i49
  %.127.lcssa.i70 = phi i1 [ %.not33.i54, %mi_bitmap_mask_.exit24.i.i49 ], [ %.228.i66.lcssa.unr, %.lr.ph.i58.prol.loopexit ], [ %.228.i66.3, %.lr.ph.i58 ] ; 2 uses
  %.030.lcssa.i72 = phi ptr [ %.03054.i56, %mi_bitmap_mask_.exit24.i.i49 ], [ %.030.i67.lcssa.unr, %.lr.ph.i58.prol.loopexit ], [ %.030.i67.3, %.lr.ph.i58 ]
  %.not35.i73 = icmp eq i64 %i.do, 0
  br i1 %.not35.i73, label %_mi_bitmap_claim_across.exit86, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i69
  %i.eh = atomicrmw or ptr %.030.lcssa.i72, i64 %i.dp acq_rel, align 8
  %i.ei = or i64 %i.eh, %notmask.i25.i.i52
  %.not37.i76 = icmp ne i64 %i.ei, -1
  %spec.select43.i77 = select i1 %.not37.i76, i1 true, i1 %.127.lcssa.i70
  br i1 %spec.select43.i77, label %bb.v, label %mi_arena_try_claim.exit

_mi_bitmap_claim_across.exit86:                   ; preds = %._crit_edge.i69
  br i1 %.127.lcssa.i70, label %bb.v, label %mi_arena_try_claim.exit

bb.v:                                             ; preds = %._crit_edge.thread.i81, %bb.u, %_mi_bitmap_claim_across.exit86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  store i8 0, ptr %i.b, align 1, !tbaa !125
  %i.ej = shl i64 %1, 25
  %i.ek = call zeroext i1 @_mi_os_commit(ptr noundef %i.m, i64 noundef %i.ej, ptr noundef nonnull %i.b, ptr poison)
  br i1 %i.ek, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 0, ptr %i.cz, align 1, !tbaa !162
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.el = load i8, ptr %i.b, align 1, !tbaa !125, !range !42, !noundef !43
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.en = getelementptr i8, ptr %3, i64 18
  store i8 1, ptr %i.en, align 2, !tbaa !163
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  br label %mi_arena_try_claim.exit

bb.aa:                                            ; preds = %bb.p
  %i.eo = lshr i64 %i.q, 6                        ; 2 uses
  %i.ep = and i64 %i.q, 63                        ; 5 uses
  %i.eq = add nuw nsw i64 %i.ep, %1
  %i.er = icmp samesign ult i64 %i.eq, 65
  br i1 %i.er, label %bb.ab, label %mi_bitmap_mask_.exit24.i.i.i, !prof !55

bb.ab:                                            ; preds = %bb.aa
  %i.es = icmp samesign ugt i64 %1, 63
  br i1 %i.es, label %._crit_edge.thread.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.et = icmp eq i64 %1, 0
  br i1 %i.et, label %._crit_edge.thread.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %notmask.i.i.i.i = shl nsw i64 -1, %1
  %i.eu = xor i64 %notmask.i.i.i.i, -1
  %i.ev = shl i64 %i.eu, %i.ep
  br label %._crit_edge.thread.i.i

mi_bitmap_mask_.exit24.i.i.i:                     ; preds = %bb.aa
  %i.ew = sub nuw nsw i64 64, %i.ep               ; 2 uses
  %i.ex = icmp eq i64 %i.ep, 0
  %notmask.i22.i.i.i = shl nsw i64 -1, %i.ew
  %i.ey = xor i64 %notmask.i22.i.i.i, -1
  %i.ez = shl i64 %i.ey, %i.ep
  %.0.i23.i.i.i = select i1 %i.ex, i64 -1, i64 %i.ez ; 2 uses
  %i.fa = sub nsw i64 %1, %i.ew                   ; 3 uses
  %i.fb = lshr i64 %i.fa, 6                       ; 4 uses
  %i.fc = and i64 %i.fa, 63                       ; 2 uses
  %notmask.i25.i.i.i = shl nsw i64 -1, %i.fc
  %i.fd = getelementptr [8 x i8], ptr %i.cw, i64 %i.eo ; 2 uses
  %i.fe = load atomic i64, ptr %i.fd monotonic, align 8
  %i.ff = and i64 %i.fe, %.0.i23.i.i.i
  %.not.i.i = icmp eq i64 %i.ff, %.0.i23.i.i.i    ; 3 uses
  %.02748.i.i = getelementptr i8, ptr %i.fd, i64 8 ; 3 uses
  %.not3049.i.i = icmp eq i64 %i.fb, 0
  br i1 %.not3049.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %mi_bitmap_mask_.exit24.i.i.i
  %xtraiter4 = and i64 %i.fb, 3                   ; 2 uses
  %lcmp.mod5.not = icmp eq i64 %xtraiter4, 0
  br i1 %lcmp.mod5.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.02753.i.i.prol = phi ptr [ %.027.i.i.prol, %.lr.ph.i.i.prol ], [ %.02748.i.i, %.lr.ph.i.i.preheader ] ; 2 uses
  %.052.i.i.prol = phi i64 [ %i.fg, %.lr.ph.i.i.prol ], [ %i.fb, %.lr.ph.i.i.preheader ]
  %.151.i.i.prol = phi i1 [ %spec.select37.i.i.prol, %.lr.ph.i.i.prol ], [ %.not.i.i, %.lr.ph.i.i.preheader ]
  %prol.iter6 = phi i64 [ %prol.iter6.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.fg = add nsw i64 %.052.i.i.prol, -1          ; 2 uses
  %i.fh = load atomic i64, ptr %.02753.i.i.prol monotonic, align 8
  %.not35.i.i.prol = icmp eq i64 %i.fh, -1
  %spec.select37.i.i.prol = select i1 %.not35.i.i.prol, i1 %.151.i.i.prol, i1 false ; 3 uses
  %.027.i.i.prol = getelementptr i8, ptr %.02753.i.i.prol, i64 8 ; 3 uses
  %prol.iter6.next = add i64 %prol.iter6, 1       ; 2 uses
  %prol.iter6.cmp.not = icmp eq i64 %prol.iter6.next, %xtraiter4
  br i1 %prol.iter6.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !628

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %spec.select37.i.i.lcssa.unr = phi i1 [ poison, %.lr.ph.i.i.preheader ], [ %spec.select37.i.i.prol, %.lr.ph.i.i.prol ]
  %.027.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.027.i.i.prol, %.lr.ph.i.i.prol ]
  %.02753.i.i.unr = phi ptr [ %.02748.i.i, %.lr.ph.i.i.preheader ], [ %.027.i.i.prol, %.lr.ph.i.i.prol ]
  %.052.i.i.unr = phi i64 [ %i.fb, %.lr.ph.i.i.preheader ], [ %i.fg, %.lr.ph.i.i.prol ]
  %.151.i.i.unr = phi i1 [ %.not.i.i, %.lr.ph.i.i.preheader ], [ %spec.select37.i.i.prol, %.lr.ph.i.i.prol ]
  %i.fi = icmp ult i64 %i.fa, 256
  br i1 %i.fi, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.ad, %bb.ac, %bb.ab
  %.046.ph.i.i = phi i64 [ -1, %bb.ab ], [ 0, %bb.ac ], [ %i.ev, %bb.ad ] ; 2 uses
  %i.fj = getelementptr [8 x i8], ptr %i.cw, i64 %i.eo
  %i.fk = load atomic i64, ptr %i.fj monotonic, align 8
  %i.fl = and i64 %i.fk, %.046.ph.i.i
  %.not63.i.i = icmp eq i64 %i.fl, %.046.ph.i.i
  br label %_mi_bitmap_is_claimed_across.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.02753.i.i = phi ptr [ %.027.i.i.3, %.lr.ph.i.i ], [ %.02753.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.052.i.i = phi i64 [ %i.fp, %.lr.ph.i.i ], [ %.052.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.151.i.i = phi i1 [ %spec.select37.i.i.3, %.lr.ph.i.i ], [ %.151.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.fm = load atomic i64, ptr %.02753.i.i monotonic, align 8
  %.not35.i.i = icmp eq i64 %i.fm, -1
  %.027.i.i = getelementptr i8, ptr %.02753.i.i, i64 8
  %i.fn = load atomic i64, ptr %.027.i.i monotonic, align 8
  %.not35.i.i.1 = icmp eq i64 %i.fn, -1
  %.027.i.i.1 = getelementptr i8, ptr %.02753.i.i, i64 16
  %i.fo = load atomic i64, ptr %.027.i.i.1 monotonic, align 8
  %.not35.i.i.2 = icmp eq i64 %i.fo, -1
  %.027.i.i.2 = getelementptr i8, ptr %.02753.i.i, i64 24
  %i.fp = add nsw i64 %.052.i.i, -4               ; 2 uses
  %i.fq = load atomic i64, ptr %.027.i.i.2 monotonic, align 8
  %.not35.i.i.3 = icmp eq i64 %i.fq, -1
  %i.fr = select i1 %.not35.i.i.3, i1 %.not35.i.i.2, i1 false
  %i.fs = select i1 %i.fr, i1 %.not35.i.i.1, i1 false
  %i.ft = select i1 %i.fs, i1 %.not35.i.i, i1 false
  %spec.select37.i.i.3 = select i1 %i.ft, i1 %.151.i.i, i1 false ; 2 uses
  %.027.i.i.3 = getelementptr i8, ptr %.02753.i.i, i64 32 ; 2 uses
  %.not30.i.i.3 = icmp eq i64 %i.fp, 0
  br i1 %.not30.i.i.3, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !191

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %mi_bitmap_mask_.exit24.i.i.i
  %.1.lcssa.i.i = phi i1 [ %.not.i.i, %mi_bitmap_mask_.exit24.i.i.i ], [ %spec.select37.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %spec.select37.i.i.3, %.lr.ph.i.i ] ; 2 uses
  %.027.lcssa.i.i = phi ptr [ %.02748.i.i, %mi_bitmap_mask_.exit24.i.i.i ], [ %.027.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %.027.i.i.3, %.lr.ph.i.i ]
  %.not31.i.i = icmp eq i64 %i.fc, 0
  br i1 %.not31.i.i, label %_mi_bitmap_is_claimed_across.exit, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge.i.i
  %i.fu = load atomic i64, ptr %.027.lcssa.i.i monotonic, align 8
  %i.fv = or i64 %i.fu, %notmask.i25.i.i.i
  %.not32.i.i = icmp eq i64 %i.fv, -1
  %spec.select38.i.i = select i1 %.not32.i.i, i1 %.1.lcssa.i.i, i1 false
  br label %_mi_bitmap_is_claimed_across.exit

_mi_bitmap_is_claimed_across.exit:                ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %bb.ae
  %.4.i.i = phi i1 [ %.1.lcssa.i.i, %._crit_edge.i.i ], [ %spec.select38.i.i, %bb.ae ], [ %.not63.i.i, %._crit_edge.thread.i.i ]
  %i.fw = getelementptr i8, ptr %3, i64 17
  %i.fx = zext i1 %.4.i.i to i8
  store i8 %i.fx, ptr %i.fw, align 1, !tbaa !162
  br label %mi_arena_try_claim.exit

mi_arena_try_claim.exit:                          ; preds = %._crit_edge.thread.i81, %bb.u, %_mi_bitmap_claim_across.exit86, %bb.z, %bb.a, %bb.o, %_mi_bitmap_is_claimed_across.exit
  %.0 = phi ptr [ %i.m, %bb.o ], [ null, %bb.a ], [ %i.m, %_mi_bitmap_is_claimed_across.exit ], [ %i.m, %bb.z ], [ %i.m, %_mi_bitmap_claim_across.exit86 ], [ %i.m, %bb.u ], [ %i.m, %._crit_edge.thread.i81 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mi_arena_purge(ptr noundef nonnull readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noundef captures(address) %3) unnamed_addr #2 {
bb.a:
  %i.a = shl i64 %2, 25                           ; 12 uses
  %i.b = getelementptr i8, ptr %0, i64 32
  %i.c = load atomic ptr, ptr %i.b seq_cst, align 8, !tbaa !98
  %i.d = shl i64 %1, 25
  %i.e = getelementptr i8, ptr %i.c, i64 %i.d     ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 120        ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !133  ; 2 uses
  %i.h = lshr i64 %1, 6                           ; 7 uses
  %i.i = and i64 %1, 63                           ; 10 uses
  %i.j = add i64 %i.i, %2
  %i.k = icmp ult i64 %i.j, 65                    ; 2 uses
  br i1 %i.k, label %bb.b, label %mi_bitmap_mask_.exit24.i.i.i, !prof !55

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %2, 63
  br i1 %i.l, label %._crit_edge.thread.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp eq i64 %2, 0
  br i1 %i.m, label %._crit_edge.thread.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %notmask.i.i.i.i = shl nsw i64 -1, %2
  %i.n = xor i64 %notmask.i.i.i.i, -1
  %i.o = shl i64 %i.n, %i.i
  br label %._crit_edge.thread.i.i

mi_bitmap_mask_.exit24.i.i.i:                     ; preds = %bb.a
  %i.p = sub nuw nsw i64 64, %i.i                 ; 2 uses
  %i.q = icmp eq i64 %i.i, 0
  %notmask.i22.i.i.i = shl nsw i64 -1, %i.p
  %i.r = xor i64 %notmask.i22.i.i.i, -1
  %i.s = shl i64 %i.r, %i.i
  %.0.i23.i.i.i = select i1 %i.q, i64 -1, i64 %i.s ; 2 uses
  %i.t = sub i64 %2, %i.p                         ; 3 uses
  %i.u = lshr i64 %i.t, 6                         ; 4 uses
  %i.v = and i64 %i.t, 63                         ; 2 uses
  %notmask.i25.i.i.i = shl nsw i64 -1, %i.v
  %i.w = getelementptr [8 x i8], ptr %i.g, i64 %i.h ; 2 uses
  %i.x = load atomic i64, ptr %i.w monotonic, align 8
  %i.y = and i64 %i.x, %.0.i23.i.i.i
  %.not.i.i = icmp eq i64 %i.y, %.0.i23.i.i.i     ; 3 uses
  %.02748.i.i = getelementptr i8, ptr %i.w, i64 8 ; 3 uses
  %.not3049.i.i = icmp eq i64 %i.u, 0
  br i1 %.not3049.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %mi_bitmap_mask_.exit24.i.i.i
  %xtraiter = and i64 %i.u, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.02753.i.i.prol = phi ptr [ %.027.i.i.prol, %.lr.ph.i.i.prol ], [ %.02748.i.i, %.lr.ph.i.i.preheader ] ; 2 uses
  %.052.i.i.prol = phi i64 [ %i.z, %.lr.ph.i.i.prol ], [ %i.u, %.lr.ph.i.i.preheader ]
  %.151.i.i.prol = phi i1 [ %spec.select37.i.i.prol, %.lr.ph.i.i.prol ], [ %.not.i.i, %.lr.ph.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.z = add nsw i64 %.052.i.i.prol, -1           ; 2 uses
  %i.aa = load atomic i64, ptr %.02753.i.i.prol monotonic, align 8
  %.not35.i.i.prol = icmp eq i64 %i.aa, -1
  %spec.select37.i.i.prol = select i1 %.not35.i.i.prol, i1 %.151.i.i.prol, i1 false ; 3 uses
  %.027.i.i.prol = getelementptr i8, ptr %.02753.i.i.prol, i64 8 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !629

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %spec.select37.i.i.lcssa.unr = phi i1 [ poison, %.lr.ph.i.i.preheader ], [ %spec.select37.i.i.prol, %.lr.ph.i.i.prol ]
  %.027.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.027.i.i.prol, %.lr.ph.i.i.prol ]
  %.02753.i.i.unr = phi ptr [ %.02748.i.i, %.lr.ph.i.i.preheader ], [ %.027.i.i.prol, %.lr.ph.i.i.prol ]
  %.052.i.i.unr = phi i64 [ %i.u, %.lr.ph.i.i.preheader ], [ %i.z, %.lr.ph.i.i.prol ]
  %.151.i.i.unr = phi i1 [ %.not.i.i, %.lr.ph.i.i.preheader ], [ %spec.select37.i.i.prol, %.lr.ph.i.i.prol ]
  %i.ab = icmp ult i64 %i.t, 256
  br i1 %i.ab, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.d, %bb.c, %bb.b
  %.046.ph.i.i = phi i64 [ -1, %bb.b ], [ 0, %bb.c ], [ %i.o, %bb.d ] ; 2 uses
  %i.ac = getelementptr [8 x i8], ptr %i.g, i64 %i.h
  %i.ad = load atomic i64, ptr %i.ac monotonic, align 8
  %i.ae = and i64 %i.ad, %.046.ph.i.i
  %.not63.i.i = icmp eq i64 %i.ae, %.046.ph.i.i
  br i1 %.not63.i.i, label %bb.f, label %bb.g

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.02753.i.i = phi ptr [ %.027.i.i.3, %.lr.ph.i.i ], [ %.02753.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.052.i.i = phi i64 [ %i.ai, %.lr.ph.i.i ], [ %.052.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.151.i.i = phi i1 [ %spec.select37.i.i.3, %.lr.ph.i.i ], [ %.151.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.af = load atomic i64, ptr %.02753.i.i monotonic, align 8
  %.not35.i.i = icmp eq i64 %i.af, -1
  %.027.i.i = getelementptr i8, ptr %.02753.i.i, i64 8
  %i.ag = load atomic i64, ptr %.027.i.i monotonic, align 8
  %.not35.i.i.1 = icmp eq i64 %i.ag, -1
  %.027.i.i.1 = getelementptr i8, ptr %.02753.i.i, i64 16
  %i.ah = load atomic i64, ptr %.027.i.i.1 monotonic, align 8
  %.not35.i.i.2 = icmp eq i64 %i.ah, -1
  %.027.i.i.2 = getelementptr i8, ptr %.02753.i.i, i64 24
  %i.ai = add nsw i64 %.052.i.i, -4               ; 2 uses
  %i.aj = load atomic i64, ptr %.027.i.i.2 monotonic, align 8
  %.not35.i.i.3 = icmp eq i64 %i.aj, -1
  %i.ak = select i1 %.not35.i.i.3, i1 %.not35.i.i.2, i1 false
  %i.al = select i1 %i.ak, i1 %.not35.i.i.1, i1 false
  %i.am = select i1 %i.al, i1 %.not35.i.i, i1 false
  %spec.select37.i.i.3 = select i1 %i.am, i1 %.151.i.i, i1 false ; 2 uses
  %.027.i.i.3 = getelementptr i8, ptr %.02753.i.i, i64 32 ; 2 uses
  %.not30.i.i.3 = icmp eq i64 %i.ai, 0
  br i1 %.not30.i.i.3, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !191

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %mi_bitmap_mask_.exit24.i.i.i
  %.1.lcssa.i.i = phi i1 [ %.not.i.i, %mi_bitmap_mask_.exit24.i.i.i ], [ %spec.select37.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %spec.select37.i.i.3, %.lr.ph.i.i ] ; 2 uses
  %.027.lcssa.i.i = phi ptr [ %.02748.i.i, %mi_bitmap_mask_.exit24.i.i.i ], [ %.027.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %.027.i.i.3, %.lr.ph.i.i ]
  %.not31.i.i = icmp eq i64 %i.v, 0
  br i1 %.not31.i.i, label %_mi_bitmap_is_claimed_across.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.an = load atomic i64, ptr %.027.lcssa.i.i monotonic, align 8
  %i.ao = or i64 %i.an, %notmask.i25.i.i.i
  %.not32.i.i = icmp eq i64 %i.ao, -1
  %spec.select38.i.i = select i1 %.not32.i.i, i1 %.1.lcssa.i.i, i1 false
  br i1 %spec.select38.i.i, label %bb.f, label %bb.g

_mi_bitmap_is_claimed_across.exit:                ; preds = %._crit_edge.i.i
  br i1 %.1.lcssa.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.thread.i.i, %bb.e, %_mi_bitmap_is_claimed_across.exit
  %i.ap = tail call noundef zeroext i1 @_mi_os_purge_ex(ptr noundef %i.e, i64 noundef %i.a, i1 noundef zeroext true, ptr noundef %3)
  br label %_mi_stat_increase.exit

bb.g:                                             ; preds = %._crit_edge.thread.i.i, %bb.e, %_mi_bitmap_is_claimed_across.exit
  %i.aq = tail call zeroext i1 @_mi_os_purge_ex(ptr noundef %i.e, i64 noundef %i.a, i1 noundef zeroext false, ptr noundef %3) ; 5 uses
  %i.ar = getelementptr i8, ptr %3, i64 96        ; 5 uses
  %i.as = icmp eq i64 %i.a, 0
  br i1 %i.as, label %_mi_stat_increase.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = icmp uge ptr %i.ar, @_mi_stats_main
  %i.au = icmp ult ptr %i.ar, getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 640)
  %i.av = select i1 %i.at, i1 %i.au, i1 false
  %i.aw = getelementptr i8, ptr %3, i64 120       ; 3 uses
  br i1 %i.av, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.ax = atomicrmw add ptr %i.aw, i64 %i.a monotonic, align 8
  %i.ay = getelementptr i8, ptr %3, i64 112       ; 2 uses
  %i.az = add i64 %i.ax, %i.a                     ; 2 uses
  %i.ba = load atomic i64, ptr %i.ay monotonic, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.0.i.i.i = phi i64 [ %i.ba, %bb.i ], [ %i.be, %bb.k ] ; 2 uses
  %i.bb = icmp slt i64 %.0.i.i.i, %i.az
  br i1 %i.bb, label %bb.k, label %mi_atomic_maxi64_relaxed.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.bc = cmpxchg weak ptr %i.ay, i64 %.0.i.i.i, i64 %i.az release monotonic, align 8 ; 2 uses
  %i.bd = extractvalue { i64, i1 } %i.bc, 1
  %i.be = extractvalue { i64, i1 } %i.bc, 0
  br i1 %i.bd, label %mi_atomic_maxi64_relaxed.exit.i.i, label %bb.j, !llvm.loop !124

mi_atomic_maxi64_relaxed.exit.i.i:                ; preds = %bb.k, %bb.j
  %i.bf = icmp sgt i64 %i.a, 0
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %mi_atomic_maxi64_relaxed.exit.i.i
  %i.bg = atomicrmw add ptr %i.ar, i64 %i.a monotonic, align 8 ; 0 uses
  br label %_mi_stat_increase.exit

bb.m:                                             ; preds = %mi_atomic_maxi64_relaxed.exit.i.i
  %i.bh = getelementptr i8, ptr %3, i64 104
  %i.bi = atomicrmw sub ptr %i.bh, i64 %i.a monotonic, align 8 ; 0 uses
  br label %_mi_stat_increase.exit

bb.n:                                             ; preds = %bb.h
  %i.bj = load i64, ptr %i.aw, align 8, !tbaa !127
  %i.bk = add i64 %i.bj, %i.a                     ; 3 uses
  store i64 %i.bk, ptr %i.aw, align 8, !tbaa !127
  %i.bl = getelementptr i8, ptr %3, i64 112       ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !128
  %i.bn = icmp sgt i64 %i.bk, %i.bm
  br i1 %i.bn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !128
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bo = icmp sgt i64 %i.a, 0
  br i1 %i.bo, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bp = load i64, ptr %i.ar, align 8, !tbaa !129
  %i.bq = add i64 %i.bp, %i.a
  store i64 %i.bq, ptr %i.ar, align 8, !tbaa !129
  br label %_mi_stat_increase.exit

bb.r:                                             ; preds = %bb.p
  %i.br = getelementptr i8, ptr %3, i64 104       ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !130
  %i.bt = sub i64 %i.bs, %i.a
  store i64 %i.bt, ptr %i.br, align 8, !tbaa !130
  br label %_mi_stat_increase.exit

_mi_stat_increase.exit:                           ; preds = %bb.r, %bb.q, %bb.m, %bb.l, %bb.g, %bb.f
  %.0.in = phi i1 [ %i.ap, %bb.f ], [ %i.aq, %bb.g ], [ %i.aq, %bb.l ], [ %i.aq, %bb.m ], [ %i.aq, %bb.q ], [ %i.aq, %bb.r ] ; 3 uses
  %i.bu = getelementptr i8, ptr %0, i64 128
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !141 ; 3 uses
  br i1 %i.k, label %bb.s, label %mi_bitmap_mask_.exit24.i.i, !prof !55

bb.s:                                             ; preds = %_mi_stat_increase.exit
  %i.bw = icmp ugt i64 %2, 63
  br i1 %i.bw, label %_mi_bitmap_unclaim_across.exit.thread.thread, label %_mi_bitmap_unclaim_across.exit.thread

_mi_bitmap_unclaim_across.exit.thread:            ; preds = %bb.s
  %i.bx = icmp eq i64 %2, 0
  %notmask.i.i.i = shl nsw i64 -1, %2
  %i.by = xor i64 %notmask.i.i.i, -1
  %i.bz = shl i64 %i.by, %i.i
  %i.ca = xor i64 %i.bz, -1
  %.033.ph.i = select i1 %i.bx, i64 -1, i64 %i.ca
  %i.cb = getelementptr [8 x i8], ptr %i.bv, i64 %i.h
  %i.cc = atomicrmw and ptr %i.cb, i64 %.033.ph.i acq_rel, align 8 ; 0 uses
  br i1 %.0.in, label %.thread, label %_mi_bitmap_unclaim_across.exit49

mi_bitmap_mask_.exit24.i.i:                       ; preds = %_mi_stat_increase.exit
  %i.cd = sub nuw nsw i64 64, %i.i                ; 2 uses
  %i.ce = icmp eq i64 %i.i, 0
  %notmask.i22.i.i = shl nsw i64 -1, %i.cd
  %i.cf = xor i64 %notmask.i22.i.i, -1
  %i.cg = shl i64 %i.cf, %i.i
  %i.ch = sub i64 %2, %i.cd                       ; 4 uses
  %i.ci = lshr i64 %i.ch, 6                       ; 7 uses
  %i.cj = and i64 %i.ch, 63                       ; 2 uses
  %notmask.i25.i.i = shl nsw i64 -1, %i.cj        ; 2 uses
  %i.ck = getelementptr [8 x i8], ptr %i.bv, i64 %i.h ; 2 uses
  %i.cl = xor i64 %i.cg, -1
  %i.cm = select i1 %i.ce, i64 0, i64 %i.cl       ; 2 uses
  %i.cn = atomicrmw and ptr %i.ck, i64 %i.cm acq_rel, align 8 ; 0 uses
  %.02035.i = getelementptr i8, ptr %i.ck, i64 8  ; 3 uses
  %.not2236.i = icmp eq i64 %i.ci, 0              ; 2 uses
  br i1 %.not2236.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %mi_bitmap_mask_.exit24.i.i
  %xtraiter57 = and i64 %i.ci, 7                  ; 2 uses
  %lcmp.mod58.not = icmp eq i64 %xtraiter57, 0
  br i1 %lcmp.mod58.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.02039.i.prol = phi ptr [ %.020.i.prol, %.lr.ph.i.prol ], [ %.02035.i, %.lr.ph.i.preheader ] ; 2 uses
  %.038.i.prol = phi i64 [ %i.co, %.lr.ph.i.prol ], [ %i.ci, %.lr.ph.i.preheader ]
  %prol.iter59 = phi i64 [ %prol.iter59.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.co = add nsw i64 %.038.i.prol, -1            ; 2 uses
  %i.cp = atomicrmw xchg ptr %.02039.i.prol, i64 0 acq_rel, align 8 ; 0 uses
  %.020.i.prol = getelementptr i8, ptr %.02039.i.prol, i64 8 ; 3 uses
  %prol.iter59.next = add i64 %prol.iter59, 1     ; 2 uses
  %prol.iter59.cmp.not = icmp eq i64 %prol.iter59.next, %xtraiter57
  br i1 %prol.iter59.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !630

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.020.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.020.i.prol, %.lr.ph.i.prol ]
  %.02039.i.unr = phi ptr [ %.02035.i, %.lr.ph.i.preheader ], [ %.020.i.prol, %.lr.ph.i.prol ]
  %.038.i.unr = phi i64 [ %i.ci, %.lr.ph.i.preheader ], [ %i.co, %.lr.ph.i.prol ]
  %i.cq = icmp ult i64 %i.ch, 512
  br i1 %i.cq, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.02039.i = phi ptr [ %.020.i.7, %.lr.ph.i ], [ %.02039.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.038.i = phi i64 [ %i.cy, %.lr.ph.i ], [ %.038.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.cr = atomicrmw xchg ptr %.02039.i, i64 0 acq_rel, align 8 ; 0 uses
  %.020.i = getelementptr i8, ptr %.02039.i, i64 8
  %i.cs = atomicrmw xchg ptr %.020.i, i64 0 acq_rel, align 8 ; 0 uses
  %.020.i.1 = getelementptr i8, ptr %.02039.i, i64 16
  %i.ct = atomicrmw xchg ptr %.020.i.1, i64 0 acq_rel, align 8 ; 0 uses
  %.020.i.2 = getelementptr i8, ptr %.02039.i, i64 24
  %i.cu = atomicrmw xchg ptr %.020.i.2, i64 0 acq_rel, align 8 ; 0 uses
  %.020.i.3 = getelementptr i8, ptr %.02039.i, i64 32
  %i.cv = atomicrmw xchg ptr %.020.i.3, i64 0 acq_rel, align 8 ; 0 uses
  %.020.i.4 = getelementptr i8, ptr %.02039.i, i64 40
  %i.cw = atomicrmw xchg ptr %.020.i.4, i64 0 acq_rel, align 8 ; 0 uses
  %.020.i.5 = getelementptr i8, ptr %.02039.i, i64 48
  %i.cx = atomicrmw xchg ptr %.020.i.5, i64 0 acq_rel, align 8 ; 0 uses
  %.020.i.6 = getelementptr i8, ptr %.02039.i, i64 56
  %i.cy = add nsw i64 %.038.i, -8                 ; 2 uses
  %i.cz = atomicrmw xchg ptr %.020.i.6, i64 0 acq_rel, align 8 ; 0 uses
  %.020.i.7 = getelementptr i8, ptr %.02039.i, i64 64 ; 2 uses
  %.not22.i.7 = icmp eq i64 %i.cy, 0
  br i1 %.not22.i.7, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !136

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %mi_bitmap_mask_.exit24.i.i
  %.020.lcssa.i = phi ptr [ %.02035.i, %mi_bitmap_mask_.exit24.i.i ], [ %.020.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.020.i.7, %.lr.ph.i ]
  %.not23.i = icmp eq i64 %i.cj, 0                ; 2 uses
  br i1 %.not23.i, label %_mi_bitmap_unclaim_across.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.i
  %i.da = atomicrmw and ptr %.020.lcssa.i, i64 %notmask.i25.i.i acq_rel, align 8 ; 0 uses
  br label %_mi_bitmap_unclaim_across.exit

_mi_bitmap_unclaim_across.exit:                   ; preds = %._crit_edge.i, %bb.t
  br i1 %.0.in, label %mi_bitmap_mask_.exit24.i.i23, label %_mi_bitmap_unclaim_across.exit49

_mi_bitmap_unclaim_across.exit.thread.thread:     ; preds = %bb.s
  %i.db = getelementptr [8 x i8], ptr %i.bv, i64 %i.h
  %i.dc = atomicrmw xchg ptr %i.db, i64 0 acq_rel, align 8 ; 0 uses
  br i1 %.0.in, label %.thread.thread, label %_mi_bitmap_unclaim_across.exit49

.thread.thread:                                   ; preds = %_mi_bitmap_unclaim_across.exit.thread.thread
  %i.dd = load ptr, ptr %i.f, align 8, !tbaa !133
  br label %._crit_edge.thread.i46

.thread:                                          ; preds = %_mi_bitmap_unclaim_across.exit.thread
  %i.de = load ptr, ptr %i.f, align 8, !tbaa !133 ; 2 uses
  %i.df = icmp eq i64 %2, 0
  br i1 %i.df, label %._crit_edge.thread.i46, label %bb.u

bb.u:                                             ; preds = %.thread
  %notmask.i.i.i45 = shl nsw i64 -1, %2
  %i.dg = xor i64 %notmask.i.i.i45, -1
  %i.dh = shl i64 %i.dg, %i.i
  %i.di = xor i64 %i.dh, -1
  br label %._crit_edge.thread.i46

mi_bitmap_mask_.exit24.i.i23:                     ; preds = %_mi_bitmap_unclaim_across.exit
  %i.dj = load ptr, ptr %i.f, align 8, !tbaa !133
  %i.dk = getelementptr [8 x i8], ptr %i.dj, i64 %i.h ; 2 uses
  %i.dl = atomicrmw and ptr %i.dk, i64 %i.cm acq_rel, align 8 ; 0 uses
  %.02035.i28 = getelementptr i8, ptr %i.dk, i64 8 ; 3 uses
  br i1 %.not2236.i, label %._crit_edge.i38, label %.lr.ph.i30.preheader

.lr.ph.i30.preheader:                             ; preds = %mi_bitmap_mask_.exit24.i.i23
  %xtraiter60 = and i64 %i.ci, 7                  ; 2 uses
  %lcmp.mod61.not = icmp eq i64 %xtraiter60, 0
  br i1 %lcmp.mod61.not, label %.lr.ph.i30.prol.loopexit, label %.lr.ph.i30.prol

.lr.ph.i30.prol:                                  ; preds = %.lr.ph.i30.preheader, %.lr.ph.i30.prol
  %.02039.i31.prol = phi ptr [ %.020.i36.prol, %.lr.ph.i30.prol ], [ %.02035.i28, %.lr.ph.i30.preheader ] ; 2 uses
  %.038.i32.prol = phi i64 [ %i.dm, %.lr.ph.i30.prol ], [ %i.ci, %.lr.ph.i30.preheader ]
  %prol.iter62 = phi i64 [ %prol.iter62.next, %.lr.ph.i30.prol ], [ 0, %.lr.ph.i30.preheader ]
  %i.dm = add nsw i64 %.038.i32.prol, -1          ; 2 uses
  %i.dn = atomicrmw xchg ptr %.02039.i31.prol, i64 0 acq_rel, align 8 ; 0 uses
  %.020.i36.prol = getelementptr i8, ptr %.02039.i31.prol, i64 8 ; 3 uses
  %prol.iter62.next = add i64 %prol.iter62, 1     ; 2 uses
  %prol.iter62.cmp.not = icmp eq i64 %prol.iter62.next, %xtraiter60
  br i1 %prol.iter62.cmp.not, label %.lr.ph.i30.prol.loopexit, label %.lr.ph.i30.prol, !llvm.loop !631

.lr.ph.i30.prol.loopexit:                         ; preds = %.lr.ph.i30.prol, %.lr.ph.i30.preheader
  %.020.i36.lcssa.unr = phi ptr [ poison, %.lr.ph.i30.preheader ], [ %.020.i36.prol, %.lr.ph.i30.prol ]
  %.02039.i31.unr = phi ptr [ %.02035.i28, %.lr.ph.i30.preheader ], [ %.020.i36.prol, %.lr.ph.i30.prol ]
  %.038.i32.unr = phi i64 [ %i.ci, %.lr.ph.i30.preheader ], [ %i.dm, %.lr.ph.i30.prol ]
  %i.do = icmp ult i64 %i.ch, 512
  br i1 %i.do, label %._crit_edge.i38, label %.lr.ph.i30

._crit_edge.thread.i46:                           ; preds = %.thread.thread, %bb.u, %.thread
  %i.dp = phi ptr [ %i.dd, %.thread.thread ], [ %i.de, %.thread ], [ %i.de, %bb.u ]
  %.033.ph.i47 = phi i64 [ 0, %.thread.thread ], [ -1, %.thread ], [ %i.di, %bb.u ]
  %i.dq = getelementptr [8 x i8], ptr %i.dp, i64 %i.h
  %i.dr = atomicrmw and ptr %i.dq, i64 %.033.ph.i47 acq_rel, align 8 ; 0 uses
  br label %_mi_bitmap_unclaim_across.exit49

.lr.ph.i30:                                       ; preds = %.lr.ph.i30.prol.loopexit, %.lr.ph.i30
  %.02039.i31 = phi ptr [ %.020.i36.7, %.lr.ph.i30 ], [ %.02039.i31.unr, %.lr.ph.i30.prol.loopexit ] ; 9 uses
  %.038.i32 = phi i64 [ %i.dz, %.lr.ph.i30 ], [ %.038.i32.unr, %.lr.ph.i30.prol.loopexit ]
  %i.ds = atomicrmw xchg ptr %.02039.i31, i64 0 acq_rel, align 8 ; 0 uses
  %.020.i36 = getelementptr i8, ptr %.02039.i31, i64 8
  %i.dt = atomicrmw xchg ptr %.020.i36, i64 0 acq_rel, align 8 ; 0 uses
  %.020.i36.1 = getelementptr i8, ptr %.02039.i31, i64 16
  %i.du = atomicrmw xchg ptr %.020.i36.1, i64 0 acq_rel, align 8 ; 0 uses
  %.020.i36.2 = getelementptr i8, ptr %.02039.i31, i64 24
  %i.dv = atomicrmw xchg ptr %.020.i36.2, i64 0 acq_rel, align 8 ; 0 uses
  %.020.i36.3 = getelementptr i8, ptr %.02039.i31, i64 32
  %i.dw = atomicrmw xchg ptr %.020.i36.3, i64 0 acq_rel, align 8 ; 0 uses
  %.020.i36.4 = getelementptr i8, ptr %.02039.i31, i64 40
  %i.dx = atomicrmw xchg ptr %.020.i36.4, i64 0 acq_rel, align 8 ; 0 uses
  %.020.i36.5 = getelementptr i8, ptr %.02039.i31, i64 48
  %i.dy = atomicrmw xchg ptr %.020.i36.5, i64 0 acq_rel, align 8 ; 0 uses
  %.020.i36.6 = getelementptr i8, ptr %.02039.i31, i64 56
  %i.dz = add nsw i64 %.038.i32, -8               ; 2 uses
  %i.ea = atomicrmw xchg ptr %.020.i36.6, i64 0 acq_rel, align 8 ; 0 uses
  %.020.i36.7 = getelementptr i8, ptr %.02039.i31, i64 64 ; 2 uses
  %.not22.i37.7 = icmp eq i64 %i.dz, 0
  br i1 %.not22.i37.7, label %._crit_edge.i38, label %.lr.ph.i30, !llvm.loop !136

._crit_edge.i38:                                  ; preds = %.lr.ph.i30.prol.loopexit, %.lr.ph.i30, %mi_bitmap_mask_.exit24.i.i23
  %.020.lcssa.i40 = phi ptr [ %.02035.i28, %mi_bitmap_mask_.exit24.i.i23 ], [ %.020.i36.lcssa.unr, %.lr.ph.i30.prol.loopexit ], [ %.020.i36.7, %.lr.ph.i30 ]
  br i1 %.not23.i, label %_mi_bitmap_unclaim_across.exit49, label %bb.v

bb.v:                                             ; preds = %._crit_edge.i38
  %i.eb = atomicrmw and ptr %.020.lcssa.i40, i64 %notmask.i25.i.i acq_rel, align 8 ; 0 uses
  br label %_mi_bitmap_unclaim_across.exit49

_mi_bitmap_unclaim_across.exit49:                 ; preds = %_mi_bitmap_unclaim_across.exit.thread.thread, %bb.v, %._crit_edge.i38, %._crit_edge.thread.i46, %_mi_bitmap_unclaim_across.exit.thread, %_mi_bitmap_unclaim_across.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #26

; Function Attrs: nofree nounwind
declare i32 @atexit(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal void @mi_process_done() #2 {
bb.a:
  %i.a = load i8, ptr @_mi_process_is_initialized, align 1, !tbaa !125, !range !42, !noundef !43
  %i.b = trunc nuw i8 %i.a to i1
  %.not = xor i1 %i.b, true
  %.b = load i1, ptr @mi_process_done.process_done, align 1
  %or.cond = select i1 %.not, i1 true, i1 %.b
  br i1 %or.cond, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i1 true, ptr @mi_process_done.process_done, align 1
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default) ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !54
  tail call fastcc void @mi_heap_collect_ex(ptr noundef %i.d, i32 noundef 1)
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 712), align 8, !tbaa !111
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %mi_option_is_enabled.exit, !prof !17

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 704)), !inline_history !120
  br label %mi_option_is_enabled.exit

mi_option_is_enabled.exit:                        ; preds = %bb.b, %bb.c
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 704), align 16, !tbaa !114
  %.not4 = icmp eq i64 %i.g, 0
  br i1 %.not4, label %bb.e, label %bb.d

bb.d:                                             ; preds = %mi_option_is_enabled.exit
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !54
  tail call fastcc void @mi_heap_collect_ex(ptr noundef %i.h, i32 noundef 1)
  tail call void @_mi_heap_unsafe_destroy_all()
  tail call fastcc void @mi_heap_main_init()
  %i.i = load ptr, ptr @_mi_heap_main, align 8, !tbaa !22
  %i.j = getelementptr i8, ptr %i.i, i64 968
  tail call void @_mi_arena_unsafe_destroy_all(ptr noundef %i.j)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %mi_option_is_enabled.exit
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 40), align 8, !tbaa !111
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.f, label %mi_option_is_enabled.exit2, !prof !17

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 32)), !inline_history !120
  br label %mi_option_is_enabled.exit2

mi_option_is_enabled.exit2:                       ; preds = %bb.e, %bb.f
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 32), align 16, !tbaa !114
  %.not5 = icmp eq i64 %i.m, 0
  br i1 %.not5, label %bb.g, label %bb.i

bb.g:                                             ; preds = %mi_option_is_enabled.exit2
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 72), align 8, !tbaa !111
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.h, label %mi_option_is_enabled.exit3, !prof !17

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 64)), !inline_history !120
  br label %mi_option_is_enabled.exit3

mi_option_is_enabled.exit3:                       ; preds = %bb.g, %bb.h
  %i.p = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 64), align 16, !tbaa !114
  %.not6 = icmp eq i64 %i.p, 0
  br i1 %.not6, label %bb.m, label %bb.i

bb.i:                                             ; preds = %mi_option_is_enabled.exit3, %mi_option_is_enabled.exit2
  tail call void @mi_process_init(), !inline_history !236
  %i.q = tail call fastcc zeroext i1 @_mi_heap_init(), !inline_history !236
  br i1 %i.q, label %mi_stats_print.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 312), i64 1 monotonic, align 8
  %i.s = add i64 %i.r, 1                          ; 2 uses
  %i.t = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 304) monotonic, align 16
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %.0.i.i.i.i.i.i = phi i64 [ %i.t, %bb.j ], [ %i.x, %bb.l ] ; 2 uses
  %i.u = icmp slt i64 %.0.i.i.i.i.i.i, %i.s
  br i1 %i.u, label %bb.l, label %_mi_stat_increase.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.v = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 304), i64 %.0.i.i.i.i.i.i, i64 %i.s release monotonic, align 8 ; 2 uses
  %i.w = extractvalue { i64, i1 } %i.v, 1
  %i.x = extractvalue { i64, i1 } %i.v, 0
  br i1 %i.w, label %_mi_stat_increase.exit.i.i.i, label %bb.k, !llvm.loop !124

_mi_stat_increase.exit.i.i.i:                     ; preds = %bb.l, %bb.k
  %i.y = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 288), i64 1 monotonic, align 8 ; 0 uses
  %i.z = atomicrmw add ptr @thread_count, i64 1 monotonic, align 8 ; 0 uses
  br label %mi_stats_print.exit

mi_stats_print.exit:                              ; preds = %bb.i, %_mi_stat_increase.exit.i.i.i
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !54
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !22
  %i.ac = getelementptr i8, ptr %i.ab, i64 968
  tail call fastcc void @mi_stats_merge_from(ptr noundef %i.ac)
  tail call fastcc void @_mi_stats_print(ptr noundef nonnull @_mi_stats_main, ptr noundef null, ptr noundef null)
  br label %bb.m

bb.m:                                             ; preds = %mi_stats_print.exit, %mi_option_is_enabled.exit3
  %i.ad = load i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_heap_main, i64 2848), align 8, !tbaa !193
  tail call void (ptr, ...) @_mi_verbose_message(ptr noundef nonnull @.str.53, i64 noundef %i.ad)
  store i1 false, ptr @os_preloading, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.m
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @mi_out_buf_stderr(ptr noundef readonly captures(address_is_null) %0, ptr readnone captures(none) %1) #30 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %mi_out_buf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !60
  %.not3.i = icmp eq i8 %i.a, 0
  br i1 %.not3.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !238
  %i.c = tail call i32 @fputs(ptr noundef nonnull readonly %0, ptr noundef %i.b) #64 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.d = load atomic i64, ptr @out_len monotonic, align 8
  %i.e = icmp ugt i64 %i.d, 32767
  br i1 %i.e, label %mi_out_buf.exit, label %_mi_strlen.exit.i

_mi_strlen.exit.i:                                ; preds = %bb.d
  %strlen.i.i = tail call i64 @strlen(ptr nonnull readonly dereferenceable(1) %0) ; 4 uses
  %i.f = icmp eq i64 %strlen.i.i, 0
  br i1 %i.f, label %mi_out_buf.exit, label %bb.e

bb.e:                                             ; preds = %_mi_strlen.exit.i
  %i.g = atomicrmw add ptr @out_len, i64 %strlen.i.i acq_rel, align 8 ; 4 uses
  %i.h = icmp ugt i64 %i.g, 32767
  br i1 %i.h, label %mi_out_buf.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = add i64 %i.g, %strlen.i.i
  %i.j = icmp ugt i64 %i.i, 32767
  %i.k = sub nuw nsw i64 32767, %i.g
  %spec.select.i = select i1 %i.j, i64 %i.k, i64 %strlen.i.i
  %i.l = getelementptr i8, ptr @out_buf, i64 %i.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr nonnull readonly align 1 %0, i64 %spec.select.i, i1 false)
  br label %mi_out_buf.exit

mi_out_buf.exit:                                  ; preds = %bb.a, %bb.d, %_mi_strlen.exit.i, %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @mi_out_buf(ptr noundef readonly captures(address_is_null) %0, ptr readnone captures(none) %1) unnamed_addr #16 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load atomic i64, ptr @out_len monotonic, align 8
  %i.c = icmp ugt i64 %i.b, 32767
  br i1 %i.c, label %bb.e, label %_mi_strlen.exit

_mi_strlen.exit:                                  ; preds = %bb.b
  %strlen.i = tail call i64 @strlen(ptr nonnull readonly dereferenceable(1) %0) ; 4 uses
  %i.d = icmp eq i64 %strlen.i, 0
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_mi_strlen.exit
  %i.e = atomicrmw add ptr @out_len, i64 %strlen.i acq_rel, align 8 ; 4 uses
  %i.f = icmp ugt i64 %i.e, 32767
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = add i64 %i.e, %strlen.i
  %i.h = icmp ugt i64 %i.g, 32767
  %i.i = sub nuw nsw i64 32767, %i.e
  %spec.select = select i1 %i.h, i64 %i.i, i64 %strlen.i
  %i.j = getelementptr i8, ptr @out_buf, i64 %i.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull readonly align 1 %0, i64 %spec.select, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_mi_strlen.exit, %bb.c, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @mi_recurse_enter_prim() unnamed_addr #53 {
bb.a:
  %i.a = tail call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @recurse) ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !125, !range !42, !noundef !43
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 1, !tbaa !125
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = xor i1 %i.c, true
  ret i1 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @mi_recurse_exit_prim() unnamed_addr #54 {
bb.a:
  %i.a = tail call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @recurse)
  store i8 0, ptr %i.a, align 1, !tbaa !125
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #37

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #55

; Function Attrs: nounwind uwtable
define internal fastcc ptr @mi_large_huge_page_alloc(ptr noundef %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 524288
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @mi_os_mem_config.0, align 8, !tbaa !91
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i64 %1, 2097152
  br i1 %i.c, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = icmp samesign ult i64 %1, 8388608
  br i1 %i.d, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = icmp samesign ult i64 %1, 33554432
  %..i = select i1 %i.e, i64 1048576, i64 4194304
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.0.i = phi i64 [ %i.b, %bb.b ], [ 262144, %bb.d ], [ 65536, %bb.c ], [ %..i, %bb.e ] ; 5 uses
  %i.f = xor i64 %.0.i, -1
  %.not.i = icmp ult i64 %1, %i.f
  br i1 %.not.i, label %bb.g, label %_mi_os_good_alloc_size.exit, !prof !55

bb.g:                                             ; preds = %bb.f
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.0.i)
  %i.h = icmp samesign ult i64 %i.g, 2
  %i.i = add nsw i64 %1, -1
  %i.j = add i64 %i.i, %.0.i                      ; 3 uses
  br i1 %i.h, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.k = sub i64 0, %.0.i
  %i.l = and i64 %i.j, %i.k
  br label %_mi_os_good_alloc_size.exit

bb.i:                                             ; preds = %bb.g
  %i.m = urem i64 %i.j, %.0.i
  %i.n = sub nuw i64 %i.j, %i.m
  br label %_mi_os_good_alloc_size.exit

_mi_os_good_alloc_size.exit:                      ; preds = %bb.f, %bb.h, %bb.i
  %.010.i = phi i64 [ %1, %bb.f ], [ %i.l, %bb.h ], [ %i.n, %bb.i ] ; 3 uses
  %i.o = icmp ugt i64 %.010.i, 16777216
  %i.p = icmp ne i64 %2, 0
  %i.q = or i1 %i.p, %i.o
  %i.r = add i64 %.010.i, 7
  %i.s = select i1 %i.q, i64 2147483655, i64 %i.r ; 4 uses
  %i.t = lshr i64 %i.s, 3                         ; 2 uses
  %i.u = icmp ult i64 %i.s, 16
  br i1 %i.u, label %mi_page_queue.exit, label %bb.j

bb.j:                                             ; preds = %_mi_os_good_alloc_size.exit
  %i.v = icmp ult i64 %i.s, 72
  br i1 %i.v, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.w = add nuw nsw i64 %i.t, 1
  %i.x = and i64 %i.w, 30
  br label %mi_page_queue.exit

bb.l:                                             ; preds = %bb.j
  %i.y = icmp ugt i64 %i.s, 131079
  br i1 %i.y, label %mi_page_queue.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = add nsw i64 %i.t, -1                     ; 2 uses
  %i.aa = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.z, i1 false) ; 2 uses
  %i.ab = sub nsw i64 61, %i.aa
  %i.ac = and i64 %i.ab, 4294967295
  %i.ad = lshr i64 %i.z, %i.ac
  %i.ae = and i64 %i.ad, 3
  %i.af = shl nuw nsw i64 %i.aa, 2
  %reass.sub = sub nsw i64 %i.ae, %i.af
  %i.ag = add nsw i64 %reass.sub, 249
  %i.ah = and i64 %i.ag, 255
  br label %mi_page_queue.exit

mi_page_queue.exit:                               ; preds = %_mi_os_good_alloc_size.exit, %bb.k, %bb.l, %bb.m
  %.0.i.i.i = phi i64 [ %i.ah, %bb.m ], [ %i.x, %bb.k ], [ 1, %_mi_os_good_alloc_size.exit ], [ 73, %bb.l ]
  %i.ai = getelementptr i8, ptr %0, i64 1040
  %i.aj = getelementptr [24 x i8], ptr %i.ai, i64 %.0.i.i.i
  %i.ak = tail call fastcc ptr @mi_page_fresh_alloc(ptr noundef %0, ptr noundef %i.aj, i64 noundef %.010.i, i64 noundef %2)
  ret ptr %i.ak
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @mi_page_fresh_alloc(ptr noundef %0, ptr noundef captures(address) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 32
  %i.c = getelementptr i8, ptr %i.a, i64 952
  %i.d = tail call ptr @_mi_segment_page_alloc(ptr noundef nonnull %0, i64 noundef %2, i64 noundef %3, ptr noundef %i.b, ptr noundef %i.c) ; 15 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.g, align 8, !tbaa !61
  %i.h = icmp eq i64 %.val, 131080
  br i1 %i.h, label %bb.d, label %mi_page_block_size.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr i8, ptr %i.d, i64 28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !21   ; 2 uses
  %i.k = icmp sgt i32 %i.j, -1
  br i1 %i.k, label %bb.e, label %_mi_segment_page_start.exit.i, !prof !55

bb.e:                                             ; preds = %bb.d
  %i.l = zext nneg i32 %i.j to i64
  br label %mi_page_block_size.exit

_mi_segment_page_start.exit.i:                    ; preds = %bb.d
  %i.m = load i32, ptr %i.d, align 8, !tbaa !52
  %i.n = zext i32 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 16
  br label %mi_page_block_size.exit

mi_page_block_size.exit:                          ; preds = %_mi_segment_page_start.exit.i, %bb.e, %bb.c
  %i.p = phi i64 [ %2, %bb.c ], [ %i.l, %bb.e ], [ %i.o, %_mi_segment_page_start.exit.i ] ; 7 uses
  %i.q = getelementptr i8, ptr %i.d, i64 48
  %i.r = ptrtoint ptr %0 to i64
  store atomic i64 %i.r, ptr %i.q release, align 8
  %i.s = getelementptr i8, ptr %0, i64 3057
  %i.t = load i8, ptr %i.s, align 1, !tbaa !205
  %i.u = getelementptr i8, ptr %i.d, i64 8        ; 3 uses
  %i.v = load i8, ptr %i.u, align 8               ; 2 uses
  %i.w = shl i8 %i.t, 3
  %i.x = and i8 %i.w, 120
  %i.y = and i8 %i.v, -121
  %i.z = or disjoint i8 %i.y, %i.x                ; 2 uses
  store i8 %i.z, ptr %i.u, align 8
  %i.aa = getelementptr i8, ptr %0, i64 3059
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !632, !range !42, !noundef !43
  %i.ac = shl nuw nsw i8 %i.ab, 2
  %i.ad = and i8 %i.z, -5
  %i.ae = or disjoint i8 %i.ad, %i.ac
  store i8 %i.ae, ptr %i.u, align 8
  %i.af = getelementptr i8, ptr %0, i64 3058
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !633
  %i.ah = getelementptr i8, ptr %i.d, i64 9
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !634
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.p, i64 2147483648) ; 6 uses
  %i.aj = trunc nuw i64 %i.ai to i32              ; 2 uses
  %i.ak = getelementptr i8, ptr %i.d, i64 28
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !21
  %i.al = load i32, ptr %i.d, align 8, !tbaa !52
  %i.am = zext i32 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 16               ; 2 uses
  %i.ao = icmp ugt i64 %i.p, 7                    ; 2 uses
  br i1 %i.ao, label %bb.f, label %_mi_segment_page_start.exit.i21

bb.f:                                             ; preds = %mi_page_block_size.exit
  %i.ap = icmp ult i64 %i.p, 65
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aq = mul nuw nsw i64 %i.ai, 3
  br label %_mi_segment_page_start.exit.i21

bb.h:                                             ; preds = %bb.f
  %i.ar = icmp ult i64 %i.p, 513
  %spec.select.i.i.i = select i1 %i.ar, i64 %i.ai, i64 0
  br label %_mi_segment_page_start.exit.i21

_mi_segment_page_start.exit.i21:                  ; preds = %bb.h, %bb.g, %mi_page_block_size.exit
  %.0.i.i.i = phi i64 [ %i.aq, %bb.g ], [ 0, %mi_page_block_size.exit ], [ %spec.select.i.i.i, %bb.h ]
  %i.as = sub nsw i64 %i.an, %.0.i.i.i
  %i.at = udiv i64 %i.as, %i.p                    ; 2 uses
  %i.au = trunc i64 %i.at to i16                  ; 2 uses
  %i.av = getelementptr i8, ptr %i.d, i64 12
  store i16 %i.au, ptr %i.av, align 4, !tbaa !218
  %i.aw = lshr i8 %i.v, 1
  %i.ax = and i8 %i.aw, 1
  %i.ay = getelementptr i8, ptr %i.d, i64 15      ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = and i8 %i.az, -2
  %i.bb = or disjoint i8 %i.ba, %i.ax
  store i8 %i.bb, ptr %i.ay, align 1
  %i.bc = getelementptr i8, ptr %i.d, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !11
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %bb.i, label %mi_page_init.exit

bb.i:                                             ; preds = %_mi_segment_page_start.exit.i21
  %i.be = getelementptr i8, ptr %i.d, i64 10      ; 3 uses
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !74 ; 2 uses
  %.not24.i.i = icmp ult i16 %i.bf, %i.au
  br i1 %.not24.i.i, label %bb.j, label %mi_page_init.exit

bb.j:                                             ; preds = %bb.i
  br i1 %i.ao, label %bb.k, label %_mi_page_start.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.bg = icmp ult i64 %i.p, 65
  br i1 %i.bg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bh = mul nuw nsw i64 %i.ai, 3
  br label %_mi_page_start.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.bi = icmp ult i64 %i.p, 513
  %spec.select.i.i.i.i.i = select i1 %i.bi, i64 %i.ai, i64 0
  br label %_mi_page_start.exit.i.i

_mi_page_start.exit.i.i:                          ; preds = %bb.m, %bb.l, %bb.j
  %.0.i.i.i.i.i = phi i64 [ %i.bh, %bb.l ], [ 0, %bb.j ], [ %spec.select.i.i.i.i.i, %bb.m ]
  %i.bj = sub nsw i64 %i.an, %.0.i.i.i.i.i
  %i.bk = icmp slt i32 %i.aj, 0
  %i.bl = select i1 %i.bk, i64 %i.bj, i64 %i.ai   ; 3 uses
  %i.bm = and i64 %i.at, 65535
  %i.bn = zext i16 %i.bf to i64
  %i.bo = sub nsw i64 %i.bm, %i.bn
  %i.bp = icmp ugt i64 %i.bl, 4095
  br i1 %i.bp, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_mi_page_start.exit.i.i
  %.rhs.trunc.i.i = trunc nuw nsw i64 %i.bl to i16
  %i.bq = udiv i16 4096, %.rhs.trunc.i.i
  %i.br = tail call i16 @llvm.umax.i16(i16 %i.bq, i16 4)
  %i.bs = zext nneg i16 %i.br to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_mi_page_start.exit.i.i
  %spec.store.select.i.i = phi i64 [ %i.bs, %bb.n ], [ 4, %_mi_page_start.exit.i.i ]
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.bo, i64 %spec.store.select.i.i) ; 2 uses
  tail call fastcc void @mi_page_free_list_extend(ptr noundef nonnull %i.d, i64 noundef %i.bl, i64 noundef %spec.select.i.i)
  %i.bt = trunc nuw nsw i64 %spec.select.i.i to i16
  %i.bu = load i16, ptr %i.be, align 2, !tbaa !74
  %i.bv = add i16 %i.bu, %i.bt
  store i16 %i.bv, ptr %i.be, align 2, !tbaa !74
  br label %mi_page_init.exit

mi_page_init.exit:                                ; preds = %_mi_segment_page_start.exit.i21, %bb.i, %bb.o
  br i1 %i.f, label %bb.q, label %bb.p

bb.p:                                             ; preds = %mi_page_init.exit
  tail call fastcc void @mi_page_queue_push(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.d)
  br label %bb.q

bb.q:                                             ; preds = %mi_page_init.exit, %bb.p, %bb.a
  ret ptr %i.d
}

; Function Attrs: nofree noinline norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @mi_page_free_list_extend(ptr noundef nonnull %0, i64 noundef %1, i64 noundef range(i64 0, 4097) %2) unnamed_addr #56 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = add i64 %i.a, -1
  %i.c = and i64 %i.b, -33554432
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !21   ; 4 uses
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %i.h = icmp ugt i32 %i.f, 7
  br i1 %i.h, label %bb.b, label %_mi_page_start.exit

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ult i32 %i.f, 65
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = mul nuw nsw i64 %i.g, 3
  br label %_mi_page_start.exit

bb.d:                                             ; preds = %bb.b
  %i.k = icmp ult i32 %i.f, 513
  %spec.select.i.i.i = select i1 %i.k, i64 %i.g, i64 0
  br label %_mi_page_start.exit

_mi_page_start.exit:                              ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i.i = phi i64 [ %i.j, %bb.c ], [ 0, %bb.a ], [ %spec.select.i.i.i, %bb.d ]
  %i.l = getelementptr i8, ptr %i.d, i64 264
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.a, %i.m
  %i.o = sdiv exact i64 %i.n, 80
  %i.p = shl i64 %i.o, 16
  %i.q = getelementptr i8, ptr %i.d, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 %.0.i.i.i ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 10
  %i.t = load i16, ptr %i.s, align 2, !tbaa !74
  %i.u = zext i16 %i.t to i64                     ; 2 uses
  %i.v = mul i64 %1, %i.u
  %i.w = getelementptr i8, ptr %i.r, i64 %i.v     ; 3 uses
  %i.x = add nsw i64 %2, -1
  %i.y = add nsw i64 %i.x, %i.u
  %i.z = mul i64 %i.y, %1
  %i.aa = getelementptr i8, ptr %i.r, i64 %i.z    ; 3 uses
  %.not1 = icmp ugt ptr %i.w, %i.aa
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_mi_page_start.exit, %.lr.ph
  %.02 = phi ptr [ %i.ab, %.lr.ph ], [ %i.w, %_mi_page_start.exit ] ; 2 uses
  %i.ab = getelementptr i8, ptr %.02, i64 %1      ; 3 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  store atomic i64 %i.ac, ptr %.02 monotonic, align 8
  %.not = icmp ugt ptr %i.ab, %i.aa
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !635

._crit_edge:                                      ; preds = %.lr.ph, %_mi_page_start.exit
  %i.ad = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !11
  %i.af = ptrtoint ptr %i.ae to i64
  store atomic i64 %i.af, ptr %i.aa monotonic, align 8
  store ptr %i.w, ptr %i.ad, align 8, !tbaa !11
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @chacha_block(ptr noundef captures(none) %0) unnamed_addr #21 {
.preheader21:
  %.sroa.0.0.copyload = load i32, ptr %0, align 4, !tbaa !7
  %.sroa.6.0..sroa_idx = getelementptr i8, ptr %0, i64 4 ; 2 uses
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !7
  %.sroa.9.0..sroa_idx = getelementptr i8, ptr %0, i64 8
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !7
  %.sroa.12.0..sroa_idx = getelementptr i8, ptr %0, i64 12
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !7
  %.sroa.15.0..sroa_idx = getelementptr i8, ptr %0, i64 16
  %.sroa.15.0.copyload = load i32, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !7
  %.sroa.18.0..sroa_idx = getelementptr i8, ptr %0, i64 20 ; 2 uses
  %.sroa.18.0.copyload = load i32, ptr %.sroa.18.0..sroa_idx, align 4, !tbaa !7
  %.sroa.21.0..sroa_idx = getelementptr i8, ptr %0, i64 24
  %.sroa.21.0.copyload = load i32, ptr %.sroa.21.0..sroa_idx, align 4, !tbaa !7
  %.sroa.24.0..sroa_idx = getelementptr i8, ptr %0, i64 28
  %.sroa.24.0.copyload = load i32, ptr %.sroa.24.0..sroa_idx, align 4, !tbaa !7
  %.sroa.27.0..sroa_idx = getelementptr i8, ptr %0, i64 32
  %.sroa.27.0.copyload = load i32, ptr %.sroa.27.0..sroa_idx, align 4, !tbaa !7
  %.sroa.30.0..sroa_idx = getelementptr i8, ptr %0, i64 36 ; 2 uses
  %.sroa.30.0.copyload = load i32, ptr %.sroa.30.0..sroa_idx, align 4, !tbaa !7
  %.sroa.33.0..sroa_idx = getelementptr i8, ptr %0, i64 40
  %.sroa.33.0.copyload = load i32, ptr %.sroa.33.0..sroa_idx, align 4, !tbaa !7
  %.sroa.36.0..sroa_idx = getelementptr i8, ptr %0, i64 44
  %.sroa.36.0.copyload = load i32, ptr %.sroa.36.0..sroa_idx, align 4, !tbaa !7
  %.sroa.39.0..sroa_idx = getelementptr i8, ptr %0, i64 48 ; 3 uses
  %.sroa.39.0.copyload = load i32, ptr %.sroa.39.0..sroa_idx, align 4, !tbaa !7
  %.sroa.42.0..sroa_idx = getelementptr i8, ptr %0, i64 52 ; 3 uses
  %.sroa.42.0.copyload = load i32, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !7
  %.sroa.45.0..sroa_idx = getelementptr i8, ptr %0, i64 56 ; 3 uses
  %.sroa.45.0.copyload = load i32, ptr %.sroa.45.0..sroa_idx, align 4, !tbaa !7
  %.sroa.48.0..sroa_idx = getelementptr i8, ptr %0, i64 60 ; 2 uses
  %.sroa.48.0.copyload = load i32, ptr %.sroa.48.0..sroa_idx, align 4, !tbaa !7
  br label %bb.a

.preheader:                                       ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 64
  %i.b = load i32, ptr %0, align 4, !tbaa !7
  %i.c = add i32 %i.b, %i.dd
  store i32 %i.c, ptr %i.a, align 4, !tbaa !7
  %i.d = getelementptr i8, ptr %0, i64 68
  %i.e = load <4 x i32>, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !7
  %i.f = insertelement <4 x i32> poison, i32 %i.dy, i64 0
  %i.g = insertelement <4 x i32> %i.f, i32 %i.ea, i64 1
  %i.h = insertelement <4 x i32> %i.g, i32 %i.eg, i64 2
  %i.i = insertelement <4 x i32> %i.h, i32 %i.es, i64 3
  %i.j = add <4 x i32> %i.e, %i.i
  store <4 x i32> %i.j, ptr %i.d, align 4, !tbaa !7
  %i.k = getelementptr i8, ptr %0, i64 84
  %i.l = load <4 x i32>, ptr %.sroa.18.0..sroa_idx, align 4, !tbaa !7
  %i.m = insertelement <4 x i32> poison, i32 %i.el, i64 0
  %i.n = insertelement <4 x i32> %i.m, i32 %i.ep, i64 1
  %i.o = insertelement <4 x i32> %i.n, i32 %i.ef, i64 2
  %i.p = insertelement <4 x i32> %i.o, i32 %i.ed, i64 3
  %i.q = add <4 x i32> %i.l, %i.p
  store <4 x i32> %i.q, ptr %i.k, align 4, !tbaa !7
  %i.r = getelementptr i8, ptr %0, i64 100
  %i.s = load i32, ptr %.sroa.39.0..sroa_idx, align 4, !tbaa !7
  %i.t = load <4 x i32>, ptr %.sroa.30.0..sroa_idx, align 4, !tbaa !7
  %i.u = insertelement <4 x i32> poison, i32 %i.eq, i64 0
  %i.v = insertelement <4 x i32> %i.u, i32 %i.ej, i64 1
  %i.w = insertelement <4 x i32> %i.v, i32 %i.en, i64 2
  %i.x = insertelement <4 x i32> %i.w, i32 %i.em, i64 3
  %i.y = add <4 x i32> %i.t, %i.x
  store <4 x i32> %i.y, ptr %i.r, align 4, !tbaa !7
  %i.z = load i32, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !7 ; 2 uses
  %i.aa = add i32 %i.z, %i.ec
  %i.ab = getelementptr i8, ptr %0, i64 116
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !7
  %i.ac = load i32, ptr %.sroa.45.0..sroa_idx, align 4, !tbaa !7 ; 2 uses
  %i.ad = add i32 %i.ac, %i.ei
  %i.ae = getelementptr i8, ptr %0, i64 120
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !7
  %i.af = load i32, ptr %.sroa.48.0..sroa_idx, align 4, !tbaa !7
  %i.ag = add i32 %i.af, %i.df
  %i.ah = getelementptr i8, ptr %0, i64 124
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !7
  %i.ai = getelementptr i8, ptr %0, i64 128
  store i32 16, ptr %i.ai, align 4, !tbaa !175
  %i.aj = add i32 %i.s, 1                         ; 2 uses
  store i32 %i.aj, ptr %.sroa.39.0..sroa_idx, align 4, !tbaa !7
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.b, label %bb.d

bb.a:                                             ; preds = %.preheader21, %bb.a
  %.01953 = phi i64 [ 0, %.preheader21 ], [ %i.et, %bb.a ] ; 2 uses
  %i.al = phi i32 [ %.sroa.15.0.copyload, %.preheader21 ], [ %i.es, %bb.a ] ; 2 uses
  %i.am = phi i32 [ %.sroa.0.0.copyload, %.preheader21 ], [ %i.dd, %bb.a ]
  %i.an = phi i32 [ %.sroa.39.0.copyload, %.preheader21 ], [ %i.em, %bb.a ]
  %i.ao = phi i32 [ %.sroa.27.0.copyload, %.preheader21 ], [ %i.ed, %bb.a ]
  %i.ap = phi i32 [ %.sroa.18.0.copyload, %.preheader21 ], [ %i.el, %bb.a ] ; 2 uses
  %i.aq = phi i32 [ %.sroa.6.0.copyload, %.preheader21 ], [ %i.dy, %bb.a ]
  %i.ar = phi i32 [ %.sroa.42.0.copyload, %.preheader21 ], [ %i.ec, %bb.a ]
  %i.as = phi i32 [ %.sroa.30.0.copyload, %.preheader21 ], [ %i.eq, %bb.a ]
  %i.at = phi i32 [ %.sroa.21.0.copyload, %.preheader21 ], [ %i.ep, %bb.a ] ; 2 uses
  %i.au = phi i32 [ %.sroa.9.0.copyload, %.preheader21 ], [ %i.ea, %bb.a ]
  %i.av = phi i32 [ %.sroa.45.0.copyload, %.preheader21 ], [ %i.ei, %bb.a ]
  %i.aw = phi i32 [ %.sroa.33.0.copyload, %.preheader21 ], [ %i.ej, %bb.a ]
  %i.ax = phi i32 [ %.sroa.24.0.copyload, %.preheader21 ], [ %i.ef, %bb.a ] ; 2 uses
  %i.ay = phi i32 [ %.sroa.12.0.copyload, %.preheader21 ], [ %i.eg, %bb.a ]
  %i.az = phi i32 [ %.sroa.48.0.copyload, %.preheader21 ], [ %i.df, %bb.a ]
  %i.ba = phi i32 [ %.sroa.36.0.copyload, %.preheader21 ], [ %i.en, %bb.a ]
  %i.bb = add i32 %i.am, %i.al                    ; 2 uses
  %i.bc = xor i32 %i.an, %i.bb                    ; 2 uses
  %i.bd = tail call noundef i32 @llvm.fshl.i32(i32 %i.bc, i32 %i.bc, i32 16) ; 2 uses
  %i.be = add i32 %i.bd, %i.ao                    ; 2 uses
  %i.bf = xor i32 %i.be, %i.al                    ; 2 uses
  %i.bg = tail call noundef i32 @llvm.fshl.i32(i32 %i.bf, i32 %i.bf, i32 12) ; 2 uses
  %i.bh = add i32 %i.bg, %i.bb                    ; 2 uses
  %i.bi = xor i32 %i.bh, %i.bd                    ; 2 uses
  %i.bj = tail call noundef i32 @llvm.fshl.i32(i32 %i.bi, i32 %i.bi, i32 8) ; 2 uses
  %i.bk = add i32 %i.bj, %i.be                    ; 2 uses
  %i.bl = xor i32 %i.bk, %i.bg                    ; 2 uses
  %i.bm = tail call noundef i32 @llvm.fshl.i32(i32 %i.bl, i32 %i.bl, i32 7) ; 2 uses
  %i.bn = add i32 %i.aq, %i.ap                    ; 2 uses
  %i.bo = xor i32 %i.ar, %i.bn                    ; 2 uses
  %i.bp = tail call noundef i32 @llvm.fshl.i32(i32 %i.bo, i32 %i.bo, i32 16) ; 2 uses
  %i.bq = add i32 %i.bp, %i.as                    ; 2 uses
  %i.br = xor i32 %i.bq, %i.ap                    ; 2 uses
  %i.bs = tail call noundef i32 @llvm.fshl.i32(i32 %i.br, i32 %i.br, i32 12) ; 2 uses
  %i.bt = add i32 %i.bs, %i.bn                    ; 2 uses
  %i.bu = xor i32 %i.bt, %i.bp                    ; 2 uses
  %i.bv = tail call noundef i32 @llvm.fshl.i32(i32 %i.bu, i32 %i.bu, i32 8) ; 2 uses
  %i.bw = add i32 %i.bv, %i.bq                    ; 2 uses
  %i.bx = xor i32 %i.bw, %i.bs                    ; 2 uses
  %i.by = tail call noundef i32 @llvm.fshl.i32(i32 %i.bx, i32 %i.bx, i32 7) ; 2 uses
  %i.bz = add i32 %i.au, %i.at                    ; 2 uses
  %i.ca = xor i32 %i.av, %i.bz                    ; 2 uses
  %i.cb = tail call noundef i32 @llvm.fshl.i32(i32 %i.ca, i32 %i.ca, i32 16) ; 2 uses
  %i.cc = add i32 %i.cb, %i.aw                    ; 2 uses
  %i.cd = xor i32 %i.cc, %i.at                    ; 2 uses
  %i.ce = tail call noundef i32 @llvm.fshl.i32(i32 %i.cd, i32 %i.cd, i32 12) ; 2 uses
  %i.cf = add i32 %i.ce, %i.bz                    ; 2 uses
  %i.cg = xor i32 %i.cf, %i.cb                    ; 2 uses
  %i.ch = tail call noundef i32 @llvm.fshl.i32(i32 %i.cg, i32 %i.cg, i32 8) ; 2 uses
  %i.ci = add i32 %i.ch, %i.cc                    ; 2 uses
end_hunk_19
begin_hunk_20_@mi_segment_purge:bb.a
  %i.bz = call i64 @_mi_commit_mask_committed_size(ptr noundef nonnull %5, i64 noundef 33554432) ; 2 uses
  %i.ca = sub i64 %i.x, %i.bz                     ; 5 uses
  %i.cb = icmp eq i64 %i.x, %i.bz
  br i1 %i.cb, label %_mi_stat_increase.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cc = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 120), i64 %i.ca monotonic, align 8
  %i.cd = add i64 %i.cc, %i.ca                    ; 2 uses
  %i.ce = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 112) monotonic, align 16
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %.0.i.i.i = phi i64 [ %i.ce, %bb.l ], [ %i.ci, %bb.n ] ; 2 uses
  %i.cf = icmp slt i64 %.0.i.i.i, %i.cd
  br i1 %i.cf, label %bb.n, label %mi_atomic_maxi64_relaxed.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.cg = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 112), i64 %.0.i.i.i, i64 %i.cd release monotonic, align 8 ; 2 uses
  %i.ch = extractvalue { i64, i1 } %i.cg, 1
  %i.ci = extractvalue { i64, i1 } %i.cg, 0
  br i1 %i.ch, label %mi_atomic_maxi64_relaxed.exit.i.i, label %bb.m, !llvm.loop !124

mi_atomic_maxi64_relaxed.exit.i.i:                ; preds = %bb.n, %bb.m
  %i.cj = icmp sgt i64 %i.ca, 0
  br i1 %i.cj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %mi_atomic_maxi64_relaxed.exit.i.i
  %i.ck = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 96), i64 %i.ca monotonic, align 8 ; 0 uses
  br label %_mi_stat_increase.exit

bb.p:                                             ; preds = %mi_atomic_maxi64_relaxed.exit.i.i
  %i.cl = atomicrmw sub ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 104), i64 %i.ca monotonic, align 8 ; 0 uses
  br label %_mi_stat_increase.exit

_mi_stat_increase.exit:                           ; preds = %bb.k, %bb.o, %bb.p
  %i.cm = xor <2 x i64> %i.f, splat (i64 -1)
  %i.cn = load <2 x i64>, ptr %i.z, align 8, !tbaa !105
  %i.co = and <2 x i64> %i.cn, %i.cm
  store <2 x i64> %i.co, ptr %i.z, align 8, !tbaa !105
  %i.cp = xor <2 x i64> %i.h, splat (i64 -1)
  %i.cq = load <2 x i64>, ptr %i.bh, align 8, !tbaa !105
  %i.cr = and <2 x i64> %i.cq, %i.cp
  store <2 x i64> %i.cr, ptr %i.bh, align 8, !tbaa !105
  %i.cs = xor <2 x i64> %.fr4, splat (i64 -1)
  %i.ct = load <2 x i64>, ptr %i.bl, align 8, !tbaa !105
  %i.cu = and <2 x i64> %i.ct, %i.cs
  store <2 x i64> %i.cu, ptr %i.bl, align 8, !tbaa !105
  %i.cv = insertelement <2 x i64> poison, i64 %i.o, i64 0
  %i.cw = insertelement <2 x i64> %i.cv, i64 %i.bw, i64 1
  %i.cx = xor <2 x i64> %i.cw, splat (i64 -1)
  %i.cy = load <2 x i64>, ptr %i.bp, align 8, !tbaa !105
  %i.cz = and <2 x i64> %i.cy, %i.cx
  store <2 x i64> %i.cz, ptr %i.bp, align 8, !tbaa !105
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  br label %bb.q

bb.q:                                             ; preds = %mi_commit_mask_any_set.exit.thread._crit_edge, %_mi_stat_increase.exit, %mi_commit_mask_any_set.exit
  %i.da = phi i64 [ %.pre, %mi_commit_mask_any_set.exit.thread._crit_edge ], [ %i.bw, %_mi_stat_increase.exit ], [ %i.bb, %mi_commit_mask_any_set.exit ]
  %i.db = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %i.dc = xor <2 x i64> %i.f, splat (i64 -1)
  %i.dd = load <2 x i64>, ptr %i.db, align 8, !tbaa !105
  %i.de = and <2 x i64> %i.dd, %i.dc
  store <2 x i64> %i.de, ptr %i.db, align 8, !tbaa !105
  %i.df = xor <2 x i64> %i.h, splat (i64 -1)
  %i.dg = getelementptr i8, ptr %0, i64 64        ; 2 uses
  %i.dh = load <2 x i64>, ptr %i.dg, align 8, !tbaa !105
  %i.di = and <2 x i64> %i.dh, %i.df
  store <2 x i64> %i.di, ptr %i.dg, align 8, !tbaa !105
  %i.dj = xor <2 x i64> %.fr4, splat (i64 -1)
  %i.dk = getelementptr i8, ptr %0, i64 80        ; 2 uses
  %i.dl = load <2 x i64>, ptr %i.dk, align 8, !tbaa !105
  %i.dm = and <2 x i64> %i.dl, %i.dj
  store <2 x i64> %i.dm, ptr %i.dk, align 8, !tbaa !105
  %i.dn = insertelement <2 x i64> poison, i64 %i.o, i64 0
  %i.do = insertelement <2 x i64> %i.dn, i64 %i.da, i64 1
  %i.dp = xor <2 x i64> %i.do, splat (i64 -1)
  %i.dq = getelementptr i8, ptr %0, i64 96        ; 2 uses
  %i.dr = load <2 x i64>, ptr %i.dq, align 8, !tbaa !105
  %i.ds = and <2 x i64> %i.dr, %i.dp
  store <2 x i64> %i.ds, ptr %i.dq, align 8, !tbaa !105
  br label %bb.r

bb.r:                                             ; preds = %mi_commit_mask_is_empty.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %bb.r
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mi_segment_commit_mask(ptr noundef %0, i1 noundef zeroext %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull writeonly captures(none) %4, ptr noundef nonnull writeonly captures(none) %5, ptr noundef nonnull writeonly captures(none) initializes((0, 64)) %6) unnamed_addr #2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, i8 0, i64 64, i1 false), !tbaa !105
  %i.a = add i64 %3, -33554433
  %or.cond = icmp ult i64 %i.a, -33554432
  br i1 %or.cond, label %mi_commit_mask_create.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 240
  %i.c = load i32, ptr %i.b, align 8, !tbaa !286
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %mi_commit_mask_create.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 224
  %.val59 = load i64, ptr %i.e, align 8, !tbaa !97
  %i.f = shl i64 %.val59, 16                      ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 %i.f
  %.not = icmp ult ptr %2, %i.g
  br i1 %.not, label %bb.d, label %mi_commit_mask_create.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 232
  %.val = load i64, ptr %i.h, align 8, !tbaa !291
  %i.i = shl i64 %.val, 16                        ; 2 uses
  %i.j = ptrtoint ptr %2 to i64
  %i.k = ptrtoint ptr %0 to i64
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %i.m = add i64 %i.l, 65535
  %i.n = add nuw nsw i64 %3, 65535
  %.049.in.v = select i1 %1, i64 %3, i64 %i.n
  %.049.in = add i64 %i.l, %.049.in.v
  %.0.in = select i1 %1, i64 %i.m, i64 %i.l
  %.0 = and i64 %.0.in, -65536                    ; 2 uses
  %.049 = and i64 %.049.in, -65536
  %.not56.not = icmp ult i64 %i.l, %i.i
  %i.o = tail call i64 @llvm.umax.i64(i64 %.0, i64 %i.i)
  %.1 = select i1 %.not56.not, i64 %.0, i64 %i.o  ; 6 uses
  %.150 = tail call i64 @llvm.umin.i64(i64 %.049, i64 %i.f) ; 3 uses
  %i.p = getelementptr i8, ptr %0, i64 %.1
  store ptr %i.p, ptr %4, align 8, !tbaa !106
  %i.q = tail call i64 @llvm.usub.sat.i64(i64 %.150, i64 %.1) ; 3 uses
  store i64 %i.q, ptr %5, align 8, !tbaa !105
  %.not57 = icmp ugt i64 %.150, %.1
  br i1 %.not57, label %bb.e, label %mi_commit_mask_create.exit

bb.e:                                             ; preds = %bb.d
  %i.r = lshr exact i64 %.1, 16                   ; 3 uses
  %i.s = lshr exact i64 %i.q, 16                  ; 5 uses
  %i.t = add nuw nsw i64 %i.s, %i.r
  %i.u = icmp samesign ugt i64 %i.t, 512
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.104, i64 noundef %i.r, i64 noundef %i.s, i64 noundef %.1, i64 noundef %.150, ptr noundef %2, i64 noundef %3, i64 noundef %i.q)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  switch i64 %i.s, label %.lr.ph.i [
    i64 512, label %bb.h
    i64 0, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, i8 -1, i64 64, i1 false), !tbaa !105
  br label %mi_commit_mask_create.exit

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, i8 0, i64 64, i1 false), !tbaa !105
  br label %mi_commit_mask_create.exit

.lr.ph.i:                                         ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, i8 0, i64 64, i1 false), !tbaa !105
  %i.v = lshr i64 %.1, 22                         ; 2 uses
  %i.w = and i64 %i.r, 63                         ; 2 uses
  %i.x = sub nuw nsw i64 64, %i.w
  %i.y = tail call i64 @llvm.umin.i64(i64 range(i64 0, 288230376151711744) %i.s, i64 %i.x) ; 3 uses
  %i.z = icmp samesign ugt i64 %i.y, 63
  %notmask.peel.i = shl nsw i64 -1, %i.y
  %i.aa = xor i64 %notmask.peel.i, -1
  %i.ab = shl i64 %i.aa, %i.w
  %i.ac = select i1 %i.z, i64 -1, i64 %i.ab
  %i.ad = getelementptr [8 x i8], ptr %6, i64 %i.v
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !105
  %i.ae = sub nsw i64 %i.s, %i.y                  ; 2 uses
  %.not.peel.i = icmp eq i64 %i.ae, 0
  br i1 %.not.peel.i, label %mi_commit_mask_create.exit, label %.peel.next.i

.peel.next.i:                                     ; preds = %.lr.ph.i, %.peel.next.i
  %.028.i = phi i64 [ %i.ak, %.peel.next.i ], [ %i.ae, %.lr.ph.i ] ; 3 uses
  %.02127.in.i = phi i64 [ %.02127.i, %.peel.next.i ], [ %i.v, %.lr.ph.i ]
  %.02127.i = add i64 %.02127.in.i, 1             ; 2 uses
  %i.af = tail call i64 @llvm.umin.i64(i64 %.028.i, i64 64) ; 2 uses
  %i.ag = icmp ugt i64 %.028.i, 63
  %notmask.i = shl nsw i64 -1, %i.af
  %i.ah = xor i64 %notmask.i, -1
  %i.ai = select i1 %i.ag, i64 -1, i64 %i.ah
  %i.aj = getelementptr [8 x i8], ptr %6, i64 %.02127.i
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !105
  %i.ak = sub i64 %.028.i, %i.af                  ; 2 uses
  %.not.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i, label %mi_commit_mask_create.exit, label %.peel.next.i, !llvm.loop !637

mi_commit_mask_create.exit:                       ; preds = %.peel.next.i, %.lr.ph.i, %bb.i, %bb.h, %bb.c, %bb.d, %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @mi_segments_track_size(i64 noundef %0, ptr noundef captures(none) %1) unnamed_addr #11 {
bb.a:
  %i.a = icmp sgt i64 %0, -1
  %i.b = getelementptr i8, ptr %1, i64 896
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !201  ; 12 uses
  %i.d = icmp uge ptr %i.c, @_mi_stats_main
  %i.e = icmp ult ptr %i.c, getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 640)
  %i.f = select i1 %i.d, i1 %i.e, i1 false        ; 2 uses
  %i.g = getelementptr i8, ptr %i.c, i64 24       ; 6 uses
  br i1 %i.a, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = atomicrmw add ptr %i.g, i64 1 monotonic, align 8
  %i.i = getelementptr i8, ptr %i.c, i64 16       ; 2 uses
  %i.j = add i64 %i.h, 1                          ; 2 uses
  %i.k = load atomic i64, ptr %i.i monotonic, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.0.i.i.i = phi i64 [ %i.k, %bb.c ], [ %i.o, %bb.e ] ; 2 uses
  %i.l = icmp slt i64 %.0.i.i.i, %i.j
  br i1 %i.l, label %bb.e, label %mi_atomic_maxi64_relaxed.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.m = cmpxchg weak ptr %i.i, i64 %.0.i.i.i, i64 %i.j release monotonic, align 8 ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 1
  %i.o = extractvalue { i64, i1 } %i.m, 0
  br i1 %i.n, label %mi_atomic_maxi64_relaxed.exit.i.i, label %bb.d, !llvm.loop !124

mi_atomic_maxi64_relaxed.exit.i.i:                ; preds = %bb.e, %bb.d
  %i.p = atomicrmw add ptr %i.c, i64 1 monotonic, align 8 ; 0 uses
  br label %_mi_stat_increase.exit

bb.f:                                             ; preds = %bb.b
  %i.q = load i64, ptr %i.g, align 8, !tbaa !127
  %i.r = add i64 %i.q, 1                          ; 3 uses
  store i64 %i.r, ptr %i.g, align 8, !tbaa !127
  %i.s = getelementptr i8, ptr %i.c, i64 16       ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !128
  %i.u = icmp sgt i64 %i.r, %i.t
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i64 %i.r, ptr %i.s, align 8, !tbaa !128
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.v = load i64, ptr %i.c, align 8, !tbaa !129
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.c, align 8, !tbaa !129
  br label %_mi_stat_increase.exit

bb.i:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.x = atomicrmw sub ptr %i.g, i64 1 monotonic, align 8
  %i.y = getelementptr i8, ptr %i.c, i64 16       ; 2 uses
  %i.z = add i64 %i.x, -1                         ; 2 uses
  %i.aa = load atomic i64, ptr %i.y monotonic, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %.0.i.i.i15 = phi i64 [ %i.aa, %bb.j ], [ %i.ae, %bb.l ] ; 2 uses
  %i.ab = icmp slt i64 %.0.i.i.i15, %i.z
  br i1 %i.ab, label %bb.l, label %mi_atomic_maxi64_relaxed.exit.i.i16

bb.l:                                             ; preds = %bb.k
  %i.ac = cmpxchg weak ptr %i.y, i64 %.0.i.i.i15, i64 %i.z release monotonic, align 8 ; 2 uses
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  %i.ae = extractvalue { i64, i1 } %i.ac, 0
  br i1 %i.ad, label %mi_atomic_maxi64_relaxed.exit.i.i16, label %bb.k, !llvm.loop !124

mi_atomic_maxi64_relaxed.exit.i.i16:              ; preds = %bb.l, %bb.k
  %i.af = getelementptr i8, ptr %i.c, i64 8
  %i.ag = atomicrmw add ptr %i.af, i64 1 monotonic, align 8 ; 0 uses
  br label %_mi_stat_increase.exit

bb.m:                                             ; preds = %bb.i
  %i.ah = load i64, ptr %i.g, align 8, !tbaa !127
  %i.ai = add i64 %i.ah, -1                       ; 3 uses
  store i64 %i.ai, ptr %i.g, align 8, !tbaa !127
  %i.aj = getelementptr i8, ptr %i.c, i64 16      ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !128
  %i.al = icmp sgt i64 %i.ai, %i.ak
  br i1 %i.al, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !128
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.am = getelementptr i8, ptr %i.c, i64 8       ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !130
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !130
  br label %_mi_stat_increase.exit

_mi_stat_increase.exit:                           ; preds = %bb.o, %mi_atomic_maxi64_relaxed.exit.i.i16, %bb.h, %mi_atomic_maxi64_relaxed.exit.i.i
  %i.ap = phi i64 [ 1, %bb.h ], [ 1, %mi_atomic_maxi64_relaxed.exit.i.i ], [ -1, %mi_atomic_maxi64_relaxed.exit.i.i16 ], [ -1, %bb.o ]
  %i.aq = getelementptr i8, ptr %1, i64 864       ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !638
  %i.as = add i64 %i.ar, %i.ap                    ; 3 uses
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !638
  %i.at = getelementptr i8, ptr %1, i64 872       ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !639
  %i.av = icmp ugt i64 %i.as, %i.au
  br i1 %i.av, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_mi_stat_increase.exit
  store i64 %i.as, ptr %i.at, align 8, !tbaa !639
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_mi_stat_increase.exit
  %i.aw = getelementptr i8, ptr %1, i64 880       ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !640
  %i.ay = add i64 %i.ax, %0                       ; 3 uses
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !640
  %i.az = getelementptr i8, ptr %1, i64 888       ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !641
  %i.bb = icmp ugt i64 %i.ay, %i.ba
  br i1 %i.bb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !641
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @mi_segment_alloc(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef captures(address) %3, ptr noundef readonly captures(none) %4, ptr noundef writeonly captures(none) %5) unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.mi_memid_s, align 8         ; 9 uses
  %7 = alloca %struct.mi_commit_mask_s, align 8   ; 10 uses
  %i.a = load i64, ptr @mi_os_mem_config.0, align 8, !tbaa !91 ; 4 uses
  %i.b = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.a)
  %i.c = icmp samesign ult i64 %i.b, 2
  %i.d = add i64 %i.a, 41303                      ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = sub i64 0, %i.a
  %i.f = and i64 %i.d, %i.e
  br label %mi_segment_calculate_slices.exit

bb.c:                                             ; preds = %bb.a
  %i.g = urem i64 %i.d, %i.a
  %i.h = sub nuw i64 %i.d, %i.g
  br label %mi_segment_calculate_slices.exit

mi_segment_calculate_slices.exit:                 ; preds = %bb.b, %bb.c
  %.0.i.i = phi i64 [ %i.f, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %i.i = add i64 %.0.i.i, 65535                   ; 3 uses
  %i.j = icmp eq i64 %0, 0
  %i.k = or i64 %i.i, 65535
  %i.l = add i64 %i.k, %0
  %i.m = lshr i64 %i.l, 16
  %i.n = select i1 %i.j, i64 512, i64 %i.m        ; 2 uses
  %i.o = icmp samesign ugt i64 %i.n, 4294967295
  br i1 %i.o, label %bb.au, label %bb.d

bb.d:                                             ; preds = %mi_segment_calculate_slices.exit
  %i.p = load atomic i64, ptr @thread_count monotonic, align 8
  %i.q = icmp ugt i64 %i.p, 1
  br i1 %i.q, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr i8, ptr %3, i64 864
  %i.s = load i64, ptr %i.r, align 8, !tbaa !638
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 456), align 8, !tbaa !111
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.f, label %bb.g, !prof !17

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 448)), !inline_history !113
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 448), align 16, !tbaa !114
  %i.w = icmp ult i64 %i.s, %i.v
  br i1 %i.w, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.d, %bb.g
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 104), align 8, !tbaa !111
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.h, label %mi_option_is_enabled.exit, !prof !17

bb.h:                                             ; preds = %.thread
  tail call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 96)), !inline_history !120
  br label %mi_option_is_enabled.exit

mi_option_is_enabled.exit:                        ; preds = %.thread, %bb.h
  %i.z = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 96), align 16, !tbaa !114
  %i.aa = icmp ne i64 %i.z, 0
  br label %bb.i
end_hunk_20
begin_hunk_21_@_PyObject_DebugDumpAddress:bb.a
  %i.fd = load ptr, ptr @stderr, align 8, !tbaa !238
  %i.fe = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.fd) ; 0 uses
  %i.ff = getelementptr i8, ptr %i.dj, i64 3
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !60  ; 2 uses
  %i.fh = load ptr, ptr @stderr, align 8, !tbaa !238
  %i.fi = zext i8 %i.fg to i32
  %i.fj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fh, ptr noundef nonnull @.str.177, i32 noundef 3, i32 noundef %i.fi) #68 ; 0 uses
  %.not61.3 = icmp eq i8 %i.fg, -3
  br i1 %.not61.3, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fk = load ptr, ptr @stderr, align 8, !tbaa !238
  %i.fl = tail call i64 @fwrite(ptr nonnull @.str.174, i64 9, i64 1, ptr %i.fk) #64 ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.fm = load ptr, ptr @stderr, align 8, !tbaa !238
  %i.fn = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.fm) ; 0 uses
  %i.fo = getelementptr i8, ptr %i.dj, i64 4
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !60  ; 2 uses
  %i.fq = load ptr, ptr @stderr, align 8, !tbaa !238
  %i.fr = zext i8 %i.fp to i32
  %i.fs = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fq, ptr noundef nonnull @.str.177, i32 noundef 4, i32 noundef %i.fr) #68 ; 0 uses
  %.not61.4 = icmp eq i8 %i.fp, -3
  br i1 %.not61.4, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ft = load ptr, ptr @stderr, align 8, !tbaa !238
  %i.fu = tail call i64 @fwrite(ptr nonnull @.str.174, i64 9, i64 1, ptr %i.ft) #64 ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.fv = load ptr, ptr @stderr, align 8, !tbaa !238
  %i.fw = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.fv) ; 0 uses
  %i.fx = getelementptr i8, ptr %i.dj, i64 5
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !60  ; 2 uses
  %i.fz = load ptr, ptr @stderr, align 8, !tbaa !238
  %i.ga = zext i8 %i.fy to i32
  %i.gb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fz, ptr noundef nonnull @.str.177, i32 noundef 5, i32 noundef %i.ga) #68 ; 0 uses
  %.not61.5 = icmp eq i8 %i.fy, -3
  br i1 %.not61.5, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gc = load ptr, ptr @stderr, align 8, !tbaa !238
  %i.gd = tail call i64 @fwrite(ptr nonnull @.str.174, i64 9, i64 1, ptr %i.gc) #64 ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.ge = load ptr, ptr @stderr, align 8, !tbaa !238
  %i.gf = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.ge) ; 0 uses
  %i.gg = getelementptr i8, ptr %i.dj, i64 6
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !60  ; 2 uses
  %i.gi = load ptr, ptr @stderr, align 8, !tbaa !238
  %i.gj = zext i8 %i.gh to i32
  %i.gk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gi, ptr noundef nonnull @.str.177, i32 noundef 6, i32 noundef %i.gj) #68 ; 0 uses
  %.not61.6 = icmp eq i8 %i.gh, -3
  br i1 %.not61.6, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gl = load ptr, ptr @stderr, align 8, !tbaa !238
  %i.gm = tail call i64 @fwrite(ptr nonnull @.str.174, i64 9, i64 1, ptr %i.gl) #64 ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.gn = load ptr, ptr @stderr, align 8, !tbaa !238
  %i.go = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.gn) ; 0 uses
  %i.gp = getelementptr i8, ptr %i.dj, i64 7
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !60  ; 2 uses
  %i.gr = load ptr, ptr @stderr, align 8, !tbaa !238
  %i.gs = zext i8 %i.gq to i32
  %i.gt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gr, ptr noundef nonnull @.str.177, i32 noundef 7, i32 noundef %i.gs) #68 ; 0 uses
  %.not61.7 = icmp eq i8 %i.gq, -3
  br i1 %.not61.7, label %.loopexit65.loopexit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gu = load ptr, ptr @stderr, align 8, !tbaa !238
  %i.gv = tail call i64 @fwrite(ptr nonnull @.str.174, i64 9, i64 1, ptr %i.gu) #64 ; 0 uses
  br label %.loopexit65.loopexit

.loopexit65.loopexit:                             ; preds = %bb.at, %bb.as
  %i.gw = load ptr, ptr @stderr, align 8, !tbaa !238
  %i.gx = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.gw) ; 0 uses
  br label %.loopexit65

.loopexit65:                                      ; preds = %.loopexit65.loopexit, %.critedge64
  %.not62 = icmp eq i64 %i.aa, 0
  br i1 %.not62, label %bb.ay, label %bb.au

bb.au:                                            ; preds = %.loopexit65
  %i.gy = load ptr, ptr @stderr, align 8, !tbaa !238
  %i.gz = tail call i64 @fwrite(ptr nonnull @.str.178, i64 14, i64 1, ptr %i.gy) #64 ; 0 uses
  %i.ha = icmp ult ptr %0, %i.dj
  br i1 %i.ha, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.au, %.lr.ph
  %.071 = phi ptr [ %i.hg, %.lr.ph ], [ %0, %bb.au ] ; 2 uses
  %.470 = phi i32 [ %i.hf, %.lr.ph ], [ 0, %bb.au ] ; 2 uses
  %i.hb = load ptr, ptr @stderr, align 8, !tbaa !238
  %i.hc = load i8, ptr %.071, align 1, !tbaa !60
  %i.hd = zext i8 %i.hc to i32
  %i.he = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hb, ptr noundef nonnull @.str.179, i32 noundef %i.hd) #68 ; 0 uses
  %i.hf = add nuw nsw i32 %.470, 1
  %i.hg = getelementptr i8, ptr %.071, i64 1      ; 4 uses
  %i.hh = icmp ult ptr %i.hg, %i.dj               ; 2 uses
  %i.hi = icmp samesign ult i32 %.470, 7
  %i.hj = select i1 %i.hh, i1 %i.hi, i1 false
  br i1 %i.hj, label %.lr.ph, label %._crit_edge, !llvm.loop !661

._crit_edge:                                      ; preds = %.lr.ph
  br i1 %i.hh, label %bb.av, label %.loopexit

bb.av:                                            ; preds = %._crit_edge
  %i.hk = ptrtoint ptr %i.dj to i64
  %i.hl = ptrtoint ptr %i.hg to i64
  %i.hm = sub i64 %i.hk, %i.hl
  %i.hn = icmp sgt i64 %i.hm, 8
  br i1 %i.hn, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ho = load ptr, ptr @stderr, align 8, !tbaa !238
  %i.hp = tail call i64 @fwrite(ptr nonnull @.str.180, i64 4, i64 1, ptr %i.ho) #64 ; 0 uses
  %i.hq = getelementptr i8, ptr %i.dj, i64 -8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.1 = phi ptr [ %i.hq, %bb.aw ], [ %i.hg, %bb.av ] ; 2 uses
  %i.hr = icmp ult ptr %.1, %i.dj
  br i1 %i.hr, label %.lr.ph75, label %.loopexit

.lr.ph75:                                         ; preds = %bb.ax, %.lr.ph75
  %.273 = phi ptr [ %i.hw, %.lr.ph75 ], [ %.1, %bb.ax ] ; 2 uses
  %i.hs = load ptr, ptr @stderr, align 8, !tbaa !238
  %i.ht = load i8, ptr %.273, align 1, !tbaa !60
  %i.hu = zext i8 %i.ht to i32
  %i.hv = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hs, ptr noundef nonnull @.str.179, i32 noundef %i.hu) #68 ; 0 uses
  %i.hw = getelementptr i8, ptr %.273, i64 1      ; 2 uses
  %i.hx = icmp ult ptr %i.hw, %i.dj
  br i1 %i.hx, label %.lr.ph75, label %.loopexit, !llvm.loop !662

.loopexit:                                        ; preds = %.lr.ph75, %bb.au, %bb.ax, %._crit_edge
  %i.hy = load ptr, ptr @stderr, align 8, !tbaa !238
  %i.hz = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.hy) ; 0 uses
  br label %bb.ay

bb.ay:                                            ; preds = %.loopexit, %.loopexit65
  %i.ia = load ptr, ptr @stderr, align 8, !tbaa !238
  %i.ib = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.ia) ; 0 uses
  %i.ic = load ptr, ptr @stderr, align 8, !tbaa !238
  %i.id = tail call i32 @fflush(ptr noundef %i.ic) ; 0 uses
  %i.ie = load ptr, ptr @stderr, align 8, !tbaa !238
  %i.if = tail call i32 @fileno(ptr noundef %i.ie) #55
  tail call void @_PyMem_DumpTraceback(i32 noundef %i.if, ptr noundef nonnull %0) #55
  ret void
}

; Function Attrs: noreturn
declare void @_Py_FatalErrorFormat(ptr noundef, ptr noundef, ...) local_unnamed_addr #47

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #8

declare void @_PyMem_DumpTraceback(i32 noundef, ptr noundef) local_unnamed_addr #48

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #51

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #51

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #51

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #51

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #51

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #51

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #51

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #58

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #51

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #59

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #51

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1>, i1 immarg) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #51

attributes #0 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree norecurse nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint nofree norecurse nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nocallback nofree nosync nounwind willreturn }
attributes #32 = { nofree norecurse nounwind memory(readwrite, argmem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nofree norecurse nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #43 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #44 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #45 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #46 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #47 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #48 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #49 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #50 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #51 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #52 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #53 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #54 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #55 = { nounwind }
attributes #56 = { nofree noinline norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #57 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #58 = { nofree nounwind }
attributes #59 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #60 = { nounwind memory(read) }
attributes #61 = { nounwind willreturn memory(read) }
attributes #62 = { noreturn nounwind }
attributes #63 = { nounwind willreturn memory(none) }
attributes #64 = { cold }
attributes #65 = { nounwind allocsize(0) }
attributes #66 = { nounwind allocsize(0,1) }
attributes #67 = { nounwind allocsize(1) }
attributes #68 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !14, i64 16}
!12 = !{!"mi_page_s", !8, i64 0, !8, i64 4, !9, i64 8, !9, i64 8, !9, i64 8, !9, i64 8, !9, i64 9, !13, i64 10, !13, i64 12, !9, i64 14, !9, i64 15, !9, i64 15, !14, i64 16, !8, i64 24, !8, i64 28, !14, i64 32, !9, i64 40, !9, i64 48, !16, i64 56, !16, i64 64, !9, i64 72}
!13 = !{!"short", !9, i64 0}
!14 = !{!"p1 _ZTS10mi_block_s", !15, i64 0}
!15 = !{!"any pointer", !9, i64 0}
!16 = !{!"p1 _ZTS9mi_page_s", !15, i64 0}
!17 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!18 = !{!12, !8, i64 24}
!19 = !{!20, !9, i64 0}
!20 = !{!"mi_block_s", !9, i64 0}
!21 = !{!12, !8, i64 28}
!22 = !{!23, !24, i64 0}
!23 = !{!"mi_heap_s", !24, i64 0, !9, i64 8, !9, i64 1040, !9, i64 2840, !25, i64 2848, !8, i64 2856, !25, i64 2864, !9, i64 2872, !26, i64 2888, !25, i64 3024, !25, i64 3032, !25, i64 3040, !28, i64 3048, !27, i64 3056, !9, i64 3057, !9, i64 3058, !27, i64 3059}
!24 = !{!"p1 _ZTS8mi_tld_s", !15, i64 0}
!25 = !{!"long", !9, i64 0}
!26 = !{!"mi_random_cxt_s", !9, i64 0, !9, i64 64, !8, i64 128, !27, i64 132}
!27 = !{!"_Bool", !9, i64 0}
!28 = !{!"p1 _ZTS9mi_heap_s", !15, i64 0}
!29 = !{!30, !31, i64 0}
!30 = !{!"mi_tld_s", !31, i64 0, !27, i64 8, !28, i64 16, !28, i64 24, !32, i64 32, !36, i64 952, !37, i64 968}
!31 = !{!"long long", !9, i64 0}
!32 = !{!"mi_segments_tld_s", !9, i64 0, !25, i64 864, !25, i64 872, !25, i64 880, !25, i64 888, !33, i64 896, !34, i64 904, !35, i64 912}
!33 = !{!"p1 _ZTS10mi_stats_s", !15, i64 0}
!34 = !{!"p1 _ZTS11mi_os_tld_s", !15, i64 0}
!35 = !{!"p1 _ZTS19mi_abandoned_pool_s", !15, i64 0}
!36 = !{!"mi_os_tld_s", !25, i64 0, !33, i64 8}
!37 = !{!"mi_stats_s", !38, i64 0, !38, i64 32, !38, i64 64, !38, i64 96, !38, i64 128, !38, i64 160, !38, i64 192, !38, i64 224, !38, i64 256, !38, i64 288, !38, i64 320, !38, i64 352, !38, i64 384, !38, i64 416, !38, i64 448, !39, i64 480, !39, i64 496, !39, i64 512, !39, i64 528, !39, i64 544, !39, i64 560, !39, i64 576, !39, i64 592, !39, i64 608, !39, i64 624}
!38 = !{!"mi_stat_count_s", !25, i64 0, !25, i64 8, !25, i64 16, !25, i64 24}
!39 = !{!"mi_stat_counter_s", !25, i64 0, !25, i64 8}
!40 = !{!15, !15, i64 0}
!41 = !{!30, !27, i64 8}
!42 = !{i8 0, i8 2}
!43 = !{}
!44 = !{ptr @_mi_deferred_free}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = distinct !{!47, !46}
!48 = distinct !{!48, !46}
!49 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!50 = !{ptr @_mi_page_malloc}
!51 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!52 = !{!12, !8, i64 0}
!53 = !{!16, !16, i64 0}
!54 = !{!28, !28, i64 0}
!55 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!56 = !{!"branch_weights", !"expected", i32 2143190828, i32 4292820}
!57 = !{!12, !14, i64 32}
!58 = !{i64 4066739}
!59 = !{!12, !8, i64 4}
!60 = !{!9, !9, i64 0}
!61 = !{!62, !25, i64 16}
!62 = !{!"mi_page_queue_s", !16, i64 0, !16, i64 8, !25, i64 16}
!63 = !{!62, !16, i64 8}
!64 = !{!62, !16, i64 0}
!65 = !{!23, !25, i64 3032}
!66 = !{!23, !25, i64 3040}
!67 = !{!68, !25, i64 208}
!68 = !{!"mi_segment_s", !69, i64 0, !27, i64 24, !27, i64 25, !25, i64 32, !25, i64 40, !70, i64 48, !70, i64 112, !9, i64 176, !71, i64 184, !25, i64 192, !25, i64 200, !25, i64 208, !25, i64 216, !25, i64 224, !25, i64 232, !8, i64 240, !25, i64 248, !9, i64 256, !9, i64 264}
!69 = !{!"mi_memid_s", !9, i64 0, !27, i64 16, !27, i64 17, !27, i64 18, !8, i64 20}
!70 = !{!"mi_commit_mask_s", !9, i64 0}
!71 = !{!"p1 _ZTS12mi_segment_s", !15, i64 0}
!72 = !{!68, !25, i64 192}
!73 = distinct !{!73, !46}
!74 = !{!12, !13, i64 10}
!75 = distinct !{!75, !46}
!76 = distinct !{!76, !46}
!77 = distinct !{!77, !46}
!78 = !{!"branch_weights", !"expected", i32 2145766520, i32 1717128}
!79 = !{!"branch_weights", !"expected", i32 1074010192, i32 1073473456}
!80 = distinct !{!80, !46}
!81 = distinct !{null}
!82 = !{!"branch_weights", !"expected", i32 1074010193, i32 1073473455}
!83 = !{!"branch_weights", i32 4000000, i32 4001}
!84 = !{!"branch_weights", i32 1, i32 1999}
!85 = !{!"branch_weights", i32 0, i32 1}
!86 = distinct !{!86, !46}
!87 = distinct !{!87, !46}
!88 = distinct !{!88, !46}
!89 = distinct !{ptr @mi_new_realloc, null}
!90 = !{!"branch_weights", i32 4001, i32 4000000}
!91 = !{!92, !25, i64 0}
!92 = !{!"mi_os_mem_config_s", !25, i64 0, !25, i64 8, !25, i64 16, !27, i64 24, !27, i64 25, !27, i64 26}
!93 = !{!"branch_weights", i32 2000, i32 2002}
!94 = distinct !{!94, !46}
!95 = !{!23, !25, i64 2864}
!96 = !{!68, !25, i64 216}
!97 = !{!68, !25, i64 224}
!98 = !{!99, !9, i64 32}
!99 = !{!"mi_arena_s", !8, i64 0, !69, i64 8, !9, i64 32, !25, i64 40, !25, i64 48, !25, i64 56, !69, i64 64, !8, i64 88, !27, i64 92, !27, i64 93, !9, i64 96, !9, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !9, i64 136}
!100 = !{!99, !25, i64 40}
!101 = distinct !{!101, !46}
!102 = !{!"branch_weights", i32 -2147483648, i32 0}
!103 = !{!13, !13, i64 0}
!104 = distinct !{!104, !46}
!105 = !{!25, !25, i64 0}
!106 = !{!107, !107, i64 0}
!107 = !{!"p1 omnipotent char", !15, i64 0}
!108 = !{!109, !109, i64 0}
!109 = !{!"p1 short", !15, i64 0}
!110 = !{!69, !8, i64 20}
!111 = !{!112, !8, i64 8}
!112 = !{!"mi_option_desc_s", !25, i64 0, !8, i64 8, !8, i64 12, !107, i64 16, !107, i64 24}
!113 = !{ptr @mi_option_get}
!114 = !{!112, !25, i64 0}
!115 = !{!92, !27, i64 24}
!116 = !{!99, !27, i64 93}
!117 = !{!99, !8, i64 0}
!118 = !{!99, !27, i64 92}
!119 = !{!99, !8, i64 88}
!120 = !{ptr @mi_option_is_enabled, ptr @mi_option_get}
!121 = !{!36, !33, i64 8}
!122 = distinct !{!122, !46}
!123 = distinct !{!123, !46}
!124 = distinct !{!124, !46}
!125 = !{!27, !27, i64 0}
!126 = !{!"branch_weights", i32 1, i32 4001}
!127 = !{!38, !25, i64 24}
!128 = !{!38, !25, i64 16}
!129 = !{!38, !25, i64 0}
!130 = !{!38, !25, i64 8}
!131 = !{!99, !25, i64 48}
!132 = !{!99, !27, i64 24}
!133 = !{!99, !15, i64 120}
!134 = distinct !{!134, !135}
!135 = !{!"llvm.loop.unroll.disable"}
!136 = distinct !{!136, !46}
!137 = distinct !{!137, !135}
!138 = !{!139, !25, i64 0}
!139 = !{!"timespec", !25, i64 0, !25, i64 8}
!140 = !{!139, !25, i64 8}
!141 = !{!99, !15, i64 128}
!142 = distinct !{!142, !135}
!143 = distinct !{!143, !46}
!144 = distinct !{!144, !46}
!145 = distinct !{!145, !46}
!146 = distinct !{!146, !46}
!147 = distinct !{!147, !46, !148, !149}
!148 = !{!"llvm.loop.isvectorized", i32 1}
!149 = !{!"llvm.loop.unroll.runtime.disable"}
!150 = distinct !{!150, !46, !149, !148}
!151 = distinct !{!151, !46}
!152 = distinct !{!152, !46}
!153 = distinct !{!153, !46}
!154 = distinct !{!154, !46}
!155 = distinct !{!155, !46}
!156 = !{!99, !8, i64 28}
!157 = !{!99, !25, i64 56}
!158 = distinct !{!158, !46}
!159 = !{!160}
!160 = distinct !{!160, !161, !"_mi_memid_create: argument 0"}
!161 = distinct !{!161, !"_mi_memid_create"}
!162 = !{!69, !27, i64 17}
!163 = !{!69, !27, i64 18}
!164 = !{!69, !27, i64 16}
!165 = !{i64 0, i64 16, !60, i64 16, i64 1, !125, i64 17, i64 1, !125, i64 18, i64 1, !125, i64 20, i64 4, !7}
!166 = !{!99, !9, i64 104}
!167 = !{!99, !9, i64 96}
!168 = !{!99, !15, i64 112}
!169 = !{!99, !27, i64 25}
!170 = distinct !{!170, !46}
!171 = distinct !{null, ptr @_mi_fputs}
!172 = distinct !{!172, !46}
!173 = distinct !{!173, !46}
!174 = distinct !{!174, !46}
!175 = !{!26, !8, i64 128}
!176 = distinct !{!176, !46}
!177 = !{ptr @mi_option_get, ptr @mi_option_is_enabled}
!178 = distinct !{!178, !46}
!179 = distinct !{!179, !46}
!180 = distinct !{!180, !46}
!181 = distinct !{!181, !46}
!182 = distinct !{!182, !46}
end_hunk_21
