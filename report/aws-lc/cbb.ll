Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/cbb?download=true
inline.NumInlined: 69
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@CBB_data:bb.a
bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.l, %bb.b ], [ %i.d, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i64 @CBB_len(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !12
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i8, ptr %i.i, align 8, !tbaa !14
  %i.k = zext i8 %i.j to i64
  %i.l = add i64 %i.h, %i.k
  %i.m = sub i64 %i.f, %i.l
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.m, %bb.b ], [ %i.o, %bb.c ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CBB_add_u8_length_prefixed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc i32 @cbb_add_length_prefixed(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @cbb_add_length_prefixed(ptr noundef %0, ptr noundef %1, i8 noundef zeroext range(i8 1, 4) %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @CBB_flush(ptr noundef %0)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %cbb_add_child.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !12
  %.not.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.e, %bb.c ], [ %i.d, %bb.b ] ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !20   ; 4 uses
  %i.h = zext nneg i8 %2 to i64                   ; 3 uses
  %i.i = add i64 %i.g, %i.h                       ; 5 uses
  %i.j = icmp ult i64 %i.i, %i.g
  br i1 %i.j, label %.sink.split.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !23   ; 3 uses
  %i.m = icmp ugt i64 %i.i, %i.l
  br i1 %i.m, label %bb.f, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.e
  %.pre.i = load ptr, ptr %.0.i.i, align 8, !tbaa !21
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.o = load i8, ptr %i.n, align 8
  %i.p = and i8 %i.o, 1
  %.not.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i, label %.sink.split.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = icmp slt i64 %i.l, 0
  %i.r = shl i64 %i.l, 1
  %i.s = tail call i64 @llvm.umax.i64(i64 %i.r, i64 %i.i)
  %.027.i.i.i = select i1 %i.q, i64 %i.i, i64 %i.s ; 2 uses
  %i.t = load ptr, ptr %.0.i.i, align 8, !tbaa !21
  %i.u = tail call ptr @OPENSSL_realloc(ptr noundef %i.t, i64 noundef %.027.i.i.i) #9 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %cbb_buffer_add.exit.thread.i, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.g
  store ptr %i.u, ptr %.0.i.i, align 8, !tbaa !21
  store i64 %.027.i.i.i, ptr %i.k, align 8, !tbaa !23
  %.pre.pre.i.i = load i64, ptr %i.f, align 8, !tbaa !20 ; 2 uses
  %.pre22.i = add i64 %.pre.pre.i.i, %i.h
  br label %bb.h

.sink.split.i.i.i:                                ; preds = %bb.f, %bb.d
  %.sink.i.i.i = phi i32 [ 70, %bb.d ], [ 76, %bb.f ]
  tail call void @ERR_put_error(i32 noundef 14, i32 noundef 0, i32 noundef 69, ptr noundef nonnull @.str, i32 noundef %.sink.i.i.i) #9
  br label %cbb_buffer_add.exit.thread.i

cbb_buffer_add.exit.thread.i:                     ; preds = %.sink.split.i.i.i, %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8
  %i.y = or i8 %i.x, 2
  store i8 %i.y, ptr %i.w, align 8
  br label %cbb_add_child.exit

bb.h:                                             ; preds = %.thread.i.i.i, %._crit_edge.i
  %.pre-phi.i = phi i64 [ %i.i, %._crit_edge.i ], [ %.pre22.i, %.thread.i.i.i ]
  %i.z = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.u, %.thread.i.i.i ]
  %.pre.i.i = phi i64 [ %i.g, %._crit_edge.i ], [ %.pre.pre.i.i, %.thread.i.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %.pre.i.i
  store i64 %.pre-phi.i, ptr %i.f, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aa, i8 0, i64 %i.h, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %1, i8 0, i64 48, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 1, ptr %i.ab, align 8, !tbaa !12
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.0.i.i, ptr %i.ac, align 8, !tbaa !14
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.g, ptr %i.ad, align 8, !tbaa !14
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i8 %2, ptr %i.ae, align 8, !tbaa !14
  store ptr %1, ptr %0, align 8, !tbaa !13
  br label %cbb_add_child.exit

cbb_add_child.exit:                               ; preds = %bb.h, %cbb_buffer_add.exit.thread.i, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.h ], [ 0, %cbb_buffer_add.exit.thread.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CBB_add_u16_length_prefixed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc i32 @cbb_add_length_prefixed(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 2)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CBB_add_u24_length_prefixed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc i32 @cbb_add_length_prefixed(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 3)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CBB_add_asn1(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = tail call i32 @CBB_flush(ptr noundef %0)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %cbb_add_child.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i32 %2, 24                          ; 2 uses
  %i.f = and i32 %2, 536870911                    ; 6 uses
  %i.g = icmp samesign ugt i32 %i.f, 30
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.h = call i32 @CBB_add_space(ptr noundef %0, ptr noundef nonnull %i.c, i64 noundef 1)
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %CBB_add_u8.exit.thread, label %.lr.ph.i

CBB_add_u8.exit.thread:                           ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %cbb_add_child.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.i = trunc nuw i32 %i.e to i8
  %i.j = or i8 %i.i, 31
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !16
  store i8 %i.j, ptr %i.k, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  %i.l = zext nneg i32 %i.f to i64
  %.not.i = icmp samesign ult i32 %i.f, 128
  br i1 %.not.i, label %.lr.ph39.i.preheader, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %.not.i.1 = icmp samesign ult i32 %i.f, 16384
  br i1 %.not.i.1, label %.lr.ph39.i.preheader, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %.not.i.2 = icmp samesign ult i32 %i.f, 2097152
  br i1 %.not.i.2, label %.lr.ph39.i.preheader, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %.not.i.3 = icmp samesign ult i32 %i.f, 268435456
  %spec.select.a = select i1 %.not.i.3, i32 3, i32 4
  br label %.lr.ph39.i.preheader

.lr.ph39.i.preheader:                             ; preds = %.lr.ph.i.3, %.lr.ph.i.2, %.lr.ph.i.1, %.lr.ph.i
  %.02132.i.lcssa.a = phi i32 [ 0, %.lr.ph.i ], [ 1, %.lr.ph.i.1 ], [ 2, %.lr.ph.i.2 ], [ %spec.select.a, %.lr.ph.i.3 ] ; 2 uses
  br label %.lr.ph39.i

.lr.ph39.i:                                       ; preds = %.lr.ph39.i.preheader, %CBB_add_u8.exit.i
  %.01936.i = phi i32 [ %.019.i, %CBB_add_u8.exit.i ], [ %.02132.i.lcssa.a, %.lr.ph39.i.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.m = call i32 @CBB_add_space(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef 1)
  %.not.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i, label %add_base128_integer.exit.thread, label %CBB_add_u8.exit.i

add_base128_integer.exit.thread:                  ; preds = %.lr.ph39.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %cbb_add_child.exit

CBB_add_u8.exit.i:                                ; preds = %.lr.ph39.i
  %.not24.i = icmp eq i32 %.01936.i, 0
  %i.n = mul i32 %.01936.i, 7
  %i.o = zext nneg i32 %i.n to i64
  %i.p = lshr i64 %i.l, %i.o
  %i.q = trunc i64 %i.p to i8
  %i.r = and i8 %i.q, 127
  %masksel.i = select i1 %.not24.i, i8 0, i8 -128
  %.0.i = or disjoint i8 %i.r, %masksel.i
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !16
  store i8 %.0.i, ptr %i.s, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %.019.i = add nsw i32 %.01936.i, -1             ; 2 uses
  %.not26.not.i.not = icmp ugt i32 %.019.i, %.02132.i.lcssa.a
  br i1 %.not26.not.i.not, label %add_base128_integer.exit, label %.lr.ph39.i, !llvm.loop !0

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.t = call i32 @CBB_add_space(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 1)
  %.not.i.i18 = icmp eq i32 %i.t, 0
  br i1 %.not.i.i18, label %CBB_add_u8.exit21.thread, label %CBB_add_u8.exit21

CBB_add_u8.exit21.thread:                         ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %cbb_add_child.exit

CBB_add_u8.exit21:                                ; preds = %bb.d
  %i.u = and i32 %i.e, 224
  %i.v = or i32 %i.u, %2
  %i.w = trunc i32 %i.v to i8
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !16
  store i8 %i.w, ptr %i.x, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %add_base128_integer.exit

add_base128_integer.exit:                         ; preds = %CBB_add_u8.exit.i, %CBB_add_u8.exit21
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load i8, ptr %i.y, align 8, !tbaa !12
  %.not.i.i22 = icmp eq i8 %i.z, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %.not.i.i22, label %bb.f, label %bb.e

bb.e:                                             ; preds = %add_base128_integer.exit
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %add_base128_integer.exit
  %.0.i.i = phi ptr [ %i.ab, %bb.e ], [ %i.aa, %add_base128_integer.exit ] ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !20 ; 4 uses
  %i.ae = add i64 %i.ad, 1                        ; 4 uses
  %i.af = icmp eq i64 %i.ad, -1
  br i1 %i.af, label %.sink.split.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !23 ; 3 uses
  %i.ai = icmp ugt i64 %i.ae, %i.ah
  br i1 %i.ai, label %bb.h, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.g
  %.pre.i = load ptr, ptr %.0.i.i, align 8, !tbaa !21
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.ak = load i8, ptr %i.aj, align 8
  %i.al = and i8 %i.ak, 1
  %.not.i.i.i24 = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i24, label %.sink.split.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = icmp slt i64 %i.ah, 0
  %i.an = shl i64 %i.ah, 1
  %i.ao = call i64 @llvm.umax.i64(i64 %i.an, i64 %i.ae)
  %.027.i.i.i = select i1 %i.am, i64 %i.ae, i64 %i.ao ; 2 uses
  %i.ap = load ptr, ptr %.0.i.i, align 8, !tbaa !21
  %i.aq = call ptr @OPENSSL_realloc(ptr noundef %i.ap, i64 noundef %.027.i.i.i) #9 ; 3 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %cbb_buffer_add.exit.thread.i, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.i
  store ptr %i.aq, ptr %.0.i.i, align 8, !tbaa !21
  store i64 %.027.i.i.i, ptr %i.ag, align 8, !tbaa !23
  %.pre.pre.i.i = load i64, ptr %i.ac, align 8, !tbaa !20 ; 2 uses
  %.pre22.i = add i64 %.pre.pre.i.i, 1
  br label %bb.j

.sink.split.i.i.i:                                ; preds = %bb.h, %bb.f
  %.sink.i.i.i = phi i32 [ 70, %bb.f ], [ 76, %bb.h ]
  call void @ERR_put_error(i32 noundef 14, i32 noundef 0, i32 noundef 69, ptr noundef nonnull @.str, i32 noundef %.sink.i.i.i) #9
  br label %cbb_buffer_add.exit.thread.i

cbb_buffer_add.exit.thread.i:                     ; preds = %.sink.split.i.i.i, %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24 ; 2 uses
  %i.at = load i8, ptr %i.as, align 8
  %i.au = or i8 %i.at, 2
  store i8 %i.au, ptr %i.as, align 8
  br label %cbb_add_child.exit

bb.j:                                             ; preds = %.thread.i.i.i, %._crit_edge.i
  %.pre-phi.i = phi i64 [ %i.ae, %._crit_edge.i ], [ %.pre22.i, %.thread.i.i.i ]
  %i.av = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.aq, %.thread.i.i.i ]
  %.pre.i.i = phi i64 [ %i.ad, %._crit_edge.i ], [ %.pre.pre.i.i, %.thread.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %.pre.i.i
  store i64 %.pre-phi.i, ptr %i.ac, align 8, !tbaa !20
  store i8 0, ptr %i.aw, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %1, i8 0, i64 48, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 1, ptr %i.ax, align 8, !tbaa !12
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.0.i.i, ptr %i.ay, align 8, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.ad, ptr %i.az, align 8, !tbaa !14
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i8 1, ptr %i.ba, align 8, !tbaa !14
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 33
  store i8 1, ptr %i.bb, align 1
  store ptr %1, ptr %0, align 8, !tbaa !13
  br label %cbb_add_child.exit

cbb_add_child.exit:                               ; preds = %bb.j, %cbb_buffer_add.exit.thread.i, %CBB_add_u8.exit21.thread, %add_base128_integer.exit.thread, %CBB_add_u8.exit.thread, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %CBB_add_u8.exit21.thread ], [ 0, %CBB_add_u8.exit.thread ], [ 0, %add_base128_integer.exit.thread ], [ 1, %bb.j ], [ 0, %cbb_buffer_add.exit.thread.i ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CBB_add_u8(ptr nofree noundef captures(address_is_null) %0, i8 noundef zeroext %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = call i32 @CBB_add_space(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 1)
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %cbb_add_u.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !16
  store i8 %1, ptr %i.c, align 1, !tbaa !14
  br label %cbb_add_u.exit

cbb_add_u.exit:                                   ; preds = %.lr.ph.i, %bb.a
  %.011.i = phi i32 [ 1, %.lr.ph.i ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.011.i
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CBB_add_bytes(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = call i32 @CBB_add_space(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %2)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %OPENSSL_memcpy.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %OPENSSL_memcpy.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.d, ptr readonly align 1 %1, i64 %2, i1 false)
  br label %OPENSSL_memcpy.exit

OPENSSL_memcpy.exit:                              ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ 1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CBB_add_space(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @CBB_flush(ptr noundef %0)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !12
  %.not.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %.not.i, label %cbb_get_base.exit.thread, label %cbb_get_base.exit

cbb_get_base.exit:                                ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.i, label %cbb_get_base.exit.thread

cbb_get_base.exit.thread:                         ; preds = %bb.b, %cbb_get_base.exit
  %.0.i7 = phi ptr [ %i.e, %cbb_get_base.exit ], [ %i.d, %bb.b ] ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i7, i64 8 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !20   ; 3 uses
  %i.i = add i64 %i.h, %2                         ; 4 uses
  %i.j = icmp ult i64 %i.i, %i.h
  br i1 %i.j, label %.sink.split.i.i, label %bb.c

bb.c:                                             ; preds = %cbb_get_base.exit.thread
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i7, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !23   ; 3 uses
  %i.m = icmp ugt i64 %i.i, %i.l
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i7, i64 24
  %i.o = load i8, ptr %i.n, align 8
  %i.p = and i8 %i.o, 1
  %.not.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i, label %.sink.split.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = icmp slt i64 %i.l, 0
  %i.r = shl i64 %i.l, 1
  %i.s = tail call i64 @llvm.umax.i64(i64 %i.r, i64 %i.i)
  %.027.i.i = select i1 %i.q, i64 %i.i, i64 %i.s  ; 2 uses
end_hunk_0
