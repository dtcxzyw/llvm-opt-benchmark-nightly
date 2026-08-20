inline.NumInlined: 35
inline.NumDeleted: 29
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK4ncnn3LRN15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !43, !noalias !71 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !40, !noalias !71 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !39, !noalias !71 ; 3 uses
  %factor.op.mul61 = mul i64 %i.s, %i.u
  %i.v = load i32, ptr %5, align 4, !tbaa !38     ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.noexc25.preheader, label %._crit_edge60.split

.noexc25.preheader:                               ; preds = %.noexc25.lr.ph
  %i.x = sext i32 %i.k to i64                     ; 4 uses
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
  %.neg = sdiv i32 %i.r, -2
  %i.s = sdiv i32 %i.r, 2                         ; 2 uses
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
  %9 = add i32 %i.k, %i.s
  %wide.trip.count125 = zext nneg i32 %i.aa to i64 ; 11 uses
  %wide.trip.count133 = zext nneg i32 %i.aa to i64
  %i.ah = mul i64 %i.x, %i.z                      ; 2 uses
  %i.ai = mul i64 %i.ah, %i.ag
  %scevgep = getelementptr i8, ptr %i.v, i64 %i.ai ; 3 uses
  %i.aj = sub i32 %i.j, %i.k
  %i.ak = zext i32 %i.aj to i64
  %i.al = add nsw i64 %i.ag, %i.ak                ; 2 uses
  %i.am = mul i64 %i.ah, %i.al
  %i.an = shl nuw nsw i64 %wide.trip.count125, 2  ; 2 uses
  %i.ao = getelementptr i8, ptr %i.v, i64 %i.am
  %scevgep147 = getelementptr i8, ptr %i.ao, i64 %i.an ; 3 uses
  %i.ap = mul i64 %i.x, %i.z                      ; 2 uses
  %scevgep148 = getelementptr i8, ptr %4, i64 228
  %scevgep149 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.aq = mul i64 %i.n, %i.p                      ; 3 uses
  %i.ar = mul i64 %i.aq, %i.ag                    ; 3 uses
  %scevgep150 = getelementptr i8, ptr %i.l, i64 %i.ar
  %i.as = mul i64 %i.aq, %i.al
  %i.at = getelementptr i8, ptr %i.l, i64 %i.as
  %scevgep151 = getelementptr i8, ptr %i.at, i64 %i.an
  %i.au = mul i64 %i.n, %i.p
  %i.av = shl nuw nsw i64 %wide.trip.count125, 2  ; 2 uses
  %i.aw = getelementptr i8, ptr %i.l, i64 %i.ar
  %i.ax = getelementptr i8, ptr %i.l, i64 %i.ar
  %i.ay = getelementptr i8, ptr %i.ax, i64 %i.av
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
  %stride.check155 = icmp slt i64 %i.ap, 0
  %i.az = or i1 %found.conflict154, %stride.check155
  %conflict.rdx = or i1 %found.conflict, %i.az
  %bound0156 = icmp ult ptr %scevgep, %scevgep151
  %bound1157 = icmp ult ptr %scevgep150, %scevgep147
  %found.conflict158 = and i1 %bound0156, %bound1157
  %i.ba = or i64 %i.aq, %i.ap
  %i.bb = icmp slt i64 %i.ba, 0
  %i.bc = or i1 %found.conflict158, %i.bb
  %conflict.rdx161 = or i1 %conflict.rdx, %i.bc
  %n.vec = and i64 %wide.trip.count125, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count125
  %xtraiter190 = and i64 %wide.trip.count125, 1
  %lcmp.mod191.not = icmp eq i64 %xtraiter190, 0
  %i.bd = add nsw i64 %wide.trip.count125, -1
  br label %.noexc47.us

.noexc47.us:                                      ; preds = %.noexc47.us.preheader, %._crit_edge.us
  %indvar = phi i64 [ 0, %.noexc47.us.preheader ], [ %indvar.next, %._crit_edge.us ] ; 2 uses
  %indvars.iv135 = phi i64 [ %i.ag, %.noexc47.us.preheader ], [ %indvars.iv.next136, %._crit_edge.us ] ; 5 uses
  %indvars.iv127.in = phi i32 [ %9, %.noexc47.us.preheader ], [ %indvars.iv127, %._crit_edge.us ] ; 2 uses
  %i.be = mul i64 %i.au, %indvar                  ; 2 uses
  %scevgep168 = getelementptr i8, ptr %i.aw, i64 %i.be
  %scevgep169 = getelementptr i8, ptr %i.ay, i64 %i.be
  %indvars.iv127 = add i32 %indvars.iv127.in, 1
  %.reass.us = mul i64 %factor.op.mul, %indvars.iv135
  %i.bf = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass.us ; 10 uses
  %i.bg = trunc nsw i64 %indvars.iv135 to i32
  %i.bh = add i32 %.neg, %i.bg                    ; 2 uses
  %i.bi = add nsw i64 %indvars.iv135, %i.ae
  %i.bj = sext i32 %i.bh to i64
  %.not43103.us = icmp slt i64 %i.bi, %i.bj
  br i1 %.not43103.us, label %.noexc.us, label %.lr.ph105.us

.lr.ph105.us:                                     ; preds = %.noexc47.us, %.loopexit.us
  %.041104.us = phi i32 [ %i.db, %.loopexit.us ], [ %i.bh, %.noexc47.us ] ; 5 uses
  %i.bk = icmp slt i32 %.041104.us, 0
  br i1 %i.bk, label %.loopexit.us, label %bb.c

bb.c:                                             ; preds = %.lr.ph105.us
  %i.bl = load i32, ptr %2, align 4, !tbaa !38
  %.not44.us = icmp slt i32 %.041104.us, %i.bl
  br i1 %.not44.us, label %.lr.ph.us.preheader, label %.loopexit.us

.lr.ph.us.preheader:                              ; preds = %bb.c
  %i.bm = load ptr, ptr %5, align 8, !tbaa !43, !noalias !91 ; 2 uses
  %i.bn = load i64, ptr %i.t, align 8, !tbaa !40, !noalias !91
  %i.bo = zext nneg i32 %.041104.us to i64
  %i.bp = mul i64 %i.bn, %i.bo
  %i.bq = load i64, ptr %i.u, align 8, !tbaa !39, !noalias !91
  %i.br = mul i64 %i.bp, %i.bq                    ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.br ; 7 uses
  br i1 %min.iters.check176, label %.lr.ph.us.preheader189, label %vector.memcheck167

vector.memcheck167:                               ; preds = %.lr.ph.us.preheader
  %scevgep170 = getelementptr i8, ptr %i.bm, i64 %i.av
  %scevgep171 = getelementptr i8, ptr %scevgep170, i64 %i.br
  %bound0172 = icmp ult ptr %scevgep168, %scevgep171
  %bound1173 = icmp ult ptr %i.bs, %scevgep169
  %found.conflict174 = and i1 %bound0172, %bound1173
  br i1 %found.conflict174, label %.lr.ph.us.preheader189, label %vector.body179

vector.body179:                                   ; preds = %vector.memcheck167, %vector.body179
  %index180 = phi i64 [ %index.next185, %vector.body179 ], [ 0, %vector.memcheck167 ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %index180 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %wide.load181 = load <4 x float>, ptr %i.bt, align 4, !tbaa !50, !alias.scope !94
  %wide.load182 = load <4 x float>, ptr %i.bu, align 4, !tbaa !50, !alias.scope !94
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %index180 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  %wide.load183 = load <4 x float>, ptr %i.bv, align 4, !tbaa !50, !alias.scope !97, !noalias !94
  %wide.load184 = load <4 x float>, ptr %i.bw, align 4, !tbaa !50, !alias.scope !97, !noalias !94
  %i.bx = fadd fast <4 x float> %wide.load183, %wide.load181
  %i.by = fadd fast <4 x float> %wide.load184, %wide.load182
  store <4 x float> %i.bx, ptr %i.bv, align 4, !tbaa !50, !alias.scope !97, !noalias !94
  store <4 x float> %i.by, ptr %i.bw, align 4, !tbaa !50, !alias.scope !97, !noalias !94
  %index.next185 = add nuw i64 %index180, 8       ; 2 uses
  %i.bz = icmp eq i64 %index.next185, %n.vec178
  br i1 %i.bz, label %middle.block186, label %vector.body179, !llvm.loop !99

middle.block186:                                  ; preds = %vector.body179
  br i1 %cmp.n187, label %.loopexit.us, label %.lr.ph.us.preheader189

.lr.ph.us.preheader189:                           ; preds = %vector.memcheck167, %.lr.ph.us.preheader, %middle.block186
  %indvars.iv122.ph = phi i64 [ 0, %vector.memcheck167 ], [ 0, %.lr.ph.us.preheader ], [ %n.vec178, %middle.block186 ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader189, %.lr.ph.us.prol
  %indvars.iv122.prol = phi i64 [ %indvars.iv.next123.prol, %.lr.ph.us.prol ], [ %indvars.iv122.ph, %.lr.ph.us.preheader189 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.us.prol ], [ 0, %.lr.ph.us.preheader189 ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv122.prol
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !50
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv122.prol ; 2 uses
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !50
  %i.ce = fadd fast float %i.cd, %i.cb
  store float %i.ce, ptr %i.cc, align 4, !tbaa !50
  %indvars.iv.next123.prol = add nuw nsw i64 %indvars.iv122.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol, !llvm.loop !100

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader189
  %indvars.iv122.unr = phi i64 [ %indvars.iv122.ph, %.lr.ph.us.preheader189 ], [ %indvars.iv.next123.prol, %.lr.ph.us.prol ]
  %i.cf = sub nsw i64 %indvars.iv122.ph, %wide.trip.count125
  %i.cg = icmp ugt i64 %i.cf, -4
  br i1 %i.cg, label %.loopexit.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %indvars.iv122 = phi i64 [ %indvars.iv.next123.3, %.lr.ph.us ], [ %indvars.iv122.unr, %.lr.ph.us.prol.loopexit ] ; 6 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv122
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !50
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv122 ; 2 uses
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !50
  %i.cl = fadd fast float %i.ck, %i.ci
  store float %i.cl, ptr %i.cj, align 4, !tbaa !50
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.next123
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !50
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.next123 ; 2 uses
  %i.cp = load float, ptr %i.co, align 4, !tbaa !50
  %i.cq = fadd fast float %i.cp, %i.cn
  store float %i.cq, ptr %i.co, align 4, !tbaa !50
  %indvars.iv.next123.1 = add nuw nsw i64 %indvars.iv122, 2 ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.next123.1
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !50
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.next123.1 ; 2 uses
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !50
  %i.cv = fadd fast float %i.cu, %i.cs
  store float %i.cv, ptr %i.ct, align 4, !tbaa !50
  %indvars.iv.next123.2 = add nuw nsw i64 %indvars.iv122, 3 ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.next123.2
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !50
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.next123.2 ; 2 uses
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !50
  %i.da = fadd fast float %i.cz, %i.cx
  store float %i.da, ptr %i.cy, align 4, !tbaa !50
  %indvars.iv.next123.3 = add nuw nsw i64 %indvars.iv122, 4 ; 2 uses
  %exitcond126.not.3 = icmp eq i64 %indvars.iv.next123.3, %wide.trip.count125
  br i1 %exitcond126.not.3, label %.loopexit.us, label %.lr.ph.us, !llvm.loop !101

.loopexit.us:                                     ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us, %middle.block186, %bb.c, %.lr.ph105.us
  %i.db = add i32 %.041104.us, 1
  %exitcond129.not = icmp eq i32 %.041104.us, %indvars.iv127.in
  br i1 %exitcond129.not, label %.noexc.us, label %.lr.ph105.us, !llvm.loop !102

.noexc.us:                                        ; preds = %.loopexit.us, %.noexc47.us
  %.reass112.us = mul i64 %factor.op.mul111, %indvars.iv135
  %i.dc = getelementptr inbounds nuw i8, ptr %i.v, i64 %.reass112.us ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx161
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.noexc.us
  %i.dd = load float, ptr %i.ac, align 8, !tbaa !32, !alias.scope !103
  %broadcast.splatinsert165 = insertelement <4 x float> poison, float %i.dd, i64 0
  %broadcast.splat166 = shufflevector <4 x float> %broadcast.splatinsert165, <4 x float> poison, <4 x i32> zeroinitializer
  %i.de = load float, ptr %8, align 4, !tbaa !50, !alias.scope !106
  %broadcast.splatinsert163 = insertelement <4 x float> poison, float %i.de, i64 0
  %broadcast.splat164 = shufflevector <4 x float> %broadcast.splatinsert163, <4 x float> poison, <4 x i32> zeroinitializer
  %i.df = load float, ptr %i.ad, align 4, !tbaa !31, !alias.scope !103
  %.scalar = fneg fast float %i.df
  %i.dg = insertelement <4 x float> poison, float %.scalar, i64 0
  %i.dh = shufflevector <4 x float> %i.dg, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.di, align 4, !tbaa !50, !alias.scope !108, !noalias !110
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %index
  %wide.load162 = load <4 x float>, ptr %i.dj, align 4, !tbaa !50, !alias.scope !112
  %i.dk = fmul fast <4 x float> %wide.load162, %broadcast.splat164
  %i.dl = fadd fast <4 x float> %i.dk, %broadcast.splat166
  %i.dm = call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.dl, <4 x float> %i.dh)
  %i.dn = fmul fast <4 x float> %i.dm, %wide.load
  store <4 x float> %i.dn, ptr %i.di, align 4, !tbaa !50, !alias.scope !108, !noalias !110
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !113

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.noexc.us, %middle.block
  %indvars.iv130.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.noexc.us ] ; 5 uses
  br i1 %lcmp.mod191.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv130.ph ; 2 uses
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !50
  %i.dr = load float, ptr %i.ac, align 8, !tbaa !32
  %i.ds = load float, ptr %8, align 4, !tbaa !50
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv130.ph
  %i.du = load float, ptr %i.dt, align 4, !tbaa !50
  %i.dv = fmul fast float %i.du, %i.ds
  %i.dw = fadd fast float %i.dv, %i.dr
  %i.dx = load float, ptr %i.ad, align 4, !tbaa !31
  %i.dy = fneg fast float %i.dx
  %i.dz = call fast float @llvm.pow.f32(float %i.dw, float %i.dy)
  %i.ea = fmul fast float %i.dz, %i.dq
  store float %i.ea, ptr %i.dp, align 4, !tbaa !50
  %indvars.iv.next131.prol = or disjoint i64 %indvars.iv130.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv130.unr = phi i64 [ %indvars.iv130.ph, %scalar.ph.preheader ], [ %indvars.iv.next131.prol, %scalar.ph.prol ]
  %i.eb = icmp eq i64 %indvars.iv130.ph, %i.bd
  br i1 %i.eb, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv130 = phi i64 [ %indvars.iv.next131.1, %scalar.ph ], [ %indvars.iv130.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv130 ; 2 uses
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !50
  %i.ee = load float, ptr %i.ac, align 8, !tbaa !32
  %i.ef = load float, ptr %8, align 4, !tbaa !50
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv130
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !50
  %i.ei = fmul fast float %i.eh, %i.ef
  %i.ej = fadd fast float %i.ei, %i.ee
  %i.ek = load float, ptr %i.ad, align 4, !tbaa !31
  %i.el = fneg fast float %i.ek
  %i.em = call fast float @llvm.pow.f32(float %i.ej, float %i.el)
  %i.en = fmul fast float %i.em, %i.ed
  store float %i.en, ptr %i.ec, align 4, !tbaa !50
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next131 ; 2 uses
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !50
  %i.eq = load float, ptr %i.ac, align 8, !tbaa !32
  %i.er = load float, ptr %8, align 4, !tbaa !50
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.next131
  %i.et = load float, ptr %i.es, align 4, !tbaa !50
  %i.eu = fmul fast float %i.et, %i.er
  %i.ev = fadd fast float %i.eu, %i.eq
  %i.ew = load float, ptr %i.ad, align 4, !tbaa !31
  %i.ex = fneg fast float %i.ew
  %i.ey = call fast float @llvm.pow.f32(float %i.ev, float %i.ex)
  %i.ez = fmul fast float %i.ey, %i.ep
  store float %i.ez, ptr %i.eo, align 4, !tbaa !50
  %indvars.iv.next131.1 = add nuw nsw i64 %indvars.iv130, 2 ; 2 uses
  %exitcond134.not.1 = icmp eq i64 %indvars.iv.next131.1, %wide.trip.count133
  br i1 %exitcond134.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !114

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next136 = add nsw i64 %indvars.iv135, 1 ; 2 uses
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
end_hunk_0
