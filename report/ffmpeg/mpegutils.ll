Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mpegutils?download=true
inline.NumInlined: 7
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@ff_draw_horiz_band:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.g = load i32, ptr %i.f, align 4, !tbaa !35
  %i.h = sub nsw i32 %i.g, %.038
  %i.i = tail call i32 @llvm.smin.i32(i32 %.039, i32 %i.h)
  %i.j = icmp ne i32 %6, 0
  %or.cond = and i1 %i.d, %i.j
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.l = load i32, ptr %i.k, align 8, !tbaa !36
  %i.m = and i32 %i.l, 2
  %.not42 = icmp eq i32 %i.m, 0
  br i1 %.not42, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.o = load i32, ptr %i.n, align 8, !tbaa !32
  %i.p = icmp eq i32 %i.o, 3
  %i.q = icmp ne i32 %7, 0
  %or.cond3 = or i1 %i.q, %i.p
  br i1 %or.cond3, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.s = load i32, ptr %i.r, align 8, !tbaa !36
  %i.t = and i32 %i.s, 1
  %.not43 = icmp eq i32 %i.t, 0
  br i1 %.not43, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.not44 = icmp eq ptr %2, null
  br i1 %.not44, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d, %bb.e
  %.037 = phi ptr [ %1, %bb.d ], [ %1, %bb.e ], [ %2, %bb.f ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.v = load i32, ptr %i.u, align 8, !tbaa !37
  %i.w = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.v) #5
  %i.x = getelementptr inbounds nuw i8, ptr %.037, i64 64
  %i.y = load i32, ptr %i.x, align 8, !tbaa !33
  %i.z = mul nsw i32 %i.y, %.038
  store i32 %i.z, ptr %i.a, align 16, !tbaa !33
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 10
  %i.ab = load i8, ptr %i.aa, align 2, !tbaa !39
  %i.ac = zext nneg i8 %i.ab to i32
  %i.ad = ashr i32 %.038, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %.037, i64 68
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !33
  %i.ag = mul nsw i32 %i.ad, %i.af                ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !33
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.ag, ptr %i.ai, align 4, !tbaa !33
  %scevgep = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %scevgep, i8 0, i64 20, i1 false), !tbaa !33
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !34
  call void %i.aj(ptr noundef nonnull %0, ptr noundef nonnull %.037, ptr noundef nonnull %i.a, i32 noundef %.038, i32 noundef %5, i32 noundef %i.i) #5
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.c, %bb.a, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @ff_print_debug_info2(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %9 = alloca %struct.AVBPrint, align 8           ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !46
  %i.d = icmp ne i32 %i.c, 27                     ; 4 uses
  %i.e = select i1 %i.d, i32 4096, i32 12288      ; 4 uses
  %i.f = select i1 %i.d, i32 8192, i32 49152      ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 788
  %i.h = load i32, ptr %i.g, align 4, !tbaa !47
  %i.i = trunc i32 %i.h to i1
  %i.j = icmp ne ptr %2, null                     ; 2 uses
  %or.cond = and i1 %i.j, %i.i
  br i1 %or.cond, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %4, align 8, !tbaa !48
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = add nsw i32 %8, 1
  %i.m = shl nuw i32 1, %i.l                      ; 2 uses
  %i.n = select i1 %i.d, i32 1, i32 2             ; 3 uses
  %i.o = shl i32 %5, %i.n
  %i.p = zext i1 %i.d to i32
  %i.q = or disjoint i32 %i.o, %i.p               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.r = mul nsw i32 %6, %5
  %i.s = sext i32 %i.r to i64
  %i.t = tail call ptr @av_malloc_array(i64 noundef %i.s, i64 noundef 320) #5 ; 20 uses
  store ptr %i.t, ptr %i.a, align 8, !tbaa !50
  %.not214 = icmp eq ptr %i.t, null
  br i1 %.not214, label %bb.i, label %.preheader251

.preheader251:                                    ; preds = %bb.c
  %i.u = icmp sgt i32 %6, 0
  br i1 %i.u, label %.preheader250.lr.ph, label %.critedge

.preheader250.lr.ph:                              ; preds = %.preheader251
  %factor.op.mul271 = shl i32 %i.q, 1
  %i.v = icmp sgt i32 %5, 0
  %i.w = add nsw i32 %i.n, -1                     ; 16 uses
  %i.x = trunc i32 %i.m to i16                    ; 18 uses
  br i1 %i.v, label %.preheader250.us.preheader, label %.critedge

.preheader250.us.preheader:                       ; preds = %.preheader250.lr.ph
  %i.y = sext i32 %7 to i64
  %i.z = zext i32 %i.q to i64                     ; 9 uses
  %wide.trip.count364 = zext nneg i32 %6 to i64
  %wide.trip.count = zext nneg i32 %5 to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ae = insertelement <2 x i32> poison, i32 %i.m, i64 0
  %i.af = shufflevector <2 x i32> %i.ae, <2 x i32> poison, <2 x i32> zeroinitializer ; 18 uses
  br label %.preheader250.us

.preheader250.us:                                 ; preds = %.preheader250.us.preheader, %._crit_edge.us
  %indvars.iv353 = phi i64 [ 0, %.preheader250.us.preheader ], [ %indvars.iv.next354, %._crit_edge.us ] ; 6 uses
  %.0200274.us = phi i32 [ 0, %.preheader250.us.preheader ], [ %.us-phi.us, %._crit_edge.us ]
  %i.ag = mul nsw i64 %indvars.iv353, %i.y
  %i.ah = trunc nuw nsw i64 %indvars.iv353 to i32
  %factor.op.mul.reass.us = mul i32 %factor.op.mul271, %i.ah
  %i.ai = shl nuw nsw i64 %indvars.iv353, 4       ; 6 uses
  %i.aj = or disjoint i64 %i.ai, 4                ; 8 uses
  %i.ak = shl nuw nsw i64 %indvars.iv353, 1       ; 8 uses
  %i.al = trunc i64 %i.ai to i32
  %i.am = or disjoint i32 %i.al, 8                ; 2 uses
  %i.an = trunc i32 %i.am to i16                  ; 6 uses
  %i.ao = mul i64 %indvars.iv353, %i.z
  %invariant.gep = getelementptr [4 x i8], ptr %2, i64 %i.ag
  %i.ap = mul i64 %i.ak, %i.z                     ; 2 uses
  %i.aq = trunc nsw i64 %i.aj to i32
  %i.ar = trunc i64 %i.aj to i16                  ; 2 uses
  %i.as = or disjoint i64 %i.ak, 1
  %i.at = mul i64 %i.as, %i.z                     ; 2 uses
  %i.au = trunc i64 %i.ai to i32
  %i.av = or disjoint i32 %i.au, 12               ; 2 uses
  %i.aw = trunc i32 %i.av to i16                  ; 2 uses
  %i.ax = mul i64 %i.ak, %i.z                     ; 2 uses
  %i.ay = trunc nsw i64 %i.aj to i32
  %i.az = trunc i64 %i.aj to i16                  ; 2 uses
  %i.ba = or disjoint i64 %i.ak, 1
  %i.bb = mul i64 %i.ba, %i.z                     ; 2 uses
  %i.bc = trunc i64 %i.ai to i32
  %i.bd = or disjoint i32 %i.bc, 12               ; 2 uses
  %i.be = trunc i32 %i.bd to i16                  ; 2 uses
  %i.bf = mul i64 %i.ak, %i.z
  %i.bg = trunc nsw i64 %i.aj to i32
  %i.bh = trunc i64 %i.aj to i16
  %i.bi = or disjoint i64 %i.ak, 1
  %i.bj = mul i64 %i.bi, %i.z
  %i.bk = trunc i64 %i.ai to i32
  %i.bl = or disjoint i32 %i.bk, 12               ; 2 uses
  %i.bm = trunc i32 %i.bl to i16
  %i.bn = mul i64 %i.ak, %i.z
  %i.bo = trunc nsw i64 %i.aj to i32
  %i.bp = trunc i64 %i.aj to i16
  %i.bq = or disjoint i64 %i.ak, 1
  %i.br = mul i64 %i.bq, %i.z
  %i.bs = trunc i64 %i.ai to i32
  %i.bt = or disjoint i32 %i.bs, 12               ; 2 uses
  %i.bu = trunc i32 %i.bt to i16
  %i.bv = insertelement <2 x i32> poison, i32 %i.am, i64 1 ; 6 uses
  %i.bw = insertelement <2 x i32> poison, i32 %i.ay, i64 1 ; 2 uses
  %i.bx = insertelement <2 x i32> poison, i32 %i.bd, i64 1 ; 2 uses
  %i.by = insertelement <2 x i32> poison, i32 %i.aq, i64 1 ; 2 uses
  %i.bz = insertelement <2 x i32> poison, i32 %i.av, i64 1 ; 2 uses
  %i.ca = insertelement <2 x i32> poison, i32 %i.bg, i64 1
  %i.cb = insertelement <2 x i32> poison, i32 %i.bl, i64 1
  %i.cc = insertelement <2 x i32> poison, i32 %i.bo, i64 1
  %i.cd = insertelement <2 x i32> poison, i32 %i.bt, i64 1
  br label %bb.d

bb.d:                                             ; preds = %.preheader250.us, %.split268.us283
  %indvars.iv = phi i64 [ 0, %.preheader250.us ], [ %indvars.iv.next343, %.split268.us283 ] ; 5 uses
  %.1201272.us = phi i32 [ %.0200274.us, %.preheader250.us ], [ %.us-phi.us, %.split268.us283 ] ; 12 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ce = load i32, ptr %gep, align 4, !tbaa !33
  %.fr316 = freeze i32 %i.ce                      ; 10 uses
  %i.cf = and i32 %.fr316, 64
  %.not224.us = icmp eq i32 %i.cf, 0
  %i.cg = shl nuw nsw i64 %indvars.iv, 4          ; 6 uses
  %10 = shl nuw nsw i64 %indvars.iv, 1            ; 11 uses
  %11 = or disjoint i64 %i.cg, 8                  ; 2 uses
  %i.ch = lshr i32 %.fr316, 7
  %i.ci = and i32 %i.ch, 1                        ; 8 uses
  %i.cj = and i32 %.fr316, 32
  %.not.i232.us = icmp eq i32 %i.cj, 0            ; 2 uses
  %i.ck = select i1 %.not.i232.us, i8 16, i8 8    ; 4 uses
  %i.cl = trunc nsw i64 %11 to i32                ; 6 uses
  %12 = trunc i64 %11 to i16                      ; 6 uses
  %13 = or disjoint i64 %i.cg, 4                  ; 8 uses
  %i.cm = trunc nsw i64 %10 to i32
  %i.cn = add i32 %factor.op.mul.reass.us, %i.cm  ; 4 uses
  %i.co = add i64 %indvars.iv, %i.ao
  %i.cp = trunc i64 %i.co to i32
  %i.cq = shl i32 %i.cp, %i.n
  %i.cr = sext i32 %i.cq to i64                   ; 2 uses
  br i1 %.not224.us, label %.split.us.us, label %.split.us278.preheader

.split.us278.preheader:                           ; preds = %bb.d
  %i.cs = and i32 %i.e, %.fr316
  %.not223.us281 = icmp eq i32 %i.cs, 0
  br i1 %.not223.us281, label %.loopexit249.us, label %.preheader248.us

.preheader248.us:                                 ; preds = %.split.us278.preheader
  %i.ct = load ptr, ptr %4, align 8, !tbaa !48    ; 4 uses
  %i.cu = sext i32 %.1201272.us to i64            ; 4 uses
  %i.cv = add i64 %10, %i.ap
  %i.cw = trunc i64 %i.cv to i32
  %i.cx = shl i32 %i.cw, %i.w
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.cy
  %i.da = getelementptr inbounds [40 x i8], ptr %i.t, i64 %i.cu ; 9 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  store i8 8, ptr %i.db, align 4, !tbaa !53
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 5
  store i8 8, ptr %i.dc, align 1, !tbaa !54
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.df = trunc nsw i64 %13 to i32                ; 2 uses
  %i.dg = trunc i64 %13 to i16                    ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 10
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  %i.dj = getelementptr inbounds nuw i8, ptr %i.da, i64 6
  %i.dk = load <2 x i16>, ptr %i.cz, align 2, !tbaa !55
  %i.dl = sext <2 x i16> %i.dk to <2 x i32>       ; 2 uses
  store <2 x i32> %i.dl, ptr %i.dd, align 8, !tbaa !33
  store i16 %i.x, ptr %i.de, align 8, !tbaa !56
  store i16 %i.dg, ptr %i.dh, align 2, !tbaa !57
  store i16 %i.ar, ptr %i.di, align 4, !tbaa !58
  %i.dm = sdiv <2 x i32> %i.dl, %i.af
  %i.dn = insertelement <2 x i32> %i.by, i32 %i.df, i64 0
  %i.do = add nsw <2 x i32> %i.dm, %i.dn
  %i.dp = trunc <2 x i32> %i.do to <2 x i16>
  store <2 x i16> %i.dp, ptr %i.dj, align 2, !tbaa !55
  store i32 -1, ptr %i.da, align 8, !tbaa !59
  %i.dq = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store i64 0, ptr %i.dq, align 8, !tbaa !60
  %i.dr = or disjoint i64 %10, 1                  ; 2 uses
  %i.ds = add i64 %i.dr, %i.ap
  %i.dt = trunc i64 %i.ds to i32
  %i.du = shl i32 %i.dt, %i.w
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.dv
  %i.dx = getelementptr [40 x i8], ptr %i.t, i64 %i.cu ; 9 uses
  %i.dy = getelementptr i8, ptr %i.dx, i64 40
  %i.dz = getelementptr i8, ptr %i.dx, i64 44
  store i8 8, ptr %i.dz, align 4, !tbaa !53
  %i.ea = getelementptr i8, ptr %i.dx, i64 45
  store i8 8, ptr %i.ea, align 1, !tbaa !54
  %i.eb = getelementptr i8, ptr %i.dx, i64 64
  %i.ec = getelementptr i8, ptr %i.dx, i64 72
  %i.ed = trunc i64 %i.cg to i32
  %i.ee = or disjoint i32 %i.ed, 12               ; 3 uses
  %i.ef = trunc i32 %i.ee to i16                  ; 2 uses
  %i.eg = getelementptr i8, ptr %i.dx, i64 50
  %i.eh = getelementptr i8, ptr %i.dx, i64 52
  %i.ei = getelementptr i8, ptr %i.dx, i64 46
  %i.ej = load <2 x i16>, ptr %i.dw, align 2, !tbaa !55
  %i.ek = sext <2 x i16> %i.ej to <2 x i32>       ; 2 uses
  store <2 x i32> %i.ek, ptr %i.eb, align 8, !tbaa !33
  store i16 %i.x, ptr %i.ec, align 8, !tbaa !56
  store i16 %i.ef, ptr %i.eg, align 2, !tbaa !57
  store i16 %i.ar, ptr %i.eh, align 4, !tbaa !58
  %i.el = sdiv <2 x i32> %i.ek, %i.af
  %i.em = insertelement <2 x i32> %i.by, i32 %i.ee, i64 0
  %i.en = add nsw <2 x i32> %i.el, %i.em
  %i.eo = trunc <2 x i32> %i.en to <2 x i16>
  store <2 x i16> %i.eo, ptr %i.ei, align 2, !tbaa !55
  store i32 -1, ptr %i.dy, align 8, !tbaa !59
  %i.ep = getelementptr i8, ptr %i.dx, i64 56
  store i64 0, ptr %i.ep, align 8, !tbaa !60
  %i.eq = add i64 %10, %i.at
  %i.er = trunc i64 %i.eq to i32
  %i.es = shl i32 %i.er, %i.w
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.et
  %i.ev = getelementptr [40 x i8], ptr %i.t, i64 %i.cu ; 9 uses
  %i.ew = getelementptr i8, ptr %i.ev, i64 80
  %i.ex = getelementptr i8, ptr %i.ev, i64 84
  store i8 8, ptr %i.ex, align 4, !tbaa !53
  %i.ey = getelementptr i8, ptr %i.ev, i64 85
  store i8 8, ptr %i.ey, align 1, !tbaa !54
  %i.ez = getelementptr i8, ptr %i.ev, i64 104
  %i.fa = getelementptr i8, ptr %i.ev, i64 112
  %i.fb = getelementptr i8, ptr %i.ev, i64 90
  %i.fc = getelementptr i8, ptr %i.ev, i64 92
  %i.fd = getelementptr i8, ptr %i.ev, i64 86
  %i.fe = load <2 x i16>, ptr %i.eu, align 2, !tbaa !55
  %i.ff = sext <2 x i16> %i.fe to <2 x i32>       ; 2 uses
  store <2 x i32> %i.ff, ptr %i.ez, align 8, !tbaa !33
  store i16 %i.x, ptr %i.fa, align 8, !tbaa !56
  store i16 %i.dg, ptr %i.fb, align 2, !tbaa !57
  store i16 %i.aw, ptr %i.fc, align 4, !tbaa !58
  %i.fg = sdiv <2 x i32> %i.ff, %i.af
  %i.fh = insertelement <2 x i32> %i.bz, i32 %i.df, i64 0
  %i.fi = add nsw <2 x i32> %i.fg, %i.fh
  %i.fj = trunc <2 x i32> %i.fi to <2 x i16>
  store <2 x i16> %i.fj, ptr %i.fd, align 2, !tbaa !55
  store i32 -1, ptr %i.ew, align 8, !tbaa !59
  %i.fk = getelementptr i8, ptr %i.ev, i64 96
  store i64 0, ptr %i.fk, align 8, !tbaa !60
  %i.fl = add i64 %i.dr, %i.at
  %i.fm = trunc i64 %i.fl to i32
  %i.fn = shl i32 %i.fm, %i.w
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.fo
  %i.fq = getelementptr [40 x i8], ptr %i.t, i64 %i.cu ; 9 uses
  %i.fr = getelementptr i8, ptr %i.fq, i64 120
  %i.fs = getelementptr i8, ptr %i.fq, i64 124
  store i8 8, ptr %i.fs, align 4, !tbaa !53
  %i.ft = getelementptr i8, ptr %i.fq, i64 125
  store i8 8, ptr %i.ft, align 1, !tbaa !54
  %i.fu = getelementptr i8, ptr %i.fq, i64 144
  %i.fv = getelementptr i8, ptr %i.fq, i64 152
  %i.fw = getelementptr i8, ptr %i.fq, i64 130
  %i.fx = getelementptr i8, ptr %i.fq, i64 132
  %i.fy = getelementptr i8, ptr %i.fq, i64 126
  %i.fz = load <2 x i16>, ptr %i.fp, align 2, !tbaa !55
  %i.ga = sext <2 x i16> %i.fz to <2 x i32>       ; 2 uses
  store <2 x i32> %i.ga, ptr %i.fu, align 8, !tbaa !33
  store i16 %i.x, ptr %i.fv, align 8, !tbaa !56
  store i16 %i.ef, ptr %i.fw, align 2, !tbaa !57
  store i16 %i.aw, ptr %i.fx, align 4, !tbaa !58
  %i.gb = sdiv <2 x i32> %i.ga, %i.af
  %i.gc = insertelement <2 x i32> %i.bz, i32 %i.ee, i64 0
  %i.gd = add nsw <2 x i32> %i.gb, %i.gc
  %i.ge = trunc <2 x i32> %i.gd to <2 x i16>
  store <2 x i16> %i.ge, ptr %i.fy, align 2, !tbaa !55
  store i32 -1, ptr %i.fr, align 8, !tbaa !59
  %i.gf = getelementptr i8, ptr %i.fq, i64 136
  store i64 0, ptr %i.gf, align 8, !tbaa !60
  %indvars.iv.next.3 = add i32 %.1201272.us, 4
  br label %.loopexit249.us

.loopexit249.us:                                  ; preds = %.preheader248.us, %.split.us278.preheader
  %.6.us282 = phi i32 [ %.1201272.us, %.split.us278.preheader ], [ %indvars.iv.next.3, %.preheader248.us ] ; 3 uses
  %i.gg = and i32 %i.f, %.fr316
  %.not223.us281.1 = icmp eq i32 %i.gg, 0
  br i1 %.not223.us281.1, label %.split268.us283, label %.preheader248.us.1

.preheader248.us.1:                               ; preds = %.loopexit249.us
  %i.gh = load ptr, ptr %i.aa, align 8, !tbaa !48 ; 4 uses
  %i.gi = sext i32 %.6.us282 to i64               ; 4 uses
  %i.gj = add i64 %10, %i.ax
  %i.gk = trunc i64 %i.gj to i32
  %i.gl = shl i32 %i.gk, %i.w
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.gh, i64 %i.gm
  %i.go = getelementptr inbounds [40 x i8], ptr %i.t, i64 %i.gi ; 9 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  store i8 8, ptr %i.gp, align 4, !tbaa !53
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 5
  store i8 8, ptr %i.gq, align 1, !tbaa !54
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 32
  %i.gt = trunc nsw i64 %13 to i32                ; 2 uses
  %i.gu = trunc i64 %13 to i16                    ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.go, i64 10
  %i.gw = getelementptr inbounds nuw i8, ptr %i.go, i64 12
  %i.gx = getelementptr inbounds nuw i8, ptr %i.go, i64 6
  %i.gy = load <2 x i16>, ptr %i.gn, align 2, !tbaa !55
  %i.gz = sext <2 x i16> %i.gy to <2 x i32>       ; 2 uses
  store <2 x i32> %i.gz, ptr %i.gr, align 8, !tbaa !33
  store i16 %i.x, ptr %i.gs, align 8, !tbaa !56
  store i16 %i.gu, ptr %i.gv, align 2, !tbaa !57
  store i16 %i.az, ptr %i.gw, align 4, !tbaa !58
  %i.ha = sdiv <2 x i32> %i.gz, %i.af
  %i.hb = insertelement <2 x i32> %i.bw, i32 %i.gt, i64 0
  %i.hc = add nsw <2 x i32> %i.ha, %i.hb
  %i.hd = trunc <2 x i32> %i.hc to <2 x i16>
  store <2 x i16> %i.hd, ptr %i.gx, align 2, !tbaa !55
  store i32 1, ptr %i.go, align 8, !tbaa !59
  %i.he = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  store i64 0, ptr %i.he, align 8, !tbaa !60
  %i.hf = or disjoint i64 %10, 1                  ; 2 uses
  %i.hg = add i64 %i.hf, %i.ax
  %i.hh = trunc i64 %i.hg to i32
  %i.hi = shl i32 %i.hh, %i.w
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.gh, i64 %i.hj
  %i.hl = getelementptr [40 x i8], ptr %i.t, i64 %i.gi ; 9 uses
  %i.hm = getelementptr i8, ptr %i.hl, i64 40
  %i.hn = getelementptr i8, ptr %i.hl, i64 44
  store i8 8, ptr %i.hn, align 4, !tbaa !53
  %i.ho = getelementptr i8, ptr %i.hl, i64 45
  store i8 8, ptr %i.ho, align 1, !tbaa !54
  %i.hp = getelementptr i8, ptr %i.hl, i64 64
  %i.hq = getelementptr i8, ptr %i.hl, i64 72
  %i.hr = trunc i64 %i.cg to i32
  %i.hs = or disjoint i32 %i.hr, 12               ; 3 uses
  %i.ht = trunc i32 %i.hs to i16                  ; 2 uses
  %i.hu = getelementptr i8, ptr %i.hl, i64 50
  %i.hv = getelementptr i8, ptr %i.hl, i64 52
  %i.hw = getelementptr i8, ptr %i.hl, i64 46
  %i.hx = load <2 x i16>, ptr %i.hk, align 2, !tbaa !55
  %i.hy = sext <2 x i16> %i.hx to <2 x i32>       ; 2 uses
  store <2 x i32> %i.hy, ptr %i.hp, align 8, !tbaa !33
  store i16 %i.x, ptr %i.hq, align 8, !tbaa !56
  store i16 %i.ht, ptr %i.hu, align 2, !tbaa !57
  store i16 %i.az, ptr %i.hv, align 4, !tbaa !58
  %i.hz = sdiv <2 x i32> %i.hy, %i.af
  %i.ia = insertelement <2 x i32> %i.bw, i32 %i.hs, i64 0
  %i.ib = add nsw <2 x i32> %i.hz, %i.ia
  %i.ic = trunc <2 x i32> %i.ib to <2 x i16>
  store <2 x i16> %i.ic, ptr %i.hw, align 2, !tbaa !55
  store i32 1, ptr %i.hm, align 8, !tbaa !59
  %i.id = getelementptr i8, ptr %i.hl, i64 56
  store i64 0, ptr %i.id, align 8, !tbaa !60
  %i.ie = add i64 %10, %i.bb
  %i.if = trunc i64 %i.ie to i32
  %i.ig = shl i32 %i.if, %i.w
  %i.ih = sext i32 %i.ig to i64
  %i.ii = getelementptr inbounds [4 x i8], ptr %i.gh, i64 %i.ih
  %i.ij = getelementptr [40 x i8], ptr %i.t, i64 %i.gi ; 9 uses
  %i.ik = getelementptr i8, ptr %i.ij, i64 80
  %i.il = getelementptr i8, ptr %i.ij, i64 84
  store i8 8, ptr %i.il, align 4, !tbaa !53
  %i.im = getelementptr i8, ptr %i.ij, i64 85
  store i8 8, ptr %i.im, align 1, !tbaa !54
  %i.in = getelementptr i8, ptr %i.ij, i64 104
  %i.io = getelementptr i8, ptr %i.ij, i64 112
  %i.ip = getelementptr i8, ptr %i.ij, i64 90
  %i.iq = getelementptr i8, ptr %i.ij, i64 92
  %i.ir = getelementptr i8, ptr %i.ij, i64 86
  %i.is = load <2 x i16>, ptr %i.ii, align 2, !tbaa !55
  %i.it = sext <2 x i16> %i.is to <2 x i32>       ; 2 uses
  store <2 x i32> %i.it, ptr %i.in, align 8, !tbaa !33
  store i16 %i.x, ptr %i.io, align 8, !tbaa !56
  store i16 %i.gu, ptr %i.ip, align 2, !tbaa !57
  store i16 %i.be, ptr %i.iq, align 4, !tbaa !58
  %i.iu = sdiv <2 x i32> %i.it, %i.af
  %i.iv = insertelement <2 x i32> %i.bx, i32 %i.gt, i64 0
  %i.iw = add nsw <2 x i32> %i.iu, %i.iv
  %i.ix = trunc <2 x i32> %i.iw to <2 x i16>
  store <2 x i16> %i.ix, ptr %i.ir, align 2, !tbaa !55
  store i32 1, ptr %i.ik, align 8, !tbaa !59
  %i.iy = getelementptr i8, ptr %i.ij, i64 96
  store i64 0, ptr %i.iy, align 8, !tbaa !60
  %i.iz = add i64 %i.hf, %i.bb
  %i.ja = trunc i64 %i.iz to i32
  %i.jb = shl i32 %i.ja, %i.w
  %i.jc = sext i32 %i.jb to i64
  %i.jd = getelementptr inbounds [4 x i8], ptr %i.gh, i64 %i.jc
  %i.je = getelementptr [40 x i8], ptr %i.t, i64 %i.gi ; 9 uses
  %i.jf = getelementptr i8, ptr %i.je, i64 120
  %i.jg = getelementptr i8, ptr %i.je, i64 124
  store i8 8, ptr %i.jg, align 4, !tbaa !53
  %i.jh = getelementptr i8, ptr %i.je, i64 125
  store i8 8, ptr %i.jh, align 1, !tbaa !54
  %i.ji = getelementptr i8, ptr %i.je, i64 144
  %i.jj = getelementptr i8, ptr %i.je, i64 152
  %i.jk = getelementptr i8, ptr %i.je, i64 130
  %i.jl = getelementptr i8, ptr %i.je, i64 132
  %i.jm = getelementptr i8, ptr %i.je, i64 126
  %i.jn = load <2 x i16>, ptr %i.jd, align 2, !tbaa !55
  %i.jo = sext <2 x i16> %i.jn to <2 x i32>       ; 2 uses
  store <2 x i32> %i.jo, ptr %i.ji, align 8, !tbaa !33
  store i16 %i.x, ptr %i.jj, align 8, !tbaa !56
  store i16 %i.ht, ptr %i.jk, align 2, !tbaa !57
  store i16 %i.be, ptr %i.jl, align 4, !tbaa !58
  %i.jp = sdiv <2 x i32> %i.jo, %i.af
  %i.jq = insertelement <2 x i32> %i.bx, i32 %i.hs, i64 0
  %i.jr = add nsw <2 x i32> %i.jp, %i.jq
  %i.js = trunc <2 x i32> %i.jr to <2 x i16>
  store <2 x i16> %i.js, ptr %i.jm, align 2, !tbaa !55
  store i32 1, ptr %i.jf, align 8, !tbaa !59
  %i.jt = getelementptr i8, ptr %i.je, i64 136
  store i64 0, ptr %i.jt, align 8, !tbaa !60
  %indvars.iv.next.3.1 = add i32 %.6.us282, 4
  br label %.split268.us283

.split.us.us:                                     ; preds = %bb.d
  %i.ju = and i32 %.fr316, 16
  %.not225.us = icmp eq i32 %i.ju, 0
  %i.jv = and i32 %i.e, %.fr316
  %.not223.us.us.us.us = icmp eq i32 %i.jv, 0     ; 3 uses
  br i1 %.not225.us, label %.split.us.split.us.us, label %.split.us.split.us285.preheader

.split.us.split.us285.preheader:                  ; preds = %.split.us.us
  br i1 %.not223.us.us.us.us, label %.loopexit247.us.us, label %.preheader246.us.us

.preheader246.us.us:                              ; preds = %.split.us.split.us285.preheader
  %i.jw = load ptr, ptr %4, align 8, !tbaa !48    ; 2 uses
  %i.jx = sext i32 %.1201272.us to i64            ; 2 uses
  %i.jy = add i64 %i.bf, %10
  %i.jz = trunc i64 %i.jy to i32
  %i.ka = shl i32 %i.jz, %i.w
  %i.kb = sext i32 %i.ka to i64
  %i.kc = getelementptr inbounds [4 x i8], ptr %i.jw, i64 %i.kb ; 2 uses
  %i.kd = load i16, ptr %i.kc, align 2, !tbaa !55
  %i.ke = sext i16 %i.kd to i32                   ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kc, i64 2
  %i.kg = load i16, ptr %i.kf, align 2, !tbaa !55
  %i.kh = sext i16 %i.kg to i32
  %spec.select.us.us = shl nsw i32 %i.kh, %i.ci   ; 2 uses
  %i.ki = getelementptr inbounds [40 x i8], ptr %i.t, i64 %i.jx ; 10 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 4
  store i8 %i.ck, ptr %i.kj, align 4, !tbaa !53
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ki, i64 5
  store i8 8, ptr %i.kk, align 1, !tbaa !54
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ki, i64 24
  store i32 %i.ke, ptr %i.kl, align 8, !tbaa !61
  %i.km = getelementptr inbounds nuw i8, ptr %i.ki, i64 28
  store i32 %spec.select.us.us, ptr %i.km, align 4, !tbaa !62
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ki, i64 32
  store i16 %i.x, ptr %i.kn, align 8, !tbaa !56
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ki, i64 10
  store i16 %12, ptr %i.ko, align 2, !tbaa !57
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ki, i64 12
  store i16 %i.bh, ptr %i.kp, align 4, !tbaa !58
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ki, i64 6
  %i.kr = insertelement <2 x i32> poison, i32 %i.ke, i64 0
  %i.ks = insertelement <2 x i32> %i.kr, i32 %spec.select.us.us, i64 1
  %i.kt = sdiv <2 x i32> %i.ks, %i.af
  %i.ku = insertelement <2 x i32> %i.ca, i32 %i.cl, i64 0
  %i.kv = add nsw <2 x i32> %i.kt, %i.ku
  %i.kw = trunc <2 x i32> %i.kv to <2 x i16>
  store <2 x i16> %i.kw, ptr %i.kq, align 2, !tbaa !55
  store i32 -1, ptr %i.ki, align 8, !tbaa !59
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  store i64 0, ptr %i.kx, align 8, !tbaa !60
  %i.ky = add i64 %i.bj, %10
  %i.kz = trunc i64 %i.ky to i32
  %i.la = shl i32 %i.kz, %i.w
  %i.lb = sext i32 %i.la to i64
  %i.lc = getelementptr inbounds [4 x i8], ptr %i.jw, i64 %i.lb ; 2 uses
  %i.ld = load i16, ptr %i.lc, align 2, !tbaa !55
  %i.le = sext i16 %i.ld to i32                   ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lc, i64 2
  %i.lg = load i16, ptr %i.lf, align 2, !tbaa !55
  %i.lh = sext i16 %i.lg to i32
  %spec.select.us.us.1 = shl nsw i32 %i.lh, %i.ci ; 2 uses
  %i.li = getelementptr [40 x i8], ptr %i.t, i64 %i.jx ; 10 uses
  %i.lj = getelementptr i8, ptr %i.li, i64 40
  %i.lk = getelementptr i8, ptr %i.li, i64 44
  store i8 %i.ck, ptr %i.lk, align 4, !tbaa !53
  %i.ll = getelementptr i8, ptr %i.li, i64 45
  store i8 8, ptr %i.ll, align 1, !tbaa !54
  %i.lm = getelementptr i8, ptr %i.li, i64 64
  store i32 %i.le, ptr %i.lm, align 8, !tbaa !61
  %i.ln = getelementptr i8, ptr %i.li, i64 68
  store i32 %spec.select.us.us.1, ptr %i.ln, align 4, !tbaa !62
  %i.lo = getelementptr i8, ptr %i.li, i64 72
  store i16 %i.x, ptr %i.lo, align 8, !tbaa !56
  %i.lp = getelementptr i8, ptr %i.li, i64 50
  store i16 %12, ptr %i.lp, align 2, !tbaa !57
  %i.lq = getelementptr i8, ptr %i.li, i64 52
  store i16 %i.bm, ptr %i.lq, align 4, !tbaa !58
  %i.lr = getelementptr i8, ptr %i.li, i64 46
  %i.ls = insertelement <2 x i32> poison, i32 %i.le, i64 0
  %i.lt = insertelement <2 x i32> %i.ls, i32 %spec.select.us.us.1, i64 1
  %i.lu = sdiv <2 x i32> %i.lt, %i.af
  %i.lv = insertelement <2 x i32> %i.cb, i32 %i.cl, i64 0
  %i.lw = add nsw <2 x i32> %i.lu, %i.lv
  %i.lx = trunc <2 x i32> %i.lw to <2 x i16>
  store <2 x i16> %i.lx, ptr %i.lr, align 2, !tbaa !55
  store i32 -1, ptr %i.lj, align 8, !tbaa !59
  %i.ly = getelementptr i8, ptr %i.li, i64 56
  store i64 0, ptr %i.ly, align 8, !tbaa !60
  %indvars.iv.next329.1 = add i32 %.1201272.us, 2
  br label %.loopexit247.us.us

.loopexit247.us.us:                               ; preds = %.preheader246.us.us, %.split.us.split.us285.preheader
  %.6.us.us289 = phi i32 [ %.1201272.us, %.split.us.split.us285.preheader ], [ %indvars.iv.next329.1, %.preheader246.us.us ] ; 3 uses
  %i.lz = and i32 %i.f, %.fr316
  %.not223.us.us288.1 = icmp eq i32 %i.lz, 0
  br i1 %.not223.us.us288.1, label %.split268.us283, label %.preheader246.us.us.1

.preheader246.us.us.1:                            ; preds = %.loopexit247.us.us
  %i.ma = load ptr, ptr %i.ab, align 8, !tbaa !48 ; 2 uses
  %i.mb = sext i32 %.6.us.us289 to i64            ; 2 uses
  %i.mc = add i64 %i.bn, %10
  %i.md = trunc i64 %i.mc to i32
  %i.me = shl i32 %i.md, %i.w
  %i.mf = sext i32 %i.me to i64
  %i.mg = getelementptr inbounds [4 x i8], ptr %i.ma, i64 %i.mf ; 2 uses
  %i.mh = load i16, ptr %i.mg, align 2, !tbaa !55
  %i.mi = sext i16 %i.mh to i32                   ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mg, i64 2
  %i.mk = load i16, ptr %i.mj, align 2, !tbaa !55
  %i.ml = sext i16 %i.mk to i32
  %spec.select.us.us.1333 = shl nsw i32 %i.ml, %i.ci ; 2 uses
  %i.mm = getelementptr inbounds [40 x i8], ptr %i.t, i64 %i.mb ; 10 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 4
  store i8 %i.ck, ptr %i.mn, align 4, !tbaa !53
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mm, i64 5
  store i8 8, ptr %i.mo, align 1, !tbaa !54
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mm, i64 24
  store i32 %i.mi, ptr %i.mp, align 8, !tbaa !61
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mm, i64 28
  store i32 %spec.select.us.us.1333, ptr %i.mq, align 4, !tbaa !62
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mm, i64 32
  store i16 %i.x, ptr %i.mr, align 8, !tbaa !56
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mm, i64 10
  store i16 %12, ptr %i.ms, align 2, !tbaa !57
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mm, i64 12
  store i16 %i.bp, ptr %i.mt, align 4, !tbaa !58
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mm, i64 6
  %i.mv = insertelement <2 x i32> poison, i32 %i.mi, i64 0
  %i.mw = insertelement <2 x i32> %i.mv, i32 %spec.select.us.us.1333, i64 1
  %i.mx = sdiv <2 x i32> %i.mw, %i.af
  %i.my = insertelement <2 x i32> %i.cc, i32 %i.cl, i64 0
  %i.mz = add nsw <2 x i32> %i.mx, %i.my
  %i.na = trunc <2 x i32> %i.mz to <2 x i16>
  store <2 x i16> %i.na, ptr %i.mu, align 2, !tbaa !55
  store i32 1, ptr %i.mm, align 8, !tbaa !59
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mm, i64 16
  store i64 0, ptr %i.nb, align 8, !tbaa !60
  %i.nc = add i64 %i.br, %10
  %i.nd = trunc i64 %i.nc to i32
  %i.ne = shl i32 %i.nd, %i.w
  %i.nf = sext i32 %i.ne to i64
  %i.ng = getelementptr inbounds [4 x i8], ptr %i.ma, i64 %i.nf ; 2 uses
  %i.nh = load i16, ptr %i.ng, align 2, !tbaa !55
  %i.ni = sext i16 %i.nh to i32                   ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ng, i64 2
  %i.nk = load i16, ptr %i.nj, align 2, !tbaa !55
  %i.nl = sext i16 %i.nk to i32
  %spec.select.us.us.1.1 = shl nsw i32 %i.nl, %i.ci ; 2 uses
  %i.nm = getelementptr [40 x i8], ptr %i.t, i64 %i.mb ; 10 uses
  %i.nn = getelementptr i8, ptr %i.nm, i64 40
  %i.no = getelementptr i8, ptr %i.nm, i64 44
  store i8 %i.ck, ptr %i.no, align 4, !tbaa !53
  %i.np = getelementptr i8, ptr %i.nm, i64 45
  store i8 8, ptr %i.np, align 1, !tbaa !54
  %i.nq = getelementptr i8, ptr %i.nm, i64 64
  store i32 %i.ni, ptr %i.nq, align 8, !tbaa !61
  %i.nr = getelementptr i8, ptr %i.nm, i64 68
  store i32 %spec.select.us.us.1.1, ptr %i.nr, align 4, !tbaa !62
  %i.ns = getelementptr i8, ptr %i.nm, i64 72
  store i16 %i.x, ptr %i.ns, align 8, !tbaa !56
  %i.nt = getelementptr i8, ptr %i.nm, i64 50
  store i16 %12, ptr %i.nt, align 2, !tbaa !57
  %i.nu = getelementptr i8, ptr %i.nm, i64 52
  store i16 %i.bu, ptr %i.nu, align 4, !tbaa !58
  %i.nv = getelementptr i8, ptr %i.nm, i64 46
  %i.nw = insertelement <2 x i32> poison, i32 %i.ni, i64 0
  %i.nx = insertelement <2 x i32> %i.nw, i32 %spec.select.us.us.1.1, i64 1
  %i.ny = sdiv <2 x i32> %i.nx, %i.af
  %i.nz = insertelement <2 x i32> %i.cd, i32 %i.cl, i64 0
  %i.oa = add nsw <2 x i32> %i.ny, %i.nz
  %i.ob = trunc <2 x i32> %i.oa to <2 x i16>
  store <2 x i16> %i.ob, ptr %i.nv, align 2, !tbaa !55
  store i32 1, ptr %i.nn, align 8, !tbaa !59
  %i.oc = getelementptr i8, ptr %i.nm, i64 56
  store i64 0, ptr %i.oc, align 8, !tbaa !60
  %indvars.iv.next329.1.1 = add i32 %.6.us.us289, 2
  br label %.split268.us283

.split.us.split.us.us:                            ; preds = %.split.us.us
  br i1 %.not.i232.us, label %.split.us.split.us.split.us.us.preheader, label %.split.us.split.us.split.us292.preheader

.split.us.split.us.split.us292.preheader:         ; preds = %.split.us.split.us.us
  br i1 %.not223.us.us.us.us, label %.loopexit.us.us.us, label %.preheader.us.us.us

.split.us.split.us.split.us.us.preheader:         ; preds = %.split.us.split.us.us
  br i1 %.not223.us.us.us.us, label %.split.us.split.us.split.us.us.1, label %bb.e

.preheader.us.us.us:                              ; preds = %.split.us.split.us.split.us292.preheader
  %i.od = load ptr, ptr %4, align 8, !tbaa !48    ; 2 uses
  %i.oe = sext i32 %.1201272.us to i64            ; 2 uses
  %i.of = shl i32 %i.cn, %i.w
  %i.og = sext i32 %i.of to i64
  %i.oh = getelementptr inbounds [4 x i8], ptr %i.od, i64 %i.og ; 2 uses
  %i.oi = load i16, ptr %i.oh, align 2, !tbaa !55
  %i.oj = sext i16 %i.oi to i32                   ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oh, i64 2
  %i.ol = load i16, ptr %i.ok, align 2, !tbaa !55
  %i.om = sext i16 %i.ol to i32
  %spec.select229.us.us.us = shl nsw i32 %i.om, %i.ci ; 2 uses
  %i.on = getelementptr inbounds [40 x i8], ptr %i.t, i64 %i.oe ; 10 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 4
  store i8 8, ptr %i.oo, align 4, !tbaa !53
  %i.op = getelementptr inbounds nuw i8, ptr %i.on, i64 5
  store i8 16, ptr %i.op, align 1, !tbaa !54
  %i.oq = getelementptr inbounds nuw i8, ptr %i.on, i64 24
  store i32 %i.oj, ptr %i.oq, align 8, !tbaa !61
  %i.or = getelementptr inbounds nuw i8, ptr %i.on, i64 28
  store i32 %spec.select229.us.us.us, ptr %i.or, align 4, !tbaa !62
  %i.os = getelementptr inbounds nuw i8, ptr %i.on, i64 32
  store i16 %i.x, ptr %i.os, align 8, !tbaa !56
  %i.ot = trunc nsw i64 %13 to i32
  %i.ou = trunc i64 %13 to i16
  %i.ov = getelementptr inbounds nuw i8, ptr %i.on, i64 10
  store i16 %i.ou, ptr %i.ov, align 2, !tbaa !57
  %i.ow = getelementptr inbounds nuw i8, ptr %i.on, i64 12
  store i16 %i.an, ptr %i.ow, align 4, !tbaa !58
  %i.ox = getelementptr inbounds nuw i8, ptr %i.on, i64 6
  %i.oy = insertelement <2 x i32> poison, i32 %i.oj, i64 0
  %i.oz = insertelement <2 x i32> %i.oy, i32 %spec.select229.us.us.us, i64 1
  %i.pa = sdiv <2 x i32> %i.oz, %i.af
  %i.pb = insertelement <2 x i32> %i.bv, i32 %i.ot, i64 0
  %i.pc = add nsw <2 x i32> %i.pa, %i.pb
  %i.pd = trunc <2 x i32> %i.pc to <2 x i16>
  store <2 x i16> %i.pd, ptr %i.ox, align 2, !tbaa !55
  store i32 -1, ptr %i.on, align 8, !tbaa !59
  %i.pe = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  store i64 0, ptr %i.pe, align 8, !tbaa !60
  %i.pf = or disjoint i32 %i.cn, 1
  %i.pg = shl i32 %i.pf, %i.w
  %i.ph = sext i32 %i.pg to i64
  %i.pi = getelementptr inbounds [4 x i8], ptr %i.od, i64 %i.ph ; 2 uses
  %i.pj = load i16, ptr %i.pi, align 2, !tbaa !55
  %i.pk = sext i16 %i.pj to i32                   ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pi, i64 2
  %i.pm = load i16, ptr %i.pl, align 2, !tbaa !55
  %i.pn = sext i16 %i.pm to i32
  %spec.select229.us.us.us.1 = shl nsw i32 %i.pn, %i.ci ; 2 uses
  %i.po = getelementptr [40 x i8], ptr %i.t, i64 %i.oe ; 10 uses
  %i.pp = getelementptr i8, ptr %i.po, i64 40
  %i.pq = getelementptr i8, ptr %i.po, i64 44
  store i8 8, ptr %i.pq, align 4, !tbaa !53
  %i.pr = getelementptr i8, ptr %i.po, i64 45
  store i8 16, ptr %i.pr, align 1, !tbaa !54
  %i.ps = getelementptr i8, ptr %i.po, i64 64
  store i32 %i.pk, ptr %i.ps, align 8, !tbaa !61
  %i.pt = getelementptr i8, ptr %i.po, i64 68
  store i32 %spec.select229.us.us.us.1, ptr %i.pt, align 4, !tbaa !62
  %i.pu = getelementptr i8, ptr %i.po, i64 72
  store i16 %i.x, ptr %i.pu, align 8, !tbaa !56
  %i.pv = trunc i64 %i.cg to i32
  %i.pw = or disjoint i32 %i.pv, 12               ; 2 uses
  %i.px = trunc i32 %i.pw to i16
  %i.py = getelementptr i8, ptr %i.po, i64 50
  store i16 %i.px, ptr %i.py, align 2, !tbaa !57
  %i.pz = getelementptr i8, ptr %i.po, i64 52
  store i16 %i.an, ptr %i.pz, align 4, !tbaa !58
  %i.qa = getelementptr i8, ptr %i.po, i64 46
  %i.qb = insertelement <2 x i32> poison, i32 %i.pk, i64 0
  %i.qc = insertelement <2 x i32> %i.qb, i32 %spec.select229.us.us.us.1, i64 1
  %i.qd = sdiv <2 x i32> %i.qc, %i.af
  %i.qe = insertelement <2 x i32> %i.bv, i32 %i.pw, i64 0
  %i.qf = add nsw <2 x i32> %i.qd, %i.qe
  %i.qg = trunc <2 x i32> %i.qf to <2 x i16>
  store <2 x i16> %i.qg, ptr %i.qa, align 2, !tbaa !55
  store i32 -1, ptr %i.pp, align 8, !tbaa !59
  %i.qh = getelementptr i8, ptr %i.po, i64 56
  store i64 0, ptr %i.qh, align 8, !tbaa !60
  %indvars.iv.next335.1 = add i32 %.1201272.us, 2
  br label %.loopexit.us.us.us

.loopexit.us.us.us:                               ; preds = %.preheader.us.us.us, %.split.us.split.us.split.us292.preheader
  %.6.us.us.us296 = phi i32 [ %.1201272.us, %.split.us.split.us.split.us292.preheader ], [ %indvars.iv.next335.1, %.preheader.us.us.us ] ; 3 uses
  %i.qi = and i32 %i.f, %.fr316
  %.not223.us.us.us295.1 = icmp eq i32 %i.qi, 0
  br i1 %.not223.us.us.us295.1, label %.split268.us283, label %.preheader.us.us.us.1

.preheader.us.us.us.1:                            ; preds = %.loopexit.us.us.us
  %i.qj = load ptr, ptr %i.ac, align 8, !tbaa !48 ; 2 uses
  %i.qk = sext i32 %.6.us.us.us296 to i64         ; 2 uses
  %i.ql = shl i32 %i.cn, %i.w
  %i.qm = sext i32 %i.ql to i64
  %i.qn = getelementptr inbounds [4 x i8], ptr %i.qj, i64 %i.qm ; 2 uses
  %i.qo = load i16, ptr %i.qn, align 2, !tbaa !55
  %i.qp = sext i16 %i.qo to i32                   ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qn, i64 2
  %i.qr = load i16, ptr %i.qq, align 2, !tbaa !55
  %i.qs = sext i16 %i.qr to i32
  %spec.select229.us.us.us.1339 = shl nsw i32 %i.qs, %i.ci ; 2 uses
  %i.qt = getelementptr inbounds [40 x i8], ptr %i.t, i64 %i.qk ; 10 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 4
  store i8 8, ptr %i.qu, align 4, !tbaa !53
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qt, i64 5
  store i8 16, ptr %i.qv, align 1, !tbaa !54
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qt, i64 24
  store i32 %i.qp, ptr %i.qw, align 8, !tbaa !61
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qt, i64 28
  store i32 %spec.select229.us.us.us.1339, ptr %i.qx, align 4, !tbaa !62
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qt, i64 32
  store i16 %i.x, ptr %i.qy, align 8, !tbaa !56
  %i.qz = trunc nsw i64 %13 to i32
  %i.ra = trunc i64 %13 to i16
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qt, i64 10
  store i16 %i.ra, ptr %i.rb, align 2, !tbaa !57
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qt, i64 12
  store i16 %i.an, ptr %i.rc, align 4, !tbaa !58
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qt, i64 6
  %i.re = insertelement <2 x i32> poison, i32 %i.qp, i64 0
  %i.rf = insertelement <2 x i32> %i.re, i32 %spec.select229.us.us.us.1339, i64 1
  %i.rg = sdiv <2 x i32> %i.rf, %i.af
  %i.rh = insertelement <2 x i32> %i.bv, i32 %i.qz, i64 0
  %i.ri = add nsw <2 x i32> %i.rg, %i.rh
  %i.rj = trunc <2 x i32> %i.ri to <2 x i16>
  store <2 x i16> %i.rj, ptr %i.rd, align 2, !tbaa !55
  store i32 1, ptr %i.qt, align 8, !tbaa !59
  %i.rk = getelementptr inbounds nuw i8, ptr %i.qt, i64 16
  store i64 0, ptr %i.rk, align 8, !tbaa !60
  %i.rl = or disjoint i32 %i.cn, 1
  %i.rm = shl i32 %i.rl, %i.w
  %i.rn = sext i32 %i.rm to i64
  %i.ro = getelementptr inbounds [4 x i8], ptr %i.qj, i64 %i.rn ; 2 uses
  %i.rp = load i16, ptr %i.ro, align 2, !tbaa !55
  %i.rq = sext i16 %i.rp to i32                   ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.ro, i64 2
  %i.rs = load i16, ptr %i.rr, align 2, !tbaa !55
  %i.rt = sext i16 %i.rs to i32
  %spec.select229.us.us.us.1.1 = shl nsw i32 %i.rt, %i.ci ; 2 uses
  %i.ru = getelementptr [40 x i8], ptr %i.t, i64 %i.qk ; 10 uses
  %i.rv = getelementptr i8, ptr %i.ru, i64 40
  %i.rw = getelementptr i8, ptr %i.ru, i64 44
  store i8 8, ptr %i.rw, align 4, !tbaa !53
  %i.rx = getelementptr i8, ptr %i.ru, i64 45
  store i8 16, ptr %i.rx, align 1, !tbaa !54
  %i.ry = getelementptr i8, ptr %i.ru, i64 64
  store i32 %i.rq, ptr %i.ry, align 8, !tbaa !61
  %i.rz = getelementptr i8, ptr %i.ru, i64 68
  store i32 %spec.select229.us.us.us.1.1, ptr %i.rz, align 4, !tbaa !62
  %i.sa = getelementptr i8, ptr %i.ru, i64 72
  store i16 %i.x, ptr %i.sa, align 8, !tbaa !56
  %i.sb = trunc i64 %i.cg to i32
  %i.sc = or disjoint i32 %i.sb, 12               ; 2 uses
  %i.sd = trunc i32 %i.sc to i16
  %i.se = getelementptr i8, ptr %i.ru, i64 50
  store i16 %i.sd, ptr %i.se, align 2, !tbaa !57
  %i.sf = getelementptr i8, ptr %i.ru, i64 52
  store i16 %i.an, ptr %i.sf, align 4, !tbaa !58
  %i.sg = getelementptr i8, ptr %i.ru, i64 46
  %i.sh = insertelement <2 x i32> poison, i32 %i.rq, i64 0
  %i.si = insertelement <2 x i32> %i.sh, i32 %spec.select229.us.us.us.1.1, i64 1
  %i.sj = sdiv <2 x i32> %i.si, %i.af
  %i.sk = insertelement <2 x i32> %i.bv, i32 %i.sc, i64 0
  %i.sl = add nsw <2 x i32> %i.sj, %i.sk
  %i.sm = trunc <2 x i32> %i.sl to <2 x i16>
  store <2 x i16> %i.sm, ptr %i.sg, align 2, !tbaa !55
  store i32 1, ptr %i.rv, align 8, !tbaa !59
  %i.sn = getelementptr i8, ptr %i.ru, i64 56
  store i64 0, ptr %i.sn, align 8, !tbaa !60
  %indvars.iv.next335.1.1 = add i32 %.6.us.us.us296, 2
  br label %.split268.us283

bb.e:                                             ; preds = %.split.us.split.us.split.us.us.preheader
  %i.so = load ptr, ptr %4, align 8, !tbaa !48
  %i.sp = getelementptr inbounds [4 x i8], ptr %i.so, i64 %i.cr
  %i.sq = sext i32 %.1201272.us to i64
  %i.sr = getelementptr inbounds [40 x i8], ptr %i.t, i64 %i.sq ; 9 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 4
  store i8 16, ptr %i.ss, align 4, !tbaa !53
  %i.st = getelementptr inbounds nuw i8, ptr %i.sr, i64 5
  store i8 16, ptr %i.st, align 1, !tbaa !54
  %i.su = getelementptr inbounds nuw i8, ptr %i.sr, i64 24
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sr, i64 32
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sr, i64 10
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sr, i64 12
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sr, i64 6
  %i.sz = load <2 x i16>, ptr %i.sp, align 2, !tbaa !55
  %i.ta = sext <2 x i16> %i.sz to <2 x i32>       ; 2 uses
  store <2 x i32> %i.ta, ptr %i.su, align 8, !tbaa !33
  store i16 %i.x, ptr %i.sv, align 8, !tbaa !56
  store i16 %12, ptr %i.sw, align 2, !tbaa !57
  store i16 %i.an, ptr %i.sx, align 4, !tbaa !58
  %i.tb = sdiv <2 x i32> %i.ta, %i.af
  %i.tc = insertelement <2 x i32> %i.bv, i32 %i.cl, i64 0
  %i.td = add nsw <2 x i32> %i.tb, %i.tc
  %i.te = trunc <2 x i32> %i.td to <2 x i16>
  store <2 x i16> %i.te, ptr %i.sy, align 2, !tbaa !55
  store i32 -1, ptr %i.sr, align 8, !tbaa !59
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sr, i64 16
  store i64 0, ptr %i.tf, align 8, !tbaa !60
  %i.tg = add nsw i32 %.1201272.us, 1
  br label %.split.us.split.us.split.us.us.1

.split.us.split.us.split.us.us.1:                 ; preds = %bb.e, %.split.us.split.us.split.us.us.preheader
  %.6.us.us.us.us = phi i32 [ %i.tg, %bb.e ], [ %.1201272.us, %.split.us.split.us.split.us.us.preheader ] ; 3 uses
  %i.th = and i32 %i.f, %.fr316
  %.not223.us.us.us.us.1 = icmp eq i32 %i.th, 0
  br i1 %.not223.us.us.us.us.1, label %.split268.us283, label %bb.f

bb.f:                                             ; preds = %.split.us.split.us.split.us.us.1
  %i.ti = load ptr, ptr %i.ad, align 8, !tbaa !48
  %i.tj = getelementptr inbounds [4 x i8], ptr %i.ti, i64 %i.cr
  %i.tk = sext i32 %.6.us.us.us.us to i64
  %i.tl = getelementptr inbounds [40 x i8], ptr %i.t, i64 %i.tk ; 9 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 4
  store i8 16, ptr %i.tm, align 4, !tbaa !53
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tl, i64 5
  store i8 16, ptr %i.tn, align 1, !tbaa !54
  %i.to = getelementptr inbounds nuw i8, ptr %i.tl, i64 24
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tl, i64 32
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tl, i64 10
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tl, i64 12
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tl, i64 6
  %i.tt = load <2 x i16>, ptr %i.tj, align 2, !tbaa !55
  %i.tu = sext <2 x i16> %i.tt to <2 x i32>       ; 2 uses
  store <2 x i32> %i.tu, ptr %i.to, align 8, !tbaa !33
  store i16 %i.x, ptr %i.tp, align 8, !tbaa !56
  store i16 %12, ptr %i.tq, align 2, !tbaa !57
  store i16 %i.an, ptr %i.tr, align 4, !tbaa !58
  %i.tv = sdiv <2 x i32> %i.tu, %i.af
  %i.tw = insertelement <2 x i32> %i.bv, i32 %i.cl, i64 0
  %i.tx = add nsw <2 x i32> %i.tv, %i.tw
  %i.ty = trunc <2 x i32> %i.tx to <2 x i16>
  store <2 x i16> %i.ty, ptr %i.ts, align 2, !tbaa !55
  store i32 1, ptr %i.tl, align 8, !tbaa !59
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tl, i64 16
  store i64 0, ptr %i.tz, align 8, !tbaa !60
  %i.ua = add nsw i32 %.6.us.us.us.us, 1
  br label %.split268.us283

.split268.us283:                                  ; preds = %.split.us.split.us.split.us.us.1, %bb.f, %.loopexit.us.us.us, %.preheader.us.us.us.1, %.loopexit247.us.us, %.preheader246.us.us.1, %.loopexit249.us, %.preheader248.us.1
  %.us-phi.us = phi i32 [ %indvars.iv.next.3.1, %.preheader248.us.1 ], [ %indvars.iv.next329.1.1, %.preheader246.us.us.1 ], [ %indvars.iv.next335.1.1, %.preheader.us.us.us.1 ], [ %.6.us282, %.loopexit249.us ], [ %.6.us.us289, %.loopexit247.us.us ], [ %.6.us.us.us296, %.loopexit.us.us.us ], [ %i.ua, %bb.f ], [ %.6.us.us.us.us, %.split.us.split.us.split.us.us.1 ] ; 5 uses
  %indvars.iv.next343 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next343, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.d, !llvm.loop !40

._crit_edge.us:                                   ; preds = %.split268.us283
  %indvars.iv.next354 = add nuw nsw i64 %indvars.iv353, 1 ; 2 uses
  %exitcond365.not = icmp eq i64 %indvars.iv.next354, %wide.trip.count364
  br i1 %exitcond365.not, label %._crit_edge276, label %.preheader250.us, !llvm.loop !41

._crit_edge276:                                   ; preds = %._crit_edge.us
  %.not215 = icmp eq i32 %.us-phi.us, 0
  br i1 %.not215, label %.critedge, label %bb.g

bb.g:                                             ; preds = %._crit_edge276
  %i.ub = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.uc = load i64, ptr %i.ub, align 8, !tbaa !64
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 48, ptr noundef nonnull @.str, i32 noundef %.us-phi.us, i64 noundef %i.uc) #5
  %i.ud = sext i32 %.us-phi.us to i64
  %i.ue = mul nsw i64 %i.ud, 40                   ; 2 uses
  %i.uf = tail call ptr @av_frame_new_side_data(ptr noundef %1, i32 noundef 8, i64 noundef %i.ue) #5 ; 2 uses
  %.not216.not = icmp eq ptr %i.uf, null
  br i1 %.not216.not, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.g
  call void @av_freep(ptr noundef nonnull %i.a) #5
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 8
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !66
  %i.ui = load ptr, ptr %i.a, align 8, !tbaa !50
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.uh, ptr align 8 %i.ui, i64 %i.ue, i1 false)
  br label %.critedge

.critedge:                                        ; preds = %.preheader250.lr.ph, %.preheader251, %bb.h, %._crit_edge276
  call void @av_freep(ptr noundef nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.j

bb.i:                                             ; preds = %.thread, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.ar

bb.j:                                             ; preds = %.critedge, %bb.b, %bb.a
  %i.uj = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !67
  %i.ul = icmp eq ptr %i.uk, null
  %or.cond4 = and i1 %i.j, %i.ul
  br i1 %or.cond4, label %bb.k, label %bb.ar

bb.k:                                             ; preds = %bb.j
  %i.um = getelementptr inbounds nuw i8, ptr %0, i64 524 ; 6 uses
  %i.un = load i32, ptr %i.um, align 4, !tbaa !68
  %i.uo = and i32 %i.un, 24
  %.not217 = icmp eq i32 %i.uo, 0
  br i1 %.not217, label %bb.ar, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #5
  %i.up = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.uq = load i32, ptr %i.up, align 8, !tbaa !32
  %i.ur = call signext i8 @av_get_picture_type_char(i32 noundef %i.uq) #5
  %i.us = sext i8 %i.ur to i32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.1, i32 noundef %i.us) #5
  %i.ut = shl i32 %5, 4                           ; 2 uses
  %i.uu = icmp eq i32 %i.ut, 0
  br i1 %i.uu, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %.lr.ph
  %.0303 = phi i32 [ %i.uw, %.lr.ph ], [ 2, %bb.l ]
  %.0192302 = phi i32 [ %i.uv, %.lr.ph ], [ %i.ut, %bb.l ]
  %i.uv = sdiv i32 %.0192302, 10                  ; 2 uses
  %i.uw = add nuw nsw i32 %.0303, 1               ; 2 uses
  %.0192.off = add nsw i32 %i.uv, 9
  %.not218 = icmp ult i32 %.0192.off, 19
  br i1 %.not218, label %._crit_edge, label %.lr.ph, !llvm.loop !42

._crit_edge:                                      ; preds = %.lr.ph, %bb.l
  %.0.lcssa = phi i32 [ 2, %bb.l ], [ %i.uw, %.lr.ph ] ; 2 uses
  call void @av_bprint_init(ptr noundef nonnull %9, i32 noundef 1, i32 noundef -1) #5
  call void @av_bprint_chars(ptr noundef nonnull %9, i8 noundef signext 32, i32 noundef %.0.lcssa) #5
  %i.ux = icmp sgt i32 %5, 62                     ; 2 uses
  %i.uy = select i1 %i.ux, i32 8, i32 4
  %i.uz = icmp sgt i32 %5, 0                      ; 2 uses
  br i1 %i.uz, label %.lr.ph306, label %._crit_edge307

.lr.ph306:                                        ; preds = %._crit_edge
  %i.va = load i32, ptr %i.um, align 4, !tbaa !68 ; 2 uses
  %i.vb = and i32 %i.va, 8
  %.not220 = icmp eq i32 %i.vb, 0
  %i.vc = lshr i32 %i.va, 3
  %spec.select230 = and i32 %i.vc, 2              ; 2 uses
  %i.vd = add nuw nsw i32 %spec.select230, 3
  %.2 = select i1 %.not220, i32 %spec.select230, i32 %i.vd
  %i.ve = select i1 %i.ux, i32 3, i32 2
  %i.vf = shl nuw nsw i32 %.2, %i.ve
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph306, %bb.m
  %.0194304 = phi i32 [ 0, %.lr.ph306 ], [ %i.vh, %bb.m ] ; 2 uses
  %i.vg = shl i32 %.0194304, 4
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %9, ptr noundef nonnull @.str.2, i32 noundef %i.vf, i32 noundef %i.vg) #5
  %i.vh = add nuw nsw i32 %.0194304, %i.uy        ; 2 uses
  %i.vi = icmp slt i32 %i.vh, %5
  br i1 %i.vi, label %bb.m, label %._crit_edge307, !llvm.loop !43

._crit_edge307:                                   ; preds = %bb.m, %._crit_edge
  %i.vj = load ptr, ptr %9, align 8, !tbaa !70
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.3, ptr noundef %i.vj) #5
  %i.vk = icmp sgt i32 %6, 0
  br i1 %i.vk, label %.lr.ph314, label %._crit_edge315

.lr.ph314:                                        ; preds = %._crit_edge307
  %i.vl = add nsw i32 %.0.lcssa, -1
  br i1 %i.uz, label %.lr.ph310.us.preheader, label %.lr.ph314.split

.lr.ph310.us.preheader:                           ; preds = %.lr.ph314
  %i.vm = sext i32 %7 to i64
  %wide.trip.count376 = zext nneg i32 %6 to i64
  %wide.trip.count370 = zext nneg i32 %5 to i64
  %exitcond371.peel.not = icmp eq i32 %5, 1
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph310.us.preheader, %._crit_edge311.us
  %indvars.iv373 = phi i64 [ 0, %.lr.ph310.us.preheader ], [ %indvars.iv.next374, %._crit_edge311.us ] ; 3 uses
  call void @av_bprint_clear(ptr noundef nonnull %9) #5
  %i.vn = mul nsw i64 %indvars.iv373, %i.vm       ; 4 uses
  %i.vo = trunc nuw nsw i64 %indvars.iv373 to i32
  %i.vp = shl i32 %i.vo, 4
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %9, ptr noundef nonnull @.str.4, i32 noundef %i.vl, i32 noundef %i.vp) #5
  %i.vq = load i32, ptr %i.um, align 4, !tbaa !68 ; 2 uses
  %i.vr = and i32 %i.vq, 16
  %.not221.us.peel = icmp eq i32 %i.vr, 0
  br i1 %.not221.us.peel, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.vs = getelementptr inbounds i8, ptr %3, i64 %i.vn
  %i.vt = load i8, ptr %i.vs, align 1, !tbaa !71
  %i.vu = sext i8 %i.vt to i32
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %9, ptr noundef nonnull @.str.5, i32 noundef %i.vu) #5
  %.pre = load i32, ptr %i.um, align 4, !tbaa !68
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.vv = phi i32 [ %.pre, %bb.o ], [ %i.vq, %bb.n ]
  %i.vw = and i32 %i.vv, 8
  %.not222.us.peel = icmp eq i32 %i.vw, 0
  br i1 %.not222.us.peel, label %bb.ab, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.vx = getelementptr inbounds [4 x i8], ptr %2, i64 %i.vn
  %i.vy = load i32, ptr %i.vx, align 4, !tbaa !33 ; 15 uses
  %i.vz = and i32 %i.vy, 4
  %.not.i241.us.peel = icmp eq i32 %i.vz, 0
  br i1 %.not.i241.us.peel, label %bb.r, label %get_type_mv_char.exit.us.peel

bb.r:                                             ; preds = %bb.q
  %i.wa = and i32 %i.vy, 262144
  %.not15.i.us.peel = icmp eq i32 %i.wa, 0
  br i1 %.not15.i.us.peel, label %bb.s, label %get_type_mv_char.exit.us.peel

bb.s:                                             ; preds = %bb.r
  %i.wb = and i32 %i.vy, 1
  %.not16.i.us.peel = icmp eq i32 %i.wb, 0
  br i1 %.not16.i.us.peel, label %bb.t, label %get_type_mv_char.exit.us.peel

bb.t:                                             ; preds = %bb.s
  %i.wc = and i32 %i.vy, 2
  %.not17.i.us.peel = icmp eq i32 %i.wc, 0
  br i1 %.not17.i.us.peel, label %bb.u, label %get_type_mv_char.exit.us.peel

bb.u:                                             ; preds = %bb.t
  %i.wd = and i32 %i.vy, 256
  %.not18.not.i.us.peel = icmp eq i32 %i.wd, 0
  %i.we = and i32 %i.vy, 131328
  %or.cond.not1.i.us.peel = icmp eq i32 %i.we, 131328
  %.mux.i.us.peel = select i1 %or.cond.not1.i.us.peel, i32 100, i32 68
  br i1 %.not18.not.i.us.peel, label %bb.v, label %get_type_mv_char.exit.us.peel

bb.v:                                             ; preds = %bb.u
  %i.wf = and i32 %i.vy, 65536
  %.not20.not.i.us.peel = icmp eq i32 %i.wf, 0
  %i.wg = and i32 %i.vy, 196608                   ; 2 uses
  %or.cond25.not2.i.us.peel = icmp eq i32 %i.wg, 196608
  %.mux27.i.us.peel = select i1 %or.cond25.not2.i.us.peel, i32 103, i32 71
  %brmerge.not.i.us.peel = icmp eq i32 %i.wg, 0
  %.mux27.mux.i.us.peel = select i1 %.not20.not.i.us.peel, i32 83, i32 %.mux27.i.us.peel
  br i1 %brmerge.not.i.us.peel, label %bb.w, label %get_type_mv_char.exit.us.peel

end_hunk_0
