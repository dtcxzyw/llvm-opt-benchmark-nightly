inline.NumInlined: 20
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@uninit:bb.a
  %i.al = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.e, %bb.b ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.an = load double, ptr %i.am, align 8, !tbaa !44
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 212
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !45 ; 2 uses
  %i.aq = mul i32 %i.ap, %i.ap
  %i.ar = uitofp nsz i32 %i.aq to double          ; 2 uses
  %i.as = uitofp nsz i64 %i.al to double
  %i.at = fdiv nsz double %i.an, %i.as
  %i.au = fdiv nsz double %i.ar, %i.at
  %i.av = call nsz double @llvm.log10.f64(double %i.au)
  %i.aw = fmul nsz double %i.av, 1.000000e+01
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.ay = load <2 x double>, ptr %i.ax, align 8, !tbaa !20
  %i.az = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.ba = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bb = fdiv nsz <2 x double> %i.ba, %i.ay      ; 2 uses
  %i.bc = extractelement <2 x double> %i.bb, i64 1
  %i.bd = call nsz double @llvm.log10.f64(double %i.bc)
  %i.be = fmul nsz double %i.bd, 1.000000e+01
  %i.bf = extractelement <2 x double> %i.bb, i64 0
  %i.bg = call nsz double @llvm.log10.f64(double %i.bf)
  %i.bh = fmul nsz double %i.bg, 1.000000e+01
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.42, ptr noundef nonnull %i.a, double noundef %i.aw, double noundef %i.be, double noundef %i.bh) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @ff_framesync_uninit(ptr noundef nonnull %i.bi) #12
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 304 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 232 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !46
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %.lr.ph44, label %.critedge

.lr.ph44:                                         ; preds = %bb.f, %bb.g
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %i.bn = load ptr, ptr %i.bj, align 8, !tbaa !47 ; 2 uses
  %.not37 = icmp eq ptr %i.bn, null
  br i1 %.not37, label %.critedge, label %bb.g

.critedge:                                        ; preds = %.lr.ph44, %bb.g, %bb.f
  call void @av_freep(ptr noundef nonnull %i.bj) #12
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !35 ; 3 uses
  %.not38 = icmp eq ptr %i.bp, null
  %i.bq = load ptr, ptr @stdout, align 8
  %.not39 = icmp eq ptr %i.bp, %i.bq
  %or.cond = select i1 %.not38, i1 true, i1 %.not39
  br i1 %or.cond, label %bb.i, label %bb.h

bb.g:                                             ; preds = %.lr.ph44
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv47
  call void @av_freep(ptr noundef nonnull %i.br) #12
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 2 uses
  %i.bs = load i32, ptr %i.bk, align 8, !tbaa !46
  %i.bt = sext i32 %i.bs to i64
  %i.bu = icmp slt i64 %indvars.iv.next48, %i.bt
  br i1 %i.bu, label %.lr.ph44, label %.critedge, !llvm.loop !48

bb.h:                                             ; preds = %.critedge
  %i.bv = call i32 @fclose(ptr noundef nonnull %i.bp) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.critedge
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @activate(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = tail call i32 @ff_framesync_activate(ptr noundef nonnull %i.c) #12
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define internal range(i32 -22, 1) i32 @config_input_ref(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !49
  %i.c = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.b) #12 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !56   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !9    ; 24 uses
  %i.h = tail call i32 @ff_filter_get_nb_threads(ptr noundef %i.e) #14
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 232 ; 4 uses
  store i32 %i.h, ptr %i.i, align 8, !tbaa !46
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = load i8, ptr %i.j, align 8, !tbaa !57
  %i.l = zext i8 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 228 ; 3 uses
  store i32 %i.l, ptr %i.m, align 4, !tbaa !40
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !59   ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !60   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.r = load i32, ptr %i.q, align 8, !tbaa !62
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !60   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load i32, ptr %i.u, align 8, !tbaa !62
  %.not = icmp eq i32 %i.r, %i.v
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 44
  %i.x = load i32, ptr %i.w, align 4, !tbaa !63
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 44
  %i.z = load i32, ptr %i.y, align 4, !tbaa !63
  %.not97 = icmp eq i32 %i.x, %i.z
  br i1 %.not97, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.e, i32 noundef 16, ptr noundef nonnull @.str.4) #12
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !64
  %notmask = shl nsw i32 -1, %i.ab
  %i.ac = xor i32 %notmask, -1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 196 ; 4 uses
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !36
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !64
  %notmask98 = shl nsw i32 -1, %i.af
  %i.ag = xor i32 %notmask98, -1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !36
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !64
  %notmask99 = shl nsw i32 -1, %i.aj
  %i.ak = xor i32 %notmask99, -1
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 204
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !36
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  %i.an = load i32, ptr %i.am, align 4, !tbaa !64
  %notmask100 = shl nsw i32 -1, %i.an
  %i.ao = xor i32 %notmask100, -1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 208
  store i32 %i.ao, ptr %i.ap, align 8, !tbaa !36
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 220
  %i.ar = load i32, ptr %i.a, align 4, !tbaa !49
  %i.as = tail call i32 @ff_fill_rgba_map(ptr noundef nonnull %i.aq, i32 noundef %i.ar) #12
  %i.at = icmp sgt i32 %i.as, -1                  ; 4 uses
  %i.au = zext i1 %i.at to i32
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 216
  store i32 %i.au, ptr %i.av, align 8, !tbaa !41
  %i.aw = select i1 %i.at, i8 114, i8 121
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  store i8 %i.aw, ptr %i.ax, align 8, !tbaa !39
  %i.ay = select i1 %i.at, i8 103, i8 117
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 225
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !39
  %i.ba = select i1 %i.at, i8 98, i8 118
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 226
  store i8 %i.ba, ptr %i.bb, align 2, !tbaa !39
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 227
  store i8 97, ptr %i.bc, align 1, !tbaa !39
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !63
  %i.bf = sub nsw i32 0, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.bh = load i8, ptr %i.bg, align 2, !tbaa !66
  %i.bi = zext nneg i8 %i.bh to i32
  %i.bj = ashr i32 %i.bf, %i.bi
  %i.bk = sub nsw i32 0, %i.bj                    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 252 ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.g, i64 260
  store i32 %i.bk, ptr %i.bm, align 4, !tbaa !36
  %i.bn = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  store i32 %i.bk, ptr %i.bn, align 8, !tbaa !36
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !63 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  store i32 %i.bp, ptr %i.bq, align 8, !tbaa !36
  store i32 %i.bp, ptr %i.bl, align 4, !tbaa !36
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !62
  %i.bt = sub nsw i32 0, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !67
  %i.bw = zext nneg i8 %i.bv to i32
  %i.bx = ashr i32 %i.bt, %i.bw
  %i.by = sub nsw i32 0, %i.bx                    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 236 ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 244
  store i32 %i.by, ptr %i.ca, align 4, !tbaa !36
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 240
  store i32 %i.by, ptr %i.cb, align 8, !tbaa !36
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !62 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 248
  store i32 %i.cd, ptr %i.ce, align 8, !tbaa !36
  store i32 %i.cd, ptr %i.bz, align 4, !tbaa !36
  %i.cf = load i32, ptr %i.m, align 4, !tbaa !40  ; 6 uses
  %i.cg = icmp sgt i32 %i.cf, 0
  br i1 %i.cg, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %wide.trip.count = zext nneg i32 %i.cf to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.cf, 8
  br i1 %min.iters.check, label %.lr.ph.preheader139, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cn, %vector.body ]
  %vec.phi135 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.co, %vector.body ]
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %index ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %wide.load = load <4 x i32>, ptr %i.ch, align 4, !tbaa !36
  %wide.load136 = load <4 x i32>, ptr %i.ci, align 4, !tbaa !36
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %index ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %wide.load137 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !36
  %wide.load138 = load <4 x i32>, ptr %i.ck, align 4, !tbaa !36
  %i.cl = mul nsw <4 x i32> %wide.load137, %wide.load
  %i.cm = mul nsw <4 x i32> %wide.load138, %wide.load136
  %i.cn = add <4 x i32> %i.cl, %vec.phi           ; 2 uses
  %i.co = add <4 x i32> %i.cm, %vec.phi135        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !68

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.co, %i.cn
  %i.cq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph111, label %.lr.ph.preheader139

.lr.ph.preheader139:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.093106.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.cq, %middle.block ]
  br label %.lr.ph

.lr.ph111:                                        ; preds = %.lr.ph, %middle.block
  %.lcssa134 = phi i32 [ %i.cq, %middle.block ], [ %i.cz, %.lr.ph ]
  %i.cr = uitofp nsz i32 %.lcssa134 to double     ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.g, i64 272 ; 3 uses
  %wide.trip.count126 = zext nneg i32 %i.cf to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count126, 1
  %i.ct = icmp eq i32 %i.cf, 1
  br i1 %i.ct, label %.epil.preheader, label %.lr.ph111.new

.lr.ph111.new:                                    ; preds = %.lr.ph111
  %unroll_iter = and i64 %wide.trip.count126, 2147483646
  br label %bb.e

.lr.ph:                                           ; preds = %.lr.ph.preheader139, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader139 ] ; 3 uses
  %.093106 = phi i32 [ %i.cz, %.lr.ph ], [ %.093106.ph, %.lr.ph.preheader139 ]
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !36
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !36
  %i.cy = mul nsw i32 %i.cx, %i.cv
  %i.cz = add i32 %i.cy, %.093106                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph111, label %.lr.ph, !llvm.loop !71

bb.e:                                             ; preds = %bb.e, %.lr.ph111.new
  %indvars.iv123 = phi i64 [ 0, %.lr.ph111.new ], [ %indvars.iv.next124.1, %bb.e ] ; 6 uses
  %.094109 = phi double [ 0.000000e+00, %.lr.ph111.new ], [ %i.dz, %bb.e ]
  %niter = phi i64 [ 0, %.lr.ph111.new ], [ %niter.next.1, %bb.e ]
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv123
  %i.db = load i32, ptr %i.da, align 4, !tbaa !36
  %i.dc = sitofp nsz i32 %i.db to double
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv123
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !36
  %i.df = sitofp nsz i32 %i.de to double
  %i.dg = fmul nnan nsz double %i.dc, %i.df
  %i.dh = fdiv nsz double %i.dg, %i.cr            ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv123
  store double %i.dh, ptr %i.di, align 8, !tbaa !20
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv123
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !36
  %i.dl = sitofp nsz i32 %i.dk to double
  %i.dm = tail call nsz double @llvm.fmuladd.f64(double %i.dl, double %i.dh, double %.094109)
  %indvars.iv.next124 = or disjoint i64 %indvars.iv123, 1 ; 4 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.next124
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !36
  %i.dp = sitofp nsz i32 %i.do to double
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.next124
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !36
  %i.ds = sitofp nsz i32 %i.dr to double
  %i.dt = fmul nnan nsz double %i.dp, %i.ds
  %i.du = fdiv nsz double %i.dt, %i.cr            ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.next124
  store double %i.du, ptr %i.dv, align 8, !tbaa !20
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.next124
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !36
  %i.dy = sitofp nsz i32 %i.dx to double
  %i.dz = tail call nsz double @llvm.fmuladd.f64(double %i.dy, double %i.du, double %i.dm) ; 3 uses
  %indvars.iv.next124.1 = add nuw nsw i64 %indvars.iv123, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.e, !llvm.loop !72

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph111
  %indvars.iv123.epil.init = phi i64 [ 0, %.lr.ph111 ], [ %indvars.iv.next124.1, %._crit_edge.loopexit.unr-lcssa ] ; 4 uses
  %.094109.epil.init = phi double [ 0.000000e+00, %.lr.ph111 ], [ %i.dz, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod144 = trunc i32 %i.cf to i1
  tail call void @llvm.assume(i1 %lcmp.mod144)
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv123.epil.init
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !36
  %i.ec = sitofp nsz i32 %i.eb to double
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv123.epil.init
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !36
  %i.ef = sitofp nsz i32 %i.ee to double
  %i.eg = fmul nnan nsz double %i.ec, %i.ef
  %i.eh = fdiv nsz double %i.eg, %i.cr            ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv123.epil.init
  store double %i.eh, ptr %i.ei, align 8, !tbaa !20
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv123.epil.init
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !36
  %i.el = sitofp nsz i32 %i.ek to double
  %i.em = tail call nsz double @llvm.fmuladd.f64(double %i.el, double %i.eh, double %.094109.epil.init)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.d
  %.094.lcssa = phi double [ 0.000000e+00, %bb.d ], [ %i.dz, %._crit_edge.loopexit.unr-lcssa ], [ %i.em, %.epil.preheader ]
  %i.en = tail call i64 @llvm.lrint.i64.f64(double %.094.lcssa)
  %i.eo = trunc i64 %i.en to i32
  %i.ep = getelementptr inbounds nuw i8, ptr %i.g, i64 212
  store i32 %i.eo, ptr %i.ep, align 4, !tbaa !45
  %i.eq = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.er = load i32, ptr %i.aa, align 8, !tbaa !64
  tail call void @ff_psnr_init(ptr noundef nonnull %i.eq, i32 noundef %i.er) #12
  %i.es = load i32, ptr %i.i, align 8, !tbaa !46
  %i.et = sext i32 %i.es to i64
  %i.eu = tail call noalias ptr @av_calloc(i64 noundef %i.et, i64 noundef 8) #12 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.g, i64 304 ; 2 uses
  store ptr %i.eu, ptr %i.ev, align 8, !tbaa !47
  %.not102 = icmp eq ptr %i.eu, null
  br i1 %.not102, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.ew = load i32, ptr %i.i, align 8, !tbaa !46
  %.not104113 = icmp sgt i32 %i.ew, 0
  br i1 %.not104113, label %.lr.ph115, label %.loopexit

bb.f:                                             ; preds = %.lr.ph115
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %i.ex = load i32, ptr %i.i, align 8, !tbaa !46
  %i.ey = sext i32 %i.ex to i64
  %.not104 = icmp slt i64 %indvars.iv.next129, %i.ey
  br i1 %.not104, label %.lr.ph115, label %.loopexit, !llvm.loop !73

.lr.ph115:                                        ; preds = %.preheader, %bb.f
  %indvars.iv128 = phi i64 [ %indvars.iv.next129, %bb.f ], [ 0, %.preheader ] ; 2 uses
  %i.ez = load i32, ptr %i.m, align 4, !tbaa !40
  %i.fa = sext i32 %i.ez to i64
  %i.fb = tail call noalias ptr @av_calloc(i64 noundef %i.fa, i64 noundef 8) #12 ; 2 uses
  %i.fc = load ptr, ptr %i.ev, align 8, !tbaa !47
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %indvars.iv128
  store ptr %i.fb, ptr %i.fd, align 8, !tbaa !74
  %.not103 = icmp eq ptr %i.fb, null
  br i1 %.not103, label %.loopexit, label %bb.f

.loopexit:                                        ; preds = %.lr.ph115, %bb.f, %.preheader, %._crit_edge, %bb.c
  %.196 = phi i32 [ -22, %bb.c ], [ -12, %._crit_edge ], [ 0, %.preheader ], [ -12, %.lr.ph115 ], [ 0, %bb.f ]
  ret i32 %.196
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ff_filter_get_nb_threads(ptr noundef) local_unnamed_addr #4

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @ff_fill_rgba_map(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.lrint.i64.f64(double) #5

declare void @ff_psnr_init(ptr noundef, i32 noundef) local_unnamed_addr #3

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @config_output(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !76     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !59
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !60   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.h = tail call i32 @ff_framesync_init_dualinput(ptr noundef nonnull %i.g, ptr noundef %i.a) #12 ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %av_cmp_q.exit44.thread52, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load <2 x i32>, ptr %i.j, align 8, !tbaa !36
  store <2 x i32> %i.l, ptr %i.k, align 8, !tbaa !36
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 96 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  store i64 %i.o, ptr %i.m, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.r = load i64, ptr %i.q, align 8
  store i64 %i.r, ptr %i.p, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 280
  %i.u = load i64, ptr %i.t, align 8
  store i64 %i.u, ptr %i.s, align 8
  %i.v = tail call i32 @ff_framesync_configure(ptr noundef nonnull %i.g) #12 ; 2 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %av_cmp_q.exit44.thread52, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.y = load i64, ptr %i.x, align 4              ; 5 uses
  store i64 %i.y, ptr %i.m, align 8
  %i.z = load i64, ptr %i.n, align 8              ; 5 uses
  %.sroa.011.0.extract.trunc.i = trunc i64 %i.z to i32 ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.y to i32 ; 4 uses
  %sext.i = shl i64 %i.z, 32
  %i.aa = ashr exact i64 %sext.i, 32
  %i.ab = ashr i64 %i.y, 32                       ; 2 uses
  %i.ac = mul nsw i64 %i.aa, %i.ab
  %sext20.i = shl i64 %i.y, 32
  %i.ad = ashr exact i64 %sext20.i, 32            ; 2 uses
  %i.ae = ashr i64 %i.z, 32
  %i.af = mul nsw i64 %i.ae, %i.ad
  %.not.i = icmp eq i64 %i.ac, %i.af
  %i.ag = lshr i64 %i.z, 32
end_hunk_0
