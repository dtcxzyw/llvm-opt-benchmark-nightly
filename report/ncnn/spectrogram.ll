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
  %i.x = load ptr, ptr %4, align 8, !tbaa !19, !noalias !98 ; 4 uses
  %i.y = load i64, ptr %i.t, align 8, !tbaa !20, !noalias !98
  %i.z = load i64, ptr %i.s, align 8, !tbaa !48, !noalias !98
  %factor.op.mul = mul i64 %i.y, %i.z             ; 2 uses
  %i.aa = load i32, ptr %5, align 4, !tbaa !49    ; 7 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.noexc39.us.preheader, label %._crit_edge

.noexc39.us.preheader:                            ; preds = %.lr.ph75.split.us
  %i.ac = add nsw i32 %i.aa, -1
  %i.ad = zext i32 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 8                ; 2 uses
  %i.ag = zext nneg i32 %i.aa to i64              ; 2 uses
  %min.iters.check172 = icmp ult i32 %i.aa, 4
  %i.ah = getelementptr i8, ptr %i.x, i64 %i.af
  %i.ai = getelementptr i8, ptr %i.x, i64 %i.af
  %n.vec194 = and i64 %i.ag, 2147483644           ; 4 uses
  %i.aj = trunc nuw nsw i64 %n.vec194 to i32
  %i.ak = shl nuw nsw i64 %n.vec194, 3            ; 2 uses
  %cmp.n211 = icmp eq i64 %n.vec194, %i.ag
  br label %.noexc39.us

.noexc39.us:                                      ; preds = %.noexc39.us.preheader, %..loopexit_crit_edge.us
  %.074.us = phi i32 [ %i.co, %..loopexit_crit_edge.us ], [ %i.n, %.noexc39.us.preheader ] ; 2 uses
  %i.al = add i32 %.074.us, %i.e                  ; 2 uses
  %i.am = sub i32 %i.w, %i.al
  %i.an = sext i32 %i.am to i64
  %.reass = mul i64 %factor.op.mul, %i.an         ; 2 uses
  %i.ao = getelementptr i8, ptr %i.x, i64 %.reass ; 6 uses
  %i.ap = sext i32 %i.al to i64
  %.reass77 = mul i64 %factor.op.mul, %i.ap       ; 2 uses
  %i.aq = getelementptr i8, ptr %i.x, i64 %.reass77 ; 6 uses
  br i1 %min.iters.check172, label %scalar.ph171.preheader, label %vector.memcheck173

vector.memcheck173:                               ; preds = %.noexc39.us
  %i.ar = getelementptr i8, ptr %i.ah, i64 %.reass77
  %i.as = getelementptr i8, ptr %i.ai, i64 %.reass
  %bound0189 = icmp ult ptr %i.aq, %i.as
  %bound1190 = icmp ult ptr %i.ao, %i.ar
  %found.conflict191 = and i1 %bound0189, %bound1190
  br i1 %found.conflict191, label %scalar.ph171.preheader, label %vector.ph193

vector.ph193:                                     ; preds = %vector.memcheck173
  %i.at = getelementptr i8, ptr %i.aq, i64 %i.ak
  %i.au = getelementptr i8, ptr %i.ao, i64 %i.ak
  br label %vector.body195

vector.body195:                                   ; preds = %vector.body195, %vector.ph193
  %index196 = phi i64 [ 0, %vector.ph193 ], [ %index.next209, %vector.body195 ] ; 2 uses
  %i.av = shl i64 %index196, 3                    ; 3 uses
  %i.aw = or disjoint i64 %i.av, 16               ; 2 uses
  %next.gep197 = getelementptr i8, ptr %i.aq, i64 %i.av
  %next.gep198 = getelementptr i8, ptr %i.aq, i64 %i.aw
  %next.gep199 = getelementptr i8, ptr %i.ao, i64 %i.av
  %next.gep200 = getelementptr i8, ptr %i.ao, i64 %i.aw
  %wide.vec201 = load <4 x float>, ptr %next.gep199, align 4, !tbaa !44, !alias.scope !99 ; 2 uses
  %wide.vec204 = load <4 x float>, ptr %next.gep200, align 4, !tbaa !44, !alias.scope !99 ; 2 uses
  %i.ax = fneg fast <4 x float> %wide.vec201
  %i.ay = fneg fast <4 x float> %wide.vec204
  %interleaved.vec207 = shufflevector <4 x float> %wide.vec201, <4 x float> %i.ax, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x float> %interleaved.vec207, ptr %next.gep197, align 4, !tbaa !44, !alias.scope !100, !noalias !99
  %interleaved.vec208 = shufflevector <4 x float> %wide.vec204, <4 x float> %i.ay, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x float> %interleaved.vec208, ptr %next.gep198, align 4, !tbaa !44, !alias.scope !100, !noalias !99
  %index.next209 = add nuw i64 %index196, 4       ; 2 uses
  %i.az = icmp eq i64 %index.next209, %n.vec194
  br i1 %i.az, label %middle.block210, label %vector.body195, !llvm.loop !88

middle.block210:                                  ; preds = %vector.body195
  br i1 %cmp.n211, label %..loopexit_crit_edge.us, label %scalar.ph171.preheader

scalar.ph171.preheader:                           ; preds = %vector.memcheck173, %.noexc39.us, %middle.block210
  %.03573.us.ph = phi i32 [ 0, %vector.memcheck173 ], [ 0, %.noexc39.us ], [ %i.aj, %middle.block210 ] ; 4 uses
  %.03672.us.ph = phi ptr [ %i.aq, %vector.memcheck173 ], [ %i.aq, %.noexc39.us ], [ %i.at, %middle.block210 ] ; 2 uses
  %.03771.us.ph = phi ptr [ %i.ao, %vector.memcheck173 ], [ %i.ao, %.noexc39.us ], [ %i.au, %middle.block210 ] ; 2 uses
  %i.ba = sub i32 %i.aa, %.03573.us.ph
  %xtraiter217 = and i32 %i.ba, 3                 ; 2 uses
  %lcmp.mod218.not = icmp eq i32 %xtraiter217, 0
  br i1 %lcmp.mod218.not, label %scalar.ph171.prol.loopexit, label %scalar.ph171.prol

scalar.ph171.prol:                                ; preds = %scalar.ph171.preheader, %scalar.ph171.prol
  %.03573.us.prol = phi i32 [ %i.bi, %scalar.ph171.prol ], [ %.03573.us.ph, %scalar.ph171.preheader ]
  %.03672.us.prol = phi ptr [ %i.bh, %scalar.ph171.prol ], [ %.03672.us.ph, %scalar.ph171.preheader ] ; 3 uses
  %.03771.us.prol = phi ptr [ %i.bg, %scalar.ph171.prol ], [ %.03771.us.ph, %scalar.ph171.preheader ] ; 3 uses
  %prol.iter219 = phi i32 [ %prol.iter219.next, %scalar.ph171.prol ], [ 0, %scalar.ph171.preheader ]
  %i.bb = load float, ptr %.03771.us.prol, align 4, !tbaa !44
  store float %i.bb, ptr %.03672.us.prol, align 4, !tbaa !44
  %i.bc = getelementptr inbounds nuw i8, ptr %.03771.us.prol, i64 4
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !44
  %i.be = fneg fast float %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %.03672.us.prol, i64 4
  store float %i.be, ptr %i.bf, align 4, !tbaa !44
  %i.bg = getelementptr inbounds nuw i8, ptr %.03771.us.prol, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.03672.us.prol, i64 8 ; 2 uses
  %i.bi = add nuw nsw i32 %.03573.us.prol, 1      ; 2 uses
  %prol.iter219.next = add i32 %prol.iter219, 1   ; 2 uses
  %prol.iter219.cmp.not = icmp eq i32 %prol.iter219.next, %xtraiter217
  br i1 %prol.iter219.cmp.not, label %scalar.ph171.prol.loopexit, label %scalar.ph171.prol, !llvm.loop !89

scalar.ph171.prol.loopexit:                       ; preds = %scalar.ph171.prol, %scalar.ph171.preheader
  %.03573.us.unr = phi i32 [ %.03573.us.ph, %scalar.ph171.preheader ], [ %i.bi, %scalar.ph171.prol ]
  %.03672.us.unr = phi ptr [ %.03672.us.ph, %scalar.ph171.preheader ], [ %i.bh, %scalar.ph171.prol ]
  %.03771.us.unr = phi ptr [ %.03771.us.ph, %scalar.ph171.preheader ], [ %i.bg, %scalar.ph171.prol ]
  %i.bj = sub i32 %.03573.us.ph, %i.aa
  %i.bk = icmp ugt i32 %i.bj, -4
  br i1 %i.bk, label %..loopexit_crit_edge.us, label %scalar.ph171

scalar.ph171:                                     ; preds = %scalar.ph171.prol.loopexit, %scalar.ph171
  %.03573.us = phi i32 [ %i.cn, %scalar.ph171 ], [ %.03573.us.unr, %scalar.ph171.prol.loopexit ]
  %.03672.us = phi ptr [ %i.cm, %scalar.ph171 ], [ %.03672.us.unr, %scalar.ph171.prol.loopexit ] ; 9 uses
  %.03771.us = phi ptr [ %i.cl, %scalar.ph171 ], [ %.03771.us.unr, %scalar.ph171.prol.loopexit ] ; 9 uses
  %i.bl = load float, ptr %.03771.us, align 4, !tbaa !44
  store float %i.bl, ptr %.03672.us, align 4, !tbaa !44
  %i.bm = getelementptr inbounds nuw i8, ptr %.03771.us, i64 4
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !44
  %i.bo = fneg fast float %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %.03672.us, i64 4
  store float %i.bo, ptr %i.bp, align 4, !tbaa !44
  %i.bq = getelementptr inbounds nuw i8, ptr %.03771.us, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %.03672.us, i64 8
  %i.bs = load float, ptr %i.bq, align 4, !tbaa !44
  store float %i.bs, ptr %i.br, align 4, !tbaa !44
  %i.bt = getelementptr inbounds nuw i8, ptr %.03771.us, i64 12
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !44
  %i.bv = fneg fast float %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %.03672.us, i64 12
  store float %i.bv, ptr %i.bw, align 4, !tbaa !44
  %i.bx = getelementptr inbounds nuw i8, ptr %.03771.us, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %.03672.us, i64 16
  %i.bz = load float, ptr %i.bx, align 4, !tbaa !44
  store float %i.bz, ptr %i.by, align 4, !tbaa !44
  %i.ca = getelementptr inbounds nuw i8, ptr %.03771.us, i64 20
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !44
  %i.cc = fneg fast float %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %.03672.us, i64 20
  store float %i.cc, ptr %i.cd, align 4, !tbaa !44
  %i.ce = getelementptr inbounds nuw i8, ptr %.03771.us, i64 24
  %i.cf = getelementptr inbounds nuw i8, ptr %.03672.us, i64 24
  %i.cg = load float, ptr %i.ce, align 4, !tbaa !44
  store float %i.cg, ptr %i.cf, align 4, !tbaa !44
  %i.ch = getelementptr inbounds nuw i8, ptr %.03771.us, i64 28
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !44
  %i.cj = fneg fast float %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %.03672.us, i64 28
  store float %i.cj, ptr %i.ck, align 4, !tbaa !44
  %i.cl = getelementptr inbounds nuw i8, ptr %.03771.us, i64 32
  %i.cm = getelementptr inbounds nuw i8, ptr %.03672.us, i64 32
  %i.cn = add nuw nsw i32 %.03573.us, 4           ; 2 uses
  %exitcond79.not.3 = icmp eq i32 %i.cn, %i.aa
  br i1 %exitcond79.not.3, label %..loopexit_crit_edge.us, label %scalar.ph171, !llvm.loop !90

..loopexit_crit_edge.us:                          ; preds = %scalar.ph171.prol.loopexit, %scalar.ph171, %middle.block210
  %i.co = add nuw i32 %.074.us, 1                 ; 2 uses
  %i.cp = icmp ult i32 %i.co, %i.o
  br i1 %i.cp, label %.noexc39.us, label %._crit_edge

.lr.ph75.split:                                   ; preds = %.lr.ph75, %.loopexit
  %i.cq = phi i32 [ %i.gg, %.loopexit ], [ %i.m, %.lr.ph75 ] ; 4 uses
  %i.cr = phi i32 [ %i.gh, %.loopexit ], [ 1, %.lr.ph75 ]
  %.074 = phi i32 [ %i.gi, %.loopexit ], [ %i.n, %.lr.ph75 ] ; 2 uses
  %i.cs = add i32 %.074, %i.e                     ; 4 uses
  %i.ct = icmp eq i32 %i.cr, 0
  br i1 %i.ct, label %.noexc39, label %bb.c

.noexc39:                                         ; preds = %.lr.ph75.split
  %i.cu = load i32, ptr %5, align 4, !tbaa !49    ; 7 uses
  %i.cv = icmp sgt i32 %i.cu, 0
  br i1 %i.cv, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.noexc39
  %i.cw = load ptr, ptr %4, align 8, !tbaa !19, !noalias !98 ; 4 uses
  %i.cx = load i64, ptr %i.t, align 8, !tbaa !20, !noalias !98 ; 2 uses
  %i.cy = sext i32 %i.cs to i64
  %i.cz = mul i64 %i.cx, %i.cy
  %i.da = load i64, ptr %i.s, align 8, !tbaa !48, !noalias !98 ; 2 uses
  %i.db = mul i64 %i.cz, %i.da                    ; 2 uses
  %i.dc = getelementptr i8, ptr %i.cw, i64 %i.db  ; 6 uses
  %i.dd = load i32, ptr %i.f, align 8, !tbaa !36
  %i.de = sub i32 %i.dd, %i.cs
  %i.df = sext i32 %i.de to i64
  %i.dg = mul i64 %i.cx, %i.df
  %i.dh = mul i64 %i.dg, %i.da                    ; 2 uses
  %i.di = getelementptr i8, ptr %i.cw, i64 %i.dh  ; 6 uses
  %i.dj = zext nneg i32 %i.cu to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.cu, 6
  br i1 %min.iters.check, label %.lr.ph.preheader215, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.dk = add nsw i32 %i.cu, -1
  %i.dl = zext i32 %i.dk to i64
  %i.dm = shl nuw nsw i64 %i.dl, 3                ; 2 uses
  %i.dn = getelementptr i8, ptr %i.cw, i64 %i.db
  %i.do = getelementptr i8, ptr %i.dn, i64 %i.dm
  %i.dp = getelementptr i8, ptr %i.do, i64 8
  %i.dq = getelementptr i8, ptr %i.cw, i64 %i.dh
  %i.dr = getelementptr i8, ptr %i.dq, i64 %i.dm
  %i.ds = getelementptr i8, ptr %i.dr, i64 8
  %bound0126 = icmp ult ptr %i.dc, %i.ds
  %bound1127 = icmp ult ptr %i.di, %i.dp
  %found.conflict128 = and i1 %bound0126, %bound1127
  br i1 %found.conflict128, label %.lr.ph.preheader215, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dj, 2147483644              ; 4 uses
  %i.dt = trunc nuw nsw i64 %n.vec to i32
  %i.du = shl nuw nsw i64 %n.vec, 3               ; 2 uses
  %i.dv = getelementptr i8, ptr %i.dc, i64 %i.du
  %i.dw = getelementptr i8, ptr %i.di, i64 %i.du
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dx = shl i64 %index, 3                       ; 3 uses
  %i.dy = or disjoint i64 %i.dx, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dc, i64 %i.dx
  %next.gep130 = getelementptr i8, ptr %i.dc, i64 %i.dy
  %next.gep131 = getelementptr i8, ptr %i.di, i64 %i.dx
  %next.gep132 = getelementptr i8, ptr %i.di, i64 %i.dy
  %wide.vec = load <4 x float>, ptr %next.gep131, align 4, !tbaa !44, !alias.scope !102 ; 2 uses
  %wide.vec134 = load <4 x float>, ptr %next.gep132, align 4, !tbaa !44, !alias.scope !102 ; 2 uses
  %i.dz = fneg fast <4 x float> %wide.vec
  %i.ea = fneg fast <4 x float> %wide.vec134
  %interleaved.vec = shufflevector <4 x float> %wide.vec, <4 x float> %i.dz, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !44, !alias.scope !103, !noalias !102
  %interleaved.vec137 = shufflevector <4 x float> %wide.vec134, <4 x float> %i.ea, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x float> %interleaved.vec137, ptr %next.gep130, align 4, !tbaa !44, !alias.scope !103, !noalias !102
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eb = icmp eq i64 %index.next, %n.vec
  br i1 %i.eb, label %middle.block, label %vector.body, !llvm.loop !94

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.dj
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader215

.lr.ph.preheader215:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.03573.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.dt, %middle.block ] ; 4 uses
  %.03672.ph = phi ptr [ %i.dc, %vector.memcheck ], [ %i.dc, %.lr.ph.preheader ], [ %i.dv, %middle.block ] ; 2 uses
  %.03771.ph = phi ptr [ %i.di, %vector.memcheck ], [ %i.di, %.lr.ph.preheader ], [ %i.dw, %middle.block ] ; 2 uses
  %i.ec = sub i32 %i.cu, %.03573.ph
  %xtraiter = and i32 %i.ec, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader215, %.lr.ph.prol
  %.03573.prol = phi i32 [ %i.ek, %.lr.ph.prol ], [ %.03573.ph, %.lr.ph.preheader215 ]
  %.03672.prol = phi ptr [ %i.ej, %.lr.ph.prol ], [ %.03672.ph, %.lr.ph.preheader215 ] ; 3 uses
  %.03771.prol = phi ptr [ %i.ei, %.lr.ph.prol ], [ %.03771.ph, %.lr.ph.preheader215 ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader215 ]
  %i.ed = load float, ptr %.03771.prol, align 4, !tbaa !44
  store float %i.ed, ptr %.03672.prol, align 4, !tbaa !44
  %i.ee = getelementptr inbounds nuw i8, ptr %.03771.prol, i64 4
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !44
  %i.eg = fneg fast float %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %.03672.prol, i64 4
  store float %i.eg, ptr %i.eh, align 4, !tbaa !44
  %i.ei = getelementptr inbounds nuw i8, ptr %.03771.prol, i64 8 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.03672.prol, i64 8 ; 2 uses
  %i.ek = add nuw nsw i32 %.03573.prol, 1         ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !95

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader215
  %.03573.unr = phi i32 [ %.03573.ph, %.lr.ph.preheader215 ], [ %i.ek, %.lr.ph.prol ]
  %.03672.unr = phi ptr [ %.03672.ph, %.lr.ph.preheader215 ], [ %i.ej, %.lr.ph.prol ]
  %.03771.unr = phi ptr [ %.03771.ph, %.lr.ph.preheader215 ], [ %i.ei, %.lr.ph.prol ]
  %i.el = sub i32 %.03573.ph, %i.cu
  %i.em = icmp ugt i32 %i.el, -4
  br i1 %i.em, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.03573 = phi i32 [ %i.fp, %.lr.ph ], [ %.03573.unr, %.lr.ph.prol.loopexit ]
  %.03672 = phi ptr [ %i.fo, %.lr.ph ], [ %.03672.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.03771 = phi ptr [ %i.fn, %.lr.ph ], [ %.03771.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.en = load float, ptr %.03771, align 4, !tbaa !44
  store float %i.en, ptr %.03672, align 4, !tbaa !44
  %i.eo = getelementptr inbounds nuw i8, ptr %.03771, i64 4
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !44
  %i.eq = fneg fast float %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %.03672, i64 4
  store float %i.eq, ptr %i.er, align 4, !tbaa !44
  %i.es = getelementptr inbounds nuw i8, ptr %.03771, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %.03672, i64 8
  %i.eu = load float, ptr %i.es, align 4, !tbaa !44
  store float %i.eu, ptr %i.et, align 4, !tbaa !44
  %i.ev = getelementptr inbounds nuw i8, ptr %.03771, i64 12
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !44
  %i.ex = fneg fast float %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %.03672, i64 12
  store float %i.ex, ptr %i.ey, align 4, !tbaa !44
  %i.ez = getelementptr inbounds nuw i8, ptr %.03771, i64 16
  %i.fa = getelementptr inbounds nuw i8, ptr %.03672, i64 16
  %i.fb = load float, ptr %i.ez, align 4, !tbaa !44
  store float %i.fb, ptr %i.fa, align 4, !tbaa !44
  %i.fc = getelementptr inbounds nuw i8, ptr %.03771, i64 20
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !44
  %i.fe = fneg fast float %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %.03672, i64 20
  store float %i.fe, ptr %i.ff, align 4, !tbaa !44
  %i.fg = getelementptr inbounds nuw i8, ptr %.03771, i64 24
  %i.fh = getelementptr inbounds nuw i8, ptr %.03672, i64 24
  %i.fi = load float, ptr %i.fg, align 4, !tbaa !44
  store float %i.fi, ptr %i.fh, align 4, !tbaa !44
  %i.fj = getelementptr inbounds nuw i8, ptr %.03771, i64 28
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !44
  %i.fl = fneg fast float %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %.03672, i64 28
  store float %i.fl, ptr %i.fm, align 4, !tbaa !44
  %i.fn = getelementptr inbounds nuw i8, ptr %.03771, i64 32
  %i.fo = getelementptr inbounds nuw i8, ptr %.03672, i64 32
  %i.fp = add nuw nsw i32 %.03573, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.fp, %i.cu
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph, !llvm.loop !96

bb.c:                                             ; preds = %.lr.ph75.split
  %i.fq = load i32, ptr %i.f, align 8, !tbaa !36
  %i.fr = sub nsw i32 %i.fq, %i.cs
  %i.fs = load ptr, ptr %4, align 8, !tbaa !19    ; 2 uses
  %i.ft = load i32, ptr %i.r, align 4, !tbaa !50
  %i.fu = sext i32 %i.ft to i64
  %i.fv = sext i32 %i.fr to i64
  %i.fw = load i64, ptr %i.s, align 8, !tbaa !48
  %i.fx = mul i64 %i.fw, %i.fu                    ; 2 uses
  %i.fy = mul i64 %i.fx, %i.fv
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fy
  %i.ga = sext i32 %i.cs to i64
  %i.gb = mul i64 %i.fx, %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.gb
  %i.gd = load i32, ptr %5, align 4, !tbaa !49
  %i.ge = sext i32 %i.gd to i64
  %i.gf = shl nsw i64 %i.ge, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.gc, ptr align 4 %i.fz, i64 %i.gf, i1 false)
  %.pre = load i32, ptr %i.q, align 4, !tbaa !37
  %.pre81 = load i32, ptr %i.b, align 4, !tbaa !49
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %.noexc39, %bb.c
  %i.gg = phi i32 [ %.pre81, %bb.c ], [ %i.cq, %.noexc39 ], [ %i.cq, %middle.block ], [ %i.cq, %.lr.ph ], [ %i.cq, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.gh = phi i32 [ %.pre, %bb.c ], [ 0, %.noexc39 ], [ 0, %middle.block ], [ 0, %.lr.ph ], [ 0, %.lr.ph.prol.loopexit ]
  %i.gi = add nuw i32 %.074, 1                    ; 2 uses
  %i.gj = add i32 %i.gg, 1
  %i.gk = icmp ult i32 %i.gi, %i.gj
  br i1 %i.gk, label %.lr.ph75.split, label %._crit_edge, !llvm.loop !97

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
!85 = distinct !{!85, i1 false, !"LVerDomain"}
!86 = distinct !{!86, !85}
!87 = distinct !{!87, !85}
!88 = distinct !{!88, !45, !46, !47}
!89 = distinct !{!89, !101}
!90 = distinct !{!90, !45, !46}
!91 = distinct !{!91, i1 false, !"LVerDomain"}
!92 = distinct !{!92, !91}
!93 = distinct !{!93, !91}
!94 = distinct !{!94, !45, !46, !47}
!95 = distinct !{!95, !101}
!96 = distinct !{!96, !45, !46}
!97 = distinct !{!97, !104}
!98 = !{!84}
!99 = !{!86}
!100 = !{!87}
!101 = !{!"llvm.loop.unroll.disable"}
!102 = !{!92}
!103 = !{!93}
!104 = !{!"llvm.loop.unswitch.partial.disable"}
end_hunk_0
