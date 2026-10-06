Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_telecine?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
begin_hunk_0_@init:bb.a
  %i.t = add nuw nsw i32 %..0, 1
  %i.u = lshr i32 %i.t, 1                         ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 %i.u, ptr %i.v, align 8, !tbaa !28
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.22, ptr noundef nonnull %i.d, i32 noundef %i.u, i32 noundef %i.l, i32 noundef %i.q) #5
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d, %bb.b
  %.024 = phi i32 [ -1094995529, %bb.d ], [ 0, %bb.f ], [ -1094995529, %bb.b ]
  ret i32 %.024
}

; Function Attrs: cold nounwind optsize uwtable
define internal void @uninit(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  tail call void @av_frame_free(ptr noundef nonnull %i.c) #5
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !28
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  tail call void @av_frame_free(ptr noundef nonnull %i.h) #5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.i = load i32, ptr %i.d, align 8, !tbaa !28
  %i.j = sext i32 %i.i to i64
  %i.k = icmp slt i64 %indvars.iv.next, %i.j
  br i1 %i.k, label %bb.b, label %._crit_edge, !llvm.loop !46

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @query_formats(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
bb.a:
  %i.a = tail call ptr @ff_formats_pixdesc_filter(i32 noundef 0, i32 noundef 14) #5
  %i.b = tail call i32 @ff_set_common_formats2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %i.a) #5
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define internal i32 @filter_frame(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !39   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19   ; 22 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !27
  %i.k = icmp eq i64 %i.j, -9223372036854775808
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.m = load i64, ptr %i.l, align 8, !tbaa !57
  store i64 %i.m, ptr %i.i, align 8, !tbaa !27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !24   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !58   ; 2 uses
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !25
  %i.u = sext i8 %i.t to i32                      ; 2 uses
  %i.v = add nsw i32 %i.u, -48                    ; 2 uses
  %i.w = add i32 %i.q, 1                          ; 3 uses
  store i32 %i.w, ptr %i.p, align 8, !tbaa !58
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !25
  %.not = icmp eq i8 %i.z, 0
  %spec.store.select = select i1 %.not, i32 0, i32 %i.w
  store i32 %spec.store.select, ptr %i.p, align 8, !tbaa !58
  %.not161 = icmp eq i32 %i.v, 0
  br i1 %.not161, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 60 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !59
  %.not162 = icmp eq i32 %i.ab, 0
  br i1 %.not162, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 104 ; 4 uses
  %i.ad = tail call i32 @ff_inlink_make_frame_writable(ptr noundef nonnull %0, ptr noundef nonnull %i.ac) #5 ; 3 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %.thread, label %.preheader175

.preheader175:                                    ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !40
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader175
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 84
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 68
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 11 uses
  %i.an = load ptr, ptr %i.ac, align 8, !tbaa !29 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !60
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !41 ; 2 uses
  %i.at = load i32, ptr %i.ai, align 8, !tbaa !61 ; 3 uses
  %i.au = mul nsw i32 %i.at, %i.as
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds i8, ptr %i.ap, i64 %i.av
  %i.ax = shl nsw i32 %i.as, 1
  %i.ay = load ptr, ptr %i.aj, align 8, !tbaa !42 ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !60
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !41 ; 2 uses
  %i.be = mul nsw i32 %i.bd, %i.at
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds i8, ptr %i.ba, i64 %i.bf
  %i.bh = shl nsw i32 %i.bd, 1
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !41
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !41
  %reass.sub = sub i32 %i.bl, %i.at
  %i.bm = add i32 %reass.sub, 1
  %i.bn = sdiv i32 %i.bm, 2
  tail call void @av_image_copy_plane(ptr noundef %i.aw, i32 noundef %i.ax, ptr noundef %i.bg, i32 noundef %i.bh, i32 noundef %i.bj, i32 noundef %i.bn) #5
  %i.bo = load ptr, ptr %i.ac, align 8, !tbaa !29 ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !60
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !41 ; 2 uses
  %i.bu = load i32, ptr %i.ai, align 8, !tbaa !61
  %.not168 = icmp ne i32 %i.bu, 0                 ; 3 uses
  %i.bv = select i1 %.not168, i32 0, i32 %i.bt
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds i8, ptr %i.bq, i64 %i.bw
  %i.by = shl nsw i32 %i.bt, 1
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !60
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !41 ; 2 uses
  %i.cd = select i1 %.not168, i32 0, i32 %i.cc
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds i8, ptr %i.ca, i64 %i.ce
  %i.cg = shl nsw i32 %i.cc, 1
  %i.ch = load i32, ptr %i.bi, align 4, !tbaa !41
  %i.ci = load i32, ptr %i.bk, align 4, !tbaa !41
  %i.cj = zext i1 %.not168 to i32
  %i.ck = add i32 %i.ci, %i.cj
  %i.cl = sdiv i32 %i.ck, 2
  tail call void @av_image_copy_plane(ptr noundef %i.bx, i32 noundef %i.by, ptr noundef %i.cf, i32 noundef %i.cg, i32 noundef %i.ch, i32 noundef %i.cl) #5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cm = load i32, ptr %i.af, align 8, !tbaa !40
  %i.cn = sext i32 %i.cm to i64
  %i.co = icmp slt i64 %indvars.iv.next, %i.cn
  br i1 %i.co, label %bb.f, label %._crit_edge, !llvm.loop !47

._crit_edge:                                      ; preds = %bb.f, %.preheader175
  %i.cp = load ptr, ptr %i.ac, align 8, !tbaa !29
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 276 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !62 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !61
  %.not163 = icmp eq i32 %i.ct, 0
  %i.cu = and i32 %i.cr, -25
  %i.cv = or disjoint i32 %i.cu, 8
  %i.cw = or i32 %i.cr, 24
  %storemerge = select i1 %.not163, i32 %i.cw, i32 %i.cv
  store i32 %storemerge, ptr %i.cq, align 4, !tbaa !62
  %i.cx = add nsw i32 %i.u, -49
  store i32 0, ptr %i.aa, align 4, !tbaa !59
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.d
  %.0143 = phi i32 [ %i.cx, %._crit_edge ], [ %i.v, %bb.d ] ; 3 uses
  %.0141 = phi i32 [ %i.ad, %._crit_edge ], [ 0, %bb.d ]
  %.0140 = phi i32 [ 1, %._crit_edge ], [ 0, %bb.d ] ; 2 uses
  %i.cy = icmp sgt i32 %.0143, 1
  br i1 %i.cy, label %.lr.ph187, label %._crit_edge188

.lr.ph187:                                        ; preds = %bb.g
  %i.cz = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.da = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.h, i64 84
  %i.dd = getelementptr inbounds nuw i8, ptr %i.h, i64 68
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 276
  %i.df = zext nneg i32 %.0140 to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph187, %._crit_edge183
  %indvars.iv208 = phi i64 [ %i.df, %.lr.ph187 ], [ %indvars.iv.next209, %._crit_edge183 ] ; 2 uses
  %.1144184 = phi i32 [ %.0143, %.lr.ph187 ], [ %i.ei, %._crit_edge183 ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv208 ; 3 uses
  %i.dh = tail call i32 @ff_inlink_make_frame_writable(ptr noundef %0, ptr noundef nonnull %i.dg) #5 ; 3 uses
  %i.di = icmp slt i32 %i.dh, 0
  br i1 %i.di, label %.thread, label %.preheader174

.preheader174:                                    ; preds = %bb.h
  %i.dj = load i32, ptr %i.da, align 8, !tbaa !40
  %i.dk = icmp sgt i32 %i.dj, 0
  br i1 %i.dk, label %.lr.ph182, label %._crit_edge183

.lr.ph182:                                        ; preds = %.preheader174, %.lr.ph182
  %indvars.iv205 = phi i64 [ %indvars.iv.next206, %.lr.ph182 ], [ 0, %.preheader174 ] ; 7 uses
  %i.dl = load ptr, ptr %i.dg, align 8, !tbaa !29 ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv205
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !60
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 64
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv205
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !41
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv205
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !60
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv205
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !41
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv205
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !41
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv205
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !41
  tail call void @av_image_copy_plane(ptr noundef %i.dn, i32 noundef %i.dq, ptr noundef %i.ds, i32 noundef %i.du, i32 noundef %i.dw, i32 noundef %i.dy) #5
  %indvars.iv.next206 = add nuw nsw i64 %indvars.iv205, 1 ; 2 uses
  %i.dz = load i32, ptr %i.da, align 8, !tbaa !40
  %i.ea = sext i32 %i.dz to i64
  %i.eb = icmp slt i64 %indvars.iv.next206, %i.ea
  br i1 %i.eb, label %.lr.ph182, label %._crit_edge183, !llvm.loop !48

._crit_edge183:                                   ; preds = %.lr.ph182, %.preheader174
  %i.ec = load i32, ptr %i.de, align 4, !tbaa !62
  %i.ed = and i32 %i.ec, 24
  %i.ee = load ptr, ptr %i.dg, align 8, !tbaa !29
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 276 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !62
  %i.eh = or i32 %i.eg, %i.ed
  store i32 %i.eh, ptr %i.ef, align 4, !tbaa !62
  %indvars.iv.next209 = add nuw nsw i64 %indvars.iv208, 1 ; 2 uses
  %i.ei = add nsw i32 %.1144184, -2               ; 2 uses
  %2 = icmp sgt i32 %.1144184, 3
  br i1 %2, label %bb.h, label %._crit_edge188.loopexit, !llvm.loop !49

._crit_edge188.loopexit:                          ; preds = %._crit_edge183
  %3 = trunc nuw nsw i64 %indvars.iv.next209 to i32
  br label %._crit_edge188

._crit_edge188:                                   ; preds = %._crit_edge188.loopexit, %bb.g
  %.1144.lcssa = phi i32 [ %.0143, %bb.g ], [ %i.ei, %._crit_edge188.loopexit ]
  %.1142.lcssa = phi i32 [ %.0141, %bb.g ], [ %i.dh, %._crit_edge188.loopexit ]
  %.1.lcssa = phi i32 [ %.0140, %bb.g ], [ %3, %._crit_edge188.loopexit ] ; 2 uses
  %i.ej = icmp eq i32 %.1144.lcssa, 1
  br i1 %i.ej, label %.preheader, label %bb.j

.preheader:                                       ; preds = %._crit_edge188
  %i.ek = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !40
  %i.em = icmp sgt i32 %i.el, 0
  br i1 %i.em, label %.lr.ph192, label %._crit_edge193

.lr.ph192:                                        ; preds = %.preheader
  %i.en = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.h, i64 84
  %i.eq = getelementptr inbounds nuw i8, ptr %i.h, i64 68
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph192, %bb.i
  %indvars.iv211 = phi i64 [ 0, %.lr.ph192 ], [ %indvars.iv.next212, %bb.i ] ; 7 uses
  %i.er = load ptr, ptr %i.en, align 8, !tbaa !42 ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %indvars.iv211
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !60
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 64
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %indvars.iv211
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !41
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv211
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !60
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv211
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !41
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %indvars.iv211
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !41
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv211
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !41
  tail call void @av_image_copy_plane(ptr noundef %i.et, i32 noundef %i.ew, ptr noundef %i.ey, i32 noundef %i.fa, i32 noundef %i.fc, i32 noundef %i.fe) #5
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1 ; 2 uses
  %i.ff = load i32, ptr %i.ek, align 8, !tbaa !40
  %i.fg = sext i32 %i.ff to i64
  %i.fh = icmp slt i64 %indvars.iv.next212, %i.fg
  br i1 %i.fh, label %bb.i, label %._crit_edge193, !llvm.loop !50

._crit_edge193:                                   ; preds = %bb.i, %.preheader
  store i32 1, ptr %i.aa, align 4, !tbaa !59
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge193, %._crit_edge188
  %.not199 = icmp eq i32 %.1.lcssa, 0
  br i1 %.not199, label %.thread, label %.lr.ph196

.lr.ph196:                                        ; preds = %bb.j
  %i.fi = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.fj = getelementptr inbounds nuw i8, ptr %i.f, i64 248
  %i.fk = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.fl = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  %wide.trip.count.a = zext i32 %.1.lcssa to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph196, %bb.l
  %indvars.iv214 = phi i64 [ 0, %.lr.ph196 ], [ %indvars.iv.next215, %bb.l ] ; 2 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %indvars.iv214
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !29
  %i.fo = tail call ptr @av_frame_clone(ptr noundef %i.fn) #5 ; 5 uses
  %.not164.not = icmp eq ptr %i.fo, null
  br i1 %.not164.not, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 276 ; 3 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !62
  %i.fr = tail call i32 @av_frame_copy_props(ptr noundef nonnull %i.fo, ptr noundef %1) #5 ; 0 uses
  %i.fs = load i32, ptr %i.fp, align 4, !tbaa !62
  %i.ft = and i32 %i.fs, -25
  %i.fu = and i32 %i.fq, 24
  %storemerge172 = or disjoint i32 %i.ft, %i.fu
  store i32 %storemerge172, ptr %i.fp, align 4, !tbaa !62
  %i.fv = load i64, ptr %i.i, align 8, !tbaa !27  ; 2 uses
  %i.fw = icmp eq i64 %i.fv, -9223372036854775808
  %spec.select = select i1 %i.fw, i64 0, i64 %i.fv
  %i.fx = load i64, ptr %i.fj, align 8, !tbaa !64
  %i.fy = load i32, ptr %i.fk, align 8, !tbaa !65
  %i.fz = sext i32 %i.fy to i64
  %i.ga = load i32, ptr %i.fl, align 4, !tbaa !66
  %i.gb = sext i32 %i.ga to i64
  %i.gc = tail call i64 @av_rescale(i64 noundef %i.fx, i64 noundef %i.fz, i64 noundef %i.gb) #6
  %i.gd = add nsw i64 %i.gc, %spec.select
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fo, i64 136
  store i64 %i.gd, ptr %i.ge, align 8, !tbaa !57
  %i.gf = tail call i32 @ff_filter_frame(ptr noundef %i.f, ptr noundef nonnull %i.fo) #5
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1 ; 2 uses
  %exitcond.not.a = icmp eq i64 %indvars.iv.next215, %wide.trip.count.a
  br i1 %exitcond.not.a, label %.thread, label %bb.k, !llvm.loop !51

.thread:                                          ; preds = %bb.h, %bb.l, %bb.k, %bb.j, %bb.e, %bb.c
  %.2151 = phi i32 [ 0, %bb.c ], [ %i.ad, %bb.e ], [ -12, %bb.k ], [ %.1142.lcssa, %bb.j ], [ %i.gf, %bb.l ], [ %i.dh, %bb.h ]
  call void @av_frame_free(ptr noundef nonnull %i.a) #5
  ret i32 %.2151
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @config_input(ptr noundef %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !68
  %i.g = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.f) #5
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !69
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !70
  %i.l = tail call ptr @ff_get_video_buffer(ptr noundef %0, i32 noundef %i.i, i32 noundef %i.k) #5 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  store ptr %i.l, ptr %i.m, align 8, !tbaa !42
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !28
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = load i32, ptr %i.n, align 8, !tbaa !28
  %i.s = sext i32 %i.r to i64
  %i.t = icmp slt i64 %indvars.iv.next, %i.s
  br i1 %i.t, label %bb.c, label %._crit_edge, !llvm.loop !67

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.u = load i32, ptr %i.h, align 8, !tbaa !69
  %i.v = load i32, ptr %i.j, align 4, !tbaa !70
  %i.w = tail call ptr @ff_get_video_buffer(ptr noundef nonnull %0, i32 noundef %i.u, i32 noundef %i.v) #5 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  store ptr %i.w, ptr %i.x, align 8, !tbaa !29
  %.not36 = icmp eq ptr %i.w, null
  br i1 %.not36, label %.loopexit, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  %i.z = load i32, ptr %i.e, align 4, !tbaa !68
  %i.aa = load i32, ptr %i.h, align 8, !tbaa !69
  %i.ab = tail call i32 @av_image_fill_linesizes(ptr noundef nonnull %i.y, i32 noundef %i.z, i32 noundef %i.aa) #5 ; 2 uses
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.ad = load i32, ptr %i.j, align 4, !tbaa !70
  %i.ae = sub nsw i32 0, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 10
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !72
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = ashr i32 %i.ae, %i.ah
  %i.aj = sub nsw i32 0, %i.ai                    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  store i32 %i.aj, ptr %i.al, align 4, !tbaa !41
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i32 %i.aj, ptr %i.am, align 8, !tbaa !41
  %i.an = load i32, ptr %i.j, align 4, !tbaa !70  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !41
  store i32 %i.an, ptr %i.ak, align 4, !tbaa !41
  %i.ap = load i32, ptr %i.e, align 4, !tbaa !68
  %i.aq = tail call i32 @av_pix_fmt_count_planes(i32 noundef %i.ap) #5
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !40
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %._crit_edge, %bb.a, %bb.d
  %.034 = phi i32 [ -12, %bb.a ], [ %i.ab, %._crit_edge ], [ 0, %bb.d ], [ -12, %bb.c ]
  ret i32 %.034
}

declare void @av_frame_free(ptr noundef) local_unnamed_addr #2

declare i32 @ff_inlink_make_frame_writable(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @av_image_copy_plane(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @av_frame_clone(ptr noundef) local_unnamed_addr #2

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #2

declare ptr @ff_get_video_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @av_image_fill_linesizes(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @av_pix_fmt_count_planes(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 -22, 1) i32 @config_output(ptr nofree noundef captures(none) %0) #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !73     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 280 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !41   ; 3 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 284
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !41 ; 3 uses
  %i.g = icmp ne i32 %i.f, 0
  %i.h = icmp ne i32 %.sroa.10.0.copyload, 0
  %or.cond = select i1 %i.g, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.a, i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %i.f, i32 noundef %.sroa.10.0.copyload) #5
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.07.0.copyload = load i64, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %.sroa.01.0.insert.insert.i46 = tail call i64 @llvm.fshl.i64(i64 %i.l, i64 %i.l, i64 32)
  %i.m = tail call i64 @av_mul_q(i64 %.sroa.07.0.copyload, i64 %.sroa.01.0.insert.insert.i46) #6 ; 4 uses
  %.sroa.07.0.extract.trunc = trunc i64 %i.m to i32
  %.sroa.10.0.extract.shift = lshr i64 %i.m, 32
  %.sroa.10.0.extract.trunc = trunc nuw i64 %.sroa.10.0.extract.shift to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.a, i32 noundef 40, ptr noundef nonnull @.str.4, i32 noundef %i.f, i32 noundef %.sroa.10.0.copyload, i32 noundef %.sroa.07.0.extract.trunc, i32 noundef %.sroa.10.0.extract.trunc) #5
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8
  %i.r = load i64, ptr %i.k, align 8
  %i.s = tail call i64 @av_mul_q(i64 %i.q, i64 %i.r) #6 ; 3 uses
  store i64 %i.s, ptr %i.o, align 8, !tbaa !41
  %i.t = load i32, ptr %i.p, align 8, !tbaa !75
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 100
  %i.v = load i32, ptr %i.u, align 4, !tbaa !76
  %i.w = trunc i64 %i.s to i32
  %i.x = lshr i64 %i.s, 32
  %i.y = trunc nuw i64 %i.x to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.a, i32 noundef 40, ptr noundef nonnull @.str.5, i32 noundef %i.t, i32 noundef %i.v, i32 noundef %i.w, i32 noundef %i.y) #5
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.aa = load i64, ptr %i.o, align 8
  %i.ab = tail call i64 @av_mul_q(i64 %i.m, i64 %i.aa) #6 ; 2 uses
  %.sroa.01.0.insert.insert.i = tail call i64 @llvm.fshl.i64(i64 %i.ab, i64 %i.ab, i64 32)
  store i64 %.sroa.01.0.insert.insert.i, ptr %i.z, align 8, !tbaa !41
end_hunk_0
