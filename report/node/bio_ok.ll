inline.NumInlined: 6
inline.NumDeleted: 4
begin_hunk_0_@ok_write:bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.w, %sig_out.exit.thread
  %.060 = phi i32 [ %2, %sig_out.exit.thread ], [ %i.cj, %bb.w ] ; 3 uses
  %.059 = phi ptr [ %1, %sig_out.exit.thread ], [ %i.ck, %bb.w ] ; 3 uses
  tail call void @BIO_clear_flags(ptr noundef %0, i32 noundef 15) #8
  %i.az = load i64, ptr %i.b, align 8, !tbaa !15  ; 2 uses
  %i.ba = load i64, ptr %i.aw, align 8, !tbaa !22 ; 3 uses
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = trunc i64 %i.bb to i32                  ; 2 uses
  %i.bd = load i32, ptr %i.ax, align 8, !tbaa !21
  %i.be = icmp ne i32 %i.bd, 0
  %i.bf = icmp sgt i32 %i.bc, 0
  %i.bg = select i1 %i.be, i1 %i.bf, i1 false
  br i1 %i.bg, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.n, %bb.q
  %i.bh = phi i64 [ %i.bp, %bb.q ], [ %i.ba, %bb.n ]
  %.06179 = phi i32 [ %i.bq, %bb.q ], [ %i.bc, %bb.n ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bh
  %i.bj = tail call i32 @BIO_write(ptr noundef %i.c, ptr noundef nonnull %i.bi, i32 noundef %.06179) #8 ; 5 uses
  %i.bk = icmp slt i32 %i.bj, 1
  br i1 %i.bk, label %bb.o, label %bb.q

bb.o:                                             ; preds = %.lr.ph
  tail call void @BIO_copy_next_retry(ptr noundef %0) #8
  %i.bl = tail call i32 @BIO_test_flags(ptr noundef %0, i32 noundef 8) #8
  %.not70 = icmp eq i32 %i.bl, 0
  br i1 %.not70, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 0, ptr %i.bm, align 8, !tbaa !23
  br label %.loopexit

bb.q:                                             ; preds = %.lr.ph
  %i.bn = zext nneg i32 %i.bj to i64
  %i.bo = load i64, ptr %i.aw, align 8, !tbaa !22
  %i.bp = add i64 %i.bo, %i.bn                    ; 3 uses
  store i64 %i.bp, ptr %i.aw, align 8, !tbaa !22
  %i.bq = sub nsw i32 %.06179, %i.bj              ; 2 uses
  %i.br = load i32, ptr %i.ax, align 8, !tbaa !21
  %i.bs = icmp ne i32 %i.br, 0
  %i.bt = icmp sgt i32 %i.bq, 0
  %i.bu = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %i.bu, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !24

._crit_edge.loopexit:                             ; preds = %bb.q
  %.pre = load i64, ptr %i.b, align 8, !tbaa !15
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.n
  %i.bv = phi i64 [ %i.bp, %._crit_edge.loopexit ], [ %i.ba, %bb.n ]
  %i.bw = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.az, %bb.n ] ; 2 uses
  store i32 0, ptr %i.ax, align 8, !tbaa !21
  %i.bx = icmp eq i64 %i.bw, %i.bv
  br i1 %i.bx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge
  store i64 4, ptr %i.b, align 8, !tbaa !15
  store i64 0, ptr %i.aw, align 8, !tbaa !22
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge
  %i.by = phi i64 [ 4, %bb.r ], [ %i.bw, %._crit_edge ] ; 4 uses
  %i.bz = icmp eq ptr %.059, null
  br i1 %i.bz, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ca = zext nneg i32 %.060 to i64
  %i.cb = add i64 %i.by, %i.ca
  %i.cc = icmp ugt i64 %i.cb, 4100
  %i.cd = trunc i64 %i.by to i32
  %i.ce = sub i32 4100, %i.cd
  %i.cf = select i1 %i.cc, i32 %i.ce, i32 %.060   ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.by
  %i.ch = sext i32 %i.cf to i64                   ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cg, ptr nonnull align 1 %.059, i64 %i.ch, i1 false)
  %i.ci = add i64 %i.by, %i.ch                    ; 2 uses
  store i64 %i.ci, ptr %i.b, align 8, !tbaa !15
  %i.cj = sub nsw i32 %.060, %i.cf                ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %.059, i64 %i.ch
  %i.cl = icmp ugt i64 %i.ci, 4099
  br i1 %i.cl, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.cm = tail call fastcc i32 @block_out(ptr noundef %0)
  %.not69 = icmp eq i32 %i.cm, 0
  br i1 %.not69, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void @BIO_clear_flags(ptr noundef %0, i32 noundef 15) #8
  br label %.loopexit

bb.w:                                             ; preds = %bb.t, %bb.u
  %i.cn = icmp sgt i32 %i.cj, 0
  br i1 %i.cn, label %bb.n, label %bb.x, !llvm.loop !25

bb.x:                                             ; preds = %bb.w
  tail call void @BIO_clear_flags(ptr noundef %0, i32 noundef 15) #8
  tail call void @BIO_copy_next_retry(ptr noundef %0) #8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.s, %sig_out.exit, %bb.o, %bb.p, %bb.b, %bb.c, %bb.a, %bb.x, %bb.v
  %.0 = phi i32 [ 0, %bb.b ], [ %2, %bb.a ], [ 0, %sig_out.exit ], [ %i.bj, %bb.o ], [ %2, %bb.x ], [ 0, %bb.v ], [ 0, %bb.c ], [ %i.bj, %bb.p ], [ 0, %bb.s ]
  ret i32 %.0
}

declare i32 @bread_conv(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @ok_read(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2) #2 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %i.b = alloca [64 x i8], align 16               ; 5 uses
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.ai, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @BIO_get_data(ptr noundef %0) #8 ; 13 uses
  %i.e = tail call ptr @BIO_next(ptr noundef %0) #8 ; 2 uses
  %i.f = icmp eq ptr %i.d, null
  %i.g = icmp eq ptr %i.e, null
  %or.cond = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond, label %bb.ai, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @BIO_get_init(ptr noundef %0) #8
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.ai, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.old2 = icmp sgt i32 %2, 0
  br i1 %.old2, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 52 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.ah
  %.066 = phi i32 [ %.16784, %bb.ah ], [ 0, %.preheader ] ; 2 uses
  %.063 = phi i32 [ %.16485, %bb.ah ], [ %2, %.preheader ] ; 3 uses
  %.062 = phi ptr [ %.186, %bb.ah ], [ %1, %.preheader ] ; 3 uses
  %i.q = load i32, ptr %i.j, align 8, !tbaa !21
  %.not = icmp eq i32 %i.q, 0
  %.pre = load i64, ptr %i.d, align 8, !tbaa !15  ; 2 uses
  br i1 %.not, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i64, ptr %i.k, align 8, !tbaa !22   ; 2 uses
  %i.s = sub i64 %.pre, %i.r
  %i.t = trunc i64 %i.s to i32
  %spec.select = call i32 @llvm.smin.i32(i32 %.063, i32 %i.t) ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.r
  %i.v = sext i32 %spec.select to i64             ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.062, ptr nonnull align 1 %i.u, i64 %i.v, i1 false)
  %i.w = add nsw i32 %spec.select, %.066          ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.062, i64 %i.v
  %i.y = sub nsw i32 %.063, %spec.select          ; 2 uses
  %i.z = load i64, ptr %i.k, align 8, !tbaa !22
  %i.aa = add i64 %i.z, %i.v                      ; 2 uses
  store i64 %i.aa, ptr %i.k, align 8, !tbaa !22
  %i.ab = load i64, ptr %i.d, align 8, !tbaa !15  ; 2 uses
  %i.ac = icmp eq i64 %i.ab, %i.aa
  br i1 %i.ac, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  store i64 0, ptr %i.k, align 8, !tbaa !22
  %i.ad = load i64, ptr %i.m, align 8, !tbaa !26  ; 2 uses
  %i.ae = load i64, ptr %i.n, align 8, !tbaa !27  ; 3 uses
  %i.af = icmp ugt i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nuw i64 %i.ad, %i.ae                ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ae
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 1 %i.ah, i64 %i.ag, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sink = phi i64 [ %i.ag, %bb.h ], [ 0, %bb.g ] ; 2 uses
  store i64 %.sink, ptr %i.d, align 8, !tbaa !15
  store i32 0, ptr %i.j, align 8, !tbaa !21
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.i
  %i.ai = phi i64 [ %i.ab, %bb.f ], [ %.sink, %bb.i ]
  %i.aj = icmp eq i32 %i.y, 0
  br i1 %i.aj, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.e, %bb.j
  %i.ak = phi i64 [ %i.ai, %bb.j ], [ %.pre, %bb.e ] ; 2 uses
  %.186 = phi ptr [ %i.x, %bb.j ], [ %.062, %bb.e ]
  %.16485 = phi i32 [ %i.y, %bb.j ], [ %.063, %bb.e ]
  %.16784 = phi i32 [ %i.w, %bb.j ], [ %.066, %bb.e ] ; 3 uses
  %i.al = trunc i64 %i.ak to i32
  %i.am = sub i32 4292, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ak
  %i.ao = call i32 @BIO_read(ptr noundef %i.e, ptr noundef nonnull %i.an, i32 noundef %i.am) #8 ; 2 uses
  %i.ap = icmp slt i32 %i.ao, 1
  br i1 %i.ap, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %.thread
  %i.aq = zext nneg i32 %i.ao to i64
  %i.ar = load i64, ptr %i.d, align 8, !tbaa !15
  %i.as = add i64 %i.ar, %i.aq
  store i64 %i.as, ptr %i.d, align 8, !tbaa !15
  %i.at = load i32, ptr %i.o, align 4, !tbaa !9   ; 2 uses
  %i.au = icmp eq i32 %i.at, 1
  br i1 %i.au, label %bb.l, label %bb.y

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.av = call ptr @BIO_get_data(ptr noundef %0) #8 ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !14 ; 6 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.x, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = call ptr @EVP_MD_CTX_get0_md(ptr noundef nonnull %i.ax) #8 ; 2 uses
  %i.ba = call i32 @EVP_MD_get_size(ptr noundef %i.az) #8 ; 4 uses
  %i.bb = icmp slt i32 %i.ba, 1
  br i1 %i.bb, label %bb.x, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = call ptr @EVP_MD_CTX_get0_md_data(ptr noundef nonnull %i.ax) #8 ; 6 uses
  %i.bd = load i64, ptr %i.av, align 8, !tbaa !15
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 7 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !22
  %i.bg = sub i64 %i.bd, %i.bf
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = shl nuw nsw i32 %i.ba, 1
  %i.bj = icmp sgt i32 %i.bi, %i.bh
  br i1 %i.bj, label %sig_in.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = call i32 @EVP_DigestInit_ex(ptr noundef nonnull %i.ax, ptr noundef %i.az, ptr noundef null) #8
  %.not.i = icmp eq i32 %i.bk, 0
  br i1 %.not.i, label %bb.x, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %i.av, i64 56 ; 4 uses
  %i.bm = load i64, ptr %i.be, align 8, !tbaa !22
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bm
  %i.bo = zext nneg i32 %i.ba to i64              ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bc, ptr nonnull align 1 %i.bn, i64 %i.bo, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bc, i64 3 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bc, i64 1 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bc, i64 2 ; 2 uses
  %.promoted.i.i = load i8, ptr %i.bc, align 1, !tbaa !16 ; 2 uses
  %.promoted13.i.i = load i8, ptr %i.bp, align 1, !tbaa !16 ; 2 uses
  %.promoted15.i.i = load i8, ptr %i.bq, align 1, !tbaa !16 ; 2 uses
  %.promoted17.i.i = load i8, ptr %i.br, align 1, !tbaa !16 ; 2 uses
  %i.bs = add nuw nsw i64 %i.bo, 3
  %i.bt = lshr i64 %i.bs, 2
  %i.bu = add nuw nsw i64 %i.bt, 1                ; 2 uses
  %xtraiter = and i64 %i.bu, 7                    ; 3 uses
  %i.bv = icmp ult i32 %i.ba, 25
  br i1 %i.bv, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.p
  %unroll_iter = and i64 %i.bu, 2147483640
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.new
  %niter = phi i64 [ 0, %.new ], [ %niter.next.7, %bb.q ]
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7.not = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7.not, label %longswap.exit.i.unr-lcssa, label %bb.q, !llvm.loop !17

longswap.exit.i.unr-lcssa:                        ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %longswap.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %longswap.exit.i.unr-lcssa, %bb.p
  %lcmp.mod137 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod137)
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.epil.preheader
  %i.bw = phi i8 [ %.promoted17.i.i, %.epil.preheader ], [ %i.bx, %bb.r ] ; 2 uses
  %i.bx = phi i8 [ %.promoted15.i.i, %.epil.preheader ], [ %i.bw, %bb.r ] ; 2 uses
  %i.by = phi i8 [ %.promoted13.i.i, %.epil.preheader ], [ %i.bz, %bb.r ] ; 2 uses
  %i.bz = phi i8 [ %.promoted.i.i, %.epil.preheader ], [ %i.by, %bb.r ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.r ]
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %longswap.exit.i, label %bb.r, !llvm.loop !28

longswap.exit.i:                                  ; preds = %bb.r, %longswap.exit.i.unr-lcssa
  %.lcssa126 = phi i8 [ %.promoted15.i.i, %longswap.exit.i.unr-lcssa ], [ %i.bw, %bb.r ]
  %.lcssa125 = phi i8 [ %.promoted17.i.i, %longswap.exit.i.unr-lcssa ], [ %i.bx, %bb.r ]
  %.lcssa124 = phi i8 [ %.promoted.i.i, %longswap.exit.i.unr-lcssa ], [ %i.by, %bb.r ]
  %.lcssa = phi i8 [ %.promoted13.i.i, %longswap.exit.i.unr-lcssa ], [ %i.bz, %bb.r ]
  store i8 %.lcssa, ptr %i.bc, align 1, !tbaa !16
  store i8 %.lcssa124, ptr %i.bp, align 1, !tbaa !16
  store i8 %.lcssa125, ptr %i.bq, align 1, !tbaa !16
  store i8 %.lcssa126, ptr %i.br, align 1, !tbaa !16
  %i.ca = load i64, ptr %i.be, align 8, !tbaa !22
  %i.cb = add i64 %i.ca, %i.bo
  store i64 %i.cb, ptr %i.be, align 8, !tbaa !22
  %i.cc = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.ax, ptr noundef nonnull @.str.2, i64 noundef 52) #8
  %.not43.i = icmp eq i32 %i.cc, 0
  br i1 %.not43.i, label %bb.x, label %bb.s

bb.s:                                             ; preds = %longswap.exit.i
  %i.cd = call i32 @EVP_DigestFinal_ex(ptr noundef nonnull %i.ax, ptr noundef nonnull %i.b, ptr noundef null) #8
  %.not44.i = icmp eq i32 %i.cd, 0
  br i1 %.not44.i, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ce = load i64, ptr %i.be, align 8, !tbaa !22 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.ce
  %bcmp.i = call i32 @bcmp(ptr nonnull %i.cf, ptr nonnull %i.b, i64 %i.bo)
  %i.cg = icmp eq i32 %bcmp.i, 0
  %i.ch = add i64 %i.ce, %i.bo                    ; 4 uses
  store i64 %i.ch, ptr %i.be, align 8, !tbaa !22
  br i1 %i.cg, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.ci = getelementptr inbounds nuw i8, ptr %i.av, i64 52
  store i32 0, ptr %i.ci, align 4, !tbaa !9
  %i.cj = load i64, ptr %i.av, align 8, !tbaa !15 ; 2 uses
  %.not45.i = icmp eq i64 %i.cj, %i.ch
  br i1 %.not45.i, label %._crit_edge.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.ch
  %i.cl = sub i64 %i.cj, %i.ch                    ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bl, ptr nonnull align 1 %i.ck, i64 %i.cl, i1 false)
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.v, %bb.u
  %.pre-phi.i = phi i64 [ %i.cl, %bb.v ], [ 0, %bb.u ]
  store i64 %.pre-phi.i, ptr %i.av, align 8, !tbaa !15
  store i64 0, ptr %i.be, align 8, !tbaa !22
  br label %sig_in.exit.thread

bb.w:                                             ; preds = %bb.t
  %i.cm = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  store i32 0, ptr %i.cm, align 8, !tbaa !23
  br label %sig_in.exit.thread

sig_in.exit.thread:                               ; preds = %bb.n, %bb.w, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  %.pr = load i32, ptr %i.o, align 4, !tbaa !9
  br label %bb.y

bb.x:                                             ; preds = %bb.s, %longswap.exit.i, %bb.o, %bb.m, %bb.l
  call void @BIO_clear_flags(ptr noundef %0, i32 noundef 15) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @BIO_clear_flags(ptr noundef %0, i32 noundef 15) #8
  br label %bb.ai

bb.y:                                             ; preds = %sig_in.exit.thread, %bb.k
  %i.cn = phi i32 [ %.pr, %sig_in.exit.thread ], [ %i.at, %bb.k ]
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.z, label %bb.ah

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.cp = call ptr @BIO_get_data(ptr noundef %0) #8 ; 10 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !14 ; 3 uses
  %i.cs = call ptr @EVP_MD_CTX_get0_md(ptr noundef %i.cr) #8
  %i.ct = call i32 @EVP_MD_get_size(ptr noundef %i.cs) #8 ; 2 uses
  %i.cu = icmp slt i32 %i.ct, 1
  br i1 %i.cu, label %bb.ag, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 56 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 8
  %i.cx = call i32 @llvm.bswap.i32(i32 %i.cw)     ; 2 uses
  %i.cy = zext i32 %i.cx to i64                   ; 2 uses
  %i.cz = icmp ugt i32 %i.cx, 4096
  br i1 %i.cz, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = zext nneg i32 %i.ct to i64              ; 2 uses
  %i.db = load i64, ptr %i.cp, align 8, !tbaa !15
  %i.dc = add nuw nsw i64 %i.cy, 4                ; 3 uses
  %i.dd = add nuw nsw i64 %i.dc, %i.da            ; 2 uses
  %i.de = icmp ult i64 %i.db, %i.dd
  br i1 %i.de, label %block_in.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.df = getelementptr inbounds nuw i8, ptr %i.cp, i64 60
  %i.dg = call i32 @EVP_DigestUpdate(ptr noundef %i.cr, ptr noundef nonnull %i.df, i64 noundef %i.cy) #8
  %.not.i78 = icmp eq i32 %i.dg, 0
  br i1 %.not.i78, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dh = call i32 @EVP_DigestFinal_ex(ptr noundef %i.cr, ptr noundef nonnull %i.a, ptr noundef null) #8
  %.not35.i = icmp eq i32 %i.dh, 0
  br i1 %.not35.i, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.di = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.dc
  %bcmp.i79 = call i32 @bcmp(ptr nonnull %i.di, ptr nonnull %i.a, i64 %i.da)
  %i.dj = icmp eq i32 %bcmp.i79, 0
  br i1 %i.dj, label %bb.af, label %block_in.exit.thread.sink.split

bb.af:                                            ; preds = %bb.ae
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  store i64 %i.dd, ptr %i.dk, align 8, !tbaa !27
  %i.dl = load i64, ptr %i.cp, align 8, !tbaa !15
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i64 %i.dl, ptr %i.dm, align 8, !tbaa !26
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i64 4, ptr %i.dn, align 8, !tbaa !22
  store i64 %i.dc, ptr %i.cp, align 8, !tbaa !15
  br label %block_in.exit.thread.sink.split

block_in.exit.thread.sink.split:                  ; preds = %bb.ae, %bb.af
  %.sink120 = phi i64 [ 48, %bb.af ], [ 32, %bb.ae ]
  %.sink118 = phi i32 [ 1, %bb.af ], [ 0, %bb.ae ]
  %i.do = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.sink120
  store i32 %.sink118, ptr %i.do, align 8, !tbaa !5
  br label %block_in.exit.thread

block_in.exit.thread:                             ; preds = %block_in.exit.thread.sink.split, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ad, %bb.ac, %bb.aa, %bb.z
  call void @BIO_clear_flags(ptr noundef %0, i32 noundef 15) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @BIO_clear_flags(ptr noundef %0, i32 noundef 15) #8
  br label %bb.ai

bb.ah:                                            ; preds = %block_in.exit.thread, %bb.y
  %i.dp = load i32, ptr %i.p, align 8, !tbaa !23
  %i.dq = icmp sgt i32 %i.dp, 0
  br i1 %i.dq, label %bb.e, label %.loopexit, !llvm.loop !29

.loopexit:                                        ; preds = %bb.ah, %.thread, %bb.j, %bb.d
  %.2 = phi i32 [ 0, %bb.d ], [ %.16784, %bb.ah ], [ %.16784, %.thread ], [ %i.w, %bb.j ]
  call void @BIO_clear_flags(ptr noundef %0, i32 noundef 15) #8
  call void @BIO_copy_next_retry(ptr noundef %0) #8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.b, %bb.c, %bb.a, %.loopexit, %bb.ag, %bb.x
  %.0 = phi i32 [ 0, %bb.x ], [ 0, %bb.a ], [ %.2, %.loopexit ], [ 0, %bb.ag ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i64 @ok_ctrl(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) #2 {
bb.a:
  %i.a = tail call ptr @BIO_get_data(ptr noundef %0) #8 ; 16 uses
  %i.b = tail call ptr @BIO_next(ptr noundef %0) #8 ; 6 uses
  switch i32 %1, label %bb.q [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 10, label %bb.e
    i32 13, label %bb.e
    i32 11, label %bb.g
    i32 101, label %bb.k
    i32 3, label %bb.l
    i32 111, label %bb.m
    i32 112, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store i32 1, ptr %i.c, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i32 0, ptr %i.d, align 4, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %i.e, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i32 1, ptr %i.f, align 4, !tbaa !9
  %i.g = tail call i64 @BIO_ctrl(ptr noundef %i.b, i32 noundef 1, i64 noundef %2, ptr noundef %3) #8
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !23
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %bb.r, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call i64 @BIO_ctrl(ptr noundef %i.b, i32 noundef 2, i64 noundef %2, ptr noundef %3) #8
  br label %bb.r

bb.e:                                             ; preds = %bb.a, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !21
  %.not72 = icmp eq i32 %i.m, 0
  br i1 %.not72, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load i64, ptr %i.a, align 8, !tbaa !15
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !22
  %i.q = sub i64 %i.n, %i.p                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 1
  br i1 %i.r, label %.thread, label %bb.r

.thread:                                          ; preds = %bb.e, %bb.f
  %i.s = tail call i64 @BIO_ctrl(ptr noundef %i.b, i32 noundef %1, i64 noundef %2, ptr noundef %3) #8
  br label %bb.r

bb.g:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !21
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.h, label %.split.preheader

bb.h:                                             ; preds = %bb.g
  %i.w = tail call fastcc i32 @block_out(ptr noundef %0)
  %.not70 = icmp eq i32 %i.w, 0
  br i1 %.not70, label %bb.r, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.pr.pre = load i32, ptr %i.t, align 8, !tbaa !21
  %i.x = icmp eq i32 %.pr.pre, 0
  br i1 %i.x, label %bb.j, label %.split.preheader, !llvm.loop !31

.split.preheader:                                 ; preds = %bb.g, %bb.i
  br label %.split

.split:                                           ; preds = %.split.preheader, %.split
  br label %.split

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i32 1, ptr %i.y, align 4, !tbaa !30
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.z, align 8, !tbaa !23
  %i.aa = tail call i64 @BIO_ctrl(ptr noundef %i.b, i32 noundef 11, i64 noundef %2, ptr noundef %3) #8
  tail call void @BIO_copy_next_retry(ptr noundef %0) #8
  br label %bb.r

bb.k:                                             ; preds = %bb.a
  tail call void @BIO_clear_flags(ptr noundef %0, i32 noundef 15) #8
  %i.ab = tail call i64 @BIO_ctrl(ptr noundef %i.b, i32 noundef 101, i64 noundef %2, ptr noundef %3) #8
  tail call void @BIO_copy_next_retry(ptr noundef %0) #8
  br label %bb.r

bb.l:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !23
  %i.ae = sext i32 %i.ad to i64
  br label %bb.r

bb.m:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !14
  %i.ah = tail call i32 @EVP_DigestInit_ex(ptr noundef %i.ag, ptr noundef %3, ptr noundef null) #8
  %.not69 = icmp eq i32 %i.ah, 0
  br i1 %.not69, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @BIO_set_init(ptr noundef %0, i32 noundef 1) #8
  br label %bb.r

bb.o:                                             ; preds = %bb.a
  %i.ai = tail call i32 @BIO_get_init(ptr noundef %0) #8
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !14
  %i.al = tail call ptr @EVP_MD_CTX_get0_md(ptr noundef %i.ak) #8
  store ptr %i.al, ptr %3, align 8, !tbaa !32
  br label %bb.r

bb.q:                                             ; preds = %bb.a
  %i.am = tail call i64 @BIO_ctrl(ptr noundef %i.b, i32 noundef %1, i64 noundef %2, ptr noundef %3) #8
  br label %bb.r

bb.r:                                             ; preds = %bb.b, %bb.j, %bb.k, %bb.l, %bb.n, %bb.q, %bb.d, %.thread, %bb.f, %bb.p, %bb.c, %bb.o, %bb.m, %bb.h
  %.0 = phi i64 [ 0, %bb.m ], [ 0, %bb.h ], [ %i.am, %bb.q ], [ %i.g, %bb.b ], [ 1, %bb.c ], [ %i.k, %bb.d ], [ %i.s, %.thread ], [ %i.q, %bb.f ], [ %i.aa, %bb.j ], [ %i.ab, %bb.k ], [ %i.ae, %bb.l ], [ 1, %bb.n ], [ 1, %bb.p ], [ 0, %bb.o ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @ok_new(ptr noundef %0) #2 {
bb.a:
  %i.a = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 4352, ptr noundef nonnull @.str.3, i32 noundef 136) #8 ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 1, ptr %i.c, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i32 1, ptr %i.d, align 4, !tbaa !9
  %i.e = tail call ptr @EVP_MD_CTX_new() #8       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.e, ptr %i.f, align 8, !tbaa !14
  %i.g = icmp eq ptr %i.e, null
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @CRYPTO_free(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.3, i32 noundef 143) #8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @BIO_set_init(ptr noundef %0, i32 noundef 0) #8
  tail call void @BIO_set_data(ptr noundef %0, ptr noundef nonnull %i.a) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ 1, %bb.d ], [ 0, %bb.c ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @ok_free(ptr noundef %0) #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @BIO_get_data(ptr noundef nonnull %0) #8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
  tail call void @EVP_MD_CTX_free(ptr noundef %i.d) #8
  tail call void @CRYPTO_clear_free(ptr noundef %i.b, i64 noundef 4352, ptr noundef nonnull @.str.3, i32 noundef 162) #8
  tail call void @BIO_set_data(ptr noundef nonnull %0, ptr noundef null) #8
  tail call void @BIO_set_init(ptr noundef nonnull %0, i32 noundef 0) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
end_hunk_0
