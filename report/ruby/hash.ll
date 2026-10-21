Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/hash?download=true
inline.NumInlined: 822
inline.NumDeleted: 151
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@rb_ivar_set_internal

declare i64 @rb_attr_delete(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_wb_protected_newobj_of(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @rb_st_init_existing_table_with_size(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef i64 @hash_copy(i64 noundef returned %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr                   ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = and i64 %i.b, 32768
  %.not.i = icmp eq i64 %i.c, 0
  %i.d = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !21   ; 2 uses
  br i1 %.not.i, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.f = and i64 %i.e, 32768
  %.not.i26 = icmp eq i64 %i.f, 0
  br i1 %.not.i26, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = add i64 %1, 24
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = add i64 %0, 24
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.j, ptr noundef nonnull align 8 dereferenceable(136) %i.h, i64 136, i1 false), !tbaa.struct !57
  %i.k = load i64, ptr %i.h, align 8, !tbaa !24
  store i64 %i.k, ptr %i.j, align 8, !tbaa !24
  %i.l = load i64, ptr %i.a, align 8, !tbaa !21
  %i.m = and i64 %i.l, 15728640
  %i.n = load i64, ptr %i.d, align 8, !tbaa !21
  %i.o = and i64 %i.n, -15728641
  %i.p = or disjoint i64 %i.o, %i.m               ; 2 uses
  store i64 %i.p, ptr %i.d, align 8, !tbaa !21
  %i.q = load i64, ptr %i.a, align 8, !tbaa !21
  %i.r = and i64 %i.q, 983040
  %i.s = and i64 %i.p, -983041
  %i.t = or disjoint i64 %i.s, %i.r
  store i64 %i.t, ptr %i.d, align 8, !tbaa !21
  br label %.loopexit.sink.split

bb.d:                                             ; preds = %bb.b
  %i.u = add i64 %0, 24
  %i.v = inttoptr i64 %i.u to ptr                 ; 2 uses
  %i.w = lshr i64 %i.b, 16
  %i.x = and i64 %i.w, 15
  %i.y = tail call ptr @rb_st_init_existing_table_with_size(ptr noundef nonnull %i.v, ptr noundef nonnull @objhash, i64 noundef %i.x) #29 ; 0 uses
  %i.z = load i64, ptr %i.a, align 8, !tbaa !21
  %i.aa = trunc i64 %i.z to i32
  %i.ab = lshr i32 %i.aa, 20
  %i.ac = and i32 %i.ab, 15                       ; 2 uses
  %.not31 = icmp eq i32 %i.ac, 0
  br i1 %.not31, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.ad = add i64 %1, 24
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 8      ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ac to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %rb_obj_written.exit27
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %rb_obj_written.exit27 ] ; 4 uses
  %i.ag = getelementptr i8, ptr %i.ae, i64 %indvars.iv
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !24
  %i.ai = icmp eq i8 %i.ah, -1
  %i.aj = getelementptr [16 x i8], ptr %i.af, i64 %indvars.iv
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !43 ; 2 uses
  %.not = icmp eq i64 %i.ak, 36
  %or.cond = select i1 %i.ai, i1 %.not, i1 false
  br i1 %or.cond, label %rb_obj_written.exit27, label %ar_cleared_entry.exit.thread

ar_cleared_entry.exit.thread:                     ; preds = %bb.e
  %i.al = getelementptr [16 x i8], ptr %i.af, i64 %indvars.iv ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 8      ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !44
  tail call void @rb_st_add_direct(ptr noundef nonnull %i.v, i64 noundef %i.ak, i64 noundef %i.an) #29
  %i.ao = load i64, ptr %i.al, align 8, !tbaa !43 ; 3 uses
  %i.ap = icmp eq i64 %i.ao, 0
  %i.aq = and i64 %i.ao, 7
  %i.ar = icmp ne i64 %i.aq, 0
  %i.as = or i1 %i.ap, %i.ar
  br i1 %i.as, label %rb_obj_written.exit, label %bb.f

bb.f:                                             ; preds = %ar_cleared_entry.exit.thread
  tail call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %i.ao) #29
  br label %rb_obj_written.exit

rb_obj_written.exit:                              ; preds = %ar_cleared_entry.exit.thread, %bb.f
  %i.at = load i64, ptr %i.am, align 8, !tbaa !44 ; 3 uses
  %i.au = icmp eq i64 %i.at, 0
  %i.av = and i64 %i.at, 7
  %i.aw = icmp ne i64 %i.av, 0
  %i.ax = or i1 %i.au, %i.aw
  br i1 %i.ax, label %rb_obj_written.exit27, label %bb.g

bb.g:                                             ; preds = %rb_obj_written.exit
  tail call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %i.at) #29
  br label %rb_obj_written.exit27

rb_obj_written.exit27:                            ; preds = %bb.e, %bb.g, %rb_obj_written.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !162

bb.h:                                             ; preds = %bb.a
  %i.ay = or i64 %i.e, 32768
  store i64 %i.ay, ptr %i.d, align 8, !tbaa !21
  %i.az = add i64 %0, 24
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = add i64 %1, 24
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = tail call ptr @rb_st_replace(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bc) #29 ; 0 uses
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.h, %bb.c
  tail call void @rb_gc_writebarrier_remember(i64 noundef %0) #29
  br label %.loopexit

.loopexit:                                        ; preds = %rb_obj_written.exit27, %.loopexit.sink.split, %bb.d
  ret i64 %0
}

declare void @rb_st_add_direct(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @rb_st_replace(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @rb_st_add_direct_with_hash(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @rb_gc_writebarrier_unprotect(i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 16) i32 @ar_compact_table(i64 noundef %0) unnamed_addr #18 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %i.d = lshr i32 %i.c, 20
  %i.e = and i32 %i.d, 15                         ; 4 uses
  %i.f = lshr i32 %i.c, 16
  %i.g = and i32 %i.f, 15                         ; 3 uses
  %i.h = icmp eq i32 %i.g, %i.e
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %0, 24
  %i.j = inttoptr i64 %i.i to ptr                 ; 4 uses
  %i.k = getelementptr i8, ptr %i.j, i64 8        ; 3 uses
  %.not55 = icmp eq i32 %i.e, 0
  br i1 %.not55, label %.loopexit, label %.lr.ph54.preheader

.lr.ph54.preheader:                               ; preds = %bb.b
  %i.l = zext nneg i32 %i.e to i64                ; 2 uses
  br label %.lr.ph54

.lr.ph54:                                         ; preds = %.lr.ph54.preheader, %ar_cleared_entry.exit.thread
  %indvars.iv61 = phi i64 [ 0, %.lr.ph54.preheader ], [ %indvars.iv.next62, %ar_cleared_entry.exit.thread ] ; 4 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph54.preheader ], [ %indvars.iv.next, %ar_cleared_entry.exit.thread ] ; 2 uses
  %.053 = phi i32 [ 0, %.lr.ph54.preheader ], [ %.3, %ar_cleared_entry.exit.thread ] ; 4 uses
  %i.m = getelementptr i8, ptr %i.j, i64 %indvars.iv61 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !24
  %i.o = icmp eq i8 %i.n, -1
  br i1 %i.o, label %ar_cleared_entry.exit, label %ar_cleared_entry.exit.thread

ar_cleared_entry.exit:                            ; preds = %.lr.ph54
  %i.p = getelementptr [16 x i8], ptr %i.k, i64 %indvars.iv61 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !43
  %.not = icmp eq i64 %i.q, 36
  br i1 %.not, label %bb.c, label %ar_cleared_entry.exit.thread

bb.c:                                             ; preds = %ar_cleared_entry.exit
  %i.r = trunc i64 %indvars.iv61 to i32
  %i.s = add i32 %i.r, 1
  %spec.select = tail call i32 @llvm.umax.i32(i32 %.053, i32 %i.s)
  %i.t = icmp ult i32 %spec.select, %i.e
  br i1 %i.t, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.u = zext i32 %.053 to i64
  %umax = tail call i64 @llvm.umax.i64(i64 %indvars.iv, i64 %i.u)
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv59 = phi i64 [ %umax, %.lr.ph.preheader ], [ %indvars.iv.next60, %bb.d ] ; 6 uses
  %i.v = getelementptr i8, ptr %i.j, i64 %indvars.iv59
  %i.w = load i8, ptr %i.v, align 1, !tbaa !24
  %i.x = icmp eq i8 %i.w, -1
  br i1 %i.x, label %ar_cleared_entry.exit40, label %ar_cleared_entry.exit40.thread

ar_cleared_entry.exit40:                          ; preds = %.lr.ph
  %i.y = getelementptr [16 x i8], ptr %i.k, i64 %indvars.iv59
  %i.z = load i64, ptr %i.y, align 8, !tbaa !43
  %.not45 = icmp eq i64 %i.z, 36
  br i1 %.not45, label %bb.d, label %ar_cleared_entry.exit40.thread

ar_cleared_entry.exit40.thread:                   ; preds = %.lr.ph, %ar_cleared_entry.exit40
  %i.aa = getelementptr i8, ptr %i.j, i64 %indvars.iv59 ; 2 uses
  %i.ab = trunc nuw nsw i64 %indvars.iv59 to i32
  %i.ac = getelementptr [16 x i8], ptr %i.k, i64 %indvars.iv59 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !tbaa.struct !102
  %i.ad = load i8, ptr %i.aa, align 1, !tbaa !24
  store i8 %i.ad, ptr %i.m, align 1, !tbaa !24
  store i64 36, ptr %i.ac, align 8, !tbaa !43
  store i8 -1, ptr %i.aa, align 1, !tbaa !24
  %i.ae = add nuw nsw i32 %i.ab, 1
  br label %ar_cleared_entry.exit.thread

bb.d:                                             ; preds = %ar_cleared_entry.exit40
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %i.af = icmp samesign ult i64 %indvars.iv.next60, %i.l
  br i1 %i.af, label %.lr.ph, label %.loopexit, !llvm.loop !4

ar_cleared_entry.exit.thread:                     ; preds = %.lr.ph54, %ar_cleared_entry.exit, %ar_cleared_entry.exit40.thread
  %.3 = phi i32 [ %i.ae, %ar_cleared_entry.exit40.thread ], [ %.053, %ar_cleared_entry.exit ], [ %.053, %.lr.ph54 ]
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next62, %i.l
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph54, !llvm.loop !5

.loopexit:                                        ; preds = %ar_cleared_entry.exit.thread, %bb.c, %bb.d, %bb.b
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !21
  %i.ah = and i64 %i.ag, -15728641
  %i.ai = shl nuw nsw i32 %i.g, 20
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = or disjoint i64 %i.ah, %i.aj
  store i64 %i.ak, ptr %i.a, align 8, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %.loopexit
  ret i32 %i.g
}

; Function Attrs: noreturn
declare void @rb_error_frozen_object(i64 noundef) local_unnamed_addr #6

declare void @rb_str_modify(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @ar_insert(i64 noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 6 uses
  %i.b = tail call fastcc range(i64 -4611686018427387904, 4611686018427387904) i64 @any_hash(i64 noundef %1, ptr noundef nonnull @obj_any_hash)
  %i.c = load i64, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.d = and i64 %i.c, 32768
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.j, !prof !53

bb.b:                                             ; preds = %bb.a
  %i.e = trunc i64 %i.b to i8                     ; 2 uses
  %i.f = trunc i64 %i.c to i32
  %i.g = lshr i32 %i.f, 20
  %i.h = and i32 %i.g, 15                         ; 2 uses
  %i.i = add i64 %0, 24
  %i.j = inttoptr i64 %i.i to ptr                 ; 7 uses
  %i.k = getelementptr i8, ptr %i.j, i64 8        ; 5 uses
  %.not19.i.i = icmp eq i32 %i.h, 0
  br i1 %.not19.i.i, label %ar_find_entry.exit.thread, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %wide.trip.count.i.i = zext nneg i32 %i.h to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.d ] ; 5 uses
  %i.l = getelementptr i8, ptr %i.j, i64 %indvars.iv.i.i
  %i.m = load i8, ptr %i.l, align 1, !tbaa !24
  %i.n = icmp eq i8 %i.m, %i.e
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.o = getelementptr [16 x i8], ptr %i.k, i64 %indvars.iv.i.i
  %i.p = load i64, ptr %i.o, align 8, !tbaa !43
  %i.q = tail call fastcc i32 @ar_equal(i64 noundef %1, i64 noundef %i.p)
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %bb.d, label %ar_find_entry.exit

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %ar_find_entry.exit.thread, label %.lr.ph.i.i, !llvm.loop !1

ar_find_entry.exit:                               ; preds = %bb.c
  %i.r = icmp eq i64 %indvars.iv.i.i, 8
  br i1 %i.r, label %ar_find_entry.exit.thread, label %bb.i

ar_find_entry.exit.thread:                        ; preds = %bb.d, %bb.b, %ar_find_entry.exit
  %i.s = load i64, ptr %i.a, align 8, !tbaa !21
  %i.t = trunc i64 %i.s to i32                    ; 2 uses
  %i.u = lshr i32 %i.t, 16
  %i.v = and i32 %i.u, 15                         ; 5 uses
  %i.w = icmp samesign ugt i32 %i.v, 7
  br i1 %i.w, label %bb.j, label %bb.e

bb.e:                                             ; preds = %ar_find_entry.exit.thread
  %i.x = lshr i32 %i.t, 20
  %i.y = and i32 %i.x, 15                         ; 4 uses
  %i.z = icmp eq i32 %i.v, %i.y
  br i1 %i.z, label %.ar_compact_table.exit_crit_edge, label %bb.f

.ar_compact_table.exit_crit_edge:                 ; preds = %bb.e
  %.pre = shl nuw nsw i32 %i.v, 20
  br label %ar_compact_table.exit

bb.f:                                             ; preds = %bb.e
  %.not55.i = icmp eq i32 %i.y, 0
  br i1 %.not55.i, label %.loopexit.i, label %.lr.ph54.preheader.i

.lr.ph54.preheader.i:                             ; preds = %bb.f
  %i.aa = zext nneg i32 %i.y to i64               ; 2 uses
  br label %.lr.ph54.i

.lr.ph54.i:                                       ; preds = %ar_cleared_entry.exit.thread.i, %.lr.ph54.preheader.i
  %indvars.iv61.i = phi i64 [ 0, %.lr.ph54.preheader.i ], [ %indvars.iv.next62.i, %ar_cleared_entry.exit.thread.i ] ; 4 uses
  %indvars.iv.i = phi i64 [ 1, %.lr.ph54.preheader.i ], [ %indvars.iv.next.i, %ar_cleared_entry.exit.thread.i ] ; 2 uses
  %.053.i = phi i32 [ 0, %.lr.ph54.preheader.i ], [ %.3.i, %ar_cleared_entry.exit.thread.i ] ; 4 uses
  %i.ab = getelementptr i8, ptr %i.j, i64 %indvars.iv61.i ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !24
  %i.ad = icmp eq i8 %i.ac, -1
  br i1 %i.ad, label %ar_cleared_entry.exit.i, label %ar_cleared_entry.exit.thread.i

ar_cleared_entry.exit.i:                          ; preds = %.lr.ph54.i
  %i.ae = getelementptr [16 x i8], ptr %i.k, i64 %indvars.iv61.i ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !43
  %.not.i24 = icmp eq i64 %i.af, 36
  br i1 %.not.i24, label %bb.g, label %ar_cleared_entry.exit.thread.i

bb.g:                                             ; preds = %ar_cleared_entry.exit.i
  %i.ag = trunc i64 %indvars.iv61.i to i32
  %i.ah = add i32 %i.ag, 1
  %spec.select.i = tail call i32 @llvm.umax.i32(i32 %.053.i, i32 %i.ah)
  %i.ai = icmp ult i32 %spec.select.i, %i.y
  br i1 %i.ai, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %bb.g
  %i.aj = zext i32 %.053.i to i64
  %umax.i = tail call i64 @llvm.umax.i64(i64 %indvars.iv.i, i64 %i.aj)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.preheader.i
  %indvars.iv59.i = phi i64 [ %umax.i, %.lr.ph.preheader.i ], [ %indvars.iv.next60.i, %bb.h ] ; 6 uses
  %i.ak = getelementptr i8, ptr %i.j, i64 %indvars.iv59.i
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !24
  %i.am = icmp eq i8 %i.al, -1
  br i1 %i.am, label %ar_cleared_entry.exit40.i, label %ar_cleared_entry.exit40.thread.i

ar_cleared_entry.exit40.i:                        ; preds = %.lr.ph.i
  %i.an = getelementptr [16 x i8], ptr %i.k, i64 %indvars.iv59.i
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !43
  %.not45.i = icmp eq i64 %i.ao, 36
  br i1 %.not45.i, label %bb.h, label %ar_cleared_entry.exit40.thread.i

ar_cleared_entry.exit40.thread.i:                 ; preds = %ar_cleared_entry.exit40.i, %.lr.ph.i
  %i.ap = getelementptr i8, ptr %i.j, i64 %indvars.iv59.i ; 2 uses
  %i.aq = trunc nuw nsw i64 %indvars.iv59.i to i32
  %i.ar = getelementptr [16 x i8], ptr %i.k, i64 %indvars.iv59.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false), !tbaa.struct !102
  %i.as = load i8, ptr %i.ap, align 1, !tbaa !24
  store i8 %i.as, ptr %i.ab, align 1, !tbaa !24
  store i64 36, ptr %i.ar, align 8, !tbaa !43
  store i8 -1, ptr %i.ap, align 1, !tbaa !24
  %i.at = add nuw nsw i32 %i.aq, 1
  br label %ar_cleared_entry.exit.thread.i

bb.h:                                             ; preds = %ar_cleared_entry.exit40.i
  %indvars.iv.next60.i = add nuw nsw i64 %indvars.iv59.i, 1 ; 2 uses
  %i.au = icmp samesign ult i64 %indvars.iv.next60.i, %i.aa
  br i1 %i.au, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !4

ar_cleared_entry.exit.thread.i:                   ; preds = %ar_cleared_entry.exit40.thread.i, %ar_cleared_entry.exit.i, %.lr.ph54.i
  %.3.i = phi i32 [ %i.at, %ar_cleared_entry.exit40.thread.i ], [ %.053.i, %ar_cleared_entry.exit.i ], [ %.053.i, %.lr.ph54.i ]
  %indvars.iv.next62.i = add nuw nsw i64 %indvars.iv61.i, 1 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next62.i, %i.aa
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph54.i, !llvm.loop !5

.loopexit.i:                                      ; preds = %ar_cleared_entry.exit.thread.i, %bb.g, %bb.h, %bb.f
  %i.av = load i64, ptr %i.a, align 8, !tbaa !21
  %i.aw = and i64 %i.av, -15728641
  %i.ax = shl nuw nsw i32 %i.v, 20                ; 2 uses
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = or disjoint i64 %i.aw, %i.ay
  store i64 %i.az, ptr %i.a, align 8, !tbaa !21
  br label %ar_compact_table.exit

ar_compact_table.exit:                            ; preds = %.ar_compact_table.exit_crit_edge, %.loopexit.i
  %.pre-phi = phi i32 [ %.pre, %.ar_compact_table.exit_crit_edge ], [ %i.ax, %.loopexit.i ]
  %i.ba = zext nneg i32 %i.v to i64               ; 2 uses
  %i.bb = getelementptr [16 x i8], ptr %i.k, i64 %i.ba ; 2 uses
  store i64 %1, ptr %i.bb, align 8, !tbaa !43
  %i.bc = getelementptr i8, ptr %i.bb, i64 8
  store i64 %2, ptr %i.bc, align 8, !tbaa !44
  %i.bd = getelementptr i8, ptr %i.j, i64 %i.ba
  store i8 %i.e, ptr %i.bd, align 1, !tbaa !24
  %i.be = load i64, ptr %i.a, align 8, !tbaa !21  ; 2 uses
  %i.bf = and i64 %i.be, -16711681
  %i.bg = add nuw nsw i32 %.pre-phi, 1048576
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = or disjoint i64 %i.bf, %i.bh
  %i.bj = and i64 %i.be, 983040
  %narrow.i = add nuw nsw i64 %i.bj, 65536
  %i.bk = or i64 %i.bi, %narrow.i
  store i64 %i.bk, ptr %i.a, align 8, !tbaa !21
  br label %bb.j

bb.i:                                             ; preds = %ar_find_entry.exit
  %i.bl = getelementptr [16 x i8], ptr %i.j, i64 %indvars.iv.i.i
  %i.bm = getelementptr i8, ptr %i.bl, i64 16
  store i64 %2, ptr %i.bm, align 8, !tbaa !44
  br label %bb.j

bb.j:                                             ; preds = %ar_find_entry.exit.thread, %bb.a, %bb.i, %ar_compact_table.exit
  ret void
}

declare i32 @rb_st_insert(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_proc_call_with_block(i64 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @rb_st_lookup(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold
declare void @rb_warn(ptr noundef, ...) local_unnamed_addr #19

declare i64 @rb_yield(i64 noundef) local_unnamed_addr #1

declare i64 @rb_protect(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_inspect(i64 noundef) #1

declare i64 @rb_any_to_s(i64 noundef) local_unnamed_addr #1

declare i64 @rb_str_ellipsize(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint noreturn nounwind sspstrong uwtable
define internal fastcc void @rb_key_err_raise(i64 noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #20 {
bb.a:
  %i.a = tail call i64 @rb_key_err_new(i64 noundef %0, i64 noundef %1, i64 noundef %2) #29
  tail call void @rb_exc_raise(i64 noundef %i.a) #31
  unreachable
}

; Function Attrs: noreturn
declare void @rb_error_arity(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare i64 @rb_key_err_new(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @rb_exc_raise(i64 noundef) local_unnamed_addr #6

declare i64 @rb_proc_lambda_p(i64 noundef) local_unnamed_addr #1

declare i32 @rb_proc_arity(i64 noundef) local_unnamed_addr #1

declare i64 @rb_yield_values(i32 noundef, ...) local_unnamed_addr #1

declare void @rb_st_compact_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @tbl_update_modify(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = inttoptr i64 %2 to ptr                   ; 4 uses
  %i.b = load i64, ptr %0, align 8, !tbaa !19
  %i.c = load i64, ptr %1, align 8, !tbaa !19
  %i.d = getelementptr i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !66   ; 10 uses
  %i.f = getelementptr i8, ptr %i.a, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !65
  %i.h = tail call i32 %i.g(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2, i32 noundef %3) #29 ; 2 uses
  switch i32 %i.h, label %rb_hash_modify.exit32 [
    i32 0, label %bb.b
    i32 2, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %.not22 = icmp eq i32 %3, 0
  br i1 %.not22, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %0, align 8, !tbaa !19
  %.not23 = icmp eq i64 %i.i, %i.b
  br i1 %.not23, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr %1, align 8, !tbaa !19
  %.not24 = icmp eq i64 %i.j, %i.c
  br i1 %.not24, label %rb_hash_modify.exit32, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.k = icmp ne i64 %i.e, 0
  %i.l = and i64 %i.e, 7
  %i.m = icmp eq i64 %i.l, 0
  %.not3.i.i.i.i = and i1 %i.k, %i.m
  br i1 %.not3.i.i.i.i, label %RB_OBJ_FROZEN.exit.i.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i.i, !prof !61

RB_OBJ_FROZEN.exit.i.i.i:                         ; preds = %bb.e
  %i.n = inttoptr i64 %i.e to ptr
  %i.o = load i64, ptr %i.n, align 8, !tbaa !21   ; 3 uses
  %i.p = and i64 %i.o, 2048
  %.not.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i.i, !prof !62

RB_OBJ_FROZEN.exit.thread.i.i.i:                  ; preds = %RB_OBJ_FROZEN.exit.i.i.i, %bb.e
  tail call void @rb_error_frozen_object(i64 noundef %i.e) #31
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %RB_OBJ_FROZEN.exit.i.i.i
  %i.q = and i64 %i.o, 31
  %i.r = icmp ne i64 %i.q, 5
  %i.s = and i64 %i.o, 49152
  %.not8.i.i.i = icmp eq i64 %i.s, 0
  %or.cond.i.i.i = or i1 %i.r, %.not8.i.i.i
  br i1 %or.cond.i.i.i, label %rb_hash_modify.exit, label %bb.f, !prof !56

bb.f:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  tail call void @rb_str_modify(i64 noundef %i.e) #29
  br label %rb_hash_modify.exit

rb_hash_modify.exit:                              ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %bb.f
  %i.t = load i64, ptr %0, align 8, !tbaa !19
  %i.u = getelementptr i8, ptr %i.a, i64 24
  store i64 %i.t, ptr %i.u, align 8, !tbaa !67
  %i.v = load i64, ptr %1, align 8, !tbaa !19
  %i.w = getelementptr i8, ptr %i.a, i64 32
  store i64 %i.v, ptr %i.w, align 8, !tbaa !68
  br label %rb_hash_modify.exit32

bb.g:                                             ; preds = %bb.a
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %rb_hash_modify.exit32, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = icmp ne i64 %i.e, 0
  %i.y = and i64 %i.e, 7
  %i.z = icmp eq i64 %i.y, 0
  %.not3.i.i.i.i25 = and i1 %i.x, %i.z
  br i1 %.not3.i.i.i.i25, label %RB_OBJ_FROZEN.exit.i.i.i27, label %RB_OBJ_FROZEN.exit.thread.i.i.i26, !prof !61

RB_OBJ_FROZEN.exit.i.i.i27:                       ; preds = %bb.h
  %i.aa = inttoptr i64 %i.e to ptr
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !21 ; 3 uses
  %i.ac = and i64 %i.ab, 2048
  %.not.i.i.i28 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i28, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i29, label %RB_OBJ_FROZEN.exit.thread.i.i.i26, !prof !62

RB_OBJ_FROZEN.exit.thread.i.i.i26:                ; preds = %RB_OBJ_FROZEN.exit.i.i.i27, %bb.h
  tail call void @rb_error_frozen_object(i64 noundef %i.e) #31
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i29:           ; preds = %RB_OBJ_FROZEN.exit.i.i.i27
  %i.ad = and i64 %i.ab, 31
  %i.ae = icmp ne i64 %i.ad, 5
  %i.af = and i64 %i.ab, 49152
  %.not8.i.i.i30 = icmp eq i64 %i.af, 0
  %or.cond.i.i.i31 = or i1 %i.ae, %.not8.i.i.i30
end_hunk_0
