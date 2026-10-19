Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ty?download=true
inline.NumInlined: 19
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ty_read_packet:bb.a

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 116 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 10 uses
  br label %.outer.split.preheader

.outer.split.preheader:                           ; preds = %.preheader, %demux_video.exit
  %.0.ph95 = phi i32 [ 0, %.preheader ], [ %.1, %demux_video.exit ]
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !79
  br label %.outer.split

.outer.split:                                     ; preds = %.outer.split.preheader, %bb.l
  %i.o = phi ptr [ %.pre, %.outer.split.preheader ], [ %i.by, %bb.l ] ; 2 uses
  %.not28 = icmp eq ptr %i.o, null
  br i1 %.not28, label %tailrecurse.i.preheader, label %bb.b

bb.b:                                             ; preds = %.outer.split
  %i.p = load i32, ptr %i.g, align 8, !tbaa !49
  %.not29 = icmp eq i32 %i.p, 0
  br i1 %.not29, label %bb.c, label %tailrecurse.i.preheader

bb.c:                                             ; preds = %bb.b
  %i.q = load i32, ptr %i.h, align 8, !tbaa !80   ; 2 uses
  %i.r = load i32, ptr %i.i, align 4, !tbaa !81
  %.not30 = icmp slt i32 %i.q, %i.r
  br i1 %.not30, label %bb.l, label %tailrecurse.i.preheader

tailrecurse.i.preheader:                          ; preds = %bb.c, %bb.b, %.outer.split
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i.preheader, %bb.e
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !29   ; 9 uses
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !30   ; 2 uses
  %i.u = tail call i32 @avio_feof(ptr noundef %i.t) #6, !inline_history !77
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %bb.d, label %get_chunk.exit.thread

bb.d:                                             ; preds = %tailrecurse.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 124 ; 2 uses
  %i.w = tail call i32 @avio_read(ptr noundef %i.t, ptr noundef nonnull %i.v, i32 noundef 131072) #6, !inline_history !77
  %i.x = load i32, ptr %i.s, align 8, !tbaa !82
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.s, align 8, !tbaa !82
  %i.z = icmp slt i32 %i.w, 4
  br i1 %i.z, label %get_chunk.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load i32, ptr %i.v, align 4             ; 3 uses
  %i.ab = tail call i32 @llvm.bswap.i32(i32 %i.aa)
  switch i32 %i.ab, label %bb.f [
    i32 0, label %get_chunk.exit.thread
    i32 -179930435, label %tailrecurse.i
  ]

bb.f:                                             ; preds = %bb.e
  %.not30.i = icmp sgt i32 %i.aa, -1
  %..i = select i1 %.not30.i, i32 255, i32 65535
  %i.ac = and i32 %..i, %i.aa                     ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 116
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !81
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 112
  store i32 0, ptr %i.ae, align 8, !tbaa !80
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 120
  store i32 0, ptr %i.af, align 8, !tbaa !49
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 3 uses
  store i32 4, ptr %i.ag, align 4, !tbaa !83
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 104 ; 3 uses
  tail call void @av_freep(ptr noundef nonnull %i.ah) #6, !inline_history !77
  %i.ai = shl nuw nsw i32 %i.ac, 4
  %i.aj = icmp samesign ugt i32 %i.ac, 8191
  br i1 %i.aj, label %get_chunk.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 128
  %i.al = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.am = tail call noalias ptr @av_calloc(i64 noundef %i.al, i64 noundef 16) #6, !inline_history !77 ; 4 uses
  %.not.i.i = icmp ne ptr %i.am, null             ; 2 uses
  %i.an = icmp ne i32 %i.ac, 0
  %or.cond.i.i = and i1 %i.an, %.not.i.i
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %parse_chunk_headers.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.j
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.j ], [ 0, %bb.g ] ; 3 uses
  %i.ao = shl nuw nsw i64 %indvars.iv.i.i, 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ao ; 6 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %indvars.iv.i.i ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 3
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 6
  store i8 %i.as, ptr %i.at, align 2, !tbaa !37
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.av = load i8, ptr %i.au, align 1, !tbaa !13  ; 3 uses
  %i.aw = and i8 %i.av, 15
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 7
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !38
  %i.ay = load i8, ptr %i.ap, align 1, !tbaa !13  ; 3 uses
  %.not33.i.i = icmp sgt i8 %i.ay, -1
  br i1 %.not33.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !13  ; 2 uses
  %i.bb = tail call i8 @llvm.fshl.i8(i8 %i.ay, i8 %i.ba, i8 4)
  %i.bc = tail call i8 @llvm.fshl.i8(i8 %i.ba, i8 %i.av, i8 4)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i8 %i.bb, ptr %i.bd, align 4, !tbaa !13
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 5
  store i8 %i.bc, ptr %i.be, align 1, !tbaa !13
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.bf = zext nneg i8 %i.ay to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !13
  %i.bi = zext i8 %i.bh to i32
  %i.bj = shl nuw nsw i32 %i.bf, 12
  %i.bk = shl nuw nsw i32 %i.bi, 4
  %i.bl = lshr i8 %i.av, 4
  %i.bm = zext nneg i8 %i.bl to i32
  %i.bn = or disjoint i32 %i.bj, %i.bm
  %i.bo = or disjoint i32 %i.bk, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.bq = load i64, ptr %i.bp, align 1, !tbaa !13
  %i.br = tail call noundef i64 @llvm.bswap.i64(i64 %i.bq)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink36.i.i = phi i32 [ %i.bo, %bb.i ], [ 0, %bb.h ]
  %.sink.i.i = phi i64 [ %i.br, %bb.i ], [ 0, %bb.h ]
  store i32 %.sink36.i.i, ptr %i.aq, align 8, !tbaa !39
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 %.sink.i.i, ptr %i.bs, align 8, !tbaa !40
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %exitcond.not.i.i, label %parse_chunk_headers.exit.thread.i, label %.lr.ph.i.i, !llvm.loop !0

parse_chunk_headers.exit.thread.i:                ; preds = %bb.j
  store ptr %i.am, ptr %i.ah, align 8, !tbaa !79
  br label %bb.k

parse_chunk_headers.exit.i:                       ; preds = %bb.g
  store ptr %i.am, ptr %i.ah, align 8, !tbaa !79
  br i1 %.not.i.i, label %bb.k, label %get_chunk.exit.thread

bb.k:                                             ; preds = %parse_chunk_headers.exit.i, %parse_chunk_headers.exit.thread.i
  %i.bt = load i32, ptr %i.ag, align 4, !tbaa !83
  %i.bu = add i32 %i.bt, %i.ai
  store i32 %i.bu, ptr %i.ag, align 4, !tbaa !83
  %i.bv = load i32, ptr %i.i, align 4, !tbaa !81
  %i.bw = icmp slt i32 %i.bv, 1
  br i1 %i.bw, label %get_chunk.exit.thread, label %._crit_edge

._crit_edge:                                      ; preds = %bb.k
  %.pre62 = load ptr, ptr %i.f, align 8, !tbaa !79
  %.pre63 = load i32, ptr %i.h, align 8, !tbaa !80
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.c
  %i.bx = phi i32 [ %.pre63, %._crit_edge ], [ %i.q, %bb.c ] ; 2 uses
  %i.by = phi ptr [ %.pre62, %._crit_edge ], [ %i.o, %bb.c ] ; 2 uses
  %i.bz = sext i32 %i.bx to i64
  %i.ca = getelementptr inbounds [16 x i8], ptr %i.by, i64 %i.bz ; 8 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !39 ; 2 uses
  %i.cc = add nsw i32 %i.bx, 1
  store i32 %i.cc, ptr %i.h, align 8, !tbaa !80
  %i.cd = icmp slt i32 %i.cb, 1
  br i1 %i.cd, label %.outer.split, label %bb.m, !llvm.loop !78

bb.m:                                             ; preds = %bb.l
  %i.ce = load i32, ptr %i.j, align 4, !tbaa !83
  %i.cf = add i32 %i.ce, %i.cb
  %i.cg = icmp ugt i32 %i.cf, 131072
  br i1 %i.cg, label %get_chunk.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ch = tail call i32 @avio_feof(ptr noundef %i.d) #6
  %.not31 = icmp eq i32 %i.ch, 0
  br i1 %.not31, label %bb.o, label %get_chunk.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 6
  %i.cj = load i8, ptr %i.ci, align 2, !tbaa !37
  switch i8 %i.cj, label %bb.cj [
    i8 -32, label %bb.p
    i8 -64, label %bb.ai
  ]

bb.p:                                             ; preds = %bb.o
  %.val = load ptr, ptr %i.a, align 8, !tbaa !29  ; 10 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ca, i64 7
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !38  ; 4 uses
  %i.cm = load i32, ptr %i.ca, align 8, !tbaa !39
  %.fr.i = freeze i32 %i.cm                       ; 9 uses
  %2 = sext i32 %.fr.i to i64
  %i.cn = icmp sgt i32 %.fr.i, 7
  br i1 %i.cn, label %switch.early.test.i, label %find_es_header.exit.i

switch.early.test.i:                              ; preds = %bb.p
  switch i8 %i.cl, label %bb.q [
    i8 2, label %bb.z
    i8 8, label %bb.z
    i8 12, label %bb.z
  ]

bb.q:                                             ; preds = %switch.early.test.i
  %i.co = getelementptr inbounds nuw i8, ptr %.val, i64 124 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.val, i64 4 ; 6 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !83 ; 4 uses
  %i.cr = zext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cr ; 6 uses
  %i.ct = load i32, ptr %i.cs, align 1
  %i.cu = icmp ne i32 %i.ct, -536805376
  %i.cv = zext i1 %i.cu to i32
  %.not.i.i34 = icmp eq i32 %i.cv, 0
  br i1 %.not.i.i34, label %select.unfold.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  %i.cx = load i32, ptr %i.cw, align 1
  %i.cy = icmp ne i32 %i.cx, -536805376
  %i.cz = zext i1 %i.cy to i32
  %.not.1.i.i = icmp eq i32 %i.cz, 0
  br i1 %.not.1.i.i, label %select.unfold.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.da = getelementptr inbounds nuw i8, ptr %i.cs, i64 2
  %i.db = load i32, ptr %i.da, align 1
  %i.dc = icmp ne i32 %i.db, -536805376
  %i.dd = zext i1 %i.dc to i32
  %.not.2.i.i = icmp eq i32 %i.dd, 0
  br i1 %.not.2.i.i, label %select.unfold.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.de = getelementptr inbounds nuw i8, ptr %i.cs, i64 3
  %i.df = load i32, ptr %i.de, align 1
  %i.dg = icmp ne i32 %i.df, -536805376
  %i.dh = zext i1 %i.dg to i32
  %.not.3.i.i = icmp eq i32 %i.dh, 0
  br i1 %.not.3.i.i, label %select.unfold.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.di = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.dj = load i32, ptr %i.di, align 1
  %i.dk = icmp ne i32 %i.dj, -536805376
  %i.dl = zext i1 %i.dk to i32
  %.not.4.i.i = icmp eq i32 %i.dl, 0
  br i1 %.not.4.i.i, label %select.unfold.i, label %find_es_header.exit.i

select.unfold.i:                                  ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %.07.i.ph.i = phi i32 [ 0, %bb.q ], [ 2, %bb.s ], [ 1, %bb.r ], [ 3, %bb.t ], [ 4, %bb.u ] ; 4 uses
  %i.dm = add nuw nsw i32 %.07.i.ph.i, 14
  %i.dn = icmp samesign ult i32 %.fr.i, %i.dm
  br i1 %i.dn, label %demux_video.exit, label %bb.v

bb.v:                                             ; preds = %select.unfold.i
  %i.do = zext nneg i32 %.07.i.ph.i to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.do ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 9
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !13
  %i.ds = and i8 %i.dr, 14
  %i.dt = zext nneg i8 %i.ds to i64
  %i.du = shl nuw nsw i64 %i.dt, 29
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 10
  %i.dw = load i16, ptr %i.dv, align 1, !tbaa !13
  %i.dx = tail call i16 @llvm.bswap.i16(i16 %i.dw)
  %i.dy = lshr i16 %i.dx, 1
  %i.dz = zext nneg i16 %i.dy to i64
  %i.ea = shl nuw nsw i64 %i.dz, 15
  %i.eb = or disjoint i64 %i.ea, %i.du
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  %i.ed = load i16, ptr %i.ec, align 1, !tbaa !13
  %i.ee = tail call i16 @llvm.bswap.i16(i16 %i.ed)
  %i.ef = lshr i16 %i.ee, 1
  %i.eg = zext nneg i16 %i.ef to i64
  %i.eh = or disjoint i64 %i.eb, %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %.val, i64 96
  store i64 %i.eh, ptr %i.ei, align 8, !tbaa !35
  %.not76.i = icmp eq i8 %i.cl, 6
  br i1 %.not76.i, label %find_es_header.exit.thread4.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ej = or disjoint i32 %.07.i.ph.i, 16         ; 2 uses
  %.not77.i = icmp samesign ult i32 %.fr.i, %i.ej
  br i1 %.not77.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ek = add nsw i32 %.fr.i, -16
  %i.el = sub nsw i32 %i.ek, %.07.i.ph.i          ; 3 uses
  %i.em = add i32 %i.ej, %i.cq
  store i32 %i.em, ptr %i.cp, align 4, !tbaa !83
  %i.en = tail call i32 @av_new_packet(ptr noundef %1, i32 noundef %i.el) #6 ; 2 uses
  %i.eo = icmp sgt i32 %i.en, -1
  br i1 %i.eo, label %.thread.i, label %demux_video.exit

bb.y:                                             ; preds = %bb.w
  %i.ep = add i32 %i.cq, %.fr.i
  store i32 %i.ep, ptr %i.cp, align 4, !tbaa !83
  br label %demux_video.exit

find_es_header.exit.i:                            ; preds = %bb.u, %bb.p
  %i.eq = icmp eq i8 %i.cl, 6
  br i1 %i.eq, label %find_es_header.exit.find_es_header.exit.thread4_crit_edge.i, label %bb.z

find_es_header.exit.find_es_header.exit.thread4_crit_edge.i: ; preds = %find_es_header.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !83
  br label %find_es_header.exit.thread4.i

.thread.i:                                        ; preds = %bb.x
  %i.er = load ptr, ptr %i.k, align 8, !tbaa !84
  %i.es = load i32, ptr %i.cp, align 4, !tbaa !83
  %i.et = zext i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.et
  %i.ev = sext i32 %i.el to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.er, ptr nonnull align 1 %i.eu, i64 %i.ev, i1 false)
  %i.ew = load i32, ptr %i.cp, align 4, !tbaa !83
  %i.ex = add i32 %i.ew, %i.el
  store i32 %i.ex, ptr %i.cp, align 4, !tbaa !83
  br label %bb.ab

find_es_header.exit.thread4.i:                    ; preds = %find_es_header.exit.find_es_header.exit.thread4_crit_edge.i, %bb.v
  %i.ey = phi i32 [ %.pre.i, %find_es_header.exit.find_es_header.exit.thread4_crit_edge.i ], [ %i.cq, %bb.v ]
  %i.ez = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.fa = add i32 %i.ey, %.fr.i
  store i32 %i.fa, ptr %i.ez, align 4, !tbaa !83
  br label %demux_video.exit

bb.z:                                             ; preds = %find_es_header.exit.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i
  %i.fb = tail call i32 @av_new_packet(ptr noundef %1, i32 noundef %.fr.i) #6 ; 2 uses
  %i.fc = icmp slt i32 %i.fb, 0
  br i1 %i.fc, label %demux_video.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fd = load ptr, ptr %i.k, align 8, !tbaa !84
  %i.fe = getelementptr inbounds nuw i8, ptr %.val, i64 124
  %i.ff = getelementptr inbounds nuw i8, ptr %.val, i64 4 ; 3 uses
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !83
  %i.fh = zext i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.fh
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fd, ptr nonnull align 1 %i.fi, i64 %2, i1 false)
  %i.fj = load i32, ptr %i.ff, align 4, !tbaa !83
  %i.fk = add i32 %i.fj, %.fr.i
  store i32 %i.fk, ptr %i.ff, align 4, !tbaa !83
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.thread.i
  store i32 0, ptr %i.l, align 4, !tbaa !85
  switch i8 %i.cl, label %bb.af [
    i8 2, label %demux_video.exit
    i8 12, label %bb.ac
    i8 7, label %bb.ae
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.fl = load i32, ptr %i.n, align 8, !tbaa !86
  %i.fm = icmp sgt i32 %i.fl, 5
  br i1 %i.fm, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.fn = load ptr, ptr %i.k, align 8, !tbaa !84
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 5 ; 2 uses
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !13
  %i.fq = or i8 %i.fp, 8
  store i8 %i.fq, ptr %i.fo, align 1, !tbaa !13
  br label %bb.af

bb.ae:                                            ; preds = %bb.ab
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !40
  %i.ft = getelementptr inbounds nuw i8, ptr %.val, i64 72
  store i64 %i.fs, ptr %i.ft, align 8, !tbaa !87
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.fu = getelementptr inbounds nuw i8, ptr %.val, i64 72 ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !87
  %i.fw = add i64 %i.fv, 35000000
  store i64 %i.fw, ptr %i.fu, align 8, !tbaa !87
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.fx = getelementptr inbounds nuw i8, ptr %.val, i64 96 ; 2 uses
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !35 ; 2 uses
  %.not79.i = icmp eq i64 %i.fy, -9223372036854775808
  br i1 %.not79.i, label %demux_video.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i64 %i.fy, ptr %i.m, align 8, !tbaa !88
  store i64 -9223372036854775808, ptr %i.fx, align 8, !tbaa !35
  br label %demux_video.exit

bb.ai:                                            ; preds = %bb.o
  %.val32 = load i32, ptr %i.ca, align 8, !tbaa !39 ; 18 uses
  %i.fz = getelementptr i8, ptr %i.ca, i64 7
  %.val33 = load i8, ptr %i.fz, align 1, !tbaa !38
  %i.ga = load ptr, ptr %i.a, align 8, !tbaa !29  ; 37 uses
  %i.gb = sext i32 %.val32 to i64                 ; 5 uses
  switch i8 %.val33, label %bb.ci [
    i8 2, label %bb.aj
    i8 3, label %bb.bd
    i8 4, label %bb.bs
    i8 9, label %bb.bu
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 56 ; 4 uses
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !89 ; 4 uses
  %i.ge = icmp sgt i32 %i.gd, 0
  br i1 %i.ge, label %bb.ak, label %bb.ax

bb.ak:                                            ; preds = %bb.aj
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ga, i64 28
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !42
  %i.gh = sub nsw i32 %i.gg, %i.gd                ; 3 uses
  %.not.i35 = icmp slt i32 %i.gh, %.val32
  br i1 %.not.i35, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ga, i64 36
  %i.gj = zext nneg i32 %i.gd to i64
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gj
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ga, i64 124
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ga, i64 4 ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !83 ; 2 uses
  %i.go = zext i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.go
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gk, ptr nonnull align 1 %i.gp, i64 %i.gb, i1 false)
  %i.gq = add i32 %i.gn, %.val32
  store i32 %i.gq, ptr %i.gm, align 4, !tbaa !83
  %i.gr = load i32, ptr %i.gc, align 8, !tbaa !89
  %i.gs = add i32 %i.gr, %.val32
  store i32 %i.gs, ptr %i.gc, align 8, !tbaa !89
  br label %demux_video.exit

bb.am:                                            ; preds = %bb.ak
  %i.gt = sext i32 %i.gh to i64                   ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ga, i64 36 ; 4 uses
  %i.gv = zext nneg i32 %i.gd to i64
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ga, i64 124
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ga, i64 4 ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !83 ; 2 uses
  %i.ha = zext i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.ha
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gw, ptr nonnull align 1 %i.hb, i64 %i.gt, i1 false)
  %i.hc = add i32 %i.gz, %i.gh
  store i32 %i.hc, ptr %i.gy, align 4, !tbaa !83
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !43
  %i.hf = icmp eq i32 %i.he, 2
  br i1 %i.hf, label %bb.an, label %bb.as

bb.an:                                            ; preds = %bb.am
  %i.hg = load i32, ptr %i.gu, align 1
  %i.hh = icmp ne i32 %i.hg, -1073676288
  %i.hi = zext i1 %i.hh to i32
  %.not.i.i39 = icmp eq i32 %i.hi, 0
  br i1 %.not.i.i39, label %select.unfold.i37, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ga, i64 37
  %i.hk = load i32, ptr %i.hj, align 1
  %i.hl = icmp ne i32 %i.hk, -1073676288
  %i.hm = zext i1 %i.hl to i32
  %.not.1.i.i41 = icmp eq i32 %i.hm, 0
  br i1 %.not.1.i.i41, label %select.unfold.i37, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ga, i64 38
  %i.ho = load i32, ptr %i.hn, align 1
  %i.hp = icmp ne i32 %i.ho, -1073676288
  %i.hq = zext i1 %i.hp to i32
  %.not.2.i.i43 = icmp eq i32 %i.hq, 0
  br i1 %.not.2.i.i43, label %select.unfold.i37, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ga, i64 39
  %i.hs = load i32, ptr %i.hr, align 1
  %i.ht = icmp ne i32 %i.hs, -1073676288
  %i.hu = zext i1 %i.ht to i32
  %.not.3.i.i45 = icmp eq i32 %i.hu, 0
  br i1 %.not.3.i.i45, label %select.unfold.i37, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ga, i64 40
  %i.hw = load i32, ptr %i.hv, align 1
  %i.hx = icmp ne i32 %i.hw, -1073676288
  %i.hy = zext i1 %i.hx to i32
  %.not.4.i.i47 = icmp eq i32 %i.hy, 0
  br i1 %.not.4.i.i47, label %select.unfold.i37, label %find_es_header.exit.i36

bb.as:                                            ; preds = %bb.am
  %i.hz = load i32, ptr %i.gu, align 1
  %i.ia = icmp ne i32 %i.hz, -1124007936
  %i.ib = zext i1 %i.ia to i32
  %.not.i141.i = icmp eq i32 %i.ib, 0
  br i1 %.not.i141.i, label %select.unfold.i37, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ga, i64 37
  %i.id = load i32, ptr %i.ic, align 1
  %i.ie = icmp ne i32 %i.id, -1124007936
  %i.if = zext i1 %i.ie to i32
  %.not.1.i143.i = icmp eq i32 %i.if, 0
  br i1 %.not.1.i143.i, label %select.unfold.i37, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ga, i64 38
  %i.ih = load i32, ptr %i.ig, align 1
  %i.ii = icmp ne i32 %i.ih, -1124007936
  %i.ij = zext i1 %i.ii to i32
  %.not.2.i145.i = icmp eq i32 %i.ij, 0
  br i1 %.not.2.i145.i, label %select.unfold.i37, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ga, i64 39
  %i.il = load i32, ptr %i.ik, align 1
  %i.im = icmp ne i32 %i.il, -1124007936
  %i.in = zext i1 %i.im to i32
  %.not.3.i147.i = icmp eq i32 %i.in, 0
  br i1 %.not.3.i147.i, label %select.unfold.i37, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.io = getelementptr inbounds nuw i8, ptr %i.ga, i64 40
  %i.ip = load i32, ptr %i.io, align 1
  %i.iq = icmp ne i32 %i.ip, -1124007936
  %i.ir = zext i1 %i.iq to i32
  %.not.4.i149.i = icmp eq i32 %i.ir, 0
  br i1 %.not.4.i149.i, label %select.unfold.i37, label %find_es_header.exit.i36

select.unfold.i37:                                ; preds = %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an
  %.0125.ph.i = phi i32 [ 4, %bb.ar ], [ 2, %bb.ap ], [ 2, %bb.au ], [ 1, %bb.at ], [ 3, %bb.av ], [ 0, %bb.as ], [ 1, %bb.ao ], [ 3, %bb.aq ], [ 0, %bb.an ], [ 4, %bb.aw ]
  %i.is = getelementptr inbounds nuw i8, ptr %i.ga, i64 32
  %i.it = load i32, ptr %i.is, align 8, !tbaa !44
  %i.iu = add nsw i32 %i.it, %.0125.ph.i
  %i.iv = sext i32 %i.iu to i64
  %i.iw = getelementptr inbounds i8, ptr %i.gu, i64 %i.iv ; 3 uses
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !13
  %i.iy = and i8 %i.ix, 14
  %i.iz = zext nneg i8 %i.iy to i64
  %i.ja = shl nuw nsw i64 %i.iz, 29
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iw, i64 1
  %i.jc = load i16, ptr %i.jb, align 1, !tbaa !13
  %i.jd = tail call i16 @llvm.bswap.i16(i16 %i.jc)
  %i.je = lshr i16 %i.jd, 1
  %i.jf = zext nneg i16 %i.je to i64
  %i.jg = shl nuw nsw i64 %i.jf, 15
  %i.jh = or disjoint i64 %i.jg, %i.ja
  %i.ji = getelementptr inbounds nuw i8, ptr %i.iw, i64 3
  %i.jj = load i16, ptr %i.ji, align 1, !tbaa !13
  %i.jk = tail call i16 @llvm.bswap.i16(i16 %i.jj)
  %i.jl = lshr i16 %i.jk, 1
  %i.jm = zext nneg i16 %i.jl to i64
  %i.jn = or disjoint i64 %i.jh, %i.jm            ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ga, i64 88
  store i64 %i.jn, ptr %i.jo, align 8, !tbaa !34
  store i64 %i.jn, ptr %i.m, align 8, !tbaa !88
  br label %find_es_header.exit.i36

find_es_header.exit.i36:                          ; preds = %select.unfold.i37, %bb.aw, %bb.ar
  store i32 0, ptr %i.gc, align 8, !tbaa !89
  br label %bb.ax

bb.ax:                                            ; preds = %find_es_header.exit.i36, %bb.aj
  %.0124.i = phi i64 [ %i.gt, %find_es_header.exit.i36 ], [ 0, %bb.aj ]
  %i.jp = sub nsw i64 %i.gb, %.0124.i             ; 2 uses
  %i.jq = trunc i64 %i.jp to i32                  ; 2 uses
  %i.jr = tail call i32 @av_new_packet(ptr noundef %1, i32 noundef %i.jq) #6 ; 2 uses
  %i.js = icmp slt i32 %i.jr, 0
  br i1 %i.js, label %demux_video.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jt = load ptr, ptr %i.k, align 8, !tbaa !84
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ga, i64 124
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ga, i64 4 ; 3 uses
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !83
  %i.jx = zext i32 %i.jw to i64
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.jx
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jt, ptr nonnull align 1 %i.jy, i64 %i.jp, i1 false)
  %i.jz = load i32, ptr %i.jv, align 4, !tbaa !83
  %i.ka = add i32 %i.jz, %i.jq
  store i32 %i.ka, ptr %i.jv, align 4, !tbaa !83
  store i32 1, ptr %i.l, align 4, !tbaa !85
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  %i.kc = load i32, ptr %i.kb, align 8, !tbaa !43
  %i.kd = icmp eq i32 %i.kc, 1
  br i1 %i.kd, label %bb.az, label %demux_video.exit

bb.az:                                            ; preds = %bb.ay
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ga, i64 20
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !41
  %i.kg = icmp eq i32 %i.kf, 2
  br i1 %i.kg, label %bb.ba, label %demux_video.exit

bb.ba:                                            ; preds = %bb.az
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ga, i64 64 ; 3 uses
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !90
  %i.kj = load i32, ptr %i.n, align 8, !tbaa !86  ; 3 uses
  %i.kk = sext i32 %i.kj to i64
  %i.kl = add i64 %i.ki, %i.kk                    ; 2 uses
  %i.km = icmp ugt i64 %i.kl, 1536
  br i1 %i.km, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.kj, i32 2)
  %i.kn = sub nsw i32 %i.kj, %spec.select.i
  store i32 %i.kn, ptr %i.n, align 8, !tbaa !86
  store i64 0, ptr %i.kh, align 8, !tbaa !90
  br label %demux_video.exit

bb.bc:                                            ; preds = %bb.ba
  store i64 %i.kl, ptr %i.kh, align 8, !tbaa !90
  br label %demux_video.exit

bb.bd:                                            ; preds = %bb.ai
  %i.ko = tail call i32 @av_new_packet(ptr noundef %1, i32 noundef %.val32) #6 ; 2 uses
  %i.kp = icmp slt i32 %i.ko, 0
  br i1 %i.kp, label %demux_video.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.kq = load ptr, ptr %i.k, align 8, !tbaa !84
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ga, i64 124
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ga, i64 4 ; 3 uses
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !83
  %i.ku = zext i32 %i.kt to i64
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.ku
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kq, ptr nonnull align 1 %i.kv, i64 %i.gb, i1 false)
  %i.kw = load i32, ptr %i.ks, align 4, !tbaa !83
  %i.kx = add i32 %i.kw, %.val32
  store i32 %i.kx, ptr %i.ks, align 4, !tbaa !83
  store i32 1, ptr %i.l, align 4, !tbaa !85
  %i.ky = load ptr, ptr %i.k, align 8, !tbaa !84  ; 11 uses
  %i.kz = load i32, ptr %i.ky, align 1
  %i.la = icmp ne i32 %i.kz, -1073676288
  %i.lb = zext i1 %i.la to i32
  %.not.i154.i = icmp eq i32 %i.lb, 0             ; 2 uses
  br i1 %.not.i154.i, label %find_es_header.exit165.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ky, i64 1
  %i.ld = load i32, ptr %i.lc, align 1
  %i.le = icmp ne i32 %i.ld, -1073676288
  %i.lf = zext i1 %i.le to i32
  %.not.1.i156.i = icmp eq i32 %i.lf, 0
  br i1 %.not.1.i156.i, label %.thread9.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ky, i64 2
  %i.lh = load i32, ptr %i.lg, align 1
  %i.li = icmp ne i32 %i.lh, -1073676288
  %i.lj = zext i1 %i.li to i32
  %.not.2.i158.i = icmp eq i32 %i.lj, 0
  br i1 %.not.2.i158.i, label %.thread9.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ky, i64 3
  %i.ll = load i32, ptr %i.lk, align 1
  %i.lm = icmp ne i32 %i.ll, -1073676288
  %i.ln = zext i1 %i.lm to i32
  %.not.3.i160.i = icmp eq i32 %i.ln, 0
  br i1 %.not.3.i160.i, label %.thread9.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ky, i64 4
  %i.lp = load i32, ptr %i.lo, align 1
  %i.lq = icmp ne i32 %i.lp, -1073676288
  %i.lr = zext i1 %i.lq to i32
  %.not.4.i162.i = icmp eq i32 %i.lr, 0
  br i1 %.not.4.i162.i, label %.thread9.i, label %.critedge.i.i

find_es_header.exit165.i:                         ; preds = %bb.be
  %i.ls = icmp eq i32 %.val32, 16
  br i1 %i.ls, label %bb.bj, label %.thread9.i

bb.bj:                                            ; preds = %find_es_header.exit165.i
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ky, i64 9
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !13
  %i.lv = and i8 %i.lu, 14
  %i.lw = zext nneg i8 %i.lv to i64
  %i.lx = shl nuw nsw i64 %i.lw, 29
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ky, i64 10
  %i.lz = load i16, ptr %i.ly, align 1, !tbaa !13
  %i.ma = tail call i16 @llvm.bswap.i16(i16 %i.lz)
  %i.mb = lshr i16 %i.ma, 1
  %i.mc = zext nneg i16 %i.mb to i64
  %i.md = shl nuw nsw i64 %i.mc, 15
  %i.me = or disjoint i64 %i.md, %i.lx
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ky, i64 12
  %i.mg = load i16, ptr %i.mf, align 1, !tbaa !13
  %i.mh = tail call i16 @llvm.bswap.i16(i16 %i.mg)
  %i.mi = lshr i16 %i.mh, 1
  %i.mj = zext nneg i16 %i.mi to i64
  %i.mk = or disjoint i64 %i.me, %i.mj            ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.ga, i64 88
  store i64 %i.mk, ptr %i.ml, align 8, !tbaa !34
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ga, i64 80 ; 2 uses
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !33
  %i.mo = icmp eq i64 %i.mn, -9223372036854775808
  br i1 %i.mo, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  store i64 %i.mk, ptr %i.mm, align 8, !tbaa !33
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  tail call void @av_packet_unref(ptr noundef nonnull %1) #6
  br label %demux_video.exit

.thread9.i:                                       ; preds = %find_es_header.exit165.i, %bb.bi, %bb.bh, %bb.bg, %bb.bf
  %.07.i164812.i = phi i32 [ 0, %find_es_header.exit165.i ], [ 2, %bb.bg ], [ 3, %bb.bh ], [ 1, %bb.bf ], [ 4, %bb.bi ] ; 5 uses
  %.val13913.i = load ptr, ptr %i.a, align 8, !tbaa !29 ; 6 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.val13913.i, i64 28 ; 2 uses
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !42 ; 3 uses
  %i.mr = add nsw i32 %i.mq, %.07.i164812.i
  %i.ms = icmp sgt i32 %i.mr, %.val32
  br i1 %i.ms, label %bb.bm, label %bb.bo

.critedge.i.i:                                    ; preds = %bb.bi
  %.val139.i = load ptr, ptr %i.a, align 8, !tbaa !29 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %.val139.i, i64 36
  store i32 0, ptr %i.mt, align 4
  %i.mu = getelementptr inbounds nuw i8, ptr %.val139.i, i64 56
  store i32 4, ptr %i.mu, align 8, !tbaa !89
  br label %bb.br

bb.bm:                                            ; preds = %.thread9.i
  %i.mv = getelementptr inbounds nuw i8, ptr %.val13913.i, i64 36
  %i.mw = zext nneg i32 %.07.i164812.i to i64
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.mw
  %i.my = sub nsw i32 %.val32, %.07.i164812.i     ; 3 uses
  %i.mz = sext i32 %i.my to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.mv, ptr nonnull align 1 %i.mx, i64 %i.mz, i1 false)
  %i.na = getelementptr inbounds nuw i8, ptr %.val13913.i, i64 56
  store i32 %i.my, ptr %i.na, align 8, !tbaa !89
  br i1 %.not.i154.i, label %bb.br, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.nb = load i32, ptr %i.n, align 8, !tbaa !86
  %i.nc = sub nsw i32 %i.nb, %i.my
  store i32 %i.nc, ptr %i.n, align 8, !tbaa !86
  br label %demux_video.exit

bb.bo:                                            ; preds = %.thread9.i
  %i.nd = getelementptr inbounds nuw i8, ptr %.val13913.i, i64 32
  %i.ne = load i32, ptr %i.nd, align 8, !tbaa !44
  %i.nf = add nsw i32 %i.ne, %.07.i164812.i
  %i.ng = sext i32 %i.nf to i64
  %i.nh = getelementptr inbounds i8, ptr %i.ky, i64 %i.ng ; 3 uses
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !13
  %i.nj = and i8 %i.ni, 14
  %i.nk = zext nneg i8 %i.nj to i64
  %i.nl = shl nuw nsw i64 %i.nk, 29
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nh, i64 1
  %i.nn = load i16, ptr %i.nm, align 1, !tbaa !13
  %i.no = tail call i16 @llvm.bswap.i16(i16 %i.nn)
  %i.np = lshr i16 %i.no, 1
  %i.nq = zext nneg i16 %i.np to i64
  %i.nr = shl nuw nsw i64 %i.nq, 15
  %i.ns = or disjoint i64 %i.nr, %i.nl
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nh, i64 3
  %i.nu = load i16, ptr %i.nt, align 1, !tbaa !13
  %i.nv = tail call i16 @llvm.bswap.i16(i16 %i.nu)
  %i.nw = lshr i16 %i.nv, 1
  %i.nx = zext nneg i16 %i.nw to i64
  %i.ny = or disjoint i64 %i.ns, %i.nx            ; 3 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.val13913.i, i64 88
  store i64 %i.ny, ptr %i.nz, align 8, !tbaa !34
  %i.oa = getelementptr inbounds nuw i8, ptr %.val13913.i, i64 80 ; 2 uses
  %i.ob = load i64, ptr %i.oa, align 8, !tbaa !33
  %i.oc = icmp eq i64 %i.ob, -9223372036854775808
  br i1 %i.oc, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  store i64 %i.ny, ptr %i.oa, align 8, !tbaa !33
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  store i64 %i.ny, ptr %i.m, align 8, !tbaa !88
  %i.od = zext nneg i32 %.07.i164812.i to i64
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.od ; 2 uses
  %i.of = sext i32 %i.mq to i64
  %i.og = getelementptr inbounds i8, ptr %i.oe, i64 %i.of
  %i.oh = sub nsw i32 %.val32, %i.mq
  %i.oi = sext i32 %i.oh to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.oe, ptr nonnull align 1 %i.og, i64 %i.oi, i1 false)
  %i.oj = load i32, ptr %i.mp, align 4, !tbaa !42
  %i.ok = load i32, ptr %i.n, align 8, !tbaa !86
  %i.ol = sub nsw i32 %i.ok, %i.oj
  store i32 %i.ol, ptr %i.n, align 8, !tbaa !86
  br label %demux_video.exit

bb.br:                                            ; preds = %bb.bm, %.critedge.i.i
  tail call void @av_packet_unref(ptr noundef nonnull %1) #6
  br label %demux_video.exit

bb.bs:                                            ; preds = %bb.ai
  %i.om = tail call i32 @av_new_packet(ptr noundef %1, i32 noundef %.val32) #6 ; 2 uses
  %i.on = icmp slt i32 %i.om, 0
  br i1 %i.on, label %demux_video.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.oo = load ptr, ptr %i.k, align 8, !tbaa !84
  %i.op = getelementptr inbounds nuw i8, ptr %i.ga, i64 124
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ga, i64 4 ; 3 uses
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !83
  %i.os = zext i32 %i.or to i64
  %i.ot = getelementptr inbounds nuw i8, ptr %i.op, i64 %i.os
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.oo, ptr nonnull align 1 %i.ot, i64 %i.gb, i1 false)
  %i.ou = load i32, ptr %i.oq, align 4, !tbaa !83
  %i.ov = add i32 %i.ou, %.val32
  store i32 %i.ov, ptr %i.oq, align 4, !tbaa !83
  store i32 1, ptr %i.l, align 4, !tbaa !85
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ga, i64 88
  %i.ox = load i64, ptr %i.ow, align 8, !tbaa !34
  store i64 %i.ox, ptr %i.m, align 8, !tbaa !88
  br label %demux_video.exit

bb.bu:                                            ; preds = %bb.ai
  %i.oy = tail call i32 @av_new_packet(ptr noundef %1, i32 noundef %.val32) #6 ; 2 uses
  %i.oz = icmp slt i32 %i.oy, 0
  br i1 %i.oz, label %demux_video.exit, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.pa = load ptr, ptr %i.k, align 8, !tbaa !84
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ga, i64 124
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ga, i64 4 ; 3 uses
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !83
  %i.pe = zext i32 %i.pd to i64
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.pe
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pa, ptr nonnull align 1 %i.pf, i64 %i.gb, i1 false)
  %i.pg = load i32, ptr %i.pc, align 4, !tbaa !83
  %i.ph = add i32 %i.pg, %.val32
  store i32 %i.ph, ptr %i.pc, align 4, !tbaa !83
  store i32 1, ptr %i.l, align 4, !tbaa !85
  %i.pi = load ptr, ptr %i.k, align 8, !tbaa !84  ; 8 uses
  %i.pj = load i32, ptr %i.pi, align 1
  %i.pk = icmp ne i32 %i.pj, -1124007936
  %i.pl = zext i1 %i.pk to i32
  %.not.i168.i = icmp eq i32 %i.pl, 0             ; 2 uses
  br i1 %.not.i168.i, label %select.unfold20.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pi, i64 1
  %i.pn = load i32, ptr %i.pm, align 1
  %i.po = icmp ne i32 %i.pn, -1124007936
  %i.pp = zext i1 %i.po to i32
  %.not.1.i170.i = icmp eq i32 %i.pp, 0
  br i1 %.not.1.i170.i, label %select.unfold20.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pi, i64 2
  %i.pr = load i32, ptr %i.pq, align 1
  %i.ps = icmp ne i32 %i.pr, -1124007936
  %i.pt = zext i1 %i.ps to i32
  %.not.2.i172.i = icmp eq i32 %i.pt, 0
  br i1 %.not.2.i172.i, label %select.unfold20.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pi, i64 3
  %i.pv = load i32, ptr %i.pu, align 1
  %i.pw = icmp ne i32 %i.pv, -1124007936
  %i.px = zext i1 %i.pw to i32
  %.not.3.i174.i = icmp eq i32 %i.px, 0
  br i1 %.not.3.i174.i, label %select.unfold20.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.py = getelementptr inbounds nuw i8, ptr %i.pi, i64 4
  %i.pz = load i32, ptr %i.py, align 1
  %i.qa = icmp ne i32 %i.pz, -1124007936
  %i.qb = zext i1 %i.qa to i32
  %.not.4.i176.i = icmp eq i32 %i.qb, 0
  br i1 %.not.4.i176.i, label %select.unfold20.i, label %.critedge.i182.i

select.unfold20.i:                                ; preds = %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv
  %.07.i178.ph.i = phi i32 [ 0, %bb.bv ], [ 2, %bb.bx ], [ 1, %bb.bw ], [ 3, %bb.by ], [ 4, %bb.bz ] ; 5 uses
  %.val22.i = load ptr, ptr %i.a, align 8, !tbaa !29 ; 6 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %.val22.i, i64 28 ; 2 uses
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !42 ; 3 uses
  %i.qe = add nsw i32 %i.qd, %.07.i178.ph.i
  %i.qf = icmp sgt i32 %i.qe, %.val32
  br i1 %i.qf, label %bb.ca, label %bb.cb

.critedge.i182.i:                                 ; preds = %bb.bz
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !29 ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %.val.i, i64 36
  store i32 0, ptr %i.qg, align 4
  %i.qh = getelementptr inbounds nuw i8, ptr %.val.i, i64 56
  store i32 4, ptr %i.qh, align 8, !tbaa !89
  br label %bb.ce

bb.ca:                                            ; preds = %select.unfold20.i
  %i.qi = getelementptr inbounds nuw i8, ptr %.val22.i, i64 36
  %i.qj = zext nneg i32 %.07.i178.ph.i to i64
  %i.qk = getelementptr inbounds nuw i8, ptr %i.pi, i64 %i.qj
  %i.ql = sub nsw i32 %.val32, %.07.i178.ph.i     ; 3 uses
  %i.qm = sext i32 %i.ql to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.qi, ptr nonnull align 1 %i.qk, i64 %i.qm, i1 false)
  %i.qn = getelementptr inbounds nuw i8, ptr %.val22.i, i64 56
  store i32 %i.ql, ptr %i.qn, align 8, !tbaa !89
  br i1 %.not.i168.i, label %bb.ce, label %check_sync_pes.exit183.i

bb.cb:                                            ; preds = %select.unfold20.i
  %i.qo = getelementptr inbounds nuw i8, ptr %.val22.i, i64 32
  %i.qp = load i32, ptr %i.qo, align 8, !tbaa !44
  %i.qq = add nsw i32 %i.qp, %.07.i178.ph.i
  %i.qr = sext i32 %i.qq to i64
  %i.qs = getelementptr inbounds i8, ptr %i.pi, i64 %i.qr ; 3 uses
  %i.qt = load i8, ptr %i.qs, align 1, !tbaa !13
  %i.qu = and i8 %i.qt, 14
  %i.qv = zext nneg i8 %i.qu to i64
  %i.qw = shl nuw nsw i64 %i.qv, 29
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qs, i64 1
  %i.qy = load i16, ptr %i.qx, align 1, !tbaa !13
  %i.qz = tail call i16 @llvm.bswap.i16(i16 %i.qy)
  %i.ra = lshr i16 %i.qz, 1
  %i.rb = zext nneg i16 %i.ra to i64
  %i.rc = shl nuw nsw i64 %i.rb, 15
  %i.rd = or disjoint i64 %i.rc, %i.qw
  %i.re = getelementptr inbounds nuw i8, ptr %i.qs, i64 3
  %i.rf = load i16, ptr %i.re, align 1, !tbaa !13
  %i.rg = tail call i16 @llvm.bswap.i16(i16 %i.rf)
  %i.rh = lshr i16 %i.rg, 1
  %i.ri = zext nneg i16 %i.rh to i64
  %i.rj = or disjoint i64 %i.rd, %i.ri            ; 3 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %.val22.i, i64 88
  store i64 %i.rj, ptr %i.rk, align 8, !tbaa !34
  %i.rl = getelementptr inbounds nuw i8, ptr %.val22.i, i64 80 ; 2 uses
  %i.rm = load i64, ptr %i.rl, align 8, !tbaa !33
  %i.rn = icmp eq i64 %i.rm, -9223372036854775808
  br i1 %i.rn, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i64 %i.rj, ptr %i.rl, align 8, !tbaa !33
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  store i64 %i.rj, ptr %i.m, align 8, !tbaa !88
  %i.ro = zext nneg i32 %.07.i178.ph.i to i64
  %i.rp = getelementptr inbounds nuw i8, ptr %i.pi, i64 %i.ro ; 2 uses
  %i.rq = sext i32 %i.qd to i64
  %i.rr = getelementptr inbounds i8, ptr %i.rp, i64 %i.rq
  %i.rs = sub nsw i32 %.val32, %i.qd
  %i.rt = sext i32 %i.rs to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.rp, ptr nonnull align 1 %i.rr, i64 %i.rt, i1 false)
  %i.ru = load i32, ptr %i.qc, align 4, !tbaa !42
  br label %check_sync_pes.exit183.i

bb.ce:                                            ; preds = %bb.ca, %.critedge.i182.i
  tail call void @av_packet_unref(ptr noundef nonnull %1) #6
  br label %demux_video.exit

check_sync_pes.exit183.i:                         ; preds = %bb.cd, %bb.ca
  %.sink36.i = phi i32 [ %i.ru, %bb.cd ], [ %i.ql, %bb.ca ]
  %i.rv = load i32, ptr %i.n, align 8, !tbaa !86
  %i.rw = sub nsw i32 %i.rv, %.sink36.i           ; 4 uses
  store i32 %i.rw, ptr %i.n, align 8, !tbaa !86
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ga, i64 20
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !41
  %i.rz = icmp eq i32 %i.ry, 2
  br i1 %i.rz, label %bb.cf, label %demux_video.exit

bb.cf:                                            ; preds = %check_sync_pes.exit183.i
  %i.sa = icmp sgt i32 %i.rw, 1536
  br i1 %i.sa, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.sb = add nsw i32 %i.rw, -2
  store i32 %i.sb, ptr %i.n, align 8, !tbaa !86
  %i.sc = getelementptr inbounds nuw i8, ptr %i.ga, i64 64
  store i64 0, ptr %i.sc, align 8, !tbaa !90
  br label %demux_video.exit

bb.ch:                                            ; preds = %bb.cf
  %i.sd = sext i32 %i.rw to i64
  %i.se = getelementptr inbounds nuw i8, ptr %i.ga, i64 64
  store i64 %i.sd, ptr %i.se, align 8, !tbaa !90
  br label %demux_video.exit

bb.ci:                                            ; preds = %bb.ai
  %i.sf = getelementptr inbounds nuw i8, ptr %i.ga, i64 4 ; 2 uses
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !83
  %i.sh = add i32 %i.sg, %.val32
  store i32 %i.sh, ptr %i.sf, align 4, !tbaa !83
  br label %demux_video.exit

bb.cj:                                            ; preds = %bb.o
  %i.si = load i32, ptr %i.ca, align 8, !tbaa !39
  %i.sj = load i32, ptr %i.j, align 4, !tbaa !83
  %i.sk = add i32 %i.sj, %i.si
  store i32 %i.sk, ptr %i.j, align 4, !tbaa !83
  br label %demux_video.exit

demux_video.exit:                                 ; preds = %bb.ci, %bb.ch, %bb.cg, %check_sync_pes.exit183.i, %bb.ce, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bn, %bb.bl, %bb.bd, %bb.bc, %bb.bb, %bb.az, %bb.ay, %bb.ax, %bb.al, %bb.ah, %bb.ag, %bb.ab, %bb.z, %find_es_header.exit.thread4.i, %bb.y, %bb.x, %select.unfold.i, %bb.cj
  %.1 = phi i32 [ %.0.ph95, %bb.cj ], [ 1, %bb.ag ], [ 0, %bb.y ], [ 0, %find_es_header.exit.thread4.i ], [ %i.fb, %bb.z ], [ 1, %bb.ah ], [ %i.en, %bb.x ], [ -1094995529, %select.unfold.i ], [ 1, %bb.ab ], [ %i.jr, %bb.ax ], [ %i.oy, %bb.bu ], [ 0, %bb.ci ], [ 0, %bb.bl ], [ 0, %bb.br ], [ %i.ko, %bb.bd ], [ %i.om, %bb.bs ], [ 0, %bb.ce ], [ 0, %bb.al ], [ 1, %bb.bq ], [ 1, %bb.bn ], [ 1, %bb.bt ], [ 1, %bb.cg ], [ 1, %bb.ch ], [ 1, %check_sync_pes.exit183.i ], [ 1, %bb.bb ], [ 1, %bb.bc ], [ 1, %bb.az ], [ 1, %bb.ay ] ; 2 uses
  %i.sl = icmp slt i32 %.1, 1
  br i1 %i.sl, label %.outer.split.preheader, label %get_chunk.exit.thread, !llvm.loop !78

get_chunk.exit.thread:                            ; preds = %demux_video.exit, %bb.n, %bb.m, %bb.k, %bb.f, %parse_chunk_headers.exit.i, %bb.e, %bb.d, %tailrecurse.i, %bb.a
  %.027 = phi i32 [ -541478725, %bb.e ], [ -541478725, %bb.a ], [ -541478725, %bb.k ], [ -541478725, %tailrecurse.i ], [ -541478725, %bb.d ], [ -541478725, %parse_chunk_headers.exit.i ], [ -541478725, %bb.f ], [ 0, %demux_video.exit ], [ -1094995529, %bb.m ], [ -541478725, %bb.n ]
  ret i32 %.027
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @ty_read_close(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  tail call void @av_freep(ptr noundef nonnull %i.c) #6
  ret i32 0
}

declare i32 @avio_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @avformat_new_stream(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @avpriv_set_pts_info(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i64 @avio_seek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @av_free(ptr noundef) local_unnamed_addr #2

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @avio_feof(ptr noundef) local_unnamed_addr #2

declare void @av_freep(ptr noundef) local_unnamed_addr #2

declare i32 @av_new_packet(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare void @av_packet_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !14}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 1, !"override-stack-alignment", i32 16}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"AVProbeData", !11, i64 0, !11, i64 8, !7, i64 16, !11, i64 24}
!13 = !{!6, !6, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"p1 _ZTS7AVClass", !10, i64 0}
!16 = !{!"p1 _ZTS13AVInputFormat", !10, i64 0}
!17 = !{!"p1 _ZTS14AVOutputFormat", !10, i64 0}
!18 = !{!"p1 _ZTS11AVIOContext", !10, i64 0}
!19 = !{!"any p2 pointer", !10, i64 0}
!20 = !{!"p2 _ZTS8AVStream", !19, i64 0}
!21 = !{!"p2 _ZTS13AVStreamGroup", !19, i64 0}
!22 = !{!"p2 _ZTS9AVChapter", !19, i64 0}
!23 = !{!"long", !6, i64 0}
!24 = !{!"p2 _ZTS9AVProgram", !19, i64 0}
!25 = !{!"p1 _ZTS12AVDictionary", !10, i64 0}
!26 = !{!"AVIOInterruptCB", !10, i64 0, !10, i64 8}
!27 = !{!"p1 _ZTS7AVCodec", !10, i64 0}
!28 = !{!"AVFormatContext", !15, i64 0, !16, i64 8, !17, i64 16, !10, i64 24, !18, i64 32, !7, i64 40, !7, i64 44, !20, i64 48, !7, i64 56, !21, i64 64, !7, i64 72, !22, i64 80, !11, i64 88, !23, i64 96, !23, i64 104, !23, i64 112, !7, i64 120, !7, i64 124, !7, i64 128, !23, i64 136, !23, i64 144, !11, i64 152, !7, i64 160, !7, i64 164, !24, i64 168, !7, i64 176, !7, i64 180, !7, i64 184, !7, i64 188, !25, i64 192, !23, i64 200, !7, i64 208, !7, i64 212, !26, i64 216, !7, i64 232, !7, i64 236, !7, i64 240, !7, i64 244, !23, i64 248, !7, i64 256, !7, i64 260, !7, i64 264, !7, i64 268, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !7, i64 296, !7, i64 300, !23, i64 304, !7, i64 312, !7, i64 316, !7, i64 320, !7, i64 324, !7, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !7, i64 368, !27, i64 376, !27, i64 384, !27, i64 392, !27, i64 400, !7, i64 408, !10, i64 416, !10, i64 424, !23, i64 432, !11, i64 440, !10, i64 448, !10, i64 456, !23, i64 464, !11, i64 472}
!29 = !{!28, !10, i64 24}
!30 = !{!28, !18, i64 32}
!31 = !{!"p1 _ZTS8TyRecHdr", !10, i64 0}
!32 = !{!"TYDemuxContext", !7, i64 0, !7, i64 4, !23, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !6, i64 36, !7, i64 56, !23, i64 64, !23, i64 72, !23, i64 80, !23, i64 88, !23, i64 96, !31, i64 104, !7, i64 112, !7, i64 116, !7, i64 120, !6, i64 124}
!33 = !{!32, !23, i64 80}
!34 = !{!32, !23, i64 88}
!35 = !{!32, !23, i64 96}
!36 = !{!"TyRecHdr", !7, i64 0, !6, i64 4, !6, i64 6, !6, i64 7, !23, i64 8}
!37 = !{!36, !6, i64 6}
!38 = !{!36, !6, i64 7}
!39 = !{!36, !7, i64 0}
!40 = !{!36, !23, i64 8}
!41 = !{!32, !7, i64 20}
!42 = !{!32, !7, i64 28}
!43 = !{!32, !7, i64 24}
!44 = !{!32, !7, i64 32}
!45 = !{!"AVRational", !7, i64 0, !7, i64 4}
!46 = !{!"p1 _ZTS11AVBufferRef", !10, i64 0}
!47 = !{!"p1 _ZTS16AVPacketSideData", !10, i64 0}
!48 = !{!"AVPacket", !46, i64 0, !23, i64 8, !23, i64 16, !11, i64 24, !7, i64 32, !7, i64 36, !7, i64 40, !47, i64 48, !7, i64 56, !23, i64 64, !23, i64 72, !10, i64 80, !46, i64 88, !45, i64 96}
!49 = !{!32, !7, i64 120}
!50 = distinct !{!50, !14}
!51 = !{!12, !7, i64 16}
!52 = !{!12, !11, i64 8}
!53 = distinct !{!53, !14}
!54 = distinct !{!54, !14}
!55 = distinct !{!55, !14}
!56 = !{!32, !7, i64 16}
!57 = !{!"p1 _ZTS17AVCodecParameters", !10, i64 0}
!58 = !{!"AVStream", !15, i64 0, !7, i64 8, !7, i64 12, !57, i64 16, !10, i64 24, !45, i64 32, !23, i64 40, !23, i64 48, !23, i64 56, !7, i64 64, !7, i64 68, !45, i64 72, !25, i64 80, !45, i64 88, !48, i64 96, !7, i64 200, !45, i64 204, !7, i64 212}
!59 = !{!58, !57, i64 16}
!60 = !{!"AVChannelLayout", !7, i64 0, !7, i64 4, !6, i64 8, !10, i64 16}
!61 = !{!"AVCodecParameters", !7, i64 0, !7, i64 4, !7, i64 8, !11, i64 16, !7, i64 24, !47, i64 32, !7, i64 40, !7, i64 44, !23, i64 48, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !45, i64 80, !45, i64 88, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !60, i64 128, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176}
!62 = !{!61, !7, i64 0}
!63 = !{!61, !7, i64 4}
!64 = !{!"p1 _ZTS15AVFormatContext", !10, i64 0}
!65 = !{!"p1 _ZTS12AVBSFContext", !10, i64 0}
!66 = !{!"p1 _ZTS14AVCodecContext", !10, i64 0}
!67 = !{!"", !65, i64 0, !7, i64 8}
!68 = !{!"FFFrac", !23, i64 0, !23, i64 8, !23, i64 16}
!69 = !{!"p1 _ZTS12FFStreamInfo", !10, i64 0}
!70 = !{!"p1 _ZTS12AVIndexEntry", !10, i64 0}
!71 = !{!"p1 _ZTS15PacketListEntry", !10, i64 0}
!72 = !{!"p1 _ZTS20AVCodecParserContext", !10, i64 0}
!73 = !{!"p1 _ZTS8AVPacket", !10, i64 0}
!74 = !{!"p1 _ZTS17AVCodecDescriptor", !10, i64 0}
!75 = !{!"FFStream", !58, i64 0, !64, i64 216, !7, i64 224, !65, i64 232, !7, i64 240, !66, i64 248, !7, i64 256, !67, i64 264, !7, i64 280, !7, i64 284, !68, i64 288, !69, i64 312, !70, i64 320, !7, i64 328, !7, i64 332, !23, i64 336, !23, i64 344, !7, i64 352, !7, i64 356, !7, i64 360, !23, i64 368, !23, i64 376, !23, i64 384, !7, i64 392, !23, i64 400, !23, i64 408, !23, i64 416, !7, i64 424, !7, i64 428, !6, i64 432, !6, i64 568, !6, i64 592, !23, i64 728, !6, i64 736, !6, i64 737, !45, i64 740, !12, i64 752, !71, i64 784, !23, i64 792, !7, i64 800, !7, i64 804, !7, i64 808, !72, i64 816, !73, i64 824, !7, i64 832, !7, i64 836, !23, i64 840, !23, i64 848, !74, i64 856}
!76 = !{!75, !7, i64 808}
!77 = distinct !{null}
!78 = distinct !{!78, !14}
!79 = !{!32, !31, i64 104}
!80 = !{!32, !7, i64 112}
!81 = !{!32, !7, i64 116}
!82 = !{!32, !7, i64 0}
!83 = !{!32, !7, i64 4}
!84 = !{!48, !11, i64 24}
!85 = !{!48, !7, i64 36}
!86 = !{!48, !7, i64 32}
!87 = !{!32, !23, i64 72}
!88 = !{!48, !23, i64 8}
!89 = !{!32, !7, i64 56}
!90 = !{!32, !23, i64 64}
end_hunk_0
