Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/indeo2?download=true
inline.NumInlined: 12
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ir2_decode_init:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  store ptr %0, ptr %i.b, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 6, ptr %i.c, align 8, !tbaa !43
  %i.d = tail call ptr @av_frame_alloc() #6       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !36
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @pthread_once(ptr noundef nonnull @ir2_decode_init.init_static_once, ptr noundef nonnull @ir2_init_static) #6 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -12, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 49, 0) i32 @ir2_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !46   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !36   ; 12 uses
  %i.i = tail call i32 @ff_reget_buffer(ptr noundef %0, ptr noundef %i.h, i32 noundef 0) #6 ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %ir2_decode_plane_inter.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp slt i32 %i.f, 49
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !35
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.l, i32 noundef 16, ptr noundef nonnull @.str.2, i32 noundef %i.f) #6
  br label %ir2_decode_plane_inter.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 18
  %i.n = load i8, ptr %i.m, align 1, !tbaa !37    ; 2 uses
  %i.o = zext i8 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 %i.o, ptr %i.p, align 8, !tbaa !47
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.s = icmp samesign ugt i32 %i.f, 268435503
  %i.t = shl i32 %i.f, 3
  %i.u = add i32 %i.t, -384
  %i.v = select i1 %i.s, i32 -8, i32 %i.u         ; 2 uses
  %or.cond.i.i = icmp ugt i32 %i.v, 2147483134    ; 3 uses
  %.014.i.i = select i1 %or.cond.i.i, ptr null, ptr %i.r
  %.013.i.i = select i1 %or.cond.i.i, i32 0, i32 %i.v ; 2 uses
  store ptr %.014.i.i, ptr %i.q, align 8, !tbaa !38
  %i.w = getelementptr i8, ptr %i.b, i64 28       ; 3 uses
  store i32 %.013.i.i, ptr %i.w, align 4, !tbaa !39
  %i.x = add nuw nsw i32 %.013.i.i, 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  store i32 %i.x, ptr %i.y, align 8, !tbaa !40
  %i.z = getelementptr i8, ptr %i.b, i64 24       ; 5 uses
  store i32 0, ptr %i.z, align 8, !tbaa !41
  br i1 %or.cond.i.i, label %ir2_decode_plane_inter.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 34
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !37  ; 2 uses
  %i.ac = zext i8 %i.ab to i32                    ; 2 uses
  %i.ad = lshr i32 %i.ac, 2                       ; 3 uses
  %i.ae = icmp ugt i8 %i.ab, 15
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %i.ad) #6
  br label %ir2_decode_plane_inter.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.af = and i32 %i.ac, 3
  %.not = icmp eq i8 %i.n, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !48 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 5 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !49 ; 5 uses
  %i.ak = load ptr, ptr %i.h, align 8, !tbaa !50  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.am = load i32, ptr %i.al, align 8, !tbaa !51 ; 2 uses
  %i.an = zext nneg i32 %i.af to i64
  %i.ao = getelementptr inbounds nuw [256 x i8], ptr @ir2_delta_table, i64 %i.an ; 2 uses
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = tail call fastcc i32 @ir2_decode_plane(ptr noundef nonnull %i.b, i32 noundef %i.ah, i32 noundef %i.aj, ptr noundef %i.ak, i32 noundef %i.am, ptr noundef nonnull %i.ao) ; 2 uses
  %i.aq = icmp slt i32 %i.ap, 0
  br i1 %i.aq, label %ir2_decode_plane_inter.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = load i32, ptr %i.ag, align 8, !tbaa !48
  %i.as = ashr i32 %i.ar, 2
  %i.at = load i32, ptr %i.ai, align 4, !tbaa !49
  %i.au = ashr i32 %i.at, 2
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !50
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !51
  %i.az = zext nneg i32 %i.ad to i64
  %i.ba = getelementptr inbounds nuw [256 x i8], ptr @ir2_delta_table, i64 %i.az ; 2 uses
  %i.bb = tail call fastcc i32 @ir2_decode_plane(ptr noundef nonnull %i.b, i32 noundef %i.as, i32 noundef %i.au, ptr noundef %i.aw, i32 noundef %i.ay, ptr noundef nonnull %i.ba) ; 2 uses
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %ir2_decode_plane_inter.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = load i32, ptr %i.ag, align 8, !tbaa !48
  %i.be = ashr i32 %i.bd, 2
  %i.bf = load i32, ptr %i.ai, align 4, !tbaa !49
  %i.bg = ashr i32 %i.bf, 2
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !50
  %i.bj = getelementptr inbounds nuw i8, ptr %i.h, i64 68
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !51
  %i.bl = tail call fastcc i32 @ir2_decode_plane(ptr noundef nonnull %i.b, i32 noundef %i.be, i32 noundef %i.bg, ptr noundef %i.bi, i32 noundef %i.bk, ptr noundef nonnull %i.ba) ; 2 uses
  %i.bm = icmp slt i32 %i.bl, 0
  br i1 %i.bm, label %ir2_decode_plane_inter.exit.thread, label %bb.x

bb.k:                                             ; preds = %bb.g
  %i.bn = and i32 %i.ah, 1
  %.not.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i, label %.preheader42.i, label %ir2_decode_plane_inter.exit.thread

.preheader42.i:                                   ; preds = %bb.k
  %i.bo = icmp sgt i32 %i.aj, 0
  br i1 %i.bo, label %.preheader.lr.ph.i, label %ir2_decode_plane_inter.exit

.preheader.lr.ph.i:                               ; preds = %.preheader42.i
  %i.bp = icmp sgt i32 %i.ah, 0
  %i.bq = sext i32 %i.am to i64
  br i1 %i.bp, label %.preheader.i, label %ir2_decode_plane_inter.exit

.preheader.i:                                     ; preds = %.preheader.lr.ph.i, %._crit_edge.i
  %.03346.i = phi i32 [ %i.dq, %._crit_edge.i ], [ 0, %.preheader.lr.ph.i ]
  %.03545.i = phi ptr [ %i.dp, %._crit_edge.i ], [ %i.ak, %.preheader.lr.ph.i ] ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.q, %.preheader.i
  %.044.i = phi i32 [ 0, %.preheader.i ], [ %.1.i, %bb.q ] ; 3 uses
  %.val.i = load i32, ptr %i.z, align 8, !tbaa !41 ; 4 uses
  %.val40.i = load i32, ptr %i.w, align 4, !tbaa !39
  %.not41.i = icmp sgt i32 %.val40.i, %.val.i
  br i1 %.not41.i, label %bb.m, label %ir2_decode_plane_inter.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.br = load ptr, ptr %i.q, align 8, !tbaa !38
  %i.bs = lshr i32 %.val.i, 3
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 1, !tbaa !37
  %i.bw = and i32 %.val.i, 7
  %i.bx = lshr i32 %i.bv, %i.bw
  %i.by = and i32 %i.bx, 16383
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr @ir2_vlc, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !37
  %i.cd = sext i16 %i.cc to i32
  %i.ce = load i16, ptr %i.ca, align 4, !tbaa !37 ; 3 uses
  %i.cf = sext i16 %i.ce to i32                   ; 2 uses
  %i.cg = load i32, ptr %i.y, align 8, !tbaa !40
  %i.ch = add i32 %.val.i, %i.cd
  %i.ci = tail call i32 @llvm.umin.i32(i32 %i.cg, i32 %i.ch)
  store i32 %i.ci, ptr %i.z, align 8, !tbaa !41
  %i.cj = icmp sgt i16 %i.ce, 127
  br i1 %i.cj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ck = shl nuw nsw i32 %i.cf, 1
  %i.cl = add nsw i32 %i.ck, -254
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.cm = icmp slt i16 %i.ce, 1
  br i1 %i.cm, label %ir2_decode_plane_inter.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cn = zext nneg i32 %.044.i to i64
  %i.co = getelementptr inbounds nuw i8, ptr %.03545.i, i64 %i.cn ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !37
  %i.cq = zext i8 %i.cp to i32
  %i.cr = shl nuw nsw i32 %i.cf, 1
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.cs ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 2, !tbaa !37
  %i.cv = zext i8 %i.cu to i32
  %i.cw = mul nuw nsw i32 %i.cv, 3
  %i.cx = add nsw i32 %i.cw, -384
  %i.cy = ashr i32 %i.cx, 2
  %i.cz = add nsw i32 %i.cy, %i.cq
  %4 = tail call i32 @llvm.smax.i32(i32 %i.cz, i32 0)
  %.0.i3942.i = tail call i32 @llvm.umin.i32(i32 %4, i32 255)
  %i.da = trunc nuw i32 %.0.i3942.i to i8
  store i8 %i.da, ptr %i.co, align 1, !tbaa !37
  %i.db = sext i32 %.044.i to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %.03545.i, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 1 ; 2 uses
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !37
  %i.df = zext i8 %i.de to i32
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !37
  %i.di = zext i8 %i.dh to i32
  %i.dj = mul nuw nsw i32 %i.di, 3
  %i.dk = add nsw i32 %i.dj, -384
  %i.dl = ashr i32 %i.dk, 2
  %i.dm = add nsw i32 %i.dl, %i.df
  %5 = tail call i32 @llvm.smax.i32(i32 %i.dm, i32 0)
  %.0.i43.i = tail call i32 @llvm.umin.i32(i32 %5, i32 255)
  %i.dn = trunc nuw i32 %.0.i43.i to i8
  store i8 %i.dn, ptr %i.dd, align 1, !tbaa !37
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.pn.i = phi i32 [ %i.cl, %bb.n ], [ 2, %bb.p ]
  %.1.i = add nuw nsw i32 %.pn.i, %.044.i         ; 2 uses
  %i.do = icmp slt i32 %.1.i, %i.ah
  br i1 %i.do, label %bb.l, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.q
  %i.dp = getelementptr inbounds i8, ptr %.03545.i, i64 %i.bq
  %i.dq = add nuw nsw i32 %.03346.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.dq, %i.aj
  br i1 %exitcond.not.i, label %ir2_decode_plane_inter.exit.loopexit, label %.preheader.i, !llvm.loop !1

ir2_decode_plane_inter.exit.loopexit:             ; preds = %._crit_edge.i
  %.pre = load i32, ptr %i.ag, align 8, !tbaa !48
  %.pre109 = load i32, ptr %i.ai, align 4, !tbaa !49
  br label %ir2_decode_plane_inter.exit

ir2_decode_plane_inter.exit:                      ; preds = %ir2_decode_plane_inter.exit.loopexit, %.preheader.lr.ph.i, %.preheader42.i
  %i.dr = phi i32 [ %.pre109, %ir2_decode_plane_inter.exit.loopexit ], [ %i.aj, %.preheader.lr.ph.i ], [ %i.aj, %.preheader42.i ]
  %i.ds = phi i32 [ %.pre, %ir2_decode_plane_inter.exit.loopexit ], [ %i.ah, %.preheader.lr.ph.i ], [ %i.ah, %.preheader42.i ] ; 2 uses
  %i.dt = ashr i32 %i.ds, 2                       ; 4 uses
  %i.du = ashr i32 %i.dr, 2                       ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !50
  %i.dx = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !51
  %i.dz = zext nneg i32 %i.ad to i64
  %i.ea = getelementptr inbounds nuw [256 x i8], ptr @ir2_delta_table, i64 %i.dz ; 2 uses
  %i.eb = and i32 %i.ds, 4
  %.not.i85 = icmp eq i32 %i.eb, 0
  br i1 %.not.i85, label %.preheader42.i87, label %ir2_decode_plane_inter.exit.thread

.preheader42.i87:                                 ; preds = %ir2_decode_plane_inter.exit
  %i.ec = icmp sgt i32 %i.du, 0
  br i1 %i.ec, label %.preheader.lr.ph.i88, label %ir2_decode_plane_inter.exit104

.preheader.lr.ph.i88:                             ; preds = %.preheader42.i87
  %i.ed = icmp sgt i32 %i.dt, 0
  %i.ee = sext i32 %i.dy to i64
  br i1 %i.ed, label %.preheader.i89, label %ir2_decode_plane_inter.exit104

.preheader.i89:                                   ; preds = %.preheader.lr.ph.i88, %._crit_edge.i102
  %.03346.i90 = phi i32 [ %i.ge, %._crit_edge.i102 ], [ 0, %.preheader.lr.ph.i88 ]
  %.03545.i91 = phi ptr [ %i.gd, %._crit_edge.i102 ], [ %i.dw, %.preheader.lr.ph.i88 ] ; 3 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.w, %.preheader.i89
  %.044.i92 = phi i32 [ 0, %.preheader.i89 ], [ %.1.i101, %bb.w ] ; 3 uses
  %.val.i93 = load i32, ptr %i.z, align 8, !tbaa !41 ; 4 uses
  %.val40.i94 = load i32, ptr %i.w, align 4, !tbaa !39
  %.not41.i95 = icmp sgt i32 %.val40.i94, %.val.i93
  br i1 %.not41.i95, label %bb.s, label %ir2_decode_plane_inter.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.ef = load ptr, ptr %i.q, align 8, !tbaa !38
  %i.eg = lshr i32 %.val.i93, 3
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 1, !tbaa !37
  %i.ek = and i32 %.val.i93, 7
  %i.el = lshr i32 %i.ej, %i.ek
  %i.em = and i32 %i.el, 16383
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr @ir2_vlc, i64 %i.en ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 2
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !37
  %i.er = sext i16 %i.eq to i32
  %i.es = load i16, ptr %i.eo, align 4, !tbaa !37 ; 3 uses
  %i.et = sext i16 %i.es to i32                   ; 2 uses
  %i.eu = load i32, ptr %i.y, align 8, !tbaa !40
  %i.ev = add i32 %.val.i93, %i.er
  %i.ew = tail call i32 @llvm.umin.i32(i32 %i.eu, i32 %i.ev)
  store i32 %i.ew, ptr %i.z, align 8, !tbaa !41
  %i.ex = icmp sgt i16 %i.es, 127
  br i1 %i.ex, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ey = shl nuw nsw i32 %i.et, 1
  %i.ez = add nsw i32 %i.ey, -254
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.fa = icmp slt i16 %i.es, 1
  br i1 %i.fa, label %ir2_decode_plane_inter.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fb = zext nneg i32 %.044.i92 to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %.03545.i91, i64 %i.fb ; 2 uses
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !37
  %i.fe = zext i8 %i.fd to i32
  %i.ff = shl nuw nsw i32 %i.et, 1
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.fg ; 2 uses
  %i.fi = load i8, ptr %i.fh, align 2, !tbaa !37
  %i.fj = zext i8 %i.fi to i32
  %i.fk = mul nuw nsw i32 %i.fj, 3
  %i.fl = add nsw i32 %i.fk, -384
  %i.fm = ashr i32 %i.fl, 2
  %i.fn = add nsw i32 %i.fm, %i.fe
  %6 = tail call i32 @llvm.smax.i32(i32 %i.fn, i32 0)
  %.0.i3942.i96 = tail call i32 @llvm.umin.i32(i32 %6, i32 255)
  %i.fo = trunc nuw i32 %.0.i3942.i96 to i8
  store i8 %i.fo, ptr %i.fc, align 1, !tbaa !37
  %i.fp = sext i32 %.044.i92 to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %.03545.i91, i64 %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 1 ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !37
  %i.ft = zext i8 %i.fs to i32
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fh, i64 1
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !37
  %i.fw = zext i8 %i.fv to i32
  %i.fx = mul nuw nsw i32 %i.fw, 3
  %i.fy = add nsw i32 %i.fx, -384
  %i.fz = ashr i32 %i.fy, 2
  %i.ga = add nsw i32 %i.fz, %i.ft
  %7 = tail call i32 @llvm.smax.i32(i32 %i.ga, i32 0)
  %.0.i43.i98 = tail call i32 @llvm.umin.i32(i32 %7, i32 255)
  %i.gb = trunc nuw i32 %.0.i43.i98 to i8
  store i8 %i.gb, ptr %i.fr, align 1, !tbaa !37
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %.pn.i100 = phi i32 [ %i.ez, %bb.t ], [ 2, %bb.v ]
  %.1.i101 = add nuw nsw i32 %.pn.i100, %.044.i92 ; 2 uses
  %i.gc = icmp slt i32 %.1.i101, %i.dt
  br i1 %i.gc, label %bb.r, label %._crit_edge.i102, !llvm.loop !0

._crit_edge.i102:                                 ; preds = %bb.w
  %i.gd = getelementptr inbounds i8, ptr %.03545.i91, i64 %i.ee
  %i.ge = add nuw nsw i32 %.03346.i90, 1          ; 2 uses
  %exitcond.not.i103 = icmp eq i32 %i.ge, %i.du
  br i1 %exitcond.not.i103, label %ir2_decode_plane_inter.exit104.loopexit, label %.preheader.i89, !llvm.loop !1

ir2_decode_plane_inter.exit104.loopexit:          ; preds = %._crit_edge.i102
  %.pre110 = load i32, ptr %i.ag, align 8, !tbaa !48
  %.pre111 = load i32, ptr %i.ai, align 4, !tbaa !49
  %.pre112 = ashr i32 %.pre110, 2
  %.pre113 = ashr i32 %.pre111, 2
  br label %ir2_decode_plane_inter.exit104

ir2_decode_plane_inter.exit104:                   ; preds = %ir2_decode_plane_inter.exit104.loopexit, %.preheader.lr.ph.i88, %.preheader42.i87
  %.pre-phi114 = phi i32 [ %.pre113, %ir2_decode_plane_inter.exit104.loopexit ], [ %i.du, %.preheader.lr.ph.i88 ], [ %i.du, %.preheader42.i87 ]
  %.pre-phi = phi i32 [ %.pre112, %ir2_decode_plane_inter.exit104.loopexit ], [ %i.dt, %.preheader.lr.ph.i88 ], [ %i.dt, %.preheader42.i87 ]
  %i.gf = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !50
  %i.gh = getelementptr inbounds nuw i8, ptr %i.h, i64 68
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !51
  %i.gj = tail call fastcc i32 @ir2_decode_plane_inter(ptr noundef nonnull %i.b, i32 noundef %.pre-phi, i32 noundef %.pre-phi114, ptr noundef %i.gg, i32 noundef %i.gi, ptr noundef nonnull %i.ea) ; 2 uses
  %i.gk = icmp slt i32 %i.gj, 0
  br i1 %i.gk, label %ir2_decode_plane_inter.exit.thread, label %bb.x

bb.x:                                             ; preds = %ir2_decode_plane_inter.exit104, %bb.j
  %i.gl = tail call i32 @av_frame_ref(ptr noundef %1, ptr noundef nonnull %i.h) #6 ; 2 uses
  %i.gm = icmp slt i32 %i.gl, 0
  br i1 %i.gm, label %ir2_decode_plane_inter.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i32 1, ptr %2, align 4, !tbaa !51
  br label %ir2_decode_plane_inter.exit.thread

ir2_decode_plane_inter.exit.thread:               ; preds = %bb.l, %bb.o, %bb.r, %bb.u, %ir2_decode_plane_inter.exit, %bb.k, %bb.x, %ir2_decode_plane_inter.exit104, %bb.j, %bb.i, %bb.h, %bb.d, %bb.a, %bb.y, %bb.f, %bb.c
  %.0 = phi i32 [ -1094995529, %ir2_decode_plane_inter.exit ], [ -1094995529, %bb.c ], [ %i.i, %bb.a ], [ -1094995529, %bb.f ], [ -1094995529, %bb.d ], [ %i.ap, %bb.h ], [ %i.bb, %bb.i ], [ %i.gj, %ir2_decode_plane_inter.exit104 ], [ %i.f, %bb.y ], [ %i.bl, %bb.j ], [ %i.gl, %bb.x ], [ -1094995529, %bb.r ], [ -1094995529, %bb.k ], [ -1094995529, %bb.u ], [ -1094995529, %bb.o ], [ -1094995529, %bb.l ]
  ret i32 %.0
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @ir2_decode_end(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @av_frame_free(ptr noundef nonnull %i.c) #6
  ret i32 0
}

declare ptr @av_frame_alloc() local_unnamed_addr #2

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind optsize uwtable
define internal void @ir2_init_static() #0 {
bb.a:
  tail call void @ff_vlc_init_table_from_lengths(ptr noundef nonnull @ir2_vlc, i32 noundef 16384, i32 noundef 14, i32 noundef 143, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ir2_tab, i64 1), i32 noundef 2, ptr noundef nonnull @ir2_tab, i32 noundef 2, i32 noundef 1, i32 noundef 0, i32 noundef 8) #6
  ret void
}

declare void @ff_vlc_init_table_from_lengths(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_reget_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @ir2_decode_plane(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) unnamed_addr #3 {
bb.a:
  %i.a = and i32 %1, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.b = mul nsw i32 %2, %1
  %i.c = sdiv i32 %i.b, 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 24         ; 5 uses
  %.val104 = load i32, ptr %i.e, align 8, !tbaa !41
  %i.f = getelementptr i8, ptr %0, i64 28         ; 2 uses
  %.val105 = load i32, ptr %i.f, align 4, !tbaa !39
  %i.g = sub nsw i32 %.val105, %.val104
  %i.h = icmp sgt i32 %i.c, %i.g
  br i1 %i.h, label %.critedge, label %.preheader111

.preheader111:                                    ; preds = %bb.b
  %i.i = icmp sgt i32 %1, 0
  br i1 %i.i, label %.lr.ph116, label %.critedge

.lr.ph116:                                        ; preds = %.preheader111
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph116, %.loopexit110
  %.077115 = phi i32 [ 0, %.lr.ph116 ], [ %.3, %.loopexit110 ] ; 5 uses
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !38
  %i.l = load i32, ptr %i.e, align 8, !tbaa !41   ; 3 uses
  %i.m = lshr i32 %i.l, 3
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n
  %i.p = load i32, ptr %i.o, align 1, !tbaa !37
  %i.q = and i32 %i.l, 7
  %i.r = lshr i32 %i.p, %i.q
  %i.s = and i32 %i.r, 16383
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @ir2_vlc, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.w = load i16, ptr %i.v, align 2, !tbaa !37
  %i.x = sext i16 %i.w to i32
  %i.y = load i16, ptr %i.u, align 4, !tbaa !37   ; 3 uses
  %i.z = sext i16 %i.y to i32                     ; 2 uses
  %i.aa = load i32, ptr %i.j, align 8, !tbaa !40
  %i.ab = add i32 %i.l, %i.x
  %i.ac = tail call i32 @llvm.umin.i32(i32 %i.aa, i32 %i.ab)
  store i32 %i.ac, ptr %i.e, align 8, !tbaa !41
  %i.ad = icmp sgt i16 %i.y, 127
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = shl nuw nsw i32 %i.z, 1                 ; 3 uses
  %i.af = add nsw i32 %i.ae, -254
  %i.ag = add nsw i32 %i.af, %.077115
  %i.ah = icmp sgt i32 %i.ag, %1
  br i1 %i.ah, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.ai = sext i32 %.077115 to i64
  %scevgep = getelementptr i8, ptr %3, i64 %i.ai
  %i.aj = zext nneg i32 %i.ae to i64
  %i.ak = add nsw i64 %i.aj, -254
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 -128, i64 %i.ak, i1 false), !tbaa !37
  %i.al = add i32 %.077115, %i.ae
  %i.am = add i32 %i.al, -254
  br label %.loopexit110

bb.e:                                             ; preds = %bb.c
  %i.an = icmp slt i16 %i.y, 1
  br i1 %i.an, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = shl nuw nsw i32 %i.z, 1
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 %i.ap ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !37
  %i.as = sext i32 %.077115 to i64
  %i.at = getelementptr inbounds i8, ptr %3, i64 %i.as ; 2 uses
  store i8 %i.ar, ptr %i.at, align 1, !tbaa !37
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !37
  %i.aw = add nsw i32 %.077115, 2
  %i.ax = getelementptr i8, ptr %i.at, i64 1
  store i8 %i.av, ptr %i.ax, align 1, !tbaa !37
  br label %.loopexit110

.loopexit110:                                     ; preds = %.lr.ph.preheader, %bb.f
  %.3 = phi i32 [ %i.aw, %bb.f ], [ %i.am, %.lr.ph.preheader ] ; 2 uses
  %i.ay = icmp slt i32 %.3, %1
  br i1 %i.ay, label %bb.c, label %._crit_edge, !llvm.loop !52

._crit_edge:                                      ; preds = %.loopexit110
  %i.az = sext i32 %4 to i64                      ; 2 uses
  %i.ba = icmp sgt i32 %2, 1
  br i1 %i.ba, label %.preheader107.lr.ph, label %.critedge

.preheader107.lr.ph:                              ; preds = %._crit_edge
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bc = add nsw i64 %i.az, -1
  %diff.check = icmp ult i64 %i.bc, 31
  br label %.preheader107

.preheader107:                                    ; preds = %.preheader107.lr.ph, %._crit_edge123
  %.091126.pn = phi ptr [ %.091126, %._crit_edge123 ], [ %3, %.preheader107.lr.ph ] ; 8 uses
  %.080125 = phi i32 [ %i.ew, %._crit_edge123 ], [ 1, %.preheader107.lr.ph ]
  %.091126 = getelementptr inbounds i8, ptr %.091126.pn, i64 %i.az ; 12 uses
  br label %bb.g

bb.g:                                             ; preds = %.preheader107, %.loopexit
  %.4121 = phi i32 [ 0, %.preheader107 ], [ %.8, %.loopexit ] ; 6 uses
  %.val = load i32, ptr %i.e, align 8, !tbaa !41  ; 4 uses
  %.val103 = load i32, ptr %i.f, align 4, !tbaa !39
  %.not106 = icmp sgt i32 %.val103, %.val
  br i1 %.not106, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.bd = load ptr, ptr %i.d, align 8, !tbaa !38
  %i.be = lshr i32 %.val, 3
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 1, !tbaa !37
  %i.bi = and i32 %.val, 7
  %i.bj = lshr i32 %i.bh, %i.bi
  %i.bk = and i32 %i.bj, 16383
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr @ir2_vlc, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 2
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !37
  %i.bp = sext i16 %i.bo to i32
  %i.bq = load i16, ptr %i.bm, align 4, !tbaa !37 ; 3 uses
  %i.br = sext i16 %i.bq to i32                   ; 2 uses
  %i.bs = load i32, ptr %i.bb, align 8, !tbaa !40
  %i.bt = add i32 %.val, %i.bp
  %i.bu = tail call i32 @llvm.umin.i32(i32 %i.bs, i32 %i.bt)
  store i32 %i.bu, ptr %i.e, align 8, !tbaa !41
  %i.bv = icmp sgt i16 %i.bq, 127
  br i1 %i.bv, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bw = shl nuw nsw i32 %i.br, 1                ; 4 uses
  %i.bx = add nsw i32 %i.bw, -254                 ; 2 uses
  %i.by = add nsw i32 %i.bx, %.4121
  %i.bz = icmp sgt i32 %i.by, %1
  br i1 %i.bz, label %.critedge, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.ca = sext i32 %.4121 to i64                  ; 5 uses
  %i.cb = add nsw i32 %i.bw, -256                 ; 3 uses
  %i.cc = zext i32 %i.cb to i64
  %i.cd = add nuw nsw i64 %i.cc, 2                ; 5 uses
  %min.iters.check = icmp eq i32 %i.cb, 0
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph119.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check143 = icmp ult i32 %i.cb, 30
  br i1 %min.iters.check143, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ce = and i64 %i.cd, 28
  %n.vec = and i64 %i.cd, 8589934560              ; 5 uses
  %i.cf = add nsw i64 %n.vec, %i.ca               ; 2 uses
  %i.cg = trunc i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ch = add i64 %index, %i.ca                   ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %.091126.pn, i64 %i.ch ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %wide.load = load <16 x i8>, ptr %i.ci, align 1, !tbaa !37
  %wide.load144 = load <16 x i8>, ptr %i.cj, align 1, !tbaa !37
  %i.ck = getelementptr inbounds i8, ptr %.091126, i64 %i.ch ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store <16 x i8> %wide.load, ptr %i.ck, align 1, !tbaa !37
  store <16 x i8> %wide.load144, ptr %i.cl, align 1, !tbaa !37
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cd, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ce, 0
  br i1 %min.epilog.iters.check, label %.lr.ph119.preheader, label %vec.epilog.ph, !prof !61

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec146 = and i64 %i.cd, 8589934588           ; 4 uses
  %i.cn = add nsw i64 %n.vec146, %i.ca            ; 2 uses
  %i.co = trunc i64 %n.vec146 to i32
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index147 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next149, %vec.epilog.vector.body ] ; 2 uses
  %i.cp = add i64 %index147, %i.ca                ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %.091126.pn, i64 %i.cp
  %wide.load148 = load <4 x i8>, ptr %i.cq, align 1, !tbaa !37
  %i.cr = getelementptr inbounds i8, ptr %.091126, i64 %i.cp
  store <4 x i8> %wide.load148, ptr %i.cr, align 1, !tbaa !37
  %index.next149 = add nuw i64 %index147, 4       ; 2 uses
  %i.cs = icmp eq i64 %index.next149, %n.vec146
  br i1 %i.cs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !54

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n150 = icmp eq i64 %i.cd, %n.vec146
  br i1 %cmp.n150, label %.loopexit.loopexit, label %.lr.ph119.preheader

.lr.ph119.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.ca, %iter.check ], [ %i.cf, %vec.epilog.iter.check ], [ %i.cn, %vec.epilog.middle.block ] ; 2 uses
  %.182117.ph = phi i32 [ 0, %iter.check ], [ %i.cg, %vec.epilog.iter.check ], [ %i.co, %vec.epilog.middle.block ] ; 4 uses
  %i.ct = xor i32 %i.bw, 2
  %i.cu = sub i32 %i.ct, %.182117.ph
  %i.cv = add nsw i32 %i.bw, -255
  %i.cw = sub i32 %i.cv, %.182117.ph
  %xtraiter = and i32 %i.cu, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph119.prol.loopexit, label %.lr.ph119.prol

.lr.ph119.prol:                                   ; preds = %.lr.ph119.preheader, %.lr.ph119.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph119.prol ], [ %indvars.iv.ph, %.lr.ph119.preheader ] ; 3 uses
  %.182117.prol = phi i32 [ %i.da, %.lr.ph119.prol ], [ %.182117.ph, %.lr.ph119.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph119.prol ], [ 0, %.lr.ph119.preheader ]
  %i.cx = getelementptr inbounds i8, ptr %.091126.pn, i64 %indvars.iv.prol
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !37
  %i.cz = getelementptr inbounds i8, ptr %.091126, i64 %indvars.iv.prol
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !37
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 3 uses
  %i.da = add nuw nsw i32 %.182117.prol, 1        ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph119.prol.loopexit, label %.lr.ph119.prol, !llvm.loop !55

.lr.ph119.prol.loopexit:                          ; preds = %.lr.ph119.prol, %.lr.ph119.preheader
  %indvars.iv.next.lcssa154.unr = phi i64 [ poison, %.lr.ph119.preheader ], [ %indvars.iv.next.prol, %.lr.ph119.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph119.preheader ], [ %indvars.iv.next.prol, %.lr.ph119.prol ]
  %.182117.unr = phi i32 [ %.182117.ph, %.lr.ph119.preheader ], [ %i.da, %.lr.ph119.prol ]
  %i.db = icmp ult i32 %i.cw, 3
  br i1 %i.db, label %.loopexit.loopexit, label %.lr.ph119

.lr.ph119:                                        ; preds = %.lr.ph119.prol.loopexit, %.lr.ph119
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph119 ], [ %indvars.iv.unr, %.lr.ph119.prol.loopexit ] ; 6 uses
  %.182117 = phi i32 [ %i.do, %.lr.ph119 ], [ %.182117.unr, %.lr.ph119.prol.loopexit ]
  %i.dc = getelementptr inbounds i8, ptr %.091126.pn, i64 %indvars.iv
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !37
  %i.de = getelementptr inbounds i8, ptr %.091126, i64 %indvars.iv
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !37
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %.091126.pn, i64 %indvars.iv.next
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !37
  %i.dh = getelementptr inbounds i8, ptr %.091126, i64 %indvars.iv.next
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !37
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %i.di = getelementptr inbounds i8, ptr %.091126.pn, i64 %indvars.iv.next.1
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !37
  %i.dk = getelementptr inbounds i8, ptr %.091126, i64 %indvars.iv.next.1
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !37
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3 ; 2 uses
  %i.dl = getelementptr inbounds i8, ptr %.091126.pn, i64 %indvars.iv.next.2
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !37
  %i.dn = getelementptr inbounds i8, ptr %.091126, i64 %indvars.iv.next.2
  store i8 %i.dm, ptr %i.dn, align 1, !tbaa !37
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %i.do = add nuw nsw i32 %.182117, 4             ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.do, %i.bx
  br i1 %exitcond.not.3, label %.loopexit.loopexit, label %.lr.ph119, !llvm.loop !56

bb.j:                                             ; preds = %bb.h
  %i.dp = icmp sgt i16 %i.bq, 0
  br i1 %i.dp, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.dq = sub nsw i32 %.4121, %4
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds i8, ptr %.091126, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !37
  %i.du = zext i8 %i.dt to i32
  %i.dv = shl nuw nsw i32 %i.br, 1
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %5, i64 %i.dw ; 2 uses
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !37
  %i.dz = zext i8 %i.dy to i32
  %i.ea = add nsw i32 %i.du, -128
  %i.eb = add nsw i32 %i.ea, %i.dz
  %6 = tail call i32 @llvm.smax.i32(i32 %i.eb, i32 0)
  %.0.i102107 = tail call i32 @llvm.umin.i32(i32 %6, i32 255)
  %i.ec = trunc nuw i32 %.0.i102107 to i8
  %i.ed = sext i32 %.4121 to i64
  %i.ee = getelementptr inbounds i8, ptr %.091126, i64 %i.ed
  store i8 %i.ec, ptr %i.ee, align 1, !tbaa !37
  %i.ef = add nsw i32 %.4121, 1                   ; 2 uses
  %i.eg = sub nsw i32 %i.ef, %4
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds i8, ptr %.091126, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !37
  %i.ek = zext i8 %i.ej to i32
  %i.el = getelementptr inbounds nuw i8, ptr %i.dx, i64 1
  %i.em = load i8, ptr %i.el, align 1, !tbaa !37
  %i.en = zext i8 %i.em to i32
  %i.eo = add nsw i32 %i.ek, -128
  %i.ep = add nsw i32 %i.eo, %i.en
  %7 = tail call i32 @llvm.smax.i32(i32 %i.ep, i32 0)
  %.0.i108 = tail call i32 @llvm.umin.i32(i32 %7, i32 255)
  %i.eq = trunc nuw i32 %.0.i108 to i8
  %i.er = sext i32 %i.ef to i64
  %i.es = getelementptr inbounds i8, ptr %.091126, i64 %i.er
  store i8 %i.eq, ptr %i.es, align 1, !tbaa !37
  %i.et = add nsw i32 %.4121, 2
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.lr.ph119.prol.loopexit, %.lr.ph119, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.cn, %vec.epilog.middle.block ], [ %i.cf, %middle.block ], [ %indvars.iv.next.lcssa154.unr, %.lr.ph119.prol.loopexit ], [ %indvars.iv.next.3, %.lr.ph119 ]
  %i.eu = trunc nsw i64 %indvars.iv.next.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.k
  %.8 = phi i32 [ %i.et, %bb.k ], [ %i.eu, %.loopexit.loopexit ] ; 2 uses
  %i.ev = icmp slt i32 %.8, %1
  br i1 %i.ev, label %bb.g, label %._crit_edge123, !llvm.loop !57

._crit_edge123:                                   ; preds = %.loopexit
  %i.ew = add nuw nsw i32 %.080125, 1             ; 2 uses
  %exitcond134.not = icmp eq i32 %i.ew, %2
  br i1 %exitcond134.not, label %.critedge, label %.preheader107, !llvm.loop !58

.critedge:                                        ; preds = %bb.d, %bb.e, %._crit_edge123, %bb.j, %bb.g, %bb.i, %.preheader111, %._crit_edge, %bb.a, %bb.b
  %.790 = phi i32 [ -1094995529, %bb.a ], [ 0, %._crit_edge ], [ 0, %._crit_edge123 ], [ -1094995529, %bb.b ], [ 0, %.preheader111 ], [ -1094995529, %bb.j ], [ -1094995529, %bb.i ], [ -1094995529, %bb.g ], [ -1094995529, %bb.e ], [ -1094995529, %bb.d ]
  ret i32 %.790
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @ir2_decode_plane_inter(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) unnamed_addr #3 {
bb.a:
  %i.a = and i32 %1, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.preheader42, label %.loopexit

.preheader42:                                     ; preds = %bb.a
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader42
  %i.c = icmp sgt i32 %1, 0
  %i.d = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = sext i32 %4 to i64
  br i1 %i.c, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.03346 = phi i32 [ %i.bh, %._crit_edge ], [ 0, %.preheader.lr.ph ]
  %.03545 = phi ptr [ %i.bg, %._crit_edge ], [ %3, %.preheader.lr.ph ] ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.g
  %.044 = phi i32 [ 0, %.preheader ], [ %.1, %bb.g ] ; 3 uses
  %.val = load i32, ptr %i.d, align 8, !tbaa !41  ; 4 uses
  %.val40 = load i32, ptr %i.e, align 4, !tbaa !39
  %.not41 = icmp sgt i32 %.val40, %.val
  br i1 %.not41, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !38
  %i.j = lshr i32 %.val, 3
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k
  %i.m = load i32, ptr %i.l, align 1, !tbaa !37
  %i.n = and i32 %.val, 7
  %i.o = lshr i32 %i.m, %i.n
  %i.p = and i32 %i.o, 16383
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr @ir2_vlc, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.t = load i16, ptr %i.s, align 2, !tbaa !37
  %i.u = sext i16 %i.t to i32
  %i.v = load i16, ptr %i.r, align 4, !tbaa !37   ; 3 uses
  %i.w = sext i16 %i.v to i32                     ; 2 uses
  %i.x = load i32, ptr %i.g, align 8, !tbaa !40
  %i.y = add i32 %.val, %i.u
  %i.z = tail call i32 @llvm.umin.i32(i32 %i.x, i32 %i.y)
  store i32 %i.z, ptr %i.d, align 8, !tbaa !41
  %i.aa = icmp sgt i16 %i.v, 127
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = shl nuw nsw i32 %i.w, 1
  %i.ac = add nsw i32 %i.ab, -254
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.ad = icmp slt i16 %i.v, 1
  br i1 %i.ad, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = zext nneg i32 %.044 to i64
  %i.af = getelementptr inbounds nuw i8, ptr %.03545, i64 %i.ae ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !37
  %i.ah = zext i8 %i.ag to i32
  %i.ai = shl nuw nsw i32 %i.w, 1
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 %i.aj ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !37
  %i.am = zext i8 %i.al to i32
  %i.an = mul nuw nsw i32 %i.am, 3
  %i.ao = add nsw i32 %i.an, -384
  %i.ap = ashr i32 %i.ao, 2
  %i.aq = add nsw i32 %i.ap, %i.ah
  %6 = tail call i32 @llvm.smax.i32(i32 %i.aq, i32 0)
  %.0.i3942 = tail call i32 @llvm.umin.i32(i32 %6, i32 255)
  %i.ar = trunc nuw i32 %.0.i3942 to i8
  store i8 %i.ar, ptr %i.af, align 1, !tbaa !37
  %i.as = sext i32 %.044 to i64
  %i.at = getelementptr inbounds nuw i8, ptr %.03545, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !37
  %i.aw = zext i8 %i.av to i32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !37
  %i.az = zext i8 %i.ay to i32
  %i.ba = mul nuw nsw i32 %i.az, 3
  %i.bb = add nsw i32 %i.ba, -384
  %i.bc = ashr i32 %i.bb, 2
  %i.bd = add nsw i32 %i.bc, %i.aw
  %7 = tail call i32 @llvm.smax.i32(i32 %i.bd, i32 0)
  %.0.i43 = tail call i32 @llvm.umin.i32(i32 %7, i32 255)
  %i.be = trunc nuw i32 %.0.i43 to i8
  store i8 %i.be, ptr %i.au, align 1, !tbaa !37
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.pn = phi i32 [ %i.ac, %bb.d ], [ 2, %bb.f ]
  %.1 = add nuw nsw i32 %.pn, %.044               ; 2 uses
  %i.bf = icmp slt i32 %.1, %1
  br i1 %i.bf, label %bb.b, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.g
  %i.bg = getelementptr inbounds i8, ptr %.03545, i64 %i.h
  %i.bh = add nuw nsw i32 %.03346, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.bh, %2
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !1

.loopexit:                                        ; preds = %._crit_edge, %bb.e, %bb.b, %.preheader42, %.preheader.lr.ph, %bb.a
  %.034 = phi i32 [ -1094995529, %bb.e ], [ -1094995529, %bb.a ], [ 0, %.preheader42 ], [ 0, %.preheader.lr.ph ], [ -1094995529, %bb.b ], [ 0, %._crit_edge ]
  ret i32 %.034
}

declare i32 @av_frame_ref(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @av_frame_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !42}
!1 = distinct !{!1, !42}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"override-stack-alignment", i32 16}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS7AVClass", !11, i64 0}
!13 = !{!"p1 _ZTS7AVCodec", !11, i64 0}
!14 = !{!"p1 _ZTS15AVCodecInternal", !11, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 omnipotent char", !11, i64 0}
!17 = !{!"AVRational", !8, i64 0, !8, i64 4}
!18 = !{!"float", !7, i64 0}
!19 = !{!"p1 short", !11, i64 0}
!20 = !{!"AVChannelLayout", !8, i64 0, !8, i64 4, !7, i64 8, !11, i64 16}
!21 = !{!"p1 _ZTS10RcOverride", !11, i64 0}
!22 = !{!"p1 _ZTS9AVHWAccel", !11, i64 0}
!23 = !{!"p1 _ZTS11AVBufferRef", !11, i64 0}
!24 = !{!"p1 _ZTS17AVCodecDescriptor", !11, i64 0}
!25 = !{!"p1 _ZTS16AVPacketSideData", !11, i64 0}
!26 = !{!"p1 int", !11, i64 0}
!27 = !{!"any p2 pointer", !11, i64 0}
!28 = !{!"p2 _ZTS15AVFrameSideData", !27, i64 0}
!29 = !{!"AVCodecContext", !12, i64 0, !8, i64 8, !8, i64 12, !13, i64 16, !8, i64 24, !8, i64 28, !11, i64 32, !14, i64 40, !11, i64 48, !15, i64 56, !8, i64 64, !8, i64 68, !16, i64 72, !8, i64 80, !17, i64 84, !17, i64 92, !17, i64 100, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !17, i64 128, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !11, i64 184, !11, i64 192, !8, i64 200, !18, i64 204, !18, i64 208, !18, i64 212, !18, i64 216, !18, i64 220, !18, i64 224, !18, i64 228, !18, i64 232, !18, i64 236, !8, i64 240, !8, i64 244, !8, i64 248, !8, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !19, i64 288, !19, i64 296, !19, i64 304, !8, i64 312, !8, i64 316, !8, i64 320, !8, i64 324, !8, i64 328, !8, i64 332, !8, i64 336, !8, i64 340, !8, i64 344, !8, i64 348, !20, i64 352, !8, i64 376, !8, i64 380, !8, i64 384, !8, i64 388, !8, i64 392, !8, i64 396, !8, i64 400, !8, i64 404, !11, i64 408, !8, i64 416, !8, i64 420, !8, i64 424, !18, i64 428, !18, i64 432, !8, i64 436, !8, i64 440, !8, i64 444, !8, i64 448, !8, i64 452, !21, i64 456, !15, i64 464, !15, i64 472, !18, i64 480, !18, i64 484, !8, i64 488, !8, i64 492, !16, i64 496, !16, i64 504, !8, i64 512, !8, i64 516, !8, i64 520, !8, i64 524, !8, i64 528, !22, i64 536, !11, i64 544, !23, i64 552, !23, i64 560, !8, i64 568, !8, i64 572, !7, i64 576, !8, i64 640, !8, i64 644, !8, i64 648, !8, i64 652, !8, i64 656, !8, i64 660, !8, i64 664, !11, i64 672, !11, i64 680, !8, i64 688, !8, i64 692, !8, i64 696, !8, i64 700, !8, i64 704, !8, i64 708, !8, i64 712, !8, i64 716, !8, i64 720, !24, i64 728, !16, i64 736, !8, i64 744, !8, i64 748, !16, i64 752, !16, i64 760, !16, i64 768, !25, i64 776, !8, i64 784, !8, i64 788, !15, i64 792, !8, i64 800, !8, i64 804, !15, i64 808, !11, i64 816, !15, i64 824, !26, i64 832, !8, i64 840, !28, i64 848, !8, i64 856, !8, i64 860}
!30 = !{!29, !11, i64 32}
!31 = !{!"p1 _ZTS14AVCodecContext", !11, i64 0}
!32 = !{!"p1 _ZTS7AVFrame", !11, i64 0}
!33 = !{!"GetBitContext", !16, i64 0, !8, i64 8, !8, i64 12, !8, i64 16}
!34 = !{!"Ir2Context", !31, i64 0, !32, i64 8, !33, i64 16, !8, i64 40}
!35 = !{!34, !31, i64 0}
!36 = !{!34, !32, i64 8}
!37 = !{!7, !7, i64 0}
!38 = !{!33, !16, i64 0}
!39 = !{!33, !8, i64 12}
!40 = !{!33, !8, i64 16}
!41 = !{!33, !8, i64 8}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!29, !8, i64 136}
!44 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !8, i64 32, !8, i64 36, !8, i64 40, !25, i64 48, !8, i64 56, !15, i64 64, !15, i64 72, !11, i64 80, !23, i64 88, !17, i64 96}
!45 = !{!44, !16, i64 24}
!46 = !{!44, !8, i64 32}
!47 = !{!34, !8, i64 40}
!48 = !{!29, !8, i64 112}
!49 = !{!29, !8, i64 116}
!50 = !{!16, !16, i64 0}
!51 = !{!8, !8, i64 0}
!52 = distinct !{!52, !42}
!53 = distinct !{!53, !42, !59, !60}
!54 = distinct !{!54, !42, !59, !60}
!55 = distinct !{!55, !62}
!56 = distinct !{!56, !42, !59}
!57 = distinct !{!57, !42}
!58 = distinct !{!58, !42}
!59 = !{!"llvm.loop.isvectorized", i32 1}
!60 = !{!"llvm.loop.unroll.runtime.disable"}
!61 = !{!"branch_weights", i32 4, i32 28}
!62 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
