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
  %i.x = load ptr, ptr %4, align 8, !tbaa !19, !noalias !92 ; 5 uses
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
  %i.af = getelementptr i8, ptr %i.x, i64 %i.ae
  %scevgep = getelementptr i8, ptr %i.af, i64 8   ; 2 uses
  %scevgep171 = getelementptr i8, ptr %i.x, i64 4 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.x, i64 %i.ae
  %scevgep172 = getelementptr i8, ptr %i.ag, i64 4 ; 2 uses
  %i.ah = zext nneg i32 %i.aa to i64              ; 2 uses
  %min.iters.check174 = icmp ult i32 %i.aa, 14
  %n.vec196 = and i64 %i.ah, 2147483644           ; 4 uses
  %i.ai = trunc nuw nsw i64 %n.vec196 to i32
  %i.aj = shl nuw nsw i64 %n.vec196, 3            ; 2 uses
  %cmp.n213 = icmp eq i64 %n.vec196, %i.ah
  br label %.noexc39.us

.noexc39.us:                                      ; preds = %.noexc39.us.preheader, %..loopexit_crit_edge.us
  %.074.us = phi i32 [ %i.cp, %..loopexit_crit_edge.us ], [ %i.n, %.noexc39.us.preheader ] ; 2 uses
  %i.ak = add i32 %.074.us, %i.e                  ; 2 uses
  %i.al = sub i32 %i.w, %i.ak
  %i.am = sext i32 %i.al to i64
  %.reass = mul i64 %factor.op.mul, %i.am         ; 4 uses
  %i.an = getelementptr i8, ptr %i.x, i64 %.reass ; 7 uses
  %i.ao = sext i32 %i.ak to i64
  %.reass77 = mul i64 %factor.op.mul, %i.ao       ; 4 uses
  %i.ap = getelementptr i8, ptr %i.x, i64 %.reass77 ; 8 uses
  br i1 %min.iters.check174, label %scalar.ph173.preheader, label %vector.memcheck175

vector.memcheck175:                               ; preds = %.noexc39.us
  %i.aq = getelementptr i8, ptr %scevgep172, i64 %.reass77 ; 3 uses
  %6 = getelementptr i8, ptr %scevgep171, i64 %.reass77 ; 3 uses
  %7 = getelementptr i8, ptr %scevgep, i64 %.reass77 ; 3 uses
  %i.ar = getelementptr i8, ptr %scevgep172, i64 %.reass ; 2 uses
  %i.as = getelementptr i8, ptr %scevgep171, i64 %.reass ; 2 uses
  %i.at = getelementptr i8, ptr %scevgep, i64 %.reass ; 2 uses
  %bound0176 = icmp ult ptr %i.ap, %7
  %bound1177 = icmp ult ptr %6, %i.aq
  %found.conflict178 = and i1 %bound0176, %bound1177
  %bound0179 = icmp ult ptr %i.ap, %i.ar
  %bound1180 = icmp ult ptr %i.an, %i.aq
  %found.conflict181 = and i1 %bound0179, %bound1180
  %conflict.rdx182 = or i1 %found.conflict178, %found.conflict181
  %bound0183 = icmp ult ptr %i.ap, %i.at
  %bound1184 = icmp ult ptr %i.as, %i.aq
  %found.conflict185 = and i1 %bound0183, %bound1184
  %conflict.rdx186 = or i1 %conflict.rdx182, %found.conflict185
  %bound0187 = icmp ult ptr %6, %i.ar
  %bound1188 = icmp ult ptr %i.an, %7
  %found.conflict189 = and i1 %bound0187, %bound1188
  %conflict.rdx190 = or i1 %conflict.rdx186, %found.conflict189
  %bound0191 = icmp ult ptr %6, %i.at
  %bound1192 = icmp ult ptr %i.as, %7
  %found.conflict193 = and i1 %bound0191, %bound1192
  %conflict.rdx194 = or i1 %conflict.rdx190, %found.conflict193
  br i1 %conflict.rdx194, label %scalar.ph173.preheader, label %vector.ph195

vector.ph195:                                     ; preds = %vector.memcheck175
  %i.au = getelementptr i8, ptr %i.ap, i64 %i.aj
  %i.av = getelementptr i8, ptr %i.an, i64 %i.aj
  br label %vector.body197

vector.body197:                                   ; preds = %vector.body197, %vector.ph195
  %index198 = phi i64 [ 0, %vector.ph195 ], [ %index.next211, %vector.body197 ] ; 2 uses
  %i.aw = shl i64 %index198, 3                    ; 3 uses
  %i.ax = or disjoint i64 %i.aw, 16               ; 2 uses
  %next.gep199 = getelementptr i8, ptr %i.ap, i64 %i.aw
  %next.gep200 = getelementptr i8, ptr %i.ap, i64 %i.ax
  %next.gep201 = getelementptr i8, ptr %i.an, i64 %i.aw
  %next.gep202 = getelementptr i8, ptr %i.an, i64 %i.ax
  %wide.vec203 = load <4 x float>, ptr %next.gep201, align 4, !tbaa !44 ; 2 uses
  %wide.vec206 = load <4 x float>, ptr %next.gep202, align 4, !tbaa !44 ; 2 uses
  %i.ay = fneg fast <4 x float> %wide.vec203
  %i.az = fneg fast <4 x float> %wide.vec206
  %interleaved.vec209 = shufflevector <4 x float> %wide.vec203, <4 x float> %i.ay, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x float> %interleaved.vec209, ptr %next.gep199, align 4, !tbaa !44
  %interleaved.vec210 = shufflevector <4 x float> %wide.vec206, <4 x float> %i.az, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x float> %interleaved.vec210, ptr %next.gep200, align 4, !tbaa !44
  %index.next211 = add nuw i64 %index198, 4       ; 2 uses
  %i.ba = icmp eq i64 %index.next211, %n.vec196
  br i1 %i.ba, label %middle.block212, label %vector.body197, !llvm.loop !85

middle.block212:                                  ; preds = %vector.body197
  br i1 %cmp.n213, label %..loopexit_crit_edge.us, label %scalar.ph173.preheader

scalar.ph173.preheader:                           ; preds = %vector.memcheck175, %.noexc39.us, %middle.block212
  %.03573.us.ph = phi i32 [ 0, %vector.memcheck175 ], [ 0, %.noexc39.us ], [ %i.ai, %middle.block212 ] ; 4 uses
  %.03672.us.ph = phi ptr [ %i.ap, %vector.memcheck175 ], [ %i.ap, %.noexc39.us ], [ %i.au, %middle.block212 ] ; 2 uses
  %.03771.us.ph = phi ptr [ %i.an, %vector.memcheck175 ], [ %i.an, %.noexc39.us ], [ %i.av, %middle.block212 ] ; 2 uses
  %i.bb = sub i32 %i.aa, %.03573.us.ph
  %xtraiter219 = and i32 %i.bb, 3                 ; 2 uses
  %lcmp.mod220.not = icmp eq i32 %xtraiter219, 0
  br i1 %lcmp.mod220.not, label %scalar.ph173.prol.loopexit, label %scalar.ph173.prol

scalar.ph173.prol:                                ; preds = %scalar.ph173.preheader, %scalar.ph173.prol
  %.03573.us.prol = phi i32 [ %i.bj, %scalar.ph173.prol ], [ %.03573.us.ph, %scalar.ph173.preheader ]
  %.03672.us.prol = phi ptr [ %i.bi, %scalar.ph173.prol ], [ %.03672.us.ph, %scalar.ph173.preheader ] ; 3 uses
  %.03771.us.prol = phi ptr [ %i.bh, %scalar.ph173.prol ], [ %.03771.us.ph, %scalar.ph173.preheader ] ; 3 uses
  %prol.iter221 = phi i32 [ %prol.iter221.next, %scalar.ph173.prol ], [ 0, %scalar.ph173.preheader ]
  %i.bc = load float, ptr %.03771.us.prol, align 4, !tbaa !44
  store float %i.bc, ptr %.03672.us.prol, align 4, !tbaa !44
  %i.bd = getelementptr inbounds nuw i8, ptr %.03771.us.prol, i64 4
  %i.be = load float, ptr %i.bd, align 4, !tbaa !44
  %i.bf = fneg fast float %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %.03672.us.prol, i64 4
  store float %i.bf, ptr %i.bg, align 4, !tbaa !44
  %i.bh = getelementptr inbounds nuw i8, ptr %.03771.us.prol, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.03672.us.prol, i64 8 ; 2 uses
  %i.bj = add nuw nsw i32 %.03573.us.prol, 1      ; 2 uses
  %prol.iter221.next = add i32 %prol.iter221, 1   ; 2 uses
  %prol.iter221.cmp.not = icmp eq i32 %prol.iter221.next, %xtraiter219
  br i1 %prol.iter221.cmp.not, label %scalar.ph173.prol.loopexit, label %scalar.ph173.prol, !llvm.loop !86

scalar.ph173.prol.loopexit:                       ; preds = %scalar.ph173.prol, %scalar.ph173.preheader
  %.03573.us.unr = phi i32 [ %.03573.us.ph, %scalar.ph173.preheader ], [ %i.bj, %scalar.ph173.prol ]
  %.03672.us.unr = phi ptr [ %.03672.us.ph, %scalar.ph173.preheader ], [ %i.bi, %scalar.ph173.prol ]
  %.03771.us.unr = phi ptr [ %.03771.us.ph, %scalar.ph173.preheader ], [ %i.bh, %scalar.ph173.prol ]
  %i.bk = sub i32 %.03573.us.ph, %i.aa
  %i.bl = icmp ugt i32 %i.bk, -4
  br i1 %i.bl, label %..loopexit_crit_edge.us, label %scalar.ph173

scalar.ph173:                                     ; preds = %scalar.ph173.prol.loopexit, %scalar.ph173
  %.03573.us = phi i32 [ %i.co, %scalar.ph173 ], [ %.03573.us.unr, %scalar.ph173.prol.loopexit ]
  %.03672.us = phi ptr [ %i.cn, %scalar.ph173 ], [ %.03672.us.unr, %scalar.ph173.prol.loopexit ] ; 9 uses
  %.03771.us = phi ptr [ %i.cm, %scalar.ph173 ], [ %.03771.us.unr, %scalar.ph173.prol.loopexit ] ; 9 uses
  %i.bm = load float, ptr %.03771.us, align 4, !tbaa !44
  store float %i.bm, ptr %.03672.us, align 4, !tbaa !44
  %i.bn = getelementptr inbounds nuw i8, ptr %.03771.us, i64 4
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !44
  %i.bp = fneg fast float %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %.03672.us, i64 4
  store float %i.bp, ptr %i.bq, align 4, !tbaa !44
  %i.br = getelementptr inbounds nuw i8, ptr %.03771.us, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %.03672.us, i64 8
  %i.bt = load float, ptr %i.br, align 4, !tbaa !44
  store float %i.bt, ptr %i.bs, align 4, !tbaa !44
  %i.bu = getelementptr inbounds nuw i8, ptr %.03771.us, i64 12
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !44
  %i.bw = fneg fast float %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %.03672.us, i64 12
  store float %i.bw, ptr %i.bx, align 4, !tbaa !44
  %i.by = getelementptr inbounds nuw i8, ptr %.03771.us, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %.03672.us, i64 16
  %i.ca = load float, ptr %i.by, align 4, !tbaa !44
  store float %i.ca, ptr %i.bz, align 4, !tbaa !44
  %i.cb = getelementptr inbounds nuw i8, ptr %.03771.us, i64 20
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !44
  %i.cd = fneg fast float %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %.03672.us, i64 20
  store float %i.cd, ptr %i.ce, align 4, !tbaa !44
  %i.cf = getelementptr inbounds nuw i8, ptr %.03771.us, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %.03672.us, i64 24
  %i.ch = load float, ptr %i.cf, align 4, !tbaa !44
  store float %i.ch, ptr %i.cg, align 4, !tbaa !44
  %i.ci = getelementptr inbounds nuw i8, ptr %.03771.us, i64 28
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !44
  %i.ck = fneg fast float %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %.03672.us, i64 28
  store float %i.ck, ptr %i.cl, align 4, !tbaa !44
  %i.cm = getelementptr inbounds nuw i8, ptr %.03771.us, i64 32
  %i.cn = getelementptr inbounds nuw i8, ptr %.03672.us, i64 32
  %i.co = add nuw nsw i32 %.03573.us, 4           ; 2 uses
  %exitcond79.not.3 = icmp eq i32 %i.co, %i.aa
  br i1 %exitcond79.not.3, label %..loopexit_crit_edge.us, label %scalar.ph173, !llvm.loop !87

..loopexit_crit_edge.us:                          ; preds = %scalar.ph173.prol.loopexit, %scalar.ph173, %middle.block212
  %i.cp = add nuw i32 %.074.us, 1                 ; 2 uses
  %i.cq = icmp ult i32 %i.cp, %i.o
  br i1 %i.cq, label %.noexc39.us, label %._crit_edge

.lr.ph75.split:                                   ; preds = %.lr.ph75, %.loopexit
  %i.cr = phi i32 [ %i.gn, %.loopexit ], [ %i.m, %.lr.ph75 ] ; 4 uses
  %i.cs = phi i32 [ %i.go, %.loopexit ], [ 1, %.lr.ph75 ]
  %.074 = phi i32 [ %i.gp, %.loopexit ], [ %i.n, %.lr.ph75 ] ; 2 uses
  %i.ct = add i32 %.074, %i.e                     ; 4 uses
  %i.cu = icmp eq i32 %i.cs, 0
  br i1 %i.cu, label %.noexc39, label %bb.c

.noexc39:                                         ; preds = %.lr.ph75.split
  %i.cv = load i32, ptr %5, align 4, !tbaa !49    ; 7 uses
  %i.cw = icmp sgt i32 %i.cv, 0
  br i1 %i.cw, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.noexc39
  %i.cx = load ptr, ptr %4, align 8, !tbaa !19, !noalias !92 ; 8 uses
  %i.cy = load i64, ptr %i.t, align 8, !tbaa !20, !noalias !92 ; 2 uses
  %i.cz = sext i32 %i.ct to i64
  %i.da = mul i64 %i.cy, %i.cz
  %i.db = load i64, ptr %i.s, align 8, !tbaa !48, !noalias !92 ; 2 uses
  %i.dc = mul i64 %i.da, %i.db                    ; 3 uses
  %i.dd = getelementptr i8, ptr %i.cx, i64 %i.dc  ; 8 uses
  %i.de = load i32, ptr %i.f, align 8, !tbaa !36
  %i.df = sub i32 %i.de, %i.ct
  %i.dg = sext i32 %i.df to i64
  %i.dh = mul i64 %i.cy, %i.dg
  %i.di = mul i64 %i.dh, %i.db                    ; 3 uses
  %i.dj = getelementptr i8, ptr %i.cx, i64 %i.di  ; 7 uses
  %i.dk = zext nneg i32 %i.cv to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.cv, 16
  br i1 %min.iters.check, label %.lr.ph.preheader217, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.dl = add nsw i32 %i.cv, -1
  %i.dm = zext i32 %i.dl to i64
  %i.dn = shl nuw nsw i64 %i.dm, 3                ; 2 uses
  %i.do = add i64 %i.dc, %i.dn                    ; 2 uses
  %i.dp = getelementptr i8, ptr %i.cx, i64 %i.do
  %i.dq = getelementptr i8, ptr %i.dp, i64 4      ; 3 uses
  %8 = getelementptr i8, ptr %i.cx, i64 %i.dc
  %i.dr = getelementptr i8, ptr %8, i64 4         ; 3 uses
  %i.ds = getelementptr i8, ptr %i.cx, i64 %i.do
  %i.dt = getelementptr i8, ptr %i.ds, i64 8      ; 3 uses
  %9 = add i64 %i.di, %i.dn                       ; 2 uses
  %i.du = getelementptr i8, ptr %i.cx, i64 %9
  %i.dv = getelementptr i8, ptr %i.du, i64 4      ; 2 uses
  %i.dw = getelementptr i8, ptr %i.cx, i64 %i.di
  %i.dx = getelementptr i8, ptr %i.dw, i64 4      ; 2 uses
  %i.dy = getelementptr i8, ptr %i.cx, i64 %9
  %i.dz = getelementptr i8, ptr %i.dy, i64 8      ; 2 uses
  %bound0 = icmp ult ptr %i.dd, %i.dt
  %bound1 = icmp ult ptr %i.dr, %i.dq
  %found.conflict = and i1 %bound0, %bound1
  %bound0115 = icmp ult ptr %i.dd, %i.dv
  %bound1116 = icmp ult ptr %i.dj, %i.dq
  %found.conflict117 = and i1 %bound0115, %bound1116
  %conflict.rdx = or i1 %found.conflict, %found.conflict117
  %bound0118.a = icmp ult ptr %i.dd, %i.dz
  %bound1119.a = icmp ult ptr %i.dx, %i.dq
  %found.conflict120.a = and i1 %bound0118.a, %bound1119.a
  %conflict.rdx121.a = or i1 %conflict.rdx, %found.conflict120.a
  %bound0122 = icmp ult ptr %i.dr, %i.dv
  %bound1123 = icmp ult ptr %i.dj, %i.dt
  %found.conflict124 = and i1 %bound0122, %bound1123
  %conflict.rdx125 = or i1 %conflict.rdx121.a, %found.conflict124
  %bound0126 = icmp ult ptr %i.dr, %i.dz
  %bound1127 = icmp ult ptr %i.dx, %i.dt
  %found.conflict128 = and i1 %bound0126, %bound1127
  %conflict.rdx129 = or i1 %conflict.rdx125, %found.conflict128
  br i1 %conflict.rdx129, label %.lr.ph.preheader217, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dk, 2147483644              ; 4 uses
  %i.ea = trunc nuw nsw i64 %n.vec to i32
  %i.eb = shl nuw nsw i64 %n.vec, 3               ; 2 uses
  %i.ec = getelementptr i8, ptr %i.dd, i64 %i.eb
  %i.ed = getelementptr i8, ptr %i.dj, i64 %i.eb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ee = shl i64 %index, 3                       ; 3 uses
  %i.ef = or disjoint i64 %i.ee, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dd, i64 %i.ee
  %next.gep130 = getelementptr i8, ptr %i.dd, i64 %i.ef
  %next.gep131 = getelementptr i8, ptr %i.dj, i64 %i.ee
  %next.gep132 = getelementptr i8, ptr %i.dj, i64 %i.ef
  %wide.vec = load <4 x float>, ptr %next.gep131, align 4, !tbaa !44 ; 2 uses
  %wide.vec134 = load <4 x float>, ptr %next.gep132, align 4, !tbaa !44 ; 2 uses
  %i.eg = fneg fast <4 x float> %wide.vec
  %i.eh = fneg fast <4 x float> %wide.vec134
  %interleaved.vec = shufflevector <4 x float> %wide.vec, <4 x float> %i.eg, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !44
  %interleaved.vec137 = shufflevector <4 x float> %wide.vec134, <4 x float> %i.eh, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x float> %interleaved.vec137, ptr %next.gep130, align 4, !tbaa !44
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ei = icmp eq i64 %index.next, %n.vec
  br i1 %i.ei, label %middle.block, label %vector.body, !llvm.loop !88

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.dk
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader217

.lr.ph.preheader217:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.03573.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.ea, %middle.block ] ; 4 uses
  %.03672.ph = phi ptr [ %i.dd, %vector.memcheck ], [ %i.dd, %.lr.ph.preheader ], [ %i.ec, %middle.block ] ; 2 uses
  %.03771.ph = phi ptr [ %i.dj, %vector.memcheck ], [ %i.dj, %.lr.ph.preheader ], [ %i.ed, %middle.block ] ; 2 uses
  %i.ej = sub i32 %i.cv, %.03573.ph
  %xtraiter = and i32 %i.ej, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader217, %.lr.ph.prol
  %.03573.prol = phi i32 [ %i.er, %.lr.ph.prol ], [ %.03573.ph, %.lr.ph.preheader217 ]
  %.03672.prol = phi ptr [ %i.eq, %.lr.ph.prol ], [ %.03672.ph, %.lr.ph.preheader217 ] ; 3 uses
  %.03771.prol = phi ptr [ %i.ep, %.lr.ph.prol ], [ %.03771.ph, %.lr.ph.preheader217 ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader217 ]
  %i.ek = load float, ptr %.03771.prol, align 4, !tbaa !44
  store float %i.ek, ptr %.03672.prol, align 4, !tbaa !44
  %i.el = getelementptr inbounds nuw i8, ptr %.03771.prol, i64 4
  %i.em = load float, ptr %i.el, align 4, !tbaa !44
  %i.en = fneg fast float %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %.03672.prol, i64 4
  store float %i.en, ptr %i.eo, align 4, !tbaa !44
  %i.ep = getelementptr inbounds nuw i8, ptr %.03771.prol, i64 8 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.03672.prol, i64 8 ; 2 uses
  %i.er = add nuw nsw i32 %.03573.prol, 1         ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !89

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader217
  %.03573.unr = phi i32 [ %.03573.ph, %.lr.ph.preheader217 ], [ %i.er, %.lr.ph.prol ]
  %.03672.unr = phi ptr [ %.03672.ph, %.lr.ph.preheader217 ], [ %i.eq, %.lr.ph.prol ]
  %.03771.unr = phi ptr [ %.03771.ph, %.lr.ph.preheader217 ], [ %i.ep, %.lr.ph.prol ]
  %i.es = sub i32 %.03573.ph, %i.cv
  %i.et = icmp ugt i32 %i.es, -4
  br i1 %i.et, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.03573 = phi i32 [ %i.fw, %.lr.ph ], [ %.03573.unr, %.lr.ph.prol.loopexit ]
  %.03672 = phi ptr [ %i.fv, %.lr.ph ], [ %.03672.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.03771 = phi ptr [ %i.fu, %.lr.ph ], [ %.03771.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.eu = load float, ptr %.03771, align 4, !tbaa !44
  store float %i.eu, ptr %.03672, align 4, !tbaa !44
  %i.ev = getelementptr inbounds nuw i8, ptr %.03771, i64 4
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !44
  %i.ex = fneg fast float %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %.03672, i64 4
  store float %i.ex, ptr %i.ey, align 4, !tbaa !44
  %i.ez = getelementptr inbounds nuw i8, ptr %.03771, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %.03672, i64 8
  %i.fb = load float, ptr %i.ez, align 4, !tbaa !44
  store float %i.fb, ptr %i.fa, align 4, !tbaa !44
  %i.fc = getelementptr inbounds nuw i8, ptr %.03771, i64 12
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !44
  %i.fe = fneg fast float %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %.03672, i64 12
  store float %i.fe, ptr %i.ff, align 4, !tbaa !44
  %i.fg = getelementptr inbounds nuw i8, ptr %.03771, i64 16
  %i.fh = getelementptr inbounds nuw i8, ptr %.03672, i64 16
  %i.fi = load float, ptr %i.fg, align 4, !tbaa !44
  store float %i.fi, ptr %i.fh, align 4, !tbaa !44
  %i.fj = getelementptr inbounds nuw i8, ptr %.03771, i64 20
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !44
  %i.fl = fneg fast float %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %.03672, i64 20
  store float %i.fl, ptr %i.fm, align 4, !tbaa !44
  %i.fn = getelementptr inbounds nuw i8, ptr %.03771, i64 24
  %i.fo = getelementptr inbounds nuw i8, ptr %.03672, i64 24
  %i.fp = load float, ptr %i.fn, align 4, !tbaa !44
  store float %i.fp, ptr %i.fo, align 4, !tbaa !44
  %i.fq = getelementptr inbounds nuw i8, ptr %.03771, i64 28
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !44
  %i.fs = fneg fast float %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %.03672, i64 28
  store float %i.fs, ptr %i.ft, align 4, !tbaa !44
  %i.fu = getelementptr inbounds nuw i8, ptr %.03771, i64 32
  %i.fv = getelementptr inbounds nuw i8, ptr %.03672, i64 32
  %i.fw = add nuw nsw i32 %.03573, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.fw, %i.cv
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph, !llvm.loop !90

bb.c:                                             ; preds = %.lr.ph75.split
  %i.fx = load i32, ptr %i.f, align 8, !tbaa !36
  %i.fy = sub nsw i32 %i.fx, %i.ct
  %i.fz = load ptr, ptr %4, align 8, !tbaa !19    ; 2 uses
  %i.ga = load i32, ptr %i.r, align 4, !tbaa !50
  %i.gb = sext i32 %i.ga to i64
  %i.gc = sext i32 %i.fy to i64
  %i.gd = load i64, ptr %i.s, align 8, !tbaa !48
  %i.ge = mul i64 %i.gd, %i.gb                    ; 2 uses
  %i.gf = mul i64 %i.ge, %i.gc
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.gf
  %i.gh = sext i32 %i.ct to i64
  %i.gi = mul i64 %i.ge, %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.gi
  %i.gk = load i32, ptr %5, align 4, !tbaa !49
  %i.gl = sext i32 %i.gk to i64
  %i.gm = shl nsw i64 %i.gl, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.gj, ptr align 4 %i.gg, i64 %i.gm, i1 false)
  %.pre = load i32, ptr %i.q, align 4, !tbaa !37
  %.pre81 = load i32, ptr %i.b, align 4, !tbaa !49
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %.noexc39, %bb.c
  %i.gn = phi i32 [ %.pre81, %bb.c ], [ %i.cr, %.noexc39 ], [ %i.cr, %middle.block ], [ %i.cr, %.lr.ph ], [ %i.cr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.go = phi i32 [ %.pre, %bb.c ], [ 0, %.noexc39 ], [ 0, %middle.block ], [ 0, %.lr.ph ], [ 0, %.lr.ph.prol.loopexit ]
  %i.gp = add nuw i32 %.074, 1                    ; 2 uses
  %i.gq = add i32 %i.gn, 1
  %i.gr = icmp ult i32 %i.gp, %i.gq
  br i1 %i.gr, label %.lr.ph75.split, label %._crit_edge, !llvm.loop !91

._crit_edge:                                      ; preds = %.loopexit, %..loopexit_crit_edge.us, %.lr.ph75.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4u(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.cos.v4f32(<4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { <4 x float>, <4 x float> } @llvm.sincos.v4f32(<4 x float>) #12

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { noreturn nounwind }
attributes #15 = { builtin nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{null}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"vtable pointer", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p1 int", !12, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!"p1 _ZTSN4ncnn9AllocatorE", !12, i64 0}
!16 = !{!"_ZTSN4ncnn3MatE", !12, i64 0, !13, i64 8, !14, i64 16, !7, i64 24, !15, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !14, i64 64}
!17 = !{!16, !13, i64 8}
!18 = !{!16, !15, i64 32}
!19 = !{!16, !12, i64 0}
!20 = !{!16, !14, i64 64}
!21 = !{!"bool", !6, i64 0}
!22 = !{!"p1 omnipotent char", !12, i64 0}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !22, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !23, i64 0, !14, i64 8, !6, i64 16}
!25 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!26 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !25, i64 0}
!27 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !26, i64 0}
!28 = !{!"_ZTSSt6vectorIiSaIiEE", !27, i64 0}
!29 = !{!"p1 _ZTSN4ncnn3MatE", !12, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!31 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !30, i64 0}
!32 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !31, i64 0}
!33 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !32, i64 0}
!34 = !{!"_ZTSN4ncnn5LayerE", !21, i64 8, !21, i64 9, !21, i64 10, !21, i64 11, !21, i64 12, !21, i64 13, !21, i64 14, !21, i64 15, !21, i64 16, !21, i64 17, !21, i64 18, !21, i64 19, !21, i64 20, !21, i64 21, !21, i64 22, !21, i64 23, !21, i64 24, !21, i64 25, !21, i64 26, !21, i64 27, !7, i64 28, !12, i64 32, !7, i64 40, !24, i64 48, !24, i64 80, !28, i64 112, !28, i64 136, !33, i64 160, !33, i64 184}
!35 = !{!"_ZTSN4ncnn11SpectrogramE", !34, i64 0, !7, i64 208, !7, i64 212, !7, i64 216, !7, i64 220, !7, i64 224, !7, i64 228, !7, i64 232, !7, i64 236, !7, i64 240, !16, i64 248}
!36 = !{!35, !7, i64 208}
!37 = !{!35, !7, i64 212}
!38 = !{!35, !7, i64 216}
!39 = !{!35, !7, i64 228}
!40 = !{!35, !7, i64 232}
!41 = !{!35, !7, i64 236}
!42 = !{!35, !7, i64 240}
!43 = !{!"float", !6, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"llvm.loop.isvectorized", i32 1}
!47 = !{!"llvm.loop.unroll.runtime.disable"}
!48 = !{!16, !14, i64 16}
!49 = !{!7, !7, i64 0}
!50 = !{!16, !7, i64 44}
!51 = !{i64 2, i64 -1, i64 -1, i1 true}
!52 = !{!51}
!53 = !{ptr @_ZN4ncnn11SpectrogramD2Ev}
!54 = distinct !{!54, !45, !46, !47}
!55 = distinct !{!55, !45, !47, !46}
!56 = distinct !{!56, !45, !46, !47}
!57 = distinct !{!57, !45, !47, !46}
!58 = distinct !{!58, !45, !46, !47}
!59 = distinct !{!59, !45, !47, !46}
!60 = distinct !{!60, !45, !46, !47}
!61 = distinct !{!61, !45, !47, !46}
!62 = !{!35, !7, i64 220}
!63 = !{!35, !7, i64 224}
!64 = !{!12, !12, i64 0}
!65 = !{!16, !7, i64 24}
!66 = !{!16, !7, i64 56}
!67 = !{!21, !21, i64 0}
!68 = !{!15, !15, i64 0}
!69 = !{!6, !6, i64 0}
!70 = !{i64 0, i64 1, !67, i64 1, i64 1, !67, i64 2, i64 1, !67, i64 3, i64 1, !67, i64 4, i64 4, !49, i64 8, i64 8, !68, i64 16, i64 8, !68, i64 24, i64 4, !49, i64 28, i64 1, !67, i64 29, i64 1, !67, i64 30, i64 1, !67, i64 31, i64 1, !67, i64 32, i64 1, !67, i64 33, i64 1, !67, i64 34, i64 1, !67, i64 35, i64 1, !67, i64 36, i64 1, !67, i64 37, i64 1, !67, i64 38, i64 1, !67, i64 39, i64 1, !67, i64 40, i64 4, !49, i64 44, i64 1, !67, i64 45, i64 1, !67, i64 46, i64 1, !67, i64 47, i64 1, !67, i64 48, i64 1, !69, i64 49, i64 1, !67, i64 50, i64 1, !67, i64 51, i64 1, !67, i64 52, i64 1, !67, i64 53, i64 1, !67, i64 54, i64 1, !67, i64 55, i64 1, !67, i64 56, i64 1, !67, i64 57, i64 1, !67, i64 58, i64 1, !67, i64 59, i64 1, !67, i64 60, i64 1, !67, i64 61, i64 1, !67, i64 62, i64 1, !67, i64 63, i64 1, !67}
!71 = !{!"_ZTSN4ncnn6OptionE", !21, i64 0, !21, i64 1, !21, i64 2, !21, i64 3, !7, i64 4, !15, i64 8, !15, i64 16, !7, i64 24, !21, i64 28, !21, i64 29, !21, i64 30, !21, i64 31, !21, i64 32, !21, i64 33, !21, i64 34, !21, i64 35, !21, i64 36, !21, i64 37, !21, i64 38, !21, i64 39, !7, i64 40, !21, i64 44, !21, i64 45, !21, i64 46, !21, i64 47, !6, i64 48, !21, i64 49, !21, i64 50, !21, i64 51, !21, i64 52, !21, i64 53, !21, i64 54, !21, i64 55, !21, i64 56, !21, i64 57, !21, i64 58, !21, i64 59, !21, i64 60, !21, i64 61, !21, i64 62, !21, i64 63}
!72 = !{!71, !15, i64 16}
!73 = !{!71, !15, i64 8}
!74 = !{!71, !7, i64 4}
!75 = !{!34, !21, i64 8}
!76 = !{!34, !21, i64 9}
!77 = distinct !{!77, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!78 = distinct !{!78, !77, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!79 = distinct !{!79, !45, !46, !47}
!80 = distinct !{!80, !45, !47, !46}
!81 = distinct !{!81, !45}
!82 = !{!78}
!83 = distinct !{!83, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!84 = distinct !{!84, !83, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!85 = distinct !{!85, !45, !46, !47}
!86 = distinct !{!86, !93}
!87 = distinct !{!87, !45, !46}
!88 = distinct !{!88, !45, !46, !47}
!89 = distinct !{!89, !93}
!90 = distinct !{!90, !45, !46}
!91 = distinct !{!91, !94}
!92 = !{!84}
!93 = !{!"llvm.loop.unroll.disable"}
!94 = !{!"llvm.loop.unswitch.partial.disable"}
end_hunk_0
