Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/partition?download=true
inline.NumInlined: 2655
inline.NumDeleted: 1066
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZL11turn_on_dlbRKN3gmx8MDLoggerEP12gmx_domdec_tl:bb.a
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph16, %bb.v
  %indvars.iv29 = phi i64 [ 0, %.lr.ph16 ], [ %indvars.iv.next30, %bb.v ] ; 5 uses
  %i.gq = getelementptr inbounds nuw [48 x i8], ptr %i.gn, i64 %indvars.iv29
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !354 ; 4 uses
  %.not = icmp eq ptr %i.gr, null
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gs = load ptr, ptr %i.go, align 8, !tbaa !346
  %i.gt = getelementptr inbounds nuw [64 x i8], ptr %i.gs, i64 %indvars.iv29 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 32
  %i.gv = load float, ptr %i.gu, align 8, !tbaa !348
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 40
  store float %i.gv, ptr %i.gw, align 8, !tbaa !350
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv29
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !210
  %i.gz = sext i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.gz
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !210 ; 8 uses
  %i.hc = icmp sgt i32 %i.hb, 0
  br i1 %i.hc, label %.lr.ph11, label %.._crit_edge12_crit_edge

.._crit_edge12_crit_edge:                         ; preds = %bb.u
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.gr, i64 40
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !353
  br label %._crit_edge12

.lr.ph11:                                         ; preds = %bb.u
  %i.hd = uitofp nneg i32 %i.hb to float          ; 9 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.gr, i64 40
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !353 ; 17 uses
  %.not65 = icmp eq i64 %indvars.iv29, 0
  br i1 %.not65, label %iter.check, label %.lr.ph11.split

iter.check:                                       ; preds = %.lr.ph11
  %wide.trip.count27 = zext nneg i32 %i.hb to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.hb, 4
  br i1 %min.iters.check, label %.lr.ph11.split.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check57 = icmp ult i32 %i.hb, 32
  br i1 %min.iters.check57, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hg = and i64 %wide.trip.count27, 28
  %n.vec = and i64 %wide.trip.count27, 2147483616 ; 4 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.hd, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add <8 x i32> %vec.ind, splat (i32 8)
  %step.add.2 = add <8 x i32> %vec.ind, splat (i32 16)
  %step.add.3 = add <8 x i32> %vec.ind, splat (i32 24)
  %i.hh = uitofp nneg <8 x i32> %vec.ind to <8 x float>
  %i.hi = uitofp nneg <8 x i32> %step.add to <8 x float>
  %i.hj = uitofp nneg <8 x i32> %step.add.2 to <8 x float>
  %i.hk = uitofp nneg <8 x i32> %step.add.3 to <8 x float>
  %i.hl = fdiv <8 x float> %i.hh, %broadcast.splat
  %i.hm = fdiv <8 x float> %i.hi, %broadcast.splat
  %i.hn = fdiv <8 x float> %i.hj, %broadcast.splat
  %i.ho = fdiv <8 x float> %i.hk, %broadcast.splat
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %index ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 32
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 64
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 96
  store <8 x float> %i.hl, ptr %i.hp, align 4, !tbaa !211
  store <8 x float> %i.hm, ptr %i.hq, align 4, !tbaa !211
  store <8 x float> %i.hn, ptr %i.hr, align 4, !tbaa !211
  store <8 x float> %i.ho, ptr %i.hs, align 4, !tbaa !211
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.ht = icmp eq i64 %index.next, %n.vec
  br i1 %i.ht, label %middle.block, label %vector.body, !llvm.loop !838

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count27
  br i1 %cmp.n, label %._crit_edge12, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.hg, 0
  br i1 %min.epilog.iters.check, label %.lr.ph11.split.us.preheader, label %vec.epilog.ph, !prof !383

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec58 = and i64 %wide.trip.count27, 2147483644 ; 3 uses
  %broadcast.splatinsert59 = insertelement <4 x float> poison, float %i.hd, i64 0
  %broadcast.splat60 = shufflevector <4 x float> %broadcast.splatinsert59, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hu = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert61 = insertelement <4 x i32> poison, i32 %i.hu, i64 0
  %broadcast.splat62 = shufflevector <4 x i32> %broadcast.splatinsert61, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat62, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index63 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next65, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind64 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next66, %vec.epilog.vector.body ] ; 2 uses
  %i.hv = uitofp nneg <4 x i32> %vec.ind64 to <4 x float>
  %i.hw = fdiv <4 x float> %i.hv, %broadcast.splat60
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %index63
  store <4 x float> %i.hw, ptr %i.hx, align 4, !tbaa !211
  %index.next65 = add nuw i64 %index63, 4         ; 2 uses
  %vec.ind.next66 = add <4 x i32> %vec.ind64, splat (i32 4)
  %i.hy = icmp eq i64 %index.next65, %n.vec58
  br i1 %i.hy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !839

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n67 = icmp eq i64 %n.vec58, %wide.trip.count27
  br i1 %cmp.n67, label %._crit_edge12, label %.lr.ph11.split.us.preheader

.lr.ph11.split.us.preheader:                      ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv24.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec58, %vec.epilog.middle.block ]
  br label %.lr.ph11.split.us

.lr.ph11.split.us:                                ; preds = %.lr.ph11.split.us.preheader, %.lr.ph11.split.us
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %.lr.ph11.split.us ], [ %indvars.iv24.ph, %.lr.ph11.split.us.preheader ] ; 3 uses
  %i.hz = trunc nuw nsw i64 %indvars.iv24 to i32
  %i.ia = uitofp nneg i32 %i.hz to float
  %i.ib = fdiv float %i.ia, %i.hd
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv24
  store float %i.ib, ptr %i.ic, align 4, !tbaa !211
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1 ; 2 uses
  %exitcond28.not = icmp eq i64 %indvars.iv.next25, %wide.trip.count27
  br i1 %exitcond28.not, label %._crit_edge12, label %.lr.ph11.split.us, !llvm.loop !840

.lr.ph11.split:                                   ; preds = %.lr.ph11
  %i.id = getelementptr inbounds nuw i8, ptr %i.gr, i64 88
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !357 ; 8 uses
  %wide.trip.count22 = zext nneg i32 %i.hb to i64 ; 7 uses
  %min.iters.check70 = icmp ult i32 %i.hb, 8
  br i1 %min.iters.check70, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph11.split
  %i.if = shl nuw nsw i64 %wide.trip.count22, 2
  %i.ig = getelementptr i8, ptr %i.hf, i64 %i.if
  %i.ih = shl nuw nsw i64 %wide.trip.count22, 4
  %i.ii = getelementptr i8, ptr %i.ie, i64 %i.ih
  %i.ij = getelementptr i8, ptr %i.ii, i64 -8
  %bound0 = icmp ult ptr %i.hf, %i.ij
  %bound1 = icmp ult ptr %i.ie, %i.ig
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph71

vector.ph71:                                      ; preds = %vector.memcheck
  %n.vec72 = and i64 %wide.trip.count22, 2147483640 ; 3 uses
  %broadcast.splatinsert73 = insertelement <8 x float> poison, float %i.hd, i64 0
  %broadcast.splat74 = shufflevector <8 x float> %broadcast.splatinsert73, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %vector.ph71
  %index76 = phi i64 [ 0, %vector.ph71 ], [ %index.next80, %vector.body75 ] ; 2 uses
  %vec.ind77 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph71 ], [ %vec.ind.next81, %vector.body75 ] ; 3 uses
  %vec.ind78 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph71 ], [ %vec.ind.next82, %vector.body75 ] ; 2 uses
  %i.ik = uitofp nneg <8 x i32> %vec.ind78 to <8 x float>
  %i.il = fdiv <8 x float> %i.ik, %broadcast.splat74 ; 2 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %index76
  store <8 x float> %i.il, ptr %i.im, align 4, !tbaa !211, !alias.scope !849, !noalias !850
  %wide.gep = getelementptr inbounds nuw [16 x i8], ptr %i.ie, <8 x i64> %vec.ind77 ; 2 uses
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.il, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !359, !alias.scope !850
  %i.in = trunc <8 x i64> %vec.ind77 to <8 x i32>
  %i.io = add <8 x i32> %i.in, splat (i32 1)
  %i.ip = uitofp nneg <8 x i32> %i.io to <8 x float>
  %i.iq = fdiv <8 x float> %i.ip, %broadcast.splat74
  %wide.gep79 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.iq, <8 x ptr> align 4 %wide.gep79, <8 x i1> splat (i1 true)), !tbaa !360, !alias.scope !850
  %index.next80 = add nuw i64 %index76, 8         ; 2 uses
  %vec.ind.next81 = add nuw nsw <8 x i64> %vec.ind77, splat (i64 8)
  %vec.ind.next82 = add <8 x i32> %vec.ind78, splat (i32 8)
  %i.ir = icmp eq i64 %index.next80, %n.vec72
  br i1 %i.ir, label %middle.block83, label %vector.body75, !llvm.loop !844

middle.block83:                                   ; preds = %vector.body75
  %cmp.n84 = icmp eq i64 %n.vec72, %wide.trip.count22
  br i1 %cmp.n84, label %._crit_edge12, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph11.split, %middle.block83
  %indvars.iv19.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph11.split ], [ %n.vec72, %middle.block83 ] ; 3 uses
  %xtraiter89 = and i64 %wide.trip.count22, 3     ; 2 uses
  %lcmp.mod90.not = icmp eq i64 %xtraiter89, 0
  br i1 %lcmp.mod90.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol.preheader

scalar.ph.prol.preheader:                         ; preds = %scalar.ph.preheader
  %i.is = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.it = shufflevector <2 x float> %i.is, <2 x float> poison, <2 x i32> zeroinitializer
  br label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.prol, %scalar.ph.prol.preheader
  %indvars.iv19.prol = phi i64 [ %indvars.iv.next20.prol, %scalar.ph.prol ], [ %indvars.iv19.ph, %scalar.ph.prol.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.prol.preheader ]
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv19.prol
  %i.iv = getelementptr inbounds nuw [16 x i8], ptr %i.ie, i64 %indvars.iv19.prol
  %indvars.iv.next20.prol = add nuw nsw i64 %indvars.iv19.prol, 1 ; 3 uses
  %i.iw = trunc nsw i64 %indvars.iv19.prol to i32
  %i.ix = trunc nsw i64 %indvars.iv.next20.prol to i32
  %i.iy = insertelement <2 x i32> poison, i32 %i.iw, i64 0
  %i.iz = insertelement <2 x i32> %i.iy, i32 %i.ix, i64 1
  %i.ja = uitofp nneg <2 x i32> %i.iz to <2 x float>
  %i.jb = fdiv <2 x float> %i.ja, %i.it           ; 2 uses
  %i.jc = extractelement <2 x float> %i.jb, i64 0
  store float %i.jc, ptr %i.iu, align 4, !tbaa !211
  store <2 x float> %i.jb, ptr %i.iv, align 4, !tbaa !211
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter89
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !845

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv19.unr = phi i64 [ %indvars.iv19.ph, %scalar.ph.preheader ], [ %indvars.iv.next20.prol, %scalar.ph.prol ]
  %i.jd = sub nsw i64 %indvars.iv19.ph, %wide.trip.count22
  %i.je = icmp ugt i64 %i.jd, -4
  br i1 %i.je, label %._crit_edge12, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %i.jf = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.jg = shufflevector <2 x float> %i.jf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jh = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.ji = shufflevector <2 x float> %i.jh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jj = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.jk = shufflevector <2 x float> %i.jj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jl = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.jm = shufflevector <2 x float> %i.jl, <2 x float> poison, <2 x i32> zeroinitializer
  br label %scalar.ph

._crit_edge12:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %.lr.ph11.split.us, %middle.block83, %middle.block, %vec.epilog.middle.block, %.._crit_edge12_crit_edge
  %i.jn = phi ptr [ %.pre, %.._crit_edge12_crit_edge ], [ %i.hf, %middle.block ], [ %i.hf, %middle.block83 ], [ %i.hf, %vec.epilog.middle.block ], [ %i.hf, %.lr.ph11.split.us ], [ %i.hf, %scalar.ph ], [ %i.hf, %scalar.ph.prol.loopexit ]
  %i.jo = sext i32 %i.hb to i64
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %i.jo
  store float 1.000000e+00, ptr %i.jp, align 4, !tbaa !211
  br label %bb.v

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv19 = phi i64 [ %indvars.iv19.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next20.3, %scalar.ph ] ; 7 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv19
  %i.jr = getelementptr inbounds nuw [16 x i8], ptr %i.ie, i64 %indvars.iv19
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1 ; 4 uses
  %i.js = trunc nsw i64 %indvars.iv19 to i32
  %i.jt = trunc nsw i64 %indvars.iv.next20 to i32
  %i.ju = insertelement <2 x i32> poison, i32 %i.js, i64 0
  %i.jv = insertelement <2 x i32> %i.ju, i32 %i.jt, i64 1
  %i.jw = uitofp nneg <2 x i32> %i.jv to <2 x float>
  %i.jx = fdiv <2 x float> %i.jw, %i.jg           ; 2 uses
  %i.jy = extractelement <2 x float> %i.jx, i64 0
  store float %i.jy, ptr %i.jq, align 4, !tbaa !211
  store <2 x float> %i.jx, ptr %i.jr, align 4, !tbaa !211
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv.next20
  %i.ka = getelementptr inbounds nuw [16 x i8], ptr %i.ie, i64 %indvars.iv.next20
  %indvars.iv.next20.1 = add nuw nsw i64 %indvars.iv19, 2 ; 4 uses
  %i.kb = trunc nsw i64 %indvars.iv.next20 to i32
  %i.kc = trunc nsw i64 %indvars.iv.next20.1 to i32
  %i.kd = insertelement <2 x i32> poison, i32 %i.kb, i64 0
  %i.ke = insertelement <2 x i32> %i.kd, i32 %i.kc, i64 1
  %i.kf = uitofp nneg <2 x i32> %i.ke to <2 x float>
  %i.kg = fdiv <2 x float> %i.kf, %i.ji           ; 2 uses
  %i.kh = extractelement <2 x float> %i.kg, i64 0
  store float %i.kh, ptr %i.jz, align 4, !tbaa !211
  store <2 x float> %i.kg, ptr %i.ka, align 4, !tbaa !211
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv.next20.1
  %i.kj = getelementptr inbounds nuw [16 x i8], ptr %i.ie, i64 %indvars.iv.next20.1
  %indvars.iv.next20.2 = add nuw nsw i64 %indvars.iv19, 3 ; 4 uses
  %i.kk = trunc nsw i64 %indvars.iv.next20.1 to i32
  %i.kl = trunc nsw i64 %indvars.iv.next20.2 to i32
  %i.km = insertelement <2 x i32> poison, i32 %i.kk, i64 0
  %i.kn = insertelement <2 x i32> %i.km, i32 %i.kl, i64 1
  %i.ko = uitofp nneg <2 x i32> %i.kn to <2 x float>
  %i.kp = fdiv <2 x float> %i.ko, %i.jk           ; 2 uses
  %i.kq = extractelement <2 x float> %i.kp, i64 0
  store float %i.kq, ptr %i.ki, align 4, !tbaa !211
  store <2 x float> %i.kp, ptr %i.kj, align 4, !tbaa !211
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv.next20.2
  %i.ks = getelementptr inbounds nuw [16 x i8], ptr %i.ie, i64 %indvars.iv.next20.2
  %indvars.iv.next20.3 = add nuw nsw i64 %indvars.iv19, 4 ; 3 uses
  %i.kt = trunc nsw i64 %indvars.iv.next20.2 to i32
  %i.ku = trunc nsw i64 %indvars.iv.next20.3 to i32
  %i.kv = insertelement <2 x i32> poison, i32 %i.kt, i64 0
  %i.kw = insertelement <2 x i32> %i.kv, i32 %i.ku, i64 1
  %i.kx = uitofp nneg <2 x i32> %i.kw to <2 x float>
  %i.ky = fdiv <2 x float> %i.kx, %i.jm           ; 2 uses
  %i.kz = extractelement <2 x float> %i.ky, i64 0
  store float %i.kz, ptr %i.kr, align 4, !tbaa !211
  store <2 x float> %i.ky, ptr %i.ks, align 4, !tbaa !211
  %exitcond23.not.3 = icmp eq i64 %indvars.iv.next20.3, %wide.trip.count22
  br i1 %exitcond23.not.3, label %._crit_edge12, label %scalar.ph, !llvm.loop !846

bb.v:                                             ; preds = %._crit_edge12, %bb.t
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1 ; 2 uses
  %exitcond33.not = icmp eq i64 %indvars.iv.next30, %wide.trip.count32
  br i1 %exitcond33.not, label %.loopexit, label %bb.t, !llvm.loop !847

.loopexit:                                        ; preds = %bb.v, %bb.s, %bb.i
  ret void

bb.w:                                             ; preds = %_ZN3gmx14LogEntryWriterD2Ev.exit90, %_ZN3gmx14LogEntryWriterD2Ev.exit74
  %.pn66.pn = phi { ptr, i32 } [ %.pn66, %_ZN3gmx14LogEntryWriterD2Ev.exit74 ], [ %.pn, %_ZN3gmx14LogEntryWriterD2Ev.exit90 ]
  resume { ptr, i32 } %.pn66.pn
}

declare void @_Z9set_ddboxRK12gmx_domdec_tbPA3_KfbN3gmx8ArrayRefIKNS5_11BasicVectorIfEEEEP11gmx_ddbox_t(ptr noundef nonnull align 8 dereferenceable(1097), i1 noundef zeroext, ptr noundef, i1 noundef zeroext, ptr, ptr, ptr noundef) local_unnamed_addr #5

declare void @_Z15distributeStateRKN3gmx8MDLoggerEP12gmx_domdec_tRK10gmx_mtop_tP7t_stateRK11gmx_ddbox_tS9_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef nonnull align 8 dereferenceable(768), ptr noundef, ptr noundef nonnull align 4 dereferenceable(200), ptr noundef) local_unnamed_addr #5

declare void @_Z28dd_resize_atominfo_and_stateP10t_forcerecP7t_statei(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL15make_dd_indicesP12gmx_domdec_ti(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i32, ptr %i.a, align 4, !tbaa !384  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !371
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !369  ; 7 uses
  %i.g = icmp sgt i32 %i.b, 0
  br i1 %i.g, label %.lr.ph81, label %._crit_edge82

.lr.ph81:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 356
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %wide.trip.count = zext nneg i32 %i.b to i64
  %i.m = zext nneg i32 %i.b to i64
  br label %bb.b

._crit_edge82:                                    ; preds = %._crit_edge, %bb.a
  %.038.lcssa = phi i32 [ 0, %bb.a ], [ %spec.select, %._crit_edge ]
  ret i32 %.038.lcssa

bb.b:                                             ; preds = %.lr.ph81, %._crit_edge
  %indvars.iv87 = phi i64 [ 0, %.lr.ph81 ], [ %indvars.iv.next88, %._crit_edge ] ; 5 uses
  %.03778 = phi i32 [ %1, %.lr.ph81 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.03877 = phi i32 [ 0, %.lr.ph81 ], [ %spec.select, %._crit_edge ]
  %i.n = icmp eq i64 %indvars.iv87, 0             ; 2 uses
  br i1 %i.n, label %.split, label %.split41

.split:                                           ; preds = %bb.b
  %i.o = load i32, ptr %i.h, align 8, !tbaa !210  ; 2 uses
  %i.p = load i32, ptr %i.i, align 4, !tbaa !210  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.o, %i.p
  br i1 %.not.i.i, label %bb.c, label %_ZNK3gmx11DomdecZones9atomRangeEi.exit

bb.c:                                             ; preds = %.split
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.128, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx5RangeIiEC1EiiENKUlvE_clEv, ptr noundef nonnull @.str.129, i32 noundef 111) #29
  unreachable

.split41:                                         ; preds = %bb.b
  %i.q = getelementptr [4 x i8], ptr %i.h, i64 %indvars.iv87 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !210  ; 3 uses
  %i.s = getelementptr i8, ptr %i.q, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !210  ; 2 uses
  %.not.i.i44 = icmp sgt i32 %i.r, %i.t
  br i1 %.not.i.i44, label %bb.d, label %_ZNK3gmx11DomdecZones9atomRangeEi.exit

bb.d:                                             ; preds = %.split41
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.128, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx5RangeIiEC1EiiENKUlvE_clEv, ptr noundef nonnull @.str.129, i32 noundef 111) #29
  unreachable

_ZNK3gmx11DomdecZones9atomRangeEi.exit:           ; preds = %.split, %.split41
  %i.u = phi i32 [ %i.r, %.split41 ], [ %i.o, %.split ]
  %phi.call.in = phi i32 [ %i.t, %.split41 ], [ %i.p, %.split ] ; 2 uses
  %.035 = phi i32 [ %i.r, %.split41 ], [ %1, %.split ] ; 2 uses
  %i.v = icmp slt i32 %.035, %phi.call.in
  br i1 %i.v, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK3gmx11DomdecZones9atomRangeEi.exit
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv87
  %i.x = load i32, ptr %i.w, align 4, !tbaa !210
  %i.y = add nsw i32 %i.x, %i.u
  %i.z = sext i32 %.035 to i64
  %i.aa = sext i32 %i.y to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN11gmx_ga2la_t6insertEiRKNS_5EntryE.exit, %_ZNK3gmx11DomdecZones9atomRangeEi.exit
  %.1.lcssa = phi i32 [ %.03778, %_ZNK3gmx11DomdecZones9atomRangeEi.exit ], [ %i.by, %_ZN11gmx_ga2la_t6insertEiRKNS_5EntryE.exit ] ; 2 uses
  %spec.select = select i1 %i.n, i32 %.1.lcssa, i32 %.03877 ; 2 uses
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond91.not = icmp eq i64 %indvars.iv.next88, %wide.trip.count
  br i1 %exitcond91.not, label %._crit_edge82, label %bb.b, !llvm.loop !851

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN11gmx_ga2la_t6insertEiRKNS_5EntryE.exit
  %indvars.iv = phi i64 [ %i.z, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN11gmx_ga2la_t6insertEiRKNS_5EntryE.exit ] ; 3 uses
  %.175 = phi i32 [ %.03778, %.lr.ph.preheader ], [ %i.by, %_ZN11gmx_ga2la_t6insertEiRKNS_5EntryE.exit ] ; 3 uses
  %.not = icmp slt i64 %indvars.iv, %i.aa
  %i.ab = select i1 %.not, i64 0, i64 %i.m
  %i.ac = add nuw nsw i64 %i.ab, %indvars.iv87    ; 2 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !210 ; 4 uses
  %i.af = icmp sgt i32 %i.ae, -1
  br i1 %i.af, label %bb.e, label %_ZN11gmx_ga2la_t6insertEiRKNS_5EntryE.exit

bb.e:                                             ; preds = %.lr.ph
  %i.ag = load i8, ptr %i.k, align 8, !tbaa !427  ; 2 uses
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ai = zext nneg i32 %i.ae to i64
  %i.aj = load ptr, ptr %i.f, align 8, !tbaa !430
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ai
  %.sroa.5.0.insert.shift62 = shl nuw nsw i64 %i.ac, 32
  %.sroa.0.0.insert.ext57 = zext i32 %.175 to i64
  %.sroa.0.0.insert.insert59 = or disjoint i64 %.sroa.5.0.insert.shift62, %.sroa.0.0.insert.ext57
  store i64 %.sroa.0.0.insert.insert59, ptr %i.ak, align 4, !tbaa !210
  br label %_ZN11gmx_ga2la_t6insertEiRKNS_5EntryE.exit

bb.g:                                             ; preds = %bb.e
  %i.al = icmp eq i8 %i.ag, 1
  %spec.select.i.i6.i = select i1 %i.al, ptr %i.f, ptr null ; 3 uses
  %i.am = load i32, ptr %i.l, align 8, !tbaa !439
  %i.an = and i32 %i.am, %i.ae                    ; 2 uses
  %i.ao = zext nneg i32 %i.an to i64              ; 2 uses
  %i.ap = load ptr, ptr %i.f, align 8, !tbaa !440 ; 8 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.ao
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !442
  %i.as = icmp sgt i32 %i.ar, -1
  br i1 %i.as, label %.preheader.i.i.i, label %_ZN3gmx9HashedMapIN11gmx_ga2la_t5EntryEE6insertEiRKS2_.exit.i

.preheader.i.i.i:                                 ; preds = %bb.g, %.preheader.i.i.i
  %.0.i.i.i = phi i32 [ %i.aw, %.preheader.i.i.i ], [ %i.an, %bb.g ]
  %i.at = zext nneg i32 %.0.i.i.i to i64          ; 2 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !443 ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, -1
  br i1 %i.ax, label %.preheader.i.i.i, label %bb.h, !llvm.loop !852

bb.h:                                             ; preds = %.preheader.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %spec.select.i.i6.i, i64 28 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !855
  %i.ba = sext i32 %i.az to i64                   ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %spec.select.i.i6.i, i64 8 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !445
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ap to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 2 uses
  %i.bg = ashr exact i64 %i.bf, 4                 ; 4 uses
  %i.bh = icmp ugt i64 %i.bg, %i.ba
  br i1 %i.bh, label %.lr.ph.i.i.i, label %.critedge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %bb.i
  %.02025.i.i.i = phi i64 [ %i.bl, %bb.i ], [ %i.ba, %bb.h ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %.02025.i.i.i
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !442
  %i.bk = icmp sgt i32 %i.bj, -1
  br i1 %i.bk, label %bb.i, label %.critedge.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.bl = add nuw i64 %.02025.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bl, %i.bg
  br i1 %exitcond.not.i.i.i, label %.critedge.thread.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !853

.critedge.i.i.i:                                  ; preds = %.lr.ph.i.i.i, %bb.h
  %.020.lcssa.i.i.i = phi i64 [ %i.ba, %bb.h ], [ %.02025.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.bm = icmp eq i64 %.020.lcssa.i.i.i, %i.bg
  br i1 %i.bm, label %.critedge.thread.i.i.i, label %_ZNSt6vectorIN3gmx9HashedMapIN11gmx_ga2la_t5EntryEE9hashEntryESaIS5_EE6resizeEm.exit.i.i.i

.critedge.thread.i.i.i:                           ; preds = %bb.i, %.critedge.i.i.i
  %.not.i.i.i = icmp eq i64 %i.bf, -16
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN3gmx9HashedMapIN11gmx_ga2la_t5EntryEE9hashEntryES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.critedge.thread.i.i.i
  tail call void @_ZNSt6vectorIN3gmx9HashedMapIN11gmx_ga2la_t5EntryEE9hashEntryESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 noundef 1)
  %.pre.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !440
  br label %_ZNSt6vectorIN3gmx9HashedMapIN11gmx_ga2la_t5EntryEE9hashEntryESaIS5_EE6resizeEm.exit.i.i.i

_ZSt8_DestroyIPN3gmx9HashedMapIN11gmx_ga2la_t5EntryEE9hashEntryES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i: ; preds = %.critedge.thread.i.i.i
  store ptr %i.ap, ptr %i.bb, align 8, !tbaa !445
  br label %_ZNSt6vectorIN3gmx9HashedMapIN11gmx_ga2la_t5EntryEE9hashEntryESaIS5_EE6resizeEm.exit.i.i.i

_ZNSt6vectorIN3gmx9HashedMapIN11gmx_ga2la_t5EntryEE9hashEntryESaIS5_EE6resizeEm.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN3gmx9HashedMapIN11gmx_ga2la_t5EntryEE9hashEntryES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i, %bb.j, %.critedge.i.i.i
  %.020.lcssa40.i.i.i = phi i64 [ -1, %_ZSt8_DestroyIPN3gmx9HashedMapIN11gmx_ga2la_t5EntryEE9hashEntryES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i ], [ %.020.lcssa.i.i.i, %.critedge.i.i.i ], [ %i.bg, %bb.j ] ; 2 uses
  %i.bn = phi ptr [ %i.ap, %_ZSt8_DestroyIPN3gmx9HashedMapIN11gmx_ga2la_t5EntryEE9hashEntryES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i ], [ %i.ap, %.critedge.i.i.i ], [ %.pre.i.i.i, %bb.j ] ; 2 uses
  %i.bo = trunc i64 %.020.lcssa40.i.i.i to i32    ; 2 uses
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.at
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  store i32 %i.bo, ptr %i.bq, align 4, !tbaa !443
end_hunk_0
