Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/nbtreadpage?download=true
inline.NumInlined: 114
inline.NumDeleted: 42
begin_hunk_0_@index_getattr:bb.a
  ]

bb.e:                                             ; preds = %.split.i
  %i.t = load i8, ptr %i.j, align 1
  %i.u = sext i8 %i.t to i64
  br label %fetch_att.exit

bb.f:                                             ; preds = %.split.i
  %i.v = load i16, ptr %i.j, align 2
  %i.w = sext i16 %i.v to i64
  br label %fetch_att.exit

bb.g:                                             ; preds = %.split.i
  %i.x = load i32, ptr %i.j, align 4
  %i.y = sext i32 %i.x to i64
  br label %fetch_att.exit

bb.h:                                             ; preds = %.split.i
  %i.z = load i64, ptr %i.j, align 8
  br label %fetch_att.exit

bb.i:                                             ; preds = %.split.i, %bb.d
  %i.aa = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.ab = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str, i32 noundef range(i32 -32768, 32768) %i.p) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 123, ptr noundef nonnull @__func__.fetch_att) #7
  unreachable

bb.j:                                             ; preds = %bb.c
  %i.ac = ptrtoint ptr %i.j to i64
  br label %fetch_att.exit

bb.k:                                             ; preds = %bb.b
  %i.ad = tail call i64 @nocache_index_getattr(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %2) #7
  br label %fetch_att.exit

bb.l:                                             ; preds = %bb.a
  %i.ae = add nsw i32 %1, -1                      ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = ashr i32 %i.ae, 3
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = zext i8 %i.aj to i32
  %i.al = and i32 %i.ae, 7
  %i.am = shl nuw nsw i32 1, %i.al
  %i.an = and i32 %i.am, %i.ak
  %.not.i19 = icmp eq i32 %i.an, 0
  br i1 %.not.i19, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i8 1, ptr %3, align 1
  br label %fetch_att.exit

bb.n:                                             ; preds = %bb.l
  %i.ao = tail call i64 @nocache_index_getattr(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2) #7
  br label %fetch_att.exit

fetch_att.exit:                                   ; preds = %bb.j, %bb.h, %bb.g, %bb.f, %bb.e, %bb.k, %bb.n, %bb.m
  %.1 = phi i64 [ 0, %bb.m ], [ %i.ao, %bb.n ], [ %i.ad, %bb.k ], [ %i.u, %bb.e ], [ %i.w, %bb.f ], [ %i.y, %bb.g ], [ %i.z, %bb.h ], [ %i.ac, %bb.j ]
  ret i64 %.1
}

declare i64 @FunctionCall2Coll(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @_bt_binsrch_skiparray_skey(i1 noundef zeroext %0, i32 noundef %1, i64 noundef %2, i1 noundef zeroext %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %6) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 23
  %i.b = load i8, ptr %i.a, align 1, !range !4, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %5, align 8
  %i.e = and i32 %i.d, 33554432
  %.not39 = icmp eq i32 %i.e, 0
  %. = select i1 %.not39, i32 1, i32 -1
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  store i32 0, ptr %6, align 4
  %i.f = icmp eq i32 %1, 1
  br i1 %i.f, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  br i1 %0, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = load ptr, ptr %i.g, align 8              ; 4 uses
  %.not37 = icmp eq ptr %i.h, null
  br i1 %.not37, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.k = load i32, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.m = load i64, ptr %i.l, align 8
  %i.n = tail call i64 @FunctionCall2Coll(ptr noundef nonnull %i.i, i32 noundef %i.k, i64 noundef %2, i64 noundef %i.m) #7
  %.not42 = icmp eq i64 %i.n, 0
  br i1 %.not42, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.p = load ptr, ptr %i.o, align 8              ; 4 uses
  %.not38 = icmp eq ptr %i.p, null
  br i1 %.not38, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.s = load i32, ptr %i.r, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.u = load i64, ptr %i.t, align 8
  %i.v = tail call i64 @FunctionCall2Coll(ptr noundef nonnull %i.q, i32 noundef %i.s, i64 noundef %2, i64 noundef %i.u) #7
  %.not43 = icmp eq i64 %i.v, 0
  br i1 %.not43, label %.sink.split, label %bb.o

bb.j:                                             ; preds = %bb.d
  br i1 %0, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.x = load ptr, ptr %i.w, align 8              ; 4 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = tail call i64 @FunctionCall2Coll(ptr noundef nonnull %i.y, i32 noundef %i.aa, i64 noundef %2, i64 noundef %i.ac) #7
  %.not40 = icmp eq i64 %i.ad, 0
  br i1 %.not40, label %.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.af = load ptr, ptr %i.ae, align 8            ; 4 uses
  %.not36 = icmp eq ptr %i.af, null
  br i1 %.not36, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = tail call i64 @FunctionCall2Coll(ptr noundef nonnull %i.ag, i32 noundef %i.ai, i64 noundef %2, i64 noundef %i.ak) #7
  %.not41 = icmp eq i64 %i.al, 0
  br i1 %.not41, label %.sink.split, label %bb.o

.sink.split:                                      ; preds = %bb.n, %bb.l, %bb.i, %bb.g, %bb.c, %bb.a
  %.sink = phi i32 [ 1, %bb.i ], [ 1, %bb.l ], [ 0, %bb.a ], [ -1, %bb.g ], [ %., %bb.c ], [ -1, %bb.n ]
  store i32 %.sink, ptr %6, align 4
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.n, %bb.m, %bb.i, %bb.h
  ret void
}

declare i64 @nocache_index_getattr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #2

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @_bt_tuple_before_array_skeys(ptr nofree readonly captures(none) %.56.val, i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 -32768, 32768) %3, i1 noundef zeroext %4, i32 noundef %5, ptr nofree noundef writeonly captures(address_is_null) %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %.not = icmp eq ptr %6, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %6, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.56.val, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %.not6511 = icmp slt i32 %5, %i.d
  br i1 %.not6511, label %.lr.ph14, label %.loopexit

.lr.ph14:                                         ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.56.val, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %.56.val, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %.56.val, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %.56.val, i64 32
  %i.i = icmp eq i32 %0, 1
  %i.j = icmp eq i32 %0, -1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph14, %bb.v
  %i.k = phi i32 [ %i.d, %.lr.ph14 ], [ %i.bj, %bb.v ]
  %.05312 = phi i32 [ %5, %.lr.ph14 ], [ %8, %bb.v ] ; 3 uses
  %i.l = load ptr, ptr %i.e, align 8
  %7 = sext i32 %.05312 to i64                    ; 2 uses
  %i.m = getelementptr inbounds [72 x i8], ptr %i.l, i64 %7 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.n = load i32, ptr %i.m, align 8
  %i.o = and i32 %i.n, 196608
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.r = load i16, ptr %i.q, align 4
  %i.s = sext i16 %i.r to i32                     ; 2 uses
  %i.t = icmp slt i32 %3, %i.s
  br i1 %i.t, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %6, align 1
  br label %.thread

bb.h:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 6
  %i.v = load i16, ptr %i.u, align 2
  %.not60 = icmp eq i16 %i.v, 3
  br i1 %.not60, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %4, label %.thread, label %bb.v

bb.j:                                             ; preds = %bb.h
  %i.w = call fastcc i64 @index_getattr(ptr noundef %1, i32 noundef %i.s, ptr noundef %2, ptr noundef %i.a) ; 2 uses
  %i.x = load i32, ptr %i.m, align 8              ; 5 uses
  %i.y = and i32 %i.x, 1572864
  %.not61 = icmp eq i32 %i.y, 0
  br i1 %.not61, label %bb.k, label %.preheader, !prof !16

.preheader:                                       ; preds = %bb.j
  %i.z = load i32, ptr %i.g, align 8              ; 2 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.ab = load ptr, ptr %i.f, align 8
  %i.ac = zext nneg i32 %i.z to i64
  br label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.ad = load ptr, ptr %i.h, align 8
  %i.ae = getelementptr inbounds [48 x i8], ptr %i.ad, i64 %7
  %i.af = load i8, ptr %i.a, align 1, !range !4, !noundef !5
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = and i32 %i.x, 1
  %.not14.i = icmp eq i32 %i.aj, 0                ; 2 uses
  br i1 %i.ag, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  br i1 %.not14.i, label %bb.m, label %_bt_compare_array_skey.exit.thread2

_bt_compare_array_skey.exit.thread2:              ; preds = %bb.l
  store i32 0, ptr %i.b, align 4
  br label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.ak = and i32 %i.x, 33554432
  %.not15.i = icmp eq i32 %i.ak, 0
  %..i = select i1 %.not15.i, i32 1, i32 -1
  br label %_bt_compare_array_skey.exit.thread

bb.n:                                             ; preds = %bb.k
  br i1 %.not14.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = and i32 %i.x, 33554432
  %.not13.i = icmp eq i32 %i.al, 0
  %.16.i = select i1 %.not13.i, i32 -1, i32 1
  br label %_bt_compare_array_skey.exit.thread

bb.p:                                             ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = tail call i64 @FunctionCall2Coll(ptr noundef %i.ae, i32 noundef %i.an, i64 noundef %i.w, i64 noundef %i.ai) #7
  %i.ap = trunc i64 %i.ao to i32                  ; 3 uses
  %i.aq = load i32, ptr %i.m, align 8             ; 2 uses
  %i.ar = and i32 %i.aq, 16777216
  %.not12.i = icmp eq i32 %i.ar, 0
  br i1 %.not12.i, label %_bt_compare_array_skey.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = icmp slt i32 %i.ap, 0
  %i.at = sub nsw i32 0, %i.ap
  br i1 %i.as, label %_bt_compare_array_skey.exit.thread, label %_bt_compare_array_skey.exit

_bt_compare_array_skey.exit:                      ; preds = %bb.q, %bb.p
  %.0.i = phi i32 [ %i.ap, %bb.p ], [ %i.at, %bb.q ] ; 2 uses
  %i.au = icmp eq i32 %.0.i, 0
  br i1 %i.au, label %bb.r, label %_bt_compare_array_skey.exit.thread

bb.r:                                             ; preds = %_bt_compare_array_skey.exit.thread2, %_bt_compare_array_skey.exit
  %i.av = phi i32 [ %i.x, %_bt_compare_array_skey.exit.thread2 ], [ %i.aq, %_bt_compare_array_skey.exit ] ; 2 uses
  %i.aw = and i32 %i.av, 2097152
  %.not63 = icmp eq i32 %i.aw, 0
  br i1 %.not63, label %bb.s, label %_bt_compare_array_skey.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.ax = lshr i32 %i.av, 22
  %.lobit = and i32 %i.ax, 1
  br label %_bt_compare_array_skey.exit.thread

bb.t:                                             ; preds = %bb.t, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.t ], [ 0, %.lr.ph ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [48 x i8], ptr %i.ab, i64 %indvars.iv ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = icmp ne i32 %i.az, %.05312
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bb = icmp samesign ult i64 %indvars.iv.next, %i.ac
  %or.cond16 = select i1 %i.ba, i1 %i.bb, i1 false
  br i1 %or.cond16, label %bb.t, label %._crit_edge, !llvm.loop !17

._crit_edge:                                      ; preds = %bb.t, %.preheader
  %.1 = phi ptr [ null, %.preheader ], [ %i.ay, %bb.t ]
  %i.bc = load i8, ptr %i.a, align 1, !range !4, !noundef !5
  %i.bd = trunc nuw i8 %i.bc to i1
  call fastcc void @_bt_binsrch_skiparray_skey(i1 noundef zeroext false, i32 noundef %0, i64 noundef %i.w, i1 noundef zeroext %i.bd, ptr noundef %.1, ptr noundef nonnull %i.m, ptr noundef %i.b)
  %i.be = load i32, ptr %i.b, align 4             ; 2 uses
  %.not62 = icmp eq i32 %i.be, 0
  br i1 %.not62, label %.thread, label %_bt_compare_array_skey.exit.thread

_bt_compare_array_skey.exit.thread:               ; preds = %bb.s, %bb.r, %bb.q, %bb.o, %bb.m, %._crit_edge, %_bt_compare_array_skey.exit
  %i.bf = phi i32 [ 1, %bb.q ], [ %i.be, %._crit_edge ], [ %.0.i, %_bt_compare_array_skey.exit ], [ %.lobit, %bb.s ], [ -1, %bb.r ], [ %..i, %bb.m ], [ %.16.i, %bb.o ] ; 3 uses
  %i.bg = icmp slt i32 %i.bf, 0
  %or.cond = and i1 %i.i, %i.bg
  %i.bh = icmp sgt i32 %i.bf, 0
  %or.cond4 = and i1 %i.j, %i.bh
  %or.cond15 = or i1 %or.cond, %or.cond4
  br i1 %or.cond15, label %.thread, label %bb.u

bb.u:                                             ; preds = %_bt_compare_array_skey.exit.thread
  %i.bi = icmp ne i32 %i.bf, 0
  %or.cond6 = or i1 %4, %i.bi
  br i1 %or.cond6, label %.thread, label %._crit_edge18

._crit_edge18:                                    ; preds = %bb.u
  %.pre = load i32, ptr %i.c, align 4
  br label %bb.v

.thread:                                          ; preds = %._crit_edge, %bb.d, %_bt_compare_array_skey.exit.thread, %bb.i, %bb.u, %bb.f, %bb.g
  %.3.ph = phi i1 [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.u ], [ false, %bb.d ], [ true, %_bt_compare_array_skey.exit.thread ], [ false, %bb.i ], [ false, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %.loopexit

bb.v:                                             ; preds = %._crit_edge18, %bb.i
  %i.bj = phi i32 [ %.pre, %._crit_edge18 ], [ %i.k, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %8 = add nsw i32 %.05312, 1                     ; 2 uses
  %.not65 = icmp slt i32 %8, %i.bj
  br i1 %.not65, label %bb.d, label %.loopexit, !llvm.loop !18

.loopexit:                                        ; preds = %bb.v, %bb.c, %.thread
  %.4 = phi i1 [ %.3.ph, %.thread ], [ false, %bb.c ], [ false, %bb.v ]
  ret i1 %.4
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @_bt_check_compare(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef range(i32 -32768, 32768) %3, ptr noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 1)) %7, ptr nofree noundef nonnull captures(none) %8) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 8 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  store i8 1, ptr %7, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.f = load i32, ptr %8, align 4                ; 2 uses
  %i.g = load i32, ptr %i.e, align 4
  %i.h = icmp slt i32 %i.f, %i.g
  br i1 %i.h, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = icmp eq i32 %1, 1                        ; 6 uses
  %i.k = icmp eq i32 %1, -1                       ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.az
  %i.l = phi i32 [ %i.f, %.lr.ph ], [ %i.do, %bb.az ] ; 2 uses
  %i.m = load ptr, ptr %i.i, align 8
  %i.n = sext i32 %i.l to i64
  %i.o = getelementptr inbounds [72 x i8], ptr %i.m, i64 %i.n ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  br i1 %6, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load i32, ptr %i.o, align 8              ; 2 uses
  %i.q = and i32 %i.p, 65536
  %i.r = icmp ne i32 %i.q, 0                      ; 2 uses
  %or.cond = and i1 %i.j, %i.r
  br i1 %or.cond, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = and i32 %i.p, 131072
  %i.t = icmp ne i32 %i.s, 0                      ; 2 uses
  %or.cond3 = and i1 %i.k, %i.t
  br i1 %or.cond3, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %or.cond5 = and i1 %i.k, %i.r
  %or.cond7 = and i1 %i.j, %i.t
  %or.cond100 = or i1 %or.cond5, %or.cond7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.d, %bb.b
  %.089 = phi i1 [ false, %bb.b ], [ false, %bb.e ], [ true, %bb.c ], [ true, %bb.d ] ; 2 uses
  %.088 = phi i1 [ false, %bb.b ], [ %or.cond100, %bb.e ], [ true, %bb.c ], [ true, %bb.d ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.v = load i16, ptr %i.u, align 4
  %i.w = sext i16 %i.v to i32                     ; 2 uses
  %i.x = icmp slt i32 %3, %i.w
  br i1 %i.x, label %bb.az, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load i32, ptr %i.o, align 8              ; 2 uses
  %i.z = and i32 %i.y, 7864320
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %6, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = tail call fastcc zeroext i1 @_bt_advance_array_keys(ptr noundef %0, ptr noundef null, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %i.l, i1 noundef zeroext false)
  br label %.thread

bb.j:                                             ; preds = %bb.h
  store i8 0, ptr %7, align 1
  br label %.thread

bb.k:                                             ; preds = %bb.g
  %i.ab = and i32 %i.y, 4
  %.not94 = icmp eq i32 %i.ab, 0
  br i1 %.not94, label %bb.af, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = inttoptr i64 %i.ad to ptr               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = and i32 %i.af, 1
  %.not98.i = icmp eq i32 %i.ag, 0
  br i1 %.not98.i, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.l, %bb.u
  %.069.lcssa.i = phi ptr [ %i.bs, %bb.u ], [ %i.ae, %bb.l ]
  br i1 %6, label %.thread.i.thread, label %bb.m

bb.m:                                             ; preds = %._crit_edge.i
  %i.ah = getelementptr inbounds i8, ptr %.069.lcssa.i, i64 -72
  %i.ai = load i32, ptr %i.ah, align 8            ; 2 uses
  %i.aj = and i32 %i.ai, 65536
  %i.ak = icmp ne i32 %i.aj, 0
  %or.cond.i = and i1 %i.j, %i.ak
  br i1 %or.cond.i, label %.thread.sink.split.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = and i32 %i.ai, 131072
  %i.am = icmp ne i32 %i.al, 0
  %or.cond3.i = and i1 %i.k, %i.am
  br i1 %or.cond3.i, label %.thread.sink.split.i, label %.thread.i.thread

.lr.ph.i:                                         ; preds = %bb.l, %bb.u
  %.06999.i = phi ptr [ %i.bs, %bb.u ], [ %i.ae, %bb.l ] ; 10 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.06999.i, i64 4
  %i.ao = load i16, ptr %i.an, align 4
  %i.ap = sext i16 %i.ao to i32                   ; 2 uses
  %i.aq = icmp slt i32 %3, %i.ap
  br i1 %i.aq, label %.thread.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i
  %i.ar = call fastcc i64 @index_getattr(ptr noundef %2, i32 noundef %i.ap, ptr noundef %4, ptr noundef %i.a)
  %i.as = load i8, ptr %i.a, align 1, !range !4, !noundef !5
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  br i1 %6, label %.thread.i.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.av = load i32, ptr %.06999.i, align 8        ; 3 uses
  %i.aw = and i32 %i.av, 33554432
  %.not78.i = icmp eq i32 %i.aw, 0
  %i.ax = load i64, ptr %i.au, align 8
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = icmp eq ptr %.06999.i, %i.ay            ; 2 uses
  br i1 %.not78.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %spec.select.i = select i1 %i.az, i32 196608, i32 131072
  %i.ba = and i32 %spec.select.i, %i.av
  %i.bb = icmp ne i32 %i.ba, 0
  %or.cond5.i = and i1 %i.k, %i.bb
  br i1 %or.cond5.i, label %.thread.sink.split.i, label %.thread.i.thread

bb.s:                                             ; preds = %bb.q
  %spec.select79.i = select i1 %i.az, i32 196608, i32 65536
  %i.bc = and i32 %spec.select79.i, %i.av
  %i.bd = icmp ne i32 %i.bc, 0
  %or.cond7.i = and i1 %i.j, %i.bd
  br i1 %or.cond7.i, label %.thread.sink.split.i, label %.thread.i.thread

bb.t:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %.06999.i, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %.06999.i, i64 12
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %.06999.i, i64 64
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = tail call i64 @FunctionCall2Coll(ptr noundef nonnull %i.be, i32 noundef %i.bg, i64 noundef %i.ar, i64 noundef %i.bi) #7
  %i.bk = trunc i64 %i.bj to i32                  ; 3 uses
  %i.bl = load i32, ptr %.06999.i, align 8        ; 4 uses
  %i.bm = and i32 %i.bl, 16777216
  %.not75.i = icmp eq i32 %i.bm, 0
  %i.bn = icmp slt i32 %i.bk, 0
  %i.bo = sub i32 0, %i.bk
  %i.bp = select i1 %i.bn, i32 1, i32 %i.bo
  %.168.i = select i1 %.not75.i, i32 %i.bk, i32 %i.bp ; 5 uses
  %i.bq = and i32 %i.bl, 16
  %i.br = or i32 %.168.i, %i.bq
  %or.cond94.i = icmp eq i32 %i.br, 0
  br i1 %or.cond94.i, label %bb.u, label %bb.v

.thread.sink.split.i:                             ; preds = %bb.s, %bb.r, %bb.n, %bb.m
  store i8 0, ptr %7, align 1
  br label %.thread.i.thread

.thread.i.thread:                                 ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %._crit_edge.i, %.thread.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %.thread

.thread.i:                                        ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.az

bb.u:                                             ; preds = %bb.t
  %i.bs = getelementptr inbounds nuw i8, ptr %.06999.i, i64 72 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.bt = load i32, ptr %i.bs, align 8
  %i.bu = and i32 %i.bt, 1
  %.not.i = icmp eq i32 %i.bu, 0
  br i1 %.not.i, label %.lr.ph.i, label %._crit_edge.i

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.bv = getelementptr inbounds nuw i8, ptr %.06999.i, i64 6
  %i.bw = load i16, ptr %i.bv, align 2
  switch i16 %i.bw, label %bb.aa [
end_hunk_0
