Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/v3_addr?download=true
inline.NumInlined: 158
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@X509v3_addr_add_prefix:bb.a
  store ptr %i.m, ptr %i.q, align 8, !tbaa !18
  br label %bb.i

make_prefix_or_range.exit.thread:                 ; preds = %bb.a, %bb.d, %bb.b, %.thread23.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  br label %bb.l

bb.i:                                             ; preds = %bb.h, %bb.e
  %.018.i = phi ptr [ %i.m, %bb.h ], [ %i.k, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %switch.selectcmp.i = icmp eq i32 %1, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 16, i32 0
  %switch.selectcmp2.i = icmp eq i32 %1, 1
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 4, i32 %switch.select.i
  %i.r = call fastcc i32 @make_addressPrefix(ptr noundef %i.a, ptr noundef %3, i32 noundef %4, i32 noundef %switch.select3.i)
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.t = tail call i32 @OPENSSL_sk_push(ptr noundef nonnull %.018.i, ptr noundef %i.s) #13
  %.not9 = icmp eq i32 %i.t, 0
  br i1 %.not9, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @ASN1_item_free(ptr noundef %i.s, ptr noundef nonnull @IPAddressOrRange_it.local_it) #13
  br label %bb.l

bb.l:                                             ; preds = %make_prefix_or_range.exit.thread, %bb.j, %bb.i, %bb.k
  %.0 = phi i32 [ 0, %bb.k ], [ 0, %make_prefix_or_range.exit.thread ], [ 0, %bb.i ], [ 1, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @make_addressPrefix(ptr nofree noundef nonnull writeonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef range(i32 0, 17) %3) unnamed_addr #1 {
bb.a:
  %i.a = add nsw i32 %2, 7
  %i.b = sdiv i32 %i.a, 8                         ; 2 uses
  %i.c = srem i32 %2, 8                           ; 3 uses
  %i.d = icmp slt i32 %2, 0
  %i.e = shl nuw nsw i32 %3, 3
  %i.f = icmp samesign ugt i32 %2, %i.e
  %or.cond = select i1 %i.d, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @ASN1_item_new(ptr noundef nonnull @IPAddressOrRange_it.local_it) #13 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.g, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !18   ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = tail call ptr @ASN1_BIT_STRING_new() #13 ; 3 uses
  store ptr %i.l, ptr %i.i, align 8, !tbaa !18
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = phi ptr [ %i.l, %bb.d ], [ %i.j, %bb.c ]
  %i.o = tail call i32 @ASN1_BIT_STRING_set(ptr noundef nonnull %i.n, ptr noundef %1, i32 noundef %i.b) #13
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = icmp sgt i32 %i.c, 0
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = ashr exact i32 -256, %i.c
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !13
  %i.u = zext nneg i32 %i.b to i64
  %i.v = getelementptr i8, ptr %i.t, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 -1       ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !18
  %i.y = trunc nsw i32 %i.q to i8
  %i.z = and i8 %i.x, %i.y
  store i8 %i.z, ptr %i.w, align 1, !tbaa !18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !18
  %i.ab = sub nuw nsw i32 8, %i.c
  tail call void @ossl_asn1_string_set_bits_left(ptr noundef %i.aa, i32 noundef %i.ab) #13
  store ptr %i.g, ptr %0, align 8, !tbaa !25
  br label %bb.j

bb.i:                                             ; preds = %bb.e, %bb.d
  tail call void @ASN1_item_free(ptr noundef nonnull %i.g, ptr noundef nonnull @IPAddressOrRange_it.local_it) #13
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.a, %bb.i, %bb.h
  %.0 = phi i32 [ 1, %bb.h ], [ 0, %bb.a ], [ 0, %bb.i ], [ 0, %bb.b ]
  ret i32 %.0
}

declare i32 @OPENSSL_sk_push(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @X509v3_addr_add_range(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = tail call fastcc ptr @make_IPAddressFamily(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2) ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %make_prefix_or_range.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19   ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %make_prefix_or_range.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 8, !tbaa !20
  switch i32 %i.g, label %.thread23.i [
    i32 0, label %bb.d
    i32 1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %.thread23.i, label %make_prefix_or_range.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !18   ; 2 uses
  %.not22.i = icmp eq ptr %i.k, null
  br i1 %.not22.i, label %.thread23.i, label %bb.i

.thread23.i:                                      ; preds = %bb.e, %bb.d, %bb.c
  %i.l = tail call ptr @OPENSSL_sk_new_null() #13
  %i.m = tail call ptr @OPENSSL_sk_set_thunks(ptr noundef %i.l, ptr noundef nonnull @sk_IPAddressOrRange_freefunc_thunk) #13 ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %make_prefix_or_range.exit.thread, label %bb.f

bb.f:                                             ; preds = %.thread23.i
  switch i32 %1, label %bb.h [
    i32 1, label %.sink.split.i
    i32 2, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.g, %bb.f
  %v6IPAddressOrRange_cmp.sink.i = phi ptr [ @v6IPAddressOrRange_cmp, %bb.g ], [ @v4IPAddressOrRange_cmp, %bb.f ]
  %i.o = tail call ptr @OPENSSL_sk_set_cmp_func(ptr noundef nonnull %i.m, ptr noundef nonnull %v6IPAddressOrRange_cmp.sink.i) #13 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %.sink.split.i, %bb.f
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !19   ; 2 uses
  store i32 1, ptr %i.p, align 8, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.m, ptr %i.q, align 8, !tbaa !18
  br label %bb.i

make_prefix_or_range.exit.thread:                 ; preds = %bb.a, %bb.d, %bb.b, %.thread23.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  br label %bb.l

bb.i:                                             ; preds = %bb.h, %bb.e
  %.018.i = phi ptr [ %i.m, %bb.h ], [ %i.k, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %switch.selectcmp.i = icmp eq i32 %1, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 16, i32 0
  %switch.selectcmp2.i = icmp eq i32 %1, 1
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 4, i32 %switch.select.i
  %i.r = call fastcc i32 @make_addressRange(ptr noundef %i.a, ptr noundef %3, ptr noundef %4, i32 noundef %switch.select3.i)
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.t = tail call i32 @OPENSSL_sk_push(ptr noundef nonnull %.018.i, ptr noundef %i.s) #13
  %.not10 = icmp eq i32 %i.t, 0
  br i1 %.not10, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @ASN1_item_free(ptr noundef %i.s, ptr noundef nonnull @IPAddressOrRange_it.local_it) #13
  br label %bb.l

bb.l:                                             ; preds = %make_prefix_or_range.exit.thread, %bb.j, %bb.i, %bb.k
  %.0 = phi i32 [ 0, %make_prefix_or_range.exit.thread ], [ 0, %bb.i ], [ 0, %bb.k ], [ 1, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @make_addressRange(ptr nofree noundef nonnull writeonly captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 0, 17) %3) unnamed_addr #1 {
bb.a:
  %i.a = zext nneg i32 %3 to i64
  %i.b = tail call i32 @memcmp(ptr noundef %1, ptr noundef %2, i64 noundef %i.a) #14
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc i32 @range_should_be_prefix(ptr noundef %1, ptr noundef %2, i32 noundef %3) ; 2 uses
  %i.e = icmp sgt i32 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call fastcc i32 @make_addressPrefix(ptr noundef %0, ptr noundef %1, i32 noundef %i.d, i32 noundef %3)
  br label %bb.x

bb.d:                                             ; preds = %bb.b
  %i.g = tail call ptr @ASN1_item_new(ptr noundef nonnull @IPAddressOrRange_it.local_it) #13 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.x, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.i = tail call ptr @ASN1_item_new(ptr noundef nonnull @IPAddressRange_it.local_it) #13 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 10 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !18
  %i.k = icmp eq ptr %i.i, null
  br i1 %i.k, label %bb.w, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !29
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = tail call ptr @ASN1_BIT_STRING_new() #13 ; 2 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !18
  store ptr %i.n, ptr %i.o, align 8, !tbaa !29
  %i.p = icmp eq ptr %i.n, null
  br i1 %i.p, label %bb.w, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !18
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.f
  %i.q = phi ptr [ %.pre, %._crit_edge ], [ %i.i, %bb.f ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !31
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = tail call ptr @ASN1_BIT_STRING_new() #13 ; 2 uses
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.u, ptr %i.w, align 8, !tbaa !31
  %i.x = icmp eq ptr %i.u, null
  br i1 %i.x, label %bb.w, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not6566 = icmp eq i32 %3, 0                   ; 2 uses
  br i1 %.not6566, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %bb.k
  %.05767 = phi i32 [ %5, %bb.k ], [ %3, %bb.j ]  ; 3 uses
  %4 = zext nneg i32 %.05767 to i64
  %i.y = getelementptr i8, ptr %1, i64 %4
  %i.z = getelementptr i8, ptr %i.y, i64 -1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !18
  %i.ab = icmp eq i8 %i.aa, 0                     ; 3 uses
  br i1 %i.ab, label %bb.k, label %.critedge

bb.k:                                             ; preds = %.lr.ph
  %5 = add nsw i32 %.05767, -1                    ; 2 uses
  %.not65 = icmp eq i32 %5, 0
  br i1 %.not65, label %.critedge, label %.lr.ph, !llvm.loop !32

.critedge:                                        ; preds = %.lr.ph, %bb.k, %bb.j
  %.057.lcssa = phi i32 [ 0, %bb.j ], [ 0, %bb.k ], [ %.05767, %.lr.ph ] ; 2 uses
  %.not65.lcssa = phi i1 [ true, %bb.j ], [ %i.ab, %bb.k ], [ %i.ab, %.lr.ph ]
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !18
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !29
  %i.ae = tail call i32 @ASN1_BIT_STRING_set(ptr noundef %i.ad, ptr noundef %1, i32 noundef %.057.lcssa) #13
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %bb.w, label %bb.l

bb.l:                                             ; preds = %.critedge
  %i.af = load ptr, ptr %i.j, align 8, !tbaa !18
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !29
  tail call void @ossl_asn1_string_set_bits_left(ptr noundef %i.ag, i32 noundef 0) #13
  br i1 %.not65.lcssa, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = zext nneg i32 %.057.lcssa to i64
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 -1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !18
  %i.al = zext i8 %i.ak to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.056 = phi i32 [ 1, %bb.m ], [ %i.ao, %bb.n ]  ; 3 uses
  %i.am = lshr i32 255, %.056
  %i.an = and i32 %i.am, %i.al
  %.not62 = icmp eq i32 %i.an, 0
  %i.ao = add nuw nsw i32 %.056, 1
  br i1 %.not62, label %bb.o, label %bb.n, !llvm.loop !33

bb.o:                                             ; preds = %bb.n
  %i.ap = sub nsw i32 8, %.056
  %i.aq = sext i32 %i.ap to i64
  %i.ar = load ptr, ptr %i.j, align 8, !tbaa !18
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !29
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !34
  %i.av = or i64 %i.au, %i.aq
  store i64 %i.av, ptr %i.at, align 8, !tbaa !34
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  br i1 %.not6566, label %.critedge2, label %.lr.ph74

.lr.ph74:                                         ; preds = %bb.p, %bb.q
  %.173 = phi i32 [ %7, %bb.q ], [ %3, %bb.p ]    ; 4 uses
  %6 = zext nneg i32 %.173 to i64
  %i.aw = getelementptr i8, ptr %2, i64 %6
  %i.ax = getelementptr i8, ptr %i.aw, i64 -1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !18
  %.not86.not = icmp ne i8 %i.ay, -1              ; 3 uses
  br i1 %.not86.not, label %.critedge2, label %bb.q

bb.q:                                             ; preds = %.lr.ph74
  %7 = add nsw i32 %.173, -1
  %i.az = icmp sgt i32 %.173, 1
  br i1 %i.az, label %.lr.ph74, label %.critedge2, !llvm.loop !35

.critedge2:                                       ; preds = %.lr.ph74, %bb.q, %bb.p
  %.1.lcssa = phi i32 [ 0, %bb.p ], [ 0, %bb.q ], [ %.173, %.lr.ph74 ] ; 2 uses
  %.lcssa = phi i1 [ false, %bb.p ], [ %.not86.not, %bb.q ], [ %.not86.not, %.lr.ph74 ]
  %i.ba = load ptr, ptr %i.j, align 8, !tbaa !18
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !31
  %i.bd = tail call i32 @ASN1_BIT_STRING_set(ptr noundef %i.bc, ptr noundef %2, i32 noundef %.1.lcssa) #13
  %.not63 = icmp eq i32 %i.bd, 0
  br i1 %.not63, label %bb.w, label %bb.r

bb.r:                                             ; preds = %.critedge2
  %i.be = load ptr, ptr %i.j, align 8, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !31
  tail call void @ossl_asn1_string_set_bits_left(ptr noundef %i.bg, i32 noundef 0) #13
  br i1 %.lcssa, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.bh = zext nneg i32 %.1.lcssa to i64
  %i.bi = getelementptr i8, ptr %2, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.bi, i64 -1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !18
  %i.bl = zext i8 %i.bk to i32
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %bb.s
  %.0 = phi i32 [ 1, %bb.s ], [ %i.bo, %bb.t ]    ; 3 uses
  %i.bm = lshr i32 255, %.0                       ; 2 uses
  %i.bn = and i32 %i.bm, %i.bl
  %.not64 = icmp eq i32 %i.bn, %i.bm
  %i.bo = add nuw nsw i32 %.0, 1
  br i1 %.not64, label %bb.u, label %bb.t, !llvm.loop !36

bb.u:                                             ; preds = %bb.t
  %i.bp = sub nsw i32 8, %.0
  %i.bq = sext i32 %i.bp to i64
  %i.br = load ptr, ptr %i.j, align 8, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !31
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !34
  %i.bw = or i64 %i.bv, %i.bq
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !34
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  store ptr %i.g, ptr %0, align 8, !tbaa !25
  br label %bb.x

bb.w:                                             ; preds = %.critedge2, %.critedge, %bb.i, %bb.g, %bb.e
  tail call void @ASN1_item_free(ptr noundef nonnull %i.g, ptr noundef nonnull @IPAddressOrRange_it.local_it) #13
  br label %bb.x

bb.x:                                             ; preds = %bb.d, %bb.a, %bb.w, %bb.v, %bb.c
  %.058 = phi i32 [ 1, %bb.v ], [ %i.f, %bb.c ], [ 0, %bb.a ], [ 0, %bb.w ], [ 0, %bb.d ]
  ret i32 %.058
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 17) i32 @X509v3_addr_get_range(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef captures(address_is_null) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #5 {
bb.a:
  %switch.selectcmp.i = icmp eq i32 %1, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 16, i32 0
  %switch.selectcmp2.i = icmp eq i32 %1, 1
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 4, i32 %switch.select.i ; 4 uses
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %3, null
  %or.cond3 = or i1 %or.cond, %i.c
  %i.d = icmp eq i32 %switch.select3.i, 0
  %or.cond5 = or i1 %or.cond3, %i.d
  %i.e = icmp slt i32 %4, %switch.select3.i
  %or.cond26 = or i1 %i.e, %or.cond5
  br i1 %or.cond26, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %0, align 8, !tbaa !27
  %switch = icmp ult i32 %i.f, 2
  br i1 %switch, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call fastcc i32 @extract_min_max(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, i32 noundef %switch.select3.i)
  %.not25 = icmp eq i32 %i.g, 0
  %spec.select = select i1 %.not25, i32 0, i32 %switch.select3.i
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %spec.select, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @extract_min_max(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull captures(none) %2, i32 noundef range(i32 0, 17) %3) unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %addr_expand.exit27, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !27
  switch i32 %i.b, label %addr_expand.exit27 [
    i32 0, label %bb.c
    i32 1, label %bb.j
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18   ; 5 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !17   ; 3 uses
  %or.cond.i = icmp ugt i32 %i.e, %3
  br i1 %or.cond.i, label %addr_expand.exit27, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.h = zext nneg i32 %i.e to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr align 1 %i.g, i64 %i.h, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !34
  %i.k = and i64 %i.j, 7                          ; 2 uses
  %.not24.i = icmp eq i64 %i.k, 0
  %.pre46 = load i32, ptr %i.d, align 8, !tbaa !17 ; 2 uses
  br i1 %.not24.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = trunc nuw nsw i64 %i.k to i8
  %i.m = sext i32 %.pre46 to i64
  %i.n = getelementptr i8, ptr %1, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -1       ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !18
  %i.q = shl nsw i8 -1, %i.l
  %i.r = and i8 %i.p, %i.q
  store i8 %i.r, ptr %i.o, align 1, !tbaa !18
  %.pre45 = load i32, ptr %i.d, align 8, !tbaa !17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.s = phi i32 [ %.pre45, %bb.f ], [ %.pre46, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds i8, ptr %1, i64 %i.t
  %i.v = sub nsw i32 %3, %i.s
  %i.w = sext i32 %i.v to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.u, i8 0, i64 %i.w, i1 false)
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !18   ; 5 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !17   ; 3 uses
  %or.cond.i23 = icmp ugt i32 %i.y, %3
  br i1 %or.cond.i23, label %addr_expand.exit27, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i24 = icmp eq i32 %i.y, 0
  br i1 %.not.i24, label %addr_expand.exit27.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !13
  %i.ab = zext nneg i32 %i.y to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %2, ptr align 1 %i.aa, i64 %i.ab, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !34
  %i.ae = and i64 %i.ad, 7                        ; 2 uses
  %.not24.i25 = icmp eq i64 %i.ae, 0
  %.pre48 = load i32, ptr %i.x, align 8, !tbaa !17 ; 2 uses
  br i1 %.not24.i25, label %addr_expand.exit27.sink.split, label %addr_expand.exit27.sink.split.sink.split

bb.j:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !18
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !29 ; 5 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !17 ; 3 uses
  %or.cond.i28 = icmp ugt i32 %i.ai, %3
  br i1 %or.cond.i28, label %addr_expand.exit27, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i29 = icmp eq i32 %i.ai, 0
  br i1 %.not.i29, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !13
  %i.al = zext nneg i32 %i.ai to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr align 1 %i.ak, i64 %i.al, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !34
  %i.ao = and i64 %i.an, 7                        ; 2 uses
  %.not24.i30 = icmp eq i64 %i.ao, 0
  %.pre42 = load i32, ptr %i.ah, align 8, !tbaa !17 ; 2 uses
  br i1 %.not24.i30, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = trunc nuw nsw i64 %i.ao to i8
  %i.aq = sext i32 %.pre42 to i64
  %i.ar = getelementptr i8, ptr %1, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.ar, i64 -1     ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !18
  %i.au = shl nsw i8 -1, %i.ap
  %i.av = and i8 %i.at, %i.au
  store i8 %i.av, ptr %i.as, align 1, !tbaa !18
  %.pre = load i32, ptr %i.ah, align 8, !tbaa !17
  br label %bb.n
end_hunk_0
