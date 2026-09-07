Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/postprocessing_utils_dcrdefs?download=true
inline.NumInlined: 72
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN6LibRaw14convert_to_rgbEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN6LibRaw11gamma_curveEddii(ptr noundef nonnull align 8 dereferenceable(768512), double noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZN6LibRaw13pseudoinverseEPA3_dS1_i(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw12scale_colorsEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [8 x i32], align 16               ; 33 uses
  %i.b = alloca [4 x float], align 16             ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 768264 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !74   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 768272
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !75
  %i.g = tail call noundef i32 %i.d(ptr noundef %i.f, i32 noundef 512, i32 noundef 0, i32 noundef 2)
  %.not175 = icmp eq i32 %i.g, 0
  br i1 %.not175, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @__cxa_allocate_exception(i64 4) #13 ; 2 uses
  store i32 6, ptr %i.h, align 16, !tbaa !77
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #14
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 5240 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 5352 ; 2 uses
  %i.l = load float, ptr %i.k, align 8, !tbaa !81
  %i.m = fcmp reassoc nsz arcp contract afn une float %i.l, 0.000000e+00
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 153268
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 5388 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !139
  %.not176 = icmp eq i32 %i.p, 0
  br i1 %.not176, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 5392
  %i.r = load i32, ptr %i.q, align 8, !tbaa !140
  %.not177 = icmp eq i32 %i.r, 0
  br i1 %.not177, label %.thread194, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 153252
  %i.t = load float, ptr %i.s, align 4, !tbaa !81 ; 2 uses
  %i.u = fcmp reassoc nsz arcp contract afn olt float %i.t, -5.000000e-01
  br i1 %i.u, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = fcmp reassoc nsz arcp contract afn ugt float %i.t, f0x3727C5AC
  br i1 %i.v, label %.loopexit210.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 5552
  %i.x = load i32, ptr %i.w, align 8, !tbaa !141
  %i.y = and i32 %i.x, 131072
  %.not178 = icmp eq i32 %i.y, 0
  br i1 %.not178, label %bb.k, label %.loopexit210.thread

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 5244
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !80  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 5252
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !80
  %i.ad = add i32 %i.ac, %i.aa
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i16, ptr %i.ae, align 4, !tbaa !90
  %i.ag = zext i16 %i.af to i32
  %. = tail call i32 @llvm.umin.i32(i32 %i.ad, i32 %i.ag) ; 3 uses
  %i.ah = load i32, ptr %i.j, align 8, !tbaa !80  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 5248
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !80
  %i.ak = add i32 %i.aj, %i.ah
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 4 uses
  %i.am = load i16, ptr %i.al, align 2, !tbaa !91
  %i.an = zext i16 %i.am to i32
  %i.ao = tail call i32 @llvm.umin.i32(i32 %i.ak, i32 %i.an) ; 4 uses
  %i.ap = icmp ult i32 %i.aa, %.
  br i1 %i.ap, label %.lr.ph250, label %.loopexit210

.lr.ph250:                                        ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 381668
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 153096 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 136672 ; 4 uses
  %i.av = icmp ult i32 %i.ah, %i.ao
  br i1 %i.av, label %.lr.ph250.split.preheader, label %.loopexit210

.lr.ph250.split.preheader:                        ; preds = %.lr.ph250
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 136676
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 136680
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 136684
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 136676
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 136680
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 136684
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 2 uses
  br label %.lr.ph250.split

.preheader209:                                    ; preds = %._crit_edge228
  %i.bq = extractelement <8 x double> %i.ig, i64 0 ; 2 uses
  %i.br = fcmp reassoc nsz arcp contract afn une double %i.bq, 0.000000e+00
  br i1 %i.br, label %bb.v, label %bb.w

.lr.ph250.split:                                  ; preds = %.lr.ph250.split.preheader, %._crit_edge228
  %.0156248 = phi i32 [ %i.aa, %.lr.ph250.split.preheader ], [ %i.bv, %._crit_edge228 ] ; 2 uses
  %i.bs = phi <8 x double> [ zeroinitializer, %.lr.ph250.split.preheader ], [ %i.ig, %._crit_edge228 ] ; 2 uses
  %i.bt = load i32, ptr %i.j, align 8, !tbaa !80  ; 2 uses
  %i.bu = icmp ult i32 %i.bt, %i.ao
  %i.bv = add nuw nsw i32 %.0156248, 8            ; 3 uses
  br i1 %i.bu, label %.preheader213.lr.ph.us.preheader, label %._crit_edge228

.preheader213.lr.ph.us.preheader:                 ; preds = %.lr.ph250.split
  %invariant.umin219 = tail call i32 @llvm.umin.i32(i32 %i.bv, i32 %.)
  %i.bw = zext nneg i32 %i.bt to i64
  br label %.preheader213.us.preheader

.preheader213.us.preheader:                       ; preds = %.loopexit215.us, %.preheader213.lr.ph.us.preheader
  %indvars.iv289 = phi i64 [ %i.bw, %.preheader213.lr.ph.us.preheader ], [ %indvars.iv.next290, %.loopexit215.us ] ; 3 uses
  %i.bx = phi <8 x double> [ %i.bs, %.preheader213.lr.ph.us.preheader ], [ %i.ib, %.loopexit215.us ] ; 11 uses
  %indvars297 = trunc i64 %indvars.iv289 to i32   ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.by = add nuw nsw i32 %indvars297, 8
  %invariant.umin.us = tail call i32 @llvm.umin.i32(i32 %i.by, i32 %i.ao) ; 2 uses
  %i.bz = zext nneg i32 %invariant.umin.us to i64
  %.pre = load i32, ptr %i.aq, align 8, !tbaa !92 ; 2 uses
  br label %.preheader213.us

.preheader213.us:                                 ; preds = %.preheader213.us.preheader, %._crit_edge.us
  %i.ca = phi i32 [ %i.hx, %._crit_edge.us ], [ %.pre, %.preheader213.us.preheader ] ; 4 uses
  %i.cb = phi i32 [ %i.hy, %._crit_edge.us ], [ %.pre, %.preheader213.us.preheader ]
  %.0150220.us = phi i32 [ %i.hz, %._crit_edge.us ], [ %.0156248, %.preheader213.us.preheader ] ; 7 uses
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %.preheader211.lr.ph.split.us.us, label %.preheader211.us230

.preheader211.us230:                              ; preds = %.preheader213.us, %.split.us238
  %i.cd = phi i32 [ %i.ga, %.split.us238 ], [ %i.ca, %.preheader213.us ]
  %i.ce = phi i32 [ %i.gb, %.split.us238 ], [ 1, %.preheader213.us ]
  %.0151217.us231 = phi i32 [ %i.gc, %.split.us238 ], [ %indvars297, %.preheader213.us ] ; 6 uses
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %.preheader211.split.us.us, label %.preheader211.split.us232.peel

.preheader211.split.us232.peel:                   ; preds = %.preheader211.us230
  %i.cg = tail call noundef i32 @_ZN6LibRaw4fcolEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %.0150220.us, i32 noundef %.0151217.us231) ; 3 uses
  %i.ch = load ptr, ptr %i.i, align 8, !tbaa !93
  %i.ci = load i16, ptr %i.ar, align 4, !tbaa !142
  %i.cj = zext i16 %i.ci to i32                   ; 2 uses
  %i.ck = lshr i32 %.0150220.us, %i.cj
  %i.cl = load i16, ptr %i.as, align 2, !tbaa !143
  %i.cm = zext i16 %i.cl to i32
  %i.cn = mul nuw i32 %i.ck, %i.cm
  %i.co = lshr i32 %.0151217.us231, %i.cj
  %i.cp = add nuw i32 %i.cn, %i.co
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cq
  %i.cs = tail call noundef i32 @_ZN6LibRaw4fcolEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %.0150220.us, i32 noundef %.0151217.us231)
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [2 x i8], ptr %i.cr, i64 %i.ct
  %.0146.in.us234.peel = load i16, ptr %i.cu, align 2, !tbaa !94
  %.0146.us235.peel = zext i16 %.0146.in.us234.peel to i32 ; 2 uses
  %i.cv = load i32, ptr %i.at, align 8, !tbaa !95
  %i.cw = add nsw i32 %i.cv, -25
  %i.cx = icmp slt i32 %i.cw, %.0146.us235.peel
  br i1 %i.cx, label %.loopexit215.us, label %bb.l

bb.l:                                             ; preds = %.preheader211.split.us232.peel
  %i.cy = zext i32 %i.cg to i64                   ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !80
  %i.db = sub i32 %.0146.us235.peel, %i.da
  %spec.store.select.us236.peel = tail call i32 @llvm.smax.i32(i32 %i.db, i32 0)
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cy ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !80
  %i.de = add i32 %spec.store.select.us236.peel, %i.dd
  store i32 %i.de, ptr %i.dc, align 4, !tbaa !80
  %i.df = add i32 %i.cg, 4
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dg ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !80
  %i.dj = add i32 %i.di, 1
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !80
  %i.dk = load i32, ptr %i.aq, align 8, !tbaa !92 ; 3 uses
  %.not190.us237.peel = icmp eq i32 %i.dk, 0
  %1 = add i32 %i.cg, 1                           ; 2 uses
  %i.dl = icmp ult i32 %1, 4
  %or.cond269.peel = select i1 %.not190.us237.peel, i1 %i.dl, i1 false
  br i1 %or.cond269.peel, label %.preheader211.split.us232.preheader.peel.newph, label %.split.us238

.preheader211.split.us232.preheader.peel.newph:   ; preds = %bb.l
  %i.dm = load i32, ptr %i.at, align 8, !tbaa !95
  %i.dn = add nsw i32 %i.dm, -25
  br label %.preheader211.split.us232

.preheader211.split.us232:                        ; preds = %.preheader211.split.us232.preheader.peel.newph, %bb.m
  %.0147216.us233.a = phi i32 [ %2, %bb.m ], [ %1, %.preheader211.split.us232.preheader.peel.newph ] ; 4 uses
  %i.do = load ptr, ptr %i.i, align 8, !tbaa !93
  %i.dp = load i16, ptr %i.al, align 2, !tbaa !91
  %i.dq = zext i16 %i.dp to i32
  %i.dr = mul nuw i32 %.0150220.us, %i.dq
  %i.ds = add nuw i32 %i.dr, %.0151217.us231
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dt
  %i.dv = zext nneg i32 %.0147216.us233.a to i64
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.dv
  %.0146.in.us234 = load i16, ptr %i.dw, align 2, !tbaa !94
  %.0146.us235 = zext i16 %.0146.in.us234 to i32  ; 2 uses
  %i.dx = icmp slt i32 %i.dn, %.0146.us235
  br i1 %i.dx, label %.loopexit215.us, label %bb.m

bb.m:                                             ; preds = %.preheader211.split.us232
  %i.dy = zext i32 %.0147216.us233.a to i64       ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !80
  %i.eb = sub i32 %.0146.us235, %i.ea
  %spec.store.select.us236 = tail call i32 @llvm.smax.i32(i32 %i.eb, i32 0)
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dy ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !80
  %i.ee = add i32 %spec.store.select.us236, %i.ed
  store i32 %i.ee, ptr %i.ec, align 4, !tbaa !80
  %i.ef = add i32 %.0147216.us233.a, 4
  %i.eg = zext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.eg ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !80
  %i.ej = add i32 %i.ei, 1
  store i32 %i.ej, ptr %i.eh, align 4, !tbaa !80
  %i.ek = load i32, ptr %i.aq, align 8, !tbaa !92 ; 3 uses
  %.not190.us237 = icmp eq i32 %i.ek, 0
  %2 = add i32 %.0147216.us233.a, 1               ; 2 uses
  %i.el = icmp ult i32 %2, 4
  %or.cond269 = select i1 %.not190.us237, i1 %i.el, i1 false
  br i1 %or.cond269, label %.preheader211.split.us232, label %.split.us238, !llvm.loop !116

.preheader211.split.us.us:                        ; preds = %.preheader211.us230
  %i.em = load ptr, ptr %i.i, align 8, !tbaa !93
  %i.en = load i16, ptr %i.al, align 2, !tbaa !91
  %i.eo = zext i16 %i.en to i32
  %i.ep = mul nuw i32 %.0150220.us, %i.eo
  %i.eq = add nuw i32 %i.ep, %.0151217.us231
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.er ; 4 uses
  %i.et = load i32, ptr %i.at, align 8, !tbaa !95
  %i.eu = add nsw i32 %i.et, -25                  ; 4 uses
  %.0146.in.us.us240 = load i16, ptr %i.es, align 2, !tbaa !94
  %.0146.us.us241 = zext i16 %.0146.in.us.us240 to i32 ; 2 uses
  %i.ev = icmp slt i32 %i.eu, %.0146.us.us241
  br i1 %i.ev, label %.loopexit215.us, label %bb.n

bb.n:                                             ; preds = %.preheader211.split.us.us
  %i.ew = load i32, ptr %i.au, align 8, !tbaa !80
  %i.ex = sub i32 %.0146.us.us241, %i.ew
  %spec.store.select.us.us242 = tail call i32 @llvm.smax.i32(i32 %i.ex, i32 0)
  %i.ey = load i32, ptr %i.a, align 16, !tbaa !80
  %i.ez = add i32 %spec.store.select.us.us242, %i.ey
  store i32 %i.ez, ptr %i.a, align 16, !tbaa !80
  %i.fa = load i32, ptr %i.aw, align 16, !tbaa !80
  %i.fb = add i32 %i.fa, 1
  store i32 %i.fb, ptr %i.aw, align 16, !tbaa !80
  %i.fc = getelementptr inbounds nuw i8, ptr %i.es, i64 2
  %.0146.in.us.us240.1 = load i16, ptr %i.fc, align 2, !tbaa !94
  %.0146.us.us241.1 = zext i16 %.0146.in.us.us240.1 to i32 ; 2 uses
  %i.fd = icmp slt i32 %i.eu, %.0146.us.us241.1
  br i1 %i.fd, label %.loopexit215.us, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fe = load i32, ptr %i.ax, align 4, !tbaa !80
  %i.ff = sub i32 %.0146.us.us241.1, %i.fe
  %spec.store.select.us.us242.1 = tail call i32 @llvm.smax.i32(i32 %i.ff, i32 0)
  %i.fg = load i32, ptr %i.ay, align 4, !tbaa !80
  %i.fh = add i32 %spec.store.select.us.us242.1, %i.fg
  store i32 %i.fh, ptr %i.ay, align 4, !tbaa !80
  %i.fi = load i32, ptr %i.az, align 4, !tbaa !80
  %i.fj = add i32 %i.fi, 1
  store i32 %i.fj, ptr %i.az, align 4, !tbaa !80
  %i.fk = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %.0146.in.us.us240.2 = load i16, ptr %i.fk, align 2, !tbaa !94
  %.0146.us.us241.2 = zext i16 %.0146.in.us.us240.2 to i32 ; 2 uses
  %i.fl = icmp slt i32 %i.eu, %.0146.us.us241.2
  br i1 %i.fl, label %.loopexit215.us, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fm = load i32, ptr %i.ba, align 8, !tbaa !80
  %i.fn = sub i32 %.0146.us.us241.2, %i.fm
  %spec.store.select.us.us242.2 = tail call i32 @llvm.smax.i32(i32 %i.fn, i32 0)
  %i.fo = load i32, ptr %i.bb, align 8, !tbaa !80
  %i.fp = add i32 %spec.store.select.us.us242.2, %i.fo
  store i32 %i.fp, ptr %i.bb, align 8, !tbaa !80
  %i.fq = load i32, ptr %i.bc, align 8, !tbaa !80
  %i.fr = add i32 %i.fq, 1
  store i32 %i.fr, ptr %i.bc, align 8, !tbaa !80
  %i.fs = getelementptr inbounds nuw i8, ptr %i.es, i64 6
  %.0146.in.us.us240.3 = load i16, ptr %i.fs, align 2, !tbaa !94
  %.0146.us.us241.3 = zext i16 %.0146.in.us.us240.3 to i32 ; 2 uses
  %i.ft = icmp slt i32 %i.eu, %.0146.us.us241.3
  br i1 %i.ft, label %.loopexit215.us, label %.split.us238.loopexit

.split.us238.loopexit:                            ; preds = %bb.p
  %i.fu = load i32, ptr %i.bd, align 4, !tbaa !80
  %i.fv = sub i32 %.0146.us.us241.3, %i.fu
  %spec.store.select.us.us242.3 = tail call i32 @llvm.smax.i32(i32 %i.fv, i32 0)
  %i.fw = load i32, ptr %i.be, align 4, !tbaa !80
  %i.fx = add i32 %spec.store.select.us.us242.3, %i.fw
  store i32 %i.fx, ptr %i.be, align 4, !tbaa !80
  %i.fy = load i32, ptr %i.bf, align 4, !tbaa !80
  %i.fz = add i32 %i.fy, 1
  store i32 %i.fz, ptr %i.bf, align 4, !tbaa !80
  br label %.split.us238

.split.us238:                                     ; preds = %bb.l, %bb.m, %.split.us238.loopexit
  %i.ga = phi i32 [ %i.cd, %.split.us238.loopexit ], [ %i.dk, %bb.l ], [ %i.ek, %bb.m ] ; 2 uses
  %i.gb = phi i32 [ 0, %.split.us238.loopexit ], [ %i.dk, %bb.l ], [ %i.ek, %bb.m ] ; 2 uses
  %i.gc = add nuw nsw i32 %.0151217.us231, 1      ; 2 uses
  %i.gd = icmp ult i32 %i.gc, %invariant.umin.us
  br i1 %i.gd, label %.preheader211.us230, label %._crit_edge.us, !llvm.loop !117

.preheader211.lr.ph.split.us.us:                  ; preds = %.preheader213.us
  %i.ge = load ptr, ptr %i.i, align 8, !tbaa !93
  %i.gf = load i16, ptr %i.al, align 2, !tbaa !91
  %i.gg = zext i16 %i.gf to i32
  %i.gh = mul nuw i32 %.0150220.us, %i.gg
  %i.gi = load i32, ptr %i.at, align 8, !tbaa !95
  %i.gj = add nsw i32 %i.gi, -25                  ; 4 uses
  %i.gk = zext i32 %i.gh to i64
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %i.gk
  %.not190.us.us.us = icmp eq i32 %i.ca, 0
  %.promoted = load i32, ptr %i.a, align 16
  %.promoted556.a = load i32, ptr %i.bg, align 16
  %.promoted557.a = load i32, ptr %i.bi, align 4
  %.promoted558.a = load i32, ptr %i.bj, align 4
  %.promoted559.a = load i32, ptr %i.bl, align 8
  %.promoted560.a = load i32, ptr %i.bm, align 8
  %.promoted561.a = load i32, ptr %i.bo, align 4
  %.promoted562 = load i32, ptr %i.bp, align 4
  br label %.preheader211.us.us

.preheader211.us.us:                              ; preds = %.split.us.us.us, %.preheader211.lr.ph.split.us.us
  %i.gl = phi i32 [ %i.hq, %.split.us.us.us ], [ %.promoted562, %.preheader211.lr.ph.split.us.us ] ; 2 uses
  %i.gm = phi i32 [ %i.hr, %.split.us.us.us ], [ %.promoted561.a, %.preheader211.lr.ph.split.us.us ] ; 2 uses
  %i.gn = phi i32 [ %i.hs, %.split.us.us.us ], [ %.promoted560.a, %.preheader211.lr.ph.split.us.us ] ; 2 uses
  %i.go = phi i32 [ %i.ht, %.split.us.us.us ], [ %.promoted559.a, %.preheader211.lr.ph.split.us.us ] ; 2 uses
  %i.gp = phi i32 [ %i.hu, %.split.us.us.us ], [ %.promoted558.a, %.preheader211.lr.ph.split.us.us ] ; 2 uses
  %i.gq = phi i32 [ %i.hv, %.split.us.us.us ], [ %.promoted557.a, %.preheader211.lr.ph.split.us.us ] ; 2 uses
  %i.gr = phi i32 [ %i.gx, %.split.us.us.us ], [ %.promoted556.a, %.preheader211.lr.ph.split.us.us ]
  %i.gs = phi i32 [ %i.gw, %.split.us.us.us ], [ %.promoted, %.preheader211.lr.ph.split.us.us ]
  %indvars.iv291 = phi i64 [ %indvars.iv.next292, %.split.us.us.us ], [ %indvars.iv289, %.preheader211.lr.ph.split.us.us ] ; 2 uses
  %gep477 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv291 ; 4 uses
  %.0146.in.us.us.us = load i16, ptr %gep477, align 2, !tbaa !94
  %.0146.us.us.us = zext i16 %.0146.in.us.us.us to i32 ; 2 uses
  %i.gt = icmp slt i32 %i.gj, %.0146.us.us.us
  br i1 %i.gt, label %.loopexit215.us, label %bb.q

bb.q:                                             ; preds = %.preheader211.us.us
  %i.gu = load i32, ptr %i.au, align 8, !tbaa !80
  %i.gv = sub i32 %.0146.us.us.us, %i.gu
  %spec.store.select.us.us.us = tail call i32 @llvm.smax.i32(i32 %i.gv, i32 0)
  %i.gw = add i32 %spec.store.select.us.us.us, %i.gs ; 2 uses
  store i32 %i.gw, ptr %i.a, align 16, !tbaa !80
  %i.gx = add i32 %i.gr, 1                        ; 2 uses
  store i32 %i.gx, ptr %i.bg, align 16, !tbaa !80
  br i1 %.not190.us.us.us, label %bb.r, label %.split.us.us.us

bb.r:                                             ; preds = %bb.q
  %i.gy = getelementptr inbounds nuw i8, ptr %gep477, i64 2
  %.0146.in.us.us.us.1 = load i16, ptr %i.gy, align 2, !tbaa !94
  %.0146.us.us.us.1 = zext i16 %.0146.in.us.us.us.1 to i32 ; 2 uses
  %i.gz = icmp slt i32 %i.gj, %.0146.us.us.us.1
  br i1 %i.gz, label %.loopexit215.us, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ha = load i32, ptr %i.bh, align 4, !tbaa !80
  %i.hb = sub i32 %.0146.us.us.us.1, %i.ha
  %spec.store.select.us.us.us.1 = tail call i32 @llvm.smax.i32(i32 %i.hb, i32 0)
  %i.hc = add i32 %spec.store.select.us.us.us.1, %i.gq ; 2 uses
  store i32 %i.hc, ptr %i.bi, align 4, !tbaa !80
  %i.hd = add i32 %i.gp, 1                        ; 2 uses
  store i32 %i.hd, ptr %i.bj, align 4, !tbaa !80
  %i.he = getelementptr inbounds nuw i8, ptr %gep477, i64 4
  %.0146.in.us.us.us.2 = load i16, ptr %i.he, align 2, !tbaa !94
  %.0146.us.us.us.2 = zext i16 %.0146.in.us.us.us.2 to i32 ; 2 uses
  %i.hf = icmp slt i32 %i.gj, %.0146.us.us.us.2
  br i1 %i.hf, label %.loopexit215.us, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hg = load i32, ptr %i.bk, align 8, !tbaa !80
  %i.hh = sub i32 %.0146.us.us.us.2, %i.hg
  %spec.store.select.us.us.us.2 = tail call i32 @llvm.smax.i32(i32 %i.hh, i32 0)
  %i.hi = add i32 %spec.store.select.us.us.us.2, %i.go ; 2 uses
  store i32 %i.hi, ptr %i.bl, align 8, !tbaa !80
  %i.hj = add i32 %i.gn, 1                        ; 2 uses
  store i32 %i.hj, ptr %i.bm, align 8, !tbaa !80
  %i.hk = getelementptr inbounds nuw i8, ptr %gep477, i64 6
  %.0146.in.us.us.us.3 = load i16, ptr %i.hk, align 2, !tbaa !94
  %.0146.us.us.us.3 = zext i16 %.0146.in.us.us.us.3 to i32 ; 2 uses
  %i.hl = icmp slt i32 %i.gj, %.0146.us.us.us.3
  br i1 %i.hl, label %.loopexit215.us, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hm = load i32, ptr %i.bn, align 4, !tbaa !80
  %i.hn = sub i32 %.0146.us.us.us.3, %i.hm
  %spec.store.select.us.us.us.3 = tail call i32 @llvm.smax.i32(i32 %i.hn, i32 0)
  %i.ho = add i32 %spec.store.select.us.us.us.3, %i.gm ; 2 uses
  store i32 %i.ho, ptr %i.bo, align 4, !tbaa !80
  %i.hp = add i32 %i.gl, 1                        ; 2 uses
  store i32 %i.hp, ptr %i.bp, align 4, !tbaa !80
  br label %.split.us.us.us

.split.us.us.us:                                  ; preds = %bb.u, %bb.q
  %i.hq = phi i32 [ %i.hp, %bb.u ], [ %i.gl, %bb.q ]
  %i.hr = phi i32 [ %i.ho, %bb.u ], [ %i.gm, %bb.q ]
  %i.hs = phi i32 [ %i.hj, %bb.u ], [ %i.gn, %bb.q ]
  %i.ht = phi i32 [ %i.hi, %bb.u ], [ %i.go, %bb.q ]
  %i.hu = phi i32 [ %i.hd, %bb.u ], [ %i.gp, %bb.q ]
  %i.hv = phi i32 [ %i.hc, %bb.u ], [ %i.gq, %bb.q ]
  %indvars.iv.next292 = add nuw nsw i64 %indvars.iv291, 1 ; 2 uses
  %i.hw = icmp samesign ult i64 %indvars.iv.next292, %i.bz
  br i1 %i.hw, label %.preheader211.us.us, label %._crit_edge.us, !llvm.loop !118

._crit_edge.us:                                   ; preds = %.split.us238, %.split.us.us.us
  %i.hx = phi i32 [ %i.ca, %.split.us.us.us ], [ %i.ga, %.split.us238 ]
  %i.hy = phi i32 [ %i.ca, %.split.us.us.us ], [ %i.gb, %.split.us238 ]
  %i.hz = add nuw nsw i32 %.0150220.us, 1         ; 2 uses
  %i.ia = icmp ult i32 %i.hz, %invariant.umin219
  br i1 %i.ia, label %.preheader213.us, label %..preheader214_crit_edge.split.us, !llvm.loop !119

.loopexit215.us:                                  ; preds = %.preheader211.split.us232, %.preheader211.split.us232.peel, %.preheader211.split.us.us, %bb.n, %bb.o, %bb.p, %.preheader211.us.us, %bb.r, %bb.s, %bb.t, %..preheader214_crit_edge.split.us
  %i.ib = phi <8 x double> [ %i.bx, %.preheader211.split.us.us ], [ %i.if, %..preheader214_crit_edge.split.us ], [ %i.bx, %.preheader211.us.us ], [ %i.bx, %bb.t ], [ %i.bx, %bb.s ], [ %i.bx, %bb.r ], [ %i.bx, %bb.p ], [ %i.bx, %bb.o ], [ %i.bx, %bb.n ], [ %i.bx, %.preheader211.split.us232.peel ], [ %i.bx, %.preheader211.split.us232 ] ; 2 uses
  %indvars.iv.next290 = add nuw nsw i64 %indvars.iv289, 8 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next290 to i32
  %i.ic = icmp ugt i32 %i.ao, %indvars
  br i1 %i.ic, label %.preheader213.us.preheader, label %._crit_edge228, !llvm.loop !120
end_hunk_0
