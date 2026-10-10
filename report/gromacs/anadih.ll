Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/anadih?download=true
inline.NumInlined: 274
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_Z31output_env_get_print_xvgr_codesPK16gmx_output_env_t
declare noundef zeroext i1 @_Z31output_env_get_print_xvgr_codesPK16gmx_output_env_t(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_Z23calc_distribution_propsiPKifiP9t_karplusPf(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, float noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.a = icmp eq i32 %0, 0
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZNSt10filesystem7__cxx114pathC2IA62_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 1 dereferenceable(62) @.str.7, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef 647, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.7, i32 noundef 647) #26
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  resume { ptr, i32 } %i.b

bb.e:                                             ; preds = %bb.a
  %i.c = sitofp i32 %0 to double
  %i.d = fdiv double f0x401921FB54442D18, %i.c
  %i.e = fptrunc double %i.d to float             ; 6 uses
  %i.f = icmp sgt i32 %0, 0                       ; 2 uses
  br i1 %i.f, label %iter.check, label %._crit_edge.thread

iter.check:                                       ; preds = %bb.e
  %wide.trip.count = zext nneg i32 %0 to i64      ; 8 uses
  %min.iters.check = icmp ult i32 %0, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check159 = icmp ult i32 %0, 32
  br i1 %min.iters.check159, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %vec.phi160 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.m, %vector.body ]
  %vec.phi161 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.n, %vector.body ]
  %vec.phi162 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.o, %vector.body ]
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %wide.load = load <8 x i32>, ptr %i.h, align 4, !tbaa !28
  %wide.load163 = load <8 x i32>, ptr %i.i, align 4, !tbaa !28
  %wide.load164 = load <8 x i32>, ptr %i.j, align 4, !tbaa !28
  %wide.load165 = load <8 x i32>, ptr %i.k, align 4, !tbaa !28
  %i.l = add <8 x i32> %wide.load, %vec.phi       ; 2 uses
  %i.m = add <8 x i32> %wide.load163, %vec.phi160 ; 2 uses
  %i.n = add <8 x i32> %wide.load164, %vec.phi161 ; 2 uses
  %i.o = add <8 x i32> %wide.load165, %vec.phi162 ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !90

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i32> %i.m, %i.l
  %bin.rdx166 = add <8 x i32> %i.n, %bin.rdx
  %bin.rdx167 = add <8 x i32> %i.o, %bin.rdx166
  %i.q = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx167) ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !39

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.q, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec168 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %i.r = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index169 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next172, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi170 = phi <4 x i32> [ %i.r, %vec.epilog.ph ], [ %i.t, %vec.epilog.vector.body ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index169
  %wide.load171 = load <4 x i32>, ptr %i.s, align 4, !tbaa !28
  %i.t = add <4 x i32> %wide.load171, %vec.phi170 ; 2 uses
  %index.next172 = add nuw i64 %index169, 4       ; 2 uses
  %i.u = icmp eq i64 %index.next172, %n.vec168
  br i1 %i.u, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !91

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.v = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.t) ; 2 uses
  %cmp.n173 = icmp eq i64 %n.vec168, %wide.trip.count
  br i1 %cmp.n173, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec168, %vec.epilog.middle.block ]
  %.088.ph = phi i32 [ 0, %iter.check ], [ %i.q, %vec.epilog.iter.check ], [ %i.v, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %.088 = phi i32 [ %i.y, %.lr.ph ], [ %.088.ph, %.lr.ph.preheader ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.x = load i32, ptr %i.w, align 4, !tbaa !28
  %i.y = add nsw i32 %i.x, %.088                  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !92

._crit_edge:                                      ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa158 = phi i32 [ %i.v, %vec.epilog.middle.block ], [ %i.q, %middle.block ], [ %i.y, %.lr.ph ] ; 2 uses
  %i.z = sitofp i32 %.lcssa158 to double
  %i.aa = fdiv nnan double 1.000000e+00, %i.z
  %i.ab = fptrunc nnan double %i.aa to float      ; 6 uses
  %i.ac = icmp sgt i32 %3, 0
  br i1 %i.ac, label %.lr.ph91.preheader, label %.lr.ph99.split.preheader

._crit_edge.thread:                               ; preds = %bb.e
  %i.ad = icmp sgt i32 %3, 0
  br i1 %i.ad, label %.lr.ph91.preheader, label %._crit_edge105

.lr.ph91.preheader:                               ; preds = %._crit_edge.thread, %._crit_edge
  %i.ae = phi float [ +inf, %._crit_edge.thread ], [ %i.ab, %._crit_edge ]
  %.0.lcssa143 = phi i32 [ 0, %._crit_edge.thread ], [ %.lcssa158, %._crit_edge ]
  %wide.trip.count115 = zext i32 %3 to i64        ; 7 uses
  %min.iters.check175 = icmp ult i32 %3, 8
  br i1 %min.iters.check175, label %.lr.ph91.preheader190, label %vector.ph176

vector.ph176:                                     ; preds = %.lr.ph91.preheader
  %n.vec177 = and i64 %wide.trip.count115, 2147483640 ; 3 uses
  br label %vector.body178

vector.body178:                                   ; preds = %vector.body178, %vector.ph176
  %index179 = phi i64 [ 0, %vector.ph176 ], [ %index.next182, %vector.body178 ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph176 ], [ %vec.ind.next, %vector.body178 ] ; 2 uses
  %wide.gep = getelementptr inbounds nuw [32 x i8], ptr %4, <8 x i64> %vec.ind ; 2 uses
  %wide.gep180 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 24
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> zeroinitializer, <8 x ptr> align 8 %wide.gep180, <8 x i1> splat (i1 true)), !tbaa !101
  %wide.gep181 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 28
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> zeroinitializer, <8 x ptr> align 4 %wide.gep181, <8 x i1> splat (i1 true)), !tbaa !102
  %index.next182 = add nuw i64 %index179, 8       ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.af = icmp eq i64 %index.next182, %n.vec177
  br i1 %i.af, label %middle.block183, label %vector.body178, !llvm.loop !93

middle.block183:                                  ; preds = %vector.body178
  %cmp.n184 = icmp eq i64 %n.vec177, %wide.trip.count115
  br i1 %cmp.n184, label %.preheader86, label %.lr.ph91.preheader190

.lr.ph91.preheader190:                            ; preds = %.lr.ph91.preheader, %middle.block183
  %indvars.iv112.ph = phi i64 [ 0, %.lr.ph91.preheader ], [ %n.vec177, %middle.block183 ]
  br label %.lr.ph91

.preheader86:                                     ; preds = %.lr.ph91, %middle.block183
  br i1 %i.f, label %.lr.ph94.us.preheader, label %.lr.ph104

.lr.ph99.split.preheader:                         ; preds = %._crit_edge
  %i.ag = fneg float %2                           ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ah = icmp ult i32 %0, 4
  br i1 %i.ah, label %.lr.ph99.split.epil.preheader, label %.lr.ph99.split.preheader.new

.lr.ph99.split.preheader.new:                     ; preds = %.lr.ph99.split.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph99.split

.lr.ph94.us.preheader:                            ; preds = %.preheader86
  %i.ai = fneg float %2
  %wide.trip.count130 = zext nneg i32 %0 to i64
  %xtraiter203 = and i64 %wide.trip.count115, 1
  %i.aj = icmp eq i32 %3, 1
  %unroll_iter207 = and i64 %wide.trip.count115, 4294967294
  %lcmp.mod205.not = icmp eq i64 %xtraiter203, 0
  %lcmp.mod206 = trunc i32 %3 to i1
  br label %.lr.ph94.us

.lr.ph94.us:                                      ; preds = %.lr.ph94.us.preheader, %._crit_edge95.us
  %indvars.iv127 = phi i64 [ 0, %.lr.ph94.us.preheader ], [ %indvars.iv.next128, %._crit_edge95.us ] ; 3 uses
  %.08297.us = phi float [ 0.000000e+00, %.lr.ph94.us.preheader ], [ %i.cy, %._crit_edge95.us ]
  %.08396.us = phi float [ 0.000000e+00, %.lr.ph94.us.preheader ], [ %i.cx, %._crit_edge95.us ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv127 ; 4 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !28
  %i.am = trunc nuw nsw i64 %indvars.iv127 to i32
  %i.an = uitofp nneg i32 %i.am to float
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.an, float %i.e, float %i.ai) ; 5 uses
  %i.ap = tail call noundef float @cosf(float noundef %i.ao) #24
  %i.aq = tail call noundef float @sinf(float noundef %i.ao) #24
  br i1 %i.aj, label %.epil.preheader, label %.lr.ph94.us.new

.lr.ph94.us.new:                                  ; preds = %.lr.ph94.us, %.lr.ph94.us.new
  %indvars.iv122 = phi i64 [ %indvars.iv.next123.1, %.lr.ph94.us.new ], [ 0, %.lr.ph94.us ] ; 3 uses
  %niter208 = phi i64 [ %niter208.next.1, %.lr.ph94.us.new ], [ 0, %.lr.ph94.us ]
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %indvars.iv122 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 20
  %i.at = load float, ptr %i.as, align 4, !tbaa !103
  %i.au = fadd float %i.ao, %i.at
  %i.av = tail call noundef float @cosf(float noundef %i.au) #24 ; 3 uses
  %i.aw = fmul float %i.av, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ay = load float, ptr %i.ax, align 8, !tbaa !104
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.ba = load float, ptr %i.az, align 4, !tbaa !105
  %i.bb = fmul float %i.av, %i.ba
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.aw, float %i.bb)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.be = load float, ptr %i.bd, align 8, !tbaa !106
  %i.bf = fadd float %i.be, %i.bc                 ; 3 uses
  %i.bg = load i32, ptr %i.ak, align 4, !tbaa !28
  %i.bh = sitofp i32 %i.bg to float               ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 2 uses
  %7 = load float, ptr %i.bi, align 8, !tbaa !101
  %8 = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.bf, float %7)
  store float %8, ptr %i.bi, align 8, !tbaa !101
  %9 = fmul float %i.bf, %i.bf
  %10 = getelementptr inbounds nuw i8, ptr %i.ar, i64 28 ; 2 uses
  %11 = load float, ptr %10, align 4, !tbaa !102
  %12 = tail call float @llvm.fmuladd.f32(float %i.bh, float %9, float %11)
  store float %12, ptr %10, align 4, !tbaa !102
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %indvars.iv122 ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 52
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !103
  %i.bm = fadd float %i.ao, %i.bl
  %i.bn = tail call noundef float @cosf(float noundef %i.bm) #24 ; 3 uses
  %i.bo = fmul float %i.bn, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bq = load float, ptr %i.bp, align 8, !tbaa !104
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 44
  %i.bs = load float, ptr %i.br, align 4, !tbaa !105
  %i.bt = fmul float %i.bn, %i.bs
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.bq, float %i.bo, float %i.bt)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %i.bw = load float, ptr %i.bv, align 8, !tbaa !106
  %i.bx = fadd float %i.bw, %i.bu                 ; 3 uses
  %i.by = load i32, ptr %i.ak, align 4, !tbaa !28
  %i.bz = sitofp i32 %i.by to float               ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bj, i64 56 ; 2 uses
  %13 = load float, ptr %i.ca, align 8, !tbaa !101
  %14 = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.bx, float %13)
  store float %14, ptr %i.ca, align 8, !tbaa !101
  %15 = fmul float %i.bx, %i.bx
  %16 = getelementptr inbounds nuw i8, ptr %i.bj, i64 60 ; 2 uses
  %17 = load float, ptr %16, align 4, !tbaa !102
  %18 = tail call float @llvm.fmuladd.f32(float %i.bz, float %15, float %17)
  store float %18, ptr %16, align 4, !tbaa !102
  %indvars.iv.next123.1 = add nuw nsw i64 %indvars.iv122, 2 ; 2 uses
  %niter208.next.1 = add i64 %niter208, 2         ; 2 uses
  %niter208.ncmp.1 = icmp eq i64 %niter208.next.1, %unroll_iter207
  br i1 %niter208.ncmp.1, label %._crit_edge95.us.unr-lcssa, label %.lr.ph94.us.new, !llvm.loop !94

._crit_edge95.us.unr-lcssa:                       ; preds = %.lr.ph94.us.new
  br i1 %lcmp.mod205.not, label %._crit_edge95.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge95.us.unr-lcssa, %.lr.ph94.us
  %indvars.iv122.epil.init = phi i64 [ 0, %.lr.ph94.us ], [ %indvars.iv.next123.1, %._crit_edge95.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod206)
  %i.cb = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %indvars.iv122.epil.init ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 20
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !103
  %i.ce = fadd float %i.ao, %i.cd
  %i.cf = tail call noundef float @cosf(float noundef %i.ce) #24 ; 3 uses
  %i.cg = fmul float %i.cf, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ci = load float, ptr %i.ch, align 8, !tbaa !104
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !105
  %i.cl = fmul float %i.cf, %i.ck
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.ci, float %i.cg, float %i.cl)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.co = load float, ptr %i.cn, align 8, !tbaa !106
  %i.cp = fadd float %i.co, %i.cm                 ; 3 uses
  %i.cq = load i32, ptr %i.ak, align 4, !tbaa !28
  %i.cr = sitofp i32 %i.cq to float               ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cb, i64 24 ; 2 uses
  %19 = load float, ptr %i.cs, align 8, !tbaa !101
  %20 = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.cp, float %19)
  store float %20, ptr %i.cs, align 8, !tbaa !101
  %21 = fmul float %i.cp, %i.cp
  %22 = getelementptr inbounds nuw i8, ptr %i.cb, i64 28 ; 2 uses
  %23 = load float, ptr %22, align 4, !tbaa !102
  %24 = tail call float @llvm.fmuladd.f32(float %i.cr, float %21, float %23)
  store float %24, ptr %22, align 4, !tbaa !102
  br label %._crit_edge95.us

._crit_edge95.us:                                 ; preds = %._crit_edge95.us.unr-lcssa, %.epil.preheader
  %i.ct = sitofp i32 %i.al to float
  %i.cu = fmul float %i.ae, %i.ct                 ; 2 uses
  %i.cv = fmul float %i.ap, %i.cu
  %i.cw = fmul float %i.cu, %i.aq
  %i.cx = fadd float %.08396.us, %i.cv            ; 2 uses
  %i.cy = fadd float %.08297.us, %i.cw            ; 2 uses
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %exitcond131.not = icmp eq i64 %indvars.iv.next128, %wide.trip.count130
  br i1 %exitcond131.not, label %.lr.ph104, label %.lr.ph94.us, !llvm.loop !95

.lr.ph91:                                         ; preds = %.lr.ph91.preheader190, %.lr.ph91
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %.lr.ph91 ], [ %indvars.iv112.ph, %.lr.ph91.preheader190 ] ; 2 uses
  %i.cz = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %indvars.iv112
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  store <2 x float> zeroinitializer, ptr %i.da, align 8, !tbaa !26
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %exitcond116.not = icmp eq i64 %indvars.iv.next113, %wide.trip.count115
  br i1 %exitcond116.not, label %.preheader86, label %.lr.ph91, !llvm.loop !96

.lr.ph104:                                        ; preds = %._crit_edge95.us, %.preheader86
  %.082.lcssa148 = phi float [ 0.000000e+00, %.preheader86 ], [ %i.cy, %._crit_edge95.us ] ; 2 uses
  %.083.lcssa147 = phi float [ 0.000000e+00, %.preheader86 ], [ %i.cx, %._crit_edge95.us ] ; 2 uses
  %i.db = sitofp i32 %.0.lcssa143 to float
  %i.dc = insertelement <2 x float> poison, float %i.db, i64 0
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> zeroinitializer ; 5 uses
  %xtraiter210 = and i64 %wide.trip.count115, 3   ; 3 uses
  %i.de = add i32 %3, -1
  %i.df = icmp ult i32 %i.de, 3
  br i1 %i.df, label %.epil.preheader209, label %.lr.ph104.new

.lr.ph104.new:                                    ; preds = %.lr.ph104
  %unroll_iter214 = and i64 %wide.trip.count115, 4294967292
  br label %bb.f

.lr.ph99.split:                                   ; preds = %.lr.ph99.split, %.lr.ph99.split.preheader.new
  %indvars.iv117 = phi i64 [ 0, %.lr.ph99.split.preheader.new ], [ %indvars.iv.next118.3, %.lr.ph99.split ] ; 6 uses
  %.08297 = phi float [ 0.000000e+00, %.lr.ph99.split.preheader.new ], [ %i.ff, %.lr.ph99.split ]
  %.08396 = phi float [ 0.000000e+00, %.lr.ph99.split.preheader.new ], [ %i.fe, %.lr.ph99.split ]
  %niter = phi i64 [ 0, %.lr.ph99.split.preheader.new ], [ %niter.next.3, %.lr.ph99.split ]
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv117
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !28
  %i.di = sitofp i32 %i.dh to float
  %i.dj = fmul float %i.ab, %i.di                 ; 2 uses
  %i.dk = trunc nuw nsw i64 %indvars.iv117 to i32
  %i.dl = uitofp nneg i32 %i.dk to float
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.dl, float %i.e, float %i.ag) ; 2 uses
  %i.dn = tail call noundef float @cosf(float noundef %i.dm) #24
  %i.do = fmul float %i.dn, %i.dj
  %i.dp = tail call noundef float @sinf(float noundef %i.dm) #24
  %i.dq = fmul float %i.dj, %i.dp
  %i.dr = fadd float %.08396, %i.do
  %i.ds = fadd float %.08297, %i.dq
  %indvars.iv.next118 = or disjoint i64 %indvars.iv117, 1 ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next118
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !28
  %i.dv = sitofp i32 %i.du to float
  %i.dw = fmul float %i.ab, %i.dv                 ; 2 uses
  %i.dx = trunc nuw nsw i64 %indvars.iv.next118 to i32
  %i.dy = uitofp nneg i32 %i.dx to float
  %i.dz = tail call float @llvm.fmuladd.f32(float %i.dy, float %i.e, float %i.ag) ; 2 uses
  %i.ea = tail call noundef float @cosf(float noundef %i.dz) #24
  %i.eb = fmul float %i.ea, %i.dw
  %i.ec = tail call noundef float @sinf(float noundef %i.dz) #24
  %i.ed = fmul float %i.dw, %i.ec
  %i.ee = fadd float %i.dr, %i.eb
  %i.ef = fadd float %i.ds, %i.ed
  %indvars.iv.next118.1 = or disjoint i64 %indvars.iv117, 2 ; 2 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next118.1
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !28
  %i.ei = sitofp i32 %i.eh to float
  %i.ej = fmul float %i.ab, %i.ei                 ; 2 uses
  %i.ek = trunc nuw nsw i64 %indvars.iv.next118.1 to i32
  %i.el = uitofp nneg i32 %i.ek to float
  %i.em = tail call float @llvm.fmuladd.f32(float %i.el, float %i.e, float %i.ag) ; 2 uses
  %i.en = tail call noundef float @cosf(float noundef %i.em) #24
  %i.eo = fmul float %i.en, %i.ej
  %i.ep = tail call noundef float @sinf(float noundef %i.em) #24
  %i.eq = fmul float %i.ej, %i.ep
  %i.er = fadd float %i.ee, %i.eo
  %i.es = fadd float %i.ef, %i.eq
  %indvars.iv.next118.2 = or disjoint i64 %indvars.iv117, 3 ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next118.2
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !28
  %i.ev = sitofp i32 %i.eu to float
  %i.ew = fmul float %i.ab, %i.ev                 ; 2 uses
  %i.ex = trunc nuw nsw i64 %indvars.iv.next118.2 to i32
  %i.ey = uitofp nneg i32 %i.ex to float
  %i.ez = tail call float @llvm.fmuladd.f32(float %i.ey, float %i.e, float %i.ag) ; 2 uses
  %i.fa = tail call noundef float @cosf(float noundef %i.ez) #24
  %i.fb = fmul float %i.fa, %i.ew
  %i.fc = tail call noundef float @sinf(float noundef %i.ez) #24
  %i.fd = fmul float %i.ew, %i.fc
  %i.fe = fadd float %i.er, %i.fb                 ; 3 uses
  %i.ff = fadd float %i.es, %i.fd                 ; 3 uses
  %indvars.iv.next118.3 = add nuw nsw i64 %indvars.iv117, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge105.loopexit191.unr-lcssa, label %.lr.ph99.split, !llvm.loop !95

bb.f:                                             ; preds = %bb.f, %.lr.ph104.new
  %indvars.iv132 = phi i64 [ 0, %.lr.ph104.new ], [ %indvars.iv.next133.3, %bb.f ] ; 5 uses
  %niter215 = phi i64 [ 0, %.lr.ph104.new ], [ %niter215.next.3, %bb.f ]
  %i.fg = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %indvars.iv132 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 28
  %i.fj = load <2 x float>, ptr %i.fh, align 8, !tbaa !26
  %i.fk = fdiv <2 x float> %i.fj, %i.dd           ; 4 uses
  %i.fl = extractelement <2 x float> %i.fk, i64 0
  store float %i.fl, ptr %i.fh, align 8, !tbaa !101
  %foldExtExtBinop = fmul <2 x float> %i.fk, %i.fk
  %shift = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop187 = fsub <2 x float> %shift, %foldExtExtBinop
  %i.fm = extractelement <2 x float> %foldExtExtBinop187, i64 0
  %i.fn = tail call noundef float @sqrtf(float noundef %i.fm) #24
  store float %i.fn, ptr %i.fi, align 4, !tbaa !102
  %i.fo = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %indvars.iv132 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 56 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 60
  %i.fr = load <2 x float>, ptr %i.fp, align 8, !tbaa !26
  %i.fs = fdiv <2 x float> %i.fr, %i.dd           ; 4 uses
  %i.ft = extractelement <2 x float> %i.fs, i64 0
  store float %i.ft, ptr %i.fp, align 8, !tbaa !101
  %foldExtExtBinop.1 = fmul <2 x float> %i.fs, %i.fs
  %shift.1 = shufflevector <2 x float> %i.fs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop187.1 = fsub <2 x float> %shift.1, %foldExtExtBinop.1
  %i.fu = extractelement <2 x float> %foldExtExtBinop187.1, i64 0
  %i.fv = tail call noundef float @sqrtf(float noundef %i.fu) #24
  store float %i.fv, ptr %i.fq, align 4, !tbaa !102
  %i.fw = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %indvars.iv132 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 88 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 92
  %i.fz = load <2 x float>, ptr %i.fx, align 8, !tbaa !26
  %i.ga = fdiv <2 x float> %i.fz, %i.dd           ; 4 uses
  %i.gb = extractelement <2 x float> %i.ga, i64 0
  store float %i.gb, ptr %i.fx, align 8, !tbaa !101
  %foldExtExtBinop.2 = fmul <2 x float> %i.ga, %i.ga
  %shift.2 = shufflevector <2 x float> %i.ga, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop187.2 = fsub <2 x float> %shift.2, %foldExtExtBinop.2
  %i.gc = extractelement <2 x float> %foldExtExtBinop187.2, i64 0
  %i.gd = tail call noundef float @sqrtf(float noundef %i.gc) #24
  store float %i.gd, ptr %i.fy, align 4, !tbaa !102
  %i.ge = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %indvars.iv132 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 120 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 124
  %i.gh = load <2 x float>, ptr %i.gf, align 8, !tbaa !26
  %i.gi = fdiv <2 x float> %i.gh, %i.dd           ; 4 uses
  %i.gj = extractelement <2 x float> %i.gi, i64 0
  store float %i.gj, ptr %i.gf, align 8, !tbaa !101
  %foldExtExtBinop.3 = fmul <2 x float> %i.gi, %i.gi
  %shift.3 = shufflevector <2 x float> %i.gi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop187.3 = fsub <2 x float> %shift.3, %foldExtExtBinop.3
  %i.gk = extractelement <2 x float> %foldExtExtBinop187.3, i64 0
  %i.gl = tail call noundef float @sqrtf(float noundef %i.gk) #24
  store float %i.gl, ptr %i.gg, align 4, !tbaa !102
  %indvars.iv.next133.3 = add nuw nsw i64 %indvars.iv132, 4 ; 2 uses
  %niter215.next.3 = add i64 %niter215, 4         ; 2 uses
  %niter215.ncmp.3 = icmp eq i64 %niter215.next.3, %unroll_iter214
  br i1 %niter215.ncmp.3, label %._crit_edge105.loopexit.unr-lcssa, label %bb.f, !llvm.loop !97

._crit_edge105.loopexit.unr-lcssa:                ; preds = %bb.f
  %lcmp.mod212.not = icmp eq i64 %xtraiter210, 0
  br i1 %lcmp.mod212.not, label %._crit_edge105, label %.epil.preheader209

.epil.preheader209:                               ; preds = %._crit_edge105.loopexit.unr-lcssa, %.lr.ph104
  %indvars.iv132.epil.init = phi i64 [ 0, %.lr.ph104 ], [ %indvars.iv.next133.3, %._crit_edge105.loopexit.unr-lcssa ]
  %lcmp.mod213 = icmp ne i64 %xtraiter210, 0
  tail call void @llvm.assume(i1 %lcmp.mod213)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader209
  %indvars.iv132.epil = phi i64 [ %indvars.iv132.epil.init, %.epil.preheader209 ], [ %indvars.iv.next133.epil, %bb.g ] ; 2 uses
  %epil.iter211 = phi i64 [ 0, %.epil.preheader209 ], [ %epil.iter211.next, %bb.g ]
  %i.gm = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %indvars.iv132.epil ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 24 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 28
  %i.gp = load <2 x float>, ptr %i.gn, align 8, !tbaa !26
  %i.gq = fdiv <2 x float> %i.gp, %i.dd           ; 4 uses
  %i.gr = extractelement <2 x float> %i.gq, i64 0
  store float %i.gr, ptr %i.gn, align 8, !tbaa !101
  %foldExtExtBinop.epil = fmul <2 x float> %i.gq, %i.gq
  %shift.epil = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop187.epil = fsub <2 x float> %shift.epil, %foldExtExtBinop.epil
  %i.gs = extractelement <2 x float> %foldExtExtBinop187.epil, i64 0
  %i.gt = tail call noundef float @sqrtf(float noundef %i.gs) #24
  store float %i.gt, ptr %i.go, align 4, !tbaa !102
  %indvars.iv.next133.epil = add nuw nsw i64 %indvars.iv132.epil, 1
  %epil.iter211.next = add i64 %epil.iter211, 1   ; 2 uses
  %epil.iter211.cmp.not = icmp eq i64 %epil.iter211.next, %xtraiter210
  br i1 %epil.iter211.cmp.not, label %._crit_edge105, label %bb.g, !llvm.loop !98

._crit_edge105.loopexit191.unr-lcssa:             ; preds = %.lr.ph99.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge105, label %.lr.ph99.split.epil.preheader

.lr.ph99.split.epil.preheader:                    ; preds = %._crit_edge105.loopexit191.unr-lcssa, %.lr.ph99.split.preheader
  %indvars.iv117.epil.init = phi i64 [ 0, %.lr.ph99.split.preheader ], [ %indvars.iv.next118.3, %._crit_edge105.loopexit191.unr-lcssa ]
  %.08297.epil.init = phi float [ 0.000000e+00, %.lr.ph99.split.preheader ], [ %i.ff, %._crit_edge105.loopexit191.unr-lcssa ]
end_hunk_0
begin_hunk_1_@_Z12read_ang_dihPKcbbbbiPiS1_PPfiS1_S3_S3_S3_PK16gmx_output_env_t:bb.a
  %niter444.ncmp.7 = icmp eq i64 %niter444.next.7, %unroll_iter443
  br i1 %niter444.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph256.split.us, !llvm.loop !123

.lr.ph256.split:                                  ; preds = %.lr.ph256, %bb.bc
  %indvars.iv318 = phi i64 [ %indvars.iv.next319, %bb.bc ], [ 0, %.lr.ph256 ] ; 3 uses
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv318
  %i.lz = load float, ptr %i.ly, align 4, !tbaa !26
  %i.ma = invoke noundef float @_Z23correctRadianAngleRangef(float noundef %i.lz)
          to label %bb.bc unwind label %.loopexit198

bb.bc:                                            ; preds = %.lr.ph256.split
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %13, i64 %indvars.iv318
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !34
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %indvars.iv328
  store float %i.ma, ptr %i.md, align 4, !tbaa !26
  %indvars.iv.next319 = add nuw nsw i64 %indvars.iv318, 1 ; 2 uses
  %exitcond322.not = icmp eq i64 %indvars.iv.next319, %wide.trip.count.i
  br i1 %exitcond322.not, label %.loopexit, label %.lr.ph256.split, !llvm.loop !123

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph256.split.us
  br i1 %lcmp.mod441.not, label %.loopexit, label %.lr.ph256.split.us.epil.preheader

.lr.ph256.split.us.epil.preheader:                ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph256.split.us.preheader
  %indvars.iv323.epil.init = phi i64 [ 0, %.lr.ph256.split.us.preheader ], [ %indvars.iv.next324.7, %.loopexit.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod442)
  br label %.lr.ph256.split.us.epil

.lr.ph256.split.us.epil:                          ; preds = %.lr.ph256.split.us.epil, %.lr.ph256.split.us.epil.preheader
  %indvars.iv323.epil = phi i64 [ %indvars.iv.next324.epil, %.lr.ph256.split.us.epil ], [ %indvars.iv323.epil.init, %.lr.ph256.split.us.epil.preheader ] ; 3 uses
  %epil.iter440 = phi i64 [ %epil.iter440.next, %.lr.ph256.split.us.epil ], [ 0, %.lr.ph256.split.us.epil.preheader ]
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv323.epil
  %i.mf = load float, ptr %i.me, align 4, !tbaa !26
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %13, i64 %indvars.iv323.epil
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !34
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %indvars.iv328
  store float %i.mf, ptr %i.mi, align 4, !tbaa !26
  %indvars.iv.next324.epil = add nuw nsw i64 %indvars.iv323.epil, 1
  %epil.iter440.next = add i64 %epil.iter440, 1   ; 2 uses
  %epil.iter440.cmp.not = icmp eq i64 %epil.iter440.next, %xtraiter439
  br i1 %epil.iter440.cmp.not, label %.loopexit, label %.lr.ph256.split.us.epil, !llvm.loop !124

.loopexit:                                        ; preds = %bb.bc, %.loopexit.loopexit.unr-lcssa, %.lr.ph256.split.us.epil, %bb.bb
  %i.mj = load ptr, ptr %i.o, align 8, !tbaa !128
  %i.mk = load ptr, ptr %i.s, align 8, !tbaa !34
  %i.ml = invoke noundef zeroext i1 @_Z11read_next_xPK16gmx_output_env_tP11t_trxstatusPfPA3_fS6_(ptr noundef %14, ptr noundef %i.mj, ptr noundef nonnull %i.p, ptr noundef %i.mk, ptr noundef nonnull %i.r)
          to label %bb.bd unwind label %.loopexit.split-lp203.loopexit.split-lp.loopexit.split-lp.loopexit

bb.bd:                                            ; preds = %.loopexit
  %indvars.iv.next329 = add nuw nsw i64 %indvars.iv328, 1 ; 2 uses
  %i.mm = xor i32 %.0154, 1                       ; 2 uses
  br i1 %i.ml, label %bb.m, label %bb.be, !llvm.loop !125

bb.be:                                            ; preds = %bb.bd
  %i.mn = trunc nuw i64 %indvars.iv.next329 to i32
  %i.mo = load ptr, ptr %i.o, align 8, !tbaa !128
  invoke void @_Z15done_trx_xframeP11t_trxstatus(ptr noundef %i.mo)
          to label %bb.bf unwind label %.loopexit.split-lp203.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bf:                                            ; preds = %bb.be
  %i.mp = load ptr, ptr %i.o, align 8, !tbaa !128
  invoke void @_Z9close_trxP11t_trxstatus(ptr noundef %i.mp)
          to label %bb.bg unwind label %.loopexit.split-lp203.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bg:                                            ; preds = %bb.bf
  %i.mq = zext nneg i32 %i.mm to i64
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.mq
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !34
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.7, i32 noundef 1018, ptr noundef %i.ms)
          to label %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit unwind label %.loopexit.split-lp203.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit:           ; preds = %bb.bg
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.7, i32 noundef 1019, ptr noundef %i.bm)
          to label %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit191 unwind label %.loopexit.split-lp203.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit191:        ; preds = %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit
  store i32 %i.mn, ptr %7, align 4, !tbaa !28
  br i1 %.not167, label %_ZNSt10unique_ptrIvN3gmx15functor_wrapperIvXadL_ZNS0_13sfree_wrapperIvEEvPT_EEEEED2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit191
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, i32 noundef 67, ptr noundef nonnull %i.t)
          to label %_ZNSt10unique_ptrIvN3gmx15functor_wrapperIvXadL_ZNS0_13sfree_wrapperIvEEvPT_EEEEED2Ev.exit unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.mt = landingpad { ptr, i32 }
          catch ptr null
  %i.mu = extractvalue { ptr, i32 } %i.mt, 0
  call void @__clang_call_terminate(ptr %i.mu) #28
  unreachable

_ZNSt10unique_ptrIvN3gmx15functor_wrapperIvXadL_ZNS0_13sfree_wrapperIvEEvPT_EEEEED2Ev.exit: ; preds = %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit191, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #24
  ret void

.loopexit.split-lp203:                            ; preds = %.loopexit.split-lp.loopexit.loopexit, %.loopexit.split-lp.loopexit.loopexit.split-lp, %.loopexit198, %.loopexit.split-lp.loopexit.split-lp, %.loopexit202, %.loopexit.split-lp203.loopexit.split-lp.loopexit, %.loopexit.split-lp203.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp203.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp203.loopexit, %bb.as, %bb.az, %bb.h
  %.pn172 = phi { ptr, i32 } [ %lpad.loopexit310, %bb.as ], [ %.pn, %bb.h ], [ %.pn169, %bb.az ], [ %lpad.loopexit.split-lp221, %.loopexit.split-lp203.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit204, %.loopexit202 ], [ %lpad.loopexit212, %.loopexit.split-lp203.loopexit ], [ %lpad.loopexit218, %.loopexit.split-lp203.loopexit.split-lp.loopexit ], [ %lpad.loopexit220, %.loopexit.split-lp203.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit, %.loopexit198 ], [ %lpad.loopexit.split-lp200, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit311, %.loopexit.split-lp.loopexit.loopexit ], [ %lpad.loopexit.split-lp312, %.loopexit.split-lp.loopexit.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIvN3gmx15functor_wrapperIvXadL_ZNS0_13sfree_wrapperIvEEvPT_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #24
  resume { ptr, i32 } %.pn172
}

declare noundef i32 @_Z12read_first_xPK16gmx_output_env_tPP11t_trxstatusRKNSt10filesystem7__cxx114pathEPfPPA3_fSC_(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z7set_pbcP5t_pbc7PbcTypePA3_Kf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare noundef float @_Z23correctRadianAngleRangef(float noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_Z11read_next_xPK16gmx_output_env_tP11t_trxstatusPfPA3_fS6_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z15done_trx_xframeP11t_trxstatus(ptr noundef) local_unnamed_addr #3

declare void @_Z9close_trxP11t_trxstatus(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIvN3gmx15functor_wrapperIvXadL_ZNS0_13sfree_wrapperIvEEvPT_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !40     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN3gmx15functor_wrapperIvXadL_ZNS_13sfree_wrapperIvEEvPT_EEEclEPv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, i32 noundef 67, ptr noundef nonnull %i.a)
          to label %_ZN3gmx15functor_wrapperIvXadL_ZNS_13sfree_wrapperIvEEvPT_EEEclEPv.exit unwind label %bb.c

_ZN3gmx15functor_wrapperIvXadL_ZNS_13sfree_wrapperIvEEvPT_EEEclEPv.exit: ; preds = %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #28
  unreachable
}

declare noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare noundef float @_Z10bond_anglePKfS0_S0_PK5t_pbcPfS4_S4_PiS5_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z7pr_rvecP8_IO_FILEiPKcPKfib(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare noundef float @_Z9dih_anglePKfS0_S0_S0_PK5t_pbcPfS4_S4_S4_S4_PiS5_S5_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.rint.f32(float) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #13

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8i32.v8p0(<8 x i32>, <8 x ptr>, <8 x i1>) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.fmuladd.v32f32(<32 x float>, <32 x float>, <32 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.experimental.cttz.elts.i64.v32i1(<32 x i1>, i1 immarg) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr>, <8 x i1>, <8 x i32>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v8i32(<8 x i32>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v8f32.p0(<8 x float>, ptr captures(none), <8 x i1>) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v4f32.p0(<4 x float>, ptr captures(none), <4 x i1>) #20

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #16 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nofree nounwind }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #24 = { nounwind }
attributes #25 = { cold nounwind }
attributes #26 = { noreturn }
attributes #27 = { builtin nounwind }
attributes #28 = { noreturn nounwind }
attributes #29 = { cold }
attributes #30 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !27}
!1 = distinct !{!1, !27}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"p1 omnipotent char", !11, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!"long", !7, i64 0}
!18 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !17, i64 8, !7, i64 16}
!19 = !{!18, !17, i64 8}
!20 = !{!7, !7, i64 0}
!21 = !{!17, !17, i64 0}
!22 = !{!18, !14, i64 0}
!23 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !11, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"float", !7, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!8, !8, i64 0}
!29 = !{!"llvm.loop.isvectorized", i32 1}
!30 = !{!"llvm.loop.unroll.runtime.disable"}
!31 = !{!"branch_weights", i32 8, i32 24}
!32 = !{!14, !14, i64 0}
!33 = !{!"p1 float", !11, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{ptr @_ZL10calc_RBbinfif, ptr @_ZL9calc_Nbinfif}
!36 = !{!"llvm.loop.unroll.disable"}
!37 = !{!"p1 int", !11, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!"branch_weights", i32 4, i32 28}
!40 = !{!11, !11, i64 0}
!41 = distinct !{!41, !27}
!42 = distinct !{!42, !27, !29, !30}
!43 = distinct !{!43, !27, !29, !30}
!44 = distinct !{!44, !27, !30, !29}
!45 = distinct !{!45, !27}
!46 = distinct !{!46, !27}
!47 = distinct !{!47, i1 false, !"LVerDomain"}
!48 = distinct !{!48, !47}
!49 = distinct !{!49, !47}
!50 = distinct !{!50, !47}
!51 = distinct !{!51, !47}
!52 = distinct !{!52, !47}
!53 = distinct !{!53, !47}
!54 = distinct !{!54, !47}
!55 = distinct !{!55, !29, !30}
!56 = distinct !{!56, !29}
!57 = distinct !{!57, !27}
!58 = distinct !{!58, !27}
!59 = distinct !{!59, !36}
!60 = distinct !{!60, !27}
!61 = distinct !{!61, !27}
!62 = distinct !{!62, !27}
!63 = !{!48}
!64 = !{!49}
!65 = !{!50}
!66 = !{!51}
!67 = !{!50, !54, !53, !52}
!68 = !{!54}
!69 = !{!53}
!70 = !{!52}
!71 = distinct !{!71, !27, !29, !30}
!72 = distinct !{!72, !27, !30, !29}
!73 = distinct !{!73, !27}
!74 = distinct !{!74, !27, !29, !30}
!75 = distinct !{!75, !27, !29, !30}
!76 = distinct !{!76, !27, !30, !29}
!77 = distinct !{!77, !36}
!78 = distinct !{!78, !27}
!79 = distinct !{!79, !27}
!80 = distinct !{!80, !27, !29, !30}
!81 = distinct !{!81, !27, !29, !30}
!82 = distinct !{!82, !27, !30, !29}
!83 = distinct !{!83, !27}
!84 = distinct !{!84, !27}
!85 = distinct !{!85, !36}
!86 = distinct !{!86, !27}
!87 = distinct !{!87, !36}
!88 = distinct !{!88, !27}
!89 = distinct !{!89, !36}
!90 = distinct !{!90, !27, !29, !30}
!91 = distinct !{!91, !27, !29, !30}
!92 = distinct !{!92, !27, !30, !29}
!93 = distinct !{!93, !27, !29, !30}
!94 = distinct !{!94, !27}
!95 = distinct !{!95, !27}
!96 = distinct !{!96, !27, !30, !29}
!97 = distinct !{!97, !27}
!98 = distinct !{!98, !36}
!99 = distinct !{!99, !36}
!100 = !{!"_ZTS9t_karplus", !14, i64 0, !25, i64 8, !25, i64 12, !25, i64 16, !25, i64 20, !25, i64 24, !25, i64 28}
!101 = !{!100, !25, i64 24}
!102 = !{!100, !25, i64 28}
!103 = !{!100, !25, i64 20}
!104 = !{!100, !25, i64 8}
!105 = !{!100, !25, i64 12}
!106 = !{!100, !25, i64 16}
!107 = distinct !{!107, !27, !29, !30}
!108 = distinct !{!108, !27, !29, !30}
!109 = distinct !{!109, !27, !30, !29}
!110 = distinct !{!110, !27}
!111 = distinct !{!111, !27}
!112 = distinct !{!112, !27}
!113 = distinct !{!113, !27}
!114 = distinct !{!114, !27, !29, !30}
!115 = distinct !{!115, !27, !29, !30}
!116 = distinct !{!116, !27, !30, !29}
!117 = distinct !{!117, !27}
!118 = distinct !{!118, !27}
!119 = distinct !{!119, !27}
!120 = distinct !{!120, !27}
!121 = distinct !{!121, !36}
!122 = distinct !{!122, !27, !126}
!123 = distinct !{!123, !27}
!124 = distinct !{!124, !36}
!125 = distinct !{!125, !27}
!126 = !{!"llvm.loop.peeled.count", i32 1}
!127 = !{!"p1 _ZTS11t_trxstatus", !11, i64 0}
!128 = !{!127, !127, i64 0}
end_hunk_1
