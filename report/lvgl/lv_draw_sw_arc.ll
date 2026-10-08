Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_draw_sw_arc?download=true
inline.NumInlined: 6
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@lv_draw_sw_arc:bb.a
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.preheader156
  %i.be = call i32 @lv_area_get_height(ptr noundef nonnull %8) #5
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @lv_draw_sw_mask_radius_init(ptr noundef nonnull %11, ptr noundef nonnull %8, i32 noundef 32767, i1 noundef zeroext true) #5
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %11, ptr %i.bg, align 16, !tbaa !58
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %.preheader156
  %.0123 = phi i1 [ true, %bb.i ], [ false, %bb.h ], [ false, %.preheader156 ]
  %i.bh = call i32 @lv_area_get_height(ptr noundef nonnull %6) #5 ; 2 uses
  %i.bi = call i32 @lv_area_get_width(ptr noundef nonnull %6) #5 ; 6 uses
  %i.bj = sext i32 %i.bi to i64                   ; 4 uses
  %i.bk = call ptr @lv_malloc(i64 noundef %i.bj) #5 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %12, ptr noundef nonnull align 4 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #5
  %i.bl = getelementptr inbounds nuw i8, ptr %14, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bl, i8 0, i64 64, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %14, i64 40
  store ptr %i.bk, ptr %i.bm, align 8, !tbaa !61
  %i.bn = load i8, ptr %i.c, align 2, !tbaa !42
  %i.bo = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i8 %i.bn, ptr %i.bo, align 8, !tbaa !62
  store ptr %12, ptr %14, align 8, !tbaa !63
  %i.bp = getelementptr inbounds nuw i8, ptr %14, i64 56
  store ptr %12, ptr %i.bp, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #5
  %i.bq = load ptr, ptr %i.s, align 8, !tbaa !49  ; 2 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %14, i64 33
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.bs, ptr noundef nonnull align 8 dereferenceable(3) %i.bt, i64 3, i1 false), !tbaa.struct !53
  br label %bb.p

bb.l:                                             ; preds = %bb.j
  %i.bu = call i32 @lv_image_decoder_open(ptr noundef nonnull %15, ptr noundef nonnull %i.bq, ptr noundef null) #5
  %i.bv = icmp eq i32 %i.bu, 0
  %i.bw = getelementptr inbounds nuw i8, ptr %15, i64 72 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8            ; 4 uses
  %i.by = icmp eq ptr %i.bx, null
  %or.cond = select i1 %i.bv, i1 true, i1 %i.by
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %14, i64 33
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.bz, ptr noundef nonnull align 8 dereferenceable(3) %i.ca, i64 3, i1 false), !tbaa.struct !53
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  store i32 0, ptr %13, align 4, !tbaa !9
  %i.cb = getelementptr inbounds nuw i8, ptr %13, i64 4
  store i32 0, ptr %i.cb, align 4, !tbaa !10
  %i.cc = load i64, ptr %i.bx, align 8
  %i.cd = lshr i64 %i.cc, 32
  %i.ce = trunc nuw i64 %i.cd to i32
  %i.cf = and i32 %i.ce, 65535
  %i.cg = add nsw i32 %i.cf, -1
  %i.ch = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !11
  %i.ci = load i64, ptr %i.bx, align 8
  %i.cj = lshr i64 %i.ci, 48
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = add nsw i32 %i.ck, -1
  %i.cm = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !12
  %i.cn = load i64, ptr %i.bx, align 8
  %sum.shift = lshr i64 %i.cn, 33
  %i.co = trunc nuw nsw i64 %sum.shift to i32
  %i.cp = and i32 %i.co, 32767                    ; 2 uses
  %i.cq = load i32, ptr %i.ax, align 8, !tbaa !56
  %i.cr = sub nsw i32 %i.cq, %i.cp
  %i.cs = load i32, ptr %i.az, align 4, !tbaa !57
  %i.ct = sub nsw i32 %i.cs, %i.cp
  call void @lv_area_move(ptr noundef nonnull %13, i32 noundef %i.cr, i32 noundef %i.ct) #5
  %i.cu = getelementptr inbounds nuw i8, ptr %14, i64 24
  store ptr %13, ptr %i.cu, align 8, !tbaa !65
  %i.cv = load ptr, ptr %i.bw, align 8, !tbaa !77 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !80 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !81
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.da = load i32, ptr %i.cz, align 8
  %i.db = and i32 %i.da, 65535                    ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 %i.db, ptr %i.dc, align 8, !tbaa !82
  %i.dd = load i64, ptr %i.cv, align 8
  %i.de = trunc i64 %i.dd to i32
  %i.df = lshr i32 %i.de, 8
  %i.dg = and i32 %i.df, 255                      ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %14, i64 20 ; 2 uses
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !83
  %i.di = icmp eq i32 %i.dg, 20
  br i1 %i.di, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 18, ptr %i.dh, align 4, !tbaa !83
  %i.dj = call i32 @lv_area_get_height(ptr noundef nonnull %13) #5
  %i.dk = mul i32 %i.dj, %i.db
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dl
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.o, %bb.n, %bb.k
  %.2 = phi ptr [ null, %bb.k ], [ null, %bb.m ], [ %i.dm, %bb.o ], [ null, %bb.n ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #5
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 99 ; 2 uses
  %i.do = load i8, ptr %i.dn, align 1
  %i.dp = and i8 %i.do, 1
  %.not = icmp eq i8 %i.dp, 0
  br i1 %.not, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dq = mul nsw i32 %spec.select, %spec.select
  %i.dr = zext nneg i32 %i.dq to i64              ; 2 uses
  %i.ds = call ptr @lv_malloc(i64 noundef %i.dr) #5 ; 4 uses
  %.not134 = icmp eq ptr %i.ds, null
  br i1 %.not134, label %.preheader, label %bb.r

.preheader:                                       ; preds = %bb.q, %.preheader
  br label %.preheader

bb.r:                                             ; preds = %bb.q
  call void @lv_memset(ptr noundef nonnull %i.ds, i8 noundef zeroext -1, i64 noundef %i.dr) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #5
  store i32 0, ptr %18, align 4, !tbaa !9
  %i.dt = getelementptr inbounds nuw i8, ptr %18, i64 4
  store i32 0, ptr %i.dt, align 4, !tbaa !10
  %i.du = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.dv = add nsw i32 %spec.select, -1            ; 2 uses
  store i32 %i.dv, ptr %i.du, align 4, !tbaa !11
  %i.dw = getelementptr inbounds nuw i8, ptr %18, i64 12
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #5
  %i.dx = sdiv i32 %spec.select, 2
  call void @lv_draw_sw_mask_radius_init(ptr noundef nonnull %19, ptr noundef nonnull %18, i32 noundef %i.dx, i1 noundef zeroext false) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store ptr %19, ptr %i.b, align 16, !tbaa !58
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %i.dy, align 8, !tbaa !58
  %i.dz = icmp sgt i32 %spec.select, 0
  br i1 %i.dz, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.r
  %i.ea = zext nneg i32 %spec.select to i64       ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.u
  %.0118158 = phi ptr [ %i.ds, %.lr.ph ], [ %i.ed, %bb.u ] ; 3 uses
  %.0121157 = phi i32 [ 0, %.lr.ph ], [ %i.ee, %bb.u ] ; 2 uses
  %i.eb = call i32 @lv_draw_sw_mask_apply(ptr noundef nonnull %i.b, ptr noundef %.0118158, i32 noundef 0, i32 noundef %.0121157, i32 noundef %spec.select) #5
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @lv_memset(ptr noundef %.0118158, i8 noundef zeroext 0, i64 noundef range(i64 -2147483648, 2147483648) %i.ea) #5
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ed = getelementptr inbounds nuw i8, ptr %.0118158, i64 %i.ea
  %i.ee = add nuw nsw i32 %.0121157, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ee, %spec.select
  br i1 %exitcond.not, label %._crit_edge, label %bb.s, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.u, %bb.r
  call void @lv_draw_sw_mask_free_param(ptr noundef nonnull %19) #5
  %i.ef = trunc i32 %i.as to i16
  %i.eg = load i16, ptr %i.n, align 8, !tbaa !46
  %i.eh = zext i16 %i.eg to i32
  %i.ei = trunc i32 %spec.select to i8            ; 2 uses
  call fastcc void @get_rounded_area(i16 noundef signext %i.ef, i32 noundef %i.eh, i8 noundef zeroext %i.ei, ptr noundef %16)
  %i.ej = load i32, ptr %i.ax, align 8, !tbaa !56
  %i.ek = load i32, ptr %i.az, align 4, !tbaa !57
  call void @lv_area_move(ptr noundef nonnull %16, i32 noundef %i.ej, i32 noundef %i.ek) #5
  %i.el = trunc i32 %i.av to i16
  %i.em = load i16, ptr %i.n, align 8, !tbaa !46
  %i.en = zext i16 %i.em to i32
  call fastcc void @get_rounded_area(i16 noundef signext %i.el, i32 noundef %i.en, i8 noundef zeroext %i.ei, ptr noundef %17)
  %i.eo = load i32, ptr %i.ax, align 8, !tbaa !56
  %i.ep = load i32, ptr %i.az, align 4, !tbaa !57
  call void @lv_area_move(ptr noundef nonnull %17, i32 noundef %i.eo, i32 noundef %i.ep) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #5
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge, %bb.p
  %.0119 = phi ptr [ %i.ds, %._crit_edge ], [ null, %bb.p ] ; 8 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %12, i64 4 ; 7 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !10
  %i.es = getelementptr inbounds nuw i8, ptr %12, i64 12 ; 3 uses
  store i32 %i.er, ptr %i.es, align 4, !tbaa !12
  %i.et = icmp sgt i32 %i.bh, 0
  br i1 %i.et, label %.lr.ph165, label %._crit_edge166

.lr.ph165:                                        ; preds = %bb.v
  %i.eu = getelementptr inbounds nuw i8, ptr %14, i64 48 ; 7 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %16, i64 4 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %16, i64 12
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ey = getelementptr inbounds nuw i8, ptr %17, i64 4 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %17, i64 12
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.fb = icmp ne ptr %.2, null
  %i.fc = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.fd = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.fe = icmp sgt i32 %i.bi, 0
  %wide.trip.count = zext i32 %i.bi to i64        ; 10 uses
  %scevgep = getelementptr i8, ptr %i.bk, i64 %wide.trip.count
  %scevgep188 = getelementptr i8, ptr %.2, i64 %wide.trip.count
  %min.iters.check = icmp ult i32 %i.bi, 8
  %min.iters.check190 = icmp ult i32 %i.bi, 32
  %i.ff = and i64 %wide.trip.count, 24
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.ff, 0
  %n.vec194 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n199 = icmp eq i64 %n.vec194, %wide.trip.count
  %xtraiter274 = and i64 %wide.trip.count, 1
  %lcmp.mod275.not = icmp eq i64 %xtraiter274, 0
  %i.fg = add nsw i64 %wide.trip.count, -1
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph165, %bb.ak
  %.1122163 = phi i32 [ 0, %.lr.ph165 ], [ %i.mu, %bb.ak ]
  call void @lv_memset(ptr noundef %i.bk, i8 noundef zeroext -1, i64 noundef %i.bj) #5
  %i.fh = load i32, ptr %12, align 4, !tbaa !9
  %i.fi = load i32, ptr %i.eq, align 4, !tbaa !10
  %i.fj = call i32 @lv_draw_sw_mask_apply(ptr noundef nonnull %i.a, ptr noundef %i.bk, i32 noundef %i.fh, i32 noundef %i.fi, i32 noundef %i.bi) #5 ; 4 uses
  store i32 %i.fj, ptr %i.eu, align 8, !tbaa !85
  %i.fk = load i8, ptr %i.dn, align 1
  %i.fl = and i8 %i.fk, 1
  %.not137 = icmp eq i8 %i.fl, 0
  br i1 %.not137, label %bb.ah, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fm = load i32, ptr %i.eq, align 4, !tbaa !10 ; 3 uses
  %i.fn = load i32, ptr %i.ev, align 4, !tbaa !10
  %.not138 = icmp slt i32 %i.fm, %i.fn
  %i.fo = load i32, ptr %i.ew, align 4
  %.not139 = icmp sgt i32 %i.fm, %i.fo
  %or.cond145 = select i1 %.not138, i1 true, i1 %.not139
  br i1 %or.cond145, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fp = icmp eq i32 %i.fj, 0
  br i1 %i.fp, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @lv_memset(ptr noundef %i.bk, i8 noundef zeroext 0, i64 noundef range(i64 -2147483648, 2147483648) %i.bj) #5
  store i32 2, ptr %i.eu, align 8, !tbaa !85
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  %i.fq = call zeroext i1 @lv_area_intersect(ptr noundef nonnull %4, ptr noundef nonnull %16, ptr noundef nonnull %12) #5
  br i1 %i.fq, label %bb.ab, label %add_circle.exit

bb.ab:                                            ; preds = %bb.aa
  %i.fr = load i32, ptr %i.ex, align 4, !tbaa !10
  %i.fs = load i32, ptr %i.ev, align 4, !tbaa !10
  %i.ft = sub i32 %i.fr, %i.fs
  %i.fu = mul i32 %i.ft, %spec.select
  %i.fv = sext i32 %i.fu to i64                   ; 2 uses
  %i.fw = getelementptr inbounds i8, ptr %.0119, i64 %i.fv
  %i.fx = load i32, ptr %4, align 4, !tbaa !9     ; 2 uses
  %i.fy = load i32, ptr %16, align 4, !tbaa !9    ; 2 uses
  %i.fz = sub nsw i32 %i.fx, %i.fy
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds i8, ptr %i.fw, i64 %i.ga ; 5 uses
  %i.gc = sext i32 %i.fx to i64                   ; 3 uses
  %i.gd = getelementptr i8, ptr %i.bk, i64 %i.gc
  %i.ge = load i32, ptr %12, align 4, !tbaa !9
  %i.gf = sext i32 %i.ge to i64                   ; 2 uses
  %i.gg = sub nsw i64 0, %i.gf
  %i.gh = getelementptr i8, ptr %i.gd, i64 %i.gg  ; 6 uses
  %i.gi = call i32 @lv_area_get_width(ptr noundef nonnull %4) #5 ; 4 uses
  %.not.i = icmp eq i32 %i.gi, 0
  br i1 %.not.i, label %add_circle.exit, label %iter.check258

iter.check258:                                    ; preds = %bb.ab
  %wide.trip.count.i = zext i32 %i.gi to i64      ; 10 uses
  %min.iters.check243.a = icmp ult i32 %i.gi, 4
  br i1 %min.iters.check243.a, label %.lr.ph.i.preheader, label %vector.memcheck236

vector.memcheck236:                               ; preds = %iter.check258
  %i.gj = add nsw i64 %i.gc, %wide.trip.count.i
  %i.gk = sub nsw i64 %i.gj, %i.gf
  %scevgep237.a = getelementptr i8, ptr %i.bk, i64 %i.gk
  %i.gl = add nsw i64 %i.gc, %i.fv                ; 2 uses
  %20 = sext i32 %i.fy to i64                     ; 2 uses
  %21 = sub nsw i64 %i.gl, %20
  %scevgep238 = getelementptr i8, ptr %.0119, i64 %21
  %22 = add nsw i64 %i.gl, %wide.trip.count.i
  %i.gm = sub nsw i64 %22, %20
  %scevgep239 = getelementptr i8, ptr %.0119, i64 %i.gm
  %bound0240 = icmp ult ptr %i.gh, %scevgep239
  %bound1241 = icmp ult ptr %scevgep238, %scevgep237.a
  %found.conflict242 = and i1 %bound0240, %bound1241
  br i1 %found.conflict242, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check244

vector.main.loop.iter.check244:                   ; preds = %vector.memcheck236
  %min.iters.check245 = icmp ult i32 %i.gi, 32
  br i1 %min.iters.check245, label %vec.epilog.ph262, label %vector.ph246

vector.ph246:                                     ; preds = %vector.main.loop.iter.check244
  %i.gn = and i64 %wide.trip.count.i, 28
  %n.vec247 = and i64 %wide.trip.count.i, 4294967264 ; 4 uses
  br label %vector.body248

vector.body248:                                   ; preds = %vector.ph246, %vector.body248
  %index249 = phi i64 [ 0, %vector.ph246 ], [ %index.next254, %vector.body248 ] ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gh, i64 %index249 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16 ; 2 uses
  %wide.load250.a = load <16 x i8>, ptr %i.go, align 1, !tbaa !52, !alias.scope !86, !noalias !87
  %wide.load251.a = load <16 x i8>, ptr %i.gp, align 1, !tbaa !52, !alias.scope !86, !noalias !87
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gb, i64 %index249 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %wide.load252 = load <16 x i8>, ptr %i.gq, align 1, !tbaa !52, !alias.scope !87
  %wide.load253 = load <16 x i8>, ptr %i.gr, align 1, !tbaa !52, !alias.scope !87
  %i.gs = call <16 x i8> @llvm.uadd.sat.v16i8(<16 x i8> %wide.load250.a, <16 x i8> %wide.load252)
  %i.gt = call <16 x i8> @llvm.uadd.sat.v16i8(<16 x i8> %wide.load251.a, <16 x i8> %wide.load253)
  store <16 x i8> %i.gs, ptr %i.go, align 1, !tbaa !52, !alias.scope !86, !noalias !87
  store <16 x i8> %i.gt, ptr %i.gp, align 1, !tbaa !52, !alias.scope !86, !noalias !87
  %index.next254 = add nuw i64 %index249, 32      ; 2 uses
  %i.gu = icmp eq i64 %index.next254, %n.vec247
  br i1 %i.gu, label %middle.block255, label %vector.body248, !llvm.loop !17

middle.block255:                                  ; preds = %vector.body248
  %cmp.n256 = icmp eq i64 %n.vec247, %wide.trip.count.i
  br i1 %cmp.n256, label %add_circle.exit, label %vec.epilog.iter.check260

vec.epilog.iter.check260:                         ; preds = %middle.block255
  %min.epilog.iters.check261 = icmp eq i64 %i.gn, 0
  br i1 %min.epilog.iters.check261, label %.lr.ph.i.preheader, label %vec.epilog.ph262, !prof !90

vec.epilog.ph262:                                 ; preds = %vector.main.loop.iter.check244, %vec.epilog.iter.check260
  %vec.epilog.resume.val257 = phi i64 [ %n.vec247, %vec.epilog.iter.check260 ], [ 0, %vector.main.loop.iter.check244 ]
  %n.vec263 = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  br label %vec.epilog.vector.body264

vec.epilog.vector.body264:                        ; preds = %vec.epilog.vector.body264, %vec.epilog.ph262
  %index265 = phi i64 [ %vec.epilog.resume.val257, %vec.epilog.ph262 ], [ %index.next268, %vec.epilog.vector.body264 ] ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gh, i64 %index265 ; 2 uses
  %wide.load266 = load <4 x i8>, ptr %i.gv, align 1, !tbaa !52, !alias.scope !86, !noalias !87
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gb, i64 %index265
  %wide.load267 = load <4 x i8>, ptr %i.gw, align 1, !tbaa !52, !alias.scope !87
  %i.gx = call <4 x i8> @llvm.uadd.sat.v4i8(<4 x i8> %wide.load266, <4 x i8> %wide.load267)
  store <4 x i8> %i.gx, ptr %i.gv, align 1, !tbaa !52, !alias.scope !86, !noalias !87
  %index.next268 = add nuw i64 %index265, 4       ; 2 uses
  %i.gy = icmp eq i64 %index.next268, %n.vec263
  br i1 %i.gy, label %vec.epilog.middle.block269, label %vec.epilog.vector.body264, !llvm.loop !18

vec.epilog.middle.block269:                       ; preds = %vec.epilog.vector.body264
  %cmp.n270 = icmp eq i64 %n.vec263, %wide.trip.count.i
  br i1 %cmp.n270, label %add_circle.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check258, %vector.memcheck236, %vec.epilog.iter.check260, %vec.epilog.middle.block269
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check258 ], [ 0, %vector.memcheck236 ], [ %n.vec247, %vec.epilog.iter.check260 ], [ %n.vec263, %vec.epilog.middle.block269 ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gh, i64 %indvars.iv.i.ph ; 2 uses
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !52
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gb, i64 %indvars.iv.i.ph
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !52
  %i.hd = call i8 @llvm.uadd.sat.i8(i8 %i.ha, i8 %i.hc)
  store i8 %i.hd, ptr %i.gz, align 1, !tbaa !52
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.he = add nsw i64 %wide.trip.count.i, -1
  %i.hf = icmp eq i64 %indvars.iv.i.ph, %i.he
  br i1 %i.hf, label %add_circle.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gh, i64 %indvars.iv.i ; 2 uses
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !52
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gb, i64 %indvars.iv.i
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !52
  %i.hk = call i8 @llvm.uadd.sat.i8(i8 %i.hh, i8 %i.hj)
  store i8 %i.hk, ptr %i.hg, align 1, !tbaa !52
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gh, i64 %indvars.iv.next.i ; 2 uses
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !52
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gb, i64 %indvars.iv.next.i
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !52
  %i.hp = call i8 @llvm.uadd.sat.i8(i8 %i.hm, i8 %i.ho)
  store i8 %i.hp, ptr %i.hl, align 1, !tbaa !52
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %add_circle.exit, label %.lr.ph.i, !llvm.loop !19

add_circle.exit:                                  ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block255, %vec.epilog.middle.block269, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  %.pre172 = load i32, ptr %i.eq, align 4, !tbaa !10
  %.pre174.pre = load i32, ptr %i.eu, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %add_circle.exit, %bb.x
  %.pre174 = phi i32 [ %.pre174.pre, %add_circle.exit ], [ %i.fj, %bb.x ] ; 2 uses
  %i.hq = phi i32 [ %.pre172, %add_circle.exit ], [ %i.fm, %bb.x ] ; 2 uses
  %i.hr = load i32, ptr %i.ey, align 4, !tbaa !10
  %.not140 = icmp slt i32 %i.hq, %i.hr
  %i.hs = load i32, ptr %i.ez, align 4
  %.not141 = icmp sgt i32 %i.hq, %i.hs
  %or.cond147 = select i1 %.not140, i1 true, i1 %.not141
  br i1 %or.cond147, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ht = icmp eq i32 %.pre174, 0
  br i1 %i.ht, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @lv_memset(ptr noundef %i.bk, i8 noundef zeroext 0, i64 noundef range(i64 -2147483648, 2147483648) %i.bj) #5
  store i32 2, ptr %i.eu, align 8, !tbaa !85
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.hu = call zeroext i1 @lv_area_intersect(ptr noundef nonnull %3, ptr noundef nonnull %17, ptr noundef nonnull %12) #5
  br i1 %i.hu, label %bb.ag, label %add_circle.exit155

bb.ag:                                            ; preds = %bb.af
  %i.hv = load i32, ptr %i.fa, align 4, !tbaa !10
  %i.hw = load i32, ptr %i.ey, align 4, !tbaa !10
  %i.hx = sub i32 %i.hv, %i.hw
  %i.hy = mul i32 %i.hx, %spec.select
  %i.hz = sext i32 %i.hy to i64                   ; 2 uses
  %i.ia = getelementptr inbounds i8, ptr %.0119, i64 %i.hz
  %i.ib = load i32, ptr %3, align 4, !tbaa !9     ; 2 uses
  %i.ic = load i32, ptr %17, align 4, !tbaa !9    ; 2 uses
  %i.id = sub nsw i32 %i.ib, %i.ic
  %i.ie = sext i32 %i.id to i64
  %i.if = getelementptr inbounds i8, ptr %i.ia, i64 %i.ie ; 5 uses
  %i.ig = sext i32 %i.ib to i64                   ; 3 uses
  %i.ih = getelementptr i8, ptr %i.bk, i64 %i.ig
  %i.ii = load i32, ptr %12, align 4, !tbaa !9
  %i.ij = sext i32 %i.ii to i64                   ; 2 uses
  %i.ik = sub nsw i64 0, %i.ij
  %i.il = getelementptr i8, ptr %i.ih, i64 %i.ik  ; 6 uses
  %i.im = call i32 @lv_area_get_width(ptr noundef nonnull %3) #5 ; 4 uses
  %.not.i148 = icmp eq i32 %i.im, 0
  br i1 %.not.i148, label %add_circle.exit155, label %iter.check222

iter.check222:                                    ; preds = %bb.ag
  %wide.trip.count.i150 = zext i32 %i.im to i64   ; 10 uses
  %min.iters.check207 = icmp ult i32 %i.im, 4
  br i1 %min.iters.check207, label %.lr.ph.i151.preheader, label %vector.memcheck200

vector.memcheck200:                               ; preds = %iter.check222
  %i.in = add nsw i64 %i.ig, %wide.trip.count.i150
  %i.io = sub nsw i64 %i.in, %i.ij
  %scevgep201 = getelementptr i8, ptr %i.bk, i64 %i.io
  %i.ip = add nsw i64 %i.ig, %i.hz                ; 2 uses
  %23 = sext i32 %i.ic to i64                     ; 2 uses
  %24 = sub nsw i64 %i.ip, %23
  %scevgep202 = getelementptr i8, ptr %.0119, i64 %24
  %25 = add nsw i64 %i.ip, %wide.trip.count.i150
  %i.iq = sub nsw i64 %25, %23
  %scevgep203 = getelementptr i8, ptr %.0119, i64 %i.iq
  %bound0204 = icmp ult ptr %i.il, %scevgep203
  %bound1205 = icmp ult ptr %scevgep202, %scevgep201
  %found.conflict206 = and i1 %bound0204, %bound1205
  br i1 %found.conflict206, label %.lr.ph.i151.preheader, label %vector.main.loop.iter.check208

vector.main.loop.iter.check208:                   ; preds = %vector.memcheck200
  %min.iters.check209 = icmp ult i32 %i.im, 32
  br i1 %min.iters.check209, label %vec.epilog.ph226, label %vector.ph210

vector.ph210:                                     ; preds = %vector.main.loop.iter.check208
  %i.ir = and i64 %wide.trip.count.i150, 28
  %n.vec211 = and i64 %wide.trip.count.i150, 4294967264 ; 4 uses
  br label %vector.body212

vector.body212:                                   ; preds = %vector.ph210, %vector.body212
  %index213 = phi i64 [ 0, %vector.ph210 ], [ %index.next218, %vector.body212 ] ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.il, i64 %index213 ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16 ; 2 uses
  %wide.load214.a = load <16 x i8>, ptr %i.is, align 1, !tbaa !52, !alias.scope !91, !noalias !92
  %wide.load215.a = load <16 x i8>, ptr %i.it, align 1, !tbaa !52, !alias.scope !91, !noalias !92
  %i.iu = getelementptr inbounds nuw i8, ptr %i.if, i64 %index213 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  %wide.load216.a = load <16 x i8>, ptr %i.iu, align 1, !tbaa !52, !alias.scope !92
  %wide.load217 = load <16 x i8>, ptr %i.iv, align 1, !tbaa !52, !alias.scope !92
  %i.iw = call <16 x i8> @llvm.uadd.sat.v16i8(<16 x i8> %wide.load214.a, <16 x i8> %wide.load216.a)
  %i.ix = call <16 x i8> @llvm.uadd.sat.v16i8(<16 x i8> %wide.load215.a, <16 x i8> %wide.load217)
  store <16 x i8> %i.iw, ptr %i.is, align 1, !tbaa !52, !alias.scope !91, !noalias !92
  store <16 x i8> %i.ix, ptr %i.it, align 1, !tbaa !52, !alias.scope !91, !noalias !92
  %index.next218 = add nuw i64 %index213, 32      ; 2 uses
  %i.iy = icmp eq i64 %index.next218, %n.vec211
  br i1 %i.iy, label %middle.block219, label %vector.body212, !llvm.loop !23

middle.block219:                                  ; preds = %vector.body212
  %cmp.n220 = icmp eq i64 %n.vec211, %wide.trip.count.i150
  br i1 %cmp.n220, label %add_circle.exit155, label %vec.epilog.iter.check224

vec.epilog.iter.check224:                         ; preds = %middle.block219
  %min.epilog.iters.check225 = icmp eq i64 %i.ir, 0
  br i1 %min.epilog.iters.check225, label %.lr.ph.i151.preheader, label %vec.epilog.ph226, !prof !90

vec.epilog.ph226:                                 ; preds = %vector.main.loop.iter.check208, %vec.epilog.iter.check224
  %vec.epilog.resume.val221 = phi i64 [ %n.vec211, %vec.epilog.iter.check224 ], [ 0, %vector.main.loop.iter.check208 ]
  %n.vec227 = and i64 %wide.trip.count.i150, 4294967292 ; 3 uses
  br label %vec.epilog.vector.body228

vec.epilog.vector.body228:                        ; preds = %vec.epilog.vector.body228, %vec.epilog.ph226
  %index229 = phi i64 [ %vec.epilog.resume.val221, %vec.epilog.ph226 ], [ %index.next232, %vec.epilog.vector.body228 ] ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.il, i64 %index229 ; 2 uses
  %wide.load230.a = load <4 x i8>, ptr %i.iz, align 1, !tbaa !52, !alias.scope !91, !noalias !92
  %i.ja = getelementptr inbounds nuw i8, ptr %i.if, i64 %index229
  %wide.load231 = load <4 x i8>, ptr %i.ja, align 1, !tbaa !52, !alias.scope !92
  %i.jb = call <4 x i8> @llvm.uadd.sat.v4i8(<4 x i8> %wide.load230.a, <4 x i8> %wide.load231)
  store <4 x i8> %i.jb, ptr %i.iz, align 1, !tbaa !52, !alias.scope !91, !noalias !92
  %index.next232 = add nuw i64 %index229, 4       ; 2 uses
  %i.jc = icmp eq i64 %index.next232, %n.vec227
  br i1 %i.jc, label %vec.epilog.middle.block233, label %vec.epilog.vector.body228, !llvm.loop !24

vec.epilog.middle.block233:                       ; preds = %vec.epilog.vector.body228
  %cmp.n234 = icmp eq i64 %n.vec227, %wide.trip.count.i150
  br i1 %cmp.n234, label %add_circle.exit155, label %.lr.ph.i151.preheader

.lr.ph.i151.preheader:                            ; preds = %iter.check222, %vector.memcheck200, %vec.epilog.iter.check224, %vec.epilog.middle.block233
  %indvars.iv.i152.ph = phi i64 [ 0, %iter.check222 ], [ 0, %vector.memcheck200 ], [ %n.vec211, %vec.epilog.iter.check224 ], [ %n.vec227, %vec.epilog.middle.block233 ] ; 5 uses
  %xtraiter272 = and i64 %wide.trip.count.i150, 1
  %lcmp.mod273.not = icmp eq i64 %xtraiter272, 0
  br i1 %lcmp.mod273.not, label %.lr.ph.i151.prol.loopexit, label %.lr.ph.i151.prol

.lr.ph.i151.prol:                                 ; preds = %.lr.ph.i151.preheader
  %i.jd = getelementptr inbounds nuw i8, ptr %i.il, i64 %indvars.iv.i152.ph ; 2 uses
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !52
  %i.jf = getelementptr inbounds nuw i8, ptr %i.if, i64 %indvars.iv.i152.ph
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !52
  %i.jh = call i8 @llvm.uadd.sat.i8(i8 %i.je, i8 %i.jg)
  store i8 %i.jh, ptr %i.jd, align 1, !tbaa !52
  %indvars.iv.next.i153.prol = or disjoint i64 %indvars.iv.i152.ph, 1
  br label %.lr.ph.i151.prol.loopexit

.lr.ph.i151.prol.loopexit:                        ; preds = %.lr.ph.i151.prol, %.lr.ph.i151.preheader
  %indvars.iv.i152.unr = phi i64 [ %indvars.iv.i152.ph, %.lr.ph.i151.preheader ], [ %indvars.iv.next.i153.prol, %.lr.ph.i151.prol ]
  %i.ji = add nsw i64 %wide.trip.count.i150, -1
  %i.jj = icmp eq i64 %indvars.iv.i152.ph, %i.ji
  br i1 %i.jj, label %add_circle.exit155, label %.lr.ph.i151

.lr.ph.i151:                                      ; preds = %.lr.ph.i151.prol.loopexit, %.lr.ph.i151
  %indvars.iv.i152 = phi i64 [ %indvars.iv.next.i153.1, %.lr.ph.i151 ], [ %indvars.iv.i152.unr, %.lr.ph.i151.prol.loopexit ] ; 4 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.il, i64 %indvars.iv.i152 ; 2 uses
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !52
  %i.jm = getelementptr inbounds nuw i8, ptr %i.if, i64 %indvars.iv.i152
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !52
  %i.jo = call i8 @llvm.uadd.sat.i8(i8 %i.jl, i8 %i.jn)
  store i8 %i.jo, ptr %i.jk, align 1, !tbaa !52
  %indvars.iv.next.i153 = add nuw nsw i64 %indvars.iv.i152, 1 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.il, i64 %indvars.iv.next.i153 ; 2 uses
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !52
  %i.jr = getelementptr inbounds nuw i8, ptr %i.if, i64 %indvars.iv.next.i153
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !52
  %i.jt = call i8 @llvm.uadd.sat.i8(i8 %i.jq, i8 %i.js)
  store i8 %i.jt, ptr %i.jp, align 1, !tbaa !52
  %indvars.iv.next.i153.1 = add nuw nsw i64 %indvars.iv.i152, 2 ; 2 uses
  %exitcond.not.i154.1 = icmp eq i64 %indvars.iv.next.i153.1, %wide.trip.count.i150
  br i1 %exitcond.not.i154.1, label %add_circle.exit155, label %.lr.ph.i151, !llvm.loop !25

add_circle.exit155:                               ; preds = %.lr.ph.i151.prol.loopexit, %.lr.ph.i151, %middle.block219, %vec.epilog.middle.block233, %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  %.pre173 = load i32, ptr %i.eu, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ac, %add_circle.exit155, %bb.w
  %i.ju = phi i32 [ %.pre174, %bb.ac ], [ %.pre173, %add_circle.exit155 ], [ %i.fj, %bb.w ] ; 2 uses
  %i.jv = icmp ne i32 %i.ju, 0
  %or.cond5 = select i1 %i.fb, i1 %i.jv, i1 false
  br i1 %or.cond5, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.jw = load i32, ptr %i.fc, align 8, !tbaa !82
  %i.jx = lshr i32 %i.jw, 1
  %i.jy = load i32, ptr %i.eq, align 4, !tbaa !10
  %i.jz = load ptr, ptr %i.fd, align 8, !tbaa !65 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 4
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !10
  %i.kc = sub i32 %i.jy, %i.kb
  %i.kd = mul i32 %i.kc, %i.jx
  %i.ke = zext i32 %i.kd to i64                   ; 2 uses
  %i.kf = getelementptr i8, ptr %.2, i64 %i.ke
  %i.kg = load i32, ptr %12, align 4, !tbaa !9    ; 2 uses
  %i.kh = load i32, ptr %i.jz, align 4, !tbaa !9  ; 2 uses
  %i.ki = sub i32 %i.kg, %i.kh
  %i.kj = sext i32 %i.ki to i64
  %i.kk = getelementptr i8, ptr %i.kf, i64 %i.kj  ; 6 uses
  br i1 %i.fe, label %iter.check, label %._crit_edge162

iter.check:                                       ; preds = %bb.ai
  br i1 %min.iters.check, label %.lr.ph161.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.kl = sext i32 %i.kg to i64
  %i.km = add nsw i64 %i.kl, %i.ke
  %i.kn = sext i32 %i.kh to i64
  %i.ko = sub nsw i64 %i.km, %i.kn
  %scevgep189 = getelementptr i8, ptr %scevgep188, i64 %i.ko
  %bound0 = icmp ult ptr %i.bk, %scevgep189
  %bound1 = icmp ult ptr %i.kk, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph161.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check190, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.bk, i64 %index ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.kp, align 1, !tbaa !52, !alias.scope !93, !noalias !94
  %wide.load191 = load <16 x i8>, ptr %i.kq, align 1, !tbaa !52, !alias.scope !93, !noalias !94
  %i.kr = zext <16 x i8> %wide.load to <16 x i16>
  %i.ks = zext <16 x i8> %wide.load191 to <16 x i16>
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kk, i64 %index ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  %wide.load192 = load <16 x i8>, ptr %i.kt, align 1, !tbaa !52, !alias.scope !94
  %wide.load193 = load <16 x i8>, ptr %i.ku, align 1, !tbaa !52, !alias.scope !94
  %i.kv = zext <16 x i8> %wide.load192 to <16 x i16>
  %i.kw = zext <16 x i8> %wide.load193 to <16 x i16>
  %i.kx = mul nuw <16 x i16> %i.kv, %i.kr
  %i.ky = mul nuw <16 x i16> %i.kw, %i.ks
  %i.kz = lshr <16 x i16> %i.kx, splat (i16 8)
  %i.la = lshr <16 x i16> %i.ky, splat (i16 8)
  %i.lb = trunc nuw <16 x i16> %i.kz to <16 x i8>
  %i.lc = trunc nuw <16 x i16> %i.la to <16 x i8>
  store <16 x i8> %i.lb, ptr %i.kp, align 1, !tbaa !52, !alias.scope !93, !noalias !94
  store <16 x i8> %i.lc, ptr %i.kq, align 1, !tbaa !52, !alias.scope !93, !noalias !94
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ld = icmp eq i64 %index.next, %n.vec
  br i1 %i.ld, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge162.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph161.preheader, label %vec.epilog.ph, !prof !95

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index195 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next198, %vec.epilog.vector.body ] ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.bk, i64 %index195 ; 2 uses
  %wide.load196 = load <8 x i8>, ptr %i.le, align 1, !tbaa !52, !alias.scope !93, !noalias !94
  %i.lf = zext <8 x i8> %wide.load196 to <8 x i16>
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kk, i64 %index195
  %wide.load197 = load <8 x i8>, ptr %i.lg, align 1, !tbaa !52, !alias.scope !94
  %i.lh = zext <8 x i8> %wide.load197 to <8 x i16>
  %i.li = mul nuw <8 x i16> %i.lh, %i.lf
  %i.lj = lshr <8 x i16> %i.li, splat (i16 8)
  %i.lk = trunc nuw <8 x i16> %i.lj to <8 x i8>
  store <8 x i8> %i.lk, ptr %i.le, align 1, !tbaa !52, !alias.scope !93, !noalias !94
  %index.next198 = add nuw i64 %index195, 8       ; 2 uses
  %i.ll = icmp eq i64 %index.next198, %n.vec194
  br i1 %i.ll, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !30

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n199, label %._crit_edge162.loopexit, label %.lr.ph161.preheader
end_hunk_0
