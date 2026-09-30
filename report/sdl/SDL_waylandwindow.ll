Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_waylandwindow?download=true
inline.NumInlined: 248
inline.NumDeleted: 110
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@Wayland_HandlePreferredScaleChanged:bb.a
._crit_edge.i5.i43:                               ; preds = %bb.s, %bb.r
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 248
  %i.dc = load double, ptr %i.db, align 8
  br label %GetWindowScale.exit6.i44

GetWindowScale.exit6.i44:                         ; preds = %._crit_edge.i5.i43, %bb.s
  %i.dd = phi double [ %i.dc, %._crit_edge.i5.i43 ], [ 1.000000e+00, %bb.s ]
  %i.de = tail call double @llvm.fmuladd.f64(double %i.cf, double %i.dd, double f0x3EB0C6F7A0B5ED8D)
  %i.df = tail call i64 @SDL_lround_REAL(double noundef %i.de) #15
  %i.dg = trunc i64 %i.df to i32
  br label %PointToPixel.exit

PointToPixel.exit:                                ; preds = %bb.o, %GetWindowScale.exit.i41, %GetWindowScale.exit6.i44
  %i.dh = phi i32 [ 1, %GetWindowScale.exit.i41 ], [ %i.dg, %GetWindowScale.exit6.i44 ], [ 0, %bb.o ]
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i32 %i.dh, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.dk = load i32, ptr %i.dj, align 4            ; 2 uses
  %.not.i45 = icmp eq i32 %i.dk, 0
  br i1 %.not.i45, label %PointToPixel.exit52, label %bb.t

bb.t:                                             ; preds = %PointToPixel.exit
  %i.dl = load ptr, ptr %0, align 8               ; 2 uses
  %i.dm = sitofp i32 %i.dk to double              ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 72 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8
  %i.dp = and i64 %i.do, 8192
  %.not.i.i46 = icmp eq i64 %i.dp, 0
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 392 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8            ; 2 uses
  br i1 %.not.i.i46, label %bb.u, label %._crit_edge.i.i47

bb.u:                                             ; preds = %bb.t
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 403
  %i.dt = load i8, ptr %i.ds, align 1, !range !38, !noundef !39
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %._crit_edge.i.i47, label %GetWindowScale.exit.i48

._crit_edge.i.i47:                                ; preds = %bb.u, %bb.t
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 248
  %i.dw = load double, ptr %i.dv, align 8
  br label %GetWindowScale.exit.i48

GetWindowScale.exit.i48:                          ; preds = %._crit_edge.i.i47, %bb.u
  %i.dx = phi double [ %i.dw, %._crit_edge.i.i47 ], [ 1.000000e+00, %bb.u ]
  %i.dy = tail call double @llvm.fmuladd.f64(double %i.dm, double %i.dx, double f0x3EB0C6F7A0B5ED8D)
  %i.dz = tail call i64 @SDL_lround_REAL(double noundef %i.dy) #15
  %i.ea = trunc i64 %i.dz to i32
  %i.eb = icmp sgt i32 %i.ea, 1
  br i1 %i.eb, label %bb.v, label %PointToPixel.exit52

bb.v:                                             ; preds = %GetWindowScale.exit.i48
  %i.ec = load i64, ptr %i.dn, align 8
  %i.ed = and i64 %i.ec, 8192
  %.not.i4.i49 = icmp eq i64 %i.ed, 0
  %i.ee = load ptr, ptr %i.dq, align 8            ; 2 uses
  br i1 %.not.i4.i49, label %bb.w, label %._crit_edge.i5.i50

bb.w:                                             ; preds = %bb.v
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 403
  %i.eg = load i8, ptr %i.ef, align 1, !range !38, !noundef !39
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %._crit_edge.i5.i50, label %GetWindowScale.exit6.i51

._crit_edge.i5.i50:                               ; preds = %bb.w, %bb.v
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 248
  %i.ej = load double, ptr %i.ei, align 8
  br label %GetWindowScale.exit6.i51

GetWindowScale.exit6.i51:                         ; preds = %._crit_edge.i5.i50, %bb.w
  %i.ek = phi double [ %i.ej, %._crit_edge.i5.i50 ], [ 1.000000e+00, %bb.w ]
  %i.el = tail call double @llvm.fmuladd.f64(double %i.dm, double %i.ek, double f0x3EB0C6F7A0B5ED8D)
  %i.em = tail call i64 @SDL_lround_REAL(double noundef %i.el) #15
  %i.en = trunc i64 %i.em to i32
  br label %PointToPixel.exit52

PointToPixel.exit52:                              ; preds = %PointToPixel.exit, %GetWindowScale.exit.i48, %GetWindowScale.exit6.i51
  %i.eo = phi i32 [ 1, %GetWindowScale.exit.i48 ], [ %i.en, %GetWindowScale.exit6.i51 ], [ 0, %PointToPixel.exit ]
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 308
  store i32 %i.eo, ptr %i.ep, align 4
  br label %bb.x

bb.x:                                             ; preds = %PixelToPoint.exit37, %PointToPixel.exit52, %bb.d
  %i.eq = load ptr, ptr %0, align 8               ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 72
  %i.es = load i64, ptr %i.er, align 8
  %i.et = and i64 %i.es, 8192
  %.not29 = icmp eq i64 %i.et, 0
  br i1 %.not29, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.eu = load i8, ptr %i.g, align 1, !range !38, !noundef !39
  %i.ev = trunc nuw i8 %i.eu to i1
  br i1 %i.ev, label %bb.z, label %CommitLibdecorFrame.exit

bb.z:                                             ; preds = %bb.y, %bb.x
  tail call fastcc void @ConfigureWindowGeometry(ptr noundef nonnull %i.eq)
  %i.ew = load ptr, ptr %0, align 8
  %i.ex = getelementptr i8, ptr %i.ew, i64 392
  %.val = load ptr, ptr %i.ex, align 8            ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.val, i64 88
  %i.ez = load i32, ptr %i.ey, align 8
  %i.fa = icmp eq i32 %i.ez, 3
  br i1 %i.fa, label %bb.aa, label %CommitLibdecorFrame.exit

bb.aa:                                            ; preds = %bb.z
  %i.fb = getelementptr inbounds nuw i8, ptr %.val, i64 56 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8
  %.not.i53 = icmp eq ptr %i.fc, null
  br i1 %.not.i53, label %CommitLibdecorFrame.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fd = load ptr, ptr @WAYLAND_libdecor_state_new, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %.val, i64 312
  %i.ff = load i32, ptr %i.fe, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %.val, i64 316
  %i.fh = load i32, ptr %i.fg, align 4
  %i.fi = tail call ptr %i.fd(i32 noundef %i.ff, i32 noundef %i.fh) #15, !inline_history !40 ; 2 uses
  %i.fj = load ptr, ptr @WAYLAND_libdecor_frame_commit, align 8
  %i.fk = load ptr, ptr %i.fb, align 8
  tail call void %i.fj(ptr noundef %i.fk, ptr noundef %i.fi, ptr noundef null) #15, !inline_history !40
  %i.fl = load ptr, ptr @WAYLAND_libdecor_state_free, align 8
  tail call void %i.fl(ptr noundef %i.fi) #15, !inline_history !40
  br label %CommitLibdecorFrame.exit

CommitLibdecorFrame.exit:                         ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.c
  ret void
}

declare double @SDL_ceil_REAL(double noundef) local_unnamed_addr #2

declare i64 @SDL_lround_REAL(double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: nounwind uwtable
define internal void @decoration_frame_configure(ptr noundef %0, ptr noundef %1, ptr noundef initializes((100, 104)) %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 15 uses
  %i.c = alloca i32, align 4                      ; 17 uses
  %i.d = load ptr, ptr %2, align 8                ; 42 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 397 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !range !38, !noundef !39
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 100
  store i32 0, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 5 uses
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.b, label %LibdecorGetMinContentSize.exit

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr @WAYLAND_libdecor_frame_get_min_content_size, align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %LibdecorGetMinContentSize.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 340
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 336
  tail call void %i.l(ptr noundef %0, ptr noundef nonnull %i.n, ptr noundef nonnull %i.m) #15, !inline_history !128
  br label %LibdecorGetMinContentSize.exit

LibdecorGetMinContentSize.exit:                   ; preds = %bb.c, %bb.b, %bb.a
  %i.o = load ptr, ptr @WAYLAND_libdecor_configuration_get_window_state, align 8
  %i.p = call zeroext i1 %i.o(ptr noundef %1, ptr noundef nonnull %i.a) #15
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %LibdecorGetMinContentSize.exit
  %i.q = load i32, ptr %i.a, align 4              ; 2 uses
  %i.r = trunc i32 %i.q to i1
  %i.s = insertelement <4 x i32> poison, i32 %i.q, i64 0
  %i.t = shufflevector <4 x i32> %i.s, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.u = and <4 x i32> %i.t, <i32 2, i32 4, i32 128, i32 120>
  %i.v = icmp ne <4 x i32> %i.u, zeroinitializer  ; 4 uses
  %i.w = extractelement <4 x i1> %i.v, i64 2
  %i.x = zext i1 %i.w to i8
  %i.y = extractelement <4 x i1> %i.v, i64 0
  %i.z = extractelement <4 x i1> %i.v, i64 1
  %i.aa = extractelement <4 x i1> %i.v, i64 3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %LibdecorGetMinContentSize.exit
  %.0212 = phi i1 [ %i.r, %bb.d ], [ false, %LibdecorGetMinContentSize.exit ] ; 2 uses
  %.0211 = phi i1 [ %i.z, %bb.d ], [ false, %LibdecorGetMinContentSize.exit ] ; 4 uses
  %.0210 = phi i1 [ %i.y, %bb.d ], [ false, %LibdecorGetMinContentSize.exit ] ; 3 uses
  %.0209 = phi i1 [ %i.aa, %bb.d ], [ false, %LibdecorGetMinContentSize.exit ] ; 2 uses
  %.0 = phi i8 [ %i.x, %bb.d ], [ 0, %LibdecorGetMinContentSize.exit ] ; 2 uses
  %or.cond = select i1 %.0211, i1 true, i1 %.0210
  %i.ab = select i1 %or.cond, i1 true, i1 %.0209  ; 2 uses
  %i.ac = xor i1 %i.ab, true
  %i.ad = zext i1 %i.ac to i8
  call fastcc void @UpdateWindowFullscreen(ptr noundef %i.d, i1 noundef zeroext %.0211)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  %.pre351 = and i64 %.pre, 64
  %i.ae = icmp eq i64 %.pre351, 0
  br i1 %i.ae, label %.thread375, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %.0212, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = call zeroext i1 @SDL_SendWindowEvent(ptr noundef nonnull %i.d, i32 noundef 523, i32 noundef 0, i32 noundef 0) #15 ; 0 uses
  br label %.thread375

.thread375:                                       ; preds = %bb.e, %bb.g
  %i.ag = xor i1 %.0211, true
  %i.ah = and i1 %.0210, %i.ag
  %i.ai = select i1 %i.ah, i32 522, i32 523
  %i.aj = call zeroext i1 @SDL_SendWindowEvent(ptr noundef nonnull %i.d, i32 noundef %i.ai, i32 noundef 0, i32 noundef 0) #15 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %.thread375
  br i1 %.0211, label %bb.i, label %bb.u

bb.i:                                             ; preds = %bb.h
  %i.ak = load ptr, ptr @WAYLAND_libdecor_configuration_get_content_size, align 8
  %i.al = call zeroext i1 %i.ak(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #15
  br i1 %i.al, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 296
  %i.an = load i32, ptr %i.am, align 8
  store i32 %i.an, ptr %i.b, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 300
  %i.ap = load i32, ptr %i.ao, align 4
  store i32 %i.ap, ptr %i.c, align 4
  br label %bb.cq

bb.k:                                             ; preds = %bb.i
  %i.aq = load i32, ptr %i.b, align 4             ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 296
  store i32 %i.aq, ptr %i.ar, align 8
  %i.as = load i32, ptr %i.c, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 300
  store i32 %i.as, ptr %i.at, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 403
  %i.av = load i8, ptr %i.au, align 1, !range !38, !noundef !39
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.l, label %bb.cq

bb.l:                                             ; preds = %bb.k
  %.not.i259 = icmp eq i32 %i.aq, 0
  br i1 %.not.i259, label %PointToPixel.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = sitofp i32 %i.aq to double              ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = and i64 %i.az, 8192
  %.not.i.i = icmp eq i64 %i.ba, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 392 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  br i1 %.not.i.i, label %bb.n, label %._crit_edge.i.i

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 403
  %i.be = load i8, ptr %i.bd, align 1, !range !38, !noundef !39
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %._crit_edge.i.i, label %GetWindowScale.exit.i

._crit_edge.i.i:                                  ; preds = %bb.n, %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 248
  %i.bh = load double, ptr %i.bg, align 8
  br label %GetWindowScale.exit.i

GetWindowScale.exit.i:                            ; preds = %._crit_edge.i.i, %bb.n
  %i.bi = phi double [ %i.bh, %._crit_edge.i.i ], [ 1.000000e+00, %bb.n ]
  %i.bj = call double @llvm.fmuladd.f64(double %i.ax, double %i.bi, double f0x3EB0C6F7A0B5ED8D)
  %i.bk = call i64 @SDL_lround_REAL(double noundef %i.bj) #15
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = icmp sgt i32 %i.bl, 1
  br i1 %i.bm, label %bb.o, label %PointToPixel.exit

bb.o:                                             ; preds = %GetWindowScale.exit.i
  %i.bn = load i64, ptr %i.ay, align 8
  %i.bo = and i64 %i.bn, 8192
  %.not.i4.i = icmp eq i64 %i.bo, 0
  %i.bp = load ptr, ptr %i.bb, align 8            ; 2 uses
  br i1 %.not.i4.i, label %bb.p, label %._crit_edge.i5.i

bb.p:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 403
  %i.br = load i8, ptr %i.bq, align 1, !range !38, !noundef !39
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %._crit_edge.i5.i, label %GetWindowScale.exit6.i

._crit_edge.i5.i:                                 ; preds = %bb.p, %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 248
  %i.bu = load double, ptr %i.bt, align 8
  br label %GetWindowScale.exit6.i

GetWindowScale.exit6.i:                           ; preds = %._crit_edge.i5.i, %bb.p
  %i.bv = phi double [ %i.bu, %._crit_edge.i5.i ], [ 1.000000e+00, %bb.p ]
  %i.bw = call double @llvm.fmuladd.f64(double %i.ax, double %i.bv, double f0x3EB0C6F7A0B5ED8D)
  %i.bx = call i64 @SDL_lround_REAL(double noundef %i.bw) #15
  %i.by = trunc i64 %i.bx to i32
  br label %PointToPixel.exit

PointToPixel.exit:                                ; preds = %bb.l, %GetWindowScale.exit.i, %GetWindowScale.exit6.i
  %i.bz = phi i32 [ 1, %GetWindowScale.exit.i ], [ %i.by, %GetWindowScale.exit6.i ], [ 0, %bb.l ]
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 304
  store i32 %i.bz, ptr %i.ca, align 8
  %i.cb = load i32, ptr %i.c, align 4             ; 2 uses
  %.not.i260 = icmp eq i32 %i.cb, 0
  br i1 %.not.i260, label %PointToPixel.exit267, label %bb.q

bb.q:                                             ; preds = %PointToPixel.exit
  %i.cc = sitofp i32 %i.cb to double              ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = and i64 %i.ce, 8192
  %.not.i.i261 = icmp eq i64 %i.cf, 0
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 392 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8            ; 2 uses
  br i1 %.not.i.i261, label %bb.r, label %._crit_edge.i.i262

bb.r:                                             ; preds = %bb.q
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 403
  %i.cj = load i8, ptr %i.ci, align 1, !range !38, !noundef !39
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %._crit_edge.i.i262, label %GetWindowScale.exit.i263

._crit_edge.i.i262:                               ; preds = %bb.r, %bb.q
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 248
  %i.cm = load double, ptr %i.cl, align 8
  br label %GetWindowScale.exit.i263

GetWindowScale.exit.i263:                         ; preds = %._crit_edge.i.i262, %bb.r
  %i.cn = phi double [ %i.cm, %._crit_edge.i.i262 ], [ 1.000000e+00, %bb.r ]
  %i.co = call double @llvm.fmuladd.f64(double %i.cc, double %i.cn, double f0x3EB0C6F7A0B5ED8D)
  %i.cp = call i64 @SDL_lround_REAL(double noundef %i.co) #15
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = icmp sgt i32 %i.cq, 1
  br i1 %i.cr, label %bb.s, label %PointToPixel.exit267

bb.s:                                             ; preds = %GetWindowScale.exit.i263
  %i.cs = load i64, ptr %i.cd, align 8
  %i.ct = and i64 %i.cs, 8192
  %.not.i4.i264 = icmp eq i64 %i.ct, 0
  %i.cu = load ptr, ptr %i.cg, align 8            ; 2 uses
  br i1 %.not.i4.i264, label %bb.t, label %._crit_edge.i5.i265

bb.t:                                             ; preds = %bb.s
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 403
  %i.cw = load i8, ptr %i.cv, align 1, !range !38, !noundef !39
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %._crit_edge.i5.i265, label %GetWindowScale.exit6.i266

._crit_edge.i5.i265:                              ; preds = %bb.t, %bb.s
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 248
  %i.cz = load double, ptr %i.cy, align 8
  br label %GetWindowScale.exit6.i266

GetWindowScale.exit6.i266:                        ; preds = %._crit_edge.i5.i265, %bb.t
  %i.da = phi double [ %i.cz, %._crit_edge.i5.i265 ], [ 1.000000e+00, %bb.t ]
  %i.db = call double @llvm.fmuladd.f64(double %i.cc, double %i.da, double f0x3EB0C6F7A0B5ED8D)
  %i.dc = call i64 @SDL_lround_REAL(double noundef %i.db) #15
  %i.dd = trunc i64 %i.dc to i32
  br label %PointToPixel.exit267

PointToPixel.exit267:                             ; preds = %PointToPixel.exit, %GetWindowScale.exit.i263, %GetWindowScale.exit6.i266
  %i.de = phi i32 [ 1, %GetWindowScale.exit.i263 ], [ %i.dd, %GetWindowScale.exit6.i266 ], [ 0, %PointToPixel.exit ]
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 308
  store i32 %i.de, ptr %i.df, align 4
  br label %bb.cq

bb.u:                                             ; preds = %bb.h
  %i.dg = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 17 uses
  %i.dh = load i64, ptr %i.dg, align 8            ; 2 uses
  %i.di = and i64 %i.dh, 32
  %.not238 = icmp eq i64 %i.di, 0
  br i1 %.not238, label %bb.v, label %bb.ah

bb.v:                                             ; preds = %bb.u
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 403
  %i.dk = load i8, ptr %i.dj, align 1, !range !38, !noundef !39
  %i.dl = trunc nuw i8 %i.dk to i1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.d, i64 132 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4            ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 296 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.d, i64 136 ; 3 uses
  br i1 %i.dl, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i32 %i.dn, ptr %i.do, align 8
  store i32 %i.dn, ptr %i.b, align 4
  %i.dq = load i32, ptr %i.dp, align 8
  br label %PixelToPoint.exit282

bb.x:                                             ; preds = %bb.v
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 304
  store i32 %i.dn, ptr %i.dr, align 8
  %i.ds = load i32, ptr %i.dp, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 308
  store i32 %i.ds, ptr %i.dt, align 4
  %i.du = load i32, ptr %i.dm, align 4            ; 2 uses
  %.not.i268 = icmp eq i32 %i.du, 0
  br i1 %.not.i268, label %PixelToPoint.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dv = sitofp i32 %i.du to double              ; 2 uses
  %i.dw = load i64, ptr %i.dg, align 8
  %i.dx = and i64 %i.dw, 8192
  %.not.i.i269 = icmp eq i64 %i.dx, 0
  %i.dy = getelementptr inbounds nuw i8, ptr %i.d, i64 392 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8            ; 2 uses
  br i1 %.not.i.i269, label %bb.z, label %._crit_edge.i.i270

bb.z:                                             ; preds = %bb.y
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 403
  %i.eb = load i8, ptr %i.ea, align 1, !range !38, !noundef !39
  %i.ec = trunc nuw i8 %i.eb to i1
end_hunk_0
