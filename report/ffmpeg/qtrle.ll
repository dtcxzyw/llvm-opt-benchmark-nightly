Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/qtrle?download=true
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@qtrle_decode_1bpp:bb.a
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ep, i64 5
  store i8 %i.fe, ptr %i.ff, align 1, !tbaa !39
  %i.fg = lshr i8 %i.eq, 1
  %i.fh = and i8 %i.fg, 1
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ep, i64 6
  store i8 %i.fh, ptr %i.fi, align 1, !tbaa !39
  %i.fj = and i8 %i.eq, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ep, i64 7
  store i8 %i.fj, ptr %i.fk, align 1, !tbaa !39
  %.not135 = icmp eq i32 %i.ed, 0
  br i1 %.not135, label %.backedge.loopexit168, label %.preheader146, !llvm.loop !53

.backedge.loopexit.unr-lcssa:                     ; preds = %bb.p
  %i.fl = trunc nuw i64 %indvars.iv.next181.1 to i32
  br label %.backedge

.backedge.loopexit168:                            ; preds = %bytestream2_get_byte.exit
  %i.fm = trunc nuw i64 %indvars.iv.next to i32
  br label %.backedge

.backedge:                                        ; preds = %.backedge.loopexit168, %.backedge.loopexit.unr-lcssa, %bb.i
  %.0124.be = phi i32 [ %.1125, %bb.i ], [ %i.fl, %.backedge.loopexit.unr-lcssa ], [ %i.fm, %.backedge.loopexit168 ]
  %.not = icmp eq i32 %.1129, 0
  br i1 %.not, label %.loopexit148, label %bb.b, !llvm.loop !54

.loopexit148:                                     ; preds = %bytestream2_get_byte.exit142, %.backedge, %bb.a, %bytestream2_get_byte.exit142.thread, %bb.r, %bb.o, %bb.h
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @qtrle_decode_2n4bpp(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 2, 5) %3) unnamed_addr #4 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load i32, ptr %i.d, align 8, !tbaa !41   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !38   ; 7 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 116
  %i.i = load i32, ptr %i.h, align 4, !tbaa !40
  %i.j = mul nsw i32 %i.i, %i.e                   ; 8 uses
  %i.k = icmp eq i32 %3, 4                        ; 4 uses
  %.not142 = icmp eq i32 %2, 0
  br i1 %.not142, label %.loopexit129, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = select i1 %i.k, i32 8, i32 16            ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 15 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.o = select i1 %i.k, i32 3, i32 4             ; 3 uses
  %i.p = select i1 %i.k, i32 1, i32 2
  %i.q = add nsw i32 %i.l, -1
  %notmask = shl nsw i32 -1, %3
  %i.r = xor i32 %notmask, -1
  %i.s = lshr exact i32 %i.l, 2
  %i.t = add nsw i32 %i.s, -1
  %i.u = zext nneg i32 %i.l to i64                ; 11 uses
  %i.v = zext nneg i32 %i.q to i64
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !37
  %.pre168 = load ptr, ptr %i.m, align 8, !tbaa !36
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.u
  %i.w = phi ptr [ %.pre, %.lr.ph ], [ %i.as, %bb.u ] ; 6 uses
  %i.x = phi ptr [ %.pre168, %.lr.ph ], [ %i.au, %bb.u ] ; 3 uses
  %.in = phi i32 [ %2, %.lr.ph ], [ %i.y, %bb.u ]
  %.0143 = phi i32 [ %1, %.lr.ph ], [ %i.ey, %bb.u ] ; 2 uses
  %i.y = add nsw i32 %.in, -1                     ; 2 uses
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = icmp slt i64 %i.ab, 1
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %i.w, ptr %i.m, align 8, !tbaa !36
  br label %bytestream2_get_byte.exit117

bb.d:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 1 ; 2 uses
  store ptr %i.ad, ptr %i.m, align 8, !tbaa !38
  %i.ae = load i8, ptr %i.x, align 1, !tbaa !39
  %i.af = zext i8 %i.ae to i32
  %i.ag = add nsw i32 %i.af, -1
  br label %bytestream2_get_byte.exit117

bytestream2_get_byte.exit117:                     ; preds = %bb.c, %bb.d
  %i.ah = phi ptr [ %i.w, %bb.c ], [ %i.ad, %bb.d ] ; 2 uses
  %.0.i116 = phi i32 [ -1, %bb.c ], [ %i.ag, %bb.d ]
  %i.ai = shl nsw i32 %.0.i116, %i.o
  %i.aj = add i32 %i.ai, %.0143                   ; 4 uses
  %i.ak = icmp sgt i32 %i.aj, %i.j
  %i.al = icmp slt i32 %i.aj, 0
  %or.cond = or i1 %i.ak, %i.al
  br i1 %or.cond, label %bb.e, label %.preheader128.preheader

.preheader128.preheader:                          ; preds = %bytestream2_get_byte.exit117
  %i.am = ptrtoint ptr %i.w to i64                ; 2 uses
  %i.an = ptrtoint ptr %i.ah to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = icmp slt i64 %i.ao, 1
  br i1 %i.ap, label %.thread, label %bytestream2_get_byte.exit115

bb.e:                                             ; preds = %bytestream2_get_byte.exit117
  %i.aq = load ptr, ptr %0, align 8, !tbaa !33
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.aq, i32 noundef 16, ptr noundef nonnull @.str.6, i32 noundef %i.aj, i32 noundef %i.j) #7
  br label %.loopexit129

bytestream2_get_byte.exit115:                     ; preds = %.preheader128.preheader, %.loopexit
  %i.ar = phi i64 [ %i.eu, %.loopexit ], [ %i.am, %.preheader128.preheader ] ; 2 uses
  %.096221 = phi i32 [ %.4, %.loopexit ], [ %i.aj, %.preheader128.preheader ] ; 5 uses
  %i.as = phi ptr [ %.pre169, %.loopexit ], [ %i.w, %.preheader128.preheader ] ; 2 uses
  %i.at = phi ptr [ %.pre170, %.loopexit ], [ %i.ah, %.preheader128.preheader ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1 ; 5 uses
  store ptr %i.au, ptr %i.m, align 8, !tbaa !38
  %i.av = load i8, ptr %i.at, align 1, !tbaa !39  ; 6 uses
  %i.aw = zext i8 %i.av to i32
  %i.ax = shl nuw nsw i32 %i.aw, 2                ; 2 uses
  %i.ay = sext i8 %i.av to i32
  %.not106 = icmp eq i8 %i.av, -1
  br i1 %.not106, label %bb.u, label %bb.f

bb.f:                                             ; preds = %bytestream2_get_byte.exit115
  %i.az = ptrtoint ptr %i.au to i64
  %i.ba = sub i64 %i.ar, %i.az                    ; 2 uses
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = icmp slt i32 %i.bb, 1
  br i1 %i.bc, label %.loopexit129, label %bb.g

.thread:                                          ; preds = %.preheader128.preheader, %.loopexit
  %.lcssa202 = phi ptr [ %.pre169, %.loopexit ], [ %i.w, %.preheader128.preheader ]
  store ptr %.lcssa202, ptr %i.m, align 8, !tbaa !36
  br label %.loopexit129

bb.g:                                             ; preds = %bb.f
  %i.bd = icmp eq i8 %i.av, 0
  br i1 %i.bd, label %.thread124, label %bb.k

.thread124:                                       ; preds = %bb.g
  %i.be = icmp slt i64 %i.ba, 1
  br i1 %i.be, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread124
  store ptr %i.as, ptr %i.m, align 8, !tbaa !36
  br label %bytestream2_get_byte.exit113

bb.i:                                             ; preds = %.thread124
  %i.bf = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  store ptr %i.bf, ptr %i.m, align 8, !tbaa !38
  %i.bg = load i8, ptr %i.au, align 1, !tbaa !39
  %i.bh = zext i8 %i.bg to i32
  %i.bi = add nsw i32 %i.bh, -1
  br label %bytestream2_get_byte.exit113

bytestream2_get_byte.exit113:                     ; preds = %bb.h, %bb.i
  %.0.i112 = phi i32 [ -1, %bb.h ], [ %i.bi, %bb.i ]
  %i.bj = shl nsw i32 %.0.i112, %i.o
  %i.bk = add i32 %i.bj, %.096221                 ; 4 uses
  %i.bl = icmp sgt i32 %i.bk, %i.j
  %i.bm = icmp slt i32 %i.bk, 0
  %or.cond109 = or i1 %i.bl, %i.bm
  br i1 %or.cond109, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bytestream2_get_byte.exit113
  %i.bn = load ptr, ptr %0, align 8, !tbaa !33
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bn, i32 noundef 16, ptr noundef nonnull @.str.6, i32 noundef %i.bk, i32 noundef %i.j) #7
  br label %.loopexit129

bb.k:                                             ; preds = %bb.g
  %i.bo = icmp slt i8 %i.av, 0
  br i1 %i.bo, label %.preheader199, label %bb.o

.preheader199:                                    ; preds = %bb.k, %bytestream2_peek_byte.exit
  %indvars.iv162.in = phi i64 [ %indvars.iv162, %bytestream2_peek_byte.exit ], [ %i.u, %bb.k ] ; 2 uses
  %i.bp = phi ptr [ %i.ch, %bytestream2_peek_byte.exit ], [ %i.au, %bb.k ] ; 3 uses
  %indvars.iv162 = add nsw i64 %indvars.iv162.in, -1 ; 4 uses
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub i64 %i.ar, %i.bq                    ; 2 uses
  %i.bs = icmp slt i64 %i.br, 1
  br i1 %i.bs, label %bytestream2_peek_byte.exit, label %bb.l

bb.l:                                             ; preds = %.preheader199
  %i.bt = load i8, ptr %i.bp, align 1, !tbaa !39
  %i.bu = zext i8 %i.bt to i32
  br label %bytestream2_peek_byte.exit

bytestream2_peek_byte.exit:                       ; preds = %.preheader199, %bb.l
  %.0.i118 = phi i32 [ %i.bu, %bb.l ], [ 0, %.preheader199 ]
  %i.bv = trunc i64 %indvars.iv162 to i32
  %i.bw = mul i32 %3, %i.bv
  %i.bx = and i32 %i.bw, 7
  %i.by = lshr i32 %.0.i118, %i.bx
  %i.bz = and i32 %i.by, %i.r
  %i.ca = trunc nuw nsw i32 %i.bz to i8
  %i.cb = sub nuw nsw i64 %i.v, %indvars.iv162
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cb
  store i8 %i.ca, ptr %i.cc, align 1, !tbaa !39
  %i.cd = trunc nuw nsw i64 %indvars.iv162 to i32
  %i.ce = and i32 %i.t, %i.cd
  %i.cf = icmp eq i32 %i.ce, 0
  %i.cg = zext i1 %i.cf to i64
  %..i = tail call i64 @llvm.smin.i64(i64 %i.br, i64 %i.cg)
  %i.ch = getelementptr inbounds i8, ptr %i.bp, i64 %..i ; 2 uses
  store ptr %i.ch, ptr %i.m, align 8, !tbaa !36
  %i.ci = icmp sgt i64 %indvars.iv162.in, 1
  br i1 %i.ci, label %.preheader199, label %bb.m, !llvm.loop !55

bb.m:                                             ; preds = %bytestream2_peek_byte.exit
  %i.cj = sub nsw i32 0, %i.ay                    ; 4 uses
  %i.ck = shl nuw nsw i32 %i.cj, %i.o
  %i.cl = add nuw nsw i32 %i.ck, %.096221         ; 2 uses
  %i.cm = icmp sgt i32 %i.cl, %i.j
  br i1 %i.cm, label %bb.n, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.m
  %i.cn = zext i32 %.096221 to i64                ; 2 uses
  %xtraiter = and i32 %i.cj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %indvars.iv165.prol = phi i64 [ %indvars.iv.next166.prol, %.preheader.prol ], [ %i.cn, %.preheader.preheader ] ; 2 uses
  %.098140.prol = phi i32 [ %i.co, %.preheader.prol ], [ %i.cj, %.preheader.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.co = add nsw i32 %.098140.prol, -1           ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv165.prol
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cp, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.u, i1 false)
  %indvars.iv.next166.prol = add nuw nsw i64 %indvars.iv165.prol, %i.u ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !56

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %indvars.iv.next166.lcssa.unr = phi i64 [ poison, %.preheader.preheader ], [ %indvars.iv.next166.prol, %.preheader.prol ]
  %indvars.iv165.unr = phi i64 [ %i.cn, %.preheader.preheader ], [ %indvars.iv.next166.prol, %.preheader.prol ]
  %.098140.unr = phi i32 [ %i.cj, %.preheader.preheader ], [ %i.co, %.preheader.prol ]
  %i.cq = icmp ugt i8 %i.av, -4
  br i1 %i.cq, label %.loopexit.loopexit, label %.preheader

bb.n:                                             ; preds = %bb.m
  %i.cr = load ptr, ptr %0, align 8, !tbaa !33
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cr, i32 noundef 16, ptr noundef nonnull @.str.6, i32 noundef %i.cl, i32 noundef %i.j) #7
  br label %.loopexit129

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %indvars.iv165 = phi i64 [ %indvars.iv.next166.3, %.preheader ], [ %indvars.iv165.unr, %.preheader.prol.loopexit ] ; 2 uses
  %.098140 = phi i32 [ %i.cv, %.preheader ], [ %.098140.unr, %.preheader.prol.loopexit ]
  %i.cs = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cs, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.u, i1 false)
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, %i.u ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv.next166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ct, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.u, i1 false)
  %indvars.iv.next166.1 = add nuw nsw i64 %indvars.iv.next166, %i.u ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv.next166.1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cu, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.u, i1 false)
  %indvars.iv.next166.2 = add nuw nsw i64 %indvars.iv.next166.1, %i.u ; 2 uses
  %i.cv = add nsw i32 %.098140, -4                ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv.next166.2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cw, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.u, i1 false)
  %indvars.iv.next166.3 = add nuw nsw i64 %indvars.iv.next166.2, %i.u ; 2 uses
  %.not108.3 = icmp eq i32 %i.cv, 0
  br i1 %.not108.3, label %.loopexit.loopexit, label %.preheader, !llvm.loop !57

bb.o:                                             ; preds = %bb.k
  %i.cx = shl nuw nsw i32 %i.ax, %i.p
  %i.cy = add nuw nsw i32 %i.cx, %.096221         ; 2 uses
  %i.cz = icmp sgt i32 %i.cy, %i.j
  br i1 %i.cz, label %bb.r, label %.preheader126

.preheader126:                                    ; preds = %bb.o
  %i.da = add nsw i32 %i.ax, -1                   ; 2 uses
  %i.db = sext i32 %.096221 to i64                ; 2 uses
  br i1 %i.k, label %.preheader126.split.us, label %.preheader126.split

.preheader126.split.us:                           ; preds = %.preheader126, %bytestream2_get_byte.exit111.us
  %indvars.iv159 = phi i64 [ %indvars.iv.next160, %bytestream2_get_byte.exit111.us ], [ %i.db, %.preheader126 ] ; 2 uses
  %i.dc = phi i32 [ %i.ds, %bytestream2_get_byte.exit111.us ], [ %i.da, %.preheader126 ] ; 2 uses
  %i.dd = load ptr, ptr %i.n, align 8, !tbaa !37  ; 2 uses
  %i.de = load ptr, ptr %i.m, align 8, !tbaa !36  ; 3 uses
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = icmp slt i64 %i.dh, 1
  br i1 %i.di, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.preheader126.split.us
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 1
  store ptr %i.dj, ptr %i.m, align 8, !tbaa !38
  %i.dk = load i8, ptr %i.de, align 1, !tbaa !39
  %i.dl = zext i8 %i.dk to i32
  br label %bytestream2_get_byte.exit111.us

bb.q:                                             ; preds = %.preheader126.split.us
  store ptr %i.dd, ptr %i.m, align 8, !tbaa !36
  br label %bytestream2_get_byte.exit111.us

bytestream2_get_byte.exit111.us:                  ; preds = %bb.q, %bb.p
  %.0.i110.us = phi i32 [ 0, %bb.q ], [ %i.dl, %bb.p ] ; 2 uses
  %i.dm = lshr i32 %.0.i110.us, 4
  %i.dn = trunc nuw nsw i32 %i.dm to i8
  %i.do = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv159 ; 2 uses
  store i8 %i.dn, ptr %i.do, align 1, !tbaa !39
  %i.dp = trunc nuw i32 %.0.i110.us to i8
  %i.dq = and i8 %i.dp, 15
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 2 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 1
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !39
  %i.ds = add nsw i32 %i.dc, -1
  %.not107.us = icmp eq i32 %i.dc, 0
  br i1 %.not107.us, label %.loopexit.loopexit144, label %.preheader126.split.us, !llvm.loop !58

bb.r:                                             ; preds = %bb.o
  %i.dt = load ptr, ptr %0, align 8, !tbaa !33
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.dt, i32 noundef 16, ptr noundef nonnull @.str.6, i32 noundef %i.cy, i32 noundef %i.j) #7
  br label %.loopexit129

.preheader126.split:                              ; preds = %.preheader126, %bytestream2_get_byte.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %bytestream2_get_byte.exit ], [ %i.db, %.preheader126 ] ; 2 uses
  %i.du = phi i32 [ %i.eq, %bytestream2_get_byte.exit ], [ %i.da, %.preheader126 ] ; 2 uses
  %i.dv = load ptr, ptr %i.n, align 8, !tbaa !37  ; 2 uses
  %i.dw = load ptr, ptr %i.m, align 8, !tbaa !36  ; 3 uses
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = icmp slt i64 %i.dz, 1
  br i1 %i.ea, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.preheader126.split
  store ptr %i.dv, ptr %i.m, align 8, !tbaa !36
  br label %bytestream2_get_byte.exit

bb.t:                                             ; preds = %.preheader126.split
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 1
  store ptr %i.eb, ptr %i.m, align 8, !tbaa !38
  %i.ec = load i8, ptr %i.dw, align 1, !tbaa !39
  %i.ed = zext i8 %i.ec to i32
  br label %bytestream2_get_byte.exit

bytestream2_get_byte.exit:                        ; preds = %bb.s, %bb.t
  %.0.i = phi i32 [ 0, %bb.s ], [ %i.ed, %bb.t ]  ; 2 uses
  %i.ee = lshr i32 %.0.i, 6
  %i.ef = trunc nuw nsw i32 %i.ee to i8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv ; 4 uses
  store i8 %i.ef, ptr %i.eg, align 1, !tbaa !39
  %i.eh = trunc nuw i32 %.0.i to i8               ; 3 uses
  %i.ei = lshr i8 %i.eh, 4
  %i.ej = and i8 %i.ei, 3
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 1
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !39
  %i.el = lshr i8 %i.eh, 2
  %i.em = and i8 %i.el, 3
  %i.en = getelementptr inbounds nuw i8, ptr %i.eg, i64 2
  store i8 %i.em, ptr %i.en, align 1, !tbaa !39
  %i.eo = and i8 %i.eh, 3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eg, i64 3
  store i8 %i.eo, ptr %i.ep, align 1, !tbaa !39
  %i.eq = add nsw i32 %i.du, -1
  %.not107 = icmp eq i32 %i.du, 0
  br i1 %.not107, label %.loopexit.loopexit145, label %.preheader126.split, !llvm.loop !58

.loopexit.loopexit:                               ; preds = %.preheader, %.preheader.prol.loopexit
  %indvars.iv.next166.lcssa = phi i64 [ %indvars.iv.next166.lcssa.unr, %.preheader.prol.loopexit ], [ %indvars.iv.next166.3, %.preheader ]
  %i.er = trunc nuw i64 %indvars.iv.next166.lcssa to i32
  br label %.loopexit

.loopexit.loopexit144:                            ; preds = %bytestream2_get_byte.exit111.us
  %i.es = trunc nsw i64 %indvars.iv.next160 to i32
  br label %.loopexit

.loopexit.loopexit145:                            ; preds = %bytestream2_get_byte.exit
  %i.et = trunc nsw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit145, %.loopexit.loopexit144, %.loopexit.loopexit, %bytestream2_get_byte.exit113
  %.4 = phi i32 [ %i.bk, %bytestream2_get_byte.exit113 ], [ %i.es, %.loopexit.loopexit144 ], [ %i.er, %.loopexit.loopexit ], [ %i.et, %.loopexit.loopexit145 ]
  %.pre169 = load ptr, ptr %i.n, align 8, !tbaa !37 ; 3 uses
  %.pre170 = load ptr, ptr %i.m, align 8, !tbaa !36 ; 2 uses
  %i.eu = ptrtoint ptr %.pre169 to i64            ; 2 uses
  %i.ev = ptrtoint ptr %.pre170 to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = icmp slt i64 %i.ew, 1
  br i1 %i.ex, label %.thread, label %bytestream2_get_byte.exit115, !llvm.loop !59

bb.u:                                             ; preds = %bytestream2_get_byte.exit115
  %i.ey = add nsw i32 %.0143, %i.e
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %.loopexit129, label %bb.b, !llvm.loop !60

.loopexit129:                                     ; preds = %bb.u, %bb.f, %.thread, %bb.a, %bb.r, %bb.n, %bb.j, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @qtrle_decode_8bpp(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
