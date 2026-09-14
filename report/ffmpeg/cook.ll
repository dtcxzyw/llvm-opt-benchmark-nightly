Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/cook?download=true
inline.NumInlined: 32
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@cook_decode_init:bb.a
  store i32 8, ptr %i.fn, align 4, !tbaa !81
  tail call void @av_channel_layout_uninit(ptr noundef nonnull %i.c) #13
  %.not232 = icmp eq i32 %.0210.lcssa, 0
  br i1 %.not232, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fo = zext i32 %.0210.lcssa to i64
  %i.fp = tail call i32 @av_channel_layout_from_mask(ptr noundef nonnull %i.c, i64 noundef %i.fo) #13 ; 0 uses
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  tail call void @av_channel_layout_default(ptr noundef nonnull %i.c, i32 noundef %i.e) #13
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba, %bb.ax, %bb.aw, %init_gain_table.exit, %bb.f, %bb.at, %bb.ar, %bb.ap, %bb.an, %split, %bb.ak, %bb.ai, %bb.af, %bb.x, %bb.r, %bb.n, %bb.i, %bb.e, %bb.b
  %.0212 = phi i32 [ -1094995529, %bb.b ], [ -1094995529, %bb.e ], [ -1163346256, %bb.i ], [ -1094995529, %bb.n ], [ -1163346256, %bb.af ], [ -1163346256, %bb.r ], [ -1094995529, %bb.ai ], [ -1163346256, %bb.ak ], [ -1094995529, %split ], [ -1163346256, %bb.an ], [ -1163346256, %bb.ap ], [ -1094995529, %bb.ar ], [ -1163346256, %bb.x ], [ -1163346256, %bb.at ], [ -22, %bb.f ], [ -12, %bb.aw ], [ %i.fl, %bb.ax ], [ %i.fd, %init_gain_table.exit ], [ 0, %bb.ba ], [ 0, %bb.az ]
  ret i32 %.0212
}

; Function Attrs: nounwind uwtable
define internal i32 @cook_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = alloca [20 x i32], align 16              ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !90   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !91   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28   ; 23 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 380 ; 5 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !37   ; 2 uses
  %i.j = icmp slt i32 %i.e, %i.i
  br i1 %i.j, label %decode_subpacket.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 364 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !92
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 100
  %i.o = load i32, ptr %i.n, align 4, !tbaa !38
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 %i.o, ptr %i.p, align 8, !tbaa !97
  %i.q = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #13 ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %decode_subpacket.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !98
  %.pre = load i32, ptr %i.h, align 4, !tbaa !37
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.u = phi i32 [ %.pre, %bb.d ], [ %i.i, %bb.b ] ; 3 uses
  %.075 = phi ptr [ %i.t, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 21680 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 21684 ; 2 uses
  store i32 %i.u, ptr %i.w, align 4, !tbaa !99
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 21672 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !54   ; 4 uses
  %i.z = icmp sgt i32 %i.y, 1
  br i1 %i.z, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.e
  %invariant.op = sub i32 %i.u, %i.y
  %wide.trip.count = zext nneg i32 %i.y to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %bb.g, !llvm.loop !82

.preheader:                                       ; preds = %bb.f, %bb.e
  %i.aa = icmp sgt i32 %i.y, 0
  br i1 %i.aa, label %.lr.ph92, label %._crit_edge

.lr.ph92:                                         ; preds = %.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 9200 ; 10 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 13296 ; 9 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 17392 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.af = getelementptr i8, ptr %i.g, i64 80      ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.not53.i = icmp eq ptr %.075, null             ; 3 uses
  br label %bb.i

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %i.ai = phi i32 [ %i.u, %.lr.ph ], [ %i.ar, %bb.f ]
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.aj = trunc nuw nsw i64 %indvars.iv to i32
  %.reass = add i32 %invariant.op, %i.aj
  %i.ak = sext i32 %.reass to i64
  %i.al = getelementptr inbounds i8, ptr %i.c, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !39
  %i.an = zext i8 %i.am to i32
  %i.ao = shl nuw nsw i32 %i.an, 1                ; 2 uses
  %i.ap = getelementptr inbounds nuw [8456 x i8], ptr %i.v, i64 %indvars.iv
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  store i32 %i.ao, ptr %i.aq, align 4, !tbaa !99
  %.neg = xor i32 %i.ao, -1
  %i.ar = add i32 %i.ai, %.neg                    ; 3 uses
  store i32 %i.ar, ptr %i.w, align 4, !tbaa !99
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %bb.h, label %bb.f

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 48, ptr noundef nonnull @.str.30) #13
  br label %decode_subpacket.exit.thread

bb.i:                                             ; preds = %.lr.ph92, %decode_subpacket.exit
  %indvars.iv96 = phi i64 [ 0, %.lr.ph92 ], [ %indvars.iv.next97, %decode_subpacket.exit ] ; 3 uses
  %.091 = phi i32 [ 0, %.lr.ph92 ], [ %i.jl, %decode_subpacket.exit ] ; 2 uses
  %.07390 = phi i32 [ 0, %.lr.ph92 ], [ %i.jj, %decode_subpacket.exit ] ; 3 uses
  %i.at = getelementptr inbounds nuw [8456 x i8], ptr %i.v, i64 %indvars.iv96 ; 27 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4 ; 3 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !99 ; 2 uses
  %i.aw = shl nsw i32 %i.av, 3
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 72
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !52
  %i.az = ashr i32 %i.aw, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 68
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !47
  store i32 %.091, ptr %i.at, align 8, !tbaa !100
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 64 ; 3 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !51
  %i.bd = load i32, ptr %i.h, align 4, !tbaa !37
  %i.be = trunc nuw nsw i64 %indvars.iv96 to i32  ; 2 uses
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 48, ptr noundef nonnull @.str.31, i32 noundef %i.be, i32 noundef %i.av, i32 noundef %i.bc, i32 noundef %.07390, i32 noundef %i.bd) #13
  %i.bf = sext i32 %.07390 to i64
  %i.bg = getelementptr inbounds i8, ptr %i.c, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.au, align 4, !tbaa !99
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.ab, i8 0, i64 4096, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8280 ; 3 uses
  tail call fastcc void @decode_bytes_and_gain(ptr noundef nonnull %i.g, ptr noundef nonnull %i.at, ptr noundef %i.bg, ptr noundef nonnull %i.bi)
  %i.bj = load i32, ptr %i.bb, align 8, !tbaa !51
  %.not.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.a, i8 0, i64 80, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(12432) %i.ab, i8 0, i64 12432, i1 false)
  %i.bk = load i32, ptr %i.af, align 16, !tbaa !62 ; 4 uses
  %i.bl = load ptr, ptr %i.ae, align 8, !tbaa !63 ; 5 uses
  %i.bm = lshr i32 %i.bk, 3
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !39
  %i.bq = load i32, ptr %i.ag, align 8, !tbaa !64 ; 5 uses
  %i.br = icmp slt i32 %i.bk, %i.bq
  %i.bs = zext i1 %i.br to i32
  %spec.select.i.i.i.i = add i32 %i.bk, %i.bs     ; 3 uses
  store i32 %spec.select.i.i.i.i, ptr %i.af, align 16, !tbaa !62
  %i.bt = getelementptr inbounds nuw i8, ptr %i.at, i64 20 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !45
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr @cplband, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !65 ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 3 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !44
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr [4 x i8], ptr @cplband, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.cb, i64 -4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !65 ; 3 uses
  %i.ce = icmp sgt i32 %i.bx, %i.cd
  br i1 %i.ce, label %.loopexit61.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cf = zext i8 %i.bp to i32
  %i.cg = and i32 %i.bk, 7
  %i.ch = lshr exact i32 128, %i.cg
  %i.ci = and i32 %i.ch, %i.cf
  %.not.i.i.i = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %.preheader37.i.i.i

.preheader37.i.i.i:                               ; preds = %bb.k
  %i.cj = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !101 ; 3 uses
  %i.cl = sext i32 %i.bx to i64
  %reass.sub = sub i32 %i.cd, %i.bx
  %i.cm = add i32 %reass.sub, 1
  %wide.trip.count.i.i.i = zext i32 %i.cm to i64
  %invariant.gep.i.i.i = getelementptr [4 x i8], ptr %i.a, i64 %i.cl
  br label %bb.l

.preheader.i.i.i:                                 ; preds = %bb.k
  %i.cn = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.co = sext i32 %i.bx to i64
  %reass.sub93 = sub i32 %i.cd, %i.bx
  %i.cp = add i32 %reass.sub93, 1
  %wide.trip.count49.i.i.i = zext i32 %i.cp to i64
  %invariant.gep53.i.i.i = getelementptr [4 x i8], ptr %i.a, i64 %i.co
  %i.cq = load i32, ptr %i.cn, align 8, !tbaa !46 ; 3 uses
  %i.cr = sub nsw i32 32, %i.cq
  %notmask.i.i.i = shl nsw i32 -1, %i.cq
  br label %bb.o

bb.l:                                             ; preds = %get_vlc2.exit.i.i.i, %.preheader37.i.i.i
  %i.cs = phi i32 [ %spec.select.i.i.i.i, %.preheader37.i.i.i ], [ %i.ex, %get_vlc2.exit.i.i.i ] ; 4 uses
  %indvars.iv.i.i.i = phi i64 [ 0, %.preheader37.i.i.i ], [ %indvars.iv.next.i.i.i, %get_vlc2.exit.i.i.i ] ; 2 uses
  %i.ct = lshr i32 %i.cs, 3
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 1, !tbaa !39
  %i.cx = tail call i32 @llvm.bswap.i32(i32 %i.cw)
  %i.cy = and i32 %i.cs, 7
  %i.cz = shl i32 %i.cx, %i.cy
  %i.da = lshr i32 %i.cz, 26
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.db ; 2 uses
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !39
  %i.de = sext i16 %i.dd to i32                   ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 2
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !39 ; 2 uses
  %i.dh = sext i16 %i.dg to i32                   ; 3 uses
  %i.di = icmp slt i16 %i.dg, 0
  br i1 %i.di, label %bb.m, label %get_vlc2.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.dj = add i32 %i.cs, 6
  %i.dk = tail call i32 @llvm.umin.i32(i32 %i.bq, i32 %i.dj) ; 4 uses
  %i.dl = lshr i32 %i.dk, 3
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 1, !tbaa !39
  %i.dp = tail call i32 @llvm.bswap.i32(i32 %i.do)
  %i.dq = and i32 %i.dk, 7
  %i.dr = shl i32 %i.dp, %i.dq
  %i.ds = add nsw i32 %i.dh, 32
  %i.dt = lshr i32 %i.dr, %i.ds
  %i.du = add i32 %i.dt, %i.de
  %i.dv = zext i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.dv ; 2 uses
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !39
  %i.dy = sext i16 %i.dx to i32                   ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 2
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !39 ; 2 uses
  %i.eb = sext i16 %i.ea to i32                   ; 2 uses
  %i.ec = icmp slt i16 %i.ea, 0
  br i1 %i.ec, label %bb.n, label %get_vlc2.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.ed = sub i32 %i.dk, %i.dh
  %i.ee = tail call i32 @llvm.umin.i32(i32 %i.bq, i32 %i.ed) ; 3 uses
  %i.ef = lshr i32 %i.ee, 3
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 1, !tbaa !39
  %i.ej = tail call i32 @llvm.bswap.i32(i32 %i.ei)
  %i.ek = and i32 %i.ee, 7
  %i.el = shl i32 %i.ej, %i.ek
  %i.em = add nsw i32 %i.eb, 32
  %i.en = lshr i32 %i.el, %i.em
  %i.eo = add i32 %i.en, %i.dy
  %i.ep = zext i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.ep ; 2 uses
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !39
  %i.es = sext i16 %i.er to i32
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 2
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !39
  %i.ev = sext i16 %i.eu to i32
  br label %get_vlc2.exit.i.i.i

get_vlc2.exit.i.i.i:                              ; preds = %bb.n, %bb.m, %bb.l
  %.167.i.i.i.i = phi i32 [ %i.de, %bb.l ], [ %i.es, %bb.n ], [ %i.dy, %bb.m ]
  %.165.i.i.i.i = phi i32 [ %i.cs, %bb.l ], [ %i.ee, %bb.n ], [ %i.dk, %bb.m ]
  %.1.i.i.i.i = phi i32 [ %i.dh, %bb.l ], [ %i.ev, %bb.n ], [ %i.eb, %bb.m ]
  %i.ew = add i32 %.1.i.i.i.i, %.165.i.i.i.i
  %i.ex = tail call i32 @llvm.umin.i32(i32 %i.bq, i32 %i.ew) ; 2 uses
  store i32 %i.ex, ptr %i.af, align 16, !tbaa !62
  %gep.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.i.i.i
  store i32 %.167.i.i.i.i, ptr %gep.i.i.i, align 4, !tbaa !65
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %.loopexit61.i.i, label %bb.l, !llvm.loop !83

bb.o:                                             ; preds = %bb.p, %.preheader.i.i.i
  %i.ey = phi i32 [ %spec.select.i.i.i.i, %.preheader.i.i.i ], [ %i.fi, %bb.p ] ; 3 uses
  %indvars.iv46.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %indvars.iv.next47.i.i.i, %bb.p ] ; 2 uses
  %i.ez = lshr i32 %i.ey, 3
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 1, !tbaa !39
  %i.fd = tail call i32 @llvm.bswap.i32(i32 %i.fc)
  %i.fe = and i32 %i.ey, 7
  %i.ff = shl i32 %i.fd, %i.fe
  %i.fg = lshr i32 %i.ff, %i.cr                   ; 2 uses
  %i.fh = add i32 %i.ey, %i.cq
  %i.fi = tail call i32 @llvm.umin.i32(i32 %i.bq, i32 %i.fh) ; 2 uses
  store i32 %i.fi, ptr %i.af, align 16, !tbaa !62
  %4 = xor i32 %i.fg, %notmask.i.i.i
  %.not35.i.i.i = icmp eq i32 %4, -1
  br i1 %.not35.i.i.i, label %decouple_info.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %gep54.i.i.i = getelementptr [4 x i8], ptr %invariant.gep53.i.i.i, i64 %indvars.iv46.i.i.i
  store i32 %i.fg, ptr %gep54.i.i.i, align 4, !tbaa !65
  %indvars.iv.next47.i.i.i = add nuw nsw i64 %indvars.iv46.i.i.i, 1 ; 2 uses
  %exitcond50.not.i.i.i = icmp eq i64 %indvars.iv.next47.i.i.i, %wide.trip.count49.i.i.i
  br i1 %exitcond50.not.i.i.i, label %.loopexit61.i.i, label %bb.o, !llvm.loop !84

decouple_info.exit.i.i:                           ; preds = %bb.o
  %i.fj = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.fk, i32 noundef 16, ptr noundef nonnull @.str.33) #13
  br label %joint_decode.exit.thread.i

.loopexit61.i.i:                                  ; preds = %get_vlc2.exit.i.i.i, %bb.p, %bb.j
  %i.fl = tail call fastcc i32 @mono_decode(ptr noundef nonnull %i.g, ptr noundef nonnull %i.at, ptr noundef nonnull %i.ad) ; 2 uses
  %i.fm = icmp slt i32 %i.fl, 0
  br i1 %i.fm, label %joint_decode.exit.thread.i, label %.preheader60.i.i

.preheader60.i.i:                                 ; preds = %.loopexit61.i.i
  %i.fn = load i32, ptr %i.bt, align 4, !tbaa !45 ; 4 uses
  %i.fo = icmp sgt i32 %i.fn, 0
  br i1 %i.fo, label %.preheader.preheader.i.i, label %._crit_edge.i.i

.preheader.preheader.i.i:                         ; preds = %.preheader60.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.fn to i64
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %indvars.iv.next.i.i, %.preheader.i.i ] ; 3 uses
  %i.fp = mul nuw nsw i64 %indvars.iv.i.i, 20     ; 6 uses
  %.idx.i = mul nuw nsw i64 %indvars.iv.i.i, 160
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx.i ; 10 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.fp
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 80
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.fp
  %i.fu = load <4 x float>, ptr %i.fq, align 4, !tbaa !57
  %i.fv = load <4 x float>, ptr %i.fs, align 4, !tbaa !57
  store <4 x float> %i.fu, ptr %i.fr, align 4, !tbaa !57
  store <4 x float> %i.fv, ptr %i.ft, align 4, !tbaa !57
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fx = add nuw nsw i64 %i.fp, 4                ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fq, i64 96
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.fx
  %i.gb = load <4 x float>, ptr %i.fw, align 4, !tbaa !57
  %i.gc = load <4 x float>, ptr %i.fz, align 4, !tbaa !57
  store <4 x float> %i.gb, ptr %i.fy, align 4, !tbaa !57
  store <4 x float> %i.gc, ptr %i.ga, align 4, !tbaa !57
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fq, i64 32
  %i.ge = add nuw nsw i64 %i.fp, 8                ; 2 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fq, i64 112
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ge
  %i.gi = load <4 x float>, ptr %i.gd, align 4, !tbaa !57
  %i.gj = load <4 x float>, ptr %i.gg, align 4, !tbaa !57
  store <4 x float> %i.gi, ptr %i.gf, align 4, !tbaa !57
  store <4 x float> %i.gj, ptr %i.gh, align 4, !tbaa !57
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fq, i64 48
  %i.gl = add nuw nsw i64 %i.fp, 12               ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fq, i64 128
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.gl
  %i.gp = load <4 x float>, ptr %i.gk, align 4, !tbaa !57
  %i.gq = load <4 x float>, ptr %i.gn, align 4, !tbaa !57
  store <4 x float> %i.gp, ptr %i.gm, align 4, !tbaa !57
  store <4 x float> %i.gq, ptr %i.go, align 4, !tbaa !57
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fq, i64 64
  %i.gs = add nuw nsw i64 %i.fp, 16               ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fq, i64 144
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.gs
  %i.gw = load <4 x float>, ptr %i.gr, align 4, !tbaa !57
  %i.gx = load <4 x float>, ptr %i.gu, align 4, !tbaa !57
  store <4 x float> %i.gw, ptr %i.gt, align 4, !tbaa !57
  store <4 x float> %i.gx, ptr %i.gv, align 4, !tbaa !57
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.preheader.i.i, !llvm.loop !85

._crit_edge.i.i:                                  ; preds = %.preheader.i.i, %.preheader60.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.gz = load i32, ptr %i.by, align 8, !tbaa !44
  %i.ha = icmp slt i32 %i.fn, %i.gz
  br i1 %i.ha, label %.lr.ph.i.i, label %joint_decode.exit.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i.i
  %i.hb = sext i32 %i.fn to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph.i.i
  %indvars.iv71.i.i = phi i64 [ %i.hb, %.lr.ph.i.i ], [ %indvars.iv.next72.i.i, %bb.q ] ; 3 uses
  %.pn.i.i = load i32, ptr %i.gy, align 8, !tbaa !46 ; 2 uses
  %.0.in.i.i = shl nsw i32 -1, %.pn.i.i
  %.0.i.i = xor i32 %.0.in.i.i, -1
  %i.hc = getelementptr inbounds [4 x i8], ptr @cplband, i64 %indvars.iv71.i.i
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !65
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.he
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !65 ; 2 uses
  %i.hh = sub nsw i32 %.0.i.i, %i.hg
  %i.hi = sext i32 %.pn.i.i to i64
  %i.hj = getelementptr [8 x i8], ptr %i.g, i64 %i.hi
  %i.hk = getelementptr i8, ptr %i.hj, i64 21616
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !58 ; 2 uses
  %i.hm = sext i32 %i.hg to i64
  %i.hn = getelementptr [4 x i8], ptr %i.hl, i64 %i.hm
  %i.ho = getelementptr i8, ptr %i.hn, i64 4
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !57
  %i.hq = sext i32 %i.hh to i64
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %i.hq
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !57
  %i.ht = load ptr, ptr %i.ah, align 8, !tbaa !102
  %i.hu = trunc nsw i64 %indvars.iv71.i.i to i32
  tail call void %i.ht(ptr noundef nonnull %i.g, ptr noundef nonnull %i.at, i32 noundef %i.hu, float noundef %i.hp, float noundef %i.hs, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ac) #13, !inline_history !86
  %indvars.iv.next72.i.i = add nsw i64 %indvars.iv71.i.i, 1 ; 2 uses
  %i.hv = load i32, ptr %i.by, align 8, !tbaa !44
  %i.hw = sext i32 %i.hv to i64
  %i.hx = icmp slt i64 %indvars.iv.next72.i.i, %i.hw
  br i1 %i.hx, label %bb.q, label %joint_decode.exit.i, !llvm.loop !87

joint_decode.exit.thread.i:                       ; preds = %.loopexit61.i.i, %decouple_info.exit.i.i
  %.054.i.ph.i = phi i32 [ -1094995529, %decouple_info.exit.i.i ], [ %i.fl, %.loopexit61.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %decode_subpacket.exit.thread

joint_decode.exit.i:                              ; preds = %bb.q, %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.u

bb.r:                                             ; preds = %bb.i
  %i.hy = tail call fastcc i32 @mono_decode(ptr noundef nonnull %i.g, ptr noundef nonnull %i.at, ptr noundef nonnull %i.ab) ; 2 uses
  %i.hz = icmp slt i32 %i.hy, 0
  br i1 %i.hz, label %decode_subpacket.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ia = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !50
  %i.ic = icmp eq i32 %i.ib, 2
  br i1 %i.ic, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.id = sdiv i32 %i.bh, 2
  %i.ie = sext i32 %i.id to i64
  %i.if = getelementptr inbounds i8, ptr %i.bg, i64 %i.ie
  %i.ig = getelementptr inbounds nuw i8, ptr %i.at, i64 8296
  tail call fastcc void @decode_bytes_and_gain(ptr noundef nonnull %i.g, ptr noundef nonnull %i.at, ptr noundef %i.if, ptr noundef nonnull %i.ig)
  %i.ih = tail call fastcc i32 @mono_decode(ptr noundef nonnull %i.g, ptr noundef nonnull %i.at, ptr noundef nonnull %i.ac) ; 2 uses
  %i.ii = icmp slt i32 %i.ih, 0
  br i1 %i.ii, label %decode_subpacket.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %joint_decode.exit.i
  %i.ij = getelementptr inbounds nuw i8, ptr %i.at, i64 84
  br i1 %.not53.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ik = load i32, ptr %i.at, align 8, !tbaa !100
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds [8 x i8], ptr %.075, i64 %i.il
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !58
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.io = phi ptr [ %i.in, %bb.v ], [ null, %bb.u ]
  tail call fastcc void @mlt_compensate_output(ptr noundef nonnull %i.g, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.bi, ptr noundef nonnull %i.ij, ptr noundef %i.io)
  %i.ip = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 8, !tbaa !50
  %i.ir = icmp eq i32 %i.iq, 2
  br i1 %i.ir, label %bb.x, label %decode_subpacket.exit

bb.x:                                             ; preds = %bb.w
  %i.is = load i32, ptr %i.bb, align 8, !tbaa !51
  %.not54.i = icmp eq i32 %i.is, 0
  br i1 %.not54.i, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.it = getelementptr inbounds nuw i8, ptr %i.at, i64 4180
  br i1 %.not53.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.iu = load i32, ptr %i.at, align 8, !tbaa !100
  %i.iv = sext i32 %i.iu to i64
  %i.iw = getelementptr [8 x i8], ptr %.075, i64 %i.iv
  %i.ix = getelementptr i8, ptr %i.iw, i64 8
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !58
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.iz = phi ptr [ %i.iy, %bb.z ], [ null, %bb.y ]
  tail call fastcc void @mlt_compensate_output(ptr noundef nonnull %i.g, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.bi, ptr noundef nonnull %i.it, ptr noundef %i.iz)
  br label %decode_subpacket.exit

bb.ab:                                            ; preds = %bb.x
  %i.ja = getelementptr inbounds nuw i8, ptr %i.at, i64 8296
  %i.jb = getelementptr inbounds nuw i8, ptr %i.at, i64 4180
  br i1 %.not53.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.jc = load i32, ptr %i.at, align 8, !tbaa !100
end_hunk_0
