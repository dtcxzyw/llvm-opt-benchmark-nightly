Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_image?download=true
inline.NumInlined: 718
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 64
loop-unroll.NumUnrolled: 84
begin_hunk_0_@stbi__hdr_load:bb.a
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
  %i.cm = and i64 %i.bl, 4294967295
  %wide.trip.count271 = and i64 %i.az, 2147483647
  %wide.trip.count = and i64 %i.bl, 4294967295
  br label %bb.x

bb.t:                                             ; preds = %bb.s, %bb.w
  %.0117 = phi i32 [ %i.cy, %bb.w ], [ 0, %bb.s ] ; 2 uses
  %i.cn = icmp slt i32 %.0117, %i.be
  br i1 %i.cn, label %bb.u, label %._crit_edge222.thread

bb.u:                                             ; preds = %bb.t, %bb.v
  %.0119 = phi i32 [ %i.cx, %bb.v ], [ 0, %bb.t ] ; 2 uses
  %.1118 = phi i32 [ %.2, %bb.v ], [ %.0117, %bb.t ] ; 2 uses
  %i.co = icmp slt i32 %.0119, %i.bm
  br i1 %i.co, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.y
  %.1120 = phi i32 [ %.0119, %bb.u ], [ 1, %bb.y ] ; 2 uses
  %.2 = phi i32 [ %.1118, %bb.u ], [ 0, %bb.y ]   ; 2 uses
  %i.cp = call i32 @stbi__getn(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef 4) ; 0 uses
  %i.cq = mul i32 %spec.store.select, %i.bm
  %i.cr = mul i32 %i.cq, %.2
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.cs
  %i.cu = mul nsw i32 %.1120, %spec.store.select
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.cv
  call void @stbi__hdr_convert(ptr noundef nonnull %i.cw, ptr noundef nonnull %i.c, i32 noundef %spec.store.select)
  %i.cx = add nsw i32 %.1120, 1
  br label %bb.u, !llvm.loop !199

bb.w:                                             ; preds = %bb.u
  %i.cy = add nsw i32 %.1118, 1
  br label %bb.t, !llvm.loop !200

bb.x:                                             ; preds = %.lr.ph221, %._crit_edge218
  %indvars.iv268 = phi i64 [ 0, %.lr.ph221 ], [ %indvars.iv.next269, %._crit_edge218 ] ; 2 uses
  %.0123219 = phi ptr [ null, %.lr.ph221 ], [ %.1124, %._crit_edge218 ] ; 4 uses
  %i.cz = call zeroext i8 @stbi__get8(ptr noundef %0) ; 2 uses
  %i.da = call zeroext i8 @stbi__get8(ptr noundef %0) ; 2 uses
  %i.db = call zeroext i8 @stbi__get8(ptr noundef %0) ; 3 uses
  %i.dc = icmp eq i8 %i.cz, 2
  %i.dd = icmp eq i8 %i.da, 2
  %or.cond3.not178 = select i1 %i.dc, i1 %i.dd, i1 false
  %.not148 = icmp sgt i8 %i.db, -1
  %or.cond151 = select i1 %or.cond3.not178, i1 %.not148, i1 false
  br i1 %or.cond151, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  store i8 %i.cz, ptr %i.d, align 1, !tbaa !37
  %i.de = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %i.da, ptr %i.de, align 1, !tbaa !37
  %i.df = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i8 %i.db, ptr %i.df, align 1, !tbaa !37
  %i.dg = call zeroext i8 @stbi__get8(ptr noundef %0)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !37
  call void @stbi__hdr_convert(ptr noundef nonnull %i.bu, ptr noundef nonnull %i.d, i32 noundef %spec.store.select)
  call void @free(ptr noundef %.0123219) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  br label %bb.v

bb.z:                                             ; preds = %bb.x
  %i.di = zext nneg i8 %i.db to i32
  %i.dj = shl nuw nsw i32 %i.di, 8
  %i.dk = call zeroext i8 @stbi__get8(ptr noundef %0)
  %i.dl = zext i8 %i.dk to i32
  %i.dm = or disjoint i32 %i.dj, %i.dl
  %.not149 = icmp eq i32 %i.dm, %i.bm
  br i1 %.not149, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @free(ptr noundef %i.bu) #37
  call void @free(ptr noundef %.0123219) #37
  %i.dn = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.109, ptr %i.dn, align 8, !tbaa !39
  br label %._crit_edge222.thread

bb.ab:                                            ; preds = %bb.z
  %i.do = icmp eq ptr %.0123219, null
  br i1 %i.do, label %stbi__malloc_mad2.exit, label %.preheader181.preheader

stbi__malloc_mad2.exit:                           ; preds = %bb.ab
  %i.dp = call noalias noundef ptr @malloc(i64 noundef %i.bz) #38 ; 2 uses
  %.not150 = icmp eq ptr %i.dp, null
  br i1 %.not150, label %stbi__malloc_mad2.exit.thread, label %.preheader181.preheader

stbi__malloc_mad2.exit.thread:                    ; preds = %stbi__malloc_mad2.exit
  call void @free(ptr noundef %i.bu) #37
  %i.dq = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.dq, align 8, !tbaa !39
  br label %._crit_edge222.thread

.preheader181.preheader:                          ; preds = %bb.ab, %stbi__malloc_mad2.exit
  %.1124 = phi ptr [ %i.dp, %stbi__malloc_mad2.exit ], [ %.0123219, %bb.ab ] ; 7 uses
  br label %.preheader181

.lr.ph217:                                        ; preds = %..critedge_crit_edge
  %i.dr = mul nuw nsw i64 %indvars.iv268, %i.cm
  br label %bb.av

.preheader181:                                    ; preds = %.preheader181.preheader, %..critedge_crit_edge
  %indvars.iv260 = phi i64 [ 0, %.preheader181.preheader ], [ %indvars.iv.next261, %..critedge_crit_edge ] ; 3 uses
  %invariant.gep = getelementptr i8, ptr %.1124, i64 %indvars.iv260
  %invariant.gep322 = getelementptr i8, ptr %.1124, i64 %indvars.iv260 ; 5 uses
  br label %bb.ac

bb.ac:                                            ; preds = %.preheader181, %.loopexit
  %i.ds = phi i32 [ %i.bm, %.preheader181 ], [ %i.hc, %.loopexit ] ; 2 uses
  %.2121213 = phi i32 [ 0, %.preheader181 ], [ %.5, %.loopexit ] ; 3 uses
  %i.dt = load ptr, ptr %i.ca, align 8, !tbaa !29 ; 3 uses
  %i.du = load ptr, ptr %i.cb, align 8, !tbaa !31 ; 2 uses
  %i.dv = icmp ult ptr %i.dt, %i.du
  br i1 %i.dv, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 1 ; 2 uses
  store ptr %i.dw, ptr %i.ca, align 8, !tbaa !29
  %i.dx = load i8, ptr %i.dt, align 1, !tbaa !37
  br label %stbi__get8.exit

bb.ae:                                            ; preds = %bb.ac
  %i.dy = load i32, ptr %i.cc, align 8, !tbaa !26
  %.not.i = icmp eq i32 %i.dy, 0
  br i1 %.not.i, label %.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dz = load ptr, ptr %i.cd, align 8, !tbaa !25
  %i.ea = load ptr, ptr %i.ce, align 8, !tbaa !34
  %i.eb = load i32, ptr %i.cg, align 4, !tbaa !35
  %i.ec = call i32 %i.dz(ptr noundef %i.ea, ptr noundef nonnull %i.cf, i32 noundef %i.eb) #37, !inline_history !65 ; 2 uses
  %i.ed = load ptr, ptr %i.ca, align 8, !tbaa !29
  %i.ee = load ptr, ptr %i.ch, align 8, !tbaa !28
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %i.ei = trunc i64 %i.eh to i32
  %i.ej = load i32, ptr %i.ci, align 8, !tbaa !27
  %i.ek = add nsw i32 %i.ej, %i.ei
  store i32 %i.ek, ptr %i.ci, align 8, !tbaa !27
  %i.el = icmp eq i32 %i.ec, 0
  br i1 %i.el, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.cc, align 8, !tbaa !26
  store i8 0, ptr %i.cf, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.em = sext i32 %i.ec to i64
  %i.en = getelementptr inbounds i8, ptr %i.cf, i64 %i.em
  %.pre.i = load i8, ptr %i.cf, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i

stbi__refill_buffer.exit.i:                       ; preds = %bb.ah, %bb.ag
  %i.eo = phi i8 [ 0, %bb.ag ], [ %.pre.i, %bb.ah ]
  %.sink.i.i = phi ptr [ %i.cj, %bb.ag ], [ %i.en, %bb.ah ] ; 2 uses
  store ptr %.sink.i.i, ptr %i.cb, align 8, !tbaa !31
  store ptr %i.cj, ptr %i.ca, align 8, !tbaa !29
  br label %stbi__get8.exit

stbi__get8.exit:                                  ; preds = %bb.ad, %stbi__refill_buffer.exit.i
  %i.ep = phi ptr [ %i.du, %bb.ad ], [ %.sink.i.i, %stbi__refill_buffer.exit.i ]
  %i.eq = phi ptr [ %i.dw, %bb.ad ], [ %i.cj, %stbi__refill_buffer.exit.i ] ; 3 uses
  %.0.i153 = phi i8 [ %i.dx, %bb.ad ], [ %i.eo, %stbi__refill_buffer.exit.i ] ; 4 uses
  %i.er = zext i8 %.0.i153 to i32                 ; 2 uses
  %i.es = icmp ugt i8 %.0.i153, -128
  br i1 %i.es, label %bb.ai, label %bb.ap

bb.ai:                                            ; preds = %stbi__get8.exit
  %i.et = icmp ult ptr %i.eq, %i.ep
  br i1 %i.et, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 1
  store ptr %i.eu, ptr %i.ca, align 8, !tbaa !29
  %i.ev = load i8, ptr %i.eq, align 1, !tbaa !37
  br label %stbi__get8.exit159

bb.ak:                                            ; preds = %bb.ai
  %i.ew = load i32, ptr %i.cc, align 8, !tbaa !26
  %.not.i154 = icmp eq i32 %i.ew, 0
  br i1 %.not.i154, label %stbi__get8.exit159, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ex = load ptr, ptr %i.cd, align 8, !tbaa !25
  %i.ey = load ptr, ptr %i.ce, align 8, !tbaa !34
  %i.ez = load i32, ptr %i.cg, align 4, !tbaa !35
  %i.fa = call i32 %i.ex(ptr noundef %i.ey, ptr noundef nonnull %i.cf, i32 noundef %i.ez) #37, !inline_history !65 ; 2 uses
  %i.fb = load ptr, ptr %i.ca, align 8, !tbaa !29
  %i.fc = load ptr, ptr %i.ch, align 8, !tbaa !28
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = sub i64 %i.fd, %i.fe
  %i.fg = trunc i64 %i.ff to i32
  %i.fh = load i32, ptr %i.ci, align 8, !tbaa !27
  %i.fi = add nsw i32 %i.fh, %i.fg
  store i32 %i.fi, ptr %i.ci, align 8, !tbaa !27
  %i.fj = icmp eq i32 %i.fa, 0
  br i1 %i.fj, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
end_hunk_0
begin_hunk_1_@stbi__tga_test:bb.a
  %.0 = phi i32 [ 0, %stbi__get8.exit65 ], [ 0, %bb.q ], [ 0, %stbi__get8.exit79 ], [ 0, %stbi__skip.exit85 ], [ 0, %bb.ag ], [ 0, %bb.ac ], [ 0, %bb.an ], [ %switch.ext, %switch.lookup ], [ %i.gv, %switch.early.test ], [ 0, %bb.v ]
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.gz = load <2 x ptr>, ptr %i.gy, align 8, !tbaa !39
  store <2 x ptr> %i.gz, ptr %i.a, align 8, !tbaa !39
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define noundef ptr @stbi__tga_load(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef %4, ptr nofree readnone captures(none) %5) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 49 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 20 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31   ; 3 uses
  %i.f = icmp ult ptr %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !tbaa !29
  %i.h = load i8, ptr %i.c, align 1, !tbaa !37
  br label %stbi__get8.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !26
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %stbi__get8.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !25
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !34
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.q = load i32, ptr %i.p, align 4, !tbaa !35
  %i.r = tail call i32 %i.l(ptr noundef %i.n, ptr noundef nonnull %i.o, i32 noundef %i.q) #37, !inline_history !65 ; 2 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !28
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = trunc i64 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !27
  %i.ab = add nsw i32 %i.aa, %i.y
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !27
  %i.ac = icmp eq i32 %i.r, 0
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.i, align 8, !tbaa !26
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.o, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ae = sext i32 %i.r to i64
  %i.af = getelementptr inbounds i8, ptr %i.o, i64 %i.ae
  %.pre.i = load i8, ptr %i.o, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i

stbi__refill_buffer.exit.i:                       ; preds = %bb.f, %bb.e
  %i.ag = phi i8 [ 0, %bb.e ], [ %.pre.i, %bb.f ]
  %.sink.i.i = phi ptr [ %i.ad, %bb.e ], [ %i.af, %bb.f ] ; 2 uses
  store ptr %.sink.i.i, ptr %i.d, align 8, !tbaa !31
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.ah, ptr %i.b, align 8, !tbaa !29
  br label %stbi__get8.exit

stbi__get8.exit:                                  ; preds = %bb.b, %bb.c, %stbi__refill_buffer.exit.i
  %i.ai = phi ptr [ %i.e, %bb.b ], [ %.sink.i.i, %stbi__refill_buffer.exit.i ], [ %i.e, %bb.c ] ; 3 uses
  %i.aj = phi ptr [ %i.g, %bb.b ], [ %i.ah, %stbi__refill_buffer.exit.i ], [ %i.c, %bb.c ] ; 4 uses
  %.0.i = phi i8 [ %i.h, %bb.b ], [ %i.ag, %stbi__refill_buffer.exit.i ], [ 0, %bb.c ] ; 3 uses
  %i.ak = zext i8 %.0.i to i32                    ; 2 uses
  %i.al = icmp ult ptr %i.aj, %i.ai
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %stbi__get8.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 1 ; 2 uses
  store ptr %i.am, ptr %i.b, align 8, !tbaa !29
  %i.an = load i8, ptr %i.aj, align 1, !tbaa !37
  br label %stbi__get8.exit226

bb.h:                                             ; preds = %stbi__get8.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !26
  %.not.i221 = icmp eq i32 %i.ap, 0
  br i1 %.not.i221, label %stbi__get8.exit226, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !25
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !34
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !35
  %i.ax = tail call i32 %i.ar(ptr noundef %i.at, ptr noundef nonnull %i.au, i32 noundef %i.aw) #37, !inline_history !65 ; 2 uses
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !28
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = trunc i64 %i.bd to i32
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !27
  %i.bh = add nsw i32 %i.bg, %i.be
  store i32 %i.bh, ptr %i.bf, align 8, !tbaa !27
  %i.bi = icmp eq i32 %i.ax, 0
  br i1 %i.bi, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ao, align 8, !tbaa !26
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.au, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i223

bb.k:                                             ; preds = %bb.i
  %i.bk = sext i32 %i.ax to i64
  %i.bl = getelementptr inbounds i8, ptr %i.au, i64 %i.bk
  %.pre.i222 = load i8, ptr %i.au, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i223

stbi__refill_buffer.exit.i223:                    ; preds = %bb.k, %bb.j
  %i.bm = phi i8 [ 0, %bb.j ], [ %.pre.i222, %bb.k ]
  %.sink.i.i224 = phi ptr [ %i.bj, %bb.j ], [ %i.bl, %bb.k ] ; 2 uses
  store ptr %.sink.i.i224, ptr %i.d, align 8, !tbaa !31
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.bn, ptr %i.b, align 8, !tbaa !29
  br label %stbi__get8.exit226

stbi__get8.exit226:                               ; preds = %bb.g, %bb.h, %stbi__refill_buffer.exit.i223
  %i.bo = phi ptr [ %i.ai, %bb.g ], [ %.sink.i.i224, %stbi__refill_buffer.exit.i223 ], [ %i.ai, %bb.h ]
  %i.bp = phi ptr [ %i.am, %bb.g ], [ %i.bn, %stbi__refill_buffer.exit.i223 ], [ %i.aj, %bb.h ] ; 3 uses
  %.0.i225 = phi i8 [ %i.an, %bb.g ], [ %i.bm, %stbi__refill_buffer.exit.i223 ], [ 0, %bb.h ]
  %i.bq = icmp ult ptr %i.bp, %i.bo
  br i1 %i.bq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %stbi__get8.exit226
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  store ptr %i.br, ptr %i.b, align 8, !tbaa !29
  %i.bs = load i8, ptr %i.bp, align 1, !tbaa !37
  br label %stbi__get8.exit232

bb.m:                                             ; preds = %stbi__get8.exit226
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !26
  %.not.i227 = icmp eq i32 %i.bu, 0
  br i1 %.not.i227, label %stbi__get8.exit232, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !25
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !34
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !35
  %i.cc = tail call i32 %i.bw(ptr noundef %i.by, ptr noundef nonnull %i.bz, i32 noundef %i.cb) #37, !inline_history !65 ; 2 uses
  %i.cd = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !28
  %i.cg = ptrtoint ptr %i.cd to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = trunc i64 %i.ci to i32
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !27
  %i.cm = add nsw i32 %i.cl, %i.cj
  store i32 %i.cm, ptr %i.ck, align 8, !tbaa !27
  %i.cn = icmp eq i32 %i.cc, 0
  br i1 %i.cn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.bt, align 8, !tbaa !26
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.bz, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i229

bb.p:                                             ; preds = %bb.n
  %i.cp = sext i32 %i.cc to i64
  %i.cq = getelementptr inbounds i8, ptr %i.bz, i64 %i.cp
  %.pre.i228 = load i8, ptr %i.bz, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i229

stbi__refill_buffer.exit.i229:                    ; preds = %bb.p, %bb.o
  %i.cr = phi i8 [ 0, %bb.o ], [ %.pre.i228, %bb.p ]
  %.sink.i.i230 = phi ptr [ %i.co, %bb.o ], [ %i.cq, %bb.p ]
  store ptr %.sink.i.i230, ptr %i.d, align 8, !tbaa !31
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %i.cs, ptr %i.b, align 8, !tbaa !29
  br label %stbi__get8.exit232

stbi__get8.exit232:                               ; preds = %bb.l, %bb.m, %stbi__refill_buffer.exit.i229
  %.0.i231 = phi i8 [ %i.bs, %bb.l ], [ %i.cr, %stbi__refill_buffer.exit.i229 ], [ 0, %bb.m ] ; 2 uses
  %i.ct = tail call i32 @stbi__get16le(ptr noundef nonnull %0) ; 4 uses
  %i.cu = tail call i32 @stbi__get16le(ptr noundef nonnull %0) ; 4 uses
  %i.cv = load ptr, ptr %i.b, align 8, !tbaa !29  ; 3 uses
  %i.cw = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.cx = icmp ult ptr %i.cv, %i.cw
  br i1 %i.cx, label %bb.q, label %bb.r

bb.q:                                             ; preds = %stbi__get8.exit232
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  store ptr %i.cy, ptr %i.b, align 8, !tbaa !29
  %i.cz = load i8, ptr %i.cv, align 1, !tbaa !37
  br label %stbi__get8.exit238

bb.r:                                             ; preds = %stbi__get8.exit232
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.db = load i32, ptr %i.da, align 8, !tbaa !26
  %.not.i233 = icmp eq i32 %i.db, 0
  br i1 %.not.i233, label %stbi__get8.exit238, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !25
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !34
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !35
  %i.dj = tail call i32 %i.dd(ptr noundef %i.df, ptr noundef nonnull %i.dg, i32 noundef %i.di) #37, !inline_history !65 ; 2 uses
  %i.dk = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !28
  %i.dn = ptrtoint ptr %i.dk to i64
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = trunc i64 %i.dp to i32
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !27
  %i.dt = add nsw i32 %i.ds, %i.dq
  store i32 %i.dt, ptr %i.dr, align 8, !tbaa !27
  %i.du = icmp eq i32 %i.dj, 0
  br i1 %i.du, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.da, align 8, !tbaa !26
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.dg, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i235

bb.u:                                             ; preds = %bb.s
  %i.dw = sext i32 %i.dj to i64
  %i.dx = getelementptr inbounds i8, ptr %i.dg, i64 %i.dw
  %.pre.i234 = load i8, ptr %i.dg, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i235

stbi__refill_buffer.exit.i235:                    ; preds = %bb.u, %bb.t
  %i.dy = phi i8 [ 0, %bb.t ], [ %.pre.i234, %bb.u ]
  %.sink.i.i236 = phi ptr [ %i.dv, %bb.t ], [ %i.dx, %bb.u ]
  store ptr %.sink.i.i236, ptr %i.d, align 8, !tbaa !31
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %i.dz, ptr %i.b, align 8, !tbaa !29
  br label %stbi__get8.exit238

stbi__get8.exit238:                               ; preds = %bb.q, %bb.r, %stbi__refill_buffer.exit.i235
  %.0.i237 = phi i8 [ %i.cz, %bb.q ], [ %i.dy, %stbi__refill_buffer.exit.i235 ], [ 0, %bb.r ] ; 2 uses
  %i.ea = tail call i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.eb = tail call i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.ec = tail call i32 @stbi__get16le(ptr noundef nonnull %0) ; 10 uses
  %i.ed = tail call i32 @stbi__get16le(ptr noundef nonnull %0) ; 19 uses
  %i.ee = load ptr, ptr %i.b, align 8, !tbaa !29  ; 4 uses
  %i.ef = load ptr, ptr %i.d, align 8, !tbaa !31  ; 3 uses
  %i.eg = icmp ult ptr %i.ee, %i.ef
  br i1 %i.eg, label %bb.v, label %bb.w

bb.v:                                             ; preds = %stbi__get8.exit238
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 1 ; 2 uses
  store ptr %i.eh, ptr %i.b, align 8, !tbaa !29
  %i.ei = load i8, ptr %i.ee, align 1, !tbaa !37
  br label %stbi__get8.exit244

bb.w:                                             ; preds = %stbi__get8.exit238
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !26
  %.not.i239 = icmp eq i32 %i.ek, 0
  br i1 %.not.i239, label %stbi__get8.exit244, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !25
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !34
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !35
  %i.es = tail call i32 %i.em(ptr noundef %i.eo, ptr noundef nonnull %i.ep, i32 noundef %i.er) #37, !inline_history !65 ; 2 uses
  %i.et = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !28
  %i.ew = ptrtoint ptr %i.et to i64
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = sub i64 %i.ew, %i.ex
  %i.ez = trunc i64 %i.ey to i32
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !27
  %i.fc = add nsw i32 %i.fb, %i.ez
  store i32 %i.fc, ptr %i.fa, align 8, !tbaa !27
  %i.fd = icmp eq i32 %i.es, 0
  br i1 %i.fd, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.ej, align 8, !tbaa !26
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.ep, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i241

bb.z:                                             ; preds = %bb.x
  %i.ff = sext i32 %i.es to i64
  %i.fg = getelementptr inbounds i8, ptr %i.ep, i64 %i.ff
  %.pre.i240 = load i8, ptr %i.ep, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i241

stbi__refill_buffer.exit.i241:                    ; preds = %bb.z, %bb.y
  %i.fh = phi i8 [ 0, %bb.y ], [ %.pre.i240, %bb.z ]
  %.sink.i.i242 = phi ptr [ %i.fe, %bb.y ], [ %i.fg, %bb.z ] ; 2 uses
  store ptr %.sink.i.i242, ptr %i.d, align 8, !tbaa !31
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.fi, ptr %i.b, align 8, !tbaa !29
  br label %stbi__get8.exit244

stbi__get8.exit244:                               ; preds = %bb.v, %bb.w, %stbi__refill_buffer.exit.i241
  %i.fj = phi ptr [ %i.ef, %bb.v ], [ %.sink.i.i242, %stbi__refill_buffer.exit.i241 ], [ %i.ef, %bb.w ] ; 3 uses
  %i.fk = phi ptr [ %i.eh, %bb.v ], [ %i.fi, %stbi__refill_buffer.exit.i241 ], [ %i.ee, %bb.w ] ; 4 uses
  %.0.i243 = phi i8 [ %i.ei, %bb.v ], [ %i.fh, %stbi__refill_buffer.exit.i241 ], [ 0, %bb.w ] ; 3 uses
  %i.fl = icmp ult ptr %i.fk, %i.fj
  br i1 %i.fl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %stbi__get8.exit244
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 1 ; 2 uses
  store ptr %i.fm, ptr %i.b, align 8, !tbaa !29
  %i.fn = load i8, ptr %i.fk, align 1, !tbaa !37
  br label %stbi__get8.exit250

bb.ab:                                            ; preds = %stbi__get8.exit244
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !26
  %.not.i245 = icmp eq i32 %i.fp, 0
  br i1 %.not.i245, label %stbi__get8.exit250, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !25
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !34
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !35
  %i.fx = tail call i32 %i.fr(ptr noundef %i.ft, ptr noundef nonnull %i.fu, i32 noundef %i.fw) #37, !inline_history !65 ; 2 uses
  %i.fy = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !28
  %i.gb = ptrtoint ptr %i.fy to i64
  %i.gc = ptrtoint ptr %i.ga to i64
  %i.gd = sub i64 %i.gb, %i.gc
  %i.ge = trunc i64 %i.gd to i32
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !27
  %i.gh = add nsw i32 %i.gg, %i.ge
  store i32 %i.gh, ptr %i.gf, align 8, !tbaa !27
  %i.gi = icmp eq i32 %i.fx, 0
  br i1 %i.gi, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.fo, align 8, !tbaa !26
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.fu, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i247

bb.ae:                                            ; preds = %bb.ac
  %i.gk = sext i32 %i.fx to i64
  %i.gl = getelementptr inbounds i8, ptr %i.fu, i64 %i.gk
  %.pre.i246 = load i8, ptr %i.fu, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i247

stbi__refill_buffer.exit.i247:                    ; preds = %bb.ae, %bb.ad
  %i.gm = phi i8 [ 0, %bb.ad ], [ %.pre.i246, %bb.ae ]
  %.sink.i.i248 = phi ptr [ %i.gj, %bb.ad ], [ %i.gl, %bb.ae ] ; 2 uses
  store ptr %.sink.i.i248, ptr %i.d, align 8, !tbaa !31
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.gn, ptr %i.b, align 8, !tbaa !29
  br label %stbi__get8.exit250

stbi__get8.exit250:                               ; preds = %bb.aa, %bb.ab, %stbi__refill_buffer.exit.i247
  %.pre.i259 = phi ptr [ %i.fm, %bb.aa ], [ %i.gn, %stbi__refill_buffer.exit.i247 ], [ %i.fk, %bb.ab ] ; 2 uses
  %i.go = phi ptr [ %i.fj, %bb.aa ], [ %.sink.i.i248, %stbi__refill_buffer.exit.i247 ], [ %i.fj, %bb.ab ] ; 2 uses
  %.0.i249 = phi i8 [ %i.fn, %bb.aa ], [ %i.gm, %stbi__refill_buffer.exit.i247 ], [ 0, %bb.ab ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i32 0, ptr %i.a, align 4
  %i.gp = icmp ugt i8 %.0.i231, 7                 ; 2 uses
  %.0.i249.fr = freeze i8 %.0.i249
  %i.gq = lshr i8 %.0.i249.fr, 5
  %i.gr = and i8 %i.gq, 1                         ; 2 uses
  %i.gs = icmp ne i8 %.0.i225, 0                  ; 4 uses
  br i1 %i.gs, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %stbi__get8.exit250
  switch i8 %.0.i237, label %stbi__tga_get_comp.exit [
    i8 8, label %bb.al
    i8 16, label %bb.ag
    i8 15, label %bb.ag
    i8 24, label %bb.ah
    i8 32, label %bb.ah
  ]

bb.ag:                                            ; preds = %bb.aj, %bb.ai, %bb.af, %bb.af
  br label %bb.al

bb.ah:                                            ; preds = %bb.af, %bb.af
  %i.gt = lshr i8 %.0.i237, 3
  br label %bb.al

bb.ai:                                            ; preds = %stbi__get8.exit250
  switch i8 %.0.i243, label %stbi__tga_get_comp.exit [
    i8 8, label %bb.al
    i8 16, label %bb.aj
    i8 15, label %bb.ag
    i8 24, label %bb.ak
    i8 32, label %bb.ak
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.gu = icmp eq i8 %.0.i231, 3
  br i1 %i.gu, label %bb.al, label %bb.ag

bb.ak:                                            ; preds = %bb.ai, %bb.ai
  %i.gv = lshr i8 %.0.i243, 3
  br label %bb.al

stbi__tga_get_comp.exit:                          ; preds = %bb.ai, %bb.af
  %i.gw = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.80, ptr %i.gw, align 8, !tbaa !39
  br label %bb.cp

bb.al:                                            ; preds = %bb.ag, %bb.ah, %bb.af, %bb.ak, %bb.ai, %bb.aj
  %i.gx = phi i1 [ false, %bb.ak ], [ false, %bb.ah ], [ false, %bb.aj ], [ false, %bb.ai ], [ true, %bb.ag ], [ false, %bb.af ] ; 2 uses
  %.not209 = phi i1 [ true, %bb.ak ], [ true, %bb.ah ], [ true, %bb.aj ], [ true, %bb.ai ], [ false, %bb.ag ], [ true, %bb.af ] ; 2 uses
  %.0193.ph.shrunk = phi i8 [ %i.gv, %bb.ak ], [ %i.gt, %bb.ah ], [ 2, %bb.aj ], [ 1, %bb.ai ], [ 3, %bb.ag ], [ 1, %bb.af ] ; 6 uses
  %.0193.ph = zext nneg i8 %.0193.ph.shrunk to i32 ; 11 uses
  store i32 %i.ec, ptr %1, align 4, !tbaa !40
  store i32 %i.ed, ptr %2, align 4, !tbaa !40
  %.not204 = icmp eq ptr %3, null
  br i1 %.not204, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store i32 %.0193.ph, ptr %3, align 4, !tbaa !40
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.gy = icmp eq i32 %i.ed, 0                    ; 2 uses
  br i1 %i.gy, label %stbi__mul2sizes_valid.exit.thread16.i, label %stbi__mul2sizes_valid.exit.i

stbi__mul2sizes_valid.exit.i:                     ; preds = %bb.an
  %i.gz = udiv i32 2147483647, %i.ed
  %.not24.i = icmp samesign ugt i32 %i.ec, %i.gz
  br i1 %.not24.i, label %bb.ao, label %stbi__mul2sizes_valid.exit.thread16.i.thread

stbi__mul2sizes_valid.exit.thread16.i:            ; preds = %bb.an
  %i.ha = mul nuw nsw i32 %i.ed, %i.ec            ; 2 uses
  %i.hb = udiv i32 2147483647, %.0193.ph
  %.not.i256 = icmp samesign ugt i32 %i.ha, %i.hb
  br i1 %.not.i256, label %bb.ao, label %stbi__malloc_mad3.exit

stbi__mul2sizes_valid.exit.thread16.i.thread:     ; preds = %stbi__mul2sizes_valid.exit.i
  %i.hc = mul nuw nsw i32 %i.ed, %i.ec            ; 2 uses
  %i.hd = udiv i32 2147483647, %.0193.ph
  %.not.i256452 = icmp samesign ugt i32 %i.hc, %i.hd
  br i1 %.not.i256452, label %bb.ao, label %stbi__mul2sizes_valid.exit.i.i

bb.ao:                                            ; preds = %stbi__mul2sizes_valid.exit.thread16.i.thread, %stbi__mul2sizes_valid.exit.thread16.i, %stbi__mul2sizes_valid.exit.i
  %i.he = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.28, ptr %i.he, align 8, !tbaa !39
  br label %bb.cp

stbi__mul2sizes_valid.exit.i.i:                   ; preds = %stbi__mul2sizes_valid.exit.thread16.i.thread
  %i.hf = udiv i32 2147483647, %i.ed
  %.not24.i.i = icmp samesign ugt i32 %i.ec, %i.hf
  br i1 %.not24.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__malloc_mad3.exit

stbi__malloc_mad3.exit:                           ; preds = %stbi__mul2sizes_valid.exit.i.i, %stbi__mul2sizes_valid.exit.thread16.i
  %i.hg = phi i32 [ %i.hc, %stbi__mul2sizes_valid.exit.i.i ], [ %i.ha, %stbi__mul2sizes_valid.exit.thread16.i ] ; 7 uses
  %i.hh = mul nuw nsw i32 %i.hg, %.0193.ph
  %i.hi = zext nneg i32 %i.hh to i64
  %i.hj = tail call noalias noundef ptr @malloc(i64 noundef %i.hi) #38 ; 26 uses
  %.not206 = icmp eq ptr %i.hj, null
  br i1 %.not206, label %stbi__malloc_mad3.exit.thread, label %bb.ap

stbi__malloc_mad3.exit.thread:                    ; preds = %stbi__mul2sizes_valid.exit.i.i, %stbi__malloc_mad3.exit
  %i.hk = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.hk, align 8, !tbaa !39
  br label %bb.cp

bb.ap:                                            ; preds = %stbi__malloc_mad3.exit
  %i.hl = icmp eq i8 %.0.i, 0
  br i1 %i.hl, label %stbi__skip.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !25
  %.not.i258 = icmp eq ptr %i.hn, null
  br i1 %.not.i258, label %.thread.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ho = ptrtoint ptr %i.go to i64
  %i.hp = ptrtoint ptr %.pre.i259 to i64
  %i.hq = sub i64 %i.ho, %i.hp
  %i.hr = trunc i64 %i.hq to i32                  ; 2 uses
  %i.hs = icmp sgt i32 %i.ak, %i.hr
  br i1 %i.hs, label %bb.as, label %.thread.i

bb.as:                                            ; preds = %bb.ar
  store ptr %i.go, ptr %i.b, align 8, !tbaa !29
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !67
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !34
  %i.hx = sub nsw i32 %i.ak, %i.hr
  tail call void %i.hu(ptr noundef %i.hw, i32 noundef %i.hx) #37, !inline_history !68
  br label %stbi__skip.exit

.thread.i:                                        ; preds = %bb.aq, %bb.ar
  %i.hy = zext i8 %.0.i to i64
  %i.hz = getelementptr inbounds nuw i8, ptr %.pre.i259, i64 %i.hy
  store ptr %i.hz, ptr %i.b, align 8, !tbaa !29
  br label %stbi__skip.exit

stbi__skip.exit:                                  ; preds = %bb.ap, %bb.as, %.thread.i
  %or.cond = or i1 %i.gs, %i.gp
  %or.cond3 = or i1 %or.cond, %i.gx
  br i1 %or.cond3, label %bb.ba, label %.preheader324

.preheader324:                                    ; preds = %stbi__skip.exit
  br i1 %i.gy, label %.loopexit325, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader324
  %.not207.not = icmp eq i8 %i.gr, 0              ; 2 uses
  %i.ia = mul nuw nsw i32 %i.ec, %.0193.ph        ; 10 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.id = zext nneg i32 %i.ia to i64              ; 14 uses
  %i.ie = load ptr, ptr %i.ib, align 8, !tbaa !25
  %i.if = icmp eq ptr %i.ie, null
  br i1 %i.if, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %.pre35.i.us = load ptr, ptr %i.d, align 8, !tbaa !31 ; 6 uses
  %.promoted = load ptr, ptr %i.b, align 8, !tbaa !29 ; 4 uses
  %wide.trip.count361 = zext nneg i32 %i.ed to i64 ; 4 uses
  br i1 %.not207.not, label %..thread_crit_edge.i262.us.us.preheader, label %..thread_crit_edge.i262.us.preheader

..thread_crit_edge.i262.us.preheader:             ; preds = %.lr.ph.split.us
  %xtraiter = and i64 %wide.trip.count361, 1
  %i.ig = icmp eq i32 %i.ed, 1
  br i1 %i.ig, label %..thread_crit_edge.i262.us.epil.preheader, label %..thread_crit_edge.i262.us.preheader.new

..thread_crit_edge.i262.us.preheader.new:         ; preds = %..thread_crit_edge.i262.us.preheader
  %unroll_iter = and i64 %wide.trip.count361, 65534
  br label %..thread_crit_edge.i262.us

..thread_crit_edge.i262.us.us.preheader:          ; preds = %.lr.ph.split.us
  %xtraiter487 = and i64 %wide.trip.count361, 1
  %i.ih = icmp eq i32 %i.ed, 1
  br i1 %i.ih, label %..thread_crit_edge.i262.us.us.epil.preheader, label %..thread_crit_edge.i262.us.us.preheader.new

..thread_crit_edge.i262.us.us.preheader.new:      ; preds = %..thread_crit_edge.i262.us.us.preheader
  %unroll_iter492 = and i64 %wide.trip.count361, 65534
  br label %..thread_crit_edge.i262.us.us

..thread_crit_edge.i262.us.us:                    ; preds = %stbi__getn.exit.us.us.1, %..thread_crit_edge.i262.us.us.preheader.new
  %indvars.iv358 = phi i64 [ 0, %..thread_crit_edge.i262.us.us.preheader.new ], [ %indvars.iv.next359.1, %stbi__getn.exit.us.us.1 ] ; 3 uses
  %i.ii = phi ptr [ %.promoted, %..thread_crit_edge.i262.us.us.preheader.new ], [ %i.iy, %stbi__getn.exit.us.us.1 ] ; 3 uses
  %niter493 = phi i64 [ 0, %..thread_crit_edge.i262.us.us.preheader.new ], [ %niter493.next.1, %stbi__getn.exit.us.us.1 ]
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.id ; 3 uses
  %.not32.i.us.us = icmp ugt ptr %i.ij, %.pre35.i.us
  br i1 %.not32.i.us.us, label %stbi__getn.exit.us.us, label %bb.at

bb.at:                                            ; preds = %..thread_crit_edge.i262.us.us
  %i.ik = trunc i64 %indvars.iv358 to i32
  %i.il = xor i32 %i.ik, -1
  %i.im = add i32 %i.ed, %i.il
  %i.in = mul i32 %i.ia, %i.im
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr inbounds i8, ptr %i.hj, i64 %i.io
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ip, ptr align 1 %i.ii, i64 %i.id, i1 false)
  store ptr %i.ij, ptr %i.b, align 8, !tbaa !29
  br label %stbi__getn.exit.us.us

stbi__getn.exit.us.us:                            ; preds = %..thread_crit_edge.i262.us.us, %bb.at
  %i.iq = phi ptr [ %i.ij, %bb.at ], [ %i.ii, %..thread_crit_edge.i262.us.us ] ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.id ; 3 uses
  %.not32.i.us.us.1 = icmp ugt ptr %i.ir, %.pre35.i.us
  br i1 %.not32.i.us.us.1, label %stbi__getn.exit.us.us.1, label %bb.au

bb.au:                                            ; preds = %stbi__getn.exit.us.us
  %i.is = trunc i64 %indvars.iv358 to i32
  %i.it = xor i32 %i.is, -2
  %i.iu = add i32 %i.ed, %i.it
  %i.iv = mul i32 %i.ia, %i.iu
  %i.iw = sext i32 %i.iv to i64
  %i.ix = getelementptr inbounds i8, ptr %i.hj, i64 %i.iw
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ix, ptr align 1 %i.iq, i64 %i.id, i1 false)
  store ptr %i.ir, ptr %i.b, align 8, !tbaa !29
  br label %stbi__getn.exit.us.us.1

stbi__getn.exit.us.us.1:                          ; preds = %bb.au, %stbi__getn.exit.us.us
  %i.iy = phi ptr [ %i.ir, %bb.au ], [ %i.iq, %stbi__getn.exit.us.us ] ; 2 uses
  %indvars.iv.next359.1 = add nuw nsw i64 %indvars.iv358, 2 ; 2 uses
  %niter493.next.1 = add i64 %niter493, 2         ; 2 uses
  %niter493.ncmp.1 = icmp eq i64 %niter493.next.1, %unroll_iter492
  br i1 %niter493.ncmp.1, label %.loopexit325.loopexit.unr-lcssa, label %..thread_crit_edge.i262.us.us, !llvm.loop !212

..thread_crit_edge.i262.us:                       ; preds = %stbi__getn.exit.us.1, %..thread_crit_edge.i262.us.preheader.new
  %indvars.iv = phi i64 [ 0, %..thread_crit_edge.i262.us.preheader.new ], [ %indvars.iv.next.1, %stbi__getn.exit.us.1 ] ; 3 uses
  %i.iz = phi ptr [ %.promoted, %..thread_crit_edge.i262.us.preheader.new ], [ %i.jm, %stbi__getn.exit.us.1 ] ; 3 uses
  %niter = phi i64 [ 0, %..thread_crit_edge.i262.us.preheader.new ], [ %niter.next.1, %stbi__getn.exit.us.1 ]
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.id ; 3 uses
  %.not32.i.us = icmp ugt ptr %i.ja, %.pre35.i.us
  br i1 %.not32.i.us, label %stbi__getn.exit.us, label %bb.av

bb.av:                                            ; preds = %..thread_crit_edge.i262.us
  %i.jb = trunc nuw nsw i64 %indvars.iv to i32
  %i.jc = mul i32 %i.ia, %i.jb
  %i.jd = sext i32 %i.jc to i64
end_hunk_1
