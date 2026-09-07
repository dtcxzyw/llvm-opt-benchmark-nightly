Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/base64_bio?download=true
inline.NumInlined: 6
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@b64_write:bb.a
bb.j:                                             ; preds = %bb.i
  %i.am = sext i32 %spec.select to i64
  %i.an = zext nneg i32 %i.ah to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.an
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ao, ptr nonnull readonly align 1 %.0102134, i64 range(i64 -2147483648, 2147483648) %i.am, i1 false)
  br label %OPENSSL_memcpy.exit

OPENSSL_memcpy.exit:                              ; preds = %bb.i, %bb.j
  %i.ap = add nsw i32 %i.ah, %spec.select         ; 3 uses
  store i32 %i.ap, ptr %i.aa, align 4, !tbaa !23
  %i.aq = add nsw i32 %spec.select, %.098137      ; 2 uses
  %i.ar = icmp slt i32 %i.ap, 3
  br i1 %i.ar, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %OPENSSL_memcpy.exit
  %i.as = zext nneg i32 %i.ap to i64
  %i.at = tail call i64 @EVP_EncodeBlock(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ac, i64 noundef %i.as) #5
  %i.au = trunc i64 %i.at to i32                  ; 2 uses
  store i32 %i.au, ptr %i.b, align 4, !tbaa !21
  store i32 0, ptr %i.aa, align 4, !tbaa !23
  br label %bb.q

bb.l:                                             ; preds = %bb.h
  %i.av = icmp samesign ult i32 %.0101136, 3
  br i1 %i.av, label %OPENSSL_memcpy.exit117, label %bb.m

OPENSSL_memcpy.exit117:                           ; preds = %bb.l
  %i.aw = zext nneg i32 %i.af to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.ac, ptr nonnull readonly align 1 %.0102134, i64 range(i64 -2147483648, 2147483648) %i.aw, i1 false)
  store i32 %i.af, ptr %i.aa, align 4, !tbaa !23
  %i.ax = add nsw i32 %.098137, %i.af
  br label %.loopexit

bb.m:                                             ; preds = %bb.l
  %.lhs.trunc = trunc nuw nsw i32 %i.af to i16
  %i.ay = urem i16 %.lhs.trunc, 3
  %.zext = zext nneg i16 %i.ay to i32
  %i.az = sub nuw nsw i32 %i.af, %.zext           ; 3 uses
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = tail call i64 @EVP_EncodeBlock(ptr noundef nonnull %i.ab, ptr noundef %.0102134, i64 noundef %i.ba) #5
  %i.bc = trunc i64 %i.bb to i32                  ; 2 uses
  store i32 %i.bc, ptr %i.b, align 4, !tbaa !21
  %i.bd = add nsw i32 %i.az, %.098137
  br label %bb.q

bb.n:                                             ; preds = %bb.g
  %i.be = zext nneg i32 %i.af to i64
  %i.bf = tail call i32 @EVP_EncodeUpdate(ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.b, ptr noundef %.0102134, i64 noundef %i.be) #5
  %.not116 = icmp eq i32 %i.bf, 0
  br i1 %.not116, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bg = icmp eq i32 %.098137, 0
  %i.bh = select i1 %i.bg, i32 -1, i32 %.098137
  br label %.loopexit

bb.p:                                             ; preds = %bb.n
  %i.bi = add nsw i32 %.098137, %i.af
  %.pre = load i32, ptr %i.b, align 4, !tbaa !21
  br label %bb.q

bb.q:                                             ; preds = %bb.k, %bb.m, %bb.p
  %i.bj = phi i32 [ %i.au, %bb.k ], [ %i.bc, %bb.m ], [ %.pre, %bb.p ] ; 2 uses
  %.199 = phi i32 [ %i.aq, %bb.k ], [ %i.bd, %bb.m ], [ %i.bi, %bb.p ] ; 4 uses
  %.2 = phi i32 [ %spec.select, %bb.k ], [ %i.az, %bb.m ], [ %i.af, %bb.p ] ; 2 uses
  %i.bk = sub nsw i32 %.0101136, %.2              ; 2 uses
  %i.bl = sext i32 %.2 to i64
  %i.bm = getelementptr inbounds i8, ptr %.0102134, i64 %i.bl
  store i32 0, ptr %i.i, align 4, !tbaa !22
  %i.bn = icmp sgt i32 %i.bj, 0
  br i1 %i.bn, label %.lr.ph132, label %._crit_edge133

.lr.ph132:                                        ; preds = %bb.q, %bb.s
  %i.bo = phi i32 [ %i.by, %bb.s ], [ 0, %bb.q ]
  %.3130 = phi i32 [ %i.bw, %bb.s ], [ %i.bj, %bb.q ] ; 2 uses
  %i.bp = load ptr, ptr %i.ae, align 8, !tbaa !24
  %i.bq = sext i32 %i.bo to i64
  %i.br = getelementptr inbounds i8, ptr %i.ab, i64 %i.bq
  %i.bs = tail call i32 @BIO_write(ptr noundef %i.bp, ptr noundef nonnull %i.br, i32 noundef %.3130) #5 ; 4 uses
  %i.bt = icmp slt i32 %i.bs, 1
  br i1 %i.bt, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph132
  tail call void @BIO_copy_next_retry(ptr noundef nonnull %0) #5
  %i.bu = icmp eq i32 %.199, 0
  %i.bv = select i1 %i.bu, i32 %i.bs, i32 %.199
  br label %.loopexit

bb.s:                                             ; preds = %.lr.ph132
  %i.bw = sub nsw i32 %.3130, %i.bs               ; 2 uses
  %i.bx = load i32, ptr %i.i, align 4, !tbaa !22
  %i.by = add nsw i32 %i.bx, %i.bs                ; 2 uses
  store i32 %i.by, ptr %i.i, align 4, !tbaa !22
  %i.bz = icmp sgt i32 %i.bw, 0
  br i1 %i.bz, label %.lr.ph132, label %._crit_edge133, !llvm.loop !29

._crit_edge133:                                   ; preds = %bb.s, %bb.q
  store i32 0, ptr %i.b, align 4, !tbaa !21
  store i32 0, ptr %i.i, align 4, !tbaa !22
  %i.ca = icmp sgt i32 %i.bk, 0
  br i1 %i.ca, label %bb.g, label %.loopexit, !llvm.loop !30

.loopexit:                                        ; preds = %._crit_edge133, %OPENSSL_memcpy.exit, %OPENSSL_memcpy.exit117, %._crit_edge, %bb.r, %bb.o, %bb.e
  %.0103 = phi i32 [ %i.s, %bb.e ], [ %i.bh, %bb.o ], [ 0, %._crit_edge ], [ %i.bv, %bb.r ], [ %i.ax, %OPENSSL_memcpy.exit117 ], [ %.199, %._crit_edge133 ], [ %i.aq, %OPENSSL_memcpy.exit ]
  ret i32 %.0103
}

; Function Attrs: nounwind uwtable
define internal i32 @b64_read(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.ar, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17   ; 30 uses
  %i.e = ptrtoaddr ptr %i.d to i64                ; 2 uses
  %i.f = icmp eq ptr %i.d, null
  br i1 %i.f, label %bb.ar, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.ar, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @BIO_clear_retry_flags(ptr noundef nonnull %0) #5
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !20
  %.not = icmp eq i32 %i.k, 2
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 2, ptr %i.j, align 4, !tbaa !20
  store i32 0, ptr %i.d, align 4, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 0, ptr %i.l, align 4, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 0, ptr %i.m, align 4, !tbaa !23
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  tail call void @EVP_DecodeInit(ptr noundef nonnull %i.n) #5
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = load i32, ptr %i.d, align 4, !tbaa !21   ; 3 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 4 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !22   ; 3 uses
  %i.s = sub nsw i32 %i.o, %i.r
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.s, i32 %2) ; 6 uses
  %i.t = sext i32 %spec.select to i64             ; 2 uses
  %i.u = icmp eq i32 %spec.select, 0
  br i1 %i.u, label %OPENSSL_memcpy.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  %i.w = sext i32 %i.r to i64
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 %i.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull readonly align 1 %i.x, i64 range(i64 -2147483648, 2147483648) %i.t, i1 false)
  %.pre = load i32, ptr %i.q, align 4, !tbaa !22
  %.pre308 = load i32, ptr %i.d, align 4, !tbaa !21
  br label %OPENSSL_memcpy.exit

OPENSSL_memcpy.exit:                              ; preds = %bb.g, %bb.h
  %i.y = phi i32 [ %i.o, %bb.g ], [ %.pre308, %bb.h ]
  %i.z = phi i32 [ %i.r, %bb.g ], [ %.pre, %bb.h ]
  %i.aa = getelementptr inbounds i8, ptr %1, i64 %i.t ; 2 uses
  %i.ab = sub nsw i32 %2, %spec.select            ; 2 uses
  %i.ac = add nsw i32 %i.z, %spec.select          ; 2 uses
  store i32 %i.ac, ptr %i.q, align 4, !tbaa !22
  %i.ad = icmp eq i32 %i.y, %i.ac
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %OPENSSL_memcpy.exit
  store i32 0, ptr %i.d, align 4, !tbaa !21
  store i32 0, ptr %i.q, align 4, !tbaa !22
  br label %bb.j

bb.j:                                             ; preds = %OPENSSL_memcpy.exit, %bb.i, %bb.f
  %.0183 = phi ptr [ %i.aa, %bb.i ], [ %i.aa, %OPENSSL_memcpy.exit ], [ %1, %bb.f ]
  %.0181 = phi i32 [ %i.ab, %bb.i ], [ %i.ab, %OPENSSL_memcpy.exit ], [ %2, %bb.f ] ; 2 uses
  %.0179 = phi i32 [ %spec.select, %bb.i ], [ %spec.select, %OPENSSL_memcpy.exit ], [ 0, %bb.f ] ; 2 uses
  %i.ae = icmp sgt i32 %.0181, 0
  br i1 %i.ae, label %.lr.ph262.lr.ph, label %.loopexit224

.lr.ph262.lr.ph:                                  ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 4 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %i.d, i64 1586 ; 22 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 8 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 20 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 28 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 84 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 3 uses
  br label %.lr.ph262

.lr.ph262:                                        ; preds = %.lr.ph262.lr.ph, %.outer
  %.0171.ph280 = phi i32 [ 0, %.lr.ph262.lr.ph ], [ %.1172, %.outer ] ; 2 uses
  %.1180.ph278 = phi i32 [ %.0179, %.lr.ph262.lr.ph ], [ %i.fj, %.outer ] ; 6 uses
  %.1182.ph277 = phi i32 [ %.0181, %.lr.ph262.lr.ph ], [ %i.fl, %.outer ] ; 2 uses
  %.1184.ph276 = phi ptr [ %.0183, %.lr.ph262.lr.ph ], [ %i.fm, %.outer ] ; 2 uses
  %i.am = load i32, ptr %i.af, align 4, !tbaa !26
  %i.an = icmp slt i32 %i.am, 1
  br i1 %i.an, label %.loopexit224, label %.lr.ph371

.lr.ph371:                                        ; preds = %.lr.ph262, %.backedge
  %.0171261370 = phi i32 [ %.1172, %.backedge ], [ %.0171.ph280, %.lr.ph262 ]
  %i.ao = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.ap = load i32, ptr %i.ag, align 4, !tbaa !23 ; 2 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds i8, ptr %.ptr, i64 %i.aq
  %i.as = sub nsw i32 1024, %i.ap
  %i.at = call i32 @BIO_read(ptr noundef %i.ao, ptr noundef nonnull %i.ar, i32 noundef %i.as) #5 ; 6 uses
  %i.au = icmp slt i32 %i.at, 1
  br i1 %i.au, label %bb.k, label %._crit_edge309

._crit_edge309:                                   ; preds = %.lr.ph371
  %.pre310 = load i32, ptr %i.ag, align 4, !tbaa !23
  br label %bb.m

bb.k:                                             ; preds = %.lr.ph371
  %i.av = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.aw = call i32 @BIO_should_retry(ptr noundef %i.av) #5
  %.not204 = icmp eq i32 %i.aw, 0
  br i1 %.not204, label %bb.l, label %.loopexit224

bb.l:                                             ; preds = %bb.k
  store i32 %i.at, ptr %i.af, align 4, !tbaa !26
  %i.ax = load i32, ptr %i.ag, align 4, !tbaa !23 ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %.loopexit224, label %bb.m

bb.m:                                             ; preds = %._crit_edge309, %bb.l
  %i.az = phi i32 [ %.pre310, %._crit_edge309 ], [ %i.ax, %bb.l ]
  %.1177 = phi i32 [ %i.at, %._crit_edge309 ], [ 0, %bb.l ]
  %.1172 = phi i32 [ %.0171261370, %._crit_edge309 ], [ %i.at, %bb.l ] ; 4 uses
  %i.ba = add i32 %i.az, %.1177                   ; 14 uses
  store i32 %i.ba, ptr %i.ag, align 4, !tbaa !23
  %i.bb = load i32, ptr %i.ah, align 4, !tbaa !27
  %.not205 = icmp eq i32 %i.bb, 0
  br i1 %.not205, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = call i32 @BIO_test_flags(ptr noundef nonnull %0, i32 noundef 256) #5
  %.not206 = icmp eq i32 %i.bc, 0
  br i1 %.not206, label %bb.o, label %.loopexit225.sink.split

bb.o:                                             ; preds = %bb.n
  %.pr = load i32, ptr %i.ah, align 4, !tbaa !27
  %.not207 = icmp eq i32 %.pr, 0
  br i1 %.not207, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.a, align 4, !tbaa !41
  %i.bd = icmp sgt i32 %i.ba, 0
  br i1 %i.bd, label %.lr.ph.preheader, label %.loopexit223.thread

.lr.ph.preheader:                                 ; preds = %bb.p
  %3 = zext nneg i32 %i.ba to i64
  %4 = getelementptr i8, ptr %i.d, i64 %3
  %scevgep298 = getelementptr i8, ptr %4, i64 1586
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.x
  %.0169.ptr253 = phi ptr [ %.0169.ptr, %bb.x ], [ %.ptr, %.lr.ph.preheader ] ; 10 uses
  %.0168.ptr252 = phi ptr [ %.0168.ptr, %bb.x ], [ %.ptr, %.lr.ph.preheader ]
  %.0168.idx251 = phi i64 [ %.0168.add, %bb.x ], [ 1586, %.lr.ph.preheader ]
  %.0169.idx250 = phi i64 [ %.1170.idx, %bb.x ], [ 1586, %.lr.ph.preheader ] ; 5 uses
  %.0174249 = phi i32 [ %i.cq, %bb.x ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.0168.add = add nuw nsw i64 %.0168.idx251, 1   ; 6 uses
  %i.be = load i8, ptr %.0168.ptr252, align 1, !tbaa !42
  %.not208 = icmp eq i8 %i.be, 10
  br i1 %.not208, label %bb.q, label %bb.x

bb.q:                                             ; preds = %.lr.ph
  %i.bf = load i32, ptr %i.ai, align 4, !tbaa !43
  %.not209 = icmp eq i32 %i.bf, 0
  br i1 %.not209, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.ai, align 4, !tbaa !43
  br label %bb.x

bb.s:                                             ; preds = %bb.q
  %gepdiff213 = sub nsw i64 %.0168.add, %.0169.idx250
  %i.bg = call i32 @EVP_DecodeUpdate(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.a, ptr noundef nonnull %.0169.ptr253, i64 noundef %gepdiff213) #5
  %i.bh = icmp slt i32 %i.bg, 1
  %i.bi = load i32, ptr %i.a, align 4
  %i.bj = icmp eq i32 %i.bi, 0
  %or.cond = select i1 %i.bh, i1 %i.bj, i1 false
  br i1 %or.cond, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bk = load i32, ptr %i.ah, align 4, !tbaa !27
  %.not210 = icmp eq i32 %i.bk, 0
  br i1 %.not210, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @EVP_DecodeInit(ptr noundef nonnull %i.aj) #5
  br label %bb.x

bb.v:                                             ; preds = %bb.t, %bb.s
  %.0169.ptr253389.le = ptrtoaddr ptr %.0169.ptr253 to i64
  %.ptr212.le = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0168.add
  %.not211 = icmp eq i64 %.0169.idx250, 1586
  br i1 %.not211, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bl = trunc i64 %.0169.idx250 to i32
  %.neg222 = add nuw i32 %i.ba, 1586
  %i.bm = sub i32 %.neg222, %i.bl                 ; 9 uses
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %iter.check404, label %.loopexit

iter.check404:                                    ; preds = %bb.w
  %wide.trip.count = zext nneg i32 %i.bm to i64   ; 8 uses
  %min.iters.check391 = icmp ult i32 %i.bm, 4
  br i1 %min.iters.check391, label %.lr.ph258.preheader, label %vector.memcheck388

vector.memcheck388:                               ; preds = %iter.check404
  %i.bo = sub i64 %i.e, %.0169.ptr253389.le
  %i.bp = add i64 %i.bo, 1585
  %diff.check390 = icmp ult i64 %i.bp, 31
  br i1 %diff.check390, label %.lr.ph258.preheader, label %vector.main.loop.iter.check392

vector.main.loop.iter.check392:                   ; preds = %vector.memcheck388
  %min.iters.check393 = icmp ult i32 %i.bm, 32
  br i1 %min.iters.check393, label %vec.epilog.ph408, label %vector.ph394

vector.ph394:                                     ; preds = %vector.main.loop.iter.check392
  %i.bq = and i64 %wide.trip.count, 28
  %n.vec395 = and i64 %wide.trip.count, 2147483616 ; 4 uses
  br label %vector.body396

vector.body396:                                   ; preds = %vector.body396, %vector.ph394
  %index397 = phi i64 [ 0, %vector.ph394 ], [ %index.next400, %vector.body396 ] ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0169.ptr253, i64 %index397 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %wide.load398 = load <16 x i8>, ptr %i.br, align 1, !tbaa !42
  %wide.load399 = load <16 x i8>, ptr %i.bs, align 1, !tbaa !42
  %i.bt = getelementptr inbounds nuw i8, ptr %.ptr, i64 %index397 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store <16 x i8> %wide.load398, ptr %i.bt, align 1, !tbaa !42
  store <16 x i8> %wide.load399, ptr %i.bu, align 1, !tbaa !42
  %index.next400 = add nuw i64 %index397, 32      ; 2 uses
  %i.bv = icmp eq i64 %index.next400, %n.vec395
  br i1 %i.bv, label %middle.block401, label %vector.body396, !llvm.loop !31

middle.block401:                                  ; preds = %vector.body396
  %cmp.n402 = icmp eq i64 %n.vec395, %wide.trip.count
  br i1 %cmp.n402, label %.loopexit, label %vec.epilog.iter.check406

vec.epilog.iter.check406:                         ; preds = %middle.block401
  %min.epilog.iters.check407 = icmp eq i64 %i.bq, 0
  br i1 %min.epilog.iters.check407, label %.lr.ph258.preheader, label %vec.epilog.ph408, !prof !46

vec.epilog.ph408:                                 ; preds = %vector.main.loop.iter.check392, %vec.epilog.iter.check406
  %vec.epilog.resume.val403 = phi i64 [ %n.vec395, %vec.epilog.iter.check406 ], [ 0, %vector.main.loop.iter.check392 ]
  %n.vec409 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body410

vec.epilog.vector.body410:                        ; preds = %vec.epilog.vector.body410, %vec.epilog.ph408
  %index411 = phi i64 [ %vec.epilog.resume.val403, %vec.epilog.ph408 ], [ %index.next413, %vec.epilog.vector.body410 ] ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.0169.ptr253, i64 %index411
  %wide.load412 = load <4 x i8>, ptr %i.bw, align 1, !tbaa !42
  %i.bx = getelementptr inbounds nuw i8, ptr %.ptr, i64 %index411
  store <4 x i8> %wide.load412, ptr %i.bx, align 1, !tbaa !42
  %index.next413 = add nuw i64 %index411, 4       ; 2 uses
  %i.by = icmp eq i64 %index.next413, %n.vec409
  br i1 %i.by, label %vec.epilog.middle.block414, label %vec.epilog.vector.body410, !llvm.loop !32

vec.epilog.middle.block414:                       ; preds = %vec.epilog.vector.body410
  %cmp.n415 = icmp eq i64 %n.vec409, %wide.trip.count
  br i1 %cmp.n415, label %.loopexit, label %.lr.ph258.preheader

.lr.ph258.preheader:                              ; preds = %vector.memcheck388, %iter.check404, %vec.epilog.iter.check406, %vec.epilog.middle.block414
  %indvars.iv.ph = phi i64 [ 0, %iter.check404 ], [ 0, %vector.memcheck388 ], [ %n.vec395, %vec.epilog.iter.check406 ], [ %n.vec409, %vec.epilog.middle.block414 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph258.prol.loopexit, label %.lr.ph258.prol

.lr.ph258.prol:                                   ; preds = %.lr.ph258.preheader, %.lr.ph258.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph258.prol ], [ %indvars.iv.ph, %.lr.ph258.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph258.prol ], [ 0, %.lr.ph258.preheader ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.0169.ptr253, i64 %indvars.iv.prol
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !42
  %i.cb = getelementptr inbounds nuw i8, ptr %.ptr, i64 %indvars.iv.prol
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !42
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph258.prol.loopexit, label %.lr.ph258.prol, !llvm.loop !33

.lr.ph258.prol.loopexit:                          ; preds = %.lr.ph258.prol, %.lr.ph258.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph258.preheader ], [ %indvars.iv.next.prol, %.lr.ph258.prol ]
  %i.cc = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.cd = icmp ugt i64 %i.cc, -4
  br i1 %i.cd, label %.loopexit, label %.lr.ph258

.lr.ph258:                                        ; preds = %.lr.ph258.prol.loopexit, %.lr.ph258
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph258 ], [ %indvars.iv.unr, %.lr.ph258.prol.loopexit ] ; 6 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0169.ptr253, i64 %indvars.iv
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !42
  %i.cg = getelementptr inbounds nuw i8, ptr %.ptr, i64 %indvars.iv
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !42
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0169.ptr253, i64 %indvars.iv.next
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !42
  %i.cj = getelementptr inbounds nuw i8, ptr %.ptr, i64 %indvars.iv.next
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !42
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0169.ptr253, i64 %indvars.iv.next.1
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !42
  %i.cm = getelementptr inbounds nuw i8, ptr %.ptr, i64 %indvars.iv.next.1
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !42
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0169.ptr253, i64 %indvars.iv.next.2
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !42
  %i.cp = getelementptr inbounds nuw i8, ptr %.ptr, i64 %indvars.iv.next.2
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !42
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond302.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond302.not.3, label %.loopexit, label %.lr.ph258, !llvm.loop !34

.loopexit:                                        ; preds = %.lr.ph258.prol.loopexit, %.lr.ph258, %middle.block401, %vec.epilog.middle.block414, %bb.w, %bb.v
  %.2178 = phi i32 [ %i.ba, %bb.v ], [ %i.bm, %bb.w ], [ %i.bm, %middle.block401 ], [ %i.bm, %vec.epilog.middle.block414 ], [ %i.bm, %.lr.ph258 ], [ %i.bm, %.lr.ph258.prol.loopexit ]
  call void @EVP_DecodeInit(ptr noundef nonnull %i.aj) #5
  store i32 0, ptr %i.ah, align 4, !tbaa !27
  br label %.loopexit223

bb.x:                                             ; preds = %.lr.ph, %bb.u, %bb.r
  %.1170.idx = phi i64 [ %.0169.idx250, %.lr.ph ], [ %.0168.add, %bb.r ], [ %.0168.add, %bb.u ] ; 3 uses
  %i.cq = add nuw nsw i32 %.0174249, 1            ; 2 uses
  %.0168.ptr = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0168.add
  %.0169.ptr = getelementptr inbounds nuw i8, ptr %i.d, i64 %.1170.idx ; 2 uses
  %exitcond.not = icmp eq i32 %i.cq, %i.ba
  br i1 %exitcond.not, label %.loopexit223, label %.lr.ph, !llvm.loop !35

.loopexit223:                                     ; preds = %bb.x, %.loopexit
  %.0174232 = phi i32 [ %.0174249, %.loopexit ], [ %i.ba, %bb.x ] ; 2 uses
  %.0169.idx230 = phi i64 [ %.0169.idx250, %.loopexit ], [ %.1170.idx, %bb.x ]
  %.0169.ptr227 = phi ptr [ %.0169.ptr253, %.loopexit ], [ %.0169.ptr, %bb.x ] ; 9 uses
  %.3 = phi i32 [ %.2178, %.loopexit ], [ %i.ba, %bb.x ] ; 2 uses
  %.1 = phi ptr [ %.ptr212.le, %.loopexit ], [ %scevgep298, %bb.x ] ; 2 uses
  %i.cr = icmp eq i32 %.0174232, %.3
  %i.cs = load i32, ptr %i.a, align 4
  %i.ct = icmp eq i32 %i.cs, 0
  %or.cond3 = select i1 %i.cr, i1 %i.ct, i1 false
  br i1 %or.cond3, label %bb.y, label %.loopexit225.sink.split

.loopexit223.thread:                              ; preds = %bb.p
  %i.cu = icmp eq i32 %i.ba, 0
  %i.cv = load i32, ptr %i.a, align 4
  %i.cw = icmp eq i32 %i.cv, 0
  %or.cond3331 = select i1 %i.cu, i1 %i.cw, i1 false
  br i1 %or.cond3331, label %.backedge, label %.loopexit225.sink.split

bb.y:                                             ; preds = %.loopexit223
  %i.cx = icmp samesign eq i64 %.0169.idx230, 1586
  br i1 %i.cx, label %bb.z, label %bb.ab

end_hunk_0
