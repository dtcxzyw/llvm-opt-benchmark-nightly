Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/circle?download=true
inline.NumInlined: 75
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_circle_get_mask_roi:bb.a
  %i.co = fmul reassoc nsz arcp contract afn <8 x float> %i.cn, %broadcast.splat533 ; 4 uses
  %i.cp = fmul reassoc nsz arcp contract afn <8 x float> %i.cm, %broadcast.splat533 ; 4 uses
  %i.cq = fadd reassoc nsz arcp contract afn <8 x float> %i.co, %broadcast.splat535 ; 2 uses
  %i.cr = shl nuw nsw <8 x i64> %vec.ind, splat (i64 6)
  %wide.gep = getelementptr inbounds nuw i8, ptr %i.cd, <8 x i64> %i.cr ; 16 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cq, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !22
  %i.cs = fadd reassoc nsz arcp contract afn <8 x float> %i.cp, %broadcast.splat537 ; 2 uses
  %wide.gep539.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cs, <8 x ptr> align 4 %wide.gep539.a, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep540.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cq, <8 x ptr> align 4 %wide.gep540.a, <8 x i1> splat (i1 true)), !tbaa !22
  %i.ct = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat537, %i.cp ; 2 uses
  %wide.gep541.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 12
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ct, <8 x ptr> align 4 %wide.gep541.a, <8 x i1> splat (i1 true)), !tbaa !22
  %i.cu = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat535, %i.co ; 2 uses
  %wide.gep542.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 16
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cu, <8 x ptr> align 4 %wide.gep542.a, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep543.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 20
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cs, <8 x ptr> align 4 %wide.gep543.a, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep544.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 24
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cu, <8 x ptr> align 4 %wide.gep544.a, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep545.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 28
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ct, <8 x ptr> align 4 %wide.gep545.a, <8 x i1> splat (i1 true)), !tbaa !22
  %i.cv = fadd reassoc nsz arcp contract afn <8 x float> %i.cp, %broadcast.splat535 ; 2 uses
  %wide.gep546.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 32
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cv, <8 x ptr> align 4 %wide.gep546.a, <8 x i1> splat (i1 true)), !tbaa !22
  %i.cw = fadd reassoc nsz arcp contract afn <8 x float> %i.co, %broadcast.splat537 ; 2 uses
  %wide.gep547.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 36
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cw, <8 x ptr> align 4 %wide.gep547.a, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep548.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 40
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cv, <8 x ptr> align 4 %wide.gep548.a, <8 x i1> splat (i1 true)), !tbaa !22
  %i.cx = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat537, %i.co ; 2 uses
  %wide.gep549.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 44
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cx, <8 x ptr> align 4 %wide.gep549.a, <8 x i1> splat (i1 true)), !tbaa !22
  %i.cy = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat535, %i.cp ; 2 uses
  %wide.gep550.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 48
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cy, <8 x ptr> align 4 %wide.gep550.a, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep551 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 52
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cw, <8 x ptr> align 4 %wide.gep551, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep552 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 56
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cy, <8 x ptr> align 4 %wide.gep552, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep553 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 60
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cx, <8 x ptr> align 4 %wide.gep553, <8 x i1> splat (i1 true)), !tbaa !22
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %vec.ind.next554 = add <8 x i32> %vec.ind538, splat (i32 8)
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !195

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cf, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %i.da = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.cg
  %i.db = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.dc = shufflevector <2 x float> %i.v, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 4 uses
  %i.dd = shufflevector <2 x float> %i.db, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %.preheader446
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !128 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.dh = load i32, ptr %i.dg, align 16, !tbaa !122
  %i.di = sitofp reassoc nsz arcp contract afn i32 %i.dh to double ; 2 uses
  %i.dj = tail call i32 @dt_dev_distort_transform_plus(ptr noundef %i.df, ptr noundef nonnull %i.q, double noundef %i.di, i32 noundef 3, ptr noundef nonnull %i.cd, i64 noundef %i.cb) #14
  %.not388 = icmp eq i32 %i.dj, 0
  br i1 %.not388, label %bb.e, label %bb.f

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.dk = trunc nuw nsw i64 %indvars.iv to i32
  %i.dl = uitofp nsz nneg i32 %i.dk to float
  %i.dm = fmul reassoc nnan nsz arcp contract afn float %i.dl, f0x40C90FDB
  %i.dn = fmul reassoc nsz arcp contract afn float %i.dm, %i.da
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.dn) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0
  %cos = extractvalue { float, float } %sincos, 1
  %i.do = insertelement <4 x float> poison, float %sin, i64 0
  %i.dp = insertelement <4 x float> %i.do, float %cos, i64 1
  %.idx530 = shl nuw nsw i64 %indvars.iv, 6
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx530 ; 2 uses
  %i.dr = fmul reassoc nsz arcp contract afn <4 x float> %i.dp, %i.dd ; 4 uses
  %i.ds = shufflevector <4 x float> %i.dc, <4 x float> %i.dr, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.dt = shufflevector <4 x float> %i.dr, <4 x float> %i.dc, <4 x i32> <i32 1, i32 0, i32 5, i32 4> ; 2 uses
  %i.du = fadd reassoc nsz arcp contract afn <4 x float> %i.ds, %i.dt
  %i.dv = fsub reassoc nsz arcp contract afn <4 x float> %i.ds, %i.dt
  %i.dw = shufflevector <4 x float> %i.du, <4 x float> %i.dv, <8 x i32> <i32 3, i32 2, i32 3, i32 5, i32 4, i32 2, i32 4, i32 5>
  store <8 x float> %i.dw, ptr %i.dq, align 64, !tbaa !22
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  %i.dy = shufflevector <4 x float> %i.dc, <4 x float> %i.dr, <4 x i32> <i32 0, i32 1, i32 5, i32 4> ; 2 uses
  %i.dz = shufflevector <4 x float> %i.dr, <4 x float> %i.dc, <4 x i32> <i32 0, i32 1, i32 5, i32 4> ; 2 uses
  %i.ea = fadd reassoc nsz arcp contract afn <4 x float> %i.dy, %i.dz
  %i.eb = fsub reassoc nsz arcp contract afn <4 x float> %i.dy, %i.dz
  %i.ec = shufflevector <4 x float> %i.ea, <4 x float> %i.eb, <8 x i32> <i32 3, i32 2, i32 3, i32 5, i32 4, i32 2, i32 4, i32 5>
  store <8 x float> %i.ec, ptr %i.dx, align 32, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.cf
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !196

bb.e:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.cd) #14
  br label %bb.ac

bb.f:                                             ; preds = %._crit_edge
  %i.ed = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !123
  %i.ee = and i32 %i.ed, 4112
  %or.cond414.not = icmp eq i32 %i.ee, 4112
  br i1 %or.cond414.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %i.eg = call i32 @gettimeofday(ptr noundef nonnull %11, ptr noundef null) #14 ; 0 uses
  %i.eh = load i64, ptr %11, align 8, !tbaa !125
  %i.ei = add nsw i64 %i.eh, -1290608000
  %i.ej = sitofp reassoc nsz arcp contract afn i64 %i.ei to double
  %i.ek = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !126
  %i.em = sitofp reassoc nsz arcp contract afn i64 %i.el to double
  %i.en = fmul reassoc nnan nsz arcp contract afn double %i.em, f0x3EB0C6F7A0B5ED8D
  %i.eo = fadd reassoc nsz arcp contract afn double %i.en, %i.ej ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  %i.ep = fsub reassoc nsz arcp contract afn double %i.eo, %.0
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.14, ptr noundef nonnull %i.ef, double noundef %i.ep) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi nsz double [ %.0, %bb.f ], [ %i.eo, %bb.g ] ; 2 uses
  %.not481 = icmp eq i32 %i.ca, 0
  br i1 %.not481, label %._crit_edge455, label %.lr.ph454.preheader

.lr.ph454.preheader:                              ; preds = %bb.h
  %xtraiter = and i64 %i.cb, 1
  %i.eq = icmp eq i32 %i.ca, 1
  br i1 %i.eq, label %.lr.ph454.epil.preheader, label %.lr.ph454.preheader.new

.lr.ph454.preheader.new:                          ; preds = %.lr.ph454.preheader
  %unroll_iter = and i64 %i.cb, 2147483646
  br label %.lr.ph454

._crit_edge455.loopexit.unr-lcssa:                ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge455, label %.lr.ph454.epil.preheader

.lr.ph454.epil.preheader:                         ; preds = %._crit_edge455.loopexit.unr-lcssa, %.lr.ph454.preheader
  %indvars.iv483.epil.init = phi i64 [ 0, %.lr.ph454.preheader ], [ %indvars.iv.next484.1, %._crit_edge455.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x float> [ splat (float f0x00800000), %.lr.ph454.preheader ], [ %i.hk, %._crit_edge455.loopexit.unr-lcssa ] ; 4 uses
  %.epil.init662 = phi <2 x float> [ splat (float f0x7F7FFFFF), %.lr.ph454.preheader ], [ %i.hl, %._crit_edge455.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod665 = trunc i32 %i.ca to i1
  tail call void @llvm.assume(i1 %lcmp.mod665)
  %.idx531.epil = shl nuw nsw i64 %indvars.iv483.epil.init, 3
  %i.er = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx531.epil ; 2 uses
  %i.es = load float, ptr %i.er, align 8, !tbaa !22 ; 2 uses
  %i.et = tail call i1 @llvm.is.fpclass.f32(float %i.es, /* (nan inf zero sub) */ i32 759)
  br i1 %i.et, label %._crit_edge455, label %bb.i

bb.i:                                             ; preds = %.lr.ph454.epil.preheader
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !22 ; 2 uses
  %i.ew = tail call i1 @llvm.is.fpclass.f32(float %i.ev, /* (nan inf zero sub) */ i32 759)
  br i1 %i.ew, label %._crit_edge455, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ex = insertelement <2 x float> poison, float %i.es, i64 0
  %i.ey = insertelement <2 x float> %i.ex, float %i.ev, i64 1 ; 4 uses
  %i.ez = fcmp reassoc nsz arcp contract afn olt <2 x float> %.epil.init662, %i.ey
  %i.fa = fcmp reassoc nsz arcp contract afn ogt <2 x float> %.epil.init, %i.ey
  %i.fb = select <2 x i1> %i.ez, <2 x float> %.epil.init662, <2 x float> %i.ey
  %i.fc = select <2 x i1> %i.fa, <2 x float> %.epil.init, <2 x float> %i.ey
  br label %._crit_edge455

._crit_edge455:                                   ; preds = %._crit_edge455.loopexit.unr-lcssa, %bb.j, %bb.i, %.lr.ph454.epil.preheader, %bb.h
  %i.fd = phi <2 x float> [ splat (float f0x00800000), %bb.h ], [ %i.hk, %._crit_edge455.loopexit.unr-lcssa ], [ %i.fc, %bb.j ], [ %.epil.init, %bb.i ], [ %.epil.init, %.lr.ph454.epil.preheader ]
  %i.fe = phi <2 x float> [ splat (float f0x7F7FFFFF), %bb.h ], [ %i.hl, %._crit_edge455.loopexit.unr-lcssa ], [ %i.fb, %bb.j ], [ %.epil.init662, %bb.i ], [ %.epil.init662, %.lr.ph454.epil.preheader ]
  %i.ff = insertelement <2 x float> poison, float %i.am, i64 0
  %i.fg = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fh = fmul reassoc nsz arcp contract afn <2 x float> %i.fe, %i.fg
  %i.fi = sitofp <2 x i32> %i.au to <2 x float>   ; 2 uses
  %i.fj = fmul reassoc nsz arcp contract afn <2 x float> %i.fd, %i.fg
  %i.fk = fsub reassoc nsz arcp contract afn <2 x float> %i.fh, %i.fi
  %i.fl = tail call reassoc nsz arcp contract afn <2 x float> @llvm.floor.v2f32(<2 x float> %i.fk)
  %i.fm = fptosi <2 x float> %i.fl to <2 x i32>
  %i.fn = sdiv <2 x i32> %i.fm, %i.az             ; 2 uses
  %i.fo = add nsw <2 x i32> %i.fn, splat (i32 -1) ; 2 uses
  %i.fp = icmp sgt <2 x i32> %i.fo, %i.ba
  %i.fq = icmp sgt <2 x i32> %i.fn, zeroinitializer
  %i.fr = select <2 x i1> %i.fq, <2 x i32> %i.fo, <2 x i32> zeroinitializer
  %i.fs = select <2 x i1> %i.fp, <2 x i32> %i.ba, <2 x i32> %i.fr ; 7 uses
  %i.ft = fsub reassoc nsz arcp contract afn <2 x float> %i.fj, %i.fi
  %i.fu = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.ft)
  %i.fv = fptosi <2 x float> %i.fu to <2 x i32>
  %i.fw = sdiv <2 x i32> %i.fv, %i.az             ; 2 uses
  %i.fx = add nsw <2 x i32> %i.fw, splat (i32 2)  ; 2 uses
  %i.fy = icmp sgt <2 x i32> %i.fx, %i.ba
  %i.fz = icmp slt <2 x i32> %i.fw, splat (i32 -2)
  %i.ga = select <2 x i1> %i.fz, <2 x i32> zeroinitializer, <2 x i32> %i.fx
  %i.gb = select <2 x i1> %i.fy, <2 x i32> %i.ba, <2 x i32> %i.ga ; 5 uses
  %i.gc = sub <2 x i32> %i.gb, %i.fs              ; 5 uses
  %i.gd = add nuw nsw <2 x i32> %i.gc, splat (i32 1) ; 3 uses
  %i.ge = zext <2 x i32> %i.gd to <2 x i64>
  tail call void @free(ptr noundef nonnull %i.cd) #14
  %i.gf = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !123
  %i.gg = and i32 %i.gf, 4112
  %or.cond419.not = icmp eq i32 %i.gg, 4112
  br i1 %or.cond419.not, label %bb.p, label %bb.q

.lr.ph454:                                        ; preds = %bb.o, %.lr.ph454.preheader.new
  %indvars.iv483 = phi i64 [ 0, %.lr.ph454.preheader.new ], [ %indvars.iv.next484.1, %bb.o ] ; 3 uses
  %i.gh = phi <2 x float> [ splat (float f0x00800000), %.lr.ph454.preheader.new ], [ %i.hk, %bb.o ] ; 4 uses
  %i.gi = phi <2 x float> [ splat (float f0x7F7FFFFF), %.lr.ph454.preheader.new ], [ %i.hl, %bb.o ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph454.preheader.new ], [ %niter.next.1, %bb.o ]
  %.idx531 = shl nuw nsw i64 %indvars.iv483, 3
  %i.gj = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx531 ; 2 uses
  %i.gk = load float, ptr %i.gj, align 16, !tbaa !22 ; 2 uses
  %i.gl = tail call i1 @llvm.is.fpclass.f32(float %i.gk, /* (nan inf zero sub) */ i32 759)
  br i1 %i.gl, label %.lr.ph454.1, label %bb.k

bb.k:                                             ; preds = %.lr.ph454
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !22 ; 2 uses
  %i.go = tail call i1 @llvm.is.fpclass.f32(float %i.gn, /* (nan inf zero sub) */ i32 759)
  br i1 %i.go, label %.lr.ph454.1, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.gp = insertelement <2 x float> poison, float %i.gk, i64 0
  %i.gq = insertelement <2 x float> %i.gp, float %i.gn, i64 1 ; 4 uses
  %i.gr = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.gi, %i.gq
  %i.gs = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.gh, %i.gq
  %i.gt = select <2 x i1> %i.gr, <2 x float> %i.gi, <2 x float> %i.gq
  %i.gu = select <2 x i1> %i.gs, <2 x float> %i.gh, <2 x float> %i.gq
  br label %.lr.ph454.1

.lr.ph454.1:                                      ; preds = %.lr.ph454, %bb.k, %bb.l
  %i.gv = phi <2 x float> [ %i.gu, %bb.l ], [ %i.gh, %bb.k ], [ %i.gh, %.lr.ph454 ] ; 4 uses
  %i.gw = phi <2 x float> [ %i.gt, %bb.l ], [ %i.gi, %bb.k ], [ %i.gi, %.lr.ph454 ] ; 4 uses
  %indvars.iv.next484 = shl i64 %indvars.iv483, 3
  %i.gx = getelementptr inbounds nuw i8, ptr %i.cd, i64 %indvars.iv.next484 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.gz = load float, ptr %i.gy, align 8, !tbaa !22 ; 2 uses
  %i.ha = tail call i1 @llvm.is.fpclass.f32(float %i.gz, /* (nan inf zero sub) */ i32 759)
  br i1 %i.ha, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.lr.ph454.1
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 12
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !22 ; 2 uses
  %i.hd = tail call i1 @llvm.is.fpclass.f32(float %i.hc, /* (nan inf zero sub) */ i32 759)
  br i1 %i.hd, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.he = insertelement <2 x float> poison, float %i.gz, i64 0
  %i.hf = insertelement <2 x float> %i.he, float %i.hc, i64 1 ; 4 uses
  %i.hg = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.gw, %i.hf
  %i.hh = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.gv, %i.hf
  %i.hi = select <2 x i1> %i.hg, <2 x float> %i.gw, <2 x float> %i.hf
  %i.hj = select <2 x i1> %i.hh, <2 x float> %i.gv, <2 x float> %i.hf
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %.lr.ph454.1
  %i.hk = phi <2 x float> [ %i.hj, %bb.n ], [ %i.gv, %bb.m ], [ %i.gv, %.lr.ph454.1 ] ; 3 uses
  %i.hl = phi <2 x float> [ %i.hi, %bb.n ], [ %i.gw, %bb.m ], [ %i.gw, %.lr.ph454.1 ] ; 3 uses
  %indvars.iv.next484.1 = add nuw nsw i64 %indvars.iv483, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge455.loopexit.unr-lcssa, label %.lr.ph454

bb.p:                                             ; preds = %._crit_edge455
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  %i.hn = call i32 @gettimeofday(ptr noundef nonnull %10, ptr noundef null) #14 ; 0 uses
  %i.ho = load i64, ptr %10, align 8, !tbaa !125
  %i.hp = add nsw i64 %i.ho, -1290608000
  %i.hq = sitofp reassoc nsz arcp contract afn i64 %i.hp to double
  %i.hr = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !126
  %i.ht = sitofp reassoc nsz arcp contract afn i64 %i.hs to double
  %i.hu = fmul reassoc nnan nsz arcp contract afn double %i.ht, f0x3EB0C6F7A0B5ED8D
  %i.hv = fadd reassoc nsz arcp contract afn double %i.hu, %i.hq ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  %i.hw = fsub reassoc nsz arcp contract afn double %i.hv, %.1
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.15, ptr noundef nonnull %i.hm, double noundef %i.hw) #14
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge455
  %.2432 = phi nsz double [ %.1, %._crit_edge455 ], [ %i.hv, %bb.p ] ; 2 uses
  %i.hx = icmp slt <2 x i32> %i.gc, splat (i32 1) ; 2 uses
  %i.hy = extractelement <2 x i1> %i.hx, i64 0
  %i.hz = extractelement <2 x i1> %i.hx, i64 1
  %or.cond = select i1 %i.hy, i1 true, i1 %i.hz
  br i1 %or.cond, label %bb.ac, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ia = extractelement <2 x i32> %i.gd, i64 0   ; 11 uses
  %i.ib = zext i32 %i.ia to i64
  %i.ic = extractelement <2 x i32> %i.gd, i64 1
  %i.id = zext i32 %i.ic to i64
  %i.ie = mul nuw nsw i64 %i.id, %i.ib            ; 2 uses
  %i.if = shl i64 %i.ie, 3
  %i.ig = tail call ptr @dt_alloc_aligned(i64 noundef %i.if) #14 ; 17 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ig, i64 64) ]
  %i.ih = icmp eq ptr %i.ig, null
  br i1 %i.ih, label %bb.ac, label %.preheader445

.preheader445:                                    ; preds = %bb.r
  %i.ii = extractelement <2 x i32> %i.gb, i64 1   ; 2 uses
  %i.ij = extractelement <2 x i32> %i.fs, i64 1   ; 4 uses
  %.not393463 = icmp sgt i32 %i.ij, %i.ii
  br i1 %.not393463, label %._crit_edge465.split, label %.preheader444.lr.ph

.preheader444.lr.ph:                              ; preds = %.preheader445
  %i.ik = extractelement <2 x i32> %i.fs, i64 0
  %i.il = icmp sgt <2 x i32> %i.fs, %i.gb
  %.not410459 = extractelement <2 x i1> %i.il, i64 0
  %i.im = sext i32 %i.ik to i64                   ; 6 uses
  br i1 %.not410459, label %._crit_edge465.split, label %.preheader444.preheader

.preheader444.preheader:                          ; preds = %.preheader444.lr.ph
  %i.in = sext i32 %i.ij to i64                   ; 2 uses
  %i.io = add <2 x i32> %i.gb, splat (i32 1)      ; 2 uses
  %i.ip = extractelement <2 x i32> %i.gc, i64 0   ; 2 uses
  %i.iq = extractelement <2 x i32> %i.au, i64 1
  %i.ir = extractelement <2 x i32> %i.io, i64 1
  %i.is = zext i32 %i.ia to i64
  %min.iters.check556 = icmp ult i32 %i.ip, 3
  %min.iters.check557 = icmp ult i32 %i.ip, 31
  %i.it = zext i32 %i.ia to i64                   ; 2 uses
  %i.iu = and i64 %i.it, 28
  %n.vec559 = and i64 %i.it, 2147483616           ; 4 uses
  %i.iv = add nsw i64 %n.vec559, %i.im            ; 2 uses
  %broadcast.splatinsert562 = insertelement <8 x i32> poison, i32 %i.ar, i64 0
  %broadcast.splat563 = shufflevector <8 x i32> %broadcast.splatinsert562, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat565 = shufflevector <2 x i32> %i.au, <2 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert566 = insertelement <8 x float> poison, float %i.an, i64 0
  %broadcast.splat567 = shufflevector <8 x float> %broadcast.splatinsert566, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat569 = shufflevector <2 x i32> %i.fs, <2 x i32> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i32> %broadcast.splat569, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.iw = zext i32 %i.ia to i64
  %cmp.n579 = icmp eq i64 %n.vec559, %i.iw
  %min.epilog.iters.check = icmp eq i64 %i.iu, 0
  %i.ix = and i32 %i.ia, 2147483644               ; 2 uses
  %n.vec581 = zext nneg i32 %i.ix to i64          ; 2 uses
  %i.iy = add nsw i64 %n.vec581, %i.im
  %broadcast.splatinsert584 = insertelement <4 x i32> poison, i32 %i.ar, i64 0
  %broadcast.splat585 = shufflevector <4 x i32> %broadcast.splatinsert584, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splat587 = shufflevector <2 x i32> %i.au, <2 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert588 = insertelement <4 x float> poison, float %i.an, i64 0
  %broadcast.splat589 = shufflevector <4 x float> %broadcast.splatinsert588, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n598 = icmp eq i32 %i.ix, %i.ia
  %i.iz = extractelement <2 x i32> %i.au, i64 0
  %i.ja = extractelement <2 x i32> %i.io, i64 0
  br label %iter.check

iter.check:                                       ; preds = %.preheader444.preheader, %._crit_edge462
  %indvars.iv491 = phi i64 [ %i.in, %.preheader444.preheader ], [ %indvars.iv.next492, %._crit_edge462 ] ; 3 uses
  %i.jb = sub nsw i64 %indvars.iv491, %i.in
  %i.jc = mul nuw nsw i64 %i.jb, %i.is            ; 3 uses
  %i.jd = sub i64 %i.jc, %i.im                    ; 4 uses
  %i.je = trunc i64 %indvars.iv491 to i32
  %i.jf = mul i32 %i.ar, %i.je
  %i.jg = add i32 %i.jf, %i.iq
  %i.jh = sitofp reassoc nsz arcp contract afn i32 %i.jg to float
  %i.ji = fmul reassoc nsz arcp contract afn float %i.an, %i.jh ; 3 uses
  br i1 %min.iters.check556, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check557, label %vec.epilog.ph, label %vector.ph558

vector.ph558:                                     ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert560 = insertelement <8 x float> poison, float %i.ji, i64 0 ; 4 uses
  %invariant.op = add i64 8, %i.jd
  %invariant.op668 = add i64 16, %i.jd
  %invariant.op670 = add i64 24, %i.jd
  br label %vector.body570

vector.body570:                                   ; preds = %vector.body570, %vector.ph558
  %index571 = phi i64 [ 0, %vector.ph558 ], [ %index.next576, %vector.body570 ] ; 3 uses
  %vec.ind572 = phi <8 x i32> [ %induction, %vector.ph558 ], [ %vec.ind.next577, %vector.body570 ] ; 5 uses
  %step.add = add <8 x i32> %vec.ind572, splat (i32 8)
  %step.add.2 = add <8 x i32> %vec.ind572, splat (i32 16)
  %step.add.3 = add <8 x i32> %vec.ind572, splat (i32 24)
  %i.jj = add i64 %index571, %i.im                ; 3 uses
  %i.jk = add i64 %index571, %i.jc
  %.reass = add i64 %i.jj, %invariant.op
  %.reass669 = add i64 %i.jj, %invariant.op668
  %.reass671 = add i64 %i.jj, %invariant.op670
  %i.jl = mul <8 x i32> %broadcast.splat563, %vec.ind572
  %i.jm = mul <8 x i32> %broadcast.splat563, %step.add
  %i.jn = mul <8 x i32> %broadcast.splat563, %step.add.2
  %i.jo = mul <8 x i32> %broadcast.splat563, %step.add.3
  %i.jp = add <8 x i32> %i.jl, %broadcast.splat565
  %i.jq = add <8 x i32> %i.jm, %broadcast.splat565
  %i.jr = add <8 x i32> %i.jn, %broadcast.splat565
  %i.js = add <8 x i32> %i.jo, %broadcast.splat565
  %i.jt = sitofp reassoc nsz arcp contract afn <8 x i32> %i.jp to <8 x float>
  %i.ju = sitofp reassoc nsz arcp contract afn <8 x i32> %i.jq to <8 x float>
  %i.jv = sitofp reassoc nsz arcp contract afn <8 x i32> %i.jr to <8 x float>
  %i.jw = sitofp reassoc nsz arcp contract afn <8 x i32> %i.js to <8 x float>
  %i.jx = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat567, %i.jt
  %i.jy = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat567, %i.ju
  %i.jz = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat567, %i.jv
  %i.ka = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat567, %i.jw
  %i.kb = shl i64 %i.jk, 3
  %i.kc = shl i64 %.reass, 3
  %i.kd = shl i64 %.reass669, 3
  %i.ke = shl i64 %.reass671, 3
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.kb
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.kc
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.kd
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.ke
  %interleaved.vec = shufflevector <8 x float> %i.jx, <8 x float> %broadcast.splatinsert560, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec, ptr %i.kf, align 8, !tbaa !22
  %interleaved.vec573 = shufflevector <8 x float> %i.jy, <8 x float> %broadcast.splatinsert560, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec573, ptr %i.kg, align 8, !tbaa !22
  %interleaved.vec574 = shufflevector <8 x float> %i.jz, <8 x float> %broadcast.splatinsert560, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec574, ptr %i.kh, align 8, !tbaa !22
  %interleaved.vec575 = shufflevector <8 x float> %i.ka, <8 x float> %broadcast.splatinsert560, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec575, ptr %i.ki, align 8, !tbaa !22
  %index.next576 = add nuw i64 %index571, 32      ; 2 uses
  %vec.ind.next577 = add <8 x i32> %vec.ind572, splat (i32 32)
  %i.kj = icmp eq i64 %index.next576, %n.vec559
  br i1 %i.kj, label %middle.block578, label %vector.body570, !llvm.loop !197

middle.block578:                                  ; preds = %vector.body570
  br i1 %cmp.n579, label %._crit_edge462, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block578
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !127

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec559, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val580 = phi i64 [ %i.iv, %vec.epilog.iter.check ], [ %i.im, %vector.main.loop.iter.check ]
  %broadcast.splatinsert582 = insertelement <4 x float> poison, float %i.ji, i64 0
  %i.kk = trunc i64 %bc.resume.val580 to i32
  %broadcast.splatinsert590 = insertelement <4 x i32> poison, i32 %i.kk, i64 0
  %broadcast.splat591 = shufflevector <4 x i32> %broadcast.splatinsert590, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction592 = add <4 x i32> %broadcast.splat591, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index593 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next596, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind594 = phi <4 x i32> [ %induction592, %vec.epilog.ph ], [ %vec.ind.next597, %vec.epilog.vector.body ] ; 2 uses
  %i.kl = add i64 %index593, %i.jc
  %i.km = mul <4 x i32> %broadcast.splat585, %vec.ind594
  %i.kn = add <4 x i32> %i.km, %broadcast.splat587
  %i.ko = sitofp reassoc nsz arcp contract afn <4 x i32> %i.kn to <4 x float>
  %i.kp = fmul reassoc nsz arcp contract afn <4 x float> %broadcast.splat589, %i.ko
  %i.kq = shl i64 %i.kl, 3
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.kq
  %interleaved.vec595 = shufflevector <4 x float> %i.kp, <4 x float> %broadcast.splatinsert582, <8 x i32> <i32 0, i32 4, i32 1, i32 4, i32 2, i32 4, i32 3, i32 4>
  store <8 x float> %interleaved.vec595, ptr %i.kr, align 8, !tbaa !22
  %index.next596 = add nuw i64 %index593, 4       ; 2 uses
  %vec.ind.next597 = add <4 x i32> %vec.ind594, splat (i32 4)
  %i.ks = icmp eq i64 %index.next596, %n.vec581
  br i1 %i.ks, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !198

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n598, label %._crit_edge462, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv487.ph = phi i64 [ %i.im, %iter.check ], [ %i.iv, %vec.epilog.iter.check ], [ %i.iy, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge465.split:                             ; preds = %._crit_edge462, %.preheader444.lr.ph, %.preheader445
  %i.kt = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !123
  %i.ku = and i32 %i.kt, 4112
  %or.cond420.not = icmp eq i32 %i.ku, 4112
  br i1 %or.cond420.not, label %bb.s, label %bb.t

._crit_edge462:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block578
  %indvars.iv.next492 = add nsw i64 %indvars.iv491, 1 ; 2 uses
  %lftr.wideiv494 = trunc i64 %indvars.iv.next492 to i32
  %exitcond495.not = icmp eq i32 %i.ir, %lftr.wideiv494
  br i1 %exitcond495.not, label %._crit_edge465.split, label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv487 = phi i64 [ %indvars.iv.next488, %vec.epilog.scalar.ph ], [ %indvars.iv487.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.kv = add i64 %i.jd, %indvars.iv487
  %i.kw = trunc i64 %indvars.iv487 to i32
  %i.kx = mul i32 %i.ar, %i.kw
  %i.ky = add i32 %i.kx, %i.iz
  %i.kz = sitofp reassoc nsz arcp contract afn i32 %i.ky to float
  %i.la = fmul reassoc nsz arcp contract afn float %i.an, %i.kz
  %.idx436 = shl i64 %i.kv, 3
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ig, i64 %.idx436 ; 2 uses
  store float %i.la, ptr %i.lb, align 8, !tbaa !22
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 4
  store float %i.ji, ptr %i.lc, align 4, !tbaa !22
  %indvars.iv.next488 = add nsw i64 %indvars.iv487, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next488 to i32
  %exitcond490.not = icmp eq i32 %i.ja, %lftr.wideiv
  br i1 %exitcond490.not, label %._crit_edge462, label %vec.epilog.scalar.ph, !llvm.loop !199

bb.s:                                             ; preds = %._crit_edge465.split
  %i.ld = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.le = call i32 @gettimeofday(ptr noundef nonnull %9, ptr noundef null) #14 ; 0 uses
  %i.lf = load i64, ptr %9, align 8, !tbaa !125
  %i.lg = add nsw i64 %i.lf, -1290608000
  %i.lh = sitofp reassoc nsz arcp contract afn i64 %i.lg to double
  %i.li = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !126
  %i.lk = sitofp reassoc nsz arcp contract afn i64 %i.lj to double
  %i.ll = fmul reassoc nnan nsz arcp contract afn double %i.lk, f0x3EB0C6F7A0B5ED8D
  %i.lm = fadd reassoc nsz arcp contract afn double %i.ll, %i.lh ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.ln = fsub reassoc nsz arcp contract afn double %i.lm, %.2432
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.16, ptr noundef nonnull %i.ld, double noundef %i.ln) #14
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge465.split
  %.3 = phi nsz double [ %.2432, %._crit_edge465.split ], [ %i.lm, %bb.s ] ; 2 uses
  %i.lo = tail call i32 @dt_dev_distort_backtransform_plus(ptr noundef %i.df, ptr noundef nonnull %i.q, double noundef %i.di, i32 noundef 3, ptr noundef nonnull %i.ig, i64 noundef %i.ie) #14
  %.not396 = icmp eq i32 %i.lo, 0
  br i1 %.not396, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @free(ptr noundef nonnull %i.ig) #14
  br label %bb.ac

bb.v:                                             ; preds = %bb.t
  %i.lp = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !123
  %i.lq = and i32 %i.lp, 4112
  %or.cond421.not = icmp eq i32 %i.lq, 4112
  br i1 %or.cond421.not, label %bb.w, label %.preheader.preheader

bb.w:                                             ; preds = %bb.v
  %i.lr = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.ls = call i32 @gettimeofday(ptr noundef nonnull %8, ptr noundef null) #14 ; 0 uses
  %i.lt = load i64, ptr %8, align 8, !tbaa !125
  %i.lu = add nsw i64 %i.lt, -1290608000
  %i.lv = sitofp reassoc nsz arcp contract afn i64 %i.lu to double
  %i.lw = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !126
  %i.ly = sitofp reassoc nsz arcp contract afn i64 %i.lx to double
  %i.lz = fmul reassoc nnan nsz arcp contract afn double %i.ly, f0x3EB0C6F7A0B5ED8D
  %i.ma = fadd reassoc nsz arcp contract afn double %i.lz, %i.lv ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %i.mb = fsub reassoc nsz arcp contract afn double %i.ma, %.3
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.11, ptr noundef nonnull %i.lr, double noundef %i.mb) #14
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.w, %bb.v
  %.4 = phi nsz double [ %.3, %bb.v ], [ %i.ma, %bb.w ] ; 2 uses
  %14 = add nuw <2 x i32> %i.gc, splat (i32 1)    ; 2 uses
  %15 = extractelement <2 x i32> %14, i64 1
  %wide.trip.count505 = zext i32 %15 to i64
  %16 = extractelement <2 x i32> %14, i64 0
  %wide.trip.count499 = zext i32 %16 to i64
  %i.mc = extractelement <2 x i32> %i.gc, i64 0
  %i.md = zext i32 %i.ia to i64
  %min.iters.check601 = icmp ult i32 %i.mc, 7
  %i.me = and i32 %i.ia, 2147483640               ; 2 uses
  %n.vec603 = zext nneg i32 %i.me to i64          ; 2 uses
  %broadcast.splat607 = shufflevector <2 x float> %i.v, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat609 = shufflevector <2 x float> %i.v, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert610 = insertelement <8 x float> poison, float %i.ai, i64 0
  %broadcast.splat611 = shufflevector <8 x float> %broadcast.splatinsert610, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert612 = insertelement <8 x float> poison, float %i.aj, i64 0
  %broadcast.splat613 = shufflevector <8 x float> %broadcast.splatinsert612, <8 x float> poison, <8 x i32> zeroinitializer
  %i.mf = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat613
  %cmp.n622 = icmp eq i32 %i.me, %i.ia
  %i.mg = extractelement <2 x float> %i.v, i64 0
  %i.mh = extractelement <2 x float> %i.v, i64 1
  %i.mi = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.aj
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge469
  %indvars.iv501 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next502, %._crit_edge469 ] ; 2 uses
  %i.mj = mul nuw nsw i64 %indvars.iv501, %i.md   ; 2 uses
  br i1 %min.iters.check601, label %scalar.ph600.preheader, label %vector.ph602

vector.ph602:                                     ; preds = %.preheader
  %broadcast.splatinsert604 = insertelement <8 x i64> poison, i64 %i.mj, i64 0
  %broadcast.splat605 = shufflevector <8 x i64> %broadcast.splatinsert604, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vector.body614

vector.body614:                                   ; preds = %vector.body614, %vector.ph602
  %index615 = phi i64 [ 0, %vector.ph602 ], [ %index.next619, %vector.body614 ]
  %vec.ind616 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph602 ], [ %vec.ind.next620, %vector.body614 ] ; 2 uses
  %i.mk = add nuw nsw <8 x i64> %broadcast.splat605, %vec.ind616
  %i.ml = shl nuw nsw <8 x i64> %i.mk, splat (i64 3)
  %wide.gep617 = getelementptr inbounds nuw i8, ptr %i.ig, <8 x i64> %i.ml ; 2 uses
  %i.mm = extractelement <8 x ptr> %wide.gep617, i64 0
  %wide.vec = load <16 x float>, ptr %i.mm, align 8, !tbaa !22 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec618 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.mn = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec, %broadcast.splat607 ; 2 uses
  %i.mo = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec618, %broadcast.splat609 ; 2 uses
  %i.mp = fmul reassoc nsz arcp contract afn <8 x float> %i.mn, %i.mn
  %i.mq = fmul reassoc nsz arcp contract afn <8 x float> %i.mo, %i.mo
  %i.mr = fadd reassoc nsz arcp contract afn <8 x float> %i.mq, %i.mp
  %i.ms = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat611, %i.mr
  %i.mt = fmul reassoc nsz arcp contract afn <8 x float> %i.ms, %i.mf ; 3 uses
  %i.mu = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.mt, splat (float 1.000000e+00)
  %i.mv = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.mt, zeroinitializer
  %i.mw = select reassoc nsz arcp contract afn <8 x i1> %i.mv, <8 x float> zeroinitializer, <8 x float> %i.mt
  %i.mx = select reassoc nsz arcp contract afn <8 x i1> %i.mu, <8 x float> splat (float 1.000000e+00), <8 x float> %i.mw ; 2 uses
  %i.my = fmul reassoc nsz arcp contract afn <8 x float> %i.mx, %i.mx
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.my, <8 x ptr> align 4 %wide.gep617, <8 x i1> splat (i1 true)), !tbaa !22
  %index.next619 = add nuw i64 %index615, 8       ; 2 uses
  %vec.ind.next620 = add nuw nsw <8 x i64> %vec.ind616, splat (i64 8)
  %i.mz = icmp eq i64 %index.next619, %n.vec603
  br i1 %i.mz, label %middle.block621, label %vector.body614, !llvm.loop !200

middle.block621:                                  ; preds = %vector.body614
  br i1 %cmp.n622, label %._crit_edge469, label %scalar.ph600.preheader

scalar.ph600.preheader:                           ; preds = %.preheader, %middle.block621
  %indvars.iv496.ph = phi i64 [ 0, %.preheader ], [ %n.vec603, %middle.block621 ]
  br label %scalar.ph600

._crit_edge472.split:                             ; preds = %._crit_edge469
  %i.na = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !123
  %i.nb = and i32 %i.na, 4112
  %or.cond422.not = icmp eq i32 %i.nb, 4112
  br i1 %or.cond422.not, label %bb.x, label %bb.y

._crit_edge469:                                   ; preds = %scalar.ph600, %middle.block621
  %indvars.iv.next502 = add nuw nsw i64 %indvars.iv501, 1 ; 2 uses
  %exitcond506.not = icmp eq i64 %indvars.iv.next502, %wide.trip.count505
  br i1 %exitcond506.not, label %._crit_edge472.split, label %.preheader

scalar.ph600:                                     ; preds = %scalar.ph600.preheader, %scalar.ph600
  %indvars.iv496 = phi i64 [ %indvars.iv.next497, %scalar.ph600 ], [ %indvars.iv496.ph, %scalar.ph600.preheader ] ; 2 uses
  %i.nc = add nuw nsw i64 %i.mj, %indvars.iv496
  %.idx437 = shl nuw nsw i64 %i.nc, 3
  %i.nd = getelementptr inbounds nuw i8, ptr %i.ig, i64 %.idx437 ; 3 uses
  %i.ne = load float, ptr %i.nd, align 8, !tbaa !22
  %i.nf = fsub reassoc nsz arcp contract afn float %i.ne, %i.mg ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nd, i64 4
  %i.nh = load float, ptr %i.ng, align 4, !tbaa !22
  %i.ni = fsub reassoc nsz arcp contract afn float %i.nh, %i.mh ; 2 uses
  %.neg438 = fmul reassoc nsz arcp contract afn float %i.nf, %i.nf
  %.neg439 = fmul reassoc nsz arcp contract afn float %i.ni, %i.ni
  %reass.add = fadd reassoc nsz arcp contract afn float %.neg439, %.neg438
  %i.nj = fsub reassoc nsz arcp contract afn float %i.ai, %reass.add
  %i.nk = fmul reassoc nsz arcp contract afn float %i.nj, %i.mi ; 3 uses
  %i.nl = fcmp reassoc nsz arcp contract afn ogt float %i.nk, 1.000000e+00
  %i.nm = fcmp reassoc nsz arcp contract afn olt float %i.nk, 0.000000e+00
  %i.nn = select reassoc nsz arcp contract afn i1 %i.nm, float 0.000000e+00, float %i.nk
  %i.no = select reassoc nsz arcp contract afn i1 %i.nl, float 1.000000e+00, float %i.nn ; 2 uses
  %i.np = fmul reassoc nsz arcp contract afn float %i.no, %i.no
  store float %i.np, ptr %i.nd, align 8, !tbaa !22
  %indvars.iv.next497 = add nuw nsw i64 %indvars.iv496, 1 ; 2 uses
  %exitcond500.not = icmp eq i64 %indvars.iv.next497, %wide.trip.count499
  br i1 %exitcond500.not, label %._crit_edge469, label %scalar.ph600, !llvm.loop !201

bb.x:                                             ; preds = %._crit_edge472.split
  %i.nq = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.nr = call i32 @gettimeofday(ptr noundef nonnull %7, ptr noundef null) #14 ; 0 uses
  %i.ns = load i64, ptr %7, align 8, !tbaa !125
  %i.nt = add nsw i64 %i.ns, -1290608000
  %i.nu = sitofp reassoc nsz arcp contract afn i64 %i.nt to double
  %i.nv = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !126
  %i.nx = sitofp reassoc nsz arcp contract afn i64 %i.nw to double
  %i.ny = fmul reassoc nnan nsz arcp contract afn double %i.nx, f0x3EB0C6F7A0B5ED8D
  %i.nz = fadd reassoc nsz arcp contract afn double %i.ny, %i.nu ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  %i.oa = fsub reassoc nsz arcp contract afn double %i.nz, %.4
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.10, ptr noundef nonnull %i.nq, double noundef %i.oa) #14
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge472.split
  %.5 = phi nsz double [ %.4, %._crit_edge472.split ], [ %i.nz, %bb.x ]
  %i.ob = extractelement <2 x i32> %i.gb, i64 0
  %i.oc = mul i32 %i.ob, %i.ar
  %i.od = tail call i32 @llvm.smin.i32(i32 %i.bb, i32 %i.oc) ; 2 uses
  %i.oe = mul nsw i32 %i.ii, %i.ar
  %i.of = tail call i32 @llvm.smin.i32(i32 %i.be, i32 %i.oe) ; 2 uses
  %i.og = mul nsw i32 %i.ij, %i.ar                ; 2 uses
  %i.oh = icmp slt i32 %i.og, %i.of
  br i1 %i.oh, label %.lr.ph479, label %._crit_edge480.split

.lr.ph479:                                        ; preds = %bb.y
  %i.oi = extractelement <2 x i32> %i.fs, i64 0   ; 2 uses
  %i.oj = mul nsw i32 %i.oi, %i.ar                ; 3 uses
  %i.ok = icmp slt i32 %i.oj, %i.od
  br i1 %i.ok, label %.lr.ph475.preheader, label %._crit_edge480.split

.lr.ph475.preheader:                              ; preds = %.lr.ph479
  %i.ol = mul nuw nsw i32 %i.ar, %i.ar
  %i.om = uitofp nsz nneg i32 %i.ol to float      ; 2 uses
  %i.on = sext i32 %i.oj to i64                   ; 4 uses
  %i.oo = sext i32 %i.og to i64
  %wide.trip.count515 = sext i32 %i.of to i64
  %wide.trip.count510 = sext i32 %i.od to i64     ; 2 uses
  %i.op = zext i32 %i.ia to i64
  %i.oq = sub nsw i64 %wide.trip.count510, %i.on  ; 3 uses
  %min.iters.check625 = icmp ult i64 %i.oq, 8
  %n.vec627 = and i64 %i.oq, -8                   ; 3 uses
  %i.or = add nsw i64 %n.vec627, %i.on
  %broadcast.splatinsert634 = insertelement <8 x i32> poison, i32 %i.ar, i64 0
  %broadcast.splat635 = shufflevector <8 x i32> %broadcast.splatinsert634, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat637 = shufflevector <2 x i32> %i.fs, <2 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat639 = shufflevector <2 x i64> %i.ge, <2 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert640 = insertelement <8 x float> poison, float %i.om, i64 0
  %broadcast.splat641 = shufflevector <8 x float> %broadcast.splatinsert640, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert642 = insertelement <8 x i32> poison, i32 %i.oj, i64 0
  %broadcast.splat643 = shufflevector <8 x i32> %broadcast.splatinsert642, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction644 = add <8 x i32> %broadcast.splat643, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.os = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat641
  %cmp.n658 = icmp eq i64 %i.oq, %n.vec627
  %i.ot = zext i32 %i.ia to i64
  %i.ou = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.om
  br label %.lr.ph475

._crit_edge480.split:                             ; preds = %._crit_edge476, %.lr.ph479, %bb.y
  tail call void @free(ptr noundef nonnull %i.ig) #14
  %i.ov = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !123 ; 2 uses
  %i.ow = and i32 %i.ov, 4112
  %or.cond423.not = icmp eq i32 %i.ow, 4112
  br i1 %or.cond423.not, label %bb.z, label %bb.aa

.lr.ph475:                                        ; preds = %.lr.ph475.preheader, %._crit_edge476
  %indvars.iv512 = phi i64 [ %i.oo, %.lr.ph475.preheader ], [ %indvars.iv.next513, %._crit_edge476 ] ; 3 uses
  %i.ox = trunc nsw i64 %indvars.iv512 to i32     ; 2 uses
  %i.oy = srem i32 %i.ox, %i.ar                   ; 2 uses
  %i.oz = sdiv i32 %i.ox, %i.ar
  %i.pa = sub nsw i32 %i.oz, %i.ij
  %i.pb = sext i32 %i.pa to i64
  %i.pc = mul nsw i64 %i.pb, %i.op                ; 2 uses
  %i.pd = sub nsw i32 %i.ar, %i.oy
  %i.pe = sitofp reassoc nsz arcp contract afn i32 %i.pd to float ; 2 uses
  %i.pf = sitofp reassoc nsz arcp contract afn i32 %i.oy to float ; 2 uses
  %i.pg = mul nsw i64 %indvars.iv512, %i.bc
  %i.ph = getelementptr [4 x i8], ptr %4, i64 %i.pg ; 2 uses
  br i1 %min.iters.check625, label %scalar.ph624.preheader, label %vector.ph626

vector.ph626:                                     ; preds = %.lr.ph475
  %broadcast.splatinsert628 = insertelement <8 x i64> poison, i64 %i.pc, i64 0
  %broadcast.splat629 = shufflevector <8 x i64> %broadcast.splatinsert628, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert630 = insertelement <8 x float> poison, float %i.pe, i64 0
  %broadcast.splat631 = shufflevector <8 x float> %broadcast.splatinsert630, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert632 = insertelement <8 x float> poison, float %i.pf, i64 0
  %broadcast.splat633 = shufflevector <8 x float> %broadcast.splatinsert632, <8 x float> poison, <8 x i32> zeroinitializer
  %invariant.op672 = add <8 x i64> %broadcast.splat629, %broadcast.splat639
  %invariant.gep = getelementptr [4 x i8], ptr %i.ph, i64 %i.on
  br label %vector.body645

vector.body645:                                   ; preds = %vector.body645, %vector.ph626
  %index646 = phi i64 [ 0, %vector.ph626 ], [ %index.next655, %vector.body645 ] ; 2 uses
  %vec.ind647 = phi <8 x i32> [ %induction644, %vector.ph626 ], [ %vec.ind.next656, %vector.body645 ] ; 2 uses
  %vec.ind647.frozen = freeze <8 x i32> %vec.ind647 ; 2 uses
  %broadcast.splat635.frozen = freeze <8 x i32> %broadcast.splat635 ; 2 uses
  %i.pi = sdiv <8 x i32> %vec.ind647.frozen, %broadcast.splat635.frozen ; 2 uses
  %i.pj = mul <8 x i32> %i.pi, %broadcast.splat635.frozen
  %.decomposed = sub <8 x i32> %vec.ind647.frozen, %i.pj ; 2 uses
  %i.pk = sub nsw <8 x i32> %i.pi, %broadcast.splat637
  %i.pl = sext <8 x i32> %i.pk to <8 x i64>       ; 2 uses
  %i.pm = add nsw <8 x i64> %broadcast.splat629, %i.pl
  %i.pn = shl nsw <8 x i64> %i.pm, splat (i64 3)
  %wide.gep648.a = getelementptr inbounds nuw i8, ptr %i.ig, <8 x i64> %i.pn ; 2 uses
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep648.a, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22
  %i.po = sub nsw <8 x i32> %broadcast.splat635, %.decomposed
  %i.pp = sitofp reassoc nsz arcp contract afn <8 x i32> %i.po to <8 x float> ; 2 uses
  %i.pq = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, %i.pp
  %wide.gep649 = getelementptr i8, <8 x ptr> %wide.gep648.a, i64 8
  %wide.masked.gather650 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep649, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22
  %i.pr = sitofp reassoc nsz arcp contract afn <8 x i32> %.decomposed to <8 x float> ; 2 uses
  %i.ps = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather650, %i.pr
  %i.pt = fadd reassoc nsz arcp contract afn <8 x float> %i.ps, %i.pq
  %i.pu = fmul reassoc nsz arcp contract afn <8 x float> %i.pt, %broadcast.splat631
  %.reass673 = add <8 x i64> %i.pl, %invariant.op672
  %i.pv = shl nsw <8 x i64> %.reass673, splat (i64 3)
  %wide.gep651 = getelementptr inbounds nuw i8, ptr %i.ig, <8 x i64> %i.pv ; 2 uses
  %wide.masked.gather652 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep651, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22
  %i.pw = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather652, %i.pp
  %wide.gep653 = getelementptr i8, <8 x ptr> %wide.gep651, i64 8
  %wide.masked.gather654 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep653, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22
  %i.px = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather654, %i.pr
  %i.py = fadd reassoc nsz arcp contract afn <8 x float> %i.px, %i.pw
  %i.pz = fmul reassoc nsz arcp contract afn <8 x float> %i.py, %broadcast.splat633
  %i.qa = fadd reassoc nsz arcp contract afn <8 x float> %i.pz, %i.pu
  %i.qb = fmul reassoc nsz arcp contract afn <8 x float> %i.qa, %i.os
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index646
  store <8 x float> %i.qb, ptr %gep, align 4, !tbaa !22
  %index.next655 = add nuw i64 %index646, 8       ; 2 uses
  %vec.ind.next656 = add <8 x i32> %vec.ind647, splat (i32 8)
  %i.qc = icmp eq i64 %index.next655, %n.vec627
  br i1 %i.qc, label %middle.block657, label %vector.body645, !llvm.loop !202

middle.block657:                                  ; preds = %vector.body645
  br i1 %cmp.n658, label %._crit_edge476, label %scalar.ph624.preheader

scalar.ph624.preheader:                           ; preds = %.lr.ph475, %middle.block657
  %indvars.iv507.ph = phi i64 [ %i.on, %.lr.ph475 ], [ %i.or, %middle.block657 ]
  br label %scalar.ph624

._crit_edge476:                                   ; preds = %scalar.ph624, %middle.block657
  %indvars.iv.next513 = add nsw i64 %indvars.iv512, 1 ; 2 uses
  %exitcond516.not = icmp eq i64 %indvars.iv.next513, %wide.trip.count515
  br i1 %exitcond516.not, label %._crit_edge480.split, label %.lr.ph475

scalar.ph624:                                     ; preds = %scalar.ph624.preheader, %scalar.ph624
  %indvars.iv507 = phi i64 [ %indvars.iv.next508, %scalar.ph624 ], [ %indvars.iv507.ph, %scalar.ph624.preheader ] ; 3 uses
  %i.qd = trunc nsw i64 %indvars.iv507 to i32     ; 2 uses
  %i.qe = srem i32 %i.qd, %i.ar                   ; 2 uses
  %i.qf = sdiv i32 %i.qd, %i.ar
  %i.qg = sub nsw i32 %i.qf, %i.oi
  %i.qh = sext i32 %i.qg to i64
  %i.qi = add nsw i64 %i.pc, %i.qh                ; 2 uses
  %.idx = shl nsw i64 %i.qi, 3
  %i.qj = getelementptr inbounds nuw i8, ptr %i.ig, i64 %.idx ; 2 uses
  %i.qk = load float, ptr %i.qj, align 8, !tbaa !22
  %i.ql = sub nsw i32 %i.ar, %i.qe
  %i.qm = sitofp reassoc nsz arcp contract afn i32 %i.ql to float ; 2 uses
  %i.qn = fmul reassoc nsz arcp contract afn float %i.qk, %i.qm
  %i.qo = getelementptr i8, ptr %i.qj, i64 8
  %i.qp = load float, ptr %i.qo, align 8, !tbaa !22
  %i.qq = sitofp reassoc nsz arcp contract afn i32 %i.qe to float ; 2 uses
  %i.qr = fmul reassoc nsz arcp contract afn float %i.qp, %i.qq
  %i.qs = fadd reassoc nsz arcp contract afn float %i.qr, %i.qn
  %i.qt = fmul reassoc nsz arcp contract afn float %i.qs, %i.pe
  %i.qu = add nsw i64 %i.qi, %i.ot
  %.idx407 = shl nsw i64 %i.qu, 3
  %i.qv = getelementptr inbounds nuw i8, ptr %i.ig, i64 %.idx407 ; 2 uses
  %i.qw = load float, ptr %i.qv, align 8, !tbaa !22
  %i.qx = fmul reassoc nsz arcp contract afn float %i.qw, %i.qm
  %i.qy = getelementptr i8, ptr %i.qv, i64 8
  %i.qz = load float, ptr %i.qy, align 8, !tbaa !22
  %i.ra = fmul reassoc nsz arcp contract afn float %i.qz, %i.qq
  %reass.add442 = fadd reassoc nsz arcp contract afn float %i.ra, %i.qx
  %reass.mul443 = fmul reassoc nsz arcp contract afn float %reass.add442, %i.pf
  %i.rb = fadd reassoc nsz arcp contract afn float %reass.mul443, %i.qt
  %i.rc = fmul reassoc nsz arcp contract afn float %i.rb, %i.ou
  %i.rd = getelementptr [4 x i8], ptr %i.ph, i64 %indvars.iv507
  store float %i.rc, ptr %i.rd, align 4, !tbaa !22
  %indvars.iv.next508 = add nsw i64 %indvars.iv507, 1 ; 2 uses
  %exitcond511.not = icmp eq i64 %indvars.iv.next508, %wide.trip.count510
  br i1 %exitcond511.not, label %._crit_edge476, label %scalar.ph624, !llvm.loop !203

bb.z:                                             ; preds = %._crit_edge480.split
  %i.re = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.rf = call i32 @gettimeofday(ptr noundef nonnull %6, ptr noundef null) #14 ; 0 uses
  %i.rg = load i64, ptr %6, align 8, !tbaa !125
  %i.rh = add nsw i64 %i.rg, -1290608000
  %i.ri = sitofp reassoc nsz arcp contract afn i64 %i.rh to double
  %i.rj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.rk = load i64, ptr %i.rj, align 8, !tbaa !126
  %i.rl = sitofp reassoc nsz arcp contract afn i64 %i.rk to double
  %i.rm = fmul reassoc nnan nsz arcp contract afn double %i.rl, f0x3EB0C6F7A0B5ED8D
  %i.rn = fadd reassoc nsz arcp contract afn double %i.rm, %i.ri
end_hunk_0
