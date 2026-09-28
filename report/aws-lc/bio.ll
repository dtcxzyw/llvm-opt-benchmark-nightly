Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/bio?download=true
inline.NumInlined: 36
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@BIO_next:bb.a
bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @BIO_find_type(ptr nofree noundef readonly captures(address_is_null, ret: address, provenance) %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = and i32 %1, 255
  %.not18 = icmp eq i32 %i.a, 0
  br i1 %.not18, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.b, %bb.d
  %.013.us = phi ptr [ %i.f, %bb.d ], [ %0, %bb.b ] ; 3 uses
  %i.b = load ptr, ptr %.013.us, align 8, !tbaa !18 ; 2 uses
  %.not17.us = icmp eq ptr %i.b, null
  br i1 %.not17.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.split.us
  %i.c = load i32, ptr %i.b, align 8, !tbaa !39
  %i.d = and i32 %i.c, %1
  %.not19.us = icmp eq i32 %i.d, 0
  br i1 %.not19.us, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c, %.split.us
  %i.e = getelementptr inbounds nuw i8, ptr %.013.us, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22   ; 2 uses
  %.not20.us = icmp eq ptr %i.f, null
  br i1 %.not20.us, label %.loopexit, label %.split.us, !llvm.loop !49

.split:                                           ; preds = %bb.b, %bb.f
  %.013 = phi ptr [ %i.k, %bb.f ], [ %0, %bb.b ]  ; 3 uses
  %i.g = load ptr, ptr %.013, align 8, !tbaa !18  ; 2 uses
  %.not17 = icmp eq ptr %i.g, null
  br i1 %.not17, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.split
  %i.h = load i32, ptr %i.g, align 8, !tbaa !39
  %i.i = icmp eq i32 %i.h, %1
  br i1 %i.i, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e, %.split
  %i.j = getelementptr inbounds nuw i8, ptr %.013, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22   ; 2 uses
  %.not20 = icmp eq ptr %i.k, null
  br i1 %.not20, label %.loopexit, label %.split, !llvm.loop !49

.loopexit:                                        ; preds = %bb.e, %bb.f, %bb.d, %bb.c, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %.013.us, %bb.c ], [ null, %bb.d ], [ null, %bb.f ], [ %.013, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @BIO_indent(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %spec.select = tail call i32 @llvm.umin.i32(i32 %1, i32 %2) ; 2 uses
  %.not9 = icmp eq i32 %spec.select, 0
  br i1 %.not9, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.a = add i32 %.110, -1                        ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !50

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.110 = phi i32 [ %i.a, %bb.b ], [ %spec.select, %bb.a ]
  %i.b = tail call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.1)
  %.not8 = icmp eq i32 %i.b, 1
  br i1 %.not8, label %bb.b, label %._crit_edge11, !llvm.loop !50

._crit_edge11:                                    ; preds = %.lr.ph
  br label %._crit_edge, !llvm.loop !50

._crit_edge:                                      ; preds = %bb.b, %._crit_edge11, %bb.a
  %.0 = phi i32 [ 0, %._crit_edge11 ], [ 1, %bb.a ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @ERR_print_errors(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @ERR_print_errors_cb(ptr noundef nonnull @print_bio, ptr noundef %0) #15
  ret void
}

declare void @ERR_print_errors_cb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @print_bio(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 {
bb.a:
  %.not21.i = icmp eq i64 %1, 0
  br i1 %.not21.i, label %BIO_write_all.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.01323.i = phi ptr [ %i.f, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %.01422.i = phi i64 [ %i.g, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.a = tail call i64 @llvm.umin.i64(i64 %.01422.i, i64 2147483647)
  %i.b = trunc nuw nsw i64 %i.a to i32
  %i.c = tail call i32 @BIO_write(ptr noundef %2, ptr noundef %.01323.i, i32 noundef %i.b) ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %.thread.i

.thread.i:                                        ; preds = %.lr.ph.i
  tail call void @ERR_put_error(i32 noundef 12, i32 noundef 0, i32 noundef 107, ptr noundef nonnull @.str, i32 noundef 339) #15
  br label %BIO_write_all.exit

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = zext nneg i32 %i.c to i64                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.01323.i, i64 %i.e
  %i.g = sub i64 %.01422.i, %i.e                  ; 2 uses
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %BIO_write_all.exit, label %.lr.ph.i, !llvm.loop !1

BIO_write_all.exit:                               ; preds = %bb.b, %bb.a, %.thread.i
  %.2.i = phi i32 [ 0, %.thread.i ], [ 1, %bb.a ], [ 1, %bb.b ]
  ret i32 %.2.i
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @BIO_read_asn1(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [6 x i8], align 2                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = call i32 @BIO_read(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 2) ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0                     ; 2 uses
  br i1 %i.c, label %bb.b, label %.loopexit114

bb.b:                                             ; preds = %bb.a
  %.not.peel.i = icmp eq i32 %i.b, 2
  br i1 %.not.peel.i, label %.loopexit115, label %.lr.ph.peel.next.i

.lr.ph.peel.next.i:                               ; preds = %bb.b
  %i.d = zext nneg i32 %i.b to i64                ; 2 uses
  %i.e = sub nsw i64 2, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.d
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.peel.next.i
  %.01734.i = phi i64 [ %i.n, %bb.c ], [ %i.e, %.lr.ph.peel.next.i ] ; 3 uses
  %.02133.i = phi ptr [ %i.m, %bb.c ], [ %i.f, %.lr.ph.peel.next.i ] ; 2 uses
  %i.g = icmp ult i64 %.01734.i, 2147483648
  %i.h = trunc i64 %.01734.i to i32
  %i.i = select i1 %i.g, i32 %i.h, i32 2147483647
  %i.j = call i32 @BIO_read(ptr noundef %0, ptr noundef %.02133.i, i32 noundef %i.i) ; 3 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %.loopexit114

bb.c:                                             ; preds = %.lr.ph.i
  %i.l = zext nneg i32 %i.j to i64                ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02133.i, i64 %i.l
  %i.n = sub i64 %.01734.i, %i.l                  ; 2 uses
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %.loopexit115, label %.lr.ph.i, !llvm.loop !51

.loopexit114:                                     ; preds = %.lr.ph.i, %bb.a
  %.lcssa.i = phi i32 [ %i.b, %bb.a ], [ %i.j, %.lr.ph.i ]
  %i.o = icmp ne i32 %.lcssa.i, 0
  %.not110 = or i1 %i.c, %i.o
  br i1 %.not110, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.loopexit114
  call void @ERR_put_error(i32 noundef 12, i32 noundef 0, i32 noundef 123, ptr noundef nonnull @.str, i32 noundef 745) #15
  br label %.thread

bb.e:                                             ; preds = %.loopexit114
  call void @ERR_put_error(i32 noundef 12, i32 noundef 0, i32 noundef 162, ptr noundef nonnull @.str, i32 noundef 747) #15
  br label %.thread

.loopexit115:                                     ; preds = %bb.c, %bb.b
  %i.p = load i8, ptr %i.a, align 2, !tbaa !55
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !55    ; 4 uses
  %i.s = zext i8 %i.p to i32                      ; 2 uses
  %i.t = and i32 %i.s, 31
  %i.u = icmp eq i32 %i.t, 31
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.loopexit115
  call void @ERR_put_error(i32 noundef 12, i32 noundef 0, i32 noundef 109, ptr noundef nonnull @.str, i32 noundef 757) #15
  br label %.thread

bb.g:                                             ; preds = %.loopexit115
  %i.v = icmp sgt i8 %i.r, -1
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = zext nneg i8 %i.r to i64
  br label %bb.z

bb.i:                                             ; preds = %bb.g
  %i.x = and i8 %i.r, 127                         ; 5 uses
  %i.y = zext nneg i8 %i.x to i64                 ; 4 uses
  %i.z = and i32 %i.s, 32
  %i.aa = icmp ne i32 %i.z, 0
  %i.ab = icmp eq i8 %i.x, 0                      ; 2 uses
  %or.cond = select i1 %i.aa, i1 %i.ab, i1 false
  br i1 %or.cond, label %bb.j, label %bb.s

bb.j:                                             ; preds = %bb.i
  %spec.select.i = call i64 @llvm.umin.i64(i64 %3, i64 4098) ; 3 uses
  %i.ac = icmp ult i64 %3, 2
  br i1 %i.ac, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = call ptr @OPENSSL_malloc(i64 noundef %spec.select.i) #15 ; 3 uses
  store ptr %i.ad, ptr %1, align 8, !tbaa !35
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = load i16, ptr %i.a, align 2
  store i16 %i.af, ptr %i.ad, align 1
  %i.ag = icmp ugt i64 %3, 4098
  br i1 %i.ag, label %.outer.split.i, label %.outer.split.us.i

.outer.split.us.i:                                ; preds = %.split.i, %bb.l
  %.151.ph.lcssa.i = phi i64 [ %spec.select.i, %bb.l ], [ %.2.i71, %.split.i ] ; 3 uses
  %.0.ph.lcssa.i = phi i64 [ 2, %bb.l ], [ %i.ax, %.split.i ] ; 2 uses
  %i.ah = icmp eq i64 %.0.ph.lcssa.i, %.151.ph.lcssa.i
  br i1 %i.ah, label %.sink.split, label %.lr.ph128

.lr.ph128:                                        ; preds = %.outer.split.us.i, %bb.m
  %.0.us.i127 = phi i64 [ %i.ao, %bb.m ], [ %.0.ph.lcssa.i, %.outer.split.us.i ] ; 4 uses
  %i.ai = sub i64 %.151.ph.lcssa.i, %.0.us.i127
  %spec.store.select.us.i = call i64 @llvm.umin.i64(i64 %i.ai, i64 2147483647)
  %i.aj = load ptr, ptr %1, align 8, !tbaa !35
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.0.us.i127
  %i.al = trunc nuw nsw i64 %spec.store.select.us.i to i32
  %i.am = call i32 @BIO_read(ptr noundef %0, ptr noundef %i.ak, i32 noundef %i.al) ; 2 uses
  switch i32 %i.am, label %bb.m [
    i32 0, label %bio_read_all.exit
    i32 -1, label %.sink.split
  ]

bb.m:                                             ; preds = %.lr.ph128
  %i.an = sext i32 %i.am to i64
  %i.ao = add i64 %.0.us.i127, %i.an              ; 2 uses
  %i.ap = icmp eq i64 %i.ao, %.151.ph.lcssa.i
  br i1 %i.ap, label %.sink.split, label %.lr.ph128

.outer.split.i:                                   ; preds = %bb.l, %.split.i
  %.0.ph93.i = phi i64 [ %i.ax, %.split.i ], [ 2, %bb.l ]
  %.151.ph92.i = phi i64 [ %.2.i71, %.split.i ], [ %spec.select.i, %bb.l ] ; 5 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.outer.split.i
  %.0.i = phi i64 [ %i.ax, %bb.p ], [ %.0.ph93.i, %.outer.split.i ] ; 5 uses
  %i.aq = icmp eq i64 %.0.i, %.151.ph92.i
  br i1 %i.aq, label %.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = sub i64 %.151.ph92.i, %.0.i
  %spec.store.select.i = call i64 @llvm.umin.i64(i64 %i.ar, i64 2147483647)
  %i.as = load ptr, ptr %1, align 8, !tbaa !35
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %.0.i
  %i.au = trunc nuw nsw i64 %spec.store.select.i to i32
  %i.av = call i32 @BIO_read(ptr noundef %0, ptr noundef %i.at, i32 noundef %i.au) ; 2 uses
  switch i32 %i.av, label %bb.p [
    i32 0, label %bio_read_all.exit
    i32 -1, label %.sink.split
  ]

bb.p:                                             ; preds = %bb.o
  %i.aw = sext i32 %i.av to i64
  %i.ax = add i64 %.0.i, %i.aw                    ; 4 uses
  %i.ay = sub i64 %.151.ph92.i, %i.ax
  %i.az = icmp ult i64 %i.ay, 2048
  br i1 %i.az, label %bb.q, label %bb.n

bb.q:                                             ; preds = %bb.p
  %i.ba = icmp ugt i64 %.151.ph92.i, -4097
  %i.bb = add nuw i64 %.151.ph92.i, 4096
  %i.bc = call i64 @llvm.umin.i64(i64 %i.bb, i64 %3)
  %.2.i71 = select i1 %i.ba, i64 %3, i64 %i.bc    ; 4 uses
  %i.bd = load ptr, ptr %1, align 8, !tbaa !35
  %i.be = call ptr @OPENSSL_realloc(ptr noundef %i.bd, i64 noundef %.2.i71) #15 ; 2 uses
  %.not.i72 = icmp eq ptr %i.be, null
  br i1 %.not.i72, label %.sink.split, label %.split.i

.split.i:                                         ; preds = %bb.q
  store ptr %i.be, ptr %1, align 8, !tbaa !35
  %i.bf = icmp ult i64 %.2.i71, %3
  br i1 %i.bf, label %.outer.split.i, label %.outer.split.us.i

bio_read_all.exit:                                ; preds = %bb.o, %.lr.ph128
  %.us-phi.i = phi i64 [ %.0.us.i127, %.lr.ph128 ], [ %.0.i, %bb.o ]
  store i64 %.us-phi.i, ptr %2, align 8, !tbaa !29
  br label %.thread

.sink.split:                                      ; preds = %bb.q, %bb.o, %bb.n, %.lr.ph128, %bb.m, %.outer.split.us.i
  %i.bg = load ptr, ptr %1, align 8, !tbaa !35
  call void @OPENSSL_free(ptr noundef %i.bg) #15
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %bb.k, %bb.j
  call void @ERR_put_error(i32 noundef 12, i32 noundef 0, i32 noundef 162, ptr noundef nonnull @.str, i32 noundef 773) #15
  br label %.thread

bb.s:                                             ; preds = %bb.i
  %i.bh = add nsw i8 %i.x, -5
  %or.cond3 = icmp ult i8 %i.bh, -4
  br i1 %or.cond3, label %bb.t, label %.lr.ph.preheader.i

bb.t:                                             ; preds = %bb.s
  call void @ERR_put_error(i32 noundef 12, i32 noundef 0, i32 noundef 109, ptr noundef nonnull @.str, i32 noundef 780) #15
  br label %.thread

.lr.ph.preheader.i:                               ; preds = %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %i.bj = zext nneg i8 %i.x to i32
  %i.bk = call i32 @BIO_read(ptr noundef %0, ptr noundef nonnull %i.bi, i32 noundef %i.bj) ; 2 uses
  %i.bl = icmp slt i32 %i.bk, 1
  br i1 %i.bl, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %.lr.ph.preheader.i
  %i.bm = zext nneg i32 %i.bk to i64              ; 2 uses
  %i.bn = sub nsw i64 %i.y, %i.bm                 ; 2 uses
  %.not.peel.i73 = icmp eq i64 %i.bn, 0
  br i1 %.not.peel.i73, label %.lr.ph.preheader, label %.lr.ph.peel.next.i74

.lr.ph.peel.next.i74:                             ; preds = %bb.u
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bm
  br label %.lr.ph.i75

.lr.ph.i75:                                       ; preds = %bb.v, %.lr.ph.peel.next.i74
  %.01734.i76 = phi i64 [ %i.bw, %bb.v ], [ %i.bn, %.lr.ph.peel.next.i74 ] ; 3 uses
  %.02133.i77 = phi ptr [ %i.bv, %bb.v ], [ %i.bo, %.lr.ph.peel.next.i74 ] ; 2 uses
  %i.bp = icmp ult i64 %.01734.i76, 2147483648
  %i.bq = trunc i64 %.01734.i76 to i32
  %i.br = select i1 %i.bp, i32 %i.bq, i32 2147483647
  %i.bs = call i32 @BIO_read(ptr noundef %0, ptr noundef %.02133.i77, i32 noundef %i.br) ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %.lr.ph.i75
  %i.bu = zext nneg i32 %i.bs to i64              ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.02133.i77, i64 %i.bu
  %i.bw = sub i64 %.01734.i76, %i.bu              ; 2 uses
  %.not.i81 = icmp eq i64 %i.bw, 0
  br i1 %.not.i81, label %bio_read_full.exit82, label %.lr.ph.i75, !llvm.loop !51

.loopexit:                                        ; preds = %.lr.ph.i75, %.lr.ph.preheader.i
  call void @ERR_put_error(i32 noundef 12, i32 noundef 0, i32 noundef 162, ptr noundef nonnull @.str, i32 noundef 785) #15
  br label %.thread

bio_read_full.exit82:                             ; preds = %bb.v
  br i1 %i.ab, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.u, %bio_read_full.exit82
  %i.bx = add nuw nsw i64 %i.y, 2
  %xtraiter = and i64 %i.y, 3                     ; 3 uses
  %4 = add nsw i8 %i.x, -1
  %i.by = icmp ult i8 %4, 3
  br i1 %i.by, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.y, 4
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  %i.cb = load i8, ptr %i.ca, align 2, !tbaa !55
  %i.cc = zext i8 %i.cb to i32
  %i.cd = shl nuw nsw i32 %i.cc, 16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 3
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !55
  %i.ch = zext i8 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 8
  %i.cj = or disjoint i32 %i.cd, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.cm = load i8, ptr %i.cl, align 2, !tbaa !55
  %i.cn = zext i8 %i.cm to i32
  %i.co = or disjoint i32 %i.cj, %i.cn
  %i.cp = shl nuw i32 %i.co, 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 5
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !55
  %i.ct = zext i8 %i.cs to i32
  %i.cu = or disjoint i32 %i.cp, %i.ct            ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %.054125.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.cu, %._crit_edge.unr-lcssa ]
  %lcmp.mod200 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod200)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.054125.epil = phi i32 [ %.054125.epil.init, %.lr.ph.epil.preheader ], [ %i.da, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.cv = shl i32 %.054125.epil, 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.epil
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !55
  %i.cz = zext i8 %i.cy to i32
  %i.da = or disjoint i32 %i.cv, %i.cz            ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !52

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.lcssa196 = phi i32 [ %i.cu, %._crit_edge.unr-lcssa ], [ %i.da, %.lr.ph.epil ] ; 3 uses
  %i.db = icmp ult i32 %.lcssa196, 128
  br i1 %i.db, label %._crit_edge.thread, label %bb.w

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !53

._crit_edge.thread:                               ; preds = %bio_read_full.exit82, %._crit_edge
  call void @ERR_put_error(i32 noundef 12, i32 noundef 0, i32 noundef 109, ptr noundef nonnull @.str, i32 noundef 798) #15
  br label %.thread

bb.w:                                             ; preds = %._crit_edge
  %i.dc = shl i8 %i.r, 3
  %i.dd = zext i8 %i.dc to i32
  %i.de = add nsw i32 %i.dd, -8
  %i.df = lshr i32 %.lcssa196, %i.de
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @ERR_put_error(i32 noundef 12, i32 noundef 0, i32 noundef 109, ptr noundef nonnull @.str, i32 noundef 804) #15
  br label %.thread

bb.y:                                             ; preds = %bb.w
  %i.dh = zext i32 %.lcssa196 to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.h
  %.2 = phi i64 [ %i.w, %bb.h ], [ %i.dh, %bb.y ] ; 5 uses
  %.1 = phi i64 [ 2, %bb.h ], [ %i.bx, %bb.y ]    ; 3 uses
  %i.di = add nuw nsw i64 %.1, %.2                ; 3 uses
  %i.dj = icmp ugt i64 %i.di, %3
  %i.dk = icmp samesign ugt i64 %.2, 2147483647
  %or.cond5 = or i1 %i.dk, %i.dj
  br i1 %or.cond5, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @ERR_put_error(i32 noundef 12, i32 noundef 0, i32 noundef 177, ptr noundef nonnull @.str, i32 noundef 814) #15
  br label %.thread

bb.ab:                                            ; preds = %bb.z
  store i64 %i.di, ptr %2, align 8, !tbaa !29
  %i.dl = call ptr @OPENSSL_malloc(i64 noundef %i.di) #15 ; 3 uses
  store ptr %i.dl, ptr %1, align 8, !tbaa !35
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dl, ptr noundef nonnull readonly align 2 dereferenceable(1) %i.a, i64 %.1, i1 false)
  %i.dn = load ptr, ptr %1, align 8, !tbaa !35
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.1 ; 2 uses
  %.not32.i83 = icmp eq i64 %.2, 0
  br i1 %.not32.i83, label %.thread, label %.lr.ph.preheader.i84

.lr.ph.preheader.i84:                             ; preds = %bb.ac
  %i.dp = trunc nuw nsw i64 %.2 to i32
  %i.dq = call i32 @BIO_read(ptr noundef %0, ptr noundef nonnull %i.do, i32 noundef %i.dp) ; 2 uses
  %i.dr = icmp slt i32 %i.dq, 1
  br i1 %i.dr, label %bio_read_full.exit94, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.preheader.i84
  %i.ds = zext nneg i32 %i.dq to i64              ; 2 uses
  %i.dt = sub nsw i64 %.2, %i.ds                  ; 2 uses
  %.not.peel.i85 = icmp eq i64 %i.dt, 0
  br i1 %.not.peel.i85, label %.thread, label %.lr.ph.peel.next.i86

.lr.ph.peel.next.i86:                             ; preds = %bb.ad
  %i.du = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ds
  br label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %bb.ae, %.lr.ph.peel.next.i86
  %.01734.i88 = phi i64 [ %i.ec, %bb.ae ], [ %i.dt, %.lr.ph.peel.next.i86 ] ; 3 uses
  %.02133.i89 = phi ptr [ %i.eb, %bb.ae ], [ %i.du, %.lr.ph.peel.next.i86 ] ; 2 uses
  %i.dv = icmp ult i64 %.01734.i88, 2147483648
  %i.dw = trunc i64 %.01734.i88 to i32
  %i.dx = select i1 %i.dv, i32 %i.dw, i32 2147483647
  %i.dy = call i32 @BIO_read(ptr noundef %0, ptr noundef %.02133.i89, i32 noundef %i.dx) ; 2 uses
  %i.dz = icmp sgt i32 %i.dy, 0
  br i1 %i.dz, label %bb.ae, label %bio_read_full.exit94

bb.ae:                                            ; preds = %.lr.ph.i87
  %i.ea = zext nneg i32 %i.dy to i64              ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.02133.i89, i64 %i.ea
  %i.ec = sub i64 %.01734.i88, %i.ea              ; 2 uses
  %.not.i93 = icmp eq i64 %i.ec, 0
  br i1 %.not.i93, label %.thread, label %.lr.ph.i87, !llvm.loop !51

bio_read_full.exit94:                             ; preds = %.lr.ph.i87, %.lr.ph.preheader.i84
  call void @ERR_put_error(i32 noundef 12, i32 noundef 0, i32 noundef 162, ptr noundef nonnull @.str, i32 noundef 826) #15
  %i.ed = load ptr, ptr %1, align 8, !tbaa !35
  call void @OPENSSL_free(ptr noundef %i.ed) #15
  br label %.thread

.thread:                                          ; preds = %bb.ae, %bb.ac, %bb.ad, %bb.x, %._crit_edge.thread, %bio_read_all.exit, %bb.t, %bb.r, %.loopexit, %bb.f, %bb.ab, %bio_read_full.exit94, %bb.aa, %bb.d, %bb.e
  %.4 = phi i32 [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.aa ], [ 0, %.loopexit ], [ 0, %bb.ab ], [ 0, %bio_read_full.exit94 ], [ 0, %._crit_edge.thread ], [ 0, %bb.x ], [ 1, %bio_read_all.exit ], [ 0, %bb.t ], [ 0, %bb.r ], [ 1, %bb.ac ], [ 1, %bb.ad ], [ 1, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.4
}

declare ptr @OPENSSL_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @BIO_set_retry_special(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !37
  %i.c = or i32 %i.b, 5
  store i32 %i.c, ptr %i.a, align 8, !tbaa !37
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @BIO_set_write_buffer_size(ptr nofree noundef readnone captures(none) %0, i32 noundef %1) local_unnamed_addr #11 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define range(i32 -2147483648, 256) i32 @BIO_get_new_index() local_unnamed_addr #0 {
bb.a:
  tail call void @CRYPTO_STATIC_MUTEX_lock_write(ptr noundef nonnull @g_index_lock) #15
  %i.a = load i32, ptr @g_index, align 4, !tbaa !36 ; 3 uses
  %i.b = icmp sgt i32 %i.a, 255
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %i.a, 1
  store i32 %i.c, ptr @g_index, align 4, !tbaa !36
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i32 [ %i.a, %bb.b ], [ -1, %bb.a ]
  tail call void @CRYPTO_STATIC_MUTEX_unlock_write(ptr noundef nonnull @g_index_lock) #15
  ret i32 %i.d
}

declare void @CRYPTO_STATIC_MUTEX_lock_write(ptr noundef) local_unnamed_addr #2

declare void @CRYPTO_STATIC_MUTEX_unlock_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @BIO_meth_new(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @OPENSSL_zalloc(i64 noundef 80) #15 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %0, ptr %i.a, align 8, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.c, align 8, !tbaa !40
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define void @BIO_meth_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @OPENSSL_free(ptr noundef %0) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef i32 @BIO_meth_set_create(ptr nofree noundef writeonly captures(none) initializes((56, 64)) %0, ptr noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %1, ptr %i.a, align 8, !tbaa !21
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @BIO_meth_get_create(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef i32 @BIO_meth_set_destroy(ptr nofree noundef writeonly captures(none) initializes((64, 72)) %0, ptr noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %1, ptr %i.a, align 8, !tbaa !23
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @BIO_meth_get_destroy(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef i32 @BIO_meth_set_write(ptr nofree noundef writeonly captures(none) initializes((16, 24)) %0, ptr noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.a, align 8, !tbaa !31
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef i32 @BIO_meth_set_read(ptr nofree noundef writeonly captures(none) initializes((24, 32)) %0, ptr noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_0
begin_hunk_1_@BIO_get_data:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @BIO_set_init(ptr nofree noundef writeonly captures(none) initializes((40, 44)) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %1, ptr %i.a, align 8, !tbaa !28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @BIO_get_init(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !28
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @BIO_set_shutdown(ptr nofree noundef writeonly captures(none) initializes((44, 48)) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %1, ptr %i.a, align 4, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @BIO_get_shutdown(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !19
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef i32 @BIO_meth_set_puts(ptr nofree noundef writeonly captures(none) initializes((32, 40)) %0, ptr noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.a, align 8, !tbaa !32
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @BIO_meth_get_puts(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @BIO_set_callback_ex(ptr nofree noundef writeonly captures(none) initializes((16, 24)) %0, ptr noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.a, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @BIO_set_callback(ptr nofree noundef writeonly captures(none) initializes((24, 32)) %0, ptr noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.a, align 8, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @BIO_set_callback_arg(ptr nofree noundef writeonly captures(none) initializes((32, 40)) %0, ptr noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.a, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @BIO_get_callback_arg(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define i32 @BIO_get_ex_new_index(i64 noundef %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = call i32 @CRYPTO_get_ex_new_index(ptr noundef nonnull @g_ex_data_class, ptr noundef nonnull %i.a, i64 noundef %0, ptr noundef %1, ptr noundef %4) #15
  %.not = icmp eq i32 %i.b, 0
  %i.c = load i32, ptr %i.a, align 4
  %.0 = select i1 %.not, i32 -1, i32 %i.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.0
}

declare i32 @CRYPTO_get_ex_new_index(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @BIO_set_ex_data(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call i32 @CRYPTO_set_ex_data(ptr noundef nonnull %i.a, i32 noundef %1, ptr noundef %2) #15
  ret i32 %i.b
}

declare i32 @CRYPTO_set_ex_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @BIO_get_ex_data(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call ptr @CRYPTO_get_ex_data(ptr noundef nonnull %i.a, i32 noundef %1) #15
  ret ptr %i.b
}

declare ptr @CRYPTO_get_ex_data(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i64 @callback_fn_wrap_ex(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i64 noundef %5, i32 noundef %6, ptr nofree noundef captures(none) %7) unnamed_addr #0 {
bb.a:
  %i.a = and i32 %1, -129                         ; 3 uses
  %i.b = and i32 %1, -130
  %or.cond = icmp eq i32 %i.b, 2
  %i.c = icmp eq i32 %i.a, 5
  %or.cond3 = or i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %3, 2147483647
  br i1 %i.d, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = trunc nuw nsw i64 %3 to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.033 = phi i32 [ %i.e, %bb.c ], [ %4, %bb.a ]
  %i.f = icmp sgt i32 %6, 0
  br i1 %i.f, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.g = and i32 %1, 128
  %i.h = icmp ne i32 %i.g, 0
  %i.i = icmp ne i32 %i.a, 6
  %or.cond5 = and i1 %i.h, %i.i
  br i1 %or.cond5, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.j = load i64, ptr %7, align 8, !tbaa !29     ; 2 uses
  %i.k = icmp ugt i64 %i.j, 2147483647
  br i1 %i.k, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = trunc nuw nsw i64 %i.j to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.d
  %.032 = phi i32 [ %i.l, %bb.g ], [ %6, %bb.e ], [ %6, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25
  %i.o = sext i32 %.032 to i64
  %i.p = tail call i64 %i.n(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %.033, i64 noundef %5, i64 noundef %i.o) #15 ; 4 uses
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.r = and i32 %1, 128
  %i.s = icmp ne i32 %i.r, 0
  %i.t = icmp ne i32 %i.a, 6
  %or.cond7 = and i1 %i.s, %i.t
  br i1 %or.cond7, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i64 %i.p, ptr %7, align 8, !tbaa !29
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %bb.b
  %.031 = phi i64 [ -1, %bb.f ], [ -1, %bb.b ], [ 1, %bb.j ], [ %i.p, %bb.i ], [ %i.p, %bb.h ]
  ret i64 %.031
}

declare ptr @OPENSSL_realloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{null}
!1 = distinct !{!1, !26}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTS13bio_method_st", !10, i64 0}
!12 = !{!"p1 _ZTS13stack_st_void", !10, i64 0}
!13 = !{!"crypto_ex_data_st", !12, i64 0}
!14 = !{!"p1 omnipotent char", !10, i64 0}
!15 = !{!"p1 _ZTS6bio_st", !10, i64 0}
!16 = !{!"long", !6, i64 0}
!17 = !{!"bio_st", !11, i64 0, !13, i64 8, !10, i64 16, !10, i64 24, !14, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !10, i64 64, !15, i64 72, !16, i64 80, !16, i64 88}
!18 = !{!17, !11, i64 0}
!19 = !{!17, !7, i64 44}
!20 = !{!"bio_method_st", !7, i64 0, !14, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72}
!21 = !{!20, !10, i64 56}
!22 = !{!17, !15, i64 72}
!23 = !{!20, !10, i64 64}
!24 = !{!17, !10, i64 16}
!25 = !{!17, !10, i64 24}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!20, !10, i64 24}
!28 = !{!17, !7, i64 40}
!29 = !{!16, !16, i64 0}
!30 = !{!20, !10, i64 40}
!31 = !{!20, !10, i64 16}
!32 = !{!20, !10, i64 32}
!33 = !{!20, !10, i64 48}
!34 = !{ptr @BIO_ctrl}
!35 = !{!14, !14, i64 0}
!36 = !{!7, !7, i64 0}
!37 = !{!17, !7, i64 48}
!38 = !{!17, !7, i64 52}
!39 = !{!20, !7, i64 0}
!40 = !{!20, !14, i64 8}
!41 = !{!20, !10, i64 72}
!42 = !{!17, !10, i64 64}
!43 = !{!17, !14, i64 32}
!44 = !{!17, !7, i64 60}
!45 = distinct !{!45, !26}
!46 = !{!17, !16, i64 80}
!47 = !{!17, !16, i64 88}
!48 = distinct !{!48, !26}
!49 = distinct !{!49, !26}
!50 = distinct !{!50, !26}
!51 = distinct !{!51, !26, !54}
!52 = distinct !{!52, !56}
!53 = distinct !{!53, !26}
!54 = !{!"llvm.loop.peeled.count", i32 1}
!55 = !{!6, !6, i64 0}
!56 = !{!"llvm.loop.unroll.disable"}
end_hunk_1
