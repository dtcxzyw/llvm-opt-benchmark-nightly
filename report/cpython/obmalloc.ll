inline.NumInlined: 1359
inline.NumDeleted: 295
begin_hunk_0_@mi_malloc_good_size:bb.a
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
  %i.g = tail call ptr asm "movq %fs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) null) #61, !srcloc !58
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
  %1 = lshr i64 %i.c, 25
  %2 = and i64 %1, 63
  %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.67108623 = icmp ugt i64 %i.c, 43980498665471
  %.sink.i.i.i = select i1 %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.67108623, i64 0, i64 %2 ; 2 uses
  %i.f = tail call i64 @llvm.umin.i64(i64 %i.c, i64 43980465111040)
  %.0.i.i.i = lshr i64 %i.f, 31                   ; 6 uses
  %i.g = getelementptr [8 x i8], ptr @mi_segment_map, i64 %.0.i.i.i
  %i.h = load atomic i64, ptr %i.g monotonic, align 8 ; 2 uses
  %i.i = shl nuw i64 1, %.sink.i.i.i              ; 2 uses
  %i.j = and i64 %i.h, %i.i
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %_mi_segment_of.exit.i, !prof !17

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %.0.i.i.i, 20480
  br i1 %i.k, label %_mi_segment_of.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add i64 %i.i, -1
  %i.m = and i64 %i.h, %i.l                       ; 2 uses
  %.not45.i.i = icmp eq i64 %i.m, 0
  br i1 %.not45.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.n = icmp eq i64 %.0.i.i.i, 0
  br i1 %i.n, label %_mi_segment_of.exit.thread.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.e, %.preheader.i.i
  %.039.i.i = phi i64 [ %i.o, %.preheader.i.i ], [ %.0.i.i.i, %bb.e ]
  %i.o = add nsw i64 %.039.i.i, -1                ; 4 uses
  %i.p = getelementptr [8 x i8], ptr @mi_segment_map, i64 %i.o
  %i.q = load atomic i64, ptr %i.p monotonic, align 8 ; 3 uses
  %i.r = icmp ne i64 %i.q, 0
  %i.s = icmp ne i64 %i.o, 0
  %i.t = and i1 %i.r, %i.s
  br i1 %i.t, label %.preheader.i.i, label %bb.f, !llvm.loop !94

bb.f:                                             ; preds = %.preheader.i.i
  %.not46.i.i = icmp eq i64 %i.q, 0
  br i1 %.not46.i.i, label %_mi_segment_of.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.lcssa.sink.i.i = phi i64 [ %i.m, %bb.d ], [ %i.q, %bb.f ]
  %.140.i.i = phi i64 [ %.0.i.i.i, %bb.d ], [ %i.o, %bb.f ]
  %i.u = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.lcssa.sink.i.i, i1 true)
  %.138.i.i = xor i64 %i.u, 63
  %.neg59.i.i = sub i64 %.140.i.i, %.0.i.i.i
  %.neg57.i.i = sub nsw i64 %.138.i.i, %.sink.i.i.i
  %i.v = shl i64 %.neg59.i.i, 31
  %i.w = shl nsw i64 %.neg57.i.i, 25
  %i.x = getelementptr i8, ptr %i.e, i64 %i.v
  %i.y = getelementptr i8, ptr %i.x, i64 %i.w     ; 5 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_mi_segment_of.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = load i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_heap_main, i64 2864), align 8, !tbaa !95
  %i.ac = xor i64 %i.ab, %i.aa
  %i.ad = getelementptr i8, ptr %i.y, i64 216
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !96
  %.not50.i.i = icmp eq i64 %i.ac, %i.ae
  br i1 %.not50.i.i, label %bb.i, label %_mi_segment_of.exit.thread.i, !prof !55

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr i8, ptr %i.y, i64 224
  %.val.i.i = load i64, ptr %i.af, align 32, !tbaa !97
  %i.ag = shl i64 %.val.i.i, 16
  %i.ah = getelementptr i8, ptr %i.y, i64 %i.ag
  %.not51.i.i = icmp ugt ptr %i.ah, %0
  br i1 %.not51.i.i, label %mi_is_valid_pointer.exit, label %_mi_segment_of.exit.thread.i

_mi_segment_of.exit.i:                            ; preds = %bb.b
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %_mi_segment_of.exit.thread.i, label %mi_is_valid_pointer.exit

_mi_segment_of.exit.thread.i:                     ; preds = %_mi_segment_of.exit.i, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %bb.a
  %i.ai = load atomic i64, ptr @mi_arena_count monotonic, align 64 ; 2 uses
  %.not2124.not.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not2124.not.i.i, label %mi_is_valid_pointer.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_mi_segment_of.exit.thread.i, %.critedge.i.i
  %.01525.i.i = phi i64 [ %i.at, %.critedge.i.i ], [ 0, %_mi_segment_of.exit.thread.i ] ; 2 uses
  %i.aj = getelementptr [8 x i8], ptr @mi_arenas, i64 %.01525.i.i
  %i.ak = load atomic ptr, ptr %i.aj acquire, align 8 ; 3 uses
  %.not.i2.i = icmp eq ptr %i.ak, null
  br i1 %.not.i2.i, label %.critedge.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.al = getelementptr i8, ptr %i.ak, i64 32     ; 2 uses
  %i.am = load atomic ptr, ptr %i.al seq_cst, align 8, !tbaa !98
  %.not20.i.i = icmp ugt ptr %i.am, %0
  br i1 %.not20.i.i, label %.critedge.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = load atomic ptr, ptr %i.al seq_cst, align 8, !tbaa !98
  %i.ao = getelementptr i8, ptr %i.ak, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !100
  %i.aq = shl i64 %i.ap, 25
  %i.ar = getelementptr i8, ptr %i.an, i64 %i.aq
  %i.as = icmp ugt ptr %i.ar, %0
  br i1 %i.as, label %mi_is_valid_pointer.exit, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.k, %bb.j, %.lr.ph.i.i
  %i.at = add nuw i64 %.01525.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.at, %i.ai
  br i1 %exitcond.not.i.i, label %mi_is_valid_pointer.exit, label %.lr.ph.i.i, !llvm.loop !101

mi_is_valid_pointer.exit:                         ; preds = %bb.k, %.critedge.i.i, %bb.i, %_mi_segment_of.exit.i, %_mi_segment_of.exit.thread.i
  %i.au = phi i1 [ true, %_mi_segment_of.exit.i ], [ true, %bb.i ], [ false, %_mi_segment_of.exit.thread.i ], [ true, %bb.k ], [ false, %.critedge.i.i ]
  ret i1 %i.au
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
end_hunk_0
begin_hunk_1_@_PyObject_DebugDumpAddress:bb.a
  %i.eq = zext i8 %i.eo to i32
  %i.er = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ep, ptr noundef nonnull @.str.177, i32 noundef 1, i32 noundef %i.eq) #69 ; 0 uses
  %.not61.1 = icmp eq i8 %i.eo, -3
  br i1 %.not61.1, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.es = load ptr, ptr @stderr, align 8, !tbaa !238
  %i.et = tail call i64 @fwrite(ptr nonnull @.str.174, i64 9, i64 1, ptr %i.es) #65 ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.eu = load ptr, ptr @stderr, align 8, !tbaa !238
  %i.ev = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.eu) ; 0 uses
  %i.ew = getelementptr i8, ptr %i.dj, i64 2
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !60  ; 2 uses
  %i.ey = load ptr, ptr @stderr, align 8, !tbaa !238
  %i.ez = zext i8 %i.ex to i32
  %i.fa = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ey, ptr noundef nonnull @.str.177, i32 noundef 2, i32 noundef %i.ez) #69 ; 0 uses
  %.not61.2 = icmp eq i8 %i.ex, -3
  br i1 %.not61.2, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fb = load ptr, ptr @stderr, align 8, !tbaa !238
  %i.fc = tail call i64 @fwrite(ptr nonnull @.str.174, i64 9, i64 1, ptr %i.fb) #65 ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.fd = load ptr, ptr @stderr, align 8, !tbaa !238
  %i.fe = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.fd) ; 0 uses
  %i.ff = getelementptr i8, ptr %i.dj, i64 3
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !60  ; 2 uses
  %i.fh = load ptr, ptr @stderr, align 8, !tbaa !238
  %i.fi = zext i8 %i.fg to i32
  %i.fj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fh, ptr noundef nonnull @.str.177, i32 noundef 3, i32 noundef %i.fi) #69 ; 0 uses
  %.not61.3 = icmp eq i8 %i.fg, -3
  br i1 %.not61.3, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fk = load ptr, ptr @stderr, align 8, !tbaa !238
  %i.fl = tail call i64 @fwrite(ptr nonnull @.str.174, i64 9, i64 1, ptr %i.fk) #65 ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.fm = load ptr, ptr @stderr, align 8, !tbaa !238
  %i.fn = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.fm) ; 0 uses
  %i.fo = getelementptr i8, ptr %i.dj, i64 4
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !60  ; 2 uses
  %i.fq = load ptr, ptr @stderr, align 8, !tbaa !238
  %i.fr = zext i8 %i.fp to i32
  %i.fs = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fq, ptr noundef nonnull @.str.177, i32 noundef 4, i32 noundef %i.fr) #69 ; 0 uses
  %.not61.4 = icmp eq i8 %i.fp, -3
  br i1 %.not61.4, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ft = load ptr, ptr @stderr, align 8, !tbaa !238
  %i.fu = tail call i64 @fwrite(ptr nonnull @.str.174, i64 9, i64 1, ptr %i.ft) #65 ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.fv = load ptr, ptr @stderr, align 8, !tbaa !238
  %i.fw = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.fv) ; 0 uses
  %i.fx = getelementptr i8, ptr %i.dj, i64 5
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !60  ; 2 uses
  %i.fz = load ptr, ptr @stderr, align 8, !tbaa !238
  %i.ga = zext i8 %i.fy to i32
  %i.gb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fz, ptr noundef nonnull @.str.177, i32 noundef 5, i32 noundef %i.ga) #69 ; 0 uses
  %.not61.5 = icmp eq i8 %i.fy, -3
  br i1 %.not61.5, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gc = load ptr, ptr @stderr, align 8, !tbaa !238
  %i.gd = tail call i64 @fwrite(ptr nonnull @.str.174, i64 9, i64 1, ptr %i.gc) #65 ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.ge = load ptr, ptr @stderr, align 8, !tbaa !238
  %i.gf = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.ge) ; 0 uses
  %i.gg = getelementptr i8, ptr %i.dj, i64 6
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !60  ; 2 uses
  %i.gi = load ptr, ptr @stderr, align 8, !tbaa !238
  %i.gj = zext i8 %i.gh to i32
  %i.gk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gi, ptr noundef nonnull @.str.177, i32 noundef 6, i32 noundef %i.gj) #69 ; 0 uses
  %.not61.6 = icmp eq i8 %i.gh, -3
  br i1 %.not61.6, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gl = load ptr, ptr @stderr, align 8, !tbaa !238
  %i.gm = tail call i64 @fwrite(ptr nonnull @.str.174, i64 9, i64 1, ptr %i.gl) #65 ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.gn = load ptr, ptr @stderr, align 8, !tbaa !238
  %i.go = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.gn) ; 0 uses
  %i.gp = getelementptr i8, ptr %i.dj, i64 7
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !60  ; 2 uses
  %i.gr = load ptr, ptr @stderr, align 8, !tbaa !238
  %i.gs = zext i8 %i.gq to i32
  %i.gt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gr, ptr noundef nonnull @.str.177, i32 noundef 7, i32 noundef %i.gs) #69 ; 0 uses
  %.not61.7 = icmp eq i8 %i.gq, -3
  br i1 %.not61.7, label %.loopexit65.loopexit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gu = load ptr, ptr @stderr, align 8, !tbaa !238
  %i.gv = tail call i64 @fwrite(ptr nonnull @.str.174, i64 9, i64 1, ptr %i.gu) #65 ; 0 uses
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
  %i.gz = tail call i64 @fwrite(ptr nonnull @.str.178, i64 14, i64 1, ptr %i.gy) #65 ; 0 uses
  %i.ha = icmp ult ptr %0, %i.dj
  br i1 %i.ha, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.au, %.lr.ph
  %.071 = phi ptr [ %i.hg, %.lr.ph ], [ %0, %bb.au ] ; 2 uses
  %.470 = phi i32 [ %i.hf, %.lr.ph ], [ 0, %bb.au ] ; 2 uses
  %i.hb = load ptr, ptr @stderr, align 8, !tbaa !238
  %i.hc = load i8, ptr %.071, align 1, !tbaa !60
  %i.hd = zext i8 %i.hc to i32
  %i.he = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hb, ptr noundef nonnull @.str.179, i32 noundef %i.hd) #69 ; 0 uses
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
  %i.hp = tail call i64 @fwrite(ptr nonnull @.str.180, i64 4, i64 1, ptr %i.ho) #65 ; 0 uses
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
  %i.hv = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hs, ptr noundef nonnull @.str.179, i32 noundef %i.hu) #69 ; 0 uses
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
  %i.if = tail call i32 @fileno(ptr noundef %i.ie) #56
  tail call void @_PyMem_DumpTraceback(i32 noundef %i.if, ptr noundef nonnull %0) #56
  ret void
}

; Function Attrs: noreturn
declare void @_Py_FatalErrorFormat(ptr noundef, ptr noundef, ...) local_unnamed_addr #48

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #8

declare void @_PyMem_DumpTraceback(i32 noundef, ptr noundef) local_unnamed_addr #49

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #52

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #52

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #52

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #52

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #52

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #52

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #52

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #59

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #52

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #27

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #60

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #52

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1>, i1 immarg) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #52

attributes #0 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree norecurse nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint nofree norecurse nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nocallback nofree nosync nounwind willreturn }
attributes #33 = { nofree norecurse nounwind memory(readwrite, argmem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nofree norecurse nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { nofree norecurse nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #43 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #44 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #45 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #46 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #47 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #48 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #49 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #50 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #51 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #52 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #53 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #54 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #55 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #56 = { nounwind }
attributes #57 = { nofree noinline norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #58 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #59 = { nofree nounwind }
attributes #60 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #61 = { nounwind memory(read) }
attributes #62 = { nounwind willreturn memory(read) }
attributes #63 = { noreturn nounwind }
attributes #64 = { nounwind willreturn memory(none) }
attributes #65 = { cold }
attributes #66 = { nounwind allocsize(0) }
attributes #67 = { nounwind allocsize(0,1) }
attributes #68 = { nounwind allocsize(1) }
attributes #69 = { cold nounwind }

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
end_hunk_1
