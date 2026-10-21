Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/bignum?download=true
inline.NumInlined: 999
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 156
loop-unroll.NumUnrolled: 184
begin_hunk_0_@rb_absint_numwords:bb.a
  br label %bary_divmod.exit.i

.thread184.i.i:                                   ; preds = %.critedge.preheader.thread.i.i
  call fastcc void @bary_divmod_normal(ptr noundef nonnull %i.c, i64 noundef 4, ptr noundef nonnull %i.d, i64 noundef 2, ptr noundef nonnull readonly %i.a, i64 noundef 3, ptr noundef nonnull %i.b, i64 noundef 2)
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !44
  br label %bary_divmod.exit.i

bary_divmod.exit.i:                               ; preds = %.thread184.i.i, %bb.t, %.preheader134.i.i
  %i.fc = phi i32 [ %i.fb, %bb.t ], [ %i.cl, %.preheader134.i.i ], [ %.pre.i, %.thread184.i.i ]
  %.not.i10.i = icmp eq i32 %i.fc, 0
  br i1 %.not.i10.i, label %.preheader.i.1thread-pre-split.i, label %.lr.ph.i.i11.preheader.i

.lr.ph.i.i11.preheader.i:                         ; preds = %.preheader.i.1.i, %bary_divmod.exit.i
  %i.fd = load i32, ptr %i.c, align 16, !tbaa !44
  %add.narrowed.i = add i32 %i.fd, 1              ; 2 uses
  %add.narrowed.overflow.not.i = icmp eq i32 %add.narrowed.i, 0
  store i32 %add.narrowed.i, ptr %i.c, align 16, !tbaa !44
  br i1 %add.narrowed.overflow.not.i, label %.lr.ph83.i.i.1.i, label %bary_add.exit.i

.preheader.i.1thread-pre-split.i:                 ; preds = %bary_divmod.exit.i
  %.pr.i = load i32, ptr %i.d, align 8, !tbaa !44
  br label %.preheader.i.1.i

.preheader.i.1.i:                                 ; preds = %.preheader.i.1thread-pre-split.i, %bigdivrem_single.exit.i.i
  %i.fe = phi i32 [ %.pr.i, %.preheader.i.1thread-pre-split.i ], [ %.027.i.i.i.i, %bigdivrem_single.exit.i.i ]
  %.not.i10.1.i = icmp eq i32 %i.fe, 0
  br i1 %.not.i10.1.i, label %bary_zero_p.exit.i, label %.lr.ph.i.i11.preheader.i

.lr.ph83.i.i.1.i:                                 ; preds = %.lr.ph.i.i11.preheader.i
  %i.ff = load i32, ptr %.0116142.lcssa172180182.i.sroa.gep30.i, align 4, !tbaa !44 ; 2 uses
  %i.fg = add i32 %i.ff, 1
  store i32 %i.fg, ptr %.0116142.lcssa172180182.i.sroa.gep30.i, align 4, !tbaa !44
  %.not41.i = icmp eq i32 %i.ff, -1
  br i1 %.not41.i, label %.lr.ph83.i.i.2.i, label %bary_add.exit.i

.lr.ph83.i.i.2.i:                                 ; preds = %.lr.ph83.i.i.1.i
  %i.fh = load i32, ptr %.0116142.lcssa172180182.i.sroa.gep.i, align 8, !tbaa !44 ; 2 uses
  %i.fi = add i32 %i.fh, 1
  store i32 %i.fi, ptr %.0116142.lcssa172180182.i.sroa.gep.i, align 8, !tbaa !44
  %.not42.i = icmp eq i32 %i.fh, -1
  br i1 %.not42.i, label %bb.u, label %bary_add.exit.i

bb.u:                                             ; preds = %.lr.ph83.i.i.2.i
  %i.fj = load i32, ptr %.0116142.lcssa172180182.i.sroa.gep29.i, align 4, !tbaa !44
  %i.fk = add i32 %i.fj, 1
  store i32 %i.fk, ptr %.0116142.lcssa172180182.i.sroa.gep29.i, align 4, !tbaa !44
  br label %bary_add.exit.i

bary_add.exit.i:                                  ; preds = %bb.u, %.lr.ph83.i.i.2.i, %.lr.ph83.i.i.1.i, %.lr.ph.i.i11.preheader.i
  %i.fl = call fastcc i32 @bary_pack(i32 noundef 1, ptr noundef nonnull %i.d, i64 noundef 2, ptr noundef %i.e, i64 noundef 1, i64 noundef 8, i64 noundef 0, i32 noundef 64) ; 0 uses
  %i.fm = load i64, ptr %i.e, align 8, !tbaa !46
  %i.fn = sub i64 %1, %i.fm
  br label %bary_zero_p.exit.i

bary_zero_p.exit.i:                               ; preds = %bary_add.exit.i, %.preheader.i.1.i, %.preheader.i.1.thread.i
  %.0.i = phi i64 [ %i.fn, %bary_add.exit.i ], [ 0, %.preheader.i.1.i ], [ 0, %.preheader.i.1.thread.i ]
  %i.fo = call fastcc i32 @bary_pack(i32 noundef 1, ptr noundef nonnull %i.c, i64 noundef 4, ptr noundef %i.f, i64 noundef 1, i64 noundef 8, i64 noundef 0, i32 noundef 64)
  %i.fp = icmp eq i32 %i.fo, 2
  %i.fq = load i64, ptr %i.f, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br i1 %i.fp, label %.thread, label %bb.v

bb.v:                                             ; preds = %bary_zero_p.exit.i, %bb.j
  %.020 = phi i64 [ %i.aw, %bb.j ], [ %.0.i, %bary_zero_p.exit.i ]
  %.0 = phi i64 [ %i.au, %bb.j ], [ %i.fq, %bary_zero_p.exit.i ] ; 3 uses
  %i.fr = icmp eq i64 %.0, -1
  br i1 %i.fr, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i64 %.020, ptr %2, align 8, !tbaa !46
  br label %.thread

.thread:                                          ; preds = %bary_zero_p.exit.i, %bb.w, %bb.x, %bb.v, %bb.a
  %.012 = phi i64 [ -1, %bb.v ], [ -1, %bb.a ], [ %.0, %bb.x ], [ %.0, %bb.w ], [ -1, %bary_zero_p.exit.i ]
  ret i64 %.012
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 2) i32 @rb_absint_singlebit_p(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = tail call i64 @rb_to_int(i64 noundef %0) #23 ; 3 uses
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = ashr i64 %i.b, 1
  %spec.select = tail call i64 @llvm.abs.i64(i64 %i.d, i1 true) ; 2 uses
  %i.e = trunc i64 %spec.select to i32
  store i32 %i.e, ptr %i.a, align 4, !tbaa !44
  %i.f = lshr i64 %spec.select, 32
  %i.g = trunc nuw nsw i64 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.g, ptr %i.h, align 4, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.j = inttoptr i64 %i.b to ptr                 ; 4 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !48   ; 2 uses
  %i.l = and i64 %i.k, 16384
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.j, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !49
  %i.o = getelementptr i8, ptr %i.j, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !49
  br label %BIGNUM_LEN.exit

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.j, i64 16
  %i.r = lshr i64 %i.k, 15
  %i.s = and i64 %i.r, 511
  br label %BIGNUM_LEN.exit

BIGNUM_LEN.exit:                                  ; preds = %bb.d, %bb.e
  %.0.i41 = phi ptr [ %i.q, %bb.e ], [ %i.n, %bb.d ] ; 2 uses
  %.0.i39 = phi i64 [ %i.s, %bb.e ], [ %i.p, %bb.d ]
  %i.t = getelementptr [4 x i8], ptr %.0.i41, i64 %.0.i39
  br label %bb.f

bb.f:                                             ; preds = %BIGNUM_LEN.exit, %bb.b
  %.033 = phi ptr [ %i.a, %bb.b ], [ %.0.i41, %BIGNUM_LEN.exit ] ; 3 uses
  %.031 = phi ptr [ %i.i, %bb.b ], [ %i.t, %BIGNUM_LEN.exit ]
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.132 = phi ptr [ %.031, %bb.f ], [ %i.v, %bb.h ] ; 4 uses
  %i.u = icmp ult ptr %.033, %.132
  br i1 %i.u, label %bb.h, label %.critedge2

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr i8, ptr %.132, i64 -4      ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !44
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.g, label %.lr.ph, !llvm.loop !18

.lr.ph:                                           ; preds = %bb.h, %bb.i
  %.13445 = phi ptr [ %i.aa, %bb.i ], [ %.033, %bb.h ] ; 3 uses
  %i.y = load i32, ptr %.13445, align 4, !tbaa !44
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.i, label %.critedge2

bb.i:                                             ; preds = %.lr.ph
  %i.aa = getelementptr i8, ptr %.13445, i64 4    ; 3 uses
  %i.ab = icmp ult ptr %i.aa, %.132
  br i1 %i.ab, label %.lr.ph, label %.critedge2, !llvm.loop !19

.critedge2:                                       ; preds = %bb.g, %.lr.ph, %bb.i
  %.134.lcssa = phi ptr [ %.13445, %.lr.ph ], [ %i.aa, %bb.i ], [ %.033, %bb.g ] ; 2 uses
  %i.ac = getelementptr i8, ptr %.132, i64 -4
  %.not = icmp eq ptr %.134.lcssa, %i.ac
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.critedge2
  %i.ad = load i32, ptr %.134.lcssa, align 4, !tbaa !44
  %i.ae = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ad)
  %i.af = icmp samesign ult i32 %i.ae, 2
  %i.ag = zext i1 %i.af to i32
  br label %bb.k

bb.k:                                             ; preds = %.critedge2, %bb.j
  %.035 = phi i32 [ %i.ag, %bb.j ], [ 0, %.critedge2 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i32 %.035
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @bary_pack(i32 noundef range(i32 -1, 2) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i32 noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr [4 x i8], ptr %1, i64 %2
  tail call fastcc void @validate_integer_pack_format(i64 noundef %4, i64 noundef %5, i64 noundef %6, i32 noundef %7, i32 noundef 1267)
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0481 = phi ptr [ %i.a, %bb.a ], [ %i.c, %bb.c ] ; 20 uses
  %i.b = icmp ult ptr %1, %.0481                  ; 3 uses
  br i1 %i.b, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %.0481, i64 -4     ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !44
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %.critedge, !llvm.loop !20

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.f = icmp eq ptr %1, %.0481                   ; 3 uses
  %spec.select = select i1 %i.f, i32 0, i32 %0    ; 15 uses
  %i.g = and i32 %7, 1024
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.as

bb.d:                                             ; preds = %.critedge
  %i.h = icmp eq i32 %spec.select, 0
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = mul i64 %5, %4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %3, i8 noundef 0, i64 noundef %i.i, i1 noundef false) #23
  br label %.thread494

bb.f:                                             ; preds = %bb.d
  %i.j = icmp eq i64 %6, 0                        ; 2 uses
  %i.k = icmp eq i64 %4, 1
  %or.cond = and i1 %i.k, %i.j
  br i1 %or.cond, label %bb.g, label %..thread498_crit_edge

..thread498_crit_edge:                            ; preds = %bb.f
  %.pre = and i32 %7, 112
  br label %.thread498

bb.g:                                             ; preds = %bb.f
  %.not311 = icmp eq i64 %5, 1
  %i.l = and i32 %7, 112                          ; 7 uses
  %.not312 = icmp eq i32 %i.l, 64
  %or.cond329 = or i1 %.not311, %.not312
  br i1 %or.cond329, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = and i32 %7, 16
  %i.n = icmp ne i32 %i.m, 0
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.o = phi i1 [ %i.n, %bb.h ], [ false, %bb.g ] ; 4 uses
  %i.p = icmp sgt i32 %spec.select, 0
  %i.q = and i32 %7, 128
  %.not313 = icmp eq i32 %i.q, 0
  %or.cond330 = or i1 %.not313, %i.p
  br i1 %or.cond330, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  switch i64 %5, label %.thread498 [
    i64 1, label %bb.k
    i64 2, label %bb.l
    i64 4, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  %i.r = load i32, ptr %1, align 4, !tbaa !44     ; 2 uses
  %i.s = trunc i32 %i.r to i8
  store i8 %i.s, ptr %3, align 1, !tbaa !49
  %i.t = ptrtoint ptr %.0481 to i64
  %i.u = ptrtoint ptr %1 to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = icmp sgt i64 %i.v, 4
  %i.x = icmp ugt i32 %i.r, 255
  %i.y = select i1 %i.w, i1 true, i1 %i.x
  %i.z = zext i1 %i.y to i32
  %i.aa = shl nsw i32 %spec.select, %i.z
  br label %.thread494

bb.l:                                             ; preds = %bb.j
  %i.ab = ptrtoint ptr %3 to i64
  %i.ac = and i64 %i.ab, 1
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.m, label %.thread498

bb.m:                                             ; preds = %bb.l
  %i.ae = load i32, ptr %1, align 4, !tbaa !44    ; 2 uses
  %i.af = trunc i32 %i.ae to i16                  ; 2 uses
  %i.ag = tail call i16 @llvm.bswap.i16(i16 %i.af)
  %spec.select536 = select i1 %i.o, i16 %i.ag, i16 %i.af
  store i16 %spec.select536, ptr %3, align 2, !tbaa !62
  %i.ah = ptrtoint ptr %.0481 to i64
  %i.ai = ptrtoint ptr %1 to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = icmp sgt i64 %i.aj, 4
  %i.al = icmp ugt i32 %i.ae, 65535
  %i.am = select i1 %i.ak, i1 true, i1 %i.al
  %i.an = zext i1 %i.am to i32
  %i.ao = shl nsw i32 %spec.select, %i.an
  br label %.thread494

bb.n:                                             ; preds = %bb.j
  %.old = ptrtoint ptr %3 to i64
  %.old331 = and i64 %.old, 3
  %.old332 = icmp eq i64 %.old331, 0
  br i1 %.old332, label %bb.o, label %.thread498

bb.o:                                             ; preds = %bb.n
  %i.ap = load i32, ptr %1, align 4, !tbaa !44    ; 2 uses
  %i.aq = tail call i32 @llvm.bswap.i32(i32 %i.ap)
  %spec.select537 = select i1 %i.o, i32 %i.aq, i32 %i.ap
  store i32 %spec.select537, ptr %3, align 4, !tbaa !44
  %i.ar = ptrtoint ptr %.0481 to i64
  %i.as = ptrtoint ptr %1 to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = icmp sgt i64 %i.at, 4
  %i.av = zext i1 %i.au to i32
  %i.aw = shl nsw i32 %spec.select, %i.av
  br label %.thread494

bb.p:                                             ; preds = %bb.i
  switch i64 %5, label %.thread498 [
    i64 1, label %bb.q
    i64 2, label %bb.r
    i64 4, label %bb.t
  ]

bb.q:                                             ; preds = %bb.p
  %i.ax = load i32, ptr %1, align 4, !tbaa !44
  %i.ay = zext i32 %i.ax to i64
  %i.az = sub nsw i64 0, %i.ay                    ; 2 uses
  %i.ba = trunc i64 %i.az to i8
  store i8 %i.ba, ptr %3, align 1, !tbaa !49
  %i.bb = ptrtoint ptr %.0481 to i64
  %i.bc = ptrtoint ptr %1 to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = icmp sgt i64 %i.bd, 4
  %i.bf = icmp ult i64 %i.az, -256
  %i.bg = select i1 %i.be, i1 true, i1 %i.bf
  %i.bh = select i1 %i.bg, i32 -2, i32 -1
  br label %.thread494

bb.r:                                             ; preds = %bb.p
  %i.bi = ptrtoint ptr %3 to i64
  %i.bj = and i64 %i.bi, 1
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.s, label %.thread498

bb.s:                                             ; preds = %bb.r
  %i.bl = load i32, ptr %1, align 4, !tbaa !44
  %i.bm = zext i32 %i.bl to i64
  %i.bn = sub nsw i64 0, %i.bm                    ; 2 uses
  %i.bo = trunc i64 %i.bn to i16                  ; 2 uses
  %i.bp = tail call i16 @llvm.bswap.i16(i16 %i.bo)
  %spec.select538 = select i1 %i.o, i16 %i.bp, i16 %i.bo
  store i16 %spec.select538, ptr %3, align 2, !tbaa !62
  %i.bq = ptrtoint ptr %.0481 to i64
  %i.br = ptrtoint ptr %1 to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = icmp sgt i64 %i.bs, 4
  %i.bu = icmp ult i64 %i.bn, -65536
  %i.bv = select i1 %i.bt, i1 true, i1 %i.bu
  %i.bw = select i1 %i.bv, i32 -2, i32 -1
  br label %.thread494

bb.t:                                             ; preds = %bb.p
  %.old334 = ptrtoint ptr %3 to i64
  %.old335 = and i64 %.old334, 3
  %.old336 = icmp eq i64 %.old335, 0
  br i1 %.old336, label %bb.u, label %.thread498

bb.u:                                             ; preds = %bb.t
  %i.bx = load i32, ptr %1, align 4, !tbaa !44
  %i.by = zext i32 %i.bx to i64
  %i.bz = sub nsw i64 0, %i.by                    ; 2 uses
  %i.ca = trunc i64 %i.bz to i32                  ; 2 uses
  %i.cb = tail call i32 @llvm.bswap.i32(i32 %i.ca)
  %spec.select539 = select i1 %i.o, i32 %i.cb, i32 %i.ca
  store i32 %spec.select539, ptr %3, align 4, !tbaa !44
  %i.cc = ptrtoint ptr %.0481 to i64
  %i.cd = ptrtoint ptr %1 to i64
  %i.ce = sub i64 %i.cc, %i.cd                    ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 8
  br i1 %i.cf, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.cg = getelementptr i8, ptr %1, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !44
  %i.ci = icmp eq i32 %i.ch, 1
  br i1 %i.ci, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cj = load i32, ptr %1, align 4, !tbaa !44
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %.thread494, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.cl = icmp sgt i64 %i.ce, 4
  %i.cm = icmp ult i64 %i.bz, -4294967296
  %i.cn = select i1 %i.cl, i1 true, i1 %i.cm
  %i.co = select i1 %i.cn, i32 -2, i32 -1
  br label %.thread494

.thread498:                                       ; preds = %..thread498_crit_edge, %bb.r, %bb.l, %bb.n, %bb.j, %bb.t, %bb.p
  %.pre-phi = phi i32 [ %.pre, %..thread498_crit_edge ], [ %i.l, %bb.r ], [ %i.l, %bb.l ], [ %i.l, %bb.n ], [ %i.l, %bb.j ], [ %i.l, %bb.t ], [ %i.l, %bb.p ]
  %i.cp = and i32 %7, 3
  %i.cq = icmp eq i32 %i.cp, 2
  %.not314 = icmp ne i32 %.pre-phi, 16
  %i.cr = and i1 %i.cq, %.not314
  %or.cond342.not = and i1 %i.j, %i.cr
  br i1 %or.cond342.not, label %bb.y, label %bb.ag

bb.y:                                             ; preds = %.thread498
  %i.cs = ptrtoint ptr %.0481 to i64
  %i.ct = ptrtoint ptr %1 to i64
end_hunk_0
begin_hunk_1_@bary_pack:bb.a
  %.034.i = select i1 %i.ia, i64 %i.id, i64 %5
  %.033.i = select i1 %i.ia, i64 0, i64 %i.ic
  %i.ie = trunc i64 %6 to i32
  %i.if = and i32 %i.ie, 7                        ; 2 uses
  %i.ig = icmp ne i32 %i.if, 0                    ; 3 uses
  %i.ih = lshr i64 %6, 3
  %i.ii = sub i64 %5, %i.ih
  %i.ij = sext i1 %i.ig to i64
  %spec.select.i = add i64 %i.ii, %i.ij           ; 4 uses
  %i.ik = and i32 %7, 112
  %i.il = icmp eq i32 %i.ik, 16                   ; 2 uses
  %i.im = add i64 %5, -1
  %.032.i = select i1 %i.il, i64 %i.im, i64 0
  %.0.i384 = select i1 %i.il, i64 -1, i64 1       ; 11 uses
  %i.in = sub nuw nsw i32 8, %i.if                ; 2 uses
  %spec.store.select.i = select i1 %i.ig, i32 %i.in, i32 0
  %i.io = getelementptr i8, ptr %3, i64 %.035.i
  %i.ip = getelementptr i8, ptr %3, i64 %.033.i
  %.not612 = icmp eq i64 %spec.select.i, 0
  %i.iq = zext nneg i32 %spec.store.select.i to i64 ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.iq
  %i.ir = xor i64 %notmask.i, -1
  %i.is = add i64 %spec.select.i, 1
  br label %bb.ba

bb.ba:                                            ; preds = %._crit_edge578, %bb.az
  %.0482 = phi ptr [ %1, %bb.az ], [ %.2484, %._crit_edge578 ] ; 2 uses
  %.0476 = phi i64 [ 0, %bb.az ], [ %.2478, %._crit_edge578 ] ; 2 uses
  %.0471 = phi i32 [ 0, %bb.az ], [ %.2473, %._crit_edge578 ] ; 2 uses
  %.0262 = phi ptr [ %i.io, %bb.az ], [ %i.ko, %._crit_edge578 ] ; 3 uses
  %i.it = getelementptr i8, ptr %.0262, i64 %.032.i ; 2 uses
  br i1 %.not612, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ba, %integer_pack_fill_dd.exit
  %.0256569 = phi ptr [ %i.jh, %integer_pack_fill_dd.exit ], [ %i.it, %bb.ba ] ; 2 uses
  %.0259568 = phi i64 [ %i.ji, %integer_pack_fill_dd.exit ], [ 0, %bb.ba ]
  %.1472567 = phi i32 [ %i.jf, %integer_pack_fill_dd.exit ], [ %.0471, %bb.ba ] ; 4 uses
  %.1477566 = phi i64 [ %i.je, %integer_pack_fill_dd.exit ], [ %.0476, %bb.ba ] ; 2 uses
  %.1483565 = phi ptr [ %.4486, %integer_pack_fill_dd.exit ], [ %.0482, %bb.ba ] ; 5 uses
  %i.iu = icmp ult ptr %.1483565, %.0481
  %notsub.i = add i32 %.1472567, -65
  %i.iv = icmp slt i32 %notsub.i, -32
  %or.cond544 = select i1 %i.iu, i1 %i.iv, i1 false
  br i1 %or.cond544, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.lr.ph
  %i.iw = getelementptr i8, ptr %.1483565, i64 4
  %i.ix = load i32, ptr %.1483565, align 4, !tbaa !44
  %i.iy = zext i32 %i.ix to i64
  %i.iz = zext nneg i32 %.1472567 to i64
  %i.ja = shl i64 %i.iy, %i.iz
  %i.jb = or i64 %i.ja, %.1477566
  %i.jc = add nsw i32 %.1472567, 32
  br label %integer_pack_fill_dd.exit

bb.bc:                                            ; preds = %.lr.ph
  %i.jd = icmp eq ptr %.1483565, %.0481
  %spec.select545 = select i1 %i.jd, i32 64, i32 %.1472567
  br label %integer_pack_fill_dd.exit

integer_pack_fill_dd.exit:                        ; preds = %bb.bc, %bb.bb
  %.4486 = phi ptr [ %.1483565, %bb.bc ], [ %i.iw, %bb.bb ] ; 2 uses
  %.4480 = phi i64 [ %.1477566, %bb.bc ], [ %i.jb, %bb.bb ] ; 2 uses
  %.3474 = phi i32 [ %spec.select545, %bb.bc ], [ %i.jc, %bb.bb ]
  %i.je = lshr i64 %.4480, 8                      ; 2 uses
  %i.jf = add i32 %.3474, -8                      ; 2 uses
  %i.jg = trunc i64 %.4480 to i8
  store i8 %i.jg, ptr %.0256569, align 1, !tbaa !49
  %i.jh = getelementptr i8, ptr %.0256569, i64 %.0.i384 ; 2 uses
  %i.ji = add nuw i64 %.0259568, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ji, %spec.select.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !221

._crit_edge:                                      ; preds = %integer_pack_fill_dd.exit, %bb.ba
  %.1483.lcssa = phi ptr [ %.0482, %bb.ba ], [ %.4486, %integer_pack_fill_dd.exit ] ; 6 uses
  %.1477.lcssa = phi i64 [ %.0476, %bb.ba ], [ %i.je, %integer_pack_fill_dd.exit ] ; 3 uses
  %.1472.lcssa = phi i32 [ %.0471, %bb.ba ], [ %i.jf, %integer_pack_fill_dd.exit ] ; 5 uses
  %.0256.lcssa = phi ptr [ %i.it, %bb.ba ], [ %i.jh, %integer_pack_fill_dd.exit ] ; 3 uses
  br i1 %i.ig, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %._crit_edge
  %i.jj = icmp ult ptr %.1483.lcssa, %.0481
  %notsub.i387 = add i32 %.1472.lcssa, -65
  %i.jk = icmp slt i32 %notsub.i387, -32
  %or.cond547 = select i1 %i.jj, i1 %i.jk, i1 false
  br i1 %or.cond547, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.jl = getelementptr i8, ptr %.1483.lcssa, i64 4
  %i.jm = load i32, ptr %.1483.lcssa, align 4, !tbaa !44
  %i.jn = zext i32 %i.jm to i64
  %i.jo = zext nneg i32 %.1472.lcssa to i64
  %i.jp = shl i64 %i.jn, %i.jo
  %i.jq = or i64 %i.jp, %.1477.lcssa
  %i.jr = add nsw i32 %.1472.lcssa, 32
  br label %integer_pack_fill_dd.exit388

bb.bf:                                            ; preds = %bb.bd
  %i.js = icmp eq ptr %.1483.lcssa, %.0481
  %spec.select548 = select i1 %i.js, i32 64, i32 %.1472.lcssa
  br label %integer_pack_fill_dd.exit388

integer_pack_fill_dd.exit388:                     ; preds = %bb.bf, %bb.be
  %.6488 = phi ptr [ %.1483.lcssa, %bb.bf ], [ %i.jl, %bb.be ]
  %.6 = phi i64 [ %.1477.lcssa, %bb.bf ], [ %i.jq, %bb.be ] ; 2 uses
  %.4475 = phi i32 [ %spec.select548, %bb.bf ], [ %i.jr, %bb.be ]
  %i.jt = and i64 %.6, %i.ir
  %i.ju = lshr i64 %.6, %i.iq
  %i.jv = sub i32 %.4475, %i.in
  %i.jw = trunc nuw i64 %i.jt to i8
  store i8 %i.jw, ptr %.0256.lcssa, align 1, !tbaa !49
  %i.jx = getelementptr i8, ptr %.0256.lcssa, i64 %.0.i384
  br label %bb.bg

bb.bg:                                            ; preds = %integer_pack_fill_dd.exit388, %._crit_edge
  %.2484 = phi ptr [ %.1483.lcssa, %._crit_edge ], [ %.6488, %integer_pack_fill_dd.exit388 ] ; 5 uses
  %.2478 = phi i64 [ %.1477.lcssa, %._crit_edge ], [ %i.ju, %integer_pack_fill_dd.exit388 ] ; 3 uses
  %.2473 = phi i32 [ %.1472.lcssa, %._crit_edge ], [ %i.jv, %integer_pack_fill_dd.exit388 ] ; 3 uses
  %.1260 = phi i64 [ %spec.select.i, %._crit_edge ], [ %i.is, %integer_pack_fill_dd.exit388 ] ; 5 uses
  %.1257 = phi ptr [ %.0256.lcssa, %._crit_edge ], [ %i.jx, %integer_pack_fill_dd.exit388 ] ; 2 uses
  %i.jy = icmp ult i64 %.1260, %5
  br i1 %i.jy, label %.lr.ph577.preheader, label %._crit_edge578

.lr.ph577.preheader:                              ; preds = %bb.bg
  %i.jz = sub nuw i64 %5, %.1260
  %xtraiter = and i64 %i.jz, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph577.prol.loopexit, label %.lr.ph577.prol

.lr.ph577.prol:                                   ; preds = %.lr.ph577.preheader, %.lr.ph577.prol
  %.2258575.prol = phi ptr [ %i.ka, %.lr.ph577.prol ], [ %.1257, %.lr.ph577.preheader ] ; 2 uses
  %.2261574.prol = phi i64 [ %i.kb, %.lr.ph577.prol ], [ %.1260, %.lr.ph577.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph577.prol ], [ 0, %.lr.ph577.preheader ]
  store i8 0, ptr %.2258575.prol, align 1, !tbaa !49
  %i.ka = getelementptr i8, ptr %.2258575.prol, i64 %.0.i384 ; 2 uses
  %i.kb = add nuw i64 %.2261574.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph577.prol.loopexit, label %.lr.ph577.prol, !llvm.loop !222

.lr.ph577.prol.loopexit:                          ; preds = %.lr.ph577.prol, %.lr.ph577.preheader
  %.2258575.unr = phi ptr [ %.1257, %.lr.ph577.preheader ], [ %i.ka, %.lr.ph577.prol ]
  %.2261574.unr = phi i64 [ %.1260, %.lr.ph577.preheader ], [ %i.kb, %.lr.ph577.prol ]
  %i.kc = sub i64 %.1260, %5
  %i.kd = icmp ugt i64 %i.kc, -8
  br i1 %i.kd, label %._crit_edge578, label %.lr.ph577

.lr.ph577:                                        ; preds = %.lr.ph577.prol.loopexit, %.lr.ph577
  %.2258575 = phi ptr [ %i.kl, %.lr.ph577 ], [ %.2258575.unr, %.lr.ph577.prol.loopexit ] ; 2 uses
  %.2261574 = phi i64 [ %i.km, %.lr.ph577 ], [ %.2261574.unr, %.lr.ph577.prol.loopexit ]
  store i8 0, ptr %.2258575, align 1, !tbaa !49
  %i.ke = getelementptr i8, ptr %.2258575, i64 %.0.i384 ; 2 uses
  store i8 0, ptr %i.ke, align 1, !tbaa !49
  %i.kf = getelementptr i8, ptr %i.ke, i64 %.0.i384 ; 2 uses
  store i8 0, ptr %i.kf, align 1, !tbaa !49
  %i.kg = getelementptr i8, ptr %i.kf, i64 %.0.i384 ; 2 uses
  store i8 0, ptr %i.kg, align 1, !tbaa !49
  %i.kh = getelementptr i8, ptr %i.kg, i64 %.0.i384 ; 2 uses
  store i8 0, ptr %i.kh, align 1, !tbaa !49
  %i.ki = getelementptr i8, ptr %i.kh, i64 %.0.i384 ; 2 uses
  store i8 0, ptr %i.ki, align 1, !tbaa !49
  %i.kj = getelementptr i8, ptr %i.ki, i64 %.0.i384 ; 2 uses
  store i8 0, ptr %i.kj, align 1, !tbaa !49
  %i.kk = getelementptr i8, ptr %i.kj, i64 %.0.i384 ; 2 uses
  store i8 0, ptr %i.kk, align 1, !tbaa !49
  %i.kl = getelementptr i8, ptr %i.kk, i64 %.0.i384
  %i.km = add nuw i64 %.2261574, 8                ; 2 uses
  %exitcond626.not.7 = icmp eq i64 %i.km, %5
  br i1 %exitcond626.not.7, label %._crit_edge578, label %.lr.ph577, !llvm.loop !223

._crit_edge578:                                   ; preds = %.lr.ph577.prol.loopexit, %.lr.ph577, %bb.bg
  %i.kn = icmp eq ptr %.0262, %i.ip
  %i.ko = getelementptr i8, ptr %.0262, i64 %.034.i
  br i1 %i.kn, label %bb.bh, label %bb.ba

bb.bh:                                            ; preds = %._crit_edge578
  %i.kp = icmp ult ptr %.2484, %.0481
  %notsub.i391 = add i32 %.2473, -65
  %i.kq = icmp slt i32 %notsub.i391, -32
  %or.cond550 = select i1 %i.kp, i1 %i.kq, i1 false
  br i1 %or.cond550, label %bb.bi, label %integer_pack_fill_dd.exit392

bb.bi:                                            ; preds = %bb.bh
  %i.kr = getelementptr i8, ptr %.2484, i64 4
  %i.ks = load i32, ptr %.2484, align 4, !tbaa !44
  %i.kt = zext i32 %i.ks to i64
  %i.ku = zext nneg i32 %.2473 to i64
  %i.kv = shl i64 %i.kt, %i.ku
  %i.kw = or i64 %i.kv, %.2478
  br label %integer_pack_fill_dd.exit392

integer_pack_fill_dd.exit392:                     ; preds = %bb.bh, %bb.bi
  %.8490 = phi ptr [ %i.kr, %bb.bi ], [ %.2484, %bb.bh ]
  %.8 = phi i64 [ %i.kw, %bb.bi ], [ %.2478, %bb.bh ] ; 2 uses
  %i.kx = icmp ne ptr %.8490, %.0481
  %i.ky = icmp ugt i64 %.8, 1
  %or.cond13 = select i1 %i.kx, i1 true, i1 %i.ky
  br i1 %or.cond13, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %integer_pack_fill_dd.exit392
  %i.kz = shl nsw i32 %0, 1
  br label %bb.bq

bb.bk:                                            ; preds = %integer_pack_fill_dd.exit392
  %i.la = icmp eq i64 %.8, 1
  br i1 %i.la, label %bb.bl, label %bb.bq

bb.bl:                                            ; preds = %bb.bk
  %i.lb = and i32 %7, 128
  %i.lc = icmp eq i32 %i.lb, 0
  %i.ld = icmp sgt i32 %0, -1
  %or.cond15 = or i1 %i.lc, %i.ld
  br i1 %or.cond15, label %bb.bm, label %.preheader555

.preheader555:                                    ; preds = %bb.bl
  br i1 %i.b, label %.lr.ph580, label %.critedge17

bb.bm:                                            ; preds = %bb.bl
  %i.le = shl nsw i32 %0, 1
  br label %bb.bq

.lr.ph580:                                        ; preds = %.preheader555, %bb.bn
  %storemerge579 = phi ptr [ %i.lh, %bb.bn ], [ %1, %.preheader555 ] ; 3 uses
  %i.lf = load i32, ptr %storemerge579, align 4, !tbaa !44
  %i.lg = icmp eq i32 %i.lf, 0
  br i1 %i.lg, label %bb.bn, label %.critedge17

bb.bn:                                            ; preds = %.lr.ph580
  %i.lh = getelementptr i8, ptr %storemerge579, i64 4 ; 3 uses
  %i.li = icmp ult ptr %i.lh, %.0481
  br i1 %i.li, label %.lr.ph580, label %.critedge17, !llvm.loop !224

.critedge17:                                      ; preds = %.lr.ph580, %bb.bn, %.preheader555
  %storemerge.lcssa = phi ptr [ %1, %.preheader555 ], [ %i.lh, %bb.bn ], [ %storemerge579, %.lr.ph580 ] ; 2 uses
  %i.lj = ptrtoint ptr %.0481 to i64
  %i.lk = ptrtoint ptr %storemerge.lcssa to i64
  %i.ll = sub i64 %i.lj, %i.lk
  %i.lm = icmp eq i64 %i.ll, 4
  br i1 %i.lm, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %.critedge17
  %i.ln = load i32, ptr %storemerge.lcssa, align 4, !tbaa !44
  %i.lo = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ln)
  %i.lp = icmp samesign ult i32 %i.lo, 2
  br i1 %i.lp, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.av, %bb.aw, %bb.bo, %.critedge17
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bj, %bb.bm, %bb.bp, %bb.bk, %bb.bo, %bb.aw, %bb.ay, %bb.au
  %.4293 = phi i32 [ %i.hr, %bb.au ], [ %0, %bb.ay ], [ -2, %bb.bp ], [ -1, %bb.bo ], [ -1, %bb.aw ], [ %i.kz, %bb.bj ], [ %i.le, %bb.bm ], [ %0, %bb.bk ] ; 3 uses
  %i.lq = and i32 %7, 128
  %i.lr = icmp ne i32 %i.lq, 0
  %i.ls = icmp slt i32 %.4293, 0
  %or.cond19 = select i1 %i.lr, i1 %i.ls, i1 false
  %i.lt = icmp ne i64 %4, 0
  %or.cond21 = and i1 %i.lt, %or.cond19
  br i1 %or.cond21, label %bb.br, label %.thread494

bb.br:                                            ; preds = %bb.bq
  %i.lu = and i32 %7, 3
  %i.lv = icmp eq i32 %i.lu, 1                    ; 3 uses
  %i.lw = add i64 %4, -1
  %i.lx = mul i64 %5, %i.lw                       ; 2 uses
  %i.ly = sub i64 0, %5
  %.035.i393 = select i1 %i.lv, i64 %i.lx, i64 0
  %.034.i394 = select i1 %i.lv, i64 %i.ly, i64 %5
  %.033.i395 = select i1 %i.lv, i64 0, i64 %i.lx
  %i.lz = trunc i64 %6 to i32
  %i.ma = and i32 %i.lz, 7                        ; 3 uses
  %i.mb = icmp ne i32 %i.ma, 0                    ; 2 uses
  %i.mc = lshr i64 %6, 3                          ; 2 uses
  %i.md = sub i64 %5, %i.mc
  %i.me = sext i1 %i.mb to i64                    ; 2 uses
  %spec.select.i396 = add i64 %i.md, %i.me        ; 4 uses
  %i.mf = and i32 %7, 112
  %i.mg = icmp eq i32 %i.mf, 16                   ; 2 uses
  %i.mh = add i64 %5, -1
  %.032.i397 = select i1 %i.mg, i64 %i.mh, i64 0
  %.0.i398 = select i1 %i.mg, i64 -1, i64 1       ; 3 uses
  %i.mi = sub nuw nsw i32 8, %i.ma
  %i.mj = lshr i32 255, %i.ma                     ; 2 uses
  %i.mk = getelementptr i8, ptr %3, i64 %.035.i393
  %i.ml = getelementptr i8, ptr %3, i64 %.033.i395
  %.not613 = icmp eq i64 %spec.select.i396, 0
  %i.mm = add i64 %5, %i.me
  %.neg = add nuw nsw i64 %i.mc, 1
  %xtraiter738 = and i64 %spec.select.i396, 1
  %i.mn = icmp eq i64 %i.mm, %.neg
  %unroll_iter = and i64 %spec.select.i396, -2
  %lcmp.mod739.not = icmp eq i64 %xtraiter738, 0
  %lcmp.mod742 = trunc i64 %spec.select.i396 to i1
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bu, %bb.br
  %.0254 = phi ptr [ %i.mk, %bb.br ], [ %i.nt, %bb.bu ] ; 3 uses
  %.0253 = phi i32 [ 1, %bb.br ], [ %.2, %bb.bu ] ; 3 uses
  %i.mo = getelementptr i8, ptr %.0254, i64 %.032.i397 ; 3 uses
  br i1 %.not613, label %._crit_edge589, label %.lr.ph588.preheader

.lr.ph588.preheader:                              ; preds = %bb.bs
  br i1 %i.mn, label %.lr.ph588.epil.preheader, label %.lr.ph588

.lr.ph588:                                        ; preds = %.lr.ph588.preheader, %.lr.ph588
  %.0586 = phi ptr [ %i.nc, %.lr.ph588 ], [ %i.mo, %.lr.ph588.preheader ] ; 3 uses
  %.1584 = phi i32 [ %i.nb, %.lr.ph588 ], [ %.0253, %.lr.ph588.preheader ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph588 ], [ 0, %.lr.ph588.preheader ]
  %i.mp = load i8, ptr %.0586, align 1, !tbaa !49
  %i.mq = xor i8 %i.mp, -1
  %i.mr = zext i8 %i.mq to i32
  %i.ms = add i32 %.1584, %i.mr                   ; 2 uses
  %i.mt = trunc i32 %i.ms to i8
  store i8 %i.mt, ptr %.0586, align 1, !tbaa !49
  %i.mu = ashr i32 %i.ms, 8
  %i.mv = getelementptr i8, ptr %.0586, i64 %.0.i398 ; 3 uses
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !49
  %i.mx = xor i8 %i.mw, -1
  %i.my = zext i8 %i.mx to i32
  %i.mz = add nsw i32 %i.mu, %i.my                ; 2 uses
  %i.na = trunc i32 %i.mz to i8
  store i8 %i.na, ptr %i.mv, align 1, !tbaa !49
  %i.nb = ashr i32 %i.mz, 8                       ; 3 uses
  %i.nc = getelementptr i8, ptr %i.mv, i64 %.0.i398 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge589.loopexit.unr-lcssa, label %.lr.ph588, !llvm.loop !225

._crit_edge589.loopexit.unr-lcssa:                ; preds = %.lr.ph588
  br i1 %lcmp.mod739.not, label %._crit_edge589, label %.lr.ph588.epil.preheader

.lr.ph588.epil.preheader:                         ; preds = %._crit_edge589.loopexit.unr-lcssa, %.lr.ph588.preheader
  %.0586.epil.init = phi ptr [ %i.mo, %.lr.ph588.preheader ], [ %i.nc, %._crit_edge589.loopexit.unr-lcssa ] ; 3 uses
  %.1584.epil.init = phi i32 [ %.0253, %.lr.ph588.preheader ], [ %i.nb, %._crit_edge589.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod742)
  %i.nd = load i8, ptr %.0586.epil.init, align 1, !tbaa !49
  %i.ne = xor i8 %i.nd, -1
  %i.nf = zext i8 %i.ne to i32
  %i.ng = add i32 %.1584.epil.init, %i.nf         ; 2 uses
  %i.nh = trunc i32 %i.ng to i8
  store i8 %i.nh, ptr %.0586.epil.init, align 1, !tbaa !49
  %i.ni = ashr i32 %i.ng, 8
  %i.nj = getelementptr i8, ptr %.0586.epil.init, i64 %.0.i398
  br label %._crit_edge589

._crit_edge589:                                   ; preds = %.lr.ph588.epil.preheader, %._crit_edge589.loopexit.unr-lcssa, %bb.bs
  %.1.lcssa = phi i32 [ %.0253, %bb.bs ], [ %i.nb, %._crit_edge589.loopexit.unr-lcssa ], [ %i.ni, %.lr.ph588.epil.preheader ] ; 2 uses
  %.0.lcssa = phi ptr [ %i.mo, %bb.bs ], [ %i.nc, %._crit_edge589.loopexit.unr-lcssa ], [ %i.nj, %.lr.ph588.epil.preheader ] ; 2 uses
  br i1 %i.mb, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %._crit_edge589
  %i.nk = load i8, ptr %.0.lcssa, align 1, !tbaa !49
  %i.nl = zext i8 %i.nk to i32
  %i.nm = xor i32 %i.nl, -1
  %i.nn = and i32 %i.mj, %i.nm
  %i.no = add i32 %i.nn, %.1.lcssa                ; 2 uses
  %i.np = and i32 %i.no, %i.mj
  %i.nq = trunc nuw nsw i32 %i.np to i8
  store i8 %i.nq, ptr %.0.lcssa, align 1, !tbaa !49
  %i.nr = ashr i32 %i.no, %i.mi
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %._crit_edge589
  %.2 = phi i32 [ %i.nr, %bb.bt ], [ %.1.lcssa, %._crit_edge589 ]
  %i.ns = icmp eq ptr %.0254, %i.ml
  %i.nt = getelementptr i8, ptr %.0254, i64 %.034.i394
  br i1 %i.ns, label %.thread494, label %bb.bs

.thread494:                                       ; preds = %bb.bu, %.thread671, %bb.w, %bb.x, %bb.s, %bb.q, %.thread530, %bytes_2comp.exit.thread, %.thread526, %bb.o, %bb.m, %bb.k, %bb.bq, %bary_swap.exit383, %bb.e
  %.4 = phi i32 [ %.4293, %bb.bq ], [ 0, %bb.e ], [ %i.ao, %bb.m ], [ %spec.select357, %bary_swap.exit383 ], [ %i.ed, %.thread526 ], [ %i.aw, %bb.o ], [ %i.bh, %bb.q ], [ %i.aa, %bb.k ], [ %spec.select, %.thread530 ], [ %i.ee, %bytes_2comp.exit.thread ], [ %i.co, %bb.x ], [ -1, %bb.w ], [ %i.bw, %bb.s ], [ 0, %.thread671 ], [ %.4293, %bb.bu ]
  ret i32 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @validate_integer_pack_format(i64 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef range(i32 1267, 2036) %4) unnamed_addr #0 {
bb.a:
  %i.a = xor i32 %4, -1
  %i.b = and i32 %3, %i.a
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @rb_eArgError, align 8, !tbaa !46
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.c, ptr noundef nonnull @.str.20) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = and i32 %3, 3
  switch i32 %i.d, label %bb.g [
    i32 0, label %bb.d
    i32 3, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = icmp ugt i64 %0, 1
  br i1 %i.e, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.f = load i64, ptr @rb_eArgError, align 8, !tbaa !46
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.f, ptr noundef nonnull @.str.21) #25
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.g = load i64, ptr @rb_eArgError, align 8, !tbaa !46
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.g, ptr noundef nonnull @.str.22) #25
  unreachable

bb.g:                                             ; preds = %bb.c, %bb.d
  %i.h = lshr i32 %3, 4
  %i.i = and i32 %i.h, 7
  switch i32 %i.i, label %bb.i [
    i32 0, label %bb.h
    i32 4, label %bb.j
    i32 2, label %bb.j
    i32 1, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.j = load i64, ptr @rb_eArgError, align 8, !tbaa !46
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.j, ptr noundef nonnull @.str.23) #25
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.k = load i64, ptr @rb_eArgError, align 8, !tbaa !46
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.k, ptr noundef nonnull @.str.24) #25
  unreachable

bb.j:                                             ; preds = %bb.g, %bb.g, %bb.g
  %i.l = icmp eq i64 %1, 0
  br i1 %i.l, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.m = load i64, ptr @rb_eArgError, align 8, !tbaa !46
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.m, ptr noundef nonnull @.str.25, i64 noundef 0) #25
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.n = icmp slt i64 %1, 0
  br i1 %i.n, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.o = load i64, ptr @rb_eArgError, align 8, !tbaa !46
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.o, ptr noundef nonnull @.str.26, i64 noundef %1) #25
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.p = lshr i64 %2, 3
  %.not31 = icmp samesign ugt i64 %1, %i.p
  br i1 %.not31, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.q = load i64, ptr @rb_eArgError, align 8, !tbaa !46
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.q, ptr noundef nonnull @.str.27, i64 noundef %2) #25
  unreachable

bb.p:                                             ; preds = %bb.n
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0)
  %mul.ov = extractvalue { i64, i1 } %mul, 1
  br i1 %mul.ov, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.r = load i64, ptr @rb_eArgError, align 8, !tbaa !46
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.r, ptr noundef nonnull @.str.28, i64 noundef %0, i64 noundef %1) #25
  unreachable

bb.r:                                             ; preds = %bb.p
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -2, 2) i32 @bary_unpack_internal(ptr noundef %0, i64 noundef range(i64 -576460752303423487, 9223372036854775807) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 4 uses
  %i.b = getelementptr [4 x i8], ptr %0, i64 %1   ; 9 uses
  %i.c = and i32 %6, 1024
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.al

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %5, 0                        ; 2 uses
  %i.e = icmp eq i64 %3, 1
  %or.cond = and i1 %i.e, %i.d
  br i1 %or.cond, label %bb.c, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.b
  %.pre397 = and i32 %6, 112
  br label %.thread

bb.c:                                             ; preds = %bb.b
  %.not154 = icmp eq i64 %4, 1
  %i.f = and i32 %6, 112                          ; 4 uses
  %.not155 = icmp eq i32 %i.f, 64
  %or.cond182 = or i1 %.not154, %.not155
  br i1 %or.cond182, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = and i32 %6, 16
  %i.h = icmp ne i32 %i.g, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = phi i1 [ %i.h, %bb.d ], [ false, %bb.c ] ; 2 uses
  switch i64 %4, label %.thread [
    i64 1, label %integer_unpack_single_bdigit.exit
    i64 2, label %bb.f
    i64 4, label %bb.g
  ]

integer_unpack_single_bdigit.exit:                ; preds = %bb.e
  %i.j = load i8, ptr %2, align 1, !tbaa !49      ; 2 uses
  %i.k = zext i8 %i.j to i32                      ; 2 uses
  %i.l = and i32 %6, 128
  %.not.i = icmp eq i32 %i.l, 0                   ; 2 uses
  %i.m = and i32 %6, 512
  %.not18.i = icmp eq i32 %i.m, 0                 ; 2 uses
  %.not20.i = icmp sgt i8 %i.j, -1
  %or.cond311 = select i1 %.not18.i, i1 %.not20.i, i1 false ; 2 uses
  %i.n = sub nuw nsw i32 256, %i.k
  %or.cond311.sink = select i1 %.not.i, i1 %.not18.i, i1 %or.cond311
  %i.o = select i1 %.not.i, i1 true, i1 %or.cond311
  %.015.i = select i1 %i.o, i32 %i.k, i32 %i.n
  %spec.select317 = select i1 %or.cond311.sink, i32 1, i32 -1
  store i32 %.015.i, ptr %0, align 4, !tbaa !44
  br label %bary_2comp.exit

bb.f:                                             ; preds = %bb.e
  %i.p = ptrtoint ptr %2 to i64
  %i.q = and i64 %i.p, 1
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %integer_unpack_single_bdigit.exit201, label %.thread

integer_unpack_single_bdigit.exit201:             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "align"(ptr %2, i64 2) ]
  %i.s = load i16, ptr %2, align 2, !tbaa !62     ; 2 uses
  %i.t = tail call i16 @llvm.bswap.i16(i16 %i.s)
  %spec.select = select i1 %i.i, i16 %i.t, i16 %i.s ; 2 uses
  %i.u = zext i16 %spec.select to i32             ; 2 uses
  %i.v = and i32 %6, 128
  %.not.i196 = icmp eq i32 %i.v, 0                ; 2 uses
  %i.w = and i32 %6, 512
  %.not18.i197 = icmp eq i32 %i.w, 0              ; 2 uses
  %.not20.i200 = icmp sgt i16 %spec.select, -1
  %or.cond313 = select i1 %.not18.i197, i1 %.not20.i200, i1 false ; 2 uses
  %i.x = sub nuw nsw i32 65536, %i.u
  %or.cond313.sink = select i1 %.not.i196, i1 %.not18.i197, i1 %or.cond313
  %i.y = select i1 %.not.i196, i1 true, i1 %or.cond313
  %.015.i198 = select i1 %i.y, i32 %i.u, i32 %i.x
  %spec.select319 = select i1 %or.cond313.sink, i32 1, i32 -1
  store i32 %.015.i198, ptr %0, align 4, !tbaa !44
  br label %bary_2comp.exit

bb.g:                                             ; preds = %bb.e
  %.old = ptrtoint ptr %2 to i64
  %.old183 = and i64 %.old, 3
end_hunk_1
begin_hunk_2_@bary_unpack_internal:bb.a
  %i.cs = icmp ult ptr %i.cr, %.011.i219.1
  br i1 %i.cs, label %.lr.ph.i216.1, label %bary_swap.exit220.1, !llvm.loop !22

bary_swap.exit220.1:                              ; preds = %.lr.ph.i216.1, %bary_swap.exit220
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge363.loopexit.unr-lcssa, label %.lr.ph362, !llvm.loop !229

._crit_edge363.loopexit.unr-lcssa:                ; preds = %bary_swap.exit220.1
  %lcmp.mod533.not = icmp eq i64 %xtraiter532, 0
  br i1 %lcmp.mod533.not, label %._crit_edge363, label %.lr.ph362.epil.preheader

.lr.ph362.epil.preheader:                         ; preds = %._crit_edge363.loopexit.unr-lcssa, %.lr.ph362.preheader
  %.0143360.epil.init = phi ptr [ %0, %.lr.ph362.preheader ], [ %i.cn, %._crit_edge363.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod534 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod534)
  %i.ct = getelementptr i8, ptr %.0143360.epil.init, i64 %4
  %.01112.i215.epil = getelementptr i8, ptr %i.ct, i64 -4 ; 2 uses
  %i.cu = icmp ult ptr %.0143360.epil.init, %.01112.i215.epil
  br i1 %i.cu, label %.lr.ph.i216.epil, label %._crit_edge363

.lr.ph.i216.epil:                                 ; preds = %.lr.ph362.epil.preheader, %.lr.ph.i216.epil
  %.01114.i217.epil = phi ptr [ %.011.i219.epil, %.lr.ph.i216.epil ], [ %.01112.i215.epil, %.lr.ph362.epil.preheader ] ; 3 uses
  %.013.i218.epil = phi ptr [ %i.cx, %.lr.ph.i216.epil ], [ %.0143360.epil.init, %.lr.ph362.epil.preheader ] ; 3 uses
  %i.cv = load i32, ptr %.013.i218.epil, align 4, !tbaa !44
  %i.cw = load i32, ptr %.01114.i217.epil, align 4, !tbaa !44
  store i32 %i.cw, ptr %.013.i218.epil, align 4, !tbaa !44
  store i32 %i.cv, ptr %.01114.i217.epil, align 4, !tbaa !44
  %i.cx = getelementptr i8, ptr %.013.i218.epil, i64 4 ; 2 uses
  %.011.i219.epil = getelementptr i8, ptr %.01114.i217.epil, i64 -4 ; 2 uses
  %i.cy = icmp ult ptr %i.cx, %.011.i219.epil
  br i1 %i.cy, label %.lr.ph.i216.epil, label %._crit_edge363, !llvm.loop !22

._crit_edge363:                                   ; preds = %._crit_edge363.loopexit.unr-lcssa, %.lr.ph.i216.epil, %.lr.ph362.epil.preheader, %bb.ac
  %.not161 = icmp ne i32 %i.bx, 0
  %i.cz = icmp ult ptr %0, %i.b
  %or.cond370 = and i1 %.not161, %i.cz
  br i1 %or.cond370, label %.lr.ph366.preheader, label %.loopexit

bb.ad:                                            ; preds = %bary_swap.exit
  %.old369 = icmp ult ptr %0, %i.b
  br i1 %.old369, label %.lr.ph366.preheader, label %.loopexit

.lr.ph366.preheader:                              ; preds = %bb.ad, %._crit_edge363
  %i.da = shl i64 %1, 2
  %i.db = add i64 %i.da, %i.a
  %i.dc = add i64 %i.a, 4
  %i.dd = tail call i64 @llvm.umax.i64(i64 %i.db, i64 %i.dc)
  %i.de = xor i64 %i.a, -1
  %i.df = add i64 %i.dd, %i.de                    ; 2 uses
  %i.dg = lshr i64 %i.df, 2
  %i.dh = add nuw nsw i64 %i.dg, 1                ; 2 uses
  %min.iters.check471 = icmp ult i64 %i.df, 28
  br i1 %min.iters.check471, label %.lr.ph366.preheader516, label %vector.ph472

vector.ph472:                                     ; preds = %.lr.ph366.preheader
  %n.vec473 = and i64 %i.dh, 9223372036854775800  ; 3 uses
  %i.di = shl i64 %n.vec473, 2
  %i.dj = getelementptr i8, ptr %0, i64 %i.di
  br label %vector.body474

vector.body474:                                   ; preds = %vector.body474, %vector.ph472
  %index475 = phi i64 [ 0, %vector.ph472 ], [ %index.next478, %vector.body474 ] ; 2 uses
  %i.dk = shl i64 %index475, 2
  %next.gep = getelementptr i8, ptr %0, i64 %i.dk ; 3 uses
  %i.dl = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load476 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !44
  %wide.load477 = load <4 x i32>, ptr %i.dl, align 4, !tbaa !44
  %i.dm = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load476)
  %i.dn = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load477)
  store <4 x i32> %i.dm, ptr %next.gep, align 4, !tbaa !44
  store <4 x i32> %i.dn, ptr %i.dl, align 4, !tbaa !44
  %index.next478 = add nuw i64 %index475, 8       ; 2 uses
  %i.do = icmp eq i64 %index.next478, %n.vec473
  br i1 %i.do, label %middle.block479, label %vector.body474, !llvm.loop !230

middle.block479:                                  ; preds = %vector.body474
  %cmp.n480 = icmp eq i64 %i.dh, %n.vec473
  br i1 %cmp.n480, label %.loopexit, label %.lr.ph366.preheader516

.lr.ph366.preheader516:                           ; preds = %.lr.ph366.preheader, %middle.block479
  %.0142364.ph = phi ptr [ %0, %.lr.ph366.preheader ], [ %i.dj, %middle.block479 ]
  br label %.lr.ph366

.lr.ph366:                                        ; preds = %.lr.ph366.preheader516, %.lr.ph366
  %.0142364 = phi ptr [ %i.dr, %.lr.ph366 ], [ %.0142364.ph, %.lr.ph366.preheader516 ] ; 3 uses
  %i.dp = load i32, ptr %.0142364, align 4, !tbaa !44
  %i.dq = tail call noundef i32 @llvm.bswap.i32(i32 %i.dp)
  store i32 %i.dq, ptr %.0142364, align 4, !tbaa !44
  %i.dr = getelementptr i8, ptr %.0142364, i64 4  ; 2 uses
  %i.ds = icmp ult ptr %i.dr, %i.b
  br i1 %i.ds, label %.lr.ph366, label %.loopexit, !llvm.loop !231

.loopexit:                                        ; preds = %.lr.ph366, %middle.block479, %bb.ad, %.critedge, %._crit_edge363
  %i.dt = and i32 %6, 128
  %.not162 = icmp eq i32 %i.dt, 0
  %i.du = and i32 %6, 512
  %.not163 = icmp eq i32 %i.du, 0                 ; 2 uses
  br i1 %.not162, label %bb.ak, label %bb.ae

bb.ae:                                            ; preds = %.loopexit
  br i1 %.not163, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not27.i221 = icmp eq i64 %1, 0
  br i1 %.not27.i221, label %bary_2comp.exit, label %.lr.ph.i222

.lr.ph.i222:                                      ; preds = %bb.af, %bb.ag
  %.023.i223 = phi i64 [ %i.dx, %bb.ag ], [ 0, %bb.af ] ; 5 uses
  %i.dv = getelementptr [4 x i8], ptr %0, i64 %.023.i223
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !44 ; 2 uses
  %.not.i224 = icmp eq i32 %i.dw, 0
  br i1 %.not.i224, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.i222
  %i.dx = add nuw i64 %.023.i223, 1               ; 2 uses
  %exitcond.not.i231 = icmp eq i64 %i.dx, %1
  br i1 %exitcond.not.i231, label %bary_2comp.exit, label %.lr.ph.i222, !llvm.loop !8

bb.ah:                                            ; preds = %.lr.ph.i222
  %i.dy = getelementptr [4 x i8], ptr %0, i64 %.023.i223
  %i.dz = sub i32 0, %i.dw
  store i32 %i.dz, ptr %i.dy, align 4, !tbaa !44
  %.124.i225 = add i64 %.023.i223, 1              ; 4 uses
  %i.ea = icmp ult i64 %.124.i225, %1
  br i1 %i.ea, label %.lr.ph26.i227.preheader, label %bary_2comp.exit

.lr.ph26.i227.preheader:                          ; preds = %bb.ah
  %i.eb = xor i64 %.023.i223, -1
  %i.ec = add i64 %1, %i.eb                       ; 3 uses
  %min.iters.check483 = icmp ult i64 %i.ec, 8
  br i1 %min.iters.check483, label %.lr.ph26.i227.preheader510, label %vector.ph484

vector.ph484:                                     ; preds = %.lr.ph26.i227.preheader
  %n.vec485 = and i64 %i.ec, -8                   ; 3 uses
  %i.ed = add i64 %.124.i225, %n.vec485
  %i.ee = getelementptr [4 x i8], ptr %0, i64 %.124.i225
  br label %vector.body486

vector.body486:                                   ; preds = %vector.body486, %vector.ph484
  %index487 = phi i64 [ 0, %vector.ph484 ], [ %index.next490, %vector.body486 ] ; 2 uses
  %i.ef = getelementptr [4 x i8], ptr %i.ee, i64 %index487 ; 3 uses
  %i.eg = getelementptr i8, ptr %i.ef, i64 16     ; 2 uses
  %wide.load488 = load <4 x i32>, ptr %i.ef, align 4, !tbaa !44
  %wide.load489 = load <4 x i32>, ptr %i.eg, align 4, !tbaa !44
  %i.eh = xor <4 x i32> %wide.load488, splat (i32 -1)
  %i.ei = xor <4 x i32> %wide.load489, splat (i32 -1)
  store <4 x i32> %i.eh, ptr %i.ef, align 4, !tbaa !44
  store <4 x i32> %i.ei, ptr %i.eg, align 4, !tbaa !44
  %index.next490 = add nuw i64 %index487, 8       ; 2 uses
  %i.ej = icmp eq i64 %index.next490, %n.vec485
  br i1 %i.ej, label %middle.block491, label %vector.body486, !llvm.loop !232

middle.block491:                                  ; preds = %vector.body486
  %cmp.n492 = icmp eq i64 %i.ec, %n.vec485
  br i1 %cmp.n492, label %bary_2comp.exit, label %.lr.ph26.i227.preheader510

.lr.ph26.i227.preheader510:                       ; preds = %.lr.ph26.i227.preheader, %middle.block491
  %.125.i228.ph = phi i64 [ %.124.i225, %.lr.ph26.i227.preheader ], [ %i.ed, %middle.block491 ]
  br label %.lr.ph26.i227

.lr.ph26.i227:                                    ; preds = %.lr.ph26.i227.preheader510, %.lr.ph26.i227
  %.125.i228 = phi i64 [ %.1.i229, %.lr.ph26.i227 ], [ %.125.i228.ph, %.lr.ph26.i227.preheader510 ] ; 2 uses
  %i.ek = getelementptr [4 x i8], ptr %0, i64 %.125.i228 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !44
  %i.em = xor i32 %i.el, -1
  store i32 %i.em, ptr %i.ek, align 4, !tbaa !44
  %.1.i229 = add nuw i64 %.125.i228, 1            ; 2 uses
  %exitcond31.not.i230 = icmp eq i64 %.1.i229, %1
  br i1 %exitcond31.not.i230, label %bary_2comp.exit, label %.lr.ph26.i227, !llvm.loop !233

bb.ai:                                            ; preds = %bb.ae
  %i.en = getelementptr i8, ptr %i.b, i64 -4
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !44
  %.not165 = icmp sgt i32 %i.eo, -1
  br i1 %.not165, label %bary_2comp.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call fastcc void @bary_2comp(ptr noundef nonnull %0, i64 noundef %1)
  br label %bary_2comp.exit

bb.ak:                                            ; preds = %.loopexit
  %i.ep = select i1 %.not163, i32 1, i32 -1
  br label %bary_2comp.exit

bb.al:                                            ; preds = %bb.x, %bb.a
  %.not315 = icmp eq i64 %1, 0                    ; 4 uses
  br i1 %.not315, label %.loopexit326, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eq = and i32 %6, 3
  %i.er = icmp eq i32 %i.eq, 1                    ; 3 uses
  %i.es = add i64 %3, -1
  %i.et = mul i64 %4, %i.es                       ; 2 uses
  %i.eu = sub i64 0, %4
  %.035.i = select i1 %i.er, i64 %i.et, i64 0
  %.034.i = select i1 %i.er, i64 %i.eu, i64 %4
  %.033.i = select i1 %i.er, i64 0, i64 %i.et
  %i.ev = trunc i64 %5 to i32
  %i.ew = and i32 %i.ev, 7                        ; 3 uses
  %i.ex = icmp ne i32 %i.ew, 0                    ; 2 uses
  %i.ey = lshr i64 %5, 3
  %i.ez = sub i64 %4, %i.ey
  %i.fa = sext i1 %i.ex to i64
  %spec.select.i = add i64 %i.ez, %i.fa           ; 2 uses
  %i.fb = and i32 %6, 112
  %i.fc = icmp eq i32 %i.fb, 16                   ; 2 uses
  %i.fd = add i64 %4, -1
  %.032.i = select i1 %i.fc, i64 %i.fd, i64 0
  %.0.i233 = select i1 %i.fc, i64 -1, i64 1
  %i.fe = getelementptr i8, ptr %2, i64 %.035.i
  %i.ff = getelementptr i8, ptr %2, i64 %.033.i
  %.not371 = icmp eq i64 %spec.select.i, 0
  %i.fg = lshr i32 255, %i.ew
  %invariant.op = sub i32 8, %i.ew
  br label %bb.an

bb.an:                                            ; preds = %integer_unpack_push_bits.exit238, %bb.am
  %.0291 = phi ptr [ %0, %bb.am ], [ %.2293, %integer_unpack_push_bits.exit238 ] ; 2 uses
  %.0286 = phi i64 [ 0, %bb.am ], [ %.2288, %integer_unpack_push_bits.exit238 ] ; 2 uses
  %.0283 = phi i32 [ 0, %bb.am ], [ %.2285, %integer_unpack_push_bits.exit238 ] ; 2 uses
  %.0137 = phi ptr [ %i.fe, %bb.am ], [ %i.hg, %integer_unpack_push_bits.exit238 ] ; 3 uses
  %i.fh = getelementptr i8, ptr %.0137, i64 %.032.i ; 2 uses
  br i1 %.not371, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.an, %integer_unpack_push_bits.exit
  %.0351 = phi ptr [ %i.go, %integer_unpack_push_bits.exit ], [ %i.fh, %bb.an ] ; 2 uses
  %.0136350 = phi i64 [ %i.gp, %integer_unpack_push_bits.exit ], [ 0, %bb.an ]
  %.1284349 = phi i32 [ %.4, %integer_unpack_push_bits.exit ], [ %.0283, %bb.an ] ; 3 uses
  %.1287348 = phi i64 [ %.3289, %integer_unpack_push_bits.exit ], [ %.0286, %bb.an ]
  %.1292347 = phi ptr [ %.5296, %integer_unpack_push_bits.exit ], [ %.0291, %bb.an ] ; 3 uses
  %i.fi = load i8, ptr %.0351, align 1, !tbaa !49
  %i.fj = zext i8 %i.fi to i64
  %i.fk = zext nneg i32 %.1284349 to i64
  %i.fl = shl i64 %i.fj, %i.fk
  %i.fm = or i64 %i.fl, %.1287348                 ; 3 uses
  %i.fn = add i32 %.1284349, 8                    ; 4 uses
  %i.fo = icmp sgt i32 %i.fn, 31
  br i1 %i.fo, label %.lr.ph.i234.preheader, label %integer_unpack_push_bits.exit

.lr.ph.i234.preheader:                            ; preds = %.lr.ph
  %i.fp = add nsw i32 %.1284349, -24              ; 2 uses
  %i.fq = lshr i32 %i.fp, 5
  %i.fr = add nuw nsw i32 %i.fq, 1
  %xtraiter = and i32 %i.fr, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i234.prol.loopexit, label %.lr.ph.i234.prol

.lr.ph.i234.prol:                                 ; preds = %.lr.ph.i234.preheader, %.lr.ph.i234.prol
  %.3.prol = phi i32 [ %i.fx, %.lr.ph.i234.prol ], [ %i.fn, %.lr.ph.i234.preheader ]
  %i.fs = phi ptr [ %i.fv, %.lr.ph.i234.prol ], [ %.1292347, %.lr.ph.i234.preheader ] ; 2 uses
  %i.ft = phi i64 [ %i.fw, %.lr.ph.i234.prol ], [ %i.fm, %.lr.ph.i234.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i234.prol ], [ 0, %.lr.ph.i234.preheader ]
  %i.fu = trunc i64 %i.ft to i32
  %i.fv = getelementptr i8, ptr %i.fs, i64 4      ; 3 uses
  store i32 %i.fu, ptr %i.fs, align 4, !tbaa !44
  %i.fw = lshr i64 %i.ft, 32                      ; 3 uses
  %i.fx = add nsw i32 %.3.prol, -32               ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i234.prol.loopexit, label %.lr.ph.i234.prol, !llvm.loop !234

.lr.ph.i234.prol.loopexit:                        ; preds = %.lr.ph.i234.prol, %.lr.ph.i234.preheader
  %.3.unr = phi i32 [ %i.fn, %.lr.ph.i234.preheader ], [ %i.fx, %.lr.ph.i234.prol ]
  %.unr = phi ptr [ %.1292347, %.lr.ph.i234.preheader ], [ %i.fv, %.lr.ph.i234.prol ]
  %.unr531 = phi i64 [ %i.fm, %.lr.ph.i234.preheader ], [ %i.fw, %.lr.ph.i234.prol ]
  %.lcssa526.unr = phi ptr [ poison, %.lr.ph.i234.preheader ], [ %i.fv, %.lr.ph.i234.prol ]
  %.lcssa525.unr = phi i64 [ poison, %.lr.ph.i234.preheader ], [ %i.fw, %.lr.ph.i234.prol ]
  %.lcssa524.unr = phi i32 [ poison, %.lr.ph.i234.preheader ], [ %i.fx, %.lr.ph.i234.prol ]
  %i.fy = icmp ult i32 %i.fp, 224
  br i1 %i.fy, label %integer_unpack_push_bits.exit, label %.lr.ph.i234

.lr.ph.i234:                                      ; preds = %.lr.ph.i234.prol.loopexit, %.lr.ph.i234
  %.3 = phi i32 [ %i.gm, %.lr.ph.i234 ], [ %.3.unr, %.lr.ph.i234.prol.loopexit ] ; 2 uses
  %i.fz = phi ptr [ %i.gl, %.lr.ph.i234 ], [ %.unr, %.lr.ph.i234.prol.loopexit ] ; 9 uses
  %i.ga = phi i64 [ 0, %.lr.ph.i234 ], [ %.unr531, %.lr.ph.i234.prol.loopexit ] ; 2 uses
  %i.gb = trunc i64 %i.ga to i32
  %i.gc = getelementptr i8, ptr %i.fz, i64 4
  store i32 %i.gb, ptr %i.fz, align 4, !tbaa !44
  %i.gd = lshr i64 %i.ga, 32
  %i.ge = trunc nuw i64 %i.gd to i32
  %i.gf = getelementptr i8, ptr %i.fz, i64 8
  store i32 %i.ge, ptr %i.gc, align 4, !tbaa !44
  %i.gg = getelementptr i8, ptr %i.fz, i64 12
  store i32 0, ptr %i.gf, align 4, !tbaa !44
  %i.gh = getelementptr i8, ptr %i.fz, i64 16
  store i32 0, ptr %i.gg, align 4, !tbaa !44
  %i.gi = getelementptr i8, ptr %i.fz, i64 20
  store i32 0, ptr %i.gh, align 4, !tbaa !44
  %i.gj = getelementptr i8, ptr %i.fz, i64 24
  store i32 0, ptr %i.gi, align 4, !tbaa !44
  %i.gk = getelementptr i8, ptr %i.fz, i64 28
  store i32 0, ptr %i.gj, align 4, !tbaa !44
  %i.gl = getelementptr i8, ptr %i.fz, i64 32     ; 2 uses
  store i32 0, ptr %i.gk, align 4, !tbaa !44
  %i.gm = add nsw i32 %.3, -256                   ; 2 uses
  %i.gn = icmp sgt i32 %.3, 287
  br i1 %i.gn, label %.lr.ph.i234, label %integer_unpack_push_bits.exit, !llvm.loop !235

integer_unpack_push_bits.exit:                    ; preds = %.lr.ph.i234.prol.loopexit, %.lr.ph.i234, %.lr.ph
  %.5296 = phi ptr [ %.1292347, %.lr.ph ], [ %.lcssa526.unr, %.lr.ph.i234.prol.loopexit ], [ %i.gl, %.lr.ph.i234 ] ; 2 uses
  %.3289 = phi i64 [ %i.fm, %.lr.ph ], [ %.lcssa525.unr, %.lr.ph.i234.prol.loopexit ], [ 0, %.lr.ph.i234 ] ; 2 uses
  %.4 = phi i32 [ %i.fn, %.lr.ph ], [ %.lcssa524.unr, %.lr.ph.i234.prol.loopexit ], [ %i.gm, %.lr.ph.i234 ] ; 2 uses
  %i.go = getelementptr i8, ptr %.0351, i64 %.0.i233 ; 2 uses
  %i.gp = add nuw i64 %.0136350, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.gp, %spec.select.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !236

._crit_edge:                                      ; preds = %integer_unpack_push_bits.exit, %bb.an
  %.1292.lcssa = phi ptr [ %.0291, %bb.an ], [ %.5296, %integer_unpack_push_bits.exit ] ; 3 uses
  %.1287.lcssa = phi i64 [ %.0286, %bb.an ], [ %.3289, %integer_unpack_push_bits.exit ] ; 2 uses
  %.1284.lcssa = phi i32 [ %.0283, %bb.an ], [ %.4, %integer_unpack_push_bits.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %i.fh, %bb.an ], [ %i.go, %integer_unpack_push_bits.exit ]
  br i1 %i.ex, label %bb.ao, label %integer_unpack_push_bits.exit238

bb.ao:                                            ; preds = %._crit_edge
  %i.gq = load i8, ptr %.0.lcssa, align 1, !tbaa !49
  %i.gr = zext i8 %i.gq to i32
  %i.gs = and i32 %i.fg, %i.gr
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = zext nneg i32 %.1284.lcssa to i64
  %i.gv = shl i64 %i.gt, %i.gu
  %i.gw = or i64 %i.gv, %.1287.lcssa              ; 2 uses
  %.reass = add i32 %.1284.lcssa, %invariant.op   ; 3 uses
  %i.gx = icmp sgt i32 %.reass, 31
  br i1 %i.gx, label %.lr.ph.i235, label %integer_unpack_push_bits.exit238

.lr.ph.i235:                                      ; preds = %bb.ao, %.lr.ph.i235
  %.5 = phi i32 [ %i.hd, %.lr.ph.i235 ], [ %.reass, %bb.ao ] ; 2 uses
  %i.gy = phi ptr [ %i.hb, %.lr.ph.i235 ], [ %.1292.lcssa, %bb.ao ] ; 2 uses
  %i.gz = phi i64 [ %i.hc, %.lr.ph.i235 ], [ %i.gw, %bb.ao ] ; 2 uses
  %i.ha = trunc i64 %i.gz to i32
  %i.hb = getelementptr i8, ptr %i.gy, i64 4      ; 2 uses
  store i32 %i.ha, ptr %i.gy, align 4, !tbaa !44
  %i.hc = lshr i64 %i.gz, 32                      ; 2 uses
  %i.hd = add nsw i32 %.5, -32                    ; 2 uses
  %i.he = icmp samesign ugt i32 %.5, 63
  br i1 %i.he, label %.lr.ph.i235, label %integer_unpack_push_bits.exit238, !llvm.loop !235

integer_unpack_push_bits.exit238:                 ; preds = %.lr.ph.i235, %bb.ao, %._crit_edge
  %.2293 = phi ptr [ %.1292.lcssa, %._crit_edge ], [ %.1292.lcssa, %bb.ao ], [ %i.hb, %.lr.ph.i235 ] ; 4 uses
  %.2288 = phi i64 [ %.1287.lcssa, %._crit_edge ], [ %i.gw, %bb.ao ], [ %i.hc, %.lr.ph.i235 ] ; 3 uses
  %.2285 = phi i32 [ %.1284.lcssa, %._crit_edge ], [ %.reass, %bb.ao ], [ %i.hd, %.lr.ph.i235 ]
  %i.hf = icmp eq ptr %.0137, %i.ff
  %i.hg = getelementptr i8, ptr %.0137, i64 %.034.i
  br i1 %i.hf, label %bb.ap, label %bb.an

bb.ap:                                            ; preds = %integer_unpack_push_bits.exit238
  %.not173 = icmp eq i64 %.2288, 0
  br i1 %.not173, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hh = trunc i64 %.2288 to i32
  %i.hi = getelementptr i8, ptr %.2293, i64 4
  store i32 %i.hh, ptr %.2293, align 4, !tbaa !44
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.3294 = phi ptr [ %.2293, %bb.ap ], [ %i.hi, %bb.aq ] ; 3 uses
  %i.hj = icmp ult ptr %.3294, %i.b
  br i1 %i.hj, label %.lr.ph357.preheader, label %.loopexit326

.lr.ph357.preheader:                              ; preds = %bb.ar
  %.3294394 = ptrtoaddr ptr %.3294 to i64
  %i.hk = shl i64 %1, 2
  %i.hl = add i64 %i.hk, %i.a
  %i.hm = xor i64 %.3294394, -1
  %i.hn = add i64 %i.hl, %i.hm
  %i.ho = and i64 %i.hn, -4
  %i.hp = add i64 %i.ho, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %.3294, i8 0, i64 %i.hp, i1 false), !tbaa !44
  br label %.loopexit326

.loopexit326:                                     ; preds = %.lr.ph357.preheader, %bb.ar, %bb.al
  %i.hq = and i32 %6, 128
  %.not174 = icmp eq i32 %i.hq, 0
  br i1 %.not174, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.loopexit326
  %i.hr = and i32 %6, 512
  %.not175 = icmp eq i32 %i.hr, 0
  %i.hs = select i1 %.not175, i32 1, i32 -1
  br label %bary_2comp.exit

bb.at:                                            ; preds = %.loopexit326
  %.not176 = icmp eq i32 %7, 0
  %i.ht = and i32 %6, 512
  %.not177 = icmp eq i32 %i.ht, 0                 ; 2 uses
  br i1 %.not176, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hu = getelementptr i8, ptr %i.b, i64 -4
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !44 ; 2 uses
  br i1 %.not177, label %bb.av, label %._crit_edge396

bb.av:                                            ; preds = %bb.au
  %i.hw = sub i32 31, %7
  %i.hx = lshr i32 %i.hv, %i.hw
  %.not181 = icmp eq i32 %i.hx, 0
  br i1 %.not181, label %bary_2comp.exit, label %._crit_edge396

._crit_edge396:                                   ; preds = %bb.au, %bb.av
  %i.hy = sub i32 32, %7
  %i.hz = shl nsw i32 -1, %i.hy
  %i.ia = getelementptr i8, ptr %i.b, i64 -4
  %i.ib = or i32 %i.hv, %i.hz
  store i32 %i.ib, ptr %i.ia, align 4, !tbaa !44
  br label %bary_zero_p.exit

bb.aw:                                            ; preds = %bb.at
  br i1 %.not177, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  br i1 %.not315, label %bary_2comp.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ax, %bb.ay
  %.0.i239 = phi i64 [ %i.ic, %bb.ay ], [ %1, %bb.ax ]
  %i.ic = add i64 %.0.i239, -1                    ; 3 uses
  %i.id = getelementptr [4 x i8], ptr %0, i64 %i.ic
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !44
  %.not.i240 = icmp eq i32 %i.ie, 0
  br i1 %.not.i240, label %bb.ay, label %bary_zero_p.exit

bb.ay:                                            ; preds = %.preheader.i
  %.not7.i = icmp eq i64 %i.ic, 0
  br i1 %.not7.i, label %bary_2comp.exit, label %.preheader.i, !llvm.loop !14

bb.az:                                            ; preds = %bb.aw
  br i1 %.not315, label %bary_2comp.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.if = getelementptr i8, ptr %i.b, i64 -4
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !44
  %.not178 = icmp sgt i32 %i.ig, -1
  br i1 %.not178, label %bary_2comp.exit, label %.lr.ph.i242.preheader

bary_zero_p.exit:                                 ; preds = %.preheader.i, %._crit_edge396
  br i1 %.not315, label %bary_2comp.exit, label %.lr.ph.i242.preheader

.lr.ph.i242.preheader:                            ; preds = %bary_zero_p.exit, %bb.ba
  br label %.lr.ph.i242

.lr.ph.i242:                                      ; preds = %.lr.ph.i242.preheader, %bb.bb
  %.023.i243 = phi i64 [ %i.ij, %bb.bb ], [ 0, %.lr.ph.i242.preheader ] ; 5 uses
  %i.ih = getelementptr [4 x i8], ptr %0, i64 %.023.i243
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !44 ; 2 uses
  %.not.i244 = icmp eq i32 %i.ii, 0
  br i1 %.not.i244, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.lr.ph.i242
  %i.ij = add nuw i64 %.023.i243, 1               ; 2 uses
  %exitcond.not.i251 = icmp eq i64 %i.ij, %1
  br i1 %exitcond.not.i251, label %bary_2comp.exit, label %.lr.ph.i242, !llvm.loop !8

bb.bc:                                            ; preds = %.lr.ph.i242
  %i.ik = getelementptr [4 x i8], ptr %0, i64 %.023.i243
  %i.il = sub i32 0, %i.ii
  store i32 %i.il, ptr %i.ik, align 4, !tbaa !44
  %.124.i245 = add i64 %.023.i243, 1              ; 4 uses
  %i.im = icmp ult i64 %.124.i245, %1
  br i1 %i.im, label %.lr.ph26.i247.preheader, label %bary_2comp.exit

.lr.ph26.i247.preheader:                          ; preds = %bb.bc
  %i.in = xor i64 %.023.i243, -1
  %i.io = add i64 %1, %i.in                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.io, 8
  br i1 %min.iters.check, label %.lr.ph26.i247.preheader517, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph26.i247.preheader
  %n.vec = and i64 %i.io, -8                      ; 3 uses
  %i.ip = add i64 %.124.i245, %n.vec
  %i.iq = getelementptr [4 x i8], ptr %0, i64 %.124.i245
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ir = getelementptr [4 x i8], ptr %i.iq, i64 %index ; 3 uses
  %i.is = getelementptr i8, ptr %i.ir, i64 16     ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ir, align 4, !tbaa !44
  %wide.load469 = load <4 x i32>, ptr %i.is, align 4, !tbaa !44
  %i.it = xor <4 x i32> %wide.load, splat (i32 -1)
  %i.iu = xor <4 x i32> %wide.load469, splat (i32 -1)
  store <4 x i32> %i.it, ptr %i.ir, align 4, !tbaa !44
  store <4 x i32> %i.iu, ptr %i.is, align 4, !tbaa !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.iv = icmp eq i64 %index.next, %n.vec
  br i1 %i.iv, label %middle.block, label %vector.body, !llvm.loop !237

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.io, %n.vec
  br i1 %cmp.n, label %bary_2comp.exit, label %.lr.ph26.i247.preheader517

.lr.ph26.i247.preheader517:                       ; preds = %.lr.ph26.i247.preheader, %middle.block
  %.125.i248.ph = phi i64 [ %.124.i245, %.lr.ph26.i247.preheader ], [ %i.ip, %middle.block ]
  br label %.lr.ph26.i247

.lr.ph26.i247:                                    ; preds = %.lr.ph26.i247.preheader517, %.lr.ph26.i247
  %.125.i248 = phi i64 [ %.1.i249, %.lr.ph26.i247 ], [ %.125.i248.ph, %.lr.ph26.i247.preheader517 ] ; 2 uses
  %i.iw = getelementptr [4 x i8], ptr %0, i64 %.125.i248 ; 2 uses
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !44
  %i.iy = xor i32 %i.ix, -1
  store i32 %i.iy, ptr %i.iw, align 4, !tbaa !44
  %.1.i249 = add nuw i64 %.125.i248, 1            ; 2 uses
  %exitcond31.not.i250 = icmp eq i64 %.1.i249, %1
  br i1 %exitcond31.not.i250, label %bary_2comp.exit, label %.lr.ph26.i247, !llvm.loop !238

bary_2comp.exit:                                  ; preds = %bb.ay, %bb.bb, %.lr.ph26.i247, %bb.ag, %.lr.ph26.i227, %bb.r, %.lr.ph26.i, %middle.block, %middle.block491, %middle.block503, %bb.ba, %bb.az, %bb.ax, %bb.av, %bb.bc, %bb.af, %bb.ah, %bb.q, %bb.s, %integer_unpack_single_bdigit.exit, %integer_unpack_single_bdigit.exit201, %integer_unpack_single_bdigit.exit207, %bb.as, %bary_zero_p.exit, %bb.ak, %bb.aj, %bb.ai, %bb.w, %bb.u, %bb.v
  %.1139 = phi i32 [ 1, %bb.ai ], [ %i.hs, %bb.as ], [ %i.bq, %bb.w ], [ %.0.i205, %integer_unpack_single_bdigit.exit207 ], [ -1, %bb.u ], [ 1, %bb.v ], [ 1, %bb.az ], [ -1, %bb.aj ], [ %i.ep, %bb.ak ], [ -1, %middle.block491 ], [ -1, %bary_zero_p.exit ], [ %spec.select317, %integer_unpack_single_bdigit.exit ], [ %spec.select319, %integer_unpack_single_bdigit.exit201 ], [ -2, %bb.ag ], [ -2, %bb.q ], [ -1, %bb.s ], [ -1, %bb.bb ], [ -2, %bb.af ], [ -1, %bb.ah ], [ -1, %middle.block503 ], [ -2, %bb.r ], [ -1, %bb.bc ], [ -1, %middle.block ], [ 1, %bb.av ], [ -2, %bb.ax ], [ 1, %bb.ba ], [ -1, %.lr.ph26.i247 ], [ -1, %.lr.ph26.i ], [ -1, %.lr.ph26.i227 ], [ -2, %bb.ay ]
  ret i32 %.1139
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_cstr_to_inum(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %.not = icmp eq i32 %2, 0                       ; 2 uses
  %. = select i1 %.not, ptr %i.a, ptr null
  %i.b = call i64 @rb_int_parse_cstr(ptr noundef nonnull %0, i64 noundef -1, ptr noundef %., ptr noundef null, i32 noundef %1, i32 noundef 7) ; 2 uses
end_hunk_2
begin_hunk_3_@big_shift3:bb.a
  store <4 x i32> %i.gh, ptr %i.gf, align 4, !tbaa !44
  %index.next133 = add nuw i64 %index130, 8       ; 2 uses
  %i.gi = icmp eq i64 %index.next133, %n.vec128
  br i1 %i.gi, label %middle.block134, label %vector.body129, !llvm.loop !394

middle.block134:                                  ; preds = %vector.body129
  %cmp.n135 = icmp eq i64 %i.gb, %n.vec128
  br i1 %cmp.n135, label %bary_zero_p.exit.thread87, label %.lr.ph26.i.i.i.preheader137

.lr.ph26.i.i.i.preheader137:                      ; preds = %.lr.ph26.i.i.i.preheader, %middle.block134
  %.125.i.i.i.ph = phi i64 [ %.124.i.i.i, %.lr.ph26.i.i.i.preheader ], [ %i.gc, %middle.block134 ]
  br label %.lr.ph26.i.i.i

.lr.ph26.i.i.i:                                   ; preds = %.lr.ph26.i.i.i.preheader137, %.lr.ph26.i.i.i
  %.125.i.i.i = phi i64 [ %.1.i.i.i, %.lr.ph26.i.i.i ], [ %.125.i.i.i.ph, %.lr.ph26.i.i.i.preheader137 ] ; 2 uses
  %i.gj = getelementptr [4 x i8], ptr %.0.i5.i.i, i64 %.125.i.i.i ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !44
  %i.gl = xor i32 %i.gk, -1
  store i32 %i.gl, ptr %i.gj, align 4, !tbaa !44
  %.1.i.i.i = add nuw i64 %.125.i.i.i, 1          ; 2 uses
  %exitcond31.not.i.i.i = icmp eq i64 %.1.i.i.i, %.0.i8.i.i
  br i1 %exitcond31.not.i.i.i, label %bary_zero_p.exit.thread87, label %.lr.ph26.i.i.i, !llvm.loop !395

bary_2comp.exit.i.i:                              ; preds = %bb.af, %BIGNUM_DIGITS.exit.i.i
  br i1 %.not.i74, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bary_2comp.exit.i.i
  %i.gm = getelementptr i8, ptr %i.dh, i64 16
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !49
  br label %BIGNUM_LEN.exit.i.i.i

bb.ai:                                            ; preds = %bary_2comp.exit.i.i
  %i.go = lshr i64 %i.di, 15
  %i.gp = and i64 %i.go, 511
  br label %BIGNUM_LEN.exit.i.i.i

BIGNUM_LEN.exit.i.i.i:                            ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i = phi i64 [ %i.gp, %bb.ai ], [ %i.gn, %bb.ah ]
  %i.gq = add i64 %.0.i.i.i.i, 1
  tail call void @rb_big_resize(i64 noundef %i.dg, i64 noundef %i.gq)
  %i.gr = load i64, ptr %i.dh, align 8, !tbaa !48 ; 2 uses
  %i.gs = and i64 %i.gr, 16384
  %.not.i4.i.i.i = icmp eq i64 %i.gs, 0
  br i1 %.not.i4.i.i.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %BIGNUM_LEN.exit.i.i.i
  %i.gt = getelementptr i8, ptr %i.dh, i64 24
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !49
  %i.gv = getelementptr i8, ptr %i.dh, i64 16
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !49
  br label %big_extend_carry.exit.i.i

bb.ak:                                            ; preds = %BIGNUM_LEN.exit.i.i.i
  %i.gx = getelementptr i8, ptr %i.dh, i64 16
  %i.gy = lshr i64 %i.gr, 15
  %i.gz = and i64 %i.gy, 511
  br label %big_extend_carry.exit.i.i

big_extend_carry.exit.i.i:                        ; preds = %bb.ak, %bb.aj
  %.0.i510.i.i.i = phi ptr [ %i.gx, %bb.ak ], [ %i.gu, %bb.aj ]
  %.0.i7.i.i.i = phi i64 [ %i.gz, %bb.ak ], [ %i.gw, %bb.aj ]
  %i.ha = getelementptr [4 x i8], ptr %.0.i510.i.i.i, i64 %.0.i7.i.i.i
  %i.hb = getelementptr i8, ptr %i.ha, i64 -4
  store i32 1, ptr %i.hb, align 4, !tbaa !44
  br label %bary_zero_p.exit.thread87

bary_zero_p.exit.thread87:                        ; preds = %.lr.ph26.i.i.i, %middle.block134, %big_extend_carry.exit.i.i, %bb.ag, %bary_small_rshift.exit, %bary_small_lshift.exit
  %.144 = phi i64 [ %i.t, %bary_small_lshift.exit ], [ %i.dg, %bary_small_rshift.exit ], [ %i.dg, %bb.ag ], [ %i.dg, %big_extend_carry.exit.i.i ], [ %i.dg, %middle.block134 ], [ %i.dg, %.lr.ph26.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr %i.a, ptr %i.c, align 8, !tbaa !53
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #23, !srcloc !396
  %i.hc = load ptr, ptr %i.c, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.hd = load volatile i64, ptr %i.hc, align 8, !tbaa !46 ; 0 uses
  br label %bary_zero_p.exit

bary_zero_p.exit:                                 ; preds = %bb.u, %.preheader.i, %BIGNUM_LEN.exit68, %bb.y, %._crit_edge105, %bary_zero_p.exit.thread87
  %.1 = phi i64 [ %.144, %bary_zero_p.exit.thread87 ], [ 1, %BIGNUM_LEN.exit68 ], [ 1, %._crit_edge105 ], [ %i.dd, %bb.y ], [ 1, %bb.u ], [ -1, %.preheader.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret i64 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @big_shift2(i64 noundef %0, i32 noundef range(i32 0, 2) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca [2 x i32], align 8                ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca [2 x i64], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.e = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !48   ; 3 uses
  %i.g = and i64 %i.f, 16384
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %BIGNUM_LEN.exit, label %BIGNUM_LEN.exit.thread

BIGNUM_LEN.exit:                                  ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.e, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !49   ; 3 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bigzero_p.exit.thread, label %BIGNUM_DIGITS.exit

BIGNUM_LEN.exit.thread:                           ; preds = %bb.a
  %i.k = and i64 %i.f, 16744448                   ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bigzero_p.exit.thread, label %BIGNUM_DIGITS.exit.thread

BIGNUM_DIGITS.exit:                               ; preds = %BIGNUM_LEN.exit
  %i.m = getelementptr i8, ptr %i.e, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !49   ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !44
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %BIGNUM_LEN.exit31, label %bigzero_p.exit

BIGNUM_DIGITS.exit.thread:                        ; preds = %BIGNUM_LEN.exit.thread
  %i.q = getelementptr i8, ptr %i.e, i64 16       ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !44
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %BIGNUM_LEN.exit31.thread, label %bigzero_p.exit

BIGNUM_LEN.exit31:                                ; preds = %BIGNUM_DIGITS.exit
  %i.t = icmp eq i64 %i.i, 1
  br i1 %i.t, label %bigzero_p.exit.thread, label %.preheader.i.i.preheader

BIGNUM_LEN.exit31.thread:                         ; preds = %BIGNUM_DIGITS.exit.thread
  %i.u = icmp eq i64 %i.k, 32768
  br i1 %i.u, label %bigzero_p.exit.thread, label %BIGNUM_LEN.exit.i

BIGNUM_LEN.exit.i:                                ; preds = %BIGNUM_LEN.exit31.thread
  %i.v = lshr i64 %i.f, 15
  %i.w = and i64 %i.v, 511                        ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bigzero_p.exit.thread, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %BIGNUM_LEN.exit31, %BIGNUM_LEN.exit.i
  %.0.i3.i54 = phi i64 [ %i.w, %BIGNUM_LEN.exit.i ], [ %i.i, %BIGNUM_LEN.exit31 ]
  %.0.i7.i53 = phi ptr [ %i.q, %BIGNUM_LEN.exit.i ], [ %i.n, %BIGNUM_LEN.exit31 ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %bb.b
  %.0.i4.i = phi i64 [ %i.y, %bb.b ], [ %.0.i3.i54, %.preheader.i.i.preheader ]
  %i.y = add i64 %.0.i4.i, -1                     ; 3 uses
  %i.z = getelementptr [4 x i8], ptr %.0.i7.i53, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !44
  %.not.i5.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i5.i, label %bb.b, label %bigzero_p.exit

bb.b:                                             ; preds = %.preheader.i.i
  %.not7.i.i = icmp eq i64 %i.y, 0
  br i1 %.not7.i.i, label %bigzero_p.exit.thread, label %.preheader.i.i, !llvm.loop !14

bigzero_p.exit:                                   ; preds = %.preheader.i.i, %BIGNUM_DIGITS.exit.thread, %BIGNUM_DIGITS.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %2, ptr %i.a, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.ab = tail call i64 @rb_to_int(i64 noundef %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr %i.a, ptr %i.c, align 8, !tbaa !53
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #23, !srcloc !60
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  store volatile i64 %i.ab, ptr %i.ac, align 8, !tbaa !46
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !46  ; 3 uses
  %i.ae = trunc i64 %i.ad to i1
  br i1 %i.ae, label %BIGNUM_LEN.exit.loopexit.i, label %bb.c

BIGNUM_LEN.exit.loopexit.i:                       ; preds = %bigzero_p.exit
  %i.af = ashr i64 %i.ad, 1                       ; 2 uses
  %.015.i = call i64 @llvm.abs.i64(i64 %i.af, i1 true)
  store i64 %.015.i, ptr %i.b, align 8
  %i.ag = icmp slt i64 %i.af, 0
  %.016.i = select i1 %i.ag, i32 -1, i32 1
  br label %rb_integer_pack.exit

bb.c:                                             ; preds = %bigzero_p.exit
  %i.ah = inttoptr i64 %i.ad to ptr               ; 4 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !48 ; 3 uses
  %i.aj = and i64 %i.ai, 8192
  %.not.i32 = icmp eq i64 %i.aj, 0
  %i.ak = select i1 %.not.i32, i32 -1, i32 1      ; 2 uses
  %i.al = and i64 %i.ai, 16384
  %.not.i.i33 = icmp eq i64 %i.al, 0
  br i1 %.not.i.i33, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.am = getelementptr i8, ptr %i.ah, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !49
  %i.ao = getelementptr i8, ptr %i.ah, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !49
  br label %rb_integer_pack.exit

bb.e:                                             ; preds = %bb.c
  %i.aq = getelementptr i8, ptr %i.ah, i64 16
  %i.ar = lshr i64 %i.ai, 15
  %i.as = and i64 %i.ar, 511
  br label %rb_integer_pack.exit

rb_integer_pack.exit:                             ; preds = %BIGNUM_LEN.exit.loopexit.i, %bb.d, %bb.e
  %.019.i = phi ptr [ %i.an, %bb.d ], [ %i.aq, %bb.e ], [ %i.b, %BIGNUM_LEN.exit.loopexit.i ] ; 7 uses
  %.018.i = phi i64 [ %i.ap, %bb.d ], [ %i.as, %bb.e ], [ 2, %BIGNUM_LEN.exit.loopexit.i ]
  %.117.i = phi i32 [ %i.ak, %bb.d ], [ %i.ak, %bb.e ], [ %.016.i, %BIGNUM_LEN.exit.loopexit.i ] ; 2 uses
  %i.at = getelementptr [4 x i8], ptr %.019.i, i64 %.018.i
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %rb_integer_pack.exit
  %.0481.i = phi ptr [ %i.at, %rb_integer_pack.exit ], [ %i.av, %bb.g ] ; 4 uses
  %i.au = icmp ult ptr %.019.i, %.0481.i
  br i1 %i.au, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr i8, ptr %.0481.i, i64 -4  ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !44
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.f, label %.critedge.i, !llvm.loop !20

.critedge.i:                                      ; preds = %bb.g, %bb.f
  %i.ay = icmp eq ptr %.019.i, %.0481.i
  br i1 %i.ay, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.critedge.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, i8 noundef 0, i64 noundef 16, i1 noundef false) #23
  br label %bary_pack.exit

bb.i:                                             ; preds = %.critedge.i
  %i.az = ptrtoint ptr %.0481.i to i64
  %i.ba = ptrtoint ptr %.019.i to i64
  %i.bb = sub i64 %i.az, %i.ba
  br label %.lr.ph605.i

.lr.ph605.i:                                      ; preds = %bb.i, %bb.j
  %.0279603.i = phi i64 [ %i.bg, %bb.j ], [ %i.bb, %bb.i ] ; 5 uses
  %i.bc = getelementptr i8, ptr %.019.i, i64 %.0279603.i
  %i.bd = getelementptr i8, ptr %i.bc, i64 -1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !49
  %i.bf = icmp eq i8 %i.be, 0
  br i1 %i.bf, label %bb.j, label %.critedge5.thread.i

bb.j:                                             ; preds = %.lr.ph605.i
  %i.bg = add i64 %.0279603.i, -1                 ; 2 uses
  %.not323.i = icmp eq i64 %i.bg, 0
  br i1 %.not323.i, label %.thread530.i, label %.lr.ph605.i, !llvm.loop !21

.critedge5.thread.i:                              ; preds = %.lr.ph605.i
  %.not324501.i = icmp ugt i64 %.0279603.i, 16
  br i1 %.not324501.i, label %ruby_nonempty_memcpy.exit364.i, label %bb.k

bb.k:                                             ; preds = %.critedge5.thread.i
  %i.bh = call ptr @__memcpy_chk(ptr noundef nonnull %i.d, ptr noundef nonnull readonly %.019.i, i64 noundef range(i64 1, 0) %.0279603.i, i64 noundef 16) #23, !alias.scope !400 ; 0 uses
  br label %.thread530.i

ruby_nonempty_memcpy.exit364.i:                   ; preds = %.critedge5.thread.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, ptr noundef nonnull readonly align 1 dereferenceable(16) %.019.i, i64 noundef range(i64 1, 0) 16, i1 noundef false) #23
  %i.bi = shl nsw i32 %.117.i, 1
  br label %bary_pack.exit

.thread530.i:                                     ; preds = %bb.j, %bb.k
  %.0279559.i = phi i64 [ %.0279603.i, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %i.bj = getelementptr i8, ptr %i.d, i64 %.0279559.i
  %i.bk = sub nuw nsw i64 16, %.0279559.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.bj, i8 noundef 0, i64 noundef %i.bk, i1 noundef false) #23
  br label %bary_pack.exit

bary_pack.exit:                                   ; preds = %ruby_nonempty_memcpy.exit364.i, %bb.h, %.thread530.i
  %.4.i = phi i32 [ %i.bi, %ruby_nonempty_memcpy.exit364.i ], [ 0, %bb.h ], [ %.117.i, %.thread530.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.4.i.lobit = lshr i32 %.4.i, 31                ; 2 uses
  %.023 = xor i32 %.4.i.lobit, %1
  %.not26 = icmp eq i32 %1, %.4.i.lobit
  %i.bl = add nsw i32 %.4.i, -2
  %i.bm = icmp ult i32 %i.bl, -3
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bo = load i64, ptr %i.bn, align 8            ; 2 uses
  %i.bp = icmp ugt i64 %i.bo, 7
  %or.cond5 = select i1 %i.bm, i1 true, i1 %i.bp  ; 2 uses
  br i1 %.not26, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bary_pack.exit
  br i1 %or.cond5, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bq = load i64, ptr @rb_eRangeError, align 8, !tbaa !46
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bq, ptr noundef nonnull @.str.41) #25
  unreachable

bb.n:                                             ; preds = %bary_pack.exit
  br i1 %or.cond5, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.br = load i64, ptr %i.e, align 8, !tbaa !48
  %i.bs = and i64 %i.br, 8192
  %.not = icmp eq i64 %i.bs, 0
  %i.bt = select i1 %.not, i64 -1, i64 1
  br label %bigzero_p.exit.thread

bb.p:                                             ; preds = %bb.n, %bb.l
  %i.bu = load i64, ptr %i.d, align 16, !tbaa !46 ; 2 uses
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = and i32 %i.bv, 31
  %i.bx = call i64 @llvm.fshl.i64(i64 %i.bo, i64 %i.bu, i64 59)
  %i.by = call fastcc i64 @big_shift3(i64 noundef %0, i32 noundef %.023, i64 noundef %i.bx, i32 noundef %i.bw)
  br label %bigzero_p.exit.thread

bigzero_p.exit.thread:                            ; preds = %bb.b, %BIGNUM_LEN.exit.i, %BIGNUM_LEN.exit31.thread, %BIGNUM_LEN.exit.thread, %BIGNUM_LEN.exit, %BIGNUM_LEN.exit31, %bb.p, %bb.o
  %.022 = phi i64 [ %i.bt, %bb.o ], [ %i.by, %bb.p ], [ 1, %BIGNUM_LEN.exit31.thread ], [ 1, %BIGNUM_LEN.exit31 ], [ 1, %BIGNUM_LEN.exit ], [ 1, %BIGNUM_LEN.exit.thread ], [ 1, %BIGNUM_LEN.exit.i ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  ret i64 %.022
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_big_rshift(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = trunc i64 %1 to i1
  br i1 %i.a, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread, %bb.a
  %.017.lcssa = phi i64 [ %1, %bb.a ], [ %i.cz, %rbimpl_RB_TYPE_P_fastpath.exit.thread ]
  %i.b = ashr i64 %.017.lcssa, 1                  ; 2 uses
  %.lobit = lshr i64 %i.b, 63
  %.016 = trunc nuw nsw i64 %.lobit to i32
  %.0 = tail call i64 @llvm.abs.i64(i64 %i.b, i1 true) ; 2 uses
  %i.c = trunc i64 %.0 to i32
  %i.d = and i32 %i.c, 31
  %i.e = lshr i64 %.0, 5
  %i.f = tail call fastcc i64 @big_shift3(i64 noundef %0, i32 noundef %.016, i64 noundef %i.e, i32 noundef %i.d) ; 7 uses
  %i.g = icmp eq i64 %i.f, 0
  %i.h = and i64 %i.f, 7
  %i.i = icmp ne i64 %i.h, 0
  %i.j = or i1 %i.g, %i.i
  br i1 %i.j, label %bignorm.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %._crit_edge
  %i.k = inttoptr i64 %i.f to ptr                 ; 4 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !48   ; 4 uses
  %i.m = and i64 %i.l, 31
  %i.n = icmp eq i64 %i.m, 10
  br i1 %i.n, label %bb.b, label %bignorm.exit

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.o = and i64 %i.l, 16384
  %.not.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = lshr i64 %i.l, 15
  %i.q = and i64 %i.p, 511
  %i.r = getelementptr i8, ptr %i.k, i64 16
  br label %BIGNUM_DIGITS.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr i8, ptr %i.k, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !49
  %i.u = getelementptr i8, ptr %i.k, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !49
  br label %BIGNUM_DIGITS.exit.i.i

BIGNUM_DIGITS.exit.i.i:                           ; preds = %bb.d, %bb.c
  %.0.i28.i.i = phi i64 [ %i.q, %bb.c ], [ %i.t, %bb.d ] ; 3 uses
  %.0.i26.i.i = phi ptr [ %i.r, %bb.c ], [ %i.v, %bb.d ] ; 4 uses
  %cond31.i.i = icmp eq i64 %.0.i28.i.i, 0
  br i1 %cond31.i.i, label %bignorm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %BIGNUM_DIGITS.exit.i.i, %bb.e
  %indvar92 = phi i64 [ %indvar.next93, %bb.e ], [ 0, %BIGNUM_DIGITS.exit.i.i ] ; 2 uses
  %.02232.i.i = phi i64 [ %i.aa, %bb.e ], [ %.0.i28.i.i, %BIGNUM_DIGITS.exit.i.i ] ; 7 uses
  %i.w = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %.02232.i.i
  %i.x = getelementptr i8, ptr %i.w, i64 -4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !44
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.e, label %.critedge.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.aa = add i64 %.02232.i.i, -1                 ; 2 uses
  %cond.i.i = icmp eq i64 %i.aa, 0
  %indvar.next93 = add i64 %indvar92, 1
  br i1 %cond.i.i, label %bignorm.exit, label %.lr.ph.i.i, !llvm.loop !15

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.ab = icmp ugt i64 %.02232.i.i, 2
  br i1 %i.ab, label %bb.j, label %.lr.ph36.i.i.preheader

.lr.ph36.i.i.preheader:                           ; preds = %.critedge.i.i
  %i.ac = sub i64 %indvar92, %.0.i28.i.i
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %.lr.ph36.i.i.epil.preheader, label %.lr.ph36.i.i

.lr.ph36.i.i:                                     ; preds = %.lr.ph36.i.i.preheader, %.lr.ph36.i.i
  %indvars.iv39.i.i = phi i64 [ %indvars.iv.next40.i.i.3, %.lr.ph36.i.i ], [ %.02232.i.i, %.lr.ph36.i.i.preheader ] ; 2 uses
  %niter102 = phi i64 [ %niter102.next.3, %.lr.ph36.i.i ], [ 0, %.lr.ph36.i.i.preheader ]
  %indvars.iv.next40.i.i.3 = add nsw i64 %indvars.iv39.i.i, -4 ; 3 uses
  %niter102.next.3 = add i64 %niter102, 4         ; 2 uses
  %niter102.ncmp.3 = icmp eq i64 %niter102.next.3, 0
  br i1 %niter102.ncmp.3, label %._crit_edge.i.i.unr-lcssa, label %.lr.ph36.i.i, !llvm.loop !16

._crit_edge.i.i.unr-lcssa:                        ; preds = %.lr.ph36.i.i
  %i.ae = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %indvars.iv39.i.i
  %i.af = getelementptr i8, ptr %i.ae, i64 -12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !44
  %i.ah = zext i32 %i.ag to i64
  %i.ai = shl nuw i64 %i.ah, 32
  %i.aj = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %indvars.iv.next40.i.i.3
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !44
  %i.al = zext i32 %i.ak to i64
  %i.am = or disjoint i64 %i.ai, %i.al
  br label %.lr.ph36.i.i.epil.preheader

.lr.ph36.i.i.epil.preheader:                      ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph36.i.i.preheader
  %indvars.iv39.i.i.epil.init = phi i64 [ %.02232.i.i, %.lr.ph36.i.i.preheader ], [ %indvars.iv.next40.i.i.3, %._crit_edge.i.i.unr-lcssa ]
  %.02134.i.i.epil.init = phi i64 [ 0, %.lr.ph36.i.i.preheader ], [ %i.am, %._crit_edge.i.i.unr-lcssa ]
  br label %.lr.ph36.i.i.epil

.lr.ph36.i.i.epil:                                ; preds = %.lr.ph36.i.i.epil, %.lr.ph36.i.i.epil.preheader
  %indvars.iv39.i.i.epil = phi i64 [ %indvars.iv.next40.i.i.epil, %.lr.ph36.i.i.epil ], [ %indvars.iv39.i.i.epil.init, %.lr.ph36.i.i.epil.preheader ]
  %.02134.i.i.epil = phi i64 [ %i.ar, %.lr.ph36.i.i.epil ], [ %.02134.i.i.epil.init, %.lr.ph36.i.i.epil.preheader ]
  %epil.iter96 = phi i64 [ %epil.iter96.next, %.lr.ph36.i.i.epil ], [ 0, %.lr.ph36.i.i.epil.preheader ]
  %indvars.iv.next40.i.i.epil = add nsw i64 %indvars.iv39.i.i.epil, -1 ; 2 uses
  %i.an = shl i64 %.02134.i.i.epil, 32            ; 2 uses
  %i.ao = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %indvars.iv.next40.i.i.epil
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !44
  %i.aq = zext i32 %i.ap to i64
  %i.ar = or disjoint i64 %i.an, %i.aq            ; 4 uses
  %epil.iter96.next = add i64 %epil.iter96, 1     ; 2 uses
  %epil.iter96.cmp.not = icmp eq i64 %epil.iter96.next, %.02232.i.i
  br i1 %epil.iter96.cmp.not, label %._crit_edge.i.i.epilog-lcssa, label %.lr.ph36.i.i.epil, !llvm.loop !401

._crit_edge.i.i.epilog-lcssa:                     ; preds = %.lr.ph36.i.i.epil
  %i.as = icmp ult i64 %i.an, 4611686018427387904
  %i.at = and i64 %i.l, 8192
  %.not.i.i = icmp eq i64 %i.at, 0
  br i1 %.not.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.epilog-lcssa
  br i1 %i.as, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.au = shl nuw nsw i64 %i.ar, 1
  %i.av = or disjoint i64 %i.au, 1
  br label %bignorm.exit

bb.h:                                             ; preds = %._crit_edge.i.i.epilog-lcssa
  %i.aw = icmp ult i64 %i.ar, 4611686018427387905
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.neg.i.i = mul nsw i64 %i.ar, -2
  %i.ax = or disjoint i64 %.neg.i.i, 1
  br label %bignorm.exit

bb.j:                                             ; preds = %bb.h, %bb.f, %.critedge.i.i
  tail call void @rb_big_resize(i64 noundef %i.f, i64 noundef %.02232.i.i)
  br label %bignorm.exit

.lr.ph:                                           ; preds = %bb.a, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %.01749 = phi i64 [ %i.cz, %rbimpl_RB_TYPE_P_fastpath.exit.thread ], [ %1, %bb.a ] ; 5 uses
  %i.ay = icmp eq i64 %.01749, 0
  %i.az = and i64 %.01749, 6
  %i.ba = icmp ne i64 %i.az, 0
  %i.bb = or i1 %i.ay, %i.ba
  br i1 %i.bb, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %.lr.ph
  %i.bc = inttoptr i64 %.01749 to ptr
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !48
  %i.be = and i64 %i.bd, 31
end_hunk_3
