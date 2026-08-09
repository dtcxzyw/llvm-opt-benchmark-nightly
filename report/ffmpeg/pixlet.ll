inline.NumInlined: 45
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 14
begin_hunk_0_@pixlet_init:bb.a
}

; Function Attrs: nounwind uwtable
define internal range(i32 159, 0) i32 @pixlet_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 11 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 17 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31   ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !33   ; 4 uses
  %i.h = icmp ne ptr %i.e, null
  %i.i = icmp sgt i32 %i.g, -1
  %or.cond.i = and i1 %i.h, %i.i
  br i1 %or.cond.i, label %bytestream2_init.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 141) #12
  tail call void @abort() #13
  unreachable

bytestream2_init.exit:                            ; preds = %bb.a
  store ptr %i.e, ptr %i.c, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.e, ptr %i.j, align 8, !tbaa !36
  %i.k = zext nneg i32 %i.g to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !37
  %i.n = icmp samesign ult i32 %i.g, 4
  br i1 %i.n, label %bytestream2_get_be32.exit110.thread, label %bytestream2_get_be32.exit110

bytestream2_get_be32.exit110.thread:              ; preds = %bytestream2_init.exit
  store ptr %i.l, ptr %i.c, align 8, !tbaa !34
  br label %bb.d

bytestream2_get_be32.exit110:                     ; preds = %bytestream2_init.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  store ptr %i.o, ptr %i.c, align 8, !tbaa !38
  %i.p = load i32, ptr %i.e, align 1, !tbaa !39
  %i.q = tail call i32 @llvm.bswap.i32(i32 %i.p)  ; 5 uses
  %i.r = icmp ult i32 %i.q, 159
  br i1 %i.r, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bytestream2_get_be32.exit110
  %i.s = add i32 %i.q, -4
  %gepdiff = add nsw i32 %i.g, -4
  %i.t = icmp ugt i32 %i.s, %gepdiff
  br i1 %i.t, label %bb.d, label %bytestream2_get_le32.exit

bb.d:                                             ; preds = %bytestream2_get_be32.exit110.thread, %bb.c, %bytestream2_get_be32.exit110
  %.0.i109129 = phi i32 [ 0, %bytestream2_get_be32.exit110.thread ], [ %i.q, %bb.c ], [ %i.q, %bytestream2_get_be32.exit110 ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.2, i32 noundef %.0.i109129) #12
  br label %decode_plane.exit.thread

bytestream2_get_le32.exit:                        ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.u, ptr %i.c, align 8, !tbaa !38
  %i.v = load i32, ptr %i.o, align 1, !tbaa !39   ; 2 uses
  %.not = icmp eq i32 %i.v, 1
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bytestream2_get_le32.exit
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.3, i32 noundef %i.v) #12
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !37
  %.pre282 = load ptr, ptr %i.c, align 8, !tbaa !34
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bytestream2_get_le32.exit
  %i.w = phi ptr [ %.pre282, %bb.e ], [ %i.u, %bytestream2_get_le32.exit ] ; 2 uses
  %i.x = phi ptr [ %.pre, %bb.e ], [ %i.l, %bytestream2_get_le32.exit ] ; 7 uses
  %.pre-phi = ptrtoint ptr %i.x to i64            ; 8 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %.pre-phi, %i.y
  %..i113 = tail call i64 @llvm.smin.i64(i64 %i.z, i64 4)
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 %..i113 ; 4 uses
  store ptr %i.aa, ptr %i.c, align 8, !tbaa !34
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %.pre-phi, %i.ab
  %i.ad = icmp slt i64 %i.ac, 4
  br i1 %i.ad, label %bytestream2_get_be32.exit108.thread, label %bytestream2_get_be32.exit108

bytestream2_get_be32.exit108.thread:              ; preds = %bb.f
  store ptr %i.x, ptr %i.c, align 8, !tbaa !34
  br label %decode_plane.exit.thread

bytestream2_get_be32.exit108:                     ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 3 uses
  store ptr %i.ae, ptr %i.c, align 8, !tbaa !38
  %i.af = load i32, ptr %i.aa, align 1, !tbaa !39
  %.not96 = icmp eq i32 %i.af, 16777216
  br i1 %.not96, label %bb.g, label %decode_plane.exit.thread

bb.g:                                             ; preds = %bytestream2_get_be32.exit108
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %.pre-phi, %i.ag
  %..i112 = tail call i64 @llvm.smin.i64(i64 %i.ah, i64 4)
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 %..i112 ; 3 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %.pre-phi, %i.aj
  %i.al = icmp slt i64 %i.ak, 4
  br i1 %i.al, label %bytestream2_get_be32.exit106, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 4 ; 3 uses
  store ptr %i.am, ptr %i.c, align 8, !tbaa !38
  %i.an = load i32, ptr %i.ai, align 1, !tbaa !39
  %i.ao = tail call i32 @llvm.bswap.i32(i32 %i.an)
  %.pre284 = ptrtoint ptr %i.am to i64
  br label %bytestream2_get_be32.exit106

bytestream2_get_be32.exit106:                     ; preds = %bb.g, %bb.h
  %.pre-phi285 = phi i64 [ %.pre284, %bb.h ], [ %.pre-phi, %bb.g ]
  %i.ap = phi ptr [ %i.am, %bb.h ], [ %i.x, %bb.g ] ; 2 uses
  %.0.i105 = phi i32 [ %i.ao, %bb.h ], [ 0, %bb.g ] ; 3 uses
  %i.aq = sub i64 %.pre-phi, %.pre-phi285
  %i.ar = icmp slt i64 %i.aq, 4
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bytestream2_get_be32.exit106
  store ptr %i.x, ptr %i.c, align 8, !tbaa !34
  br label %bytestream2_get_be32.exit104

bb.j:                                             ; preds = %bytestream2_get_be32.exit106
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 4 ; 2 uses
  store ptr %i.as, ptr %i.c, align 8, !tbaa !38
  %i.at = load i32, ptr %i.ap, align 1, !tbaa !39
  %i.au = tail call i32 @llvm.bswap.i32(i32 %i.at)
  br label %bytestream2_get_be32.exit104

bytestream2_get_be32.exit104:                     ; preds = %bb.i, %bb.j
  %i.av = phi ptr [ %i.x, %bb.i ], [ %i.as, %bb.j ] ; 4 uses
  %.0.i103 = phi i32 [ 0, %bb.i ], [ %i.au, %bb.j ] ; 3 uses
  %i.aw = icmp ugt i32 %.0.i105, 2147483615
  %i.ax = icmp ugt i32 %.0.i103, 2147483615
  %or.cond = select i1 %i.aw, i1 true, i1 %i.ax
  br i1 %or.cond, label %decode_plane.exit.thread, label %bb.k

bb.k:                                             ; preds = %bytestream2_get_be32.exit104
  %i.ay = add nuw nsw i32 %.0.i105, 31
  %i.az = and i32 %i.ay, 2147483616               ; 3 uses
  %i.ba = add nuw nsw i32 %.0.i103, 31
  %i.bb = and i32 %i.ba, 2147483616               ; 3 uses
  %i.bc = ptrtoint ptr %i.av to i64
  %i.bd = sub i64 %.pre-phi, %i.bc
  %i.be = icmp slt i64 %i.bd, 4
  br i1 %i.be, label %bytestream2_get_be32.exit102.thread, label %bytestream2_get_be32.exit102

bytestream2_get_be32.exit102.thread:              ; preds = %bb.k
  store ptr %i.x, ptr %i.c, align 8, !tbaa !34
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 0, ptr %i.bf, align 8, !tbaa !40
  br label %decode_plane.exit.thread

bytestream2_get_be32.exit102:                     ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 4 ; 3 uses
  store ptr %i.bg, ptr %i.c, align 8, !tbaa !38
  %i.bh = load i32, ptr %i.av, align 1, !tbaa !39 ; 2 uses
  %i.bi = tail call i32 @llvm.bswap.i32(i32 %i.bh)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 %i.bi, ptr %i.bj, align 8, !tbaa !40
  %.not97 = icmp eq i32 %i.bh, 67108864
  br i1 %.not97, label %bb.l, label %decode_plane.exit.thread

bb.l:                                             ; preds = %bytestream2_get_be32.exit102
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %.pre-phi, %i.bk
  %i.bm = icmp slt i64 %i.bl, 4
  br i1 %i.bm, label %bytestream2_get_be32.exit.thread, label %bytestream2_get_be32.exit

bytestream2_get_be32.exit.thread:                 ; preds = %bb.l
  store ptr %i.x, ptr %i.c, align 8, !tbaa !34
  br label %bb.m

bytestream2_get_be32.exit:                        ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.bn, ptr %i.c, align 8, !tbaa !38
  %i.bo = load i32, ptr %i.bg, align 1, !tbaa !39
  %i.bp = tail call i32 @llvm.bswap.i32(i32 %i.bo) ; 5 uses
  %i.bq = and i32 %i.bp, -8
  %or.cond3.not = icmp eq i32 %i.bq, 8
  br i1 %or.cond3.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bytestream2_get_be32.exit.thread, %bytestream2_get_be32.exit
  %.0.i139 = phi i32 [ 0, %bytestream2_get_be32.exit.thread ], [ %i.bp, %bytestream2_get_be32.exit ]
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.4, i32 noundef %.0.i139) #12
  br label %decode_plane.exit.thread

bb.n:                                             ; preds = %bytestream2_get_be32.exit
  %.val115 = load ptr, ptr %i.a, align 8, !tbaa !30 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.val115, i64 60 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !43
  %i.bt = icmp eq i32 %i.bs, %i.bp
  br i1 %i.bt, label %build_luma_lut.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %notmask.i = shl nsw i32 -1, %i.bp
  %i.bu = xor i32 %notmask.i, -1
  store i32 %i.bp, ptr %i.br, align 4, !tbaa !43
  %i.bv = zext nneg i32 %i.bu to i64              ; 2 uses
  %4 = mul nuw nsw i64 %i.bv, %i.bv               ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.val115, i64 352 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %indvars.iv.i = phi i64 [ 0, %bb.o ], [ %indvars.iv.next.i.1, %bb.p ] ; 5 uses
  %i.bx = mul nuw nsw i64 %indvars.iv.i, 65535
  %i.by = mul i64 %i.bx, %indvars.iv.i
  %i.bz = udiv i64 %i.by, %4
  %i.ca = trunc i64 %i.bz to i16
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %indvars.iv.i
  store i16 %i.ca, ptr %i.cb, align 2, !tbaa !44
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 3 uses
  %i.cc = mul nuw nsw i64 %indvars.iv.next.i, 65535
  %i.cd = mul i64 %i.cc, %indvars.iv.next.i
  %i.ce = udiv i64 %i.cd, %4
  %i.cf = trunc i64 %i.ce to i16
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %indvars.iv.next.i
  store i16 %i.cf, ptr %i.cg, align 2, !tbaa !44
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 65536
  br i1 %exitcond.not.i.1, label %build_luma_lut.exit, label %bb.p, !llvm.loop !46

build_luma_lut.exit:                              ; preds = %bb.p, %bb.n
  %i.ch = tail call i32 @ff_set_dimensions(ptr noundef nonnull %0, i32 noundef %i.az, i32 noundef %i.bb) #12 ; 2 uses
  %i.ci = icmp slt i32 %i.ch, 0
  br i1 %i.ci, label %decode_plane.exit.thread, label %bb.q

bb.q:                                             ; preds = %build_luma_lut.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %.0.i105, ptr %i.cj, align 8, !tbaa !48
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 %.0.i103, ptr %i.ck, align 4, !tbaa !49
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 4 uses
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !50
  %.not98 = icmp eq i32 %i.cm, %i.az
  br i1 %.not98, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !51
  %.not99 = icmp eq i32 %i.co, %i.bb
  br i1 %.not99, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.val114 = load ptr, ptr %i.a, align 8, !tbaa !30
  tail call fastcc void @free_buffers(ptr %.val114)
  store i32 %i.az, ptr %i.cl, align 8, !tbaa !50
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 68 ; 2 uses
  store i32 %i.bb, ptr %i.cp, align 4, !tbaa !51
  %.val116 = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.cq = tail call fastcc i32 @init_decoder(ptr %.val116) ; 2 uses
  %i.cr = icmp slt i32 %i.cq, 0
  br i1 %i.cr, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.val = load ptr, ptr %i.a, align 8, !tbaa !30
  tail call fastcc void @free_buffers(ptr %.val)
  store i32 0, ptr %i.cl, align 8, !tbaa !50
  store i32 0, ptr %i.cp, align 4, !tbaa !51
  br label %decode_plane.exit.thread

bb.u:                                             ; preds = %bb.s, %bb.r
  %i.cs = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.ct = load ptr, ptr %i.c, align 8, !tbaa !34  ; 2 uses
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %..i = tail call i64 @llvm.smin.i64(i64 %i.cw, i64 8)
  %i.cx = getelementptr inbounds i8, ptr %i.ct, i64 %..i
  store ptr %i.cx, ptr %i.c, align 8, !tbaa !34
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i32 2, ptr %i.cy, align 8, !tbaa !52
  %i.cz = tail call i32 @ff_thread_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #12 ; 2 uses
  %i.da = icmp slt i32 %i.cz, 0
  br i1 %i.da, label %decode_plane.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.u
  %i.db = getelementptr i8, ptr %1, i64 64        ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.v

bb.v:                                             ; preds = %decode_plane.exit, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %decode_plane.exit ], [ 0, %.preheader ] ; 14 uses
  %i.dd = load ptr, ptr %i.a, align 8, !tbaa !30  ; 19 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !57
  %i.dg = sdiv i32 %i.df, 2
  %i.dh = sext i32 %i.dg to i64                   ; 25 uses
  %i.di = icmp ne i64 %indvars.iv, 0
  %i.dj = zext i1 %i.di to i32                    ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 56
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !40 ; 2 uses
  %i.dm = icmp sgt i32 %i.dl, 0
  br i1 %i.dm, label %.lr.ph.i, label %.._crit_edge_crit_edge.i

.._crit_edge_crit_edge.i:                         ; preds = %bb.v
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %.pre169.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !37 ; 2 uses
  %.phi.trans.insert170.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.pre171.i = load ptr, ptr %.phi.trans.insert170.i, align 8, !tbaa !34
  %.pre173.i = ptrtoint ptr %.pre169.i to i64
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.v
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dd, i64 96
  %i.dq = getelementptr inbounds nuw [64 x i8], ptr %i.dp, i64 %indvars.iv ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  %.promoted.i = load ptr, ptr %i.dn, align 8, !tbaa !38
  %i.ds = zext nneg i32 %i.dl to i64
  %.pre.i = load ptr, ptr %i.do, align 8, !tbaa !37 ; 5 uses
  %i.dt = ptrtoint ptr %.pre.i to i64             ; 4 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.z, %.lr.ph.i
  %indvars.iv.i120 = phi i64 [ %i.ds, %.lr.ph.i ], [ %indvars.iv.next.i121, %bb.z ] ; 2 uses
  %i.du = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.ee, %bb.z ] ; 3 uses
  %indvars.iv.next.i121 = add nsw i64 %indvars.iv.i120, -1 ; 3 uses
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = sub i64 %i.dt, %i.dv
  %i.dx = icmp slt i64 %i.dw, 4
  br i1 %i.dx, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store ptr %.pre.i, ptr %i.dn, align 8, !tbaa !34
  br label %bytestream2_get_be32.exit106.i

bb.y:                                             ; preds = %bb.w
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 4 ; 3 uses
  store ptr %i.dy, ptr %i.dn, align 8, !tbaa !38
  %i.dz = load i32, ptr %i.du, align 1, !tbaa !39
  %i.ea = tail call i32 @llvm.bswap.i32(i32 %i.dz)
  %.pre172.i = ptrtoint ptr %i.dy to i64
  br label %bytestream2_get_be32.exit106.i

bytestream2_get_be32.exit106.i:                   ; preds = %bb.y, %bb.x
  %.pre-phi.i = phi i64 [ %i.dt, %bb.x ], [ %.pre172.i, %bb.y ]
  %i.eb = phi ptr [ %.pre.i, %bb.x ], [ %i.dy, %bb.y ] ; 2 uses
  %.0.i105.i = phi i32 [ 0, %bb.x ], [ %i.ea, %bb.y ] ; 2 uses
  %i.ec = sub i64 %i.dt, %.pre-phi.i
  %i.ed = icmp slt i64 %i.ec, 4
  br i1 %i.ed, label %bytestream2_get_be32.exit.thread.i, label %bytestream2_get_be32.exit.i

bytestream2_get_be32.exit.thread.i:               ; preds = %bytestream2_get_be32.exit106.i
  store ptr %.pre.i, ptr %i.dn, align 8, !tbaa !34
  br label %decode_plane.exit.thread

bytestream2_get_be32.exit.i:                      ; preds = %bytestream2_get_be32.exit106.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 4 ; 3 uses
  store ptr %i.ee, ptr %i.dn, align 8, !tbaa !38
  %i.ef = load i32, ptr %i.eb, align 1, !tbaa !39 ; 2 uses
  %i.eg = icmp ne i32 %.0.i105.i, 0
  %i.eh = icmp ne i32 %i.ef, 0
  %or.cond.i122 = select i1 %i.eg, i1 %i.eh, i1 false
  br i1 %or.cond.i122, label %bb.z, label %decode_plane.exit.thread

bb.z:                                             ; preds = %bytestream2_get_be32.exit.i
  %i.ei = tail call i32 @llvm.bswap.i32(i32 %i.ef)
  %i.ej = sext i32 %.0.i105.i to i64
  %i.ek = udiv i64 4294967296000000, %i.ej
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv.next.i121
  store i64 %i.ek, ptr %i.el, align 8, !tbaa !58
  %i.em = sext i32 %i.ei to i64
  %i.en = udiv i64 4294967296000000, %i.em
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv.next.i121
  store i64 %i.en, ptr %i.eo, align 8, !tbaa !58
  %i.ep = icmp samesign ugt i64 %indvars.iv.i120, 1
  br i1 %i.ep, label %bb.w, label %._crit_edge.i, !llvm.loop !59

._crit_edge.i:                                    ; preds = %bb.z, %.._crit_edge_crit_edge.i
  %.pre-phi174.i = phi i64 [ %.pre173.i, %.._crit_edge_crit_edge.i ], [ %i.dt, %bb.z ] ; 4 uses
  %i.eq = phi ptr [ %.pre171.i, %.._crit_edge_crit_edge.i ], [ %i.ee, %bb.z ] ; 2 uses
  %i.er = phi ptr [ %.pre169.i, %.._crit_edge_crit_edge.i ], [ %.pre.i, %bb.z ]
  %i.es = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 5 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.eu = ptrtoint ptr %i.eq to i64
  %i.ev = sub i64 %.pre-phi174.i, %i.eu
  %..i107.i = tail call i64 @llvm.smin.i64(i64 %i.ev, i64 4)
  %i.ew = getelementptr inbounds i8, ptr %i.eq, i64 %..i107.i ; 4 uses
  store ptr %i.ew, ptr %i.es, align 8, !tbaa !34
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !38 ; 7 uses
  %i.ez = ptrtoint ptr %i.ew to i64
  %i.fa = sub i64 %.pre-phi174.i, %i.ez
  %i.fb = icmp slt i64 %i.fa, 2
  br i1 %i.fb, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %._crit_edge.i
  store ptr %i.er, ptr %i.es, align 8, !tbaa !34
  br label %bytestream2_get_be16.exit.i

bb.ab:                                            ; preds = %._crit_edge.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ew, i64 2 ; 2 uses
  store ptr %i.fc, ptr %i.es, align 8, !tbaa !38
  %i.fd = load i16, ptr %i.ew, align 1, !tbaa !39
  %i.fe = tail call i16 @llvm.bswap.i16(i16 %i.fd)
  %.pre175.i = ptrtoint ptr %i.fc to i64
  br label %bytestream2_get_be16.exit.i

bytestream2_get_be16.exit.i:                      ; preds = %bb.ab, %bb.aa
  %.pre-phi176.i = phi i64 [ %.pre-phi174.i, %bb.aa ], [ %.pre175.i, %bb.ab ] ; 2 uses
  %.0.i108.i = phi i16 [ 0, %bb.aa ], [ %i.fe, %bb.ab ]
  store i16 %.0.i108.i, ptr %i.ey, align 2, !tbaa !44
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.fg = load ptr, ptr %i.d, align 8, !tbaa !31  ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !36
  %i.fj = ptrtoint ptr %i.fi to i64
  %i.fk = sub i64 %.pre-phi176.i, %i.fj
  %sext.i = shl i64 %i.fk, 32
  %i.fl = ashr exact i64 %sext.i, 32
  %i.fm = getelementptr inbounds i8, ptr %i.fg, i64 %i.fl
  %i.fn = sub i64 %.pre-phi174.i, %.pre-phi176.i
  %i.fo = trunc i64 %i.fn to i32                  ; 2 uses
end_hunk_0
