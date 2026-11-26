Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/graph_cluster?download=true
inline.NumInlined: 467
inline.NumDeleted: 182
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0

$_ZNSt6vectorIiSaIiEEaSERKS1_ = comdat any

$_ZNSt6vectorIiSaIiEE17_M_default_appendEm = comdat any

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_ = comdat any

$_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_ = comdat any

@.str = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN2cv3mcc10CB0clusterC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN2cv3mcc10CB0clusterC2Ev
@_ZN2cv3mcc10CB0clusterD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN2cv3mcc10CB0clusterD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2cv3mcc10CB0clusterC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(96) initializes((0, 96)) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, i8 0, i64 96, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2cv3mcc10CB0clusterD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(96) dereferenceable(96) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #11
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #11
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !17   ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIdSaIdEED2Ev.exit3, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !26
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #11
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit3

_ZNSt6vectorIdSaIdEED2Ev.exit3:                   ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.d
  %i.v = load ptr, ptr %0, align 8, !tbaa !20     ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit3
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !27
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #11
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit:    ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit3, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv3mcc10CB0cluster5groupEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.5", align 8     ; 11 uses
  %2 = alloca %"class.std::vector.5", align 8     ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 3                   ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 10 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21
  %.not.i.i = icmp eq ptr %i.k, %i.i
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.i, ptr %i.j, align 8, !tbaa !21
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.a, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %.not544 = icmp eq ptr %i.b, %i.c
  br i1 %.not544, label %._crit_edge395, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.g)
  %i.l = trunc i64 %i.g to i32                    ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %_ZNSt6vectorIdSaIdEE5clearEv.exit.lr.ph, label %._crit_edge395

_ZNSt6vectorIdSaIdEE5clearEv.exit.lr.ph:          ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.n = add nsw i64 %i.g, 4294967295
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.s = trunc i64 %i.g to i31
  %wide.trip.count504 = and i64 %i.n, 4294967295
  %wide.trip.count = and i64 %i.g, 2147483647     ; 4 uses
  %i.t = shl nuw nsw i64 %wide.trip.count, 3
  br label %_ZNSt6vectorIdSaIdEE5clearEv.exit

._crit_edge395:                                   ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %_ZNSt6vectorIiSaIiEE5clearEv.exit, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.u = phi i32 [ 0, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ %i.l, %_ZNSt6vectorIiSaIiEE6resizeEm.exit ], [ %i.l, %_ZNSt6vectorIdSaIdEED2Ev.exit ]
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.w = getelementptr [4 x i8], ptr %i.v, i64 %i.g
  %i.x = getelementptr i8, ptr %i.w, i64 -4       ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !22
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %bb.an, label %bb.ao

_ZNSt6vectorIdSaIdEE5clearEv.exit:                ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit.lr.ph, %_ZNSt6vectorIdSaIdEED2Ev.exit
  %indvars.iv502 = phi i64 [ 0, %_ZNSt6vectorIdSaIdEE5clearEv.exit.lr.ph ], [ %indvars.iv.next503, %_ZNSt6vectorIdSaIdEED2Ev.exit ] ; 13 uses
  %indvars.iv483 = phi i31 [ %i.s, %_ZNSt6vectorIdSaIdEE5clearEv.exit.lr.ph ], [ %indvars.iv.next484, %_ZNSt6vectorIdSaIdEED2Ev.exit ] ; 2 uses
  %indvars.iv476 = phi i64 [ 1, %_ZNSt6vectorIdSaIdEE5clearEv.exit.lr.ph ], [ %indvars.iv.next477, %_ZNSt6vectorIdSaIdEED2Ev.exit ] ; 5 uses
  %i.z = call i31 @llvm.umax.i31(i31 %indvars.iv483, i31 1)
  %umax = zext i31 %i.z to i64
  %i.aa = sub nsw i64 %i.g, %indvars.iv502        ; 4 uses
  %i.ab = icmp ne i64 %i.g, %indvars.iv502
  call void @llvm.assume(i1 %i.ab)
  %i.ac = icmp ugt i64 %i.aa, 1152921504606846975
  br i1 %i.ac, label %.noexc164, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i

.noexc164:                                        ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #12
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i:  ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit
  %i.ad = shl nuw nsw i64 %i.aa, 3                ; 3 uses
  %i.ae = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #13 ; 10 uses
  store double 0.000000e+00, ptr %i.ae, align 8, !tbaa !47
  %i.af = add nsw i64 %i.aa, -1                   ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %.lr.ph, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i
  %i.ah = getelementptr i8, ptr %i.ae, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.af, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ah, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !47
  br label %.lr.ph

.lr.ph:                                           ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i
  store double 0.000000e+00, ptr %i.ae, align 8, !tbaa !47
  %indvars.iv.next503 = add nuw nsw i64 %indvars.iv502, 1 ; 3 uses
  %i.ai = load ptr, ptr %0, align 8, !tbaa !20    ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv502 ; 2 uses
  %.val = load i32, ptr %i.aj, align 4, !tbaa !49 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 4
  %.val101 = load i32, ptr %i.ak, align 4, !tbaa !50 ; 2 uses
  %i.al = load ptr, ptr %i.o, align 8, !tbaa !17  ; 5 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv502 ; 3 uses
  %i.an = load ptr, ptr %i.p, align 8, !tbaa !17  ; 2 uses
  %i.ao = getelementptr [8 x i8], ptr %i.an, i64 %indvars.iv502 ; 3 uses
  %i.ap = xor i64 %indvars.iv502, -1
  %i.aq = add nsw i64 %wide.trip.count, %i.ap     ; 4 uses
  %min.iters.check = icmp ult i64 %i.aq, 2
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ar = getelementptr i8, ptr %i.ae, i64 8      ; 3 uses
  %i.as = sub nsw i64 %wide.trip.count, %indvars.iv502
  %i.at = shl i64 %i.as, 3
  %i.au = getelementptr i8, ptr %i.ae, i64 %i.at  ; 3 uses
  %i.av = shl nuw nsw i64 %indvars.iv502, 3
  %i.aw = add nuw i64 %i.av, 8                    ; 2 uses
  %i.ax = getelementptr nuw i8, ptr %i.al, i64 %i.aw ; 2 uses
  %i.ay = getelementptr i8, ptr %i.al, i64 %i.t
  %i.az = getelementptr i8, ptr %i.an, i64 %i.aw
  %bound0 = icmp ult ptr %i.ar, %i.ay
  %bound1 = icmp ult ptr %i.ax, %i.au
  %found.conflict = and i1 %bound0, %bound1
  %bound0697 = icmp ult ptr %i.ar, %i.ax
  %bound1698 = icmp ult ptr %i.am, %i.au
  %found.conflict699 = and i1 %bound0697, %bound1698
  %conflict.rdx = or i1 %found.conflict, %found.conflict699
  %bound0700 = icmp ult ptr %i.ar, %i.az
  %bound1701 = icmp ult ptr %i.ao, %i.au
  %found.conflict702 = and i1 %bound0700, %bound1701
  %conflict.rdx703 = or i1 %conflict.rdx, %found.conflict702
  br i1 %conflict.rdx703, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aq, -2                      ; 3 uses
  %i.ba = add i64 %indvars.iv476, %n.vec
  %i.bb = or i64 %i.aq, 1
  %i.bc = load double, ptr %i.am, align 8, !tbaa !47, !alias.scope !51
  %broadcast.splatinsert707 = insertelement <2 x double> poison, double %i.bc, i64 0
  %broadcast.splat708 = shufflevector <2 x double> %broadcast.splatinsert707, <2 x double> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.bd = load double, ptr %i.ao, align 8, !tbaa !47, !alias.scope !52
  %broadcast.splatinsert709 = insertelement <2 x double> poison, double %i.bd, i64 0
  %broadcast.splat710 = shufflevector <2 x double> %broadcast.splatinsert709, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.val, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert704 = insertelement <2 x i32> poison, i32 %.val101, i64 0
  %broadcast.splat705 = shufflevector <2 x i32> %broadcast.splatinsert704, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.be = add nuw i64 %indvars.iv476, %index      ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.be
  %wide.vec = load <4 x i32>, ptr %i.bf, align 4, !tbaa !22 ; 2 uses
  %strided.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec706 = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.bg = sub nsw <2 x i32> %broadcast.splat, %strided.vec
  %i.bh = sub nsw <2 x i32> %broadcast.splat705, %strided.vec706
  %i.bi = sitofp <2 x i32> %i.bg to <2 x double>  ; 2 uses
  %i.bj = sitofp <2 x i32> %i.bh to <2 x double>  ; 2 uses
  %i.bk = fmul nnan <2 x double> %i.bj, %i.bj
  %i.bl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bi, <2 x double> %i.bi, <2 x double> %i.bk)
  %i.bm = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.bl)
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.be
  %wide.load = load <2 x double>, ptr %i.bn, align 8, !tbaa !47, !alias.scope !53 ; 6 uses
  %i.bo = fsub <2 x double> %broadcast.splat708, %wide.load
  %i.bp = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.bo)
  %i.bq = fadd <2 x double> %broadcast.splat708, %wide.load
  %i.br = fdiv <2 x double> %i.bp, %i.bq          ; 2 uses
  %i.bs = fcmp olt <2 x double> %broadcast.splat708, %wide.load
  %i.bt = select <2 x i1> %i.bs, <2 x double> %wide.load, <2 x double> %broadcast.splat708 ; 2 uses
  %i.bu = fcmp olt <2 x double> %wide.load, %broadcast.splat708
  %i.bv = select <2 x i1> %i.bu, <2 x double> %wide.load, <2 x double> %broadcast.splat708 ; 2 uses
  %i.bw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bv, <2 x double> splat (double f0xC001745D20000000), <2 x double> %i.bt)
  %i.bx = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.bw)
  %i.by = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bv, <2 x double> splat (double f0x4001745D20000000), <2 x double> %i.bt)
  %i.bz = fdiv <2 x double> %i.bx, %i.by          ; 2 uses
  %i.ca = fcmp olt <2 x double> %i.bz, %i.br
  %i.cb = select <2 x i1> %i.ca, <2 x double> %i.bz, <2 x double> %i.br
  %i.cc = fcmp olt <2 x double> %i.cb, splat (double 1.000000e-01)
  %i.cd = uitofp <2 x i1> %i.cc to <2 x double>
  %i.ce = fmul <2 x double> %i.bm, %i.cd          ; 2 uses
  %i.cf = fcmp olt <2 x double> %i.ce, %broadcast.splat710
  %i.cg = uitofp <2 x i1> %i.cf to <2 x double>
  %i.ch = fmul <2 x double> %i.ce, %i.cg
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %index
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store <2 x double> %i.ch, ptr %i.cj, align 8, !tbaa !47, !alias.scope !54, !noalias !55
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !33

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv478.ph = phi i64 [ %indvars.iv476, %vector.memcheck ], [ %indvars.iv476, %.lr.ph ], [ %i.ba, %middle.block ]
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph ], [ %i.bb, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.cl = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv502 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !22
  %.not89 = icmp eq i32 %i.cn, 0
  br i1 %.not89, label %bb.b, label %_ZNSt6vectorIiSaIiEE5clearEv.exit.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv478 = phi i64 [ %indvars.iv.next479, %scalar.ph ], [ %indvars.iv478.ph, %scalar.ph.preheader ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv478 ; 2 uses
  %.val102 = load i32, ptr %i.co, align 4, !tbaa !49
  %i.cp = getelementptr i8, ptr %i.co, i64 4
  %.val103 = load i32, ptr %i.cp, align 4, !tbaa !50
  %i.cq = sub nsw i32 %.val, %.val102
  %i.cr = sub nsw i32 %.val101, %.val103
  %i.cs = sitofp i32 %i.cq to double              ; 2 uses
  %i.ct = sitofp i32 %i.cr to double              ; 2 uses
  %i.cu = fmul nnan double %i.ct, %i.ct
  %i.cv = call double @llvm.fmuladd.f64(double %i.cs, double %i.cs, double %i.cu)
  %sqrt.i = call noundef double @llvm.sqrt.f64(double %i.cv)
  %i.cw = load double, ptr %i.am, align 8, !tbaa !47 ; 6 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv478
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !47 ; 6 uses
  %i.cz = fsub double %i.cw, %i.cy
  %i.da = fadd double %i.cw, %i.cy
  %i.db = fcmp olt double %i.cw, %i.cy
  %i.dc = select i1 %i.db, double %i.cy, double %i.cw
  %i.dd = fcmp olt double %i.cy, %i.cw
  %i.de = select i1 %i.dd, double %i.cy, double %i.cw
  %i.df = insertelement <2 x double> poison, double %i.de, i64 0
  %i.dg = shufflevector <2 x double> %i.df, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dh = insertelement <2 x double> poison, double %i.dc, i64 0
  %i.di = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dg, <2 x double> <double f0xC001745D20000000, double f0x4001745D20000000>, <2 x double> %i.di) ; 2 uses
  %i.dk = insertelement <2 x double> %i.dj, double %i.cz, i64 1
  %i.dl = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.dk)
  %i.dm = shufflevector <2 x double> %i.dj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.dn = insertelement <2 x double> %i.dm, double %i.da, i64 1
  %i.do = fdiv <2 x double> %i.dl, %i.dn          ; 2 uses
  %i.dp = extractelement <2 x double> %i.do, i64 0 ; 2 uses
  %i.dq = extractelement <2 x double> %i.do, i64 1 ; 2 uses
  %i.dr = fcmp olt double %i.dp, %i.dq
  %.sroa.speculated = select i1 %i.dr, double %i.dp, double %i.dq
  %i.ds = fcmp olt double %.sroa.speculated, 1.000000e-01
  %i.dt = uitofp i1 %i.ds to double
  %i.du = fmul double %sqrt.i, %i.dt              ; 2 uses
  %i.dv = load double, ptr %i.ao, align 8, !tbaa !47
  %i.dw = fcmp olt double %i.du, %i.dv
  %i.dx = uitofp i1 %i.dw to double
  %i.dy = fmul double %i.du, %i.dx
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv
  store double %i.dy, ptr %i.dz, align 8, !tbaa !47
  %indvars.iv.next479 = add nuw nsw i64 %indvars.iv478, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next479, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !34

bb.b:                                             ; preds = %._crit_edge
  %i.ea = trunc nuw nsw i64 %indvars.iv.next503 to i32
  store i32 %i.ea, ptr %i.cm, align 4, !tbaa !22
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit.i

_ZNSt6vectorIiSaIiEE5clearEv.exit.i:              ; preds = %._crit_edge, %bb.b
  %i.eb = trunc i64 %i.aa to i32
  %i.ec = icmp sgt i32 %i.eb, 0
  br i1 %i.ec, label %.lr.ph.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit.i, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i
  %.sroa.0195.1 = phi ptr [ %.sroa.0195.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ], [ null, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i ] ; 3 uses
  %.sroa.14.1 = phi ptr [ %.sroa.14.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ], [ null, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i ]
  %.sroa.19.1 = phi ptr [ %.sroa.19.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ], [ null, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i ] ; 5 uses
  %i.ed = phi ptr [ %i.fa, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ], [ null, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i ] ; 6 uses
  %i.ee = phi ptr [ %i.fb, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ], [ null, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i ] ; 4 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ], [ 0, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i ] ; 4 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.i
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !47
  %i.eh = fcmp une double %i.eg, 0.000000e+00
  br i1 %i.eh, label %bb.c, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i.i115 = icmp eq ptr %i.ee, %.sroa.19.1
  br i1 %.not.i.i115, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ei = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.ei, ptr %i.ee, align 4, !tbaa !22
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 4 ; 2 uses
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ek = ptrtoint ptr %.sroa.19.1 to i64
  %i.el = ptrtoint ptr %i.ed to i64
  %i.em = sub i64 %i.ek, %i.el                    ; 6 uses
  %i.en = icmp eq i64 %i.em, 9223372036854775804
  br i1 %i.en, label %bb.f, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #12
          to label %.noexc116 unwind label %.loopexit.split-lp252.loopexit.split-lp

.noexc116:                                        ; preds = %bb.f
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.eo = ashr exact i64 %i.em, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.eo, i64 1)
  %i.ep = add nsw i64 %.sroa.speculated.i.i.i.i, %i.eo ; 2 uses
  %i.eq = icmp ult i64 %i.ep, %i.eo
  %i.er = call i64 @llvm.umin.i64(i64 %i.ep, i64 2305843009213693951)
  %i.es = select i1 %i.eq, i64 2305843009213693951, i64 %i.er ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.es, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.et = shl nuw nsw i64 %i.es, 2
  %i.eu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.et) #13
          to label %.noexc117 unwind label %.loopexit.split-lp252.loopexit.split-lp ; 5 uses

.noexc117:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ev = getelementptr inbounds i8, ptr %i.eu, i64 %i.em ; 2 uses
  %i.ew = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.ew, ptr %i.ev, align 4, !tbaa !22
  %i.ex = icmp sgt i64 %i.em, 0
  br i1 %i.ex, label %bb.g, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

end_hunk_0
begin_hunk_1_@_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_:bb.a

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ae = icmp sgt i64 %spec.select.i.us, %.08.us
  br i1 %i.ae, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.019.i.i.us = phi i64 [ %.0920.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i.us
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !22 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.q
  br i1 %i.ah, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i.us
  store i32 %i.ag, ptr %i.ai, align 4, !tbaa !22
  %i.aj = icmp sgt i64 %.0920.i.i.us, %.08.us
  br i1 %i.aj, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us, !llvm.loop !1

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.0.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.08.us, %.split.us ], [ %.019.i.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.c ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.us
  store i32 %i.q, ptr %i.ak, align 4, !tbaa !22
  %.not.us = icmp eq i64 %.08.us, 0
  %i.al = add nsw i64 %.08.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !68

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit
  %.08 = phi i64 [ %i.bk, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %0, i64 %.08
  %i.an = load i32, ptr %i.am, align 4, !tbaa !22 ; 2 uses
  %i.ao = icmp slt i64 %.08, %i.i
  br i1 %i.ao, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.035.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.08, %.split ] ; 2 uses
  %i.ap = shl i64 %.035.i, 1                      ; 2 uses
  %i.aq = add i64 %i.ap, 2                        ; 2 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %0, i64 %i.aq
  %i.as = or disjoint i64 %i.ap, 1                ; 2 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %0, i64 %i.as
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !22
  %i.av = load i32, ptr %i.at, align 4, !tbaa !22
  %i.aw = icmp slt i32 %i.au, %i.av
  %spec.select.i = select i1 %i.aw, i64 %i.as, i64 %i.aq ; 4 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !22
  %i.az = getelementptr inbounds [4 x i8], ptr %0, i64 %.035.i
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !22
  %i.ba = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ba, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.08, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bb = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.bb, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.bc = load i32, ptr %i.n, align 4, !tbaa !22
  store i32 %i.bc, ptr %i.o, align 4, !tbaa !22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bd = icmp sgt i64 %.1.i, %.08
  br i1 %i.bd, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !22 ; 2 uses
  %i.bg = icmp slt i32 %i.bf, %i.an
  br i1 %i.bg, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i
  store i32 %i.bf, ptr %i.bh, align 4, !tbaa !22
  %i.bi = icmp sgt i64 %.0920.i.i, %.08
  br i1 %i.bi, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit, !llvm.loop !1

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.an, ptr %i.bj, align 4, !tbaa !22
  %.not = icmp eq i64 %.08, 0
  %i.bk = add nsw i64 %.08, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !68

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i31 @llvm.umax.i31(i31, i31) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { builtin nounwind }
attributes #12 = { noreturn }
attributes #13 = { builtin allocsize(0) }
attributes #14 = { nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !23}
!1 = distinct !{!1, !23}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 int", !10, i64 0}
!12 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!13 = !{!12, !11, i64 0}
!14 = !{!12, !11, i64 16}
!15 = !{!"p1 double", !10, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!17 = !{!16, !15, i64 0}
!18 = !{!"p1 _ZTSN2cv6Point_IiEE", !10, i64 0}
!19 = !{!"_ZTSNSt12_Vector_baseIN2cv6Point_IiEESaIS2_EE17_Vector_impl_dataE", !18, i64 0, !18, i64 8, !18, i64 16}
!20 = !{!19, !18, i64 0}
!21 = !{!12, !11, i64 8}
!22 = !{!7, !7, i64 0}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!25 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!26 = !{!16, !15, i64 16}
!27 = !{!19, !18, i64 16}
!28 = distinct !{!28, i1 false, !"LVerDomain"}
!29 = distinct !{!29, !28}
!30 = distinct !{!30, !28}
!31 = distinct !{!31, !28}
!32 = distinct !{!32, !28}
!33 = distinct !{!33, !23, !56, !57}
!34 = distinct !{!34, !23, !56}
!35 = distinct !{!35, !23}
!36 = distinct !{!36, !23}
!37 = distinct !{!37, !23}
!38 = distinct !{!38, !23}
!39 = distinct !{!39, !23}
!40 = distinct !{!40, !23}
!41 = distinct !{!41, !23}
!42 = distinct !{!42, !23, !56, !57}
!43 = distinct !{!43, !23}
!44 = distinct !{!44, !23, !57, !56}
!45 = !{!19, !18, i64 8}
!46 = !{!"double", !6, i64 0}
!47 = !{!46, !46, i64 0}
!48 = !{!"_ZTSN2cv6Point_IiEE", !7, i64 0, !7, i64 4}
!49 = !{!48, !7, i64 0}
!50 = !{!48, !7, i64 4}
!51 = !{!29}
!52 = !{!30}
!53 = !{!31}
!54 = !{!32}
!55 = !{!31, !29, !30}
!56 = !{!"llvm.loop.isvectorized", i32 1}
!57 = !{!"llvm.loop.unroll.runtime.disable"}
!58 = distinct !{!58, !23}
!59 = !{!11, !11, i64 0}
!60 = distinct !{!60, !23}
!61 = distinct !{!61, !23}
!62 = distinct !{!62, !23}
!63 = distinct !{!63, !23}
!64 = distinct !{!64, !23}
!65 = distinct !{!65, !23}
!66 = distinct !{!66, !23}
!67 = distinct !{!67, !23}
!68 = distinct !{!68, !23}
end_hunk_1
