Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolutiondepthwise?download=true
inline.NumInlined: 58
inline.NumDeleted: 35
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4ncnnL20convolutiondepthwiseERKNS_3MatERS0_S2_S2_iiiiiiiiS2_RKNS_6OptionE:bb.a
  store i32 %not., ptr %i.g, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #9
  %i.ag = mul nsw i32 %5, %4                      ; 4 uses
  store i32 %i.ag, ptr %i.h, align 4, !tbaa !58
  %i.ah = sext i32 %i.ag to i64                   ; 3 uses
  %i.ai = icmp slt i32 %i.ag, 0
  br i1 %i.ai, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  %.not.i.i.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %.noexc47

.noexc47:                                         ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.aj = shl nuw nsw i64 %i.ah, 2
  %i.ak = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #21 ; 5 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ah ; 2 uses
  store i32 0, ptr %i.ak, align 4, !tbaa !58
  %i.am = add nsw i64 %i.ah, -1                   ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc47
  %i.ao = getelementptr i8, ptr %i.ak, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.am, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ao, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !58
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc47, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.9.0 = phi ptr [ %i.al, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.al, %.noexc47 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.048.0 = phi ptr [ %i.ak, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ak, %.noexc47 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #9
  store ptr %.sroa.048.0, ptr %i.i, align 8, !tbaa !78
  %i.ap = mul nsw i32 %i.n, %9
  %i.aq = mul nsw i32 %8, %4
  %i.ar = sub i32 %i.ap, %i.aq
  %i.as = icmp sgt i32 %5, 0
  %i.at = icmp sgt i32 %4, 0
  %or.cond58 = and i1 %i.as, %i.at
  br i1 %or.cond58, label %.preheader.preheader, label %._crit_edge57.split

.preheader.preheader:                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.au = zext nneg i32 %4 to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %4, 8
  %n.vec = and i64 %i.au, 2147483640              ; 4 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %8, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.av = trunc nuw nsw i64 %n.vec to i32
  %i.aw = mul i32 %8, %i.av
  %i.ax = shl <4 x i32> %broadcast.splat, splat (i32 2) ; 3 uses
  %i.ay = mul nsw <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  %invariant.op = add <4 x i32> %i.ax, %i.ax
  %cmp.n = icmp eq i64 %n.vec, %i.au
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.04256 = phi i32 [ %i.bi, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.04355 = phi i32 [ %i.bh, %._crit_edge ], [ 0, %.preheader.preheader ] ; 3 uses
  %.04454 = phi i32 [ %i.ba, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.az = sext i32 %.04454 to i64                 ; 3 uses
  %i.ba = add i32 %4, %.04454                     ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %i.bb = add nsw i64 %n.vec, %i.az
  %i.bc = add i32 %.04355, %i.aw                  ; 2 uses
  %broadcast.splatinsert1 = insertelement <4 x i32> poison, i32 %.04355, i64 0
  %broadcast.splat2 = shufflevector <4 x i32> %broadcast.splatinsert1, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add nsw <4 x i32> %broadcast.splat2, %i.ay
  %invariant.gep = getelementptr [4 x i8], ptr %.sroa.048.0, i64 %i.az
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next.reass, %vector.body ] ; 3 uses
  %step.add = add nsw <4 x i32> %vec.ind, %i.ax
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %vec.ind, ptr %gep, align 4, !tbaa !58
  store <4 x i32> %step.add, ptr %i.bd, align 4, !tbaa !58
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next.reass = add <4 x i32> %vec.ind, %invariant.op
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !116

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.az, %.preheader ], [ %i.bb, %middle.block ]
  %.151.ph = phi i32 [ %.04355, %.preheader ], [ %i.bc, %middle.block ]
  br label %scalar.ph

._crit_edge57.split:                              ; preds = %._crit_edge, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.bf = icmp eq i32 %i.p, %10
  %i.bg = icmp eq i32 %10, %i.v
  %or.cond = select i1 %i.bf, i1 %i.bg, i1 false
  br i1 %or.cond, label %bb.c, label %bb.d

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.bc, %middle.block ], [ %i.bk, %scalar.ph ]
  %i.bh = add nsw i32 %i.ar, %.lcssa
  %i.bi = add nuw nsw i32 %.04256, 1              ; 2 uses
  %exitcond61.not = icmp eq i32 %i.bi, %5
  br i1 %exitcond61.not, label %._crit_edge57.split, label %.preheader, !llvm.loop !117

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.151 = phi i32 [ %i.bk, %scalar.ph ], [ %.151.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bj = getelementptr inbounds [4 x i8], ptr %.sroa.048.0, i64 %indvars.iv
  store i32 %.151, ptr %i.bj, align 4, !tbaa !58
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bk = add nsw i32 %.151, %8                   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ba, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !118

bb.c:                                             ; preds = %._crit_edge57.split
  %i.bl = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !67
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.l, i32 %i.bm)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 14, ptr nonnull @_ZN4ncnnL20convolutiondepthwiseERKNS_3MatERS0_S2_S2_iiiiiiiiS2_RKNS_6OptionE.omp_outlined, ptr nonnull %i.c, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.h, ptr nonnull %0, ptr nonnull %i.f, ptr nonnull %i.e, ptr nonnull %i.g, ptr nonnull %3, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %i.i, ptr nonnull %i.d, ptr nonnull %12)
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge57.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #9
  %i.bn = sdiv i32 %i.p, %10
  store i32 %i.bn, ptr %i.j, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #9
  %i.bo = sdiv i32 %i.v, %10
  store i32 %i.bo, ptr %i.k, align 4, !tbaa !58
  %i.bp = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !67
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.l, i32 %i.bq)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 14, ptr nonnull @_ZN4ncnnL20convolutiondepthwiseERKNS_3MatERS0_S2_S2_iiiiiiiiS2_RKNS_6OptionE.omp_outlined.1, ptr nonnull %i.c, ptr nonnull %i.k, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.h, ptr nonnull %i.j, ptr nonnull %i.g, ptr nonnull %3, ptr nonnull %0, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %i.i, ptr nonnull %i.d, ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #9
  %.not.i.i.i = icmp eq ptr %.sroa.048.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.br = ptrtoint ptr %.sroa.9.0 to i64
  %i.bs = ptrtoint ptr %.sroa.048.0 to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.048.0, i64 noundef %i.bt) #19
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL20convolutiondepthwiseERKNS_3MatERS0_S2_S2_iiiiiiiiS2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %15) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !58     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !58
  %i.h = load i32, ptr %0, align 4, !tbaa !58     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !58
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !58
  %i.k = load i32, ptr %i.a, align 4, !tbaa !58   ; 2 uses
  %.not104 = icmp sgt i32 %i.k, %i.j
  br i1 %.not104, label %._crit_edge106.split, label %_ZN4ncnn3MatD2Ev.exit58.lr.ph

_ZN4ncnn3MatD2Ev.exit58.lr.ph:                    ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !20, !noalias !127
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !21, !noalias !127
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !56, !noalias !127
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !20
  %i.r = load i32, ptr %5, align 4, !tbaa !58     ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.t = load i32, ptr %i.s, align 4, !tbaa !69, !noalias !128
  %i.u = load ptr, ptr %6, align 8, !tbaa !20, !noalias !128
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.w = load i64, ptr %i.v, align 8, !tbaa !21, !noalias !128
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !56, !noalias !128 ; 2 uses
  %factor.op.mul107 = mul i64 %i.w, %i.y
  %i.z = sext i32 %i.t to i64
  %i.aa = load i32, ptr %7, align 4, !tbaa !58    ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  %i.ac = mul i64 %i.y, %i.z
  %i.ad = icmp sgt i32 %i.r, 0
  br i1 %i.ab, label %_ZN4ncnn3MatD2Ev.exit58.lr.ph.split, label %._crit_edge106.split

_ZN4ncnn3MatD2Ev.exit58.lr.ph.split:              ; preds = %_ZN4ncnn3MatD2Ev.exit58.lr.ph
  %i.ae = load i32, ptr %8, align 4, !tbaa !58    ; 3 uses
  %i.af = icmp sgt i32 %i.ae, 0
  %i.ag = sext i32 %i.ae to i64
  br i1 %i.af, label %_ZN4ncnn3MatD2Ev.exit58.lr.ph.split.split, label %._crit_edge106.split

_ZN4ncnn3MatD2Ev.exit58.lr.ph.split.split:        ; preds = %_ZN4ncnn3MatD2Ev.exit58.lr.ph.split
  %i.ah = load i32, ptr %9, align 4, !tbaa !58
  %.not57 = icmp eq i32 %i.ah, 0
  %i.ai = load i32, ptr %11, align 4, !tbaa !58
  %i.aj = load i32, ptr %12, align 4, !tbaa !58
  %i.ak = load i32, ptr %14, align 4, !tbaa !58
  %i.al = sext i32 %i.aj to i64
  %i.am = sext i32 %i.ai to i64
  %i.an = sext i32 %i.k to i64
  %16 = sext i32 %i.r to i64
  %i.ao = add nsw i32 %i.j, 1
  %wide.trip.count119 = zext nneg i32 %i.aa to i64
  %factor.op.mul132 = mul i64 %i.ac, %i.am
  %wide.trip.count114 = zext nneg i32 %i.ae to i64
  %wide.trip.count = zext i32 %i.r to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ap = icmp ult i32 %i.r, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod135 = icmp ne i64 %xtraiter, 0
  br label %_ZN4ncnn3MatD2Ev.exit58

_ZN4ncnn3MatD2Ev.exit58:                          ; preds = %_ZN4ncnn3MatD2Ev.exit58.lr.ph.split.split, %._ZN4ncnn3MatD2Ev.exit_crit_edge
  %indvars.iv121 = phi i64 [ %i.an, %_ZN4ncnn3MatD2Ev.exit58.lr.ph.split.split ], [ %indvars.iv.next122, %._ZN4ncnn3MatD2Ev.exit_crit_edge ] ; 5 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv121
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass
  %i.ar = mul nsw i64 %indvars.iv121, %16
  %i.as = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.ar ; 5 uses
  %.reass108 = mul i64 %factor.op.mul107, %indvars.iv121
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 %.reass108
  br label %.preheader

.preheader:                                       ; preds = %_ZN4ncnn3MatD2Ev.exit58, %._crit_edge100
  %indvars.iv116 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit58 ], [ %indvars.iv.next117, %._crit_edge100 ] ; 2 uses
  %.055102 = phi ptr [ %i.aq, %_ZN4ncnn3MatD2Ev.exit58 ], [ %i.av, %._crit_edge100 ] ; 2 uses
  %.reass133 = mul i64 %indvars.iv116, %factor.op.mul132
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.reass133
  br label %bb.c

._ZN4ncnn3MatD2Ev.exit_crit_edge:                 ; preds = %._crit_edge100
  %indvars.iv.next122 = add nsw i64 %indvars.iv121, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next122 to i32
  %exitcond124.not = icmp eq i32 %i.ao, %lftr.wideiv
  br i1 %exitcond124.not, label %._crit_edge106.split, label %_ZN4ncnn3MatD2Ev.exit58

._crit_edge100:                                   ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.055102, i64 %i.ag
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %exitcond120.not = icmp eq i64 %indvars.iv.next117, %wide.trip.count119
  br i1 %exitcond120.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge, label %.preheader, !llvm.loop !123

bb.c:                                             ; preds = %.preheader, %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %indvars.iv111 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next112, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 3 uses
  br i1 %.not57, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aw = load ptr, ptr %10, align 8, !tbaa !20
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv121
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !62
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.052 = phi nsz float [ %i.ay, %bb.d ], [ 0.000000e+00, %bb.c ] ; 3 uses
  %i.az = mul nsw i64 %indvars.iv111, %i.al
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.az ; 5 uses
  br i1 %i.ad, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.bb = load ptr, ptr %13, align 8, !tbaa !78   ; 5 uses
  br i1 %i.ap, label %.epil.preheader, label %.lr.ph.new

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.196.epil.init = phi float [ %.052, %.lr.ph ], [ %i.eb, %._crit_edge.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod135)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.f ] ; 3 uses
  %.196.epil = phi float [ %.196.epil.init, %.epil.preheader ], [ %i.bk, %bb.f ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.epil
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !58
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.be
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !62
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.epil
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !62
  %i.bj = fmul fast float %i.bi, %i.bg
  %i.bk = fadd fast float %i.bj, %.196.epil       ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.f, !llvm.loop !124

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.f, %bb.e
  %.1.lcssa = phi float [ %.052, %bb.e ], [ %i.eb, %._crit_edge.loopexit.unr-lcssa ], [ %i.bk, %bb.f ] ; 13 uses
  switch i32 %i.ak, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.i
    i32 4, label %bb.k
    i32 5, label %bb.l
    i32 6, label %bb.m
  ]

bb.g:                                             ; preds = %._crit_edge
  %i.bl = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.1.lcssa, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.h:                                             ; preds = %._crit_edge
  %i.bm = load ptr, ptr %15, align 8, !tbaa !20
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !62
  %i.bo = fcmp fast ogt float %.1.lcssa, 0.000000e+00
  %i.bp = select fast i1 %i.bo, float 1.000000e+00, float %i.bn
  %i.bq = fmul fast float %i.bp, %.1.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.i:                                             ; preds = %._crit_edge
  %i.br = load ptr, ptr %15, align 8, !tbaa !20   ; 2 uses
  %i.bs = load float, ptr %i.br, align 4, !tbaa !62
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !62 ; 2 uses
  %.094 = call nnan ninf nsz float @llvm.maxnum.f32(float %.1.lcssa, float %i.bs) ; 2 uses
  %i.bv = fcmp fast ogt float %.094, %i.bu
  br i1 %i.bv, label %bb.j, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.j:                                             ; preds = %bb.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.k:                                             ; preds = %._crit_edge
  %.sroa.speculated85 = call nnan ninf nsz float @llvm.minnum.f32(float %.1.lcssa, float f0x42B0C0A5)
  %.sroa.speculated = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated85, float f0xC2B0C0A5)
  %i.bw = fneg fast float %.sroa.speculated
  %i.bx = call fast float @llvm.exp.f32(float %i.bw)
  %i.by = fadd fast float %i.bx, 1.000000e+00
  %i.bz = fdiv fast float 1.000000e+00, %i.by
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.l:                                             ; preds = %._crit_edge
  %i.ca = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.1.lcssa)
  %i.cb = fadd fast float %i.ca, 1.000000e+00
  %i.cc = call fast float @llvm.log.f32(float %i.cb)
  %i.cd = call fast float @llvm.tanh.f32(float %i.cc)
  %i.ce = fmul fast float %i.cd, %.1.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.m:                                             ; preds = %._crit_edge
  %i.cf = load ptr, ptr %15, align 8, !tbaa !20   ; 2 uses
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !62 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !62 ; 2 uses
  %i.cj = fneg fast float %i.ci
  %i.ck = fdiv fast float %i.cj, %i.cg            ; 2 uses
  %i.cl = fcmp fast olt float %.1.lcssa, %i.ck
  br i1 %i.cl, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cm = fdiv fast float 1.000000e+00, %i.cg
  %i.cn = fadd fast float %i.ck, %i.cm
  %i.co = fcmp fast ogt float %.1.lcssa, %i.cn
  br i1 %i.co, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cp = fmul fast float %i.cg, %.1.lcssa
  %i.cq = fadd fast float %i.cp, %i.ci
  %i.cr = fmul fast float %i.cq, %.1.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.new ], [ 0, %.lr.ph ] ; 6 uses
  %.196 = phi float [ %i.eb, %.lr.ph.new ], [ %.052, %.lr.ph ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !58
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.cu
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !62
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !62
  %i.cz = fmul fast float %i.cy, %i.cw
  %i.da = fadd fast float %i.cz, %.196
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.next
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !58
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.dd
  %i.df = load float, ptr %i.de, align 4, !tbaa !62
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.next
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !62
  %i.di = fmul fast float %i.dh, %i.df
  %i.dj = fadd fast float %i.di, %i.da
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.next.1
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !58
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.dm
  %i.do = load float, ptr %i.dn, align 4, !tbaa !62
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.next.1
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !62
  %i.dr = fmul fast float %i.dq, %i.do
  %i.ds = fadd fast float %i.dr, %i.dj
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.next.2
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !58
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.dv
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !62
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.next.2
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !62
  %i.ea = fmul fast float %i.dz, %i.dx
  %i.eb = fadd fast float %i.ea, %i.ds            ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
end_hunk_0
