Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/hash?download=true
inline.NumInlined: 819
inline.NumDeleted: 151
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@rb_obj_id

declare i64 @rb_num2long(i64 noundef) local_unnamed_addr #1

declare void @ruby_xfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 1, 4) i32 @hash_foreach_iter(i64 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 !guid !473 {
bb.a:
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = inttoptr i64 %2 to ptr                   ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !180
  %i.d = getelementptr i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !181
  %i.f = tail call i32 %i.c(i64 noundef %0, i64 noundef %1, i64 noundef %i.e) #29 ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %i.f, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i32 1, i32 3
  %switch.selectcmp2.i = icmp eq i32 %i.f, 2
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 2, i32 %switch.select.i
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %switch.select3.i, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @ar_equal(i64 noundef %0, i64 noundef %1) unnamed_addr #17 !guid !474 {
bb.a:
  %i.a = tail call i32 @rb_any_cmp(i64 noundef %0, i64 noundef %1)
  %i.b = icmp eq i32 %i.a, 0
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

declare i64 @rb_ivar_get(i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @rb_ivar_set_internal(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_attr_delete(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_wb_protected_newobj_of(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @rb_st_init_existing_table_with_size(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef i64 @hash_copy(i64 noundef returned %0, i64 noundef %1) unnamed_addr #0 !guid !476 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr                   ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !153  ; 2 uses
  %i.c = and i64 %i.b, 32768
  %.not.i = icmp eq i64 %i.c, 0
  %i.d = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !153  ; 2 uses
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.j, ptr noundef nonnull align 8 dereferenceable(136) %i.h, i64 136, i1 false), !tbaa.struct !188
  %i.k = load i64, ptr %i.h, align 8, !tbaa !156
  store i64 %i.k, ptr %i.j, align 8, !tbaa !156
  %i.l = load i64, ptr %i.a, align 8, !tbaa !153
  %i.m = and i64 %i.l, 15728640
  %i.n = load i64, ptr %i.d, align 8, !tbaa !153
  %i.o = and i64 %i.n, -15728641
  %i.p = or disjoint i64 %i.o, %i.m               ; 2 uses
  store i64 %i.p, ptr %i.d, align 8, !tbaa !153
  %i.q = load i64, ptr %i.a, align 8, !tbaa !153
  %i.r = and i64 %i.q, 983040
  %i.s = and i64 %i.p, -983041
  %i.t = or disjoint i64 %i.s, %i.r
  store i64 %i.t, ptr %i.d, align 8, !tbaa !153
  br label %.loopexit.sink.split

bb.d:                                             ; preds = %bb.b
  %i.u = add i64 %0, 24
  %i.v = inttoptr i64 %i.u to ptr                 ; 2 uses
  %i.w = lshr i64 %i.b, 16
  %i.x = and i64 %i.w, 15
  %i.y = tail call ptr @rb_st_init_existing_table_with_size(ptr noundef nonnull %i.v, ptr noundef nonnull @objhash, i64 noundef %i.x) #29 ; 0 uses
  %i.z = load i64, ptr %i.a, align 8, !tbaa !153
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
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !156
  %i.ai = icmp eq i8 %i.ah, -1
  %i.aj = getelementptr [16 x i8], ptr %i.af, i64 %indvars.iv
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !175 ; 2 uses
  %.not = icmp eq i64 %i.ak, 36
  %or.cond = select i1 %i.ai, i1 %.not, i1 false
  br i1 %or.cond, label %rb_obj_written.exit27, label %ar_cleared_entry.exit.thread

ar_cleared_entry.exit.thread:                     ; preds = %bb.e
  %i.al = getelementptr [16 x i8], ptr %i.af, i64 %indvars.iv ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 8      ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !176
  tail call void @rb_st_add_direct(ptr noundef nonnull %i.v, i64 noundef %i.ak, i64 noundef %i.an) #29
  %i.ao = load i64, ptr %i.al, align 8, !tbaa !175 ; 3 uses
  %i.ap = icmp eq i64 %i.ao, 0
  %i.aq = and i64 %i.ao, 7
  %i.ar = icmp ne i64 %i.aq, 0
  %i.as = or i1 %i.ap, %i.ar
  br i1 %i.as, label %rb_obj_written.exit, label %bb.f

bb.f:                                             ; preds = %ar_cleared_entry.exit.thread
  tail call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %i.ao) #29
  br label %rb_obj_written.exit

rb_obj_written.exit:                              ; preds = %ar_cleared_entry.exit.thread, %bb.f
  %i.at = load i64, ptr %i.am, align 8, !tbaa !176 ; 3 uses
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
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !475

bb.h:                                             ; preds = %bb.a
  %i.ay = or i64 %i.e, 32768
  store i64 %i.ay, ptr %i.d, align 8, !tbaa !153
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
define internal fastcc range(i32 0, 16) i32 @ar_compact_table(i64 noundef %0) unnamed_addr #18 !guid !477 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !153
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
  %indvars.iv.a = phi i64 [ 1, %.lr.ph54.preheader ], [ %indvars.iv.next, %ar_cleared_entry.exit.thread ] ; 2 uses
  %.053 = phi i32 [ 0, %.lr.ph54.preheader ], [ %.3, %ar_cleared_entry.exit.thread ] ; 4 uses
  %i.m = getelementptr i8, ptr %i.j, i64 %indvars.iv61 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !156
  %i.o = icmp eq i8 %i.n, -1
  br i1 %i.o, label %ar_cleared_entry.exit, label %ar_cleared_entry.exit.thread

ar_cleared_entry.exit:                            ; preds = %.lr.ph54
  %i.p = getelementptr [16 x i8], ptr %i.k, i64 %indvars.iv61 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !175
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
  %umax = tail call i64 @llvm.umax.i64(i64 %indvars.iv.a, i64 %i.u)
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv59 = phi i64 [ %umax, %.lr.ph.preheader ], [ %indvars.iv.next60.a, %bb.d ] ; 6 uses
  %i.v = getelementptr i8, ptr %i.j, i64 %indvars.iv59
  %i.w = load i8, ptr %i.v, align 1, !tbaa !156
  %i.x = icmp eq i8 %i.w, -1
  br i1 %i.x, label %ar_cleared_entry.exit40, label %ar_cleared_entry.exit40.thread

ar_cleared_entry.exit40:                          ; preds = %.lr.ph
  %i.y = getelementptr [16 x i8], ptr %i.k, i64 %indvars.iv59
  %i.z = load i64, ptr %i.y, align 8, !tbaa !175
  %.not45 = icmp eq i64 %i.z, 36
  br i1 %.not45, label %bb.d, label %ar_cleared_entry.exit40.thread

ar_cleared_entry.exit40.thread:                   ; preds = %.lr.ph, %ar_cleared_entry.exit40
  %i.aa = getelementptr i8, ptr %i.j, i64 %indvars.iv59 ; 2 uses
  %i.ab = trunc nuw i64 %indvars.iv59 to i32
  %i.ac = getelementptr [16 x i8], ptr %i.k, i64 %indvars.iv59 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !tbaa.struct !233
  %i.ad = load i8, ptr %i.aa, align 1, !tbaa !156
  store i8 %i.ad, ptr %i.m, align 1, !tbaa !156
  store i64 36, ptr %i.ac, align 8, !tbaa !175
  store i8 -1, ptr %i.aa, align 1, !tbaa !156
  %i.ae = add nuw nsw i32 %i.ab, 1
  br label %ar_cleared_entry.exit.thread

bb.d:                                             ; preds = %ar_cleared_entry.exit40
  %indvars.iv.next60.a = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %i.af = icmp samesign ult i64 %indvars.iv.next60.a, %i.l
  br i1 %i.af, label %.lr.ph, label %.loopexit, !llvm.loop !2

ar_cleared_entry.exit.thread:                     ; preds = %.lr.ph54, %ar_cleared_entry.exit, %ar_cleared_entry.exit40.thread
  %.3 = phi i32 [ %i.ae, %ar_cleared_entry.exit40.thread ], [ %.053, %ar_cleared_entry.exit ], [ %.053, %.lr.ph54 ]
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.a, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next62, %i.l
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph54, !llvm.loop !3

.loopexit:                                        ; preds = %ar_cleared_entry.exit.thread, %bb.c, %bb.d, %bb.b
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !153
  %i.ah = and i64 %i.ag, -15728641
  %i.ai = shl nuw nsw i32 %i.g, 20
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = or disjoint i64 %i.ah, %i.aj
  store i64 %i.ak, ptr %i.a, align 8, !tbaa !153
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %.loopexit
  ret i32 %i.g
}

; Function Attrs: noreturn
declare void @rb_error_frozen_object(i64 noundef) local_unnamed_addr #6

declare void @rb_str_modify(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @ar_insert(i64 noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 !guid !478 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 6 uses
  %i.b = tail call fastcc range(i64 -4611686018427387904, 4611686018427387904) i64 @any_hash(i64 noundef %1, ptr noundef nonnull @obj_any_hash)
  %i.c = load i64, ptr %i.a, align 8, !tbaa !153  ; 2 uses
  %i.d = and i64 %i.c, 32768
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.j, !prof !184

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
  %i.m = load i8, ptr %i.l, align 1, !tbaa !156
  %i.n = icmp eq i8 %i.m, %i.e
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.o = getelementptr [16 x i8], ptr %i.k, i64 %indvars.iv.i.i
  %i.p = load i64, ptr %i.o, align 8, !tbaa !175
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
  %i.s = load i64, ptr %i.a, align 8, !tbaa !153
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
  %indvars.iv.i.a = phi i64 [ 1, %.lr.ph54.preheader.i ], [ %indvars.iv.next.i, %ar_cleared_entry.exit.thread.i ] ; 2 uses
  %.053.i = phi i32 [ 0, %.lr.ph54.preheader.i ], [ %.3.i, %ar_cleared_entry.exit.thread.i ] ; 4 uses
  %i.ab = getelementptr i8, ptr %i.j, i64 %indvars.iv61.i ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !156
  %i.ad = icmp eq i8 %i.ac, -1
  br i1 %i.ad, label %ar_cleared_entry.exit.i, label %ar_cleared_entry.exit.thread.i

ar_cleared_entry.exit.i:                          ; preds = %.lr.ph54.i
  %i.ae = getelementptr [16 x i8], ptr %i.k, i64 %indvars.iv61.i ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !175
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
  %umax.i = tail call i64 @llvm.umax.i64(i64 %indvars.iv.i.a, i64 %i.aj)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.preheader.i
  %indvars.iv59.i = phi i64 [ %umax.i, %.lr.ph.preheader.i ], [ %indvars.iv.next60.i.a, %bb.h ] ; 6 uses
  %i.ak = getelementptr i8, ptr %i.j, i64 %indvars.iv59.i
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !156
  %i.am = icmp eq i8 %i.al, -1
  br i1 %i.am, label %ar_cleared_entry.exit40.i, label %ar_cleared_entry.exit40.thread.i

ar_cleared_entry.exit40.i:                        ; preds = %.lr.ph.i
  %i.an = getelementptr [16 x i8], ptr %i.k, i64 %indvars.iv59.i
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !175
  %.not45.i = icmp eq i64 %i.ao, 36
  br i1 %.not45.i, label %bb.h, label %ar_cleared_entry.exit40.thread.i

ar_cleared_entry.exit40.thread.i:                 ; preds = %ar_cleared_entry.exit40.i, %.lr.ph.i
  %i.ap = getelementptr i8, ptr %i.j, i64 %indvars.iv59.i ; 2 uses
  %i.aq = trunc nuw i64 %indvars.iv59.i to i32
  %i.ar = getelementptr [16 x i8], ptr %i.k, i64 %indvars.iv59.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false), !tbaa.struct !233
  %i.as = load i8, ptr %i.ap, align 1, !tbaa !156
  store i8 %i.as, ptr %i.ab, align 1, !tbaa !156
  store i64 36, ptr %i.ar, align 8, !tbaa !175
  store i8 -1, ptr %i.ap, align 1, !tbaa !156
  %i.at = add nuw nsw i32 %i.aq, 1
  br label %ar_cleared_entry.exit.thread.i

bb.h:                                             ; preds = %ar_cleared_entry.exit40.i
  %indvars.iv.next60.i.a = add nuw nsw i64 %indvars.iv59.i, 1 ; 2 uses
  %i.au = icmp samesign ult i64 %indvars.iv.next60.i.a, %i.aa
  br i1 %i.au, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !2

ar_cleared_entry.exit.thread.i:                   ; preds = %ar_cleared_entry.exit40.thread.i, %ar_cleared_entry.exit.i, %.lr.ph54.i
  %.3.i = phi i32 [ %i.at, %ar_cleared_entry.exit40.thread.i ], [ %.053.i, %ar_cleared_entry.exit.i ], [ %.053.i, %.lr.ph54.i ]
  %indvars.iv.next62.i = add nuw nsw i64 %indvars.iv61.i, 1 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i.a, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next62.i, %i.aa
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph54.i, !llvm.loop !3

.loopexit.i:                                      ; preds = %ar_cleared_entry.exit.thread.i, %bb.g, %bb.h, %bb.f
  %i.av = load i64, ptr %i.a, align 8, !tbaa !153
  %i.aw = and i64 %i.av, -15728641
  %i.ax = shl nuw nsw i32 %i.v, 20                ; 2 uses
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = or disjoint i64 %i.aw, %i.ay
  store i64 %i.az, ptr %i.a, align 8, !tbaa !153
  br label %ar_compact_table.exit

ar_compact_table.exit:                            ; preds = %.ar_compact_table.exit_crit_edge, %.loopexit.i
  %.pre-phi = phi i32 [ %.pre, %.ar_compact_table.exit_crit_edge ], [ %i.ax, %.loopexit.i ]
  %i.ba = zext nneg i32 %i.v to i64               ; 2 uses
  %i.bb = getelementptr [16 x i8], ptr %i.k, i64 %i.ba ; 2 uses
  store i64 %1, ptr %i.bb, align 8, !tbaa !175
  %i.bc = getelementptr i8, ptr %i.bb, i64 8
  store i64 %2, ptr %i.bc, align 8, !tbaa !176
  %i.bd = getelementptr i8, ptr %i.j, i64 %i.ba
  store i8 %i.e, ptr %i.bd, align 1, !tbaa !156
  %i.be = load i64, ptr %i.a, align 8, !tbaa !153 ; 2 uses
  %i.bf = and i64 %i.be, -16711681
  %i.bg = add nuw nsw i32 %.pre-phi, 1048576
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = or disjoint i64 %i.bf, %i.bh
  %i.bj = and i64 %i.be, 983040
  %narrow.i = add nuw nsw i64 %i.bj, 65536
  %i.bk = or i64 %i.bi, %narrow.i
  store i64 %i.bk, ptr %i.a, align 8, !tbaa !153
  br label %bb.j

bb.i:                                             ; preds = %ar_find_entry.exit
  %i.bl = getelementptr [16 x i8], ptr %i.j, i64 %indvars.iv.i.i
  %i.bm = getelementptr i8, ptr %i.bl, i64 16
  store i64 %2, ptr %i.bm, align 8, !tbaa !176
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
define internal fastcc void @rb_key_err_raise(i64 noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #20 !guid !479 {
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
define internal noundef i32 @tbl_update_modify(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) #0 !guid !480 {
bb.a:
  %i.a = inttoptr i64 %2 to ptr                   ; 4 uses
  %i.b = load i64, ptr %0, align 8, !tbaa !151
  %i.c = load i64, ptr %1, align 8, !tbaa !151
  %i.d = getelementptr i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !197  ; 10 uses
  %i.f = getelementptr i8, ptr %i.a, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !196
  %i.h = tail call i32 %i.g(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2, i32 noundef %3) #29 ; 2 uses
  switch i32 %i.h, label %rb_hash_modify.exit32 [
    i32 0, label %bb.b
    i32 2, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %.not22 = icmp eq i32 %3, 0
  br i1 %.not22, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %0, align 8, !tbaa !151
  %.not23 = icmp eq i64 %i.i, %i.b
  br i1 %.not23, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr %1, align 8, !tbaa !151
  %.not24 = icmp eq i64 %i.j, %i.c
  br i1 %.not24, label %rb_hash_modify.exit32, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.k = icmp ne i64 %i.e, 0
  %i.l = and i64 %i.e, 7
  %i.m = icmp eq i64 %i.l, 0
  %.not3.i.i.i.i = and i1 %i.k, %i.m
  br i1 %.not3.i.i.i.i, label %RB_OBJ_FROZEN.exit.i.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i.i, !prof !192

RB_OBJ_FROZEN.exit.i.i.i:                         ; preds = %bb.e
  %i.n = inttoptr i64 %i.e to ptr
  %i.o = load i64, ptr %i.n, align 8, !tbaa !153  ; 3 uses
  %i.p = and i64 %i.o, 2048
  %.not.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i.i, !prof !193

RB_OBJ_FROZEN.exit.thread.i.i.i:                  ; preds = %RB_OBJ_FROZEN.exit.i.i.i, %bb.e
  tail call void @rb_error_frozen_object(i64 noundef %i.e) #31
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %RB_OBJ_FROZEN.exit.i.i.i
  %i.q = and i64 %i.o, 31
  %i.r = icmp ne i64 %i.q, 5
  %i.s = and i64 %i.o, 49152
  %.not8.i.i.i = icmp eq i64 %i.s, 0
  %or.cond.i.i.i = or i1 %i.r, %.not8.i.i.i
  br i1 %or.cond.i.i.i, label %rb_hash_modify.exit, label %bb.f, !prof !187

bb.f:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  tail call void @rb_str_modify(i64 noundef %i.e) #29
  br label %rb_hash_modify.exit

rb_hash_modify.exit:                              ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %bb.f
  %i.t = load i64, ptr %0, align 8, !tbaa !151
  %i.u = getelementptr i8, ptr %i.a, i64 24
  store i64 %i.t, ptr %i.u, align 8, !tbaa !198
  %i.v = load i64, ptr %1, align 8, !tbaa !151
  %i.w = getelementptr i8, ptr %i.a, i64 32
  store i64 %i.v, ptr %i.w, align 8, !tbaa !199
  br label %rb_hash_modify.exit32

bb.g:                                             ; preds = %bb.a
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %rb_hash_modify.exit32, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = icmp ne i64 %i.e, 0
  %i.y = and i64 %i.e, 7
  %i.z = icmp eq i64 %i.y, 0
  %.not3.i.i.i.i25 = and i1 %i.x, %i.z
  br i1 %.not3.i.i.i.i25, label %RB_OBJ_FROZEN.exit.i.i.i27, label %RB_OBJ_FROZEN.exit.thread.i.i.i26, !prof !192

RB_OBJ_FROZEN.exit.i.i.i27:                       ; preds = %bb.h
  %i.aa = inttoptr i64 %i.e to ptr
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !153 ; 3 uses
  %i.ac = and i64 %i.ab, 2048
  %.not.i.i.i28 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i28, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i29, label %RB_OBJ_FROZEN.exit.thread.i.i.i26, !prof !193

RB_OBJ_FROZEN.exit.thread.i.i.i26:                ; preds = %RB_OBJ_FROZEN.exit.i.i.i27, %bb.h
  tail call void @rb_error_frozen_object(i64 noundef %i.e) #31
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i29:           ; preds = %RB_OBJ_FROZEN.exit.i.i.i27
  %i.ad = and i64 %i.ab, 31
  %i.ae = icmp ne i64 %i.ad, 5
  %i.af = and i64 %i.ab, 49152
  %.not8.i.i.i30 = icmp eq i64 %i.af, 0
  %or.cond.i.i.i31 = or i1 %i.ae, %.not8.i.i.i30
  br i1 %or.cond.i.i.i31, label %rb_hash_modify.exit32, label %bb.i, !prof !187

bb.i:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i29
  tail call void @rb_str_modify(i64 noundef %i.e) #29
  br label %rb_hash_modify.exit32

rb_hash_modify.exit32:                            ; preds = %bb.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i29, %bb.g, %bb.d, %rb_hash_modify.exit, %bb.a
  ret i32 %i.h
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @no_new_key() unnamed_addr #14 !guid !481 {
bb.a:
  %i.a = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !151
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.a, ptr noundef nonnull @.str.103) #31
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
end_hunk_0
begin_hunk_1_@env_values:bb.a
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.b, label %rb_vm_lock_enter.exit

bb.b:                                             ; preds = %bb.a
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.a) #29
  br label %rb_vm_lock_enter.exit

rb_vm_lock_enter.exit:                            ; preds = %bb.a, %bb.b
  %i.e = load ptr, ptr @environ, align 8, !tbaa !208 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !210  ; 2 uses
  %.not1114 = icmp eq ptr %i.f, null
  br i1 %.not1114, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %rb_vm_lock_enter.exit, %bb.e
  %i.g = phi ptr [ %i.o, %bb.e ], [ %i.f, %rb_vm_lock_enter.exit ]
  %.015 = phi ptr [ %i.n, %bb.e ], [ %i.e, %rb_vm_lock_enter.exit ]
  %i.h = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.g, i32 noundef 61) #30 ; 2 uses
  %.not12 = icmp eq ptr %i.h, null
  br i1 %.not12, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.i = getelementptr i8, ptr %i.h, i64 1        ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %env_str_new2.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #30
  %i.k = call i64 @rb_external_str_new_with_enc(ptr noundef nonnull %i.i, i64 noundef %i.j, ptr noundef %i.c) #29 ; 2 uses
  %i.l = call i64 @rb_obj_freeze(i64 noundef %i.k) #29 ; 0 uses
  br label %env_str_new2.exit

env_str_new2.exit:                                ; preds = %bb.c, %bb.d
  %.0.i = phi i64 [ %i.k, %bb.d ], [ 4, %bb.c ]
  %i.m = call i64 @rb_ary_push(i64 noundef %i.b, i64 noundef %.0.i) #29 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %env_str_new2.exit, %.lr.ph
  %i.n = getelementptr i8, ptr %.015, i64 8       ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !210  ; 2 uses
  %.not11 = icmp eq ptr %i.o, null
  br i1 %.not11, label %.critedge, label %.lr.ph, !llvm.loop !533

.critedge:                                        ; preds = %bb.e, %rb_vm_lock_enter.exit
  %i.p = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !205
  %.not.i.i13 = icmp eq ptr %i.p, null
  br i1 %.not.i.i13, label %bb.f, label %rb_vm_lock_leave.exit

bb.f:                                             ; preds = %.critedge
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.a) #29
  br label %rb_vm_lock_leave.exit

rb_vm_lock_leave.exit:                            ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @env_replace_i(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 !guid !536 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !151
  %i.b = call i64 @rb_string_value(ptr noundef nonnull %i.a) #29 ; 0 uses
  %i.c = load volatile i64, ptr %i.a, align 8, !tbaa !151
  %i.d = call fastcc ptr @get_env_cstr(i64 noundef %i.c, ptr noundef nonnull @.str.116) ; 0 uses
  %i.e = load i64, ptr %i.a, align 8, !tbaa !151
  %i.f = call fastcc i64 @env_aset(i64 noundef %i.e, i64 noundef %1) ; 0 uses
  %i.g = load i64, ptr %i.a, align 8, !tbaa !151
  %i.h = inttoptr i64 %i.g to ptr                 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !153
  %i.j = and i64 %i.i, 8192
  %.not.i.i = icmp eq i64 %i.j, 0
  %i.k = getelementptr i8, ptr %i.h, i64 24       ; 2 uses
  br i1 %.not.i.i, label %RSTRING_PTR.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !156
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.b, %bb.a
  %i.m = phi ptr [ %i.l, %bb.b ], [ %i.k, %bb.a ]
  %i.n = getelementptr i8, ptr %i.h, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !232  ; 2 uses
  %i.p = inttoptr i64 %2 to ptr                   ; 3 uses
  %i.q = getelementptr i8, ptr %i.p, i64 16       ; 2 uses
  %i.r = getelementptr i8, ptr %i.p, i64 32
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %RSTRING_PTR.exit.i
  %.0.i = phi i64 [ 0, %RSTRING_PTR.exit.i ], [ %i.an, %bb.h ] ; 7 uses
  %i.s = load i64, ptr %i.p, align 8, !tbaa !153  ; 2 uses
  %i.t = and i64 %i.s, 8192
  %.not.i17.i = icmp eq i64 %i.t, 0
  br i1 %.not.i17.i, label %rb_array_len.exit.i, label %rb_array_len.exit.thread.i

rb_array_len.exit.i:                              ; preds = %bb.c
  %i.u = load i64, ptr %i.q, align 8, !tbaa !156
  %i.v = icmp slt i64 %.0.i, %i.u
  br i1 %i.v, label %bb.d, label %keylist_delete.exit

rb_array_len.exit.thread.i:                       ; preds = %bb.c
  %i.w = lshr i64 %i.s, 15
  %i.x = and i64 %i.w, 127
  %i.y = icmp slt i64 %.0.i, %i.x
  br i1 %i.y, label %RARRAY_AREF.exit.i, label %keylist_delete.exit

bb.d:                                             ; preds = %rb_array_len.exit.i
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !156
  br label %RARRAY_AREF.exit.i

RARRAY_AREF.exit.i:                               ; preds = %bb.d, %rb_array_len.exit.thread.i
  %.0.i.i.i = phi ptr [ %i.z, %bb.d ], [ %i.q, %rb_array_len.exit.thread.i ]
  %i.aa = getelementptr [8 x i8], ptr %.0.i.i.i, i64 %.0.i
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !151
  %i.ac = inttoptr i64 %i.ab to ptr               ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !153
  %i.ae = and i64 %i.ad, 8192
  %.not.i18.i = icmp eq i64 %i.ae, 0
  %i.af = getelementptr i8, ptr %i.ac, i64 24     ; 2 uses
  br i1 %.not.i18.i, label %RSTRING_PTR.exit19.i, label %bb.e

bb.e:                                             ; preds = %RARRAY_AREF.exit.i
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !156
  br label %RSTRING_PTR.exit19.i

RSTRING_PTR.exit19.i:                             ; preds = %bb.e, %RARRAY_AREF.exit.i
  %i.ah = phi ptr [ %i.ag, %bb.e ], [ %i.af, %RARRAY_AREF.exit.i ]
  %i.ai = getelementptr i8, ptr %i.ac, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !232
  %.not.i = icmp eq i64 %i.aj, %i.o
  br i1 %.not.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %RSTRING_PTR.exit19.i
  %bcmp.i = call i32 @bcmp(ptr %i.m, ptr %i.ah, i64 %i.o)
  %i.ak = icmp eq i32 %bcmp.i, 0
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = call i64 @rb_ary_delete_at(i64 noundef %2, i64 noundef %.0.i) #29 ; 0 uses
  %i.am = add i64 %.0.i, -1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %RSTRING_PTR.exit19.i
  %.1.i = phi i64 [ %.0.i, %RSTRING_PTR.exit19.i ], [ %i.am, %bb.g ], [ %.0.i, %bb.f ]
  %i.an = add i64 %.1.i, 1
  br label %bb.c, !llvm.loop !535

keylist_delete.exit:                              ; preds = %rb_array_len.exit.i, %rb_array_len.exit.thread.i
  ret i32 0
}

declare i64 @rb_ary_delete_at(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @env_update_block_i(i64 noundef %0, i64 noundef %1, i64 %2) #0 !guid !537 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %0, ptr %i.a, align 8, !tbaa !151
  %i.b = call i64 @rb_string_value(ptr noundef nonnull %i.a) #29 ; 0 uses
  %i.c = load volatile i64, ptr %i.a, align 8, !tbaa !151
  %i.d = call fastcc ptr @get_env_cstr(i64 noundef %i.c, ptr noundef nonnull @.str.116)
  %i.e = call fastcc noundef i64 @getenv_with_lock(ptr noundef %i.d) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = icmp eq i64 %i.e, 4
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call i64 (i32, ...) @rb_yield_values(i32 noundef 3, i64 noundef %0, i64 noundef %i.e, i64 noundef %1) #29
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %1, %bb.a ], [ %i.g, %bb.b ]
  %i.h = call fastcc i64 @env_aset(i64 noundef %0, i64 noundef %.0) ; 0 uses
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @env_update_i(i64 noundef %0, i64 noundef %1, i64 %2) #0 !guid !538 {
bb.a:
  %i.a = tail call fastcc i64 @env_aset(i64 noundef %0, i64 noundef %1) ; 0 uses
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #21

declare i64 @rb_check_string_type(i64 noundef) local_unnamed_addr #1

declare i64 @rb_str_new(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_get_freeze_opt(i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @rb_keyword_given_p() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #28

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { noinline nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { inlinehint noreturn nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #27 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #29 = { nounwind }
attributes #30 = { nounwind willreturn memory(read) }
attributes #31 = { noreturn nounwind }
attributes #32 = { cold nounwind }
attributes #33 = { noreturn }
attributes #34 = { nounwind willreturn memory(none) }
attributes #35 = { cold noreturn nounwind }

!llvm.module.flags = !{!5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !159}
!1 = distinct !{!1, !159}
!2 = distinct !{!2, !159}
!3 = distinct !{!3, !159}
!4 = distinct !{null}
!5 = !{i32 7, !"Dwarf Version", i32 5}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!11 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!"omnipotent char", !12, i64 0}
!14 = !{!"int", !13, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{i64 1143955067580436001}
!17 = !{i64 7876908460829102398}
!18 = !{i64 1968959378633817573}
!19 = !{i64 -8287637532806757782}
!20 = !{i64 2879792330037691756}
!21 = !{i64 -80619541247744466}
!22 = !{i64 5255832223848622}
!23 = !{i64 -8631337987833488459}
!24 = !{i64 -1611305113907979472}
!25 = !{i64 1156964457870984778}
!26 = !{i64 7597983912205559818}
!27 = !{i64 -8796336039111853734}
!28 = !{i64 -5722903854290085383}
!29 = !{i64 6000016162793557070}
!30 = !{i64 -3782047100137784127}
!31 = !{i64 -8474591036877806089}
!32 = !{i64 205447959412387667}
!33 = !{i64 -5783860462428119355}
!34 = !{i64 -8042395339720198116}
!35 = !{i64 -6145836138506882550}
!36 = !{i64 -6964620232842557935}
!37 = !{i64 -1080702856156475632}
!38 = !{i64 -175870694530389048}
!39 = !{i64 8780257416484902238}
!40 = !{i64 -2313499178959115677}
!41 = !{i64 2709792438561641232}
!42 = !{i64 -9173109135176890430}
!43 = !{i64 -7199617907166952557}
!44 = !{i64 -121601885734259906}
!45 = !{i64 -5422845385952778327}
!46 = !{i64 855096137775335434}
!47 = !{i64 -4519256122133739863}
!48 = !{i64 -756910772127666164}
!49 = !{i64 6399625549740665418}
!50 = !{i64 -3803986588987819076}
!51 = !{i64 7570505579077160791}
!52 = !{i64 -2927129357015169455}
!53 = !{i64 3023822119869491621}
!54 = !{i64 -1197755161455446277}
!55 = !{i64 -3751695900387604185}
!56 = !{i64 3705178696878214477}
!57 = !{i64 1572718156444517592}
!58 = !{i64 -2506673518097580547}
!59 = !{i64 -8660545577376446021}
!60 = !{i64 7397749412534183232}
!61 = !{i64 5298645417193303341}
!62 = !{i64 2236985174752909087}
!63 = !{i64 -4497713275499826690}
!64 = !{i64 299334593527709956}
!65 = !{i64 6570581708661667819}
!66 = !{i64 -6591129616030996335}
!67 = !{i64 6313123979349531110}
!68 = !{i64 8421064127228474280}
!69 = !{i64 3125519525407278301}
!70 = !{i64 -6903577791416729174}
!71 = !{i64 -7923774122882482903}
!72 = !{i64 -6435981476380013929}
!73 = !{i64 9149408147745220187}
!74 = !{i64 2702776137556118}
!75 = !{i64 4819072090390741630}
!76 = !{i64 4088958063476829374}
!77 = !{i64 -3521701543296089523}
!78 = !{i64 -4318410448557120146}
!79 = !{i64 2135662865214128039}
!80 = !{i64 -395534258061591544}
!81 = !{i64 -6211115317309881365}
!82 = !{i64 -3062086401358164307}
!83 = !{i64 -7705544261557976259}
!84 = !{i64 -2782961103354375152}
!85 = !{i64 296886981622880677}
!86 = !{i64 -4252792415893330602}
!87 = !{i64 5881549113863840362}
!88 = !{i64 -8070621102202627600}
!89 = !{i64 7151788659378776000}
!90 = !{i64 -2839895167790695097}
!91 = !{i64 2287280550808425772}
!92 = !{i64 -4804105856330337534}
!93 = !{i64 2155385121803318155}
!94 = !{i64 -6748906918963927811}
!95 = !{i64 189165804474955633}
!96 = !{i64 -5494562884596366651}
!97 = !{i64 3883989402626949670}
!98 = !{i64 6272138470592134089}
!99 = !{i64 -732322232499951279}
!100 = !{i64 -2199510220945843202}
!101 = !{i64 -3230102995445398116}
!102 = !{i64 -709637665586108596}
!103 = !{i64 -8262502722095183341}
!104 = !{i64 1208101828414189709}
!105 = !{i64 -6388626380888004434}
!106 = !{i64 -1029994198145242449}
!107 = !{i64 7536777618569870328}
!108 = !{i64 7031518947492579853}
!109 = !{i64 1548577285525101675}
!110 = !{i64 4623431999452649677}
!111 = !{i64 5446493958902987950}
!112 = !{i64 9099429128016489668}
!113 = !{i64 -7787806798771079977}
!114 = !{i64 1366242757109652312}
!115 = !{i64 -7629760427066073936}
!116 = !{i64 4873319618902642192}
!117 = !{i64 2004242826804920641}
!118 = !{i64 410596958039242504}
!119 = !{i64 4793978500071047740}
!120 = !{i64 -7462052538795291119}
!121 = !{i64 -9107419304117835832}
!122 = !{i64 4562372224459197762}
!123 = !{i64 7738506880311178497}
!124 = !{i64 9025507036271941067}
!125 = !{i64 3088033820789441207}
!126 = !{i64 5390806813821241739}
!127 = !{i64 -6482327443197888255}
!128 = !{i64 -6248340448028660892}
!129 = !{i64 4093861340461791516}
!130 = !{i64 -4190032318945329863}
!131 = !{i64 -4020777244171159641}
!132 = !{i64 -7783153054786569535}
!133 = !{i64 6063156010660581974}
!134 = !{i64 609761502652574495}
!135 = !{i64 7627307583932767368}
!136 = !{i64 -2191663304614379407}
!137 = !{i64 -7409870092911148344}
!138 = !{i64 3796016647479124841}
!139 = !{i64 -2392226268851613304}
!140 = !{i64 -2857121151070018607}
!141 = !{i64 -438378137602658163}
!142 = !{i64 -1716611823618701873}
!143 = !{i64 3942730601898340087}
!144 = !{i64 -4252830084812469636}
!145 = !{i64 -6051217565413658043}
!146 = !{i64 -8121519814176760481}
!147 = !{i64 1072380117583232463}
!148 = !{i64 573407119377815678}
!149 = !{i64 -4957184576771682521}
!150 = !{!"long", !13, i64 0}
!151 = !{!150, !150, i64 0}
!152 = !{!"RBasic", !150, i64 0, !150, i64 8}
!153 = !{!152, !150, i64 0}
!154 = !{!152, !150, i64 8}
!155 = !{!"any pointer", !13, i64 0}
end_hunk_1
