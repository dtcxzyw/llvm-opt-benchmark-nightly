Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_image?download=true
inline.NumInlined: 718
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 64
loop-unroll.NumUnrolled: 84
begin_hunk_0_@stbi__hdr_test:bb.a
  %i.ea = phi i8 [ 0, %bb.af ], [ %.pre.i.i10.4, %bb.ae ]
  %.sink.i.i.i12.4 = phi ptr [ %i.j, %bb.af ], [ %i.dz, %bb.ae ] ; 2 uses
  store ptr %.sink.i.i.i12.4, ptr %i.b, align 8, !tbaa !31
  store ptr %i.j, ptr %i.a, align 8, !tbaa !29
  br label %stbi__get8.exit.i13.4

bb.ag:                                            ; preds = %bb.ab
  %i.eb = getelementptr inbounds nuw i8, ptr %i.di, i64 1 ; 2 uses
  store ptr %i.eb, ptr %i.a, align 8, !tbaa !29
  %i.ec = load i8, ptr %i.di, align 1, !tbaa !37
  br label %stbi__get8.exit.i13.4

stbi__get8.exit.i13.4:                            ; preds = %bb.ag, %stbi__refill_buffer.exit.i.i11.4
  %i.ed = phi ptr [ %i.dg, %bb.ag ], [ %i.dq, %stbi__refill_buffer.exit.i.i11.4 ] ; 3 uses
  %i.ee = phi ptr [ %i.dh, %bb.ag ], [ %.sink.i.i.i12.4, %stbi__refill_buffer.exit.i.i11.4 ] ; 2 uses
  %i.ef = phi ptr [ %i.eb, %bb.ag ], [ %i.j, %stbi__refill_buffer.exit.i.i11.4 ] ; 3 uses
  %.0.i.i14.4 = phi i8 [ %i.ec, %bb.ag ], [ %i.ea, %stbi__refill_buffer.exit.i.i11.4 ]
  %.not8.i15.4 = icmp eq i8 %.0.i.i14.4, 66
  br i1 %.not8.i15.4, label %bb.ah, label %stbi__hdr_test_core.exit20

bb.ah:                                            ; preds = %stbi__get8.exit.i13.4
  %i.eg = icmp ult ptr %i.ef, %i.ee
  br i1 %i.eg, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eh = load i32, ptr %i.c, align 8, !tbaa !26
  %.not.i.i9.5 = icmp eq i32 %i.eh, 0
  br i1 %.not.i.i9.5, label %stbi__hdr_test_core.exit20, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ei = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.ej = load ptr, ptr %i.e, align 8, !tbaa !34
  %i.ek = load i32, ptr %i.g, align 4, !tbaa !35
  %i.el = tail call i32 %i.ei(ptr noundef %i.ej, ptr noundef nonnull %i.f, i32 noundef %i.ek) #37, !inline_history !197 ; 2 uses
  %i.em = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.en = load ptr, ptr %i.h, align 8, !tbaa !28  ; 2 uses
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = trunc i64 %i.eq to i32
  %i.es = load i32, ptr %i.i, align 8, !tbaa !27
  %i.et = add nsw i32 %i.es, %i.er
  store i32 %i.et, ptr %i.i, align 8, !tbaa !27
  %i.eu = icmp eq i32 %i.el, 0
  br i1 %i.eu, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ev = sext i32 %i.el to i64
  %i.ew = getelementptr inbounds i8, ptr %i.f, i64 %i.ev
  %.pre.i.i10.5 = load i8, ptr %i.f, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i.i11.5

bb.al:                                            ; preds = %bb.aj
  store i32 0, ptr %i.c, align 8, !tbaa !26
  store i8 0, ptr %i.f, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i.i11.5

stbi__refill_buffer.exit.i.i11.5:                 ; preds = %bb.al, %bb.ak
  %i.ex = phi i8 [ 0, %bb.al ], [ %.pre.i.i10.5, %bb.ak ]
  %.sink.i.i.i12.5 = phi ptr [ %i.j, %bb.al ], [ %i.ew, %bb.ak ] ; 2 uses
  store ptr %.sink.i.i.i12.5, ptr %i.b, align 8, !tbaa !31
  store ptr %i.j, ptr %i.a, align 8, !tbaa !29
  br label %stbi__get8.exit.i13.5

bb.am:                                            ; preds = %bb.ah
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ef, i64 1 ; 2 uses
  store ptr %i.ey, ptr %i.a, align 8, !tbaa !29
  %i.ez = load i8, ptr %i.ef, align 1, !tbaa !37
  br label %stbi__get8.exit.i13.5

stbi__get8.exit.i13.5:                            ; preds = %bb.am, %stbi__refill_buffer.exit.i.i11.5
  %i.fa = phi ptr [ %i.ed, %bb.am ], [ %i.en, %stbi__refill_buffer.exit.i.i11.5 ] ; 3 uses
  %i.fb = phi ptr [ %i.ee, %bb.am ], [ %.sink.i.i.i12.5, %stbi__refill_buffer.exit.i.i11.5 ]
  %i.fc = phi ptr [ %i.ey, %bb.am ], [ %i.j, %stbi__refill_buffer.exit.i.i11.5 ] ; 3 uses
  %.0.i.i14.5 = phi i8 [ %i.ez, %bb.am ], [ %i.ex, %stbi__refill_buffer.exit.i.i11.5 ]
  %.not8.i15.5 = icmp eq i8 %.0.i.i14.5, 69
  br i1 %.not8.i15.5, label %bb.an, label %stbi__hdr_test_core.exit20

bb.an:                                            ; preds = %stbi__get8.exit.i13.5
  %i.fd = icmp ult ptr %i.fc, %i.fb
  br i1 %i.fd, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fe = load i32, ptr %i.c, align 8, !tbaa !26
  %.not.i.i9.6 = icmp eq i32 %i.fe, 0
  br i1 %.not.i.i9.6, label %stbi__hdr_test_core.exit20, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ff = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.fg = load ptr, ptr %i.e, align 8, !tbaa !34
  %i.fh = load i32, ptr %i.g, align 4, !tbaa !35
  %i.fi = tail call i32 %i.ff(ptr noundef %i.fg, ptr noundef nonnull %i.f, i32 noundef %i.fh) #37, !inline_history !197 ; 2 uses
  %i.fj = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.fk = load ptr, ptr %i.h, align 8, !tbaa !28  ; 2 uses
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = sub i64 %i.fl, %i.fm
  %i.fo = trunc i64 %i.fn to i32
  %i.fp = load i32, ptr %i.i, align 8, !tbaa !27
  %i.fq = add nsw i32 %i.fp, %i.fo
  store i32 %i.fq, ptr %i.i, align 8, !tbaa !27
  %i.fr = icmp eq i32 %i.fi, 0
  br i1 %i.fr, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fs = sext i32 %i.fi to i64
  %i.ft = getelementptr inbounds i8, ptr %i.f, i64 %i.fs
  %.pre.i.i10.6 = load i8, ptr %i.f, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i.i11.6

bb.ar:                                            ; preds = %bb.ap
  store i32 0, ptr %i.c, align 8, !tbaa !26
  store i8 0, ptr %i.f, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i.i11.6

stbi__refill_buffer.exit.i.i11.6:                 ; preds = %bb.ar, %bb.aq
  %i.fu = phi i8 [ 0, %bb.ar ], [ %.pre.i.i10.6, %bb.aq ]
  %.sink.i.i.i12.6 = phi ptr [ %i.j, %bb.ar ], [ %i.ft, %bb.aq ]
  store ptr %.sink.i.i.i12.6, ptr %i.b, align 8, !tbaa !31
  store ptr %i.j, ptr %i.a, align 8, !tbaa !29
  br label %stbi__get8.exit.i13.6

bb.as:                                            ; preds = %bb.an
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fc, i64 1
  store ptr %i.fv, ptr %i.a, align 8, !tbaa !29
  %i.fw = load i8, ptr %i.fc, align 1, !tbaa !37
  br label %stbi__get8.exit.i13.6

stbi__get8.exit.i13.6:                            ; preds = %bb.as, %stbi__refill_buffer.exit.i.i11.6
  %i.fx = phi ptr [ %i.fa, %bb.as ], [ %i.fk, %stbi__refill_buffer.exit.i.i11.6 ]
  %.0.i.i14.6 = phi i8 [ %i.fw, %bb.as ], [ %i.fu, %stbi__refill_buffer.exit.i.i11.6 ]
  %.not8.i15.6 = icmp eq i8 %.0.i.i14.6, 10
  %spec.select = zext i1 %.not8.i15.6 to i32
  br label %stbi__hdr_test_core.exit20

bb.at:                                            ; preds = %bb.i
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 2 uses
  store ptr %i.fy, ptr %i.a, align 8, !tbaa !29
  %i.fz = load i8, ptr %i.ao, align 1, !tbaa !37
  br label %stbi__get8.exit.i13

bb.au:                                            ; preds = %bb.i
  %i.ga = load i32, ptr %i.c, align 8, !tbaa !26
  %.not.i.i9 = icmp eq i32 %i.ga, 0
  br i1 %.not.i.i9, label %stbi__hdr_test_core.exit20, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gb = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.gc = load ptr, ptr %i.e, align 8, !tbaa !34
  %i.gd = load i32, ptr %i.g, align 4, !tbaa !35
  %i.ge = tail call i32 %i.gb(ptr noundef %i.gc, ptr noundef nonnull %i.f, i32 noundef %i.gd) #37, !inline_history !197 ; 2 uses
  %i.gf = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.gg = load ptr, ptr %i.h, align 8, !tbaa !28  ; 2 uses
  %i.gh = ptrtoint ptr %i.gf to i64
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = sub i64 %i.gh, %i.gi
  %i.gk = trunc i64 %i.gj to i32
  %i.gl = load i32, ptr %i.i, align 8, !tbaa !27
  %i.gm = add nsw i32 %i.gl, %i.gk
  store i32 %i.gm, ptr %i.i, align 8, !tbaa !27
  %i.gn = icmp eq i32 %i.ge, 0
  br i1 %i.gn, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i32 0, ptr %i.c, align 8, !tbaa !26
  store i8 0, ptr %i.f, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i.i11

bb.ax:                                            ; preds = %bb.av
  %i.go = sext i32 %i.ge to i64
  %i.gp = getelementptr inbounds i8, ptr %i.f, i64 %i.go
  %.pre.i.i10 = load i8, ptr %i.f, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i.i11

stbi__refill_buffer.exit.i.i11:                   ; preds = %bb.ax, %bb.aw
  %i.gq = phi i8 [ 0, %bb.aw ], [ %.pre.i.i10, %bb.ax ]
  %.sink.i.i.i12 = phi ptr [ %i.j, %bb.aw ], [ %i.gp, %bb.ax ] ; 2 uses
  store ptr %.sink.i.i.i12, ptr %i.b, align 8, !tbaa !31
  store ptr %i.j, ptr %i.a, align 8, !tbaa !29
  br label %stbi__get8.exit.i13

stbi__get8.exit.i13:                              ; preds = %stbi__refill_buffer.exit.i.i11, %bb.at
  %i.gr = phi ptr [ %i.ao, %bb.at ], [ %i.gg, %stbi__refill_buffer.exit.i.i11 ] ; 3 uses
  %i.gs = phi ptr [ %i.aq, %bb.at ], [ %.sink.i.i.i12, %stbi__refill_buffer.exit.i.i11 ] ; 2 uses
  %i.gt = phi ptr [ %i.fy, %bb.at ], [ %i.j, %stbi__refill_buffer.exit.i.i11 ] ; 3 uses
  %.0.i.i14 = phi i8 [ %i.fz, %bb.at ], [ %i.gq, %stbi__refill_buffer.exit.i.i11 ]
  %.not8.i15 = icmp eq i8 %.0.i.i14, 35
  br i1 %.not8.i15, label %bb.j, label %stbi__hdr_test_core.exit20

stbi__hdr_test_core.exit20:                       ; preds = %stbi__get8.exit.i13.6, %stbi__get8.exit.i13, %stbi__get8.exit.i13.1, %stbi__get8.exit.i13.2, %stbi__get8.exit.i13.3, %stbi__get8.exit.i13.4, %stbi__get8.exit.i13.5, %bb.k, %bb.q, %bb.w, %bb.ac, %bb.ai, %bb.ao, %bb.au, %stbi__hdr_test_core.exit
  %storemerge61 = phi ptr [ %i.am, %stbi__hdr_test_core.exit ], [ %i.fx, %stbi__get8.exit.i13.6 ], [ %i.fa, %stbi__get8.exit.i13.5 ], [ %i.ed, %stbi__get8.exit.i13.4 ], [ %i.dg, %stbi__get8.exit.i13.3 ], [ %i.cj, %stbi__get8.exit.i13.2 ], [ %i.bm, %stbi__get8.exit.i13.1 ], [ %i.gr, %stbi__get8.exit.i13 ], [ %i.fa, %bb.ao ], [ %i.gr, %bb.k ], [ %i.bm, %bb.q ], [ %i.cj, %bb.w ], [ %i.dg, %bb.ac ], [ %i.ed, %bb.ai ], [ %i.ao, %bb.au ]
  %storemerge.in = phi ptr [ %i.an, %stbi__hdr_test_core.exit ], [ %i.ap, %stbi__get8.exit.i13.6 ], [ %i.ap, %stbi__get8.exit.i13.5 ], [ %i.ap, %stbi__get8.exit.i13.4 ], [ %i.ap, %stbi__get8.exit.i13.3 ], [ %i.ap, %stbi__get8.exit.i13.2 ], [ %i.ap, %stbi__get8.exit.i13.1 ], [ %i.ap, %stbi__get8.exit.i13 ], [ %i.ap, %bb.ao ], [ %i.ap, %bb.k ], [ %i.ap, %bb.q ], [ %i.ap, %bb.w ], [ %i.ap, %bb.ac ], [ %i.ap, %bb.ai ], [ %i.ap, %bb.au ]
  %.0 = phi i32 [ 1, %stbi__hdr_test_core.exit ], [ %spec.select, %stbi__get8.exit.i13.6 ], [ 0, %stbi__get8.exit.i13.5 ], [ 0, %stbi__get8.exit.i13.4 ], [ 0, %stbi__get8.exit.i13.3 ], [ 0, %stbi__get8.exit.i13.2 ], [ 0, %stbi__get8.exit.i13.1 ], [ 0, %stbi__get8.exit.i13 ], [ 0, %bb.ao ], [ 0, %bb.k ], [ 0, %bb.q ], [ 0, %bb.w ], [ 0, %bb.ac ], [ 0, %bb.ai ], [ 0, %bb.au ]
  %storemerge = load ptr, ptr %storemerge.in, align 8, !tbaa !30
  store ptr %storemerge61, ptr %i.a, align 8, !tbaa !29
  store ptr %storemerge, ptr %i.b, align 8, !tbaa !31
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @stbi__hdr_load(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef %4, ptr nofree readnone captures(none) %5) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 17 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca [4 x i8], align 1                 ; 2 uses
  %i.d = alloca [4 x i8], align 1                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %i.e = call ptr @stbi__hdr_gettoken(ptr noundef %0, ptr noundef nonnull %i.a) ; 0 uses
  %i.f = load i64, ptr %i.a, align 16
  %i.g = xor i64 %i.f, 5638868765947084579
  %i.h = getelementptr i8, ptr %i.a, i64 3
  %i.i = load i64, ptr %i.h, align 1
  %i.j = xor i64 %i.i, 19495776774865985
  %i.k = or i64 %i.g, %i.j
  %i.l = icmp ne i64 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load i32, ptr %i.a, align 16
  %i.o = xor i32 %i.n, 1196572451
  %i.p = getelementptr i8, ptr %i.a, i64 3
  %i.q = load i32, ptr %i.p, align 1
  %i.r = xor i32 %i.q, 4538951
  %i.s = or i32 %i.o, %i.r
  %i.t = icmp ne i32 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %.not140 = icmp eq i32 %i.u, 0
  br i1 %.not140, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.103, ptr %i.v, align 8, !tbaa !39
  br label %._crit_edge222.thread

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.w = call ptr @stbi__hdr_gettoken(ptr noundef %0, ptr noundef nonnull %i.a) ; 0 uses
  %i.x = load i8, ptr %i.a, align 16, !tbaa !37
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.0125205 = phi i32 [ %spec.select, %.lr.ph ], [ 0, %bb.d ]
  %i.z = load i128, ptr %i.a, align 16
  %i.aa = xor i128 %i.z, 144150481438637697380701673535474650950
  %i.ab = getelementptr i8, ptr %i.a, i64 7
  %i.ac = load i128, ptr %i.ab, align 1
  %i.ad = xor i128 %i.ac, 526417854750532455411190335003243059
  %i.ae = or i128 %i.aa, %i.ad
  %i.af = icmp ne i128 %i.ae, 0
  %i.ag = zext i1 %i.af to i32
  %i.ah = icmp eq i32 %i.ag, 0
  %spec.select = select i1 %i.ah, i32 1, i32 %.0125205 ; 2 uses
  %i.ai = call ptr @stbi__hdr_gettoken(ptr noundef %0, ptr noundef nonnull %i.a) ; 0 uses
  %i.aj = load i8, ptr %i.a, align 16, !tbaa !37
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.al = icmp eq i32 %spec.select, 0
  br i1 %i.al, label %._crit_edge.thread, label %bb.e

._crit_edge.thread:                               ; preds = %bb.d, %._crit_edge
  %i.am = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.105, ptr %i.am, align 8, !tbaa !39
  br label %._crit_edge222.thread

bb.e:                                             ; preds = %._crit_edge
  %i.an = call ptr @stbi__hdr_gettoken(ptr noundef %0, ptr noundef nonnull %i.a) ; 0 uses
  %i.ao = load i16, ptr %i.a, align 16
  %i.ap = xor i16 %i.ao, 22829
  %i.aq = getelementptr i8, ptr %i.a, i64 2
  %i.ar = load i8, ptr %i.aq, align 2
  %i.as = zext i8 %i.ar to i16
  %i.at = xor i16 %i.as, 32
  %i.au = or i16 %i.ap, %i.at
  %i.av = icmp ne i16 %i.au, 0
  %i.aw = zext i1 %i.av to i32
  %.not142 = icmp eq i32 %i.aw, 0
  br i1 %.not142, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.107, ptr %i.ax, align 8, !tbaa !39
  br label %._crit_edge222.thread

bb.g:                                             ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 2 uses
  store ptr %i.ay, ptr %i.b, align 8, !tbaa !39
  %i.az = call i64 @strtol(ptr noundef nonnull %i.ay, ptr noundef nonnull %i.b, i32 noundef 10) #37 ; 2 uses
  %.promoted = load ptr, ptr %i.b, align 8, !tbaa !39
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %i.ba = phi ptr [ %i.bd, %bb.h ], [ %.promoted, %bb.g ] ; 4 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !37  ; 2 uses
  %i.bc = icmp eq i8 %i.bb, 32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 1 ; 2 uses
  br i1 %i.bc, label %bb.h, label %sub_0, !llvm.loop !198

sub_0:                                            ; preds = %bb.h
  %i.be = trunc i64 %i.az to i32                  ; 6 uses
  %.not224 = icmp eq i8 %i.bb, 43
  br i1 %.not224, label %sub_1, label %.tail.thread

sub_1:                                            ; preds = %sub_0
  %i.bf = load i8, ptr %i.bd, align 1
  %.not225 = icmp eq i8 %i.bf, 88
  br i1 %.not225, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = icmp eq i8 %i.bh, 32
  br i1 %i.bi, label %bb.i, label %.tail.thread

.tail.thread:                                     ; preds = %sub_1, %sub_0, %.tail
  %i.bj = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.107, ptr %i.bj, align 8, !tbaa !39
  br label %._crit_edge222.thread

bb.i:                                             ; preds = %.tail
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 3 ; 2 uses
  store ptr %i.bk, ptr %i.b, align 8, !tbaa !39
  %i.bl = call i64 @strtol(ptr noundef nonnull captures(none) %i.bk, ptr noundef null, i32 noundef 10) #37 ; 4 uses
  %i.bm = trunc i64 %i.bl to i32                  ; 10 uses
  %i.bn = icmp sgt i32 %i.be, 16777216
  br i1 %i.bn, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bo = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.28, ptr %i.bo, align 8, !tbaa !39
  br label %._crit_edge222.thread

bb.k:                                             ; preds = %bb.i
  %i.bp = icmp sgt i32 %i.bm, 16777216
  br i1 %i.bp, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bq = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.28, ptr %i.bq, align 8, !tbaa !39
  br label %._crit_edge222.thread

bb.m:                                             ; preds = %bb.k
  store i32 %i.bm, ptr %1, align 4, !tbaa !40
  store i32 %i.be, ptr %2, align 4, !tbaa !40
  %.not144 = icmp eq ptr %3, null
  br i1 %.not144, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 3, ptr %3, align 4, !tbaa !40
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.br = icmp eq i32 %4, 0
  %spec.store.select = select i1 %i.br, i32 3, i32 %4 ; 9 uses
  %i.bs = call i32 @stbi__mad4sizes_valid(i32 noundef %i.bm, i32 noundef %i.be, i32 noundef %spec.store.select, i32 noundef 4, i32 noundef 0)
  %.not145 = icmp eq i32 %i.bs, 0
  br i1 %.not145, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bt = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.28, ptr %i.bt, align 8, !tbaa !39
  br label %._crit_edge222.thread

bb.q:                                             ; preds = %bb.o
  %i.bu = call ptr @stbi__malloc_mad4(i32 noundef %i.bm, i32 noundef %i.be, i32 noundef %spec.store.select, i32 noundef 4, i32 noundef 0) ; 11 uses
  %.not146 = icmp eq ptr %i.bu, null
  br i1 %.not146, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bv = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.bv, align 8, !tbaa !39
  br label %._crit_edge222.thread

bb.s:                                             ; preds = %bb.q
  %i.bw = add i32 %i.bm, -32768
  %or.cond = icmp ult i32 %i.bw, -32760
  br i1 %or.cond, label %bb.t, label %.preheader183

.preheader183:                                    ; preds = %bb.s
  %i.bx = icmp sgt i32 %i.be, 0
  br i1 %i.bx, label %.lr.ph221, label %._crit_edge222.thread

.lr.ph221:                                        ; preds = %.preheader183
  %i.by = shl i64 %i.bl, 2
  %i.bz = and i64 %i.by, 4294967292
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 11 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 12 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 7 uses
  %i.ck = icmp slt i32 %spec.store.select, 3
  %i.cl = sext i32 %spec.store.select to i64
end_hunk_0
begin_hunk_1_@stbi__hdr_load:bb.a
  %i.gm = load ptr, ptr %i.ch, align 8, !tbaa !28
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = ptrtoint ptr %i.gm to i64
  %i.gp = sub i64 %i.gn, %i.go
  %i.gq = trunc i64 %i.gp to i32
  %i.gr = load i32, ptr %i.ci, align 8, !tbaa !27
  %i.gs = add nsw i32 %i.gr, %i.gq
  store i32 %i.gs, ptr %i.ci, align 8, !tbaa !27
  %i.gt = icmp eq i32 %i.gk, 0
  br i1 %i.gt, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 0, ptr %i.cc, align 8, !tbaa !26
  store i8 0, ptr %i.cf, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i162

bb.au:                                            ; preds = %bb.as
  %i.gu = sext i32 %i.gk to i64
  %i.gv = getelementptr inbounds i8, ptr %i.cf, i64 %i.gu
  %.pre.i161 = load i8, ptr %i.cf, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i162

stbi__refill_buffer.exit.i162:                    ; preds = %bb.au, %bb.at
  %i.gw = phi i8 [ 0, %bb.at ], [ %.pre.i161, %bb.au ]
  %.sink.i.i163 = phi ptr [ %i.cj, %bb.at ], [ %i.gv, %bb.au ]
  store ptr %.sink.i.i163, ptr %i.cb, align 8, !tbaa !31
  store ptr %i.cj, ptr %i.ca, align 8, !tbaa !29
  br label %stbi__get8.exit165

stbi__get8.exit165:                               ; preds = %bb.aq, %bb.ar, %stbi__refill_buffer.exit.i162
  %.0.i164 = phi i8 [ %i.gf, %bb.aq ], [ %i.gw, %stbi__refill_buffer.exit.i162 ], [ 0, %bb.ar ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.gx = shl nsw i64 %indvars.iv, 2
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.gx
  store i8 %.0.i164, ptr %gep, align 1, !tbaa !37
  %i.gy = add nuw nsw i32 %.1208, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.gy, %i.er
  br i1 %exitcond.not, label %.loopexit.loopexit227, label %.preheader179, !llvm.loop !202

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph211
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.loopexit, label %.lr.ph211.epil.preheader

.lr.ph211.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph211.preheader
  %indvars.iv256.epil.init = phi i64 [ %i.fq, %.lr.ph211.preheader ], [ %indvars.iv.next257.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod379 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod379)
  br label %.lr.ph211.epil

.lr.ph211.epil:                                   ; preds = %.lr.ph211.epil, %.lr.ph211.epil.preheader
  %indvars.iv256.epil = phi i64 [ %indvars.iv256.epil.init, %.lr.ph211.epil.preheader ], [ %indvars.iv.next257.epil, %.lr.ph211.epil ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.lr.ph211.epil.preheader ], [ %epil.iter.next, %.lr.ph211.epil ]
  %indvars.iv.next257.epil = add nsw i64 %indvars.iv256.epil, 1 ; 2 uses
  %i.gz = shl nsw i64 %indvars.iv256.epil, 2
  %gep323.epil = getelementptr i8, ptr %invariant.gep322, i64 %i.gz
  store i8 %.0.i158, ptr %gep323.epil, align 1, !tbaa !37
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.loopexit, label %.lr.ph211.epil, !llvm.loop !203

.loopexit.loopexit:                               ; preds = %.lr.ph211.epil, %.loopexit.loopexit.unr-lcssa
  %indvars.iv.next257.lcssa = phi i64 [ %indvars.iv.next257.3, %.loopexit.loopexit.unr-lcssa ], [ %indvars.iv.next257.epil, %.lr.ph211.epil ]
  %i.ha = trunc nsw i64 %indvars.iv.next257.lcssa to i32
  br label %.loopexit

.loopexit.loopexit227:                            ; preds = %stbi__get8.exit165
  %i.hb = trunc nsw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit227, %.loopexit.loopexit, %.preheader
  %.5 = phi i32 [ %i.ha, %.loopexit.loopexit ], [ %.2121213, %.preheader ], [ %i.hb, %.loopexit.loopexit227 ] ; 2 uses
  %i.hc = sub nsw i32 %i.bm, %.5                  ; 2 uses
  %i.hd = icmp slt i32 %i.hc, 1
  br i1 %i.hd, label %..critedge_crit_edge, label %bb.ac, !llvm.loop !204

..critedge_crit_edge:                             ; preds = %.loopexit
  %indvars.iv.next261 = add nuw nsw i64 %indvars.iv260, 1 ; 2 uses
  %exitcond263.not = icmp eq i64 %indvars.iv.next261, 4
  br i1 %exitcond263.not, label %.lr.ph217, label %.preheader181, !llvm.loop !205

bb.av:                                            ; preds = %.lr.ph217, %stbi__hdr_convert.exit
  %indvars.iv264 = phi i64 [ 0, %.lr.ph217 ], [ %indvars.iv.next265, %stbi__hdr_convert.exit ] ; 3 uses
  %i.he = add nuw nsw i64 %indvars.iv264, %i.dr
  %i.hf = mul nsw i64 %i.he, %i.cl
  %i.hg = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.hf ; 11 uses
  %i.hh = shl nuw nsw i64 %indvars.iv264, 2
  %i.hi = getelementptr inbounds nuw i8, ptr %.1124, i64 %i.hh ; 6 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 3
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !37  ; 2 uses
  %.not.i166 = icmp eq i8 %i.hk, 0
  br i1 %.not.i166, label %bb.bc, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hl = zext i8 %i.hk to i32
  %i.hm = add nsw i32 %i.hl, -136
  %i.hn = call double @ldexp(double noundef 1.000000e+00, i32 noundef %i.hm) #37
  %i.ho = fptrunc double %i.hn to float           ; 4 uses
  %i.hp = load i8, ptr %i.hi, align 1, !tbaa !37  ; 2 uses
  br i1 %i.ck, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.hq = zext i8 %i.hp to i32
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hi, i64 1
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !37
  %i.ht = zext i8 %i.hs to i32
  %i.hu = add nuw nsw i32 %i.ht, %i.hq
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hi, i64 2
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !37
  %i.hx = zext i8 %i.hw to i32
  %i.hy = add nuw nsw i32 %i.hu, %i.hx
  %i.hz = uitofp nneg i32 %i.hy to float
  %i.ia = fmul float %i.ho, %i.hz
  %i.ib = fdiv float %i.ia, 3.000000e+00
  store float %i.ib, ptr %i.hg, align 4, !tbaa !86
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.ic = uitofp i8 %i.hp to float
  %i.id = fmul float %i.ho, %i.ic
  store float %i.id, ptr %i.hg, align 4, !tbaa !86
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hi, i64 1
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !37
  %i.ig = uitofp i8 %i.if to float
  %i.ih = fmul float %i.ho, %i.ig
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  store float %i.ih, ptr %i.ii, align 4, !tbaa !86
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hi, i64 2
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !37
  %i.il = uitofp i8 %i.ik to float
  %i.im = fmul float %i.ho, %i.il
  %i.in = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  store float %i.im, ptr %i.in, align 4, !tbaa !86
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  switch i32 %4, label %stbi__hdr_convert.exit [
    i32 2, label %bb.ba
    i32 4, label %bb.bb
  ]

bb.ba:                                            ; preds = %bb.az
  %i.io = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  store float 1.000000e+00, ptr %i.io, align 4, !tbaa !86
  br label %stbi__hdr_convert.exit

bb.bb:                                            ; preds = %bb.az
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hg, i64 12
  store float 1.000000e+00, ptr %i.ip, align 4, !tbaa !86
  br label %stbi__hdr_convert.exit

bb.bc:                                            ; preds = %bb.av
  switch i32 %spec.store.select, label %stbi__hdr_convert.exit [
    i32 4, label %bb.bd
    i32 3, label %bb.be
    i32 2, label %bb.bf
    i32 1, label %bb.bg
  ]

bb.bd:                                            ; preds = %bb.bc
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hg, i64 12
  store float 1.000000e+00, ptr %i.iq, align 4, !tbaa !86
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  store float 0.000000e+00, ptr %i.ir, align 4, !tbaa !86
  store <2 x float> zeroinitializer, ptr %i.hg, align 4, !tbaa !86
  br label %stbi__hdr_convert.exit

bb.bf:                                            ; preds = %bb.bc
  %i.is = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  store float 1.000000e+00, ptr %i.is, align 4, !tbaa !86
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.bc
  store float 0.000000e+00, ptr %i.hg, align 4, !tbaa !86
  br label %stbi__hdr_convert.exit

stbi__hdr_convert.exit:                           ; preds = %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.be, %bb.bg
  %indvars.iv.next265 = add nuw nsw i64 %indvars.iv264, 1 ; 2 uses
  %exitcond267.not = icmp eq i64 %indvars.iv.next265, %wide.trip.count
  br i1 %exitcond267.not, label %._crit_edge218, label %bb.av, !llvm.loop !206

._crit_edge218:                                   ; preds = %stbi__hdr_convert.exit
  %indvars.iv.next269 = add nuw nsw i64 %indvars.iv268, 1 ; 2 uses
  %exitcond272.not = icmp eq i64 %indvars.iv.next269, %wide.trip.count271
  br i1 %exitcond272.not, label %._crit_edge222, label %bb.x, !llvm.loop !207

._crit_edge222:                                   ; preds = %._crit_edge218
  call void @free(ptr noundef nonnull %.1124) #37
  br label %._crit_edge222.thread

._crit_edge222.thread:                            ; preds = %.preheader183, %bb.ao, %.thread, %bb.t, %._crit_edge222, %stbi__malloc_mad2.exit.thread, %bb.aa, %bb.r, %bb.p, %bb.l, %bb.j, %.tail.thread, %bb.f, %._crit_edge.thread, %bb.c
  %.3130 = phi ptr [ null, %bb.c ], [ null, %bb.f ], [ null, %.tail.thread ], [ null, %bb.j ], [ null, %bb.l ], [ null, %._crit_edge.thread ], [ null, %bb.aa ], [ %i.bu, %bb.t ], [ null, %stbi__malloc_mad2.exit.thread ], [ null, %bb.r ], [ null, %bb.p ], [ null, %bb.ao ], [ %i.bu, %._crit_edge222 ], [ null, %.thread ], [ %i.bu, %.preheader183 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  ret ptr %.3130
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @stbi__hdr_to_ldr(ptr noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #16 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = or i32 %2, %1
  %or.cond.not.i.i.i = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not.i.i.i, label %bb.c, label %stbi__malloc_mad3.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.b = icmp eq i32 %2, 0
  br i1 %i.b, label %stbi__mul2sizes_valid.exit.thread16.i.i, label %stbi__mul2sizes_valid.exit.i.i

stbi__mul2sizes_valid.exit.i.i:                   ; preds = %bb.c
  %i.c = udiv i32 2147483647, %2
  %.not24.i.i = icmp sgt i32 %1, %i.c
  br i1 %.not24.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__mul2sizes_valid.exit.thread16.i.i

stbi__mul2sizes_valid.exit.thread16.i.i:          ; preds = %stbi__mul2sizes_valid.exit.i.i, %bb.c
  %i.d = mul nuw nsw i32 %2, %1                   ; 7 uses
  %i.e = or i32 %3, %i.d
  %or.cond.not.i10.i.i = icmp sgt i32 %i.e, -1
  br i1 %or.cond.not.i10.i.i, label %bb.d, label %stbi__malloc_mad3.exit.thread

bb.d:                                             ; preds = %stbi__mul2sizes_valid.exit.thread16.i.i
  %i.f = icmp eq i32 %3, 0
  br i1 %i.f, label %stbi__malloc_mad3.exit, label %stbi__mul2sizes_valid.exit12.i.i

stbi__mul2sizes_valid.exit12.i.i:                 ; preds = %bb.d
  %i.g = udiv i32 2147483647, %3
  %.not.i.i = icmp sgt i32 %i.d, %i.g
  br i1 %.not.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__malloc_mad3.exit

stbi__malloc_mad3.exit:                           ; preds = %bb.d, %stbi__mul2sizes_valid.exit12.i.i
  %i.h = mul nuw nsw i32 %i.d, %3
  %i.i = sext i32 %i.h to i64
  %i.j = tail call noalias noundef ptr @malloc(i64 noundef %i.i) #38 ; 6 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %stbi__malloc_mad3.exit.thread, label %bb.e

stbi__malloc_mad3.exit.thread:                    ; preds = %bb.b, %stbi__mul2sizes_valid.exit.i.i, %stbi__mul2sizes_valid.exit12.i.i, %stbi__mul2sizes_valid.exit.thread16.i.i, %stbi__malloc_mad3.exit
  tail call void @free(ptr noundef nonnull %0) #37
  %i.l = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.l, align 8, !tbaa !39
  br label %bb.i

bb.e:                                             ; preds = %stbi__malloc_mad3.exit
  %i.m = and i32 %3, 1
  %sext = add i32 %3, -1
  %.046 = add i32 %sext, %i.m                     ; 4 uses
  %i.n = icmp sgt i32 %i.d, 0
  br i1 %i.n, label %.preheader.lr.ph, label %._crit_edge55

.preheader.lr.ph:                                 ; preds = %bb.e
  %i.o = icmp sgt i32 %.046, 0
  %i.p = load float, ptr @stbi__h2l_scale_i, align 4
  %i.q = load float, ptr @stbi__h2l_gamma_i, align 4
  %i.r = fpext float %i.q to double
  br i1 %i.o, label %.preheader.us.preheader, label %.preheader.lr.ph.split

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.s = sext i32 %3 to i64
  %wide.trip.count66 = zext nneg i32 %i.d to i64
  %wide.trip.count61 = zext nneg i32 %.046 to i64
  %i.t = icmp slt i32 %.046, %3
  %i.u = zext nneg i32 %.046 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.h
  %indvars.iv63 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next64, %bb.h ] ; 2 uses
  %i.v = mul nuw nsw i64 %indvars.iv63, %i.s      ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.preheader.us, %bb.f
  %indvars.iv58 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next59, %bb.f ] ; 2 uses
  %i.w = add nsw i64 %indvars.iv58, %i.v          ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %0, i64 %i.w
  %i.y = load float, ptr %i.x, align 4, !tbaa !86
  %i.z = fmul float %i.y, %i.p
  %i.aa = fpext float %i.z to double
  %i.ab = tail call double @pow(double noundef %i.aa, double noundef %i.r) #37
  %i.ac = fptrunc double %i.ab to float
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.ac, float 2.550000e+02, float 5.000000e-01) ; 2 uses
  %i.ae = fcmp olt float %i.ad, 0.000000e+00
  %spec.store.select.us = select i1 %i.ae, float 0.000000e+00, float %i.ad ; 2 uses
  %i.af = fcmp ogt float %spec.store.select.us, 2.550000e+02
  %spec.store.select2.us = select i1 %i.af, float 2.550000e+02, float %spec.store.select.us
  %i.ag = fptosi float %spec.store.select2.us to i32
  %i.ah = trunc i32 %i.ag to i8
  %i.ai = getelementptr inbounds i8, ptr %i.j, i64 %i.w
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !37
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 2 uses
  %exitcond62.not = icmp eq i64 %indvars.iv.next59, %wide.trip.count61
  br i1 %exitcond62.not, label %._crit_edge.us, label %bb.f, !llvm.loop !208

bb.g:                                             ; preds = %._crit_edge.us
  %i.aj = add nsw i64 %i.v, %i.u                  ; 2 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %0, i64 %i.aj
  %i.al = load float, ptr %i.ak, align 4, !tbaa !86
  %i.am = tail call float @llvm.fmuladd.f32(float %i.al, float 2.550000e+02, float 5.000000e-01) ; 2 uses
  %i.an = fcmp olt float %i.am, 0.000000e+00
  %spec.store.select1.us = select i1 %i.an, float 0.000000e+00, float %i.am ; 2 uses
  %i.ao = fcmp ogt float %spec.store.select1.us, 2.550000e+02
  %spec.store.select3.us = select i1 %i.ao, float 2.550000e+02, float %spec.store.select1.us
  %i.ap = fptosi float %spec.store.select3.us to i32
  %i.aq = trunc i32 %i.ap to i8
  %i.ar = getelementptr inbounds i8, ptr %i.j, i64 %i.aj
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !37
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.us
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %exitcond67.not = icmp eq i64 %indvars.iv.next64, %wide.trip.count66
  br i1 %exitcond67.not, label %._crit_edge55, label %.preheader.us, !llvm.loop !209

._crit_edge.us:                                   ; preds = %bb.f
  br i1 %i.t, label %bb.g, label %bb.h

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.as = icmp sgt i32 %3, 0
  br i1 %i.as, label %.preheader.preheader, label %._crit_edge55

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %i.at = zext nneg i32 %3 to i64
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 3 uses
  %min.iters.check = icmp ugt i32 %i.d, 3
  %ident.check.not = icmp eq i32 %3, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.ph, label %.preheader.preheader75

vector.ph:                                        ; preds = %.preheader.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  %wide.load = load <4 x float>, ptr %i.au, align 4, !tbaa !86
  %i.av = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.aw = fcmp olt <4 x float> %i.av, zeroinitializer
  %i.ax = select <4 x i1> %i.aw, <4 x float> zeroinitializer, <4 x float> %i.av ; 2 uses
  %i.ay = fcmp ogt <4 x float> %i.ax, splat (float 2.550000e+02)
  %i.az = select <4 x i1> %i.ay, <4 x float> splat (float 2.550000e+02), <4 x float> %i.ax
  %i.ba = fptosi <4 x float> %i.az to <4 x i32>
  %i.bb = trunc <4 x i32> %i.ba to <4 x i8>
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 %index
  store <4 x i8> %i.bb, ptr %i.bc, align 1, !tbaa !37
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !210

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge55, label %.preheader.preheader75

.preheader.preheader75:                           ; preds = %.preheader.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader75, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %indvars.iv.ph, %.preheader.preheader75 ] ; 2 uses
  %i.be = mul nuw nsw i64 %indvars.iv, %i.at      ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.be
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !86
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.bg, float 2.550000e+02, float 5.000000e-01) ; 2 uses
  %i.bi = fcmp olt float %i.bh, 0.000000e+00
  %spec.store.select1 = select i1 %i.bi, float 0.000000e+00, float %i.bh ; 2 uses
  %i.bj = fcmp ogt float %spec.store.select1, 2.550000e+02
  %spec.store.select3 = select i1 %i.bj, float 2.550000e+02, float %spec.store.select1
  %i.bk = fptosi float %spec.store.select3 to i32
  %i.bl = trunc i32 %i.bk to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.be
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge55, label %.preheader, !llvm.loop !211

._crit_edge55:                                    ; preds = %.preheader, %bb.h, %middle.block, %.preheader.lr.ph.split, %bb.e
  tail call void @free(ptr noundef nonnull %0) #37
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %._crit_edge55, %stbi__malloc_mad3.exit.thread
  %.0 = phi ptr [ null, %stbi__malloc_mad3.exit.thread ], [ %i.j, %._crit_edge55 ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @stbi__tga_test(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 21 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31   ; 3 uses
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  br label %stbi__get8.exit.sink.split

end_hunk_1
begin_hunk_2_@stbi__tga_load:bb.a
  br i1 %cmp.n, label %._crit_edge342, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !72

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.rn = add nuw nsw i64 %n.vec473, %i.rf
  %i.ro = add nsw i64 %n.vec473, %i.re
  %invariant.gep503 = getelementptr i8, ptr %i.hl, i64 %i.rf
  %invariant.gep505 = getelementptr i8, ptr %i.hl, i64 %i.re
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index474 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next477, %vec.epilog.vector.body ] ; 3 uses
  %gep504 = getelementptr i8, ptr %invariant.gep503, i64 %index474 ; 2 uses
  %wide.load475 = load <4 x i8>, ptr %gep504, align 1, !tbaa !37, !alias.scope !226, !noalias !227
  %gep506 = getelementptr i8, ptr %invariant.gep505, i64 %index474 ; 2 uses
  %wide.load476 = load <4 x i8>, ptr %gep506, align 1, !tbaa !37, !alias.scope !227
  store <4 x i8> %wide.load476, ptr %gep504, align 1, !tbaa !37, !alias.scope !226, !noalias !227
  store <4 x i8> %wide.load475, ptr %gep506, align 1, !tbaa !37, !alias.scope !227
  %index.next477 = add nuw i64 %index474, 4       ; 2 uses
  %i.rp = icmp eq i64 %index.next477, %n.vec473
  br i1 %i.rp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !221

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n478, label %._crit_edge342, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv391.ph = phi i64 [ %i.rf, %iter.check ], [ %i.rf, %vector.memcheck ], [ %i.ri, %vec.epilog.iter.check ], [ %i.rn, %vec.epilog.middle.block ]
  %indvars.iv387.ph = phi i64 [ %i.re, %iter.check ], [ %i.re, %vector.memcheck ], [ %i.rj, %vec.epilog.iter.check ], [ %i.ro, %vec.epilog.middle.block ]
  %.3190337.ph = phi i32 [ %i.qq, %iter.check ], [ %i.qq, %vector.memcheck ], [ %i.rb, %vec.epilog.iter.check ], [ %i.rd, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv391 = phi i64 [ %indvars.iv.next392, %vec.epilog.scalar.ph ], [ %indvars.iv391.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv387 = phi i64 [ %indvars.iv.next388, %vec.epilog.scalar.ph ], [ %indvars.iv387.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.3190337 = phi i32 [ %i.ru, %vec.epilog.scalar.ph ], [ %.3190337.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.hl, i64 %indvars.iv391 ; 2 uses
  %i.rr = load i8, ptr %i.rq, align 1, !tbaa !37
  %i.rs = getelementptr inbounds i8, ptr %i.hl, i64 %indvars.iv387 ; 2 uses
  %i.rt = load i8, ptr %i.rs, align 1, !tbaa !37
  store i8 %i.rt, ptr %i.rq, align 1, !tbaa !37
  store i8 %i.rr, ptr %i.rs, align 1, !tbaa !37
  %indvars.iv.next392 = add nuw nsw i64 %indvars.iv391, 1
  %indvars.iv.next388 = add nsw i64 %indvars.iv387, 1
  %i.ru = add nsw i32 %.3190337, -1
  %i.rv = icmp sgt i32 %.3190337, 1
  br i1 %i.rv, label %vec.epilog.scalar.ph, label %._crit_edge342, !llvm.loop !222

._crit_edge342:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.rw = add nuw nsw i32 %.3343, 1
  %indvars.iv.next386 = sub i32 %indvars.iv385, %i.qq
  %indvars.iv.next390 = add i32 %indvars.iv389, %i.qq
  %exitcond396.not = icmp eq i32 %.3343, %i.qu
  br i1 %exitcond396.not, label %.loopexit318, label %iter.check, !llvm.loop !223

.loopexit318:                                     ; preds = %._crit_edge342, %.lr.ph344, %._crit_edge
  %.not212 = icmp eq ptr %.0191, null
  br i1 %.not212, label %.loopexit325, label %bb.cj

bb.cj:                                            ; preds = %.loopexit318
  tail call void @free(ptr noundef nonnull %.0191) #37
  br label %.loopexit325

.loopexit325.loopexit.unr-lcssa:                  ; preds = %stbi__getn.exit.us.us.1
  %lcmp.mod490.not = icmp eq i64 %xtraiter487, 0
  br i1 %lcmp.mod490.not, label %.loopexit325, label %..thread_crit_edge.i262.us.us.epil.preheader

..thread_crit_edge.i262.us.us.epil.preheader:     ; preds = %.loopexit325.loopexit.unr-lcssa, %..thread_crit_edge.i262.us.us.preheader
  %indvars.iv358.epil.init = phi i64 [ 0, %..thread_crit_edge.i262.us.us.preheader ], [ %indvars.iv.next359.1, %.loopexit325.loopexit.unr-lcssa ]
  %.epil.init489 = phi ptr [ %.promoted, %..thread_crit_edge.i262.us.us.preheader ], [ %i.ja, %.loopexit325.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod491 = trunc i32 %i.ee to i1
  tail call void @llvm.assume(i1 %lcmp.mod491)
  %i.rx = getelementptr inbounds nuw i8, ptr %.epil.init489, i64 %i.if ; 2 uses
  %.not32.i.us.us.epil = icmp ugt ptr %i.rx, %.pre35.i.us
  br i1 %.not32.i.us.us.epil, label %.loopexit325, label %bb.ck

bb.ck:                                            ; preds = %..thread_crit_edge.i262.us.us.epil.preheader
  %i.ry = trunc i64 %indvars.iv358.epil.init to i32
  %i.rz = xor i32 %i.ry, -1
  %i.sa = add i32 %i.ee, %i.rz
  %i.sb = mul i32 %i.ic, %i.sa
  %i.sc = sext i32 %i.sb to i64
  %i.sd = getelementptr inbounds i8, ptr %i.hl, i64 %i.sc
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.sd, ptr align 1 %.epil.init489, i64 %i.if, i1 false)
  store ptr %i.rx, ptr %i.b, align 8, !tbaa !29
  br label %.loopexit325

.loopexit325.loopexit484.unr-lcssa:               ; preds = %stbi__getn.exit.us.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit325, label %..thread_crit_edge.i262.us.epil.preheader

..thread_crit_edge.i262.us.epil.preheader:        ; preds = %.loopexit325.loopexit484.unr-lcssa, %..thread_crit_edge.i262.us.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %..thread_crit_edge.i262.us.preheader ], [ %indvars.iv.next.1, %.loopexit325.loopexit484.unr-lcssa ]
  %.epil.init = phi ptr [ %.promoted, %..thread_crit_edge.i262.us.preheader ], [ %i.jo, %.loopexit325.loopexit484.unr-lcssa ] ; 2 uses
  %lcmp.mod486 = trunc i32 %i.ee to i1
  tail call void @llvm.assume(i1 %lcmp.mod486)
  %i.se = getelementptr inbounds nuw i8, ptr %.epil.init, i64 %i.if ; 2 uses
  %.not32.i.us.epil = icmp ugt ptr %i.se, %.pre35.i.us
  br i1 %.not32.i.us.epil, label %.loopexit325, label %bb.cl

bb.cl:                                            ; preds = %..thread_crit_edge.i262.us.epil.preheader
  %i.sf = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.sg = mul i32 %i.ic, %i.sf
  %i.sh = sext i32 %i.sg to i64
  %i.si = getelementptr inbounds i8, ptr %i.hl, i64 %i.sh
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.si, ptr align 1 %.epil.init, i64 %i.if, i1 false)
  store ptr %i.se, ptr %i.b, align 8, !tbaa !29
  br label %.loopexit325

.loopexit325:                                     ; preds = %stbi__getn.exit, %.loopexit325.loopexit484.unr-lcssa, %bb.cl, %..thread_crit_edge.i262.us.epil.preheader, %.loopexit325.loopexit.unr-lcssa, %bb.ck, %..thread_crit_edge.i262.us.us.epil.preheader, %.preheader324, %.loopexit318, %bb.cj
  %i.sj = icmp samesign ult i8 %.0193.ph.shrunk, 3
  %.not352 = icmp eq i32 %i.hi, 0
  %i.sk = or i1 %i.sj, %.not352
  %or.cond456 = or i1 %i.sk, %i.gz
  br i1 %or.cond456, label %.loopexit, label %.lr.ph347

.lr.ph347:                                        ; preds = %.loopexit325
  %i.sl = zext nneg i8 %.0193.ph.shrunk to i64    ; 5 uses
  %i.sm = add i32 %i.hi, -1
  %xtraiter494 = and i32 %i.hi, 3                 ; 3 uses
  %i.sn = icmp ult i32 %i.sm, 3
  br i1 %i.sn, label %.epil.preheader, label %.lr.ph347.new

.lr.ph347.new:                                    ; preds = %.lr.ph347
  %unroll_iter497 = and i32 %i.hi, -4
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cm, %.lr.ph347.new
  %.0174346 = phi ptr [ %i.hl, %.lr.ph347.new ], [ %i.td, %bb.cm ] ; 4 uses
  %niter498 = phi i32 [ 0, %.lr.ph347.new ], [ %niter498.next.3, %bb.cm ]
  %i.so = load i8, ptr %.0174346, align 1, !tbaa !37
  %i.sp = getelementptr inbounds nuw i8, ptr %.0174346, i64 2 ; 2 uses
  %i.sq = load i8, ptr %i.sp, align 1, !tbaa !37
  store i8 %i.sq, ptr %.0174346, align 1, !tbaa !37
  store i8 %i.so, ptr %i.sp, align 1, !tbaa !37
  %i.sr = getelementptr inbounds nuw i8, ptr %.0174346, i64 %i.sl ; 4 uses
  %i.ss = load i8, ptr %i.sr, align 1, !tbaa !37
  %i.st = getelementptr inbounds nuw i8, ptr %i.sr, i64 2 ; 2 uses
  %i.su = load i8, ptr %i.st, align 1, !tbaa !37
  store i8 %i.su, ptr %i.sr, align 1, !tbaa !37
  store i8 %i.ss, ptr %i.st, align 1, !tbaa !37
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sr, i64 %i.sl ; 4 uses
  %i.sw = load i8, ptr %i.sv, align 1, !tbaa !37
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sv, i64 2 ; 2 uses
  %i.sy = load i8, ptr %i.sx, align 1, !tbaa !37
  store i8 %i.sy, ptr %i.sv, align 1, !tbaa !37
  store i8 %i.sw, ptr %i.sx, align 1, !tbaa !37
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sv, i64 %i.sl ; 4 uses
  %i.ta = load i8, ptr %i.sz, align 1, !tbaa !37
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sz, i64 2 ; 2 uses
  %i.tc = load i8, ptr %i.tb, align 1, !tbaa !37
  store i8 %i.tc, ptr %i.sz, align 1, !tbaa !37
  store i8 %i.ta, ptr %i.tb, align 1, !tbaa !37
  %i.td = getelementptr inbounds nuw i8, ptr %i.sz, i64 %i.sl ; 2 uses
  %niter498.next.3 = add i32 %niter498, 4         ; 2 uses
  %niter498.ncmp.3 = icmp eq i32 %niter498.next.3, %unroll_iter497
  br i1 %niter498.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.cm, !llvm.loop !224

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.cm
  %lcmp.mod495.not = icmp eq i32 %xtraiter494, 0
  br i1 %lcmp.mod495.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph347
  %.0174346.epil.init = phi ptr [ %i.hl, %.lr.ph347 ], [ %i.td, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod496 = icmp ne i32 %xtraiter494, 0
  tail call void @llvm.assume(i1 %lcmp.mod496)
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cn, %.epil.preheader
  %.0174346.epil = phi ptr [ %.0174346.epil.init, %.epil.preheader ], [ %i.th, %bb.cn ] ; 4 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.cn ]
  %i.te = load i8, ptr %.0174346.epil, align 1, !tbaa !37
  %i.tf = getelementptr inbounds nuw i8, ptr %.0174346.epil, i64 2 ; 2 uses
  %i.tg = load i8, ptr %i.tf, align 1, !tbaa !37
  store i8 %i.tg, ptr %.0174346.epil, align 1, !tbaa !37
  store i8 %i.te, ptr %i.tf, align 1, !tbaa !37
  %i.th = getelementptr inbounds nuw i8, ptr %.0174346.epil, i64 %i.sl
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter494
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.cn, !llvm.loop !225

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.cn, %.loopexit325
  %.not213 = icmp eq i32 %4, 0
  %.not214 = icmp eq i32 %4, %.0193.ph
  %or.cond220 = or i1 %.not213, %.not214
  br i1 %or.cond220, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %.loopexit
  %i.ti = tail call ptr @stbi__convert_format(ptr noundef nonnull %i.hl, i32 noundef %.0193.ph, i32 noundef %4, i32 noundef %i.ed, i32 noundef %i.ee)
  br label %bb.cp

bb.cp:                                            ; preds = %.loopexit, %bb.co, %bb.bk, %stbi__malloc_mad2.exit.thread, %bb.bc, %stbi__malloc_mad3.exit.thread, %bb.ao, %stbi__tga_get_comp.exit
  %.0 = phi ptr [ null, %stbi__tga_get_comp.exit ], [ null, %bb.ao ], [ null, %bb.bc ], [ null, %stbi__malloc_mad3.exit.thread ], [ null, %bb.bk ], [ null, %stbi__malloc_mad2.exit.thread ], [ %i.ti, %bb.co ], [ %i.hl, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  ret ptr %.0
}

; Function Attrs: nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define noalias noundef ptr @stbi__convert_16_to_8(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #17 {
bb.a:
  %i.a = mul nsw i32 %2, %1
  %i.b = mul nsw i32 %i.a, %3                     ; 5 uses
  %i.c = sext i32 %i.b to i64
  %i.d = tail call noalias noundef ptr @malloc(i64 noundef %i.c) #38 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = icmp sgt i32 %i.b, 0
  br i1 %i.f, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %i.b, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check19 = icmp ult i32 %i.b, 16
  br i1 %min.iters.check19, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load = load <8 x i16>, ptr %i.h, align 2, !tbaa !74
  %wide.load20 = load <8 x i16>, ptr %i.i, align 2, !tbaa !74
  %i.j = lshr <8 x i16> %wide.load, splat (i16 8)
  %i.k = lshr <8 x i16> %wide.load20, splat (i16 8)
  %i.l = trunc nuw <8 x i16> %i.j to <8 x i8>
  %i.m = trunc nuw <8 x i16> %i.k to <8 x i8>
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store <8 x i8> %i.l, ptr %i.n, align 1, !tbaa !37
  store <8 x i8> %i.m, ptr %i.o, align 1, !tbaa !37
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !228

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !88

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec21 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index22 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next24, %vec.epilog.vector.body ] ; 3 uses
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index22
  %wide.load23 = load <4 x i16>, ptr %i.q, align 2, !tbaa !74
  %i.r = lshr <4 x i16> %wide.load23, splat (i16 8)
  %i.s = trunc nuw <4 x i16> %i.r to <4 x i8>
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 %index22
  store <4 x i8> %i.s, ptr %i.t, align 1, !tbaa !37
  %index.next24 = add nuw i64 %index22, 4         ; 2 uses
  %i.u = icmp eq i64 %index.next24, %n.vec21
  br i1 %i.u, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !229

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n25 = icmp eq i64 %n.vec21, %wide.trip.count
  br i1 %cmp.n25, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec21, %vec.epilog.middle.block ]
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.v = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.v, align 8, !tbaa !39
  br label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.x = load i16, ptr %i.w, align 2, !tbaa !74
  %i.y = lshr i16 %i.x, 8
  %i.z = trunc nuw i16 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !230

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader
  tail call void @free(ptr noundef %0) #37
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  ret ptr %i.d
}

; Function Attrs: nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define noalias noundef ptr @stbi__convert_8_to_16(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #17 {
bb.a:
  %i.a = mul nsw i32 %2, %1
  %i.b = mul nsw i32 %i.a, %3                     ; 5 uses
  %i.c = shl nsw i32 %i.b, 1
  %i.d = sext i32 %i.c to i64
  %i.e = tail call noalias noundef ptr @malloc(i64 noundef %i.d) #38 ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.g = icmp sgt i32 %i.b, 0
  br i1 %i.g, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %i.b, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check21 = icmp ult i32 %i.b, 16
  br i1 %min.iters.check21, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.h = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %wide.load = load <8 x i8>, ptr %i.i, align 1, !tbaa !37
  %wide.load22 = load <8 x i8>, ptr %i.j, align 1, !tbaa !37
  %i.k = zext <8 x i8> %wide.load to <8 x i16>
  %i.l = zext <8 x i8> %wide.load22 to <8 x i16>
  %i.m = mul nuw <8 x i16> %i.k, splat (i16 257)
  %i.n = mul nuw <8 x i16> %i.l, splat (i16 257)
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store <8 x i16> %i.m, ptr %i.o, align 2, !tbaa !74
  store <8 x i16> %i.n, ptr %i.p, align 2, !tbaa !74
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !231

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.h, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !88

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec23 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index24 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next26, %vec.epilog.vector.body ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %index24
  %wide.load25 = load <4 x i8>, ptr %i.r, align 1, !tbaa !37
  %i.s = zext <4 x i8> %wide.load25 to <4 x i16>
  %i.t = mul nuw <4 x i16> %i.s, splat (i16 257)
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %index24
  store <4 x i16> %i.t, ptr %i.u, align 2, !tbaa !74
  %index.next26 = add nuw i64 %index24, 4         ; 2 uses
  %i.v = icmp eq i64 %index.next26, %n.vec23
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !232

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n27 = icmp eq i64 %n.vec23, %wide.trip.count
  br i1 %cmp.n27, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec23, %vec.epilog.middle.block ]
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.w = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.w, align 8, !tbaa !39
  br label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.y = load i8, ptr %i.x, align 1, !tbaa !37
  %i.z = zext i8 %i.y to i16
  %i.aa = mul nuw i16 %i.z, 257
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv
  store i16 %i.aa, ptr %i.ab, align 2, !tbaa !74
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !233

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader
  tail call void @free(ptr noundef %0) #37
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  ret ptr %i.e
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @stbi__vertical_flip(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #18 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 4 uses
  %i.b = sext i32 %1 to i64
  %i.c = sext i32 %3 to i64
  %i.d = mul nsw i64 %i.c, %i.b                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = ashr i32 %2, 1                           ; 2 uses
  %i.f = icmp slt i32 %i.e, 1
  %.not32 = icmp eq i64 %i.d, 0
  %or.cond = select i1 %i.f, i1 true, i1 %.not32
  br i1 %or.cond, label %._crit_edge39.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.g = mul i64 %i.d, %indvars.iv
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %i.i = trunc i64 %indvars.iv to i32
  %i.j = xor i32 %i.i, -1
  %i.k = add i32 %2, %i.j
  %i.l = sext i32 %i.k to i64
  %i.m = mul i64 %i.d, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.02935 = phi i64 [ %i.d, %.lr.ph ], [ %i.r, %bb.b ] ; 2 uses
  %.03034 = phi ptr [ %i.n, %.lr.ph ], [ %i.q, %bb.b ] ; 3 uses
  %.03133 = phi ptr [ %i.h, %.lr.ph ], [ %i.p, %bb.b ] ; 3 uses
  %i.o = tail call i64 @llvm.umin.i64(i64 %.02935, i64 2048) ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %.03133, i64 %i.o, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03133, ptr align 1 %.03034, i64 %i.o, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03034, ptr nonnull align 16 %i.a, i64 %i.o, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.03133, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %.03034, i64 %i.o
  %i.r = sub nuw i64 %.02935, %i.o                ; 2 uses
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !2

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge39.split, label %.lr.ph, !llvm.loop !3

._crit_edge39.split:                              ; preds = %._crit_edge, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @stbi__vertical_flip_slices(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #18 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 4 uses
  %i.b = icmp sgt i32 %3, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = mul nsw i32 %2, %1
  %i.d = mul nsw i32 %i.c, %4
  %i.e = sext i32 %1 to i64
  %i.f = sext i32 %4 to i64
  %i.g = mul nsw i64 %i.f, %i.e                   ; 4 uses
  %i.h = ashr i32 %2, 1                           ; 2 uses
  %i.i = icmp slt i32 %i.h, 1
  %.not32.i = icmp eq i64 %i.g, 0
  %or.cond.i = select i1 %i.i, i1 true, i1 %.not32.i
  %wide.trip.count.i = zext nneg i32 %i.h to i64
  %i.j = sext i32 %i.d to i64
  br i1 %or.cond.i, label %._crit_edge, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph, %stbi__vertical_flip.exit.loopexit
  %.014 = phi ptr [ %i.w, %stbi__vertical_flip.exit.loopexit ], [ %0, %.lr.ph ] ; 3 uses
  %.01213 = phi i32 [ %i.x, %stbi__vertical_flip.exit.loopexit ], [ 0, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.k = mul i64 %indvars.iv.i, %i.g
  %i.l = getelementptr inbounds nuw i8, ptr %.014, i64 %i.k
  %i.m = trunc i64 %indvars.iv.i to i32
  %i.n = xor i32 %i.m, -1
  %i.o = add i32 %2, %i.n
  %i.p = sext i32 %i.o to i64
  %i.q = mul i64 %i.g, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %.014, i64 %i.q
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.02935.i = phi i64 [ %i.g, %.lr.ph.i ], [ %i.v, %bb.b ] ; 2 uses
  %.03034.i = phi ptr [ %i.r, %.lr.ph.i ], [ %i.u, %bb.b ] ; 3 uses
  %.03133.i = phi ptr [ %i.l, %.lr.ph.i ], [ %i.t, %bb.b ] ; 3 uses
end_hunk_2
begin_hunk_3_@stbi__load_gif_main:bb.a
  %i.y = mul nsw i32 %i.x, %i.w                   ; 2 uses
  %i.z = shl nsw i32 %i.y, 2                      ; 3 uses
  %i.aa = trunc nuw i64 %indvars.iv.next to i32
  %i.ab = mul nsw i32 %i.z, %i.aa
  %i.ac = sext i32 %i.ab to i64
  %i.ad = call ptr @realloc(ptr noundef nonnull %.072131, i64 noundef %i.ac) #39 ; 6 uses
  %.not97 = icmp eq ptr %i.ad, null
  br i1 %.not97, label %.loopexit, label %bb.l

.loopexit:                                        ; preds = %.peel.next
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !48
  call void @free(ptr noundef %i.af) #37
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !49
  call void @free(ptr noundef %i.ah) #37
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !50
  call void @free(ptr noundef %i.aj) #37
  call void @free(ptr noundef nonnull %.072131) #37
  br i1 %.not91, label %stbi__load_gif_main_outofmem.exit, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.ak = load ptr, ptr %1, align 8, !tbaa !91    ; 2 uses
  %.not11.i = icmp eq ptr %i.ak, null
  br i1 %.not11.i, label %stbi__load_gif_main_outofmem.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef nonnull %i.ak) #37
  br label %stbi__load_gif_main_outofmem.exit

stbi__load_gif_main_outofmem.exit:                ; preds = %.loopexit, %bb.j, %bb.k
  %i.al = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.al, align 8, !tbaa !39
  br label %.critedge

bb.l:                                             ; preds = %.peel.next
  br i1 %.not91, label %bb.u, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = load ptr, ptr %1, align 8, !tbaa !91
  %i.an = shl nuw nsw i64 %indvars.iv.next, 2
  %i.ao = call ptr @realloc(ptr noundef %i.am, i64 noundef %i.an) #39 ; 2 uses
  %.not98.not = icmp eq ptr %i.ao, null
  br i1 %.not98.not, label %.loopexit148, label %bb.o

.loopexit148:                                     ; preds = %bb.m
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !48
  call void @free(ptr noundef %.pre) #37
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !49
  call void @free(ptr noundef %i.aq) #37
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !50
  call void @free(ptr noundef %i.as) #37
  call void @free(ptr noundef nonnull %i.ad) #37
  %i.at = load ptr, ptr %1, align 8, !tbaa !91    ; 2 uses
  %.not11.i101 = icmp eq ptr %i.at, null
  br i1 %.not11.i101, label %.thread, label %bb.n

bb.n:                                             ; preds = %.loopexit148
  call void @free(ptr noundef nonnull %i.at) #37
  br label %.thread

.thread:                                          ; preds = %bb.n, %.loopexit148
  %i.au = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.au, align 8, !tbaa !39
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  store ptr %i.ao, ptr %1, align 8, !tbaa !91
  br label %bb.u

bb.p:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !48
  call void @free(ptr noundef %i.aw) #37
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !49
  call void @free(ptr noundef %i.ay) #37
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !50
  call void @free(ptr noundef %i.ba) #37
  br i1 %.not91, label %stbi__load_gif_main_outofmem.exit105, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bb = load ptr, ptr %1, align 8, !tbaa !91    ; 2 uses
  %.not11.i104 = icmp eq ptr %i.bb, null
  br i1 %.not11.i104, label %stbi__load_gif_main_outofmem.exit105, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @free(ptr noundef nonnull %i.bb) #37
  br label %stbi__load_gif_main_outofmem.exit105

stbi__load_gif_main_outofmem.exit105:             ; preds = %bb.p, %bb.q, %bb.r
  %i.bc = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.bc, align 8, !tbaa !39
  br label %.critedge

bb.s:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !48
  call void @free(ptr noundef %i.be) #37
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !49
  call void @free(ptr noundef %i.bg) #37
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !50
  call void @free(ptr noundef %i.bi) #37
  call void @free(ptr noundef nonnull %i.n) #37
  %i.bj = load ptr, ptr %1, align 8, !tbaa !91    ; 2 uses
  %.not11.i108 = icmp eq ptr %i.bj, null
  br i1 %.not11.i108, label %stbi__load_gif_main_outofmem.exit109, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef nonnull %i.bj) #37
  br label %stbi__load_gif_main_outofmem.exit109

stbi__load_gif_main_outofmem.exit109:             ; preds = %bb.s, %bb.t
  %i.bk = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.bk, align 8, !tbaa !39
  br label %.critedge

bb.u:                                             ; preds = %bb.o, %bb.l
  %i.bl = trunc nuw nsw i64 %indvars.iv to i32
  %i.bm = mul nsw i32 %i.z, %i.bl
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds i8, ptr %i.ad, i64 %i.bn
  %i.bp = sext i32 %i.z to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bo, ptr nonnull align 1 %i.v, i64 %i.bp, i1 false)
  %i.bq = shl nsw i32 %i.y, 3
  %i.br = sext i32 %i.bq to i64
  %i.bs = sub nsw i64 0, %i.br
  %i.bt = getelementptr inbounds i8, ptr %i.ad, i64 %i.bs
  br i1 %.not91, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bu = load i32, ptr %i.h, align 8, !tbaa !92
  %i.bv = load ptr, ptr %1, align 8, !tbaa !91
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv
  store i32 %i.bu, ptr %i.bw, align 4, !tbaa !40
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bx = call ptr @stbi__gif_load_next(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef %5, i32 poison, ptr noundef nonnull %i.bt) ; 3 uses
  %i.by = icmp eq ptr %i.bx, %0
  %.not9293 = icmp eq ptr %i.bx, null
  %.not92 = or i1 %i.by, %.not9293
  br i1 %.not92, label %._crit_edge.loopexit.loopexit, label %.peel.next, !llvm.loop !242

._crit_edge.loopexit.loopexit:                    ; preds = %bb.w
  %i.bz = trunc nuw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %._crit_edge.loopexit.loopexit, %bb.d
  %.075.lcssa = phi i32 [ 0, %bb.d ], [ 1, %bb.i ], [ %i.bz, %._crit_edge.loopexit.loopexit ] ; 2 uses
  %.072.lcssa = phi ptr [ null, %bb.d ], [ %i.n, %bb.i ], [ %i.ad, %._crit_edge.loopexit.loopexit ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !48
  call void @free(ptr noundef %i.cb) #37
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !49
  call void @free(ptr noundef %i.cd) #37
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !50
  call void @free(ptr noundef %i.cf) #37
  %i.cg = and i32 %6, -5
  %or.cond.not = icmp eq i32 %i.cg, 0
  br i1 %or.cond.not, label %bb.y, label %bb.x

bb.x:                                             ; preds = %._crit_edge
  %i.ch = load i32, ptr %7, align 8, !tbaa !46
  %i.ci = mul nsw i32 %i.ch, %.075.lcssa
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !47
  %i.cl = call ptr @stbi__convert_format(ptr noundef %.072.lcssa, i32 noundef 4, i32 noundef %6, i32 noundef %i.ci, i32 noundef %i.ck)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge
  %.4 = phi ptr [ %i.cl, %bb.x ], [ %.072.lcssa, %._crit_edge ]
  store i32 %.075.lcssa, ptr %4, align 4, !tbaa !40
  br label %.critedge

.critedge:                                        ; preds = %.thread, %stbi__load_gif_main_outofmem.exit, %bb.y, %stbi__load_gif_main_outofmem.exit109, %stbi__load_gif_main_outofmem.exit105
  %.6 = phi ptr [ %.4, %bb.y ], [ null, %stbi__load_gif_main_outofmem.exit105 ], [ null, %stbi__load_gif_main_outofmem.exit109 ], [ null, %stbi__load_gif_main_outofmem.exit ], [ null, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.aa

bb.z:                                             ; preds = %bb.a
  %i.cm = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.91, ptr %i.cm, align 8, !tbaa !39
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.critedge
  %.7 = phi ptr [ %.6, %.critedge ], [ null, %bb.z ]
  ret ptr %.7
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @stbi__loadf_main(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 4 uses
  %i.b = tail call i32 @stbi__hdr_test(ptr noundef %0)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @stbi__hdr_load(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nonnull poison) ; 7 uses
  %.not30 = icmp eq ptr %i.c, null
  br i1 %.not30, label %stbi__float_postprocess.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @stbi__vertically_flip_on_load_set)
  %i.e = load i32, ptr %i.d, align 4, !tbaa !40
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @stbi__vertically_flip_on_load_local)
  %i.g = load i32, ptr %i.f, align 4, !tbaa !40
  %.not9.i = icmp eq i32 %i.g, 0
  br i1 %.not9.i, label %stbi__float_postprocess.exit, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = load i32, ptr @stbi__vertically_flip_on_load_global, align 4, !tbaa !40
  %.not8.i = icmp eq i32 %i.h, 0
  br i1 %.not8.i, label %stbi__float_postprocess.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not11.i = icmp eq i32 %4, 0
  br i1 %.not11.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.i = load i32, ptr %3, align 4, !tbaa !40
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.j = phi i32 [ %i.i, %bb.g ], [ %4, %bb.f ]
  %i.k = load i32, ptr %1, align 4, !tbaa !40
  %i.l = load i32, ptr %2, align 4, !tbaa !40     ; 2 uses
  %i.m = shl i32 %i.j, 2
  %i.n = sext i32 %i.k to i64
  %i.o = sext i32 %i.m to i64
  %i.p = mul nsw i64 %i.o, %i.n                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.q = ashr i32 %i.l, 1                         ; 2 uses
  %i.r = icmp slt i32 %i.q, 1
  %.not32.i.i = icmp eq i64 %i.p, 0
  %or.cond.i.i = select i1 %i.r, i1 true, i1 %.not32.i.i
  br i1 %or.cond.i.i, label %stbi__vertical_flip.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.h
  %wide.trip.count.i.i = zext nneg i32 %i.q to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.s = mul i64 %indvars.iv.i.i, %i.p
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.s
  %i.u = trunc i64 %indvars.iv.i.i to i32
  %i.v = xor i32 %i.u, -1
  %i.w = add i32 %i.l, %i.v
  %i.x = sext i32 %i.w to i64
  %i.y = mul i64 %i.p, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.y
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i
  %.02935.i.i = phi i64 [ %i.p, %.lr.ph.i.i ], [ %i.ad, %bb.i ] ; 2 uses
  %.03034.i.i = phi ptr [ %i.z, %.lr.ph.i.i ], [ %i.ac, %bb.i ] ; 3 uses
  %.03133.i.i = phi ptr [ %i.t, %.lr.ph.i.i ], [ %i.ab, %bb.i ] ; 3 uses
  %i.aa = tail call i64 @llvm.umin.i64(i64 %.02935.i.i, i64 2048) ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %.03133.i.i, i64 %i.aa, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03133.i.i, ptr align 1 %.03034.i.i, i64 %i.aa, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03034.i.i, ptr nonnull align 16 %i.a, i64 %i.aa, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %.03133.i.i, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %.03034.i.i, i64 %i.aa
  %i.ad = sub nuw i64 %.02935.i.i, %i.aa          ; 2 uses
  %.not.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.i, !llvm.loop !2

._crit_edge.i.i:                                  ; preds = %bb.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %stbi__vertical_flip.exit.i, label %.lr.ph.i.i, !llvm.loop !3

stbi__vertical_flip.exit.i:                       ; preds = %._crit_edge.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %stbi__float_postprocess.exit

bb.j:                                             ; preds = %bb.a
  %i.ae = tail call ptr @stbi__load_and_postprocess_8bit(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) ; 2 uses
  %.not28 = icmp eq ptr %i.ae, null
  br i1 %.not28, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = load i32, ptr %1, align 4, !tbaa !40
  %i.ag = load i32, ptr %2, align 4, !tbaa !40
  %.not29 = icmp eq i32 %4, 0
  br i1 %.not29, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ah = load i32, ptr %3, align 4, !tbaa !40
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.ai = phi i32 [ %i.ah, %bb.l ], [ %4, %bb.k ]
  %i.aj = tail call ptr @stbi__ldr_to_hdr(ptr noundef nonnull %i.ae, i32 noundef %i.af, i32 noundef %i.ag, i32 noundef %i.ai)
  br label %stbi__float_postprocess.exit

bb.n:                                             ; preds = %bb.j
  %i.ak = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str, ptr %i.ak, align 8, !tbaa !39
  br label %stbi__float_postprocess.exit

stbi__float_postprocess.exit:                     ; preds = %bb.b, %bb.d, %bb.e, %stbi__vertical_flip.exit.i, %bb.n, %bb.m
  %.0 = phi ptr [ null, %bb.n ], [ %i.aj, %bb.m ], [ %i.c, %stbi__vertical_flip.exit.i ], [ %i.c, %bb.e ], [ %i.c, %bb.d ], [ %i.c, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @stbi__ldr_to_hdr(ptr noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #16 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = or i32 %2, %1
  %or.cond.not.i.i.i = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not.i.i.i, label %bb.c, label %stbi__malloc_mad4.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.b = icmp eq i32 %2, 0
  br i1 %i.b, label %stbi__mul2sizes_valid.exit.thread25.i.i, label %stbi__mul2sizes_valid.exit.i.i

stbi__mul2sizes_valid.exit.i.i:                   ; preds = %bb.c
  %i.c = udiv i32 2147483647, %2
  %.not38.i.i = icmp sgt i32 %1, %i.c
  br i1 %.not38.i.i, label %stbi__malloc_mad4.exit.thread, label %stbi__mul2sizes_valid.exit.thread25.i.i

stbi__mul2sizes_valid.exit.thread25.i.i:          ; preds = %stbi__mul2sizes_valid.exit.i.i, %bb.c
  %i.d = mul nuw nsw i32 %2, %1                   ; 8 uses
  %i.e = or i32 %3, %i.d
  %or.cond.not.i16.i.i = icmp sgt i32 %i.e, -1
  br i1 %or.cond.not.i16.i.i, label %bb.d, label %stbi__malloc_mad4.exit.thread

bb.d:                                             ; preds = %stbi__mul2sizes_valid.exit.thread25.i.i
  %i.f = icmp eq i32 %3, 0
  br i1 %i.f, label %stbi__mul2sizes_valid.exit18.thread30.i.i, label %stbi__mul2sizes_valid.exit18.i.i

stbi__mul2sizes_valid.exit18.i.i:                 ; preds = %bb.d
  %i.g = udiv i32 2147483647, %3
  %.not.i.i = icmp sgt i32 %i.d, %i.g
  br i1 %.not.i.i, label %stbi__malloc_mad4.exit.thread, label %stbi__mul2sizes_valid.exit18.thread30.i.i

stbi__mul2sizes_valid.exit18.thread30.i.i:        ; preds = %stbi__mul2sizes_valid.exit18.i.i, %bb.d
  %i.h = mul nuw nsw i32 %i.d, %3                 ; 2 uses
  %or.cond = icmp ugt i32 %i.h, 536870911
  br i1 %or.cond, label %stbi__malloc_mad4.exit.thread, label %stbi__malloc_mad4.exit

stbi__malloc_mad4.exit:                           ; preds = %stbi__mul2sizes_valid.exit18.thread30.i.i
  %i.i = shl nuw nsw i32 %i.h, 2
  %i.j = zext nneg i32 %i.i to i64
  %i.k = tail call noalias noundef ptr @malloc(i64 noundef %i.j) #38 ; 8 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %stbi__malloc_mad4.exit.thread, label %bb.e

stbi__malloc_mad4.exit.thread:                    ; preds = %bb.b, %stbi__mul2sizes_valid.exit.thread25.i.i, %stbi__mul2sizes_valid.exit.i.i, %stbi__mul2sizes_valid.exit18.i.i, %stbi__mul2sizes_valid.exit18.thread30.i.i, %stbi__malloc_mad4.exit
  tail call void @free(ptr noundef nonnull %0) #37
  %i.m = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.m, align 8, !tbaa !39
  br label %bb.f

bb.e:                                             ; preds = %stbi__malloc_mad4.exit
  %i.n = and i32 %3, 1
  %.not47 = icmp eq i32 %i.n, 0                   ; 2 uses
  %i.o = sext i1 %.not47 to i32
  %.0 = add i32 %3, %i.o                          ; 5 uses
  %i.p = icmp sgt i32 %i.d, 0
  br i1 %i.p, label %.preheader49.lr.ph, label %.loopexit

.preheader49.lr.ph:                               ; preds = %bb.e
  %i.q = icmp sgt i32 %.0, 0
  %i.r = load float, ptr @stbi__l2h_gamma, align 4
  %i.s = fpext float %i.r to double               ; 3 uses
  %i.t = load float, ptr @stbi__l2h_scale, align 4
  %i.u = fpext float %i.t to double               ; 3 uses
  br i1 %i.q, label %.preheader49.preheader, label %._crit_edge52.split

.preheader49.preheader:                           ; preds = %.preheader49.lr.ph
  %i.v = sext i32 %3 to i64
  %wide.trip.count59 = zext nneg i32 %i.d to i64
  %wide.trip.count = zext nneg i32 %.0 to i64     ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.w = icmp eq i32 %.0, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod73 = trunc i32 %.0 to i1
  br label %.preheader49

.preheader49:                                     ; preds = %.preheader49.preheader, %._crit_edge
  %indvars.iv56 = phi i64 [ 0, %.preheader49.preheader ], [ %indvars.iv.next57, %._crit_edge ] ; 2 uses
  %i.x = mul nuw nsw i64 %indvars.iv56, %i.v      ; 3 uses
  br i1 %i.w, label %.epil.preheader, label %.preheader49.new

.preheader49.new:                                 ; preds = %.preheader49, %.preheader49.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader49.new ], [ 0, %.preheader49 ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader49.new ], [ 0, %.preheader49 ]
  %i.y = add nsw i64 %indvars.iv, %i.x            ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %0, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !37
  %i.ab = uitofp i8 %i.aa to float
  %i.ac = fdiv float %i.ab, 2.550000e+02
  %i.ad = fpext float %i.ac to double
  %i.ae = tail call double @pow(double noundef %i.ad, double noundef %i.s) #37
  %i.af = fmul double %i.ae, %i.u
  %i.ag = fptrunc double %i.af to float
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.y
  store float %i.ag, ptr %i.ah, align 4, !tbaa !86
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %i.ai = add nsw i64 %indvars.iv.next, %i.x      ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %0, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !37
  %i.al = uitofp i8 %i.ak to float
  %i.am = fdiv float %i.al, 2.550000e+02
  %i.an = fpext float %i.am to double
  %i.ao = tail call double @pow(double noundef %i.an, double noundef %i.s) #37
  %i.ap = fmul double %i.ao, %i.u
  %i.aq = fptrunc double %i.ap to float
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.ai
  store float %i.aq, ptr %i.ar, align 4, !tbaa !86
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader49.new, !llvm.loop !243

._crit_edge.unr-lcssa:                            ; preds = %.preheader49.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader49
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader49 ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod73)
  %i.as = add nsw i64 %indvars.iv.epil.init, %i.x ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %0, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !37
  %i.av = uitofp i8 %i.au to float
  %i.aw = fdiv float %i.av, 2.550000e+02
  %i.ax = fpext float %i.aw to double
  %i.ay = tail call double @pow(double noundef %i.ax, double noundef %i.s) #37
  %i.az = fmul double %i.ay, %i.u
  %i.ba = fptrunc double %i.az to float
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.as
  store float %i.ba, ptr %i.bb, align 4, !tbaa !86
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %exitcond60.not = icmp eq i64 %indvars.iv.next57, %wide.trip.count59
  br i1 %exitcond60.not, label %._crit_edge52.split, label %.preheader49, !llvm.loop !244

._crit_edge52.split:                              ; preds = %._crit_edge, %.preheader49.lr.ph
  br i1 %.not47, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %._crit_edge52.split
  %i.bc = sext i32 %3 to i64                      ; 3 uses
  %i.bd = sext i32 %.0 to i64                     ; 3 uses
  %wide.trip.count64 = zext nneg i32 %i.d to i64  ; 2 uses
  %xtraiter74 = and i64 %wide.trip.count64, 1
  %i.be = icmp eq i32 %i.d, 1
  br i1 %i.be, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter77 = and i64 %wide.trip.count64, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv61 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next62.1, %.lr.ph ] ; 3 uses
  %niter78 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter78.next.1, %.lr.ph ]
  %i.bf = mul nuw nsw i64 %indvars.iv61, %i.bc
  %i.bg = add nsw i64 %i.bf, %i.bd                ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %0, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !37
  %i.bj = uitofp i8 %i.bi to float
  %i.bk = fdiv float %i.bj, 2.550000e+02
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.bg
  store float %i.bk, ptr %i.bl, align 4, !tbaa !86
  %indvars.iv.next62 = or disjoint i64 %indvars.iv61, 1
  %i.bm = mul nuw nsw i64 %indvars.iv.next62, %i.bc
  %i.bn = add nsw i64 %i.bm, %i.bd                ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %0, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !37
  %i.bq = uitofp i8 %i.bp to float
  %i.br = fdiv float %i.bq, 2.550000e+02
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.bn
  store float %i.br, ptr %i.bs, align 4, !tbaa !86
  %indvars.iv.next62.1 = add nuw nsw i64 %indvars.iv61, 2 ; 2 uses
  %niter78.next.1 = add i64 %niter78, 2           ; 2 uses
  %niter78.ncmp.1 = icmp eq i64 %niter78.next.1, %unroll_iter77
  br i1 %niter78.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !245

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod75.not = icmp eq i64 %xtraiter74, 0
  br i1 %lcmp.mod75.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv61.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next62.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod76 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod76)
  %i.bt = mul nuw nsw i64 %indvars.iv61.epil.init, %i.bc
  %i.bu = add nsw i64 %i.bt, %i.bd                ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %0, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !37
  %i.bx = uitofp i8 %i.bw to float
  %i.by = fdiv float %i.bx, 2.550000e+02
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.bu
  store float %i.by, ptr %i.bz, align 4, !tbaa !86
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.e, %._crit_edge52.split
  tail call void @free(ptr noundef nonnull %0) #37
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %.loopexit, %stbi__malloc_mad4.exit.thread
  %.042 = phi ptr [ null, %stbi__malloc_mad4.exit.thread ], [ %i.k, %.loopexit ], [ null, %bb.a ]
  ret ptr %.042
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @stbi_loadf_from_memory(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.stbi__context, align 8      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr null, ptr %i.a, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i32 0, ptr %i.b, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 184
  store i32 0, ptr %i.c, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 208
  store ptr %0, ptr %i.d, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 192
  store ptr %0, ptr %i.e, align 8, !tbaa !29
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 216
  store ptr %i.g, ptr %i.h, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %i.g, ptr %i.i, align 8, !tbaa !31
  %i.j = call ptr @stbi__loadf_main(ptr noundef nonnull %6, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  ret ptr %i.j
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @stbi_loadf_from_callbacks(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.stbi__context, align 8      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !33
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %1, ptr %i.b, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 52
  store i32 128, ptr %i.c, align 4, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i32 1, ptr %i.d, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 184 ; 3 uses
  store i32 0, ptr %i.e, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 208 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 192 ; 3 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !29
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.j = call i32 %i.i(ptr noundef %1, ptr noundef nonnull %i.f, i32 noundef 128) #37, !inline_history !38 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !28
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = load i32, ptr %i.e, align 8, !tbaa !27
  %i.r = add nsw i32 %i.q, %i.p
  store i32 %i.r, ptr %i.e, align 8, !tbaa !27
  %i.s = icmp eq i32 %i.j, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 8, !tbaa !26
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 57
  store i8 0, ptr %i.f, align 8, !tbaa !37
  br label %stbi__start_callbacks.exit

bb.c:                                             ; preds = %bb.a
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  br label %stbi__start_callbacks.exit

stbi__start_callbacks.exit:                       ; preds = %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.t, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %.sink.i.i, ptr %i.w, align 8, !tbaa !31
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 216
  store ptr %.sink.i.i, ptr %i.x, align 8, !tbaa !30
  %i.y = call ptr @stbi__loadf_main(ptr noundef nonnull %6, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  ret ptr %i.y
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @stbi_loadf(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.stbi__context, align 8      ; 14 uses
  %i.a = tail call noalias noundef ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str.2) ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.3, ptr %i.b, align 8, !tbaa !39
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) @stbi__stdio_callbacks, i64 24, i1 false), !tbaa.struct !33
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.a, ptr %i.d, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 52
  store i32 128, ptr %i.e, align 4, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store i32 1, ptr %i.f, align 8, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 3 uses
  store i32 0, ptr %i.g, align 8, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 3 uses
  store ptr %i.h, ptr %i.j, align 8, !tbaa !29
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.l = call i32 %i.k(ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, i32 noundef 128) #37, !inline_history !246 ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !29
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !28
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = trunc i64 %i.q to i32
  %i.s = load i32, ptr %i.g, align 8, !tbaa !27
  %i.t = add nsw i32 %i.s, %i.r
  store i32 %i.t, ptr %i.g, align 8, !tbaa !27
  %i.u = icmp eq i32 %i.l, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !26
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 57
  store i8 0, ptr %i.h, align 8, !tbaa !37
  br label %stbi_loadf_from_file.exit

bb.e:                                             ; preds = %bb.c
  %i.w = sext i32 %i.l to i64
  %i.x = getelementptr inbounds i8, ptr %i.h, i64 %i.w
  br label %stbi_loadf_from_file.exit

stbi_loadf_from_file.exit:                        ; preds = %bb.d, %bb.e
  %.sink.i.i.i.i = phi ptr [ %i.v, %bb.d ], [ %i.x, %bb.e ] ; 2 uses
  store ptr %i.h, ptr %i.j, align 8, !tbaa !29
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 200
  store ptr %.sink.i.i.i.i, ptr %i.y, align 8, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 216
  store ptr %.sink.i.i.i.i, ptr %i.z, align 8, !tbaa !30
  %i.aa = call noalias noundef ptr @stbi__loadf_main(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.ab = call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %stbi_loadf_from_file.exit, %bb.b
  %.0 = phi ptr [ %i.aa, %stbi_loadf_from_file.exit ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @stbi_loadf_from_file(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.stbi__context, align 8      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) @stbi__stdio_callbacks, i64 24, i1 false), !tbaa.struct !33
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %0, ptr %i.b, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 52
  store i32 128, ptr %i.c, align 4, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store i32 1, ptr %i.d, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 3 uses
  store i32 0, ptr %i.e, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 3 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !29
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.j = call i32 %i.i(ptr noundef %0, ptr noundef nonnull %i.f, i32 noundef 128) #37, !inline_history !89 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !28
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = load i32, ptr %i.e, align 8, !tbaa !27
  %i.r = add nsw i32 %i.q, %i.p
  store i32 %i.r, ptr %i.e, align 8, !tbaa !27
  %i.s = icmp eq i32 %i.j, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 8, !tbaa !26
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 57
  store i8 0, ptr %i.f, align 8, !tbaa !37
  br label %stbi__start_file.exit

bb.c:                                             ; preds = %bb.a
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  br label %stbi__start_file.exit

stbi__start_file.exit:                            ; preds = %bb.b, %bb.c
  %.sink.i.i.i = phi ptr [ %i.t, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 200
  store ptr %.sink.i.i.i, ptr %i.w, align 8, !tbaa !31
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 216
  store ptr %.sink.i.i.i, ptr %i.x, align 8, !tbaa !30
  %i.y = call ptr @stbi__loadf_main(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  ret ptr %i.y
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @stbi_is_hdr_from_memory(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.stbi__context, align 8      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr null, ptr %i.a, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 0, ptr %i.b, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 184
  store i32 0, ptr %i.c, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 208
  store ptr %0, ptr %i.d, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 192
  store ptr %0, ptr %i.e, align 8, !tbaa !29
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 216
  store ptr %i.g, ptr %i.h, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 200
  store ptr %i.g, ptr %i.i, align 8, !tbaa !31
  %i.j = call i32 @stbi__hdr_test(ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  ret i32 %i.j
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @stbi_is_hdr(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.stbi__context, align 8      ; 14 uses
  %i.a = tail call noalias noundef ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str.2) ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @ftell(ptr noundef nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) @stbi__stdio_callbacks, i64 24, i1 false), !tbaa.struct !33
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.a, ptr %i.d, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 52
  store i32 128, ptr %i.e, align 4, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  store i32 1, ptr %i.f, align 8, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  store i32 0, ptr %i.g, align 8, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  store ptr %i.h, ptr %i.j, align 8, !tbaa !29
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.l = call i32 %i.k(ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, i32 noundef 128) #37, !inline_history !247 ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !29
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !28
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = trunc i64 %i.q to i32
  %i.s = load i32, ptr %i.g, align 8, !tbaa !27
  %i.t = add nsw i32 %i.s, %i.r
  store i32 %i.t, ptr %i.g, align 8, !tbaa !27
  %i.u = icmp eq i32 %i.l, 0
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !26
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 57
  store i8 0, ptr %i.h, align 8, !tbaa !37
  br label %stbi_is_hdr_from_file.exit

bb.d:                                             ; preds = %bb.b
  %i.w = sext i32 %i.l to i64
  %i.x = getelementptr inbounds i8, ptr %i.h, i64 %i.w
  br label %stbi_is_hdr_from_file.exit

stbi_is_hdr_from_file.exit:                       ; preds = %bb.c, %bb.d
  %.sink.i.i.i.i = phi ptr [ %i.v, %bb.c ], [ %i.x, %bb.d ] ; 2 uses
  store ptr %i.h, ptr %i.j, align 8, !tbaa !29
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 200
  store ptr %.sink.i.i.i.i, ptr %i.y, align 8, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr %.sink.i.i.i.i, ptr %i.z, align 8, !tbaa !30
  %i.aa = call i32 @stbi__hdr_test(ptr noundef nonnull %1)
  %i.ab = call i32 @fseek(ptr noundef nonnull %i.a, i64 noundef %i.b, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  %i.ac = call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %stbi_is_hdr_from_file.exit, %bb.a
  %.0 = phi i32 [ %i.aa, %stbi_is_hdr_from_file.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @stbi_is_hdr_from_file(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.stbi__context, align 8      ; 14 uses
  %i.a = tail call i64 @ftell(ptr noundef %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) @stbi__stdio_callbacks, i64 24, i1 false), !tbaa.struct !33
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %0, ptr %i.c, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 52
  store i32 128, ptr %i.d, align 4, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  store i32 1, ptr %i.e, align 8, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  store i32 0, ptr %i.f, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  store ptr %i.g, ptr %i.i, align 8, !tbaa !29
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.k = call i32 %i.j(ptr noundef %0, ptr noundef nonnull %i.g, i32 noundef 128) #37, !inline_history !89 ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !29
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = trunc i64 %i.p to i32
  %i.r = load i32, ptr %i.f, align 8, !tbaa !27
  %i.s = add nsw i32 %i.r, %i.q
  store i32 %i.s, ptr %i.f, align 8, !tbaa !27
  %i.t = icmp eq i32 %i.k, 0
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.e, align 8, !tbaa !26
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 57
  store i8 0, ptr %i.g, align 8, !tbaa !37
  br label %stbi__start_file.exit

bb.c:                                             ; preds = %bb.a
  %i.v = sext i32 %i.k to i64
  %i.w = getelementptr inbounds i8, ptr %i.g, i64 %i.v
  br label %stbi__start_file.exit

stbi__start_file.exit:                            ; preds = %bb.b, %bb.c
  %.sink.i.i.i = phi ptr [ %i.u, %bb.b ], [ %i.w, %bb.c ] ; 2 uses
  store ptr %i.g, ptr %i.i, align 8, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 200
end_hunk_3
