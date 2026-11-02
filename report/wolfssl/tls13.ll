Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/tls13?download=true
inline.NumInlined: 109
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@wolfSSL_connect_TLSv13:bb.a
  %i.an = tail call i32 @wolfSSL_connect(ptr noundef nonnull %0) #11
  br label %.loopexit

bb.x:                                             ; preds = %bb.u
  store i8 2, ptr %i.i, align 2, !tbaa !85
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge, %bb.x
  %i.ao = phi i8 [ %.pre, %._crit_edge ], [ %i.ag, %bb.x ]
  %i.ap = icmp eq i8 %i.ao, 2
  br i1 %i.ap, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.aq = tail call i32 @SendTls13ClientHello(ptr noundef nonnull %0) ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 680
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !110
  %.not97 = icmp eq i32 %i.aq, 0
  br i1 %.not97, label %bb.aa, label %.loopexit

bb.aa:                                            ; preds = %bb.z, %bb.y
  store i8 3, ptr %i.i, align 2, !tbaa !85
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1061
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 680
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ad, %bb.ab
  %i.au = load i8, ptr %i.as, align 1, !tbaa !95
  %i.av = icmp ult i8 %i.au, 10
  br i1 %i.av, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.aw = tail call i32 @ProcessReply(ptr noundef nonnull %0) #11 ; 2 uses
  store i32 %i.aw, ptr %i.at, align 8, !tbaa !110
  %i.ax = icmp slt i32 %i.aw, 0
  br i1 %i.ax, label %.loopexit, label %bb.ac, !llvm.loop !175

bb.ae:                                            ; preds = %bb.ac
  store i8 4, ptr %i.i, align 2, !tbaa !85
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.o
  %i.ay = load i64, ptr %i.c, align 16
  %i.az = and i64 %i.ay, 68719476736
  %.not98 = icmp eq i64 %i.az, 0
  br i1 %.not98, label %bb.ag, label %.loopexit

bb.ag:                                            ; preds = %bb.af, %bb.o
  store i8 6, ptr %i.i, align 2, !tbaa !85
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.o
  %i.ba = load i64, ptr %i.c, align 16            ; 3 uses
  %i.bb = and i64 %i.ba, 562949953421312
  %.not99 = icmp eq i64 %i.bb, 0
  br i1 %.not99, label %.loopexit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bc = and i64 %i.ba, 2048
  %.not100 = icmp ne i64 %i.bc, 0
  %i.bd = and i64 %i.ba, 3
  %.not101 = icmp eq i64 %i.bd, 0
  %or.cond109 = or i1 %.not100, %.not101
  br i1 %or.cond109, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.be = tail call fastcc i32 @SendTls13Certificate(ptr noundef %0) ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 680
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !110
  %.not102 = icmp eq i32 %i.be, 0
  br i1 %.not102, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @wolfssl_local_MaybeCheckAlertOnErr(ptr noundef nonnull %0, i32 noundef %i.be) #11
  br label %.loopexit

bb.al:                                            ; preds = %bb.aj, %bb.ai
  store i8 7, ptr %i.i, align 2, !tbaa !85
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.o
  %i.bg = load i64, ptr %i.c, align 16            ; 2 uses
  %i.bh = and i64 %i.bg, 2048
  %.not103 = icmp ne i64 %i.bh, 0
  %i.bi = and i64 %i.bg, 3
  %.not104 = icmp eq i64 %i.bi, 0
  %or.cond110 = or i1 %.not103, %.not104
  br i1 %or.cond110, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bj = tail call fastcc i32 @SendTls13CertificateVerify(ptr noundef %0) ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 680
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !110
  %.not105 = icmp eq i32 %i.bj, 0
  br i1 %.not105, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  tail call void @wolfssl_local_MaybeCheckAlertOnErr(ptr noundef nonnull %0, i32 noundef %i.bj) #11
  br label %.loopexit

bb.ap:                                            ; preds = %bb.an, %bb.am
  store i8 8, ptr %i.i, align 2, !tbaa !85
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.o
  %i.bl = tail call fastcc i32 @SendTls13Finished(ptr noundef %0) ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 680
  store i32 %i.bl, ptr %i.bm, align 8, !tbaa !110
  %.not106 = icmp eq i32 %i.bl, 0
  br i1 %.not106, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  tail call void @wolfssl_local_MaybeCheckAlertOnErr(ptr noundef nonnull %0, i32 noundef %i.bl) #11
  br label %.loopexit

bb.as:                                            ; preds = %bb.aq
  store i8 9, ptr %i.i, align 2, !tbaa !85
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !118 ; 2 uses
  %.not107 = icmp eq ptr %i.bo, null
  br i1 %.not107, label %.critedge, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bq = load ptr, ptr %i.bp, align 16, !tbaa !119
  %i.br = tail call i32 %i.bo(ptr noundef nonnull %0, ptr noundef %i.bq) #11 ; 2 uses
  %i.bs = icmp sgt i32 %i.br, -1
  br i1 %i.bs, label %.critedge, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 680
  store i32 %i.br, ptr %i.bt, align 8, !tbaa !110
  br label %.loopexit

.critedge:                                        ; preds = %bb.au, %bb.at
  %i.bu = load i64, ptr %i.c, align 16
  %i.bv = and i64 %i.bu, 70368744177664
  %.not108 = icmp eq i64 %i.bv, 0
  br i1 %.not108, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %.critedge
  tail call void @FreeHandshakeResources(ptr noundef nonnull %0) #11
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.critedge
  tail call void @FreeAsyncCtx(ptr noundef nonnull %0, i8 noundef zeroext 1) #11
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 680
  store i32 0, ptr %i.bw, align 8, !tbaa !110
  br label %.loopexit

.loopexit:                                        ; preds = %bb.t, %bb.ad, %bb.av, %bb.o, %bb.ah, %bb.af, %bb.z, %bb.v, %bb.p, %bb.d, %bb.a, %bb.ax, %bb.ar, %bb.ao, %bb.ak, %bb.w, %bb.n, %bb.l, %bb.c
  %.1 = phi i32 [ -1, %bb.l ], [ -1, %bb.c ], [ -173, %bb.a ], [ -1, %bb.n ], [ -1, %bb.ah ], [ %i.h, %bb.d ], [ -1, %bb.p ], [ -326, %bb.v ], [ -1, %bb.z ], [ -1, %bb.o ], [ -1, %bb.ar ], [ 1, %bb.ax ], [ -1, %bb.av ], [ -1, %bb.ao ], [ -1, %bb.ak ], [ 1, %bb.af ], [ %i.an, %bb.w ], [ -1, %bb.ad ], [ -1, %bb.t ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

declare i32 @ReinitSSL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @FreeAsyncCtx(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @RetrySendAlert(ptr noundef) local_unnamed_addr #2

declare i32 @ProcessReply(ptr noundef) local_unnamed_addr #2

declare i32 @wolfSSL_connect(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @SendTls13Certificate(ptr noundef nonnull initializes((1048, 1049)) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 3 uses
  store i8 1, ptr %i.d, align 8, !tbaa !77
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 3
  %.not319 = icmp eq i64 %i.g, 2                  ; 3 uses
  br i1 %.not319, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !111  ; 3 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.thread291, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !113
  %.not237 = icmp eq ptr %i.j, null
  br i1 %.not237, label %.thread291, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !177  ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.n = load i32, ptr %i.m, align 16, !tbaa !178 ; 2 uses
  %i.o = shl nsw i32 %i.n, 1
  %1 = add i32 %i.o, 2                            ; 4 uses
  %i.p = add i32 %i.l, 7
  %i.q = add i32 %i.p, %1                         ; 2 uses
  %i.r = add i32 %i.l, 3
  %i.s = add i32 %i.r, %1                         ; 2 uses
  %.not238 = icmp ne i32 %i.l, 0
  %i.t = icmp sgt i32 %i.n, 0
  %or.cond = select i1 %.not238, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !179  ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !113
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.y = load i32, ptr %i.x, align 8, !tbaa !177  ; 3 uses
  %i.z = add i32 %i.y, %i.q
  %i.aa = add i32 %i.y, %i.s
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.a, %bb.e
  %.sroa.0.1 = phi i32 [ 0, %bb.a ], [ 2, %bb.e ], [ 2, %bb.d ] ; 2 uses
  %.0217 = phi i32 [ 0, %bb.a ], [ %i.l, %bb.e ], [ %i.l, %bb.d ] ; 9 uses
  %.0216 = phi i32 [ 0, %bb.a ], [ %i.y, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %.0215 = phi i32 [ 4, %bb.a ], [ 7, %bb.e ], [ 7, %bb.d ] ; 2 uses
  %.0214 = phi i32 [ 0, %bb.a ], [ %i.aa, %bb.e ], [ %i.s, %bb.d ] ; 3 uses
  %.0212 = phi i32 [ 0, %bb.a ], [ %1, %bb.e ], [ %1, %bb.d ]
  %.0192 = phi ptr [ null, %bb.a ], [ %i.w, %bb.e ], [ null, %bb.d ]
  %.0186 = phi i32 [ 4, %bb.a ], [ %i.z, %bb.e ], [ %i.q, %bb.d ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 9 uses
  %i.ac = load i32, ptr %i.ab, align 16, !tbaa !117 ; 2 uses
  %.not239 = icmp eq i32 %i.ac, 0
  %i.ad = add i32 %i.ac, %.0215
  %i.ae = select i1 %.not239, i32 0, i32 %i.ad
  %.1187 = sub i32 %.0186, %i.ae                  ; 2 uses
  %i.af = tail call i32 @wolfssl_local_GetMaxPlaintextSize(ptr noundef nonnull %0) #11 ; 3 uses
  %i.ag = icmp sgt i32 %.1187, 0
  br i1 %i.ag, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.f
  %invariant.op = add i32 %.0215, %.0212
  %i.ah = add i32 %.0216, %.0217
  %.reass = add i32 %i.ah, %invariant.op
  %i.ai = add i32 %i.af, -4
  %. = tail call i32 @llvm.umin.i32(i32 %.reass, i32 %i.ai) ; 2 uses
  %i.aj = add i32 %., 9
  %i.ak = getelementptr i8, ptr %0, i64 726
  %.not244 = icmp eq i32 %.0217, 0                ; 2 uses
  %i.al = lshr i32 %.0186, 16
  %i.am = trunc i32 %i.al to i8
  %i.an = lshr i32 %.0186, 8
  %i.ao = trunc i32 %i.an to i8
  %i.ap = trunc i32 %.0186 to i8
  %i.aq = lshr i32 %.0214, 16
  %i.ar = trunc i32 %i.aq to i8
  %i.as = lshr i32 %.0214, 8
  %i.at = trunc i32 %i.as to i8
  %i.au = trunc i32 %.0214 to i8
  %i.av = lshr i32 %.0217, 16
  %i.aw = trunc i32 %i.av to i8
  %i.ax = lshr i32 %.0217, 8
  %i.ay = trunc i32 %i.ax to i8
  %i.az = trunc i32 %.0217 to i8
  %i.ba = add i32 %.0217, %.sroa.0.1              ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 3 uses
  %i.bd = zext i32 %.0217 to i64
  %i.be = sub nsw i64 0, %i.bd
  %i.bf = icmp ne i32 %.0216, 0
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.af
  %.2188307 = phi i32 [ %.1187, %.lr.ph ], [ %.7, %bb.af ] ; 6 uses
  %.1193306 = phi ptr [ %.0192, %.lr.ph ], [ %.5197, %bb.af ] ; 2 uses
  %.0199305 = phi i32 [ 2, %.lr.ph ], [ %.4203, %bb.af ] ; 2 uses
  %.0205304 = phi i32 [ 0, %.lr.ph ], [ %.5210, %bb.af ] ; 2 uses
  %.0259303 = phi i32 [ 0, %.lr.ph ], [ %.4263, %bb.af ] ; 2 uses
  %i.bi = load i32, ptr %i.ab, align 16, !tbaa !117
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bk = icmp uge i32 %.2188307, %i.af
  %i.bl = sext i1 %i.bk to i32
  store volatile i32 %i.bl, ptr %i.c, align 4, !tbaa !89
  %.0..0..0..0..0..0..i = load volatile i32, ptr %i.c, align 4, !tbaa !89
  %i.bm = xor i32 %.0..0..0..0..0..0..i, -1
  %i.bn = and i32 %.2188307, %i.bm
  %.0..0..0..0..0..0.2.i = load volatile i32, ptr %i.c, align 4, !tbaa !89
  %i.bo = and i32 %.0..0..0..0..0..0.2.i, %i.af
  %i.bp = or i32 %i.bo, %i.bn                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bq = add i32 %i.bp, 5
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.1179 = phi i32 [ %i.bp, %bb.h ], [ %., %bb.g ] ; 7 uses
  %.0177 = phi i32 [ 5, %bb.h ], [ 9, %bb.g ]     ; 5 uses
  %.0 = phi i32 [ %i.bq, %bb.h ], [ %i.aj, %bb.g ]
  %i.br = add nsw i32 %.0, 102                    ; 2 uses
  %i.bs = tail call i32 @CheckAvailableSize(ptr noundef nonnull %0, i32 noundef %i.br) #11 ; 2 uses
  %.not242 = icmp eq i32 %i.bs, 0
  br i1 %.not242, label %bb.j, label %.thread291

bb.j:                                             ; preds = %bb.i
  %i.bt = tail call ptr @GetOutputBuffer(ptr noundef nonnull %0) #11 ; 20 uses
  %i.bu = load i32, ptr %i.ab, align 16, !tbaa !117
  %i.bv = icmp eq i32 %i.bu, 0
  %.val247 = load i8, ptr %i.ak, align 2, !tbaa !64 ; 2 uses
  br i1 %i.bv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bw = add i32 %.1179, 4                       ; 2 uses
  store i8 22, ptr %i.bt, align 1, !tbaa !65
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  store i8 %.val247, ptr %i.bx, align 1, !tbaa !66
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  store i8 3, ptr %i.by, align 1, !tbaa !67
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 3
  %i.ca = lshr i32 %i.bw, 8
  %i.cb = trunc i32 %i.ca to i8
  store i8 %i.cb, ptr %i.bz, align 1, !tbaa !57
  %i.cc = trunc i32 %i.bw to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !57
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bt, i64 5
  store i8 11, ptr %i.ce, align 1, !tbaa !84
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bt, i64 6
  store i8 %i.am, ptr %i.cf, align 1, !tbaa !57
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bt, i64 7
  store i8 %i.ao, ptr %i.cg, align 1, !tbaa !57
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i8 %i.ap, ptr %i.ch, align 1, !tbaa !57
  %i.ci = zext nneg i32 %.0177 to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.ci ; 4 uses
  store i8 0, ptr %i.cj, align 1, !tbaa !57
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  store i8 %i.ar, ptr %i.ck, align 1, !tbaa !57
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  store i8 %i.at, ptr %i.cl, align 1, !tbaa !57
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 3
  store i8 %i.au, ptr %i.cm, align 1, !tbaa !57
  %i.cn = add nuw nsw i32 %.0177, 4               ; 2 uses
  %i.co = add nsw i32 %.2188307, -4
  %i.cp = add i32 %.1179, -4
  br i1 %.not244, label %.thread, label %.thread270

.thread270:                                       ; preds = %bb.k
  %i.cq = zext nneg i32 %i.cn to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.cq ; 3 uses
  store i8 %i.aw, ptr %i.cr, align 1, !tbaa !57
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  store i8 %i.ay, ptr %i.cs, align 1, !tbaa !57
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  store i8 %i.az, ptr %i.ct, align 1, !tbaa !57
  %i.cu = add nuw nsw i32 %.0177, 7
  %i.cv = add nsw i32 %.2188307, -7
  %i.cw = add i32 %.1179, -7
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  store i8 22, ptr %i.bt, align 1, !tbaa !65
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  store i8 %.val247, ptr %i.cx, align 1, !tbaa !66
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  store i8 3, ptr %i.cy, align 1, !tbaa !67
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bt, i64 3
  %i.da = lshr i32 %.1179, 8
  %i.db = trunc i32 %i.da to i8
  store i8 %i.db, ptr %i.cz, align 1, !tbaa !57
  %i.dc = trunc i32 %.1179 to i8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !57
  br i1 %.not244, label %.thread, label %bb.m

bb.m:                                             ; preds = %.thread270, %bb.l
  %.1277 = phi i32 [ %i.cu, %.thread270 ], [ %.0177, %bb.l ] ; 3 uses
  %.2180276 = phi i32 [ %i.cw, %.thread270 ], [ %.1179, %bb.l ] ; 8 uses
  %.3189275 = phi i32 [ %i.cv, %.thread270 ], [ %.2188307, %bb.l ] ; 2 uses
  %i.de = load i32, ptr %i.ab, align 16, !tbaa !117 ; 6 uses
  %i.df = icmp ult i32 %i.de, %i.ba
  br i1 %i.df, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.dg = load ptr, ptr %i.bb, align 8, !tbaa !111
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !113
  %i.di = zext nneg i32 %.1277 to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.di ; 4 uses
  %i.dk = sub i32 %.0217, %i.de                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.dl = icmp uge i32 %i.dk, %.2180276
  %i.dm = sext i1 %i.dl to i32
  store volatile i32 %i.dm, ptr %i.b, align 4, !tbaa !89
  %.0..0..0..0..0..0..0..0..i.i = load volatile i32, ptr %i.b, align 4, !tbaa !89
  %.0..0..0..0..0..0..0..0.2.i.i = load volatile i32, ptr %i.b, align 4, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.dn = icmp ult i32 %i.de, %.0217
  br i1 %i.dn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.do = and i32 %.0..0..0..0..0..0..0..0.2.i.i, %.2180276
  %i.dp = xor i32 %.0..0..0..0..0..0..0..0..i.i, -1
  %i.dq = and i32 %i.dk, %i.dp
  %i.dr = or i32 %i.do, %i.dq                     ; 3 uses
  %i.ds = zext i32 %i.de to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.ds
  %i.du = zext i32 %i.dr to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dj, ptr readonly align 1 %i.dt, i64 %i.du, i1 false)
  %i.dv = icmp eq i32 %i.dr, %.2180276
  br i1 %i.dv, label %AddCertExt.exit, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.041.i = phi i32 [ %i.dr, %bb.o ], [ 0, %bb.n ] ; 8 uses
  %i.dw = add i32 %i.de, %.041.i
  %i.dx = sub i32 %i.ba, %i.dw                    ; 2 uses
  br i1 %.not319, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not.i = icmp ugt i32 %i.dx, %.2180276
  br i1 %.not.i, label %AddCertExt.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dy = add i32 %.041.i, 1
  %i.dz = zext i32 %.041.i to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dz
  store i8 0, ptr %i.ea, align 1, !tbaa !57
end_hunk_0
