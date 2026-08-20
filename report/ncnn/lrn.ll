inline.NumInlined: 35
inline.NumDeleted: 29
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK4ncnn3LRN15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %i.y = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.v to i64    ; 6 uses
  %i.z = mul i64 %i.s, %i.u                       ; 2 uses
  %i.aa = mul i64 %i.z, %i.x
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.aa
  %i.ab = sub i32 %i.j, %i.k
  %i.ac = zext i32 %i.ab to i64
  %i.ad = add nsw i64 %i.x, %i.ac                 ; 2 uses
  %i.ae = mul i64 %i.z, %i.ad
  %i.af = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %i.ag = getelementptr i8, ptr %i.q, i64 %i.ae
  %scevgep71 = getelementptr i8, ptr %i.ag, i64 %i.af
  %i.ah = mul i64 %i.s, %i.u
  %i.ai = mul i64 %i.n, %i.p                      ; 3 uses
  %i.aj = mul i64 %i.ai, %i.x
  %scevgep72 = getelementptr i8, ptr %i.l, i64 %i.aj
  %i.ak = mul i64 %i.ai, %i.ad
  %i.al = getelementptr i8, ptr %i.l, i64 %i.ak
  %scevgep73 = getelementptr i8, ptr %i.al, i64 %i.af
  %min.iters.check = icmp ult i32 %i.v, 8
  %bound0 = icmp ult ptr %scevgep, %scevgep73
  %bound1 = icmp ult ptr %scevgep72, %scevgep71
  %found.conflict = and i1 %bound0, %bound1
  %i.am = or i64 %i.ai, %i.ah
  %i.an = icmp slt i64 %i.am, 0
  %i.ao = or i1 %found.conflict, %i.an
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.noexc25

.noexc25:                                         ; preds = %.noexc25.preheader, %._crit_edge
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
  %wide.load = load <4 x float>, ptr %i.ar, align 4, !tbaa !50, !alias.scope !74 ; 2 uses
  %wide.load75 = load <4 x float>, ptr %i.as, align 4, !tbaa !50, !alias.scope !74 ; 2 uses
  %i.at = fmul fast <4 x float> %wide.load, %wide.load
  %i.au = fmul fast <4 x float> %wide.load75, %wide.load75
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store <4 x float> %i.at, ptr %i.av, align 4, !tbaa !50, !alias.scope !77, !noalias !74
  store <4 x float> %i.au, ptr %i.aw, align 4, !tbaa !50, !alias.scope !77, !noalias !74
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !79

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.noexc25, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.noexc25 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.prol
  %i.az = load float, ptr %i.ay, align 4, !tbaa !50 ; 2 uses
  %i.ba = fmul fast float %i.az, %i.az
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.prol
  store float %i.ba, ptr %i.bb, align 4, !tbaa !50
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !80

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
  %i.bf = load float, ptr %i.be, align 4, !tbaa !50 ; 2 uses
  %i.bg = fmul fast float %i.bf, %i.bf
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv
  store float %i.bg, ptr %i.bh, align 4, !tbaa !50
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !50 ; 2 uses
  %i.bk = fmul fast float %i.bj, %i.bj
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next
  store float %i.bk, ptr %i.bl, align 4, !tbaa !50
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next.1
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !50 ; 2 uses
  %i.bo = fmul fast float %i.bn, %i.bn
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next.1
  store float %i.bo, ptr %i.bp, align 4, !tbaa !50
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next.2
  %i.br = load float, ptr %i.bq, align 4, !tbaa !50 ; 2 uses
  %i.bs = fmul fast float %i.br, %i.br
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next.2
  store float %i.bs, ptr %i.bt, align 4, !tbaa !50
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !82

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
declare !callback !83 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #6

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn3LRN15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !38     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !38
  %i.h = load i32, ptr %0, align 4, !tbaa !38     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !38
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !38
  %i.k = load i32, ptr %i.a, align 4, !tbaa !38   ; 4 uses
  %.not108 = icmp sgt i32 %i.k, %i.j
  br i1 %.not108, label %._crit_edge110, label %.noexc47.lr.ph

.noexc47.lr.ph:                                   ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !43, !noalias !85 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !40, !noalias !85 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !39, !noalias !85 ; 3 uses
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 212
  %i.r = load i32, ptr %i.q, align 4, !tbaa !29   ; 2 uses
  %.neg = sdiv i32 %i.r, -2                       ; 2 uses
  %i.s = sdiv i32 %i.r, 2
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.v = load ptr, ptr %7, align 8, !tbaa !43, !noalias !88 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.x = load i64, ptr %i.w, align 8, !tbaa !40, !noalias !88 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !39, !noalias !88 ; 3 uses
  %factor.op.mul111 = mul i64 %i.x, %i.z
  %i.aa = load i32, ptr %6, align 4, !tbaa !38    ; 5 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 224 ; 4 uses
  %i.ad = getelementptr i8, ptr %4, i64 220       ; 5 uses
  %i.ae = sext i32 %i.s to i64
  %i.af = add nsw i32 %i.j, 1
  br i1 %i.ab, label %.noexc47.us.preheader, label %._crit_edge110

.noexc47.us.preheader:                            ; preds = %.noexc47.lr.ph
  %i.ag = sext i32 %i.k to i64                    ; 4 uses
  %i.ah = add i32 %i.k, %.neg
  %9 = zext i32 %i.ah to i64
  %wide.trip.count125 = zext nneg i32 %i.aa to i64 ; 11 uses
  %wide.trip.count133 = zext nneg i32 %i.aa to i64
  %i.ai = mul i64 %i.x, %i.z                      ; 2 uses
  %i.aj = mul i64 %i.ai, %i.ag
  %scevgep = getelementptr i8, ptr %i.v, i64 %i.aj ; 3 uses
  %i.ak = sub i32 %i.j, %i.k
  %i.al = zext i32 %i.ak to i64
  %i.am = add nsw i64 %i.ag, %i.al                ; 2 uses
  %i.an = mul i64 %i.ai, %i.am
  %i.ao = shl nuw nsw i64 %wide.trip.count125, 2  ; 2 uses
  %i.ap = getelementptr i8, ptr %i.v, i64 %i.an
  %scevgep147 = getelementptr i8, ptr %i.ap, i64 %i.ao ; 3 uses
  %i.aq = mul i64 %i.x, %i.z                      ; 2 uses
  %scevgep148 = getelementptr i8, ptr %4, i64 228
  %scevgep149 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.ar = mul i64 %i.n, %i.p                      ; 3 uses
  %i.as = mul i64 %i.ar, %i.ag                    ; 3 uses
  %scevgep150 = getelementptr i8, ptr %i.l, i64 %i.as
  %i.at = mul i64 %i.ar, %i.am
  %i.au = getelementptr i8, ptr %i.l, i64 %i.at
  %scevgep151 = getelementptr i8, ptr %i.au, i64 %i.ao
  %i.av = mul i64 %i.n, %i.p
  %i.aw = shl nuw nsw i64 %wide.trip.count125, 2  ; 2 uses
  %i.ax = getelementptr i8, ptr %i.l, i64 %i.as
  %i.ay = getelementptr i8, ptr %i.l, i64 %i.as
  %i.az = getelementptr i8, ptr %i.ay, i64 %i.aw
  %min.iters.check176 = icmp ult i32 %i.aa, 8
  %n.vec178 = and i64 %wide.trip.count125, 2147483640 ; 3 uses
  %cmp.n187 = icmp eq i64 %n.vec178, %wide.trip.count125
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
  %i.ba = or i1 %found.conflict154, %stride.check155
  %conflict.rdx = or i1 %found.conflict, %i.ba
  %bound0156 = icmp ult ptr %scevgep, %scevgep151
  %bound1157 = icmp ult ptr %scevgep150, %scevgep147
  %found.conflict158 = and i1 %bound0156, %bound1157
  %i.bb = or i64 %i.ar, %i.aq
  %i.bc = icmp slt i64 %i.bb, 0
  %i.bd = or i1 %found.conflict158, %i.bc
  %conflict.rdx161 = or i1 %conflict.rdx, %i.bd
  %n.vec = and i64 %wide.trip.count125, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count125
  %xtraiter190 = and i64 %wide.trip.count125, 1
  %lcmp.mod191.not = icmp eq i64 %xtraiter190, 0
  %i.be = add nsw i64 %wide.trip.count125, -1
  br label %.noexc47.us

.noexc47.us:                                      ; preds = %.noexc47.us.preheader, %._crit_edge.us
  %indvar = phi i64 [ 0, %.noexc47.us.preheader ], [ %indvar.next, %._crit_edge.us ] ; 2 uses
  %indvars.iv135 = phi i64 [ %i.ag, %.noexc47.us.preheader ], [ %indvars.iv.next136, %._crit_edge.us ] ; 5 uses
  %indvars.iv129 = phi i64 [ %9, %.noexc47.us.preheader ], [ %indvars.iv.next130, %._crit_edge.us ] ; 2 uses
  %i.bf = mul i64 %i.av, %indvar                  ; 2 uses
  %scevgep168 = getelementptr i8, ptr %i.ax, i64 %i.bf
  %scevgep169 = getelementptr i8, ptr %i.az, i64 %i.bf
  %indvars141 = trunc i64 %indvars.iv135 to i32
  %.reass.us = mul i64 %factor.op.mul, %indvars.iv135
  %i.bg = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass.us ; 10 uses
  %i.bh = add i32 %.neg, %indvars141
  %i.bi = add nsw i64 %indvars.iv135, %i.ae       ; 2 uses
  %i.bj = sext i32 %i.bh to i64
  %.not43103.us = icmp slt i64 %i.bi, %i.bj
  br i1 %.not43103.us, label %.noexc.us, label %.lr.ph105.us

.lr.ph105.us:                                     ; preds = %.noexc47.us, %.loopexit.us
  %indvars.iv131 = phi i64 [ %indvars.iv.next132, %.loopexit.us ], [ %indvars.iv129, %.noexc47.us ] ; 4 uses
  %10 = trunc nuw i64 %indvars.iv131 to i32       ; 2 uses
  %i.bk = icmp slt i32 %10, 0
  br i1 %i.bk, label %.loopexit.us, label %bb.c

bb.c:                                             ; preds = %.lr.ph105.us
  %i.bl = load i32, ptr %2, align 4, !tbaa !38
  %.not44.us = icmp sgt i32 %i.bl, %10
  br i1 %.not44.us, label %.lr.ph.us.preheader, label %.loopexit.us

.lr.ph.us.preheader:                              ; preds = %bb.c
  %i.bm = load ptr, ptr %5, align 8, !tbaa !43, !noalias !91 ; 2 uses
  %i.bn = load i64, ptr %i.t, align 8, !tbaa !40, !noalias !91
  %i.bo = mul i64 %i.bn, %indvars.iv131
  %i.bp = load i64, ptr %i.u, align 8, !tbaa !39, !noalias !91
  %i.bq = mul i64 %i.bo, %i.bp                    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bq ; 7 uses
  br i1 %min.iters.check176, label %.lr.ph.us.preheader189, label %vector.memcheck167

vector.memcheck167:                               ; preds = %.lr.ph.us.preheader
  %scevgep170 = getelementptr i8, ptr %i.bm, i64 %i.aw
  %scevgep171 = getelementptr i8, ptr %scevgep170, i64 %i.bq
  %bound0172 = icmp ult ptr %scevgep168, %scevgep171
  %bound1173 = icmp ult ptr %i.br, %scevgep169
  %found.conflict174 = and i1 %bound0172, %bound1173
  br i1 %found.conflict174, label %.lr.ph.us.preheader189, label %vector.body179

vector.body179:                                   ; preds = %vector.memcheck167, %vector.body179
  %index180 = phi i64 [ %index.next185, %vector.body179 ], [ 0, %vector.memcheck167 ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %index180 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %wide.load181 = load <4 x float>, ptr %i.bs, align 4, !tbaa !50, !alias.scope !94
  %wide.load182 = load <4 x float>, ptr %i.bt, align 4, !tbaa !50, !alias.scope !94
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %index180 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 2 uses
  %wide.load183 = load <4 x float>, ptr %i.bu, align 4, !tbaa !50, !alias.scope !97, !noalias !94
  %wide.load184 = load <4 x float>, ptr %i.bv, align 4, !tbaa !50, !alias.scope !97, !noalias !94
  %i.bw = fadd fast <4 x float> %wide.load183, %wide.load181
  %i.bx = fadd fast <4 x float> %wide.load184, %wide.load182
  store <4 x float> %i.bw, ptr %i.bu, align 4, !tbaa !50, !alias.scope !97, !noalias !94
  store <4 x float> %i.bx, ptr %i.bv, align 4, !tbaa !50, !alias.scope !97, !noalias !94
  %index.next185 = add nuw i64 %index180, 8       ; 2 uses
  %i.by = icmp eq i64 %index.next185, %n.vec178
  br i1 %i.by, label %middle.block186, label %vector.body179, !llvm.loop !99

middle.block186:                                  ; preds = %vector.body179
  br i1 %cmp.n187, label %.loopexit.us, label %.lr.ph.us.preheader189

.lr.ph.us.preheader189:                           ; preds = %vector.memcheck167, %.lr.ph.us.preheader, %middle.block186
  %indvars.iv122.ph = phi i64 [ 0, %vector.memcheck167 ], [ 0, %.lr.ph.us.preheader ], [ %n.vec178, %middle.block186 ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader189, %.lr.ph.us.prol
  %indvars.iv122.prol = phi i64 [ %indvars.iv.next123.prol, %.lr.ph.us.prol ], [ %indvars.iv122.ph, %.lr.ph.us.preheader189 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.us.prol ], [ 0, %.lr.ph.us.preheader189 ]
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv122.prol
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !50
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv122.prol ; 2 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !50
  %i.cd = fadd fast float %i.cc, %i.ca
  store float %i.cd, ptr %i.cb, align 4, !tbaa !50
  %indvars.iv.next123.prol = add nuw nsw i64 %indvars.iv122.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol, !llvm.loop !100

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader189
  %indvars.iv122.unr = phi i64 [ %indvars.iv122.ph, %.lr.ph.us.preheader189 ], [ %indvars.iv.next123.prol, %.lr.ph.us.prol ]
  %i.ce = sub nsw i64 %indvars.iv122.ph, %wide.trip.count125
  %i.cf = icmp ugt i64 %i.ce, -4
  br i1 %i.cf, label %.loopexit.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %indvars.iv122 = phi i64 [ %indvars.iv.next123.3, %.lr.ph.us ], [ %indvars.iv122.unr, %.lr.ph.us.prol.loopexit ] ; 6 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv122
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !50
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv122 ; 2 uses
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !50
  %i.ck = fadd fast float %i.cj, %i.ch
  store float %i.ck, ptr %i.ci, align 4, !tbaa !50
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.next123
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !50
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.next123 ; 2 uses
  %i.co = load float, ptr %i.cn, align 4, !tbaa !50
  %i.cp = fadd fast float %i.co, %i.cm
  store float %i.cp, ptr %i.cn, align 4, !tbaa !50
  %indvars.iv.next123.1 = add nuw nsw i64 %indvars.iv122, 2 ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.next123.1
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !50
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.next123.1 ; 2 uses
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !50
  %i.cu = fadd fast float %i.ct, %i.cr
  store float %i.cu, ptr %i.cs, align 4, !tbaa !50
  %indvars.iv.next123.2 = add nuw nsw i64 %indvars.iv122, 3 ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.next123.2
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !50
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.next123.2 ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !50
  %i.cz = fadd fast float %i.cy, %i.cw
  store float %i.cz, ptr %i.cx, align 4, !tbaa !50
  %indvars.iv.next123.3 = add nuw nsw i64 %indvars.iv122, 4 ; 2 uses
  %exitcond126.not.3 = icmp eq i64 %indvars.iv.next123.3, %wide.trip.count125
  br i1 %exitcond126.not.3, label %.loopexit.us, label %.lr.ph.us, !llvm.loop !101

.loopexit.us:                                     ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us, %middle.block186, %bb.c, %.lr.ph105.us
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1
  %sext151 = shl i64 %indvars.iv131, 32
  %11 = ashr exact i64 %sext151, 32
  %.not43.us.not = icmp slt i64 %11, %i.bi
  br i1 %.not43.us.not, label %.lr.ph105.us, label %.noexc.us, !llvm.loop !102

.noexc.us:                                        ; preds = %.loopexit.us, %.noexc47.us
  %.reass112.us = mul i64 %factor.op.mul111, %indvars.iv135
  %i.da = getelementptr inbounds nuw i8, ptr %i.v, i64 %.reass112.us ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx161
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.noexc.us
  %i.db = load float, ptr %i.ac, align 8, !tbaa !32, !alias.scope !103
  %broadcast.splatinsert165 = insertelement <4 x float> poison, float %i.db, i64 0
  %broadcast.splat166 = shufflevector <4 x float> %broadcast.splatinsert165, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dc = load float, ptr %8, align 4, !tbaa !50, !alias.scope !106
  %broadcast.splatinsert163 = insertelement <4 x float> poison, float %i.dc, i64 0
  %broadcast.splat164 = shufflevector <4 x float> %broadcast.splatinsert163, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dd = load float, ptr %i.ad, align 4, !tbaa !31, !alias.scope !103
  %.scalar = fneg fast float %i.dd
  %i.de = insertelement <4 x float> poison, float %.scalar, i64 0
  %i.df = shufflevector <4 x float> %i.de, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.dg, align 4, !tbaa !50, !alias.scope !108, !noalias !110
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %index
  %wide.load162 = load <4 x float>, ptr %i.dh, align 4, !tbaa !50, !alias.scope !112
  %i.di = fmul fast <4 x float> %wide.load162, %broadcast.splat164
  %i.dj = fadd fast <4 x float> %i.di, %broadcast.splat166
  %i.dk = call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.dj, <4 x float> %i.df)
  %i.dl = fmul fast <4 x float> %i.dk, %wide.load
  store <4 x float> %i.dl, ptr %i.dg, align 4, !tbaa !50, !alias.scope !108, !noalias !110
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !113

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.noexc.us, %middle.block
  %indvars.iv130.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.noexc.us ] ; 5 uses
  br i1 %lcmp.mod191.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv130.ph ; 2 uses
  %i.do = load float, ptr %i.dn, align 4, !tbaa !50
  %i.dp = load float, ptr %i.ac, align 8, !tbaa !32
  %i.dq = load float, ptr %8, align 4, !tbaa !50
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv130.ph
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !50
  %i.dt = fmul fast float %i.ds, %i.dq
  %i.du = fadd fast float %i.dt, %i.dp
  %i.dv = load float, ptr %i.ad, align 4, !tbaa !31
  %i.dw = fneg fast float %i.dv
  %i.dx = call fast float @llvm.pow.f32(float %i.du, float %i.dw)
  %i.dy = fmul fast float %i.dx, %i.do
  store float %i.dy, ptr %i.dn, align 4, !tbaa !50
  %indvars.iv.next131.prol = or disjoint i64 %indvars.iv130.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv130.unr = phi i64 [ %indvars.iv130.ph, %scalar.ph.preheader ], [ %indvars.iv.next131.prol, %scalar.ph.prol ]
  %i.dz = icmp eq i64 %indvars.iv130.ph, %i.be
  br i1 %i.dz, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv130 = phi i64 [ %indvars.iv.next131.1, %scalar.ph ], [ %indvars.iv130.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv130 ; 2 uses
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !50
  %i.ec = load float, ptr %i.ac, align 8, !tbaa !32
  %i.ed = load float, ptr %8, align 4, !tbaa !50
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv130
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !50
  %i.eg = fmul fast float %i.ef, %i.ed
  %i.eh = fadd fast float %i.eg, %i.ec
  %i.ei = load float, ptr %i.ad, align 4, !tbaa !31
  %i.ej = fneg fast float %i.ei
  %i.ek = call fast float @llvm.pow.f32(float %i.eh, float %i.ej)
  %i.el = fmul fast float %i.ek, %i.eb
  store float %i.el, ptr %i.ea, align 4, !tbaa !50
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv.next131 ; 2 uses
  %i.en = load float, ptr %i.em, align 4, !tbaa !50
  %i.eo = load float, ptr %i.ac, align 8, !tbaa !32
  %i.ep = load float, ptr %8, align 4, !tbaa !50
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.next131
  %i.er = load float, ptr %i.eq, align 4, !tbaa !50
  %i.es = fmul fast float %i.er, %i.ep
  %i.et = fadd fast float %i.es, %i.eo
  %i.eu = load float, ptr %i.ad, align 4, !tbaa !31
  %i.ev = fneg fast float %i.eu
  %i.ew = call fast float @llvm.pow.f32(float %i.et, float %i.ev)
  %i.ex = fmul fast float %i.ew, %i.en
  store float %i.ex, ptr %i.em, align 4, !tbaa !50
  %indvars.iv.next131.1 = add nuw nsw i64 %indvars.iv130, 2 ; 2 uses
  %exitcond134.not.1 = icmp eq i64 %indvars.iv.next131.1, %wide.trip.count133
  br i1 %exitcond134.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !114

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next136 = add nsw i64 %indvars.iv135, 1 ; 2 uses
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1
  %lftr.wideiv138 = trunc i64 %indvars.iv.next136 to i32
  %exitcond139.not = icmp eq i32 %i.af, %lftr.wideiv138
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond139.not, label %._crit_edge110, label %.noexc47.us

._crit_edge110:                                   ; preds = %._crit_edge.us, %.noexc47.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge110, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare void @_ZN4ncnn16copy_make_borderERKNS_3MatERS0_iiiiifRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, float noundef nofpclass(nan inf), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn3LRN15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !38     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !38
  %i.h = load i32, ptr %0, align 4, !tbaa !38     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !38
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !38
  %i.k = load i32, ptr %i.a, align 4, !tbaa !38   ; 3 uses
  %.not84 = icmp sgt i32 %i.k, %i.j
  br i1 %.not84, label %._crit_edge.split, label %.noexc45.lr.ph

.noexc45.lr.ph:                                   ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !43, !noalias !115 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !40, !noalias !115 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !39, !noalias !115 ; 3 uses
  %factor.op.mul = mul i64 %i.n, %i.p             ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.r = load i32, ptr %i.q, align 4, !tbaa !33, !noalias !118
  %i.s = load ptr, ptr %4, align 8, !tbaa !43, !noalias !118
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.u = load i64, ptr %i.t, align 8, !tbaa !40, !noalias !118
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !39, !noalias !118 ; 2 uses
  %factor.op.mul86 = mul i64 %i.u, %i.w
  %i.x = sext i32 %i.r to i64
  %i.y = load i32, ptr %5, align 4, !tbaa !38     ; 4 uses
  %i.z = icmp sgt i32 %i.y, 0
  %i.aa = mul i64 %i.w, %i.x
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 224 ; 5 uses
  %i.ac = getelementptr i8, ptr %9, i64 220       ; 6 uses
  br i1 %i.z, label %.noexc45.lr.ph.split, label %._crit_edge.split

.noexc45.lr.ph.split:                             ; preds = %.noexc45.lr.ph
  %i.ad = load i32, ptr %6, align 4, !tbaa !38    ; 5 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  %i.af = sext i32 %i.ad to i64                   ; 3 uses
  br i1 %i.ae, label %.noexc45.lr.ph.split.split, label %._crit_edge.split

.noexc45.lr.ph.split.split:                       ; preds = %.noexc45.lr.ph.split
  %i.ag = load i32, ptr %7, align 4, !tbaa !38    ; 3 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.noexc45.lr.ph.split.split.split.us, label %.noexc45.preheader

.noexc45.preheader:                               ; preds = %.noexc45.lr.ph.split.split
  %i.ai = sext i32 %i.k to i64                    ; 2 uses
  %i.aj = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.ad to i64   ; 6 uses
  %i.ak = mul i64 %i.n, %i.p
  %i.al = mul i64 %i.ak, %i.ai                    ; 2 uses
  %i.am = mul i64 %i.n, %i.p
  %i.an = add nsw i32 %i.y, -1
  %i.ao = zext i32 %i.an to i64
  %i.ap = mul nuw nsw i64 %i.af, %i.ao
  %i.aq = add nuw i64 %i.ap, %wide.trip.count
  %i.ar = shl i64 %i.aq, 2
  %scevgep127 = getelementptr i8, ptr %9, i64 228
  %i.as = getelementptr i8, ptr %i.l, i64 %i.al
  %i.at = getelementptr i8, ptr %i.l, i64 %i.ar
  %i.au = getelementptr i8, ptr %i.at, i64 %i.al
  %min.iters.check = icmp ult i32 %i.ad, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.av = add nsw i64 %wide.trip.count, -1
  br label %.noexc45

.noexc45.lr.ph.split.split.split.us:              ; preds = %.noexc45.lr.ph.split.split
  %i.aw = load ptr, ptr %8, align 8, !tbaa !59    ; 5 uses
  %i.ax = sext i32 %i.k to i64
  %i.ay = add nsw i32 %i.j, 1
  %wide.trip.count111 = zext nneg i32 %i.y to i64
  %wide.trip.count106 = zext nneg i32 %i.ad to i64
  %wide.trip.count101 = zext nneg i32 %i.ag to i64 ; 2 uses
  %xtraiter130 = and i64 %wide.trip.count101, 3   ; 3 uses
  %i.az = icmp ult i32 %i.ag, 4
  %unroll_iter = and i64 %wide.trip.count101, 2147483644
  %lcmp.mod131.not = icmp eq i64 %xtraiter130, 0
  %lcmp.mod133 = icmp ne i64 %xtraiter130, 0
  br label %.noexc45.us

.noexc45.us:                                      ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge.split83.us.us, %.noexc45.lr.ph.split.split.split.us
  %indvars.iv113 = phi i64 [ %indvars.iv.next114, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split83.us.us ], [ %i.ax, %.noexc45.lr.ph.split.split.split.us ] ; 3 uses
  %.reass.us = mul i64 %factor.op.mul, %indvars.iv113
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass.us
  %.reass87.us = mul i64 %factor.op.mul86, %indvars.iv113
  %i.bb = getelementptr inbounds nuw i8, ptr %i.s, i64 %.reass87.us
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge77.split.us.us.us, %.noexc45.us
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %._crit_edge77.split.us.us.us ], [ 0, %.noexc45.us ] ; 2 uses
  %.04379.us.us = phi ptr [ %i.cw, %._crit_edge77.split.us.us.us ], [ %i.ba, %.noexc45.us ] ; 2 uses
  %i.bc = mul i64 %i.aa, %indvars.iv108
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bc
  br label %.lr.ph.us.us.us

.lr.ph.us.us.us:                                  ; preds = %._crit_edge.us.us.us, %.preheader.us.us
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %._crit_edge.us.us.us ], [ 0, %.preheader.us.us ] ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv103 ; 5 uses
  br i1 %i.az, label %.epil.preheader, label %.lr.ph.us.us.us.new

.lr.ph.us.us.us.new:                              ; preds = %.lr.ph.us.us.us, %.lr.ph.us.us.us.new
  %indvars.iv98 = phi i64 [ %indvars.iv.next99.3, %.lr.ph.us.us.us.new ], [ 0, %.lr.ph.us.us.us ] ; 5 uses
  %.04073.us.us.us = phi float [ %i.cf, %.lr.ph.us.us.us.new ], [ 0.000000e+00, %.lr.ph.us.us.us ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us.us.us.new ], [ 0, %.lr.ph.us.us.us ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv98
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !38
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.bh
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !50
  %i.bk = fadd fast float %i.bj, %.04073.us.us.us
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv98
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !38
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.bo
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !50
  %i.br = fadd fast float %i.bq, %i.bk
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv98
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !38
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.bv
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !50
  %i.by = fadd fast float %i.bx, %i.br
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv98
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !38
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.cc
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !50
  %i.cf = fadd fast float %i.ce, %i.by            ; 3 uses
  %indvars.iv.next99.3 = add nuw nsw i64 %indvars.iv98, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.us.us.unr-lcssa, label %.lr.ph.us.us.us.new, !llvm.loop !121

._crit_edge.us.us.us.unr-lcssa:                   ; preds = %.lr.ph.us.us.us.new
  br i1 %lcmp.mod131.not, label %._crit_edge.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.us.unr-lcssa, %.lr.ph.us.us.us
  %indvars.iv98.epil.init = phi i64 [ 0, %.lr.ph.us.us.us ], [ %indvars.iv.next99.3, %._crit_edge.us.us.us.unr-lcssa ]
  %.04073.us.us.us.epil.init = phi float [ 0.000000e+00, %.lr.ph.us.us.us ], [ %i.cf, %._crit_edge.us.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod133)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv98.epil = phi i64 [ %indvars.iv.next99.epil, %bb.c ], [ %indvars.iv98.epil.init, %.epil.preheader ] ; 2 uses
  %.04073.us.us.us.epil = phi float [ %i.cl, %bb.c ], [ %.04073.us.us.us.epil.init, %.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb.c ], [ 0, %.epil.preheader ]
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv98.epil
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !38
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.ci
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !50
  %i.cl = fadd fast float %i.ck, %.04073.us.us.us.epil ; 2 uses
  %indvars.iv.next99.epil = add nuw nsw i64 %indvars.iv98.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter130
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.us.us, label %bb.c, !llvm.loop !122

._crit_edge.us.us.us:                             ; preds = %bb.c, %._crit_edge.us.us.us.unr-lcssa
  %.lcssa = phi float [ %i.cf, %._crit_edge.us.us.us.unr-lcssa ], [ %i.cl, %bb.c ]
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.04379.us.us, i64 %indvars.iv103 ; 2 uses
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !50
  %i.co = load float, ptr %i.ab, align 8, !tbaa !32
  %i.cp = load float, ptr %10, align 4, !tbaa !50
  %i.cq = fmul fast float %i.cp, %.lcssa
  %i.cr = fadd fast float %i.cq, %i.co
  %i.cs = load float, ptr %i.ac, align 4, !tbaa !31
  %i.ct = fneg fast float %i.cs
  %i.cu = call fast float @llvm.pow.f32(float %i.cr, float %i.ct)
  %i.cv = fmul fast float %i.cu, %i.cn
  store float %i.cv, ptr %i.cm, align 4, !tbaa !50
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %exitcond107.not = icmp eq i64 %indvars.iv.next104, %wide.trip.count106
  br i1 %exitcond107.not, label %._crit_edge77.split.us.us.us, label %.lr.ph.us.us.us, !llvm.loop !123

._crit_edge77.split.us.us.us:                     ; preds = %._crit_edge.us.us.us
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.04379.us.us, i64 %i.af
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %exitcond112.not = icmp eq i64 %indvars.iv.next109, %wide.trip.count111
  br i1 %exitcond112.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge.split83.us.us, label %.preheader.us.us, !llvm.loop !124

._ZN4ncnn3MatD2Ev.exit_crit_edge.split83.us.us:   ; preds = %._crit_edge77.split.us.us.us
  %indvars.iv.next114 = add nsw i64 %indvars.iv113, 1 ; 2 uses
  %lftr.wideiv116 = trunc i64 %indvars.iv.next114 to i32
  %exitcond117.not = icmp eq i32 %i.ay, %lftr.wideiv116
  br i1 %exitcond117.not, label %._crit_edge.split, label %.noexc45.us

.noexc45:                                         ; preds = %.noexc45.preheader, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split83
  %indvar = phi i64 [ 0, %.noexc45.preheader ], [ %indvar.next, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split83 ] ; 2 uses
  %indvars.iv94 = phi i64 [ %i.ai, %.noexc45.preheader ], [ %indvars.iv.next95, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split83 ] ; 2 uses
  %i.cx = mul i64 %i.am, %indvar                  ; 2 uses
  %scevgep = getelementptr i8, ptr %i.as, i64 %i.cx
  %scevgep126 = getelementptr i8, ptr %i.au, i64 %i.cx
  %.reass = mul i64 %factor.op.mul, %indvars.iv94
  %i.cy = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass
  %bound0 = icmp ult ptr %scevgep, %scevgep127
  %bound1 = icmp ult ptr %i.ac, %scevgep126
  %found.conflict = and i1 %bound0, %bound1
  br label %.preheader

.preheader:                                       ; preds = %.noexc45, %._crit_edge77.split
  %.04281 = phi i32 [ 0, %.noexc45 ], [ %i.dx, %._crit_edge77.split ]
  %.04379 = phi ptr [ %i.cy, %.noexc45 ], [ %i.dw, %._crit_edge77.split ] ; 5 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %i.cz = load float, ptr %i.ab, align 8, !tbaa !32, !alias.scope !125 ; 4 uses
  %i.da = load float, ptr %i.ac, align 4, !tbaa !31, !alias.scope !125
  %.scalar = fneg fast float %i.da                ; 4 uses
  %i.db = call fast float @llvm.pow.f32(float %i.cz, float %.scalar)
  %i.dc = call fast float @llvm.pow.f32(float %i.cz, float %.scalar)
  %i.dd = call fast float @llvm.pow.f32(float %i.cz, float %.scalar)
  %i.de = call fast float @llvm.pow.f32(float %i.cz, float %.scalar)
  %i.df = insertelement <4 x float> poison, float %i.db, i64 0
  %i.dg = insertelement <4 x float> %i.df, float %i.dc, i64 1
  %i.dh = insertelement <4 x float> %i.dg, float %i.dd, i64 2
  %i.di = insertelement <4 x float> %i.dh, float %i.de, i64 3 ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.04379, i64 %index ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.dj, align 4, !tbaa !50, !alias.scope !128, !noalias !125
  %wide.load128 = load <4 x float>, ptr %i.dk, align 4, !tbaa !50, !alias.scope !128, !noalias !125
  %i.dl = fmul fast <4 x float> %i.di, %wide.load
  %i.dm = fmul fast <4 x float> %i.di, %wide.load128
  store <4 x float> %i.dl, ptr %i.dj, align 4, !tbaa !50, !alias.scope !128, !noalias !125
  store <4 x float> %i.dm, ptr %i.dk, align 4, !tbaa !50, !alias.scope !128, !noalias !125
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !130

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge77.split, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ] ; 4 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.04379, i64 %indvars.iv.ph ; 2 uses
  %i.dp = load float, ptr %i.do, align 4, !tbaa !50
  %i.dq = load float, ptr %i.ab, align 8, !tbaa !32
  %i.dr = load float, ptr %i.ac, align 4, !tbaa !31
  %i.ds = fneg fast float %i.dr
  %i.dt = call fast float @llvm.pow.f32(float %i.dq, float %i.ds)
  %i.du = fmul fast float %i.dt, %i.dp
  store float %i.du, ptr %i.do, align 4, !tbaa !50
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.dv = icmp eq i64 %indvars.iv.ph, %i.av
  br i1 %i.dv, label %._crit_edge77.split, label %scalar.ph

._ZN4ncnn3MatD2Ev.exit_crit_edge.split83:         ; preds = %._crit_edge77.split
  %indvars.iv.next95 = add nsw i64 %indvars.iv94, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next95 to i32
  %exitcond97.not = icmp eq i32 %i.aj, %lftr.wideiv
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond97.not, label %._crit_edge.split, label %.noexc45

._crit_edge77.split:                              ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.04379, i64 %i.af
  %i.dx = add nuw nsw i32 %.04281, 1              ; 2 uses
  %exitcond93.not = icmp eq i32 %i.dx, %i.y
  br i1 %exitcond93.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge.split83, label %.preheader, !llvm.loop !124

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %.04379, i64 %indvars.iv ; 2 uses
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !50
  %i.ea = load float, ptr %i.ab, align 8, !tbaa !32
  %i.eb = load float, ptr %i.ac, align 4, !tbaa !31
  %i.ec = fneg fast float %i.eb
  %i.ed = call fast float @llvm.pow.f32(float %i.ea, float %i.ec)
  %i.ee = fmul fast float %i.ed, %i.dz
  store float %i.ee, ptr %i.dy, align 4, !tbaa !50
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.04379, i64 %indvars.iv
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4 ; 2 uses
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !50
  %i.ei = load float, ptr %i.ab, align 8, !tbaa !32
  %i.ej = load float, ptr %i.ac, align 4, !tbaa !31
  %i.ek = fneg fast float %i.ej
  %i.el = call fast float @llvm.pow.f32(float %i.ei, float %i.ek)
  %i.em = fmul fast float %i.el, %i.eh
  store float %i.em, ptr %i.eg, align 4, !tbaa !50
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge77.split, label %scalar.ph, !llvm.loop !131

._crit_edge.split:                                ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge.split83, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split83.us.us, %.noexc45.lr.ph, %.noexc45.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.split, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.pow.v4f32(<4 x float>, <4 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_0
