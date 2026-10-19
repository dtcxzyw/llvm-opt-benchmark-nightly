Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/lrn?download=true
inline.NumInlined: 35
inline.NumDeleted: 29
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK4ncnn3LRN15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %indvars.iv64 = phi i64 [ %i.x, %.noexc25.preheader ], [ %indvars.iv.next65, %._crit_edge ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 6 uses
  %.reass62 = mul i64 %factor.op.mul61, %indvars.iv64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass62 ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.ao
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.noexc25, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.noexc25 ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %wide.load = load <4 x float>, ptr %i.ar, align 4, !tbaa !42, !alias.scope !83 ; 2 uses
  %wide.load75 = load <4 x float>, ptr %i.as, align 4, !tbaa !42, !alias.scope !83 ; 2 uses
  %i.at = fmul fast <4 x float> %wide.load, %wide.load
  %i.au = fmul fast <4 x float> %wide.load75, %wide.load75
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store <4 x float> %i.at, ptr %i.av, align 4, !tbaa !42, !alias.scope !84, !noalias !83
  store <4 x float> %i.au, ptr %i.aw, align 4, !tbaa !42, !alias.scope !84, !noalias !83
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !78

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.noexc25, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.noexc25 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.prol
  %i.az = load float, ptr %i.ay, align 4, !tbaa !42 ; 2 uses
  %i.ba = fmul fast float %i.az, %i.az
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.prol
  store float %i.ba, ptr %i.bb, align 4, !tbaa !42
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !79

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bc = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bd = icmp ugt i64 %i.bc, -4
  br i1 %i.bd, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next65 = add nsw i64 %indvars.iv64, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next65 to i32
  %exitcond67.not = icmp eq i32 %i.y, %lftr.wideiv
  br i1 %exitcond67.not, label %._crit_edge60.split, label %.noexc25

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv
  %i.bf = load float, ptr %i.be, align 4, !tbaa !42 ; 2 uses
  %i.bg = fmul fast float %i.bf, %i.bf
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv
  store float %i.bg, ptr %i.bh, align 4, !tbaa !42
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !42 ; 2 uses
  %i.bk = fmul fast float %i.bj, %i.bj
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next
  store float %i.bk, ptr %i.bl, align 4, !tbaa !42
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next.1
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !42 ; 2 uses
  %i.bo = fmul fast float %i.bn, %i.bn
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next.1
  store float %i.bo, ptr %i.bp, align 4, !tbaa !42
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next.2
  %i.br = load float, ptr %i.bq, align 4, !tbaa !42 ; 2 uses
  %i.bs = fmul fast float %i.br, %i.br
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next.2
  store float %i.bs, ptr %i.bt, align 4, !tbaa !42
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
  %i.n = load i64, ptr %i.m, align 8, !tbaa !38, !noalias !105 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !37, !noalias !105 ; 3 uses
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
  %i.ag = sext i32 %i.k to i64                    ; 4 uses
  %i.ah = add i32 %i.k, %i.s
  %wide.trip.count125 = zext nneg i32 %i.aa to i64 ; 11 uses
  %wide.trip.count133 = zext nneg i32 %i.aa to i64
  %i.ai = mul i64 %i.z, %i.x                      ; 2 uses
  %i.aj = mul i64 %i.ai, %i.ag
  %scevgep = getelementptr i8, ptr %i.v, i64 %i.aj ; 3 uses
  %i.ak = sub i32 %i.j, %i.k
  %i.al = zext i32 %i.ak to i64
  %i.am = add nsw i64 %i.ag, %i.al                ; 2 uses
  %i.an = mul i64 %i.ai, %i.am
  %i.ao = shl nuw nsw i64 %wide.trip.count125, 2  ; 2 uses
  %i.ap = getelementptr i8, ptr %i.v, i64 %i.an
  %scevgep147 = getelementptr i8, ptr %i.ap, i64 %i.ao ; 3 uses
  %i.aq = mul i64 %i.z, %i.x                      ; 2 uses
  %scevgep148 = getelementptr i8, ptr %4, i64 228
  %scevgep149 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.ar = mul i64 %i.p, %i.n                      ; 3 uses
  %i.as = mul i64 %i.ar, %i.ag                    ; 2 uses
  %scevgep150 = getelementptr i8, ptr %i.l, i64 %i.as
  %i.at = mul i64 %i.ar, %i.am
  %i.au = getelementptr i8, ptr %i.l, i64 %i.at
  %scevgep151 = getelementptr i8, ptr %i.au, i64 %i.ao
  %i.av = shl nuw nsw i64 %wide.trip.count125, 2  ; 2 uses
  %i.aw = mul i64 %i.p, %i.n
  %i.ax = getelementptr i8, ptr %i.l, i64 %i.as
  %i.ay = getelementptr i8, ptr %i.ax, i64 %i.av
  %min.iters.check175 = icmp ult i32 %i.aa, 8
  %n.vec177 = and i64 %wide.trip.count125, 2147483640 ; 3 uses
  %cmp.n186 = icmp eq i64 %n.vec177, %wide.trip.count125
  %xtraiter = and i64 %wide.trip.count125, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check = icmp ult i32 %i.aa, 4
  %bound0 = icmp ult ptr %scevgep, %scevgep148
  %bound1 = icmp ult ptr %i.ad, %scevgep147
  %found.conflict = and i1 %bound0, %bound1
  %bound0152 = icmp ult ptr %scevgep, %scevgep149
  %bound1153 = icmp ult ptr %8, %scevgep147
  %found.conflict154 = and i1 %bound0152, %bound1153
  %stride.check155 = icmp slt i64 %i.aq, 0
  %9 = or i1 %found.conflict154, %stride.check155
  %conflict.rdx = or i1 %found.conflict, %9
  %bound0156 = icmp ult ptr %scevgep, %scevgep151
  %bound1157 = icmp ult ptr %scevgep150, %scevgep147
  %found.conflict158 = and i1 %bound0156, %bound1157
  %10 = or i64 %i.ar, %i.aq
  %i.az = icmp slt i64 %10, 0
  %i.ba = or i1 %found.conflict158, %i.az
  %conflict.rdx161 = or i1 %conflict.rdx, %i.ba
  %n.vec = and i64 %wide.trip.count125, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count125
  %xtraiter189 = and i64 %wide.trip.count125, 1
  %lcmp.mod190.not = icmp eq i64 %xtraiter189, 0
  %i.bb = add nsw i64 %wide.trip.count125, -1
  br label %.noexc47.us

.noexc47.us:                                      ; preds = %.noexc47.us.preheader, %._crit_edge.us
  %indvar = phi i64 [ 0, %.noexc47.us.preheader ], [ %indvar.next, %._crit_edge.us ] ; 2 uses
  %indvars.iv135 = phi i64 [ %i.ag, %.noexc47.us.preheader ], [ %indvars.iv.next136, %._crit_edge.us ] ; 5 uses
  %indvars.iv127.in = phi i32 [ %i.ah, %.noexc47.us.preheader ], [ %indvars.iv127, %._crit_edge.us ] ; 2 uses
  %i.bc = mul i64 %i.aw, %indvar
  %scevgep168.a = getelementptr i8, ptr %i.ay, i64 %i.bc
  %indvars.iv127 = add i32 %indvars.iv127.in, 1
  %.reass.us = mul i64 %factor.op.mul, %indvars.iv135
  %i.bd = getelementptr i8, ptr %i.l, i64 %.reass.us ; 11 uses
  %i.be = trunc nsw i64 %indvars.iv135 to i32
  %i.bf = add i32 %.neg, %i.be                    ; 2 uses
  %i.bg = add nsw i64 %indvars.iv135, %i.ae
  %i.bh = sext i32 %i.bf to i64
  %.not43103.us = icmp slt i64 %i.bg, %i.bh
  br i1 %.not43103.us, label %.noexc.us, label %.lr.ph105.us

.lr.ph105.us:                                     ; preds = %.noexc47.us, %.loopexit.us
  %.041104.us = phi i32 [ %i.cz, %.loopexit.us ], [ %i.bf, %.noexc47.us ] ; 5 uses
  %i.bi = icmp slt i32 %.041104.us, 0
  br i1 %i.bi, label %.loopexit.us, label %bb.c

bb.c:                                             ; preds = %.lr.ph105.us
  %i.bj = load i32, ptr %2, align 4, !tbaa !36
  %.not44.us = icmp slt i32 %.041104.us, %i.bj
  br i1 %.not44.us, label %.lr.ph.us.preheader, label %.loopexit.us

.lr.ph.us.preheader:                              ; preds = %bb.c
  %i.bk = load ptr, ptr %5, align 8, !tbaa !39, !noalias !107 ; 2 uses
  %i.bl = load i64, ptr %i.t, align 8, !tbaa !38, !noalias !107
  %i.bm = zext nneg i32 %.041104.us to i64
  %i.bn = mul i64 %i.bl, %i.bm
  %i.bo = load i64, ptr %i.u, align 8, !tbaa !37, !noalias !107
  %i.bp = mul i64 %i.bn, %i.bo                    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bp ; 7 uses
  br i1 %min.iters.check175, label %.lr.ph.us.preheader188, label %vector.memcheck167

vector.memcheck167:                               ; preds = %.lr.ph.us.preheader
  %scevgep169 = getelementptr i8, ptr %i.bk, i64 %i.av
  %scevgep170 = getelementptr i8, ptr %scevgep169, i64 %i.bp
  %bound0171 = icmp ult ptr %i.bd, %scevgep170
  %bound1172 = icmp ult ptr %i.bq, %scevgep168.a
  %found.conflict173 = and i1 %bound0171, %bound1172
  br i1 %found.conflict173, label %.lr.ph.us.preheader188, label %vector.body178

vector.body178:                                   ; preds = %vector.memcheck167, %vector.body178
  %index179 = phi i64 [ %index.next184, %vector.body178 ], [ 0, %vector.memcheck167 ] ; 3 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %index179 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %wide.load180.a = load <4 x float>, ptr %i.br, align 4, !tbaa !42, !alias.scope !108
  %wide.load181.a = load <4 x float>, ptr %i.bs, align 4, !tbaa !42, !alias.scope !108
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %index179 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %wide.load182 = load <4 x float>, ptr %i.bt, align 4, !tbaa !42, !alias.scope !109, !noalias !108
  %wide.load183 = load <4 x float>, ptr %i.bu, align 4, !tbaa !42, !alias.scope !109, !noalias !108
  %i.bv = fadd fast <4 x float> %wide.load182, %wide.load180.a
  %i.bw = fadd fast <4 x float> %wide.load183, %wide.load181.a
  store <4 x float> %i.bv, ptr %i.bt, align 4, !tbaa !42, !alias.scope !109, !noalias !108
  store <4 x float> %i.bw, ptr %i.bu, align 4, !tbaa !42, !alias.scope !109, !noalias !108
  %index.next184 = add nuw i64 %index179, 8       ; 2 uses
  %i.bx = icmp eq i64 %index.next184, %n.vec177
  br i1 %i.bx, label %middle.block185, label %vector.body178, !llvm.loop !94

middle.block185:                                  ; preds = %vector.body178
  br i1 %cmp.n186, label %.loopexit.us, label %.lr.ph.us.preheader188

.lr.ph.us.preheader188:                           ; preds = %vector.memcheck167, %.lr.ph.us.preheader, %middle.block185
  %indvars.iv122.ph = phi i64 [ 0, %vector.memcheck167 ], [ 0, %.lr.ph.us.preheader ], [ %n.vec177, %middle.block185 ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader188, %.lr.ph.us.prol
  %indvars.iv122.prol = phi i64 [ %indvars.iv.next123.prol, %.lr.ph.us.prol ], [ %indvars.iv122.ph, %.lr.ph.us.preheader188 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.us.prol ], [ 0, %.lr.ph.us.preheader188 ]
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv122.prol
  %i.bz = load float, ptr %i.by, align 4, !tbaa !42
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv122.prol ; 2 uses
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !42
  %i.cc = fadd fast float %i.cb, %i.bz
  store float %i.cc, ptr %i.ca, align 4, !tbaa !42
  %indvars.iv.next123.prol = add nuw nsw i64 %indvars.iv122.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol, !llvm.loop !95

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader188
  %indvars.iv122.unr = phi i64 [ %indvars.iv122.ph, %.lr.ph.us.preheader188 ], [ %indvars.iv.next123.prol, %.lr.ph.us.prol ]
  %i.cd = sub nsw i64 %indvars.iv122.ph, %wide.trip.count125
  %i.ce = icmp ugt i64 %i.cd, -4
  br i1 %i.ce, label %.loopexit.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %indvars.iv122 = phi i64 [ %indvars.iv.next123.3, %.lr.ph.us ], [ %indvars.iv122.unr, %.lr.ph.us.prol.loopexit ] ; 6 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv122
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !42
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv122 ; 2 uses
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !42
  %i.cj = fadd fast float %i.ci, %i.cg
  store float %i.cj, ptr %i.ch, align 4, !tbaa !42
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.next123
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !42
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.next123 ; 2 uses
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !42
  %i.co = fadd fast float %i.cn, %i.cl
  store float %i.co, ptr %i.cm, align 4, !tbaa !42
  %indvars.iv.next123.1 = add nuw nsw i64 %indvars.iv122, 2 ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.next123.1
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !42
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.next123.1 ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !42
  %i.ct = fadd fast float %i.cs, %i.cq
  store float %i.ct, ptr %i.cr, align 4, !tbaa !42
  %indvars.iv.next123.2 = add nuw nsw i64 %indvars.iv122, 3 ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.next123.2
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !42
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.next123.2 ; 2 uses
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !42
  %i.cy = fadd fast float %i.cx, %i.cv
  store float %i.cy, ptr %i.cw, align 4, !tbaa !42
  %indvars.iv.next123.3 = add nuw nsw i64 %indvars.iv122, 4 ; 2 uses
  %exitcond126.not.3 = icmp eq i64 %indvars.iv.next123.3, %wide.trip.count125
  br i1 %exitcond126.not.3, label %.loopexit.us, label %.lr.ph.us, !llvm.loop !96

.loopexit.us:                                     ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us, %middle.block185, %bb.c, %.lr.ph105.us
  %i.cz = add i32 %.041104.us, 1
  %exitcond129.not = icmp eq i32 %.041104.us, %indvars.iv127.in
  br i1 %exitcond129.not, label %.noexc.us, label %.lr.ph105.us, !llvm.loop !97

.noexc.us:                                        ; preds = %.loopexit.us, %.noexc47.us
  %.reass112.us = mul i64 %factor.op.mul111, %indvars.iv135
  %i.da = getelementptr inbounds nuw i8, ptr %i.v, i64 %.reass112.us ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx161
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.noexc.us
  %i.db = load float, ptr %i.ac, align 8, !tbaa !32, !alias.scope !110
  %broadcast.splatinsert165 = insertelement <4 x float> poison, float %i.db, i64 0
  %broadcast.splat166 = shufflevector <4 x float> %broadcast.splatinsert165, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dc = load float, ptr %8, align 4, !tbaa !42, !alias.scope !111
  %broadcast.splatinsert163 = insertelement <4 x float> poison, float %i.dc, i64 0
  %broadcast.splat164 = shufflevector <4 x float> %broadcast.splatinsert163, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dd = load float, ptr %i.ad, align 4, !tbaa !31, !alias.scope !110
  %.scalar = fneg fast float %i.dd
  %i.de = insertelement <4 x float> poison, float %.scalar, i64 0
  %i.df = shufflevector <4 x float> %i.de, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.dg, align 4, !tbaa !42, !alias.scope !112, !noalias !113
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %index
  %wide.load162 = load <4 x float>, ptr %i.dh, align 4, !tbaa !42, !alias.scope !114
  %i.di = fmul fast <4 x float> %wide.load162, %broadcast.splat164
  %i.dj = fadd fast <4 x float> %i.di, %broadcast.splat166
  %i.dk = call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.dj, <4 x float> %i.df)
  %i.dl = fmul fast <4 x float> %i.dk, %wide.load
  store <4 x float> %i.dl, ptr %i.dg, align 4, !tbaa !42, !alias.scope !112, !noalias !113
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !103

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.noexc.us, %middle.block
  %indvars.iv130.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.noexc.us ] ; 5 uses
  br i1 %lcmp.mod190.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv130.ph ; 2 uses
  %i.do = load float, ptr %i.dn, align 4, !tbaa !42
  %i.dp = load float, ptr %i.ac, align 8, !tbaa !32
  %i.dq = load float, ptr %8, align 4, !tbaa !42
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv130.ph
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !42
  %i.dt = fmul fast float %i.ds, %i.dq
  %i.du = fadd fast float %i.dt, %i.dp
  %i.dv = load float, ptr %i.ad, align 4, !tbaa !31
  %i.dw = fneg fast float %i.dv
  %i.dx = call fast float @llvm.pow.f32(float %i.du, float %i.dw)
  %i.dy = fmul fast float %i.dx, %i.do
  store float %i.dy, ptr %i.dn, align 4, !tbaa !42
  %indvars.iv.next131.prol = or disjoint i64 %indvars.iv130.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv130.unr = phi i64 [ %indvars.iv130.ph, %scalar.ph.preheader ], [ %indvars.iv.next131.prol, %scalar.ph.prol ]
  %i.dz = icmp eq i64 %indvars.iv130.ph, %i.bb
  br i1 %i.dz, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
end_hunk_0
