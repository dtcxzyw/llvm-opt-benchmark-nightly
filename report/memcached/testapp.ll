Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/memcached/original/testapp?download=true
inline.NumInlined: 158
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@test_binary_incr_impl:bb.a
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !33
  %i.dd = getelementptr inbounds i8, ptr %2, i64 %.014.us.i.5
  %i.de = call i64 %i.dc(ptr noundef %i.da, ptr noundef nonnull %i.dd, i64 noundef %i.cz) #21, !inline_history !39 ; 2 uses
  %i.df = icmp eq i64 %i.de, -1
  br i1 %i.df, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.split.us.i.5
  %i.dg = add nsw i64 %i.de, %.014.us.i.5
  br label %bb.y

bb.x:                                             ; preds = %.split.us.i.5
  %i.dh = tail call ptr @__errno_location() #24
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !17 ; 2 uses
  %.not.us.i.5 = icmp eq i32 %i.di, 4
  br i1 %.not.us.i.5, label %bb.y, label %.split18.us.i

bb.y:                                             ; preds = %bb.x, %bb.w
  %.1.us.i.5 = phi i64 [ %.014.us.i.5, %bb.x ], [ %i.dg, %bb.w ] ; 2 uses
  %i.dj = icmp ult i64 %.1.us.i.5, %i.s
  br i1 %i.dj, label %.split.us.i.5, label %.split.us.i.6, !llvm.loop !2

.split.us.i.6:                                    ; preds = %bb.y, %bb.ab
  %.014.us.i.6 = phi i64 [ %.1.us.i.6, %bb.ab ], [ 0, %bb.y ] ; 4 uses
  %i.dk = sub i64 %i.s, %.014.us.i.6
  %i.dl = load ptr, ptr @con, align 8, !tbaa !35  ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !33
  %i.do = getelementptr inbounds i8, ptr %2, i64 %.014.us.i.6
  %i.dp = call i64 %i.dn(ptr noundef %i.dl, ptr noundef nonnull %i.do, i64 noundef %i.dk) #21, !inline_history !39 ; 2 uses
  %i.dq = icmp eq i64 %i.dp, -1
  br i1 %i.dq, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.split.us.i.6
  %i.dr = add nsw i64 %i.dp, %.014.us.i.6
  br label %bb.ab

bb.aa:                                            ; preds = %.split.us.i.6
  %i.ds = tail call ptr @__errno_location() #24
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !17 ; 2 uses
  %.not.us.i.6 = icmp eq i32 %i.dt, 4
  br i1 %.not.us.i.6, label %bb.ab, label %.split18.us.i

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.1.us.i.6 = phi i64 [ %.014.us.i.6, %bb.aa ], [ %i.dr, %bb.z ] ; 2 uses
  %i.du = icmp ult i64 %.1.us.i.6, %i.s
  br i1 %i.du, label %.split.us.i.6, label %.split.us.i.7, !llvm.loop !2

.split.us.i.7:                                    ; preds = %bb.ab, %bb.ae
  %.014.us.i.7 = phi i64 [ %.1.us.i.7, %bb.ae ], [ 0, %bb.ab ] ; 4 uses
  %i.dv = sub i64 %i.s, %.014.us.i.7
  %i.dw = load ptr, ptr @con, align 8, !tbaa !35  ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !33
  %i.dz = getelementptr inbounds i8, ptr %2, i64 %.014.us.i.7
  %i.ea = call i64 %i.dy(ptr noundef %i.dw, ptr noundef nonnull %i.dz, i64 noundef %i.dv) #21, !inline_history !39 ; 2 uses
  %i.eb = icmp eq i64 %i.ea, -1
  br i1 %i.eb, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.split.us.i.7
  %i.ec = add nsw i64 %i.ea, %.014.us.i.7
  br label %bb.ae

bb.ad:                                            ; preds = %.split.us.i.7
  %i.ed = tail call ptr @__errno_location() #24
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !17 ; 2 uses
  %.not.us.i.7 = icmp eq i32 %i.ee, 4
  br i1 %.not.us.i.7, label %bb.ae, label %.split18.us.i

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.1.us.i.7 = phi i64 [ %.014.us.i.7, %bb.ad ], [ %i.ec, %bb.ac ] ; 2 uses
  %i.ef = icmp ult i64 %.1.us.i.7, %i.s
  br i1 %i.ef, label %.split.us.i.7, label %.split.us.i.8, !llvm.loop !2

.split.us.i.8:                                    ; preds = %bb.ae, %bb.ah
  %.014.us.i.8 = phi i64 [ %.1.us.i.8, %bb.ah ], [ 0, %bb.ae ] ; 4 uses
  %i.eg = sub i64 %i.s, %.014.us.i.8
  %i.eh = load ptr, ptr @con, align 8, !tbaa !35  ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !33
  %i.ek = getelementptr inbounds i8, ptr %2, i64 %.014.us.i.8
  %i.el = call i64 %i.ej(ptr noundef %i.eh, ptr noundef nonnull %i.ek, i64 noundef %i.eg) #21, !inline_history !39 ; 2 uses
  %i.em = icmp eq i64 %i.el, -1
  br i1 %i.em, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.split.us.i.8
  %i.en = add nsw i64 %i.el, %.014.us.i.8
  br label %bb.ah

bb.ag:                                            ; preds = %.split.us.i.8
  %i.eo = tail call ptr @__errno_location() #24
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !17 ; 2 uses
  %.not.us.i.8 = icmp eq i32 %i.ep, 4
  br i1 %.not.us.i.8, label %bb.ah, label %.split18.us.i

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.1.us.i.8 = phi i64 [ %.014.us.i.8, %bb.ag ], [ %i.en, %bb.af ] ; 2 uses
  %i.eq = icmp ult i64 %.1.us.i.8, %i.s
  br i1 %i.eq, label %.split.us.i.8, label %.split.us.i.9, !llvm.loop !2

.split.us.i.9:                                    ; preds = %bb.ah, %bb.ak
  %.014.us.i.9 = phi i64 [ %.1.us.i.9, %bb.ak ], [ 0, %bb.ah ] ; 4 uses
  %i.er = sub i64 %i.s, %.014.us.i.9
  %i.es = load ptr, ptr @con, align 8, !tbaa !35  ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !33
  %i.ev = getelementptr inbounds i8, ptr %2, i64 %.014.us.i.9
  %i.ew = call i64 %i.eu(ptr noundef %i.es, ptr noundef nonnull %i.ev, i64 noundef %i.er) #21, !inline_history !39 ; 2 uses
  %i.ex = icmp eq i64 %i.ew, -1
  br i1 %i.ex, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.split.us.i.9
  %i.ey = add nsw i64 %i.ew, %.014.us.i.9
  br label %bb.ak

bb.aj:                                            ; preds = %.split.us.i.9
  %i.ez = tail call ptr @__errno_location() #24
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !17 ; 2 uses
  %.not.us.i.9 = icmp eq i32 %i.fa, 4
  br i1 %.not.us.i.9, label %bb.ak, label %.split18.us.i

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.1.us.i.9 = phi i64 [ %.014.us.i.9, %bb.aj ], [ %i.ey, %bb.ai ] ; 2 uses
  %i.fb = icmp ult i64 %.1.us.i.9, %i.s
  br i1 %i.fb, label %.split.us.i.9, label %.split12.us, !llvm.loop !2

.split.us:                                        ; preds = %safe_recv_packet.exit.us
  call void @__assert_fail(ptr noundef nonnull @.str.287, ptr noundef nonnull @.str.62, i32 noundef 1720, ptr noundef nonnull @__PRETTY_FUNCTION__.test_binary_incr_impl) #22
  unreachable

.split12.us:                                      ; preds = %bb.ak, %bb.g
  %i.fc = icmp eq i8 %1, 21
  br i1 %i.fc, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.split12.us
  %i.fd = call i32 @test_binary_noop()            ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.split12.us
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void
}

declare i64 @ntohll(i64 noundef) local_unnamed_addr #3

declare i64 @htonll(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @test_binary_decr_impl(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext range(i8 6, 23) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %union.anon.19, align 8             ; 25 uses
  %3 = alloca %union.anon.19, align 8             ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #23 ; 5 uses
  %i.b = add i64 %i.a, 48
  %i.c = icmp ult i64 %i.b, 1024
  br i1 %i.c, label %arithmetic_command.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.288, ptr noundef nonnull @.str.62, i32 noundef 1212, ptr noundef nonnull @__PRETTY_FUNCTION__.arithmetic_command) #22
  unreachable

arithmetic_command.exit:                          ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, i8 0, i64 48, i1 false)
  store i8 -128, ptr %2, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %1, ptr %i.d, align 1, !tbaa !16
  %i.e = trunc nsw i64 %i.a to i16
  %rev.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 %rev.i.i, ptr %i.f, align 2, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 20, ptr %i.g, align 4, !tbaa !16
  %i.h = trunc nsw i64 %i.a to i32
  %i.i = add nsw i32 %i.h, 20
  %i.j = tail call noundef i32 @llvm.bswap.i32(i32 %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.j, ptr %i.k, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 -559038737, ptr %i.l, align 4, !tbaa !16
  %i.m = tail call i64 @htonll(i64 noundef 1) #21
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.m, ptr %i.n, align 8, !tbaa !16
  %i.o = tail call i64 @htonll(i64 noundef 9) #21
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %i.o, ptr %i.p, align 8, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 0, ptr %i.q, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.r, ptr nonnull readonly align 1 %0, i64 %i.a, i1 false)
  %i.s = add nsw i64 %i.a, 44                     ; 24 uses
  %i.t = icmp eq i8 %1, 6                         ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 6 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  br i1 %i.t, label %.split.us.i.preheader.us, label %.split.us.i

.split.us.i.preheader.us:                         ; preds = %arithmetic_command.exit, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 9, %arithmetic_command.exit ] ; 3 uses
  br label %.split.us.i.us

.split.us.i.us:                                   ; preds = %bb.e, %.split.us.i.preheader.us
  %.014.us.i.us = phi i64 [ %.1.us.i.us, %bb.e ], [ 0, %.split.us.i.preheader.us ] ; 4 uses
  %i.y = sub i64 %i.s, %.014.us.i.us
  %i.z = load ptr, ptr @con, align 8, !tbaa !35   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !33
  %i.ac = getelementptr inbounds i8, ptr %2, i64 %.014.us.i.us
  %i.ad = call i64 %i.ab(ptr noundef %i.z, ptr noundef nonnull %i.ac, i64 noundef %i.y) #21, !inline_history !39 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, -1
  br i1 %i.ae, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.split.us.i.us
  %i.af = add nsw i64 %i.ad, %.014.us.i.us
  br label %bb.e

bb.d:                                             ; preds = %.split.us.i.us
  %i.ag = tail call ptr @__errno_location() #24
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !17 ; 2 uses
  %.not.us.i.us = icmp eq i32 %i.ah, 4
  br i1 %.not.us.i.us, label %bb.e, label %.split18.us.i

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.us.i.us = phi i64 [ %.014.us.i.us, %bb.d ], [ %i.af, %bb.c ] ; 2 uses
  %i.ai = icmp ult i64 %.1.us.i.us, %i.s
  br i1 %i.ai, label %.split.us.i.us, label %safe_send.exit.us, !llvm.loop !2

safe_send.exit.us:                                ; preds = %bb.e
  %i.aj = call fastcc zeroext i1 @safe_recv(ptr noundef nonnull %3, i64 noundef 24)
  br i1 %i.aj, label %bb.f, label %safe_recv_packet.exit.us

bb.f:                                             ; preds = %safe_send.exit.us
  %i.ak = load i16, ptr %i.u, align 2, !tbaa !16
  %rev.i.i11.us = call noundef i16 @llvm.bswap.i16(i16 %i.ak)
  store i16 %rev.i.i11.us, ptr %i.u, align 2, !tbaa !16
  %i.al = load i16, ptr %i.v, align 2, !tbaa !16
  %rev.i14.i.us = call noundef i16 @llvm.bswap.i16(i16 %i.al)
  store i16 %rev.i14.i.us, ptr %i.v, align 2, !tbaa !16
  %i.am = load i32, ptr %i.w, align 8, !tbaa !16
  %i.an = call noundef i32 @llvm.bswap.i32(i32 %i.am) ; 2 uses
  store i32 %i.an, ptr %i.w, align 8, !tbaa !16
  %i.ao = zext i32 %i.an to i64
  %i.ap = call fastcc zeroext i1 @safe_recv(ptr noundef %i.x, i64 noundef %i.ao) ; 0 uses
  br label %safe_recv_packet.exit.us

safe_recv_packet.exit.us:                         ; preds = %bb.f, %safe_send.exit.us
  call fastcc void @validate_response_header(ptr noundef %3, i8 noundef zeroext 6, i16 noundef zeroext 0)
  %i.aq = load i64, ptr %i.x, align 8, !tbaa !16
  %i.ar = call i64 @ntohll(i64 noundef %i.aq) #21
  %i.as = icmp eq i64 %i.ar, %indvars.iv
  br i1 %i.as, label %bb.g, label %.split.us

bb.g:                                             ; preds = %safe_recv_packet.exit.us
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %.split.us.i12.preheader, label %.split.us.i.preheader.us, !llvm.loop !83

.split.us.i12.preheader:                          ; preds = %bb.ak, %bb.g
  br label %.split.us.i12

.split.us.i:                                      ; preds = %arithmetic_command.exit, %bb.j
  %.014.us.i = phi i64 [ %.1.us.i, %bb.j ], [ 0, %arithmetic_command.exit ] ; 4 uses
  %i.at = sub i64 %i.s, %.014.us.i
  %i.au = load ptr, ptr @con, align 8, !tbaa !35  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !33
  %i.ax = getelementptr inbounds i8, ptr %2, i64 %.014.us.i
  %i.ay = call i64 %i.aw(ptr noundef %i.au, ptr noundef nonnull %i.ax, i64 noundef %i.at) #21, !inline_history !39 ; 2 uses
  %i.az = icmp eq i64 %i.ay, -1
  br i1 %i.az, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.split.us.i
  %i.ba = add nsw i64 %i.ay, %.014.us.i
  br label %bb.j

bb.i:                                             ; preds = %.split.us.i
  %i.bb = tail call ptr @__errno_location() #24
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !17 ; 2 uses
  %.not.us.i = icmp eq i32 %i.bc, 4
  br i1 %.not.us.i, label %bb.j, label %.split18.us.i

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1.us.i = phi i64 [ %.014.us.i, %bb.i ], [ %i.ba, %bb.h ] ; 2 uses
  %i.bd = icmp ult i64 %.1.us.i, %i.s
  br i1 %i.bd, label %.split.us.i, label %.split.us.i.1, !llvm.loop !2

.split18.us.i:                                    ; preds = %bb.i, %bb.l, %bb.o, %bb.r, %bb.u, %bb.x, %bb.aa, %bb.ad, %bb.ag, %bb.aj, %bb.d
  %.us-phi = phi i32 [ %i.di, %bb.x ], [ %i.cm, %bb.r ], [ %i.cx, %bb.u ], [ %i.dt, %bb.aa ], [ %i.ee, %bb.ad ], [ %i.ep, %bb.ag ], [ %i.fa, %bb.aj ], [ %i.ah, %bb.d ], [ %i.bq, %bb.l ], [ %i.cb, %bb.o ], [ %i.bc, %bb.i ]
  %i.be = load ptr, ptr @stderr, align 8, !tbaa !37
  %i.bf = call ptr @strerror(i32 noundef %.us-phi) #21
  %i.bg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.be, ptr noundef nonnull @.str.238, ptr noundef %i.bf) #25 ; 0 uses
  call void @abort() #22
  unreachable

.split.us.i.1:                                    ; preds = %bb.j, %bb.m
  %.014.us.i.1 = phi i64 [ %.1.us.i.1, %bb.m ], [ 0, %bb.j ] ; 4 uses
  %i.bh = sub i64 %i.s, %.014.us.i.1
  %i.bi = load ptr, ptr @con, align 8, !tbaa !35  ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !33
  %i.bl = getelementptr inbounds i8, ptr %2, i64 %.014.us.i.1
  %i.bm = call i64 %i.bk(ptr noundef %i.bi, ptr noundef nonnull %i.bl, i64 noundef %i.bh) #21, !inline_history !39 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, -1
  br i1 %i.bn, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.split.us.i.1
  %i.bo = add nsw i64 %i.bm, %.014.us.i.1
  br label %bb.m

bb.l:                                             ; preds = %.split.us.i.1
  %i.bp = tail call ptr @__errno_location() #24
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !17 ; 2 uses
  %.not.us.i.1 = icmp eq i32 %i.bq, 4
  br i1 %.not.us.i.1, label %bb.m, label %.split18.us.i

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1.us.i.1 = phi i64 [ %.014.us.i.1, %bb.l ], [ %i.bo, %bb.k ] ; 2 uses
  %i.br = icmp ult i64 %.1.us.i.1, %i.s
  br i1 %i.br, label %.split.us.i.1, label %.split.us.i.2, !llvm.loop !2

.split.us.i.2:                                    ; preds = %bb.m, %bb.p
  %.014.us.i.2 = phi i64 [ %.1.us.i.2, %bb.p ], [ 0, %bb.m ] ; 4 uses
  %i.bs = sub i64 %i.s, %.014.us.i.2
  %i.bt = load ptr, ptr @con, align 8, !tbaa !35  ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !33
  %i.bw = getelementptr inbounds i8, ptr %2, i64 %.014.us.i.2
  %i.bx = call i64 %i.bv(ptr noundef %i.bt, ptr noundef nonnull %i.bw, i64 noundef %i.bs) #21, !inline_history !39 ; 2 uses
  %i.by = icmp eq i64 %i.bx, -1
  br i1 %i.by, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.split.us.i.2
  %i.bz = add nsw i64 %i.bx, %.014.us.i.2
  br label %bb.p

bb.o:                                             ; preds = %.split.us.i.2
  %i.ca = tail call ptr @__errno_location() #24
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !17 ; 2 uses
  %.not.us.i.2 = icmp eq i32 %i.cb, 4
  br i1 %.not.us.i.2, label %bb.p, label %.split18.us.i

bb.p:                                             ; preds = %bb.o, %bb.n
  %.1.us.i.2 = phi i64 [ %.014.us.i.2, %bb.o ], [ %i.bz, %bb.n ] ; 2 uses
  %i.cc = icmp ult i64 %.1.us.i.2, %i.s
  br i1 %i.cc, label %.split.us.i.2, label %.split.us.i.3, !llvm.loop !2

.split.us.i.3:                                    ; preds = %bb.p, %bb.s
  %.014.us.i.3 = phi i64 [ %.1.us.i.3, %bb.s ], [ 0, %bb.p ] ; 4 uses
  %i.cd = sub i64 %i.s, %.014.us.i.3
  %i.ce = load ptr, ptr @con, align 8, !tbaa !35  ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !33
  %i.ch = getelementptr inbounds i8, ptr %2, i64 %.014.us.i.3
  %i.ci = call i64 %i.cg(ptr noundef %i.ce, ptr noundef nonnull %i.ch, i64 noundef %i.cd) #21, !inline_history !39 ; 2 uses
  %i.cj = icmp eq i64 %i.ci, -1
  br i1 %i.cj, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.split.us.i.3
  %i.ck = add nsw i64 %i.ci, %.014.us.i.3
  br label %bb.s

bb.r:                                             ; preds = %.split.us.i.3
  %i.cl = tail call ptr @__errno_location() #24
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !17 ; 2 uses
  %.not.us.i.3 = icmp eq i32 %i.cm, 4
  br i1 %.not.us.i.3, label %bb.s, label %.split18.us.i

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1.us.i.3 = phi i64 [ %.014.us.i.3, %bb.r ], [ %i.ck, %bb.q ] ; 2 uses
  %i.cn = icmp ult i64 %.1.us.i.3, %i.s
  br i1 %i.cn, label %.split.us.i.3, label %.split.us.i.4, !llvm.loop !2

.split.us.i.4:                                    ; preds = %bb.s, %bb.v
  %.014.us.i.4 = phi i64 [ %.1.us.i.4, %bb.v ], [ 0, %bb.s ] ; 4 uses
  %i.co = sub i64 %i.s, %.014.us.i.4
  %i.cp = load ptr, ptr @con, align 8, !tbaa !35  ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !33
  %i.cs = getelementptr inbounds i8, ptr %2, i64 %.014.us.i.4
  %i.ct = call i64 %i.cr(ptr noundef %i.cp, ptr noundef nonnull %i.cs, i64 noundef %i.co) #21, !inline_history !39 ; 2 uses
  %i.cu = icmp eq i64 %i.ct, -1
  br i1 %i.cu, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.split.us.i.4
  %i.cv = add nsw i64 %i.ct, %.014.us.i.4
  br label %bb.v

bb.u:                                             ; preds = %.split.us.i.4
  %i.cw = tail call ptr @__errno_location() #24
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !17 ; 2 uses
  %.not.us.i.4 = icmp eq i32 %i.cx, 4
  br i1 %.not.us.i.4, label %bb.v, label %.split18.us.i

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1.us.i.4 = phi i64 [ %.014.us.i.4, %bb.u ], [ %i.cv, %bb.t ] ; 2 uses
  %i.cy = icmp ult i64 %.1.us.i.4, %i.s
  br i1 %i.cy, label %.split.us.i.4, label %.split.us.i.5, !llvm.loop !2

.split.us.i.5:                                    ; preds = %bb.v, %bb.y
  %.014.us.i.5 = phi i64 [ %.1.us.i.5, %bb.y ], [ 0, %bb.v ] ; 4 uses
  %i.cz = sub i64 %i.s, %.014.us.i.5
  %i.da = load ptr, ptr @con, align 8, !tbaa !35  ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !33
  %i.dd = getelementptr inbounds i8, ptr %2, i64 %.014.us.i.5
  %i.de = call i64 %i.dc(ptr noundef %i.da, ptr noundef nonnull %i.dd, i64 noundef %i.cz) #21, !inline_history !39 ; 2 uses
  %i.df = icmp eq i64 %i.de, -1
  br i1 %i.df, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.split.us.i.5
  %i.dg = add nsw i64 %i.de, %.014.us.i.5
  br label %bb.y

bb.x:                                             ; preds = %.split.us.i.5
  %i.dh = tail call ptr @__errno_location() #24
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !17 ; 2 uses
  %.not.us.i.5 = icmp eq i32 %i.di, 4
  br i1 %.not.us.i.5, label %bb.y, label %.split18.us.i

bb.y:                                             ; preds = %bb.x, %bb.w
  %.1.us.i.5 = phi i64 [ %.014.us.i.5, %bb.x ], [ %i.dg, %bb.w ] ; 2 uses
  %i.dj = icmp ult i64 %.1.us.i.5, %i.s
  br i1 %i.dj, label %.split.us.i.5, label %.split.us.i.6, !llvm.loop !2

.split.us.i.6:                                    ; preds = %bb.y, %bb.ab
  %.014.us.i.6 = phi i64 [ %.1.us.i.6, %bb.ab ], [ 0, %bb.y ] ; 4 uses
  %i.dk = sub i64 %i.s, %.014.us.i.6
  %i.dl = load ptr, ptr @con, align 8, !tbaa !35  ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !33
  %i.do = getelementptr inbounds i8, ptr %2, i64 %.014.us.i.6
  %i.dp = call i64 %i.dn(ptr noundef %i.dl, ptr noundef nonnull %i.do, i64 noundef %i.dk) #21, !inline_history !39 ; 2 uses
  %i.dq = icmp eq i64 %i.dp, -1
  br i1 %i.dq, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.split.us.i.6
  %i.dr = add nsw i64 %i.dp, %.014.us.i.6
  br label %bb.ab

bb.aa:                                            ; preds = %.split.us.i.6
  %i.ds = tail call ptr @__errno_location() #24
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !17 ; 2 uses
  %.not.us.i.6 = icmp eq i32 %i.dt, 4
  br i1 %.not.us.i.6, label %bb.ab, label %.split18.us.i

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.1.us.i.6 = phi i64 [ %.014.us.i.6, %bb.aa ], [ %i.dr, %bb.z ] ; 2 uses
  %i.du = icmp ult i64 %.1.us.i.6, %i.s
  br i1 %i.du, label %.split.us.i.6, label %.split.us.i.7, !llvm.loop !2

.split.us.i.7:                                    ; preds = %bb.ab, %bb.ae
  %.014.us.i.7 = phi i64 [ %.1.us.i.7, %bb.ae ], [ 0, %bb.ab ] ; 4 uses
  %i.dv = sub i64 %i.s, %.014.us.i.7
  %i.dw = load ptr, ptr @con, align 8, !tbaa !35  ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
end_hunk_0
