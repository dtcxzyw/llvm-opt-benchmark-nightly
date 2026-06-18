inline.NumInlined: 253
inline.NumDeleted: 55
begin_hunk_0_@and_cclass:bb.a
  store ptr %i.ea, ptr %i.l, align 8, !tbaa !63
  %.not.i52 = icmp eq ptr %i.m, null
  br i1 %.not.i52, label %bbuf_free.exit51, label %bbuf_free.exit51.sink.split

bbuf_free.exit51.sink.split:                      ; preds = %bb.w, %bb.v
  %.sink63 = phi ptr [ %i.ea, %bb.v ], [ %i.m, %bb.w ] ; 2 uses
  %.045.ph = phi i32 [ %.046, %bb.v ], [ 0, %bb.w ]
  %i.eb = load ptr, ptr %.sink63, align 8, !tbaa !66
  call void @free(ptr noundef %i.eb) #25
  call void @free(ptr noundef nonnull %.sink63) #25
  br label %bbuf_free.exit51

bbuf_free.exit51:                                 ; preds = %bbuf_free.exit51.sink.split, %bb.w, %bb.v, %bb.h
  %.045 = phi i32 [ 0, %bb.w ], [ 0, %bb.h ], [ %.046, %bb.v ], [ %.045.ph, %bbuf_free.exit51.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i32 %.045
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @or_cclass(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = alloca [8 x i32], align 16               ; 5 uses
  %i.c = alloca [8 x i32], align 16               ; 7 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = getelementptr i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !97   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store ptr null, ptr %i.a, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.g = getelementptr i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !145  ; 2 uses
  %i.i = trunc i32 %i.h to i1                     ; 4 uses
  %i.j = and i32 %i.h, 1
  %i.k = getelementptr i8, ptr %0, i64 8          ; 6 uses
  %i.l = getelementptr i8, ptr %0, i64 40         ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !63   ; 6 uses
  %i.n = getelementptr i8, ptr %1, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !145  ; 2 uses
  %i.p = trunc i32 %i.o to i1                     ; 2 uses
  %i.q = and i32 %i.o, 1
  %i.r = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.s = getelementptr i8, ptr %1, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !63   ; 3 uses
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = load <4 x i32>, ptr %i.k, align 8, !tbaa !7
  %i.v = xor <4 x i32> %i.u, splat (i32 -1)
  store <4 x i32> %i.v, ptr %i.b, align 16, !tbaa !7
  %i.w = getelementptr i8, ptr %0, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.y = load <4 x i32>, ptr %i.w, align 8, !tbaa !7
  %i.z = xor <4 x i32> %i.y, splat (i32 -1)
  store <4 x i32> %i.z, ptr %i.x, align 16, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.044 = phi ptr [ %i.b, %bb.b ], [ %i.k, %bb.a ] ; 10 uses
  %i.aa = load i32, ptr %i.r, align 8, !tbaa !7   ; 2 uses
  br i1 %i.p, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.ab = xor i32 %i.aa, -1                       ; 2 uses
  store i32 %i.ab, ptr %i.c, align 16, !tbaa !7
  %i.ac = getelementptr i8, ptr %1, i64 12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ae = load <4 x i32>, ptr %i.ac, align 4, !tbaa !7
  %i.af = xor <4 x i32> %i.ae, splat (i32 -1)
  store <4 x i32> %i.af, ptr %i.ad, align 4, !tbaa !7
  %i.ag = getelementptr i8, ptr %1, i64 28
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.ai = load <2 x i32>, ptr %i.ag, align 4, !tbaa !7
  %i.aj = xor <2 x i32> %i.ai, splat (i32 -1)
  store <2 x i32> %i.aj, ptr %i.ah, align 4, !tbaa !7
  %i.ak = getelementptr i8, ptr %1, i64 36
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !7
  %i.am = xor i32 %i.al, -1
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i32 %i.am, ptr %i.an, align 4, !tbaa !7
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.d
  %i.ao = phi i32 [ %i.ab, %bb.d ], [ %i.aa, %bb.c ]
  %.0 = phi ptr [ %i.c, %bb.d ], [ %i.r, %bb.c ]  ; 7 uses
  %i.ap = load i32, ptr %.044, align 4, !tbaa !7
  %i.aq = or i32 %i.ap, %i.ao                     ; 2 uses
  store i32 %i.aq, ptr %.044, align 4, !tbaa !7
  %i.ar = getelementptr i8, ptr %.0, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !7
  %i.at = getelementptr i8, ptr %.044, i64 4      ; 3 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !7
  %i.av = or i32 %i.au, %i.as
  store i32 %i.av, ptr %i.at, align 4, !tbaa !7
  %i.aw = getelementptr i8, ptr %.0, i64 8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !7
  %i.ay = getelementptr i8, ptr %.044, i64 8      ; 3 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !7
  %i.ba = or i32 %i.az, %i.ax
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !7
  %i.bb = getelementptr i8, ptr %.0, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !7
  %i.bd = getelementptr i8, ptr %.044, i64 12     ; 3 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !7
  %i.bf = or i32 %i.be, %i.bc
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !7
  %i.bg = getelementptr i8, ptr %.0, i64 16
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !7
  %i.bi = getelementptr i8, ptr %.044, i64 16     ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !7
  %i.bk = or i32 %i.bj, %i.bh
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !7
  %i.bl = getelementptr i8, ptr %.0, i64 20
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !7
  %i.bn = getelementptr i8, ptr %.044, i64 20     ; 3 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !7
  %i.bp = or i32 %i.bo, %i.bm
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !7
  %i.bq = getelementptr i8, ptr %.0, i64 24
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !7
  %i.bs = getelementptr i8, ptr %.044, i64 24     ; 3 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !7
  %i.bu = or i32 %i.bt, %i.br
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !7
  %i.bv = getelementptr i8, ptr %.0, i64 28
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !7
  %i.bx = getelementptr i8, ptr %.044, i64 28     ; 3 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !7
  %i.bz = or i32 %i.by, %i.bw
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !7
  %.not = icmp eq ptr %.044, %i.k
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  store i32 %i.aq, ptr %i.k, align 8, !tbaa !7
  %i.ca = load i32, ptr %i.at, align 4, !tbaa !7
  %i.cb = getelementptr i8, ptr %0, i64 12
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !7
  %i.cc = load i32, ptr %i.ay, align 4, !tbaa !7
  %i.cd = getelementptr i8, ptr %0, i64 16
  store i32 %i.cc, ptr %i.cd, align 8, !tbaa !7
  %i.ce = load i32, ptr %i.bd, align 4, !tbaa !7
  %i.cf = getelementptr i8, ptr %0, i64 20
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !7
  %i.cg = load i32, ptr %i.bi, align 4, !tbaa !7
  %i.ch = getelementptr i8, ptr %0, i64 24
  store i32 %i.cg, ptr %i.ch, align 8, !tbaa !7
  %i.ci = load i32, ptr %i.bn, align 4, !tbaa !7
  %i.cj = getelementptr i8, ptr %0, i64 28
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !7
  %i.ck = load i32, ptr %i.bs, align 4, !tbaa !7
  %i.cl = getelementptr i8, ptr %0, i64 32
  store i32 %i.ck, ptr %i.cl, align 8, !tbaa !7
  %i.cm = load i32, ptr %i.bx, align 4, !tbaa !7
  %i.cn = getelementptr i8, ptr %0, i64 36
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.co = load <4 x i32>, ptr %i.k, align 8, !tbaa !7
  %i.cp = xor <4 x i32> %i.co, splat (i32 -1)
  store <4 x i32> %i.cp, ptr %i.k, align 8, !tbaa !7
  %i.cq = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.cr = load <4 x i32>, ptr %i.cq, align 8, !tbaa !7
  %i.cs = xor <4 x i32> %i.cr, splat (i32 -1)
  store <4 x i32> %i.cs, ptr %i.cq, align 8, !tbaa !7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ct = getelementptr i8, ptr %i.f, i64 16
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !70
  %i.cv = icmp eq i32 %i.cu, 1
  br i1 %i.cv, label %bbuf_free.exit51, label %bb.i

bb.i:                                             ; preds = %bb.h
  %or.cond = select i1 %i.i, i1 %i.p, i1 false
  br i1 %or.cond, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %i.a, align 8, !tbaa !138
  %i.cw = icmp eq ptr %i.m, null
  br i1 %i.cw, label %bbuf_free.exit51, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cx = icmp eq ptr %i.t, null
  br i1 %i.cx, label %and_code_range_buf.exit.thread.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cy = load ptr, ptr %i.t, align 8, !tbaa !66  ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !7  ; 2 uses
  %i.da = getelementptr i8, ptr %i.cy, i64 4      ; 2 uses
  %i.db = load ptr, ptr %i.m, align 8, !tbaa !66  ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !7  ; 2 uses
  %i.dd = getelementptr i8, ptr %i.db, i64 4      ; 2 uses
  %3 = icmp ne i32 %i.dc, 0
  %4 = icmp ne i32 %i.cz, 0
  %or.cond127.i = select i1 %3, i1 %4, i1 false
  br i1 %or.cond127.i, label %.lr.ph123.preheader.i, label %and_code_range_buf.exit.thread.thread

.lr.ph123.preheader.i:                            ; preds = %bb.l
  %wide.trip.count149.i = zext i32 %i.dc to i64
  %wide.trip.count144.i = zext i32 %i.cz to i64
  br label %.lr.ph123.i

.lr.ph123.i:                                      ; preds = %._crit_edge.i, %.lr.ph123.preheader.i
  %indvars.iv146.i = phi i64 [ 0, %.lr.ph123.preheader.i ], [ %indvars.iv.next147.i, %._crit_edge.i ] ; 2 uses
  %i.de = trunc nuw i64 %indvars.iv146.i to i32
  %i.df = shl i32 %i.de, 1                        ; 2 uses
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr [4 x i8], ptr %i.dd, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !7  ; 2 uses
  %i.dj = or disjoint i32 %i.df, 1
  %i.dk = zext i32 %i.dj to i64
  %i.dl = getelementptr [4 x i8], ptr %i.dd, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !7  ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.p, %.lr.ph123.i
  %indvars.iv141.i = phi i64 [ 0, %.lr.ph123.i ], [ %indvars.iv.next142.i, %bb.p ] ; 2 uses
  %i.dn = trunc nuw i64 %indvars.iv141.i to i32
  %i.do = shl i32 %i.dn, 1                        ; 2 uses
  %i.dp = zext i32 %i.do to i64
  %i.dq = getelementptr [4 x i8], ptr %i.da, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !7  ; 2 uses
  %i.ds = or disjoint i32 %i.do, 1
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr [4 x i8], ptr %i.da, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !7  ; 2 uses
  %i.dw = icmp ugt i32 %i.dr, %i.dm
  br i1 %i.dw, label %._crit_edge.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dx = icmp ult i32 %i.dv, %i.di
  br i1 %i.dx, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dy = call i32 @llvm.umax.i32(i32 %i.di, i32 %i.dr)
  %i.dz = call i32 @llvm.umin.i32(i32 %i.dm, i32 %i.dv)
  %i.ea = call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %i.a, ptr noundef %2, i32 noundef %i.dy, i32 noundef %i.dz, i32 noundef 1) ; 2 uses
  %.not94.i = icmp eq i32 %i.ea, 0
  br i1 %.not94.i, label %bb.p, label %and_code_range_buf.exit.thread56

bb.p:                                             ; preds = %bb.o, %bb.n
  %indvars.iv.next142.i = add nuw nsw i64 %indvars.iv141.i, 1 ; 2 uses
  %exitcond145.not.i = icmp eq i64 %indvars.iv.next142.i, %wide.trip.count144.i
  br i1 %exitcond145.not.i, label %._crit_edge.i, label %bb.m, !llvm.loop !202

._crit_edge.i:                                    ; preds = %bb.p, %bb.m
  %indvars.iv.next147.i = add nuw nsw i64 %indvars.iv146.i, 1 ; 2 uses
  %exitcond150.not.i = icmp eq i64 %indvars.iv.next147.i, %wide.trip.count149.i
  br i1 %exitcond150.not.i, label %and_code_range_buf.exit.thread, label %.lr.ph123.i, !llvm.loop !203

bb.q:                                             ; preds = %bb.i
  %i.eb = call fastcc i32 @or_code_range_buf(ptr noundef nonnull %i.f, ptr noundef %i.m, i32 noundef %i.j, ptr noundef %i.t, i32 noundef %i.q, ptr noundef %i.a, ptr noundef nonnull %2) ; 2 uses
  %i.ec = icmp eq i32 %i.eb, 0
  %or.cond3 = and i1 %i.ec, %i.i
  br i1 %or.cond3, label %bb.r, label %and_code_range_buf.exit

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.ed = load ptr, ptr %i.a, align 8, !tbaa !138 ; 4 uses
  store ptr null, ptr %i.d, align 8, !tbaa !138
  %i.ee = icmp eq ptr %i.ed, null                 ; 2 uses
  br i1 %i.ee, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.t, %bb.r
  %i.ef = getelementptr i8, ptr %i.f, i64 20
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !47
  %i.eh = icmp sgt i32 %i.eg, 1
  %i.ei = select i1 %i.eh, i32 0, i32 128
  br label %.thread.sink.split.i

bb.t:                                             ; preds = %bb.r
  %i.ej = load ptr, ptr %i.ed, align 8, !tbaa !66 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !7  ; 2 uses
  %i.el = getelementptr i8, ptr %i.ej, i64 4
  %i.em = icmp slt i32 %i.ek, 1
  br i1 %i.em, label %bb.s, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.en = getelementptr i8, ptr %i.f, i64 20
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !47
  %i.ep = icmp sgt i32 %i.eo, 1
  %i.eq = select i1 %i.ep, i32 0, i32 128
  %wide.trip.count.i = zext nneg i32 %i.ek to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.y, %bb.u
  %indvars.iv.i = phi i64 [ 0, %bb.u ], [ %indvars.iv.next.i, %bb.y ] ; 2 uses
  %.03350.i = phi i32 [ %i.eq, %bb.u ], [ %i.fa, %bb.y ] ; 2 uses
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.er = shl i32 %indvars.iv.tr.i, 1
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr [4 x i8], ptr %i.el, i64 %i.es ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !7
  %i.ev = getelementptr i8, ptr %i.et, i64 4
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !7  ; 2 uses
  %i.ex = add i32 %i.eu, -1                       ; 2 uses
  %.not.i = icmp ugt i32 %.03350.i, %i.ex
  br i1 %.not.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ey = call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %i.d, ptr noundef nonnull %2, i32 noundef %.03350.i, i32 noundef %i.ex, i32 noundef 1) ; 2 uses
  %.not44.i = icmp eq i32 %i.ey, 0
  br i1 %.not44.i, label %bb.x, label %not_code_range_buf.exit

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ez = icmp eq i32 %i.ew, -1
  br i1 %i.ez, label %not_code_range_buf.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fa = add nuw i32 %i.ew, 1                    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.thread.sink.split.i, label %bb.v, !llvm.loop !194

.thread.sink.split.i:                             ; preds = %bb.y, %bb.s
  %.lcssa.sink.i = phi i32 [ %i.ei, %bb.s ], [ %i.fa, %bb.y ]
  %i.fb = call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %i.d, ptr noundef nonnull %2, i32 noundef %.lcssa.sink.i, i32 noundef -1, i32 noundef 1)
  br label %not_code_range_buf.exit

not_code_range_buf.exit:                          ; preds = %bb.w, %bb.x, %.thread.sink.split.i
  %.032.i = phi i32 [ %i.fb, %.thread.sink.split.i ], [ %i.ey, %bb.w ], [ 0, %bb.x ]
  br i1 %i.ee, label %bbuf_free.exit, label %bb.z

bb.z:                                             ; preds = %not_code_range_buf.exit
  %i.fc = load ptr, ptr %i.ed, align 8, !tbaa !66
  call void @free(ptr noundef %i.fc) #25
  call void @free(ptr noundef nonnull %i.ed) #25
  br label %bbuf_free.exit

bbuf_free.exit:                                   ; preds = %not_code_range_buf.exit, %bb.z
  %i.fd = load ptr, ptr %i.d, align 8, !tbaa !138
  store ptr %i.fd, ptr %i.a, align 8, !tbaa !138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %and_code_range_buf.exit

and_code_range_buf.exit:                          ; preds = %bb.q, %bbuf_free.exit
  %.046 = phi i32 [ %i.eb, %bb.q ], [ %.032.i, %bbuf_free.exit ] ; 2 uses
  %.not48 = icmp eq i32 %.046, 0
  br i1 %.not48, label %and_code_range_buf.exit.thread, label %and_code_range_buf.exit.thread56

and_code_range_buf.exit.thread56:                 ; preds = %bb.o, %and_code_range_buf.exit
  %.04659 = phi i32 [ %.046, %and_code_range_buf.exit ], [ %i.ea, %bb.o ] ; 2 uses
  %i.fe = load ptr, ptr %i.a, align 8, !tbaa !138 ; 2 uses
  %.not.i50 = icmp eq ptr %i.fe, null
  br i1 %.not.i50, label %bbuf_free.exit51, label %bbuf_free.exit51.sink.split

and_code_range_buf.exit.thread.thread:            ; preds = %bb.k, %bb.l
  store ptr null, ptr %i.l, align 8, !tbaa !63
  br label %bbuf_free.exit51.sink.split

and_code_range_buf.exit.thread:                   ; preds = %._crit_edge.i, %and_code_range_buf.exit
  %i.ff = load ptr, ptr %i.a, align 8, !tbaa !138
  store ptr %i.ff, ptr %i.l, align 8, !tbaa !63
  %.not.i52 = icmp eq ptr %i.m, null
  br i1 %.not.i52, label %bbuf_free.exit51, label %bbuf_free.exit51.sink.split

bbuf_free.exit51.sink.split:                      ; preds = %and_code_range_buf.exit.thread, %and_code_range_buf.exit.thread.thread, %and_code_range_buf.exit.thread56
  %.sink83 = phi ptr [ %i.fe, %and_code_range_buf.exit.thread56 ], [ %i.m, %and_code_range_buf.exit.thread.thread ], [ %i.m, %and_code_range_buf.exit.thread ] ; 2 uses
  %.045.ph = phi i32 [ %.04659, %and_code_range_buf.exit.thread56 ], [ 0, %and_code_range_buf.exit.thread.thread ], [ 0, %and_code_range_buf.exit.thread ]
  %i.fg = load ptr, ptr %.sink83, align 8, !tbaa !66
  call void @free(ptr noundef %i.fg) #25
  call void @free(ptr noundef nonnull %.sink83) #25
  br label %bbuf_free.exit51

bbuf_free.exit51:                                 ; preds = %bbuf_free.exit51.sink.split, %bb.j, %and_code_range_buf.exit.thread, %and_code_range_buf.exit.thread56, %bb.h
  %.045 = phi i32 [ 0, %bb.j ], [ 0, %bb.h ], [ %.04659, %and_code_range_buf.exit.thread56 ], [ 0, %and_code_range_buf.exit.thread ], [ %.045.ph, %bbuf_free.exit51.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i32 %.045
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @or_code_range_buf(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address) %1, i32 noundef range(i32 0, 2) %2, ptr nofree noundef readonly captures(address) %3, i32 noundef range(i32 0, 2) %4, ptr nofree noundef nonnull captures(none) initializes((0, 8)) %5, ptr nofree noundef captures(none) %6) unnamed_addr #5 {
bb.a:
  store ptr null, ptr %5, align 8, !tbaa !138
  %i.a = icmp eq ptr %1, null                     ; 2 uses
  %i.b = icmp eq ptr %3, null                     ; 5 uses
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = or i32 %4, %2
  %or.cond3.not = icmp eq i32 %i.c, 0
  br i1 %or.cond3.not, label %bbuf_clone.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !47
  %i.f = icmp sgt i32 %i.e, 1
  %i.g = select i1 %i.f, i32 0, i32 128
  %i.h = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %5, ptr noundef %6, i32 noundef %i.g, i32 noundef -1, i32 noundef 1)
  br label %bbuf_clone.exit

bb.d:                                             ; preds = %bb.a
  %brmerge = or i1 %i.b, %i.a
end_hunk_0
begin_hunk_1_@or_code_range_buf:bb.a

bb.ac:                                            ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bbuf_clone.exit, label %.lr.ph, !llvm.loop !204

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ac
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ac ] ; 2 uses
  %i.cp = trunc nuw i64 %indvars.iv to i32
  %i.cq = shl i32 %i.cp, 1                        ; 2 uses
  %i.cr = zext i32 %i.cq to i64
  %i.cs = getelementptr [4 x i8], ptr %i.co, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !7
  %i.cu = or disjoint i32 %i.cq, 1
  %i.cv = zext i32 %i.cu to i64
  %i.cw = getelementptr [4 x i8], ptr %i.co, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !7
  %i.cy = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %5, ptr noundef %6, i32 noundef %i.ct, i32 noundef %i.cx, i32 noundef 1) ; 2 uses
  %.not79 = icmp eq i32 %i.cy, 0
  br i1 %.not79, label %bb.ac, label %bbuf_clone.exit

bbuf_clone.exit:                                  ; preds = %bb.z, %.lr.ph, %bb.ac, %bb.p, %bb.o, %.preheader, %bb.t, %bb.u, %.thread.sink.split.i, %bb.i, %bb.h, %bb.g, %bbuf_clone.exit84, %bb.b, %bb.e, %bb.c
  %.0 = phi i32 [ %i.h, %bb.c ], [ 0, %.preheader ], [ %i.m, %bb.e ], [ 0, %bb.p ], [ %i.t, %bb.h ], [ 0, %bb.b ], [ %i.cm, %bbuf_clone.exit84 ], [ 0, %bb.i ], [ -5, %bb.g ], [ -5, %bb.t ], [ %i.bh, %bb.u ], [ %i.ax, %.thread.sink.split.i ], [ 0, %bb.ac ], [ %i.au, %bb.o ], [ %i.cy, %.lr.ph ], [ %i.cj, %bb.z ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @and_code_range_buf(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef range(i32 0, 2) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef range(i32 0, 2) %3, ptr nofree noundef nonnull captures(none) initializes((0, 8)) %4, ptr nofree noundef captures(none) %5) unnamed_addr #5 {
bb.a:
  store ptr null, ptr %4, align 8, !tbaa !138
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne i32 %1, 0
  %i.c = icmp ne ptr %2, null
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.c, label %bbuf_clone.exit

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26 ; 4 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !138
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bbuf_clone.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %2, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !181
  %i.h = zext i32 %i.g to i64
  %i.i = tail call i32 @onig_bbuf_init(ptr noundef nonnull %i.d, i64 noundef %i.h) #25 ; 2 uses
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bbuf_clone.exit.sink.split, label %bbuf_clone.exit

bb.e:                                             ; preds = %bb.a
  %i.j = icmp eq ptr %2, null
  br i1 %i.j, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %.not95 = icmp eq i32 %3, 0
  br i1 %.not95, label %bbuf_clone.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26 ; 4 uses
  store ptr %i.k, ptr %4, align 8, !tbaa !138
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bbuf_clone.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr i8, ptr %0, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !181
  %i.o = zext i32 %i.n to i64
  %i.p = tail call i32 @onig_bbuf_init(ptr noundef nonnull %i.k, i64 noundef %i.o) #25 ; 2 uses
  %.not.i96 = icmp eq i32 %i.p, 0
  br i1 %.not.i96, label %bbuf_clone.exit.sink.split, label %bbuf_clone.exit

bb.i:                                             ; preds = %bb.e
  %.not = icmp eq i32 %1, 0
  %i.q = load ptr, ptr %2, align 8, !tbaa !66     ; 3 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !7    ; 4 uses
  %i.s = getelementptr i8, ptr %i.q, i64 4        ; 3 uses
  br i1 %.not, label %bb.j, label %.thread

.thread:                                          ; preds = %bb.i
  %i.t = icmp eq i32 %3, 0
  %i.u = load ptr, ptr %0, align 8, !tbaa !66     ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !7
  br i1 %i.t, label %.preheader111, label %bbuf_clone.exit

bb.j:                                             ; preds = %bb.i
  %i.w = load ptr, ptr %0, align 8, !tbaa !66     ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !7    ; 3 uses
  %i.y = getelementptr i8, ptr %i.w, i64 4        ; 3 uses
  %i.z = icmp eq i32 %3, 0
  br i1 %i.z, label %.preheader, label %.preheader111

.preheader111:                                    ; preds = %.thread, %bb.j
  %.ph = phi i32 [ %i.x, %bb.j ], [ %i.r, %.thread ] ; 2 uses
  %.ph112 = phi i32 [ %i.r, %bb.j ], [ %i.v, %.thread ] ; 2 uses
  %.ph113 = phi ptr [ %i.y, %bb.j ], [ %i.s, %.thread ] ; 4 uses
  %i.aa = phi ptr [ %i.q, %bb.j ], [ %i.u, %.thread ]
  %.not128.a = icmp eq i32 %.ph, 0
  br i1 %.not128.a, label %bbuf_clone.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader111
  %i.ab = icmp sgt i32 %.ph112, 0
  %wide.trip.count.i = zext nneg i32 %.ph112 to i64
  %wide.trip.count139 = zext i32 %.ph to i64      ; 2 uses
  br i1 %i.ab, label %.lr.ph.preheader.i.us.preheader, label %._crit_edge.i

.lr.ph.preheader.i.us.preheader:                  ; preds = %.lr.ph
  %i.ac = getelementptr i8, ptr %i.aa, i64 4
  br label %.lr.ph.preheader.i.us

.lr.ph.preheader.i.us:                            ; preds = %.lr.ph.preheader.i.us.preheader, %and_code_range1.exit.us
  %indvars.iv136 = phi i64 [ 0, %.lr.ph.preheader.i.us.preheader ], [ %indvars.iv.next137, %and_code_range1.exit.us ] ; 2 uses
  %i.ad = trunc nuw i64 %indvars.iv136 to i32
  %i.ae = shl i32 %i.ad, 1                        ; 2 uses
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr [4 x i8], ptr %.ph113, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !7
  %i.ai = or disjoint i32 %i.ae, 1
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr [4 x i8], ptr %.ph113, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !7
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %bb.s, %.lr.ph.preheader.i.us
  %indvars.iv.i.us = phi i64 [ 0, %.lr.ph.preheader.i.us ], [ %indvars.iv.next.i.us, %bb.s ] ; 2 uses
  %.03755.i.us = phi i32 [ %i.ah, %.lr.ph.preheader.i.us ], [ %.2.i.us, %bb.s ] ; 6 uses
  %.03953.i.us = phi i32 [ %i.al, %.lr.ph.preheader.i.us ], [ %.241.i.us, %bb.s ] ; 6 uses
  %indvars.iv.tr.i.us = trunc i64 %indvars.iv.i.us to i32
  %i.am = shl i32 %indvars.iv.tr.i.us, 1
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr [4 x i8], ptr %i.ac, i64 %i.an ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !7  ; 4 uses
  %i.aq = getelementptr i8, ptr %i.ao, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !7  ; 4 uses
  %i.as = icmp ult i32 %i.ap, %.03755.i.us
  br i1 %i.as, label %bb.p, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.us
  %.not.i100.us = icmp ugt i32 %i.ap, %.03953.i.us
  br i1 %.not.i100.us, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = icmp ult i32 %i.ar, %.03953.i.us
  %i.au = add i32 %i.ap, -1                       ; 3 uses
  br i1 %i.at, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %.not49.i.us = icmp ugt i32 %.03755.i.us, %i.au
  br i1 %.not49.i.us, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %4, ptr noundef %5, i32 noundef %.03755.i.us, i32 noundef %i.au, i32 noundef 1) ; 2 uses
  %.not50.i.us = icmp eq i32 %i.av, 0
  br i1 %.not50.i.us, label %bb.o, label %bbuf_clone.exit

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.aw = add nuw i32 %i.ar, 1
  br label %bb.r

bb.p:                                             ; preds = %.lr.ph.i.us
  %i.ax = icmp ult i32 %i.ar, %.03755.i.us
  br i1 %i.ax, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = add i32 %i.ar, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.l, %bb.k
  %.140.i.us = phi i32 [ %.03953.i.us, %bb.q ], [ %.03953.i.us, %bb.o ], [ %.03953.i.us, %bb.k ], [ %i.au, %bb.l ] ; 3 uses
  %.1.i.us = phi i32 [ %i.ay, %bb.q ], [ %i.aw, %bb.o ], [ %i.ap, %bb.k ], [ %.03755.i.us, %bb.l ] ; 3 uses
  %i.az = icmp ugt i32 %.1.i.us, %.140.i.us
  br i1 %i.az, label %._crit_edge.i.loopexit.us, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %.241.i.us = phi i32 [ %.03953.i.us, %bb.p ], [ %.140.i.us, %bb.r ] ; 2 uses
  %.2.i.us = phi i32 [ %.03755.i.us, %bb.p ], [ %.1.i.us, %bb.r ] ; 2 uses
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %._crit_edge.i.loopexit.us, label %.lr.ph.i.us, !llvm.loop !205

bb.t:                                             ; preds = %._crit_edge.i.loopexit.us
  %i.ba = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %4, ptr noundef %5, i32 noundef %.3.i.ph.us, i32 noundef %.342.i.ph.us, i32 noundef 1) ; 2 uses
  %.not52.i.us = icmp eq i32 %i.ba, 0
  br i1 %.not52.i.us, label %and_code_range1.exit.us, label %bbuf_clone.exit

and_code_range1.exit.us:                          ; preds = %bb.t, %._crit_edge.i.loopexit.us
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1 ; 2 uses
  %exitcond140.not = icmp eq i64 %indvars.iv.next137, %wide.trip.count139
  br i1 %exitcond140.not, label %bbuf_clone.exit, label %.lr.ph.preheader.i.us, !llvm.loop !206

._crit_edge.i.loopexit.us:                        ; preds = %bb.s, %bb.r
  %.342.i.ph.us = phi i32 [ %.241.i.us, %bb.s ], [ %.140.i.us, %bb.r ] ; 2 uses
  %.3.i.ph.us = phi i32 [ %.2.i.us, %bb.s ], [ %.1.i.us, %bb.r ] ; 2 uses
  %.not51.i.us = icmp ugt i32 %.3.i.ph.us, %.342.i.ph.us
  br i1 %.not51.i.us, label %and_code_range1.exit.us, label %bb.t

.preheader:                                       ; preds = %bb.j
  %6 = icmp ne i32 %i.x, 0
  %7 = icmp ne i32 %i.r, 0
  %or.cond127 = select i1 %6, i1 %7, i1 false
  br i1 %or.cond127, label %.lr.ph123.preheader, label %bbuf_clone.exit

.lr.ph123.preheader:                              ; preds = %.preheader
  %wide.trip.count149 = zext i32 %i.x to i64
  %wide.trip.count144 = zext i32 %i.r to i64
  br label %.lr.ph123

.lr.ph123:                                        ; preds = %.lr.ph123.preheader, %._crit_edge
  %indvars.iv146 = phi i64 [ 0, %.lr.ph123.preheader ], [ %indvars.iv.next147, %._crit_edge ] ; 2 uses
  %i.bb = trunc nuw i64 %indvars.iv146 to i32
  %i.bc = shl i32 %i.bb, 1                        ; 2 uses
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr [4 x i8], ptr %i.y, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !7  ; 2 uses
  %i.bg = or disjoint i32 %i.bc, 1
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr [4 x i8], ptr %i.y, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !7  ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph123, %bb.x
  %indvars.iv141 = phi i64 [ 0, %.lr.ph123 ], [ %indvars.iv.next142, %bb.x ] ; 2 uses
  %i.bk = trunc nuw i64 %indvars.iv141 to i32
  %i.bl = shl i32 %i.bk, 1                        ; 2 uses
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr [4 x i8], ptr %i.s, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !7  ; 2 uses
  %i.bp = or disjoint i32 %i.bl, 1
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr [4 x i8], ptr %i.s, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !7  ; 2 uses
  %i.bt = icmp ugt i32 %i.bo, %i.bj
  br i1 %i.bt, label %._crit_edge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bu = icmp ult i32 %i.bs, %i.bf
  br i1 %i.bu, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bv = tail call i32 @llvm.umax.i32(i32 %i.bf, i32 %i.bo)
  %i.bw = tail call i32 @llvm.umin.i32(i32 %i.bj, i32 %i.bs)
  %i.bx = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %4, ptr noundef %5, i32 noundef %i.bv, i32 noundef %i.bw, i32 noundef 1) ; 2 uses
  %.not94 = icmp eq i32 %i.bx, 0
  br i1 %.not94, label %bb.x, label %bbuf_clone.exit

bb.x:                                             ; preds = %bb.w, %bb.v
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 2 uses
  %exitcond145.not = icmp eq i64 %indvars.iv.next142, %wide.trip.count144
  br i1 %exitcond145.not, label %._crit_edge, label %bb.u, !llvm.loop !202

._crit_edge:                                      ; preds = %bb.u, %bb.x
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %exitcond150.not = icmp eq i64 %indvars.iv.next147, %wide.trip.count149
  br i1 %exitcond150.not, label %bbuf_clone.exit, label %.lr.ph123, !llvm.loop !203

._crit_edge.i:                                    ; preds = %.lr.ph, %and_code_range1.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %and_code_range1.exit ], [ 0, %.lr.ph ] ; 2 uses
  %i.by = trunc nuw i64 %indvars.iv to i32
  %i.bz = shl i32 %i.by, 1                        ; 2 uses
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr [4 x i8], ptr %.ph113, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !7  ; 2 uses
  %i.cd = or disjoint i32 %i.bz, 1
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr [4 x i8], ptr %.ph113, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !7  ; 2 uses
  %.not51.i = icmp ugt i32 %i.cc, %i.cg
  br i1 %.not51.i, label %and_code_range1.exit, label %bb.y

bb.y:                                             ; preds = %._crit_edge.i
  %i.ch = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %4, ptr noundef %5, i32 noundef %i.cc, i32 noundef %i.cg, i32 noundef 1) ; 2 uses
  %.not52.i = icmp eq i32 %i.ch, 0
  br i1 %.not52.i, label %and_code_range1.exit, label %bbuf_clone.exit

and_code_range1.exit:                             ; preds = %bb.y, %._crit_edge.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count139
  br i1 %exitcond.not, label %bbuf_clone.exit, label %._crit_edge.i, !llvm.loop !206

bbuf_clone.exit.sink.split:                       ; preds = %bb.h, %bb.d
  %.sink = phi ptr [ %2, %bb.d ], [ %0, %bb.h ]   ; 2 uses
  %.sink187 = phi ptr [ %i.d, %bb.d ], [ %i.k, %bb.h ] ; 2 uses
  %i.ci = getelementptr i8, ptr %.sink, i64 8
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !183 ; 2 uses
  %i.ck = getelementptr i8, ptr %.sink187, i64 8
  store i32 %i.cj, ptr %i.ck, align 8, !tbaa !183
  %i.cl = load ptr, ptr %.sink187, align 8, !tbaa !66
  %i.cm = load ptr, ptr %.sink, align 8, !tbaa !66
  %i.cn = zext i32 %i.cj to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.cl, ptr noundef nonnull align 1 %i.cm, i64 noundef %i.cn, i1 noundef false) #25
  br label %bbuf_clone.exit

bbuf_clone.exit:                                  ; preds = %and_code_range1.exit, %bb.y, %and_code_range1.exit.us, %bb.t, %bb.n, %._crit_edge, %bb.w, %bbuf_clone.exit.sink.split, %.preheader111, %.preheader, %.thread, %bb.h, %bb.g, %bb.d, %bb.c, %bb.f, %bb.b
  %.0 = phi i32 [ 0, %._crit_edge ], [ %i.ba, %bb.t ], [ %i.i, %bb.d ], [ 0, %bb.b ], [ 0, %bb.f ], [ %i.p, %bb.h ], [ 0, %.thread ], [ 0, %.preheader ], [ 0, %.preheader111 ], [ -5, %bb.c ], [ %i.bx, %bb.w ], [ -5, %bb.g ], [ 0, %bbuf_clone.exit.sink.split ], [ %i.av, %bb.n ], [ 0, %and_code_range1.exit.us ], [ 0, %and_code_range1.exit ], [ %i.ch, %bb.y ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @fetch_token_in_cc(ptr nofree noundef nonnull captures(none) initializes((0, 4)) %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 30 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.c = getelementptr i8, ptr %3, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98   ; 13 uses
  %i.e = getelementptr i8, ptr %3, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !97   ; 43 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.g = load ptr, ptr %1, align 8, !tbaa !69     ; 5 uses
  %i.h = icmp ult ptr %i.g, %2
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 8, !tbaa !99
  br label %bb.db

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.f, i64 16       ; 15 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !70
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load i8, ptr %i.g, align 1, !tbaa !13
  %i.m = zext i8 %i.l to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %i.f, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !71
  %i.p = tail call i32 %i.o(ptr noundef %i.g, ptr noundef %2, ptr noundef nonnull %i.f) #25
  %.pre = load i32, ptr %i.i, align 8, !tbaa !70
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = phi i32 [ 1, %bb.d ], [ %.pre, %bb.e ]   ; 2 uses
  %i.r = phi i32 [ %i.m, %bb.d ], [ %i.p, %bb.e ] ; 4 uses
  %i.s = getelementptr i8, ptr %i.f, i64 20       ; 12 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !47
  %i.u = icmp eq i32 %i.q, %i.t
  br i1 %i.u, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = tail call i32 @onigenc_mbclen(ptr noundef %i.g, ptr noundef %2, ptr noundef nonnull %i.f) #25
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.w = phi i32 [ %i.v, %bb.g ], [ %i.q, %bb.f ]
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr i8, ptr %i.g, i64 %i.x     ; 19 uses
  store ptr %i.y, ptr %i.b, align 8, !tbaa !69
  store i32 2, ptr %0, align 8, !tbaa !99
  %i.z = getelementptr i8, ptr %0, i64 8          ; 6 uses
  store i32 0, ptr %i.z, align 8, !tbaa !101
  %i.aa = getelementptr i8, ptr %0, i64 24        ; 17 uses
  store i32 %i.r, ptr %i.aa, align 8, !tbaa !13
  %i.ab = getelementptr i8, ptr %0, i64 4         ; 2 uses
  store i32 0, ptr %i.ab, align 4, !tbaa !105
  switch i32 %i.r, label %bb.k [
    i32 93, label %bb.i
    i32 45, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  store i32 22, ptr %0, align 8, !tbaa !99
  br label %bb.da

bb.j:                                             ; preds = %bb.h
  store i32 23, ptr %0, align 8, !tbaa !99
  br label %bb.da

bb.k:                                             ; preds = %bb.h
  %i.ac = getelementptr i8, ptr %i.d, i64 16
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !103
  %i.ae = icmp eq i32 %i.r, %i.ad
  br i1 %i.ae, label %bb.l, label %bb.cm

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr i8, ptr %i.d, i64 8
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !60
  %i.ah = and i32 %i.ag, 2097152
  %.not314 = icmp eq i32 %i.ah, 0
  br i1 %.not314, label %bb.da, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = icmp ult ptr %i.y, %2
  br i1 %i.ai, label %bb.n, label %bb.db

bb.n:                                             ; preds = %bb.m
  %i.aj = load i32, ptr %i.i, align 8, !tbaa !70
  %i.ak = icmp eq i32 %i.aj, 1
  br i1 %i.ak, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.al = load i8, ptr %i.y, align 1, !tbaa !13
  %i.am = zext i8 %i.al to i32
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.an = getelementptr i8, ptr %i.f, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !71
  %i.ap = tail call i32 %i.ao(ptr noundef %i.y, ptr noundef %2, ptr noundef nonnull %i.f) #25
  %.pre348 = load i32, ptr %i.i, align 8, !tbaa !70
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.aq = phi i32 [ 1, %bb.o ], [ %.pre348, %bb.p ] ; 2 uses
  %i.ar = phi i32 [ %i.am, %bb.o ], [ %i.ap, %bb.p ] ; 4 uses
  %i.as = load i32, ptr %i.s, align 4, !tbaa !47
  %i.at = icmp eq i32 %i.aq, %i.as
  br i1 %i.at, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = tail call i32 @onigenc_mbclen(ptr noundef %i.y, ptr noundef %2, ptr noundef nonnull %i.f) #25
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.av = phi i32 [ %i.au, %bb.r ], [ %i.aq, %bb.q ]
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr i8, ptr %i.y, i64 %i.aw   ; 22 uses
  store ptr %i.ax, ptr %i.b, align 8, !tbaa !69
  store i32 1, ptr %i.ab, align 4, !tbaa !105
  store i32 %i.ar, ptr %i.aa, align 8, !tbaa !13
  switch i32 %i.ar, label %bb.cj [
    i32 119, label %bb.t
    i32 87, label %bb.u
    i32 100, label %bb.v
    i32 68, label %bb.w
    i32 115, label %bb.x
    i32 83, label %bb.y
    i32 104, label %bb.z
    i32 72, label %bb.ab
    i32 112, label %bb.ad
    i32 80, label %bb.ad
    i32 120, label %bb.at
    i32 117, label %bb.bl
    i32 111, label %bb.bq
    i32 48, label %bb.cg
    i32 49, label %bb.cg
    i32 50, label %bb.cg
    i32 51, label %bb.cg
    i32 52, label %bb.cg
    i32 53, label %bb.cg
    i32 54, label %bb.cg
    i32 55, label %bb.cg
  ]

bb.t:                                             ; preds = %bb.s
  store i32 6, ptr %0, align 8, !tbaa !99
  store i32 12, ptr %i.aa, align 8, !tbaa !13
  %i.ay = getelementptr i8, ptr %0, i64 28
  store i32 0, ptr %i.ay, align 4, !tbaa !13
  br label %bb.da

bb.u:                                             ; preds = %bb.s
  store i32 6, ptr %0, align 8, !tbaa !99
  store i32 12, ptr %i.aa, align 8, !tbaa !13
  %i.az = getelementptr i8, ptr %0, i64 28
  store i32 1, ptr %i.az, align 4, !tbaa !13
  br label %bb.da

bb.v:                                             ; preds = %bb.s
  store i32 6, ptr %0, align 8, !tbaa !99
  store i32 4, ptr %i.aa, align 8, !tbaa !13
  %i.ba = getelementptr i8, ptr %0, i64 28
  store i32 0, ptr %i.ba, align 4, !tbaa !13
  br label %bb.da

bb.w:                                             ; preds = %bb.s
  store i32 6, ptr %0, align 8, !tbaa !99
  store i32 4, ptr %i.aa, align 8, !tbaa !13
  %i.bb = getelementptr i8, ptr %0, i64 28
  store i32 1, ptr %i.bb, align 4, !tbaa !13
  br label %bb.da

bb.x:                                             ; preds = %bb.s
  store i32 6, ptr %0, align 8, !tbaa !99
  store i32 9, ptr %i.aa, align 8, !tbaa !13
  %i.bc = getelementptr i8, ptr %0, i64 28
  store i32 0, ptr %i.bc, align 4, !tbaa !13
  br label %bb.da

bb.y:                                             ; preds = %bb.s
  store i32 6, ptr %0, align 8, !tbaa !99
  store i32 9, ptr %i.aa, align 8, !tbaa !13
  %i.bd = getelementptr i8, ptr %0, i64 28
  store i32 1, ptr %i.bd, align 4, !tbaa !13
  br label %bb.da

bb.z:                                             ; preds = %bb.s
  %i.be = getelementptr i8, ptr %i.d, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !104
  %i.bg = and i32 %i.bf, 524288
  %.not324 = icmp eq i32 %i.bg, 0
end_hunk_1
