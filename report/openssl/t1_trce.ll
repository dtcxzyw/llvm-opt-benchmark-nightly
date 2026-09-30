Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/t1_trce?download=true
inline.NumInlined: 61
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumUnrolled: 25
begin_hunk_0_@ssl_print_ticket:bb.a
bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @BIO_indent(ptr noundef %0, i32 noundef 8, i32 noundef 80) #5 ; 0 uses
  %i.e = tail call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.581) #5 ; 0 uses
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.f = icmp ult i64 %3, 4
  br i1 %i.f, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %2, align 1
  %i.h = tail call i32 @llvm.bswap.i32(i32 %i.g)
  %i.i = add i64 %3, -4                           ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.k = tail call i32 @BIO_indent(ptr noundef %0, i32 noundef 8, i32 noundef 80) #5 ; 0 uses
  %i.l = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.582, i32 noundef %i.h) #5 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !78   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 216
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !81
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.r = load i32, ptr %i.q, align 8, !tbaa !83
  %i.s = and i32 %i.r, 8
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.e, label %thread-pre-split

bb.e:                                             ; preds = %bb.d
  %i.t = load i32, ptr %i.n, align 8, !tbaa !94   ; 2 uses
  %i.u = icmp slt i32 %i.t, 772
  %.not29 = icmp eq i32 %i.t, 65536
  %or.cond = or i1 %i.u, %.not29
  br i1 %or.cond, label %thread-pre-split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = icmp ult i64 %i.i, 4
  br i1 %i.v, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = load i32, ptr %i.j, align 1
  %i.x = tail call i32 @llvm.bswap.i32(i32 %i.w)
  %i.y = add i64 %3, -8                           ; 4 uses
  store i64 %i.y, ptr %i.b, align 8, !tbaa !89
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store ptr %i.z, ptr %i.a, align 8, !tbaa !88
  %i.aa = tail call i32 @BIO_indent(ptr noundef %0, i32 noundef 8, i32 noundef 80) #5 ; 0 uses
  %i.ab = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.583, i32 noundef %i.x) #5 ; 0 uses
  %i.ac = icmp eq i64 %i.y, 0
  br i1 %i.ac, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = load i8, ptr %i.z, align 1, !tbaa !84   ; 3 uses
  %i.ae = zext i8 %i.ad to i64                    ; 3 uses
  %i.af = add nuw nsw i64 %i.ae, 1                ; 2 uses
  %.not49 = icmp ugt i64 %i.y, %i.ae
  br i1 %.not49, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.ah = tail call i32 @BIO_indent(ptr noundef %0, i32 noundef range(i32 0, 15) 8, i32 noundef 80) #5 ; 0 uses
  %i.ai = zext i8 %i.ad to i32
  %i.aj = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.584, i32 noundef %i.ai) #5 ; 0 uses
  %.not.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i, label %.loopexit50, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i, %.lr.ph.i.i
  %.011.i.i = phi i64 [ %i.ao, %.lr.ph.i.i ], [ 0, %bb.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.011.i.i
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !84
  %i.am = zext i8 %i.al to i32
  %i.an = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %i.am) #5 ; 0 uses
  %i.ao = add nuw nsw i64 %.011.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ao, %i.ae
  br i1 %exitcond.not.i.i, label %.loopexit50, label %.lr.ph.i.i, !llvm.loop !0

.loopexit50:                                      ; preds = %.lr.ph.i.i, %bb.i
  %i.ap = tail call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.12) #5 ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.af
  %i.ar = sub nuw i64 %i.y, %i.af
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.e, %bb.d, %.loopexit50
  %i.as = phi ptr [ %i.aq, %.loopexit50 ], [ %i.j, %bb.d ], [ %i.j, %bb.e ] ; 4 uses
  %i.at = phi i64 [ %i.ar, %.loopexit50 ], [ %i.i, %bb.d ], [ %i.i, %bb.e ] ; 3 uses
  %i.au = icmp ult i64 %i.at, 2
  br i1 %i.au, label %.critedge, label %bb.j

bb.j:                                             ; preds = %thread-pre-split
  %i.av = load i8, ptr %i.as, align 1, !tbaa !84
  %i.aw = zext i8 %i.av to i64
  %i.ax = shl nuw nsw i64 %i.aw, 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !84
  %i.ba = zext i8 %i.az to i64
  %i.bb = or disjoint i64 %i.ax, %i.ba            ; 4 uses
  %i.bc = add nuw nsw i64 %i.bb, 2                ; 3 uses
  %i.bd = icmp ult i64 %i.at, %i.bc
  br i1 %i.bd, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.bf = tail call i32 @BIO_indent(ptr noundef %0, i32 noundef range(i32 0, 15) 8, i32 noundef 80) #5 ; 0 uses
  %i.bg = trunc nuw nsw i64 %i.bb to i32
  %i.bh = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.585, i32 noundef %i.bg) #5 ; 0 uses
  %.not.i.i38 = icmp eq i64 %i.bb, 0
  br i1 %.not.i.i38, label %.loopexit, label %.lr.ph.i.i39

.lr.ph.i.i39:                                     ; preds = %bb.k, %.lr.ph.i.i39
  %.011.i.i40 = phi i64 [ %i.bm, %.lr.ph.i.i39 ], [ 0, %bb.k ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 %.011.i.i40
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !84
  %i.bk = zext i8 %i.bj to i32
  %i.bl = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %i.bk) #5 ; 0 uses
  %i.bm = add nuw nsw i64 %.011.i.i40, 1          ; 2 uses
  %exitcond.not.i.i41 = icmp eq i64 %i.bm, %i.bb
  br i1 %exitcond.not.i.i41, label %.loopexit, label %.lr.ph.i.i39, !llvm.loop !0

.loopexit:                                        ; preds = %.lr.ph.i.i39, %bb.k
  %i.bn = tail call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.12) #5 ; 0 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bc
  store ptr %i.bo, ptr %i.a, align 8, !tbaa !88
  %i.bp = sub nuw i64 %i.at, %i.bc                ; 3 uses
  store i64 %i.bp, ptr %i.b, align 8, !tbaa !89
  %i.bq = load ptr, ptr %i.m, align 8, !tbaa !78  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 216
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !81
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 80
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !83
  %i.bv = and i32 %i.bu, 8
  %.not32 = icmp eq i32 %i.bv, 0
  br i1 %.not32, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.loopexit
  %i.bw = load i32, ptr %i.bq, align 8, !tbaa !94 ; 2 uses
  %i.bx = icmp slt i32 %i.bw, 772
  %.not33 = icmp eq i32 %i.bw, 65536
  %or.cond36 = or i1 %i.bx, %.not33
  br i1 %or.cond36, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.by = call fastcc i32 @ssl_print_extensions(ptr noundef %0, i32 noundef 8, i32 noundef 0, i8 noundef zeroext 4, ptr noundef %i.a, ptr noundef %i.b)
  %.not34 = icmp eq i32 %i.by, 0
  br i1 %.not34, label %.critedge, label %._crit_edge

._crit_edge:                                      ; preds = %bb.m
  %.pre = load i64, ptr %i.b, align 8, !tbaa !89
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %bb.l, %.loopexit
  %i.bz = phi i64 [ %.pre, %._crit_edge ], [ %i.bp, %bb.l ], [ %i.bp, %.loopexit ]
  %.not35 = icmp eq i64 %i.bz, 0
  %.37 = zext i1 %.not35 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.j, %thread-pre-split, %bb.h, %bb.g, %bb.f, %bb.n, %bb.m, %bb.c, %bb.b
  %.1 = phi i32 [ 1, %bb.b ], [ 0, %bb.f ], [ %.37, %bb.n ], [ 0, %bb.m ], [ 0, %bb.h ], [ 0, %bb.c ], [ 0, %bb.g ], [ 0, %thread-pre-split ], [ 0, %bb.j ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @ssl_print_extensions(ptr noundef %0, i32 noundef range(i32 6, 9) %1, i32 noundef %2, i8 noundef zeroext range(i8 1, 14) %3, ptr nofree noundef nonnull captures(none) %4, ptr nofree noundef nonnull captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %5, align 8, !tbaa !89     ; 2 uses
  %i.b = load ptr, ptr %4, align 8, !tbaa !88     ; 3 uses
  %i.c = tail call i32 @BIO_indent(ptr noundef %0, i32 noundef %1, i32 noundef 80) #5 ; 0 uses
  switch i64 %i.a, label %bb.c [
    i64 0, label %bb.b
    i64 1, label %.critedge
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.586) #5 ; 0 uses
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.b, align 1, !tbaa !84
  %i.f = zext i8 %i.e to i32
  %i.g = shl nuw nsw i32 %i.f, 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !84
  %i.j = zext i8 %i.i to i32
  %i.k = or disjoint i32 %i.g, %i.j               ; 3 uses
  %i.l = zext nneg i32 %i.k to i64                ; 3 uses
  %i.m = add i64 %i.a, -2                         ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %i.o = icmp eq i32 %i.k, 0
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = tail call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.586) #5 ; 0 uses
  store ptr %i.n, ptr %4, align 8, !tbaa !88
  store i64 %i.m, ptr %5, align 8, !tbaa !89
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.q = icmp ult i64 %i.m, %i.l
  br i1 %i.q, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.587, i32 noundef %i.k) #5 ; 0 uses
  %i.s = sub nuw i64 %i.m, %i.l
  %i.t = add nuw nsw i32 %1, 2                    ; 3 uses
  %.not.i = icmp eq i32 %2, 0                     ; 3 uses
  %i.u = add nuw nsw i32 %1, 4                    ; 12 uses
  %.not232.i = icmp eq i8 %3, 4
  %6 = or disjoint i32 %i.t, 4                    ; 9 uses
  %i.v = icmp ne i32 %2, 0                        ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %ssl_print_extension.exit.thread68
  %.05593 = phi ptr [ %i.n, %bb.f ], [ %i.jg, %ssl_print_extension.exit.thread68 ] ; 19 uses
  %.05692 = phi i64 [ %i.l, %bb.f ], [ %i.jh, %ssl_print_extension.exit.thread68 ] ; 4 uses
  %i.w = icmp ult i64 %.05692, 4
  br i1 %i.w, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load i8, ptr %.05593, align 1, !tbaa !84
  %i.y = zext i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.05593, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !84
  %i.ac = zext i8 %i.ab to i32
  %i.ad = or disjoint i32 %i.z, %i.ac             ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.05593, i64 2
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !84
  %i.ag = zext i8 %i.af to i32
  %i.ah = shl nuw nsw i32 %i.ag, 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.05593, i64 3
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !84
  %i.ak = zext i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ah, %i.ak            ; 21 uses
  %i.am = zext nneg i32 %i.al to i64              ; 15 uses
  %i.an = add nuw nsw i64 %i.am, 4                ; 2 uses
  %i.ao = icmp ult i64 %.05692, %i.an
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.588, i32 noundef %i.ad, i32 noundef %i.al) #5 ; 0 uses
  %i.aq = trunc nuw nsw i64 %.05692 to i32
  %i.ar = tail call i32 @BIO_dump_indent(ptr noundef %0, ptr noundef nonnull %.05593, i32 noundef %i.aq, i32 noundef %i.t) #5 ; 0 uses
  br label %.critedge

bb.j:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %.05593, i64 4 ; 22 uses
  %i.at = tail call i32 @BIO_indent(ptr noundef %0, i32 noundef range(i32 8, 11) %i.t, i32 noundef 80) #5 ; 0 uses
  %trunc630.i = trunc nuw i32 %i.ad to i16        ; 2 uses
  switch i16 %trunc630.i, label %do_ssl_trace_str.exit.i [
    i16 0, label %bb.k
    i16 1, label %.fold.split.i
    i16 2, label %.fold.split430.i
    i16 3, label %.fold.split431.i
    i16 4, label %.fold.split432.i
    i16 5, label %.fold.split433.i
    i16 6, label %.fold.split434.i
    i16 7, label %.fold.split435.i
    i16 8, label %.fold.split436.i
    i16 9, label %.fold.split437.i
    i16 10, label %.fold.split438.i
    i16 11, label %.fold.split439.i
    i16 12, label %.fold.split440.i
    i16 13, label %.fold.split441.i
    i16 14, label %.fold.split442.i
    i16 16, label %.fold.split443.i
    i16 18, label %.fold.split444.i
    i16 19, label %.fold.split445.i
    i16 20, label %.fold.split446.i
    i16 21, label %.fold.split447.i
    i16 22, label %.fold.split448.i
    i16 23, label %.fold.split449.i
    i16 27, label %.fold.split450.i
    i16 35, label %.fold.split451.i
    i16 41, label %.fold.split452.i
    i16 42, label %.fold.split453.i
    i16 43, label %.fold.split454.i
    i16 44, label %.fold.split455.i
    i16 45, label %.fold.split456.i
    i16 47, label %.fold.split457.i
    i16 49, label %.fold.split458.i
    i16 50, label %.fold.split459.i
    i16 51, label %.fold.split460.i
    i16 -255, label %.fold.split461.i
    i16 13172, label %.fold.split462.i
    i16 -499, label %.fold.split463.i
    i16 -768, label %.fold.split464.i
  ]

.fold.split.i:                                    ; preds = %bb.j
  br label %bb.k

.fold.split430.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split431.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split432.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split433.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split434.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split435.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split436.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split437.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split438.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split439.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split440.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split441.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split442.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split443.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split444.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split445.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split446.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split447.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split448.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split449.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split450.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split451.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split452.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split453.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split454.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split455.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split456.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split457.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split458.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split459.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split460.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split461.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split462.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split463.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split464.i:                                 ; preds = %bb.j
  br label %bb.k

bb.k:                                             ; preds = %.fold.split464.i, %.fold.split463.i, %.fold.split462.i, %.fold.split461.i, %.fold.split460.i, %.fold.split459.i, %.fold.split458.i, %.fold.split457.i, %.fold.split456.i, %.fold.split455.i, %.fold.split454.i, %.fold.split453.i, %.fold.split452.i, %.fold.split451.i, %.fold.split450.i, %.fold.split449.i, %.fold.split448.i, %.fold.split447.i, %.fold.split446.i, %.fold.split445.i, %.fold.split444.i, %.fold.split443.i, %.fold.split442.i, %.fold.split441.i, %.fold.split440.i, %.fold.split439.i, %.fold.split438.i, %.fold.split437.i, %.fold.split436.i, %.fold.split435.i, %.fold.split434.i, %.fold.split433.i, %.fold.split432.i, %.fold.split431.i, %.fold.split430.i, %.fold.split.i, %bb.j
  %.0810.i.lcssa.i = phi ptr [ @ssl_exts_tbl, %bb.j ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 560), %.fold.split463.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 16), %.fold.split.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 32), %.fold.split430.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 48), %.fold.split431.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 64), %.fold.split432.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 80), %.fold.split433.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 96), %.fold.split434.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 112), %.fold.split435.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 128), %.fold.split436.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 144), %.fold.split437.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 160), %.fold.split438.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 176), %.fold.split439.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 192), %.fold.split440.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 208), %.fold.split441.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 224), %.fold.split442.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 240), %.fold.split443.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 256), %.fold.split444.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 272), %.fold.split445.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 288), %.fold.split446.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 304), %.fold.split447.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 320), %.fold.split448.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 336), %.fold.split449.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 352), %.fold.split450.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 368), %.fold.split451.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 384), %.fold.split452.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 400), %.fold.split453.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 416), %.fold.split454.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 432), %.fold.split455.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 448), %.fold.split456.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 464), %.fold.split457.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 480), %.fold.split458.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 496), %.fold.split459.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 512), %.fold.split460.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 528), %.fold.split461.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 544), %.fold.split462.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 576), %.fold.split464.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %.0810.i.lcssa.i, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !87
  br label %do_ssl_trace_str.exit.i

do_ssl_trace_str.exit.i:                          ; preds = %bb.k, %bb.j
  %.07.i.i = phi ptr [ %i.av, %bb.k ], [ @.str.15, %bb.j ]
  %i.aw = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.589, ptr noundef %.07.i.i, i32 noundef range(i32 0, 65536) %i.ad, i32 noundef %i.al) #5 ; 0 uses
  switch i16 %trunc630.i, label %bb.bo [
    i16 27, label %bb.l
    i16 1, label %bb.n
end_hunk_0
