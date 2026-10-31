Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/cellsizes?download=true
inline.NumInlined: 600
inline.NumDeleted: 275
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_Z17set_dd_cell_sizesP12gmx_domdec_tPK11gmx_ddbox_tbbblP13gmx_wallcycle:bb.a
  %cmp.n198 = icmp eq i64 %n.vec189, %wide.trip.count.i.i.i
  br i1 %cmp.n198, label %._crit_edge.i.i.i, label %vec.epilog.iter.check200

vec.epilog.iter.check200:                         ; preds = %middle.block197
  %min.epilog.iters.check202 = icmp eq i64 %i.hm, 0
  br i1 %min.epilog.iters.check202, label %vec.epilog.scalar.ph201.preheader, label %vec.epilog.ph203, !prof !136

vec.epilog.ph203:                                 ; preds = %vector.main.loop.iter.check186, %vec.epilog.iter.check200
  %vec.epilog.resume.val204 = phi i64 [ %n.vec189, %vec.epilog.iter.check200 ], [ 0, %vector.main.loop.iter.check186 ]
  %n.vec205 = and i64 %wide.trip.count.i.i.i, 4294967292 ; 3 uses
  br label %vec.epilog.vector.body206

vec.epilog.vector.body206:                        ; preds = %vec.epilog.vector.body206, %vec.epilog.ph203
  %index207 = phi i64 [ %vec.epilog.resume.val204, %vec.epilog.ph203 ], [ %index.next209, %vec.epilog.vector.body206 ] ; 3 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %index207
  %wide.load208 = load <4 x float>, ptr %i.hw, align 4, !tbaa !120
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %index207
  store <4 x float> %wide.load208, ptr %i.hx, align 4, !tbaa !120
  %index.next209 = add nuw i64 %index207, 4       ; 2 uses
  %i.hy = icmp eq i64 %index.next209, %n.vec205
  br i1 %i.hy, label %vec.epilog.middle.block210, label %vec.epilog.vector.body206, !llvm.loop !284

vec.epilog.middle.block210:                       ; preds = %vec.epilog.vector.body206
  %cmp.n211 = icmp eq i64 %n.vec205, %wide.trip.count.i.i.i
  br i1 %cmp.n211, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph201.preheader

vec.epilog.scalar.ph201.preheader:                ; preds = %iter.check199, %vec.epilog.iter.check200, %vec.epilog.middle.block210
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %iter.check199 ], [ %n.vec189, %vec.epilog.iter.check200 ], [ %n.vec205, %vec.epilog.middle.block210 ] ; 4 uses
  %i.hz = sub nsw i64 %wide.trip.count.i.i.i, %indvars.iv.i.i.i.ph
  %i.ia = zext nneg i32 %i.gz to i64
  %i.ib = sub nsw i64 %i.ia, %indvars.iv.i.i.i.ph
  %xtraiter228 = and i64 %i.hz, 7                 ; 2 uses
  %lcmp.mod229.not = icmp eq i64 %xtraiter228, 0
  br i1 %lcmp.mod229.not, label %vec.epilog.scalar.ph201.prol.loopexit, label %vec.epilog.scalar.ph201.prol

vec.epilog.scalar.ph201.prol:                     ; preds = %vec.epilog.scalar.ph201.preheader, %vec.epilog.scalar.ph201.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %vec.epilog.scalar.ph201.prol ], [ %indvars.iv.i.i.i.ph, %vec.epilog.scalar.ph201.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph201.prol ], [ 0, %vec.epilog.scalar.ph201.preheader ]
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv.i.i.i.prol
  %i.id = load float, ptr %i.ic, align 4, !tbaa !120
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv.i.i.i.prol
  store float %i.id, ptr %i.ie, align 4, !tbaa !120
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter228
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph201.prol.loopexit, label %vec.epilog.scalar.ph201.prol, !llvm.loop !285

vec.epilog.scalar.ph201.prol.loopexit:            ; preds = %vec.epilog.scalar.ph201.prol, %vec.epilog.scalar.ph201.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %vec.epilog.scalar.ph201.preheader ], [ %indvars.iv.next.i.i.i.prol, %vec.epilog.scalar.ph201.prol ]
  %i.if = icmp ult i64 %i.ib, 7
  br i1 %i.if, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph201

._crit_edge.i.i.i:                                ; preds = %vec.epilog.scalar.ph201.prol.loopexit, %vec.epilog.scalar.ph201, %middle.block197, %vec.epilog.middle.block210, %bb.p
  br i1 %3, label %.preheader244.i.i.i, label %bb.q

.preheader244.i.i.i:                              ; preds = %._crit_edge.i.i.i
  %i.ig = icmp sgt i32 %i.gz, 0
  br i1 %i.ig, label %iter.check, label %.loopexit245.i.i.i

iter.check:                                       ; preds = %.preheader244.i.i.i
  %i.ih = uitofp nneg i32 %i.gz to double
  %i.ii = fdiv double 1.000000e+00, %i.ih
  %i.ij = fptrunc double %i.ii to float           ; 3 uses
  %wide.trip.count289.i.i.i = zext nneg i32 %i.gz to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.gz, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check121 = icmp ult i32 %i.gz, 32
  br i1 %min.iters.check121, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ik = and i64 %wide.trip.count289.i.i.i, 28
  %n.vec = and i64 %wide.trip.count289.i.i.i, 2147483616 ; 4 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.ij, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %index ; 4 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 32
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 64
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 96
  store <8 x float> %broadcast.splat, ptr %i.il, align 4, !tbaa !120
  store <8 x float> %broadcast.splat, ptr %i.im, align 4, !tbaa !120
  store <8 x float> %broadcast.splat, ptr %i.in, align 4, !tbaa !120
  store <8 x float> %broadcast.splat, ptr %i.io, align 4, !tbaa !120
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ip = icmp eq i64 %index.next, %n.vec
  br i1 %i.ip, label %middle.block, label %vector.body, !llvm.loop !286

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count289.i.i.i
  br i1 %cmp.n, label %.loopexit245.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ik, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !136

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec122 = and i64 %wide.trip.count289.i.i.i, 2147483644 ; 3 uses
  %broadcast.splatinsert123 = insertelement <4 x float> poison, float %i.ij, i64 0
  %broadcast.splat124 = shufflevector <4 x float> %broadcast.splatinsert123, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index125 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next126, %vec.epilog.vector.body ] ; 2 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %index125
  store <4 x float> %broadcast.splat124, ptr %i.iq, align 4, !tbaa !120
  %index.next126 = add nuw i64 %index125, 4       ; 2 uses
  %i.ir = icmp eq i64 %index.next126, %n.vec122
  br i1 %i.ir, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !287

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n127 = icmp eq i64 %n.vec122, %wide.trip.count289.i.i.i
  br i1 %cmp.n127, label %.loopexit245.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv286.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec122, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph201:                          ; preds = %vec.epilog.scalar.ph201.prol.loopexit, %vec.epilog.scalar.ph201
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.7, %vec.epilog.scalar.ph201 ], [ %indvars.iv.i.i.i.unr, %vec.epilog.scalar.ph201.prol.loopexit ] ; 10 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv.i.i.i
  %i.it = load float, ptr %i.is, align 4, !tbaa !120
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv.i.i.i
  store float %i.it, ptr %i.iu, align 4, !tbaa !120
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv.next.i.i.i
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !120
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv.next.i.i.i
  store float %i.iw, ptr %i.ix, align 4, !tbaa !120
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv.next.i.i.i.1
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !120
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv.next.i.i.i.1
  store float %i.iz, ptr %i.ja, align 4, !tbaa !120
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv.next.i.i.i.2
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !120
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv.next.i.i.i.2
  store float %i.jc, ptr %i.jd, align 4, !tbaa !120
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv.next.i.i.i.3
  %i.jf = load float, ptr %i.je, align 4, !tbaa !120
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv.next.i.i.i.3
  store float %i.jf, ptr %i.jg, align 4, !tbaa !120
  %indvars.iv.next.i.i.i.4 = add nuw nsw i64 %indvars.iv.i.i.i, 5 ; 2 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv.next.i.i.i.4
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !120
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv.next.i.i.i.4
  store float %i.ji, ptr %i.jj, align 4, !tbaa !120
  %indvars.iv.next.i.i.i.5 = add nuw nsw i64 %indvars.iv.i.i.i, 6 ; 2 uses
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv.next.i.i.i.5
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !120
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv.next.i.i.i.5
  store float %i.jl, ptr %i.jm, align 4, !tbaa !120
  %indvars.iv.next.i.i.i.6 = add nuw nsw i64 %indvars.iv.i.i.i, 7 ; 2 uses
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv.next.i.i.i.6
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !120
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv.next.i.i.i.6
  store float %i.jo, ptr %i.jp, align 4, !tbaa !120
  %indvars.iv.next.i.i.i.7 = add nuw nsw i64 %indvars.iv.i.i.i, 8 ; 2 uses
  %exitcond.not.i.i.i.7 = icmp eq i64 %indvars.iv.next.i.i.i.7, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.7, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph201, !llvm.loop !288

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv286.i.i.i = phi i64 [ %indvars.iv.next287.i.i.i, %vec.epilog.scalar.ph ], [ %indvars.iv286.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv286.i.i.i
  store float %i.ij, ptr %i.jq, align 4, !tbaa !120
  %indvars.iv.next287.i.i.i = add nuw nsw i64 %indvars.iv286.i.i.i, 1 ; 2 uses
  %exitcond290.not.i.i.i = icmp eq i64 %indvars.iv.next287.i.i.i, %wide.trip.count289.i.i.i
  br i1 %exitcond290.not.i.i.i, label %.loopexit245.i.i.i, label %vec.epilog.scalar.ph, !llvm.loop !289

bb.q:                                             ; preds = %._crit_edge.i.i.i
  %i.jr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.js = load i32, ptr %i.jr, align 8, !tbaa !341
  %.not.i.i.i.i = icmp eq i32 %i.js, 0
  %.in.v.i.i.i.i = select i1 %.not.i.i.i.i, i64 1612, i64 1656
  %.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gq, i64 %.in.v.i.i.i.i
  %i.jt = load i32, ptr %.in.i.i.i.i, align 4, !tbaa !129
  %i.ju = icmp sgt i32 %i.jt, 0
  br i1 %i.ju, label %bb.r, label %.loopexit245.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.jv = getelementptr inbounds nuw i8, ptr %i.gq, i64 1504
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !342
  %i.jx = getelementptr inbounds nuw [64 x i8], ptr %i.jw, i64 %indvars.iv.i.i ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 40
  %i.jz = load float, ptr %i.jy, align 8, !tbaa !344
  %i.ka = sitofp i32 %i.gz to float
  %i.kb = fdiv float %i.jz, %i.ka                 ; 12 uses
  %i.kc = icmp sgt i32 %i.gz, 0
  br i1 %i.kc, label %.lr.ph252.i.i.i, label %.loopexit245.i.i.i

.lr.ph252.i.i.i:                                  ; preds = %bb.r
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.ke = load i32, ptr %i.jx, align 8, !tbaa !345 ; 2 uses
  %i.kf = load ptr, ptr %i.kd, align 8, !tbaa !132 ; 11 uses
  %i.kg = fcmp ogt float %i.kb, 0.000000e+00
  %i.kh = select i1 %i.kg, float %i.kb, float 1.000000e+00 ; 10 uses
  %i.ki = sext i32 %i.ke to i64                   ; 8 uses
  %wide.trip.count279.i.i.i = zext nneg i32 %i.gz to i64 ; 11 uses
  %xtraiter231 = and i64 %wide.trip.count279.i.i.i, 3 ; 3 uses
  %i.kj = icmp ult i32 %i.gz, 4
  br i1 %i.kj, label %.epil.preheader230, label %.lr.ph252.i.i.i.new

.lr.ph252.i.i.i.new:                              ; preds = %.lr.ph252.i.i.i
  %unroll_iter236 = and i64 %wide.trip.count279.i.i.i, 2147483644
  br label %bb.t

iter.check162.unr-lcssa:                          ; preds = %bb.t
  %lcmp.mod233.not = icmp eq i64 %xtraiter231, 0
  br i1 %lcmp.mod233.not, label %iter.check162, label %.epil.preheader230

.epil.preheader230:                               ; preds = %iter.check162.unr-lcssa, %.lr.ph252.i.i.i
  %indvars.iv276.i.i.i.epil.init = phi i64 [ 0, %.lr.ph252.i.i.i ], [ %indvars.iv.next277.i.i.i.3, %iter.check162.unr-lcssa ]
  %.0241249.i.i.i.epil.init = phi float [ 0.000000e+00, %.lr.ph252.i.i.i ], [ %.sroa.speculated.i.i.i.3, %iter.check162.unr-lcssa ]
  %lcmp.mod235 = icmp ne i64 %xtraiter231, 0
  call void @llvm.assume(i1 %lcmp.mod235)
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader230
  %indvars.iv276.i.i.i.epil = phi i64 [ %indvars.iv276.i.i.i.epil.init, %.epil.preheader230 ], [ %indvars.iv.next277.i.i.i.epil, %bb.s ] ; 2 uses
  %.0241249.i.i.i.epil = phi float [ %.0241249.i.i.i.epil.init, %.epil.preheader230 ], [ %.sroa.speculated.i.i.i.epil, %bb.s ] ; 2 uses
  %epil.iter232 = phi i64 [ 0, %.epil.preheader230 ], [ %epil.iter232.next, %bb.s ]
  %i.kk = mul nsw i64 %indvars.iv276.i.i.i.epil, %i.ki
  %i.kl = getelementptr [4 x i8], ptr %i.kf, i64 %i.kk
  %i.km = getelementptr i8, ptr %i.kl, i64 8
  %i.kn = load float, ptr %i.km, align 4, !tbaa !120
  %i.ko = fsub float %i.kn, %i.kb
  %i.kp = fdiv float %i.ko, %i.kh
  %i.kq = fmul float %i.kp, -5.000000e-01         ; 3 uses
  %i.kr = fneg float %i.kq
  %i.ks = fcmp olt float %i.kq, 0.000000e+00
  %i.kt = select i1 %i.ks, float %i.kr, float %i.kq ; 2 uses
  %i.ku = fcmp olt float %.0241249.i.i.i.epil, %i.kt
  %.sroa.speculated.i.i.i.epil = select i1 %i.ku, float %i.kt, float %.0241249.i.i.i.epil ; 2 uses
  %indvars.iv.next277.i.i.i.epil = add nuw nsw i64 %indvars.iv276.i.i.i.epil, 1
  %epil.iter232.next = add i64 %epil.iter232, 1   ; 2 uses
  %epil.iter232.cmp.not = icmp eq i64 %epil.iter232.next, %xtraiter231
  br i1 %epil.iter232.cmp.not, label %iter.check162, label %bb.s, !llvm.loop !290

iter.check162:                                    ; preds = %bb.s, %iter.check162.unr-lcssa
  %.sroa.speculated.i.i.i.lcssa = phi float [ %.sroa.speculated.i.i.i.3, %iter.check162.unr-lcssa ], [ %.sroa.speculated.i.i.i.epil, %bb.s ] ; 2 uses
  %i.kv = fcmp ogt float %.sroa.speculated.i.i.i.lcssa, %i.gx
  %i.kw = fdiv float %i.gx, %.sroa.speculated.i.i.i.lcssa
  %i.kx = fmul float %i.kw, 5.000000e-01
  %.0210329.i.i.i = select i1 %i.kv, float %i.kx, float 5.000000e-01 ; 5 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.gs, i64 40
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !132 ; 12 uses
  %min.iters.check135 = icmp ugt i32 %i.gz, 3
  %ident.check.not = icmp eq i32 %i.ke, 1
  %or.cond215 = and i1 %min.iters.check135, %ident.check.not
  br i1 %or.cond215, label %vector.memcheck, label %vec.epilog.scalar.ph164.preheader

vector.memcheck:                                  ; preds = %iter.check162
  %i.la = shl nuw nsw i64 %wide.trip.count279.i.i.i, 2 ; 3 uses
  %scevgep = getelementptr i8, ptr %i.hd, i64 %i.la ; 2 uses
  %scevgep128 = getelementptr i8, ptr %i.kf, i64 8 ; 2 uses
  %scevgep129 = getelementptr i8, ptr %scevgep128, i64 %i.la
  %scevgep130 = getelementptr i8, ptr %i.kz, i64 4
  %scevgep131 = getelementptr i8, ptr %scevgep130, i64 %i.la
  %bound0 = icmp ult ptr %i.hd, %scevgep129
  %bound1 = icmp ult ptr %scevgep128, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0132 = icmp ult ptr %i.hd, %scevgep131
  %bound1133 = icmp ult ptr %i.kz, %scevgep
  %found.conflict134 = and i1 %bound0132, %bound1133
  %conflict.rdx = or i1 %found.conflict, %found.conflict134
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph164.preheader, label %vector.main.loop.iter.check136

vector.main.loop.iter.check136:                   ; preds = %vector.memcheck
  %min.iters.check137 = icmp ult i32 %i.gz, 32
  br i1 %min.iters.check137, label %vec.epilog.ph166, label %vector.ph138

vector.ph138:                                     ; preds = %vector.main.loop.iter.check136
  %i.lb = and i64 %wide.trip.count279.i.i.i, 28
  %n.vec139 = and i64 %wide.trip.count279.i.i.i, 2147483616 ; 4 uses
  %broadcast.splatinsert140 = insertelement <8 x float> poison, float %.0210329.i.i.i, i64 0
  %broadcast.splat141 = shufflevector <8 x float> %broadcast.splatinsert140, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert142 = insertelement <8 x float> poison, float %i.kb, i64 0
  %broadcast.splat143 = shufflevector <8 x float> %broadcast.splatinsert142, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert144 = insertelement <8 x float> poison, float %i.kh, i64 0
  %broadcast.splat145 = shufflevector <8 x float> %broadcast.splatinsert144, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body146

vector.body146:                                   ; preds = %vector.ph138, %vector.body146
  %index147 = phi i64 [ 0, %vector.ph138 ], [ %index.next159, %vector.body146 ] ; 5 uses
  %i.lc = getelementptr [4 x i8], ptr %i.kf, i64 %index147 ; 4 uses
  %i.ld = getelementptr i8, ptr %i.lc, i64 8
  %i.le = getelementptr i8, ptr %i.lc, i64 40
  %i.lf = getelementptr i8, ptr %i.lc, i64 72
  %i.lg = getelementptr i8, ptr %i.lc, i64 104
  %wide.load = load <8 x float>, ptr %i.ld, align 4, !tbaa !120, !alias.scope !346
  %wide.load148 = load <8 x float>, ptr %i.le, align 4, !tbaa !120, !alias.scope !346
  %wide.load149 = load <8 x float>, ptr %i.lf, align 4, !tbaa !120, !alias.scope !346
  %wide.load150 = load <8 x float>, ptr %i.lg, align 4, !tbaa !120, !alias.scope !346
  %i.lh = fsub <8 x float> %wide.load, %broadcast.splat143
  %i.li = fsub <8 x float> %wide.load148, %broadcast.splat143
  %i.lj = fsub <8 x float> %wide.load149, %broadcast.splat143
  %i.lk = fsub <8 x float> %wide.load150, %broadcast.splat143
  %i.ll = fdiv <8 x float> %i.lh, %broadcast.splat145
  %i.lm = fdiv <8 x float> %i.li, %broadcast.splat145
  %i.ln = fdiv <8 x float> %i.lj, %broadcast.splat145
  %i.lo = fdiv <8 x float> %i.lk, %broadcast.splat145
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %index147 ; 4 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 4
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 36
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lp, i64 68
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lp, i64 100
  %wide.load151 = load <8 x float>, ptr %i.lq, align 4, !tbaa !120, !alias.scope !347
  %wide.load152 = load <8 x float>, ptr %i.lr, align 4, !tbaa !120, !alias.scope !347
  %wide.load153 = load <8 x float>, ptr %i.ls, align 4, !tbaa !120, !alias.scope !347
  %wide.load154 = load <8 x float>, ptr %i.lt, align 4, !tbaa !120, !alias.scope !347
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %index147 ; 4 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 32
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 64
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lu, i64 96
  %wide.load155 = load <8 x float>, ptr %i.lu, align 4, !tbaa !120, !alias.scope !347
  %wide.load156 = load <8 x float>, ptr %i.lv, align 4, !tbaa !120, !alias.scope !347
  %wide.load157 = load <8 x float>, ptr %i.lw, align 4, !tbaa !120, !alias.scope !347
  %wide.load158 = load <8 x float>, ptr %i.lx, align 4, !tbaa !120, !alias.scope !347
  %i.ly = fsub <8 x float> %wide.load151, %wide.load155
  %i.lz = fsub <8 x float> %wide.load152, %wide.load156
  %i.ma = fsub <8 x float> %wide.load153, %wide.load157
  %i.mb = fsub <8 x float> %wide.load154, %wide.load158
  %i.mc = fmul <8 x float> %broadcast.splat141, %i.ll
  %i.md = fmul <8 x float> %broadcast.splat141, %i.lm
  %i.me = fmul <8 x float> %broadcast.splat141, %i.ln
  %i.mf = fmul <8 x float> %broadcast.splat141, %i.lo
  %i.mg = fsub <8 x float> splat (float 1.000000e+00), %i.mc
  %i.mh = fsub <8 x float> splat (float 1.000000e+00), %i.md
  %i.mi = fsub <8 x float> splat (float 1.000000e+00), %i.me
  %i.mj = fsub <8 x float> splat (float 1.000000e+00), %i.mf
  %i.mk = fmul <8 x float> %i.ly, %i.mg
  %i.ml = fmul <8 x float> %i.lz, %i.mh
  %i.mm = fmul <8 x float> %i.ma, %i.mi
  %i.mn = fmul <8 x float> %i.mb, %i.mj
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %index147 ; 4 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 32
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mo, i64 64
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mo, i64 96
  store <8 x float> %i.mk, ptr %i.mo, align 4, !tbaa !120, !alias.scope !348, !noalias !349
  store <8 x float> %i.ml, ptr %i.mp, align 4, !tbaa !120, !alias.scope !348, !noalias !349
  store <8 x float> %i.mm, ptr %i.mq, align 4, !tbaa !120, !alias.scope !348, !noalias !349
  store <8 x float> %i.mn, ptr %i.mr, align 4, !tbaa !120, !alias.scope !348, !noalias !349
  %index.next159 = add nuw i64 %index147, 32      ; 2 uses
  %i.ms = icmp eq i64 %index.next159, %n.vec139
  br i1 %i.ms, label %middle.block160, label %vector.body146, !llvm.loop !295

middle.block160:                                  ; preds = %vector.body146
  %cmp.n161 = icmp eq i64 %n.vec139, %wide.trip.count279.i.i.i
  br i1 %cmp.n161, label %.loopexit245.i.i.i, label %vec.epilog.iter.check163

vec.epilog.iter.check163:                         ; preds = %middle.block160
  %min.epilog.iters.check165 = icmp eq i64 %i.lb, 0
  br i1 %min.epilog.iters.check165, label %vec.epilog.scalar.ph164.preheader, label %vec.epilog.ph166, !prof !136

vec.epilog.ph166:                                 ; preds = %vector.main.loop.iter.check136, %vec.epilog.iter.check163
  %vec.epilog.resume.val167 = phi i64 [ %n.vec139, %vec.epilog.iter.check163 ], [ 0, %vector.main.loop.iter.check136 ]
  %n.vec168 = and i64 %wide.trip.count279.i.i.i, 2147483644 ; 3 uses
  %broadcast.splatinsert169 = insertelement <4 x float> poison, float %.0210329.i.i.i, i64 0
  %broadcast.splat170 = shufflevector <4 x float> %broadcast.splatinsert169, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert171 = insertelement <4 x float> poison, float %i.kb, i64 0
  %broadcast.splat172 = shufflevector <4 x float> %broadcast.splatinsert171, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert173 = insertelement <4 x float> poison, float %i.kh, i64 0
  %broadcast.splat174 = shufflevector <4 x float> %broadcast.splatinsert173, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body175

vec.epilog.vector.body175:                        ; preds = %vec.epilog.vector.body175, %vec.epilog.ph166
  %index176 = phi i64 [ %vec.epilog.resume.val167, %vec.epilog.ph166 ], [ %index.next180, %vec.epilog.vector.body175 ] ; 5 uses
  %i.mt = getelementptr [4 x i8], ptr %i.kf, i64 %index176
  %i.mu = getelementptr i8, ptr %i.mt, i64 8
  %wide.load177 = load <4 x float>, ptr %i.mu, align 4, !tbaa !120, !alias.scope !346
  %i.mv = fsub <4 x float> %wide.load177, %broadcast.splat172
  %i.mw = fdiv <4 x float> %i.mv, %broadcast.splat174
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %index176
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 4
  %wide.load178 = load <4 x float>, ptr %i.my, align 4, !tbaa !120, !alias.scope !347
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %index176
  %wide.load179 = load <4 x float>, ptr %i.mz, align 4, !tbaa !120, !alias.scope !347
  %i.na = fsub <4 x float> %wide.load178, %wide.load179
  %i.nb = fmul <4 x float> %broadcast.splat170, %i.mw
  %i.nc = fsub <4 x float> splat (float 1.000000e+00), %i.nb
  %i.nd = fmul <4 x float> %i.na, %i.nc
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %index176
  store <4 x float> %i.nd, ptr %i.ne, align 4, !tbaa !120, !alias.scope !348, !noalias !349
  %index.next180 = add nuw i64 %index176, 4       ; 2 uses
  %i.nf = icmp eq i64 %index.next180, %n.vec168
  br i1 %i.nf, label %vec.epilog.middle.block181, label %vec.epilog.vector.body175, !llvm.loop !296

vec.epilog.middle.block181:                       ; preds = %vec.epilog.vector.body175
  %cmp.n182 = icmp eq i64 %n.vec168, %wide.trip.count279.i.i.i
  br i1 %cmp.n182, label %.loopexit245.i.i.i, label %vec.epilog.scalar.ph164.preheader

vec.epilog.scalar.ph164.preheader:                ; preds = %iter.check162, %vector.memcheck, %vec.epilog.iter.check163, %vec.epilog.middle.block181
  %indvars.iv281.i.i.i.ph = phi i64 [ 0, %iter.check162 ], [ 0, %vector.memcheck ], [ %n.vec139, %vec.epilog.iter.check163 ], [ %n.vec168, %vec.epilog.middle.block181 ] ; 6 uses
  %xtraiter238 = and i64 %wide.trip.count279.i.i.i, 1
  %lcmp.mod239.not = icmp eq i64 %xtraiter238, 0
  br i1 %lcmp.mod239.not, label %vec.epilog.scalar.ph164.prol.loopexit, label %vec.epilog.scalar.ph164.prol

vec.epilog.scalar.ph164.prol:                     ; preds = %vec.epilog.scalar.ph164.preheader
  %i.ng = mul nsw i64 %indvars.iv281.i.i.i.ph, %i.ki
  %i.nh = getelementptr [4 x i8], ptr %i.kf, i64 %i.ng
  %i.ni = getelementptr i8, ptr %i.nh, i64 8
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !120
  %i.nk = fsub float %i.nj, %i.kb
  %i.nl = fdiv float %i.nk, %i.kh
  %indvars.iv.next282.i.i.i.prol = or disjoint i64 %indvars.iv281.i.i.i.ph, 1 ; 2 uses
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %indvars.iv.next282.i.i.i.prol
  %i.nn = load float, ptr %i.nm, align 4, !tbaa !120
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %indvars.iv281.i.i.i.ph
  %i.np = load float, ptr %i.no, align 4, !tbaa !120
  %i.nq = fsub float %i.nn, %i.np
  %i.nr = fmul float %.0210329.i.i.i, %i.nl
  %i.ns = fsub float 1.000000e+00, %i.nr
  %i.nt = fmul float %i.nq, %i.ns
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv281.i.i.i.ph
  store float %i.nt, ptr %i.nu, align 4, !tbaa !120
  br label %vec.epilog.scalar.ph164.prol.loopexit

vec.epilog.scalar.ph164.prol.loopexit:            ; preds = %vec.epilog.scalar.ph164.prol, %vec.epilog.scalar.ph164.preheader
  %indvars.iv281.i.i.i.unr = phi i64 [ %indvars.iv281.i.i.i.ph, %vec.epilog.scalar.ph164.preheader ], [ %indvars.iv.next282.i.i.i.prol, %vec.epilog.scalar.ph164.prol ]
  %i.nv = add nsw i64 %wide.trip.count279.i.i.i, -1
  %i.nw = icmp eq i64 %indvars.iv281.i.i.i.ph, %i.nv
  br i1 %i.nw, label %.loopexit245.i.i.i, label %vec.epilog.scalar.ph164

bb.t:                                             ; preds = %bb.t, %.lr.ph252.i.i.i.new
  %indvars.iv276.i.i.i = phi i64 [ 0, %.lr.ph252.i.i.i.new ], [ %indvars.iv.next277.i.i.i.3, %bb.t ] ; 5 uses
  %.0241249.i.i.i = phi float [ 0.000000e+00, %.lr.ph252.i.i.i.new ], [ %.sroa.speculated.i.i.i.3, %bb.t ] ; 2 uses
  %niter237 = phi i64 [ 0, %.lr.ph252.i.i.i.new ], [ %niter237.next.3, %bb.t ]
  %i.nx = mul nsw i64 %indvars.iv276.i.i.i, %i.ki
  %i.ny = getelementptr [4 x i8], ptr %i.kf, i64 %i.nx
  %i.nz = getelementptr i8, ptr %i.ny, i64 8
  %i.oa = load float, ptr %i.nz, align 4, !tbaa !120
  %i.ob = fsub float %i.oa, %i.kb
  %i.oc = fdiv float %i.ob, %i.kh
  %i.od = fmul float %i.oc, -5.000000e-01         ; 3 uses
  %i.oe = fneg float %i.od
  %i.of = fcmp olt float %i.od, 0.000000e+00
  %i.og = select i1 %i.of, float %i.oe, float %i.od ; 2 uses
  %i.oh = fcmp olt float %.0241249.i.i.i, %i.og
  %.sroa.speculated.i.i.i = select i1 %i.oh, float %i.og, float %.0241249.i.i.i ; 2 uses
  %indvars.iv.next277.i.i.i = or disjoint i64 %indvars.iv276.i.i.i, 1
  %i.oi = mul nsw i64 %indvars.iv.next277.i.i.i, %i.ki
  %i.oj = getelementptr [4 x i8], ptr %i.kf, i64 %i.oi
  %i.ok = getelementptr i8, ptr %i.oj, i64 8
  %i.ol = load float, ptr %i.ok, align 4, !tbaa !120
  %i.om = fsub float %i.ol, %i.kb
  %i.on = fdiv float %i.om, %i.kh
  %i.oo = fmul float %i.on, -5.000000e-01         ; 3 uses
  %i.op = fneg float %i.oo
  %i.oq = fcmp olt float %i.oo, 0.000000e+00
  %i.or = select i1 %i.oq, float %i.op, float %i.oo ; 2 uses
  %i.os = fcmp olt float %.sroa.speculated.i.i.i, %i.or
  %.sroa.speculated.i.i.i.1 = select i1 %i.os, float %i.or, float %.sroa.speculated.i.i.i ; 2 uses
  %indvars.iv.next277.i.i.i.1 = or disjoint i64 %indvars.iv276.i.i.i, 2
  %i.ot = mul nsw i64 %indvars.iv.next277.i.i.i.1, %i.ki
  %i.ou = getelementptr [4 x i8], ptr %i.kf, i64 %i.ot
  %i.ov = getelementptr i8, ptr %i.ou, i64 8
  %i.ow = load float, ptr %i.ov, align 4, !tbaa !120
  %i.ox = fsub float %i.ow, %i.kb
end_hunk_0
