Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_dynaudnorm?download=true
inline.NumInlined: 92
inline.NumDeleted: 34
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@uninit:bb.a

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 5 uses
  %i.an = load ptr, ptr %i.j, align 8, !tbaa !40  ; 2 uses
  %.not = icmp eq ptr %i.an, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !41
  tail call fastcc void @cqueue_free(ptr noundef %i.ap)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.aq = load ptr, ptr %i.k, align 8, !tbaa !42  ; 2 uses
  %.not34 = icmp eq ptr %i.aq, null
  br i1 %.not34, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !41
  tail call fastcc void @cqueue_free(ptr noundef %i.as)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.at = load ptr, ptr %i.l, align 8, !tbaa !43  ; 2 uses
  %.not35 = icmp eq ptr %i.at, null
  br i1 %.not35, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !41
  tail call fastcc void @cqueue_free(ptr noundef %i.av)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aw = load ptr, ptr %i.m, align 8, !tbaa !44  ; 2 uses
  %.not36 = icmp eq ptr %i.aw, null
  br i1 %.not36, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !41
  tail call fastcc void @cqueue_free(ptr noundef %i.ay)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.az = load i32, ptr %i.g, align 8, !tbaa !32
  %i.ba = sext i32 %i.az to i64
  %i.bb = icmp slt i64 %indvars.iv.next, %i.ba
  br i1 %i.bb, label %bb.b, label %._crit_edge, !llvm.loop !45
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @process_command(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 2440 ; 6 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !20
  %i.h = tail call i32 @ff_filter_process_command(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #14 ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %i.f, align 8, !tbaa !20   ; 5 uses
  %i.k = or i32 %i.j, 1                           ; 4 uses
  store i32 %i.k, ptr %i.f, align 8, !tbaa !20
  %.not = icmp eq i32 %i.g, %i.k
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = sitofp nsz i32 %i.k to double
  %i.m = fmul nnan nsz double %i.l, 5.000000e-01
  %i.n = fadd nsz double %i.m, -1.000000e+00
  %i.o = fdiv nsz double %i.n, 3.000000e+00
  %i.p = fadd nsz double %i.o, f0x3FD5555555555555 ; 3 uses
  %.neg4041.i = lshr i32 %i.j, 1                  ; 3 uses
  %i.q = fmul nnan nsz double %i.p, f0x40040D931FF62705
  %i.r = fdiv nnan nsz double 1.000000e+00, %i.q  ; 3 uses
  %i.s = fmul nnan nsz double %i.p, 2.000000e+00
  %i.t = fmul nsz double %i.p, %i.s               ; 3 uses
  %i.u = icmp sgt i32 %i.j, -1
  br i1 %i.u, label %.lr.ph.i, label %init_gaussian_filter.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 2536
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !49   ; 5 uses
  %wide.trip.count.i = zext nneg i32 %i.k to i64  ; 3 uses
  %i.x = icmp ult i32 %i.j, 2
  br i1 %i.x, label %.lr.ph31.i.epilog-lcssa, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %i.y = add nsw i64 %wide.trip.count.i, -3
  br label %bb.d

.lr.ph31.i.epilog-lcssa:                          ; preds = %.lr.ph.i, %bb.d
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %bb.d ] ; 2 uses
  %.02528.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.bi, %bb.d ]
  %i.z = trunc nuw nsw i64 %indvars.iv.i.epil.init to i32
  %i.aa = sub i32 %i.z, %.neg4041.i               ; 2 uses
  %i.ab = mul i32 %i.aa, %i.aa
  %i.ac = sub i32 0, %i.ab
  %i.ad = sitofp nsz i32 %i.ac to double
  %i.ae = fdiv nsz double %i.ad, %i.t
  %i.af = tail call nsz double @llvm.exp.f64(double %i.ae)
  %i.ag = fmul nsz double %i.r, %i.af             ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.i.epil.init
  store double %i.ag, ptr %i.ah, align 8, !tbaa !50
  %i.ai = fadd nsz double %.02528.i.epil.init, %i.ag
  %i.aj = fdiv nsz double 1.000000e+00, %i.ai     ; 2 uses
  %min.iters.check = icmp ult i32 %i.j, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph31.i.epilog-lcssa
  %indvars.iv34.i.ph = phi i64 [ 0, %.lr.ph31.i.epilog-lcssa ], [ %n.vec, %vector.body ]
  br label %scalar.ph

vector.ph:                                        ; preds = %.lr.ph31.i.epilog-lcssa
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 2 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.aj, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ak, align 8, !tbaa !50
  %wide.load95 = load <2 x double>, ptr %i.al, align 8, !tbaa !50
  %i.am = fmul nsz <2 x double> %broadcast.splat, %wide.load
  %i.an = fmul nsz <2 x double> %broadcast.splat, %wide.load95
  store <2 x double> %i.am, ptr %i.ak, align 8, !tbaa !50
  store <2 x double> %i.an, ptr %i.al, align 8, !tbaa !50
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %scalar.ph.preheader, label %vector.body, !llvm.loop !51

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.d ] ; 4 uses
  %.02528.i = phi double [ 0.000000e+00, %.lr.ph.i.new ], [ %i.bi, %bb.d ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.d ] ; 2 uses
  %i.ap = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.aq = sub i32 %i.ap, %.neg4041.i              ; 2 uses
  %i.ar = mul i32 %i.aq, %i.aq
  %i.as = sub i32 0, %i.ar
  %i.at = sitofp nsz i32 %i.as to double
  %i.au = fdiv nsz double %i.at, %i.t
  %i.av = tail call nsz double @llvm.exp.f64(double %i.au)
  %i.aw = fmul nsz double %i.r, %i.av             ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.i
  store double %i.aw, ptr %i.ax, align 8, !tbaa !50
  %i.ay = fadd nsz double %.02528.i, %i.aw
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.az = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.ba = sub i32 %i.az, %.neg4041.i              ; 2 uses
  %i.bb = mul i32 %i.ba, %i.ba
  %i.bc = sub i32 0, %i.bb
  %i.bd = sitofp nsz i32 %i.bc to double
  %i.be = fdiv nsz double %i.bd, %i.t
  %i.bf = tail call nsz double @llvm.exp.f64(double %i.be)
  %i.bg = fmul nsz double %i.r, %i.bf             ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next.i
  store double %i.bg, ptr %i.bh, align 8, !tbaa !50
  %i.bi = fadd nsz double %i.ay, %i.bg            ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %i.y
  br i1 %niter.ncmp.1, label %.lr.ph31.i.epilog-lcssa, label %bb.d, !llvm.loop !54

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv34.i = phi i64 [ %indvars.iv.next35.i, %scalar.ph ], [ %indvars.iv34.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv34.i ; 2 uses
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !50
  %i.bl = fmul nsz double %i.aj, %i.bk
  store double %i.bl, ptr %i.bj, align 8, !tbaa !50
  %indvars.iv.next35.i = add nuw nsw i64 %indvars.iv34.i, 1 ; 2 uses
  %exitcond38.not.i = icmp eq i64 %indvars.iv.next35.i, %wide.trip.count.i
  br i1 %exitcond38.not.i, label %init_gaussian_filter.exit, label %scalar.ph, !llvm.loop !55

init_gaussian_filter.exit:                        ; preds = %scalar.ph, %bb.c
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 2544 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !32
  %i.bo = icmp sgt i32 %i.bn, 0
  br i1 %i.bo, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %init_gaussian_filter.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 2600
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 2608
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 2624
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %cqueue_resize.exit74
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %cqueue_resize.exit74 ] ; 4 uses
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !40
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !41 ; 6 uses
  %i.bv = load i32, ptr %i.f, align 8, !tbaa !20  ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 4 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !56 ; 4 uses
  %i.by = icmp sgt i32 %i.bv, %i.bx
  br i1 %i.by, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bz = sub nsw i32 %i.bv, %i.bx                ; 2 uses
  %i.ca = lshr i32 %i.bz, 1                       ; 3 uses
  %i.cb = load ptr, ptr %i.bu, align 8, !tbaa !58 ; 2 uses
  %i.cc = zext nneg i32 %i.ca to i64              ; 5 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cc
  %i.ce = sext i32 %i.bx to i64
  %i.cf = shl nsw i64 %i.ce, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.cd, ptr align 8 %i.cb, i64 %i.cf, i1 false)
  %.not.i = icmp eq i32 %i.ca, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph29.i

.lr.ph29.i:                                       ; preds = %bb.f
  %i.cg = load ptr, ptr %i.bu, align 8, !tbaa !58 ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cc
  %.pre.i = load double, ptr %i.ch, align 8, !tbaa !50 ; 2 uses
  %min.iters.check121 = icmp ult i32 %i.bz, 8
  br i1 %min.iters.check121, label %scalar.ph120.preheader, label %vector.ph122

vector.ph122:                                     ; preds = %.lr.ph29.i
  %n.vec123 = and i64 %i.cc, 2147483644           ; 3 uses
  %broadcast.splatinsert124 = insertelement <2 x double> poison, double %.pre.i, i64 0
  %broadcast.splat125 = shufflevector <2 x double> %broadcast.splatinsert124, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body126

vector.body126:                                   ; preds = %vector.body126, %vector.ph122
  %index127 = phi i64 [ 0, %vector.ph122 ], [ %index.next128, %vector.body126 ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %index127 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store <2 x double> %broadcast.splat125, ptr %i.ci, align 8, !tbaa !50
  store <2 x double> %broadcast.splat125, ptr %i.cj, align 8, !tbaa !50
  %index.next128 = add nuw i64 %index127, 4       ; 2 uses
  %i.ck = icmp eq i64 %index.next128, %n.vec123
  br i1 %i.ck, label %middle.block129, label %vector.body126, !llvm.loop !59

middle.block129:                                  ; preds = %vector.body126
  %cmp.n130 = icmp eq i64 %n.vec123, %i.cc
  br i1 %cmp.n130, label %._crit_edge.i, label %scalar.ph120.preheader

scalar.ph120.preheader:                           ; preds = %.lr.ph29.i, %middle.block129
  %indvars.iv.i48.ph = phi i64 [ 0, %.lr.ph29.i ], [ %n.vec123, %middle.block129 ]
  br label %scalar.ph120

._crit_edge.i:                                    ; preds = %scalar.ph120, %middle.block129, %bb.f
  %i.cl = xor i32 %i.ca, -1
  %i.cm = add i32 %i.bv, %i.cl
  store i32 %i.cm, ptr %i.bw, align 8, !tbaa !56
  br label %cqueue_resize.exit

scalar.ph120:                                     ; preds = %scalar.ph120.preheader, %scalar.ph120
  %indvars.iv.i48 = phi i64 [ %indvars.iv.next.i49, %scalar.ph120 ], [ %indvars.iv.i48.ph, %scalar.ph120.preheader ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.i48
  store double %.pre.i, ptr %i.cn, align 8, !tbaa !50
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i48, 1 ; 2 uses
  %exitcond.not.i50 = icmp eq i64 %indvars.iv.next.i49, %i.cc
  br i1 %exitcond.not.i50, label %._crit_edge.i, label %scalar.ph120, !llvm.loop !60

bb.g:                                             ; preds = %bb.e
  %i.co = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !61
  %reass.sub.i = sub i32 %i.cp, %i.bv
  %i.cq = add i32 %reass.sub.i, 1                 ; 2 uses
  %i.cr = icmp sgt i32 %i.cq, 1
  br i1 %i.cr, label %.lr.ph.preheader.i.a, label %cqueue_resize.exit

.lr.ph.preheader.i.a:                             ; preds = %bb.g
  %6 = lshr i32 %i.cq, 1
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47, %.lr.ph.preheader.i.a
  %i.cs = phi i32 [ %i.da, %.lr.ph.i47 ], [ %i.bx, %.lr.ph.preheader.i.a ]
  %.027.i = phi i32 [ %i.ct, %.lr.ph.i47 ], [ %6, %.lr.ph.preheader.i.a ] ; 2 uses
  %i.ct = add nsw i32 %.027.i, -1
  %i.cu = load ptr, ptr %i.bu, align 8, !tbaa !58 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = add nsw i32 %i.cs, -1
  %i.cx = sext i32 %i.cw to i64
  %i.cy = shl nsw i64 %i.cx, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.cu, ptr nonnull align 8 %i.cv, i64 %i.cy, i1 false)
  %i.cz = load i32, ptr %i.bw, align 8, !tbaa !56
  %i.da = add nsw i32 %i.cz, -1                   ; 2 uses
  store i32 %i.da, ptr %i.bw, align 8, !tbaa !56
  %7 = icmp samesign ugt i32 %.027.i, 1
  br i1 %7, label %.lr.ph.i47, label %cqueue_resize.exit, !llvm.loop !62

cqueue_resize.exit:                               ; preds = %.lr.ph.i47, %._crit_edge.i, %bb.g
  %i.db = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i32 %i.bv, ptr %i.db, align 8, !tbaa !61
  %i.dc = load ptr, ptr %i.bq, align 8, !tbaa !42
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !41 ; 6 uses
  %i.df = load i32, ptr %i.f, align 8, !tbaa !20  ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 16 ; 4 uses
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !56 ; 4 uses
  %i.di = icmp sgt i32 %i.df, %i.dh
  br i1 %i.di, label %bb.h, label %bb.i

bb.h:                                             ; preds = %cqueue_resize.exit
  %i.dj = sub nsw i32 %i.df, %i.dh                ; 2 uses
  %i.dk = lshr i32 %i.dj, 1                       ; 3 uses
  %i.dl = load ptr, ptr %i.de, align 8, !tbaa !58 ; 2 uses
  %i.dm = zext nneg i32 %i.dk to i64              ; 5 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dm
  %i.do = sext i32 %i.dh to i64
  %i.dp = shl nsw i64 %i.do, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.dn, ptr align 8 %i.dl, i64 %i.dp, i1 false)
  %.not.i55 = icmp eq i32 %i.dk, 0
  br i1 %.not.i55, label %._crit_edge.i61, label %.lr.ph29.i56

.lr.ph29.i56:                                     ; preds = %bb.h
  %i.dq = load ptr, ptr %i.de, align 8, !tbaa !58 ; 3 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.dm
  %.pre.i57 = load double, ptr %i.dr, align 8, !tbaa !50 ; 2 uses
  %min.iters.check109 = icmp ult i32 %i.dj, 8
  br i1 %min.iters.check109, label %scalar.ph108.preheader, label %vector.ph110

vector.ph110:                                     ; preds = %.lr.ph29.i56
  %n.vec111 = and i64 %i.dm, 2147483644           ; 3 uses
  %broadcast.splatinsert112 = insertelement <2 x double> poison, double %.pre.i57, i64 0
  %broadcast.splat113 = shufflevector <2 x double> %broadcast.splatinsert112, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body114

vector.body114:                                   ; preds = %vector.body114, %vector.ph110
  %index115 = phi i64 [ 0, %vector.ph110 ], [ %index.next116, %vector.body114 ] ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %index115 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store <2 x double> %broadcast.splat113, ptr %i.ds, align 8, !tbaa !50
  store <2 x double> %broadcast.splat113, ptr %i.dt, align 8, !tbaa !50
  %index.next116 = add nuw i64 %index115, 4       ; 2 uses
  %i.du = icmp eq i64 %index.next116, %n.vec111
  br i1 %i.du, label %middle.block117, label %vector.body114, !llvm.loop !63

middle.block117:                                  ; preds = %vector.body114
  %cmp.n118 = icmp eq i64 %n.vec111, %i.dm
  br i1 %cmp.n118, label %._crit_edge.i61, label %scalar.ph108.preheader

scalar.ph108.preheader:                           ; preds = %.lr.ph29.i56, %middle.block117
  %indvars.iv.i58.ph = phi i64 [ 0, %.lr.ph29.i56 ], [ %n.vec111, %middle.block117 ]
  br label %scalar.ph108

._crit_edge.i61:                                  ; preds = %scalar.ph108, %middle.block117, %bb.h
  %i.dv = xor i32 %i.dk, -1
  %i.dw = add i32 %i.df, %i.dv
  store i32 %i.dw, ptr %i.dg, align 8, !tbaa !56
  br label %cqueue_resize.exit62

scalar.ph108:                                     ; preds = %scalar.ph108.preheader, %scalar.ph108
  %indvars.iv.i58 = phi i64 [ %indvars.iv.next.i59, %scalar.ph108 ], [ %indvars.iv.i58.ph, %scalar.ph108.preheader ] ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv.i58
  store double %.pre.i57, ptr %i.dx, align 8, !tbaa !50
  %indvars.iv.next.i59 = add nuw nsw i64 %indvars.iv.i58, 1 ; 2 uses
  %exitcond.not.i60 = icmp eq i64 %indvars.iv.next.i59, %i.dm
  br i1 %exitcond.not.i60, label %._crit_edge.i61, label %scalar.ph108, !llvm.loop !64

bb.i:                                             ; preds = %cqueue_resize.exit
  %i.dy = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !61
  %reass.sub.i51 = sub i32 %i.dz, %i.df
  %i.ea = add i32 %reass.sub.i51, 1               ; 2 uses
  %i.eb = icmp sgt i32 %i.ea, 1
  br i1 %i.eb, label %.lr.ph.preheader.i52.a, label %cqueue_resize.exit62

.lr.ph.preheader.i52.a:                           ; preds = %bb.i
  %8 = lshr i32 %i.ea, 1
  br label %.lr.ph.i53

.lr.ph.i53:                                       ; preds = %.lr.ph.i53, %.lr.ph.preheader.i52.a
  %i.ec = phi i32 [ %i.ek, %.lr.ph.i53 ], [ %i.dh, %.lr.ph.preheader.i52.a ]
  %.027.i54 = phi i32 [ %i.ed, %.lr.ph.i53 ], [ %8, %.lr.ph.preheader.i52.a ] ; 2 uses
  %i.ed = add nsw i32 %.027.i54, -1
  %i.ee = load ptr, ptr %i.de, align 8, !tbaa !58 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = add nsw i32 %i.ec, -1
  %i.eh = sext i32 %i.eg to i64
  %i.ei = shl nsw i64 %i.eh, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ee, ptr nonnull align 8 %i.ef, i64 %i.ei, i1 false)
  %i.ej = load i32, ptr %i.dg, align 8, !tbaa !56
  %i.ek = add nsw i32 %i.ej, -1                   ; 2 uses
  store i32 %i.ek, ptr %i.dg, align 8, !tbaa !56
  %9 = icmp samesign ugt i32 %.027.i54, 1
  br i1 %9, label %.lr.ph.i53, label %cqueue_resize.exit62, !llvm.loop !62

cqueue_resize.exit62:                             ; preds = %.lr.ph.i53, %._crit_edge.i61, %bb.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store i32 %i.df, ptr %i.el, align 8, !tbaa !61
  %i.em = load ptr, ptr %i.br, align 8, !tbaa !44
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !41 ; 6 uses
  %i.ep = load i32, ptr %i.f, align 8, !tbaa !20  ; 5 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 16 ; 4 uses
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !56 ; 4 uses
  %i.es = icmp sgt i32 %i.ep, %i.er
  br i1 %i.es, label %bb.j, label %bb.k

bb.j:                                             ; preds = %cqueue_resize.exit62
  %i.et = sub nsw i32 %i.ep, %i.er                ; 2 uses
  %i.eu = lshr i32 %i.et, 1                       ; 3 uses
  %i.ev = load ptr, ptr %i.eo, align 8, !tbaa !58 ; 2 uses
  %i.ew = zext nneg i32 %i.eu to i64              ; 5 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.ew
  %i.ey = sext i32 %i.er to i64
  %i.ez = shl nsw i64 %i.ey, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ex, ptr align 8 %i.ev, i64 %i.ez, i1 false)
  %.not.i67 = icmp eq i32 %i.eu, 0
  br i1 %.not.i67, label %._crit_edge.i73, label %.lr.ph29.i68

.lr.ph29.i68:                                     ; preds = %bb.j
  %i.fa = load ptr, ptr %i.eo, align 8, !tbaa !58 ; 3 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.ew
  %.pre.i69 = load double, ptr %i.fb, align 8, !tbaa !50 ; 2 uses
  %min.iters.check97 = icmp ult i32 %i.et, 8
  br i1 %min.iters.check97, label %scalar.ph96.preheader, label %vector.ph98

vector.ph98:                                      ; preds = %.lr.ph29.i68
  %n.vec99 = and i64 %i.ew, 2147483644            ; 3 uses
  %broadcast.splatinsert100 = insertelement <2 x double> poison, double %.pre.i69, i64 0
  %broadcast.splat101 = shufflevector <2 x double> %broadcast.splatinsert100, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body102

vector.body102:                                   ; preds = %vector.body102, %vector.ph98
  %index103 = phi i64 [ 0, %vector.ph98 ], [ %index.next104, %vector.body102 ] ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %index103 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store <2 x double> %broadcast.splat101, ptr %i.fc, align 8, !tbaa !50
  store <2 x double> %broadcast.splat101, ptr %i.fd, align 8, !tbaa !50
  %index.next104 = add nuw i64 %index103, 4       ; 2 uses
  %i.fe = icmp eq i64 %index.next104, %n.vec99
  br i1 %i.fe, label %middle.block105, label %vector.body102, !llvm.loop !65

middle.block105:                                  ; preds = %vector.body102
  %cmp.n106 = icmp eq i64 %n.vec99, %i.ew
  br i1 %cmp.n106, label %._crit_edge.i73, label %scalar.ph96.preheader

scalar.ph96.preheader:                            ; preds = %.lr.ph29.i68, %middle.block105
  %indvars.iv.i70.ph = phi i64 [ 0, %.lr.ph29.i68 ], [ %n.vec99, %middle.block105 ]
  br label %scalar.ph96

._crit_edge.i73:                                  ; preds = %scalar.ph96, %middle.block105, %bb.j
  %i.ff = xor i32 %i.eu, -1
  %i.fg = add i32 %i.ep, %i.ff
  store i32 %i.fg, ptr %i.eq, align 8, !tbaa !56
  br label %cqueue_resize.exit74

scalar.ph96:                                      ; preds = %scalar.ph96.preheader, %scalar.ph96
  %indvars.iv.i70 = phi i64 [ %indvars.iv.next.i71, %scalar.ph96 ], [ %indvars.iv.i70.ph, %scalar.ph96.preheader ] ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv.i70
  store double %.pre.i69, ptr %i.fh, align 8, !tbaa !50
  %indvars.iv.next.i71 = add nuw nsw i64 %indvars.iv.i70, 1 ; 2 uses
  %exitcond.not.i72 = icmp eq i64 %indvars.iv.next.i71, %i.ew
  br i1 %exitcond.not.i72, label %._crit_edge.i73, label %scalar.ph96, !llvm.loop !66

bb.k:                                             ; preds = %cqueue_resize.exit62
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !61
  %reass.sub.i63 = sub i32 %i.fj, %i.ep
  %i.fk = add i32 %reass.sub.i63, 1               ; 2 uses
  %i.fl = icmp sgt i32 %i.fk, 1
  br i1 %i.fl, label %.lr.ph.preheader.i64.a, label %cqueue_resize.exit74

.lr.ph.preheader.i64.a:                           ; preds = %bb.k
  %10 = lshr i32 %i.fk, 1
  br label %.lr.ph.i65

.lr.ph.i65:                                       ; preds = %.lr.ph.i65, %.lr.ph.preheader.i64.a
  %i.fm = phi i32 [ %i.fu, %.lr.ph.i65 ], [ %i.er, %.lr.ph.preheader.i64.a ]
  %.027.i66 = phi i32 [ %i.fn, %.lr.ph.i65 ], [ %10, %.lr.ph.preheader.i64.a ] ; 2 uses
  %i.fn = add nsw i32 %.027.i66, -1
  %i.fo = load ptr, ptr %i.eo, align 8, !tbaa !58 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = add nsw i32 %i.fm, -1
  %i.fr = sext i32 %i.fq to i64
  %i.fs = shl nsw i64 %i.fr, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.fo, ptr nonnull align 8 %i.fp, i64 %i.fs, i1 false)
  %i.ft = load i32, ptr %i.eq, align 8, !tbaa !56
  %i.fu = add nsw i32 %i.ft, -1                   ; 2 uses
  store i32 %i.fu, ptr %i.eq, align 8, !tbaa !56
  %11 = icmp samesign ugt i32 %.027.i66, 1
  br i1 %11, label %.lr.ph.i65, label %cqueue_resize.exit74, !llvm.loop !62

cqueue_resize.exit74:                             ; preds = %.lr.ph.i65, %._crit_edge.i73, %bb.k
  %i.fv = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store i32 %i.ep, ptr %i.fv, align 8, !tbaa !61
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fw = load i32, ptr %i.bm, align 8, !tbaa !32
  %i.fx = sext i32 %i.fw to i64
  %i.fy = icmp slt i64 %indvars.iv.next, %i.fx
  br i1 %i.fy, label %bb.e, label %.loopexit, !llvm.loop !67

.loopexit:                                        ; preds = %cqueue_resize.exit74, %init_gaussian_filter.exit, %bb.b
  %i.fz = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !68
  %i.gb = getelementptr inbounds nuw i8, ptr %i.b, i64 2436
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !76
  %i.gd = sitofp nsz i32 %i.ga to double
  %i.ge = sitofp nsz i32 %i.gc to double
  %i.gf = fdiv nnan nsz double %i.ge, 1.000000e+03
  %i.gg = fmul nsz double %i.gf, %i.gd
  %i.gh = tail call i64 @llvm.lrint.i64.f64(double %i.gg)
  %i.gi = trunc i64 %i.gh to i32                  ; 2 uses
  %i.gj = srem i32 %i.gi, 2
  %i.gk = add nsw i32 %i.gj, %i.gi                ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.b, i64 2432
  store i32 %i.gk, ptr %i.gl, align 8, !tbaa !77
  %i.gm = sitofp nsz i32 %i.gk to double
  %i.gn = getelementptr inbounds nuw i8, ptr %i.b, i64 2456
  %i.go = load double, ptr %i.gn, align 8, !tbaa !78
  %i.gp = fsub nsz double 1.000000e+00, %i.go
  %i.gq = fmul nsz double %i.gp, %i.gm
  %i.gr = tail call i64 @llvm.lrint.i64.f64(double %i.gq)
  %spec.select75 = tail call i64 @llvm.smax.i64(i64 %i.gr, i64 1)
  %spec.select = trunc i64 %spec.select75 to i32
  %i.gs = getelementptr inbounds nuw i8, ptr %i.b, i64 2548
  store i32 %spec.select, ptr %i.gs, align 4, !tbaa !79
  %i.gt = getelementptr inbounds nuw i8, ptr %i.b, i64 2464
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !80 ; 2 uses
  %.not46 = icmp eq ptr %i.gu, null
  br i1 %.not46, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.loopexit
  %i.gv = getelementptr inbounds nuw i8, ptr %i.b, i64 2648
  %i.gw = tail call i32 @av_expr_parse(ptr noundef nonnull %i.gv, ptr noundef nonnull %i.gu, ptr noundef nonnull @var_names, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %0) #14 ; 2 uses
  %i.gx = icmp slt i32 %i.gw, 0
  br i1 %i.gx, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %.loopexit
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.a, %bb.m
  %.041 = phi i32 [ 0, %bb.m ], [ %i.h, %bb.a ], [ %i.gw, %bb.l ]
  ret i32 %.041
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 2) i32 @activate(ptr noundef %0) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !47   ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !81
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !47   ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !9    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 2568 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.n = tail call i32 @av_channel_layout_copy(ptr noundef nonnull %i.l, ptr noundef nonnull %i.m) #14 ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %flush.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 2560
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !82   ; 2 uses
  %i.r = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.q, ptr noundef nonnull dereferenceable(4) @.str.41) #15
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = tail call i32 @av_channel_layout_from_string(ptr noundef nonnull %i.l, ptr noundef nonnull %i.q) #14 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.t = tail call i32 @ff_outlink_get_status(ptr noundef %i.i) #14 ; 2 uses
  %.not48 = icmp eq i32 %i.t, 0
  br i1 %.not48, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @ff_inlink_set_status(ptr noundef nonnull %i.f, i32 noundef %i.t) #14
  br label %flush.exit

.critedge:                                        ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 2552 ; 4 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !83
  %.not49 = icmp eq i32 %i.v, 0
  br i1 %.not49, label %bb.f, label %.thread61

bb.f:                                             ; preds = %.critedge
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 2548 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !79   ; 2 uses
  %i.y = call i32 @ff_inlink_consume_samples(ptr noundef nonnull %i.f, i32 noundef %i.x, i32 noundef %i.x, ptr noundef nonnull %i.a) #14 ; 3 uses
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %flush.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not50 = icmp eq i32 %i.y, 0
  br i1 %.not50, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.ab = getelementptr i8, ptr %i.f, i64 16
  %.val = load ptr, ptr %i.ab, align 8, !tbaa !84
  %i.ac = call fastcc i32 @filter_frame(ptr %.val, ptr noundef %i.aa) ; 2 uses
  %i.ad = icmp slt i32 %i.ac, 1
  br i1 %i.ad, label %flush.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ae = load i32, ptr %i.w, align 4, !tbaa !79
  %i.af = call i32 @ff_inlink_check_available_samples(ptr noundef nonnull %i.f, i32 noundef %i.ae) #14
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @ff_filter_set_ready(ptr noundef nonnull %0, i32 noundef 10) #14
  br label %flush.exit

bb.k:                                             ; preds = %bb.i
  %.pr = load i32, ptr %i.u, align 8, !tbaa !83
  %.not51 = icmp eq i32 %.pr, 0
  br i1 %.not51, label %bb.l, label %.thread61

bb.l:                                             ; preds = %bb.k
  %i.ah = call i32 @ff_inlink_acknowledge_status(ptr noundef nonnull %i.f, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #14
  %i.ai = icmp ne i32 %i.ah, 0
  %i.aj = load i32, ptr %i.b, align 4
  %i.ak = icmp eq i32 %i.aj, -541478725
  %or.cond = select i1 %i.ai, i1 %i.ak, i1 false
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 1, ptr %i.u, align 8, !tbaa !83
  br label %.thread61

bb.n:                                             ; preds = %bb.l
  %.pr60 = load i32, ptr %i.u, align 8, !tbaa !83
  %.not52 = icmp eq i32 %.pr60, 0
  br i1 %.not52, label %.thread65, label %.thread61

.thread61:                                        ; preds = %.critedge, %bb.k, %bb.m, %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 2426
  %i.am = load i16, ptr %i.al, align 2, !tbaa !85
  %.not53 = icmp eq i16 %i.am, 0
  br i1 %.not53, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.thread61
  %i.an = load ptr, ptr %i.i, align 8, !tbaa !86  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !46
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !47
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !9  ; 14 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 2616
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 2552 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !83 ; 2 uses
  %.not20.i = icmp eq i32 %i.av, 0
  br i1 %.not20.i, label %.critedge.i, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 2544 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 2600
  br label %bb.p

.loopexit.loopexit.i:                             ; preds = %.lr.ph.i
  %.pre.i = load i32, ptr %i.au, align 8, !tbaa !83
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.i, %.loopexit.loopexit.i
  %i.ay = phi i32 [ %.pre.i, %.loopexit.loopexit.i ], [ %i.az, %.preheader.i ] ; 2 uses
  %.not.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i, label %.critedge.i, label %bb.p, !llvm.loop !87

bb.p:                                             ; preds = %.loopexit.i, %.lr.ph21.i
  %i.az = phi i32 [ %i.av, %.lr.ph21.i ], [ %i.ay, %.loopexit.i ]
  %i.ba = load ptr, ptr %i.at, align 8, !tbaa !43
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !41
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  %.val.i = load i32, ptr %i.bc, align 8, !tbaa !56
  %i.bd = icmp sgt i32 %.val.i, 0
  br i1 %i.bd, label %.critedge.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.p
  %i.be = load i32, ptr %i.aw, align 8, !tbaa !32
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph.i, label %.loopexit.i

end_hunk_0
