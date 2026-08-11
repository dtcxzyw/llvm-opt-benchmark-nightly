inline.NumInlined: 32
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@filter_frame:bb.a
  call void @av_frame_free(ptr noundef nonnull %i.a) #5
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.aq = tail call i32 @av_frame_copy_props(ptr noundef nonnull %i.ap, ptr noundef %1) #5 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !44
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !38
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.av = load i32, ptr %i.au, align 8, !tbaa !41
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 100
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !41
  %. = tail call i32 @llvm.smin.i32(i32 %i.av, i32 %i.ax)
  %i.ay = tail call i32 @ff_filter_get_nb_threads(ptr noundef nonnull %i.c) #6
  %spec.select = tail call i32 @llvm.smin.i32(i32 %., i32 %i.ay)
  %i.az = tail call i32 @ff_filter_execute(ptr noundef nonnull %i.c, ptr noundef %i.at, ptr noundef %1, ptr noundef null, i32 noundef %spec.select) #5 ; 0 uses
  call void @av_frame_free(ptr noundef nonnull %i.a) #5
  %i.ba = call i32 @ff_filter_frame(ptr noundef nonnull %i.f, ptr noundef nonnull %i.ap) #5
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0 = phi i32 [ %i.ba, %bb.i ], [ -12, %bb.h ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @config_input(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33   ; 13 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !45
  %i.g = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.f) #5 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i8, ptr %i.h, align 8, !tbaa !46
  %i.j = zext i8 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i32 %i.j, ptr %i.k, align 8, !tbaa !49
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !50
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  store i32 %i.m, ptr %i.n, align 4, !tbaa !37
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  %i.p = load i8, ptr %i.o, align 1, !tbaa !52
  %i.q = zext i8 %i.p to i32                      ; 2 uses
  %i.r = shl nuw i32 1, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i32 %i.r, ptr %i.s, align 8, !tbaa !53
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 10
  %i.u = load i8, ptr %i.t, align 2, !tbaa !54
  %i.v = zext i8 %i.u to i32                      ; 2 uses
  %i.w = shl nuw i32 1, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  store i32 %i.w, ptr %i.x, align 4, !tbaa !55
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.z = load i32, ptr %i.y, align 4, !tbaa !43
  %i.aa = sub nsw i32 0, %i.z
  %i.ab = ashr i32 %i.aa, %i.v
  %i.ac = sub nsw i32 0, %i.ab                    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 92
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 100
  store i32 %i.ac, ptr %i.ae, align 4, !tbaa !41
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store i32 %i.ac, ptr %i.af, align 8, !tbaa !41
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !43 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !41
  store i32 %i.ah, ptr %i.ad, align 4, !tbaa !41
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !42
  %i.al = sub nsw i32 0, %i.ak
  %i.am = ashr i32 %i.al, %i.q
  %i.an = sub nsw i32 0, %i.am                    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 116
  store i32 %i.an, ptr %i.ap, align 4, !tbaa !41
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store i32 %i.an, ptr %i.aq, align 8, !tbaa !41
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !42 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store i32 %i.as, ptr %i.at, align 8, !tbaa !41
  store i32 %i.as, ptr %i.ao, align 4, !tbaa !41
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %i.av = load i32, ptr %i.e, align 4, !tbaa !45
  %i.aw = load i32, ptr %i.ar, align 8, !tbaa !42
  %i.ax = tail call i32 @av_image_fill_linesizes(ptr noundef nonnull %i.au, i32 noundef %i.av, i32 noundef %i.aw) #5
  %. = tail call i32 @llvm.smin.i32(i32 %i.ax, i32 0)
  ret i32 %.
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @manhattan_slice8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44   ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.f = load i32, ptr %i.e, align 4, !tbaa !41
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = sext i32 %2 to i64                       ; 2 uses
  %i.i = mul nsw i64 %i.g, %i.h
  %i.j = sext i32 %3 to i64                       ; 4 uses
  %i.k = sdiv i64 %i.i, %i.j
  %i.l = trunc i64 %i.k to i32                    ; 5 uses
  %i.m = add nsw i32 %2, 1
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = mul nsw i64 %i.g, %i.n
  %i.p = sdiv i64 %i.o, %i.j
  %i.q = trunc i64 %i.p to i32
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.t = load i32, ptr %i.s, align 8, !tbaa !41   ; 2 uses
  %i.u = mul nsw i32 %i.t, %i.l
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds i8, ptr %i.r, i64 %i.v
  %i.x = load ptr, ptr %1, align 8, !tbaa !56
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !41   ; 2 uses
  %i.aa = mul nsw i32 %i.z, %i.l
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %i.x, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !41
  %i.af = sub nsw i32 %i.q, %i.l                  ; 2 uses
  tail call void @av_image_copy_plane(ptr noundef %i.w, i32 noundef %i.t, ptr noundef %i.ac, i32 noundef %i.z, i32 noundef %i.ae, i32 noundef %i.af) #5
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !49
  %i.ai = icmp eq i32 %i.ah, 4
  br i1 %i.ai, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !56
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %i.am = load i32, ptr %i.al, align 4, !tbaa !41 ; 2 uses
  %i.an = mul nsw i32 %i.am, %i.l
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr %i.ak, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !56
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.at = load i32, ptr %i.as, align 4, !tbaa !41 ; 2 uses
  %i.au = mul nsw i32 %i.at, %i.l
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds i8, ptr %i.ar, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !41
  tail call void @av_image_copy_plane(ptr noundef %i.ap, i32 noundef %i.am, ptr noundef %i.aw, i32 noundef %i.at, i32 noundef %i.ay, i32 noundef %i.af) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !41
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !41
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !53
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !57 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !58
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !59 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !60 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !61 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !41 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !41 ; 6 uses
  %i.bt = sext i32 %i.bq to i64                   ; 2 uses
  %i.bu = mul nsw i64 %i.bt, %i.h
  %i.bv = sdiv i64 %i.bu, %i.j                    ; 2 uses
  %i.bw = trunc i64 %i.bv to i32                  ; 4 uses
  %i.bx = mul nsw i64 %i.bt, %i.n
  %i.by = sdiv i64 %i.bx, %i.j                    ; 2 uses
  %i.bz = trunc i64 %i.by to i32
  %i.ca = icmp slt i32 %i.bw, %i.bz
  br i1 %i.ca, label %.lr.ph230, label %._crit_edge231.split

.lr.ph230:                                        ; preds = %bb.c
  %i.cb = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !41 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !41 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !55
  %i.ch = load i32, ptr %i.y, align 8, !tbaa !41
  %i.ci = mul i32 %i.cg, %i.ch                    ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cl = add nsw i32 %i.bq, -1
  %i.cm = icmp sgt i32 %i.bs, 0
  %i.cn = add i32 %i.bs, -1
  %i.co = sext i32 %i.ce to i64                   ; 2 uses
  %i.cp = sext i32 %i.cc to i64                   ; 2 uses
  br i1 %i.cm, label %.lr.ph222.preheader, label %._crit_edge231.split

.lr.ph222.preheader:                              ; preds = %.lr.ph230
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !56 ; 2 uses
  %i.cs = mul i32 %i.ce, %i.bw
  %i.ct = sext i32 %i.cs to i64                   ; 2 uses
  %i.cu = getelementptr i8, ptr %i.cr, i64 %i.ct  ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !56 ; 2 uses
  %i.cx = mul i32 %i.cc, %i.bw
  %i.cy = sext i32 %i.cx to i64                   ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cw, i64 %i.cy  ; 4 uses
  %i.da = sub i32 0, %i.bk
  %i.db = sext i32 %i.bg to i64
  %i.dc = sext i32 %i.be to i64                   ; 6 uses
  %i.dd = sub i32 %i.bw, %i.bm
  %i.de = sext i32 %i.bi to i64
  %i.df = sext i32 %i.ba to i64                   ; 4 uses
  %i.dg = sext i32 %i.bc to i64                   ; 4 uses
  %sext = shl i64 %i.bv, 32
  %i.dh = ashr exact i64 %sext, 32                ; 4 uses
  %sext258 = shl i64 %i.by, 32
  %wide.trip.count254 = ashr exact i64 %sext258, 32 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.bs to i64   ; 12 uses
  %wide.trip.count249 = zext nneg i32 %i.bs to i64
  %i.di = xor i64 %i.dh, -1
  %i.dj = add nsw i64 %wide.trip.count254, %i.di  ; 2 uses
  %i.dk = mul i64 %i.dj, %i.co
  %i.dl = getelementptr i8, ptr %i.cr, i64 %i.dk
  %i.dm = getelementptr i8, ptr %i.dl, i64 %i.ct
  %scevgep = getelementptr i8, ptr %i.dm, i64 %wide.trip.count ; 3 uses
  %i.dn = mul i64 %i.dj, %i.cp
  %i.do = getelementptr i8, ptr %i.cw, i64 %i.dn
  %i.dp = getelementptr i8, ptr %i.do, i64 %i.cy
  %scevgep261 = getelementptr i8, ptr %i.dp, i64 %wide.trip.count ; 3 uses
  %i.dq = mul nsw i64 %i.dh, %i.df
  %i.dr = mul nsw i64 %i.dh, %i.dg
  %ident.check.not = icmp eq i32 %i.bg, 1
  %broadcast.splatinsert303 = insertelement <4 x i32> poison, i32 %i.bo, i64 0
  %broadcast.splat304 = shufflevector <4 x i32> %broadcast.splatinsert303, <4 x i32> poison, <4 x i32> zeroinitializer
  %min.iters.check = icmp ult i32 %i.bs, 4
  %bound0 = icmp ult ptr %i.cu, %scevgep261
  %bound1 = icmp ult ptr %i.cz, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.ds = or i32 %i.cc, %i.ce
  %i.dt = icmp slt i32 %i.ds, 0
  %i.du = or i1 %found.conflict, %i.dt
  %stride.check268 = icmp slt i32 %i.ce, 0
  %invariant.op = or i1 %stride.check268, %i.du
  %stride.check277 = icmp slt i32 %i.cc, 0
  %min.iters.check284 = icmp ult i32 %i.bs, 32
  %i.dv = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.dv, 0
  %n.vec288 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n293 = icmp eq i64 %n.vec288, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.dw = add nsw i64 %wide.trip.count, -1
  br label %.lr.ph222

._crit_edge231.split:                             ; preds = %._crit_edge223, %.lr.ph230, %bb.c
  ret i32 0

.lr.ph222:                                        ; preds = %.lr.ph222.preheader, %._crit_edge223
  %indvar = phi i64 [ 0, %.lr.ph222.preheader ], [ %indvar.next, %._crit_edge223 ] ; 3 uses
  %indvars.iv251 = phi i64 [ %i.dh, %.lr.ph222.preheader ], [ %indvars.iv.next252, %._crit_edge223 ] ; 6 uses
  %indvars.iv237 = phi i32 [ %i.dd, %.lr.ph222.preheader ], [ %indvars.iv.next238, %._crit_edge223 ] ; 2 uses
  %.0227 = phi ptr [ %i.cu, %.lr.ph222.preheader ], [ %i.gd, %._crit_edge223 ] ; 7 uses
  %.0175225 = phi ptr [ %i.cz, %.lr.ph222.preheader ], [ %i.ge, %._crit_edge223 ] ; 7 uses
  %i.dx = mul i64 %indvar, %i.df
  %i.dy = mul i64 %indvar, %i.dg
  %smax239 = tail call i32 @llvm.smax.i32(i32 %indvars.iv237, i32 0)
  %i.dz = zext nneg i32 %smax239 to i64
  %i.ea = load ptr, ptr %1, align 8, !tbaa !56
  %i.eb = trunc nsw i64 %indvars.iv251 to i32
  %i.ec = mul i32 %i.ci, %i.eb
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds i8, ptr %i.ea, i64 %i.ed
  %i.ef = load ptr, ptr %i.cj, align 8, !tbaa !56 ; 2 uses
  %i.eg = mul i64 %indvars.iv251, %i.df
  %i.eh = getelementptr i8, ptr %i.ef, i64 %i.eg  ; 8 uses
  %i.ei = load ptr, ptr %i.ck, align 8, !tbaa !56 ; 2 uses
  %i.ej = mul i64 %indvars.iv251, %i.dg
  %i.ek = getelementptr i8, ptr %i.ei, i64 %i.ej  ; 8 uses
  %i.el = trunc i64 %indvars.iv251 to i32
  %i.em = sub i32 %i.el, %i.bm
  %i.en = tail call i32 @llvm.smax.i32(i32 %i.em, i32 0)
  %i.eo = trunc i64 %indvars.iv251 to i32
  %i.ep = add i32 %i.bm, %i.eo
  %. = tail call i32 @llvm.smin.i32(i32 %i.cl, i32 %i.ep) ; 2 uses
  %.not207 = icmp sgt i32 %i.en, %.
  br i1 %.not207, label %iter.check, label %.lr.ph213.preheader

iter.check:                                       ; preds = %.lr.ph222
  br i1 %min.iters.check, label %.lr.ph222.split.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.eq = getelementptr i8, ptr %i.ef, i64 %i.dq
  %i.er = getelementptr i8, ptr %i.eq, i64 %wide.trip.count
  %scevgep262 = getelementptr i8, ptr %i.er, i64 %i.dx ; 2 uses
  %i.es = getelementptr i8, ptr %i.ei, i64 %i.dr
  %i.et = getelementptr i8, ptr %i.es, i64 %wide.trip.count
  %scevgep263 = getelementptr i8, ptr %i.et, i64 %i.dy ; 2 uses
  %bound0265 = icmp ult ptr %i.cu, %scevgep262
  %bound1266 = icmp ult ptr %i.eh, %scevgep
  %found.conflict267 = and i1 %bound0265, %bound1266
  %conflict.rdx.reass = or i1 %found.conflict267, %invariant.op
  %bound0269 = icmp ult ptr %i.cu, %scevgep263
  %bound1270 = icmp ult ptr %i.ek, %scevgep
  %found.conflict271 = and i1 %bound0269, %bound1270
  %conflict.rdx273 = or i1 %found.conflict271, %conflict.rdx.reass
  %bound0274 = icmp ult ptr %i.cz, %scevgep262
  %bound1275 = icmp ult ptr %i.eh, %scevgep261
  %found.conflict276 = and i1 %bound0274, %bound1275
  %i.eu = or i1 %found.conflict276, %stride.check277
  %conflict.rdx278 = or i1 %conflict.rdx273, %i.eu
  %bound0279 = icmp ult ptr %i.cz, %scevgep263
  %bound1280 = icmp ult ptr %i.ek, %scevgep261
  %found.conflict281 = and i1 %bound0279, %bound1280
  %conflict.rdx283 = or i1 %found.conflict281, %conflict.rdx278
  br i1 %conflict.rdx283, label %.lr.ph222.split.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check284, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 5 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eh, i64 %index ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %wide.load = load <16 x i8>, ptr %i.ev, align 1, !tbaa !62, !alias.scope !63
  %wide.load285 = load <16 x i8>, ptr %i.ew, align 1, !tbaa !62, !alias.scope !63
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ek, i64 %index ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %wide.load286 = load <16 x i8>, ptr %i.ex, align 1, !tbaa !62, !alias.scope !66
  %wide.load287 = load <16 x i8>, ptr %i.ey, align 1, !tbaa !62, !alias.scope !66
  %i.ez = getelementptr inbounds nuw i8, ptr %.0227, i64 %index ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  store <16 x i8> %wide.load, ptr %i.ez, align 1, !tbaa !62, !alias.scope !68, !noalias !70
  store <16 x i8> %wide.load285, ptr %i.fa, align 1, !tbaa !62, !alias.scope !68, !noalias !70
  %i.fb = getelementptr inbounds nuw i8, ptr %.0175225, i64 %index ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store <16 x i8> %wide.load286, ptr %i.fb, align 1, !tbaa !62, !alias.scope !72, !noalias !73
  store <16 x i8> %wide.load287, ptr %i.fc, align 1, !tbaa !62, !alias.scope !72, !noalias !73
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fd = icmp eq i64 %index.next, %n.vec
  br i1 %i.fd, label %middle.block, label %vector.body, !llvm.loop !74

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge223, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph222.split.us.preheader, label %vec.epilog.ph, !prof !78

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index289 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next292, %vec.epilog.vector.body ] ; 5 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eh, i64 %index289
  %wide.load290 = load <4 x i8>, ptr %i.fe, align 1, !tbaa !62, !alias.scope !63
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ek, i64 %index289
  %wide.load291 = load <4 x i8>, ptr %i.ff, align 1, !tbaa !62, !alias.scope !66
  %i.fg = getelementptr inbounds nuw i8, ptr %.0227, i64 %index289
  store <4 x i8> %wide.load290, ptr %i.fg, align 1, !tbaa !62, !alias.scope !68, !noalias !70
  %i.fh = getelementptr inbounds nuw i8, ptr %.0175225, i64 %index289
  store <4 x i8> %wide.load291, ptr %i.fh, align 1, !tbaa !62, !alias.scope !72, !noalias !73
  %index.next292 = add nuw i64 %index289, 4       ; 2 uses
  %i.fi = icmp eq i64 %index.next292, %n.vec288
  br i1 %i.fi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !79

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n293, label %._crit_edge223, label %.lr.ph222.split.us.preheader

.lr.ph222.split.us.preheader:                     ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv246.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec288, %vec.epilog.middle.block ] ; 7 uses
  br i1 %lcmp.mod.not, label %.lr.ph222.split.us.prol.loopexit, label %.lr.ph222.split.us.prol

.lr.ph222.split.us.prol:                          ; preds = %.lr.ph222.split.us.preheader
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eh, i64 %indvars.iv246.ph
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !62
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ek, i64 %indvars.iv246.ph
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !62
  %i.fn = getelementptr inbounds nuw i8, ptr %.0227, i64 %indvars.iv246.ph
  store i8 %i.fk, ptr %i.fn, align 1, !tbaa !62
  %i.fo = getelementptr inbounds nuw i8, ptr %.0175225, i64 %indvars.iv246.ph
  store i8 %i.fm, ptr %i.fo, align 1, !tbaa !62
  %indvars.iv.next247.prol = or disjoint i64 %indvars.iv246.ph, 1
  br label %.lr.ph222.split.us.prol.loopexit

.lr.ph222.split.us.prol.loopexit:                 ; preds = %.lr.ph222.split.us.prol, %.lr.ph222.split.us.preheader
  %indvars.iv246.unr = phi i64 [ %indvars.iv246.ph, %.lr.ph222.split.us.preheader ], [ %indvars.iv.next247.prol, %.lr.ph222.split.us.prol ]
  %i.fp = icmp eq i64 %indvars.iv246.ph, %i.dw
  br i1 %i.fp, label %._crit_edge223, label %.lr.ph222.split.us

end_hunk_0
begin_hunk_1_@manhattan_slice8:bb.a
  %i.ih = getelementptr inbounds i8, ptr %i.hp, i64 %i.id
  %i.ii = getelementptr inbounds i8, ptr %i.hp, i64 %i.ie
  %i.ij = load i8, ptr %i.if, align 1, !tbaa !62
  %i.ik = load i8, ptr %i.ig, align 1, !tbaa !62
  %i.il = load i8, ptr %i.ih, align 1, !tbaa !62
  %i.im = load i8, ptr %i.ii, align 1, !tbaa !62
  %i.in = insertelement <4 x i8> poison, i8 %i.ij, i64 0
  %i.io = insertelement <4 x i8> %i.in, i8 %i.ik, i64 1
  %i.ip = insertelement <4 x i8> %i.io, i8 %i.il, i64 2
  %i.iq = insertelement <4 x i8> %i.ip, i8 %i.im, i64 3
  %i.ir = zext <4 x i8> %i.iq to <4 x i32>
  %i.is = getelementptr inbounds i8, ptr %i.hr, i64 %i.hx
  %wide.load309 = load <4 x i8>, ptr %i.is, align 1, !tbaa !62
  %i.it = zext <4 x i8> %wide.load309 to <4 x i32> ; 2 uses
  %i.iu = getelementptr inbounds i8, ptr %i.ht, i64 %i.hx
  %wide.load310 = load <4 x i8>, ptr %i.iu, align 1, !tbaa !62
  %i.iv = zext <4 x i8> %wide.load310 to <4 x i32> ; 2 uses
  %i.iw = sub nsw <4 x i32> %broadcast.splat, %i.ir
  %i.ix = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.iw, i1 true)
  %i.iy = sub nsw <4 x i32> %broadcast.splat300.a, %i.it
  %i.iz = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.iy, i1 true)
  %i.ja = sub nsw <4 x i32> %broadcast.splat302, %i.iv
  %i.jb = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ja, i1 true)
  %i.jc = add nuw nsw <4 x i32> %i.iz, %i.ix
  %i.jd = add nuw nsw <4 x i32> %i.jc, %i.jb
  %i.je = icmp slt <4 x i32> %i.jd, %broadcast.splat304 ; 3 uses
  %i.jf = zext <4 x i1> %i.je to <4 x i32>
  %i.jg = add <4 x i32> %vec.phi308, %i.jf        ; 2 uses
  %i.jh = select <4 x i1> %i.je, <4 x i32> %i.iv, <4 x i32> zeroinitializer
  %i.ji = add <4 x i32> %i.jh, %vec.phi307        ; 2 uses
  %i.jj = select <4 x i1> %i.je, <4 x i32> %i.it, <4 x i32> zeroinitializer
  %i.jk = add <4 x i32> %i.jj, %vec.phi           ; 2 uses
  %index.next311 = add nuw i64 %index306, 4       ; 2 uses
  %i.jl = icmp eq i64 %index.next311, %n.vec298
  br i1 %i.jl, label %middle.block312, label %vector.body305, !llvm.loop !83

middle.block312:                                  ; preds = %vector.body305
  %i.jm = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.jk) ; 2 uses
  %i.jn = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ji) ; 2 uses
  %i.jo = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.jg) ; 2 uses
  br i1 %cmp.n313, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block312
  %indvars.iv234.ph = phi i64 [ %i.gf, %.lr.ph ], [ %i.hc, %middle.block312 ]
  %.1204.ph = phi i32 [ %.0178211, %.lr.ph ], [ %i.jm, %middle.block312 ]
  %.1181202.ph = phi i32 [ %.0180210, %.lr.ph ], [ %i.jn, %middle.block312 ]
  %.1184201.ph = phi i32 [ %.0183209, %.lr.ph ], [ %i.jo, %middle.block312 ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block312
  %.2185.lcssa = phi i32 [ %i.jo, %middle.block312 ], [ %.2185, %scalar.ph ] ; 2 uses
  %.2182.lcssa = phi i32 [ %i.jn, %middle.block312 ], [ %.2182, %scalar.ph ] ; 2 uses
  %.2.lcssa = phi i32 [ %i.jm, %middle.block312 ], [ %.2, %scalar.ph ] ; 2 uses
  %indvars.iv.next241 = add nsw i64 %indvars.iv240, %i.de ; 2 uses
  %.not = icmp sgt i64 %indvars.iv.next241, %i.fq
  br i1 %.not, label %._crit_edge214, label %.lr.ph, !llvm.loop !84

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv234 = phi i64 [ %indvars.iv.next235, %scalar.ph ], [ %indvars.iv234.ph, %scalar.ph.preheader ] ; 4 uses
  %.1204 = phi i32 [ %.2, %scalar.ph ], [ %.1204.ph, %scalar.ph.preheader ]
  %.1181202 = phi i32 [ %.2182, %scalar.ph ], [ %.1181202.ph, %scalar.ph.preheader ]
  %.1184201 = phi i32 [ %.2185, %scalar.ph ], [ %.1184201.ph, %scalar.ph.preheader ]
  %i.jp = mul nsw i64 %indvars.iv234, %i.dc
  %i.jq = getelementptr inbounds i8, ptr %i.hp, i64 %i.jp
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !62
  %i.js = zext i8 %i.jr to i32
  %i.jt = getelementptr inbounds i8, ptr %i.hr, i64 %indvars.iv234
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !62
  %i.jv = zext i8 %i.ju to i32                    ; 2 uses
  %i.jw = getelementptr inbounds i8, ptr %i.ht, i64 %indvars.iv234
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !62
  %i.jy = zext i8 %i.jx to i32                    ; 2 uses
  %i.jz = sub nsw i32 %i.go, %i.js
  %i.ka = tail call i32 @llvm.abs.i32(i32 %i.jz, i1 true)
  %i.kb = sub nsw i32 %i.gr, %i.jv
  %i.kc = tail call i32 @llvm.abs.i32(i32 %i.kb, i1 true)
  %i.kd = sub nsw i32 %i.gu, %i.jy
  %i.ke = tail call i32 @llvm.abs.i32(i32 %i.kd, i1 true)
  %i.kf = add nuw nsw i32 %i.kc, %i.ka
  %i.kg = add nuw nsw i32 %i.kf, %i.ke
  %i.kh = icmp slt i32 %i.kg, %i.bo               ; 3 uses
  %i.ki = zext i1 %i.kh to i32
  %.2185 = add nsw i32 %.1184201, %i.ki           ; 2 uses
  %i.kj = select i1 %i.kh, i32 %i.jy, i32 0
  %.2182 = add nsw i32 %i.kj, %.1181202           ; 2 uses
  %i.kk = select i1 %i.kh, i32 %i.jv, i32 0
  %.2 = add nsw i32 %i.kk, %.1204                 ; 2 uses
  %indvars.iv.next235 = add nsw i64 %indvars.iv234, %i.db ; 2 uses
  %.not198 = icmp sgt i64 %indvars.iv.next235, %i.gy
  br i1 %.not198, label %._crit_edge, label %scalar.ph, !llvm.loop !85
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @manhattan_slice16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.f = load i32, ptr %i.e, align 4, !tbaa !41
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = sext i32 %2 to i64                       ; 2 uses
  %i.i = mul nsw i64 %i.g, %i.h
  %i.j = sext i32 %3 to i64                       ; 4 uses
  %i.k = sdiv i64 %i.i, %i.j
  %i.l = trunc i64 %i.k to i32                    ; 5 uses
  %i.m = add nsw i32 %2, 1
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = mul nsw i64 %i.g, %i.n
  %i.p = sdiv i64 %i.o, %i.j
  %i.q = trunc i64 %i.p to i32
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.t = load i32, ptr %i.s, align 8, !tbaa !41   ; 2 uses
  %i.u = mul nsw i32 %i.t, %i.l
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds i8, ptr %i.r, i64 %i.v
  %i.x = load ptr, ptr %1, align 8, !tbaa !56
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !41   ; 2 uses
  %i.aa = mul nsw i32 %i.z, %i.l
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %i.x, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !41
  %i.af = sub nsw i32 %i.q, %i.l                  ; 2 uses
  tail call void @av_image_copy_plane(ptr noundef %i.w, i32 noundef %i.t, ptr noundef %i.ac, i32 noundef %i.z, i32 noundef %i.ae, i32 noundef %i.af) #5
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !49
  %i.ai = icmp eq i32 %i.ah, 4
  br i1 %i.ai, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !56
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %i.am = load i32, ptr %i.al, align 4, !tbaa !41 ; 2 uses
  %i.an = mul nsw i32 %i.am, %i.l
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr %i.ak, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !56
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.at = load i32, ptr %i.as, align 4, !tbaa !41 ; 2 uses
  %i.au = mul nsw i32 %i.at, %i.l
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds i8, ptr %i.ar, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !41
  tail call void @av_image_copy_plane(ptr noundef %i.ap, i32 noundef %i.am, ptr noundef %i.aw, i32 noundef %i.at, i32 noundef %i.ay, i32 noundef %i.af) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bb = load <2 x i32>, ptr %i.az, align 4, !tbaa !41
  %i.bc = load i32, ptr %i.ba, align 8, !tbaa !41 ; 2 uses
  %i.bd = load i32, ptr %i.az, align 4, !tbaa !41
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !53
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !57 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !58
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !59 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !60 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !61 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !41 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !41 ; 6 uses
  %i.bu = sext i32 %i.br to i64                   ; 2 uses
  %i.bv = mul nsw i64 %i.bu, %i.h
  %i.bw = sdiv i64 %i.bv, %i.j                    ; 2 uses
  %i.bx = trunc i64 %i.bw to i32                  ; 4 uses
  %i.by = mul nsw i64 %i.bu, %i.n
  %i.bz = sdiv i64 %i.by, %i.j                    ; 2 uses
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = icmp slt i32 %i.bx, %i.ca
  br i1 %i.cb, label %.lr.ph230, label %._crit_edge231.split

.lr.ph230:                                        ; preds = %bb.c
  %i.cc = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.cd = load <2 x i32>, ptr %i.cc, align 4, !tbaa !41 ; 4 uses
  %i.ce = shufflevector <2 x i32> %i.cd, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !55
  %i.ch = load i32, ptr %i.y, align 8, !tbaa !41
  %i.ci = load ptr, ptr %1, align 8, !tbaa !56    ; 2 uses
  %i.cj = mul i32 %i.cg, %i.ch                    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !56 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !56 ; 4 uses
  %i.co = add nsw i32 %i.br, -1
  %i.cp = icmp sgt i32 %i.bt, 0
  %i.cq = add i32 %i.bt, -1
  %i.cr = extractelement <2 x i32> %i.cd, i64 0   ; 2 uses
  %i.cs = sext i32 %i.cr to i64
  %i.ct = lshr i64 %i.cs, 1                       ; 2 uses
  %i.cu = extractelement <2 x i32> %i.cd, i64 1   ; 3 uses
  %i.cv = sext i32 %i.cu to i64
  %i.cw = lshr i64 %i.cv, 1                       ; 2 uses
  br i1 %i.cp, label %.lr.ph222.preheader, label %._crit_edge231.split

.lr.ph222.preheader:                              ; preds = %.lr.ph230
  %i.cx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !56 ; 2 uses
  %i.cz = mul i32 %i.cr, %i.bx
  %i.da = sext i32 %i.cz to i64                   ; 2 uses
  %i.db = getelementptr i8, ptr %i.cy, i64 %i.da  ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !56 ; 2 uses
  %i.de = mul i32 %i.cu, %i.bx
  %i.df = sext i32 %i.de to i64                   ; 2 uses
  %i.dg = getelementptr i8, ptr %i.dd, i64 %i.df  ; 4 uses
  %i.dh = sub i32 0, %i.bl
  %i.di = sext i32 %i.bh to i64
  %i.dj = sext i32 %i.bf to i64                   ; 6 uses
  %i.dk = sub i32 %i.bx, %i.bn
  %i.dl = sext i32 %i.bj to i64
  %i.dm = sext i32 %i.bd to i64                   ; 4 uses
  %i.dn = sext i32 %i.bc to i64                   ; 4 uses
  %sext = shl i64 %i.bw, 32
  %i.do = ashr exact i64 %sext, 32                ; 4 uses
  %sext258 = shl i64 %i.bz, 32
  %wide.trip.count254 = ashr exact i64 %sext258, 32 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.bt to i64   ; 11 uses
  %wide.trip.count249 = zext nneg i32 %i.bt to i64
  %i.dp = xor i64 %i.do, -1
  %i.dq = add nsw i64 %wide.trip.count254, %i.dp  ; 2 uses
  %i.dr = mul i64 %i.ct, %i.dq
  %i.ds = shl nuw nsw i64 %wide.trip.count, 1     ; 2 uses
  %i.dt = add i64 %i.dr, %wide.trip.count
  %i.du = shl i64 %i.dt, 1
  %i.dv = getelementptr i8, ptr %i.cy, i64 %i.du
  %scevgep = getelementptr i8, ptr %i.dv, i64 %i.da ; 3 uses
  %i.dw = mul i64 %i.cw, %i.dq
  %i.dx = add i64 %i.dw, %wide.trip.count
  %i.dy = shl i64 %i.dx, 1
  %i.dz = getelementptr i8, ptr %i.dd, i64 %i.dy
  %scevgep261 = getelementptr i8, ptr %i.dz, i64 %i.df ; 3 uses
  %i.ea = mul nsw i64 %i.do, %i.dm
  %scevgep262 = getelementptr i8, ptr %i.cl, i64 %i.ea ; 2 uses
  %i.eb = add nsw i64 %wide.trip.count254, -1     ; 2 uses
  %i.ec = mul i64 %i.eb, %i.dm
  %i.ed = getelementptr i8, ptr %i.cl, i64 %i.ec
  %scevgep263 = getelementptr i8, ptr %i.ed, i64 %i.ds ; 2 uses
  %i.ee = mul nsw i64 %i.do, %i.dn
  %scevgep264 = getelementptr i8, ptr %i.cn, i64 %i.ee ; 2 uses
  %i.ef = mul i64 %i.eb, %i.dn
  %i.eg = getelementptr i8, ptr %i.cn, i64 %i.ef
  %scevgep265 = getelementptr i8, ptr %i.eg, i64 %i.ds ; 2 uses
  %i.eh = shufflevector <2 x i32> %i.bb, <2 x i32> %i.cd, <4 x i32> <i32 0, i32 2, i32 1, i32 0>
  %ident.check.not = icmp eq i32 %i.bh, 1
  %broadcast.splatinsert309 = insertelement <4 x i32> poison, i32 %i.bp, i64 0
  %broadcast.splat310 = shufflevector <4 x i32> %broadcast.splatinsert309, <4 x i32> poison, <4 x i32> zeroinitializer
  %min.iters.check = icmp ult i32 %i.bt, 4
  %bound0 = icmp ult ptr %i.db, %scevgep261
  %bound1 = icmp ult ptr %i.dg, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.ei = or <4 x i32> %i.eh, %i.ce
  %bound0267 = icmp ult ptr %i.db, %scevgep263
  %bound1268 = icmp ult ptr %scevgep262, %scevgep
  %found.conflict269 = and i1 %bound0267, %bound1268
  %bound0272 = icmp ult ptr %i.db, %scevgep265
  %bound1273 = icmp ult ptr %scevgep264, %scevgep
  %found.conflict274 = and i1 %bound0272, %bound1273
  %bound0278 = icmp ult ptr %i.dg, %scevgep263
  %bound1279 = icmp ult ptr %scevgep262, %scevgep261
  %found.conflict280 = and i1 %bound0278, %bound1279
  %i.ej = icmp slt <4 x i32> %i.ei, zeroinitializer
  %bound0284 = icmp ult ptr %i.dg, %scevgep265
  %bound1285 = icmp ult ptr %scevgep264, %scevgep261
  %found.conflict286 = and i1 %bound0284, %bound1285
  %i.ek = or i32 %i.bc, %i.cu
  %i.el = icmp slt i32 %i.ek, 0
  %i.em = bitcast <4 x i1> %i.ej to i4
  %i.en = icmp ne i4 %i.em, 0
  %op.rdx = or i1 %i.en, %i.el
  %op.rdx323.a = or i1 %found.conflict, %found.conflict269
  %op.rdx324.a = or i1 %found.conflict274, %found.conflict280
  %op.rdx325.a = or i1 %op.rdx, %op.rdx323.a
  %op.rdx326 = or i1 %op.rdx324.a, %found.conflict286
  %op.rdx327 = or i1 %op.rdx325.a, %op.rdx326
  %min.iters.check290 = icmp ult i32 %i.bt, 16
  %i.eo = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.eo, 0
  %n.vec294 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n299 = icmp eq i64 %n.vec294, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ep = add nsw i64 %wide.trip.count, -1
  br label %.lr.ph222

._crit_edge231.split:                             ; preds = %._crit_edge223, %.lr.ph230, %bb.c
  ret i32 0

.lr.ph222:                                        ; preds = %.lr.ph222.preheader, %._crit_edge223
  %indvars.iv251 = phi i64 [ %i.do, %.lr.ph222.preheader ], [ %indvars.iv.next252, %._crit_edge223 ] ; 6 uses
  %indvars.iv237 = phi i32 [ %i.dk, %.lr.ph222.preheader ], [ %indvars.iv.next238, %._crit_edge223 ] ; 2 uses
  %.0227 = phi ptr [ %i.db, %.lr.ph222.preheader ], [ %i.gm, %._crit_edge223 ] ; 7 uses
  %.0175225 = phi ptr [ %i.dg, %.lr.ph222.preheader ], [ %i.gn, %._crit_edge223 ] ; 7 uses
  %smax239 = tail call i32 @llvm.smax.i32(i32 %indvars.iv237, i32 0)
  %i.eq = zext nneg i32 %smax239 to i64
  %i.er = trunc nsw i64 %indvars.iv251 to i32
  %i.es = mul i32 %i.cj, %i.er
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds i8, ptr %i.ci, i64 %i.et
  %i.ev = mul nsw i64 %indvars.iv251, %i.dm
  %i.ew = getelementptr inbounds i8, ptr %i.cl, i64 %i.ev ; 6 uses
  %i.ex = mul nsw i64 %indvars.iv251, %i.dn
  %i.ey = getelementptr inbounds i8, ptr %i.cn, i64 %i.ex ; 6 uses
  %i.ez = trunc i64 %indvars.iv251 to i32
  %i.fa = sub i32 %i.ez, %i.bn
  %i.fb = tail call i32 @llvm.smax.i32(i32 %i.fa, i32 0)
  %i.fc = trunc i64 %indvars.iv251 to i32
  %i.fd = add i32 %i.bn, %i.fc
  %. = tail call i32 @llvm.smin.i32(i32 %i.co, i32 %i.fd) ; 2 uses
  %.not207 = icmp sgt i32 %i.fb, %.
  br i1 %.not207, label %iter.check, label %.lr.ph213.preheader

iter.check:                                       ; preds = %.lr.ph222
  %brmerge = select i1 %min.iters.check, i1 true, i1 %op.rdx327
  br i1 %brmerge, label %.lr.ph222.split.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check290, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 5 uses
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %i.ew, i64 %index ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %wide.load = load <8 x i16>, ptr %i.fe, align 2, !tbaa !86, !alias.scope !88
  %wide.load291 = load <8 x i16>, ptr %i.ff, align 2, !tbaa !86, !alias.scope !88
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.ey, i64 %index ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %wide.load292 = load <8 x i16>, ptr %i.fg, align 2, !tbaa !86, !alias.scope !91
  %wide.load293 = load <8 x i16>, ptr %i.fh, align 2, !tbaa !86, !alias.scope !91
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %.0227, i64 %index ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  store <8 x i16> %wide.load, ptr %i.fi, align 2, !tbaa !86, !alias.scope !93, !noalias !95
  store <8 x i16> %wide.load291, ptr %i.fj, align 2, !tbaa !86, !alias.scope !93, !noalias !95
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %.0175225, i64 %index ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  store <8 x i16> %wide.load292, ptr %i.fk, align 2, !tbaa !86, !alias.scope !97, !noalias !98
  store <8 x i16> %wide.load293, ptr %i.fl, align 2, !tbaa !86, !alias.scope !97, !noalias !98
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fm = icmp eq i64 %index.next, %n.vec
  br i1 %i.fm, label %middle.block, label %vector.body, !llvm.loop !99

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge223, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph222.split.us.preheader, label %vec.epilog.ph, !prof !100

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index295 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next298, %vec.epilog.vector.body ] ; 5 uses
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.ew, i64 %index295
  %wide.load296 = load <4 x i16>, ptr %i.fn, align 2, !tbaa !86, !alias.scope !88
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.ey, i64 %index295
  %wide.load297 = load <4 x i16>, ptr %i.fo, align 2, !tbaa !86, !alias.scope !91
  %i.fp = getelementptr inbounds nuw [2 x i8], ptr %.0227, i64 %index295
  store <4 x i16> %wide.load296, ptr %i.fp, align 2, !tbaa !86, !alias.scope !93, !noalias !95
  %i.fq = getelementptr inbounds nuw [2 x i8], ptr %.0175225, i64 %index295
  store <4 x i16> %wide.load297, ptr %i.fq, align 2, !tbaa !86, !alias.scope !97, !noalias !98
  %index.next298 = add nuw i64 %index295, 4       ; 2 uses
  %i.fr = icmp eq i64 %index.next298, %n.vec294
  br i1 %i.fr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !101

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n299, label %._crit_edge223, label %.lr.ph222.split.us.preheader

.lr.ph222.split.us.preheader:                     ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv246.ph = phi i64 [ 0, %iter.check ], [ %n.vec294, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 7 uses
  br i1 %lcmp.mod.not, label %.lr.ph222.split.us.prol.loopexit, label %.lr.ph222.split.us.prol

.lr.ph222.split.us.prol:                          ; preds = %.lr.ph222.split.us.preheader
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.ew, i64 %indvars.iv246.ph
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !86
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr %i.ey, i64 %indvars.iv246.ph
  %i.fv = load i16, ptr %i.fu, align 2, !tbaa !86
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr %.0227, i64 %indvars.iv246.ph
  store i16 %i.ft, ptr %i.fw, align 2, !tbaa !86
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %.0175225, i64 %indvars.iv246.ph
  store i16 %i.fv, ptr %i.fx, align 2, !tbaa !86
  %indvars.iv.next247.prol = or disjoint i64 %indvars.iv246.ph, 1
  br label %.lr.ph222.split.us.prol.loopexit

.lr.ph222.split.us.prol.loopexit:                 ; preds = %.lr.ph222.split.us.prol, %.lr.ph222.split.us.preheader
end_hunk_1
begin_hunk_2_@manhattan_slice16:bb.a
  %i.ik = mul nsw i64 %i.ig, %i.dj
  %i.il = getelementptr inbounds [2 x i8], ptr %i.hv, i64 %i.ih
  %i.im = getelementptr inbounds [2 x i8], ptr %i.hv, i64 %i.ii
  %i.in = getelementptr inbounds [2 x i8], ptr %i.hv, i64 %i.ij
  %i.io = getelementptr inbounds [2 x i8], ptr %i.hv, i64 %i.ik
  %i.ip = load i16, ptr %i.il, align 2, !tbaa !86
  %i.iq = load i16, ptr %i.im, align 2, !tbaa !86
  %i.ir = load i16, ptr %i.in, align 2, !tbaa !86
  %i.is = load i16, ptr %i.io, align 2, !tbaa !86
  %i.it = insertelement <4 x i16> poison, i16 %i.ip, i64 0
  %i.iu = insertelement <4 x i16> %i.it, i16 %i.iq, i64 1
  %i.iv = insertelement <4 x i16> %i.iu, i16 %i.ir, i64 2
  %i.iw = insertelement <4 x i16> %i.iv, i16 %i.is, i64 3
  %i.ix = zext <4 x i16> %i.iw to <4 x i32>
  %i.iy = getelementptr inbounds [2 x i8], ptr %i.hx, i64 %i.id
  %wide.load315 = load <4 x i16>, ptr %i.iy, align 2, !tbaa !86
  %i.iz = zext <4 x i16> %wide.load315 to <4 x i32> ; 2 uses
  %i.ja = getelementptr inbounds [2 x i8], ptr %i.hz, i64 %i.id
  %wide.load316 = load <4 x i16>, ptr %i.ja, align 2, !tbaa !86
  %i.jb = zext <4 x i16> %wide.load316 to <4 x i32> ; 2 uses
  %i.jc = sub nsw <4 x i32> %broadcast.splat, %i.ix
  %i.jd = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.jc, i1 true)
  %i.je = sub nsw <4 x i32> %broadcast.splat306.a, %i.iz
  %i.jf = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.je, i1 true)
  %i.jg = sub nsw <4 x i32> %broadcast.splat308, %i.jb
  %i.jh = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.jg, i1 true)
  %i.ji = add nuw nsw <4 x i32> %i.jf, %i.jd
  %i.jj = add nuw nsw <4 x i32> %i.ji, %i.jh
  %i.jk = icmp slt <4 x i32> %i.jj, %broadcast.splat310 ; 3 uses
  %i.jl = zext <4 x i1> %i.jk to <4 x i32>
  %i.jm = add <4 x i32> %vec.phi314, %i.jl        ; 2 uses
  %i.jn = select <4 x i1> %i.jk, <4 x i32> %i.jb, <4 x i32> zeroinitializer
  %i.jo = add <4 x i32> %i.jn, %vec.phi313        ; 2 uses
  %i.jp = select <4 x i1> %i.jk, <4 x i32> %i.iz, <4 x i32> zeroinitializer
  %i.jq = add <4 x i32> %i.jp, %vec.phi           ; 2 uses
  %index.next317 = add nuw i64 %index312, 4       ; 2 uses
  %i.jr = icmp eq i64 %index.next317, %n.vec304
  br i1 %i.jr, label %middle.block318, label %vector.body311, !llvm.loop !105

middle.block318:                                  ; preds = %vector.body311
  %i.js = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.jq) ; 2 uses
  %i.jt = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.jo) ; 2 uses
  %i.ju = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.jm) ; 2 uses
  br i1 %cmp.n319, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block318
  %indvars.iv234.ph = phi i64 [ %i.go, %.lr.ph ], [ %i.hi, %middle.block318 ]
  %.1204.ph = phi i32 [ %.0178211, %.lr.ph ], [ %i.js, %middle.block318 ]
  %.1181202.ph = phi i32 [ %.0180210, %.lr.ph ], [ %i.jt, %middle.block318 ]
  %.1184201.ph = phi i32 [ %.0183209, %.lr.ph ], [ %i.ju, %middle.block318 ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block318
  %.2185.lcssa = phi i32 [ %i.ju, %middle.block318 ], [ %.2185, %scalar.ph ] ; 2 uses
  %.2182.lcssa = phi i32 [ %i.jt, %middle.block318 ], [ %.2182, %scalar.ph ] ; 2 uses
  %.2.lcssa = phi i32 [ %i.js, %middle.block318 ], [ %.2, %scalar.ph ] ; 2 uses
  %indvars.iv.next241 = add nsw i64 %indvars.iv240, %i.dl ; 2 uses
  %.not = icmp sgt i64 %indvars.iv.next241, %i.fz
  br i1 %.not, label %._crit_edge214, label %.lr.ph, !llvm.loop !106

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv234 = phi i64 [ %indvars.iv.next235, %scalar.ph ], [ %indvars.iv234.ph, %scalar.ph.preheader ] ; 4 uses
  %.1204 = phi i32 [ %.2, %scalar.ph ], [ %.1204.ph, %scalar.ph.preheader ]
  %.1181202 = phi i32 [ %.2182, %scalar.ph ], [ %.1181202.ph, %scalar.ph.preheader ]
  %.1184201 = phi i32 [ %.2185, %scalar.ph ], [ %.1184201.ph, %scalar.ph.preheader ]
  %i.jv = mul nsw i64 %indvars.iv234, %i.dj
  %i.jw = getelementptr inbounds [2 x i8], ptr %i.hv, i64 %i.jv
  %i.jx = load i16, ptr %i.jw, align 2, !tbaa !86
  %i.jy = zext i16 %i.jx to i32
  %i.jz = getelementptr inbounds [2 x i8], ptr %i.hx, i64 %indvars.iv234
  %i.ka = load i16, ptr %i.jz, align 2, !tbaa !86
  %i.kb = zext i16 %i.ka to i32                   ; 2 uses
  %i.kc = getelementptr inbounds [2 x i8], ptr %i.hz, i64 %indvars.iv234
  %i.kd = load i16, ptr %i.kc, align 2, !tbaa !86
  %i.ke = zext i16 %i.kd to i32                   ; 2 uses
  %i.kf = sub nsw i32 %i.gx, %i.jy
  %i.kg = tail call i32 @llvm.abs.i32(i32 %i.kf, i1 true)
  %i.kh = sub nsw i32 %i.ha, %i.kb
  %i.ki = tail call i32 @llvm.abs.i32(i32 %i.kh, i1 true)
  %i.kj = sub nsw i32 %i.hd, %i.ke
  %i.kk = tail call i32 @llvm.abs.i32(i32 %i.kj, i1 true)
  %i.kl = add nuw nsw i32 %i.ki, %i.kg
  %i.km = add nuw nsw i32 %i.kl, %i.kk
  %i.kn = icmp slt i32 %i.km, %i.bp               ; 3 uses
  %i.ko = zext i1 %i.kn to i32
  %.2185 = add nsw i32 %.1184201, %i.ko           ; 2 uses
  %i.kp = select i1 %i.kn, i32 %i.ke, i32 0
  %.2182 = add nsw i32 %i.kp, %.1181202           ; 2 uses
  %i.kq = select i1 %i.kn, i32 %i.kb, i32 0
  %.2 = add nsw i32 %i.kq, %.1204                 ; 2 uses
  %indvars.iv.next235 = add nsw i64 %indvars.iv234, %i.di ; 2 uses
  %.not198 = icmp sgt i64 %indvars.iv.next235, %i.he
  br i1 %.not198, label %._crit_edge, label %scalar.ph, !llvm.loop !107
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @euclidean_slice8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44   ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.f = load i32, ptr %i.e, align 4, !tbaa !41
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = sext i32 %2 to i64                       ; 2 uses
  %i.i = mul nsw i64 %i.g, %i.h
  %i.j = sext i32 %3 to i64                       ; 4 uses
  %i.k = sdiv i64 %i.i, %i.j
  %i.l = trunc i64 %i.k to i32                    ; 5 uses
  %i.m = add nsw i32 %2, 1
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = mul nsw i64 %i.g, %i.n
  %i.p = sdiv i64 %i.o, %i.j
  %i.q = trunc i64 %i.p to i32
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.t = load i32, ptr %i.s, align 8, !tbaa !41   ; 2 uses
  %i.u = mul nsw i32 %i.t, %i.l
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds i8, ptr %i.r, i64 %i.v
  %i.x = load ptr, ptr %1, align 8, !tbaa !56
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !41   ; 2 uses
  %i.aa = mul nsw i32 %i.z, %i.l
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %i.x, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !41
  %i.af = sub nsw i32 %i.q, %i.l                  ; 2 uses
  tail call void @av_image_copy_plane(ptr noundef %i.w, i32 noundef %i.t, ptr noundef %i.ac, i32 noundef %i.z, i32 noundef %i.ae, i32 noundef %i.af) #5
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !49
  %i.ai = icmp eq i32 %i.ah, 4
  br i1 %i.ai, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !56
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %i.am = load i32, ptr %i.al, align 4, !tbaa !41 ; 2 uses
  %i.an = mul nsw i32 %i.am, %i.l
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr %i.ak, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !56
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.at = load i32, ptr %i.as, align 4, !tbaa !41 ; 2 uses
  %i.au = mul nsw i32 %i.at, %i.l
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds i8, ptr %i.ar, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !41
  tail call void @av_image_copy_plane(ptr noundef %i.ap, i32 noundef %i.am, ptr noundef %i.aw, i32 noundef %i.at, i32 noundef %i.ay, i32 noundef %i.af) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !41
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !41
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !53
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !57 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !58
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !59 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !60 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !41 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !41 ; 6 uses
  %i.br = sext i32 %i.bo to i64                   ; 2 uses
  %i.bs = mul nsw i64 %i.br, %i.h
  %i.bt = sdiv i64 %i.bs, %i.j                    ; 2 uses
  %i.bu = trunc i64 %i.bt to i32                  ; 4 uses
  %i.bv = mul nsw i64 %i.br, %i.n
  %i.bw = sdiv i64 %i.bv, %i.j                    ; 2 uses
  %i.bx = trunc i64 %i.bw to i32
  %i.by = icmp slt i32 %i.bu, %i.bx
  br i1 %i.by, label %.lr.ph233, label %._crit_edge234.split

.lr.ph233:                                        ; preds = %bb.c
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !41 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !41 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !61
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !55
  %i.ch = load i32, ptr %i.y, align 8, !tbaa !41
  %i.ci = mul i32 %i.cg, %i.ch                    ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cl = add nsw i32 %i.bo, -1
  %i.cm = icmp sgt i32 %i.bq, 0
  %i.cn = add i32 %i.bq, -1
  %i.co = sitofp nsz i32 %i.ce to float           ; 2 uses
  %i.cp = sext i32 %i.cc to i64                   ; 2 uses
  %i.cq = sext i32 %i.ca to i64                   ; 2 uses
  br i1 %i.cm, label %.lr.ph225.preheader, label %._crit_edge234.split

.lr.ph225.preheader:                              ; preds = %.lr.ph233
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !56 ; 2 uses
  %i.ct = mul i32 %i.cc, %i.bu
  %i.cu = sext i32 %i.ct to i64                   ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cs, i64 %i.cu  ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !56 ; 2 uses
  %i.cy = mul i32 %i.ca, %i.bu
  %i.cz = sext i32 %i.cy to i64                   ; 2 uses
  %i.da = getelementptr i8, ptr %i.cx, i64 %i.cz  ; 4 uses
  %i.db = sub i32 0, %i.bk
  %i.dc = sext i32 %i.bg to i64
  %i.dd = sext i32 %i.be to i64                   ; 6 uses
  %i.de = sub i32 %i.bu, %i.bm
  %i.df = sext i32 %i.bi to i64
  %i.dg = sext i32 %i.ba to i64                   ; 4 uses
  %i.dh = sext i32 %i.bc to i64                   ; 4 uses
  %sext = shl i64 %i.bt, 32
  %i.di = ashr exact i64 %sext, 32                ; 4 uses
  %sext261 = shl i64 %i.bw, 32
  %wide.trip.count257 = ashr exact i64 %sext261, 32 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.bq to i64   ; 12 uses
  %wide.trip.count252 = zext nneg i32 %i.bq to i64
  %i.dj = xor i64 %i.di, -1
  %i.dk = add nsw i64 %wide.trip.count257, %i.dj  ; 2 uses
  %i.dl = mul i64 %i.dk, %i.cp
  %i.dm = getelementptr i8, ptr %i.cs, i64 %i.dl
  %i.dn = getelementptr i8, ptr %i.dm, i64 %i.cu
  %scevgep = getelementptr i8, ptr %i.dn, i64 %wide.trip.count ; 3 uses
  %i.do = mul i64 %i.dk, %i.cq
  %i.dp = getelementptr i8, ptr %i.cx, i64 %i.do
  %i.dq = getelementptr i8, ptr %i.dp, i64 %i.cz
  %scevgep264 = getelementptr i8, ptr %i.dq, i64 %wide.trip.count ; 3 uses
  %i.dr = mul nsw i64 %i.di, %i.dg
  %i.ds = mul nsw i64 %i.di, %i.dh
  %ident.check.not = icmp eq i32 %i.bg, 1
  %broadcast.splatinsert306 = insertelement <4 x float> poison, float %i.co, i64 0
  %broadcast.splat307 = shufflevector <4 x float> %broadcast.splatinsert306, <4 x float> poison, <4 x i32> zeroinitializer
  %min.iters.check = icmp ult i32 %i.bq, 4
  %bound0 = icmp ult ptr %i.cv, %scevgep264
  %bound1 = icmp ult ptr %i.da, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.dt = or i32 %i.ca, %i.cc
  %i.du = icmp slt i32 %i.dt, 0
  %i.dv = or i1 %found.conflict, %i.du
  %stride.check271 = icmp slt i32 %i.cc, 0
  %invariant.op = or i1 %stride.check271, %i.dv
  %stride.check280 = icmp slt i32 %i.ca, 0
  %min.iters.check287 = icmp ult i32 %i.bq, 32
  %i.dw = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.dw, 0
  %n.vec291 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n296 = icmp eq i64 %n.vec291, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.dx = add nsw i64 %wide.trip.count, -1
  br label %.lr.ph225

._crit_edge234.split:                             ; preds = %._crit_edge226, %.lr.ph233, %bb.c
  ret i32 0

.lr.ph225:                                        ; preds = %.lr.ph225.preheader, %._crit_edge226
  %indvar = phi i64 [ 0, %.lr.ph225.preheader ], [ %indvar.next, %._crit_edge226 ] ; 3 uses
  %indvars.iv254 = phi i64 [ %i.di, %.lr.ph225.preheader ], [ %indvars.iv.next255, %._crit_edge226 ] ; 6 uses
  %indvars.iv240 = phi i32 [ %i.de, %.lr.ph225.preheader ], [ %indvars.iv.next241, %._crit_edge226 ] ; 2 uses
  %.0230 = phi ptr [ %i.cv, %.lr.ph225.preheader ], [ %i.ge, %._crit_edge226 ] ; 7 uses
  %.0178228 = phi ptr [ %i.da, %.lr.ph225.preheader ], [ %i.gf, %._crit_edge226 ] ; 7 uses
  %i.dy = mul i64 %indvar, %i.dg
  %i.dz = mul i64 %indvar, %i.dh
  %smax242 = tail call i32 @llvm.smax.i32(i32 %indvars.iv240, i32 0)
  %i.ea = zext nneg i32 %smax242 to i64
  %i.eb = load ptr, ptr %1, align 8, !tbaa !56
  %i.ec = trunc nsw i64 %indvars.iv254 to i32
  %i.ed = mul i32 %i.ci, %i.ec
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds i8, ptr %i.eb, i64 %i.ee
  %i.eg = load ptr, ptr %i.cj, align 8, !tbaa !56 ; 2 uses
  %i.eh = mul i64 %indvars.iv254, %i.dg
  %i.ei = getelementptr i8, ptr %i.eg, i64 %i.eh  ; 8 uses
  %i.ej = load ptr, ptr %i.ck, align 8, !tbaa !56 ; 2 uses
  %i.ek = mul i64 %indvars.iv254, %i.dh
  %i.el = getelementptr i8, ptr %i.ej, i64 %i.ek  ; 8 uses
  %i.em = trunc i64 %indvars.iv254 to i32
  %i.en = sub i32 %i.em, %i.bm
  %i.eo = tail call i32 @llvm.smax.i32(i32 %i.en, i32 0)
  %i.ep = trunc i64 %indvars.iv254 to i32
  %i.eq = add i32 %i.bm, %i.ep
  %. = tail call i32 @llvm.smin.i32(i32 %i.cl, i32 %i.eq) ; 2 uses
  %.not210 = icmp sgt i32 %i.eo, %.
  br i1 %.not210, label %iter.check, label %.lr.ph216.preheader

iter.check:                                       ; preds = %.lr.ph225
  br i1 %min.iters.check, label %.lr.ph225.split.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.er = getelementptr i8, ptr %i.eg, i64 %i.dr
  %i.es = getelementptr i8, ptr %i.er, i64 %wide.trip.count
  %scevgep265 = getelementptr i8, ptr %i.es, i64 %i.dy ; 2 uses
  %i.et = getelementptr i8, ptr %i.ej, i64 %i.ds
  %i.eu = getelementptr i8, ptr %i.et, i64 %wide.trip.count
  %scevgep266 = getelementptr i8, ptr %i.eu, i64 %i.dz ; 2 uses
  %bound0268 = icmp ult ptr %i.cv, %scevgep265
  %bound1269 = icmp ult ptr %i.ei, %scevgep
  %found.conflict270 = and i1 %bound0268, %bound1269
  %conflict.rdx.reass = or i1 %found.conflict270, %invariant.op
  %bound0272 = icmp ult ptr %i.cv, %scevgep266
  %bound1273 = icmp ult ptr %i.el, %scevgep
  %found.conflict274 = and i1 %bound0272, %bound1273
  %conflict.rdx276 = or i1 %found.conflict274, %conflict.rdx.reass
  %bound0277 = icmp ult ptr %i.da, %scevgep265
  %bound1278 = icmp ult ptr %i.ei, %scevgep264
  %found.conflict279 = and i1 %bound0277, %bound1278
  %i.ev = or i1 %found.conflict279, %stride.check280
  %conflict.rdx281 = or i1 %conflict.rdx276, %i.ev
  %bound0282 = icmp ult ptr %i.da, %scevgep266
  %bound1283 = icmp ult ptr %i.el, %scevgep264
  %found.conflict284 = and i1 %bound0282, %bound1283
  %conflict.rdx286 = or i1 %found.conflict284, %conflict.rdx281
  br i1 %conflict.rdx286, label %.lr.ph225.split.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check287, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 5 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ei, i64 %index ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %wide.load = load <16 x i8>, ptr %i.ew, align 1, !tbaa !62, !alias.scope !108
  %wide.load288 = load <16 x i8>, ptr %i.ex, align 1, !tbaa !62, !alias.scope !108
  %i.ey = getelementptr inbounds nuw i8, ptr %i.el, i64 %index ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %wide.load289 = load <16 x i8>, ptr %i.ey, align 1, !tbaa !62, !alias.scope !111
  %wide.load290 = load <16 x i8>, ptr %i.ez, align 1, !tbaa !62, !alias.scope !111
  %i.fa = getelementptr inbounds nuw i8, ptr %.0230, i64 %index ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  store <16 x i8> %wide.load, ptr %i.fa, align 1, !tbaa !62, !alias.scope !113, !noalias !115
  store <16 x i8> %wide.load288, ptr %i.fb, align 1, !tbaa !62, !alias.scope !113, !noalias !115
  %i.fc = getelementptr inbounds nuw i8, ptr %.0178228, i64 %index ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store <16 x i8> %wide.load289, ptr %i.fc, align 1, !tbaa !62, !alias.scope !117, !noalias !118
  store <16 x i8> %wide.load290, ptr %i.fd, align 1, !tbaa !62, !alias.scope !117, !noalias !118
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fe = icmp eq i64 %index.next, %n.vec
  br i1 %i.fe, label %middle.block, label %vector.body, !llvm.loop !119

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge226, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph225.split.us.preheader, label %vec.epilog.ph, !prof !78

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index292 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next295, %vec.epilog.vector.body ] ; 5 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ei, i64 %index292
  %wide.load293 = load <4 x i8>, ptr %i.ff, align 1, !tbaa !62, !alias.scope !108
  %i.fg = getelementptr inbounds nuw i8, ptr %i.el, i64 %index292
  %wide.load294 = load <4 x i8>, ptr %i.fg, align 1, !tbaa !62, !alias.scope !111
  %i.fh = getelementptr inbounds nuw i8, ptr %.0230, i64 %index292
  store <4 x i8> %wide.load293, ptr %i.fh, align 1, !tbaa !62, !alias.scope !113, !noalias !115
  %i.fi = getelementptr inbounds nuw i8, ptr %.0178228, i64 %index292
  store <4 x i8> %wide.load294, ptr %i.fi, align 1, !tbaa !62, !alias.scope !117, !noalias !118
  %index.next295 = add nuw i64 %index292, 4       ; 2 uses
  %i.fj = icmp eq i64 %index.next295, %n.vec291
  br i1 %i.fj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !120

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n296, label %._crit_edge226, label %.lr.ph225.split.us.preheader

.lr.ph225.split.us.preheader:                     ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv249.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec291, %vec.epilog.middle.block ] ; 7 uses
  br i1 %lcmp.mod.not, label %.lr.ph225.split.us.prol.loopexit, label %.lr.ph225.split.us.prol

.lr.ph225.split.us.prol:                          ; preds = %.lr.ph225.split.us.preheader
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ei, i64 %indvars.iv249.ph
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !62
  %i.fm = getelementptr inbounds nuw i8, ptr %i.el, i64 %indvars.iv249.ph
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !62
  %i.fo = getelementptr inbounds nuw i8, ptr %.0230, i64 %indvars.iv249.ph
  store i8 %i.fl, ptr %i.fo, align 1, !tbaa !62
  %i.fp = getelementptr inbounds nuw i8, ptr %.0178228, i64 %indvars.iv249.ph
  store i8 %i.fn, ptr %i.fp, align 1, !tbaa !62
  %indvars.iv.next250.prol = or disjoint i64 %indvars.iv249.ph, 1
  br label %.lr.ph225.split.us.prol.loopexit

.lr.ph225.split.us.prol.loopexit:                 ; preds = %.lr.ph225.split.us.prol, %.lr.ph225.split.us.preheader
  %indvars.iv249.unr = phi i64 [ %indvars.iv249.ph, %.lr.ph225.split.us.preheader ], [ %indvars.iv.next250.prol, %.lr.ph225.split.us.prol ]
  %i.fq = icmp eq i64 %indvars.iv249.ph, %i.dx
  br i1 %i.fq, label %._crit_edge226, label %.lr.ph225.split.us
end_hunk_2
begin_hunk_3_@euclidean_slice16:bb.a
  %.not201203 = icmp sgt i32 %i.gs, %.202
  %i.he = zext i16 %i.gx to i64
  %i.hf = zext i16 %i.gz to i64
  %i.hg = zext i16 %i.hc to i64
  br i1 %.not201203, label %._crit_edge217, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph216
  %i.hh = zext nneg i32 %.202 to i64
  br label %.lr.ph

._crit_edge217:                                   ; preds = %._crit_edge, %.lr.ph216
  %.us-phi = phi i32 [ 1, %.lr.ph216 ], [ %.2188, %._crit_edge ] ; 3 uses
  %.us-phi221 = phi i32 [ %i.hd, %.lr.ph216 ], [ %.2185, %._crit_edge ]
  %.us-phi222 = phi i32 [ %i.ha, %.lr.ph216 ], [ %.2, %._crit_edge ]
  %i.hi = ashr i32 %.us-phi, 1                    ; 2 uses
  %i.hj = add nsw i32 %.us-phi222, %i.hi
  %i.hk = sdiv i32 %i.hj, %.us-phi
  %i.hl = trunc i32 %i.hk to i16
  %i.hm = getelementptr inbounds nuw [2 x i8], ptr %.0230, i64 %indvars.iv246
  store i16 %i.hl, ptr %i.hm, align 2, !tbaa !86
  %i.hn = add nsw i32 %.us-phi221, %i.hi
  %i.ho = sdiv i32 %i.hn, %.us-phi
  %i.hp = trunc i32 %i.ho to i16
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %.0178228, i64 %indvars.iv246
  store i16 %i.hp, ptr %i.hq, align 2, !tbaa !86
  %indvars.iv.next247 = add nuw nsw i64 %indvars.iv246, 1 ; 2 uses
  %indvars.iv.next = add i32 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next247, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge226, label %.lr.ph216, !llvm.loop !142

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv243 = phi i64 [ %i.er, %.lr.ph.preheader ], [ %indvars.iv.next244, %._crit_edge ] ; 4 uses
  %.0181214 = phi i32 [ %i.ha, %.lr.ph.preheader ], [ %.2, %._crit_edge ]
  %.0183213 = phi i32 [ %i.hd, %.lr.ph.preheader ], [ %.2185, %._crit_edge ]
  %.0186212 = phi i32 [ 1, %.lr.ph.preheader ], [ %.2188, %._crit_edge ]
  %i.hr = trunc nsw i64 %indvars.iv243 to i32
  %i.hs = mul i32 %i.cj, %i.hr
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds i8, ptr %i.ci, i64 %i.ht
  %i.hv = mul nsw i64 %indvars.iv243, %i.dn
  %i.hw = getelementptr inbounds i8, ptr %i.cl, i64 %i.hv
  %i.hx = mul nsw i64 %indvars.iv243, %i.do
  %i.hy = getelementptr inbounds i8, ptr %i.cn, i64 %i.hx
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d
  %indvars.iv.next244 = add nsw i64 %indvars.iv243, %i.dm ; 2 uses
  %.not = icmp sgt i64 %indvars.iv.next244, %i.ga
  br i1 %.not, label %._crit_edge217, label %.lr.ph, !llvm.loop !143

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv237 = phi i64 [ %i.gp, %.lr.ph ], [ %indvars.iv.next238, %bb.d ] ; 4 uses
  %.1207 = phi i32 [ %.0181214, %.lr.ph ], [ %.2, %bb.d ]
  %.1184205 = phi i32 [ %.0183213, %.lr.ph ], [ %.2185, %bb.d ]
  %.1187204 = phi i32 [ %.0186212, %.lr.ph ], [ %.2188, %bb.d ]
  %i.hz = mul nsw i64 %indvars.iv237, %i.dk
  %i.ia = getelementptr inbounds [2 x i8], ptr %i.hu, i64 %i.hz
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !86
  %i.ic = zext i16 %i.ib to i64
  %i.id = getelementptr inbounds [2 x i8], ptr %i.hw, i64 %indvars.iv237
  %i.ie = load i16, ptr %i.id, align 2, !tbaa !86 ; 2 uses
  %i.if = zext i16 %i.ie to i64
  %i.ig = getelementptr inbounds [2 x i8], ptr %i.hy, i64 %indvars.iv237
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !86 ; 2 uses
  %i.ii = zext i16 %i.ih to i64
  %i.ij = sub nsw i64 %i.he, %i.ic                ; 2 uses
  %i.ik = sub nsw i64 %i.hf, %i.if                ; 2 uses
  %i.il = sub nsw i64 %i.hg, %i.ii                ; 2 uses
  %i.im = mul nsw i64 %i.ij, %i.ij
  %i.in = mul nsw i64 %i.ik, %i.ik
  %i.io = add nuw nsw i64 %i.in, %i.im
  %i.ip = mul nsw i64 %i.il, %i.il
  %i.iq = add nuw nsw i64 %i.io, %i.ip
  %i.ir = uitofp nneg i64 %i.iq to float
  %i.is = tail call nsz float @llvm.sqrt.f32(float %i.ir)
  %i.it = fcmp nsz olt float %i.is, %i.cr         ; 3 uses
  %i.iu = zext i16 %i.ie to i32
  %i.iv = zext i16 %i.ih to i32
  %i.iw = zext i1 %i.it to i32
  %.2188 = add nsw i32 %.1187204, %i.iw           ; 3 uses
  %i.ix = select i1 %i.it, i32 %i.iv, i32 0
  %.2185 = add i32 %i.ix, %.1184205               ; 3 uses
  %i.iy = select i1 %i.it, i32 %i.iu, i32 0
  %.2 = add i32 %i.iy, %.1207                     ; 3 uses
  %indvars.iv.next238 = add nsw i64 %indvars.iv237, %i.dj ; 2 uses
  %.not201 = icmp sgt i64 %indvars.iv.next238, %i.hh
  br i1 %.not201, label %._crit_edge, label %bb.d, !llvm.loop !144
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @manhattan_e_slice8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44   ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.f = load i32, ptr %i.e, align 4, !tbaa !41
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = sext i32 %2 to i64                       ; 2 uses
  %i.i = mul nsw i64 %i.g, %i.h
  %i.j = sext i32 %3 to i64                       ; 4 uses
  %i.k = sdiv i64 %i.i, %i.j
  %i.l = trunc i64 %i.k to i32                    ; 5 uses
  %i.m = add nsw i32 %2, 1
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = mul nsw i64 %i.g, %i.n
  %i.p = sdiv i64 %i.o, %i.j
  %i.q = trunc i64 %i.p to i32
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.t = load i32, ptr %i.s, align 8, !tbaa !41   ; 2 uses
  %i.u = mul nsw i32 %i.t, %i.l
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds i8, ptr %i.r, i64 %i.v
  %i.x = load ptr, ptr %1, align 8, !tbaa !56
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !41   ; 2 uses
  %i.aa = mul nsw i32 %i.z, %i.l
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %i.x, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !41
  %i.af = sub nsw i32 %i.q, %i.l                  ; 2 uses
  tail call void @av_image_copy_plane(ptr noundef %i.w, i32 noundef %i.t, ptr noundef %i.ac, i32 noundef %i.z, i32 noundef %i.ae, i32 noundef %i.af) #5
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !49
  %i.ai = icmp eq i32 %i.ah, 4
  br i1 %i.ai, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !56
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %i.am = load i32, ptr %i.al, align 4, !tbaa !41 ; 2 uses
  %i.an = mul nsw i32 %i.am, %i.l
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr %i.ak, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !56
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.at = load i32, ptr %i.as, align 4, !tbaa !41 ; 2 uses
  %i.au = mul nsw i32 %i.at, %i.l
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds i8, ptr %i.ar, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !41
  tail call void @av_image_copy_plane(ptr noundef %i.ap, i32 noundef %i.am, ptr noundef %i.aw, i32 noundef %i.at, i32 noundef %i.ay, i32 noundef %i.af) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !41
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !41
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !53
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !57 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !58
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !59 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !60 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !61 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !145 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !146 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !147 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !41 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !41 ; 6 uses
  %i.bz = sext i32 %i.bw to i64                   ; 2 uses
  %i.ca = mul nsw i64 %i.bz, %i.h
  %i.cb = sdiv i64 %i.ca, %i.j                    ; 2 uses
  %i.cc = trunc i64 %i.cb to i32                  ; 4 uses
  %i.cd = mul nsw i64 %i.bz, %i.n
  %i.ce = sdiv i64 %i.cd, %i.j                    ; 2 uses
  %i.cf = trunc i64 %i.ce to i32
  %i.cg = icmp slt i32 %i.cc, %i.cf
  br i1 %i.cg, label %.lr.ph238, label %._crit_edge239.split

.lr.ph238:                                        ; preds = %bb.c
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !41 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !41 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !55
  %i.cn = load i32, ptr %i.y, align 8, !tbaa !41
  %i.co = mul i32 %i.cm, %i.cn                    ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cr = add nsw i32 %i.bw, -1
  %i.cs = icmp sgt i32 %i.by, 0
  %i.ct = add i32 %i.by, -1
  %i.cu = sext i32 %i.ck to i64                   ; 2 uses
  %i.cv = sext i32 %i.ci to i64                   ; 2 uses
  br i1 %i.cs, label %.lr.ph230.preheader, label %._crit_edge239.split

.lr.ph230.preheader:                              ; preds = %.lr.ph238
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !56 ; 2 uses
  %i.cy = mul i32 %i.ck, %i.cc
  %i.cz = sext i32 %i.cy to i64                   ; 2 uses
  %i.da = getelementptr i8, ptr %i.cx, i64 %i.cz  ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !56 ; 2 uses
  %i.dd = mul i32 %i.ci, %i.cc
  %i.de = sext i32 %i.dd to i64                   ; 2 uses
  %i.df = getelementptr i8, ptr %i.dc, i64 %i.de  ; 4 uses
  %i.dg = sub i32 0, %i.bk
  %i.dh = sext i32 %i.bg to i64
  %i.di = sext i32 %i.be to i64                   ; 6 uses
  %i.dj = sub i32 %i.cc, %i.bm
  %i.dk = sext i32 %i.bi to i64
  %i.dl = sext i32 %i.ba to i64                   ; 4 uses
  %i.dm = sext i32 %i.bc to i64                   ; 4 uses
  %sext = shl i64 %i.cb, 32
  %i.dn = ashr exact i64 %sext, 32                ; 4 uses
  %sext266 = shl i64 %i.ce, 32
  %wide.trip.count262 = ashr exact i64 %sext266, 32 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.by to i64   ; 12 uses
  %wide.trip.count257 = zext nneg i32 %i.by to i64
  %i.do = xor i64 %i.dn, -1
  %i.dp = add nsw i64 %wide.trip.count262, %i.do  ; 2 uses
  %i.dq = mul i64 %i.dp, %i.cu
  %i.dr = getelementptr i8, ptr %i.cx, i64 %i.dq
  %i.ds = getelementptr i8, ptr %i.dr, i64 %i.cz
  %scevgep = getelementptr i8, ptr %i.ds, i64 %wide.trip.count ; 3 uses
  %i.dt = mul i64 %i.dp, %i.cv
  %i.du = getelementptr i8, ptr %i.dc, i64 %i.dt
  %i.dv = getelementptr i8, ptr %i.du, i64 %i.de
  %scevgep269 = getelementptr i8, ptr %i.dv, i64 %wide.trip.count ; 3 uses
  %i.dw = mul nsw i64 %i.dn, %i.dl
  %i.dx = mul nsw i64 %i.dn, %i.dm
  %ident.check.not = icmp eq i32 %i.bg, 1
  %broadcast.splatinsert311.a = insertelement <4 x i32> poison, i32 %i.bo, i64 0
  %broadcast.splat312.a = shufflevector <4 x i32> %broadcast.splatinsert311.a, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert313.a = insertelement <4 x i32> poison, i32 %i.bs, i64 0
  %broadcast.splat314.a = shufflevector <4 x i32> %broadcast.splatinsert313.a, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert315.a = insertelement <4 x i32> poison, i32 %i.bu, i64 0
  %broadcast.splat316.a = shufflevector <4 x i32> %broadcast.splatinsert315.a, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert317 = insertelement <4 x i32> poison, i32 %i.bq, i64 0
  %broadcast.splat318 = shufflevector <4 x i32> %broadcast.splatinsert317, <4 x i32> poison, <4 x i32> zeroinitializer
  %min.iters.check = icmp ult i32 %i.by, 4
  %bound0 = icmp ult ptr %i.da, %scevgep269
  %bound1 = icmp ult ptr %i.df, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.dy = or i32 %i.ci, %i.ck
  %i.dz = icmp slt i32 %i.dy, 0
  %i.ea = or i1 %found.conflict, %i.dz
  %stride.check276 = icmp slt i32 %i.ck, 0
  %invariant.op = or i1 %stride.check276, %i.ea
  %stride.check285 = icmp slt i32 %i.ci, 0
  %min.iters.check292 = icmp ult i32 %i.by, 32
  %i.eb = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.eb, 0
  %n.vec296 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n301 = icmp eq i64 %n.vec296, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ec = add nsw i64 %wide.trip.count, -1
  br label %.lr.ph230

._crit_edge239.split:                             ; preds = %._crit_edge231, %.lr.ph238, %bb.c
  ret i32 0

.lr.ph230:                                        ; preds = %.lr.ph230.preheader, %._crit_edge231
  %indvar = phi i64 [ 0, %.lr.ph230.preheader ], [ %indvar.next, %._crit_edge231 ] ; 3 uses
  %indvars.iv259 = phi i64 [ %i.dn, %.lr.ph230.preheader ], [ %indvars.iv.next260, %._crit_edge231 ] ; 6 uses
  %indvars.iv245 = phi i32 [ %i.dj, %.lr.ph230.preheader ], [ %indvars.iv.next246, %._crit_edge231 ] ; 2 uses
  %.0235 = phi ptr [ %i.da, %.lr.ph230.preheader ], [ %i.gj, %._crit_edge231 ] ; 7 uses
  %.0181233 = phi ptr [ %i.df, %.lr.ph230.preheader ], [ %i.gk, %._crit_edge231 ] ; 7 uses
  %i.ed = mul i64 %indvar, %i.dl
  %i.ee = mul i64 %indvar, %i.dm
  %smax247 = tail call i32 @llvm.smax.i32(i32 %indvars.iv245, i32 0)
  %i.ef = zext nneg i32 %smax247 to i64
  %i.eg = load ptr, ptr %1, align 8, !tbaa !56
  %i.eh = trunc nsw i64 %indvars.iv259 to i32
  %i.ei = mul i32 %i.co, %i.eh
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds i8, ptr %i.eg, i64 %i.ej
  %i.el = load ptr, ptr %i.cp, align 8, !tbaa !56 ; 2 uses
  %i.em = mul i64 %indvars.iv259, %i.dl
  %i.en = getelementptr i8, ptr %i.el, i64 %i.em  ; 8 uses
  %i.eo = load ptr, ptr %i.cq, align 8, !tbaa !56 ; 2 uses
  %i.ep = mul i64 %indvars.iv259, %i.dm
  %i.eq = getelementptr i8, ptr %i.eo, i64 %i.ep  ; 8 uses
  %i.er = trunc i64 %indvars.iv259 to i32
  %i.es = sub i32 %i.er, %i.bm
  %i.et = tail call i32 @llvm.smax.i32(i32 %i.es, i32 0)
  %i.eu = trunc i64 %indvars.iv259 to i32
  %i.ev = add i32 %i.bm, %i.eu
  %. = tail call i32 @llvm.smin.i32(i32 %i.cr, i32 %i.ev) ; 2 uses
  %.not215 = icmp sgt i32 %i.et, %.
  br i1 %.not215, label %iter.check, label %.lr.ph221.preheader

iter.check:                                       ; preds = %.lr.ph230
  br i1 %min.iters.check, label %.lr.ph230.split.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ew = getelementptr i8, ptr %i.el, i64 %i.dw
  %i.ex = getelementptr i8, ptr %i.ew, i64 %wide.trip.count
  %scevgep270 = getelementptr i8, ptr %i.ex, i64 %i.ed ; 2 uses
  %i.ey = getelementptr i8, ptr %i.eo, i64 %i.dx
  %i.ez = getelementptr i8, ptr %i.ey, i64 %wide.trip.count
  %scevgep271 = getelementptr i8, ptr %i.ez, i64 %i.ee ; 2 uses
  %bound0273 = icmp ult ptr %i.da, %scevgep270
  %bound1274 = icmp ult ptr %i.en, %scevgep
  %found.conflict275 = and i1 %bound0273, %bound1274
  %conflict.rdx.reass = or i1 %found.conflict275, %invariant.op
  %bound0277 = icmp ult ptr %i.da, %scevgep271
  %bound1278 = icmp ult ptr %i.eq, %scevgep
  %found.conflict279 = and i1 %bound0277, %bound1278
  %conflict.rdx281 = or i1 %found.conflict279, %conflict.rdx.reass
  %bound0282 = icmp ult ptr %i.df, %scevgep270
  %bound1283 = icmp ult ptr %i.en, %scevgep269
  %found.conflict284 = and i1 %bound0282, %bound1283
  %i.fa = or i1 %found.conflict284, %stride.check285
  %conflict.rdx286 = or i1 %conflict.rdx281, %i.fa
  %bound0287 = icmp ult ptr %i.df, %scevgep271
  %bound1288 = icmp ult ptr %i.eq, %scevgep269
  %found.conflict289 = and i1 %bound0287, %bound1288
  %conflict.rdx291 = or i1 %found.conflict289, %conflict.rdx286
  br i1 %conflict.rdx291, label %.lr.ph230.split.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check292, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 5 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.en, i64 %index ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %wide.load = load <16 x i8>, ptr %i.fb, align 1, !tbaa !62, !alias.scope !148
  %wide.load293 = load <16 x i8>, ptr %i.fc, align 1, !tbaa !62, !alias.scope !148
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eq, i64 %index ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %wide.load294 = load <16 x i8>, ptr %i.fd, align 1, !tbaa !62, !alias.scope !151
  %wide.load295 = load <16 x i8>, ptr %i.fe, align 1, !tbaa !62, !alias.scope !151
  %i.ff = getelementptr inbounds nuw i8, ptr %.0235, i64 %index ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  store <16 x i8> %wide.load, ptr %i.ff, align 1, !tbaa !62, !alias.scope !153, !noalias !155
  store <16 x i8> %wide.load293, ptr %i.fg, align 1, !tbaa !62, !alias.scope !153, !noalias !155
  %i.fh = getelementptr inbounds nuw i8, ptr %.0181233, i64 %index ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  store <16 x i8> %wide.load294, ptr %i.fh, align 1, !tbaa !62, !alias.scope !157, !noalias !158
  store <16 x i8> %wide.load295, ptr %i.fi, align 1, !tbaa !62, !alias.scope !157, !noalias !158
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fj = icmp eq i64 %index.next, %n.vec
  br i1 %i.fj, label %middle.block, label %vector.body, !llvm.loop !159

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge231, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph230.split.us.preheader, label %vec.epilog.ph, !prof !78

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index297 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next300, %vec.epilog.vector.body ] ; 5 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.en, i64 %index297
  %wide.load298 = load <4 x i8>, ptr %i.fk, align 1, !tbaa !62, !alias.scope !148
  %i.fl = getelementptr inbounds nuw i8, ptr %i.eq, i64 %index297
  %wide.load299 = load <4 x i8>, ptr %i.fl, align 1, !tbaa !62, !alias.scope !151
  %i.fm = getelementptr inbounds nuw i8, ptr %.0235, i64 %index297
  store <4 x i8> %wide.load298, ptr %i.fm, align 1, !tbaa !62, !alias.scope !153, !noalias !155
  %i.fn = getelementptr inbounds nuw i8, ptr %.0181233, i64 %index297
  store <4 x i8> %wide.load299, ptr %i.fn, align 1, !tbaa !62, !alias.scope !157, !noalias !158
  %index.next300 = add nuw i64 %index297, 4       ; 2 uses
  %i.fo = icmp eq i64 %index.next300, %n.vec296
  br i1 %i.fo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !160

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n301, label %._crit_edge231, label %.lr.ph230.split.us.preheader

.lr.ph230.split.us.preheader:                     ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv254.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec296, %vec.epilog.middle.block ] ; 7 uses
  br i1 %lcmp.mod.not, label %.lr.ph230.split.us.prol.loopexit, label %.lr.ph230.split.us.prol

.lr.ph230.split.us.prol:                          ; preds = %.lr.ph230.split.us.preheader
  %i.fp = getelementptr inbounds nuw i8, ptr %i.en, i64 %indvars.iv254.ph
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !62
  %i.fr = getelementptr inbounds nuw i8, ptr %i.eq, i64 %indvars.iv254.ph
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !62
  %i.ft = getelementptr inbounds nuw i8, ptr %.0235, i64 %indvars.iv254.ph
  store i8 %i.fq, ptr %i.ft, align 1, !tbaa !62
  %i.fu = getelementptr inbounds nuw i8, ptr %.0181233, i64 %indvars.iv254.ph
  store i8 %i.fs, ptr %i.fu, align 1, !tbaa !62
  %indvars.iv.next255.prol = or disjoint i64 %indvars.iv254.ph, 1
  br label %.lr.ph230.split.us.prol.loopexit
end_hunk_3
begin_hunk_4_@manhattan_e_slice8:bb.a
  %i.jd = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.jc, i1 true) ; 2 uses
  %i.je = sub nsw <4 x i32> %broadcast.splat308.a, %i.iz
  %i.jf = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.je, i1 true) ; 2 uses
  %i.jg = sub nsw <4 x i32> %broadcast.splat310, %i.jb
  %i.jh = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.jg, i1 true) ; 2 uses
  %i.ji = add nuw nsw <4 x i32> %i.jf, %i.jd
  %i.jj = add nuw nsw <4 x i32> %i.ji, %i.jh
  %i.jk = icmp slt <4 x i32> %i.jj, %broadcast.splat312.a
  %i.jl = icmp slt <4 x i32> %i.jf, %broadcast.splat314.a
  %i.jm = select <4 x i1> %i.jk, <4 x i1> %i.jl, <4 x i1> zeroinitializer
  %i.jn = icmp slt <4 x i32> %i.jh, %broadcast.splat316.a
  %i.jo = select <4 x i1> %i.jm, <4 x i1> %i.jn, <4 x i1> zeroinitializer
  %i.jp = icmp slt <4 x i32> %i.jd, %broadcast.splat318
  %i.jq = select <4 x i1> %i.jo, <4 x i1> %i.jp, <4 x i1> zeroinitializer ; 3 uses
  %i.jr = zext <4 x i1> %i.jq to <4 x i32>
  %i.js = add <4 x i32> %vec.phi322, %i.jr        ; 2 uses
  %i.jt = select <4 x i1> %i.jq, <4 x i32> %i.jb, <4 x i32> zeroinitializer
  %i.ju = add <4 x i32> %i.jt, %vec.phi321        ; 2 uses
  %i.jv = select <4 x i1> %i.jq, <4 x i32> %i.iz, <4 x i32> zeroinitializer
  %i.jw = add <4 x i32> %i.jv, %vec.phi           ; 2 uses
  %index.next325 = add nuw i64 %index320, 4       ; 2 uses
  %i.jx = icmp eq i64 %index.next325, %n.vec306
  br i1 %i.jx, label %middle.block326, label %vector.body319, !llvm.loop !164

middle.block326:                                  ; preds = %vector.body319
  %i.jy = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.jw) ; 2 uses
  %i.jz = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ju) ; 2 uses
  %i.ka = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.js) ; 2 uses
  br i1 %cmp.n327, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block326
  %indvars.iv242.ph = phi i64 [ %i.gl, %.lr.ph ], [ %i.hi, %middle.block326 ]
  %.1212.ph = phi i32 [ %.0184219, %.lr.ph ], [ %i.jy, %middle.block326 ]
  %.1187210.ph = phi i32 [ %.0186218, %.lr.ph ], [ %i.jz, %middle.block326 ]
  %.1190209.ph = phi i32 [ %.0189217, %.lr.ph ], [ %i.ka, %middle.block326 ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block326
  %.2191.lcssa = phi i32 [ %i.ka, %middle.block326 ], [ %.2191, %scalar.ph ] ; 2 uses
  %.2188.lcssa = phi i32 [ %i.jz, %middle.block326 ], [ %.2188, %scalar.ph ] ; 2 uses
  %.2.lcssa = phi i32 [ %i.jy, %middle.block326 ], [ %.2, %scalar.ph ] ; 2 uses
  %indvars.iv.next249 = add nsw i64 %indvars.iv248, %i.dk ; 2 uses
  %.not = icmp sgt i64 %indvars.iv.next249, %i.fw
  br i1 %.not, label %._crit_edge222, label %.lr.ph, !llvm.loop !165

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv242 = phi i64 [ %indvars.iv.next243, %scalar.ph ], [ %indvars.iv242.ph, %scalar.ph.preheader ] ; 4 uses
  %.1212 = phi i32 [ %.2, %scalar.ph ], [ %.1212.ph, %scalar.ph.preheader ]
  %.1187210 = phi i32 [ %.2188, %scalar.ph ], [ %.1187210.ph, %scalar.ph.preheader ]
  %.1190209 = phi i32 [ %.2191, %scalar.ph ], [ %.1190209.ph, %scalar.ph.preheader ]
  %i.kb = mul nsw i64 %indvars.iv242, %i.di
  %i.kc = getelementptr inbounds i8, ptr %i.hv, i64 %i.kb
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !62
  %i.ke = zext i8 %i.kd to i32
  %i.kf = getelementptr inbounds i8, ptr %i.hx, i64 %indvars.iv242
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !62
  %i.kh = zext i8 %i.kg to i32                    ; 2 uses
  %i.ki = getelementptr inbounds i8, ptr %i.hz, i64 %indvars.iv242
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !62
  %i.kk = zext i8 %i.kj to i32                    ; 2 uses
  %i.kl = sub nsw i32 %i.gu, %i.ke
  %i.km = tail call i32 @llvm.abs.i32(i32 %i.kl, i1 true) ; 2 uses
  %i.kn = sub nsw i32 %i.gx, %i.kh
  %i.ko = tail call i32 @llvm.abs.i32(i32 %i.kn, i1 true) ; 2 uses
  %i.kp = sub nsw i32 %i.ha, %i.kk
  %i.kq = tail call i32 @llvm.abs.i32(i32 %i.kp, i1 true) ; 2 uses
  %i.kr = add nuw nsw i32 %i.ko, %i.km
  %i.ks = add nuw nsw i32 %i.kr, %i.kq
  %i.kt = icmp slt i32 %i.ks, %i.bo
  %i.ku = icmp slt i32 %i.ko, %i.bs
  %or.cond = select i1 %i.kt, i1 %i.ku, i1 false
  %i.kv = icmp slt i32 %i.kq, %i.bu
  %or.cond206 = select i1 %or.cond, i1 %i.kv, i1 false
  %i.kw = icmp slt i32 %i.km, %i.bq
  %or.cond207 = select i1 %or.cond206, i1 %i.kw, i1 false ; 3 uses
  %i.kx = zext i1 %or.cond207 to i32
  %.2191 = add nsw i32 %.1190209, %i.kx           ; 2 uses
  %i.ky = select i1 %or.cond207, i32 %i.kk, i32 0
  %.2188 = add nsw i32 %i.ky, %.1187210           ; 2 uses
  %i.kz = select i1 %or.cond207, i32 %i.kh, i32 0
  %.2 = add nsw i32 %i.kz, %.1212                 ; 2 uses
  %indvars.iv.next243 = add nsw i64 %indvars.iv242, %i.dh ; 2 uses
  %.not204 = icmp sgt i64 %indvars.iv.next243, %i.he
  br i1 %.not204, label %._crit_edge, label %scalar.ph, !llvm.loop !166
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @manhattan_e_slice16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.f = load i32, ptr %i.e, align 4, !tbaa !41
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = sext i32 %2 to i64                       ; 2 uses
  %i.i = mul nsw i64 %i.g, %i.h
  %i.j = sext i32 %3 to i64                       ; 4 uses
  %i.k = sdiv i64 %i.i, %i.j
  %i.l = trunc i64 %i.k to i32                    ; 5 uses
  %i.m = add nsw i32 %2, 1
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = mul nsw i64 %i.g, %i.n
  %i.p = sdiv i64 %i.o, %i.j
  %i.q = trunc i64 %i.p to i32
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.t = load i32, ptr %i.s, align 8, !tbaa !41   ; 2 uses
  %i.u = mul nsw i32 %i.t, %i.l
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds i8, ptr %i.r, i64 %i.v
  %i.x = load ptr, ptr %1, align 8, !tbaa !56
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !41   ; 2 uses
  %i.aa = mul nsw i32 %i.z, %i.l
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %i.x, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !41
  %i.af = sub nsw i32 %i.q, %i.l                  ; 2 uses
  tail call void @av_image_copy_plane(ptr noundef %i.w, i32 noundef %i.t, ptr noundef %i.ac, i32 noundef %i.z, i32 noundef %i.ae, i32 noundef %i.af) #5
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !49
  %i.ai = icmp eq i32 %i.ah, 4
  br i1 %i.ai, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !56
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %i.am = load i32, ptr %i.al, align 4, !tbaa !41 ; 2 uses
  %i.an = mul nsw i32 %i.am, %i.l
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr %i.ak, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !56
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.at = load i32, ptr %i.as, align 4, !tbaa !41 ; 2 uses
  %i.au = mul nsw i32 %i.at, %i.l
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds i8, ptr %i.ar, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !41
  tail call void @av_image_copy_plane(ptr noundef %i.ap, i32 noundef %i.am, ptr noundef %i.aw, i32 noundef %i.at, i32 noundef %i.ay, i32 noundef %i.af) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bb = load <2 x i32>, ptr %i.az, align 4, !tbaa !41
  %i.bc = load i32, ptr %i.ba, align 8, !tbaa !41 ; 2 uses
  %i.bd = load i32, ptr %i.az, align 4, !tbaa !41
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !53
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !57 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !58
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !59 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !60 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !61 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !145 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !146 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !147 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !41 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !41 ; 6 uses
  %i.ca = sext i32 %i.bx to i64                   ; 2 uses
  %i.cb = mul nsw i64 %i.ca, %i.h
  %i.cc = sdiv i64 %i.cb, %i.j                    ; 2 uses
  %i.cd = trunc i64 %i.cc to i32                  ; 4 uses
  %i.ce = mul nsw i64 %i.ca, %i.n
  %i.cf = sdiv i64 %i.ce, %i.j                    ; 2 uses
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = icmp slt i32 %i.cd, %i.cg
  br i1 %i.ch, label %.lr.ph238, label %._crit_edge239.split

.lr.ph238:                                        ; preds = %bb.c
  %i.ci = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.cj = load <2 x i32>, ptr %i.ci, align 4, !tbaa !41 ; 4 uses
  %i.ck = shufflevector <2 x i32> %i.cj, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !55
  %i.cn = load i32, ptr %i.y, align 8, !tbaa !41
  %i.co = load ptr, ptr %1, align 8, !tbaa !56    ; 2 uses
  %i.cp = mul i32 %i.cm, %i.cn                    ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !56 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !56 ; 4 uses
  %i.cu = add nsw i32 %i.bx, -1
  %i.cv = icmp sgt i32 %i.bz, 0
  %i.cw = add i32 %i.bz, -1
  %i.cx = extractelement <2 x i32> %i.cj, i64 0   ; 2 uses
  %i.cy = sext i32 %i.cx to i64
  %i.cz = lshr i64 %i.cy, 1                       ; 2 uses
  %i.da = extractelement <2 x i32> %i.cj, i64 1   ; 3 uses
  %i.db = sext i32 %i.da to i64
  %i.dc = lshr i64 %i.db, 1                       ; 2 uses
  br i1 %i.cv, label %.lr.ph230.preheader, label %._crit_edge239.split

.lr.ph230.preheader:                              ; preds = %.lr.ph238
  %i.dd = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !56 ; 2 uses
  %i.df = mul i32 %i.cx, %i.cd
  %i.dg = sext i32 %i.df to i64                   ; 2 uses
  %i.dh = getelementptr i8, ptr %i.de, i64 %i.dg  ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !56 ; 2 uses
  %i.dk = mul i32 %i.da, %i.cd
  %i.dl = sext i32 %i.dk to i64                   ; 2 uses
  %i.dm = getelementptr i8, ptr %i.dj, i64 %i.dl  ; 4 uses
  %i.dn = sub i32 0, %i.bl
  %i.do = sext i32 %i.bh to i64
  %i.dp = sext i32 %i.bf to i64                   ; 6 uses
  %i.dq = sub i32 %i.cd, %i.bn
  %i.dr = sext i32 %i.bj to i64
  %i.ds = sext i32 %i.bd to i64                   ; 4 uses
  %i.dt = sext i32 %i.bc to i64                   ; 4 uses
  %sext = shl i64 %i.cc, 32
  %i.du = ashr exact i64 %sext, 32                ; 4 uses
  %sext266 = shl i64 %i.cf, 32
  %wide.trip.count262 = ashr exact i64 %sext266, 32 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.bz to i64   ; 11 uses
  %wide.trip.count257 = zext nneg i32 %i.bz to i64
  %i.dv = xor i64 %i.du, -1
  %i.dw = add nsw i64 %wide.trip.count262, %i.dv  ; 2 uses
  %i.dx = mul i64 %i.cz, %i.dw
  %i.dy = shl nuw nsw i64 %wide.trip.count, 1     ; 2 uses
  %i.dz = add i64 %i.dx, %wide.trip.count
  %i.ea = shl i64 %i.dz, 1
  %i.eb = getelementptr i8, ptr %i.de, i64 %i.ea
  %scevgep = getelementptr i8, ptr %i.eb, i64 %i.dg ; 3 uses
  %i.ec = mul i64 %i.dc, %i.dw
  %i.ed = add i64 %i.ec, %wide.trip.count
  %i.ee = shl i64 %i.ed, 1
  %i.ef = getelementptr i8, ptr %i.dj, i64 %i.ee
  %scevgep269 = getelementptr i8, ptr %i.ef, i64 %i.dl ; 3 uses
  %i.eg = mul nsw i64 %i.du, %i.ds
  %scevgep270 = getelementptr i8, ptr %i.cr, i64 %i.eg ; 2 uses
  %i.eh = add nsw i64 %wide.trip.count262, -1     ; 2 uses
  %i.ei = mul i64 %i.eh, %i.ds
  %i.ej = getelementptr i8, ptr %i.cr, i64 %i.ei
  %scevgep271 = getelementptr i8, ptr %i.ej, i64 %i.dy ; 2 uses
  %i.ek = mul nsw i64 %i.du, %i.dt
  %scevgep272 = getelementptr i8, ptr %i.ct, i64 %i.ek ; 2 uses
  %i.el = mul i64 %i.eh, %i.dt
  %i.em = getelementptr i8, ptr %i.ct, i64 %i.el
  %scevgep273 = getelementptr i8, ptr %i.em, i64 %i.dy ; 2 uses
  %i.en = shufflevector <2 x i32> %i.bb, <2 x i32> %i.cj, <4 x i32> <i32 0, i32 2, i32 1, i32 0>
  %ident.check.not = icmp eq i32 %i.bh, 1
  %broadcast.splatinsert317.a = insertelement <4 x i32> poison, i32 %i.bp, i64 0
  %broadcast.splat318.a = shufflevector <4 x i32> %broadcast.splatinsert317.a, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert319.a = insertelement <4 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat320.a = shufflevector <4 x i32> %broadcast.splatinsert319.a, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert321.a = insertelement <4 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat322.a = shufflevector <4 x i32> %broadcast.splatinsert321.a, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert323 = insertelement <4 x i32> poison, i32 %i.br, i64 0
  %broadcast.splat324 = shufflevector <4 x i32> %broadcast.splatinsert323, <4 x i32> poison, <4 x i32> zeroinitializer
  %min.iters.check = icmp ult i32 %i.bz, 4
  %bound0 = icmp ult ptr %i.dh, %scevgep269
  %bound1 = icmp ult ptr %i.dm, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.eo = or <4 x i32> %i.en, %i.ck
  %bound0275 = icmp ult ptr %i.dh, %scevgep271
  %bound1276 = icmp ult ptr %scevgep270, %scevgep
  %found.conflict277 = and i1 %bound0275, %bound1276
  %bound0280 = icmp ult ptr %i.dh, %scevgep273
  %bound1281 = icmp ult ptr %scevgep272, %scevgep
  %found.conflict282 = and i1 %bound0280, %bound1281
  %bound0286 = icmp ult ptr %i.dm, %scevgep271
  %bound1287 = icmp ult ptr %scevgep270, %scevgep269
  %found.conflict288 = and i1 %bound0286, %bound1287
  %i.ep = icmp slt <4 x i32> %i.eo, zeroinitializer
  %bound0292 = icmp ult ptr %i.dm, %scevgep273
  %bound1293 = icmp ult ptr %scevgep272, %scevgep269
  %found.conflict294 = and i1 %bound0292, %bound1293
  %i.eq = or i32 %i.bc, %i.da
  %i.er = icmp slt i32 %i.eq, 0
  %i.es = bitcast <4 x i1> %i.ep to i4
  %i.et = icmp ne i4 %i.es, 0
  %op.rdx = or i1 %i.et, %i.er
  %op.rdx338.a = or i1 %found.conflict, %found.conflict277
  %op.rdx339.a = or i1 %found.conflict282, %found.conflict288
  %op.rdx340.a = or i1 %op.rdx, %op.rdx338.a
  %op.rdx341 = or i1 %op.rdx339.a, %found.conflict294
  %op.rdx342 = or i1 %op.rdx340.a, %op.rdx341
  %min.iters.check298 = icmp ult i32 %i.bz, 16
  %i.eu = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.eu, 0
  %n.vec302 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n307 = icmp eq i64 %n.vec302, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ev = add nsw i64 %wide.trip.count, -1
  br label %.lr.ph230

._crit_edge239.split:                             ; preds = %._crit_edge231, %.lr.ph238, %bb.c
  ret i32 0

.lr.ph230:                                        ; preds = %.lr.ph230.preheader, %._crit_edge231
  %indvars.iv259 = phi i64 [ %i.du, %.lr.ph230.preheader ], [ %indvars.iv.next260, %._crit_edge231 ] ; 6 uses
  %indvars.iv245 = phi i32 [ %i.dq, %.lr.ph230.preheader ], [ %indvars.iv.next246, %._crit_edge231 ] ; 2 uses
  %.0235 = phi ptr [ %i.dh, %.lr.ph230.preheader ], [ %i.gs, %._crit_edge231 ] ; 7 uses
  %.0181233 = phi ptr [ %i.dm, %.lr.ph230.preheader ], [ %i.gt, %._crit_edge231 ] ; 7 uses
  %smax247 = tail call i32 @llvm.smax.i32(i32 %indvars.iv245, i32 0)
  %i.ew = zext nneg i32 %smax247 to i64
  %i.ex = trunc nsw i64 %indvars.iv259 to i32
  %i.ey = mul i32 %i.cp, %i.ex
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds i8, ptr %i.co, i64 %i.ez
  %i.fb = mul nsw i64 %indvars.iv259, %i.ds
  %i.fc = getelementptr inbounds i8, ptr %i.cr, i64 %i.fb ; 6 uses
  %i.fd = mul nsw i64 %indvars.iv259, %i.dt
  %i.fe = getelementptr inbounds i8, ptr %i.ct, i64 %i.fd ; 6 uses
  %i.ff = trunc i64 %indvars.iv259 to i32
  %i.fg = sub i32 %i.ff, %i.bn
  %i.fh = tail call i32 @llvm.smax.i32(i32 %i.fg, i32 0)
  %i.fi = trunc i64 %indvars.iv259 to i32
  %i.fj = add i32 %i.bn, %i.fi
  %. = tail call i32 @llvm.smin.i32(i32 %i.cu, i32 %i.fj) ; 2 uses
  %.not215 = icmp sgt i32 %i.fh, %.
  br i1 %.not215, label %iter.check, label %.lr.ph221.preheader

iter.check:                                       ; preds = %.lr.ph230
  %brmerge = select i1 %min.iters.check, i1 true, i1 %op.rdx342
  br i1 %brmerge, label %.lr.ph230.split.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check298, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 5 uses
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %i.fc, i64 %index ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %wide.load = load <8 x i16>, ptr %i.fk, align 2, !tbaa !86, !alias.scope !167
  %wide.load299 = load <8 x i16>, ptr %i.fl, align 2, !tbaa !86, !alias.scope !167
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %i.fe, i64 %index ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %wide.load300 = load <8 x i16>, ptr %i.fm, align 2, !tbaa !86, !alias.scope !170
  %wide.load301 = load <8 x i16>, ptr %i.fn, align 2, !tbaa !86, !alias.scope !170
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %.0235, i64 %index ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  store <8 x i16> %wide.load, ptr %i.fo, align 2, !tbaa !86, !alias.scope !172, !noalias !174
  store <8 x i16> %wide.load299, ptr %i.fp, align 2, !tbaa !86, !alias.scope !172, !noalias !174
  %i.fq = getelementptr inbounds nuw [2 x i8], ptr %.0181233, i64 %index ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  store <8 x i16> %wide.load300, ptr %i.fq, align 2, !tbaa !86, !alias.scope !176, !noalias !177
  store <8 x i16> %wide.load301, ptr %i.fr, align 2, !tbaa !86, !alias.scope !176, !noalias !177
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fs = icmp eq i64 %index.next, %n.vec
  br i1 %i.fs, label %middle.block, label %vector.body, !llvm.loop !178

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge231, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph230.split.us.preheader, label %vec.epilog.ph, !prof !100

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index303 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next306, %vec.epilog.vector.body ] ; 5 uses
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.fc, i64 %index303
  %wide.load304 = load <4 x i16>, ptr %i.ft, align 2, !tbaa !86, !alias.scope !167
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr %i.fe, i64 %index303
  %wide.load305 = load <4 x i16>, ptr %i.fu, align 2, !tbaa !86, !alias.scope !170
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %.0235, i64 %index303
  store <4 x i16> %wide.load304, ptr %i.fv, align 2, !tbaa !86, !alias.scope !172, !noalias !174
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr %.0181233, i64 %index303
  store <4 x i16> %wide.load305, ptr %i.fw, align 2, !tbaa !86, !alias.scope !176, !noalias !177
  %index.next306 = add nuw i64 %index303, 4       ; 2 uses
  %i.fx = icmp eq i64 %index.next306, %n.vec302
  br i1 %i.fx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !179

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n307, label %._crit_edge231, label %.lr.ph230.split.us.preheader

.lr.ph230.split.us.preheader:                     ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv254.ph = phi i64 [ 0, %iter.check ], [ %n.vec302, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 7 uses
  br i1 %lcmp.mod.not, label %.lr.ph230.split.us.prol.loopexit, label %.lr.ph230.split.us.prol

.lr.ph230.split.us.prol:                          ; preds = %.lr.ph230.split.us.preheader
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %i.fc, i64 %indvars.iv254.ph
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !86
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.fe, i64 %indvars.iv254.ph
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !86
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %.0235, i64 %indvars.iv254.ph
  store i16 %i.fz, ptr %i.gc, align 2, !tbaa !86
end_hunk_4
begin_hunk_5_@manhattan_e_slice16:bb.a
  %wide.load330 = load <4 x i16>, ptr %i.jg, align 2, !tbaa !86
  %i.jh = zext <4 x i16> %wide.load330 to <4 x i32> ; 2 uses
  %i.ji = sub nsw <4 x i32> %broadcast.splat, %i.jd
  %i.jj = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ji, i1 true) ; 2 uses
  %i.jk = sub nsw <4 x i32> %broadcast.splat314.a, %i.jf
  %i.jl = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.jk, i1 true) ; 2 uses
  %i.jm = sub nsw <4 x i32> %broadcast.splat316, %i.jh
  %i.jn = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.jm, i1 true) ; 2 uses
  %i.jo = add nuw nsw <4 x i32> %i.jl, %i.jj
  %i.jp = add nuw nsw <4 x i32> %i.jo, %i.jn
  %i.jq = icmp slt <4 x i32> %i.jp, %broadcast.splat318.a
  %i.jr = icmp slt <4 x i32> %i.jl, %broadcast.splat320.a
  %i.js = select <4 x i1> %i.jq, <4 x i1> %i.jr, <4 x i1> zeroinitializer
  %i.jt = icmp slt <4 x i32> %i.jn, %broadcast.splat322.a
  %i.ju = select <4 x i1> %i.js, <4 x i1> %i.jt, <4 x i1> zeroinitializer
  %i.jv = icmp slt <4 x i32> %i.jj, %broadcast.splat324
  %i.jw = select <4 x i1> %i.ju, <4 x i1> %i.jv, <4 x i1> zeroinitializer ; 3 uses
  %i.jx = zext <4 x i1> %i.jw to <4 x i32>
  %i.jy = add <4 x i32> %vec.phi328, %i.jx        ; 2 uses
  %i.jz = select <4 x i1> %i.jw, <4 x i32> %i.jh, <4 x i32> zeroinitializer
  %i.ka = add <4 x i32> %i.jz, %vec.phi327        ; 2 uses
  %i.kb = select <4 x i1> %i.jw, <4 x i32> %i.jf, <4 x i32> zeroinitializer
  %i.kc = add <4 x i32> %i.kb, %vec.phi           ; 2 uses
  %index.next331 = add nuw i64 %index326, 4       ; 2 uses
  %i.kd = icmp eq i64 %index.next331, %n.vec312
  br i1 %i.kd, label %middle.block332, label %vector.body325, !llvm.loop !183

middle.block332:                                  ; preds = %vector.body325
  %i.ke = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.kc) ; 2 uses
  %i.kf = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ka) ; 2 uses
  %i.kg = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.jy) ; 2 uses
  br i1 %cmp.n333, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block332
  %indvars.iv242.ph = phi i64 [ %i.gu, %.lr.ph ], [ %i.ho, %middle.block332 ]
  %.1212.ph = phi i32 [ %.0184219, %.lr.ph ], [ %i.ke, %middle.block332 ]
  %.1187210.ph = phi i32 [ %.0186218, %.lr.ph ], [ %i.kf, %middle.block332 ]
  %.1190209.ph = phi i32 [ %.0189217, %.lr.ph ], [ %i.kg, %middle.block332 ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block332
  %.2191.lcssa = phi i32 [ %i.kg, %middle.block332 ], [ %.2191, %scalar.ph ] ; 2 uses
  %.2188.lcssa = phi i32 [ %i.kf, %middle.block332 ], [ %.2188, %scalar.ph ] ; 2 uses
  %.2.lcssa = phi i32 [ %i.ke, %middle.block332 ], [ %.2, %scalar.ph ] ; 2 uses
  %indvars.iv.next249 = add nsw i64 %indvars.iv248, %i.dr ; 2 uses
  %.not = icmp sgt i64 %indvars.iv.next249, %i.gf
  br i1 %.not, label %._crit_edge222, label %.lr.ph, !llvm.loop !184

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv242 = phi i64 [ %indvars.iv.next243, %scalar.ph ], [ %indvars.iv242.ph, %scalar.ph.preheader ] ; 4 uses
  %.1212 = phi i32 [ %.2, %scalar.ph ], [ %.1212.ph, %scalar.ph.preheader ]
  %.1187210 = phi i32 [ %.2188, %scalar.ph ], [ %.1187210.ph, %scalar.ph.preheader ]
  %.1190209 = phi i32 [ %.2191, %scalar.ph ], [ %.1190209.ph, %scalar.ph.preheader ]
  %i.kh = mul nsw i64 %indvars.iv242, %i.dp
  %i.ki = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.kh
  %i.kj = load i16, ptr %i.ki, align 2, !tbaa !86
  %i.kk = zext i16 %i.kj to i32
  %i.kl = getelementptr inbounds [2 x i8], ptr %i.id, i64 %indvars.iv242
  %i.km = load i16, ptr %i.kl, align 2, !tbaa !86
  %i.kn = zext i16 %i.km to i32                   ; 2 uses
  %i.ko = getelementptr inbounds [2 x i8], ptr %i.if, i64 %indvars.iv242
  %i.kp = load i16, ptr %i.ko, align 2, !tbaa !86
  %i.kq = zext i16 %i.kp to i32                   ; 2 uses
  %i.kr = sub nsw i32 %i.hd, %i.kk
  %i.ks = tail call i32 @llvm.abs.i32(i32 %i.kr, i1 true) ; 2 uses
  %i.kt = sub nsw i32 %i.hg, %i.kn
  %i.ku = tail call i32 @llvm.abs.i32(i32 %i.kt, i1 true) ; 2 uses
  %i.kv = sub nsw i32 %i.hj, %i.kq
  %i.kw = tail call i32 @llvm.abs.i32(i32 %i.kv, i1 true) ; 2 uses
  %i.kx = add nuw nsw i32 %i.ku, %i.ks
  %i.ky = add nuw nsw i32 %i.kx, %i.kw
  %i.kz = icmp slt i32 %i.ky, %i.bp
  %i.la = icmp slt i32 %i.ku, %i.bt
  %or.cond = select i1 %i.kz, i1 %i.la, i1 false
  %i.lb = icmp slt i32 %i.kw, %i.bv
  %or.cond206 = select i1 %or.cond, i1 %i.lb, i1 false
  %i.lc = icmp slt i32 %i.ks, %i.br
  %or.cond207 = select i1 %or.cond206, i1 %i.lc, i1 false ; 3 uses
  %i.ld = zext i1 %or.cond207 to i32
  %.2191 = add nsw i32 %.1190209, %i.ld           ; 2 uses
  %i.le = select i1 %or.cond207, i32 %i.kq, i32 0
  %.2188 = add nsw i32 %i.le, %.1187210           ; 2 uses
  %i.lf = select i1 %or.cond207, i32 %i.kn, i32 0
  %.2 = add nsw i32 %i.lf, %.1212                 ; 2 uses
  %indvars.iv.next243 = add nsw i64 %indvars.iv242, %i.do ; 2 uses
  %.not204 = icmp sgt i64 %indvars.iv.next243, %i.hk
  br i1 %.not204, label %._crit_edge, label %scalar.ph, !llvm.loop !185
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @euclidean_e_slice8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44   ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.f = load i32, ptr %i.e, align 4, !tbaa !41
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = sext i32 %2 to i64                       ; 2 uses
  %i.i = mul nsw i64 %i.g, %i.h
  %i.j = sext i32 %3 to i64                       ; 4 uses
  %i.k = sdiv i64 %i.i, %i.j
  %i.l = trunc i64 %i.k to i32                    ; 5 uses
  %i.m = add nsw i32 %2, 1
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = mul nsw i64 %i.g, %i.n
  %i.p = sdiv i64 %i.o, %i.j
  %i.q = trunc i64 %i.p to i32
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.t = load i32, ptr %i.s, align 8, !tbaa !41   ; 2 uses
  %i.u = mul nsw i32 %i.t, %i.l
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds i8, ptr %i.r, i64 %i.v
  %i.x = load ptr, ptr %1, align 8, !tbaa !56
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !41   ; 2 uses
  %i.aa = mul nsw i32 %i.z, %i.l
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %i.x, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !41
  %i.af = sub nsw i32 %i.q, %i.l                  ; 2 uses
  tail call void @av_image_copy_plane(ptr noundef %i.w, i32 noundef %i.t, ptr noundef %i.ac, i32 noundef %i.z, i32 noundef %i.ae, i32 noundef %i.af) #5
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !49
  %i.ai = icmp eq i32 %i.ah, 4
  br i1 %i.ai, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !56
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %i.am = load i32, ptr %i.al, align 4, !tbaa !41 ; 2 uses
  %i.an = mul nsw i32 %i.am, %i.l
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr %i.ak, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !56
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.at = load i32, ptr %i.as, align 4, !tbaa !41 ; 2 uses
  %i.au = mul nsw i32 %i.at, %i.l
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds i8, ptr %i.ar, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !41
  tail call void @av_image_copy_plane(ptr noundef %i.ap, i32 noundef %i.am, ptr noundef %i.aw, i32 noundef %i.at, i32 noundef %i.ay, i32 noundef %i.af) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !41
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !41
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !53
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !57 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !58
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !59 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !60 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !145 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !146 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !147 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !41 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !41 ; 6 uses
  %i.bx = sext i32 %i.bu to i64                   ; 2 uses
  %i.by = mul nsw i64 %i.bx, %i.h
  %i.bz = sdiv i64 %i.by, %i.j                    ; 2 uses
  %i.ca = trunc i64 %i.bz to i32                  ; 4 uses
  %i.cb = mul nsw i64 %i.bx, %i.n
  %i.cc = sdiv i64 %i.cb, %i.j                    ; 2 uses
  %i.cd = trunc i64 %i.cc to i32
  %i.ce = icmp slt i32 %i.ca, %i.cd
  br i1 %i.ce, label %.lr.ph241, label %._crit_edge242.split

.lr.ph241:                                        ; preds = %bb.c
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !41 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !41 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !61
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !55
  %i.cn = load i32, ptr %i.y, align 8, !tbaa !41
  %i.co = mul i32 %i.cm, %i.cn                    ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cr = add nsw i32 %i.bu, -1
  %i.cs = icmp sgt i32 %i.bw, 0
  %i.ct = add i32 %i.bw, -1
  %i.cu = sitofp nsz i32 %i.ck to float           ; 2 uses
  %i.cv = sext i32 %i.ci to i64                   ; 2 uses
  %i.cw = sext i32 %i.cg to i64                   ; 2 uses
  br i1 %i.cs, label %.lr.ph233.preheader, label %._crit_edge242.split

.lr.ph233.preheader:                              ; preds = %.lr.ph241
  %i.cx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !56 ; 2 uses
  %i.cz = mul i32 %i.ci, %i.ca
  %i.da = sext i32 %i.cz to i64                   ; 2 uses
  %i.db = getelementptr i8, ptr %i.cy, i64 %i.da  ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !56 ; 2 uses
  %i.de = mul i32 %i.cg, %i.ca
  %i.df = sext i32 %i.de to i64                   ; 2 uses
  %i.dg = getelementptr i8, ptr %i.dd, i64 %i.df  ; 4 uses
  %i.dh = sub i32 0, %i.bk
  %i.di = sext i32 %i.bg to i64
  %i.dj = sext i32 %i.be to i64                   ; 6 uses
  %i.dk = sub i32 %i.ca, %i.bm
  %i.dl = sext i32 %i.bi to i64
  %i.dm = sext i32 %i.ba to i64                   ; 4 uses
  %i.dn = sext i32 %i.bc to i64                   ; 4 uses
  %sext = shl i64 %i.bz, 32
  %i.do = ashr exact i64 %sext, 32                ; 4 uses
  %sext269 = shl i64 %i.cc, 32
  %wide.trip.count265 = ashr exact i64 %sext269, 32 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.bw to i64   ; 12 uses
  %wide.trip.count260 = zext nneg i32 %i.bw to i64
  %i.dp = xor i64 %i.do, -1
  %i.dq = add nsw i64 %wide.trip.count265, %i.dp  ; 2 uses
  %i.dr = mul i64 %i.dq, %i.cv
  %i.ds = getelementptr i8, ptr %i.cy, i64 %i.dr
  %i.dt = getelementptr i8, ptr %i.ds, i64 %i.da
  %scevgep = getelementptr i8, ptr %i.dt, i64 %wide.trip.count ; 3 uses
  %i.du = mul i64 %i.dq, %i.cw
  %i.dv = getelementptr i8, ptr %i.dd, i64 %i.du
  %i.dw = getelementptr i8, ptr %i.dv, i64 %i.df
  %scevgep272 = getelementptr i8, ptr %i.dw, i64 %wide.trip.count ; 3 uses
  %i.dx = mul nsw i64 %i.do, %i.dm
  %i.dy = mul nsw i64 %i.do, %i.dn
  %ident.check.not = icmp eq i32 %i.bg, 1
  %broadcast.splatinsert314.a = insertelement <4 x float> poison, float %i.cu, i64 0
  %broadcast.splat315.a = shufflevector <4 x float> %broadcast.splatinsert314.a, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert316.a = insertelement <4 x i32> poison, i32 %i.bq, i64 0
  %broadcast.splat317.a = shufflevector <4 x i32> %broadcast.splatinsert316.a, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert318.a = insertelement <4 x i32> poison, i32 %i.bs, i64 0
  %broadcast.splat319.a = shufflevector <4 x i32> %broadcast.splatinsert318.a, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert320 = insertelement <4 x i32> poison, i32 %i.bo, i64 0
  %broadcast.splat321 = shufflevector <4 x i32> %broadcast.splatinsert320, <4 x i32> poison, <4 x i32> zeroinitializer
  %min.iters.check = icmp ult i32 %i.bw, 4
  %bound0 = icmp ult ptr %i.db, %scevgep272
  %bound1 = icmp ult ptr %i.dg, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.dz = or i32 %i.cg, %i.ci
  %i.ea = icmp slt i32 %i.dz, 0
  %i.eb = or i1 %found.conflict, %i.ea
  %stride.check279 = icmp slt i32 %i.ci, 0
  %invariant.op = or i1 %stride.check279, %i.eb
  %stride.check288 = icmp slt i32 %i.cg, 0
  %min.iters.check295 = icmp ult i32 %i.bw, 32
  %i.ec = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.ec, 0
  %n.vec299 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n304 = icmp eq i64 %n.vec299, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ed = add nsw i64 %wide.trip.count, -1
  br label %.lr.ph233

._crit_edge242.split:                             ; preds = %._crit_edge234, %.lr.ph241, %bb.c
  ret i32 0

.lr.ph233:                                        ; preds = %.lr.ph233.preheader, %._crit_edge234
  %indvar = phi i64 [ 0, %.lr.ph233.preheader ], [ %indvar.next, %._crit_edge234 ] ; 3 uses
  %indvars.iv262 = phi i64 [ %i.do, %.lr.ph233.preheader ], [ %indvars.iv.next263, %._crit_edge234 ] ; 6 uses
  %indvars.iv248 = phi i32 [ %i.dk, %.lr.ph233.preheader ], [ %indvars.iv.next249, %._crit_edge234 ] ; 2 uses
  %.0238 = phi ptr [ %i.db, %.lr.ph233.preheader ], [ %i.gk, %._crit_edge234 ] ; 7 uses
  %.0184236 = phi ptr [ %i.dg, %.lr.ph233.preheader ], [ %i.gl, %._crit_edge234 ] ; 7 uses
  %i.ee = mul i64 %indvar, %i.dm
  %i.ef = mul i64 %indvar, %i.dn
  %smax250 = tail call i32 @llvm.smax.i32(i32 %indvars.iv248, i32 0)
  %i.eg = zext nneg i32 %smax250 to i64
  %i.eh = load ptr, ptr %1, align 8, !tbaa !56
  %i.ei = trunc nsw i64 %indvars.iv262 to i32
  %i.ej = mul i32 %i.co, %i.ei
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds i8, ptr %i.eh, i64 %i.ek
  %i.em = load ptr, ptr %i.cp, align 8, !tbaa !56 ; 2 uses
  %i.en = mul i64 %indvars.iv262, %i.dm
  %i.eo = getelementptr i8, ptr %i.em, i64 %i.en  ; 8 uses
  %i.ep = load ptr, ptr %i.cq, align 8, !tbaa !56 ; 2 uses
  %i.eq = mul i64 %indvars.iv262, %i.dn
  %i.er = getelementptr i8, ptr %i.ep, i64 %i.eq  ; 8 uses
  %i.es = trunc i64 %indvars.iv262 to i32
  %i.et = sub i32 %i.es, %i.bm
  %i.eu = tail call i32 @llvm.smax.i32(i32 %i.et, i32 0)
  %i.ev = trunc i64 %indvars.iv262 to i32
  %i.ew = add i32 %i.bm, %i.ev
  %. = tail call i32 @llvm.smin.i32(i32 %i.cr, i32 %i.ew) ; 2 uses
  %.not218 = icmp sgt i32 %i.eu, %.
  br i1 %.not218, label %iter.check, label %.lr.ph224.preheader

iter.check:                                       ; preds = %.lr.ph233
  br i1 %min.iters.check, label %.lr.ph233.split.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ex = getelementptr i8, ptr %i.em, i64 %i.dx
  %i.ey = getelementptr i8, ptr %i.ex, i64 %wide.trip.count
  %scevgep273 = getelementptr i8, ptr %i.ey, i64 %i.ee ; 2 uses
  %i.ez = getelementptr i8, ptr %i.ep, i64 %i.dy
  %i.fa = getelementptr i8, ptr %i.ez, i64 %wide.trip.count
  %scevgep274 = getelementptr i8, ptr %i.fa, i64 %i.ef ; 2 uses
  %bound0276 = icmp ult ptr %i.db, %scevgep273
  %bound1277 = icmp ult ptr %i.eo, %scevgep
  %found.conflict278 = and i1 %bound0276, %bound1277
  %conflict.rdx.reass = or i1 %found.conflict278, %invariant.op
  %bound0280 = icmp ult ptr %i.db, %scevgep274
  %bound1281 = icmp ult ptr %i.er, %scevgep
  %found.conflict282 = and i1 %bound0280, %bound1281
  %conflict.rdx284 = or i1 %found.conflict282, %conflict.rdx.reass
  %bound0285 = icmp ult ptr %i.dg, %scevgep273
  %bound1286 = icmp ult ptr %i.eo, %scevgep272
  %found.conflict287 = and i1 %bound0285, %bound1286
  %i.fb = or i1 %found.conflict287, %stride.check288
  %conflict.rdx289 = or i1 %conflict.rdx284, %i.fb
  %bound0290 = icmp ult ptr %i.dg, %scevgep274
  %bound1291 = icmp ult ptr %i.er, %scevgep272
  %found.conflict292 = and i1 %bound0290, %bound1291
  %conflict.rdx294 = or i1 %found.conflict292, %conflict.rdx289
  br i1 %conflict.rdx294, label %.lr.ph233.split.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check295, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 5 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eo, i64 %index ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %wide.load = load <16 x i8>, ptr %i.fc, align 1, !tbaa !62, !alias.scope !186
  %wide.load296 = load <16 x i8>, ptr %i.fd, align 1, !tbaa !62, !alias.scope !186
  %i.fe = getelementptr inbounds nuw i8, ptr %i.er, i64 %index ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %wide.load297 = load <16 x i8>, ptr %i.fe, align 1, !tbaa !62, !alias.scope !189
  %wide.load298 = load <16 x i8>, ptr %i.ff, align 1, !tbaa !62, !alias.scope !189
  %i.fg = getelementptr inbounds nuw i8, ptr %.0238, i64 %index ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store <16 x i8> %wide.load, ptr %i.fg, align 1, !tbaa !62, !alias.scope !191, !noalias !193
  store <16 x i8> %wide.load296, ptr %i.fh, align 1, !tbaa !62, !alias.scope !191, !noalias !193
  %i.fi = getelementptr inbounds nuw i8, ptr %.0184236, i64 %index ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  store <16 x i8> %wide.load297, ptr %i.fi, align 1, !tbaa !62, !alias.scope !195, !noalias !196
  store <16 x i8> %wide.load298, ptr %i.fj, align 1, !tbaa !62, !alias.scope !195, !noalias !196
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fk = icmp eq i64 %index.next, %n.vec
  br i1 %i.fk, label %middle.block, label %vector.body, !llvm.loop !197

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge234, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph233.split.us.preheader, label %vec.epilog.ph, !prof !78

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index300 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next303, %vec.epilog.vector.body ] ; 5 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.eo, i64 %index300
  %wide.load301 = load <4 x i8>, ptr %i.fl, align 1, !tbaa !62, !alias.scope !186
  %i.fm = getelementptr inbounds nuw i8, ptr %i.er, i64 %index300
  %wide.load302 = load <4 x i8>, ptr %i.fm, align 1, !tbaa !62, !alias.scope !189
  %i.fn = getelementptr inbounds nuw i8, ptr %.0238, i64 %index300
  store <4 x i8> %wide.load301, ptr %i.fn, align 1, !tbaa !62, !alias.scope !191, !noalias !193
  %i.fo = getelementptr inbounds nuw i8, ptr %.0184236, i64 %index300
  store <4 x i8> %wide.load302, ptr %i.fo, align 1, !tbaa !62, !alias.scope !195, !noalias !196
  %index.next303 = add nuw i64 %index300, 4       ; 2 uses
  %i.fp = icmp eq i64 %index.next303, %n.vec299
  br i1 %i.fp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !198

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n304, label %._crit_edge234, label %.lr.ph233.split.us.preheader

.lr.ph233.split.us.preheader:                     ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv257.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec299, %vec.epilog.middle.block ] ; 7 uses
  br i1 %lcmp.mod.not, label %.lr.ph233.split.us.prol.loopexit, label %.lr.ph233.split.us.prol

.lr.ph233.split.us.prol:                          ; preds = %.lr.ph233.split.us.preheader
  %i.fq = getelementptr inbounds nuw i8, ptr %i.eo, i64 %indvars.iv257.ph
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !62
  %i.fs = getelementptr inbounds nuw i8, ptr %i.er, i64 %indvars.iv257.ph
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !62
  %i.fu = getelementptr inbounds nuw i8, ptr %.0238, i64 %indvars.iv257.ph
  store i8 %i.fr, ptr %i.fu, align 1, !tbaa !62
  %i.fv = getelementptr inbounds nuw i8, ptr %.0184236, i64 %indvars.iv257.ph
  store i8 %i.ft, ptr %i.fv, align 1, !tbaa !62
  %indvars.iv.next258.prol = or disjoint i64 %indvars.iv257.ph, 1
end_hunk_5
