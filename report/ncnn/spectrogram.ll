Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/spectrogram?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK4ncnn11Spectrogram7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined:bb.a
  %sincos.us.us.us = call fast { float, float } @llvm.sincos.f32(float %i.cv) ; 2 uses
  %sin.us.us.us = extractvalue { float, float } %sincos.us.us.us, 0
  %cos.us.us.us = extractvalue { float, float } %sincos.us.us.us, 1
  %i.cw = fmul fast float %i.cq, %cos.us.us.us
  %i.cx = fadd fast float %i.cw, %.06494.us.us.us ; 2 uses
  %i.cy = fmul fast float %i.cq, %sin.us.us.us
  %i.cz = fsub fast float %.06395.us.us.us, %i.cy ; 2 uses
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1 ; 2 uses
  %exitcond173.not = icmp eq i64 %indvars.iv.next171, %wide.trip.count
  br i1 %exitcond173.not, label %._crit_edge.us.us.us, label %scalar.ph, !llvm.loop !80

._crit_edge.us.us.us:                             ; preds = %scalar.ph, %middle.block
  %.lcssa190 = phi float [ %i.cl, %middle.block ], [ %i.cx, %scalar.ph ] ; 3 uses
  %.lcssa = phi float [ %i.ck, %middle.block ], [ %i.cz, %scalar.ph ] ; 3 uses
  switch i32 %i.ab, label %bb.e [
    i32 1, label %.thread.us.us.us
    i32 2, label %bb.d
  ]

bb.d:                                             ; preds = %._crit_edge.us.us.us
  %i.da = load float, ptr %i.ar, align 4, !tbaa !44 ; 2 uses
  %i.db = fmul fast float %i.da, %.lcssa190
  %i.dc = fmul fast float %i.da, %.lcssa
  br label %bb.e

.thread.us.us.us:                                 ; preds = %._crit_edge.us.us.us
  %i.dd = fmul fast float %.lcssa190, %i.ae
  %i.de = fmul fast float %.lcssa, %i.ae
  br label %bb.e

bb.e:                                             ; preds = %.thread.us.us.us, %bb.d, %._crit_edge.us.us.us
  %.266.us.us.us = phi nsz float [ %i.db, %bb.d ], [ %.lcssa190, %._crit_edge.us.us.us ], [ %i.dd, %.thread.us.us.us ] ; 5 uses
  %.2.us.us.us = phi nsz float [ %i.dc, %bb.d ], [ %.lcssa, %._crit_edge.us.us.us ], [ %i.de, %.thread.us.us.us ] ; 5 uses
  switch i32 %i.n, label %.thread92.us.us.us [
    i32 0, label %.thread90.us.us.us
    i32 1, label %bb.g
    i32 2, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.df = fmul fast float %.266.us.us.us, %.266.us.us.us
  %i.dg = fmul fast float %.2.us.us.us, %.2.us.us.us
  %i.dh = fadd fast float %i.dg, %i.df
  store float %i.dh, ptr %.070100.us.us.us, align 4, !tbaa !44
  %i.di = getelementptr inbounds nuw i8, ptr %.070100.us.us.us, i64 4
  br label %.thread92.us.us.us

bb.g:                                             ; preds = %bb.e
  %i.dj = fmul fast float %.266.us.us.us, %.266.us.us.us
  %i.dk = fmul fast float %.2.us.us.us, %.2.us.us.us
  %i.dl = fadd fast float %i.dk, %i.dj
  %i.dm = call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float nofpclass(nan inf) %i.dl)
  store float %i.dm, ptr %.070100.us.us.us, align 4, !tbaa !44
  %i.dn = getelementptr inbounds nuw i8, ptr %.070100.us.us.us, i64 4
  br label %.thread92.us.us.us

.thread90.us.us.us:                               ; preds = %bb.e
  store float %.266.us.us.us, ptr %.070100.us.us.us, align 4, !tbaa !44
  %i.do = getelementptr inbounds nuw i8, ptr %.070100.us.us.us, i64 4
  store float %.2.us.us.us, ptr %i.do, align 4, !tbaa !44
  %i.dp = getelementptr inbounds nuw i8, ptr %.070100.us.us.us, i64 8
  br label %.thread92.us.us.us

.thread92.us.us.us:                               ; preds = %.thread90.us.us.us, %bb.g, %bb.f, %bb.e
  %.3.us.us.us = phi ptr [ %i.di, %bb.f ], [ %.070100.us.us.us, %bb.e ], [ %i.dp, %.thread90.us.us.us ], [ %i.dn, %bb.g ]
  %i.dq = getelementptr inbounds [4 x i8], ptr %.07399.us.us.us, i64 %i.ag
  %i.dr = add nuw nsw i32 %.067101.us.us.us, 1    ; 2 uses
  %exitcond174.not = icmp eq i32 %i.dr, %i.s
  br i1 %exitcond174.not, label %._crit_edge102.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !81

._crit_edge102.split.us.us.us:                    ; preds = %.thread92.us.us.us
  %indvars.iv.next176 = add nsw i64 %indvars.iv175, 1 ; 2 uses
  %lftr.wideiv178 = trunc i64 %indvars.iv.next176 to i32
  %exitcond179.not = icmp eq i32 %i.aq, %lftr.wideiv178
  br i1 %exitcond179.not, label %._crit_edge, label %bb.c

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us.split.preheader, %._crit_edge102.split.us150
  %indvars.iv = phi i64 [ %i.ak, %.lr.ph.split.us.split.preheader ], [ %indvars.iv.next, %._crit_edge102.split.us150 ] ; 3 uses
  br i1 %i.o, label %.critedge.us.thread, label %.critedge.us

.critedge.us.thread:                              ; preds = %.lr.ph.split.us.split
  %i.ds = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !82
  %i.dt = mul i64 %i.ds, %indvars.iv
  %i.du = load i64, ptr %i.q, align 8, !tbaa !48, !noalias !82
  %i.dv = mul i64 %i.dt, %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.dv
  call void @llvm.memset.p0.i64(ptr align 4 %i.dw, i8 0, i64 %i.aj, i1 false), !tbaa !44
  br label %._crit_edge102.split.us150

.critedge.us:                                     ; preds = %.lr.ph.split.us.split
  %i.dx = load i32, ptr %i.p, align 4, !tbaa !50
  %i.dy = sext i32 %i.dx to i64
  %i.dz = mul nsw i64 %indvars.iv, %i.dy
  %i.ea = load i64, ptr %i.q, align 8, !tbaa !48
  %i.eb = mul i64 %i.dz, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.eb ; 2 uses
  switch i32 %i.n, label %._crit_edge102.split.us150 [
    i32 2, label %.preheader.us120.us.preheader
    i32 1, label %.preheader.us112.us.preheader
  ]

.preheader.us120.us.preheader:                    ; preds = %.critedge.us
  call void @llvm.memset.p0.i64(ptr align 4 %i.ec, i8 0, i64 %i.ai, i1 false), !tbaa !44
  br label %._crit_edge102.split.us150

.preheader.us112.us.preheader:                    ; preds = %.critedge.us
  call void @llvm.memset.p0.i64(ptr align 4 %i.ec, i8 0, i64 %i.ai, i1 false), !tbaa !44
  br label %._crit_edge102.split.us150

._crit_edge102.split.us150:                       ; preds = %.critedge.us, %.preheader.us120.us.preheader, %.preheader.us112.us.preheader, %.critedge.us.thread
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.al, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.us.split

._crit_edge:                                      ; preds = %._crit_edge102.split.us150, %._crit_edge102.split.us.us.us, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #7

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #7 ; 0 uses
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare !callback !52 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #7

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn11Spectrogram7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %3, align 4, !tbaa !49     ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !36   ; 2 uses
  %i.h = icmp slt i32 %i.e, %i.g
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = xor i32 %i.e, -1
  %i.j = add i32 %i.g, %i.i                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.j, ptr %i.b, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !49
  %i.k = load i32, ptr %0, align 4, !tbaa !49     ; 2 uses
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.l = load i32, ptr %i.b, align 4, !tbaa !49
  %i.m = call i32 @llvm.umin.i32(i32 %i.l, i32 %i.j) ; 3 uses
  store i32 %i.m, ptr %i.b, align 4, !tbaa !49
  %i.n = load i32, ptr %i.a, align 4, !tbaa !49   ; 3 uses
  %i.o = add i32 %i.m, 1                          ; 2 uses
  %i.p = icmp ult i32 %i.n, %i.o
  br i1 %i.p, label %.lr.ph75, label %._crit_edge

.lr.ph75:                                         ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 212 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.u = load i32, ptr %i.q, align 4, !tbaa !37
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.lr.ph75.split.us, label %.lr.ph75.split

.lr.ph75.split.us:                                ; preds = %.lr.ph75
  %i.w = load i32, ptr %i.f, align 8, !tbaa !36
  %i.x = load ptr, ptr %4, align 8, !tbaa !19, !noalias !92 ; 8 uses
  %i.y = load i64, ptr %i.t, align 8, !tbaa !20, !noalias !92
  %i.z = load i64, ptr %i.s, align 8, !tbaa !48, !noalias !92
  %factor.op.mul = mul i64 %i.y, %i.z             ; 2 uses
  %i.aa = load i32, ptr %5, align 4, !tbaa !49    ; 7 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.noexc39.us.preheader, label %._crit_edge

.noexc39.us.preheader:                            ; preds = %.lr.ph75.split.us
  %i.ac = add nsw i32 %i.aa, -1
  %i.ad = zext i32 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 3                ; 2 uses
  %6 = add nuw nsw i64 %i.ae, 8                   ; 2 uses
  %7 = or disjoint i64 %i.ae, 4                   ; 2 uses
  %8 = zext nneg i32 %i.aa to i64                 ; 2 uses
  %min.iters.check172 = icmp ult i32 %i.aa, 14
  %i.af = getelementptr i8, ptr %i.x, i64 %7
  %i.ag = getelementptr i8, ptr %i.x, i64 %6
  %9 = getelementptr i8, ptr %i.x, i64 %7
  %10 = getelementptr i8, ptr %i.x, i64 %6
  %n.vec194 = and i64 %8, 2147483644              ; 4 uses
  %i.ah = trunc nuw nsw i64 %n.vec194 to i32
  %i.ai = shl nuw nsw i64 %n.vec194, 3            ; 2 uses
  %cmp.n211 = icmp eq i64 %n.vec194, %8
  br label %.noexc39.us

.noexc39.us:                                      ; preds = %.noexc39.us.preheader, %..loopexit_crit_edge.us
  %.074.us = phi i32 [ %i.cq, %..loopexit_crit_edge.us ], [ %i.n, %.noexc39.us.preheader ] ; 2 uses
  %i.aj = add i32 %.074.us, %i.e                  ; 2 uses
  %i.ak = sub i32 %i.w, %i.aj
  %i.al = sext i32 %i.ak to i64
  %.reass = mul i64 %factor.op.mul, %i.al         ; 4 uses
  %i.am = getelementptr i8, ptr %i.x, i64 %.reass ; 7 uses
  %i.an = sext i32 %i.aj to i64
  %.reass77 = mul i64 %factor.op.mul, %i.an       ; 4 uses
  %i.ao = getelementptr i8, ptr %i.x, i64 %.reass77 ; 8 uses
  br i1 %min.iters.check172, label %scalar.ph171.preheader, label %vector.memcheck173

vector.memcheck173:                               ; preds = %.noexc39.us
  %11 = getelementptr i8, ptr %i.af, i64 %.reass77 ; 3 uses
  %12 = getelementptr i8, ptr %i.x, i64 %.reass77
  %i.ap = getelementptr i8, ptr %12, i64 4        ; 3 uses
  %i.aq = getelementptr i8, ptr %i.ag, i64 %.reass77 ; 3 uses
  %i.ar = getelementptr i8, ptr %9, i64 %.reass   ; 2 uses
  %i.as = getelementptr i8, ptr %i.x, i64 %.reass
  %i.at = getelementptr i8, ptr %i.as, i64 4      ; 2 uses
  %i.au = getelementptr i8, ptr %10, i64 %.reass  ; 2 uses
  %bound0174 = icmp ult ptr %i.ao, %i.aq
  %bound1175 = icmp ult ptr %i.ap, %11
  %found.conflict176 = and i1 %bound0174, %bound1175
  %bound0177 = icmp ult ptr %i.ao, %i.ar
  %bound1178 = icmp ult ptr %i.am, %11
  %found.conflict179 = and i1 %bound0177, %bound1178
  %conflict.rdx180 = or i1 %found.conflict176, %found.conflict179
  %bound0181 = icmp ult ptr %i.ao, %i.au
  %bound1182 = icmp ult ptr %i.at, %11
  %found.conflict183 = and i1 %bound0181, %bound1182
  %conflict.rdx184 = or i1 %conflict.rdx180, %found.conflict183
  %bound0185 = icmp ult ptr %i.ap, %i.ar
  %bound1186 = icmp ult ptr %i.am, %i.aq
  %found.conflict187 = and i1 %bound0185, %bound1186
  %conflict.rdx188 = or i1 %conflict.rdx184, %found.conflict187
  %bound0189 = icmp ult ptr %i.ap, %i.au
  %bound1190 = icmp ult ptr %i.at, %i.aq
  %found.conflict191 = and i1 %bound0189, %bound1190
  %conflict.rdx192 = or i1 %conflict.rdx188, %found.conflict191
  br i1 %conflict.rdx192, label %scalar.ph171.preheader, label %vector.ph193

vector.ph193:                                     ; preds = %vector.memcheck173
  %i.av = getelementptr i8, ptr %i.ao, i64 %i.ai
  %i.aw = getelementptr i8, ptr %i.am, i64 %i.ai
  br label %vector.body195

vector.body195:                                   ; preds = %vector.body195, %vector.ph193
  %index196 = phi i64 [ 0, %vector.ph193 ], [ %index.next209, %vector.body195 ] ; 2 uses
  %i.ax = shl i64 %index196, 3                    ; 3 uses
  %i.ay = or disjoint i64 %i.ax, 16               ; 2 uses
  %next.gep197 = getelementptr i8, ptr %i.ao, i64 %i.ax
  %next.gep198 = getelementptr i8, ptr %i.ao, i64 %i.ay
  %next.gep199 = getelementptr i8, ptr %i.am, i64 %i.ax
  %next.gep200 = getelementptr i8, ptr %i.am, i64 %i.ay
  %wide.vec201 = load <4 x float>, ptr %next.gep199, align 4, !tbaa !44 ; 2 uses
  %wide.vec204 = load <4 x float>, ptr %next.gep200, align 4, !tbaa !44 ; 2 uses
  %i.az = fneg fast <4 x float> %wide.vec201
  %i.ba = fneg fast <4 x float> %wide.vec204
  %interleaved.vec207 = shufflevector <4 x float> %wide.vec201, <4 x float> %i.az, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x float> %interleaved.vec207, ptr %next.gep197, align 4, !tbaa !44
  %interleaved.vec208 = shufflevector <4 x float> %wide.vec204, <4 x float> %i.ba, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x float> %interleaved.vec208, ptr %next.gep198, align 4, !tbaa !44
  %index.next209 = add nuw i64 %index196, 4       ; 2 uses
  %i.bb = icmp eq i64 %index.next209, %n.vec194
  br i1 %i.bb, label %middle.block210, label %vector.body195, !llvm.loop !85

middle.block210:                                  ; preds = %vector.body195
  br i1 %cmp.n211, label %..loopexit_crit_edge.us, label %scalar.ph171.preheader

scalar.ph171.preheader:                           ; preds = %vector.memcheck173, %.noexc39.us, %middle.block210
  %.03573.us.ph = phi i32 [ 0, %vector.memcheck173 ], [ 0, %.noexc39.us ], [ %i.ah, %middle.block210 ] ; 4 uses
  %.03672.us.ph = phi ptr [ %i.ao, %vector.memcheck173 ], [ %i.ao, %.noexc39.us ], [ %i.av, %middle.block210 ] ; 2 uses
  %.03771.us.ph = phi ptr [ %i.am, %vector.memcheck173 ], [ %i.am, %.noexc39.us ], [ %i.aw, %middle.block210 ] ; 2 uses
  %i.bc = sub i32 %i.aa, %.03573.us.ph
  %xtraiter217 = and i32 %i.bc, 3                 ; 2 uses
  %lcmp.mod218.not = icmp eq i32 %xtraiter217, 0
  br i1 %lcmp.mod218.not, label %scalar.ph171.prol.loopexit, label %scalar.ph171.prol

scalar.ph171.prol:                                ; preds = %scalar.ph171.preheader, %scalar.ph171.prol
  %.03573.us.prol = phi i32 [ %i.bk, %scalar.ph171.prol ], [ %.03573.us.ph, %scalar.ph171.preheader ]
  %.03672.us.prol = phi ptr [ %i.bj, %scalar.ph171.prol ], [ %.03672.us.ph, %scalar.ph171.preheader ] ; 3 uses
  %.03771.us.prol = phi ptr [ %i.bi, %scalar.ph171.prol ], [ %.03771.us.ph, %scalar.ph171.preheader ] ; 3 uses
  %prol.iter219 = phi i32 [ %prol.iter219.next, %scalar.ph171.prol ], [ 0, %scalar.ph171.preheader ]
  %i.bd = load float, ptr %.03771.us.prol, align 4, !tbaa !44
  store float %i.bd, ptr %.03672.us.prol, align 4, !tbaa !44
  %i.be = getelementptr inbounds nuw i8, ptr %.03771.us.prol, i64 4
  %i.bf = load float, ptr %i.be, align 4, !tbaa !44
  %i.bg = fneg fast float %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %.03672.us.prol, i64 4
  store float %i.bg, ptr %i.bh, align 4, !tbaa !44
  %i.bi = getelementptr inbounds nuw i8, ptr %.03771.us.prol, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.03672.us.prol, i64 8 ; 2 uses
  %i.bk = add nuw nsw i32 %.03573.us.prol, 1      ; 2 uses
  %prol.iter219.next = add i32 %prol.iter219, 1   ; 2 uses
  %prol.iter219.cmp.not = icmp eq i32 %prol.iter219.next, %xtraiter217
  br i1 %prol.iter219.cmp.not, label %scalar.ph171.prol.loopexit, label %scalar.ph171.prol, !llvm.loop !86

scalar.ph171.prol.loopexit:                       ; preds = %scalar.ph171.prol, %scalar.ph171.preheader
  %.03573.us.unr = phi i32 [ %.03573.us.ph, %scalar.ph171.preheader ], [ %i.bk, %scalar.ph171.prol ]
  %.03672.us.unr = phi ptr [ %.03672.us.ph, %scalar.ph171.preheader ], [ %i.bj, %scalar.ph171.prol ]
  %.03771.us.unr = phi ptr [ %.03771.us.ph, %scalar.ph171.preheader ], [ %i.bi, %scalar.ph171.prol ]
  %i.bl = sub i32 %.03573.us.ph, %i.aa
  %i.bm = icmp ugt i32 %i.bl, -4
  br i1 %i.bm, label %..loopexit_crit_edge.us, label %scalar.ph171

scalar.ph171:                                     ; preds = %scalar.ph171.prol.loopexit, %scalar.ph171
  %.03573.us = phi i32 [ %i.cp, %scalar.ph171 ], [ %.03573.us.unr, %scalar.ph171.prol.loopexit ]
  %.03672.us = phi ptr [ %i.co, %scalar.ph171 ], [ %.03672.us.unr, %scalar.ph171.prol.loopexit ] ; 9 uses
  %.03771.us = phi ptr [ %i.cn, %scalar.ph171 ], [ %.03771.us.unr, %scalar.ph171.prol.loopexit ] ; 9 uses
  %i.bn = load float, ptr %.03771.us, align 4, !tbaa !44
  store float %i.bn, ptr %.03672.us, align 4, !tbaa !44
  %i.bo = getelementptr inbounds nuw i8, ptr %.03771.us, i64 4
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !44
  %i.bq = fneg fast float %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %.03672.us, i64 4
  store float %i.bq, ptr %i.br, align 4, !tbaa !44
  %i.bs = getelementptr inbounds nuw i8, ptr %.03771.us, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.03672.us, i64 8
  %i.bu = load float, ptr %i.bs, align 4, !tbaa !44
  store float %i.bu, ptr %i.bt, align 4, !tbaa !44
  %i.bv = getelementptr inbounds nuw i8, ptr %.03771.us, i64 12
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !44
  %i.bx = fneg fast float %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %.03672.us, i64 12
  store float %i.bx, ptr %i.by, align 4, !tbaa !44
  %i.bz = getelementptr inbounds nuw i8, ptr %.03771.us, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %.03672.us, i64 16
  %i.cb = load float, ptr %i.bz, align 4, !tbaa !44
  store float %i.cb, ptr %i.ca, align 4, !tbaa !44
  %i.cc = getelementptr inbounds nuw i8, ptr %.03771.us, i64 20
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !44
  %i.ce = fneg fast float %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %.03672.us, i64 20
  store float %i.ce, ptr %i.cf, align 4, !tbaa !44
  %i.cg = getelementptr inbounds nuw i8, ptr %.03771.us, i64 24
  %i.ch = getelementptr inbounds nuw i8, ptr %.03672.us, i64 24
  %i.ci = load float, ptr %i.cg, align 4, !tbaa !44
  store float %i.ci, ptr %i.ch, align 4, !tbaa !44
  %i.cj = getelementptr inbounds nuw i8, ptr %.03771.us, i64 28
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !44
  %i.cl = fneg fast float %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %.03672.us, i64 28
  store float %i.cl, ptr %i.cm, align 4, !tbaa !44
  %i.cn = getelementptr inbounds nuw i8, ptr %.03771.us, i64 32
  %i.co = getelementptr inbounds nuw i8, ptr %.03672.us, i64 32
  %i.cp = add nuw nsw i32 %.03573.us, 4           ; 2 uses
  %exitcond79.not.3 = icmp eq i32 %i.cp, %i.aa
  br i1 %exitcond79.not.3, label %..loopexit_crit_edge.us, label %scalar.ph171, !llvm.loop !87

..loopexit_crit_edge.us:                          ; preds = %scalar.ph171.prol.loopexit, %scalar.ph171, %middle.block210
  %i.cq = add nuw i32 %.074.us, 1                 ; 2 uses
  %i.cr = icmp ult i32 %i.cq, %i.o
  br i1 %i.cr, label %.noexc39.us, label %._crit_edge

.lr.ph75.split:                                   ; preds = %.lr.ph75, %.loopexit
  %i.cs = phi i32 [ %i.gq, %.loopexit ], [ %i.m, %.lr.ph75 ] ; 4 uses
  %i.ct = phi i32 [ %i.gr, %.loopexit ], [ 1, %.lr.ph75 ]
  %.074 = phi i32 [ %i.gs, %.loopexit ], [ %i.n, %.lr.ph75 ] ; 2 uses
  %i.cu = add i32 %.074, %i.e                     ; 4 uses
  %i.cv = icmp eq i32 %i.ct, 0
  br i1 %i.cv, label %.noexc39, label %bb.c

.noexc39:                                         ; preds = %.lr.ph75.split
  %i.cw = load i32, ptr %5, align 4, !tbaa !49    ; 7 uses
  %i.cx = icmp sgt i32 %i.cw, 0
  br i1 %i.cx, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.noexc39
  %i.cy = load ptr, ptr %4, align 8, !tbaa !19, !noalias !92 ; 8 uses
  %i.cz = load i64, ptr %i.t, align 8, !tbaa !20, !noalias !92 ; 2 uses
  %i.da = sext i32 %i.cu to i64
  %i.db = mul i64 %i.cz, %i.da
  %i.dc = load i64, ptr %i.s, align 8, !tbaa !48, !noalias !92 ; 2 uses
  %i.dd = mul i64 %i.db, %i.dc                    ; 3 uses
  %i.de = getelementptr i8, ptr %i.cy, i64 %i.dd  ; 8 uses
  %i.df = load i32, ptr %i.f, align 8, !tbaa !36
  %i.dg = sub i32 %i.df, %i.cu
  %i.dh = sext i32 %i.dg to i64
  %i.di = mul i64 %i.cz, %i.dh
  %i.dj = mul i64 %i.di, %i.dc                    ; 3 uses
  %i.dk = getelementptr i8, ptr %i.cy, i64 %i.dj  ; 7 uses
  %i.dl = zext nneg i32 %i.cw to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.cw, 16
  br i1 %min.iters.check, label %.lr.ph.preheader215, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.dm = add nsw i32 %i.cw, -1
  %i.dn = zext i32 %i.dm to i64
  %i.do = shl nuw nsw i64 %i.dn, 3                ; 2 uses
  %i.dp = add i64 %i.dd, %i.do                    ; 2 uses
  %i.dq = getelementptr i8, ptr %i.cy, i64 %i.dp
  %i.dr = getelementptr i8, ptr %i.dq, i64 4      ; 3 uses
  %i.ds = getelementptr i8, ptr %i.cy, i64 %i.dd
  %i.dt = getelementptr i8, ptr %i.ds, i64 4      ; 3 uses
  %i.du = getelementptr i8, ptr %i.cy, i64 %i.dp
  %i.dv = getelementptr i8, ptr %i.du, i64 8      ; 3 uses
  %i.dw = add i64 %i.dj, %i.do                    ; 2 uses
  %i.dx = getelementptr i8, ptr %i.cy, i64 %i.dw
  %i.dy = getelementptr i8, ptr %i.dx, i64 4      ; 2 uses
  %i.dz = getelementptr i8, ptr %i.cy, i64 %i.dj
  %i.ea = getelementptr i8, ptr %i.dz, i64 4      ; 2 uses
  %i.eb = getelementptr i8, ptr %i.cy, i64 %i.dw
  %i.ec = getelementptr i8, ptr %i.eb, i64 8      ; 2 uses
  %bound0 = icmp ult ptr %i.de, %i.dv
  %bound1 = icmp ult ptr %i.dt, %i.dr
  %found.conflict = and i1 %bound0, %bound1
  %bound0115 = icmp ult ptr %i.de, %i.dy
  %bound1116 = icmp ult ptr %i.dk, %i.dr
  %found.conflict117 = and i1 %bound0115, %bound1116
  %conflict.rdx = or i1 %found.conflict, %found.conflict117
  %bound0118 = icmp ult ptr %i.de, %i.ec
  %bound1119 = icmp ult ptr %i.ea, %i.dr
  %found.conflict120 = and i1 %bound0118, %bound1119
  %conflict.rdx121 = or i1 %conflict.rdx, %found.conflict120
  %bound0122 = icmp ult ptr %i.dt, %i.dy
  %bound1123 = icmp ult ptr %i.dk, %i.dv
  %found.conflict124 = and i1 %bound0122, %bound1123
  %conflict.rdx125 = or i1 %conflict.rdx121, %found.conflict124
  %bound0126 = icmp ult ptr %i.dt, %i.ec
  %bound1127 = icmp ult ptr %i.ea, %i.dv
  %found.conflict128 = and i1 %bound0126, %bound1127
  %conflict.rdx129 = or i1 %conflict.rdx125, %found.conflict128
  br i1 %conflict.rdx129, label %.lr.ph.preheader215, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dl, 2147483644              ; 4 uses
  %i.ed = trunc nuw nsw i64 %n.vec to i32
  %i.ee = shl nuw nsw i64 %n.vec, 3               ; 2 uses
  %i.ef = getelementptr i8, ptr %i.de, i64 %i.ee
  %i.eg = getelementptr i8, ptr %i.dk, i64 %i.ee
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eh = shl i64 %index, 3                       ; 3 uses
  %i.ei = or disjoint i64 %i.eh, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.de, i64 %i.eh
end_hunk_0
