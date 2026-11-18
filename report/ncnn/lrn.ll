Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/lrn?download=true
inline.NumInlined: 35
inline.NumDeleted: 29
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK4ncnn3LRN15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %i.ae = mul i64 %i.z, %i.ad
  %i.af = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %i.ag = getelementptr i8, ptr %i.l, i64 %i.ae
  %scevgep = getelementptr i8, ptr %i.ag, i64 %i.af
  %i.ah = mul i64 %i.p, %i.n
  %i.ai = mul i64 %i.ah, %i.x
  %scevgep75 = getelementptr i8, ptr %i.l, i64 %i.ai
  %i.aj = mul i64 %i.u, %i.s                      ; 2 uses
  %i.ak = mul i64 %i.aj, %i.ad
  %i.al = getelementptr i8, ptr %i.q, i64 %i.ak
  %scevgep76 = getelementptr i8, ptr %i.al, i64 %i.af
  %i.am = mul i64 %i.aj, %i.x
  %scevgep77 = getelementptr i8, ptr %i.q, i64 %i.am
  %min.iters.check = icmp ult i32 %i.v, 8
  %bound0 = icmp ult ptr %scevgep77, %scevgep
  %bound1 = icmp ult ptr %scevgep75, %scevgep76
  %found.conflict = and i1 %bound0, %bound1
  %i.an = or i64 %i.z, %i.aa
  %i.ao = icmp slt i64 %i.an, 0
  %i.ap = or i1 %found.conflict, %i.ao
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.noexc25

.noexc25:                                         ; preds = %.noexc25.preheader, %._crit_edge
  %indvars.iv64 = phi i64 [ %i.x, %.noexc25.preheader ], [ %indvars.iv.next65, %._crit_edge ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 6 uses
  %.reass62 = mul i64 %factor.op.mul61, %indvars.iv64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass62 ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.ap
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.noexc25, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.noexc25 ] ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load = load <4 x float>, ptr %i.as, align 4, !tbaa !42, !alias.scope !83 ; 2 uses
  %wide.load79 = load <4 x float>, ptr %i.at, align 4, !tbaa !42, !alias.scope !83 ; 2 uses
  %i.au = fmul fast <4 x float> %wide.load, %wide.load
  %i.av = fmul fast <4 x float> %wide.load79, %wide.load79
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store <4 x float> %i.au, ptr %i.aw, align 4, !tbaa !42, !alias.scope !84, !noalias !83
  store <4 x float> %i.av, ptr %i.ax, align 4, !tbaa !42, !alias.scope !84, !noalias !83
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !78

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.noexc25, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.noexc25 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.prol
  %i.ba = load float, ptr %i.az, align 4, !tbaa !42 ; 2 uses
  %i.bb = fmul fast float %i.ba, %i.ba
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.prol
  store float %i.bb, ptr %i.bc, align 4, !tbaa !42
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !79

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bd = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.be = icmp ugt i64 %i.bd, -4
  br i1 %i.be, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next65 = add nsw i64 %indvars.iv64, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next65 to i32
  %exitcond67.not = icmp eq i32 %i.y, %lftr.wideiv
  br i1 %exitcond67.not, label %._crit_edge60.split, label %.noexc25

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !42 ; 2 uses
  %i.bh = fmul fast float %i.bg, %i.bg
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv
  store float %i.bh, ptr %i.bi, align 4, !tbaa !42
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !42 ; 2 uses
  %i.bl = fmul fast float %i.bk, %i.bk
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.next
  store float %i.bl, ptr %i.bm, align 4, !tbaa !42
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next.1
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !42 ; 2 uses
  %i.bp = fmul fast float %i.bo, %i.bo
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.next.1
  store float %i.bp, ptr %i.bq, align 4, !tbaa !42
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next.2
  %i.bs = load float, ptr %i.br, align 4, !tbaa !42 ; 2 uses
  %i.bt = fmul fast float %i.bs, %i.bs
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.next.2
  store float %i.bt, ptr %i.bu, align 4, !tbaa !42
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !80

._crit_edge60.split:                              ; preds = %._crit_edge, %.noexc25.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge60.split, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #6 ; 0 uses
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare !callback !49 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #6

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn3LRN15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !36     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !36
  %i.h = load i32, ptr %0, align 4, !tbaa !36     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !36
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !36
  %i.k = load i32, ptr %i.a, align 4, !tbaa !36   ; 4 uses
  %.not108 = icmp sgt i32 %i.k, %i.j
  br i1 %.not108, label %._crit_edge110, label %.noexc47.lr.ph

.noexc47.lr.ph:                                   ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !39, !noalias !105 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !38, !noalias !105 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !37, !noalias !105 ; 5 uses
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 212
  %i.r = load i32, ptr %i.q, align 4, !tbaa !29   ; 2 uses
  %.neg = sdiv i32 %i.r, -2
  %i.s = sdiv i32 %i.r, 2                         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.v = load ptr, ptr %7, align 8, !tbaa !39, !noalias !106 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.x = load i64, ptr %i.w, align 8, !tbaa !38, !noalias !106 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !37, !noalias !106 ; 3 uses
  %factor.op.mul111 = mul i64 %i.x, %i.z
  %i.aa = load i32, ptr %6, align 4, !tbaa !36    ; 5 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 224 ; 4 uses
  %i.ad = getelementptr i8, ptr %4, i64 220       ; 5 uses
  %i.ae = sext i32 %i.s to i64
  %i.af = add nsw i32 %i.j, 1
  br i1 %i.ab, label %.noexc47.us.preheader, label %._crit_edge110

.noexc47.us.preheader:                            ; preds = %.noexc47.lr.ph
  %i.ag = sext i32 %i.k to i64                    ; 5 uses
  %i.ah = add i32 %i.k, %i.s
  %wide.trip.count125 = zext nneg i32 %i.aa to i64 ; 11 uses
  %wide.trip.count133 = zext nneg i32 %i.aa to i64
  %i.ai = mul i64 %i.p, %i.n                      ; 2 uses
  %9 = mul i64 %i.z, %i.x
  %i.aj = sub i32 %i.j, %i.k
  %i.ak = zext i32 %i.aj to i64
  %i.al = add nsw i64 %i.ag, %i.ak                ; 2 uses
  %i.am = mul i64 %i.ai, %i.al
  %i.an = shl nuw nsw i64 %wide.trip.count125, 2  ; 2 uses
  %i.ao = getelementptr i8, ptr %i.l, i64 %i.am
  %scevgep = getelementptr i8, ptr %i.ao, i64 %i.an
  %i.ap = mul i64 %i.p, %i.n
  %i.aq = mul i64 %i.ap, %i.ag
  %scevgep160 = getelementptr i8, ptr %i.l, i64 %i.aq
  %scevgep161 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %scevgep162 = getelementptr i8, ptr %4, i64 228
  %10 = mul i64 %i.z, %i.x                        ; 2 uses
  %i.ar = mul i64 %10, %i.al
  %i.as = getelementptr i8, ptr %i.v, i64 %i.ar
  %scevgep163 = getelementptr i8, ptr %i.as, i64 %i.an ; 3 uses
  %i.at = mul i64 %10, %i.ag
  %scevgep164 = getelementptr i8, ptr %i.v, i64 %i.at ; 3 uses
  %i.au = shl nuw nsw i64 %wide.trip.count125, 2  ; 2 uses
  %i.av = mul i64 %i.p, %i.n
  %i.aw = mul i64 %i.av, %i.ag
  %i.ax = mul i64 %i.p, %i.n
  %i.ay = getelementptr i8, ptr %i.l, i64 %i.aw
  %i.az = getelementptr i8, ptr %i.ay, i64 %i.au
  %min.iters.check187 = icmp ult i32 %i.aa, 8
  %n.vec193 = and i64 %wide.trip.count125, 2147483640 ; 3 uses
  %cmp.n202 = icmp eq i64 %n.vec193, %wide.trip.count125
  %xtraiter = and i64 %wide.trip.count125, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check = icmp ult i32 %i.aa, 4
  %bound0 = icmp ult ptr %scevgep164, %scevgep162
  %bound1 = icmp ult ptr %i.ad, %scevgep163
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %9, 0
  %i.ba = or i1 %found.conflict, %stride.check
  %bound0165 = icmp ult ptr %scevgep164, %scevgep161
  %bound1166 = icmp ult ptr %8, %scevgep163
  %found.conflict167 = and i1 %bound0165, %bound1166
  %conflict.rdx = or i1 %i.ba, %found.conflict167
  %bound0168 = icmp ult ptr %scevgep164, %scevgep
  %bound1169 = icmp ult ptr %scevgep160, %scevgep163
  %found.conflict170 = and i1 %bound0168, %bound1169
  %stride.check171 = icmp slt i64 %i.ai, 0
  %i.bb = or i1 %found.conflict170, %stride.check171
  %conflict.rdx172 = or i1 %conflict.rdx, %i.bb
  %n.vec = and i64 %wide.trip.count125, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count125
  %xtraiter205 = and i64 %wide.trip.count125, 1
  %lcmp.mod206.not = icmp eq i64 %xtraiter205, 0
  %i.bc = add nsw i64 %wide.trip.count125, -1
  br label %.noexc47.us

.noexc47.us:                                      ; preds = %.noexc47.us.preheader, %._crit_edge.us
  %indvar = phi i64 [ 0, %.noexc47.us.preheader ], [ %indvar.next, %._crit_edge.us ] ; 2 uses
  %indvars.iv135 = phi i64 [ %i.ag, %.noexc47.us.preheader ], [ %indvars.iv.next136, %._crit_edge.us ] ; 5 uses
  %indvars.iv127.in = phi i32 [ %i.ah, %.noexc47.us.preheader ], [ %indvars.iv127, %._crit_edge.us ] ; 2 uses
  %i.bd = mul i64 %i.ax, %indvar
  %scevgep185 = getelementptr i8, ptr %i.az, i64 %i.bd
  %indvars.iv127 = add i32 %indvars.iv127.in, 1
  %.reass.us = mul i64 %factor.op.mul, %indvars.iv135
  %i.be = getelementptr i8, ptr %i.l, i64 %.reass.us ; 11 uses
  %i.bf = trunc nsw i64 %indvars.iv135 to i32
  %i.bg = add i32 %.neg, %i.bf                    ; 2 uses
  %i.bh = add nsw i64 %indvars.iv135, %i.ae
  %i.bi = sext i32 %i.bg to i64
  %.not43103.us = icmp slt i64 %i.bh, %i.bi
  br i1 %.not43103.us, label %.noexc.us, label %.lr.ph105.us

.lr.ph105.us:                                     ; preds = %.noexc47.us, %.loopexit.us
  %.041104.us = phi i32 [ %i.dc, %.loopexit.us ], [ %i.bg, %.noexc47.us ] ; 5 uses
  %i.bj = icmp slt i32 %.041104.us, 0
  br i1 %i.bj, label %.loopexit.us, label %bb.c

bb.c:                                             ; preds = %.lr.ph105.us
  %i.bk = load i32, ptr %2, align 4, !tbaa !36
  %.not44.us = icmp slt i32 %.041104.us, %i.bk
  br i1 %.not44.us, label %.lr.ph.us.preheader, label %.loopexit.us

.lr.ph.us.preheader:                              ; preds = %bb.c
  %i.bl = load ptr, ptr %5, align 8, !tbaa !39, !noalias !107 ; 2 uses
  %i.bm = load i64, ptr %i.t, align 8, !tbaa !38, !noalias !107
  %i.bn = zext nneg i32 %.041104.us to i64
  %i.bo = mul i64 %i.bm, %i.bn
  %i.bp = load i64, ptr %i.u, align 8, !tbaa !37, !noalias !107
  %i.bq = mul i64 %i.bo, %i.bp                    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bq ; 7 uses
  br i1 %min.iters.check187, label %.lr.ph.us.preheader204, label %vector.memcheck188

vector.memcheck188:                               ; preds = %.lr.ph.us.preheader
  %i.bs = getelementptr i8, ptr %i.bl, i64 %i.bq
  %i.bt = getelementptr i8, ptr %i.bs, i64 %i.au
  %bound0189 = icmp ult ptr %i.be, %i.bt
  %bound1190 = icmp ult ptr %i.br, %scevgep185
  %found.conflict191 = and i1 %bound0189, %bound1190
  br i1 %found.conflict191, label %.lr.ph.us.preheader204, label %vector.body194

vector.body194:                                   ; preds = %vector.memcheck188, %vector.body194
  %index195 = phi i64 [ %index.next200, %vector.body194 ], [ 0, %vector.memcheck188 ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %index195 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %wide.load196 = load <4 x float>, ptr %i.bu, align 4, !tbaa !42, !alias.scope !108
  %wide.load197 = load <4 x float>, ptr %i.bv, align 4, !tbaa !42, !alias.scope !108
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %index195 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 2 uses
  %wide.load198 = load <4 x float>, ptr %i.bw, align 4, !tbaa !42, !alias.scope !109, !noalias !108
  %wide.load199 = load <4 x float>, ptr %i.bx, align 4, !tbaa !42, !alias.scope !109, !noalias !108
  %i.by = fadd fast <4 x float> %wide.load198, %wide.load196
  %i.bz = fadd fast <4 x float> %wide.load199, %wide.load197
  store <4 x float> %i.by, ptr %i.bw, align 4, !tbaa !42, !alias.scope !109, !noalias !108
  store <4 x float> %i.bz, ptr %i.bx, align 4, !tbaa !42, !alias.scope !109, !noalias !108
  %index.next200 = add nuw i64 %index195, 8       ; 2 uses
  %i.ca = icmp eq i64 %index.next200, %n.vec193
  br i1 %i.ca, label %middle.block201, label %vector.body194, !llvm.loop !94

middle.block201:                                  ; preds = %vector.body194
  br i1 %cmp.n202, label %.loopexit.us, label %.lr.ph.us.preheader204

.lr.ph.us.preheader204:                           ; preds = %vector.memcheck188, %.lr.ph.us.preheader, %middle.block201
  %indvars.iv122.ph = phi i64 [ 0, %vector.memcheck188 ], [ 0, %.lr.ph.us.preheader ], [ %n.vec193, %middle.block201 ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader204, %.lr.ph.us.prol
  %indvars.iv122.prol = phi i64 [ %indvars.iv.next123.prol, %.lr.ph.us.prol ], [ %indvars.iv122.ph, %.lr.ph.us.preheader204 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.us.prol ], [ 0, %.lr.ph.us.preheader204 ]
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv122.prol
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !42
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv122.prol ; 2 uses
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !42
  %i.cf = fadd fast float %i.ce, %i.cc
  store float %i.cf, ptr %i.cd, align 4, !tbaa !42
  %indvars.iv.next123.prol = add nuw nsw i64 %indvars.iv122.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol, !llvm.loop !95

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader204
  %indvars.iv122.unr = phi i64 [ %indvars.iv122.ph, %.lr.ph.us.preheader204 ], [ %indvars.iv.next123.prol, %.lr.ph.us.prol ]
  %i.cg = sub nsw i64 %indvars.iv122.ph, %wide.trip.count125
  %i.ch = icmp ugt i64 %i.cg, -4
  br i1 %i.ch, label %.loopexit.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %indvars.iv122 = phi i64 [ %indvars.iv.next123.3, %.lr.ph.us ], [ %indvars.iv122.unr, %.lr.ph.us.prol.loopexit ] ; 6 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv122
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !42
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv122 ; 2 uses
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !42
  %i.cm = fadd fast float %i.cl, %i.cj
  store float %i.cm, ptr %i.ck, align 4, !tbaa !42
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.next123
  %i.co = load float, ptr %i.cn, align 4, !tbaa !42
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.next123 ; 2 uses
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !42
  %i.cr = fadd fast float %i.cq, %i.co
  store float %i.cr, ptr %i.cp, align 4, !tbaa !42
  %indvars.iv.next123.1 = add nuw nsw i64 %indvars.iv122, 2 ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.next123.1
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !42
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.next123.1 ; 2 uses
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !42
  %i.cw = fadd fast float %i.cv, %i.ct
  store float %i.cw, ptr %i.cu, align 4, !tbaa !42
  %indvars.iv.next123.2 = add nuw nsw i64 %indvars.iv122, 3 ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.next123.2
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !42
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.next123.2 ; 2 uses
  %i.da = load float, ptr %i.cz, align 4, !tbaa !42
  %i.db = fadd fast float %i.da, %i.cy
  store float %i.db, ptr %i.cz, align 4, !tbaa !42
  %indvars.iv.next123.3 = add nuw nsw i64 %indvars.iv122, 4 ; 2 uses
  %exitcond126.not.3 = icmp eq i64 %indvars.iv.next123.3, %wide.trip.count125
  br i1 %exitcond126.not.3, label %.loopexit.us, label %.lr.ph.us, !llvm.loop !96

.loopexit.us:                                     ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us, %middle.block201, %bb.c, %.lr.ph105.us
  %i.dc = add i32 %.041104.us, 1
  %exitcond129.not = icmp eq i32 %.041104.us, %indvars.iv127.in
  br i1 %exitcond129.not, label %.noexc.us, label %.lr.ph105.us, !llvm.loop !97

.noexc.us:                                        ; preds = %.loopexit.us, %.noexc47.us
  %.reass112.us = mul i64 %factor.op.mul111, %indvars.iv135
  %i.dd = getelementptr inbounds nuw i8, ptr %i.v, i64 %.reass112.us ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx172
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.noexc.us
  %i.de = load float, ptr %i.ac, align 8, !tbaa !32, !alias.scope !110
  %broadcast.splatinsert176 = insertelement <4 x float> poison, float %i.de, i64 0
  %broadcast.splat177 = shufflevector <4 x float> %broadcast.splatinsert176, <4 x float> poison, <4 x i32> zeroinitializer
  %i.df = load float, ptr %8, align 4, !tbaa !42, !alias.scope !111
  %broadcast.splatinsert174 = insertelement <4 x float> poison, float %i.df, i64 0
  %broadcast.splat175 = shufflevector <4 x float> %broadcast.splatinsert174, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dg = load float, ptr %i.ad, align 4, !tbaa !31, !alias.scope !110
  %.scalar = fneg fast float %i.dg
  %i.dh = insertelement <4 x float> poison, float %.scalar, i64 0
  %i.di = shufflevector <4 x float> %i.dh, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.dj, align 4, !tbaa !42, !alias.scope !112, !noalias !113
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %index
  %wide.load173 = load <4 x float>, ptr %i.dk, align 4, !tbaa !42, !alias.scope !114
  %i.dl = fmul fast <4 x float> %wide.load173, %broadcast.splat175
  %i.dm = fadd fast <4 x float> %i.dl, %broadcast.splat177
  %i.dn = call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.dm, <4 x float> %i.di)
  %i.do = fmul fast <4 x float> %i.dn, %wide.load
  store <4 x float> %i.do, ptr %i.dj, align 4, !tbaa !42, !alias.scope !112, !noalias !113
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dp = icmp eq i64 %index.next, %n.vec
  br i1 %i.dp, label %middle.block, label %vector.body, !llvm.loop !103

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.noexc.us, %middle.block
end_hunk_0
