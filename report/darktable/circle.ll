Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/circle?download=true
inline.NumInlined: 75
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_circle_get_mask_roi:bb.a
  %i.cn = extractvalue { <8 x float>, <8 x float> } %i.cl, 1
  %i.co = fmul reassoc nsz arcp contract afn <8 x float> %i.cn, %broadcast.splat530 ; 4 uses
  %i.cp = fmul reassoc nsz arcp contract afn <8 x float> %i.cm, %broadcast.splat530 ; 4 uses
  %i.cq = fadd reassoc nsz arcp contract afn <8 x float> %i.co, %broadcast.splat532 ; 2 uses
  %i.cr = shl nuw nsw <8 x i64> %vec.ind, splat (i64 6)
  %wide.gep = getelementptr inbounds nuw i8, ptr %i.cd, <8 x i64> %i.cr ; 16 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cq, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !22
  %i.cs = fadd reassoc nsz arcp contract afn <8 x float> %i.cp, %broadcast.splat534 ; 2 uses
  %wide.gep536 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cs, <8 x ptr> align 4 %wide.gep536, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep537 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cq, <8 x ptr> align 4 %wide.gep537, <8 x i1> splat (i1 true)), !tbaa !22
  %i.ct = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat534, %i.cp ; 2 uses
  %wide.gep538 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 12
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ct, <8 x ptr> align 4 %wide.gep538, <8 x i1> splat (i1 true)), !tbaa !22
  %i.cu = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat532, %i.co ; 2 uses
  %wide.gep539 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 16
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cu, <8 x ptr> align 4 %wide.gep539, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep540 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 20
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cs, <8 x ptr> align 4 %wide.gep540, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep541 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 24
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cu, <8 x ptr> align 4 %wide.gep541, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep542 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 28
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ct, <8 x ptr> align 4 %wide.gep542, <8 x i1> splat (i1 true)), !tbaa !22
  %i.cv = fadd reassoc nsz arcp contract afn <8 x float> %i.cp, %broadcast.splat532 ; 2 uses
  %wide.gep543 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 32
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cv, <8 x ptr> align 4 %wide.gep543, <8 x i1> splat (i1 true)), !tbaa !22
  %i.cw = fadd reassoc nsz arcp contract afn <8 x float> %i.co, %broadcast.splat534 ; 2 uses
  %wide.gep544 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 36
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cw, <8 x ptr> align 4 %wide.gep544, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep545 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 40
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cv, <8 x ptr> align 4 %wide.gep545, <8 x i1> splat (i1 true)), !tbaa !22
  %i.cx = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat534, %i.co ; 2 uses
  %wide.gep546 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 44
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cx, <8 x ptr> align 4 %wide.gep546, <8 x i1> splat (i1 true)), !tbaa !22
  %i.cy = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat532, %i.cp ; 2 uses
  %wide.gep547 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 48
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cy, <8 x ptr> align 4 %wide.gep547, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep548 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 52
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cw, <8 x ptr> align 4 %wide.gep548, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep549 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 56
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cy, <8 x ptr> align 4 %wide.gep549, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep550 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 60
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cx, <8 x ptr> align 4 %wide.gep550, <8 x i1> splat (i1 true)), !tbaa !22
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %vec.ind.next551 = add <8 x i32> %vec.ind535, splat (i32 8)
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !192

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
  %.idx527 = shl nuw nsw i64 %indvars.iv, 6
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx527 ; 2 uses
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
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !193

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
  %.epil.init = phi <2 x float> [ splat (float f0x00800000), %.lr.ph454.preheader ], [ %i.hh, %._crit_edge455.loopexit.unr-lcssa ] ; 4 uses
  %.epil.init659 = phi <2 x float> [ splat (float f0x7F7FFFFF), %.lr.ph454.preheader ], [ %i.hi, %._crit_edge455.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod662 = trunc i32 %i.ca to i1
  tail call void @llvm.assume(i1 %lcmp.mod662)
  %.idx528.epil = shl nuw nsw i64 %indvars.iv483.epil.init, 3
  %i.er = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx528.epil ; 3 uses
  %i.es = load float, ptr %i.er, align 8, !tbaa !22
  %i.et = tail call i1 @llvm.is.fpclass.f32(float %i.es, /* (nan inf zero sub) */ i32 759)
  br i1 %i.et, label %._crit_edge455, label %bb.i

bb.i:                                             ; preds = %.lr.ph454.epil.preheader
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !22
  %i.ew = tail call i1 @llvm.is.fpclass.f32(float %i.ev, /* (nan inf zero sub) */ i32 759)
  br i1 %i.ew, label %._crit_edge455, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ex = load <2 x float>, ptr %i.er, align 8, !tbaa !22 ; 4 uses
  %i.ey = fcmp reassoc nsz arcp contract afn olt <2 x float> %.epil.init659, %i.ex
  %i.ez = fcmp reassoc nsz arcp contract afn ogt <2 x float> %.epil.init, %i.ex
  %i.fa = select <2 x i1> %i.ey, <2 x float> %.epil.init659, <2 x float> %i.ex
  %i.fb = select <2 x i1> %i.ez, <2 x float> %.epil.init, <2 x float> %i.ex
  br label %._crit_edge455

._crit_edge455:                                   ; preds = %._crit_edge455.loopexit.unr-lcssa, %bb.j, %bb.i, %.lr.ph454.epil.preheader, %bb.h
  %i.fc = phi <2 x float> [ splat (float f0x00800000), %bb.h ], [ %i.hh, %._crit_edge455.loopexit.unr-lcssa ], [ %i.fb, %bb.j ], [ %.epil.init, %bb.i ], [ %.epil.init, %.lr.ph454.epil.preheader ]
  %i.fd = phi <2 x float> [ splat (float f0x7F7FFFFF), %bb.h ], [ %i.hi, %._crit_edge455.loopexit.unr-lcssa ], [ %i.fa, %bb.j ], [ %.epil.init659, %bb.i ], [ %.epil.init659, %.lr.ph454.epil.preheader ]
  %i.fe = insertelement <2 x float> poison, float %i.am, i64 0
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fg = fmul reassoc nsz arcp contract afn <2 x float> %i.fd, %i.ff
  %i.fh = sitofp reassoc nsz arcp contract afn <2 x i32> %i.au to <2 x float> ; 2 uses
  %i.fi = fmul reassoc nsz arcp contract afn <2 x float> %i.fc, %i.ff
  %i.fj = fsub reassoc nsz arcp contract afn <2 x float> %i.fg, %i.fh
  %i.fk = tail call reassoc nsz arcp contract afn <2 x float> @llvm.floor.v2f32(<2 x float> %i.fj)
  %i.fl = fptosi <2 x float> %i.fk to <2 x i32>
  %i.fm = sdiv <2 x i32> %i.fl, %i.az             ; 2 uses
  %i.fn = add nsw <2 x i32> %i.fm, splat (i32 -1) ; 2 uses
  %i.fo = icmp sgt <2 x i32> %i.fn, %i.ba
  %i.fp = icmp sgt <2 x i32> %i.fm, zeroinitializer
  %i.fq = select <2 x i1> %i.fp, <2 x i32> %i.fn, <2 x i32> zeroinitializer
  %i.fr = select <2 x i1> %i.fo, <2 x i32> %i.ba, <2 x i32> %i.fq ; 7 uses
  %i.fs = fsub reassoc nsz arcp contract afn <2 x float> %i.fi, %i.fh
  %i.ft = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.fs)
  %i.fu = fptosi <2 x float> %i.ft to <2 x i32>
  %i.fv = sdiv <2 x i32> %i.fu, %i.az             ; 2 uses
  %i.fw = add nsw <2 x i32> %i.fv, splat (i32 2)  ; 2 uses
  %i.fx = icmp sgt <2 x i32> %i.fw, %i.ba
  %i.fy = icmp slt <2 x i32> %i.fv, splat (i32 -2)
  %i.fz = select <2 x i1> %i.fy, <2 x i32> zeroinitializer, <2 x i32> %i.fw
  %i.ga = select <2 x i1> %i.fx, <2 x i32> %i.ba, <2 x i32> %i.fz ; 5 uses
  %i.gb = sub <2 x i32> %i.ga, %i.fr
  %.fr = freeze <2 x i32> %i.gb                   ; 4 uses
  %i.gc = add nuw <2 x i32> %.fr, splat (i32 1)   ; 3 uses
  %i.gd = zext <2 x i32> %i.gc to <2 x i64>
  tail call void @free(ptr noundef nonnull %i.cd) #14
  %i.ge = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !123
  %i.gf = and i32 %i.ge, 4112
  %or.cond419.not = icmp eq i32 %i.gf, 4112
  br i1 %or.cond419.not, label %bb.p, label %bb.q

.lr.ph454:                                        ; preds = %bb.o, %.lr.ph454.preheader.new
  %indvars.iv483 = phi i64 [ 0, %.lr.ph454.preheader.new ], [ %indvars.iv.next484.1, %bb.o ] ; 3 uses
  %i.gg = phi <2 x float> [ splat (float f0x00800000), %.lr.ph454.preheader.new ], [ %i.hh, %bb.o ] ; 4 uses
  %i.gh = phi <2 x float> [ splat (float f0x7F7FFFFF), %.lr.ph454.preheader.new ], [ %i.hi, %bb.o ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph454.preheader.new ], [ %niter.next.1, %bb.o ]
  %.idx528 = shl nuw nsw i64 %indvars.iv483, 3
  %i.gi = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx528 ; 3 uses
  %i.gj = load float, ptr %i.gi, align 16, !tbaa !22
  %i.gk = tail call i1 @llvm.is.fpclass.f32(float %i.gj, /* (nan inf zero sub) */ i32 759)
  br i1 %i.gk, label %.lr.ph454.1, label %bb.k

bb.k:                                             ; preds = %.lr.ph454
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !22
  %i.gn = tail call i1 @llvm.is.fpclass.f32(float %i.gm, /* (nan inf zero sub) */ i32 759)
  br i1 %i.gn, label %.lr.ph454.1, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.go = load <2 x float>, ptr %i.gi, align 16, !tbaa !22 ; 4 uses
  %i.gp = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.gh, %i.go
  %i.gq = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.gg, %i.go
  %i.gr = select <2 x i1> %i.gp, <2 x float> %i.gh, <2 x float> %i.go
  %i.gs = select <2 x i1> %i.gq, <2 x float> %i.gg, <2 x float> %i.go
  br label %.lr.ph454.1

.lr.ph454.1:                                      ; preds = %.lr.ph454, %bb.k, %bb.l
  %i.gt = phi <2 x float> [ %i.gs, %bb.l ], [ %i.gg, %bb.k ], [ %i.gg, %.lr.ph454 ] ; 4 uses
  %i.gu = phi <2 x float> [ %i.gr, %bb.l ], [ %i.gh, %bb.k ], [ %i.gh, %.lr.ph454 ] ; 4 uses
  %indvars.iv.next484 = shl i64 %indvars.iv483, 3
  %i.gv = getelementptr inbounds nuw i8, ptr %i.cd, i64 %indvars.iv.next484 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8 ; 2 uses
  %i.gx = load float, ptr %i.gw, align 8, !tbaa !22
  %i.gy = tail call i1 @llvm.is.fpclass.f32(float %i.gx, /* (nan inf zero sub) */ i32 759)
  br i1 %i.gy, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.lr.ph454.1
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 12
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !22
  %i.hb = tail call i1 @llvm.is.fpclass.f32(float %i.ha, /* (nan inf zero sub) */ i32 759)
  br i1 %i.hb, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.hc = load <2 x float>, ptr %i.gw, align 8, !tbaa !22 ; 4 uses
  %i.hd = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.gu, %i.hc
  %i.he = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.gt, %i.hc
  %i.hf = select <2 x i1> %i.hd, <2 x float> %i.gu, <2 x float> %i.hc
  %i.hg = select <2 x i1> %i.he, <2 x float> %i.gt, <2 x float> %i.hc
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %.lr.ph454.1
  %i.hh = phi <2 x float> [ %i.hg, %bb.n ], [ %i.gt, %bb.m ], [ %i.gt, %.lr.ph454.1 ] ; 3 uses
  %i.hi = phi <2 x float> [ %i.hf, %bb.n ], [ %i.gu, %bb.m ], [ %i.gu, %.lr.ph454.1 ] ; 3 uses
  %indvars.iv.next484.1 = add nuw nsw i64 %indvars.iv483, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge455.loopexit.unr-lcssa, label %.lr.ph454

bb.p:                                             ; preds = %._crit_edge455
  %i.hj = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  %i.hk = call i32 @gettimeofday(ptr noundef nonnull %10, ptr noundef null) #14 ; 0 uses
  %i.hl = load i64, ptr %10, align 8, !tbaa !125
  %i.hm = add nsw i64 %i.hl, -1290608000
  %i.hn = sitofp reassoc nsz arcp contract afn i64 %i.hm to double
  %i.ho = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !126
  %i.hq = sitofp reassoc nsz arcp contract afn i64 %i.hp to double
  %i.hr = fmul reassoc nnan nsz arcp contract afn double %i.hq, f0x3EB0C6F7A0B5ED8D
  %i.hs = fadd reassoc nsz arcp contract afn double %i.hr, %i.hn ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  %i.ht = fsub reassoc nsz arcp contract afn double %i.hs, %.1
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.15, ptr noundef nonnull %i.hj, double noundef %i.ht) #14
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge455
  %.2432 = phi nsz double [ %.1, %._crit_edge455 ], [ %i.hs, %bb.p ] ; 2 uses
  %i.hu = icmp slt <2 x i32> %.fr, splat (i32 1)
  %14 = bitcast <2 x i1> %i.hu to i2
  %or.cond.not = icmp eq i2 %14, 0
  br i1 %or.cond.not, label %bb.r, label %bb.ac

bb.r:                                             ; preds = %bb.q
  %i.hv = extractelement <2 x i32> %i.gc, i64 0   ; 12 uses
  %i.hw = zext i32 %i.hv to i64
  %i.hx = extractelement <2 x i32> %i.gc, i64 1
  %i.hy = zext i32 %i.hx to i64
  %i.hz = mul nuw nsw i64 %i.hy, %i.hw            ; 2 uses
  %i.ia = shl i64 %i.hz, 3
  %i.ib = tail call ptr @dt_alloc_aligned(i64 noundef %i.ia) #14 ; 17 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ib, i64 64) ]
  %i.ic = icmp eq ptr %i.ib, null
  br i1 %i.ic, label %bb.ac, label %.preheader445

.preheader445:                                    ; preds = %bb.r
  %i.id = extractelement <2 x i32> %i.ga, i64 1   ; 3 uses
  %i.ie = extractelement <2 x i32> %i.fr, i64 1   ; 5 uses
  %.not393463 = icmp sgt i32 %i.ie, %i.id
  br i1 %.not393463, label %._crit_edge465.split, label %.preheader444.lr.ph

.preheader444.lr.ph:                              ; preds = %.preheader445
  %i.if = extractelement <2 x i32> %i.fr, i64 0
  %i.ig = icmp sgt <2 x i32> %i.fr, %i.ga
  %.not410459 = extractelement <2 x i1> %i.ig, i64 0
  %i.ih = sext i32 %i.if to i64                   ; 6 uses
  br i1 %.not410459, label %._crit_edge465.split, label %.preheader444.preheader

.preheader444.preheader:                          ; preds = %.preheader444.lr.ph
  %i.ii = sext i32 %i.ie to i64                   ; 2 uses
  %i.ij = add <2 x i32> %i.ga, splat (i32 1)      ; 2 uses
  %i.ik = extractelement <2 x i32> %.fr, i64 0    ; 2 uses
  %i.il = extractelement <2 x i32> %i.au, i64 1
  %i.im = extractelement <2 x i32> %i.ij, i64 1
  %i.in = zext i32 %i.hv to i64
  %min.iters.check553 = icmp ult i32 %i.ik, 3
  %min.iters.check554 = icmp ult i32 %i.ik, 31
  %i.io = zext i32 %i.hv to i64                   ; 2 uses
  %i.ip = and i64 %i.io, 28
  %n.vec556 = and i64 %i.io, 4294967264           ; 4 uses
  %i.iq = add nsw i64 %n.vec556, %i.ih            ; 2 uses
  %broadcast.splatinsert559 = insertelement <8 x i32> poison, i32 %i.ar, i64 0
  %broadcast.splat560 = shufflevector <8 x i32> %broadcast.splatinsert559, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat562 = shufflevector <2 x i32> %i.au, <2 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert563 = insertelement <8 x float> poison, float %i.an, i64 0
  %broadcast.splat564 = shufflevector <8 x float> %broadcast.splatinsert563, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat566 = shufflevector <2 x i32> %i.fr, <2 x i32> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i32> %broadcast.splat566, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ir = zext i32 %i.hv to i64
  %cmp.n576 = icmp eq i64 %n.vec556, %i.ir
  %min.epilog.iters.check = icmp eq i64 %i.ip, 0
  %i.is = and i32 %i.hv, -4                       ; 2 uses
  %n.vec578 = zext i32 %i.is to i64               ; 2 uses
  %i.it = add nsw i64 %n.vec578, %i.ih
  %broadcast.splatinsert581 = insertelement <4 x i32> poison, i32 %i.ar, i64 0
  %broadcast.splat582 = shufflevector <4 x i32> %broadcast.splatinsert581, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splat584 = shufflevector <2 x i32> %i.au, <2 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert585 = insertelement <4 x float> poison, float %i.an, i64 0
  %broadcast.splat586 = shufflevector <4 x float> %broadcast.splatinsert585, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n595 = icmp eq i32 %i.is, %i.hv
  %i.iu = extractelement <2 x i32> %i.au, i64 0
  %i.iv = extractelement <2 x i32> %i.ij, i64 0
  br label %iter.check

iter.check:                                       ; preds = %.preheader444.preheader, %._crit_edge462
  %indvars.iv491 = phi i64 [ %i.ii, %.preheader444.preheader ], [ %indvars.iv.next492, %._crit_edge462 ] ; 3 uses
  %i.iw = sub nsw i64 %indvars.iv491, %i.ii
  %i.ix = mul nuw nsw i64 %i.iw, %i.in            ; 3 uses
  %i.iy = sub i64 %i.ix, %i.ih                    ; 4 uses
  %i.iz = trunc i64 %indvars.iv491 to i32
  %i.ja = mul i32 %i.ar, %i.iz
  %i.jb = add i32 %i.ja, %i.il
  %i.jc = sitofp reassoc nsz arcp contract afn i32 %i.jb to float
  %i.jd = fmul reassoc nsz arcp contract afn float %i.an, %i.jc ; 3 uses
  br i1 %min.iters.check553, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check554, label %vec.epilog.ph, label %vector.ph555

vector.ph555:                                     ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert557 = insertelement <8 x float> poison, float %i.jd, i64 0 ; 4 uses
  %invariant.op = add i64 8, %i.iy
  %invariant.op665 = add i64 16, %i.iy
  %invariant.op667 = add i64 24, %i.iy
  br label %vector.body567

vector.body567:                                   ; preds = %vector.ph555, %vector.body567
  %index568 = phi i64 [ 0, %vector.ph555 ], [ %index.next573, %vector.body567 ] ; 3 uses
  %vec.ind569 = phi <8 x i32> [ %induction, %vector.ph555 ], [ %vec.ind.next574, %vector.body567 ] ; 5 uses
  %step.add = add <8 x i32> %vec.ind569, splat (i32 8)
  %step.add.2 = add <8 x i32> %vec.ind569, splat (i32 16)
  %step.add.3 = add <8 x i32> %vec.ind569, splat (i32 24)
  %i.je = add i64 %index568, %i.ih                ; 3 uses
  %i.jf = add i64 %index568, %i.ix
  %.reass = add i64 %i.je, %invariant.op
  %.reass666 = add i64 %i.je, %invariant.op665
  %.reass668 = add i64 %i.je, %invariant.op667
  %i.jg = mul <8 x i32> %broadcast.splat560, %vec.ind569
  %i.jh = mul <8 x i32> %broadcast.splat560, %step.add
  %i.ji = mul <8 x i32> %broadcast.splat560, %step.add.2
  %i.jj = mul <8 x i32> %broadcast.splat560, %step.add.3
  %i.jk = add <8 x i32> %i.jg, %broadcast.splat562
  %i.jl = add <8 x i32> %i.jh, %broadcast.splat562
  %i.jm = add <8 x i32> %i.ji, %broadcast.splat562
  %i.jn = add <8 x i32> %i.jj, %broadcast.splat562
  %i.jo = sitofp reassoc nsz arcp contract afn <8 x i32> %i.jk to <8 x float>
  %i.jp = sitofp reassoc nsz arcp contract afn <8 x i32> %i.jl to <8 x float>
  %i.jq = sitofp reassoc nsz arcp contract afn <8 x i32> %i.jm to <8 x float>
  %i.jr = sitofp reassoc nsz arcp contract afn <8 x i32> %i.jn to <8 x float>
  %i.js = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat564, %i.jo
  %i.jt = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat564, %i.jp
  %i.ju = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat564, %i.jq
  %i.jv = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat564, %i.jr
  %i.jw = shl i64 %i.jf, 3
  %i.jx = shl i64 %.reass, 3
  %i.jy = shl i64 %.reass666, 3
  %i.jz = shl i64 %.reass668, 3
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.jw
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.jx
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.jy
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.jz
  %interleaved.vec = shufflevector <8 x float> %i.js, <8 x float> %broadcast.splatinsert557, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec, ptr %i.ka, align 8, !tbaa !22
  %interleaved.vec570 = shufflevector <8 x float> %i.jt, <8 x float> %broadcast.splatinsert557, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec570, ptr %i.kb, align 8, !tbaa !22
  %interleaved.vec571 = shufflevector <8 x float> %i.ju, <8 x float> %broadcast.splatinsert557, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec571, ptr %i.kc, align 8, !tbaa !22
  %interleaved.vec572 = shufflevector <8 x float> %i.jv, <8 x float> %broadcast.splatinsert557, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec572, ptr %i.kd, align 8, !tbaa !22
  %index.next573 = add nuw i64 %index568, 32      ; 2 uses
  %vec.ind.next574 = add <8 x i32> %vec.ind569, splat (i32 32)
  %i.ke = icmp eq i64 %index.next573, %n.vec556
  br i1 %i.ke, label %middle.block575, label %vector.body567, !llvm.loop !194

middle.block575:                                  ; preds = %vector.body567
  br i1 %cmp.n576, label %._crit_edge462, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block575
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !127

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec556, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val577 = phi i64 [ %i.iq, %vec.epilog.iter.check ], [ %i.ih, %vector.main.loop.iter.check ]
  %broadcast.splatinsert579 = insertelement <4 x float> poison, float %i.jd, i64 0
  %i.kf = trunc i64 %bc.resume.val577 to i32
  %broadcast.splatinsert587 = insertelement <4 x i32> poison, i32 %i.kf, i64 0
  %broadcast.splat588 = shufflevector <4 x i32> %broadcast.splatinsert587, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction589 = add <4 x i32> %broadcast.splat588, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index590 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next593, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind591 = phi <4 x i32> [ %induction589, %vec.epilog.ph ], [ %vec.ind.next594, %vec.epilog.vector.body ] ; 2 uses
  %i.kg = add i64 %index590, %i.ix
  %i.kh = mul <4 x i32> %broadcast.splat582, %vec.ind591
  %i.ki = add <4 x i32> %i.kh, %broadcast.splat584
  %i.kj = sitofp reassoc nsz arcp contract afn <4 x i32> %i.ki to <4 x float>
  %i.kk = fmul reassoc nsz arcp contract afn <4 x float> %broadcast.splat586, %i.kj
  %i.kl = shl i64 %i.kg, 3
  %i.km = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.kl
  %interleaved.vec592 = shufflevector <4 x float> %i.kk, <4 x float> %broadcast.splatinsert579, <8 x i32> <i32 0, i32 4, i32 1, i32 4, i32 2, i32 4, i32 3, i32 4>
  store <8 x float> %interleaved.vec592, ptr %i.km, align 8, !tbaa !22
  %index.next593 = add nuw i64 %index590, 4       ; 2 uses
  %vec.ind.next594 = add <4 x i32> %vec.ind591, splat (i32 4)
  %i.kn = icmp eq i64 %index.next593, %n.vec578
  br i1 %i.kn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !195

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n595, label %._crit_edge462, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv487.ph = phi i64 [ %i.ih, %iter.check ], [ %i.iq, %vec.epilog.iter.check ], [ %i.it, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge465.split:                             ; preds = %._crit_edge462, %.preheader444.lr.ph, %.preheader445
  %i.ko = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !123
  %i.kp = and i32 %i.ko, 4112
  %or.cond420.not = icmp eq i32 %i.kp, 4112
  br i1 %or.cond420.not, label %bb.s, label %bb.t

._crit_edge462:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block575
  %indvars.iv.next492 = add nsw i64 %indvars.iv491, 1 ; 2 uses
  %lftr.wideiv494 = trunc i64 %indvars.iv.next492 to i32
  %exitcond495.not = icmp eq i32 %i.im, %lftr.wideiv494
  br i1 %exitcond495.not, label %._crit_edge465.split, label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv487 = phi i64 [ %indvars.iv.next488, %vec.epilog.scalar.ph ], [ %indvars.iv487.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.kq = add i64 %i.iy, %indvars.iv487
  %i.kr = trunc i64 %indvars.iv487 to i32
  %i.ks = mul i32 %i.ar, %i.kr
  %i.kt = add i32 %i.ks, %i.iu
  %i.ku = sitofp reassoc nsz arcp contract afn i32 %i.kt to float
  %i.kv = fmul reassoc nsz arcp contract afn float %i.an, %i.ku
  %.idx436 = shl i64 %i.kq, 3
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ib, i64 %.idx436 ; 2 uses
  store float %i.kv, ptr %i.kw, align 8, !tbaa !22
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 4
  store float %i.jd, ptr %i.kx, align 4, !tbaa !22
  %indvars.iv.next488 = add nsw i64 %indvars.iv487, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next488 to i32
  %exitcond490.not = icmp eq i32 %i.iv, %lftr.wideiv
  br i1 %exitcond490.not, label %._crit_edge462, label %vec.epilog.scalar.ph, !llvm.loop !196

bb.s:                                             ; preds = %._crit_edge465.split
  %i.ky = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.kz = call i32 @gettimeofday(ptr noundef nonnull %9, ptr noundef null) #14 ; 0 uses
  %i.la = load i64, ptr %9, align 8, !tbaa !125
  %i.lb = add nsw i64 %i.la, -1290608000
  %i.lc = sitofp reassoc nsz arcp contract afn i64 %i.lb to double
  %i.ld = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !126
  %i.lf = sitofp reassoc nsz arcp contract afn i64 %i.le to double
  %i.lg = fmul reassoc nnan nsz arcp contract afn double %i.lf, f0x3EB0C6F7A0B5ED8D
  %i.lh = fadd reassoc nsz arcp contract afn double %i.lg, %i.lc ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.li = fsub reassoc nsz arcp contract afn double %i.lh, %.2432
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.16, ptr noundef nonnull %i.ky, double noundef %i.li) #14
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge465.split
  %.3 = phi nsz double [ %.2432, %._crit_edge465.split ], [ %i.lh, %bb.s ] ; 2 uses
  %i.lj = tail call i32 @dt_dev_distort_backtransform_plus(ptr noundef %i.df, ptr noundef nonnull %i.q, double noundef %i.di, i32 noundef 3, ptr noundef nonnull %i.ib, i64 noundef %i.hz) #14
  %.not396 = icmp eq i32 %i.lj, 0
  br i1 %.not396, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @free(ptr noundef nonnull %i.ib) #14
  br label %bb.ac

bb.v:                                             ; preds = %bb.t
  %i.lk = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !123
  %i.ll = and i32 %i.lk, 4112
  %or.cond421.not = icmp eq i32 %i.ll, 4112
  br i1 %or.cond421.not, label %bb.w, label %.preheader.preheader

bb.w:                                             ; preds = %bb.v
  %i.lm = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.ln = call i32 @gettimeofday(ptr noundef nonnull %8, ptr noundef null) #14 ; 0 uses
  %i.lo = load i64, ptr %8, align 8, !tbaa !125
  %i.lp = add nsw i64 %i.lo, -1290608000
  %i.lq = sitofp reassoc nsz arcp contract afn i64 %i.lp to double
  %i.lr = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !126
  %i.lt = sitofp reassoc nsz arcp contract afn i64 %i.ls to double
  %i.lu = fmul reassoc nnan nsz arcp contract afn double %i.lt, f0x3EB0C6F7A0B5ED8D
  %i.lv = fadd reassoc nsz arcp contract afn double %i.lu, %i.lq ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %i.lw = fsub reassoc nsz arcp contract afn double %i.lv, %.3
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.11, ptr noundef nonnull %i.lm, double noundef %i.lw) #14
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.w, %bb.v
  %.4 = phi nsz double [ %.3, %bb.v ], [ %i.lv, %bb.w ] ; 2 uses
  %i.lx = add i32 %i.id, 1
  %i.ly = sub i32 %i.lx, %i.ie
  %wide.trip.count504 = zext i32 %i.ly to i64
  %i.lz = extractelement <2 x i32> %.fr, i64 0
  %i.ma = zext i32 %i.hv to i64
  %min.iters.check598 = icmp ult i32 %i.lz, 7
  %i.mb = and i32 %i.hv, -8                       ; 2 uses
  %n.vec600 = zext i32 %i.mb to i64               ; 2 uses
  %broadcast.splat604 = shufflevector <2 x float> %i.v, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat606 = shufflevector <2 x float> %i.v, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert607 = insertelement <8 x float> poison, float %i.ai, i64 0
  %broadcast.splat608 = shufflevector <8 x float> %broadcast.splatinsert607, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert609 = insertelement <8 x float> poison, float %i.aj, i64 0
  %broadcast.splat610 = shufflevector <8 x float> %broadcast.splatinsert609, <8 x float> poison, <8 x i32> zeroinitializer
  %i.mc = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat610
  %cmp.n619 = icmp eq i32 %i.mb, %i.hv
  %i.md = extractelement <2 x float> %i.v, i64 0
  %i.me = extractelement <2 x float> %i.v, i64 1
  %i.mf = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.aj
  %i.mg = zext i32 %i.hv to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge469
  %indvars.iv501 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next502, %._crit_edge469 ] ; 2 uses
  %i.mh = mul nuw nsw i64 %indvars.iv501, %i.ma   ; 2 uses
  br i1 %min.iters.check598, label %scalar.ph597.preheader, label %vector.ph599

vector.ph599:                                     ; preds = %.preheader
  %broadcast.splatinsert601 = insertelement <8 x i64> poison, i64 %i.mh, i64 0
  %broadcast.splat602 = shufflevector <8 x i64> %broadcast.splatinsert601, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vector.body611

vector.body611:                                   ; preds = %vector.body611, %vector.ph599
  %index612 = phi i64 [ 0, %vector.ph599 ], [ %index.next616, %vector.body611 ]
  %vec.ind613 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph599 ], [ %vec.ind.next617, %vector.body611 ] ; 2 uses
  %i.mi = add nuw nsw <8 x i64> %broadcast.splat602, %vec.ind613
  %i.mj = shl nuw nsw <8 x i64> %i.mi, splat (i64 3)
  %wide.gep614 = getelementptr inbounds nuw i8, ptr %i.ib, <8 x i64> %i.mj ; 2 uses
  %i.mk = extractelement <8 x ptr> %wide.gep614, i64 0
  %wide.vec = load <16 x float>, ptr %i.mk, align 8, !tbaa !22 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec615 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ml = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec, %broadcast.splat604 ; 2 uses
  %i.mm = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec615, %broadcast.splat606 ; 2 uses
  %i.mn = fmul reassoc nsz arcp contract afn <8 x float> %i.ml, %i.ml
  %i.mo = fmul reassoc nsz arcp contract afn <8 x float> %i.mm, %i.mm
  %i.mp = fadd reassoc nsz arcp contract afn <8 x float> %i.mo, %i.mn
  %i.mq = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat608, %i.mp
  %i.mr = fmul reassoc nsz arcp contract afn <8 x float> %i.mq, %i.mc ; 3 uses
  %i.ms = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.mr, splat (float 1.000000e+00)
  %i.mt = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.mr, zeroinitializer
  %i.mu = select reassoc nsz arcp contract afn <8 x i1> %i.mt, <8 x float> zeroinitializer, <8 x float> %i.mr
  %i.mv = select reassoc nsz arcp contract afn <8 x i1> %i.ms, <8 x float> splat (float 1.000000e+00), <8 x float> %i.mu ; 2 uses
  %i.mw = fmul reassoc nsz arcp contract afn <8 x float> %i.mv, %i.mv
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.mw, <8 x ptr> align 4 %wide.gep614, <8 x i1> splat (i1 true)), !tbaa !22
  %index.next616 = add nuw i64 %index612, 8       ; 2 uses
  %vec.ind.next617 = add nuw nsw <8 x i64> %vec.ind613, splat (i64 8)
  %i.mx = icmp eq i64 %index.next616, %n.vec600
  br i1 %i.mx, label %middle.block618, label %vector.body611, !llvm.loop !197

middle.block618:                                  ; preds = %vector.body611
  br i1 %cmp.n619, label %._crit_edge469, label %scalar.ph597.preheader

scalar.ph597.preheader:                           ; preds = %.preheader, %middle.block618
  %indvars.iv496.ph = phi i64 [ 0, %.preheader ], [ %n.vec600, %middle.block618 ]
  br label %scalar.ph597

._crit_edge472.split:                             ; preds = %._crit_edge469
  %i.my = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !123
  %i.mz = and i32 %i.my, 4112
  %or.cond422.not = icmp eq i32 %i.mz, 4112
  br i1 %or.cond422.not, label %bb.x, label %bb.y

._crit_edge469:                                   ; preds = %scalar.ph597, %middle.block618
  %indvars.iv.next502 = add nuw nsw i64 %indvars.iv501, 1 ; 2 uses
  %exitcond505.not = icmp eq i64 %indvars.iv.next502, %wide.trip.count504
  br i1 %exitcond505.not, label %._crit_edge472.split, label %.preheader

scalar.ph597:                                     ; preds = %scalar.ph597.preheader, %scalar.ph597
  %indvars.iv496 = phi i64 [ %indvars.iv.next497, %scalar.ph597 ], [ %indvars.iv496.ph, %scalar.ph597.preheader ] ; 2 uses
  %i.na = add nuw nsw i64 %i.mh, %indvars.iv496
  %.idx437 = shl nuw nsw i64 %i.na, 3
  %i.nb = getelementptr inbounds nuw i8, ptr %i.ib, i64 %.idx437 ; 3 uses
  %i.nc = load float, ptr %i.nb, align 8, !tbaa !22
  %i.nd = fsub reassoc nsz arcp contract afn float %i.nc, %i.md ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nb, i64 4
  %i.nf = load float, ptr %i.ne, align 4, !tbaa !22
  %i.ng = fsub reassoc nsz arcp contract afn float %i.nf, %i.me ; 2 uses
  %.neg438 = fmul reassoc nsz arcp contract afn float %i.nd, %i.nd
  %.neg439 = fmul reassoc nsz arcp contract afn float %i.ng, %i.ng
  %reass.add = fadd reassoc nsz arcp contract afn float %.neg439, %.neg438
  %i.nh = fsub reassoc nsz arcp contract afn float %i.ai, %reass.add
  %i.ni = fmul reassoc nsz arcp contract afn float %i.nh, %i.mf ; 3 uses
  %i.nj = fcmp reassoc nsz arcp contract afn ogt float %i.ni, 1.000000e+00
  %i.nk = fcmp reassoc nsz arcp contract afn olt float %i.ni, 0.000000e+00
  %i.nl = select reassoc nsz arcp contract afn i1 %i.nk, float 0.000000e+00, float %i.ni
  %i.nm = select reassoc nsz arcp contract afn i1 %i.nj, float 1.000000e+00, float %i.nl ; 2 uses
  %i.nn = fmul reassoc nsz arcp contract afn float %i.nm, %i.nm
  store float %i.nn, ptr %i.nb, align 8, !tbaa !22
  %indvars.iv.next497 = add nuw nsw i64 %indvars.iv496, 1 ; 2 uses
  %exitcond500.not = icmp eq i64 %indvars.iv.next497, %i.mg
  br i1 %exitcond500.not, label %._crit_edge469, label %scalar.ph597, !llvm.loop !198

bb.x:                                             ; preds = %._crit_edge472.split
  %i.no = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.np = call i32 @gettimeofday(ptr noundef nonnull %7, ptr noundef null) #14 ; 0 uses
  %i.nq = load i64, ptr %7, align 8, !tbaa !125
  %i.nr = add nsw i64 %i.nq, -1290608000
  %i.ns = sitofp reassoc nsz arcp contract afn i64 %i.nr to double
  %i.nt = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.nu = load i64, ptr %i.nt, align 8, !tbaa !126
  %i.nv = sitofp reassoc nsz arcp contract afn i64 %i.nu to double
  %i.nw = fmul reassoc nnan nsz arcp contract afn double %i.nv, f0x3EB0C6F7A0B5ED8D
  %i.nx = fadd reassoc nsz arcp contract afn double %i.nw, %i.ns ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  %i.ny = fsub reassoc nsz arcp contract afn double %i.nx, %.4
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.10, ptr noundef nonnull %i.no, double noundef %i.ny) #14
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge472.split
  %.5 = phi nsz double [ %.4, %._crit_edge472.split ], [ %i.nx, %bb.x ]
  %i.nz = extractelement <2 x i32> %i.ga, i64 0
  %i.oa = mul i32 %i.nz, %i.ar
  %i.ob = tail call i32 @llvm.smin.i32(i32 %i.bb, i32 %i.oa) ; 2 uses
  %i.oc = mul nsw i32 %i.id, %i.ar
  %i.od = tail call i32 @llvm.smin.i32(i32 %i.be, i32 %i.oc) ; 2 uses
  %i.oe = mul nsw i32 %i.ie, %i.ar                ; 2 uses
  %i.of = icmp slt i32 %i.oe, %i.od
  br i1 %i.of, label %.lr.ph479, label %._crit_edge480.split

.lr.ph479:                                        ; preds = %bb.y
  %i.og = extractelement <2 x i32> %i.fr, i64 0   ; 2 uses
  %i.oh = mul nsw i32 %i.og, %i.ar                ; 3 uses
  %i.oi = icmp slt i32 %i.oh, %i.ob
  br i1 %i.oi, label %.lr.ph475.preheader, label %._crit_edge480.split

.lr.ph475.preheader:                              ; preds = %.lr.ph479
  %i.oj = mul nuw nsw i32 %i.ar, %i.ar
  %i.ok = uitofp nsz nneg i32 %i.oj to float      ; 2 uses
  %i.ol = sext i32 %i.oh to i64                   ; 4 uses
  %i.om = sext i32 %i.oe to i64
  %wide.trip.count514 = sext i32 %i.od to i64
  %wide.trip.count509 = sext i32 %i.ob to i64     ; 2 uses
  %i.on = zext i32 %i.hv to i64
  %i.oo = sub nsw i64 %wide.trip.count509, %i.ol  ; 3 uses
  %min.iters.check622 = icmp ult i64 %i.oo, 8
  %n.vec624 = and i64 %i.oo, -8                   ; 3 uses
  %i.op = add nsw i64 %n.vec624, %i.ol
  %broadcast.splatinsert631 = insertelement <8 x i32> poison, i32 %i.ar, i64 0
  %broadcast.splat632 = shufflevector <8 x i32> %broadcast.splatinsert631, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat634 = shufflevector <2 x i32> %i.fr, <2 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat636 = shufflevector <2 x i64> %i.gd, <2 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert637 = insertelement <8 x float> poison, float %i.ok, i64 0
  %broadcast.splat638 = shufflevector <8 x float> %broadcast.splatinsert637, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert639 = insertelement <8 x i32> poison, i32 %i.oh, i64 0
  %broadcast.splat640 = shufflevector <8 x i32> %broadcast.splatinsert639, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction641 = add <8 x i32> %broadcast.splat640, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.oq = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat638
  %cmp.n655 = icmp eq i64 %i.oo, %n.vec624
  %i.or = zext i32 %i.hv to i64
  %i.os = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ok
  br label %.lr.ph475

._crit_edge480.split:                             ; preds = %._crit_edge476, %.lr.ph479, %bb.y
  tail call void @free(ptr noundef nonnull %i.ib) #14
  %i.ot = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !123 ; 2 uses
  %i.ou = and i32 %i.ot, 4112
  %or.cond423.not = icmp eq i32 %i.ou, 4112
  br i1 %or.cond423.not, label %bb.z, label %bb.aa

.lr.ph475:                                        ; preds = %.lr.ph475.preheader, %._crit_edge476
  %indvars.iv511 = phi i64 [ %i.om, %.lr.ph475.preheader ], [ %indvars.iv.next512, %._crit_edge476 ] ; 3 uses
  %i.ov = trunc nsw i64 %indvars.iv511 to i32     ; 2 uses
  %i.ow = srem i32 %i.ov, %i.ar                   ; 2 uses
  %i.ox = sdiv i32 %i.ov, %i.ar
  %i.oy = sub nsw i32 %i.ox, %i.ie
  %i.oz = sext i32 %i.oy to i64
  %i.pa = mul nsw i64 %i.oz, %i.on                ; 2 uses
  %i.pb = sub nsw i32 %i.ar, %i.ow
  %i.pc = sitofp reassoc nsz arcp contract afn i32 %i.pb to float ; 2 uses
  %i.pd = sitofp reassoc nsz arcp contract afn i32 %i.ow to float ; 2 uses
  %i.pe = mul nsw i64 %indvars.iv511, %i.bc
  %i.pf = getelementptr [4 x i8], ptr %4, i64 %i.pe ; 2 uses
  br i1 %min.iters.check622, label %scalar.ph621.preheader, label %vector.ph623

vector.ph623:                                     ; preds = %.lr.ph475
  %broadcast.splatinsert625 = insertelement <8 x i64> poison, i64 %i.pa, i64 0
  %broadcast.splat626 = shufflevector <8 x i64> %broadcast.splatinsert625, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert627 = insertelement <8 x float> poison, float %i.pc, i64 0
  %broadcast.splat628 = shufflevector <8 x float> %broadcast.splatinsert627, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert629 = insertelement <8 x float> poison, float %i.pd, i64 0
  %broadcast.splat630 = shufflevector <8 x float> %broadcast.splatinsert629, <8 x float> poison, <8 x i32> zeroinitializer
  %invariant.op669 = add <8 x i64> %broadcast.splat626, %broadcast.splat636
  %invariant.gep = getelementptr [4 x i8], ptr %i.pf, i64 %i.ol
  br label %vector.body642

vector.body642:                                   ; preds = %vector.body642, %vector.ph623
  %index643 = phi i64 [ 0, %vector.ph623 ], [ %index.next652, %vector.body642 ] ; 2 uses
  %vec.ind644 = phi <8 x i32> [ %induction641, %vector.ph623 ], [ %vec.ind.next653, %vector.body642 ] ; 2 uses
  %vec.ind644.frozen = freeze <8 x i32> %vec.ind644 ; 2 uses
  %broadcast.splat632.frozen = freeze <8 x i32> %broadcast.splat632 ; 2 uses
  %i.pg = sdiv <8 x i32> %vec.ind644.frozen, %broadcast.splat632.frozen ; 2 uses
  %i.ph = mul <8 x i32> %i.pg, %broadcast.splat632.frozen
end_hunk_0
