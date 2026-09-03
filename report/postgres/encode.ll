Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/encode?download=true
inline.NumInlined: 87
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@pg_base64_encode:bb.a
  br i1 %i.ai, label %.lr.ph.split.i, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.d
  %.not.i = icmp eq i32 %.149.i, 2
  br i1 %.not.i, label %pg_base64_encode_internal.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  %i.aj = lshr i32 %.1.i, 18
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr @_base64, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %.154.i, i64 1
  store i8 %i.am, ptr %.154.i, align 1
  %i.ao = lshr i32 %.1.i, 12
  %i.ap = and i32 %i.ao, 63
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr @_base64, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %.154.i, i64 2
  store i8 %i.as, ptr %i.an, align 1
  %i.au = icmp eq i32 %.149.i, 0
  br i1 %i.au, label %bb.f, label %pg_base64_encode_internal.exit.sink.split

bb.f:                                             ; preds = %bb.e
  %i.av = lshr i32 %.1.i, 6
  %i.aw = and i32 %i.av, 63
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @_base64, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1
  br label %pg_base64_encode_internal.exit.sink.split

pg_base64_encode_internal.exit.sink.split:        ; preds = %bb.e, %bb.f
  %.sink3 = phi i8 [ %i.az, %bb.f ], [ 61, %bb.e ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.154.i, i64 3
  store i8 %.sink3, ptr %i.at, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %.154.i, i64 4
  store i8 61, ptr %i.ba, align 1
  br label %pg_base64_encode_internal.exit

pg_base64_encode_internal.exit:                   ; preds = %pg_base64_encode_internal.exit.sink.split, %bb.a, %._crit_edge.i
  %.2.i = phi ptr [ %.154.i, %._crit_edge.i ], [ %2, %bb.a ], [ %i.bb, %pg_base64_encode_internal.exit.sink.split ]
  %i.bc = ptrtoint ptr %.2.i to i64
  %i.bd = ptrtoint ptr %2 to i64
  %i.be = sub i64 %i.bc, %i.bd
  ret i64 %i.be
}

; Function Attrs: nounwind uwtable
define internal i64 @pg_base64_decode(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call fastcc i64 @pg_base64_decode_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i1 noundef zeroext false)
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef range(i64 0, -3) i64 @pg_base64url_enc_len(ptr nofree readnone captures(none) %0, i64 noundef %1) #7 {
bb.a:
  %i.a = add i64 %1, 2
  %i.b = udiv i64 %i.a, 3
  %i.c = shl i64 %i.b, 2
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal range(i64 0, 4611686018427387904) i64 @pg_base64url_dec_len(ptr nofree readnone captures(none) %0, i64 noundef %1) #7 {
bb.a:
  %.biased = add i64 %1, 3
  %.0 = and i64 %.biased, -4
  %i.a = mul i64 %.0, 3
  %i.b = lshr exact i64 %i.a, 2
  ret i64 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal i64 @pg_base64url_encode(ptr nofree noundef readonly captures(address) %0, i64 noundef %1, ptr noundef %2) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %.not68.i = icmp eq i64 %1, 0
  br i1 %.not68.i, label %pg_base64_encode_internal.exit, label %.lr.ph.split.us.i.outer

.lr.ph.split.us.i.outer:                          ; preds = %bb.a, %.thread
  %.05061.us.i.ph = phi ptr [ %i.m, %.thread ], [ %0, %bb.a ] ; 4 uses
  %.05359.us.i.ph = phi ptr [ %i.al, %.thread ], [ %2, %bb.a ] ; 9 uses
  %i.b = load i8, ptr %.05061.us.i.ph, align 1
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  %i.d = shl nuw nsw i32 %i.c, 16                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05061.us.i.ph, i64 1 ; 2 uses
  %i.f = icmp ult ptr %i.e, %i.a                  ; 2 uses
  br i1 %i.f, label %.lr.ph.split.us.i.1, label %._crit_edge.i

.lr.ph.split.us.i.1:                              ; preds = %.lr.ph.split.us.i.outer
  %i.g = load i8, ptr %i.e, align 1
  %i.h = zext i8 %i.g to i32
  %i.i = shl nuw nsw i32 %i.h, 8                  ; 2 uses
  %i.j = or disjoint i32 %i.i, %i.d               ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05061.us.i.ph, i64 2 ; 2 uses
  %i.l = icmp ult ptr %i.k, %i.a
  br i1 %i.l, label %.thread, label %._crit_edge.i

.thread:                                          ; preds = %.lr.ph.split.us.i.1
  %i.m = getelementptr i8, ptr %.05061.us.i.ph, i64 3 ; 2 uses
  %i.n = load i8, ptr %i.k, align 1
  %i.o = zext i8 %i.n to i32                      ; 2 uses
  %i.p = or disjoint i32 %i.i, %i.o
  %i.q = lshr i32 %i.c, 2
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr @_base64url, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %.05359.us.i.ph, i64 1
  store i8 %i.t, ptr %.05359.us.i.ph, align 1
  %i.v = lshr i32 %i.j, 12
  %i.w = and i32 %i.v, 63
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @_base64url, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %.05359.us.i.ph, i64 2
  store i8 %i.z, ptr %i.u, align 1
  %i.ab = lshr i32 %i.p, 6
  %i.ac = and i32 %i.ab, 63
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr @_base64url, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %.05359.us.i.ph, i64 3
  store i8 %i.af, ptr %i.aa, align 1
  %i.ah = and i32 %i.o, 63
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @_base64url, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %.05359.us.i.ph, i64 4 ; 2 uses
  store i8 %i.ak, ptr %i.ag, align 1
  %i.am = icmp ult ptr %i.m, %i.a
  br i1 %i.am, label %.lr.ph.split.us.i.outer, label %pg_base64_encode_internal.exit, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.split.us.i.outer, %.lr.ph.split.us.i.1
  %.lcssa21.ph = phi i32 [ %i.d, %.lr.ph.split.us.i.outer ], [ %i.j, %.lr.ph.split.us.i.1 ] ; 3 uses
  %i.an = lshr i32 %.lcssa21.ph, 18
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @_base64url, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.05359.us.i.ph, i64 1
  store i8 %i.aq, ptr %.05359.us.i.ph, align 1
  %i.as = lshr i32 %.lcssa21.ph, 12
  %i.at = and i32 %i.as, 63
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr @_base64url, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %.05359.us.i.ph, i64 2 ; 2 uses
  store i8 %i.aw, ptr %i.ar, align 1
  br i1 %i.f, label %bb.b, label %pg_base64_encode_internal.exit

bb.b:                                             ; preds = %._crit_edge.i
  %i.ay = lshr i32 %.lcssa21.ph, 6
  %i.az = and i32 %i.ay, 63
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr @_base64url, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %.05359.us.i.ph, i64 3
  store i8 %i.bc, ptr %i.ax, align 1
  br label %pg_base64_encode_internal.exit

pg_base64_encode_internal.exit:                   ; preds = %.thread, %._crit_edge.i, %bb.a, %bb.b
  %.2.i = phi ptr [ %i.bd, %bb.b ], [ %2, %bb.a ], [ %i.ax, %._crit_edge.i ], [ %i.al, %.thread ]
  %i.be = ptrtoint ptr %.2.i to i64
  %i.bf = ptrtoint ptr %2 to i64
  %i.bg = sub i64 %i.be, %i.bf
  ret i64 %i.bg
}

; Function Attrs: nounwind uwtable
define internal i64 @pg_base64url_decode(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call fastcc i64 @pg_base64_decode_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i1 noundef zeroext true)
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef range(i64 0, -7) i64 @base32hex_enc_len(ptr nofree readnone captures(none) %0, i64 noundef %1) #7 {
bb.a:
  %i.a = add i64 %1, 4
  %i.b = udiv i64 %i.a, 5
  %i.c = shl i64 %i.b, 3
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef range(i64 0, 2305843009213693952) i64 @base32hex_dec_len(ptr nofree readnone captures(none) %0, i64 noundef %1) #7 {
bb.a:
  %i.a = mul i64 %1, 5
  %i.b = lshr i64 %i.a, 3
  ret i64 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal range(i64 0, -7) i64 @base32hex_encode(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2) #8 {
bb.a:
  %.not50 = icmp eq i64 %1, 0
  br i1 %.not50, label %._crit_edge48, label %.lr.ph39

.lr.ph39:                                         ; preds = %bb.a, %._crit_edge
  %.037 = phi i64 [ %i.r, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %.02436 = phi i64 [ %.1.lcssa, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %.02535 = phi i32 [ %.126.lcssa, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %.02734 = phi i32 [ %.128.lcssa, %._crit_edge ], [ 0, %bb.a ]
  %i.a = shl i32 %.02734, 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.037
  %i.c = load i8, ptr %i.b, align 1
  %i.d = zext i8 %i.c to i32
  %i.e = or disjoint i32 %i.a, %i.d               ; 2 uses
  %i.f = add nsw i32 %.02535, 8                   ; 2 uses
  %i.g = icmp sgt i32 %.02535, -4
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph39, %.lr.ph
  %.131 = phi i64 [ %i.n, %.lr.ph ], [ %.02436, %.lr.ph39 ] ; 2 uses
  %.12630 = phi i32 [ %i.h, %.lr.ph ], [ %i.f, %.lr.ph39 ] ; 2 uses
  %.12829 = phi i32 [ %i.q, %.lr.ph ], [ %i.e, %.lr.ph39 ] ; 2 uses
  %i.h = add nsw i32 %.12630, -5                  ; 4 uses
  %i.i = lshr i32 %.12829, %i.h
  %i.j = and i32 %i.i, 31
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr @base32hex_table, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1
  %i.n = add i64 %.131, 1                         ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %.131
  store i8 %i.m, ptr %i.o, align 1
  %notmask.1 = shl nsw i32 -1, %i.h
  %i.p = xor i32 %notmask.1, -1
  %i.q = and i32 %.12829, %i.p                    ; 2 uses
  %3 = icmp samesign ugt i32 %.12630, 9
  br i1 %3, label %.lr.ph, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph39
  %.128.lcssa = phi i32 [ %i.e, %.lr.ph39 ], [ %i.q, %.lr.ph ] ; 2 uses
  %.126.lcssa = phi i32 [ %i.f, %.lr.ph39 ], [ %i.h, %.lr.ph ] ; 3 uses
  %.1.lcssa = phi i64 [ %.02436, %.lr.ph39 ], [ %i.n, %.lr.ph ] ; 4 uses
  %i.r = add nuw i64 %.037, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %1
  br i1 %exitcond.not, label %._crit_edge40, label %.lr.ph39, !llvm.loop !11

._crit_edge40:                                    ; preds = %._crit_edge
  %i.s = icmp sgt i32 %.126.lcssa, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge40
  %i.t = sub nuw nsw i32 5, %.126.lcssa
  %i.u = shl i32 %.128.lcssa, %i.t
  %i.v = and i32 %i.u, 31
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr @base32hex_table, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1
  %i.z = add i64 %.1.lcssa, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 %.1.lcssa
  store i8 %i.y, ptr %i.aa, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge40
  %.2 = phi i64 [ %i.z, %bb.b ], [ %.1.lcssa, %._crit_edge40 ] ; 5 uses
  %i.ab = and i64 %.2, 7
  %.not44 = icmp eq i64 %i.ab, 0
  br i1 %.not44, label %._crit_edge48, label %.lr.ph47.preheader

.lr.ph47.preheader:                               ; preds = %bb.c
  %scevgep = getelementptr i8, ptr %2, i64 %.2
  %i.ac = and i64 %.2, 7
  %i.ad = sub nuw nsw i64 8, %i.ac
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 61, i64 %i.ad, i1 false)
  %i.ae = or i64 %.2, 7
  %i.af = add i64 %i.ae, 1
  br label %._crit_edge48

._crit_edge48:                                    ; preds = %bb.a, %.lr.ph47.preheader, %bb.c
  %.3.lcssa = phi i64 [ %.2, %bb.c ], [ %i.af, %.lr.ph47.preheader ], [ 0, %bb.a ]
  ret i64 %.3.lcssa
}

; Function Attrs: nounwind uwtable
define internal i64 @base32hex_decode(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge89, label %.lr.ph88

.lr.ph88:                                         ; preds = %bb.a, %bb.k
  %.05486 = phi i8 [ %.2, %bb.k ], [ 0, %bb.a ]   ; 6 uses
  %.05585 = phi i32 [ %.156, %bb.k ], [ 0, %bb.a ] ; 7 uses
  %.05784 = phi i64 [ %.259, %bb.k ], [ 0, %bb.a ] ; 8 uses
  %.06083 = phi i32 [ %.262, %bb.k ], [ 0, %bb.a ] ; 8 uses
  %.06382 = phi i32 [ %.265, %bb.k ], [ 0, %bb.a ] ; 6 uses
  %.06681 = phi ptr [ %i.b, %bb.k ], [ %0, %bb.a ] ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.06681, i64 1 ; 2 uses
  %i.c = load i8, ptr %.06681, align 1            ; 3 uses
  switch i8 %i.c, label %bb.f [
    i8 32, label %bb.k
    i8 13, label %bb.k
    i8 10, label %bb.k
    i8 9, label %bb.k
    i8 61, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph88
  %i.d = trunc nuw i8 %.05486 to i1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i32 %.05585, label %bb.d [
    i32 7, label %bb.e
    i32 5, label %bb.e
    i32 4, label %bb.e
    i32 2, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.f = tail call i32 @errcode(i32 noundef 50856066) #11 ; 0 uses
  %i.g = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.18) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.7, i32 noundef 929, ptr noundef nonnull @__func__.base32hex_decode) #11
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.b
  %i.h = add i32 %.05585, 1
  br label %bb.k, !llvm.loop !12

bb.f:                                             ; preds = %.lr.ph88
  %i.i = trunc nuw i8 %.05486 to i1
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.k = tail call i32 @errcode(i32 noundef 50856066) #11 ; 0 uses
  %i.l = tail call i32 @pg_mblen_range(ptr noundef nonnull %.06681, ptr noundef nonnull %i.a) #11
  %i.m = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.19, i32 noundef %i.l, ptr noundef nonnull %.06681) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.7, i32 noundef 941, ptr noundef nonnull @__func__.base32hex_decode) #11
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.n = icmp sgt i8 %i.c, -1
  br i1 %i.n, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.o = zext nneg i8 %i.c to i64
  %i.p = getelementptr inbounds nuw i8, ptr @b32hexlookup, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1               ; 2 uses
  %i.r = icmp slt i8 %i.q, 0
  br i1 %i.r, label %.thread, label %bb.j

.thread:                                          ; preds = %bb.h, %bb.i
  %i.s = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.t = tail call i32 @errcode(i32 noundef 50856066) #11 ; 0 uses
  %i.u = tail call i32 @pg_mblen_range(ptr noundef nonnull %.06681, ptr noundef nonnull %i.a) #11
  %i.v = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.19, i32 noundef %i.u, ptr noundef nonnull %.06681) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.7, i32 noundef 951, ptr noundef nonnull @__func__.base32hex_decode) #11
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.w = zext nneg i8 %i.q to i32
  %i.x = shl i32 %.06382, 5
  %i.y = or i32 %i.x, %i.w                        ; 3 uses
  %i.z = add nuw nsw i32 %.06083, 5
  %i.aa = add i32 %.05585, 1                      ; 2 uses
  %i.ab = icmp sgt i32 %.06083, 2
  br i1 %i.ab, label %._crit_edge.loopexit, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %bb.j
  %i.ac = add nsw i32 %.06083, -3                 ; 3 uses
  %i.ad = lshr i32 %i.y, %i.ac
  %i.ae = trunc i32 %i.ad to i8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %.05784
  store i8 %i.ae, ptr %i.af, align 1
  %notmask = shl nsw i32 -1, %i.ac
  %i.ag = xor i32 %notmask, -1
  %i.ah = and i32 %i.y, %i.ag
  %i.ai = add i64 %.05784, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.j
  %.164.lcssa = phi i32 [ %i.y, %bb.j ], [ %i.ah, %._crit_edge.loopexit ]
  %.161.lcssa = phi i32 [ %i.z, %bb.j ], [ %i.ac, %._crit_edge.loopexit ]
  %.158.lcssa = phi i64 [ %.05784, %bb.j ], [ %i.ai, %._crit_edge.loopexit ]
  %i.aj = icmp eq i32 %i.aa, 8
  %spec.store.select = select i1 %i.aj, i32 0, i32 %i.aa
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph88, %.lr.ph88, %.lr.ph88, %.lr.ph88, %._crit_edge, %bb.e
  %.265 = phi i32 [ %.164.lcssa, %._crit_edge ], [ %.06382, %bb.e ], [ %.06382, %.lr.ph88 ], [ %.06382, %.lr.ph88 ], [ %.06382, %.lr.ph88 ], [ %.06382, %.lr.ph88 ]
  %.262 = phi i32 [ %.161.lcssa, %._crit_edge ], [ %.06083, %bb.e ], [ %.06083, %.lr.ph88 ], [ %.06083, %.lr.ph88 ], [ %.06083, %.lr.ph88 ], [ %.06083, %.lr.ph88 ]
  %.259 = phi i64 [ %.158.lcssa, %._crit_edge ], [ %.05784, %bb.e ], [ %.05784, %.lr.ph88 ], [ %.05784, %.lr.ph88 ], [ %.05784, %.lr.ph88 ], [ %.05784, %.lr.ph88 ] ; 2 uses
  %.156 = phi i32 [ %spec.store.select, %._crit_edge ], [ %i.h, %bb.e ], [ %.05585, %.lr.ph88 ], [ %.05585, %.lr.ph88 ], [ %.05585, %.lr.ph88 ], [ %.05585, %.lr.ph88 ]
  %.2 = phi i8 [ 0, %._crit_edge ], [ 1, %bb.e ], [ %.05486, %.lr.ph88 ], [ %.05486, %.lr.ph88 ], [ %.05486, %.lr.ph88 ], [ %.05486, %.lr.ph88 ]
  %i.ak = icmp ult ptr %i.b, %i.a
  br i1 %i.ak, label %.lr.ph88, label %._crit_edge89

._crit_edge89:                                    ; preds = %bb.k, %bb.a
  %.057.lcssa = phi i64 [ 0, %bb.a ], [ %.259, %bb.k ]
  ret i64 %.057.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i64 @esc_enc_len(ptr nofree noundef readonly captures(address) %0, i64 noundef %1) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.c = add i64 %1, %i.b
  %i.d = add i64 %i.b, 1
  %i.e = tail call i64 @llvm.umax.i64(i64 %i.c, i64 %i.d)
  %i.f = sub i64 %i.e, %i.b                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.f, 4
  br i1 %min.iters.check, label %.lr.ph.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.f, -4                       ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.q, %vector.body ]
  %vec.phi16 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.r, %vector.body ]
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %i.h = getelementptr i8, ptr %next.gep, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep, align 1 ; 2 uses
  %wide.load17 = load <2 x i8>, ptr %i.h, align 1 ; 2 uses
  %i.i = icmp sgt <2 x i8> %wide.load, zeroinitializer
  %i.j = icmp sgt <2 x i8> %wide.load17, zeroinitializer
  %i.k = icmp eq <2 x i8> %wide.load, splat (i8 92)
  %i.l = icmp eq <2 x i8> %wide.load17, splat (i8 92)
  %i.m = select <2 x i1> %i.k, <2 x i64> splat (i64 2), <2 x i64> splat (i64 1)
  %i.n = select <2 x i1> %i.l, <2 x i64> splat (i64 2), <2 x i64> splat (i64 1)
  %i.o = select <2 x i1> %i.i, <2 x i64> %i.m, <2 x i64> splat (i64 4)
  %i.p = select <2 x i1> %i.j, <2 x i64> %i.n, <2 x i64> splat (i64 4)
  %i.q = add <2 x i64> %vec.phi, %i.o             ; 2 uses
  %i.r = add <2 x i64> %vec.phi16, %i.p           ; 2 uses
end_hunk_0
