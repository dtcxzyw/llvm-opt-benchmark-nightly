Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/nbtreadpage?download=true
inline.NumInlined: 114
inline.NumDeleted: 42
begin_hunk_0_@_bt_set_startikey:bb.a
  %i.hq = icmp slt i64 %indvars.iv.next, %i.hp
  br i1 %i.hq, label %bb.c, label %.loopexit, !llvm.loop !15

select.unfold.thread:                             ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.hr = load i32, ptr %i.f, align 4
  %i.hs = sext i32 %i.hr to i64
  %i.ht = icmp slt i64 %indvars.iv.next124, %i.hs
  br i1 %i.ht, label %.outer, label %.loopexit.thread127, !llvm.loop !15

.loopexit.thread127:                              ; preds = %select.unfold.thread
  %i.hu = trunc nuw nsw i64 %indvars.iv.next124 to i32
  br label %.thread23

.loopexit:                                        ; preds = %select.unfold
  %i.hv = trunc nuw nsw i64 %indvars.iv.next to i32 ; 2 uses
  br i1 %.013576.ph, label %.thread23, label %.loopexit.thread

.thread23:                                        ; preds = %.loopexit.thread127, %.thread19, %.loopexit
  %.014047121 = phi i32 [ %i.hn, %.thread19 ], [ %i.hv, %.loopexit ], [ %i.hu, %.loopexit.thread127 ]
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 2 uses
  store i8 1, ptr %i.hw, align 1
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  store i32 %.014047121, ptr %i.hx, align 4
  br label %bb.aq

.loopexit.thread:                                 ; preds = %bb.b, %.thread19, %.loopexit
  %.014047120 = phi i32 [ %i.hn, %.thread19 ], [ %i.hv, %.loopexit ], [ 0, %bb.b ]
  %i.hy = getelementptr inbounds nuw i8, ptr %.56.val, i64 20
  %i.hz = load i8, ptr %i.hy, align 4, !range !6, !noundef !7 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 2 uses
  store i8 %i.hz, ptr %i.ia, align 1
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  store i32 %.014047120, ptr %i.ib, align 4
  %i.ic = trunc nuw i8 %i.hz to i1
  br i1 %i.ic, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %.thread23, %.loopexit.thread
  %i.id = phi ptr [ %i.hx, %.thread23 ], [ %i.ib, %.loopexit.thread ]
  %i.ie = phi ptr [ %i.hw, %.thread23 ], [ %i.ia, %.loopexit.thread ]
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ig = load ptr, ptr %i.if, align 8
  %.not164 = icmp eq ptr %i.ig, null
  br i1 %.not164, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i8 0, ptr %i.ie, align 1
  store i32 0, ptr %i.id, align 4
  br label %bb.as

bb.as:                                            ; preds = %.loopexit.thread, %bb.aq, %bb.ar, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @_bt_checkkeys(ptr noundef %0, ptr nofree noundef nonnull captures(address_is_null) initializes((36, 37)) %1, i1 noundef zeroext %2, ptr noundef %3, i32 noundef range(i32 -32768, 32768) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.f = load i32, ptr %1, align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.h = load i32, ptr %i.g, align 4
  store i32 %i.h, ptr %i.a, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.j = load i8, ptr %i.i, align 1, !range !6, !noundef !7
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 3 uses
  %i.m = call fastcc zeroext i1 @_bt_check_compare(ptr noundef %0, i32 noundef %i.f, ptr noundef %3, i32 noundef %4, ptr noundef %i.e, i1 noundef zeroext %2, i1 noundef zeroext %i.k, ptr noundef %i.l, ptr noundef %i.a) ; 2 uses
  br i1 %2, label %bb.b, label %_bt_checkkeys_look_ahead.exit

bb.b:                                             ; preds = %bb.a
  %i.n = load i8, ptr %i.l, align 4, !range !6, !noundef !7
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_bt_checkkeys_look_ahead.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load i32, ptr %i.a, align 4              ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %.val = load ptr, ptr %i.q, align 8
  %i.r = tail call fastcc zeroext i1 @_bt_tuple_before_array_skeys(ptr %.val, i32 noundef %i.f, ptr noundef %3, ptr noundef %i.e, i32 noundef %4, i1 noundef zeroext true, i32 noundef %i.p, ptr noundef null)
  br i1 %i.r, label %bb.d, label %bb.s

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.l, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 38 ; 3 uses
  %i.t = load i16, ptr %i.s, align 2
  %i.u = add i16 %i.t, 1                          ; 2 uses
  store i16 %i.u, ptr %i.s, align 2
  %i.v = icmp sgt i16 %i.u, 2
  br i1 %i.v, label %bb.e, label %_bt_checkkeys_look_ahead.exit

bb.e:                                             ; preds = %bb.d
  %i.w = load i32, ptr %1, align 8                ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load i16, ptr %i.x, align 8              ; 2 uses
  %i.z = zext i16 %i.y to i32                     ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ab = load i16, ptr %i.aa, align 4            ; 3 uses
  %i.ac = icmp ult i16 %i.y, %i.ab
  br i1 %i.ac, label %_bt_checkkeys_look_ahead.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = icmp eq i32 %i.w, 1                     ; 3 uses
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = zext i16 %i.af to i32
  %i.ah = add nsw i32 %i.ag, -5
  %.not.i = icmp sgt i32 %i.ah, %i.z
  br i1 %.not.i, label %.thread.i, label %_bt_checkkeys_look_ahead.exit

bb.h:                                             ; preds = %bb.f
  %i.ai = icmp ne i32 %i.w, -1
  %i.aj = zext i16 %i.ab to i32
  %i.ak = add nuw nsw i32 %i.aj, 5
  %.not50.i = icmp samesign ult i32 %i.ak, %i.z
  %or.cond.i = select i1 %i.ai, i1 true, i1 %.not50.i
  br i1 %or.cond.i, label %.thread.i, label %_bt_checkkeys_look_ahead.exit

.thread.i:                                        ; preds = %bb.h, %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.am = load i16, ptr %i.al, align 8            ; 4 uses
  %.not51.i = icmp eq i16 %i.am, 0
  br i1 %.not51.i, label %.sink.split.i, label %bb.i

bb.i:                                             ; preds = %.thread.i
  %i.an = icmp slt i16 %i.am, 204
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = shl i16 %i.am, 1
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.j, %.thread.i
  %.sink.i = phi i16 [ %i.ao, %bb.j ], [ 5, %.thread.i ] ; 2 uses
  store i16 %.sink.i, ptr %i.al, align 8
  br label %bb.k

bb.k:                                             ; preds = %.sink.split.i, %bb.i
  %i.ap = phi i16 [ %i.am, %bb.i ], [ %.sink.i, %.sink.split.i ] ; 2 uses
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.ar = load i16, ptr %i.aq, align 2
  %i.as = zext i16 %i.ar to i32
  %i.at = sext i16 %i.ap to i32
  %i.au = add nsw i32 %i.at, %i.z
  %i.av = tail call i32 @llvm.smin.i32(i32 %i.au, i32 %i.as)
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.aw = zext i16 %i.ab to i32
  %i.ax = sext i16 %i.ap to i32
  %i.ay = sub nsw i32 %i.z, %i.ax
  %i.az = tail call i32 @llvm.smax.i32(i32 %i.ay, i32 %i.aw)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0.in.i = phi i32 [ %i.av, %bb.l ], [ %i.az, %bb.m ] ; 2 uses
  %.0.i = trunc i32 %.0.in.i to i16               ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %.0.mask.i = and i32 %.0.in.i, 65535
  %i.bc = zext nneg i32 %.0.mask.i to i64
  %i.bd = getelementptr i8, ptr %i.bb, i64 20
  %i.be = getelementptr [4 x i8], ptr %i.bd, i64 %i.bc
  %.val.i = load i32, ptr %i.be, align 4
  %i.bf = and i32 %.val.i, 32767
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bg
  %.val52.i = load ptr, ptr %i.q, align 8
  %i.bi = tail call fastcc zeroext i1 @_bt_tuple_before_array_skeys(ptr %.val52.i, i32 noundef %i.w, ptr noundef %i.bh, ptr noundef %i.e, i32 noundef range(i32 -32768, 32768) %4, i1 noundef zeroext false, i32 noundef 0, ptr noundef null)
  br i1 %i.bi, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 34 ; 2 uses
  br i1 %i.ad, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bk = add i16 %.0.i, 1
  store i16 %i.bk, ptr %i.bj, align 2
  br label %_bt_checkkeys_look_ahead.exit

bb.q:                                             ; preds = %bb.o
  %i.bl = add i16 %.0.i, -1
  store i16 %i.bl, ptr %i.bj, align 2
  br label %_bt_checkkeys_look_ahead.exit

bb.r:                                             ; preds = %bb.n
  store i16 0, ptr %i.s, align 2
  %i.bm = load i16, ptr %i.al, align 8            ; 2 uses
  %5 = icmp sgt i16 %i.bm, 15
  %6 = sdiv i16 %i.bm, 8
  %7 = select i1 %5, i16 %6, i16 1
  store i16 %7, ptr %i.al, align 8
  br label %_bt_checkkeys_look_ahead.exit

bb.s:                                             ; preds = %bb.c
  %i.bn = tail call fastcc zeroext i1 @_bt_advance_array_keys(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %3, i32 noundef %4, ptr noundef %i.e, i32 noundef %i.p, i1 noundef zeroext true)
  br label %_bt_checkkeys_look_ahead.exit

_bt_checkkeys_look_ahead.exit:                    ; preds = %bb.r, %bb.q, %bb.p, %bb.h, %bb.g, %bb.e, %bb.d, %bb.a, %bb.b, %bb.s
  %.0 = phi i1 [ %i.bn, %bb.s ], [ %i.m, %bb.a ], [ %i.m, %bb.b ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.p ], [ false, %bb.q ], [ false, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @_bt_start_array_keys(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.h = icmp eq i32 %1, 1
  br i1 %i.h, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_bt_array_set_low_or_high.exit.us
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %_bt_array_set_low_or_high.exit.us ], [ 0, %.lr.ph ] ; 2 uses
  %i.i = load ptr, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw [48 x i8], ptr %i.i, i64 %indvars.iv18 ; 6 uses
  %i.k = load ptr, ptr %i.g, align 8
  %i.l = load i32, ptr %i.j, align 8
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [72 x i8], ptr %i.k, i64 %i.m ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.p = load i32, ptr %i.o, align 4
  %.not.i.us = icmp eq i32 %i.p, -1
  br i1 %.not.i.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i32 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  store i64 %i.t, ptr %i.u, align 8
  br label %_bt_array_set_low_or_high.exit.us

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 22
  %i.w = load i8, ptr %i.v, align 2, !range !6, !noundef !7
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %.not21.i.us = icmp eq i64 %i.z, 0
  br i1 %.not21.i.us, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = inttoptr i64 %i.z to ptr
  tail call void @pfree(ptr noundef nonnull %i.aa) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  store i64 0, ptr %i.ab, align 8
  %i.ac = load i32, ptr %i.n, align 8             ; 2 uses
  %i.ad = and i32 %i.ac, -7864386                 ; 3 uses
  store i32 %i.ad, ptr %i.n, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 23
  %i.af = load i8, ptr %i.ae, align 1, !range !6, !noundef !7
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = and i32 %i.ac, 33554432
  %.not = icmp ne i32 %i.ah, 0
  %or.cond25.not = select i1 %i.ag, i1 %.not, i1 false
  br i1 %or.cond25.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = or disjoint i32 %i.ad, 524288
  store i32 %i.ai, ptr %i.n, align 8
  br label %_bt_array_set_low_or_high.exit.us

bb.h:                                             ; preds = %bb.f
  %i.aj = or disjoint i32 %i.ad, 65
  store i32 %i.aj, ptr %i.n, align 8
  br label %_bt_array_set_low_or_high.exit.us

_bt_array_set_low_or_high.exit.us:                ; preds = %bb.h, %bb.g, %bb.b
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1 ; 2 uses
  %i.ak = load i32, ptr %i.c, align 8
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp slt i64 %indvars.iv.next19, %i.al
  br i1 %i.am, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %_bt_array_set_low_or_high.exit, %_bt_array_set_low_or_high.exit.us, %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 23
  store i8 0, ptr %i.an, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i8 0, ptr %i.ao, align 2
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %_bt_array_set_low_or_high.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_bt_array_set_low_or_high.exit ], [ 0, %.lr.ph ] ; 2 uses
  %i.ap = load ptr, ptr %i.f, align 8
  %i.aq = getelementptr inbounds nuw [48 x i8], ptr %i.ap, i64 %indvars.iv ; 6 uses
  %i.ar = load ptr, ptr %i.g, align 8
  %i.as = load i32, ptr %i.aq, align 8
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [72 x i8], ptr %i.ar, i64 %i.at ; 7 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.aw = load i32, ptr %i.av, align 4            ; 2 uses
  %.not.i = icmp eq i32 %i.aw, -1
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split
  %i.ax = add i32 %i.aw, -1                       ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i32 %i.ax, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = sext i32 %i.ax to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  store i64 %i.bd, ptr %i.be, align 8
  br label %_bt_array_set_low_or_high.exit

bb.j:                                             ; preds = %.lr.ph.split
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aq, i64 22
  %i.bg = load i8, ptr %i.bf, align 2, !range !6, !noundef !7
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.bj = load i64, ptr %i.bi, align 8            ; 2 uses
  %.not21.i = icmp eq i64 %i.bj, 0
  br i1 %.not21.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = inttoptr i64 %i.bj to ptr
  tail call void @pfree(ptr noundef nonnull %i.bk) #7
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  store i64 0, ptr %i.bl, align 8
  %i.bm = load i32, ptr %i.au, align 8            ; 2 uses
  %i.bn = and i32 %i.bm, -7864386                 ; 3 uses
  store i32 %i.bn, ptr %i.au, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aq, i64 23
  %i.bp = load i8, ptr %i.bo, align 1, !range !6, !noundef !7
  %i.bq = trunc nuw i8 %i.bp to i1
  %i.br = and i32 %i.bm, 33554432
  %i.bs = icmp eq i32 %i.br, 0
  %or.cond = select i1 %i.bq, i1 %i.bs, i1 false
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bt = or disjoint i32 %i.bn, 65
  store i32 %i.bt, ptr %i.au, align 8
  br label %_bt_array_set_low_or_high.exit

bb.o:                                             ; preds = %bb.m
  %i.bu = or disjoint i32 %i.bn, 1048576
  store i32 %i.bu, ptr %i.au, align 8
  br label %_bt_array_set_low_or_high.exit

_bt_array_set_low_or_high.exit:                   ; preds = %bb.i, %bb.n, %bb.o
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bv = load i32, ptr %i.c, align 8
  %i.bw = sext i32 %i.bv to i64
  %i.bx = icmp slt i64 %indvars.iv.next, %i.bw
  br i1 %i.bx, label %.lr.ph.split, label %._crit_edge, !llvm.loop !0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @_bt_binsrch_array_skey(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2, i64 noundef %3, i1 noundef zeroext %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef writeonly captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = add i32 %i.b, -1                         ; 5 uses
  br i1 %1, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %2, 1
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.f = load i32, ptr %i.e, align 8              ; 4 uses
  br i1 %i.d, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.g = add i32 %i.f, 1                          ; 8 uses
  %.not = icmp slt i32 %i.c, %i.g
  br i1 %.not, label %bb.k, label %bb.d

end_hunk_0
begin_hunk_1_@_bt_advance_array_keys:bb.a
  %.val.i241 = load i16, ptr %i.ph, align 2       ; 2 uses
  %i.pi = and i16 %.val.i241, 8192
  %.not.i242 = icmp eq i16 %i.pi, 0
  br i1 %.not.i242, label %bb.ez, label %BTreeTupleIsPivot.exit.thread

bb.ez:                                            ; preds = %BTreeTupleIsPivot.exit
  %i.pj = and i16 %.val.i241, 4095
  %i.pk = zext nneg i16 %i.pj to i32
  br label %bb.fa

BTreeTupleIsPivot.exit.thread:                    ; preds = %bb.ey, %BTreeTupleIsPivot.exit
  %i.pl = getelementptr inbounds nuw i8, ptr %i.n, i64 328
  %i.pm = load ptr, ptr %i.pl, align 8
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 8
  %i.po = load i16, ptr %i.pn, align 4
  %i.pp = sext i16 %i.po to i32
  br label %bb.fa

bb.fa:                                            ; preds = %BTreeTupleIsPivot.exit.thread, %bb.ez
  %i.pq = phi i32 [ %i.pk, %bb.ez ], [ %i.pp, %BTreeTupleIsPivot.exit.thread ]
  %i.pr = getelementptr inbounds nuw i8, ptr %i.l, i64 22
  %.val232 = load ptr, ptr %i.k, align 8
  %i.ps = call fastcc zeroext i1 @_bt_tuple_before_array_skeys(ptr %.val232, i32 noundef %i.p, ptr noundef nonnull %i.pb, ptr noundef %4, i32 noundef %i.pq, i1 noundef zeroext false, i32 noundef 0, ptr noundef nonnull %i.pr)
  br i1 %i.ps, label %bb.fj, label %.critedge

.critedge:                                        ; preds = %bb.ev, %bb.fa, %bb.ex
  %i.pt = getelementptr inbounds nuw i8, ptr %i.l, i64 22
  %i.pu = load i8, ptr %i.pt, align 2, !range !6, !noundef !7
  %i.pv = trunc nuw i8 %i.pu to i1
  %.not19 = xor i1 %i.pv, true
  %i.pw = trunc nuw i8 %.2204275483 to i1
  %or.cond21 = select i1 %.not19, i1 %i.pw, i1 false
  br i1 %or.cond21, label %bb.fb, label %bb.fg

bb.fb:                                            ; preds = %.critedge
  %i.px = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.py = load ptr, ptr %i.px, align 8            ; 4 uses
  %.not226 = icmp eq ptr %i.py, null
  br i1 %.not226, label %bb.fg, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.pz = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 64
  %i.qb = load ptr, ptr %i.qa, align 8
  %i.qc = load ptr, ptr %i.k, align 8
  %i.qd = getelementptr inbounds nuw i8, ptr %i.py, i64 6
  %i.qe = load i16, ptr %i.qd, align 2
  %i.qf = and i16 %i.qe, 8192
  %i.qg = icmp eq i16 %i.qf, 0
  br i1 %i.qg, label %BTreeTupleIsPivot.exit.i.thread, label %BTreeTupleIsPivot.exit.i

BTreeTupleIsPivot.exit.i:                         ; preds = %bb.fc
  %i.qh = getelementptr i8, ptr %i.py, i64 4
  %.val.i.i244 = load i16, ptr %i.qh, align 2     ; 2 uses
  %i.qi = and i16 %.val.i.i244, 8192
  %.not.i.i245 = icmp eq i16 %i.qi, 0
  br i1 %.not.i.i245, label %bb.fd, label %BTreeTupleIsPivot.exit.i.thread

bb.fd:                                            ; preds = %BTreeTupleIsPivot.exit.i
  %i.qj = and i16 %.val.i.i244, 4095
  %i.qk = zext nneg i16 %i.qj to i32
  br label %bb.fe

BTreeTupleIsPivot.exit.i.thread:                  ; preds = %bb.fc, %BTreeTupleIsPivot.exit.i
  %i.ql = getelementptr inbounds nuw i8, ptr %i.pz, i64 328
  %i.qm = load ptr, ptr %i.ql, align 8
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 8
  %i.qo = load i16, ptr %i.qn, align 4
  %i.qp = sext i16 %i.qo to i32
  br label %bb.fe

bb.fe:                                            ; preds = %BTreeTupleIsPivot.exit.i.thread, %bb.fd
  %i.qq = phi i32 [ %i.qk, %bb.fd ], [ %i.qp, %BTreeTupleIsPivot.exit.i.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.qr = sub i32 0, %i.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 0, ptr %i.b, align 4
  %i.qs = call fastcc zeroext i1 @_bt_check_compare(ptr noundef nonnull %0, i32 noundef %i.qr, ptr noundef nonnull %i.py, i32 noundef %i.qq, ptr noundef %i.qb, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef %i.a, ptr noundef %i.b), !inline_history !1 ; 0 uses
  %i.qt = load i8, ptr %i.a, align 1, !range !6, !noundef !7
  %i.qu = trunc nuw i8 %i.qt to i1
  br i1 %i.qu, label %_bt_oppodir_checkkeys.exit.thread, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qc, i64 8
  %i.qw = load ptr, ptr %i.qv, align 8
  %i.qx = load i32, ptr %i.b, align 4
  %i.qy = sext i32 %i.qx to i64
  %i.qz = getelementptr inbounds [72 x i8], ptr %i.qw, i64 %i.qy
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 6
  %i.rb = load i16, ptr %i.ra, align 2
  %.not.i246 = icmp eq i16 %i.rb, 3
  br i1 %.not.i246, label %_bt_oppodir_checkkeys.exit.thread, label %_bt_oppodir_checkkeys.exit

_bt_oppodir_checkkeys.exit.thread:                ; preds = %bb.fe, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.fg

_bt_oppodir_checkkeys.exit:                       ; preds = %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.fj

bb.fg:                                            ; preds = %_bt_oppodir_checkkeys.exit.thread, %.critedge, %bb.fb, %bb.fl
  %.2204275484 = phi i8 [ 1, %_bt_oppodir_checkkeys.exit.thread ], [ %.2204275483, %.critedge ], [ 1, %bb.fb ], [ %.2204275483, %bb.fl ]
  %i.rc = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i8 1, ptr %i.rc, align 4
  %i.rd = getelementptr inbounds nuw i8, ptr %i.l, i64 21
  store i8 0, ptr %i.rd, align 1
  %i.re = getelementptr inbounds nuw i8, ptr %i.l, i64 22
  %i.rf = load i8, ptr %i.re, align 2, !range !6, !noundef !7
  %i.rg = trunc nuw i8 %i.rf to i1
  br i1 %i.rg, label %bb.fh, label %bb.fo

bb.fh:                                            ; preds = %bb.fg
  %i.rh = getelementptr inbounds nuw i8, ptr %i.l, i64 23
  store i8 %.2204275484, ptr %i.rh, align 1
  %i.ri = icmp eq i32 %i.p, 1
  br i1 %i.ri, label %bb.fi, label %bb.fo

bb.fi:                                            ; preds = %bb.fh
  %i.rj = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.rk = load i16, ptr %i.rj, align 2
  %i.rl = add i16 %i.rk, 1
  %i.rm = getelementptr inbounds nuw i8, ptr %1, i64 34
  store i16 %i.rl, ptr %i.rm, align 2
  br label %bb.fo

bb.fj:                                            ; preds = %_bt_oppodir_checkkeys.exit, %bb.fa, %bb.ew
  %i.rn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ro = load i8, ptr %i.rn, align 8, !range !6, !noundef !7
  %i.rp = trunc nuw i8 %i.ro to i1
  br i1 %i.rp, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  %i.rq = getelementptr inbounds nuw i8, ptr %1, i64 42
  %i.rr = load i16, ptr %i.rq, align 2
  %i.rs = icmp sgt i16 %i.rr, 3
  br i1 %i.rs, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  %i.rt = getelementptr inbounds nuw i8, ptr %i.l, i64 22
  store i8 1, ptr %i.rt, align 2
  br label %bb.fg

bb.fm:                                            ; preds = %bb.fk
  %i.ru = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i8 0, ptr %i.ru, align 4
  %i.rv = getelementptr inbounds nuw i8, ptr %i.l, i64 21
  store i8 1, ptr %i.rv, align 1
  %i.rw = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.rx = load ptr, ptr %i.rw, align 8
  %.not227 = icmp eq ptr %i.rx, null
  br i1 %.not227, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.ry = getelementptr inbounds nuw i8, ptr %i.l, i64 92
  %i.rz = load i32, ptr %i.ry, align 4
  call void @_bt_parallel_primscan_schedule(ptr noundef nonnull %0, i32 noundef %i.rz) #7
  br label %bb.fo

.loopexit:                                        ; preds = %_bt_array_set_low_or_high.exit.i, %bb.cg
  %i.sa = sub i32 0, %i.p
  call void @_bt_start_array_keys(ptr noundef readonly %0, i32 noundef %i.sa)
  %i.sb = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i8 0, ptr %i.sb, align 4
  %i.sc = getelementptr inbounds nuw i8, ptr %i.l, i64 21
  store i8 0, ptr %i.sc, align 1
  br label %bb.fo

bb.fo:                                            ; preds = %.thread296, %bb.et, %bb.fm, %bb.fn, %bb.fg, %bb.fi, %bb.fh, %bb.eu, %bb.g, %.loopexit
  %.3 = phi i1 [ false, %bb.eu ], [ false, %bb.fg ], [ false, %bb.g ], [ false, %bb.et ], [ false, %.loopexit ], [ false, %bb.fh ], [ false, %bb.fi ], [ false, %bb.fn ], [ false, %bb.fm ], [ %.2.ph, %.thread296 ]
  ret i1 %.3
}

declare void @pfree(ptr noundef) local_unnamed_addr #2

declare i64 @datumCopy(i64 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}

!0 = distinct !{!0, !9}
!1 = distinct !{null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!6 = !{i8 0, i8 2}
!7 = !{}
!8 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, !9}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !9}
!21 = distinct !{null, null}
!22 = distinct !{null, null}
!23 = distinct !{!23, !9}
end_hunk_1
