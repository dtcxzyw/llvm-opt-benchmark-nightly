Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/sp_int?download=true
inline.NumInlined: 293
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 57
loop-unroll.NumUnrolled: 75
begin_hunk_0_@sp_cmp:bb.a
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %_sp_cmp.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %_sp_cmp.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load i16, ptr %0, align 8, !tbaa !40     ; 4 uses
  %i.e = load i16, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.f = icmp ugt i16 %i.d, %i.e
  br i1 %i.f, label %_sp_cmp.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = icmp ult i16 %i.d, %i.e
  br i1 %i.g, label %_sp_cmp.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.e
  %.not = icmp eq i16 %i.d, 0
  br i1 %.not, label %_sp_cmp.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i.i
  %i.h = zext i16 %i.d to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.h
  %indvars.iv.next.i.i16 = add nsw i64 %indvars.iv.i.i15, -1
  %i.i = icmp sgt i64 %indvars.iv.i.i15, 1
  br i1 %i.i, label %bb.g, label %_sp_cmp.exit, !llvm.loop !1

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv.i.i15 = phi i64 [ %i.h, %.lr.ph ], [ %indvars.iv.next.i.i16, %bb.f ] ; 4 uses
  %i.j = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.i.i15
  %i.k = load i64, ptr %i.j, align 8, !tbaa !36   ; 2 uses
  %i.l = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.i.i15
  %i.m = load i64, ptr %i.l, align 8, !tbaa !36   ; 2 uses
  %i.n = icmp ugt i64 %i.k, %i.m
  br i1 %i.n, label %_sp_cmp.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = icmp ult i64 %i.k, %i.m
  br i1 %i.o, label %._sp_cmp.exit.loopexit_crit_edge19, label %bb.f, !llvm.loop !1

._sp_cmp.exit.loopexit_crit_edge19:               ; preds = %bb.h
  br label %_sp_cmp.exit, !llvm.loop !1

_sp_cmp.exit:                                     ; preds = %bb.f, %bb.g, %.preheader.i.i, %._sp_cmp.exit.loopexit_crit_edge19, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.a ], [ -1, %bb.b ], [ -1, %bb.e ], [ 1, %bb.d ], [ 0, %.preheader.i.i ], [ -1, %._sp_cmp.exit.loopexit_crit_edge19 ], [ 1, %bb.g ], [ 0, %bb.f ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @sp_is_bit_set(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = lshr i32 %1, 6                           ; 2 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr %0, align 8, !tbaa !40
  %i.c = zext i16 %i.b to i32
  %i.d = icmp samesign ult i32 %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %1, 63
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = zext nneg i32 %i.a to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !36
  %i.j = zext nneg i32 %i.e to i64
  %i.k = lshr i64 %i.i, %i.j
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.l, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %i.m, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 -2147483648, 2147483647) i32 @sp_count_bits(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i16, ptr %0, align 8, !tbaa !40     ; 2 uses
  %.not25 = icmp eq i16 %i.a, 0
  br i1 %.not25, label %.critedge.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = zext i16 %i.a to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.c = icmp sgt i64 %indvars.iv48, 1
  br i1 %i.c, label %bb.e, label %.critedge.thread, !llvm.loop !2

bb.e:                                             ; preds = %bb.c, %bb.d
  %indvars.iv48 = phi i64 [ %i.b, %bb.c ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv48, -1 ; 2 uses
  %i.d = getelementptr [8 x i8], ptr %0, i64 %indvars.iv48
  %i.e = load i64, ptr %i.d, align 8, !tbaa !36
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.d, label %.critedge, !llvm.loop !2

.critedge:                                        ; preds = %bb.e
  %i.g = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.h = getelementptr [8 x i8], ptr %0, i64 %indvars.iv48
  %i.i = load i64, ptr %i.h, align 8, !tbaa !36   ; 5 uses
  %i.j = shl nuw nsw i32 %i.g, 6                  ; 3 uses
  %i.k = icmp ugt i64 %i.i, 4294967295
  br i1 %i.k, label %bb.f, label %.preheader

.preheader:                                       ; preds = %.critedge
  %.not2631 = icmp eq i64 %i.i, 0
  br i1 %.not2631, label %.critedge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.l = tail call range(i64 32, 65) i64 @llvm.ctlz.i64(i64 %i.i, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %reass.sub = sub nsw i32 %i.j, %i.m
  %i.n = add i32 %reass.sub, 64
  br label %.critedge.thread

bb.f:                                             ; preds = %.critedge
  %i.o = add nuw nsw i32 %i.j, 64                 ; 2 uses
  %i.p = icmp sgt i64 %i.i, -1
  br i1 %i.p, label %.lr.ph36, label %.critedge.thread

.lr.ph36:                                         ; preds = %bb.f, %.lr.ph36
  %.035 = phi i64 [ %i.r, %.lr.ph36 ], [ %i.i, %bb.f ]
  %.234 = phi i32 [ %i.q, %.lr.ph36 ], [ %i.o, %bb.f ]
  %i.q = add nsw i32 %.234, -1                    ; 2 uses
  %i.r = shl nuw i64 %.035, 1                     ; 2 uses
  %i.s = icmp sgt i64 %i.r, -1
  br i1 %i.s, label %.lr.ph36, label %.critedge.thread, !llvm.loop !3

.critedge.thread:                                 ; preds = %bb.d, %.lr.ph36, %.lr.ph.preheader, %.preheader, %bb.f, %bb.a, %bb.b
  %.5 = phi i32 [ %i.q, %.lr.ph36 ], [ 0, %bb.a ], [ %i.n, %.lr.ph.preheader ], [ 0, %bb.b ], [ %i.o, %bb.f ], [ %i.j, %.preheader ], [ 0, %bb.d ]
  ret i32 %.5
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 0, 2) i32 @sp_leading_bit(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i16, ptr %0, align 8, !tbaa !40     ; 2 uses
  %.not10 = icmp eq i16 %i.a, 0
  br i1 %.not10, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = zext i16 %i.a to i64
  %i.c = getelementptr [8 x i8], ptr %0, i64 %i.b
  %i.d = load i64, ptr %i.c, align 8, !tbaa !36
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i64 [ %i.d, %bb.c ], [ %i.f, %bb.d ]  ; 3 uses
  %i.e = icmp ugt i64 %.0, 255
  %i.f = lshr i64 %.0, 8
  br i1 %i.e, label %bb.d, label %bb.e, !llvm.loop !72

bb.e:                                             ; preds = %bb.d
  %i.g = lshr i64 %.0, 7
  %i.h = trunc nuw nsw i64 %i.g to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b, %bb.a
  %.07 = phi i32 [ %i.h, %bb.e ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.07
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -98, 1) i32 @sp_set_bit(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %i.b = lshr i32 %i.a, 6                         ; 6 uses
  %i.c = icmp sgt i32 %1, 8256
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %1, 0
  %i.e = icmp eq ptr %0, null
  %or.cond = or i1 %i.e, %i.d
  br i1 %or.cond, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !39
  %i.h = zext i16 %i.g to i32
  %.not = icmp samesign ult i32 %i.b, %i.h
  br i1 %.not, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %2 = and i32 %1, 63                             ; 2 uses
  %i.i = load i16, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.j = zext i16 %i.i to i32                     ; 2 uses
  %.not2731 = icmp samesign ult i32 %i.b, %i.j
  br i1 %.not2731, label %._crit_edge.thread, label %bb.e

._crit_edge.thread:                               ; preds = %bb.d
  %i.k = zext nneg i32 %2 to i64
  %i.l = shl nuw i64 1, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = zext nneg i32 %i.b to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !36
  %i.q = or i64 %i.p, %i.l
  store i64 %i.q, ptr %i.o, align 8, !tbaa !36
  br label %.thread

bb.e:                                             ; preds = %bb.d
  %i.r = zext i16 %i.i to i64
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = getelementptr i8, ptr %0, i64 %i.s
  %scevgep = getelementptr i8, ptr %i.t, i64 8
  %i.u = sub nuw nsw i32 %i.b, %i.j
  %i.v = shl nuw nsw i32 %i.u, 3
  %narrow = add nuw nsw i32 %i.v, 8
  %i.w = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.w, i1 false), !tbaa !36
  %i.x = zext nneg i32 %2 to i64
  %i.y = shl nuw i64 1, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = zext nneg i32 %i.b to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.aa ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !36
  %i.ad = or i64 %i.ac, %i.y
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !36
  %i.ae = trunc nuw i32 %i.b to i16
  %i.af = add nuw i16 %i.ae, 1
  store i16 %i.af, ptr %0, align 8, !tbaa !40
  br label %.thread

.thread:                                          ; preds = %._crit_edge.thread, %bb.b, %bb.c, %bb.a, %bb.e
  %.02430 = phi i32 [ 0, %bb.e ], [ 0, %._crit_edge.thread ], [ -98, %bb.a ], [ -98, %bb.c ], [ -98, %bb.b ]
  ret i32 %.02430
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define range(i32 -98, 1) i32 @sp_2expt(ptr nofree noundef captures(address) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp sgt i32 %1, -1
  %or.cond.not = and i1 %i.a, %i.b
  br i1 %or.cond.not, label %bb.b, label %sp_set_bit.exit

bb.b:                                             ; preds = %bb.a
  store volatile i16 0, ptr %0, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store volatile i64 0, ptr %i.c, align 8, !tbaa !36
  %i.d = lshr i32 %1, 6                           ; 4 uses
  %i.e = icmp samesign ugt i32 %1, 8256
  br i1 %i.e, label %sp_set_bit.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !39
  %i.h = zext i16 %i.g to i32
  %.not.i = icmp samesign ult i32 %i.d, %i.h
  br i1 %.not.i, label %bb.d, label %sp_set_bit.exit

bb.d:                                             ; preds = %bb.c
  %2 = and i32 %1, 63
  %i.i = shl nuw nsw i32 %i.d, 3
  %narrow.i = add nuw nsw i32 %i.i, 8
  %i.j = zext nneg i32 %narrow.i to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, i8 0, i64 %i.j, i1 false), !tbaa !36
  %i.k = zext nneg i32 %2 to i64
  %i.l = shl nuw i64 1, %i.k
  %i.m = zext nneg i32 %i.d to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.m ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !36
  %i.p = or i64 %i.o, %i.l
  store i64 %i.p, ptr %i.n, align 8, !tbaa !36
  %i.q = trunc nuw i32 %i.d to i16
  %i.r = add nuw nsw i16 %i.q, 1
  store i16 %i.r, ptr %0, align 8, !tbaa !40
  br label %sp_set_bit.exit

sp_set_bit.exit:                                  ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -98, %bb.a ], [ 0, %bb.d ], [ -98, %bb.c ], [ -98, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -98, 1) i32 @sp_set(ptr nofree noundef writeonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !36
  %i.b = icmp ne i64 %1, 0
  %i.c = zext i1 %i.b to i16
  store i16 %i.c, ptr %0, align 8, !tbaa !34
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %spec.store.select = phi i32 [ 0, %bb.b ], [ -98, %bb.a ]
  ret i32 %spec.store.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -98, 1) i32 @sp_set_int(ptr nofree noundef writeonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !36
  %i.b = icmp ne i64 %1, 0
  %i.c = zext i1 %i.b to i16
  store i16 %i.c, ptr %0, align 8, !tbaa !40
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %spec.store.select = phi i32 [ 0, %bb.b ], [ -98, %bb.a ]
  ret i32 %spec.store.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 -1, 2) i32 @sp_cmp_d(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.c = icmp ugt i16 %i.b, 1
  br i1 %i.c, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i16 %i.b, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not = icmp ne i64 %1, 0
  %spec.select = sext i1 %.not to i32
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !36   ; 2 uses
  %i.g = icmp ugt i64 %i.f, %1
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = icmp ult i64 %i.f, %1
  %spec.select12 = sext i1 %i.h to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d, %bb.e, %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.e ], [ -1, %bb.a ], [ 1, %bb.b ], [ %spec.select12, %bb.f ], [ %spec.select, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 -98, 1) i32 @sp_add_d(ptr nofree noundef readonly captures(address) %0, i64 noundef %1, ptr nofree noundef captures(address) %2) local_unnamed_addr #10 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = icmp ne ptr %0, null
  %i.d = icmp ne ptr %2, null
  %or.cond.not = and i1 %i.c, %i.d
  br i1 %or.cond.not, label %bb.b, label %_sp_add_d.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load i16, ptr %0, align 8, !tbaa !40     ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !39   ; 2 uses
  %.not = icmp ult i16 %i.e, %i.g
  br i1 %.not, label %.thread, label %_sp_add_d.exit

.thread:                                          ; preds = %bb.b
  %i.h = icmp eq i16 %i.e, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %1, ptr %i.i, align 8, !tbaa !36
  %i.j = icmp ne i64 %1, 0
  %i.k = zext i1 %i.j to i16
  store i16 %i.k, ptr %2, align 8, !tbaa !40
  br label %_sp_add_d.exit

bb.d:                                             ; preds = %.thread
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !36   ; 2 uses
  store i16 %i.e, ptr %2, align 8, !tbaa !40
  %i.n = add i64 %i.m, %1                         ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  store i64 %i.n, ptr %i.o, align 8, !tbaa !36
  %i.p = icmp ult i64 %i.n, %i.m
  br i1 %i.p, label %.preheader51.i, label %bb.g

.preheader51.i:                                   ; preds = %bb.d
  %i.q = load i16, ptr %0, align 8, !tbaa !40     ; 5 uses
  %i.r = zext i16 %i.q to i32                     ; 2 uses
  %i.s = icmp ugt i16 %i.q, 1
  br i1 %i.s, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader51.i
  %wide.trip.count.i = zext i16 %i.q to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.e ] ; 4 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.u = load i64, ptr %i.t, align 8, !tbaa !36
  %i.v = add i64 %i.u, 1                          ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i
  store i64 %i.v, ptr %i.w, align 8, !tbaa !36
  %.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i, label %bb.e, label %._crit_edge.loopexit.i

bb.e:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %.lr.ph.i, !llvm.loop !4

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.x = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader51.i
  %.0.lcssa.i = phi i32 [ 1, %.preheader51.i ], [ %i.x, %._crit_edge.loopexit.i ] ; 2 uses
  %i.y = icmp eq i32 %.0.lcssa.i, %i.r
  br i1 %i.y, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %bb.e, %._crit_edge.i
  %i.z = icmp ult i16 %i.q, %i.g
  br i1 %i.z, label %bb.f, label %_sp_add_d.exit

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.aa = add i16 %i.e, 1
  store i16 %i.aa, ptr %2, align 8, !tbaa !40
  %i.ab = zext i16 %i.q to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ab
  store i64 1, ptr %i.ac, align 8, !tbaa !36
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i, %bb.d
  %.1.i = phi i32 [ %i.r, %bb.f ], [ 0, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.not44.i = icmp eq ptr %2, %0
  br i1 %.not44.i, label %_sp_add_d.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.g
  %i.ad = load i16, ptr %0, align 8, !tbaa !40
  %i.ae = zext i16 %i.ad to i32                   ; 5 uses
  %.257.i = add nuw i32 %.1.i, 1                  ; 2 uses
  %i.af = icmp ult i32 %.257.i, %i.ae
  br i1 %i.af, label %.lr.ph59.preheader.i, label %_sp_add_d.exit

.lr.ph59.preheader.i:                             ; preds = %.preheader.i
  %i.ag = zext nneg i32 %.257.i to i64            ; 3 uses
  %i.ah = add nsw i32 %i.ae, -2
  %i.ai = sub i32 %i.ah, %.1.i                    ; 2 uses
  %i.aj = zext i32 %i.ai to i64
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ai, 7
  %i.al = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.al, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph59.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph59.preheader.i
  %n.vec = and i64 %i.ak, 8589934588              ; 3 uses
  %3 = add nuw nsw i64 %n.vec, %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = add nuw i64 %index, %i.ag               ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.am ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %wide.load = load <2 x i64>, ptr %i.an, align 8, !tbaa !36
  %wide.load25 = load <2 x i64>, ptr %i.ao, align 8, !tbaa !36
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.am ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <2 x i64> %wide.load, ptr %i.ap, align 8, !tbaa !36
  store <2 x i64> %wide.load25, ptr %i.aq, align 8, !tbaa !36
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %_sp_add_d.exit, label %.lr.ph59.i.preheader

.lr.ph59.i.preheader:                             ; preds = %.lr.ph59.preheader.i, %middle.block
  %indvars.iv62.i.ph = phi i64 [ %i.ag, %.lr.ph59.preheader.i ], [ %3, %middle.block ] ; 3 uses
  %i.as = trunc i64 %indvars.iv62.i.ph to i32     ; 2 uses
  %i.at = sub i32 %i.ae, %i.as
  %xtraiter = and i32 %i.at, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph59.i.prol.loopexit, label %.lr.ph59.i.prol

.lr.ph59.i.prol:                                  ; preds = %.lr.ph59.i.preheader, %.lr.ph59.i.prol
  %indvars.iv62.i.prol = phi i64 [ %indvars.iv.next63.i.prol, %.lr.ph59.i.prol ], [ %indvars.iv62.i.ph, %.lr.ph59.i.preheader ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph59.i.prol ], [ 0, %.lr.ph59.i.preheader ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv62.i.prol
  %i.av = load i64, ptr %i.au, align 8, !tbaa !36
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv62.i.prol
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !36
  %indvars.iv.next63.i.prol = add nuw nsw i64 %indvars.iv62.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph59.i.prol.loopexit, label %.lr.ph59.i.prol, !llvm.loop !74

.lr.ph59.i.prol.loopexit:                         ; preds = %.lr.ph59.i.prol, %.lr.ph59.i.preheader
  %indvars.iv62.i.unr = phi i64 [ %indvars.iv62.i.ph, %.lr.ph59.i.preheader ], [ %indvars.iv.next63.i.prol, %.lr.ph59.i.prol ]
  %i.ax = sub i32 %i.as, %i.ae
  %i.ay = icmp ugt i32 %i.ax, -4
  br i1 %i.ay, label %_sp_add_d.exit, label %.lr.ph59.i

.lr.ph59.i:                                       ; preds = %.lr.ph59.i.prol.loopexit, %.lr.ph59.i
  %indvars.iv62.i = phi i64 [ %indvars.iv.next63.i.3, %.lr.ph59.i ], [ %indvars.iv62.i.unr, %.lr.ph59.i.prol.loopexit ] ; 6 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv62.i
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !36
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv62.i
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !36
  %indvars.iv.next63.i = add nuw nsw i64 %indvars.iv62.i, 1 ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next63.i
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !36
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next63.i
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !36
  %indvars.iv.next63.i.1 = add nuw nsw i64 %indvars.iv62.i, 2 ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next63.i.1
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !36
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next63.i.1
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !36
  %indvars.iv.next63.i.2 = add nuw nsw i64 %indvars.iv62.i, 3 ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next63.i.2
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !36
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next63.i.2
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !36
  %indvars.iv.next63.i.3 = add nuw nsw i64 %indvars.iv62.i, 4 ; 2 uses
  %lftr.wideiv.i.3 = trunc i64 %indvars.iv.next63.i.3 to i32
  %exitcond65.not.i.3 = icmp eq i32 %lftr.wideiv.i.3, %i.ae
  br i1 %exitcond65.not.i.3, label %_sp_add_d.exit, label %.lr.ph59.i, !llvm.loop !75

_sp_add_d.exit:                                   ; preds = %.lr.ph59.i.prol.loopexit, %.lr.ph59.i, %middle.block, %bb.a, %bb.b, %.preheader.i, %bb.g, %._crit_edge.thread.i, %bb.c
  %.1 = phi i32 [ -98, %bb.a ], [ -98, %bb.b ], [ 0, %bb.c ], [ -98, %._crit_edge.thread.i ], [ 0, %bb.g ], [ 0, %.preheader.i ], [ 0, %middle.block ], [ 0, %.lr.ph59.i ], [ 0, %.lr.ph59.i.prol.loopexit ]
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 -98, 1) i32 @sp_sub_d(ptr nofree noundef readonly captures(address) %0, i64 noundef %1, ptr nofree noundef captures(address) %2) local_unnamed_addr #10 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = icmp ne ptr %0, null
  %i.d = icmp ne ptr %2, null
  %or.cond.not = and i1 %i.c, %i.d
  br i1 %or.cond.not, label %bb.b, label %_sp_sub_d.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load i16, ptr %0, align 8, !tbaa !40     ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !39
  %i.h = icmp ugt i16 %i.e, %i.g
  br i1 %i.h, label %_sp_sub_d.exit, label %.thread

.thread:                                          ; preds = %bb.b
  store i16 %i.e, ptr %2, align 8, !tbaa !40
  %i.i = icmp eq i16 %i.e, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !36
  br label %_sp_sub_d.exit

bb.d:                                             ; preds = %.thread
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !36   ; 2 uses
  %i.m = sub i64 %i.l, %1
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  store i64 %i.m, ptr %i.n, align 8, !tbaa !36
  %i.o = icmp ugt i64 %1, %i.l
  br i1 %i.o, label %.preheader43.i, label %.loopexit44.i

.preheader43.i:                                   ; preds = %bb.d
  %i.p = zext i16 %i.e to i32
  %.not51.i = icmp eq i16 %i.e, 1
  br i1 %.not51.i, label %.loopexit44.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader43.i
  %wide.trip.count.i = zext i16 %i.e to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.e ] ; 4 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.r = load i64, ptr %i.q, align 8, !tbaa !36   ; 2 uses
  %i.s = add i64 %i.r, -1
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i
  store i64 %i.s, ptr %i.t, align 8, !tbaa !36
  %.not.i = icmp eq i64 %i.r, 0
  br i1 %.not.i, label %bb.e, label %.loopexit44.loopexit.split.loop.exit62.i

bb.e:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit44.loopexit.i, label %.lr.ph.i, !llvm.loop !5

.loopexit44.loopexit.split.loop.exit62.i:         ; preds = %.lr.ph.i
  %i.u = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.loopexit44.loopexit.i

.loopexit44.loopexit.i:                           ; preds = %bb.e, %.loopexit44.loopexit.split.loop.exit62.i
  %.1.ph.i = phi i32 [ %i.u, %.loopexit44.loopexit.split.loop.exit62.i ], [ %i.p, %bb.e ]
  %i.v = add nuw i32 %.1.ph.i, 1
  br label %.loopexit44.i

.loopexit44.i:                                    ; preds = %.loopexit44.loopexit.i, %.preheader43.i, %bb.d
  %.1.i = phi i32 [ 1, %bb.d ], [ 2, %.preheader43.i ], [ %i.v, %.loopexit44.loopexit.i ] ; 3 uses
  %.not40.i = icmp eq ptr %2, %0
  br i1 %.not40.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %.loopexit44.i
  %i.w = zext i16 %i.e to i32                     ; 5 uses
  %i.x = icmp ult i32 %.1.i, %i.w
  br i1 %i.x, label %.lr.ph50.preheader.i, label %.loopexit.i

.lr.ph50.preheader.i:                             ; preds = %.preheader.i
  %i.y = zext nneg i32 %.1.i to i64               ; 3 uses
  %i.z = xor i32 %.1.i, -1
  %i.aa = add i32 %i.z, %i.w                      ; 2 uses
  %i.ab = zext i32 %i.aa to i64
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.aa, 7
  %i.ad = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.ad, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph50.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph50.preheader.i
  %n.vec = and i64 %i.ac, 8589934588              ; 3 uses
  %3 = add nuw nsw i64 %n.vec, %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = add nuw i64 %index, %i.y                ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load = load <2 x i64>, ptr %i.af, align 8, !tbaa !36
  %wide.load29 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !36
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ae ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store <2 x i64> %wide.load, ptr %i.ah, align 8, !tbaa !36
  store <2 x i64> %wide.load29, ptr %i.ai, align 8, !tbaa !36
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph50.i.preheader

.lr.ph50.i.preheader:                             ; preds = %.lr.ph50.preheader.i, %middle.block
  %indvars.iv54.i.ph = phi i64 [ %i.y, %.lr.ph50.preheader.i ], [ %3, %middle.block ] ; 3 uses
  %i.ak = trunc i64 %indvars.iv54.i.ph to i32     ; 2 uses
  %i.al = sub i32 %i.w, %i.ak
  %xtraiter = and i32 %i.al, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph50.i.prol.loopexit, label %.lr.ph50.i.prol

.lr.ph50.i.prol:                                  ; preds = %.lr.ph50.i.preheader, %.lr.ph50.i.prol
  %indvars.iv54.i.prol = phi i64 [ %indvars.iv.next55.i.prol, %.lr.ph50.i.prol ], [ %indvars.iv54.i.ph, %.lr.ph50.i.preheader ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph50.i.prol ], [ 0, %.lr.ph50.i.preheader ]
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv54.i.prol
  %i.an = load i64, ptr %i.am, align 8, !tbaa !36
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv54.i.prol
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !36
  %indvars.iv.next55.i.prol = add nuw nsw i64 %indvars.iv54.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph50.i.prol.loopexit, label %.lr.ph50.i.prol, !llvm.loop !77

.lr.ph50.i.prol.loopexit:                         ; preds = %.lr.ph50.i.prol, %.lr.ph50.i.preheader
  %indvars.iv54.i.unr = phi i64 [ %indvars.iv54.i.ph, %.lr.ph50.i.preheader ], [ %indvars.iv.next55.i.prol, %.lr.ph50.i.prol ]
  %i.ap = sub i32 %i.ak, %i.w
  %i.aq = icmp ugt i32 %i.ap, -4
  br i1 %i.aq, label %.loopexit.i, label %.lr.ph50.i

.lr.ph50.i:                                       ; preds = %.lr.ph50.i.prol.loopexit, %.lr.ph50.i
  %indvars.iv54.i = phi i64 [ %indvars.iv.next55.i.3, %.lr.ph50.i ], [ %indvars.iv54.i.unr, %.lr.ph50.i.prol.loopexit ] ; 6 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv54.i
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !36
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv54.i
  store i64 %i.as, ptr %i.at, align 8, !tbaa !36
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 1 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next55.i
  %i.av = load i64, ptr %i.au, align 8, !tbaa !36
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next55.i
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !36
  %indvars.iv.next55.i.1 = add nuw nsw i64 %indvars.iv54.i, 2 ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next55.i.1
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !36
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next55.i.1
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !36
  %indvars.iv.next55.i.2 = add nuw nsw i64 %indvars.iv54.i, 3 ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next55.i.2
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !36
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next55.i.2
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !36
  %indvars.iv.next55.i.3 = add nuw nsw i64 %indvars.iv54.i, 4 ; 2 uses
  %lftr.wideiv.i.3 = trunc i64 %indvars.iv.next55.i.3 to i32
  %exitcond57.not.i.3 = icmp eq i32 %lftr.wideiv.i.3, %i.w
  br i1 %exitcond57.not.i.3, label %.loopexit.i, label %.lr.ph50.i, !llvm.loop !78

.loopexit.i:                                      ; preds = %.lr.ph50.i.prol.loopexit, %.lr.ph50.i, %middle.block, %.preheader.i, %.loopexit44.i
  %i.bd = zext i16 %i.e to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next59.i = add nsw i64 %indvars.iv58.i28, -1
  %i.be = icmp sgt i64 %indvars.iv58.i28, 1
  br i1 %i.be, label %bb.g, label %.split.loop.exit64.i, !llvm.loop !6

bb.g:                                             ; preds = %.loopexit.i, %bb.f
  %indvars.iv58.i28 = phi i64 [ %i.bd, %.loopexit.i ], [ %indvars.iv.next59.i, %bb.f ] ; 4 uses
  %i.bf = getelementptr [8 x i8], ptr %2, i64 %indvars.iv58.i28
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !36
  %.not42.i = icmp eq i64 %i.bg, 0
  br i1 %.not42.i, label %bb.f, label %.split.loop.exit.i, !llvm.loop !6

.split.loop.exit.i:                               ; preds = %bb.g
  %i.bh = trunc nuw i64 %indvars.iv58.i28 to i16
  br label %.split.loop.exit64.i

.split.loop.exit64.i:                             ; preds = %bb.f, %.split.loop.exit.i
  %.0.in.lcssa.i = phi i16 [ %i.bh, %.split.loop.exit.i ], [ 0, %bb.f ]
  store i16 %.0.in.lcssa.i, ptr %2, align 8, !tbaa !40
  br label %_sp_sub_d.exit

_sp_sub_d.exit:                                   ; preds = %bb.a, %bb.b, %.split.loop.exit64.i, %bb.c
  %.012 = phi i32 [ 0, %.split.loop.exit64.i ], [ -98, %bb.b ], [ 0, %bb.c ], [ -98, %bb.a ]
  ret i32 %.012
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 -98, 1) i32 @sp_mul_d(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %2, null
  %or.cond.not = and i1 %i.a, %i.b
  br i1 %or.cond.not, label %bb.b, label %_sp_mul_d.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load i16, ptr %0, align 8, !tbaa !40     ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.e = load i16, ptr %i.d, align 2, !tbaa !39   ; 2 uses
  %i.f = icmp ugt i16 %i.c, %i.e
  br i1 %i.f, label %_sp_mul_d.exit, label %.thread

.thread:                                          ; preds = %bb.b
  %i.g = zext i16 %i.c to i32                     ; 3 uses
  %.not39.i = icmp eq i16 %i.c, 0
  br i1 %.not39.i, label %.sink.split.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = zext i64 %1 to i128                      ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %wide.trip.count.i = zext i16 %i.c to i64       ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.k = icmp eq i16 %i.c, 1
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 65534
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.c ] ; 4 uses
  %.02837.i = phi i128 [ 0, %.lr.ph.i.new ], [ %i.aa, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.c ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.m = load i64, ptr %i.l, align 8, !tbaa !36
  %i.n = zext i64 %i.m to i128
  %i.o = mul nuw i128 %i.n, %i.i
  %i.p = add nuw i128 %i.o, %.02837.i             ; 2 uses
  %i.q = trunc i128 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.i
  store i64 %i.q, ptr %i.r, align 8, !tbaa !36
  %i.s = lshr i128 %i.p, 64
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next.i
  %i.u = load i64, ptr %i.t, align 8, !tbaa !36
  %i.v = zext i64 %i.u to i128
  %i.w = mul nuw i128 %i.v, %i.i
  %i.x = add nuw i128 %i.w, %i.s                  ; 2 uses
  %i.y = trunc i128 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next.i
  store i64 %i.y, ptr %i.z, align 8, !tbaa !36
  %i.aa = lshr i128 %i.x, 64                      ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.c, !llvm.loop !7

._crit_edge.i.unr-lcssa:                          ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.02837.i.epil.init = phi i128 [ 0, %.lr.ph.i ], [ %i.aa, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod26 = trunc i16 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod26)
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i.epil.init
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !36
  %i.ad = zext i64 %i.ac to i128
  %i.ae = mul nuw i128 %i.ad, %i.i
  %i.af = add nuw i128 %i.ae, %.02837.i.epil.init ; 2 uses
  %i.ag = trunc i128 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.i.epil.init
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !36
  %i.ai = lshr i128 %i.af, 64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi i128 [ %i.aa, %._crit_edge.i.unr-lcssa ], [ %i.ai, %.epil.preheader ] ; 2 uses
  %.not.i = icmp eq i128 %.lcssa, 0
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  %i.aj = icmp eq i16 %i.c, %i.e
  br i1 %i.aj, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = trunc nuw i128 %.lcssa to i64
  %i.al = add nuw nsw i32 %i.g, 1
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %wide.trip.count.i
  store i64 %i.ak, ptr %i.am, align 8, !tbaa !36
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %.1.i = phi i32 [ %i.g, %._crit_edge.i ], [ %i.al, %bb.e ], [ %i.g, %bb.d ] ; 2 uses
  %.030.i = phi i32 [ 0, %._crit_edge.i ], [ 0, %bb.e ], [ -98, %bb.d ] ; 3 uses
  %i.an = trunc i32 %.1.i to i16
  store i16 %i.an, ptr %2, align 8, !tbaa !40
  %i.ao = and i32 %.1.i, 65535                    ; 2 uses
  %.not33.i = icmp eq i32 %i.ao, 0
  br i1 %.not33.i, label %_sp_mul_d.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %i.ap = zext nneg i32 %i.ao to i64
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %indvars.iv.next45.i = add nsw i64 %indvars.iv44.i23, -1
  %i.aq = icmp sgt i64 %indvars.iv44.i23, 1
  br i1 %i.aq, label %bb.h, label %.sink.split.i, !llvm.loop !8

end_hunk_0
begin_hunk_1_@_sp_submod_ct:bb.a
.lr.ph46.new:                                     ; preds = %.lr.ph46
  %unroll_iter = and i64 %wide.trip.count56, 65534
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph46.new
  %indvars.iv53 = phi i64 [ 0, %.lr.ph46.new ], [ %indvars.iv.next54.1, %bb.c ] ; 4 uses
  %.13943 = phi i128 [ 0, %.lr.ph46.new ], [ %i.be, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph46.new ], [ %niter.next.1, %bb.c ]
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv53 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !36
  %i.al = zext i64 %i.ak to i128
  %i.am = add nuw nsw i128 %.13943, %i.al
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv53
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !36
  %.0..0..0..0.16 = load volatile i64, ptr %i.b, align 8, !tbaa !36
  %i.ap = and i64 %.0..0..0..0.16, %i.ao
  %i.aq = zext i64 %i.ap to i128
  %i.ar = add nuw nsw i128 %i.am, %i.aq           ; 2 uses
  %i.as = trunc i128 %i.ar to i64
  store i64 %i.as, ptr %i.aj, align 8, !tbaa !36
  %i.at = lshr i128 %i.ar, 64
  %indvars.iv.next54 = or disjoint i64 %indvars.iv53, 1 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.next54 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !36
  %i.aw = zext i64 %i.av to i128
  %i.ax = add nuw nsw i128 %i.at, %i.aw
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next54
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !36
  %.0..0..0..0.16.1 = load volatile i64, ptr %i.b, align 8, !tbaa !36
  %i.ba = and i64 %.0..0..0..0.16.1, %i.az
  %i.bb = zext i64 %i.ba to i128
  %i.bc = add nuw nsw i128 %i.ax, %i.bb           ; 2 uses
  %i.bd = trunc i128 %i.bc to i64
  store i64 %i.bd, ptr %i.au, align 8, !tbaa !36
  %i.be = lshr i128 %i.bc, 64                     ; 2 uses
  %indvars.iv.next54.1 = add nuw nsw i64 %indvars.iv53, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.i.unr-lcssa, label %bb.c, !llvm.loop !97

.lr.ph.i.unr-lcssa:                               ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %extract.t64 = trunc nuw nsw i128 %i.be to i64
  br i1 %lcmp.mod.not, label %.lr.ph.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph.i.unr-lcssa, %.lr.ph46
  %indvars.iv53.epil.init = phi i64 [ 0, %.lr.ph46 ], [ %indvars.iv.next54.1, %.lr.ph.i.unr-lcssa ] ; 2 uses
  %.13943.epil.init.off0 = phi i64 [ 0, %.lr.ph46 ], [ %extract.t64, %.lr.ph.i.unr-lcssa ]
  %lcmp.mod63 = trunc i16 %.fr to i1
  tail call void @llvm.assume(i1 %lcmp.mod63)
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv53.epil.init ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !36
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv53.epil.init
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !36
  %.0..0..0..0.16.epil = load volatile i64, ptr %i.b, align 8, !tbaa !36
  %i.bj = and i64 %.0..0..0..0.16.epil, %i.bi
  %i.bk = add i64 %.13943.epil.init.off0, %i.bg
  %i.bl = add i64 %i.bk, %i.bj
  store i64 %i.bl, ptr %i.bf, align 8, !tbaa !36
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.unr-lcssa, %.epil.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store volatile i16 -1, ptr %i.a, align 2, !tbaa !46
  %i.bm = zext i16 %.fr to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.bm, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %.01112.i = phi i16 [ %.fr, %.lr.ph.i ], [ %i.bu, %bb.d ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.bn = getelementptr [8 x i8], ptr %4, i64 %indvars.iv.i
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !36
  %i.bp = zext i64 %i.bo to i128
  %i.bq = add nuw nsw i128 %i.bp, 1208925819614629174706175
  %i.br = lshr i128 %i.bq, 64
  %i.bs = trunc i128 %i.br to i16
  %.0..0..0..0..0..0..i = load volatile i16, ptr %i.a, align 2, !tbaa !46
  %i.bt = and i16 %.0..0..0..0..0..0..i, %i.bs
  store volatile i16 %i.bt, ptr %i.a, align 2, !tbaa !46
  %.0..0..0..0..0..0.1.i = load volatile i16, ptr %i.a, align 2, !tbaa !46
  %i.bu = add i16 %.0..0..0..0..0..0.1.i, %.01112.i ; 2 uses
  %i.bv = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.bv, label %bb.d, label %sp_clamp_ct.exit, !llvm.loop !20

sp_clamp_ct.exit:                                 ; preds = %bb.d, %._crit_edge47.thread
  %.011.lcssa.i = phi i16 [ 0, %._crit_edge47.thread ], [ %i.bu, %bb.d ]
  store i16 %.011.lcssa.i, ptr %4, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 -98, 1) i32 @sp_lshd(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp sgt i32 %1, -1
  %or.cond.not = and i1 %i.a, %i.b
  br i1 %or.cond.not, label %bb.b, label %.thread32

bb.b:                                             ; preds = %bb.a
  %i.c = load i16, ptr %0, align 8, !tbaa !40     ; 3 uses
  %i.d = zext i16 %i.c to i32
  %i.e = add nuw i32 %1, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !39
  %i.h = zext i16 %i.g to i32
  %i.i = icmp ugt i32 %i.e, %i.h
  br i1 %i.i, label %.thread32, label %.thread

.thread:                                          ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = zext nneg i32 %1 to i64                  ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %i.m = zext i16 %i.c to i64
  %i.n = shl nuw nsw i64 %i.m, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.j, i64 %i.n, i1 false)
  %i.o = shl nuw nsw i64 %i.k, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.j, i8 0, i64 %i.o, i1 false)
  %i.p = trunc i32 %1 to i16
  %i.q = add i16 %i.c, %i.p                       ; 3 uses
  store i16 %i.q, ptr %0, align 8, !tbaa !40
  %.not = icmp eq i16 %i.q, 0
  br i1 %.not, label %.thread32, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.r = zext i16 %i.q to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next = add nsw i64 %indvars.iv40, -1
  %i.s = icmp sgt i64 %indvars.iv40, 1
  br i1 %i.s, label %bb.e, label %.split.loop.exit37, !llvm.loop !98

bb.e:                                             ; preds = %bb.c, %bb.d
  %indvars.iv40 = phi i64 [ %i.r, %bb.c ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.t = getelementptr [8 x i8], ptr %0, i64 %indvars.iv40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !36
  %.not28 = icmp eq i64 %i.u, 0
  br i1 %.not28, label %bb.d, label %.split.loop.exit, !llvm.loop !98

.split.loop.exit:                                 ; preds = %bb.e
  %i.v = trunc i64 %indvars.iv40 to i16
  br label %.split.loop.exit37

.split.loop.exit37:                               ; preds = %bb.d, %.split.loop.exit
  %.0.in.lcssa = phi i16 [ %i.v, %.split.loop.exit ], [ 0, %bb.d ]
  store i16 %.0.in.lcssa, ptr %0, align 8, !tbaa !40
  br label %.thread32

.thread32:                                        ; preds = %bb.a, %bb.b, %.thread, %.split.loop.exit37
  %.02530 = phi i32 [ 0, %.thread ], [ 0, %.split.loop.exit37 ], [ -98, %bb.b ], [ -98, %bb.a ]
  ret i32 %.02530
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @sp_rshd(ptr nofree noundef captures(address) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp sgt i32 %1, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = load i16, ptr %0, align 8, !tbaa !40     ; 3 uses
  %i.d = zext i16 %i.c to i32
  %.not = icmp samesign ult i32 %1, %i.d
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store volatile i16 0, ptr %0, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store volatile i64 0, ptr %i.e, align 8, !tbaa !36
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.f = trunc nuw i32 %1 to i16                  ; 2 uses
  %i.g = sub i16 %i.c, %i.f                       ; 3 uses
  store i16 %i.g, ptr %0, align 8, !tbaa !40
  %.not22 = icmp eq i16 %i.c, %i.f
  br i1 %.not22, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = zext nneg i32 %1 to i64                  ; 3 uses
  %wide.trip.count = zext i16 %i.g to i64         ; 3 uses
  %min.iters.check = icmp ult i16 %i.g, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 65532        ; 4 uses
  %2 = add nuw nsw i64 %n.vec, %i.i
  %invariant.gep = getelementptr [8 x i8], ptr %i.h, i64 %i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <2 x i64>, ptr %gep, align 8, !tbaa !36
  %wide.load27 = load <2 x i64>, ptr %i.j, align 8, !tbaa !36
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <2 x i64> %wide.load, ptr %i.k, align 8, !tbaa !36
  store <2 x i64> %wide.load27, ptr %i.l, align 8, !tbaa !36
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !99

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv23.ph = phi i64 [ %i.i, %.lr.ph ], [ %2, %middle.block ]
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %scalar.ph ], [ %indvars.iv23.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv23
  %i.o = load i64, ptr %i.n, align 8, !tbaa !36
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  store i64 %i.o, ptr %i.p, align 8, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !100

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define range(i32 -98, 1) i32 @sp_rshb(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, ptr nofree noundef captures(address) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  %i.b = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %i.c = lshr i32 %i.b, 6                         ; 7 uses
  %i.d = icmp eq ptr %0, null
  %or.cond = or i1 %i.d, %i.a
  br i1 %or.cond, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i16, ptr %0, align 8, !tbaa !40     ; 3 uses
  %i.f = zext i16 %i.e to i32                     ; 2 uses
  %.not = icmp samesign ult i32 %i.c, %i.f
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store volatile i16 0, ptr %2, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store volatile i64 0, ptr %i.g, align 8, !tbaa !36
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.h = sub nuw nsw i32 %i.f, %i.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.j = load i16, ptr %i.i, align 2, !tbaa !39
  %i.k = zext i16 %i.j to i32
  %i.l = icmp samesign ugt i32 %i.h, %i.k
  br i1 %i.l, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = and i32 %1, 63                           ; 4 uses
  %i.n = icmp eq i32 %i.m, 0
  %i.o = trunc nuw i32 %i.c to i16                ; 2 uses
  br i1 %i.n, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.p = xor i16 %i.o, -1
  %i.q = add i16 %i.e, %i.p                       ; 5 uses
  %.not66 = icmp eq i16 %i.q, 0
  br i1 %.not66, label %.preheader.._crit_edge_crit_edge, label %.lr.ph

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.pre = zext nneg i32 %i.m to i64
  br label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = zext nneg i32 %i.m to i64                ; 5 uses
  %i.t = sub nuw nsw i32 64, %i.m
  %i.u = zext nneg i32 %i.t to i64                ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.w = zext nneg i32 %i.c to i64                ; 2 uses
  %wide.trip.count = zext i16 %i.q to i64         ; 7 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.w ; 5 uses
  %min.iters.check = icmp ult i16 %i.q, 10
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.x = shl nuw nsw i64 %wide.trip.count, 3
  %i.y = getelementptr i8, ptr %2, i64 %i.x
  %scevgep = getelementptr i8, ptr %i.y, i64 8
  %i.z = add nuw nsw i64 %i.w, %wide.trip.count
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = getelementptr i8, ptr %0, i64 %i.aa
  %scevgep74 = getelementptr i8, ptr %i.ab, i64 16
  %bound0 = icmp ult ptr %i.v, %scevgep74
  %bound1 = icmp ult ptr %invariant.gep, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 65532        ; 4 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.s, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert75 = insertelement <2 x i64> poison, i64 %i.u, i64 0
  %broadcast.splat76 = shufflevector <2 x i64> %broadcast.splatinsert75, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load = load <2 x i64>, ptr %i.ac, align 8, !tbaa !36, !alias.scope !106
  %wide.load77 = load <2 x i64>, ptr %i.ad, align 8, !tbaa !36, !alias.scope !106
  %i.ae = lshr <2 x i64> %wide.load, %broadcast.splat
  %i.af = lshr <2 x i64> %wide.load77, %broadcast.splat
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %wide.load78 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !36, !alias.scope !106
  %wide.load79 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !36, !alias.scope !106
  %i.ai = shl <2 x i64> %wide.load78, %broadcast.splat76
  %i.aj = shl <2 x i64> %wide.load79, %broadcast.splat76
  %i.ak = or <2 x i64> %i.ai, %i.ae
  %i.al = or <2 x i64> %i.aj, %i.af
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <2 x i64> %i.ak, ptr %i.am, align 8, !tbaa !36, !alias.scope !107, !noalias !106
  store <2 x i64> %i.al, ptr %i.an, align 8, !tbaa !36, !alias.scope !107, !noalias !106
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !104

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %gep.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.ph ; 2 uses
  %i.ap = load i64, ptr %gep.prol, align 8, !tbaa !36
  %i.aq = lshr i64 %i.ap, %i.s
  %i.ar = getelementptr inbounds nuw i8, ptr %gep.prol, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !36
  %i.at = shl i64 %i.as, %i.u
  %i.au = or i64 %i.at, %i.aq
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.ph
  store i64 %i.au, ptr %i.av, align 8, !tbaa !36
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1 ; 2 uses
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next.lcssa80.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.aw = add nsw i64 %wide.trip.count, -1
  %i.ax = icmp eq i64 %indvars.iv.ph, %i.aw
  br i1 %i.ax, label %._crit_edge.loopexit, label %scalar.ph

bb.f:                                             ; preds = %bb.e
  %i.ay = sub nuw i16 %i.e, %i.o                  ; 3 uses
  store i16 %i.ay, ptr %2, align 8, !tbaa !40
  %i.az = icmp eq ptr %2, %0
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br i1 %i.az, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bb = zext nneg i32 %i.c to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = zext i16 %i.ay to i64
  %i.be = shl nuw nsw i64 %i.bd, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ba, ptr nonnull align 8 %i.bc, i64 %i.be, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = zext nneg i32 %i.c to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = zext i16 %i.ay to i64
  %i.bj = shl nuw nsw i64 %i.bi, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ba, ptr nonnull align 8 %i.bh, i64 %i.bj, i1 false)
  br label %bb.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.bk = load i64, ptr %gep, align 8, !tbaa !36
  %i.bl = lshr i64 %i.bk, %i.s
  %i.bm = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !36
  %i.bo = shl i64 %i.bn, %i.u
  %i.bp = or i64 %i.bo, %i.bl
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next ; 2 uses
  %i.br = load i64, ptr %gep.1, align 8, !tbaa !36
  %i.bs = lshr i64 %i.br, %i.s
  %i.bt = getelementptr inbounds nuw i8, ptr %gep.1, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !36
  %i.bv = shl i64 %i.bu, %i.u
  %i.bw = or i64 %i.bv, %i.bs
end_hunk_1
begin_hunk_2_@_sp_div:bb.a
  %lcmp.mod504.not = icmp eq i64 %xtraiter503, 0
  br i1 %lcmp.mod504.not, label %.lr.ph74.i.prol.loopexit, label %.lr.ph74.i.prol

.lr.ph74.i.prol:                                  ; preds = %.lr.ph74.i.preheader
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.2.lcssa.ph.in.i
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !36
  %i.bz = zext i64 %i.by to i128
  %i.ca = add nsw i128 %.049.lcssa.ph.i, %i.bz    ; 2 uses
  %i.cb = trunc i128 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.2.lcssa.ph.in.i
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !36
  %i.cd = ashr i128 %i.ca, 64
  %indvars.iv.next91.i.prol = add nuw nsw i64 %.2.lcssa.ph.in.i, 1
  br label %.lr.ph74.i.prol.loopexit

.lr.ph74.i.prol.loopexit:                         ; preds = %.lr.ph74.i.prol, %.lr.ph74.i.preheader
  %indvars.iv90.i.unr = phi i64 [ %.2.lcssa.ph.in.i, %.lr.ph74.i.preheader ], [ %indvars.iv.next91.i.prol, %.lr.ph74.i.prol ]
  %.173.i.unr = phi i128 [ %.049.lcssa.ph.i, %.lr.ph74.i.preheader ], [ %i.cd, %.lr.ph74.i.prol ]
  %i.ce = add nsw i64 %zext, -1
  %i.cf = icmp eq i64 %.2.lcssa.ph.in.i, %i.ce
  br i1 %i.cf, label %.preheader.i168, label %.lr.ph74.i

.lr.ph74.i:                                       ; preds = %.lr.ph74.i.prol.loopexit, %.lr.ph74.i
  %indvars.iv90.i = phi i64 [ %indvars.iv.next91.i.1, %.lr.ph74.i ], [ %indvars.iv90.i.unr, %.lr.ph74.i.prol.loopexit ] ; 4 uses
  %.173.i = phi i128 [ %i.ct, %.lr.ph74.i ], [ %.173.i.unr, %.lr.ph74.i.prol.loopexit ]
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv90.i
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !36
  %i.ci = zext i64 %i.ch to i128
  %i.cj = add nsw i128 %.173.i, %i.ci             ; 2 uses
  %i.ck = trunc i128 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv90.i
  store i64 %i.ck, ptr %i.cl, align 8, !tbaa !36
  %i.cm = ashr i128 %i.cj, 64
  %indvars.iv.next91.i = add nuw nsw i64 %indvars.iv90.i, 1 ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next91.i
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !36
  %i.cp = zext i64 %i.co to i128
  %i.cq = add nsw i128 %i.cm, %i.cp               ; 2 uses
  %i.cr = trunc i128 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv.next91.i
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !36
  %i.ct = ashr i128 %i.cq, 64
  %indvars.iv.next91.i.1 = add nuw nsw i64 %indvars.iv90.i, 2 ; 2 uses
  %exitcond94.not.i.1 = icmp eq i64 %indvars.iv.next91.i.1, %zext
  br i1 %exitcond94.not.i.1, label %.preheader.i168, label %.lr.ph74.i, !llvm.loop !18

.preheader.i168:                                  ; preds = %.lr.ph74.i.prol.loopexit, %.lr.ph74.i, %.critedge2.i
  %.pre-phi = phi i64 [ %.2.lcssa.ph.in.i, %.critedge2.i ], [ %zext, %.lr.ph74.i ], [ %zext, %.lr.ph74.i.prol.loopexit ] ; 2 uses
  %i.cu = icmp sgt i64 %.pre-phi, 0
  br i1 %i.cu, label %.lr.ph419, label %_sp_sub_off.exit.sink.split

bb.v:                                             ; preds = %.lr.ph419
  %indvars.iv.next96.i = add nsw i64 %indvars.iv95.i418, -1
  %i.cv = icmp sgt i64 %indvars.iv95.i418, 1
  br i1 %i.cv, label %.lr.ph419, label %_sp_sub_off.exit.sink.split, !llvm.loop !19

.lr.ph419:                                        ; preds = %.preheader.i168, %bb.v
  %indvars.iv95.i418 = phi i64 [ %indvars.iv.next96.i, %bb.v ], [ %.pre-phi, %.preheader.i168 ] ; 4 uses
  %i.cw = getelementptr [8 x i8], ptr %3, i64 %indvars.iv95.i418
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !36
  %.not56.i = icmp eq i64 %i.cx, 0
  br i1 %.not56.i, label %bb.v, label %.split.loop.exit.i, !llvm.loop !19

.split.loop.exit.i:                               ; preds = %.lr.ph419
  %i.cy = trunc i64 %indvars.iv95.i418 to i16
  br label %_sp_sub_off.exit.sink.split

_sp_sub_off.exit.sink.split:                      ; preds = %bb.v, %.preheader.i168, %.split.loop.exit.i, %.critedge.i167
  %.0.in.lcssa.i.sink = phi i16 [ 0, %.critedge.i167 ], [ %i.cy, %.split.loop.exit.i ], [ 0, %.preheader.i168 ], [ 0, %bb.v ]
  store i16 %.0.in.lcssa.i.sink, ptr %3, align 8, !tbaa !40
  br label %_sp_sub_off.exit

_sp_sub_off.exit:                                 ; preds = %_sp_sub_off.exit.sink.split, %bb.s
  %.not134 = icmp eq ptr %2, null
  br i1 %.not134, label %sp_lshb.exit.thread253, label %bb.w

bb.w:                                             ; preds = %_sp_sub_off.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 1, ptr %i.cz, align 8, !tbaa !36
  br label %sp_lshb.exit.thread253.sink.split

bb.x:                                             ; preds = %sp_count_bits.exit165
  %i.da = icmp samesign ult i32 %4, 130
  br i1 %i.da, label %bb.y, label %sp_lshb.exit.thread253

bb.y:                                             ; preds = %bb.x
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.b ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.b ; 27 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.b ; 11 uses
  store volatile i16 0, ptr %i.dc, align 8, !tbaa !34
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 17 uses
  store volatile i64 0, ptr %i.de, align 8, !tbaa !36
  %i.df = trunc nuw nsw i32 %4 to i16             ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 2
  store volatile i16 %i.df, ptr %i.dg, align 2, !tbaa !37
  %i.dh = add i16 %i.e, 2
  %i.di = sub i16 %i.dh, %i.f
  store volatile i16 0, ptr %i.dd, align 8, !tbaa !34
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store volatile i64 0, ptr %i.dj, align 8, !tbaa !36
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 2
  store volatile i16 %i.di, ptr %i.dk, align 2, !tbaa !37
  %i.dl = add i16 %i.f, 1                         ; 2 uses
  store volatile i16 0, ptr %i.d, align 16, !tbaa !34
  %i.dm = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 16 uses
  store volatile i64 0, ptr %i.dm, align 8, !tbaa !36
  %i.dn = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 2 uses
  store volatile i16 %i.dl, ptr %i.dn, align 2, !tbaa !37
  store volatile i16 0, ptr %i.db, align 8, !tbaa !34
  %i.do = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store volatile i64 0, ptr %i.do, align 8, !tbaa !36
  %i.dp = getelementptr inbounds nuw i8, ptr %i.db, i64 2
  store volatile i16 %i.df, ptr %i.dp, align 2, !tbaa !37
  br i1 %.not25.i153, label %sp_count_bits.exit183, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dq = zext i16 %i.f to i64
  br label %bb.ab

bb.aa:                                            ; preds = %bb.ab
  %i.dr = icmp sgt i64 %indvars.iv.i172415, 1
  br i1 %i.dr, label %bb.ab, label %sp_count_bits.exit183, !llvm.loop !2

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %indvars.iv.i172415 = phi i64 [ %i.dq, %bb.z ], [ %indvars.iv.next.i174, %bb.aa ] ; 3 uses
  %indvars.iv.next.i174 = add nsw i64 %indvars.iv.i172415, -1 ; 2 uses
  %i.ds = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.i172415
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !36 ; 5 uses
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %bb.aa, label %.critedge.i175, !llvm.loop !2

.critedge.i175:                                   ; preds = %bb.ab
  %i.dv = trunc nuw nsw i64 %indvars.iv.next.i174 to i32
  %i.dw = shl nuw nsw i32 %i.dv, 6                ; 2 uses
  %i.dx = icmp ugt i64 %i.dt, 4294967295
  br i1 %i.dx, label %bb.ac, label %.lr.ph.preheader.i178

.lr.ph.preheader.i178:                            ; preds = %.critedge.i175
  %i.dy = tail call range(i64 32, 65) i64 @llvm.ctlz.i64(i64 %i.dt, i1 true)
  %i.dz = trunc nuw nsw i64 %i.dy to i32
  %reass.sub.i179 = add nuw nsw i32 %i.dw, 64
  %i.ea = sub nuw nsw i32 %reass.sub.i179, %i.dz
  br label %sp_count_bits.exit183

bb.ac:                                            ; preds = %.critedge.i175
  %i.eb = add nuw nsw i32 %i.dw, 64               ; 2 uses
  %i.ec = icmp sgt i64 %i.dt, -1
  br i1 %i.ec, label %.lr.ph36.i180, label %sp_count_bits.exit183

.lr.ph36.i180:                                    ; preds = %bb.ac, %.lr.ph36.i180
  %.035.i181 = phi i64 [ %i.ee, %.lr.ph36.i180 ], [ %i.dt, %bb.ac ]
  %.234.i182 = phi i32 [ %i.ed, %.lr.ph36.i180 ], [ %i.eb, %bb.ac ]
  %i.ed = add nsw i32 %.234.i182, -1              ; 2 uses
  %i.ee = shl nuw i64 %.035.i181, 1               ; 2 uses
  %i.ef = icmp sgt i64 %i.ee, -1
  br i1 %i.ef, label %.lr.ph36.i180, label %sp_count_bits.exit183, !llvm.loop !3

sp_count_bits.exit183:                            ; preds = %bb.aa, %.lr.ph36.i180, %bb.y, %.lr.ph.preheader.i178, %bb.ac
  %.5.i173 = phi i32 [ %i.eb, %bb.ac ], [ %i.ed, %.lr.ph36.i180 ], [ %i.ea, %.lr.ph.preheader.i178 ], [ 0, %bb.y ], [ 0, %bb.aa ]
  %i.eg = and i32 %.5.i173, 63                    ; 3 uses
  %i.eh = sub nuw nsw i32 64, %i.eg               ; 5 uses
  %i.ei = icmp eq i16 %i.e, 0
  br i1 %i.ei, label %_sp_copy.exit185.thread, label %_sp_copy.exit185

_sp_copy.exit185:                                 ; preds = %sp_count_bits.exit183
  %i.ej = zext i16 %i.e to i64                    ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.el = shl nuw nsw i64 %i.ej, 3                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.de, ptr nonnull readonly align 8 %i.ek, i64 %i.el, i1 false)
  store i16 %i.e, ptr %i.dc, align 8, !tbaa !40
  %.not140 = icmp eq i32 %i.eg, 0
  br i1 %.not140, label %thread-pre-split, label %bb.ad

_sp_copy.exit185.thread:                          ; preds = %sp_count_bits.exit183
  store i64 0, ptr %i.de, align 8, !tbaa !36
  store i16 0, ptr %i.dc, align 8, !tbaa !40
  %.not140247 = icmp eq i32 %i.eg, 0
  br i1 %.not140247, label %thread-pre-split, label %.thread248

bb.ad:                                            ; preds = %_sp_copy.exit185
  %i.em = zext i16 %i.e to i32                    ; 4 uses
  %i.en = trunc nuw nsw i32 %i.eh to i16
  %i.eo = lshr i16 %i.en, 6                       ; 5 uses
  %i.ep = and i32 %i.eh, 63                       ; 3 uses
  %.not54.i = icmp eq i32 %i.ep, 0
  %i.eq = zext nneg i16 %i.eo to i32              ; 7 uses
  %i.er = add nuw nsw i32 %i.em, %i.eq            ; 2 uses
  br i1 %.not54.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not55.i187 = icmp samesign ult i32 %i.er, %4
  br i1 %.not55.i187, label %.thread73.i, label %sp_lshb.exit.thread253

.thread73.i:                                      ; preds = %bb.ae
  %i.es = add nsw i32 %i.em, -1                   ; 2 uses
  %i.et = zext nneg i32 %i.es to i64              ; 10 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.et
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !36
  %i.ew = sub nuw nsw i32 64, %i.ep
  %i.ex = zext nneg i32 %i.ew to i64              ; 5 uses
  %5 = lshr i64 %i.ev, %i.ex                      ; 2 uses
  %.not5883.i = icmp eq i32 %i.es, 0
  %.pre.i189 = zext nneg i32 %i.ep to i64         ; 5 uses
  br i1 %.not5883.i, label %._crit_edge.i191, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.thread73.i
  %min.iters.check = icmp ult i16 %i.e, 23
  br i1 %min.iters.check, label %.lr.ph.i.preheader476, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.preheader
  %i.ey = add nsw i64 %i.et, -1                   ; 2 uses
  %i.ez = add nuw nsw i32 %i.eq, %i.em
  %i.fa = add nsw i32 %i.ez, -1
  %i.fb = trunc nsw i64 %i.ey to i32
  %i.fc = icmp ult i32 %i.fa, %i.fb
  %i.fd = icmp ugt i64 %i.ey, 4294967295
  %i.fe = or i1 %i.fc, %i.fd
  br i1 %i.fe, label %.lr.ph.i.preheader476, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ff = shl nuw nsw i64 %i.et, 3                ; 2 uses
  %i.fg = add nuw nsw i32 %i.eq, %i.em
  %i.fh = add nsw i32 %i.fg, -1
  %i.fi = zext i32 %i.fh to i64
  %i.fj = shl nuw nsw i64 %i.fi, 3                ; 2 uses
  %i.fk = sub nsw i64 %i.fj, %i.ff
  %diff.check = icmp ugt i64 %i.fk, -32
  %i.fl = sub nsw i64 %i.ff, %i.fj
  %i.fm = add nsw i64 %i.fl, -9
  %diff.check420 = icmp ult i64 %i.fm, 31
  %conflict.rdx = or i1 %diff.check, %diff.check420
  br i1 %conflict.rdx, label %.lr.ph.i.preheader476, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.et, 2147483644              ; 2 uses
  %6 = and i64 %i.et, 3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.pre.i189, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert421 = insertelement <2 x i64> poison, i64 %i.ex, i64 0
  %broadcast.splat422 = shufflevector <2 x i64> %broadcast.splatinsert421, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fn = sub i64 %i.et, %index                   ; 3 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.fn ; 2 uses
  %i.fp = getelementptr inbounds i8, ptr %i.fo, i64 -8
  %i.fq = getelementptr inbounds i8, ptr %i.fo, i64 -24
  %wide.load = load <2 x i64>, ptr %i.fp, align 8, !tbaa !36
  %wide.load423 = load <2 x i64>, ptr %i.fq, align 8, !tbaa !36
  %i.fr = shl <2 x i64> %wide.load, %broadcast.splat
  %i.fs = shl <2 x i64> %wide.load423, %broadcast.splat
  %i.ft = getelementptr [8 x i8], ptr %i.dc, i64 %i.fn ; 2 uses
  %i.fu = getelementptr i8, ptr %i.ft, i64 -8
  %i.fv = getelementptr i8, ptr %i.ft, i64 -24
  %wide.load424 = load <2 x i64>, ptr %i.fu, align 8, !tbaa !36
  %wide.load425 = load <2 x i64>, ptr %i.fv, align 8, !tbaa !36
  %i.fw = lshr <2 x i64> %wide.load424, %broadcast.splat422
  %i.fx = lshr <2 x i64> %wide.load425, %broadcast.splat422
  %i.fy = or <2 x i64> %i.fw, %i.fr
  %i.fz = or <2 x i64> %i.fx, %i.fs
  %i.ga = trunc nuw i64 %i.fn to i32
  %i.gb = add i32 %i.ga, %i.eq
  %i.gc = zext i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.gc ; 2 uses
  %i.ge = getelementptr inbounds i8, ptr %i.gd, i64 -8
  %i.gf = getelementptr inbounds i8, ptr %i.gd, i64 -24
  store <2 x i64> %i.fy, ptr %i.ge, align 8, !tbaa !36
  store <2 x i64> %i.fz, ptr %i.gf, align 8, !tbaa !36
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gg = icmp eq i64 %index.next, %n.vec
  br i1 %i.gg, label %middle.block, label %vector.body, !llvm.loop !108

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.et
  br i1 %cmp.n, label %._crit_edge.i191, label %.lr.ph.i.preheader476

.lr.ph.i.preheader476:                            ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i190.ph = phi i64 [ %i.et, %vector.memcheck ], [ %i.et, %vector.scevcheck ], [ %i.et, %.lr.ph.i.preheader ], [ %6, %middle.block ] ; 7 uses
  %xtraiter = and i64 %indvars.iv.i190.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader476
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv.i190.ph
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !36
  %i.gj = shl i64 %i.gi, %.pre.i189
  %i.gk = add nsw i64 %indvars.iv.i190.ph, -1
  %i.gl = getelementptr [8 x i8], ptr %i.dc, i64 %indvars.iv.i190.ph
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !36
  %i.gn = lshr i64 %i.gm, %i.ex
  %i.go = or i64 %i.gn, %i.gj
  %i.gp = trunc nuw nsw i64 %indvars.iv.i190.ph to i32
  %i.gq = add nuw i32 %i.gp, %i.eq
  %i.gr = zext i32 %i.gq to i64
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.gr
  store i64 %i.go, ptr %i.gs, align 8, !tbaa !36
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader476
  %indvars.iv.i190.unr = phi i64 [ %indvars.iv.i190.ph, %.lr.ph.i.preheader476 ], [ %i.gk, %.lr.ph.i.prol ]
  %i.gt = icmp eq i64 %indvars.iv.i190.ph, 1
  br i1 %i.gt, label %._crit_edge.i191, label %.lr.ph.i

bb.af:                                            ; preds = %bb.ad
  %.not82.i = icmp samesign ugt i32 %i.er, %4
  br i1 %.not82.i, label %sp_lshb.exit.thread253, label %bb.ah

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i190 = phi i64 [ %i.hj, %.lr.ph.i ], [ %indvars.iv.i190.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv.i190
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !36
  %i.gw = shl i64 %i.gv, %.pre.i189
  %i.gx = add nsw i64 %indvars.iv.i190, -1        ; 2 uses
  %i.gy = getelementptr [8 x i8], ptr %i.dc, i64 %indvars.iv.i190
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !36
  %i.ha = lshr i64 %i.gz, %i.ex
  %i.hb = or i64 %i.ha, %i.gw
  %i.hc = trunc nuw i64 %indvars.iv.i190 to i32
  %i.hd = add i32 %i.hc, %i.eq
  %i.he = zext i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.he
  store i64 %i.hb, ptr %i.hf, align 8, !tbaa !36
  %i.hg = getelementptr [8 x i8], ptr %i.dc, i64 %indvars.iv.i190
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !36
  %i.hi = shl i64 %i.hh, %.pre.i189
  %i.hj = add nsw i64 %indvars.iv.i190, -2        ; 2 uses
  %i.hk = getelementptr [8 x i8], ptr %i.dc, i64 %i.gx
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !36
  %i.hm = lshr i64 %i.hl, %i.ex
  %i.hn = or i64 %i.hm, %i.hi
  %i.ho = trunc nuw i64 %i.gx to i32
  %i.hp = add i32 %i.ho, %i.eq
  %i.hq = zext i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.hq
  store i64 %i.hn, ptr %i.hr, align 8, !tbaa !36
  %.not58.wide.i.1 = icmp eq i64 %i.hj, 0
  br i1 %.not58.wide.i.1, label %._crit_edge.i191, label %.lr.ph.i, !llvm.loop !109

._crit_edge.i191:                                 ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %.thread73.i
  %i.hs = load i64, ptr %i.de, align 8, !tbaa !36
  %i.ht = shl i64 %i.hs, %.pre.i189
  %i.hu = zext nneg i16 %i.eo to i64              ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.hu
  store i64 %i.ht, ptr %i.hv, align 8, !tbaa !36
  %.not59.i = icmp eq i64 %5, 0
  br i1 %.not59.i, label %.thread70.i, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge.i191
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.ej
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %i.hu
  store i64 %5, ptr %i.hx, align 8, !tbaa !36
  %i.hy = add i16 %i.e, 1
  br label %.thread70.i

bb.ah:                                            ; preds = %bb.af
  %i.hz = zext nneg i16 %i.eo to i64
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.hz
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ia, ptr nonnull align 8 %i.de, i64 %i.el, i1 false)
  br label %.thread70.i

.thread70.i:                                      ; preds = %bb.ah, %bb.ag, %._crit_edge.i191
  %i.ib = phi i16 [ %i.e, %._crit_edge.i191 ], [ %i.hy, %bb.ag ], [ %i.e, %bb.ah ]
  %i.ic = add i16 %i.ib, %i.eo
  store i16 %i.ic, ptr %i.dc, align 8, !tbaa !40
  %i.id = shl nuw nsw i16 %i.eo, 3
  %i.ie = zext nneg i16 %i.id to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.de, i8 0, i64 %i.ie, i1 false)
  br label %.thread248

.thread248:                                       ; preds = %_sp_copy.exit185.thread, %.thread70.i
  br i1 %.not25.i153, label %sp_lshb.exit.thread253, label %bb.ai

bb.ai:                                            ; preds = %.thread248
  %i.if = zext i16 %i.f to i64                    ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ih = shl nuw nsw i64 %i.if, 3                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dm, ptr nonnull readonly align 8 %i.ig, i64 %i.ih, i1 false)
  %i.ii = zext i16 %i.f to i32                    ; 4 uses
  %i.ij = trunc nuw nsw i32 %i.eh to i16
  %i.ik = lshr i16 %i.ij, 6                       ; 5 uses
  %i.il = and i32 %i.eh, 63                       ; 3 uses
  %.not54.i196 = icmp eq i32 %i.il, 0
  %i.im = zext nneg i16 %i.ik to i32              ; 7 uses
  %i.in = add nuw nsw i32 %i.ii, %i.im            ; 2 uses
  %i.io = load i16, ptr %i.dn, align 2, !tbaa !39
  %i.ip = zext i16 %i.io to i32                   ; 2 uses
  br i1 %.not54.i196, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.not55.i197 = icmp samesign ult i32 %i.in, %i.ip
  br i1 %.not55.i197, label %.thread73.i199, label %sp_lshb.exit.thread253

.thread73.i199:                                   ; preds = %bb.aj
  %i.iq = add nsw i32 %i.ii, -1                   ; 2 uses
  %i.ir = zext nneg i32 %i.iq to i64              ; 10 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.ir
  %i.it = load i64, ptr %i.is, align 8, !tbaa !36
  %i.iu = sub nuw nsw i32 64, %i.il
  %i.iv = zext nneg i32 %i.iu to i64              ; 5 uses
  %7 = lshr i64 %i.it, %i.iv                      ; 2 uses
  %.not5883.i200 = icmp eq i32 %i.iq, 0
  %.pre.i201 = zext nneg i32 %i.il to i64         ; 5 uses
  br i1 %.not5883.i200, label %._crit_edge.i205, label %.lr.ph.i202.preheader

.lr.ph.i202.preheader:                            ; preds = %.thread73.i199
  %min.iters.check432 = icmp ult i16 %i.f, 23
  br i1 %min.iters.check432, label %.lr.ph.i202.preheader475, label %vector.scevcheck426

vector.scevcheck426:                              ; preds = %.lr.ph.i202.preheader
  %i.iw = add nsw i64 %i.ir, -1                   ; 2 uses
  %i.ix = add nuw nsw i32 %i.im, %i.ii
  %i.iy = add nsw i32 %i.ix, -1
  %i.iz = trunc nsw i64 %i.iw to i32
  %i.ja = icmp ult i32 %i.iy, %i.iz
  %i.jb = icmp ugt i64 %i.iw, 4294967295
  %i.jc = or i1 %i.ja, %i.jb
  br i1 %i.jc, label %.lr.ph.i202.preheader475, label %vector.memcheck427

vector.memcheck427:                               ; preds = %vector.scevcheck426
  %i.jd = shl nuw nsw i64 %i.ir, 3                ; 2 uses
  %i.je = add nuw nsw i32 %i.im, %i.ii
  %i.jf = add nsw i32 %i.je, -1
  %i.jg = zext i32 %i.jf to i64
  %i.jh = shl nuw nsw i64 %i.jg, 3                ; 2 uses
  %i.ji = sub nsw i64 %i.jh, %i.jd
  %diff.check428 = icmp ugt i64 %i.ji, -32
  %i.jj = sub nsw i64 %i.jd, %i.jh
  %i.jk = add nsw i64 %i.jj, -9
  %diff.check429 = icmp ult i64 %i.jk, 31
  %conflict.rdx430 = or i1 %diff.check428, %diff.check429
  br i1 %conflict.rdx430, label %.lr.ph.i202.preheader475, label %vector.ph433

vector.ph433:                                     ; preds = %vector.memcheck427
  %n.vec434 = and i64 %i.ir, 2147483644           ; 2 uses
  %8 = and i64 %i.ir, 3
  %broadcast.splatinsert435 = insertelement <2 x i64> poison, i64 %.pre.i201, i64 0
  %broadcast.splat436 = shufflevector <2 x i64> %broadcast.splatinsert435, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert437 = insertelement <2 x i64> poison, i64 %i.iv, i64 0
  %broadcast.splat438 = shufflevector <2 x i64> %broadcast.splatinsert437, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body439

vector.body439:                                   ; preds = %vector.body439, %vector.ph433
  %index440 = phi i64 [ 0, %vector.ph433 ], [ %index.next445, %vector.body439 ] ; 2 uses
  %i.jl = sub i64 %i.ir, %index440                ; 3 uses
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.jl ; 2 uses
  %i.jn = getelementptr inbounds i8, ptr %i.jm, i64 -8
  %i.jo = getelementptr inbounds i8, ptr %i.jm, i64 -24
  %wide.load441 = load <2 x i64>, ptr %i.jn, align 8, !tbaa !36
  %wide.load442 = load <2 x i64>, ptr %i.jo, align 8, !tbaa !36
  %i.jp = shl <2 x i64> %wide.load441, %broadcast.splat436
  %i.jq = shl <2 x i64> %wide.load442, %broadcast.splat436
  %i.jr = getelementptr [8 x i8], ptr %i.d, i64 %i.jl ; 2 uses
  %i.js = getelementptr i8, ptr %i.jr, i64 -8
  %i.jt = getelementptr i8, ptr %i.jr, i64 -24
  %wide.load443 = load <2 x i64>, ptr %i.js, align 8, !tbaa !36
  %wide.load444 = load <2 x i64>, ptr %i.jt, align 8, !tbaa !36
  %i.ju = lshr <2 x i64> %wide.load443, %broadcast.splat438
  %i.jv = lshr <2 x i64> %wide.load444, %broadcast.splat438
  %i.jw = or <2 x i64> %i.ju, %i.jp
  %i.jx = or <2 x i64> %i.jv, %i.jq
  %i.jy = trunc nuw i64 %i.jl to i32
  %i.jz = add i32 %i.jy, %i.im
  %i.ka = zext i32 %i.jz to i64
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.ka ; 2 uses
  %i.kc = getelementptr inbounds i8, ptr %i.kb, i64 -8
  %i.kd = getelementptr inbounds i8, ptr %i.kb, i64 -24
  store <2 x i64> %i.jw, ptr %i.kc, align 8, !tbaa !36
  store <2 x i64> %i.jx, ptr %i.kd, align 8, !tbaa !36
  %index.next445 = add nuw i64 %index440, 4       ; 2 uses
  %i.ke = icmp eq i64 %index.next445, %n.vec434
  br i1 %i.ke, label %middle.block446, label %vector.body439, !llvm.loop !110

middle.block446:                                  ; preds = %vector.body439
  %cmp.n447 = icmp eq i64 %n.vec434, %i.ir
  br i1 %cmp.n447, label %._crit_edge.i205, label %.lr.ph.i202.preheader475

.lr.ph.i202.preheader475:                         ; preds = %vector.memcheck427, %vector.scevcheck426, %.lr.ph.i202.preheader, %middle.block446
  %indvars.iv.i203.ph = phi i64 [ %i.ir, %vector.memcheck427 ], [ %i.ir, %vector.scevcheck426 ], [ %i.ir, %.lr.ph.i202.preheader ], [ %8, %middle.block446 ] ; 7 uses
  %xtraiter492 = and i64 %indvars.iv.i203.ph, 1
  %lcmp.mod493.not = icmp eq i64 %xtraiter492, 0
  br i1 %lcmp.mod493.not, label %.lr.ph.i202.prol.loopexit, label %.lr.ph.i202.prol

.lr.ph.i202.prol:                                 ; preds = %.lr.ph.i202.preheader475
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv.i203.ph
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !36
  %i.kh = shl i64 %i.kg, %.pre.i201
  %i.ki = add nsw i64 %indvars.iv.i203.ph, -1
  %i.kj = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv.i203.ph
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !36
  %i.kl = lshr i64 %i.kk, %i.iv
  %i.km = or i64 %i.kl, %i.kh
  %i.kn = trunc nuw nsw i64 %indvars.iv.i203.ph to i32
  %i.ko = add nuw i32 %i.kn, %i.im
  %i.kp = zext i32 %i.ko to i64
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.kp
  store i64 %i.km, ptr %i.kq, align 8, !tbaa !36
  br label %.lr.ph.i202.prol.loopexit

.lr.ph.i202.prol.loopexit:                        ; preds = %.lr.ph.i202.prol, %.lr.ph.i202.preheader475
  %indvars.iv.i203.unr = phi i64 [ %indvars.iv.i203.ph, %.lr.ph.i202.preheader475 ], [ %i.ki, %.lr.ph.i202.prol ]
  %i.kr = icmp eq i64 %indvars.iv.i203.ph, 1
  br i1 %i.kr, label %._crit_edge.i205, label %.lr.ph.i202

bb.ak:                                            ; preds = %bb.ai
  %.not82.i209 = icmp samesign ugt i32 %i.in, %i.ip
  br i1 %.not82.i209, label %sp_lshb.exit.thread253, label %bb.am

.lr.ph.i202:                                      ; preds = %.lr.ph.i202.prol.loopexit, %.lr.ph.i202
  %indvars.iv.i203 = phi i64 [ %i.lh, %.lr.ph.i202 ], [ %indvars.iv.i203.unr, %.lr.ph.i202.prol.loopexit ] ; 6 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv.i203
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !36
  %i.ku = shl i64 %i.kt, %.pre.i201
  %i.kv = add nsw i64 %indvars.iv.i203, -1        ; 2 uses
  %i.kw = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv.i203
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !36
  %i.ky = lshr i64 %i.kx, %i.iv
  %i.kz = or i64 %i.ky, %i.ku
  %i.la = trunc nuw i64 %indvars.iv.i203 to i32
  %i.lb = add i32 %i.la, %i.im
  %i.lc = zext i32 %i.lb to i64
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.lc
  store i64 %i.kz, ptr %i.ld, align 8, !tbaa !36
  %i.le = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv.i203
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !36
  %i.lg = shl i64 %i.lf, %.pre.i201
  %i.lh = add nsw i64 %indvars.iv.i203, -2        ; 2 uses
  %i.li = getelementptr [8 x i8], ptr %i.d, i64 %i.kv
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !36
  %i.lk = lshr i64 %i.lj, %i.iv
  %i.ll = or i64 %i.lk, %i.lg
  %i.lm = trunc nuw i64 %i.kv to i32
  %i.ln = add i32 %i.lm, %i.im
  %i.lo = zext i32 %i.ln to i64
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.lo
  store i64 %i.ll, ptr %i.lp, align 8, !tbaa !36
  %.not58.wide.i204.1 = icmp eq i64 %i.lh, 0
  br i1 %.not58.wide.i204.1, label %._crit_edge.i205, label %.lr.ph.i202, !llvm.loop !111

._crit_edge.i205:                                 ; preds = %.lr.ph.i202.prol.loopexit, %.lr.ph.i202, %middle.block446, %.thread73.i199
  %i.lq = load i64, ptr %i.dm, align 8, !tbaa !36
  %i.lr = shl i64 %i.lq, %.pre.i201
  %i.ls = zext nneg i16 %i.ik to i64              ; 2 uses
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.ls
  store i64 %i.lr, ptr %i.lt, align 8, !tbaa !36
  %.not59.i206 = icmp eq i64 %7, 0
  br i1 %.not59.i206, label %.thread70.i207, label %bb.al

bb.al:                                            ; preds = %._crit_edge.i205
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.if
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.lu, i64 %i.ls
  store i64 %7, ptr %i.lv, align 8, !tbaa !36
  br label %.thread70.i207

bb.am:                                            ; preds = %bb.ak
  %i.lw = zext nneg i16 %i.ik to i64
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.lw
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lx, ptr nonnull align 8 %i.dm, i64 %i.ih, i1 false)
  br label %.thread70.i207

.thread70.i207:                                   ; preds = %bb.am, %bb.al, %._crit_edge.i205
  %i.ly = phi i16 [ %i.f, %._crit_edge.i205 ], [ %i.dl, %bb.al ], [ %i.f, %bb.am ]
  %i.lz = add i16 %i.ly, %i.ik                    ; 2 uses
  store i16 %i.lz, ptr %i.d, align 16, !tbaa !40
  %i.ma = shl nuw nsw i16 %i.ik, 3
  %i.mb = zext nneg i16 %i.ma to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dm, i8 0, i64 %i.mb, i1 false)
  br label %bb.an

thread-pre-split:                                 ; preds = %_sp_copy.exit185, %_sp_copy.exit185.thread
  %.pr = load i16, ptr %1, align 8, !tbaa !40
  br label %bb.an

bb.an:                                            ; preds = %thread-pre-split, %.thread70.i207
  %i.mc = phi i16 [ %.pr, %thread-pre-split ], [ %i.lz, %.thread70.i207 ] ; 2 uses
  %.0117.ph = phi i32 [ 64, %thread-pre-split ], [ %i.eh, %.thread70.i207 ] ; 4 uses
  %.0112.ph = phi ptr [ %1, %thread-pre-split ], [ %i.d, %.thread70.i207 ] ; 7 uses
  %.not141 = icmp eq i16 %i.mc, 0
  br i1 %.not141, label %sp_lshb.exit.thread253, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.md = load i16, ptr %i.dc, align 8, !tbaa !40
  %i.me = sub i16 %i.md, %i.mc
  %i.mf = add i16 %i.me, 1                        ; 3 uses
  store i16 %i.mf, ptr %i.dd, align 8, !tbaa !40
  %.not131.i = icmp eq i16 %i.mf, 0
  br i1 %.not131.i, label %._crit_edge.i212, label %.lr.ph.i211

.lr.ph.i211:                                      ; preds = %bb.ao
  %i.mg = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.mh = zext i16 %i.mf to i64
  %i.mi = shl nuw nsw i64 %i.mh, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.mg, i8 0, i64 %i.mi, i1 false), !tbaa !36
  br label %._crit_edge.i212

._crit_edge.i212:                                 ; preds = %.lr.ph.i211, %bb.ao
  %i.mj = getelementptr inbounds nuw i8, ptr %.0112.ph, i64 8 ; 3 uses
  %i.mk = load i16, ptr %.0112.ph, align 8, !tbaa !40
  %i.ml = zext i16 %i.mk to i64
  %i.mm = getelementptr [8 x i8], ptr %.0112.ph, i64 %i.ml
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !36 ; 2 uses
  call fastcc void @_sp_div_same_size(ptr noundef nonnull %i.dc, ptr noundef nonnull readonly %.0112.ph, ptr noundef nonnull %i.dd)
  %i.mo = load i16, ptr %i.dc, align 8, !tbaa !40 ; 2 uses
  %i.mp = load i16, ptr %.0112.ph, align 8, !tbaa !40 ; 9 uses
  %.191124.i = add i16 %i.mo, -1                  ; 2 uses
  %.not125.i = icmp ult i16 %.191124.i, %i.mp
  br i1 %.not125.i, label %._crit_edge129.i, label %.lr.ph128.i

.lr.ph128.i:                                      ; preds = %._crit_edge.i212
  %i.mq = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 6 uses
  %i.mr = zext i64 %i.mn to i128
  %.not132.i = icmp eq i16 %i.mp, 0
  %i.ms = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 10 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.mu = add i16 %i.mp, 1                        ; 2 uses
  %umax.i = tail call i16 @llvm.umax.i16(i16 %i.mu, i16 1) ; 2 uses
  %wide.trip.count.i = zext i16 %i.mp to i64      ; 3 uses
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %wide.trip.count.i
  %wide.trip.count139.i = zext i16 %umax.i to i64 ; 2 uses
  %xtraiter494 = and i64 %wide.trip.count.i, 1
  %i.mw = icmp eq i16 %i.mp, 1
  %unroll_iter = and i64 %wide.trip.count.i, 65534
  %lcmp.mod495.not = icmp eq i64 %xtraiter494, 0
  %lcmp.mod497 = trunc i16 %i.mp to i1
  %xtraiter498 = and i64 %wide.trip.count139.i, 1
  %i.mx = icmp ult i16 %i.mu, 2
  %unroll_iter501 = and i64 %wide.trip.count139.i, 65534
  %lcmp.mod499.not = icmp eq i64 %xtraiter498, 0
  %lcmp.mod500 = trunc i16 %umax.i to i1
  br label %bb.ap

bb.ap:                                            ; preds = %bb.at, %.lr.ph128.i
  %.191126.i = phi i16 [ %.191124.i, %.lr.ph128.i ], [ %.191.i, %bb.at ] ; 4 uses
  %i.my = zext i16 %.191126.i to i64
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.mq, i64 %i.my ; 2 uses
  %i.na = load i64, ptr %i.mz, align 8, !tbaa !36 ; 2 uses
  %i.nb = icmp eq i64 %i.na, %i.mn
  br i1 %i.nb, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.nc = getelementptr i8, ptr %i.mz, i64 -8
  %i.nd = load i64, ptr %i.nc, align 8, !tbaa !36
  %i.ne = zext i64 %i.na to i128
  %i.nf = shl nuw i128 %i.ne, 64
  %i.ng = zext i64 %i.nd to i128
  %i.nh = or disjoint i128 %i.nf, %i.ng
  %i.ni = udiv i128 %i.nh, %i.mr
  %i.nj = trunc i128 %i.ni to i64
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.085.i = phi i64 [ %i.nj, %bb.aq ], [ -1, %bb.ap ] ; 2 uses
  %i.nk = sub nuw i16 %.191126.i, %i.mp           ; 2 uses
  %i.nl = zext i16 %i.nk to i32                   ; 5 uses
  br i1 %.not132.i, label %.split.us, label %.lr.ph107.i

.split.us:                                        ; preds = %bb.ar
  store i64 0, ptr %i.ms, align 8, !tbaa !36
  br label %.preheader.i216.preheader

.lr.ph107.i:                                      ; preds = %bb.ar, %._crit_edge114.loopexit.i
  %.1.i213 = phi i64 [ %i.pa, %._crit_edge114.loopexit.i ], [ %.085.i, %bb.ar ] ; 3 uses
  %i.nm = zext i64 %.1.i213 to i128               ; 3 uses
  br i1 %i.mw, label %.epil.preheader, label %.lr.ph107.i.new

.lr.ph107.i.new:                                  ; preds = %.lr.ph107.i, %.lr.ph107.i.new
  %indvars.iv.i214 = phi i64 [ %indvars.iv.next.i215.1, %.lr.ph107.i.new ], [ 0, %.lr.ph107.i ] ; 4 uses
  %.0105.i = phi i128 [ %i.oc, %.lr.ph107.i.new ], [ 0, %.lr.ph107.i ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph107.i.new ], [ 0, %.lr.ph107.i ]
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.mj, i64 %indvars.iv.i214
  %i.no = load i64, ptr %i.nn, align 8, !tbaa !36
  %i.np = zext i64 %i.no to i128
  %i.nq = mul nuw i128 %i.np, %i.nm
  %i.nr = add nuw i128 %i.nq, %.0105.i            ; 2 uses
  %i.ns = trunc i128 %i.nr to i64
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %indvars.iv.i214
  store i64 %i.ns, ptr %i.nt, align 8, !tbaa !36
  %i.nu = lshr i128 %i.nr, 64
  %indvars.iv.next.i215 = or disjoint i64 %indvars.iv.i214, 1 ; 2 uses
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.mj, i64 %indvars.iv.next.i215
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !36
  %i.nx = zext i64 %i.nw to i128
  %i.ny = mul nuw i128 %i.nx, %i.nm
  %i.nz = add nuw i128 %i.ny, %i.nu               ; 2 uses
  %i.oa = trunc i128 %i.nz to i64
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %indvars.iv.next.i215
  store i64 %i.oa, ptr %i.ob, align 8, !tbaa !36
  %i.oc = lshr i128 %i.nz, 64                     ; 3 uses
  %indvars.iv.next.i215.1 = add nuw nsw i64 %indvars.iv.i214, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph113.preheader.i.unr-lcssa, label %.lr.ph107.i.new, !llvm.loop !112

.lr.ph113.preheader.i.unr-lcssa:                  ; preds = %.lr.ph107.i.new
  %extract.t = trunc nuw i128 %i.oc to i64
  br i1 %lcmp.mod495.not, label %.lr.ph113.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph113.preheader.i.unr-lcssa, %.lr.ph107.i
  %indvars.iv.i214.epil.init = phi i64 [ 0, %.lr.ph107.i ], [ %indvars.iv.next.i215.1, %.lr.ph113.preheader.i.unr-lcssa ] ; 2 uses
  %.0105.i.epil.init = phi i128 [ 0, %.lr.ph107.i ], [ %i.oc, %.lr.ph113.preheader.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod497)
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.mj, i64 %indvars.iv.i214.epil.init
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !36
  %i.of = zext i64 %i.oe to i128
  %i.og = mul nuw i128 %i.of, %i.nm
  %i.oh = add nuw i128 %i.og, %.0105.i.epil.init  ; 2 uses
  %i.oi = trunc i128 %i.oh to i64
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %indvars.iv.i214.epil.init
  store i64 %i.oi, ptr %i.oj, align 8, !tbaa !36
  %i.ok = lshr i128 %i.oh, 64
  %extract.t505 = trunc nuw i128 %i.ok to i64
  br label %.lr.ph113.preheader.i

.lr.ph113.preheader.i:                            ; preds = %.lr.ph113.preheader.i.unr-lcssa, %.epil.preheader
  %.lcssa.off0 = phi i64 [ %extract.t, %.lr.ph113.preheader.i.unr-lcssa ], [ %extract.t505, %.epil.preheader ]
  store i64 %.lcssa.off0, ptr %i.mv, align 8, !tbaa !36
  br label %.lr.ph113.i

.lr.ph113.i:                                      ; preds = %bb.as, %.lr.ph113.preheader.i
  %.188111.i = phi i16 [ %i.ot, %bb.as ], [ %i.mp, %.lr.ph113.preheader.i ] ; 3 uses
  %i.ol = zext i16 %.188111.i to i32              ; 2 uses
  %i.om = zext i16 %.188111.i to i64
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %i.om
  %i.oo = load i64, ptr %i.on, align 8, !tbaa !36 ; 2 uses
  %i.op = add nuw nsw i32 %i.ol, %i.nl
  %i.oq = zext nneg i32 %i.op to i64
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %i.mq, i64 %i.oq
  %i.os = load i64, ptr %i.or, align 8, !tbaa !36
  %.not99.i = icmp eq i64 %i.oo, %i.os
  br i1 %.not99.i, label %bb.as, label %._crit_edge114.loopexit.i

bb.as:                                            ; preds = %.lr.ph113.i
  %i.ot = add i16 %.188111.i, -1                  ; 2 uses
  %.not98.i = icmp eq i16 %i.ot, 0
  br i1 %.not98.i, label %.._crit_edge114.loopexit.i_crit_edge, label %.lr.ph113.i, !llvm.loop !113

.._crit_edge114.loopexit.i_crit_edge:             ; preds = %bb.as
  %.pre = load i64, ptr %i.ms, align 8, !tbaa !36
  br label %._crit_edge114.loopexit.i, !llvm.loop !113

._crit_edge114.loopexit.i:                        ; preds = %.lr.ph113.i, %.._crit_edge114.loopexit.i_crit_edge
  %i.ou = phi i64 [ %.pre, %.._crit_edge114.loopexit.i_crit_edge ], [ %i.oo, %.lr.ph113.i ]
  %.lcssa.ph.i = phi i32 [ 0, %.._crit_edge114.loopexit.i_crit_edge ], [ %i.ol, %.lr.ph113.i ]
  %i.ov = add nuw nsw i32 %.lcssa.ph.i, %i.nl
  %i.ow = zext nneg i32 %i.ov to i64
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.mq, i64 %i.ow
  %i.oy = load i64, ptr %i.ox, align 8, !tbaa !36
  %i.oz = icmp ugt i64 %i.ou, %i.oy
  %i.pa = add i64 %.1.i213, -1
  br i1 %i.oz, label %.lr.ph107.i, label %.preheader.i216.preheader, !llvm.loop !114

.preheader.i216.preheader:                        ; preds = %._crit_edge114.loopexit.i, %.split.us
end_hunk_2
begin_hunk_3_@sp_invmod_mont_ct:bb.a
  tail call fastcc void @_sp_mont_red(ptr noundef nonnull %i.ac, ptr noundef nonnull readonly %1, i64 noundef %3, i32 noundef 0)
  %i.cd = load i16, ptr %1, align 8, !tbaa !40
  %i.ce = shl i16 %i.cd, 1
  %i.cf = or disjoint i16 %i.ce, 1
  store volatile i16 0, ptr %i.ag, align 8, !tbaa !34
  %i.cg = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store volatile i64 0, ptr %i.cg, align 8, !tbaa !36
  %i.ch = getelementptr inbounds nuw i8, ptr %i.af, i64 18
  store volatile i16 %i.cf, ptr %i.ch, align 2, !tbaa !37
  %i.ci = tail call i32 @sp_sqr(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ag) ; 2 uses
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.k, label %.thread186.i

bb.k:                                             ; preds = %.thread159.i
  tail call fastcc void @_sp_mont_red(ptr noundef nonnull %i.ag, ptr noundef nonnull readonly %1, i64 noundef %3, i32 noundef 0)
  %i.ck = tail call i32 @sp_mul(ptr noundef nonnull %i.ag, ptr noundef nonnull readonly %0, ptr noundef nonnull %i.ag) ; 2 uses
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %.thread159.i.1, label %.thread186.i

.thread159.i.1:                                   ; preds = %bb.k
  tail call fastcc void @_sp_mont_red(ptr noundef nonnull %i.ag, ptr noundef nonnull readonly %1, i64 noundef %3, i32 noundef 0)
  %i.cm = load i16, ptr %1, align 8, !tbaa !40
  %i.cn = shl i16 %i.cm, 1
  %i.co = or disjoint i16 %i.cn, 1
  store volatile i16 0, ptr %i.ak, align 8, !tbaa !34
  %i.cp = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store volatile i64 0, ptr %i.cp, align 8, !tbaa !36
  %i.cq = getelementptr inbounds nuw i8, ptr %i.aj, i64 18
  store volatile i16 %i.co, ptr %i.cq, align 2, !tbaa !37
  %i.cr = tail call i32 @sp_sqr(ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ak) ; 2 uses
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.l, label %.thread186.i

bb.l:                                             ; preds = %.thread159.i.1
  tail call fastcc void @_sp_mont_red(ptr noundef nonnull %i.ak, ptr noundef nonnull readonly %1, i64 noundef %3, i32 noundef 0)
  %i.ct = tail call i32 @sp_mul(ptr noundef nonnull %i.ak, ptr noundef nonnull readonly %0, ptr noundef nonnull %i.ak) ; 2 uses
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %.thread159.i.2, label %.thread186.i

.thread159.i.2:                                   ; preds = %bb.l
  tail call fastcc void @_sp_mont_red(ptr noundef nonnull %i.ak, ptr noundef nonnull readonly %1, i64 noundef %3, i32 noundef 0)
  %i.cv = load i16, ptr %1, align 8, !tbaa !40
  %i.cw = shl i16 %i.cv, 1
  %i.cx = or disjoint i16 %i.cw, 1
  store volatile i16 0, ptr %i.ao, align 8, !tbaa !34
  %i.cy = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store volatile i64 0, ptr %i.cy, align 8, !tbaa !36
  %i.cz = getelementptr inbounds nuw i8, ptr %i.an, i64 18
  store volatile i16 %i.cx, ptr %i.cz, align 2, !tbaa !37
  %i.da = tail call i32 @sp_sqr(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.ao) ; 2 uses
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.m, label %.thread186.i

bb.m:                                             ; preds = %.thread159.i.2
  tail call fastcc void @_sp_mont_red(ptr noundef nonnull %i.ao, ptr noundef nonnull readonly %1, i64 noundef %3, i32 noundef 0)
  %i.dc = tail call i32 @sp_mul(ptr noundef nonnull %i.ao, ptr noundef nonnull readonly %0, ptr noundef nonnull %i.ao) ; 2 uses
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %.thread159.i.3, label %.thread186.i

.thread159.i.3:                                   ; preds = %bb.m
  tail call fastcc void @_sp_mont_red(ptr noundef nonnull %i.ao, ptr noundef nonnull readonly %1, i64 noundef %3, i32 noundef 0)
  %i.de = load i16, ptr %1, align 8, !tbaa !40
  %i.df = shl i16 %i.de, 1
  %i.dg = or disjoint i16 %i.df, 1
  store volatile i16 0, ptr %i.as, align 8, !tbaa !34
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store volatile i64 0, ptr %i.dh, align 8, !tbaa !36
  %i.di = getelementptr inbounds nuw i8, ptr %i.ar, i64 18
  store volatile i16 %i.dg, ptr %i.di, align 2, !tbaa !37
  %i.dj = tail call i32 @sp_sqr(ptr noundef nonnull %i.ao, ptr noundef nonnull %i.as) ; 2 uses
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.n, label %.thread186.i

bb.n:                                             ; preds = %.thread159.i.3
  tail call fastcc void @_sp_mont_red(ptr noundef nonnull %i.as, ptr noundef nonnull readonly %1, i64 noundef %3, i32 noundef 0)
  %i.dl = tail call i32 @sp_mul(ptr noundef nonnull %i.as, ptr noundef nonnull readonly %0, ptr noundef nonnull %i.as) ; 2 uses
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %.thread159.i.4, label %.thread186.i

.thread159.i.4:                                   ; preds = %bb.n
  tail call fastcc void @_sp_mont_red(ptr noundef nonnull %i.as, ptr noundef nonnull readonly %1, i64 noundef %3, i32 noundef 0)
  %i.dn = load i16, ptr %1, align 8, !tbaa !40
  %i.do = shl i16 %i.dn, 1
  %i.dp = or disjoint i16 %i.do, 1
  store volatile i16 0, ptr %i.aw, align 8, !tbaa !34
  %i.dq = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store volatile i64 0, ptr %i.dq, align 8, !tbaa !36
  %i.dr = getelementptr inbounds nuw i8, ptr %i.av, i64 18
  store volatile i16 %i.dp, ptr %i.dr, align 2, !tbaa !37
  %i.ds = tail call i32 @sp_sqr(ptr noundef nonnull %i.as, ptr noundef nonnull %i.aw) ; 2 uses
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %bb.o, label %.thread186.i

bb.o:                                             ; preds = %.thread159.i.4
  tail call fastcc void @_sp_mont_red(ptr noundef nonnull %i.aw, ptr noundef nonnull readonly %1, i64 noundef %3, i32 noundef 0)
  %i.du = tail call i32 @sp_mul(ptr noundef nonnull %i.aw, ptr noundef nonnull readonly %0, ptr noundef nonnull %i.aw) ; 2 uses
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %.thread159.i.5, label %.thread186.i

.thread159.i.5:                                   ; preds = %bb.o
  tail call fastcc void @_sp_mont_red(ptr noundef nonnull %i.aw, ptr noundef nonnull readonly %1, i64 noundef %3, i32 noundef 0)
  %i.dw = load i16, ptr %1, align 8, !tbaa !40
  %i.dx = shl i16 %i.dw, 1
  %i.dy = or disjoint i16 %i.dx, 1
  store volatile i16 0, ptr %i.ba, align 8, !tbaa !34
  %i.dz = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store volatile i64 0, ptr %i.dz, align 8, !tbaa !36
  %i.ea = getelementptr inbounds nuw i8, ptr %i.az, i64 18
  store volatile i16 %i.dy, ptr %i.ea, align 2, !tbaa !37
  %i.eb = tail call i32 @sp_sqr(ptr noundef nonnull %i.aw, ptr noundef nonnull %i.ba) ; 2 uses
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.p, label %.thread186.i

bb.p:                                             ; preds = %.thread159.i.5
  tail call fastcc void @_sp_mont_red(ptr noundef nonnull %i.ba, ptr noundef nonnull readonly %1, i64 noundef %3, i32 noundef 0)
  %i.ed = tail call i32 @sp_mul(ptr noundef nonnull %i.ba, ptr noundef nonnull readonly %0, ptr noundef nonnull %i.ba) ; 2 uses
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %.thread159.i.6, label %.thread186.i

.thread159.i.6:                                   ; preds = %bb.p
  tail call fastcc void @_sp_mont_red(ptr noundef nonnull %i.ba, ptr noundef nonnull readonly %1, i64 noundef %3, i32 noundef 0)
  %i.ef = load i16, ptr %1, align 8, !tbaa !40    ; 7 uses
  store i16 %i.ef, ptr %i.bh, align 8, !tbaa !40
  %i.eg = icmp eq i16 %i.ef, 0
  br i1 %i.eg, label %_sp_sub_d.exit.thread.i, label %bb.q

_sp_sub_d.exit.thread.i:                          ; preds = %.thread159.i.6
  store i64 0, ptr %i.bl, align 8, !tbaa !36
  br label %sp_is_bit_set.exit.thread.i

bb.q:                                             ; preds = %.thread159.i.6
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !36 ; 2 uses
  %i.ej = add i64 %i.ei, -2
  store i64 %i.ej, ptr %i.bl, align 8, !tbaa !36
  %i.ek = icmp ult i64 %i.ei, 2
  br i1 %i.ek, label %.preheader43.i.i, label %.loopexit44.i.i

.preheader43.i.i:                                 ; preds = %bb.q
  %i.el = zext i16 %i.ef to i32
  %.not51.i.i = icmp eq i16 %i.ef, 1
  br i1 %.not51.i.i, label %.loopexit44.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader43.i.i
  %wide.trip.count.i.i = zext i16 %i.ef to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.r, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.r ] ; 4 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv.i.i
  %i.en = load i64, ptr %i.em, align 8, !tbaa !36 ; 2 uses
  %i.eo = add i64 %i.en, -1
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.i.i
  store i64 %i.eo, ptr %i.ep, align 8, !tbaa !36
  %.not.i.i = icmp eq i64 %i.en, 0
  br i1 %.not.i.i, label %bb.r, label %.loopexit44.loopexit.split.loop.exit62.i.i

bb.r:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.loopexit44.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !5

.loopexit44.loopexit.split.loop.exit62.i.i:       ; preds = %.lr.ph.i.i
  %i.eq = trunc nuw nsw i64 %indvars.iv.i.i to i32
  br label %.loopexit44.loopexit.i.i

.loopexit44.loopexit.i.i:                         ; preds = %bb.r, %.loopexit44.loopexit.split.loop.exit62.i.i
  %.1.ph.i.i = phi i32 [ %i.eq, %.loopexit44.loopexit.split.loop.exit62.i.i ], [ %i.el, %bb.r ]
  %i.er = add nuw i32 %.1.ph.i.i, 1
  br label %.loopexit44.i.i

.loopexit44.i.i:                                  ; preds = %.loopexit44.loopexit.i.i, %.preheader43.i.i, %bb.q
  %.1.i.i = phi i32 [ 1, %bb.q ], [ 2, %.preheader43.i.i ], [ %i.er, %.loopexit44.loopexit.i.i ] ; 3 uses
  %.not40.i.i = icmp eq ptr %i.bh, %1
  br i1 %.not40.i.i, label %.loopexit.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.loopexit44.i.i
  %i.es = zext i16 %i.ef to i32                   ; 5 uses
  %i.et = icmp ult i32 %.1.i.i, %i.es
  br i1 %i.et, label %.lr.ph50.preheader.i.i, label %.loopexit.i.i

.lr.ph50.preheader.i.i:                           ; preds = %.preheader.i.i
  %i.eu = zext nneg i32 %.1.i.i to i64            ; 4 uses
  %i.ev = xor i32 %.1.i.i, -1
  %i.ew = add i32 %i.ev, %i.es                    ; 2 uses
  %i.ex = zext i32 %i.ew to i64
  %i.ey = add nuw nsw i64 %i.ex, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ew, 17
  br i1 %min.iters.check, label %.lr.ph50.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph50.preheader.i.i
  %i.ez = mul nuw nsw i64 %i.y, 144
  %i.fa = add i64 %i.ez, %i.s
  %i.fb = sub i64 %i.fa, %i.a
  %i.fc = add i64 %i.fb, 143
  %diff.check = icmp ult i64 %i.fc, 31
  br i1 %diff.check, label %.lr.ph50.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ey, 8589934588              ; 3 uses
  %4 = add nuw nsw i64 %n.vec, %i.eu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fd = add nuw i64 %index, %i.eu               ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.fd ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %wide.load = load <2 x i64>, ptr %i.fe, align 8, !tbaa !36
  %wide.load108 = load <2 x i64>, ptr %i.ff, align 8, !tbaa !36
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.fd ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store <2 x i64> %wide.load, ptr %i.fg, align 8, !tbaa !36
  store <2 x i64> %wide.load108, ptr %i.fh, align 8, !tbaa !36
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fi = icmp eq i64 %index.next, %n.vec
  br i1 %i.fi, label %middle.block, label %vector.body, !llvm.loop !133

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ey, %n.vec
  br i1 %cmp.n, label %.loopexit.i.i, label %.lr.ph50.i.i.preheader

.lr.ph50.i.i.preheader:                           ; preds = %vector.memcheck, %.lr.ph50.preheader.i.i, %middle.block
  %indvars.iv54.i.i.ph = phi i64 [ %i.eu, %vector.memcheck ], [ %i.eu, %.lr.ph50.preheader.i.i ], [ %4, %middle.block ] ; 3 uses
  %i.fj = trunc i64 %indvars.iv54.i.i.ph to i32   ; 2 uses
  %i.fk = sub i32 %i.es, %i.fj
  %xtraiter = and i32 %i.fk, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph50.i.i.prol.loopexit, label %.lr.ph50.i.i.prol

.lr.ph50.i.i.prol:                                ; preds = %.lr.ph50.i.i.preheader, %.lr.ph50.i.i.prol
  %indvars.iv54.i.i.prol = phi i64 [ %indvars.iv.next55.i.i.prol, %.lr.ph50.i.i.prol ], [ %indvars.iv54.i.i.ph, %.lr.ph50.i.i.preheader ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph50.i.i.prol ], [ 0, %.lr.ph50.i.i.preheader ]
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv54.i.i.prol
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !36
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv54.i.i.prol
  store i64 %i.fm, ptr %i.fn, align 8, !tbaa !36
  %indvars.iv.next55.i.i.prol = add nuw nsw i64 %indvars.iv54.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph50.i.i.prol.loopexit, label %.lr.ph50.i.i.prol, !llvm.loop !134

.lr.ph50.i.i.prol.loopexit:                       ; preds = %.lr.ph50.i.i.prol, %.lr.ph50.i.i.preheader
  %indvars.iv54.i.i.unr = phi i64 [ %indvars.iv54.i.i.ph, %.lr.ph50.i.i.preheader ], [ %indvars.iv.next55.i.i.prol, %.lr.ph50.i.i.prol ]
  %i.fo = sub i32 %i.fj, %i.es
  %i.fp = icmp ugt i32 %i.fo, -4
  br i1 %i.fp, label %.loopexit.i.i, label %.lr.ph50.i.i

.lr.ph50.i.i:                                     ; preds = %.lr.ph50.i.i.prol.loopexit, %.lr.ph50.i.i
  %indvars.iv54.i.i = phi i64 [ %indvars.iv.next55.i.i.3, %.lr.ph50.i.i ], [ %indvars.iv54.i.i.unr, %.lr.ph50.i.i.prol.loopexit ] ; 6 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv54.i.i
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !36
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv54.i.i
  store i64 %i.fr, ptr %i.fs, align 8, !tbaa !36
  %indvars.iv.next55.i.i = add nuw nsw i64 %indvars.iv54.i.i, 1 ; 2 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv.next55.i.i
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !36
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.next55.i.i
  store i64 %i.fu, ptr %i.fv, align 8, !tbaa !36
  %indvars.iv.next55.i.i.1 = add nuw nsw i64 %indvars.iv54.i.i, 2 ; 2 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv.next55.i.i.1
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !36
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.next55.i.i.1
  store i64 %i.fx, ptr %i.fy, align 8, !tbaa !36
  %indvars.iv.next55.i.i.2 = add nuw nsw i64 %indvars.iv54.i.i, 3 ; 2 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv.next55.i.i.2
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !36
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.next55.i.i.2
  store i64 %i.ga, ptr %i.gb, align 8, !tbaa !36
  %indvars.iv.next55.i.i.3 = add nuw nsw i64 %indvars.iv54.i.i, 4 ; 2 uses
  %lftr.wideiv.i.i.3 = trunc i64 %indvars.iv.next55.i.i.3 to i32
  %exitcond57.not.i.i.3 = icmp eq i32 %lftr.wideiv.i.i.3, %i.es
  br i1 %exitcond57.not.i.i.3, label %.loopexit.i.i, label %.lr.ph50.i.i, !llvm.loop !135

.loopexit.i.i:                                    ; preds = %.lr.ph50.i.i.prol.loopexit, %.lr.ph50.i.i, %middle.block, %.preheader.i.i, %.loopexit44.i.i
  %i.gc = zext i16 %i.ef to i64
  br label %bb.t

bb.s:                                             ; preds = %bb.t
  %indvars.iv.next59.i.i = add nsw i64 %indvars.iv58.i.i106, -1
  %i.gd = icmp sgt i64 %indvars.iv58.i.i106, 1
  br i1 %i.gd, label %bb.t, label %_sp_sub_d.exit.thread169.i, !llvm.loop !6

_sp_sub_d.exit.thread169.i:                       ; preds = %bb.s
  store i16 0, ptr %i.bh, align 8, !tbaa !40
  br label %sp_is_bit_set.exit.thread.i

bb.t:                                             ; preds = %.loopexit.i.i, %bb.s
  %indvars.iv58.i.i106 = phi i64 [ %i.gc, %.loopexit.i.i ], [ %indvars.iv.next59.i.i, %bb.s ] ; 7 uses
  %i.ge = getelementptr [8 x i8], ptr %i.bh, i64 %indvars.iv58.i.i106
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !36
  %.not42.i.i = icmp eq i64 %i.gf, 0
  br i1 %.not42.i.i, label %bb.s, label %bb.u, !llvm.loop !6

bb.u:                                             ; preds = %bb.t
  %i.gg = trunc nuw i64 %indvars.iv58.i.i106 to i16
  store i16 %i.gg, ptr %i.bh, align 8, !tbaa !40
  %.not109 = icmp eq i64 %indvars.iv58.i.i106, 0
  br i1 %.not109, label %sp_is_bit_set.exit.thread.i, label %.lr.ph

bb.v:                                             ; preds = %.lr.ph
  %i.gh = icmp sgt i64 %indvars.iv.i138.i107, 1
  br i1 %i.gh, label %.lr.ph, label %sp_is_bit_set.exit.thread.i, !llvm.loop !2

.lr.ph:                                           ; preds = %bb.u, %bb.v
  %indvars.iv.i138.i107 = phi i64 [ %indvars.iv.next.i139.i, %bb.v ], [ %indvars.iv58.i.i106, %bb.u ] ; 3 uses
  %indvars.iv.next.i139.i = add nsw i64 %indvars.iv.i138.i107, -1 ; 2 uses
  %i.gi = getelementptr [8 x i8], ptr %i.bh, i64 %indvars.iv.i138.i107
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !36 ; 5 uses
  %i.gk = icmp eq i64 %i.gj, 0
  br i1 %i.gk, label %bb.v, label %.critedge.i.i, !llvm.loop !2

.critedge.i.i:                                    ; preds = %.lr.ph
  %i.gl = trunc nuw nsw i64 %indvars.iv.next.i139.i to i32
  %i.gm = shl nuw nsw i32 %i.gl, 6                ; 2 uses
  %i.gn = icmp ugt i64 %i.gj, 4294967295
  br i1 %i.gn, label %bb.w, label %.lr.ph.preheader.i141.i

.lr.ph.preheader.i141.i:                          ; preds = %.critedge.i.i
  %i.go = tail call range(i64 32, 65) i64 @llvm.ctlz.i64(i64 %i.gj, i1 true)
  %i.gp = trunc nuw nsw i64 %i.go to i32
  %reass.sub.i.i = add nuw nsw i32 %i.gm, 64
  %i.gq = sub nuw nsw i32 %reass.sub.i.i, %i.gp
  br label %sp_count_bits.exit.i

bb.w:                                             ; preds = %.critedge.i.i
  %i.gr = add nuw nsw i32 %i.gm, 64               ; 2 uses
  %i.gs = icmp sgt i64 %i.gj, -1
  br i1 %i.gs, label %.lr.ph36.i.i, label %sp_count_bits.exit.i

.lr.ph36.i.i:                                     ; preds = %bb.w, %.lr.ph36.i.i
  %.035.i.i = phi i64 [ %i.gu, %.lr.ph36.i.i ], [ %i.gj, %bb.w ]
  %.234.i.i = phi i32 [ %i.gt, %.lr.ph36.i.i ], [ %i.gr, %bb.w ]
  %i.gt = add nsw i32 %.234.i.i, -1               ; 2 uses
  %i.gu = shl nuw i64 %.035.i.i, 1                ; 2 uses
  %i.gv = icmp sgt i64 %i.gu, -1
  br i1 %i.gv, label %.lr.ph36.i.i, label %sp_count_bits.exit.i, !llvm.loop !3

sp_count_bits.exit.i:                             ; preds = %.lr.ph36.i.i, %bb.w, %.lr.ph.preheader.i141.i
  %.5.i.i = phi i32 [ %i.gq, %.lr.ph.preheader.i141.i ], [ %i.gr, %bb.w ], [ %i.gt, %.lr.ph36.i.i ] ; 23 uses
  %i.gw = add nsw i32 %.5.i.i, -2                 ; 5 uses
  %i.gx = icmp sgt i32 %.5.i.i, 1
  br i1 %i.gx, label %.lr.ph.i, label %sp_is_bit_set.exit.thread.i

.lr.ph.i:                                         ; preds = %sp_count_bits.exit.i
  %i.gy = trunc nuw nsw i64 %indvars.iv58.i.i106 to i32 ; 7 uses
  %i.gz = lshr i32 %i.gw, 6                       ; 2 uses
  %i.ha = icmp samesign ult i32 %i.gz, %i.gy
  br i1 %i.ha, label %sp_is_bit_set.exit.i, label %sp_is_bit_set.exit.thread.loopexit.i

sp_is_bit_set.exit.i:                             ; preds = %.lr.ph.i
  %i.hb = and i32 %i.gw, 63
  %i.hc = zext nneg i32 %i.gz to i64
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.hc
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !36
  %i.hf = zext nneg i32 %i.hb to i64
  %i.hg = shl nuw i64 1, %i.hf
  %i.hh = and i64 %i.he, %i.hg
  %i.hi = icmp eq i64 %i.hh, 0
  br i1 %i.hi, label %sp_is_bit_set.exit.thread.loopexit.i, label %bb.x

bb.x:                                             ; preds = %sp_is_bit_set.exit.i
  %i.hj = add nsw i32 %.5.i.i, -3                 ; 4 uses
  %exitcond.not.i = icmp eq i32 %.5.i.i, 2
  br i1 %exitcond.not.i, label %sp_is_bit_set.exit.thread.loopexit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hk = lshr i32 %i.hj, 6                       ; 2 uses
  %i.hl = icmp samesign ult i32 %i.hk, %i.gy
  br i1 %i.hl, label %sp_is_bit_set.exit.i.1, label %sp_is_bit_set.exit.thread.loopexit.i

sp_is_bit_set.exit.i.1:                           ; preds = %bb.y
  %i.hm = and i32 %i.hj, 63
  %i.hn = zext nneg i32 %i.hk to i64
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.hn
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !36
  %i.hq = zext nneg i32 %i.hm to i64
  %i.hr = shl nuw i64 1, %i.hq
  %i.hs = and i64 %i.hp, %i.hr
  %i.ht = icmp eq i64 %i.hs, 0
  br i1 %i.ht, label %sp_is_bit_set.exit.thread.loopexit.i, label %bb.z

bb.z:                                             ; preds = %sp_is_bit_set.exit.i.1
  %i.hu = add nsw i32 %.5.i.i, -4                 ; 4 uses
  %exitcond.not.i.1 = icmp eq i32 %.5.i.i, 3
  br i1 %exitcond.not.i.1, label %sp_is_bit_set.exit.thread.loopexit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hv = lshr i32 %i.hu, 6                       ; 2 uses
  %i.hw = icmp samesign ult i32 %i.hv, %i.gy
  br i1 %i.hw, label %sp_is_bit_set.exit.i.2, label %sp_is_bit_set.exit.thread.loopexit.i

sp_is_bit_set.exit.i.2:                           ; preds = %bb.aa
  %i.hx = and i32 %i.hu, 63
  %i.hy = zext nneg i32 %i.hv to i64
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.hy
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !36
  %i.ib = zext nneg i32 %i.hx to i64
  %i.ic = shl nuw i64 1, %i.ib
  %i.id = and i64 %i.ia, %i.ic
  %i.ie = icmp eq i64 %i.id, 0
  br i1 %i.ie, label %sp_is_bit_set.exit.thread.loopexit.i, label %bb.ab

bb.ab:                                            ; preds = %sp_is_bit_set.exit.i.2
  %i.if = add nsw i32 %.5.i.i, -5                 ; 4 uses
  %exitcond.not.i.2 = icmp eq i32 %.5.i.i, 4
  br i1 %exitcond.not.i.2, label %sp_is_bit_set.exit.thread.loopexit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ig = lshr i32 %i.if, 6                       ; 2 uses
  %i.ih = icmp samesign ult i32 %i.ig, %i.gy
  br i1 %i.ih, label %sp_is_bit_set.exit.i.3, label %sp_is_bit_set.exit.thread.loopexit.i

sp_is_bit_set.exit.i.3:                           ; preds = %bb.ac
  %i.ii = and i32 %i.if, 63
  %i.ij = zext nneg i32 %i.ig to i64
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.ij
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !36
  %i.im = zext nneg i32 %i.ii to i64
end_hunk_3
begin_hunk_4_@sp_exptmod_ex:sp_count_bits.exit
  %.not101 = icmp eq i64 %i.ba, 0
  br i1 %.not101, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bb = tail call fastcc i32 @_sp_exptmod_base_2(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %3, ptr noundef %4)
  br label %.critedge109

bb.x:                                             ; preds = %._crit_edge, %bb.t, %bb.v
  %.pr170 = phi i16 [ %.pr170.pre, %._crit_edge ], [ %.pr170.pre189, %bb.t ], [ %.pr170.pre189, %bb.v ]
  %i.bc = icmp ugt i16 %.pr170, 1
  br i1 %i.bc, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !36
  %i.bf = and i64 %i.be, 1
  %.not102 = icmp eq i64 %i.bf, 0
  br i1 %.not102, label %.critedge, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bg = shl nsw i32 %2, 6
  %i.bh = tail call fastcc i32 @_sp_exptmod_mont_ex(ptr noundef nonnull %.096, ptr noundef %1, i32 noundef %i.bg, ptr noundef nonnull %3, ptr noundef %4)
  br label %.critedge109

.critedge:                                        ; preds = %bb.u, %bb.x, %bb.y
  %i.bi = shl nsw i32 %2, 6
  %i.bj = tail call fastcc i32 @_sp_exptmod_ex(ptr noundef nonnull %.096, ptr noundef %1, i32 noundef %i.bi, ptr noundef nonnull %3, ptr noundef %4)
  br label %.critedge109

.critedge109:                                     ; preds = %bb.r, %bb.z, %.critedge, %bb.w
  %.6 = phi i32 [ %i.bb, %bb.w ], [ %i.bh, %bb.z ], [ %i.bj, %.critedge ], [ %.5, %bb.r ]
  ret i32 %.6
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -98, 1) i32 @_sp_exptmod_base_2(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #11 {
bb.a:
  %i.a = load i16, ptr %2, align 8, !tbaa !40
  %.fr259 = freeze i16 %i.a                       ; 6 uses
  %i.b = zext i16 %.fr259 to i64
  %i.c = shl nuw nsw i64 %i.b, 2
  %i.d = add nuw nsw i64 %i.c, 4
  %i.e = alloca i64, i64 %i.d, align 16           ; 7 uses
  %i.f = icmp ugt i16 %.fr259, 1                  ; 5 uses
  %i.g = icmp ult i16 %.fr259, 65
  br i1 %i.g, label %.critedge144, label %.loopexit

.critedge144:                                     ; preds = %bb.a
  %i.h = shl nuw nsw i16 %.fr259, 1
  %i.i = or disjoint i16 %i.h, 1                  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.k = shl nuw nsw i16 %.fr259, 4
  %i.l = zext nneg i16 %i.k to i64
  %i.m = getelementptr i8, ptr %i.e, i64 %i.l     ; 4 uses
  %i.n = getelementptr i8, ptr %i.m, i64 16       ; 40 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 18
  store volatile i16 0, ptr %i.e, align 16, !tbaa !34
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store volatile i64 0, ptr %i.p, align 8, !tbaa !36
  store volatile i16 %i.i, ptr %i.j, align 2, !tbaa !37
  store volatile i16 0, ptr %i.n, align 16, !tbaa !34
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  store volatile i64 0, ptr %i.q, align 8, !tbaa !36
  store volatile i16 %i.i, ptr %i.o, align 2, !tbaa !37
  %i.r = icmp samesign ugt i16 %.fr259, 1
  br i1 %i.r, label %.thread168, label %.thread188

.thread188:                                       ; preds = %.critedge144
  store i64 1, ptr %i.q, align 8, !tbaa !36
  store i16 1, ptr %i.n, align 16, !tbaa !34
  br label %bb.d

.thread168:                                       ; preds = %.critedge144
  %i.s = getelementptr i8, ptr %2, i64 8
  %.val = load i64, ptr %i.s, align 8, !tbaa !36  ; 2 uses
  %i.t = mul i64 %.val, 3
  %i.u = xor i64 %i.t, 2                          ; 2 uses
  %i.v = mul i64 %i.u, %.val                      ; 2 uses
  %i.w = sub i64 1, %i.v                          ; 2 uses
  %i.x = sub i64 2, %i.v
  %i.y = mul i64 %i.x, %i.u
  %i.z = mul i64 %i.w, %i.w                       ; 3 uses
  %i.aa = add i64 %i.z, 1
  %i.ab = mul i64 %i.y, %i.aa
  %i.ac = mul i64 %i.z, %i.z                      ; 3 uses
  %i.ad = add i64 %i.ac, 1
  %i.ae = mul i64 %i.ab, %i.ad
  %i.af = mul i64 %i.ac, %i.ac
  %.neg.i = xor i64 %i.af, -1
  %.neg19.i = mul i64 %i.ae, %.neg.i
  %i.ag = call i32 @sp_mont_norm(ptr noundef nonnull %i.n, ptr noundef nonnull %2) ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 0
  %or.cond3 = and i1 %i.f, %i.ah
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.thread168
  %i.ai = call i32 @sp_mul_2d(ptr noundef nonnull %2, i32 noundef 32, ptr noundef nonnull %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread168
  %.2135 = phi i32 [ %i.ai, %bb.b ], [ %i.ag, %.thread168 ] ; 2 uses
  %i.aj = icmp eq i32 %.2135, 0
  br i1 %i.aj, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c, %.thread188
  %.0153166185198 = phi i64 [ 0, %.thread188 ], [ %.neg19.i, %bb.c ] ; 6 uses
  %i.ak = add nsw i32 %1, -2
  %i.al = sext i32 %1 to i64
  %i.am = getelementptr [8 x i8], ptr %0, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8, !tbaa !36 ; 2 uses
  %i.ao = shl nsw i32 %1, 6
  %i.ap = srem i32 %i.ao, 5                       ; 3 uses
  %.not = icmp eq i32 %i.ap, 0                    ; 2 uses
  %i.aq = sub nsw i32 64, %i.ap
  %narrow = select i1 %.not, i32 59, i32 %i.aq    ; 2 uses
  %.pn = zext nneg i32 %narrow to i64
  %narrow238 = select i1 %.not, i32 5, i32 %i.ap
  %.pn142 = zext nneg i32 %narrow238 to i64
  %.0129 = shl i64 %i.an, %.pn142
  %.0137.in = lshr i64 %i.an, %.pn
  %.0137 = trunc nuw nsw i64 %.0137.in to i32
  %i.ar = call i32 @sp_mul_2d(ptr noundef nonnull %i.n, i32 noundef %.0137, ptr noundef nonnull %i.n) ; 2 uses
  %i.as = icmp eq i32 %i.ar, 0
  %or.cond5 = and i1 %i.f, %i.as
  br i1 %or.cond5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.at = call i32 @sp_add(ptr noundef nonnull %i.n, ptr noundef nonnull %i.e, ptr noundef nonnull %i.n)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.4 = phi i32 [ %i.at, %bb.e ], [ %i.ar, %bb.d ] ; 2 uses
  %i.au = icmp eq i32 %.4, 0
  br i1 %i.au, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.av = load i16, ptr %i.n, align 16, !tbaa !40
  %i.aw = icmp ult i16 %i.av, 129
  br i1 %i.aw, label %sp_mod.exit, label %.loopexit

sp_mod.exit:                                      ; preds = %bb.g
  %i.ax = call i32 @sp_div(ptr noundef nonnull readonly %i.n, ptr noundef nonnull readonly %2, ptr noundef null, ptr noundef nonnull %i.n) ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %sp_mod.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %sp_mod.exit150
  %.1257 = phi i32 [ %i.ak, %.lr.ph ], [ %.2, %sp_mod.exit150 ] ; 6 uses
  %.2126256 = phi i32 [ %narrow, %.lr.ph ], [ %.3, %sp_mod.exit150 ] ; 6 uses
  %.2131255 = phi i64 [ %.0129, %.lr.ph ], [ %.3132, %sp_mod.exit150 ] ; 2 uses
  %i.ba = icmp sgt i32 %.1257, -1
  %i.bb = icmp sgt i32 %.2126256, 4
  %i.bc = select i1 %i.ba, i1 true, i1 %i.bb
  br i1 %i.bc, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.bd = icmp eq i32 %.2126256, 0
  br i1 %i.bd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.be = add nsw i32 %.1257, -1
  %i.bf = sext i32 %.1257 to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !36 ; 2 uses
  %i.bi = lshr i64 %i.bh, 59
  %i.bj = shl i64 %i.bh, 5
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.bk = icmp slt i32 %.2126256, 5
  %i.bl = lshr i64 %.2131255, 59                  ; 2 uses
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bm = add nsw i32 %.1257, -1
  %i.bn = sext i32 %.1257 to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !36 ; 2 uses
  %i.bq = sub nuw nsw i32 5, %.2126256
  %i.br = add nuw nsw i32 %.2126256, 59           ; 2 uses
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = lshr i64 %i.bp, %i.bs
  %i.bu = or i64 %i.bt, %i.bl
  %i.bv = zext nneg i32 %i.bq to i64
  %i.bw = shl i64 %i.bp, %i.bv
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bx = shl i64 %.2131255, 5
  %i.by = add nsw i32 %.2126256, -5
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.j
  %.1138.in = phi i64 [ %i.bi, %bb.j ], [ %i.bu, %bb.l ], [ %i.bl, %bb.m ]
  %.3132 = phi i64 [ %i.bj, %bb.j ], [ %i.bw, %bb.l ], [ %i.bx, %bb.m ]
  %.3 = phi i32 [ 59, %bb.j ], [ %i.br, %bb.l ], [ %i.by, %bb.m ]
  %.2 = phi i32 [ %i.be, %bb.j ], [ %i.bm, %bb.l ], [ %.1257, %bb.m ]
  %.1138 = trunc nuw nsw i64 %.1138.in to i32
  br i1 %i.f, label %.split.us, label %.split.split

.split.us:                                        ; preds = %bb.n
  %i.bz = call i32 @sp_sqr(ptr noundef nonnull %i.n, ptr noundef nonnull %i.n) ; 2 uses
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %sp_mod.exit147.us, label %.loopexit

sp_mod.exit147.us:                                ; preds = %.split.us
  call fastcc void @_sp_mont_red(ptr noundef nonnull %i.n, ptr noundef nonnull %2, i64 noundef %.0153166185198, i32 noundef 0)
  %i.cb = call i32 @sp_sqr(ptr noundef nonnull %i.n, ptr noundef nonnull %i.n) ; 2 uses
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %sp_mod.exit147.us.1, label %.loopexit

sp_mod.exit147.us.1:                              ; preds = %sp_mod.exit147.us
  call fastcc void @_sp_mont_red(ptr noundef nonnull %i.n, ptr noundef nonnull %2, i64 noundef %.0153166185198, i32 noundef 0)
  %i.cd = call i32 @sp_sqr(ptr noundef nonnull %i.n, ptr noundef nonnull %i.n) ; 2 uses
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %sp_mod.exit147.us.2, label %.loopexit

sp_mod.exit147.us.2:                              ; preds = %sp_mod.exit147.us.1
  call fastcc void @_sp_mont_red(ptr noundef nonnull %i.n, ptr noundef nonnull %2, i64 noundef %.0153166185198, i32 noundef 0)
  %i.cf = call i32 @sp_sqr(ptr noundef nonnull %i.n, ptr noundef nonnull %i.n) ; 2 uses
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %sp_mod.exit147.us.3, label %.loopexit

sp_mod.exit147.us.3:                              ; preds = %sp_mod.exit147.us.2
  call fastcc void @_sp_mont_red(ptr noundef nonnull %i.n, ptr noundef nonnull %2, i64 noundef %.0153166185198, i32 noundef 0)
  %i.ch = call i32 @sp_sqr(ptr noundef nonnull %i.n, ptr noundef nonnull %i.n) ; 2 uses
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %sp_mod.exit147.us.4, label %.loopexit

sp_mod.exit147.us.4:                              ; preds = %sp_mod.exit147.us.3
  call fastcc void @_sp_mont_red(ptr noundef nonnull %i.n, ptr noundef nonnull %2, i64 noundef %.0153166185198, i32 noundef 0)
  br label %.split244.us

.split.split:                                     ; preds = %bb.n, %sp_mod.exit147
  %.0242 = phi i32 [ %i.co, %sp_mod.exit147 ], [ 0, %bb.n ] ; 2 uses
  %i.cj = call i32 @sp_sqr(ptr noundef nonnull %i.n, ptr noundef nonnull %i.n) ; 2 uses
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %.split.split
  %i.cl = load i16, ptr %i.n, align 16, !tbaa !40
  %i.cm = icmp ult i16 %i.cl, 129
  br i1 %i.cm, label %sp_mod.exit147, label %.loopexit

sp_mod.exit147:                                   ; preds = %bb.o
  %i.cn = call i32 @sp_div(ptr noundef nonnull readonly %i.n, ptr noundef nonnull readonly %2, ptr noundef null, ptr noundef nonnull %i.n) ; 2 uses
  %i.co = add nuw nsw i32 %.0242, 1
  %i.cp = icmp samesign ult i32 %.0242, 4
  %i.cq = icmp eq i32 %i.cn, 0                    ; 2 uses
  %i.cr = select i1 %i.cp, i1 %i.cq, i1 false
  br i1 %i.cr, label %.split.split, label %.split244.us, !llvm.loop !139

.split244.us:                                     ; preds = %sp_mod.exit147, %sp_mod.exit147.us.4
  %.us-phi = phi i32 [ 0, %sp_mod.exit147.us.4 ], [ %i.cn, %sp_mod.exit147 ]
  %.us-phi245 = phi i1 [ true, %sp_mod.exit147.us.4 ], [ %i.cq, %sp_mod.exit147 ]
  br i1 %.us-phi245, label %bb.p, label %sp_mod.exit150

bb.p:                                             ; preds = %.split244.us
  %i.cs = call i32 @sp_mul_2d(ptr noundef nonnull %i.n, i32 noundef %.1138, ptr noundef nonnull %i.n) ; 2 uses
  %i.ct = icmp eq i32 %i.cs, 0
  %or.cond7 = and i1 %i.f, %i.ct
  br i1 %or.cond7, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cu = call i32 @sp_add(ptr noundef nonnull %i.n, ptr noundef nonnull %i.e, ptr noundef nonnull %i.n)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.10 = phi i32 [ %i.cu, %bb.q ], [ %i.cs, %bb.p ] ; 2 uses
  %.not314 = icmp eq i32 %.10, 0
  br i1 %.not314, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %bb.r
  %i.cv = load i16, ptr %i.n, align 16, !tbaa !40
  %i.cw = icmp ult i16 %i.cv, 129
  br i1 %i.cw, label %bb.t, label %.loopexit

bb.t:                                             ; preds = %bb.s
  %i.cx = call i32 @sp_div(ptr noundef nonnull readonly %i.n, ptr noundef nonnull readonly %2, ptr noundef null, ptr noundef nonnull %i.n)
  br label %sp_mod.exit150

sp_mod.exit150:                                   ; preds = %.split244.us, %bb.t
  %.11 = phi i32 [ %.us-phi, %.split244.us ], [ %i.cx, %bb.t ] ; 2 uses
  %i.cy = icmp eq i32 %.11, 0
  br i1 %i.cy, label %bb.h, label %.loopexit, !llvm.loop !140

.critedge:                                        ; preds = %bb.h
  br i1 %i.f, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.critedge
  call fastcc void @_sp_mont_red(ptr noundef nonnull %i.n, ptr noundef nonnull %2, i64 noundef %.0153166185198, i32 noundef 0)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.critedge
  %i.cz = load i16, ptr %i.n, align 16, !tbaa !40 ; 2 uses
  %i.da = icmp eq i16 %i.cz, 0
  br i1 %i.da, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.db, align 8, !tbaa !36
  br label %_sp_copy.exit

bb.x:                                             ; preds = %bb.v
  %i.dc = zext i16 %i.cz to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.de = getelementptr i8, ptr %i.m, i64 24
  %i.df = shl nuw nsw i64 %i.dc, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dd, ptr nonnull readonly align 8 %i.de, i64 %i.df, i1 false)
  %.pre.i = load i16, ptr %i.n, align 16, !tbaa !40
  br label %_sp_copy.exit

_sp_copy.exit:                                    ; preds = %bb.w, %bb.x
  %i.dg = phi i16 [ %.pre.i, %bb.x ], [ 0, %bb.w ]
  store i16 %i.dg, ptr %3, align 8, !tbaa !40
  br label %.loopexit

.loopexit:                                        ; preds = %sp_mod.exit150, %bb.s, %bb.r, %.split.split, %bb.o, %.split.us, %sp_mod.exit147.us, %sp_mod.exit147.us.1, %sp_mod.exit147.us.2, %sp_mod.exit147.us.3, %bb.a, %bb.c, %bb.g, %bb.f, %sp_mod.exit, %_sp_copy.exit
  %.6241 = phi i32 [ 0, %_sp_copy.exit ], [ %i.ax, %sp_mod.exit ], [ %i.ch, %sp_mod.exit147.us.3 ], [ -98, %bb.a ], [ %.2135, %bb.c ], [ -98, %bb.g ], [ %.4, %bb.f ], [ -98, %bb.o ], [ %i.bz, %.split.us ], [ %i.cb, %sp_mod.exit147.us ], [ %i.cd, %sp_mod.exit147.us.1 ], [ %i.cf, %sp_mod.exit147.us.2 ], [ %i.cj, %.split.split ], [ %.11, %sp_mod.exit150 ], [ -98, %bb.s ], [ %.10, %bb.r ]
  ret i32 %.6241
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -98, 1) i32 @_sp_exptmod_mont_ex(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(none) %4) unnamed_addr #11 {
bb.a:
  %i.a = load i16, ptr %3, align 8, !tbaa !40     ; 5 uses
  %i.b = zext i16 %i.a to i64                     ; 2 uses
  %i.c = shl nuw nsw i64 %i.b, 3
  %i.d = add nuw nsw i64 %i.c, 8
  %i.e = alloca i64, i64 %i.d, align 16           ; 17 uses
  %i.f = icmp ult i16 %i.a, 65
  br i1 %i.f, label %bb.b, label %.thread103

bb.b:                                             ; preds = %bb.a
  %i.g = shl nuw nsw i16 %i.a, 1
  %i.h = or disjoint i16 %i.g, 1                  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.j = shl nuw nsw i64 %i.b, 4                  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.j ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.j ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 13 uses
  store volatile i16 0, ptr %i.e, align 16, !tbaa !34
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store volatile i64 0, ptr %i.q, align 8, !tbaa !36
  store volatile i16 %i.h, ptr %i.i, align 2, !tbaa !37
  store volatile i16 0, ptr %i.l, align 16, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store volatile i64 0, ptr %i.r, align 8, !tbaa !36
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 18
  store volatile i16 %i.h, ptr %i.s, align 2, !tbaa !37
  store volatile i16 0, ptr %i.n, align 16, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store volatile i64 0, ptr %i.t, align 8, !tbaa !36
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 18
  store volatile i16 %i.h, ptr %i.u, align 2, !tbaa !37
  store volatile i16 0, ptr %i.p, align 8, !tbaa !34
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store volatile i64 0, ptr %i.v, align 8, !tbaa !36
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 18
  store volatile i16 %i.h, ptr %i.w, align 2, !tbaa !37
  %i.x = load i16, ptr %0, align 8, !tbaa !40     ; 8 uses
  %i.y = icmp ugt i16 %i.x, %i.a
  br i1 %i.y, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = icmp samesign ult i16 %i.x, %i.a
  br i1 %i.z, label %_sp_cmp_abs.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %.not = icmp eq i16 %i.x, 0
  br i1 %.not, label %.loopexit, label %.lr.ph172

.lr.ph172:                                        ; preds = %.preheader.i
  %i.aa = zext nneg i16 %i.x to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.f
  %indvars.iv.next.i171 = add nsw i64 %indvars.iv.i170, -1
  %i.ab = icmp sgt i64 %indvars.iv.i170, 1
  br i1 %i.ab, label %bb.e, label %.loopexit, !llvm.loop !1

bb.e:                                             ; preds = %.lr.ph172, %bb.d
  %indvars.iv.i170 = phi i64 [ %i.aa, %.lr.ph172 ], [ %indvars.iv.next.i171, %bb.d ] ; 4 uses
  %i.ac = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.i170
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !36 ; 2 uses
  %i.ae = getelementptr [8 x i8], ptr %3, i64 %indvars.iv.i170
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !36 ; 2 uses
  %i.ag = icmp ugt i64 %i.ad, %i.af
  br i1 %i.ag, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = icmp ult i64 %i.ad, %i.af
  br i1 %i.ah, label %_sp_cmp_abs.exit, label %bb.d, !llvm.loop !1

.loopexit:                                        ; preds = %bb.e, %bb.d, %.preheader.i, %bb.b
  %i.ai = icmp ult i16 %i.x, 129
  br i1 %i.ai, label %sp_mod.exit, label %.thread103

sp_mod.exit:                                      ; preds = %.loopexit
  %i.aj = call i32 @sp_div(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %3, ptr noundef null, ptr noundef nonnull %i.e) ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.g, label %.thread103

bb.g:                                             ; preds = %sp_mod.exit
  %i.al = load i16, ptr %i.e, align 16, !tbaa !40
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.an, align 8, !tbaa !36
  br label %.thread103.sink.split

_sp_cmp_abs.exit:                                 ; preds = %bb.f, %bb.c
  %i.ao = icmp eq i16 %i.x, 0
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_sp_cmp_abs.exit
  store i64 0, ptr %i.q, align 8, !tbaa !36
  br label %_sp_copy.exit

bb.j:                                             ; preds = %_sp_cmp_abs.exit
  %i.ap = zext nneg i16 %i.x to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = shl nuw nsw i64 %i.ap, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull readonly align 8 %i.aq, i64 %i.ar, i1 false)
  br label %_sp_copy.exit

_sp_copy.exit:                                    ; preds = %bb.i, %bb.j
  store i16 %i.x, ptr %i.e, align 16, !tbaa !40
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %_sp_copy.exit
  %i.as = getelementptr i8, ptr %3, i64 8
  %.val = load i64, ptr %i.as, align 8, !tbaa !36 ; 2 uses
  %i.at = mul i64 %.val, 3
  %i.au = xor i64 %i.at, 2                        ; 2 uses
  %i.av = mul i64 %i.au, %.val                    ; 2 uses
  %i.aw = sub i64 1, %i.av                        ; 2 uses
  %i.ax = sub i64 2, %i.av
  %i.ay = mul i64 %i.ax, %i.au
  %i.az = mul i64 %i.aw, %i.aw                    ; 3 uses
  %i.ba = add i64 %i.az, 1
  %i.bb = mul i64 %i.ay, %i.ba
  %i.bc = mul i64 %i.az, %i.az                    ; 3 uses
  %i.bd = add i64 %i.bc, 1
  %i.be = mul i64 %i.bb, %i.bd
  %i.bf = mul i64 %i.bc, %i.bc
  %.neg.i = xor i64 %i.bf, -1
  %.neg19.i = mul i64 %i.be, %.neg.i              ; 3 uses
  %i.bg = call i32 @sp_mont_norm(ptr noundef nonnull %i.l, ptr noundef nonnull %3) ; 2 uses
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.k, label %.thread103

bb.k:                                             ; preds = %.critedge
end_hunk_4
begin_hunk_5_@sp_mod_2d:bb.a
  %i.q = load i16, ptr %0, align 8, !tbaa !40     ; 2 uses
  store i16 %i.q, ptr %2, align 8, !tbaa !40
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread
  %i.r = phi i16 [ %i.q, %bb.c ], [ %.pre, %.thread ]
  %i.s = zext i16 %i.r to i32
  %.not55 = icmp samesign ugt i32 %i.e, %i.s
  br i1 %.not55, label %.thread65, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i16 %i.j, ptr %2, align 8, !tbaa !40
  %i.t = and i32 %1, 63                           ; 2 uses
  %.not56 = icmp eq i32 %i.t, 0
  br i1 %.not56, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = zext nneg i32 %i.t to i64
  %notmask = shl nsw i64 -1, %i.u
  %i.v = xor i64 %notmask, -1
  %i.w = zext nneg i32 %i.e to i64
  %i.x = getelementptr [8 x i8], ptr %2, i64 %i.w ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !36
  %i.z = and i64 %i.y, %i.v
  store i64 %i.z, ptr %i.x, align 8, !tbaa !36
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.not57 = icmp eq i32 %i.e, 0
  br i1 %.not57, label %.thread65, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.aa = lshr i32 %i.d, 6                        ; 3 uses
  %i.ab = sub nsw i32 %i.aa, %i.e                 ; 2 uses
  %.not76 = icmp eq i32 %i.aa, 0
  br i1 %.not76, label %.split.loop.exit72, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ac = zext nneg i32 %i.aa to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next = add nsw i64 %indvars.iv75, -1
  %i.ad = icmp sgt i64 %indvars.iv75, 1
  br i1 %i.ad, label %bb.i, label %.split.loop.exit72, !llvm.loop !160

bb.i:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv75 = phi i64 [ %i.ac, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 4 uses
  %i.ae = getelementptr [8 x i8], ptr %2, i64 %indvars.iv75
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !36
  %.not58 = icmp eq i64 %i.af, 0
  br i1 %.not58, label %bb.h, label %.split.loop.exit, !llvm.loop !160

.split.loop.exit:                                 ; preds = %bb.i
  %i.ag = trunc nuw nsw i64 %indvars.iv75 to i32
  br label %.split.loop.exit72

.split.loop.exit72:                               ; preds = %bb.h, %.preheader, %.split.loop.exit
  %.0.in.lcssa = phi i32 [ %i.ag, %.split.loop.exit ], [ %i.ab, %.preheader ], [ %i.ab, %bb.h ]
  %i.ah = trunc nuw i32 %.0.in.lcssa to i16
  store i16 %i.ah, ptr %2, align 8, !tbaa !40
  br label %.thread65

.thread65:                                        ; preds = %bb.a, %bb.b, %bb.g, %.split.loop.exit72, %bb.d
  %.162 = phi i32 [ 0, %bb.g ], [ 0, %.split.loop.exit72 ], [ 0, %bb.d ], [ -98, %bb.b ], [ -98, %bb.a ]
  ret i32 %.162
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 -98, 1) i32 @sp_mul_2d(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, ptr nofree noundef captures(address) %2) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %2, null
  %or.cond.not22 = and i1 %i.a, %i.b
  %i.c = icmp sgt i32 %1, -1
  %or.cond3.not = and i1 %i.c, %or.cond.not22
  br i1 %or.cond3.not, label %bb.b, label %sp_copy.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i16, ptr %0, align 8, !tbaa !40     ; 4 uses
  %.not25.i = icmp eq i16 %i.d, 0                 ; 2 uses
  br i1 %.not25.i, label %sp_count_bits.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = zext i16 %i.d to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.f = icmp sgt i64 %indvars.iv.i51, 1
  br i1 %i.f, label %bb.e, label %sp_count_bits.exit, !llvm.loop !2

bb.e:                                             ; preds = %bb.c, %bb.d
  %indvars.iv.i51 = phi i64 [ %i.e, %bb.c ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i51, -1 ; 2 uses
  %i.g = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.i51
  %i.h = load i64, ptr %i.g, align 8, !tbaa !36   ; 5 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.d, label %.critedge.i, !llvm.loop !2

.critedge.i:                                      ; preds = %bb.e
  %i.j = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.k = shl nuw nsw i32 %i.j, 6                  ; 2 uses
  %i.l = icmp ugt i64 %i.h, 4294967295
  br i1 %i.l, label %bb.f, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.critedge.i
  %i.m = tail call range(i64 32, 65) i64 @llvm.ctlz.i64(i64 %i.h, i1 true)
  %i.n = trunc nuw nsw i64 %i.m to i32
  %reass.sub.i = add nuw nsw i32 %i.k, 64
  %i.o = sub nuw nsw i32 %reass.sub.i, %i.n
  br label %sp_count_bits.exit

bb.f:                                             ; preds = %.critedge.i
  %i.p = add nuw nsw i32 %i.k, 64                 ; 2 uses
  %i.q = icmp sgt i64 %i.h, -1
  br i1 %i.q, label %.lr.ph36.i, label %sp_count_bits.exit

.lr.ph36.i:                                       ; preds = %bb.f, %.lr.ph36.i
  %.035.i = phi i64 [ %i.s, %.lr.ph36.i ], [ %i.h, %bb.f ]
  %.234.i = phi i32 [ %i.r, %.lr.ph36.i ], [ %i.p, %bb.f ]
  %i.r = add nsw i32 %.234.i, -1                  ; 2 uses
  %i.s = shl nuw i64 %.035.i, 1                   ; 2 uses
  %i.t = icmp sgt i64 %i.s, -1
  br i1 %i.t, label %.lr.ph36.i, label %sp_count_bits.exit, !llvm.loop !3

sp_count_bits.exit:                               ; preds = %bb.d, %.lr.ph36.i, %bb.b, %.lr.ph.preheader.i, %bb.f
  %.5.i = phi i32 [ %i.p, %bb.f ], [ %i.r, %.lr.ph36.i ], [ %i.o, %.lr.ph.preheader.i ], [ 0, %bb.b ], [ 0, %bb.d ]
  %i.u = add nsw i32 %.5.i, %1
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.w = load i16, ptr %i.v, align 2, !tbaa !39   ; 2 uses
  %i.x = zext i16 %i.w to i32                     ; 3 uses
  %i.y = shl nuw nsw i32 %i.x, 6
  %i.z = icmp ugt i32 %i.u, %i.y
  br i1 %i.z, label %sp_copy.exit, label %.thread

.thread:                                          ; preds = %sp_count_bits.exit
  %.not = icmp eq ptr %0, %2
  br i1 %.not, label %thread-pre-split, label %bb.g

bb.g:                                             ; preds = %.thread
  %i.aa = icmp ugt i16 %i.d, %i.w
  br i1 %i.aa, label %sp_copy.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.g
  br i1 %.not25.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread.i
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ab, align 8, !tbaa !36
  br label %_sp_copy.exit.i

bb.i:                                             ; preds = %.thread.i
  %i.ac = zext i16 %i.d to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = shl nuw nsw i64 %i.ac, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr nonnull readonly align 8 %i.ae, i64 %i.af, i1 false)
  %.pre.i.i = load i16, ptr %0, align 8, !tbaa !40
  br label %_sp_copy.exit.i

_sp_copy.exit.i:                                  ; preds = %bb.i, %bb.h
  %i.ag = phi i16 [ %.pre.i.i, %bb.i ], [ 0, %bb.h ] ; 2 uses
  store i16 %i.ag, ptr %2, align 8, !tbaa !40
  br label %bb.j

thread-pre-split:                                 ; preds = %.thread
  %.pr = load i16, ptr %2, align 8, !tbaa !40
  br label %bb.j

bb.j:                                             ; preds = %thread-pre-split, %_sp_copy.exit.i
  %i.ah = phi i16 [ %.pr, %thread-pre-split ], [ %i.ag, %_sp_copy.exit.i ] ; 9 uses
  %i.ai = zext i16 %i.ah to i32                   ; 5 uses
  %.not.i25 = icmp eq i16 %i.ah, 0
  br i1 %.not.i25, label %sp_copy.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = trunc i32 %1 to i16
  %i.ak = lshr i16 %i.aj, 6                       ; 7 uses
  %i.al = and i32 %1, 63                          ; 3 uses
  %.not54.i = icmp eq i32 %i.al, 0
  br i1 %.not54.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = zext nneg i16 %i.ak to i32              ; 7 uses
  %i.an = add nuw nsw i32 %i.ai, %i.am
  %.not55.i = icmp samesign ult i32 %i.an, %i.x
  br i1 %.not55.i, label %.thread73.i, label %sp_copy.exit

bb.m:                                             ; preds = %bb.k
  %.not56.i = icmp eq i16 %i.ak, 0
  br i1 %.not56.i, label %.thread70.i, label %bb.n

.thread73.i:                                      ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 11 uses
  %i.ap = add nsw i32 %i.ai, -1                   ; 2 uses
  %i.aq = zext nneg i32 %i.ap to i64              ; 10 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !36
  %i.at = sub nuw nsw i32 64, %i.al
  %i.au = zext nneg i32 %i.at to i64              ; 5 uses
  %3 = lshr i64 %i.as, %i.au                      ; 2 uses
  %.not5883.i = icmp eq i32 %i.ap, 0
  %.pre.i = zext nneg i32 %i.al to i64            ; 5 uses
  br i1 %.not5883.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.thread73.i
  %min.iters.check = icmp ult i16 %i.ah, 23
  br i1 %min.iters.check, label %.lr.ph.i.preheader58, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.preheader
  %i.av = add nsw i64 %i.aq, -1                   ; 2 uses
  %i.aw = add nuw nsw i32 %i.am, %i.ai
  %i.ax = add nsw i32 %i.aw, -1
  %i.ay = trunc nsw i64 %i.av to i32
  %i.az = icmp ult i32 %i.ax, %i.ay
  %i.ba = icmp ugt i64 %i.av, 4294967295
  %i.bb = or i1 %i.az, %i.ba
  br i1 %i.bb, label %.lr.ph.i.preheader58, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bc = shl nuw nsw i64 %i.aq, 3                ; 2 uses
  %i.bd = add nuw nsw i32 %i.am, %i.ai
  %i.be = add nsw i32 %i.bd, -1
  %i.bf = zext i32 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 3                ; 2 uses
  %i.bh = sub nsw i64 %i.bg, %i.bc
  %diff.check = icmp ugt i64 %i.bh, -32
  %i.bi = sub nsw i64 %i.bc, %i.bg
  %i.bj = add nsw i64 %i.bi, -9
  %diff.check52 = icmp ult i64 %i.bj, 31
  %conflict.rdx = or i1 %diff.check, %diff.check52
  br i1 %conflict.rdx, label %.lr.ph.i.preheader58, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aq, 2147483644              ; 2 uses
  %4 = and i64 %i.aq, 3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.pre.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert53 = insertelement <2 x i64> poison, i64 %i.au, i64 0
  %broadcast.splat54 = shufflevector <2 x i64> %broadcast.splatinsert53, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bk = sub i64 %i.aq, %index                   ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.bk ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -8
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 -24
  %wide.load = load <2 x i64>, ptr %i.bm, align 8, !tbaa !36
  %wide.load55 = load <2 x i64>, ptr %i.bn, align 8, !tbaa !36
  %i.bo = shl <2 x i64> %wide.load, %broadcast.splat
  %i.bp = shl <2 x i64> %wide.load55, %broadcast.splat
  %i.bq = getelementptr [8 x i8], ptr %2, i64 %i.bk ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 -8
  %i.bs = getelementptr i8, ptr %i.bq, i64 -24
  %wide.load56 = load <2 x i64>, ptr %i.br, align 8, !tbaa !36
  %wide.load57 = load <2 x i64>, ptr %i.bs, align 8, !tbaa !36
  %i.bt = lshr <2 x i64> %wide.load56, %broadcast.splat54
  %i.bu = lshr <2 x i64> %wide.load57, %broadcast.splat54
  %i.bv = or <2 x i64> %i.bt, %i.bo
  %i.bw = or <2 x i64> %i.bu, %i.bp
  %i.bx = trunc nuw i64 %i.bk to i32
  %i.by = add i32 %i.bx, %i.am
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -8
  %i.cc = getelementptr inbounds i8, ptr %i.ca, i64 -24
  store <2 x i64> %i.bv, ptr %i.cb, align 8, !tbaa !36
  store <2 x i64> %i.bw, ptr %i.cc, align 8, !tbaa !36
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !161

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.aq
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader58

.lr.ph.i.preheader58:                             ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i27.ph = phi i64 [ %i.aq, %vector.memcheck ], [ %i.aq, %vector.scevcheck ], [ %i.aq, %.lr.ph.i.preheader ], [ %4, %middle.block ] ; 7 uses
  %xtraiter = and i64 %indvars.iv.i27.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader58
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.i27.ph
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !36
  %i.cg = shl i64 %i.cf, %.pre.i
  %i.ch = add nsw i64 %indvars.iv.i27.ph, -1
  %i.ci = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.i27.ph
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !36
  %i.ck = lshr i64 %i.cj, %i.au
  %i.cl = or i64 %i.ck, %i.cg
  %i.cm = trunc nuw nsw i64 %indvars.iv.i27.ph to i32
  %i.cn = add nuw i32 %i.cm, %i.am
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.co
  store i64 %i.cl, ptr %i.cp, align 8, !tbaa !36
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader58
  %indvars.iv.i27.unr = phi i64 [ %indvars.iv.i27.ph, %.lr.ph.i.preheader58 ], [ %i.ch, %.lr.ph.i.prol ]
  %i.cq = icmp eq i64 %indvars.iv.i27.ph, 1
  br i1 %i.cq, label %._crit_edge.i, label %.lr.ph.i

bb.n:                                             ; preds = %bb.m
  %i.cr = zext nneg i16 %i.ak to i32
  %i.cs = add nuw nsw i32 %i.ai, %i.cr
  %.not82.i = icmp samesign ugt i32 %i.cs, %i.x
  br i1 %.not82.i, label %sp_copy.exit, label %bb.p

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i27 = phi i64 [ %i.di, %.lr.ph.i ], [ %indvars.iv.i27.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.i27
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !36
  %i.cv = shl i64 %i.cu, %.pre.i
  %i.cw = add nsw i64 %indvars.iv.i27, -1         ; 2 uses
  %i.cx = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.i27
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !36
  %i.cz = lshr i64 %i.cy, %i.au
  %i.da = or i64 %i.cz, %i.cv
  %i.db = trunc nuw i64 %indvars.iv.i27 to i32
  %i.dc = add i32 %i.db, %i.am
  %i.dd = zext i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.dd
  store i64 %i.da, ptr %i.de, align 8, !tbaa !36
  %i.df = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.i27
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !36
  %i.dh = shl i64 %i.dg, %.pre.i
  %i.di = add nsw i64 %indvars.iv.i27, -2         ; 2 uses
  %i.dj = getelementptr [8 x i8], ptr %2, i64 %i.cw
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !36
  %i.dl = lshr i64 %i.dk, %i.au
  %i.dm = or i64 %i.dl, %i.dh
  %i.dn = trunc nuw i64 %i.cw to i32
  %i.do = add i32 %i.dn, %i.am
  %i.dp = zext i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.dp
  store i64 %i.dm, ptr %i.dq, align 8, !tbaa !36
  %.not58.wide.i.1 = icmp eq i64 %i.di, 0
  br i1 %.not58.wide.i.1, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !162

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %.thread73.i
  %i.dr = load i64, ptr %i.ao, align 8, !tbaa !36
  %i.ds = shl i64 %i.dr, %.pre.i
  %i.dt = zext nneg i16 %i.ak to i64              ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.dt
  store i64 %i.ds, ptr %i.du, align 8, !tbaa !36
  %.not59.i = icmp eq i64 %3, 0
  br i1 %.not59.i, label %.thread70.i, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i
  %i.dv = zext i16 %i.ah to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.dv
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.dt
  store i64 %3, ptr %i.dx, align 8, !tbaa !36
  %i.dy = add i16 %i.ah, 1
  br label %.thread70.i

bb.p:                                             ; preds = %bb.n
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ea = zext nneg i16 %i.ak to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.ea
  %i.ec = zext i16 %i.ah to i64
  %i.ed = shl nuw nsw i64 %i.ec, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eb, ptr nonnull align 8 %i.dz, i64 %i.ed, i1 false)
  br label %.thread70.i

.thread70.i:                                      ; preds = %bb.p, %bb.o, %._crit_edge.i, %bb.m
  %i.ee = phi i16 [ %i.ah, %._crit_edge.i ], [ %i.dy, %bb.o ], [ %i.ah, %bb.p ], [ %i.ah, %bb.m ]
  %i.ef = add i16 %i.ee, %i.ak
  store i16 %i.ef, ptr %2, align 8, !tbaa !40
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eh = shl nuw nsw i16 %i.ak, 3
  %i.ei = zext nneg i16 %i.eh to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.eg, i8 0, i64 %i.ei, i1 false)
  br label %sp_copy.exit

sp_copy.exit:                                     ; preds = %bb.a, %sp_count_bits.exit, %bb.g, %.thread70.i, %bb.n, %bb.l, %bb.j
  %.3 = phi i32 [ -98, %sp_count_bits.exit ], [ -98, %bb.l ], [ 0, %bb.j ], [ 0, %.thread70.i ], [ -98, %bb.n ], [ -98, %bb.g ], [ -98, %bb.a ]
  ret i32 %.3
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define range(i32 -98, 1) i32 @sp_sqr(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond.not = and i1 %i.a, %i.b
  br i1 %or.cond.not, label %bb.b, label %.thread17

bb.b:                                             ; preds = %bb.a
  %i.c = load i16, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.d = zext i16 %i.c to i32
  %i.e = shl nuw nsw i32 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !39
  %i.h = zext i16 %i.g to i32
  %i.i = icmp samesign ugt i32 %i.e, %i.h
  br i1 %i.i, label %.thread17, label %.thread

.thread:                                          ; preds = %bb.b
  switch i16 %i.c, label %bb.l [
    i16 0, label %bb.c
    i16 4, label %bb.d
  ]

bb.c:                                             ; preds = %.thread
  store volatile i16 0, ptr %1, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store volatile i64 0, ptr %i.j, align 8, !tbaa !36
  br label %.thread17

bb.d:                                             ; preds = %.thread
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !36
  %i.m = zext i64 %i.l to i128                    ; 5 uses
  %i.n = mul nuw i128 %i.m, %i.m                  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !36
  %i.q = zext i64 %i.p to i128                    ; 5 uses
  %i.r = mul nuw i128 %i.q, %i.m                  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !36
  %i.u = zext i64 %i.t to i128                    ; 5 uses
  %i.v = mul nuw i128 %i.u, %i.m                  ; 2 uses
  %i.w = mul nuw i128 %i.q, %i.q                  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !36
  %i.z = zext i64 %i.y to i128                    ; 5 uses
  %i.aa = mul nuw i128 %i.z, %i.m                 ; 2 uses
  %i.ab = mul nuw i128 %i.u, %i.q                 ; 2 uses
  %i.ac = mul nuw i128 %i.z, %i.q                 ; 2 uses
  %i.ad = mul nuw i128 %i.u, %i.u                 ; 2 uses
  %i.ae = mul nuw i128 %i.z, %i.u                 ; 2 uses
  %i.af = mul nuw i128 %i.z, %i.z                 ; 2 uses
  %i.ag = trunc i128 %i.n to i64                  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !36
  %i.ai = lshr i128 %i.n, 64
  %i.aj = shl i128 %i.r, 1
  %reass.add.i = and i128 %i.aj, 36893488147419103230
  %i.ak = add nuw nsw i128 %reass.add.i, %i.ai    ; 2 uses
  %i.al = trunc i128 %i.ak to i64                 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.al, ptr %i.am, align 8, !tbaa !36
  %i.an = lshr i128 %i.ak, 64
  %i.ao = lshr i128 %i.r, 63
  %reass.add113.i = and i128 %i.ao, 36893488147419103230
  %i.ap = shl i128 %i.v, 1
  %reass.add114.i = and i128 %i.ap, 36893488147419103230
  %i.aq = and i128 %i.w, 18446744073709551615
  %i.ar = add nuw nsw i128 %reass.add113.i, %i.aq
  %i.as = add nuw nsw i128 %i.ar, %reass.add114.i
  %i.at = add nuw nsw i128 %i.as, %i.an           ; 2 uses
  %i.au = trunc i128 %i.at to i64                 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.au, ptr %i.av, align 8, !tbaa !36
  %i.aw = lshr i128 %i.at, 64
  %i.ax = lshr i128 %i.v, 63
  %reass.add115.i = and i128 %i.ax, 36893488147419103230
  %i.ay = lshr i128 %i.w, 64
  %i.az = shl i128 %i.aa, 1
  %reass.add116.i = and i128 %i.az, 36893488147419103230
  %i.ba = shl i128 %i.ab, 1
  %reass.add117.i = and i128 %i.ba, 36893488147419103230
  %i.bb = add nuw nsw i128 %reass.add115.i, %i.ay
  %i.bc = add nuw nsw i128 %i.bb, %reass.add117.i
  %i.bd = add nuw nsw i128 %i.bc, %reass.add116.i
  %i.be = add nuw nsw i128 %i.bd, %i.aw           ; 2 uses
  %i.bf = trunc i128 %i.be to i64                 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !36
  %i.bh = lshr i128 %i.be, 64
  %i.bi = lshr i128 %i.aa, 63
  %reass.add118.i = and i128 %i.bi, 36893488147419103230
  %i.bj = lshr i128 %i.ab, 63
  %reass.add119.i = and i128 %i.bj, 36893488147419103230
  %i.bk = shl i128 %i.ac, 1
  %reass.add120.i = and i128 %i.bk, 36893488147419103230
  %i.bl = and i128 %i.ad, 18446744073709551615
  %i.bm = add nuw nsw i128 %reass.add119.i, %i.bl
  %i.bn = add nuw nsw i128 %i.bm, %reass.add118.i
  %i.bo = add nuw nsw i128 %i.bn, %reass.add120.i
  %i.bp = add nuw nsw i128 %i.bo, %i.bh           ; 2 uses
  %i.bq = trunc i128 %i.bp to i64                 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !36
  %i.bs = lshr i128 %i.bp, 64
  %i.bt = lshr i128 %i.ac, 63
  %reass.add121.i = and i128 %i.bt, 36893488147419103230
  %i.bu = lshr i128 %i.ad, 64
  %i.bv = shl i128 %i.ae, 1
  %reass.add122.i = and i128 %i.bv, 36893488147419103230
  %i.bw = add nuw nsw i128 %reass.add121.i, %i.bu
  %i.bx = add nuw nsw i128 %i.bw, %reass.add122.i
  %i.by = add nuw nsw i128 %i.bx, %i.bs           ; 2 uses
  %i.bz = trunc i128 %i.by to i64                 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !36
  %i.cb = lshr i128 %i.by, 64
  %i.cc = lshr i128 %i.ae, 63
  %reass.add123.i = and i128 %i.cc, 36893488147419103230
  %i.cd = and i128 %i.af, 18446744073709551615
  %i.ce = add nuw nsw i128 %reass.add123.i, %i.cd
  %i.cf = add nuw nsw i128 %i.ce, %i.cb           ; 2 uses
  %i.cg = trunc i128 %i.cf to i64                 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !36
  %i.ci = lshr i128 %i.cf, 64
  %i.cj = lshr i128 %i.af, 64
  %i.ck = add nuw nsw i128 %i.ci, %i.cj
  %i.cl = trunc i128 %i.ck to i64                 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !36
  %.not.i = icmp eq i64 %i.cl, 0
  br i1 %.not.i, label %bb.e, label %_sp_sqr_4.exit

bb.e:                                             ; preds = %bb.d
  %.not.1.i = icmp eq i64 %i.cg, 0
  br i1 %.not.1.i, label %bb.f, label %_sp_sqr_4.exit

bb.f:                                             ; preds = %bb.e
  %.not.2.i = icmp eq i64 %i.bz, 0
  br i1 %.not.2.i, label %bb.g, label %_sp_sqr_4.exit

bb.g:                                             ; preds = %bb.f
  %.not.3.i = icmp eq i64 %i.bq, 0
  br i1 %.not.3.i, label %bb.h, label %_sp_sqr_4.exit

bb.h:                                             ; preds = %bb.g
  %.not.4.i = icmp eq i64 %i.bf, 0
  br i1 %.not.4.i, label %bb.i, label %_sp_sqr_4.exit

bb.i:                                             ; preds = %bb.h
  %.not.5.i = icmp eq i64 %i.au, 0
  br i1 %.not.5.i, label %bb.j, label %_sp_sqr_4.exit

bb.j:                                             ; preds = %bb.i
  %.not.6.i = icmp eq i64 %i.al, 0
  br i1 %.not.6.i, label %bb.k, label %_sp_sqr_4.exit

bb.k:                                             ; preds = %bb.j
  %.not.7.i = icmp ne i64 %i.ag, 0
  %spec.select.i = zext i1 %.not.7.i to i16
  br label %_sp_sqr_4.exit

_sp_sqr_4.exit:                                   ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.0.lcssa.i = phi i16 [ 8, %bb.d ], [ 4, %bb.h ], [ 7, %bb.e ], [ %spec.select.i, %bb.k ], [ 6, %bb.f ], [ 3, %bb.i ], [ 5, %bb.g ], [ 2, %bb.j ]
  store i16 %.0.lcssa.i, ptr %1, align 8, !tbaa !40
  br label %.thread17

bb.l:                                             ; preds = %.thread
  tail call fastcc void @_sp_sqr(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %.thread17

end_hunk_5
begin_hunk_6_@_sp_mont_red:bb.a
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !36
  %i.ky = shl i64 %i.kx, %i.jz
  %i.kz = or i64 %i.ky, %i.kv
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv.i158
  store i64 %i.kz, ptr %i.la, align 8, !tbaa !36
  %indvars.iv.next.i160 = add nuw nsw i64 %indvars.iv.i158, 1 ; 2 uses
  %exitcond.not.i161 = icmp eq i64 %indvars.iv.next.i160, %wide.trip.count.i156
  br i1 %exitcond.not.i161, label %._crit_edge.loopexit.i162, label %scalar.ph, !llvm.loop !174

._crit_edge.loopexit.i162:                        ; preds = %scalar.ph, %middle.block
  %i.lb = zext i16 %i.jv to i32
  br label %._crit_edge.i163

._crit_edge.i163:                                 ; preds = %._crit_edge.loopexit.i162, %.preheader.._crit_edge_crit_edge.i166
  %.pre-phi238 = phi i64 [ %wide.trip.count.i156, %._crit_edge.loopexit.i162 ], [ 0, %.preheader.._crit_edge_crit_edge.i166 ]
  %.pre-phi.i164 = phi i64 [ %i.jx, %._crit_edge.loopexit.i162 ], [ %.pre.i167, %.preheader.._crit_edge_crit_edge.i166 ]
  %.lcssa62.i165 = phi i32 [ %i.lb, %._crit_edge.loopexit.i162 ], [ 0, %.preheader.._crit_edge_crit_edge.i166 ]
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ld = add nuw nsw i32 %.lcssa62.i165, %i.ji
  %i.le = zext nneg i32 %i.ld to i64
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %i.le
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !36
  %i.lh = lshr i64 %i.lg, %.pre-phi.i164          ; 2 uses
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %.pre-phi238
  store i64 %i.lh, ptr %i.li, align 8, !tbaa !36
  %i.lj = icmp ne i64 %i.lh, 0
  %i.lk = zext i1 %i.lj to i16
  %i.ll = add i16 %i.jv, %i.lk
  br label %sp_rshb.exit168

sp_rshb.exit168.thread268:                        ; preds = %bb.ae, %bb.ad
  %.ph = phi i16 [ %i.du, %bb.ad ], [ %i.jj, %bb.ae ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store volatile i16 -1, ptr %i.a, align 2, !tbaa !46
  br label %.lr.ph.i170

sp_rshb.exit168:                                  ; preds = %bb.ag, %._crit_edge.i163
  %i.lm = phi i16 [ %i.ll, %._crit_edge.i163 ], [ %i.ko, %bb.ag ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store volatile i16 -1, ptr %i.a, align 2, !tbaa !46
  %.not.i169 = icmp eq i16 %i.lm, 0
  br i1 %.not.i169, label %sp_clamp_ct.exit, label %.lr.ph.i170

.lr.ph.i170:                                      ; preds = %sp_rshb.exit168.thread268, %sp_rshb.exit168
  %i.ln = phi i16 [ %.ph, %sp_rshb.exit168.thread268 ], [ %i.lm, %sp_rshb.exit168 ] ; 2 uses
  %i.lo = zext i16 %i.ln to i64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.lr.ph.i170
  %indvars.iv.i171 = phi i64 [ %i.lo, %.lr.ph.i170 ], [ %indvars.iv.next.i172, %bb.ah ] ; 3 uses
  %.01112.i = phi i16 [ %i.ln, %.lr.ph.i170 ], [ %i.lw, %bb.ah ]
  %indvars.iv.next.i172 = add nsw i64 %indvars.iv.i171, -1
  %i.lp = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.i171
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !36
  %i.lr = zext i64 %i.lq to i128
  %i.ls = add nuw nsw i128 %i.lr, 1208925819614629174706175
  %i.lt = lshr i128 %i.ls, 64
  %i.lu = trunc i128 %i.lt to i16
  %.0..0..0..0..0..0..i = load volatile i16, ptr %i.a, align 2, !tbaa !46
  %i.lv = and i16 %.0..0..0..0..0..0..i, %i.lu
  store volatile i16 %i.lv, ptr %i.a, align 2, !tbaa !46
  %.0..0..0..0..0..0.1.i = load volatile i16, ptr %i.a, align 2, !tbaa !46
  %i.lw = add i16 %.0..0..0..0..0..0.1.i, %.01112.i ; 2 uses
  %i.lx = icmp samesign ugt i64 %indvars.iv.i171, 1
  br i1 %i.lx, label %bb.ah, label %sp_clamp_ct.exit, !llvm.loop !20

sp_clamp_ct.exit:                                 ; preds = %bb.ah, %sp_rshb.exit168.thread, %sp_rshb.exit168
  %.011.lcssa.i = phi i16 [ 0, %sp_rshb.exit168 ], [ 0, %sp_rshb.exit168.thread ], [ %i.lw, %bb.ah ]
  store i16 %.011.lcssa.i, ptr %0, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ly = load i16, ptr %1, align 8, !tbaa !40
  %i.lz = zext i16 %i.ly to i32
  %i.ma = add nuw nsw i32 %i.lz, 1
  tail call fastcc void @_sp_submod_ct(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %1, i32 noundef %i.ma, ptr noundef nonnull %0)
  br label %_sp_cmp_abs.exit

_sp_cmp_abs.exit:                                 ; preds = %bb.z, %.split.loop.exit106.i, %._crit_edge.i147.thread, %bb.w, %sp_clamp_ct.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -98, 1) i32 @sp_mont_setup(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond.not = and i1 %i.a, %i.b
  br i1 %or.cond.not, label %bb.b, label %.thread14

bb.b:                                             ; preds = %bb.a
  %i.c = load i16, ptr %0, align 8, !tbaa !40
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %.thread14, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !36   ; 3 uses
  %i.f = and i64 %i.e, 1
  %.not10 = icmp eq i64 %i.f, 0
  br i1 %.not10, label %.thread14, label %.thread

.thread:                                          ; preds = %bb.c
  %i.g = mul i64 %i.e, 3
  %i.h = xor i64 %i.g, 2                          ; 2 uses
  %i.i = mul i64 %i.h, %i.e                       ; 2 uses
  %i.j = sub i64 1, %i.i                          ; 2 uses
  %i.k = sub i64 2, %i.i
  %i.l = mul i64 %i.k, %i.h
  %i.m = mul i64 %i.j, %i.j                       ; 3 uses
  %i.n = or disjoint i64 %i.m, 1
  %i.o = mul i64 %i.l, %i.n
  %i.p = mul i64 %i.m, %i.m                       ; 3 uses
  %i.q = add i64 %i.p, 1
  %i.r = mul i64 %i.o, %i.q
  %i.s = mul i64 %i.p, %i.p
  %.neg.i = xor i64 %i.s, -1
  %.neg19.i = mul i64 %i.r, %.neg.i
  store i64 %.neg19.i, ptr %1, align 8, !tbaa !36
  br label %.thread14

.thread14:                                        ; preds = %bb.a, %bb.c, %bb.b, %.thread
  %.012 = phi i32 [ 0, %.thread ], [ -98, %bb.c ], [ -98, %bb.b ], [ -98, %bb.a ]
  ret i32 %.012
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define range(i32 -98, 1) i32 @sp_mont_norm(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond.not = and i1 %i.a, %i.b
  br i1 %or.cond.not, label %bb.b, label %.thread62

bb.b:                                             ; preds = %bb.a
  %i.c = load i16, ptr %1, align 8, !tbaa !40     ; 2 uses
  %.not25.i = icmp eq i16 %i.c, 0
  br i1 %.not25.i, label %sp_count_bits.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = zext i16 %i.c to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.e = icmp sgt i64 %indvars.iv.i92, 1
  br i1 %i.e, label %bb.e, label %sp_count_bits.exit, !llvm.loop !2

bb.e:                                             ; preds = %bb.c, %bb.d
  %indvars.iv.i92 = phi i64 [ %i.d, %bb.c ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i92, -1 ; 2 uses
  %i.f = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.i92
  %i.g = load i64, ptr %i.f, align 8, !tbaa !36   ; 5 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.d, label %.critedge.i, !llvm.loop !2

.critedge.i:                                      ; preds = %bb.e
  %i.i = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.j = shl nuw nsw i32 %i.i, 6                  ; 2 uses
  %i.k = icmp ugt i64 %i.g, 4294967295
  br i1 %i.k, label %bb.f, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.critedge.i
  %i.l = tail call range(i64 32, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %reass.sub.i = add nuw nsw i32 %i.j, 64
  %i.n = sub nuw nsw i32 %reass.sub.i, %i.m
  br label %sp_count_bits.exit

bb.f:                                             ; preds = %.critedge.i
  %i.o = add nuw nsw i32 %i.j, 64                 ; 2 uses
  %i.p = icmp sgt i64 %i.g, -1
  br i1 %i.p, label %.lr.ph36.i, label %sp_count_bits.exit

.lr.ph36.i:                                       ; preds = %bb.f, %.lr.ph36.i
  %.035.i = phi i64 [ %i.r, %.lr.ph36.i ], [ %i.g, %bb.f ]
  %.234.i = phi i32 [ %i.q, %.lr.ph36.i ], [ %i.o, %bb.f ]
  %i.q = add nsw i32 %.234.i, -1                  ; 2 uses
  %i.r = shl nuw i64 %.035.i, 1                   ; 2 uses
  %i.s = icmp sgt i64 %i.r, -1
  br i1 %i.s, label %.lr.ph36.i, label %sp_count_bits.exit, !llvm.loop !3

sp_count_bits.exit:                               ; preds = %bb.d, %.lr.ph36.i, %bb.b, %.lr.ph.preheader.i, %bb.f
  %.5.i = phi i32 [ %i.o, %bb.f ], [ %i.q, %.lr.ph36.i ], [ %i.n, %.lr.ph.preheader.i ], [ 0, %bb.b ], [ 0, %bb.d ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.u = load i16, ptr %i.t, align 2, !tbaa !39   ; 3 uses
  %i.v = zext i16 %i.u to i32                     ; 2 uses
  %i.w = shl nuw nsw i32 %i.v, 6
  %.not = icmp ult i32 %.5.i, %i.w
  br i1 %.not, label %.thread, label %.thread62

.thread:                                          ; preds = %sp_count_bits.exit
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %.5.i, i32 64) ; 2 uses
  store volatile i16 0, ptr %0, align 8, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  store volatile i64 0, ptr %i.x, align 8, !tbaa !36
  %i.y = lshr i32 %spec.store.select, 6           ; 5 uses
  %i.z = icmp samesign ult i32 %.5.i, 8257
  %.not.i41 = icmp samesign ult i32 %i.y, %i.v
  %or.cond = select i1 %i.z, i1 %.not.i41, i1 false
  br i1 %or.cond, label %bb.g, label %.thread62

bb.g:                                             ; preds = %.thread
  %2 = and i32 %spec.store.select, 63
  %i.aa = shl nuw nsw i32 %i.y, 3
  %narrow.i = add nuw nsw i32 %i.aa, 8
  %i.ab = zext nneg i32 %narrow.i to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.x, i8 0, i64 %i.ab, i1 false), !tbaa !36
  %i.ac = zext nneg i32 %2 to i64
  %i.ad = shl nuw i64 1, %i.ac
  %i.ae = zext nneg i32 %i.y to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ae ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !36
  %i.ah = or i64 %i.ag, %i.ad
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !36
  %i.ai = trunc nuw i32 %i.y to i16               ; 3 uses
  %i.aj = add nuw nsw i16 %i.ai, 1                ; 2 uses
  store i16 %i.aj, ptr %0, align 8, !tbaa !40
  %.not70 = icmp ugt i16 %i.u, %i.ai
  br i1 %.not70, label %bb.h, label %.thread62

bb.h:                                             ; preds = %bb.g
  %i.ak = load i16, ptr %1, align 8, !tbaa !40    ; 2 uses
  %i.al = icmp ugt i16 %i.ak, %i.u
  br i1 %i.al, label %.thread62, label %.lr.ph64.i.i

.lr.ph64.i.i:                                     ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %wide.trip.count87.i.i = zext i16 %i.ak to i64  ; 2 uses
  %zext.i = zext nneg i16 %i.aj to i64            ; 6 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph64.i.i
  %indvars.iv82.i.i = phi i64 [ 0, %.lr.ph64.i.i ], [ %indvars.iv.next83.i.i, %bb.j ] ; 4 uses
  %.04963.i.i = phi i128 [ 0, %.lr.ph64.i.i ], [ %i.aw, %bb.j ] ; 2 uses
  %exitcond88.not.i.i = icmp eq i64 %indvars.iv82.i.i, %wide.trip.count87.i.i
  br i1 %exitcond88.not.i.i, label %.critedge2.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv82.i.i ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !36
  %i.ap = zext i64 %i.ao to i128
  %i.aq = add nsw i128 %.04963.i.i, %i.ap
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv82.i.i
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !36
  %i.at = zext i64 %i.as to i128
  %i.au = sub nsw i128 %i.aq, %i.at               ; 2 uses
  %i.av = trunc i128 %i.au to i64
  store i64 %i.av, ptr %i.an, align 8, !tbaa !36
  %i.aw = ashr i128 %i.au, 64                     ; 2 uses
  %indvars.iv.next83.i.i = add nuw nsw i64 %indvars.iv82.i.i, 1 ; 2 uses
  %i.ax = icmp eq i64 %indvars.iv.next83.i.i, %zext.i
  br i1 %i.ax, label %.critedge2.i.i, label %bb.i, !llvm.loop !17

.critedge2.i.i:                                   ; preds = %bb.j, %bb.i
  %.2.lcssa.ph.in.i.i = phi i64 [ %wide.trip.count87.i.i, %bb.i ], [ %zext.i, %bb.j ] ; 7 uses
  %.049.lcssa.ph.i.i = phi i128 [ %.04963.i.i, %bb.i ], [ %i.aw, %bb.j ] ; 2 uses
  %.2.lcssa.ph.i.i = trunc nuw i64 %.2.lcssa.ph.in.i.i to i16
  %.not71 = icmp ult i16 %i.ai, %.2.lcssa.ph.i.i
  br i1 %.not71, label %.preheader.i.i, label %.lr.ph74.i.i.preheader

.lr.ph74.i.i.preheader:                           ; preds = %.critedge2.i.i
  %i.ay = sub nsw i64 %zext.i, %.2.lcssa.ph.in.i.i
  %i.az = zext nneg i32 %i.y to i64
  %xtraiter = and i64 %i.ay, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph74.i.i.prol.loopexit, label %.lr.ph74.i.i.prol

.lr.ph74.i.i.prol:                                ; preds = %.lr.ph74.i.i.preheader
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.2.lcssa.ph.in.i.i ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !36
  %i.bc = zext i64 %i.bb to i128
  %i.bd = add nsw i128 %.049.lcssa.ph.i.i, %i.bc  ; 2 uses
  %i.be = trunc i128 %i.bd to i64
  store i64 %i.be, ptr %i.ba, align 8, !tbaa !36
  %i.bf = ashr i128 %i.bd, 64
  %indvars.iv.next91.i.i.prol = add nuw nsw i64 %.2.lcssa.ph.in.i.i, 1
  br label %.lr.ph74.i.i.prol.loopexit

.lr.ph74.i.i.prol.loopexit:                       ; preds = %.lr.ph74.i.i.prol, %.lr.ph74.i.i.preheader
  %indvars.iv90.i.i.unr = phi i64 [ %.2.lcssa.ph.in.i.i, %.lr.ph74.i.i.preheader ], [ %indvars.iv.next91.i.i.prol, %.lr.ph74.i.i.prol ]
  %.173.i.i.unr = phi i128 [ %.049.lcssa.ph.i.i, %.lr.ph74.i.i.preheader ], [ %i.bf, %.lr.ph74.i.i.prol ]
  %i.bg = icmp eq i64 %.2.lcssa.ph.in.i.i, %i.az
  br i1 %i.bg, label %.preheader.i.i, label %.lr.ph74.i.i

.lr.ph74.i.i:                                     ; preds = %.lr.ph74.i.i.prol.loopexit, %.lr.ph74.i.i
  %indvars.iv90.i.i = phi i64 [ %indvars.iv.next91.i.i.1, %.lr.ph74.i.i ], [ %indvars.iv90.i.i.unr, %.lr.ph74.i.i.prol.loopexit ] ; 3 uses
  %.173.i.i = phi i128 [ %i.bt, %.lr.ph74.i.i ], [ %.173.i.i.unr, %.lr.ph74.i.i.prol.loopexit ]
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv90.i.i ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !36
  %i.bj = zext i64 %i.bi to i128
  %i.bk = add nsw i128 %.173.i.i, %i.bj           ; 2 uses
  %i.bl = trunc i128 %i.bk to i64
  store i64 %i.bl, ptr %i.bh, align 8, !tbaa !36
  %i.bm = ashr i128 %i.bk, 64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv90.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !36
  %i.bq = zext i64 %i.bp to i128
  %i.br = add nsw i128 %i.bm, %i.bq               ; 2 uses
  %i.bs = trunc i128 %i.br to i64
  store i64 %i.bs, ptr %i.bo, align 8, !tbaa !36
  %i.bt = ashr i128 %i.br, 64
  %indvars.iv.next91.i.i.1 = add nuw nsw i64 %indvars.iv90.i.i, 2 ; 2 uses
  %exitcond94.not.i.i.1 = icmp eq i64 %indvars.iv.next91.i.i.1, %zext.i
  br i1 %exitcond94.not.i.i.1, label %.preheader.i.i, label %.lr.ph74.i.i, !llvm.loop !18

.preheader.i.i:                                   ; preds = %.lr.ph74.i.i.prol.loopexit, %.lr.ph74.i.i, %.critedge2.i.i
  %.pre-phi.i = phi i64 [ %.2.lcssa.ph.in.i.i, %.critedge2.i.i ], [ %zext.i, %.lr.ph74.i.i ], [ %zext.i, %.lr.ph74.i.i.prol.loopexit ] ; 2 uses
  %i.bu = icmp sgt i64 %.pre-phi.i, 0
  br i1 %i.bu, label %.lr.ph, label %sp_set_bit.exit

bb.k:                                             ; preds = %.lr.ph
  %indvars.iv.next96.i.i = add nsw i64 %indvars.iv95.i.i93, -1
  %i.bv = icmp sgt i64 %indvars.iv95.i.i93, 1
  br i1 %i.bv, label %.lr.ph, label %sp_set_bit.exit, !llvm.loop !19

.lr.ph:                                           ; preds = %.preheader.i.i, %bb.k
  %indvars.iv95.i.i93 = phi i64 [ %indvars.iv.next96.i.i, %bb.k ], [ %.pre-phi.i, %.preheader.i.i ] ; 4 uses
  %i.bw = getelementptr [8 x i8], ptr %0, i64 %indvars.iv95.i.i93
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !36
  %.not56.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not56.i.i, label %bb.k, label %.split.loop.exit.i.i, !llvm.loop !19

.split.loop.exit.i.i:                             ; preds = %.lr.ph
  %i.by = trunc i64 %indvars.iv95.i.i93 to i16
  br label %sp_set_bit.exit

sp_set_bit.exit:                                  ; preds = %bb.k, %.preheader.i.i, %.split.loop.exit.i.i
  %.pr = phi i16 [ %i.by, %.split.loop.exit.i.i ], [ 0, %.preheader.i.i ], [ 0, %bb.k ] ; 3 uses
  store i16 %.pr, ptr %0, align 8, !tbaa !40
  %i.bz = icmp ult i32 %.5.i, 65
  br i1 %i.bz, label %.split, label %bb.l

.split:                                           ; preds = %sp_set_bit.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !36
  %i.cc = load i64, ptr %i.x, align 8, !tbaa !36
  %i.cd = urem i64 %i.cc, %i.cb
  store i64 %i.cd, ptr %i.x, align 8, !tbaa !36
  br label %bb.l

bb.l:                                             ; preds = %sp_set_bit.exit, %.split
  %.not38 = icmp eq i16 %.pr, 0
  br i1 %.not38, label %.thread62, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ce = zext i16 %.pr to i64
  br label %bb.o

bb.n:                                             ; preds = %bb.o
  %indvars.iv.next = add nsw i64 %indvars.iv94, -1
  %i.cf = icmp sgt i64 %indvars.iv94, 1
  br i1 %i.cf, label %bb.o, label %.split.loop.exit86, !llvm.loop !175

bb.o:                                             ; preds = %bb.m, %bb.n
  %indvars.iv94 = phi i64 [ %i.ce, %bb.m ], [ %indvars.iv.next, %bb.n ] ; 4 uses
  %i.cg = getelementptr [8 x i8], ptr %0, i64 %indvars.iv94
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !36
  %.not39 = icmp eq i64 %i.ch, 0
  br i1 %.not39, label %bb.n, label %.split.loop.exit, !llvm.loop !175

.split.loop.exit:                                 ; preds = %bb.o
  %i.ci = trunc i64 %indvars.iv94 to i16
  br label %.split.loop.exit86

.split.loop.exit86:                               ; preds = %bb.n, %.split.loop.exit
  %.0.in.lcssa = phi i16 [ %i.ci, %.split.loop.exit ], [ 0, %bb.n ]
  store i16 %.0.in.lcssa, ptr %0, align 8, !tbaa !40
  br label %.thread62

.thread62:                                        ; preds = %bb.a, %bb.h, %bb.g, %.thread, %sp_count_bits.exit, %bb.l, %.split.loop.exit86
  %.36164 = phi i32 [ -98, %sp_count_bits.exit ], [ 0, %bb.l ], [ 0, %.split.loop.exit86 ], [ -98, %.thread ], [ -98, %bb.g ], [ -98, %bb.h ], [ -98, %bb.a ]
  ret i32 %.36164
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 -268435456, 268435456) i32 @sp_unsigned_bin_size(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i16, ptr %0, align 8, !tbaa !40     ; 2 uses
  %.not25.i = icmp eq i16 %i.a, 0
  br i1 %.not25.i, label %sp_count_bits.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = zext i16 %i.a to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.c = icmp sgt i64 %indvars.iv.i14, 1
  br i1 %i.c, label %bb.e, label %sp_count_bits.exit, !llvm.loop !2

bb.e:                                             ; preds = %bb.c, %bb.d
  %indvars.iv.i14 = phi i64 [ %i.b, %bb.c ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i14, -1 ; 2 uses
  %i.d = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.i14
  %i.e = load i64, ptr %i.d, align 8, !tbaa !36   ; 5 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.d, label %.critedge.i, !llvm.loop !2

.critedge.i:                                      ; preds = %bb.e
  %i.g = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.h = shl nuw nsw i32 %i.g, 6                  ; 2 uses
  %i.i = icmp ugt i64 %i.e, 4294967295
  br i1 %i.i, label %bb.f, label %.lr.ph.preheader.i
end_hunk_6
