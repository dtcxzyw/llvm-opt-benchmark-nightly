inline.NumInlined: 42
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@hwloc_bitmap_sscanf:bb.a
  %i.ba = add nsw i32 %.2, -1                     ; 4 uses
  %i.bb = shl nsw i32 %i.ba, 5
  %i.bc = and i32 %i.bb, 32
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = shl i64 %i.ay, %i.bd
  %i.bf = or i64 %i.be, %.033                     ; 2 uses
  %i.bg = and i32 %i.ba, 1
  %.not44 = icmp eq i32 %i.bg, 0
  br i1 %.not44, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bh = load ptr, ptr %i.aw, align 8, !tbaa !16
  %i.bi = lshr exact i32 %i.ba, 1
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bj
  store i64 %i.bf, ptr %i.bk, align 8, !tbaa !17
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.134 = phi i64 [ %i.bf, %bb.q ], [ 0, %bb.r ]
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !23  ; 2 uses
  %.not45 = icmp eq i8 %i.bm, 44                  ; 2 uses
  %i.bn = icmp ne i8 %i.bm, 0
  %i.bo = icmp ne i32 %.2, 1
  %or.cond = or i1 %i.bo, %i.bn
  %. = select i1 %or.cond, i32 6, i32 5
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %.3 = select i1 %.not45, ptr %i.bp, ptr %.237
  %.0 = select i1 %.not45, i32 0, i32 %.
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  switch i32 %.0, label %.unreachabledefault [
    i32 0, label %bb.n
    i32 5, label %bb.t
    i32 6, label %bb.u
  ], !llvm.loop !31

bb.t:                                             ; preds = %bb.s, %bb.n
  store i32 %.031, ptr %i.av, align 8, !tbaa !19
  br label %hwloc_bitmap_reset_by_ulongs.exit.thread

bb.u:                                             ; preds = %bb.s
  %i.bq = load i32, ptr %i.an, align 4, !tbaa !15
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.v, label %hwloc_bitmap_reset_by_ulongs.exit.thread.i46

bb.v:                                             ; preds = %bb.u
  %i.bs = load ptr, ptr %i.aw, align 8, !tbaa !16
  %i.bt = call dereferenceable_or_null(8) ptr @realloc(ptr noundef %i.bs, i64 noundef 8) #21 ; 2 uses
  %.not.not.i.i.i48 = icmp eq ptr %i.bt, null
  br i1 %.not.not.i.i.i48, label %hwloc_bitmap_reset_by_ulongs.exit.i49, label %bb.w

bb.w:                                             ; preds = %bb.v
  store ptr %i.bt, ptr %i.aw, align 8, !tbaa !16
  store i32 1, ptr %i.an, align 4, !tbaa !15
  br label %hwloc_bitmap_reset_by_ulongs.exit.thread.i46

hwloc_bitmap_reset_by_ulongs.exit.thread.i46:     ; preds = %bb.w, %bb.u
  store i32 1, ptr %0, align 8, !tbaa !11
  br label %.lr.ph.i.i47

hwloc_bitmap_reset_by_ulongs.exit.i49:            ; preds = %bb.v
  %.pr.i50 = load i32, ptr %0, align 8, !tbaa !11 ; 2 uses
  %.not.i.i51 = icmp eq i32 %.pr.i50, 0
  br i1 %.not.i.i51, label %hwloc_bitmap_zero.exit, label %.lr.ph.i.i47

.lr.ph.i.i47:                                     ; preds = %hwloc_bitmap_reset_by_ulongs.exit.i49, %hwloc_bitmap_reset_by_ulongs.exit.thread.i46
  %i.bu = phi i32 [ 1, %hwloc_bitmap_reset_by_ulongs.exit.thread.i46 ], [ %.pr.i50, %hwloc_bitmap_reset_by_ulongs.exit.i49 ]
  %i.bv = load ptr, ptr %i.aw, align 8, !tbaa !16
  %i.bw = zext i32 %i.bu to i64
  %i.bx = shl nuw nsw i64 %i.bw, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bv, i8 0, i64 %i.bx, i1 false), !tbaa !17
  br label %hwloc_bitmap_zero.exit

hwloc_bitmap_zero.exit:                           ; preds = %hwloc_bitmap_reset_by_ulongs.exit.i49, %.lr.ph.i.i47
  store i32 0, ptr %i.av, align 8, !tbaa !19
  br label %hwloc_bitmap_reset_by_ulongs.exit.thread

.unreachabledefault:                              ; preds = %bb.s
  unreachable

hwloc_bitmap_reset_by_ulongs.exit.thread:         ; preds = %bb.k, %hwloc_bitmap_zero.exit, %bb.t, %hwloc_bitmap_fill.exit
  %.038 = phi i32 [ 0, %hwloc_bitmap_fill.exit ], [ -1, %hwloc_bitmap_zero.exit ], [ 0, %bb.t ], [ -1, %bb.k ]
  ret i32 %.038
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @hwloc_bitmap_fill(ptr nofree noundef captures(none) initializes((16, 20)) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !15
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %hwloc_bitmap_reset_by_ulongs.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.f = tail call dereferenceable_or_null(8) ptr @realloc(ptr noundef %i.e, i64 noundef 8) #21 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.not.i.i, label %hwloc_bitmap_reset_by_ulongs.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.f, ptr %i.d, align 8, !tbaa !16
  store i32 1, ptr %i.a, align 4, !tbaa !15
  br label %hwloc_bitmap_reset_by_ulongs.exit.thread

hwloc_bitmap_reset_by_ulongs.exit.thread:         ; preds = %bb.a, %bb.c
  store i32 1, ptr %0, align 8, !tbaa !11
  br label %.lr.ph.i

hwloc_bitmap_reset_by_ulongs.exit:                ; preds = %bb.b
  %.pr = load i32, ptr %0, align 8, !tbaa !11     ; 2 uses
  %.not.i = icmp eq i32 %.pr, 0
  br i1 %.not.i, label %hwloc_bitmap__fill.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %hwloc_bitmap_reset_by_ulongs.exit.thread, %hwloc_bitmap_reset_by_ulongs.exit
  %i.g = phi i32 [ 1, %hwloc_bitmap_reset_by_ulongs.exit.thread ], [ %.pr, %hwloc_bitmap_reset_by_ulongs.exit ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16
  %i.j = zext i32 %i.g to i64
  %i.k = shl nuw nsw i64 %i.j, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, i8 -1, i64 %i.k, i1 false), !tbaa !17
  br label %hwloc_bitmap__fill.exit

hwloc_bitmap__fill.exit:                          ; preds = %hwloc_bitmap_reset_by_ulongs.exit, %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.l, align 8, !tbaa !19
  ret void
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @hwloc_bitmap_zero(ptr nofree noundef captures(none) initializes((16, 20)) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !15
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %hwloc_bitmap_reset_by_ulongs.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.f = tail call dereferenceable_or_null(8) ptr @realloc(ptr noundef %i.e, i64 noundef 8) #21 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.not.i.i, label %hwloc_bitmap_reset_by_ulongs.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.f, ptr %i.d, align 8, !tbaa !16
  store i32 1, ptr %i.a, align 4, !tbaa !15
  br label %hwloc_bitmap_reset_by_ulongs.exit.thread

hwloc_bitmap_reset_by_ulongs.exit.thread:         ; preds = %bb.a, %bb.c
  store i32 1, ptr %0, align 8, !tbaa !11
  br label %.lr.ph.i

hwloc_bitmap_reset_by_ulongs.exit:                ; preds = %bb.b
  %.pr = load i32, ptr %0, align 8, !tbaa !11     ; 2 uses
  %.not.i = icmp eq i32 %.pr, 0
  br i1 %.not.i, label %hwloc_bitmap__zero.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %hwloc_bitmap_reset_by_ulongs.exit.thread, %hwloc_bitmap_reset_by_ulongs.exit
  %i.g = phi i32 [ 1, %hwloc_bitmap_reset_by_ulongs.exit.thread ], [ %.pr, %hwloc_bitmap_reset_by_ulongs.exit ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16
  %i.j = zext i32 %i.g to i64
  %i.k = shl nuw nsw i64 %i.j, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, i8 0, i64 %i.k, i1 false), !tbaa !17
  br label %hwloc_bitmap__zero.exit

hwloc_bitmap__zero.exit:                          ; preds = %hwloc_bitmap_reset_by_ulongs.exit, %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.l, align 8, !tbaa !19
  ret void
}

; Function Attrs: nofree nounwind uwtable
define range(i32 -1, -2147483648) i32 @hwloc_bitmap_list_snprintf(ptr noalias nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr noalias nofree noundef readonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 1, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.b = load i32, ptr %2, align 8, !tbaa !11     ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %wide.trip.count.i = zext i32 %i.b to i64       ; 4 uses
  %3 = shl i32 %i.b, 6                            ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.p, %bb.c
  %.049 = phi i32 [ -1, %bb.c ], [ %i.bv, %bb.p ] ; 4 uses
  %.047 = phi i64 [ %1, %bb.c ], [ %i.bt, %bb.p ] ; 7 uses
  %.045 = phi ptr [ %0, %bb.c ], [ %i.bs, %bb.p ] ; 4 uses
  %.041 = phi i32 [ 0, %bb.c ], [ %i.bl, %bb.p ]  ; 4 uses
  %.not56 = phi ptr [ @.str.13, %bb.c ], [ @.str.12, %bb.p ]
  %.not57 = phi ptr [ @.str.11, %bb.c ], [ @.str.10, %bb.p ]
  %.not58 = phi ptr [ @.str.9, %bb.c ], [ @.str.8, %bb.p ]
  %i.d = add nsw i32 %.049, 1                     ; 2 uses
  %i.e = sdiv i32 %i.d, 64                        ; 3 uses
  %.not.i = icmp ult i32 %i.e, %i.b
  br i1 %.not.i, label %.preheader.i, label %bb.f

.preheader.i:                                     ; preds = %bb.d
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %i.g = icmp sgt i32 %.049, -1
  %i.h = and i32 %.049, 63
  %i.i = xor i32 %i.h, 63
  %i.j = zext nneg i32 %i.i to i64
  %i.k = lshr i64 -1, %i.j
  %i.l = xor i64 %i.k, -1
  br i1 %i.g, label %.preheader.split.i.preheader, label %.preheader.split.us.i.preheader

.preheader.split.us.i.preheader:                  ; preds = %.preheader.i
  %i.m = zext i32 %i.e to i64
  br label %.preheader.split.us.i

.preheader.split.i.preheader:                     ; preds = %.preheader.i
  %i.n = lshr i32 %.049, 6
  %i.o = zext nneg i32 %i.e to i64
  %i.p = zext nneg i32 %i.n to i64
  br label %.preheader.split.i

.preheader.split.us.i:                            ; preds = %bb.e, %.preheader.split.us.i.preheader
  %indvars.iv = phi i64 [ %i.m, %.preheader.split.us.i.preheader ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.r = load i64, ptr %i.q, align 8, !tbaa !17   ; 2 uses
  %.not28.us.i = icmp eq i64 %i.r, 0
  br i1 %.not28.us.i, label %bb.e, label %.loopexit.i

bb.e:                                             ; preds = %.preheader.split.us.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.split.us.i, label %.preheader.split.us.i, !llvm.loop !32

bb.f:                                             ; preds = %bb.d
  %i.s = load i32, ptr %i.a, align 8, !tbaa !19
  %.not29.i = icmp eq i32 %i.s, 0
  br i1 %.not29.i, label %hwloc_bitmap_next.exit.thread, label %hwloc_bitmap_next.exit

.preheader.split.i:                               ; preds = %bb.g, %.preheader.split.i.preheader
  %indvars.iv124 = phi i64 [ %i.o, %.preheader.split.i.preheader ], [ %indvars.iv.next125, %bb.g ] ; 4 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv124
  %i.u = load i64, ptr %i.t, align 8, !tbaa !17
  %i.v = icmp eq i64 %indvars.iv124, %i.p
  %i.w = select i1 %i.v, i64 %i.l, i64 -1
  %spec.select35.i = and i64 %i.w, %i.u           ; 2 uses
  %.not28.i = icmp eq i64 %spec.select35.i, 0
  br i1 %.not28.i, label %bb.g, label %.loopexit.i

bb.g:                                             ; preds = %.preheader.split.i
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %exitcond42.not.i = icmp eq i64 %indvars.iv.next125, %wide.trip.count.i
  br i1 %exitcond42.not.i, label %.split.us.i, label %.preheader.split.i, !llvm.loop !32

.split.us.i:                                      ; preds = %bb.e, %bb.g
  %i.x = load i32, ptr %i.a, align 8, !tbaa !19
  %.not27.i = icmp eq i32 %i.x, 0
  br i1 %.not27.i, label %hwloc_bitmap_next.exit.thread, label %hwloc_bitmap_next.exit.thread81

.loopexit.i:                                      ; preds = %.preheader.split.us.i, %.preheader.split.i
  %.us-phi.i = phi i64 [ %spec.select35.i, %.preheader.split.i ], [ %i.r, %.preheader.split.us.i ]
  %.us-phi34.i.in = phi i64 [ %indvars.iv124, %.preheader.split.i ], [ %indvars.iv, %.preheader.split.us.i ]
  %.us-phi34.i = trunc i64 %.us-phi34.i.in to i32
  %i.y = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.us-phi.i, i1 true)
  %i.z = trunc nuw nsw i64 %i.y to i32
  %i.aa = shl i32 %.us-phi34.i, 6
  %i.ab = or disjoint i32 %i.aa, %i.z
  br label %hwloc_bitmap_next.exit

hwloc_bitmap_next.exit:                           ; preds = %bb.f, %.loopexit.i
  %.2.i = phi i32 [ %i.d, %bb.f ], [ %i.ab, %.loopexit.i ] ; 2 uses
  %i.ac = icmp eq i32 %.2.i, -1
  br i1 %i.ac, label %hwloc_bitmap_next.exit.thread, label %hwloc_bitmap_next.exit.thread81

hwloc_bitmap_next.exit.thread81:                  ; preds = %.split.us.i, %hwloc_bitmap_next.exit
  %.2.i83 = phi i32 [ %.2.i, %hwloc_bitmap_next.exit ], [ %3, %.split.us.i ] ; 7 uses
  %i.ad = add nuw nsw i32 %.2.i83, 1              ; 3 uses
  %i.ae = sdiv i32 %i.ad, 64                      ; 3 uses
  %.not.i61 = icmp ult i32 %i.ae, %i.b
  br i1 %.not.i61, label %.preheader.i65, label %bb.i

.preheader.i65:                                   ; preds = %hwloc_bitmap_next.exit.thread81
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !16  ; 2 uses
  %i.ag = icmp sgt i32 %.2.i83, -1
  %i.ah = and i32 %.2.i83, 63
  %i.ai = xor i32 %i.ah, 63
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = lshr i64 -1, %i.aj
  %i.al = xor i64 %i.ak, -1
  br i1 %i.ag, label %.preheader.split.preheader.i, label %.preheader.split.us.i66.preheader

.preheader.split.us.i66.preheader:                ; preds = %.preheader.i65
  %i.am = zext i32 %i.ae to i64
  br label %.preheader.split.us.i66

.preheader.split.preheader.i:                     ; preds = %.preheader.i65
  %i.an = lshr i32 %.2.i83, 6
  %i.ao = zext nneg i32 %i.ae to i64
  %i.ap = zext nneg i32 %i.an to i64
  br label %.preheader.split.i76

.preheader.split.us.i66:                          ; preds = %bb.h, %.preheader.split.us.i66.preheader
  %indvars.iv127 = phi i64 [ %i.am, %.preheader.split.us.i66.preheader ], [ %indvars.iv.next128, %bb.h ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv127
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !17 ; 2 uses
  %.not28.us.i68 = icmp eq i64 %i.ar, -1
  br i1 %.not28.us.i68, label %bb.h, label %.loopexit.loopexit36.i

bb.h:                                             ; preds = %.preheader.split.us.i66
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %exitcond.not.i72 = icmp eq i64 %indvars.iv.next128, %wide.trip.count.i
  br i1 %exitcond.not.i72, label %.split.us.i73, label %.preheader.split.us.i66, !llvm.loop !33

bb.i:                                             ; preds = %hwloc_bitmap_next.exit.thread81
  %i.as = load i32, ptr %i.a, align 8, !tbaa !19
  %.not29.i62 = icmp eq i32 %i.as, 0
  %..i63 = select i1 %.not29.i62, i32 %i.ad, i32 -1
  br label %hwloc_bitmap_next_unset.exit

.preheader.split.i76:                             ; preds = %bb.j, %.preheader.split.preheader.i
  %indvars.iv.i = phi i64 [ %i.ao, %.preheader.split.preheader.i ], [ %indvars.iv.next.i, %bb.j ] ; 4 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.i
  %i.au = load i64, ptr %i.at, align 8, !tbaa !17
  %i.av = xor i64 %i.au, -1
  %i.aw = icmp eq i64 %indvars.iv.i, %i.ap
  %i.ax = select i1 %i.aw, i64 %i.al, i64 -1
  %spec.select35.i77 = and i64 %i.ax, %i.av       ; 2 uses
  %.not28.i78 = icmp eq i64 %spec.select35.i77, 0
  br i1 %.not28.i78, label %bb.j, label %.loopexit.i69

bb.j:                                             ; preds = %.preheader.split.i76
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond43.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond43.not.i, label %.split.us.i73, label %.preheader.split.i76, !llvm.loop !33

.split.us.i73:                                    ; preds = %bb.h, %bb.j
  %i.ay = load i32, ptr %i.a, align 8, !tbaa !19
  %.not27.i74 = icmp eq i32 %i.ay, 0
  %spec.select.i75 = select i1 %.not27.i74, i32 %3, i32 -1
  br label %hwloc_bitmap_next_unset.exit

.loopexit.loopexit36.i:                           ; preds = %.preheader.split.us.i66
  %i.az = xor i64 %i.ar, -1
  br label %.loopexit.i69

.loopexit.i69:                                    ; preds = %.preheader.split.i76, %.loopexit.loopexit36.i
  %.us-phi.i70 = phi i64 [ %i.az, %.loopexit.loopexit36.i ], [ %spec.select35.i77, %.preheader.split.i76 ]
  %.us-phi34.i71.in = phi i64 [ %indvars.iv127, %.loopexit.loopexit36.i ], [ %indvars.iv.i, %.preheader.split.i76 ]
  %.us-phi34.i71 = trunc i64 %.us-phi34.i71.in to i32
  %i.ba = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.us-phi.i70, i1 true)
  %i.bb = trunc nuw nsw i64 %i.ba to i32
  %i.bc = shl i32 %.us-phi34.i71, 6
  %i.bd = or disjoint i32 %i.bc, %i.bb
  br label %hwloc_bitmap_next_unset.exit

hwloc_bitmap_next_unset.exit:                     ; preds = %bb.i, %.split.us.i73, %.loopexit.i69
  %.2.i64 = phi i32 [ %spec.select.i75, %.split.us.i73 ], [ %..i63, %bb.i ], [ %i.bd, %.loopexit.i69 ] ; 5 uses
  %i.be = icmp eq i32 %.2.i64, %i.ad
  br i1 %i.be, label %bb.k, label %bb.l

bb.k:                                             ; preds = %hwloc_bitmap_next_unset.exit
  %i.bf = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.045, i64 noundef %.047, ptr noundef nonnull %.not58, i32 noundef %.2.i83) #20
  br label %bb.o

bb.l:                                             ; preds = %hwloc_bitmap_next_unset.exit
  %i.bg = icmp eq i32 %.2.i64, -1
  br i1 %i.bg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bh = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.045, i64 noundef %.047, ptr noundef nonnull %.not57, i32 noundef %.2.i83) #20
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bi = add nsw i32 %.2.i64, -1
  %i.bj = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.045, i64 noundef %.047, ptr noundef nonnull %.not56, i32 noundef %.2.i83, i32 noundef %i.bi) #20
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.k
  %.043 = phi i32 [ %i.bf, %bb.k ], [ %i.bh, %bb.m ], [ %i.bj, %bb.n ] ; 4 uses
  %i.bk = icmp slt i32 %.043, 0
  br i1 %i.bk, label %hwloc_bitmap_next.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bl = add nuw nsw i32 %.043, %.041            ; 2 uses
  %i.bm = zext nneg i32 %.043 to i64
  %.not59 = icmp sgt i64 %.047, %i.bm
  %i.bn = icmp sgt i64 %.047, 0
  %i.bo = trunc i64 %.047 to i32
  %i.bp = add nsw i32 %i.bo, -1
  %i.bq = select i1 %i.bn, i32 %i.bp, i32 0
  %.144 = select i1 %.not59, i32 %.043, i32 %i.bq
  %i.br = sext i32 %.144 to i64                   ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %.045, i64 %i.br
  %i.bt = sub nsw i64 %.047, %i.br
  %i.bu = icmp eq i32 %.2.i64, -1
  %i.bv = add nsw i32 %.2.i64, -1
  br i1 %i.bu, label %hwloc_bitmap_next.exit.thread, label %bb.d

hwloc_bitmap_next.exit.thread:                    ; preds = %bb.p, %bb.o, %.split.us.i, %bb.f, %hwloc_bitmap_next.exit
  %.2 = phi i32 [ %.041, %.split.us.i ], [ -1, %bb.o ], [ %.041, %hwloc_bitmap_next.exit ], [ %.041, %bb.f ], [ %i.bl, %bb.p ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @hwloc_bitmap_next(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = add nsw i32 %1, 1                        ; 2 uses
  %i.b = sdiv i32 %i.a, 64                        ; 3 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !11     ; 4 uses
  %.not = icmp ult i32 %i.b, %i.c
  br i1 %.not, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16   ; 2 uses
  %i.f = icmp sgt i32 %1, -1
  %i.g = and i32 %1, 63
  %i.h = xor i32 %i.g, 63
  %i.i = zext nneg i32 %i.h to i64
  %i.j = lshr i64 -1, %i.i
  %i.k = xor i64 %i.j, -1
  br i1 %i.f, label %.preheader.split.preheader, label %.preheader.split.us.preheader

.preheader.split.us.preheader:                    ; preds = %.preheader
  %2 = zext i32 %i.b to i64
  %wide.trip.count = zext i32 %i.c to i64
  br label %.preheader.split.us

.preheader.split.preheader:                       ; preds = %.preheader
  %3 = lshr i32 %1, 6
  %4 = zext nneg i32 %i.b to i64
  %5 = zext nneg i32 %3 to i64
  %wide.trip.count46 = zext i32 %i.c to i64
  br label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader.split.us.preheader, %bb.b
  %indvars.iv = phi i64 [ %2, %.preheader.split.us.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.m = load i64, ptr %i.l, align 8, !tbaa !17   ; 2 uses
  %.not28.us = icmp eq i64 %i.m, 0
  br i1 %.not28.us, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.preheader.split.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.split.us, label %.preheader.split.us, !llvm.loop !32

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !19
  %.not29 = icmp eq i32 %i.o, 0
  %. = select i1 %.not29, i32 -1, i32 %i.a
  br label %bb.e

.preheader.split:                                 ; preds = %.preheader.split.preheader, %bb.d
  %indvars.iv43 = phi i64 [ %4, %.preheader.split.preheader ], [ %indvars.iv.next44, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv43
  %i.q = load i64, ptr %i.p, align 8, !tbaa !17
  %i.r = icmp eq i64 %indvars.iv43, %5
  %i.s = select i1 %i.r, i64 %i.k, i64 -1
  %spec.select35 = and i64 %i.q, %i.s             ; 2 uses
  %.not28 = icmp eq i64 %spec.select35, 0
  br i1 %.not28, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %.preheader.split
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %exitcond42.not = icmp eq i64 %indvars.iv.next44, %wide.trip.count46
  br i1 %exitcond42.not, label %.split.us, label %.preheader.split, !llvm.loop !32

.split.us:                                        ; preds = %bb.b, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i32, ptr %i.t, align 8, !tbaa !19
  %.not27 = icmp eq i32 %i.u, 0
  %i.v = shl i32 %i.c, 6
  %spec.select = select i1 %.not27, i32 -1, i32 %i.v
  br label %bb.e

.loopexit:                                        ; preds = %.preheader.split.us, %.preheader.split
  %.us-phi = phi i64 [ %spec.select35, %.preheader.split ], [ %i.m, %.preheader.split.us ]
  %.us-phi34.in = phi i64 [ %indvars.iv43, %.preheader.split ], [ %indvars.iv, %.preheader.split.us ]
  %.us-phi34 = trunc i64 %.us-phi34.in to i32
  %i.w = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.us-phi, i1 true)
  %i.x = trunc nuw nsw i64 %i.w to i32
  %i.y = shl i32 %.us-phi34, 6
  %i.z = or disjoint i32 %i.y, %i.x
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %.split.us, %bb.c
  %.2 = phi i32 [ %., %bb.c ], [ %spec.select, %.split.us ], [ %i.z, %.loopexit ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @hwloc_bitmap_next_unset(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = add nsw i32 %1, 1                        ; 2 uses
  %i.b = sdiv i32 %i.a, 64                        ; 3 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !11     ; 4 uses
  %.not = icmp ult i32 %i.b, %i.c
  br i1 %.not, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16   ; 2 uses
  %i.f = icmp sgt i32 %1, -1
  %i.g = and i32 %1, 63
  %i.h = xor i32 %i.g, 63
  %i.i = zext nneg i32 %i.h to i64
  %i.j = lshr i64 -1, %i.i
  %i.k = xor i64 %i.j, -1
  br i1 %i.f, label %.preheader.split.preheader, label %.preheader.split.us.preheader

.preheader.split.us.preheader:                    ; preds = %.preheader
  %2 = zext i32 %i.b to i64
  %wide.trip.count = zext i32 %i.c to i64
  br label %.preheader.split.us

.preheader.split.preheader:                       ; preds = %.preheader
  %i.l = lshr i32 %1, 6
  %i.m = zext nneg i32 %i.b to i64
  %i.n = zext nneg i32 %i.l to i64
  %wide.trip.count.a = zext i32 %i.c to i64
  br label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader.split.us.preheader, %bb.b
  %indvars.iv = phi i64 [ %2, %.preheader.split.us.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.p = load i64, ptr %i.o, align 8, !tbaa !17   ; 2 uses
  %.not28.us = icmp eq i64 %i.p, -1
  br i1 %.not28.us, label %bb.b, label %.loopexit.loopexit36

bb.b:                                             ; preds = %.preheader.split.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.split.us, label %.preheader.split.us, !llvm.loop !33

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !19
  %.not29 = icmp eq i32 %i.r, 0
  %. = select i1 %.not29, i32 %i.a, i32 -1
  br label %bb.e

.preheader.split:                                 ; preds = %.preheader.split.preheader, %bb.d
  %indvars.iv.a = phi i64 [ %i.m, %.preheader.split.preheader ], [ %indvars.iv.next.a, %bb.d ] ; 4 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.a
  %i.t = load i64, ptr %i.s, align 8, !tbaa !17
  %i.u = xor i64 %i.t, -1
  %i.v = icmp eq i64 %indvars.iv.a, %i.n
  %i.w = select i1 %i.v, i64 %i.k, i64 -1
  %spec.select35 = and i64 %i.w, %i.u             ; 2 uses
  %.not28 = icmp eq i64 %spec.select35, 0
  br i1 %.not28, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %.preheader.split
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %exitcond43.not = icmp eq i64 %indvars.iv.next.a, %wide.trip.count.a
  br i1 %exitcond43.not, label %.split.us, label %.preheader.split, !llvm.loop !33

.split.us:                                        ; preds = %bb.b, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i32, ptr %i.x, align 8, !tbaa !19
  %.not27 = icmp eq i32 %i.y, 0
  %i.z = shl i32 %i.c, 6
  %spec.select = select i1 %.not27, i32 %i.z, i32 -1
  br label %bb.e

.loopexit.loopexit36:                             ; preds = %.preheader.split.us
  %i.aa = xor i64 %i.p, -1
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.split, %.loopexit.loopexit36
  %.us-phi = phi i64 [ %i.aa, %.loopexit.loopexit36 ], [ %spec.select35, %.preheader.split ]
  %.us-phi.a = phi i64 [ %indvars.iv, %.loopexit.loopexit36 ], [ %indvars.iv.a, %.preheader.split ]
  %.us-phi34 = trunc i64 %.us-phi.a to i32
  %i.ab = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.us-phi, i1 true)
  %i.ac = trunc nuw nsw i64 %i.ab to i32
  %i.ad = shl i32 %.us-phi34, 6
  %i.ae = or disjoint i32 %i.ad, %i.ac
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %.split.us, %bb.c
  %.2 = phi i32 [ %spec.select, %.split.us ], [ %., %bb.c ], [ %i.ae, %.loopexit ]
  ret i32 %.2
}

; Function Attrs: nofree nounwind uwtable
define range(i32 -1, -2147483648) i32 @hwloc_bitmap_list_asprintf(ptr nofree noundef writeonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i32 @hwloc_bitmap_list_snprintf(ptr noundef null, i64 noundef 0, ptr noundef %1)
  %i.b = add nsw i32 %i.a, 1
  %i.c = zext nneg i32 %i.b to i64                ; 2 uses
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #19 ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !28
  %i.e = tail call i32 @hwloc_bitmap_list_snprintf(ptr noundef nonnull %i.d, i64 noundef %i.c, ptr noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @hwloc_bitmap_list_sscanf(ptr nofree noundef captures(none) initializes((16, 20)) %0, ptr noalias noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !15
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %hwloc_bitmap_reset_by_ulongs.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.g = tail call dereferenceable_or_null(8) ptr @realloc(ptr noundef %i.f, i64 noundef 8) #21 ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.not.i.i.i, label %hwloc_bitmap_reset_by_ulongs.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.g, ptr %i.e, align 8, !tbaa !16
  store i32 1, ptr %i.b, align 4, !tbaa !15
  br label %hwloc_bitmap_reset_by_ulongs.exit.thread.i

hwloc_bitmap_reset_by_ulongs.exit.thread.i:       ; preds = %bb.c, %bb.a
  store i32 1, ptr %0, align 8, !tbaa !11
  br label %.lr.ph.i.i

hwloc_bitmap_reset_by_ulongs.exit.i:              ; preds = %bb.b
  %.pr.i = load i32, ptr %0, align 8, !tbaa !11   ; 2 uses
  %.not.i.i = icmp eq i32 %.pr.i, 0
  br i1 %.not.i.i, label %hwloc_bitmap_zero.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %hwloc_bitmap_reset_by_ulongs.exit.i, %hwloc_bitmap_reset_by_ulongs.exit.thread.i
  %i.h = phi i32 [ 1, %hwloc_bitmap_reset_by_ulongs.exit.thread.i ], [ %.pr.i, %hwloc_bitmap_reset_by_ulongs.exit.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !16
  %i.k = zext i32 %i.h to i64
  %i.l = shl nuw nsw i64 %i.k, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.j, i8 0, i64 %i.l, i1 false), !tbaa !17
  br label %hwloc_bitmap_zero.exit

hwloc_bitmap_zero.exit:                           ; preds = %hwloc_bitmap_reset_by_ulongs.exit.i, %.lr.ph.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store i32 0, ptr %i.m, align 8, !tbaa !19
  %i.n = load i8, ptr %1, align 1, !tbaa !23      ; 2 uses
  %.not35 = icmp eq i8 %i.n, 0
  br i1 %.not35, label %hwloc_bitmap_set_range.exit.thread, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %hwloc_bitmap_zero.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  br label %.preheader

bb.d:                                             ; preds = %hwloc_bitmap_set.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.bs, i64 1 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !23    ; 2 uses
  %.not = icmp eq i8 %i.q, 0
  br i1 %.not, label %hwloc_bitmap_set_range.exit.thread, label %.preheader, !llvm.loop !34

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.d
  %i.r = phi i8 [ %i.n, %.preheader.lr.ph ], [ %i.q, %bb.d ]
  %.037 = phi i64 [ -1, %.preheader.lr.ph ], [ %.1, %bb.d ] ; 2 uses
  %.01836 = phi ptr [ %1, %.preheader.lr.ph ], [ %i.p, %bb.d ]
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %.critedge
  %i.s = phi i8 [ %.pr, %.critedge ], [ %i.r, %.preheader ]
  %.119 = phi ptr [ %i.t, %.critedge ], [ %.01836, %.preheader ] ; 3 uses
  switch i8 %i.s, label %bb.f [
    i8 44, label %.critedge
    i8 32, label %.critedge
  ]

.critedge:                                        ; preds = %bb.e, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.119, i64 1 ; 2 uses
  %.pr = load i8, ptr %i.t, align 1, !tbaa !23
  br label %bb.e, !llvm.loop !35

bb.f:                                             ; preds = %bb.e
  %i.u = call i64 @__isoc23_strtoul(ptr noundef nonnull %.119, ptr noundef nonnull %i.a, i32 noundef 0) #20 ; 7 uses
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %i.w = icmp eq ptr %i.v, %.119
  br i1 %i.w, label %hwloc_bitmap_set_range.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not24 = icmp eq i64 %.037, -1
  br i1 %.not24, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = trunc i64 %.037 to i32
  %i.y = trunc i64 %i.u to i32
  %i.z = call i32 @hwloc_bitmap_set_range(ptr noundef %0, i32 noundef %i.x, i32 noundef %i.y)
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %hwloc_bitmap_set_range.exit, label %hwloc_bitmap_set.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = load i8, ptr %i.v, align 1, !tbaa !23
  switch i8 %i.ab, label %hwloc_bitmap_set.exit [
    i8 45, label %bb.j
    i8 44, label %bb.n
    i8 32, label %bb.n
    i8 0, label %bb.n
  ]

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !23
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.k, label %hwloc_bitmap_set.exit

bb.k:                                             ; preds = %bb.j
  %i.af = trunc i64 %i.u to i32                   ; 2 uses
  %i.ag = load i32, ptr %i.m, align 8, !tbaa !19
  %.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i, label %.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = load i32, ptr %0, align 8, !tbaa !11
  %i.ai = shl i32 %i.ah, 6
  %.not54.i = icmp ugt i32 %i.ai, %i.af
  br i1 %.not54.i, label %.thread.i, label %hwloc_bitmap_set_range.exit.thread

.thread.i:                                        ; preds = %bb.l, %bb.k
  %i.aj = lshr i32 %i.af, 6                       ; 3 uses
  %i.ak = add nuw nsw i32 %i.aj, 1                ; 2 uses
  %i.al = call fastcc i32 @hwloc_bitmap_realloc_by_ulongs(ptr noundef nonnull %0, i32 noundef %i.ak)
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %hwloc_bitmap_set_range.exit, label %bb.m

bb.m:                                             ; preds = %.thread.i
  %i.an = and i64 %i.u, 63
  %i.ao = shl nsw i64 -1, %i.an
  %i.ap = load ptr, ptr %i.o, align 8, !tbaa !16  ; 2 uses
  %i.aq = zext nneg i32 %i.aj to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.aq ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !17
  %i.at = or i64 %i.as, %i.ao
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !17
  %i.au = load i32, ptr %0, align 8, !tbaa !11    ; 2 uses
  %i.av = icmp ult i32 %i.ak, %i.au
  br i1 %i.av, label %.lr.ph61.preheader.i, label %hwloc_bitmap_set_range.exit.thread.sink.split

.lr.ph61.preheader.i:                             ; preds = %bb.m
  %i.aw = lshr i64 %i.u, 3
  %i.ax = and i64 %i.aw, 536870904
  %i.ay = getelementptr i8, ptr %i.ap, i64 %i.ax
  %scevgep62.i = getelementptr i8, ptr %i.ay, i64 8
  %reass.sub = sub i32 %i.au, %i.aj
  %i.az = add i32 %reass.sub, -2
  %i.ba = zext i32 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 3
  %i.bc = add nuw nsw i64 %i.bb, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep62.i, i8 -1, i64 %i.bc, i1 false), !tbaa !17
  br label %hwloc_bitmap_set_range.exit.thread.sink.split

bb.n:                                             ; preds = %bb.i, %bb.i, %bb.i
  %i.bd = trunc i64 %i.u to i32                   ; 2 uses
  %i.be = lshr i32 %i.bd, 6                       ; 2 uses
  %i.bf = load i32, ptr %i.m, align 8, !tbaa !19
  %.not.i25 = icmp eq i32 %i.bf, 0
  br i1 %.not.i25, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = load i32, ptr %0, align 8, !tbaa !11
  %i.bh = shl i32 %i.bg, 6
  %.not9.i = icmp ugt i32 %i.bh, %i.bd
  br i1 %.not9.i, label %bb.p, label %hwloc_bitmap_set.exit

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bi = add nuw nsw i32 %i.be, 1
  %i.bj = call fastcc i32 @hwloc_bitmap_realloc_by_ulongs(ptr noundef nonnull %0, i32 noundef %i.bi)
  %i.bk = icmp slt i32 %i.bj, 0
end_hunk_0
