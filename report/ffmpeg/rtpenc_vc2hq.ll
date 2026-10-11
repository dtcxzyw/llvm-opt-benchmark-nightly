Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/rtpenc_vc2hq?download=true
inline.NumInlined: 16
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"VC-2 parse code %d\00", align 1
@ff_interleaved_golomb_vlc_len = external local_unnamed_addr constant [256 x i8], align 16
@ff_interleaved_ue_golomb_vlc_code = external local_unnamed_addr constant [256 x i8], align 16
@ff_interleaved_dirac_golomb_vlc_code = external local_unnamed_addr constant [256 x i8], align 16

; Function Attrs: nounwind uwtable
define void @ff_rtp_send_vc2hq(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = getelementptr inbounds i8, ptr %1, i64 %i.a ; 2 uses
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %.not.i = icmp eq i32 %3, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %send_picture.exit
  %.050 = phi ptr [ %1, %.lr.ph ], [ %i.rg, %send_picture.exit ] ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.050, i64 4
  %i.g = load i8, ptr %i.f, align 1, !tbaa !13    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.050, i64 5
  %i.i = load i32, ptr %i.h, align 1, !tbaa !13
  %i.j = tail call i32 @llvm.bswap.i32(i32 %i.i)  ; 7 uses
  %i.k = zext i32 %i.j to i64                     ; 2 uses
  %i.l = ptrtoint ptr %.050 to i64
  %i.m = sub i64 %i.d, %i.l
  %i.n = icmp slt i64 %i.m, %i.k
  br i1 %i.n, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = add i8 %i.g, 24                          ; 2 uses
  %i.p = tail call i8 @llvm.fshl.i8(i8 %i.o, i8 %i.o, i8 5)
  switch i8 %i.p, label %bb.aj [
    i8 3, label %bb.d
    i8 5, label %bb.d
    i8 0, label %bb.g
    i8 7, label %send_picture.exit
    i8 9, label %send_picture.exit
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.q = icmp ugt i32 %i.j, 12
  br i1 %i.q, label %bb.e, label %send_picture.exit

bb.e:                                             ; preds = %bb.d
  %i.r = add i32 %i.j, -13                        ; 2 uses
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 96 ; 5 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !34
  store i16 0, ptr %i.u, align 1, !tbaa !13
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !34
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  store i8 0, ptr %i.w, align 1, !tbaa !13
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !34
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  store i8 %i.g, ptr %i.y, align 1, !tbaa !13
  %i.z = icmp sgt i32 %i.r, 0
  br i1 %i.z, label %bb.f, label %send_packet.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %.050, i64 13
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !34
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ad = zext nneg i32 %i.r to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull readonly align 1 %i.aa, i64 %i.ad, i1 false)
  br label %send_packet.exit

send_packet.exit:                                 ; preds = %bb.e, %bb.f
  %i.ae = load ptr, ptr %i.t, align 8, !tbaa !34
  %i.af = add i32 %i.j, -9
  tail call void @ff_rtp_send_data(ptr noundef nonnull %0, ptr noundef %i.ae, i32 noundef %i.af, i32 noundef 0) #4
  br label %send_picture.exit

bb.g:                                             ; preds = %bb.c
  %i.ag = icmp ugt i32 %i.j, 12
  br i1 %i.ag, label %bb.h, label %send_picture.exit

bb.h:                                             ; preds = %bb.g
  %i.ah = add i32 %i.j, -13                       ; 2 uses
  %i.ai = load ptr, ptr %i.e, align 8, !tbaa !30  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 96
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !34 ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = icmp slt i32 %i.ah, 4
  br i1 %i.am, label %send_picture.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %.050, i64 13
  %i.ao = load i32, ptr %i.an, align 1, !tbaa !13 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.050, i64 17 ; 22 uses
  %i.aq = add i32 %i.j, -17                       ; 2 uses
  %i.ar = shl nuw nsw i32 %i.aq, 3
  %i.as = icmp samesign ult i32 %i.ah, 268435396
  %i.at = add nuw nsw i32 %i.ar, 8
  %i.au = select i1 %i.as, i32 %i.at, i32 8       ; 30 uses
  %i.av = load i32, ptr %i.ap, align 1, !tbaa !13
  %i.aw = tail call i32 @llvm.bswap.i32(i32 %i.av) ; 3 uses
  %i.ax = and i32 %i.aw, -1434451968
  %.not.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = lshr i32 %i.aw, 24
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @ff_interleaved_golomb_vlc_len, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !13
  %i.bc = zext i8 %i.bb to i32
  %..i.i = tail call i32 @llvm.umin.i32(i32 %i.au, i32 %i.bc)
  br label %get_interleaved_ue_golomb.exit.i

.preheader.i.i:                                   ; preds = %bb.i, %bb.k
  %.044.i.i = phi i32 [ %i.bt, %bb.k ], [ %i.aw, %bb.i ]
  %.043.i.i = phi i32 [ %spec.select56.i.i, %bb.k ], [ 0, %bb.i ]
  %.0.i56.i = phi i32 [ %i.bm, %bb.k ], [ 1, %bb.i ]
  %i.bd = lshr i32 %.044.i.i, 24
  %i.be = zext nneg i32 %i.bd to i64              ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr @ff_interleaved_golomb_vlc_len, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !13  ; 2 uses
  %spec.select57.i.i = tail call i8 @llvm.umin.i8(i8 %i.bg, i8 8)
  %spec.select.i.i = zext nneg i8 %spec.select57.i.i to i32
  %i.bh = add i32 %.043.i.i, %spec.select.i.i     ; 2 uses
  %spec.select56.i.i = tail call i32 @llvm.umin.i32(i32 %i.au, i32 %i.bh) ; 5 uses
  %.not54.i.i = icmp eq i8 %i.bg, 9
  br i1 %.not54.i.i, label %bb.k, label %get_interleaved_ue_golomb.exit.i

bb.k:                                             ; preds = %.preheader.i.i
  %i.bi = shl i32 %.0.i56.i, 4                    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr @ff_interleaved_dirac_golomb_vlc_code, i64 %i.be
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !13
  %i.bl = zext i8 %i.bk to i32
  %i.bm = or i32 %i.bi, %i.bl
  %i.bn = lshr i32 %spec.select56.i.i, 3
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 1, !tbaa !13
  %i.br = tail call i32 @llvm.bswap.i32(i32 %i.bq)
  %i.bs = and i32 %spec.select56.i.i, 7
  %i.bt = shl i32 %i.br, %i.bs
  %i.bu = icmp ult i32 %i.bi, 134217728
  %i.bv = icmp ult i32 %i.bh, %i.au
  %i.bw = select i1 %i.bu, i1 %i.bv, i1 false
  br i1 %i.bw, label %.preheader.i.i, label %get_interleaved_ue_golomb.exit.i, !llvm.loop !9

get_interleaved_ue_golomb.exit.i:                 ; preds = %bb.k, %.preheader.i.i, %bb.j
  %.sroa.13.1.i = phi i32 [ %..i.i, %bb.j ], [ %spec.select56.i.i, %.preheader.i.i ], [ %spec.select56.i.i, %bb.k ] ; 4 uses
  %i.bx = lshr i32 %.sroa.13.1.i, 3
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 1, !tbaa !13
  %i.cb = tail call i32 @llvm.bswap.i32(i32 %i.ca)
  %i.cc = and i32 %.sroa.13.1.i, 7
  %i.cd = shl i32 %i.cb, %i.cc                    ; 3 uses
  %i.ce = and i32 %i.cd, -1434451968
  %.not.i57.i = icmp eq i32 %i.ce, 0
  br i1 %.not.i57.i, label %.preheader.i60.i, label %bb.l

bb.l:                                             ; preds = %get_interleaved_ue_golomb.exit.i
  %i.cf = lshr i32 %i.cd, 24
  %i.cg = zext nneg i32 %i.cf to i64              ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr @ff_interleaved_golomb_vlc_len, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !13
  %i.cj = zext i8 %i.ci to i32
  %i.ck = add nuw i32 %.sroa.13.1.i, %i.cj
  %..i58.i = tail call i32 @llvm.umin.i32(i32 %i.au, i32 %i.ck)
  %i.cl = getelementptr inbounds nuw i8, ptr @ff_interleaved_ue_golomb_vlc_code, i64 %i.cg
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !13
  %i.cn = zext i8 %i.cm to i32
  br label %get_interleaved_ue_golomb.exit70.i

.preheader.i60.i:                                 ; preds = %get_interleaved_ue_golomb.exit.i, %bb.n
  %.044.i61.i = phi i32 [ %i.dm, %bb.n ], [ %i.cd, %get_interleaved_ue_golomb.exit.i ]
  %.043.i62.i = phi i32 [ %spec.select56.i66.i, %bb.n ], [ %.sroa.13.1.i, %get_interleaved_ue_golomb.exit.i ]
  %.0.i63.i = phi i32 [ %i.df, %bb.n ], [ 1, %get_interleaved_ue_golomb.exit.i ] ; 2 uses
  %i.co = lshr i32 %.044.i61.i, 24
  %i.cp = zext nneg i32 %i.co to i64              ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr @ff_interleaved_golomb_vlc_len, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !13  ; 3 uses
  %spec.select57.i64.i = tail call i8 @llvm.umin.i8(i8 %i.cr, i8 8)
  %spec.select.i65.i = zext nneg i8 %spec.select57.i64.i to i32
  %i.cs = add nuw i32 %.043.i62.i, %spec.select.i65.i ; 2 uses
  %spec.select56.i66.i = tail call i32 @llvm.umin.i32(i32 %i.au, i32 %i.cs) ; 4 uses
  %.not54.i67.i = icmp eq i8 %i.cr, 9
  br i1 %.not54.i67.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.preheader.i60.i
  %i.ct = zext i8 %i.cr to i32
  %i.cu = add nsw i32 %i.ct, -1
  %i.cv = ashr i32 %i.cu, 1
  %i.cw = shl i32 %.0.i63.i, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr @ff_interleaved_dirac_golomb_vlc_code, i64 %i.cp
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !13
  %i.cz = zext i8 %i.cy to i32
  %i.da = or i32 %i.cw, %i.cz
  br label %.loopexit.i68.i

bb.n:                                             ; preds = %.preheader.i60.i
  %i.db = shl i32 %.0.i63.i, 4                    ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr @ff_interleaved_dirac_golomb_vlc_code, i64 %i.cp
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !13
  %i.de = zext i8 %i.dd to i32
  %i.df = or i32 %i.db, %i.de                     ; 2 uses
  %i.dg = lshr i32 %spec.select56.i66.i, 3
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 1, !tbaa !13
  %i.dk = tail call i32 @llvm.bswap.i32(i32 %i.dj)
  %i.dl = and i32 %spec.select56.i66.i, 7
  %i.dm = shl i32 %i.dk, %i.dl
  %i.dn = icmp ult i32 %i.db, 134217728
  %i.do = icmp ult i32 %i.cs, %i.au
  %i.dp = select i1 %i.dn, i1 %i.do, i1 false
  br i1 %i.dp, label %.preheader.i60.i, label %.loopexit.i68.i, !llvm.loop !9

.loopexit.i68.i:                                  ; preds = %bb.n, %bb.m
  %.1.i69.i = phi i32 [ %i.da, %bb.m ], [ %i.df, %bb.n ]
  %i.dq = add i32 %.1.i69.i, -1
  br label %get_interleaved_ue_golomb.exit70.i

get_interleaved_ue_golomb.exit70.i:               ; preds = %.loopexit.i68.i, %bb.l
  %.sroa.13.2.i = phi i32 [ %spec.select56.i66.i, %.loopexit.i68.i ], [ %..i58.i, %bb.l ] ; 4 uses
  %.045.i59.i = phi i32 [ %i.dq, %.loopexit.i68.i ], [ %i.cn, %bb.l ] ; 2 uses
  %i.dr = lshr i32 %.sroa.13.2.i, 3
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 1, !tbaa !13
  %i.dv = tail call i32 @llvm.bswap.i32(i32 %i.du)
  %i.dw = and i32 %.sroa.13.2.i, 7
  %i.dx = shl i32 %i.dv, %i.dw                    ; 3 uses
  %i.dy = and i32 %i.dx, -1434451968
  %.not.i71.i = icmp eq i32 %i.dy, 0
  br i1 %.not.i71.i, label %.preheader.i74.i, label %bb.o

bb.o:                                             ; preds = %get_interleaved_ue_golomb.exit70.i
  %i.dz = lshr i32 %i.dx, 24
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr @ff_interleaved_golomb_vlc_len, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !13
  %i.ed = zext i8 %i.ec to i32
  %i.ee = add nuw i32 %.sroa.13.2.i, %i.ed
  %..i72.i = tail call i32 @llvm.umin.i32(i32 %i.au, i32 %i.ee)
  br label %get_interleaved_ue_golomb.exit84.i

.preheader.i74.i:                                 ; preds = %get_interleaved_ue_golomb.exit70.i, %bb.p
  %.044.i75.i = phi i32 [ %i.ev, %bb.p ], [ %i.dx, %get_interleaved_ue_golomb.exit70.i ]
  %.043.i76.i = phi i32 [ %spec.select56.i80.i, %bb.p ], [ %.sroa.13.2.i, %get_interleaved_ue_golomb.exit70.i ]
  %.0.i77.i = phi i32 [ %i.eo, %bb.p ], [ 1, %get_interleaved_ue_golomb.exit70.i ]
  %i.ef = lshr i32 %.044.i75.i, 24
  %i.eg = zext nneg i32 %i.ef to i64              ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr @ff_interleaved_golomb_vlc_len, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !13  ; 2 uses
  %spec.select57.i78.i = tail call i8 @llvm.umin.i8(i8 %i.ei, i8 8)
  %spec.select.i79.i = zext nneg i8 %spec.select57.i78.i to i32
  %i.ej = add nuw i32 %.043.i76.i, %spec.select.i79.i ; 2 uses
  %spec.select56.i80.i = tail call i32 @llvm.umin.i32(i32 %i.au, i32 %i.ej) ; 5 uses
  %.not54.i81.i = icmp eq i8 %i.ei, 9
  br i1 %.not54.i81.i, label %bb.p, label %get_interleaved_ue_golomb.exit84.i

bb.p:                                             ; preds = %.preheader.i74.i
  %i.ek = shl i32 %.0.i77.i, 4                    ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr @ff_interleaved_dirac_golomb_vlc_code, i64 %i.eg
  %i.em = load i8, ptr %i.el, align 1, !tbaa !13
  %i.en = zext i8 %i.em to i32
  %i.eo = or i32 %i.ek, %i.en
  %i.ep = lshr i32 %spec.select56.i80.i, 3
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.eq
  %i.es = load i32, ptr %i.er, align 1, !tbaa !13
  %i.et = tail call i32 @llvm.bswap.i32(i32 %i.es)
  %i.eu = and i32 %spec.select56.i80.i, 7
  %i.ev = shl i32 %i.et, %i.eu
  %i.ew = icmp ult i32 %i.ek, 134217728
  %i.ex = icmp ult i32 %i.ej, %i.au
  %i.ey = select i1 %i.ew, i1 %i.ex, i1 false
  br i1 %i.ey, label %.preheader.i74.i, label %get_interleaved_ue_golomb.exit84.i, !llvm.loop !9

get_interleaved_ue_golomb.exit84.i:               ; preds = %bb.p, %.preheader.i74.i, %bb.o
  %.sroa.13.3.i = phi i32 [ %..i72.i, %bb.o ], [ %spec.select56.i80.i, %.preheader.i74.i ], [ %spec.select56.i80.i, %bb.p ] ; 4 uses
  %i.ez = lshr i32 %.sroa.13.3.i, 3
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 1, !tbaa !13
  %i.fd = tail call i32 @llvm.bswap.i32(i32 %i.fc)
  %i.fe = and i32 %.sroa.13.3.i, 7
  %i.ff = shl i32 %i.fd, %i.fe                    ; 3 uses
  %i.fg = and i32 %i.ff, -1434451968
  %.not.i85.i = icmp eq i32 %i.fg, 0
  br i1 %.not.i85.i, label %.preheader.i88.i, label %bb.q

bb.q:                                             ; preds = %get_interleaved_ue_golomb.exit84.i
end_hunk_0
begin_hunk_1_@ff_rtp_send_vc2hq:bb.a

.lr.ph.i:                                         ; preds = %get_interleaved_ue_golomb.exit140.i, %get_interleaved_ue_golomb.exit182.i
  %.0242.i = phi i32 [ %i.pb, %get_interleaved_ue_golomb.exit182.i ], [ 0, %get_interleaved_ue_golomb.exit140.i ]
  %.sroa.13.0241.i = phi i32 [ %.sroa.13.10.i, %get_interleaved_ue_golomb.exit182.i ], [ %.sroa.13.7.i, %get_interleaved_ue_golomb.exit140.i ] ; 4 uses
  %i.ld = lshr i32 %.sroa.13.0241.i, 3
  %i.le = zext nneg i32 %i.ld to i64
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.le
  %i.lg = load i32, ptr %i.lf, align 1, !tbaa !13
  %i.lh = tail call i32 @llvm.bswap.i32(i32 %i.lg)
  %i.li = and i32 %.sroa.13.0241.i, 7
  %i.lj = shl i32 %i.lh, %i.li                    ; 3 uses
  %i.lk = and i32 %i.lj, -1434451968
  %.not.i141.i = icmp eq i32 %i.lk, 0
  br i1 %.not.i141.i, label %.preheader.i144.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i
  %i.ll = lshr i32 %i.lj, 24
  %i.lm = zext nneg i32 %i.ll to i64
  %i.ln = getelementptr inbounds nuw i8, ptr @ff_interleaved_golomb_vlc_len, i64 %i.lm
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !13
  %i.lp = zext i8 %i.lo to i32
  %i.lq = add nuw i32 %.sroa.13.0241.i, %i.lp
  %..i142.i = tail call i32 @llvm.umin.i32(i32 %i.au, i32 %i.lq)
  br label %get_interleaved_ue_golomb.exit154.i

.preheader.i144.i:                                ; preds = %.lr.ph.i, %bb.ab
  %.044.i145.i = phi i32 [ %i.mh, %bb.ab ], [ %i.lj, %.lr.ph.i ]
  %.043.i146.i = phi i32 [ %spec.select56.i150.i, %bb.ab ], [ %.sroa.13.0241.i, %.lr.ph.i ]
  %.0.i147.i = phi i32 [ %i.ma, %bb.ab ], [ 1, %.lr.ph.i ]
  %i.lr = lshr i32 %.044.i145.i, 24
  %i.ls = zext nneg i32 %i.lr to i64              ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr @ff_interleaved_golomb_vlc_len, i64 %i.ls
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !13  ; 2 uses
  %spec.select57.i148.i = tail call i8 @llvm.umin.i8(i8 %i.lu, i8 8)
  %spec.select.i149.i = zext nneg i8 %spec.select57.i148.i to i32
  %i.lv = add i32 %.043.i146.i, %spec.select.i149.i ; 2 uses
  %spec.select56.i150.i = tail call i32 @llvm.umin.i32(i32 %i.au, i32 %i.lv) ; 5 uses
  %.not54.i151.i = icmp eq i8 %i.lu, 9
  br i1 %.not54.i151.i, label %bb.ab, label %get_interleaved_ue_golomb.exit154.i

bb.ab:                                            ; preds = %.preheader.i144.i
  %i.lw = shl i32 %.0.i147.i, 4                   ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr @ff_interleaved_dirac_golomb_vlc_code, i64 %i.ls
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !13
  %i.lz = zext i8 %i.ly to i32
  %i.ma = or i32 %i.lw, %i.lz
  %i.mb = lshr i32 %spec.select56.i150.i, 3
  %i.mc = zext nneg i32 %i.mb to i64
  %i.md = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.mc
  %i.me = load i32, ptr %i.md, align 1, !tbaa !13
  %i.mf = tail call i32 @llvm.bswap.i32(i32 %i.me)
  %i.mg = and i32 %spec.select56.i150.i, 7
  %i.mh = shl i32 %i.mf, %i.mg
  %i.mi = icmp ult i32 %i.lw, 134217728
  %i.mj = icmp ult i32 %i.lv, %i.au
  %i.mk = select i1 %i.mi, i1 %i.mj, i1 false
  br i1 %i.mk, label %.preheader.i144.i, label %get_interleaved_ue_golomb.exit154.i, !llvm.loop !9

get_interleaved_ue_golomb.exit154.i:              ; preds = %bb.ab, %.preheader.i144.i, %bb.aa
  %.sroa.13.8.i = phi i32 [ %..i142.i, %bb.aa ], [ %spec.select56.i150.i, %.preheader.i144.i ], [ %spec.select56.i150.i, %bb.ab ] ; 4 uses
  %i.ml = lshr i32 %.sroa.13.8.i, 3
  %i.mm = zext nneg i32 %i.ml to i64
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.mm
  %i.mo = load i32, ptr %i.mn, align 1, !tbaa !13
  %i.mp = tail call i32 @llvm.bswap.i32(i32 %i.mo)
  %i.mq = and i32 %.sroa.13.8.i, 7
  %i.mr = shl i32 %i.mp, %i.mq                    ; 3 uses
  %i.ms = and i32 %i.mr, -1434451968
  %.not.i155.i = icmp eq i32 %i.ms, 0
  br i1 %.not.i155.i, label %.preheader.i158.i, label %bb.ac

bb.ac:                                            ; preds = %get_interleaved_ue_golomb.exit154.i
  %i.mt = lshr i32 %i.mr, 24
  %i.mu = zext nneg i32 %i.mt to i64
  %i.mv = getelementptr inbounds nuw i8, ptr @ff_interleaved_golomb_vlc_len, i64 %i.mu
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !13
  %i.mx = zext i8 %i.mw to i32
  %i.my = add nuw i32 %.sroa.13.8.i, %i.mx
  %..i156.i = tail call i32 @llvm.umin.i32(i32 %i.au, i32 %i.my)
  br label %get_interleaved_ue_golomb.exit168.i

.preheader.i158.i:                                ; preds = %get_interleaved_ue_golomb.exit154.i, %bb.ad
  %.044.i159.i = phi i32 [ %i.np, %bb.ad ], [ %i.mr, %get_interleaved_ue_golomb.exit154.i ]
  %.043.i160.i = phi i32 [ %spec.select56.i164.i, %bb.ad ], [ %.sroa.13.8.i, %get_interleaved_ue_golomb.exit154.i ]
  %.0.i161.i = phi i32 [ %i.ni, %bb.ad ], [ 1, %get_interleaved_ue_golomb.exit154.i ]
  %i.mz = lshr i32 %.044.i159.i, 24
  %i.na = zext nneg i32 %i.mz to i64              ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr @ff_interleaved_golomb_vlc_len, i64 %i.na
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !13  ; 2 uses
  %spec.select57.i162.i = tail call i8 @llvm.umin.i8(i8 %i.nc, i8 8)
  %spec.select.i163.i = zext nneg i8 %spec.select57.i162.i to i32
  %i.nd = add nuw i32 %.043.i160.i, %spec.select.i163.i ; 2 uses
  %spec.select56.i164.i = tail call i32 @llvm.umin.i32(i32 %i.au, i32 %i.nd) ; 5 uses
  %.not54.i165.i = icmp eq i8 %i.nc, 9
  br i1 %.not54.i165.i, label %bb.ad, label %get_interleaved_ue_golomb.exit168.i

bb.ad:                                            ; preds = %.preheader.i158.i
  %i.ne = shl i32 %.0.i161.i, 4                   ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr @ff_interleaved_dirac_golomb_vlc_code, i64 %i.na
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !13
  %i.nh = zext i8 %i.ng to i32
  %i.ni = or i32 %i.ne, %i.nh
  %i.nj = lshr i32 %spec.select56.i164.i, 3
  %i.nk = zext nneg i32 %i.nj to i64
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.nk
  %i.nm = load i32, ptr %i.nl, align 1, !tbaa !13
  %i.nn = tail call i32 @llvm.bswap.i32(i32 %i.nm)
  %i.no = and i32 %spec.select56.i164.i, 7
  %i.np = shl i32 %i.nn, %i.no
  %i.nq = icmp ult i32 %i.ne, 134217728
  %i.nr = icmp ult i32 %i.nd, %i.au
  %i.ns = select i1 %i.nq, i1 %i.nr, i1 false
  br i1 %i.ns, label %.preheader.i158.i, label %get_interleaved_ue_golomb.exit168.i, !llvm.loop !9

get_interleaved_ue_golomb.exit168.i:              ; preds = %bb.ad, %.preheader.i158.i, %bb.ac
  %.sroa.13.9.i = phi i32 [ %..i156.i, %bb.ac ], [ %spec.select56.i164.i, %.preheader.i158.i ], [ %spec.select56.i164.i, %bb.ad ] ; 4 uses
  %i.nt = lshr i32 %.sroa.13.9.i, 3
  %i.nu = zext nneg i32 %i.nt to i64
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.nu
  %i.nw = load i32, ptr %i.nv, align 1, !tbaa !13
  %i.nx = tail call i32 @llvm.bswap.i32(i32 %i.nw)
  %i.ny = and i32 %.sroa.13.9.i, 7
  %i.nz = shl i32 %i.nx, %i.ny                    ; 3 uses
  %i.oa = and i32 %i.nz, -1434451968
  %.not.i169.i = icmp eq i32 %i.oa, 0
  br i1 %.not.i169.i, label %.preheader.i172.i, label %bb.ae

bb.ae:                                            ; preds = %get_interleaved_ue_golomb.exit168.i
  %i.ob = lshr i32 %i.nz, 24
  %i.oc = zext nneg i32 %i.ob to i64
  %i.od = getelementptr inbounds nuw i8, ptr @ff_interleaved_golomb_vlc_len, i64 %i.oc
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !13
  %i.of = zext i8 %i.oe to i32
  %i.og = add nuw i32 %.sroa.13.9.i, %i.of
  %..i170.i = tail call i32 @llvm.umin.i32(i32 %i.au, i32 %i.og)
  br label %get_interleaved_ue_golomb.exit182.i

.preheader.i172.i:                                ; preds = %get_interleaved_ue_golomb.exit168.i, %bb.af
  %.044.i173.i = phi i32 [ %i.ox, %bb.af ], [ %i.nz, %get_interleaved_ue_golomb.exit168.i ]
  %.043.i174.i = phi i32 [ %spec.select56.i178.i, %bb.af ], [ %.sroa.13.9.i, %get_interleaved_ue_golomb.exit168.i ]
  %.0.i175.i = phi i32 [ %i.oq, %bb.af ], [ 1, %get_interleaved_ue_golomb.exit168.i ]
  %i.oh = lshr i32 %.044.i173.i, 24
  %i.oi = zext nneg i32 %i.oh to i64              ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr @ff_interleaved_golomb_vlc_len, i64 %i.oi
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !13  ; 2 uses
  %spec.select57.i176.i = tail call i8 @llvm.umin.i8(i8 %i.ok, i8 8)
  %spec.select.i177.i = zext nneg i8 %spec.select57.i176.i to i32
  %i.ol = add nuw i32 %.043.i174.i, %spec.select.i177.i ; 2 uses
  %spec.select56.i178.i = tail call i32 @llvm.umin.i32(i32 %i.au, i32 %i.ol) ; 5 uses
  %.not54.i179.i = icmp eq i8 %i.ok, 9
  br i1 %.not54.i179.i, label %bb.af, label %get_interleaved_ue_golomb.exit182.i

bb.af:                                            ; preds = %.preheader.i172.i
  %i.om = shl i32 %.0.i175.i, 4                   ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr @ff_interleaved_dirac_golomb_vlc_code, i64 %i.oi
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !13
  %i.op = zext i8 %i.oo to i32
  %i.oq = or i32 %i.om, %i.op
  %i.or = lshr i32 %spec.select56.i178.i, 3
  %i.os = zext nneg i32 %i.or to i64
  %i.ot = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.os
  %i.ou = load i32, ptr %i.ot, align 1, !tbaa !13
  %i.ov = tail call i32 @llvm.bswap.i32(i32 %i.ou)
  %i.ow = and i32 %spec.select56.i178.i, 7
  %i.ox = shl i32 %i.ov, %i.ow
  %i.oy = icmp ult i32 %i.om, 134217728
  %i.oz = icmp ult i32 %i.ol, %i.au
  %i.pa = select i1 %i.oy, i1 %i.oz, i1 false
  br i1 %i.pa, label %.preheader.i172.i, label %get_interleaved_ue_golomb.exit182.i, !llvm.loop !9

get_interleaved_ue_golomb.exit182.i:              ; preds = %bb.af, %.preheader.i172.i, %bb.ae
  %.sroa.13.10.i = phi i32 [ %..i170.i, %bb.ae ], [ %spec.select56.i178.i, %.preheader.i172.i ], [ %spec.select56.i178.i, %bb.af ] ; 2 uses
  %i.pb = add nuw nsw i32 %.0242.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.pb, %.045.i59.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !10

._crit_edge.i:                                    ; preds = %get_interleaved_ue_golomb.exit182.i, %get_interleaved_ue_golomb.exit140.i
  %.sroa.13.0.lcssa.i = phi i32 [ %.sroa.13.7.i, %get_interleaved_ue_golomb.exit140.i ], [ %.sroa.13.10.i, %get_interleaved_ue_golomb.exit182.i ]
  %i.pc = add nuw nsw i32 %.sroa.13.0.lcssa.i, 7
  %i.pd = lshr i32 %i.pc, 3                       ; 2 uses
  %i.pe = trunc i32 %i.pd to i16
  store i32 %i.ao, ptr %i.al, align 1, !tbaa !13
  %i.pf = trunc i32 %.045.i101.i to i16
  %i.pg = tail call i16 @llvm.bswap.i16(i16 %i.pf)
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i16 %i.pg, ptr %i.ph, align 1, !tbaa !13
  %i.pi = trunc i32 %.045.i115.i to i16
  %i.pj = tail call i16 @llvm.bswap.i16(i16 %i.pi)
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ak, i64 10
  store i16 %i.pj, ptr %i.pk, align 1, !tbaa !13
  %i.pl = tail call i16 @llvm.bswap.i16(i16 %i.pe)
  %i.pm = getelementptr inbounds nuw i8, ptr %i.ak, i64 12 ; 2 uses
  store i16 %i.pl, ptr %i.pm, align 1, !tbaa !13
  %i.pn = getelementptr inbounds nuw i8, ptr %i.ak, i64 14 ; 2 uses
  store i16 0, ptr %i.pn, align 1, !tbaa !13
  %i.po = and i32 %i.pd, 65535                    ; 5 uses
  %i.pp = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 96 ; 5 uses
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !34
  store i16 0, ptr %i.pr, align 1, !tbaa !13
  %4 = and i32 %i.ao, 16777216
  %.not16.i215.i = icmp eq i32 %4, 0
  %5 = select i1 %.not16.i215.i, i8 2, i8 3
  %i.ps = select i1 %.not.i, i8 0, i8 %5          ; 2 uses
  %i.pt = load ptr, ptr %i.pq, align 8, !tbaa !34
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 2
  store i8 %i.ps, ptr %i.pu, align 1, !tbaa !13
  %i.pv = load ptr, ptr %i.pq, align 8, !tbaa !34
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 3
  store i8 -20, ptr %i.pw, align 1, !tbaa !13
  %.not216.i = icmp eq i32 %i.po, 0
  br i1 %.not216.i, label %send_packet.exit.i, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge.i
  %i.px = load ptr, ptr %i.pq, align 8, !tbaa !34
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 16
  %i.pz = zext nneg i32 %i.po to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.py, ptr nonnull readonly align 1 %i.ap, i64 %i.pz, i1 false)
  br label %send_packet.exit.i

send_packet.exit.i:                               ; preds = %bb.ag, %._crit_edge.i
  %i.qa = load ptr, ptr %i.pq, align 8, !tbaa !34
  %i.qb = add nuw nsw i32 %i.po, 16
  tail call void @ff_rtp_send_data(ptr noundef nonnull %0, ptr noundef %i.qa, i32 noundef %i.qb, i32 noundef 0) #4
  %i.qc = sub nsw i32 %i.aq, %i.po                ; 2 uses
  %i.qd = icmp sgt i32 %i.qc, 0
  br i1 %i.qd, label %.lr.ph245.i, label %send_picture.exit

.lr.ph245.i:                                      ; preds = %send_packet.exit.i
  %i.qe = zext nneg i32 %i.po to i64
  %i.qf = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.qe
  %i.qg = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.qh = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.qi = getelementptr inbounds nuw i8, ptr %i.ak, i64 18
  br label %bb.ah

bb.ah:                                            ; preds = %send_packet.exit186.i, %.lr.ph245.i
  %.052244.i = phi i32 [ %i.qc, %.lr.ph245.i ], [ %i.qo, %send_packet.exit186.i ] ; 2 uses
  %.053243.i = phi ptr [ %i.qf, %.lr.ph245.i ], [ %i.rd, %send_packet.exit186.i ] ; 2 uses
  %i.qj = load i32, ptr %i.qg, align 8, !tbaa !36
  %i.qk = add nsw i32 %i.qj, -20
  %.052..i = tail call i32 @llvm.smin.i32(i32 %i.qk, i32 %.052244.i) ; 2 uses
  %i.ql = trunc i32 %.052..i to i16
  %i.qm = tail call i16 @llvm.bswap.i16(i16 %i.ql)
  store i16 %i.qm, ptr %i.pm, align 1, !tbaa !13
  store i16 256, ptr %i.pn, align 1, !tbaa !13
  store i16 0, ptr %i.qh, align 1, !tbaa !13
  store i16 0, ptr %i.qi, align 1, !tbaa !13
  %i.qn = and i32 %.052..i, 65535                 ; 4 uses
  %i.qo = sub nsw i32 %.052244.i, %i.qn           ; 3 uses
  %i.qp = icmp slt i32 %i.qo, 1
  %i.qq = zext i1 %i.qp to i32
  %i.qr = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 96 ; 5 uses
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !34
  store i16 0, ptr %i.qt, align 1, !tbaa !13
  %i.qu = load ptr, ptr %i.qs, align 8, !tbaa !34
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 2
  store i8 %i.ps, ptr %i.qv, align 1, !tbaa !13
  %i.qw = load ptr, ptr %i.qs, align 8, !tbaa !34
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 3
  store i8 -20, ptr %i.qx, align 1, !tbaa !13
  %.not217.i = icmp eq i32 %i.qn, 0
  br i1 %.not217.i, label %send_packet.exit186.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.qy = load ptr, ptr %i.qs, align 8, !tbaa !34
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 20
  %i.ra = zext nneg i32 %i.qn to i64              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.qz, ptr readonly align 1 %.053243.i, i64 %i.ra, i1 false)
  br label %send_packet.exit186.i

send_packet.exit186.i:                            ; preds = %bb.ai, %bb.ah
  %.pre-phi.i = phi i64 [ %i.ra, %bb.ai ], [ 0, %bb.ah ]
  %i.rb = load ptr, ptr %i.qs, align 8, !tbaa !34
  %i.rc = add nuw nsw i32 %i.qn, 20
  tail call void @ff_rtp_send_data(ptr noundef nonnull %0, ptr noundef %i.rb, i32 noundef %i.rc, i32 noundef range(i32 0, 2) %i.qq) #4
  %i.rd = getelementptr inbounds nuw i8, ptr %.053243.i, i64 %.pre-phi.i
  %i.re = icmp sgt i32 %i.qo, 0
  br i1 %i.re, label %bb.ah, label %send_picture.exit, !llvm.loop !11

bb.aj:                                            ; preds = %bb.c
  %i.rf = zext i8 %i.g to i32
  tail call void (ptr, ptr, ...) @avpriv_report_missing_feature(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %i.rf) #4
  br label %send_picture.exit

send_picture.exit:                                ; preds = %send_packet.exit186.i, %send_packet.exit.i, %bb.h, %bb.c, %bb.c, %bb.g, %bb.d, %send_packet.exit, %bb.aj
  %i.rg = getelementptr inbounds nuw i8, ptr %.050, i64 %i.k ; 2 uses
  %i.rh = icmp ult ptr %i.rg, %i.b
  br i1 %i.rh, label %bb.b, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %send_picture.exit, %bb.b, %bb.a
  ret void
}

declare void @avpriv_report_missing_feature(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @ff_rtp_send_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = distinct !{!9, !35}
!10 = distinct !{!10, !35}
!11 = distinct !{!11, !35}
!12 = distinct !{!12, !35}
!13 = !{!5, !5, i64 0}
!14 = !{!"any pointer", !5, i64 0}
!15 = !{!"p1 _ZTS7AVClass", !14, i64 0}
!16 = !{!"p1 _ZTS13AVInputFormat", !14, i64 0}
!17 = !{!"p1 _ZTS14AVOutputFormat", !14, i64 0}
!18 = !{!"p1 _ZTS11AVIOContext", !14, i64 0}
!19 = !{!"any p2 pointer", !14, i64 0}
!20 = !{!"p2 _ZTS8AVStream", !19, i64 0}
!21 = !{!"p2 _ZTS13AVStreamGroup", !19, i64 0}
!22 = !{!"p2 _ZTS9AVChapter", !19, i64 0}
!23 = !{!"p1 omnipotent char", !14, i64 0}
!24 = !{!"long", !5, i64 0}
!25 = !{!"p2 _ZTS9AVProgram", !19, i64 0}
!26 = !{!"p1 _ZTS12AVDictionary", !14, i64 0}
!27 = !{!"AVIOInterruptCB", !14, i64 0, !14, i64 8}
!28 = !{!"p1 _ZTS7AVCodec", !14, i64 0}
!29 = !{!"AVFormatContext", !15, i64 0, !16, i64 8, !17, i64 16, !14, i64 24, !18, i64 32, !6, i64 40, !6, i64 44, !20, i64 48, !6, i64 56, !21, i64 64, !6, i64 72, !22, i64 80, !23, i64 88, !24, i64 96, !24, i64 104, !24, i64 112, !6, i64 120, !6, i64 124, !6, i64 128, !24, i64 136, !24, i64 144, !23, i64 152, !6, i64 160, !6, i64 164, !25, i64 168, !6, i64 176, !6, i64 180, !6, i64 184, !6, i64 188, !26, i64 192, !24, i64 200, !6, i64 208, !6, i64 212, !27, i64 216, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !24, i64 248, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !6, i64 300, !24, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !23, i64 336, !23, i64 344, !23, i64 352, !23, i64 360, !6, i64 368, !28, i64 376, !28, i64 384, !28, i64 392, !28, i64 400, !6, i64 408, !14, i64 416, !14, i64 424, !24, i64 432, !23, i64 440, !14, i64 448, !14, i64 456, !24, i64 464, !23, i64 472}
!30 = !{!29, !14, i64 24}
!31 = !{!"p1 _ZTS15AVFormatContext", !14, i64 0}
!32 = !{!"p1 _ZTS8AVStream", !14, i64 0}
!33 = !{!"RTPMuxContext", !15, i64 0, !31, i64 8, !32, i64 16, !6, i64 24, !6, i64 28, !23, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !24, i64 64, !24, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !23, i64 96, !23, i64 104, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128}
!34 = !{!33, !23, i64 96}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!33, !6, i64 56}
end_hunk_1
