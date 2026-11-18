Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/lrn_x86?download=true
inline.NumInlined: 35
inline.NumDeleted: 29
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK4ncnn7LRN_x8615forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %i.aq = mul i64 %i.am, %i.x
  %scevgep77 = getelementptr i8, ptr %i.q, i64 %i.aq
  %i.ar = zext nneg i32 %i.v to i64               ; 2 uses
  %min.iters.check = icmp ult i32 %i.v, 8
  %bound0 = icmp ult ptr %scevgep77, %scevgep
  %bound1 = icmp ult ptr %scevgep75, %scevgep76
  %found.conflict = and i1 %bound0, %bound1
  %i.as = or i64 %i.z, %i.aa
  %i.at = icmp slt i64 %i.as, 0
  %i.au = or i1 %found.conflict, %i.at
  %n.vec = and i64 %i.ar, 2147483640              ; 4 uses
  %i.av = trunc nuw nsw i64 %n.vec to i32
  %i.aw = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ar
  br label %.noexc26

.noexc26:                                         ; preds = %.noexc26.preheader, %._crit_edge
  %indvars.iv = phi i64 [ %i.x, %.noexc26.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.ax = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 3 uses
  %.reass65 = mul i64 %factor.op.mul64, %indvars.iv
  %i.ay = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass65 ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.au
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.noexc26
  %i.az = getelementptr i8, ptr %i.ay, i64 %i.aw
  %i.ba = getelementptr i8, ptr %i.ax, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ay, i64 %i.bb ; 2 uses
  %next.gep79 = getelementptr i8, ptr %i.ax, i64 %i.bb ; 2 uses
  %i.bc = getelementptr i8, ptr %next.gep79, i64 16
  %wide.load = load <4 x float>, ptr %next.gep79, align 4, !tbaa !35, !alias.scope !80 ; 2 uses
  %wide.load80 = load <4 x float>, ptr %i.bc, align 4, !tbaa !35, !alias.scope !80 ; 2 uses
  %i.bd = fmul fast <4 x float> %wide.load, %wide.load
  %i.be = fmul fast <4 x float> %wide.load80, %wide.load80
  %i.bf = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> %i.bd, ptr %next.gep, align 4, !tbaa !35, !alias.scope !81, !noalias !80
  store <4 x float> %i.be, ptr %i.bf, align 4, !tbaa !35, !alias.scope !81, !noalias !80
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.noexc26, %middle.block
  %.060.ph = phi i32 [ %i.av, %middle.block ], [ 0, %.noexc26 ] ; 4 uses
  %.02359.ph = phi ptr [ %i.az, %middle.block ], [ %i.ay, %.noexc26 ] ; 2 uses
  %.02458.ph = phi ptr [ %i.ba, %middle.block ], [ %i.ax, %.noexc26 ] ; 2 uses
  %i.bh = sub i32 %i.v, %.060.ph
  %xtraiter = and i32 %i.bh, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.060.prol = phi i32 [ %i.bm, %scalar.ph.prol ], [ %.060.ph, %scalar.ph.preheader ]
  %.02359.prol = phi ptr [ %i.bl, %scalar.ph.prol ], [ %.02359.ph, %scalar.ph.preheader ] ; 2 uses
  %.02458.prol = phi ptr [ %i.bk, %scalar.ph.prol ], [ %.02458.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bi = load float, ptr %.02458.prol, align 4, !tbaa !35 ; 2 uses
  %i.bj = fmul fast float %i.bi, %i.bi
  store float %i.bj, ptr %.02359.prol, align 4, !tbaa !35
  %i.bk = getelementptr inbounds nuw i8, ptr %.02458.prol, i64 4 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.02359.prol, i64 4 ; 2 uses
  %i.bm = add nuw nsw i32 %.060.prol, 1           ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !76

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.060.unr = phi i32 [ %.060.ph, %scalar.ph.preheader ], [ %i.bm, %scalar.ph.prol ]
  %.02359.unr = phi ptr [ %.02359.ph, %scalar.ph.preheader ], [ %i.bl, %scalar.ph.prol ]
  %.02458.unr = phi ptr [ %.02458.ph, %scalar.ph.preheader ], [ %i.bk, %scalar.ph.prol ]
  %i.bn = sub i32 %.060.ph, %i.v
  %i.bo = icmp ugt i32 %i.bn, -4
  br i1 %i.bo, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.060 = phi i32 [ %i.cf, %scalar.ph ], [ %.060.unr, %scalar.ph.prol.loopexit ]
  %.02359 = phi ptr [ %i.ce, %scalar.ph ], [ %.02359.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.02458 = phi ptr [ %i.cd, %scalar.ph ], [ %.02458.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bp = load float, ptr %.02458, align 4, !tbaa !35 ; 2 uses
  %i.bq = fmul fast float %i.bp, %i.bp
  store float %i.bq, ptr %.02359, align 4, !tbaa !35
  %i.br = getelementptr inbounds nuw i8, ptr %.02458, i64 4
  %i.bs = getelementptr inbounds nuw i8, ptr %.02359, i64 4
  %i.bt = load float, ptr %i.br, align 4, !tbaa !35 ; 2 uses
  %i.bu = fmul fast float %i.bt, %i.bt
  store float %i.bu, ptr %i.bs, align 4, !tbaa !35
  %i.bv = getelementptr inbounds nuw i8, ptr %.02458, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %.02359, i64 8
  %i.bx = load float, ptr %i.bv, align 4, !tbaa !35 ; 2 uses
  %i.by = fmul fast float %i.bx, %i.bx
  store float %i.by, ptr %i.bw, align 4, !tbaa !35
  %i.bz = getelementptr inbounds nuw i8, ptr %.02458, i64 12
  %i.ca = getelementptr inbounds nuw i8, ptr %.02359, i64 12
  %i.cb = load float, ptr %i.bz, align 4, !tbaa !35 ; 2 uses
  %i.cc = fmul fast float %i.cb, %i.cb
  store float %i.cc, ptr %i.ca, align 4, !tbaa !35
  %i.cd = getelementptr inbounds nuw i8, ptr %.02458, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %.02359, i64 16
  %i.cf = add nuw nsw i32 %.060, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.cf, %i.v
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !77

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond67.not = icmp eq i32 %i.y, %lftr.wideiv
  br i1 %exitcond67.not, label %._crit_edge63.split, label %.noexc26

._crit_edge63.split:                              ; preds = %._crit_edge, %.noexc26.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge63.split, %bb.a
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
declare !callback !43 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #6

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn7LRN_x8615forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !15     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !15
  %i.h = load i32, ptr %0, align 4, !tbaa !15     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !15
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !15
  %i.k = load i32, ptr %i.a, align 4, !tbaa !15   ; 4 uses
  %.not141 = icmp sgt i32 %i.k, %i.j
  br i1 %.not141, label %._crit_edge145, label %.lr.ph144

.lr.ph144:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 212
  %i.m = load i32, ptr %i.l, align 4, !tbaa !36   ; 2 uses
  %.neg = sdiv i32 %i.m, -2
  %i.n = sdiv i32 %i.m, 2                         ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.s = load ptr, ptr %7, align 8, !tbaa !19, !noalias !104 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.u = load i64, ptr %i.t, align 8, !tbaa !17, !noalias !104 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !16, !noalias !104 ; 3 uses
  %factor.op.mul = mul i64 %i.u, %i.w
  %i.x = load ptr, ptr %5, align 8, !tbaa !19, !noalias !105 ; 3 uses
  %i.y = load i64, ptr %i.q, align 8, !tbaa !17, !noalias !105 ; 3 uses
  %i.z = load i64, ptr %i.r, align 8, !tbaa !16, !noalias !105 ; 3 uses
  %factor.op.mul146 = mul i64 %i.y, %i.z
  %i.aa = load i32, ptr %6, align 4, !tbaa !15    ; 13 uses
  %i.ab = icmp slt i32 %i.aa, 1                   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 224 ; 4 uses
  %i.ad = getelementptr i8, ptr %3, i64 220       ; 5 uses
  %i.ae = add i32 %i.k, %i.n
  %i.af = sext i32 %i.k to i64                    ; 4 uses
  %i.ag = sext i32 %i.n to i64
  %i.ah = add nsw i32 %i.j, 1
  %9 = mul i64 %i.z, %i.y                         ; 2 uses
  %i.ai = mul i64 %i.w, %i.u
  %i.aj = sub i32 %i.j, %i.k
  %i.ak = zext i32 %i.aj to i64
  %i.al = add nsw i64 %i.af, %i.ak                ; 2 uses
  %i.am = mul i64 %9, %i.al
  %i.an = add i32 %i.aa, -1
  %i.ao = zext i32 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 2                ; 2 uses
  %i.aq = getelementptr i8, ptr %i.x, i64 %i.am
  %i.ar = getelementptr i8, ptr %i.aq, i64 %i.ap
  %scevgep = getelementptr i8, ptr %i.ar, i64 4
  %i.as = mul i64 %i.z, %i.y
  %i.at = mul i64 %i.as, %i.af
  %scevgep171 = getelementptr i8, ptr %i.x, i64 %i.at
  %scevgep172 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %scevgep173 = getelementptr i8, ptr %3, i64 228
  %10 = mul i64 %i.w, %i.u                        ; 2 uses
  %i.au = mul i64 %10, %i.al
  %i.av = getelementptr i8, ptr %i.s, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 %i.ap
  %scevgep174 = getelementptr i8, ptr %i.aw, i64 4 ; 3 uses
  %i.ax = mul i64 %10, %i.af
  %scevgep175 = getelementptr i8, ptr %i.s, i64 %i.ax ; 3 uses
  %i.ay = add i32 %i.aa, -1
  %i.az = zext i32 %i.ay to i64
  %i.ba = shl nuw nsw i64 %i.az, 2
  %i.bb = add nuw nsw i64 %i.ba, 4                ; 2 uses
  %i.bc = zext nneg i32 %i.aa to i64              ; 2 uses
  %min.iters.check201 = icmp ult i32 %i.aa, 8
  %n.vec207 = and i64 %i.bc, 2147483640           ; 4 uses
  %i.bd = trunc nuw nsw i64 %n.vec207 to i32
  %i.be = shl nuw nsw i64 %n.vec207, 2            ; 2 uses
  %cmp.n218 = icmp eq i64 %n.vec207, %i.bc
  %i.bf = zext nneg i32 %i.aa to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.aa, 4
  %bound0 = icmp ult ptr %scevgep175, %scevgep173
  %bound1 = icmp ult ptr %i.ad, %scevgep174
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %i.ai, 0
  %i.bg = or i1 %found.conflict, %stride.check
  %bound0176 = icmp ult ptr %scevgep175, %scevgep172
  %bound1177 = icmp ult ptr %8, %scevgep174
  %found.conflict178 = and i1 %bound0176, %bound1177
  %conflict.rdx = or i1 %i.bg, %found.conflict178
  %bound0179 = icmp ult ptr %scevgep175, %scevgep
  %bound1180 = icmp ult ptr %scevgep171, %scevgep174
  %found.conflict181 = and i1 %bound0179, %bound1180
  %stride.check182 = icmp slt i64 %9, 0
  %i.bh = or i1 %found.conflict181, %stride.check182
  %conflict.rdx183 = or i1 %conflict.rdx, %i.bh
  %n.vec = and i64 %i.bf, 2147483644              ; 4 uses
  %i.bi = trunc nuw nsw i64 %n.vec to i32
  %i.bj = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.bf
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph144, %._crit_edge
  %indvars.iv150 = phi i64 [ %i.af, %.lr.ph144 ], [ %indvars.iv.next151, %._crit_edge ] ; 6 uses
  %indvars.iv.in = phi i32 [ %i.ae, %.lr.ph144 ], [ %indvars.iv, %._crit_edge ] ; 2 uses
  %indvars.iv = add i32 %indvars.iv.in, 1
  %i.bk = trunc nsw i64 %indvars.iv150 to i32
  %i.bl = add i32 %.neg, %i.bk                    ; 2 uses
  %i.bm = add nsw i64 %indvars.iv150, %i.ag
  %i.bn = sext i32 %i.bl to i64
  %.not47134 = icmp slt i64 %i.bm, %i.bn
  br i1 %.not47134, label %.noexc49, label %.lr.ph136

.noexc49:                                         ; preds = %.loopexit, %bb.c
  br i1 %i.ab, label %._crit_edge, label %.lr.ph140.preheader

.lr.ph140.preheader:                              ; preds = %.noexc49
  %.reass147 = mul i64 %factor.op.mul146, %indvars.iv150
  %i.bo = getelementptr inbounds nuw i8, ptr %i.x, i64 %.reass147 ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv150
  %i.bp = getelementptr inbounds nuw i8, ptr %i.s, i64 %.reass ; 3 uses
  %brmerge230 = select i1 %min.iters.check, i1 true, i1 %conflict.rdx183
  br i1 %brmerge230, label %.lr.ph140.preheader223, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph140.preheader
  %i.bq = getelementptr i8, ptr %i.bo, i64 %i.bj
  %i.br = getelementptr i8, ptr %i.bp, i64 %i.bj
  %i.bs = load float, ptr %i.ac, align 8, !tbaa !44, !alias.scope !106
  %broadcast.splatinsert188 = insertelement <4 x float> poison, float %i.bs, i64 0
  %broadcast.splat189 = shufflevector <4 x float> %broadcast.splatinsert188, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bt = load float, ptr %8, align 4, !tbaa !35, !alias.scope !107
  %broadcast.splatinsert186 = insertelement <4 x float> poison, float %i.bt, i64 0
  %broadcast.splat187 = shufflevector <4 x float> %broadcast.splatinsert186, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bu = load float, ptr %i.ad, align 4, !tbaa !45, !alias.scope !106
  %.scalar = fneg fast float %i.bu
  %i.bv = insertelement <4 x float> poison, float %.scalar, i64 0
  %i.bw = shufflevector <4 x float> %i.bv, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bo, i64 %i.bx
  %next.gep184 = getelementptr i8, ptr %i.bp, i64 %i.bx ; 2 uses
  %wide.load = load <4 x float>, ptr %next.gep184, align 4, !tbaa !35, !alias.scope !108, !noalias !109
  %wide.load185 = load <4 x float>, ptr %next.gep, align 4, !tbaa !35, !alias.scope !110
  %i.by = fmul fast <4 x float> %wide.load185, %broadcast.splat187
  %i.bz = fadd fast <4 x float> %i.by, %broadcast.splat189
  %i.ca = call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.bz, <4 x float> %i.bw)
  %i.cb = fmul fast <4 x float> %i.ca, %wide.load
  store <4 x float> %i.cb, ptr %next.gep184, align 4, !tbaa !35, !alias.scope !108, !noalias !109
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !91

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph140.preheader223

.lr.ph140.preheader223:                           ; preds = %.lr.ph140.preheader, %middle.block
  %.0139.ph = phi i32 [ %i.bi, %middle.block ], [ 0, %.lr.ph140.preheader ] ; 4 uses
  %.040138.ph = phi ptr [ %i.bq, %middle.block ], [ %i.bo, %.lr.ph140.preheader ] ; 3 uses
  %.041137.ph = phi ptr [ %i.br, %middle.block ], [ %i.bp, %.lr.ph140.preheader ] ; 4 uses
  %i.cd = sub i32 %i.aa, %.0139.ph
  %.neg227 = add i32 %.0139.ph, 1
  %xtraiter224 = and i32 %i.cd, 1
  %lcmp.mod225.not = icmp eq i32 %xtraiter224, 0
  br i1 %lcmp.mod225.not, label %.lr.ph140.prol.loopexit, label %.lr.ph140.prol

.lr.ph140.prol:                                   ; preds = %.lr.ph140.preheader223
  %i.ce = load float, ptr %.041137.ph, align 4, !tbaa !35
  %i.cf = load float, ptr %i.ac, align 8, !tbaa !44
  %i.cg = load float, ptr %8, align 4, !tbaa !35
  %i.ch = load float, ptr %.040138.ph, align 4, !tbaa !35
  %i.ci = fmul fast float %i.ch, %i.cg
  %i.cj = fadd fast float %i.ci, %i.cf
  %i.ck = load float, ptr %i.ad, align 4, !tbaa !45
  %i.cl = fneg fast float %i.ck
  %i.cm = call fast float @llvm.pow.f32(float %i.cj, float %i.cl)
  %i.cn = fmul fast float %i.cm, %i.ce
  store float %i.cn, ptr %.041137.ph, align 4, !tbaa !35
  %i.co = getelementptr inbounds nuw i8, ptr %.040138.ph, i64 4
  %i.cp = getelementptr inbounds nuw i8, ptr %.041137.ph, i64 4
  %i.cq = add nuw nsw i32 %.0139.ph, 1
  br label %.lr.ph140.prol.loopexit

.lr.ph140.prol.loopexit:                          ; preds = %.lr.ph140.prol, %.lr.ph140.preheader223
  %.0139.unr = phi i32 [ %.0139.ph, %.lr.ph140.preheader223 ], [ %i.cq, %.lr.ph140.prol ]
  %.040138.unr = phi ptr [ %.040138.ph, %.lr.ph140.preheader223 ], [ %i.co, %.lr.ph140.prol ]
  %.041137.unr = phi ptr [ %.041137.ph, %.lr.ph140.preheader223 ], [ %i.cp, %.lr.ph140.prol ]
  %i.cr = icmp eq i32 %i.aa, %.neg227
  br i1 %i.cr, label %._crit_edge, label %.lr.ph140

.lr.ph136:                                        ; preds = %bb.c, %.loopexit
  %.045135 = phi i32 [ %i.ex, %.loopexit ], [ %i.bl, %bb.c ] ; 5 uses
  %i.cs = icmp slt i32 %.045135, 0
  br i1 %i.cs, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph136
  %i.ct = load i32, ptr %2, align 4, !tbaa !15
  %.not48 = icmp sge i32 %.045135, %i.ct
  %brmerge = select i1 %.not48, i1 true, i1 %i.ab
  br i1 %brmerge, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.cu = load ptr, ptr %5, align 8, !tbaa !19, !noalias !111 ; 2 uses
  %i.cv = load i64, ptr %i.q, align 8, !tbaa !17, !noalias !111
  %i.cw = mul i64 %i.cv, %indvars.iv150
  %i.cx = load i64, ptr %i.r, align 8, !tbaa !16, !noalias !111
  %i.cy = mul i64 %i.cw, %i.cx                    ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cu, i64 %i.cy  ; 5 uses
  %i.da = load ptr, ptr %4, align 8, !tbaa !19, !noalias !112 ; 2 uses
  %i.db = load i64, ptr %i.o, align 8, !tbaa !17, !noalias !112
  %i.dc = zext nneg i32 %.045135 to i64
  %i.dd = mul i64 %i.db, %i.dc
  %i.de = load i64, ptr %i.p, align 8, !tbaa !16, !noalias !112
  %i.df = mul i64 %i.dd, %i.de                    ; 2 uses
  %i.dg = getelementptr i8, ptr %i.da, i64 %i.df  ; 5 uses
  br i1 %min.iters.check201, label %.lr.ph.preheader222, label %vector.memcheck202

vector.memcheck202:                               ; preds = %.lr.ph.preheader
  %i.dh = getelementptr i8, ptr %i.cu, i64 %i.bb
  %i.di = getelementptr i8, ptr %i.dh, i64 %i.cy
  %i.dj = getelementptr i8, ptr %i.da, i64 %i.bb
  %i.dk = getelementptr i8, ptr %i.dj, i64 %i.df
  %bound0203 = icmp ult ptr %i.cz, %i.dk
  %bound1204 = icmp ult ptr %i.dg, %i.di
  %found.conflict205 = and i1 %bound0203, %bound1204
  br i1 %found.conflict205, label %.lr.ph.preheader222, label %vector.ph206

vector.ph206:                                     ; preds = %vector.memcheck202
  %i.dl = getelementptr i8, ptr %i.cz, i64 %i.be
  %i.dm = getelementptr i8, ptr %i.dg, i64 %i.be
  br label %vector.body208

vector.body208:                                   ; preds = %vector.body208, %vector.ph206
  %index209 = phi i64 [ 0, %vector.ph206 ], [ %index.next216, %vector.body208 ] ; 2 uses
  %i.dn = shl i64 %index209, 2                    ; 2 uses
  %next.gep210 = getelementptr i8, ptr %i.cz, i64 %i.dn ; 3 uses
  %next.gep211 = getelementptr i8, ptr %i.dg, i64 %i.dn ; 2 uses
  %i.do = getelementptr i8, ptr %next.gep211, i64 16
  %wide.load212 = load <4 x float>, ptr %next.gep211, align 4, !tbaa !35, !alias.scope !113
  %wide.load213 = load <4 x float>, ptr %i.do, align 4, !tbaa !35, !alias.scope !113
  %i.dp = getelementptr i8, ptr %next.gep210, i64 16 ; 2 uses
  %wide.load214 = load <4 x float>, ptr %next.gep210, align 4, !tbaa !35, !alias.scope !114, !noalias !113
  %wide.load215 = load <4 x float>, ptr %i.dp, align 4, !tbaa !35, !alias.scope !114, !noalias !113
  %i.dq = fadd fast <4 x float> %wide.load214, %wide.load212
  %i.dr = fadd fast <4 x float> %wide.load215, %wide.load213
  store <4 x float> %i.dq, ptr %next.gep210, align 4, !tbaa !35, !alias.scope !114, !noalias !113
  store <4 x float> %i.dr, ptr %i.dp, align 4, !tbaa !35, !alias.scope !114, !noalias !113
  %index.next216 = add nuw i64 %index209, 8       ; 2 uses
  %i.ds = icmp eq i64 %index.next216, %n.vec207
  br i1 %i.ds, label %middle.block217, label %vector.body208, !llvm.loop !99

middle.block217:                                  ; preds = %vector.body208
  br i1 %cmp.n218, label %.loopexit, label %.lr.ph.preheader222

.lr.ph.preheader222:                              ; preds = %vector.memcheck202, %.lr.ph.preheader, %middle.block217
  %.042133.ph = phi i32 [ 0, %vector.memcheck202 ], [ 0, %.lr.ph.preheader ], [ %i.bd, %middle.block217 ] ; 4 uses
  %.043132.ph = phi ptr [ %i.cz, %vector.memcheck202 ], [ %i.cz, %.lr.ph.preheader ], [ %i.dl, %middle.block217 ] ; 2 uses
  %.044131.ph = phi ptr [ %i.dg, %vector.memcheck202 ], [ %i.dg, %.lr.ph.preheader ], [ %i.dm, %middle.block217 ] ; 2 uses
  %i.dt = sub i32 %i.aa, %.042133.ph
  %xtraiter = and i32 %i.dt, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader222, %.lr.ph.prol
  %.042133.prol = phi i32 [ %i.dz, %.lr.ph.prol ], [ %.042133.ph, %.lr.ph.preheader222 ]
  %.043132.prol = phi ptr [ %i.dy, %.lr.ph.prol ], [ %.043132.ph, %.lr.ph.preheader222 ] ; 3 uses
  %.044131.prol = phi ptr [ %i.dx, %.lr.ph.prol ], [ %.044131.ph, %.lr.ph.preheader222 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader222 ]
  %i.du = load float, ptr %.044131.prol, align 4, !tbaa !35
  %i.dv = load float, ptr %.043132.prol, align 4, !tbaa !35
  %i.dw = fadd fast float %i.dv, %i.du
  store float %i.dw, ptr %.043132.prol, align 4, !tbaa !35
  %i.dx = getelementptr inbounds nuw i8, ptr %.044131.prol, i64 4 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.043132.prol, i64 4 ; 2 uses
  %i.dz = add nuw nsw i32 %.042133.prol, 1        ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !100

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader222
  %.042133.unr = phi i32 [ %.042133.ph, %.lr.ph.preheader222 ], [ %i.dz, %.lr.ph.prol ]
  %.043132.unr = phi ptr [ %.043132.ph, %.lr.ph.preheader222 ], [ %i.dy, %.lr.ph.prol ]
  %.044131.unr = phi ptr [ %.044131.ph, %.lr.ph.preheader222 ], [ %i.dx, %.lr.ph.prol ]
  %i.ea = sub i32 %.042133.ph, %i.aa
  %i.eb = icmp ugt i32 %i.ea, -4
  br i1 %i.eb, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.042133 = phi i32 [ %i.ew, %.lr.ph ], [ %.042133.unr, %.lr.ph.prol.loopexit ]
  %.043132 = phi ptr [ %i.ev, %.lr.ph ], [ %.043132.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %.044131 = phi ptr [ %i.eu, %.lr.ph ], [ %.044131.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ec = load float, ptr %.044131, align 4, !tbaa !35
end_hunk_0
