Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/Index2Layer?download=true
inline.NumInlined: 311
inline.NumDeleted: 187
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN5faiss12_GLOBAL__N_112DistanceXPQ4clEl:bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %.034, i64 1
  %i.ba = getelementptr inbounds nuw i8, ptr %.02631, i64 4096
  %i.bb = getelementptr inbounds nuw i8, ptr %.02730, i64 16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !138

._crit_edge:                                      ; preds = %.preheader, %bb.a
  %.025.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ay, %.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret float %.025.lcssa
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5faiss12_GLOBAL__N_114Distance2LevelD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(72) dereferenceable(72) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5faiss12_GLOBAL__N_114Distance2LevelE, i64 16), ptr %0, align 8, !tbaa !49
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !74
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #29
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5faiss12_GLOBAL__N_112DistanceXPQ4D0Ev(ptr noundef nonnull align 8 dereferenceable(80) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5faiss12_GLOBAL__N_114Distance2LevelE, i64 16), ptr %0, align 8, !tbaa !49
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5faiss12_GLOBAL__N_114Distance2LevelD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !74
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #29, !inline_history !90
  br label %_ZN5faiss12_GLOBAL__N_114Distance2LevelD2Ev.exit

_ZN5faiss12_GLOBAL__N_114Distance2LevelD2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #29
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #13

declare void @_ZNK5faiss16ProductQuantizer13compute_codesEPKfPhm(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef, ptr noundef, i64 noundef) unnamed_addr #2

declare void @_ZNK5faiss15Level1Quantizer13encode_listnoElPh(ptr noundef nonnull align 8 dereferenceable(88), i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK5faiss11Index2Layer9sa_decodeElPKhPf.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5) #24 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !18   ; 3 uses
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = icmp slt i32 %i.f, 0
  br i1 %i.h, label %bb.b, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #30
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.i = shl nuw nsw i64 %i.g, 2
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #31
          to label %.noexc26 unwind label %.loopexit.split-lp ; 5 uses

.noexc26:                                         ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.g ; 2 uses
  store float 0.000000e+00, ptr %i.j, align 4, !tbaa !50
  %i.l = add nsw i64 %i.g, -1                     ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc26
  %i.n = getelementptr i8, ptr %i.j, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.l, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.n, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !50
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc26, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.9.0 = phi ptr [ %i.k, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.k, %.noexc26 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.027.0 = phi ptr [ %i.j, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.j, %.noexc26 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 12 uses
  %i.o = load i64, ptr %3, align 8, !tbaa !10     ; 2 uses
  %i.p = icmp sgt i64 %i.o, 0
  %.pre = load i32, ptr %0, align 4, !tbaa !75    ; 3 uses
  br i1 %i.p, label %bb.d, label %bb.h

bb.d:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %i.q = add nsw i64 %i.o, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 0, ptr %i.a, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 %i.q, ptr %i.b, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i64 1, ptr %i.c, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store i32 0, ptr %i.d, align 4, !tbaa !75
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %.pre, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.r = load i64, ptr %i.b, align 8, !tbaa !10
  %i.s = call i64 @llvm.smin.i64(i64 %i.r, i64 %i.q) ; 2 uses
  store i64 %i.s, ptr %i.b, align 8, !tbaa !10
  %i.t = load i64, ptr %i.a, align 8, !tbaa !10   ; 3 uses
  %.not31 = icmp sgt i64 %i.t, %i.s
  br i1 %.not31, label %._crit_edge35, label %.lr.ph34

.lr.ph34:                                         ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 440
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph34, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph34 ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %.02532 = phi i64 [ %i.t, %.lr.ph34 ], [ %i.bj, %._crit_edge ] ; 4 uses
  %i.y = add i64 %i.t, %indvar
  %i.z = shl i64 %i.y, 2
  %i.aa = load ptr, ptr %4, align 8, !tbaa !79
  %i.ab = load i64, ptr %i.u, align 8, !tbaa !76
  %i.ac = mul i64 %i.ab, %.02532
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ac ; 2 uses
  %i.ae = invoke noundef i64 @_ZNK5faiss15Level1Quantizer13decode_listnoEPKh(ptr noundef nonnull align 8 dereferenceable(88) %i.v, ptr noundef %i.ad)
          to label %bb.f unwind label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %5, align 8, !tbaa !80    ; 2 uses
  %i.ag = load i32, ptr %i.e, align 8, !tbaa !18
  %i.ah = sext i32 %i.ag to i64                   ; 2 uses
  %i.ai = mul nsw i64 %.02532, %i.ah
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ai ; 8 uses
  %i.ak = load i64, ptr %i.x, align 8, !tbaa !77
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ak
  invoke void @_ZNK5faiss16ProductQuantizer6decodeEPKhPf(ptr noundef nonnull align 8 dereferenceable(224) %i.w, ptr noundef %i.al, ptr noundef %i.aj)
          to label %bb.g unwind label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.am = load ptr, ptr %i.v, align 8, !tbaa !47  ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !49
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 128
  %i.ap = load ptr, ptr %i.ao, align 8
  invoke void %i.ap(ptr noundef nonnull align 8 dereferenceable(36) %i.am, i64 noundef %i.ae, ptr noundef %.sroa.027.0)
          to label %.preheader unwind label %.loopexit

.preheader:                                       ; preds = %bb.g
  %i.aq = load i32, ptr %i.e, align 8, !tbaa !18  ; 3 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.aq to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %i.aq, 8
  br i1 %min.iters.check, label %.lr.ph.preheader45, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.as = mul i64 %i.z, %i.ah
  %i.at = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %i.au = getelementptr i8, ptr %i.af, i64 %i.as
  %scevgep = getelementptr i8, ptr %i.au, i64 %i.at
  %scevgep41 = getelementptr i8, ptr %.sroa.027.0, i64 %i.at
  %bound0 = icmp ult ptr %i.aj, %scevgep41
  %bound1 = icmp ult ptr %.sroa.027.0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader45, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.sroa.027.0, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %wide.load = load <4 x float>, ptr %i.av, align 4, !tbaa !50, !alias.scope !145
  %wide.load42 = load <4 x float>, ptr %i.aw, align 4, !tbaa !50, !alias.scope !145
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %index ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %wide.load43 = load <4 x float>, ptr %i.ax, align 4, !tbaa !50, !alias.scope !146, !noalias !145
  %wide.load44 = load <4 x float>, ptr %i.ay, align 4, !tbaa !50, !alias.scope !146, !noalias !145
  %i.az = fadd <4 x float> %wide.load, %wide.load43
  %i.ba = fadd <4 x float> %wide.load42, %wide.load44
  store <4 x float> %i.az, ptr %i.ax, align 4, !tbaa !50, !alias.scope !146, !noalias !145
  store <4 x float> %i.ba, ptr %i.ay, align 4, !tbaa !50, !alias.scope !146, !noalias !145
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !142

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader45

.lr.ph.preheader45:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader45, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader45 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader45 ]
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.027.0, i64 %indvars.iv.prol
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !50
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.prol ; 2 uses
  %i.bf = load float, ptr %i.be, align 4, !tbaa !50
  %i.bg = fadd float %i.bd, %i.bf
  store float %i.bg, ptr %i.be, align 4, !tbaa !50
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !143

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader45
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader45 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.bh = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bi = icmp ugt i64 %i.bh, -4
  br i1 %i.bi, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %.preheader
  %i.bj = add nsw i64 %.02532, 1
  %i.bk = load i64, ptr %i.b, align 8, !tbaa !10
  %.not.not = icmp slt i64 %.02532, %i.bk
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.not, label %bb.e, label %._crit_edge35

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.027.0, i64 %indvars.iv
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !50
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv ; 2 uses
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !50
  %i.bp = fadd float %i.bm, %i.bo
  store float %i.bp, ptr %i.bn, align 4, !tbaa !50
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.027.0, i64 %indvars.iv.next
  %i.br = load float, ptr %i.bq, align 4, !tbaa !50
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.next ; 2 uses
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !50
  %i.bu = fadd float %i.br, %i.bt
  store float %i.bu, ptr %i.bs, align 4, !tbaa !50
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.027.0, i64 %indvars.iv.next.1
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !50
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.next.1 ; 2 uses
  %i.by = load float, ptr %i.bx, align 4, !tbaa !50
  %i.bz = fadd float %i.bw, %i.by
  store float %i.bz, ptr %i.bx, align 4, !tbaa !50
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.sroa.027.0, i64 %indvars.iv.next.2
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !50
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.next.2 ; 2 uses
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !50
  %i.ce = fadd float %i.cb, %i.cd
  store float %i.ce, ptr %i.cc, align 4, !tbaa !50
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !144

._crit_edge35:                                    ; preds = %._crit_edge, %bb.d
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %.pre)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge35, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  call void @__kmpc_barrier(ptr nonnull @2, i32 %.pre)
  %.not.i.i.i = icmp eq ptr %.sroa.027.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cf = ptrtoint ptr %.sroa.9.0 to i64
  %i.cg = ptrtoint ptr %.sroa.027.0 to i64
  %i.ch = sub i64 %i.cf, %i.cg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.027.0, i64 noundef %i.ch) #29
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.h, %bb.i
  ret void

.loopexit:                                        ; preds = %bb.e, %bb.f, %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

.loopexit.split-lp:                               ; preds = %bb.b, %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ci = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.ci) #33
  unreachable
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #25

declare noundef i64 @_ZNK5faiss15Level1Quantizer13decode_listnoEPKh(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef) local_unnamed_addr #2

declare void @_ZNK5faiss16ProductQuantizer6decodeEPKhPf(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #25

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(ptr, i32) local_unnamed_addr #26

; Function Attrs: nounwind
declare !callback !92 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #18 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { cold inlinehint mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nounwind }
attributes #26 = { convergent nounwind }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nofree nounwind }
attributes #29 = { builtin nounwind }
attributes #30 = { noreturn }
attributes #31 = { builtin allocsize(0) }
attributes #32 = { cold nounwind }
attributes #33 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"long", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"bool", !5, i64 0}
!12 = !{!"_ZTSN5faiss10MetricTypeE", !5, i64 0}
!13 = !{!"float", !5, i64 0}
!14 = !{!"_ZTSN5faiss5IndexE", !6, i64 8, !9, i64 16, !11, i64 24, !11, i64 25, !12, i64 28, !13, i64 32}
!15 = !{!14, !11, i64 24}
!16 = !{i8 0, i8 2}
!17 = !{}
!18 = !{!14, !6, i64 8}
!19 = !{!"any pointer", !5, i64 0}
!20 = !{!"p1 omnipotent char", !19, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !20, i64 0, !20, i64 8, !20, i64 16}
!22 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !21, i64 0}
!23 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !22, i64 0}
!24 = !{!"_ZTSSt6vectorIhSaIhEE", !23, i64 0}
!25 = !{!"p1 _ZTSN5faiss21MaybeOwnedVectorOwnerE", !19, i64 0}
!26 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !19, i64 0}
!27 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !26, i64 0}
!28 = !{!"_ZTSSt12__shared_ptrIN5faiss21MaybeOwnedVectorOwnerELN9__gnu_cxx12_Lock_policyE2EE", !25, i64 0, !27, i64 8}
!29 = !{!"_ZTSSt10shared_ptrIN5faiss21MaybeOwnedVectorOwnerEE", !28, i64 0}
!30 = !{!"_ZTSN5faiss16MaybeOwnedVectorIhEE", !11, i64 0, !24, i64 8, !20, i64 32, !9, i64 40, !29, i64 48, !20, i64 64, !9, i64 72}
!31 = !{!"_ZTSN5faiss14IndexFlatCodesE", !14, i64 0, !9, i64 40, !30, i64 48}
!32 = !{!"p1 _ZTSN5faiss5IndexE", !19, i64 0}
!33 = !{!"_ZTSN5faiss20ClusteringInitMethodE", !5, i64 0}
!34 = !{!"short", !5, i64 0}
!35 = !{!"double", !5, i64 0}
!36 = !{!"_ZTSN5faiss20ClusteringParametersE", !6, i64 0, !6, i64 4, !11, i64 8, !11, i64 9, !11, i64 10, !11, i64 11, !11, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !9, i64 32, !11, i64 40, !11, i64 41, !33, i64 42, !34, i64 44, !35, i64 48}
!37 = !{!"_ZTSN5faiss15Level1QuantizerE", !32, i64 0, !9, i64 8, !5, i64 16, !11, i64 17, !36, i64 24, !32, i64 80}
!38 = !{!"_ZTSN5faiss9QuantizerE", !9, i64 8, !9, i64 16}
!39 = !{!"_ZTSN5faiss16ProductQuantizer12train_type_tE", !5, i64 0}
!40 = !{!"p1 float", !19, i64 0}
!41 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !40, i64 0, !40, i64 8, !40, i64 16}
!42 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !41, i64 0}
!43 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !42, i64 0}
!44 = !{!"_ZTSSt6vectorIfSaIfEE", !43, i64 0}
!45 = !{!"_ZTSN5faiss16ProductQuantizerE", !38, i64 0, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !11, i64 56, !39, i64 60, !36, i64 64, !32, i64 120, !44, i64 128, !44, i64 152, !44, i64 176, !44, i64 200}
!46 = !{!"_ZTSN5faiss11Index2LayerE", !31, i64 0, !37, i64 128, !45, i64 216, !9, i64 440, !9, i64 448}
!47 = !{!46, !32, i64 128}
!48 = !{!"vtable pointer", !4, i64 0}
!49 = !{!48, !48, i64 0}
!50 = !{!13, !13, i64 0}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!46, !9, i64 240}
!53 = !{!14, !11, i64 25}
!54 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !20, i64 0}
!55 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !54, i64 0, !9, i64 8, !5, i64 16}
!56 = !{!55, !20, i64 0}
!57 = !{!5, !5, i64 0}
!58 = !{!54, !20, i64 0}
!59 = !{!55, !9, i64 8}
!60 = !{!"p1 _ZTSN5faiss11Index2LayerE", !19, i64 0}
!61 = !{!"_ZTSN5faiss16DistanceComputerE"}
!62 = !{!"_ZTSN5faiss12_GLOBAL__N_114Distance2LevelE", !61, i64 0, !9, i64 8, !60, i64 16, !44, i64 24, !40, i64 48, !40, i64 56, !40, i64 64}
!63 = !{!62, !9, i64 8}
!64 = !{!41, !40, i64 0}
!65 = !{!62, !40, i64 64}
!66 = !{!62, !60, i64 16}
!67 = !{!"_ZTSN5faiss12_GLOBAL__N_114Distance2xXPQ4E", !62, i64 0, !6, i64 72, !6, i64 76}
!68 = !{!67, !6, i64 72}
!69 = !{!67, !6, i64 76}
!70 = !{!62, !40, i64 56}
!71 = !{!"_ZTSN5faiss12_GLOBAL__N_112DistanceXPQ4E", !62, i64 0, !6, i64 72, !6, i64 76}
!72 = !{!71, !6, i64 72}
!73 = !{!30, !20, i64 64}
!74 = !{!41, !40, i64 16}
!75 = !{!6, !6, i64 0}
!76 = !{!31, !9, i64 40}
!77 = !{!46, !9, i64 440}
!78 = !{!46, !9, i64 448}
!79 = !{!20, !20, i64 0}
!80 = !{!40, !40, i64 0}
!81 = !{!27, !26, i64 0}
!82 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !6, i64 8, !6, i64 12}
!83 = !{!82, !6, i64 8}
!84 = !{!82, !6, i64 12}
!85 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!86 = !{!21, !20, i64 0}
!87 = !{!21, !20, i64 16}
!88 = !{!62, !40, i64 48}
!89 = !{i64 8}
!90 = !{ptr @_ZN5faiss12_GLOBAL__N_114Distance2LevelD2Ev}
!91 = !{i64 2, i64 -1, i64 -1, i1 true}
!92 = !{!91}
!93 = distinct !{!93, !51}
!94 = !{!14, !12, i64 28}
!95 = !{!46, !6, i64 300}
!96 = !{!46, !9, i64 264}
!97 = !{!46, !6, i64 304}
!98 = !{!46, !11, i64 272}
!99 = !{!60, !60, i64 0}
!100 = !{!46, !9, i64 256}
!101 = !{!"p1 _ZTS8_IO_FILE", !19, i64 0}
!102 = !{!101, !101, i64 0}
!103 = !{!"_ZTSN5faiss19MultiIndexQuantizerE", !14, i64 0, !45, i64 40}
!104 = !{!103, !9, i64 72}
!105 = !{!71, !6, i64 76}
!106 = distinct !{!106, !51}
!107 = distinct !{!107, !51}
!108 = distinct !{!108, !51}
!109 = !{!38, !9, i64 16}
!110 = distinct !{null, null, null, null}
!111 = distinct !{null}
!112 = distinct !{ptr @_ZN5faiss14IndexFlatCodesD2Ev, null, null, null, null}
!113 = distinct !{!113, !51}
!114 = !{!37, !9, i64 8}
!115 = !{!46, !9, i64 136}
!116 = !{!"_ZTSN5faiss17IndexIVFInterfaceE", !37, i64 8, !9, i64 96, !9, i64 104}
!117 = !{!"p1 _ZTSN5faiss13InvertedListsE", !19, i64 0}
!118 = !{!"_ZTSN5faiss9DirectMap4TypeE", !5, i64 0}
!119 = !{!"p1 long", !19, i64 0}
!120 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !119, i64 0, !119, i64 8, !119, i64 16}
!121 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE12_Vector_implE", !120, i64 0}
!122 = !{!"_ZTSSt12_Vector_baseIlSaIlEE", !121, i64 0}
!123 = !{!"_ZTSSt6vectorIlSaIlEE", !122, i64 0}
!124 = !{!"any p2 pointer", !19, i64 0}
!125 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !124, i64 0}
!126 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !19, i64 0}
!127 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !126, i64 0}
!128 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !13, i64 0, !9, i64 8}
!129 = !{!"_ZTSSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE", !125, i64 0, !9, i64 8, !127, i64 16, !9, i64 24, !128, i64 32, !126, i64 48}
!130 = !{!"_ZTSSt13unordered_mapIllSt4hashIlESt8equal_toIlESaISt4pairIKllEEE", !129, i64 0}
!131 = !{!"_ZTSN5faiss9DirectMapE", !118, i64 0, !123, i64 8, !130, i64 32}
!132 = !{!"_ZTSN5faiss8IndexIVFE", !14, i64 0, !116, i64 40, !117, i64 152, !11, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !131, i64 184, !11, i64 272}
!133 = !{!132, !9, i64 168}
!134 = !{!14, !9, i64 16}
!135 = !{!132, !117, i64 152}
!136 = distinct !{!136, !51}
!137 = !{!41, !40, i64 8}
!138 = distinct !{!138, !51}
!139 = distinct !{!139, i1 false, !"LVerDomain"}
!140 = distinct !{!140, !139}
!141 = distinct !{!141, !139}
!142 = distinct !{!142, !51, !147, !148}
!143 = distinct !{!143, !149}
!144 = distinct !{!144, !51, !147}
!145 = !{!140}
!146 = !{!141}
!147 = !{!"llvm.loop.isvectorized", i32 1}
!148 = !{!"llvm.loop.unroll.runtime.disable"}
!149 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
